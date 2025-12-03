@interface SHServerMatchResponseParser
+ (id)matcherResponseFromServerData:(id)data signature:(id)signature location:(id)location context:(id)context;
+ (id)mediaItemFromResourcesResponse:(id)response shazamID:(id)d signatureStartDate:(id)date campaignToken:(id)token location:(id)location;
@end

@implementation SHServerMatchResponseParser

+ (id)matcherResponseFromServerData:(id)data signature:(id)signature location:(id)location context:(id)context
{
  signatureCopy = signature;
  locationCopy = location;
  contextCopy = context;
  v96 = 0;
  v11 = [NSJSONSerialization JSONObjectWithData:data options:0 error:&v96];
  v12 = v96;
  if (v11)
  {
    v13 = [v11 objectForKeyedSubscript:@"errors"];
    firstObject = [v13 firstObject];

    if (firstObject)
    {
      v15 = [[SHServerErrorResponse alloc] initWithErrorDictionary:firstObject];
    }

    else
    {
      v15 = 0;
    }

    v18 = [v11 objectForKeyedSubscript:@"results"];
    if (v18)
    {
      v19 = [[SHServerResultsResponse alloc] initWithResultsDictionary:v18];
      if (v19)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v19 = 0;
    }

    if (v15)
    {
      v20 = sh_log_object();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        error = [(SHServerErrorResponse *)v15 error];
        *buf = 138412290;
        v99 = error;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Server response parser: Error, %@", buf, 0xCu);
      }

      v22 = [SHMatcherResponse alloc];
      [contextCopy defaultRecordingIntermissionInSeconds];
      v24 = v23;
      [contextCopy defaultRecordingSignatureOffsetInSeconds];
      v26 = v25;
      error2 = [(SHServerErrorResponse *)v15 error];
      v28 = 0.0;
      v29 = v22;
      v30 = v24;
      v31 = v26;
      goto LABEL_21;
    }

LABEL_16:
    if (!v19 || !v15)
    {
      error2 = [v11 objectForKeyedSubscript:@"resources"];
      v45 = sh_log_object();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        [(SHServerResultsResponse *)v19 recordingIntermissionSeconds];
        v47 = v46;
        [(SHServerResultsResponse *)v19 retrySeconds];
        *buf = 134218240;
        v99 = v47;
        v100 = 2048;
        v101 = v48;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEBUG, "Server response parser: Returning results, recording intermission %f, retry %f", buf, 0x16u);
      }

      if (error2)
      {
        v84 = v18;
        v85 = v15;
        v86 = firstObject;
        v87 = v12;
        v88 = v11;
        v49 = error2;
        v50 = v19;
        v51 = signatureCopy;
        v82 = v49;
        v52 = [[SHServerResourcesResponse alloc] initWithResourcesDictionary:v49];
        v83 = v50;
        shazamIDs = [(SHServerResultsResponse *)v50 shazamIDs];
        v54 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [shazamIDs count]);
        v92 = 0u;
        v93 = 0u;
        v94 = 0u;
        v95 = 0u;
        obj = shazamIDs;
        v55 = [obj countByEnumeratingWithState:&v92 objects:v97 count:16];
        if (v55)
        {
          v56 = v55;
          v57 = *v93;
          do
          {
            for (i = 0; i != v56; i = i + 1)
            {
              if (*v93 != v57)
              {
                objc_enumerationMutation(obj);
              }

              v59 = *(*(&v92 + 1) + 8 * i);
              audioStartDate = [v51 audioStartDate];
              campaignToken = [contextCopy campaignToken];
              v62 = [self mediaItemFromResourcesResponse:v52 shazamID:v59 signatureStartDate:audioStartDate campaignToken:campaignToken location:locationCopy];

              [v54 addObject:v62];
            }

            v56 = [obj countByEnumeratingWithState:&v92 objects:v97 count:16];
          }

          while (v56);
        }

        if ([v54 count])
        {
          signatureCopy = v51;
          v63 = [[SHMatch alloc] initWithMediaItems:v54 forSignature:v51];
          v64 = sh_log_object();
          v12 = v87;
          v18 = v84;
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v99 = v63;
            _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEBUG, "Server response parser: has match %@", buf, 0xCu);
          }

          v19 = v83;
          [(SHServerResultsResponse *)v83 recordingIntermissionSeconds];
          v66 = v65;
          [(SHServerResultsResponse *)v83 recordingSignatureOffsetSeconds];
          v68 = v67;
          [(SHServerResultsResponse *)v83 retrySeconds];
          v17 = [SHMatcherResponse matchWithRecordingIntermission:v63 recordingSignatureOffset:v66 retrySeconds:v68 match:v69];
        }

        else
        {
          v76 = sh_log_object();
          signatureCopy = v51;
          v12 = v87;
          v18 = v84;
          if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEBUG, "Server response parser: has no match", buf, 2u);
          }

          v19 = v83;
          [(SHServerResultsResponse *)v83 recordingIntermissionSeconds];
          v78 = v77;
          [(SHServerResultsResponse *)v83 recordingSignatureOffsetSeconds];
          v80 = v79;
          [(SHServerResultsResponse *)v83 retrySeconds];
          v17 = [SHMatcherResponse noMatchWithRecordingIntermission:signatureCopy recordingSignatureOffset:v78 retrySeconds:v80 signature:v81];
        }

        v11 = v88;

        v15 = v85;
        firstObject = v86;
        error2 = v82;
        goto LABEL_23;
      }

      v70 = sh_log_object();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEBUG, "Server response parser: has no match", buf, 2u);
      }

      [(SHServerResultsResponse *)v19 recordingIntermissionSeconds];
      v72 = v71;
      [(SHServerResultsResponse *)v19 recordingSignatureOffsetSeconds];
      v74 = v73;
      [(SHServerResultsResponse *)v19 retrySeconds];
      v43 = [SHMatcherResponse noMatchWithRecordingIntermission:signatureCopy recordingSignatureOffset:v72 retrySeconds:v74 signature:v75];
LABEL_22:
      v17 = v43;
LABEL_23:

      goto LABEL_24;
    }

    v32 = sh_log_object();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [(SHServerResultsResponse *)v19 recordingIntermissionSeconds];
      v34 = v33;
      [(SHServerResultsResponse *)v19 retrySeconds];
      *buf = 134218240;
      v99 = v34;
      v100 = 2048;
      v101 = v35;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Server response parser: Error, returning results, recording intermission %f, retry %f", buf, 0x16u);
    }

    v36 = [SHMatcherResponse alloc];
    [(SHServerResultsResponse *)v19 recordingIntermissionSeconds];
    v38 = v37;
    [(SHServerResultsResponse *)v19 recordingSignatureOffsetSeconds];
    v40 = v39;
    [(SHServerResultsResponse *)v19 retrySeconds];
    v42 = v41;
    error2 = [(SHServerErrorResponse *)v15 error];
    v29 = v36;
    v30 = v38;
    v31 = v40;
    v28 = v42;
LABEL_21:
    v43 = [v29 initWithRecordingIntermission:0 recordingSignatureOffset:signatureCopy retrySeconds:0 match:error2 signature:v30 runningAssociatedRequestID:v31 error:v28];
    goto LABEL_22;
  }

  v16 = sh_log_object();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v99 = v12;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Server response parser: No response %@", buf, 0xCu);
  }

  firstObject = [SHError errorWithCode:202 underlyingError:v12];
  v17 = [SHMatcherResponse errorResponseForSignature:signatureCopy error:firstObject];
LABEL_24:

  return v17;
}

+ (id)mediaItemFromResourcesResponse:(id)response shazamID:(id)d signatureStartDate:(id)date campaignToken:(id)token location:(id)location
{
  responseCopy = response;
  dateCopy = date;
  locationCopy = location;
  tokenCopy = token;
  dCopy = d;
  v16 = [SHServerGetResponseParser mediaDictionaryFromResourcesResponse:responseCopy shazamID:dCopy campaignToken:tokenCopy];
  v17 = [v16 mutableCopy];

  shazamResponse = [responseCopy shazamResponse];
  v19 = [shazamResponse itemForIdentifier:dCopy];

  matchOffset = [v19 matchOffset];
  [v17 setValue:matchOffset forKey:SHMediaItemMatchOffset];

  speedSkew = [v19 speedSkew];
  [v17 setValue:speedSkew forKey:SHMediaItemSpeedSkew];

  frequencySkew = [v19 frequencySkew];
  [v17 setValue:frequencySkew forKey:SHMediaItemFrequencySkew];

  [v17 setValue:dateCopy forKey:SHMediaItemAudioStartDate];
  v23 = [SHLocationTransformer coordinateValueFromLocation:locationCopy];

  [v17 setValue:v23 forKey:SHMediaItemMatchLocationCoordinate];
  confidence = [v19 confidence];
  [v17 setValue:confidence forKey:SHMediaItemConfidence];

  songRelationIDs = [v19 songRelationIDs];
  v26 = [songRelationIDs count];

  if (v26)
  {
    songsResponse = [responseCopy songsResponse];
    songRelationIDs2 = [v19 songRelationIDs];
    v29 = [songsResponse itemForIdentifiers:songRelationIDs2];

    lyricsRelationIDs = [v29 lyricsRelationIDs];
    v31 = [lyricsRelationIDs count];

    if (v31)
    {
      lyricsResponse = [responseCopy lyricsResponse];
      lyricsRelationIDs2 = [v29 lyricsRelationIDs];
      v34 = [lyricsResponse itemForIdentifiers:lyricsRelationIDs2];

      matchOffset2 = [v19 matchOffset];
      [matchOffset2 doubleValue];
      v36 = [v34 snippetFromOffset:?];
      [v17 setValue:v36 forKey:SHMediaItemSyncedLyricsSnippet];

      matchOffset3 = [v19 matchOffset];
      [matchOffset3 doubleValue];
      v39 = [dateCopy dateByAddingTimeInterval:-v38];

      v40 = [SHSyncedLyrics alloc];
      v51 = v34;
      [v34 lyricLines];
      v41 = responseCopy;
      v42 = tokenCopy;
      v44 = v43 = dateCopy;
      songwriters = [v34 songwriters];
      v31 = [v40 initWithLyricsStartDate:v39 lines:v44 songwriters:songwriters];

      dateCopy = v43;
      tokenCopy = v42;
      responseCopy = v41;
    }
  }

  else
  {
    v31 = 0;
    v29 = 0;
  }

  v46 = [SHMatchedMediaItem alloc];
  v47 = [v17 copy];
  v48 = [v46 initWithMatchedMediaItemDictionary:v47 syncedLyrics:v31];

  v49 = [v29 rawResponseDataWithCampaignToken:tokenCopy];

  [v48 set_rawResponseSongsData:v49];

  return v48;
}

@end