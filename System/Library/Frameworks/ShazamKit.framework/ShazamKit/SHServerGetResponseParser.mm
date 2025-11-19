@interface SHServerGetResponseParser
+ (id)dataResponseFromServerObjects:(id)a3 error:(id *)a4;
+ (id)mediaDictionaryFromResourcesResponse:(id)a3 shazamID:(id)a4 campaignToken:(id)a5;
+ (id)mediaItemFromResourcesResponse:(id)a3 shazamID:(id)a4 campaignToken:(id)a5;
+ (id)mediaItemsFromServerData:(id)a3 context:(id)a4 error:(id *)a5;
+ (id)resourcesResponseFromServerObjects:(id)a3 error:(id *)a4;
@end

@implementation SHServerGetResponseParser

+ (id)mediaItemsFromServerData:(id)a3 context:(id)a4 error:(id *)a5
{
  v8 = a4;
  v35 = 0;
  v9 = [NSJSONSerialization JSONObjectWithData:a3 options:0 error:&v35];
  v10 = v35;
  v11 = v10;
  if (v9)
  {
    v29 = v10;
    v12 = [a1 resourcesResponseFromServerObjects:v9 error:a5];
    v30 = v9;
    v27 = a5;
    v28 = [a1 dataResponseFromServerObjects:v9 error:a5];
    v13 = [v28 shazamIDs];
    v14 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v13 count]);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v15 = v13;
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
          v21 = [v8 campaignToken];
          v22 = [a1 mediaItemFromResourcesResponse:v12 shazamID:v20 campaignToken:v21];

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

      [SHError annotateClientError:v27 code:202 underlyingError:0];
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

    [SHError annotateClientError:a5 code:202 underlyingError:v11];
    v23 = 0;
  }

  return v23;
}

+ (id)resourcesResponseFromServerObjects:(id)a3 error:(id *)a4
{
  v5 = [a3 objectForKeyedSubscript:@"resources"];
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

    [SHError annotateClientError:a4 code:202 underlyingError:0];
    v6 = 0;
  }

  return v6;
}

+ (id)dataResponseFromServerObjects:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"errors"];
  v7 = [v6 firstObject];

  if (v7)
  {
    v8 = [[SHServerErrorResponse alloc] initWithErrorDictionary:v7];
    v9 = [(SHServerErrorResponse *)v8 error];
    [SHCoreError annotateError:a4 withError:v9];

    v10 = 0;
  }

  else
  {
    v11 = [v5 objectForKeyedSubscript:@"data"];
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

      [SHError annotateClientError:a4 code:202 underlyingError:0];
      v10 = 0;
    }
  }

  return v10;
}

+ (id)mediaItemFromResourcesResponse:(id)a3 shazamID:(id)a4 campaignToken:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [SHServerGetResponseParser mediaDictionaryFromResourcesResponse:v9 shazamID:v8 campaignToken:v7];
  v11 = [SHMediaItem mediaItemWithProperties:v10];
  v12 = [v9 shazamResponse];
  v13 = [v12 itemForIdentifier:v8];

  v14 = [v9 songsResponse];

  v15 = [v13 songRelationIDs];
  v16 = [v14 itemForIdentifiers:v15];

  v17 = [v16 rawResponseDataWithCampaignToken:v7];

  [v11 set_rawResponseSongsData:v17];

  return v11;
}

+ (id)mediaDictionaryFromResourcesResponse:(id)a3 shazamID:(id)a4 campaignToken:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = +[NSMutableDictionary dictionary];
  v11 = [v7 shazamResponse];
  v12 = [v11 itemForIdentifier:v9];

  v13 = [v12 shazamID];
  [v10 setValue:v13 forKey:SHMediaItemShazamID];

  v14 = [v12 shazamURL];
  [v10 setValue:v14 forKey:SHMediaItemWebURL];

  v15 = [v12 title];
  [v10 setValue:v15 forKey:SHMediaItemTitle];

  v16 = [v12 artistName];
  [v10 setValue:v16 forKey:SHMediaItemSubtitle];

  v17 = [v12 artistName];
  [v10 setValue:v17 forKey:SHMediaItemArtist];

  v18 = [v12 shazamCount];
  [v10 setValue:v18 forKey:SHMediaItemShazamCount];

  v19 = [v12 songRelationIDs];
  v20 = [v19 count];

  if (v20)
  {
    v21 = [v7 songsResponse];
    v22 = [v12 songRelationIDs];
    v23 = [v21 itemForIdentifiers:v22];

    v24 = [v23 appleMusicID];
    [v10 setValue:v24 forKey:SHMediaItemAppleMusicID];

    v25 = [v23 artworkDictionary];
    v26 = SHMediaItemArtworkDictionary;
    [v10 setValue:v25 forKey:SHMediaItemArtworkDictionary];

    v27 = [v23 genreNames];
    [v10 setValue:v27 forKey:SHMediaItemGenres];

    v28 = [v23 releaseDate];
    [v10 setValue:v28 forKey:SHMediaItemReleaseDate];

    v29 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v23 isExplicitContent]);
    [v10 setValue:v29 forKey:SHMediaItemExplicitContent];

    v30 = [v23 albumName];
    [v10 setValue:v30 forKey:SHMediaItemAlbumName];

    v31 = [v23 isrc];
    [v10 setValue:v31 forKey:SHMediaItemISRC];

    v32 = [v23 appleMusicURLString];

    if (v32)
    {
      v33 = [SHTokenizedURL alloc];
      v34 = [v23 appleMusicURLString];
      v35 = [v33 initWithString:v34];

      if ([v35 containsTokens])
      {
        [v35 updateToken:5 withValue:v8];
      }

      v36 = [v35 URLRepresentation];
      [v10 setValue:v36 forKey:SHMediaItemAppleMusicURL];
    }

    v37 = [v23 lyricsRelationIDs];
    v38 = [v37 count];

    if (v38)
    {
      v39 = [v7 lyricsResponse];
      v40 = [v23 lyricsRelationIDs];
      v41 = [v39 itemForIdentifiers:v40];

      v42 = [v41 lyricsSnippet];
      [v10 setValue:v42 forKey:SHMediaItemLyricsSnippet];

      v43 = [v41 staticLyrics];
      [v10 setValue:v43 forKey:SHMediaItemStaticLyricLines];
    }

    v44 = [v23 musicVideoRelationIDs];
    v45 = [v44 count];

    if (v45)
    {
      v46 = [v7 musicVideoResponse];
      v47 = [v23 musicVideoRelationIDs];
      v48 = [v46 itemForIdentifiers:v47];

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
    v51 = [v12 artworkURL];
    [v10 setValue:v51 forKey:SHMediaItemArtworkURL];
  }

  v52 = [v10 copy];

  return v52;
}

@end