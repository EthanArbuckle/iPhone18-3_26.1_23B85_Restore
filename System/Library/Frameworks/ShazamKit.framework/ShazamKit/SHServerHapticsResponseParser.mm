@interface SHServerHapticsResponseParser
+ (id)hapticSongItemFromResourcesResponse:(id)a3 hapticItemIDs:(id)a4 songDuration:(double)a5;
+ (id)hapticSongItemFromServerData:(id)a3 songDuration:(double)a4 error:(id *)a5;
@end

@implementation SHServerHapticsResponseParser

+ (id)hapticSongItemFromServerData:(id)a3 songDuration:(double)a4 error:(id *)a5
{
  v17 = 0;
  v7 = [NSJSONSerialization JSONObjectWithData:a3 options:0 error:&v17];
  v8 = v17;
  if (v7)
  {
    v9 = [SHServerGetResponseParser resourcesResponseFromServerObjects:v7 error:a5];
    v10 = [SHServerGetResponseParser dataResponseFromServerObjects:v7 error:a5];
    v11 = [v10 hapticItemIDs];
    v12 = [objc_opt_class() hapticSongItemFromResourcesResponse:v9 hapticItemIDs:v11 songDuration:a4];
    v13 = [v12 hapticsURL];

    if (!v13)
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

    [SHError annotateClientError:a5 code:202 underlyingError:v8];
    v12 = 0;
  }

  return v12;
}

+ (id)hapticSongItemFromResourcesResponse:(id)a3 hapticItemIDs:(id)a4 songDuration:(double)a5
{
  v7 = a3;
  v8 = a4;
  v9 = sh_log_object();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v42 = a5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Converting duration of %f from seconds to milliseconds", buf, 0xCu);
  }

  v10 = fmax(a5 * 1000.0, 0.0);
  v11 = sh_log_object();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v42 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Parsing song using new duration %fms", buf, 0xCu);
  }

  if ([v8 count] == 1)
  {
    v12 = sh_log_object();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Only one song item in response, returning its haptics url.", buf, 2u);
    }

    v13 = [v7 songsResponse];
    v14 = [v8 firstObject];
    v47 = v14;
    v15 = [NSArray arrayWithObjects:&v47 count:1];
    v16 = [v13 itemForIdentifiers:v15];
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v13 = v8;
    v17 = [v13 countByEnumeratingWithState:&v37 objects:v46 count:16];
    if (v17)
    {
      v18 = v17;
      v36 = v8;
      v16 = 0;
      v19 = *v38;
      v20 = 1.79769313e308;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v38 != v19)
          {
            objc_enumerationMutation(v13);
          }

          v22 = *(*(&v37 + 1) + 8 * i);
          v23 = [v7 songsResponse];
          v45 = v22;
          v24 = [NSArray arrayWithObjects:&v45 count:1];
          v25 = [v23 itemForIdentifiers:v24];

          v26 = [v25 durationInMilliseconds];
          [v26 doubleValue];
          v28 = vabdd_f64(v10, v27);

          if (v28 < v20)
          {
            v29 = [v25 hapticsURL];

            if (v29)
            {
              v30 = sh_log_object();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
              {
                v31 = [v25 hapticsURL];
                *buf = 134218242;
                v42 = v28;
                v43 = 2112;
                v44 = v31;
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "New difference %f is smaller than existing difference, setting hapticsURL to: %@", buf, 0x16u);
              }

              v32 = v25;
              v16 = v32;
            }
          }

          v33 = [v25 hapticsURL];

          if (v33)
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

        v18 = [v13 countByEnumeratingWithState:&v37 objects:v46 count:16];
      }

      while (v18);
      v8 = v36;
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

@end