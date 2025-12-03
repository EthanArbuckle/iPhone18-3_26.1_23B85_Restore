@interface SHServerHapticsResponseParser
+ (id)hapticSongItemFromResourcesResponse:(id)response hapticItemIDs:(id)ds songDuration:(double)duration;
+ (id)hapticSongItemFromServerData:(id)data songDuration:(double)duration error:(id *)error;
@end

@implementation SHServerHapticsResponseParser

+ (id)hapticSongItemFromServerData:(id)data songDuration:(double)duration error:(id *)error
{
  v17 = 0;
  v7 = [NSJSONSerialization JSONObjectWithData:data options:0 error:&v17];
  v8 = v17;
  if (v7)
  {
    v9 = [SHServerGetResponseParser resourcesResponseFromServerObjects:v7 error:error];
    v10 = [SHServerGetResponseParser dataResponseFromServerObjects:v7 error:error];
    hapticItemIDs = [v10 hapticItemIDs];
    v12 = [objc_opt_class() hapticSongItemFromResourcesResponse:v9 hapticItemIDs:hapticItemIDs songDuration:duration];
    hapticsURL = [v12 hapticsURL];

    if (!hapticsURL)
    {
      v14 = sh_log_object();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Server response parser: has no song haptic items", buf, 2u);
      }
    }
  }

  else
  {
    v15 = sh_log_object();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Server response parser: No response %@", buf, 0xCu);
    }

    [SHError annotateClientError:error code:202 underlyingError:v8];
    v12 = 0;
  }

  return v12;
}

+ (id)hapticSongItemFromResourcesResponse:(id)response hapticItemIDs:(id)ds songDuration:(double)duration
{
  responseCopy = response;
  dsCopy = ds;
  v9 = sh_log_object();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    durationCopy = duration;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Converting duration of %f from seconds to milliseconds", buf, 0xCu);
  }

  v10 = fmax(duration * 1000.0, 0.0);
  v11 = sh_log_object();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    durationCopy = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Parsing song using new duration %fms", buf, 0xCu);
  }

  if ([dsCopy count] == 1)
  {
    v12 = sh_log_object();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Only one song item in response, returning its haptics url.", buf, 2u);
    }

    songsResponse = [responseCopy songsResponse];
    firstObject = [dsCopy firstObject];
    v47 = firstObject;
    v15 = [NSArray arrayWithObjects:&v47 count:1];
    v16 = [songsResponse itemForIdentifiers:v15];
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    songsResponse = dsCopy;
    v17 = [songsResponse countByEnumeratingWithState:&v37 objects:v46 count:16];
    if (v17)
    {
      v18 = v17;
      v36 = dsCopy;
      v16 = 0;
      v19 = *v38;
      v20 = 1.79769313e308;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v38 != v19)
          {
            objc_enumerationMutation(songsResponse);
          }

          v22 = *(*(&v37 + 1) + 8 * i);
          songsResponse2 = [responseCopy songsResponse];
          v45 = v22;
          v24 = [NSArray arrayWithObjects:&v45 count:1];
          v25 = [songsResponse2 itemForIdentifiers:v24];

          durationInMilliseconds = [v25 durationInMilliseconds];
          [durationInMilliseconds doubleValue];
          v28 = vabdd_f64(v10, v27);

          if (v28 < v20)
          {
            hapticsURL = [v25 hapticsURL];

            if (hapticsURL)
            {
              v30 = sh_log_object();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
              {
                hapticsURL2 = [v25 hapticsURL];
                *buf = 134218242;
                durationCopy = v28;
                v43 = 2112;
                v44 = hapticsURL2;
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "New difference %f is smaller than existing difference, setting hapticsURL to: %@", buf, 0x16u);
              }

              v32 = v25;
              v16 = v32;
            }
          }

          hapticsURL3 = [v25 hapticsURL];

          if (hapticsURL3)
          {
            v34 = sh_log_object();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "Song item has haptics url, setting new minimum difference", buf, 2u);
            }

            v20 = fmin(v20, v28);
          }
        }

        v18 = [songsResponse countByEnumeratingWithState:&v37 objects:v46 count:16];
      }

      while (v18);
      dsCopy = v36;
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

@end