@interface SHServerGetResponseParser
+ (id)dataResponseFromServerObjects:(id)objects error:(id *)error;
+ (id)mediaDictionaryFromResourcesResponse:(id)response shazamID:(id)d campaignToken:(id)token;
+ (id)mediaItemFromResourcesResponse:(id)response shazamID:(id)d campaignToken:(id)token;
+ (id)mediaItemsFromServerData:(id)data context:(id)context error:(id *)error;
+ (id)resourcesResponseFromServerObjects:(id)objects error:(id *)error;
@end

@implementation SHServerGetResponseParser

+ (id)mediaItemsFromServerData:(id)data context:(id)context error:(id *)error
{
  contextCopy = context;
  v35 = 0;
  v9 = [NSJSONSerialization JSONObjectWithData:data options:0 error:&v35];
  v10 = v35;
  v11 = v10;
  if (v9)
  {
    v29 = v10;
    v12 = [self resourcesResponseFromServerObjects:v9 error:error];
    v30 = v9;
    errorCopy = error;
    v28 = [self dataResponseFromServerObjects:v9 error:error];
    shazamIDs = [v28 shazamIDs];
    v14 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [shazamIDs count]);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v15 = shazamIDs;
    v16 = [v15 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v32;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v32 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v31 + 1) + 8 * i);
          campaignToken = [contextCopy campaignToken];
          v22 = [self mediaItemFromResourcesResponse:v12 shazamID:v20 campaignToken:campaignToken];

          [v14 addObject:v22];
        }

        v17 = [v15 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v17);
    }

    if ([v14 count])
    {
      v23 = v14;
      v11 = v29;
      v9 = v30;
    }

    else
    {
      v25 = sh_log_object();
      v11 = v29;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Server response parser: has no media items", buf, 2u);
      }

      [SHError annotateClientError:errorCopy code:202 underlyingError:0];
      v23 = 0;
      v9 = v30;
    }
  }

  else
  {
    v24 = sh_log_object();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v38 = v11;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "Server response parser: No response %@", buf, 0xCu);
    }

    [SHError annotateClientError:error code:202 underlyingError:v11];
    v23 = 0;
  }

  return v23;
}

+ (id)resourcesResponseFromServerObjects:(id)objects error:(id *)error
{
  v5 = [objects objectForKeyedSubscript:@"resources"];
  if (v5)
  {
    v6 = [[SHServerResourcesResponse alloc] initWithResourcesDictionary:v5];
  }

  else
  {
    v7 = sh_log_object();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Server response parser: has no match", v9, 2u);
    }

    [SHError annotateClientError:error code:202 underlyingError:0];
    v6 = 0;
  }

  return v6;
}

+ (id)dataResponseFromServerObjects:(id)objects error:(id *)error
{
  objectsCopy = objects;
  v6 = [objectsCopy objectForKeyedSubscript:@"errors"];
  firstObject = [v6 firstObject];

  if (firstObject)
  {
    v8 = [[SHServerErrorResponse alloc] initWithErrorDictionary:firstObject];
    error = [(SHServerErrorResponse *)v8 error];
    [SHCoreError annotateError:error withError:error];

    v10 = 0;
  }

  else
  {
    v11 = [objectsCopy objectForKeyedSubscript:@"data"];
    if (v11)
    {
      v10 = [[SHServerDataResponse alloc] initWithDataArray:v11];
    }

    else
    {
      v12 = sh_log_object();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Server response parser: has no data array", v14, 2u);
      }

      [SHError annotateClientError:error code:202 underlyingError:0];
      v10 = 0;
    }
  }

  return v10;
}

+ (id)mediaItemFromResourcesResponse:(id)response shazamID:(id)d campaignToken:(id)token
{
  tokenCopy = token;
  dCopy = d;
  responseCopy = response;
  v10 = [SHServerGetResponseParser mediaDictionaryFromResourcesResponse:responseCopy shazamID:dCopy campaignToken:tokenCopy];
  v11 = [SHMediaItem mediaItemWithProperties:v10];
  shazamResponse = [responseCopy shazamResponse];
  v13 = [shazamResponse itemForIdentifier:dCopy];

  songsResponse = [responseCopy songsResponse];

  songRelationIDs = [v13 songRelationIDs];
  v16 = [songsResponse itemForIdentifiers:songRelationIDs];

  v17 = [v16 rawResponseDataWithCampaignToken:tokenCopy];

  [v11 set_rawResponseSongsData:v17];

  return v11;
}

+ (id)mediaDictionaryFromResourcesResponse:(id)response shazamID:(id)d campaignToken:(id)token
{
  responseCopy = response;
  tokenCopy = token;
  dCopy = d;
  v10 = +[NSMutableDictionary dictionary];
  shazamResponse = [responseCopy shazamResponse];
  v12 = [shazamResponse itemForIdentifier:dCopy];

  shazamID = [v12 shazamID];
  [v10 setValue:shazamID forKey:SHMediaItemShazamID];

  shazamURL = [v12 shazamURL];
  [v10 setValue:shazamURL forKey:SHMediaItemWebURL];

  title = [v12 title];
  [v10 setValue:title forKey:SHMediaItemTitle];

  artistName = [v12 artistName];
  [v10 setValue:artistName forKey:SHMediaItemSubtitle];

  artistName2 = [v12 artistName];
  [v10 setValue:artistName2 forKey:SHMediaItemArtist];

  shazamCount = [v12 shazamCount];
  [v10 setValue:shazamCount forKey:SHMediaItemShazamCount];

  songRelationIDs = [v12 songRelationIDs];
  v20 = [songRelationIDs count];

  if (v20)
  {
    songsResponse = [responseCopy songsResponse];
    songRelationIDs2 = [v12 songRelationIDs];
    v23 = [songsResponse itemForIdentifiers:songRelationIDs2];

    appleMusicID = [v23 appleMusicID];
    [v10 setValue:appleMusicID forKey:SHMediaItemAppleMusicID];

    artworkDictionary = [v23 artworkDictionary];
    v26 = SHMediaItemArtworkDictionary;
    [v10 setValue:artworkDictionary forKey:SHMediaItemArtworkDictionary];

    genreNames = [v23 genreNames];
    [v10 setValue:genreNames forKey:SHMediaItemGenres];

    releaseDate = [v23 releaseDate];
    [v10 setValue:releaseDate forKey:SHMediaItemReleaseDate];

    v29 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v23 isExplicitContent]);
    [v10 setValue:v29 forKey:SHMediaItemExplicitContent];

    albumName = [v23 albumName];
    [v10 setValue:albumName forKey:SHMediaItemAlbumName];

    isrc = [v23 isrc];
    [v10 setValue:isrc forKey:SHMediaItemISRC];

    appleMusicURLString = [v23 appleMusicURLString];

    if (appleMusicURLString)
    {
      v33 = [SHTokenizedURL alloc];
      appleMusicURLString2 = [v23 appleMusicURLString];
      v35 = [v33 initWithString:appleMusicURLString2];

      if ([v35 containsTokens])
      {
        [v35 updateToken:5 withValue:tokenCopy];
      }

      uRLRepresentation = [v35 URLRepresentation];
      [v10 setValue:uRLRepresentation forKey:SHMediaItemAppleMusicURL];
    }

    lyricsRelationIDs = [v23 lyricsRelationIDs];
    v38 = [lyricsRelationIDs count];

    if (v38)
    {
      lyricsResponse = [responseCopy lyricsResponse];
      lyricsRelationIDs2 = [v23 lyricsRelationIDs];
      v41 = [lyricsResponse itemForIdentifiers:lyricsRelationIDs2];

      lyricsSnippet = [v41 lyricsSnippet];
      [v10 setValue:lyricsSnippet forKey:SHMediaItemLyricsSnippet];

      staticLyrics = [v41 staticLyrics];
      [v10 setValue:staticLyrics forKey:SHMediaItemStaticLyricLines];
    }

    musicVideoRelationIDs = [v23 musicVideoRelationIDs];
    v45 = [musicVideoRelationIDs count];

    if (v45)
    {
      musicVideoResponse = [responseCopy musicVideoResponse];
      musicVideoRelationIDs2 = [v23 musicVideoRelationIDs];
      v48 = [musicVideoResponse itemForIdentifiers:musicVideoRelationIDs2];

      v49 = [v48 url];
      [v10 setValue:v49 forKey:SHMediaItemVideoURL];
    }
  }

  else
  {
    v26 = SHMediaItemArtworkDictionary;
  }

  v50 = [v10 objectForKeyedSubscript:v26];

  if (!v50)
  {
    artworkURL = [v12 artworkURL];
    [v10 setValue:artworkURL forKey:SHMediaItemArtworkURL];
  }

  v52 = [v10 copy];

  return v52;
}

@end