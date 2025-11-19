@interface SHServerMatchResponseParser
+ (id)matcherResponseFromServerData:(id)a3 signature:(id)a4 location:(id)a5 context:(id)a6;
+ (id)mediaItemFromResourcesResponse:(id)a3 shazamID:(id)a4 signatureStartDate:(id)a5 campaignToken:(id)a6 location:(id)a7;
@end

@implementation SHServerMatchResponseParser

+ (id)matcherResponseFromServerData:(id)a3 signature:(id)a4 location:(id)a5 context:(id)a6
{
  v10 = a4;
  v90 = a5;
  v91 = a6;
  v96 = 0;
  v11 = [NSJSONSerialization JSONObjectWithData:a3 options:0 error:&v96];
  v12 = v96;
  if (v11)
  {
    v13 = [v11 objectForKeyedSubscript:@"errors"];
    v14 = [v13 firstObject];

    if (v14)
    {
      v15 = [[SHServerErrorResponse alloc] initWithErrorDictionary:v14];
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
        v21 = [(SHServerErrorResponse *)v15 error];
        *buf = 138412290;
        v99 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Server response parser: Error, %@", buf, 0xCu);
      }

      v22 = [SHMatcherResponse alloc];
      [v91 defaultRecordingIntermissionInSeconds];
      v24 = v23;
      [v91 defaultRecordingSignatureOffsetInSeconds];
      v26 = v25;
      v27 = [(SHServerErrorResponse *)v15 error];
      v28 = 0.0;
      v29 = v22;
      v30 = v24;
      v31 = v26;
      goto LABEL_21;
    }

LABEL_16:
    if (!v19 || !v15)
    {
      v27 = [v11 objectForKeyedSubscript:@"resources"];
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

      if (v27)
      {
        v84 = v18;
        v85 = v15;
        v86 = v14;
        v87 = v12;
        v88 = v11;
        v49 = v27;
        v50 = v19;
        v51 = v10;
        v82 = v49;
        v52 = [[SHServerResourcesResponse alloc] initWithResourcesDictionary:v49];
        v83 = v50;
        v53 = [(SHServerResultsResponse *)v50 shazamIDs];
        v54 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v53 count]);
        v92 = 0u;
        v93 = 0u;
        v94 = 0u;
        v95 = 0u;
        obj = v53;
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
              v60 = [v51 audioStartDate];
              v61 = [v91 campaignToken];
              v62 = [a1 mediaItemFromResourcesResponse:v52 shazamID:v59 signatureStartDate:v60 campaignToken:v61 location:v90];

              [v54 addObject:v62];
            }

            v56 = [obj countByEnumeratingWithState:&v92 objects:v97 count:16];
          }

          while (v56);
        }

        if ([v54 count])
        {
          v10 = v51;
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
          v10 = v51;
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
          v17 = [SHMatcherResponse noMatchWithRecordingIntermission:v10 recordingSignatureOffset:v78 retrySeconds:v80 signature:v81];
        }

        v11 = v88;

        v15 = v85;
        v14 = v86;
        v27 = v82;
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
      v43 = [SHMatcherResponse noMatchWithRecordingIntermission:v10 recordingSignatureOffset:v72 retrySeconds:v74 signature:v75];
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
    v27 = [(SHServerErrorResponse *)v15 error];
    v29 = v36;
    v30 = v38;
    v31 = v40;
    v28 = v42;
LABEL_21:
    v43 = [v29 initWithRecordingIntermission:0 recordingSignatureOffset:v10 retrySeconds:0 match:v27 signature:v30 runningAssociatedRequestID:v31 error:v28];
    goto LABEL_22;
  }

  v16 = sh_log_object();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v99 = v12;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Server response parser: No response %@", buf, 0xCu);
  }

  v14 = [SHError errorWithCode:202 underlyingError:v12];
  v17 = [SHMatcherResponse errorResponseForSignature:v10 error:v14];
LABEL_24:

  return v17;
}

+ (id)mediaItemFromResourcesResponse:(id)a3 shazamID:(id)a4 signatureStartDate:(id)a5 campaignToken:(id)a6 location:(id)a7
{
  v11 = a3;
  v12 = a5;
  v13 = a7;
  v14 = a6;
  v15 = a4;
  v16 = [SHServerGetResponseParser mediaDictionaryFromResourcesResponse:v11 shazamID:v15 campaignToken:v14];
  v17 = [v16 mutableCopy];

  v18 = [v11 shazamResponse];
  v19 = [v18 itemForIdentifier:v15];

  v20 = [v19 matchOffset];
  [v17 setValue:v20 forKey:SHMediaItemMatchOffset];

  v21 = [v19 speedSkew];
  [v17 setValue:v21 forKey:SHMediaItemSpeedSkew];

  v22 = [v19 frequencySkew];
  [v17 setValue:v22 forKey:SHMediaItemFrequencySkew];

  [v17 setValue:v12 forKey:SHMediaItemAudioStartDate];
  v23 = [SHLocationTransformer coordinateValueFromLocation:v13];

  [v17 setValue:v23 forKey:SHMediaItemMatchLocationCoordinate];
  v24 = [v19 confidence];
  [v17 setValue:v24 forKey:SHMediaItemConfidence];

  v25 = [v19 songRelationIDs];
  v26 = [v25 count];

  if (v26)
  {
    v27 = [v11 songsResponse];
    v28 = [v19 songRelationIDs];
    v29 = [v27 itemForIdentifiers:v28];

    v30 = [v29 lyricsRelationIDs];
    v31 = [v30 count];

    if (v31)
    {
      v32 = [v11 lyricsResponse];
      v33 = [v29 lyricsRelationIDs];
      v34 = [v32 itemForIdentifiers:v33];

      v35 = [v19 matchOffset];
      [v35 doubleValue];
      v36 = [v34 snippetFromOffset:?];
      [v17 setValue:v36 forKey:SHMediaItemSyncedLyricsSnippet];

      v37 = [v19 matchOffset];
      [v37 doubleValue];
      v39 = [v12 dateByAddingTimeInterval:-v38];

      v40 = [SHSyncedLyrics alloc];
      v51 = v34;
      [v34 lyricLines];
      v41 = v11;
      v42 = v14;
      v44 = v43 = v12;
      v45 = [v34 songwriters];
      v31 = [v40 initWithLyricsStartDate:v39 lines:v44 songwriters:v45];

      v12 = v43;
      v14 = v42;
      v11 = v41;
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

  v49 = [v29 rawResponseDataWithCampaignToken:v14];

  [v48 set_rawResponseSongsData:v49];

  return v48;
}

@end