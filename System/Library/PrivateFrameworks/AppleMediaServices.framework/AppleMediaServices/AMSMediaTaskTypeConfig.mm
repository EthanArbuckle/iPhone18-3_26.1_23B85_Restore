@interface AMSMediaTaskTypeConfig
+ (id)configForType:(int64_t)a3 environment:(int64_t)a4;
- (AMSMediaTaskTypeConfig)initWithType:(int64_t)a3 typeString:(id)a4 hostBagKey:(id)a5 realm:(id)a6 includePlatform:(BOOL)a7;
@end

@implementation AMSMediaTaskTypeConfig

- (AMSMediaTaskTypeConfig)initWithType:(int64_t)a3 typeString:(id)a4 hostBagKey:(id)a5 realm:(id)a6 includePlatform:(BOOL)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v19.receiver = self;
  v19.super_class = AMSMediaTaskTypeConfig;
  v16 = [(AMSMediaTaskTypeConfig *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_type = a3;
    objc_storeStrong(&v16->_typeString, a4);
    objc_storeStrong(&v17->_hostBagKey, a5);
    objc_storeStrong(&v17->_realm, a6);
    v17->_includePlatform = a7;
  }

  return v17;
}

+ (id)configForType:(int64_t)a3 environment:(int64_t)a4
{
  if (a4 == 1)
  {
    v6 = @"sandbox-media-api-host";
  }

  else
  {
    v6 = 0;
  }

  if (a3 > 103)
  {
    if (a3 <= 205)
    {
      if (a3 <= 201)
      {
        switch(a3)
        {
          case 104:
            v7 = [AMSMediaTaskTypeConfig alloc];
            if (v6)
            {
              v8 = v6;
            }

            else
            {
              v8 = @"books-media-api-host";
            }

            v9 = @"audio-book-series";
            v10 = @"catalog";
            v11 = 104;
            break;
          case 200:
            v7 = [AMSMediaTaskTypeConfig alloc];
            if (v6)
            {
              v8 = v6;
            }

            else
            {
              v8 = @"music-media-api-host";
            }

            v9 = @"albums";
            v10 = @"catalog";
            v11 = 200;
            break;
          case 201:
            v7 = [AMSMediaTaskTypeConfig alloc];
            if (v6)
            {
              v8 = v6;
            }

            else
            {
              v8 = @"music-media-api-host";
            }

            v9 = @"music-videos";
            v10 = @"catalog";
            v11 = 201;
            break;
          default:
            goto LABEL_165;
        }
      }

      else if (a3 > 203)
      {
        if (a3 == 204)
        {
          v7 = [AMSMediaTaskTypeConfig alloc];
          if (v6)
          {
            v8 = v6;
          }

          else
          {
            v8 = @"music-media-api-host";
          }

          v9 = @"stations";
          v10 = @"catalog";
          v11 = 204;
        }

        else
        {
          v7 = [AMSMediaTaskTypeConfig alloc];
          if (v6)
          {
            v8 = v6;
          }

          else
          {
            v8 = @"music-media-api-host";
          }

          v9 = @"artists";
          v10 = @"catalog";
          v11 = 205;
        }
      }

      else if (a3 == 202)
      {
        v7 = [AMSMediaTaskTypeConfig alloc];
        if (v6)
        {
          v8 = v6;
        }

        else
        {
          v8 = @"music-media-api-host";
        }

        v9 = @"playlists";
        v10 = @"catalog";
        v11 = 202;
      }

      else
      {
        v7 = [AMSMediaTaskTypeConfig alloc];
        if (v6)
        {
          v8 = v6;
        }

        else
        {
          v8 = @"music-media-api-host";
        }

        v9 = @"songs";
        v10 = @"catalog";
        v11 = 203;
      }
    }

    else if (a3 > 301)
    {
      if (a3 > 400)
      {
        if (a3 == 401)
        {
          v7 = [AMSMediaTaskTypeConfig alloc];
          if (v6)
          {
            v8 = v6;
          }

          else
          {
            v8 = @"fit-media-api-host";
          }

          v9 = @"modalities";
          v10 = @"catalog";
          v11 = 401;
        }

        else
        {
          if (a3 != 402)
          {
            goto LABEL_165;
          }

          v7 = [AMSMediaTaskTypeConfig alloc];
          if (v6)
          {
            v8 = v6;
          }

          else
          {
            v8 = @"fit-media-api-host";
          }

          v9 = @"workouts";
          v10 = @"catalog";
          v11 = 402;
        }
      }

      else if (a3 == 302)
      {
        v7 = [AMSMediaTaskTypeConfig alloc];
        if (v6)
        {
          v8 = v6;
        }

        else
        {
          v8 = @"podcasts-media-api-host";
        }

        v9 = @"podcast-channels";
        v10 = @"catalog";
        v11 = 302;
      }

      else
      {
        if (a3 != 400)
        {
          goto LABEL_165;
        }

        v7 = [AMSMediaTaskTypeConfig alloc];
        if (v6)
        {
          v8 = v6;
        }

        else
        {
          v8 = @"fit-media-api-host";
        }

        v9 = @"contributors";
        v10 = @"catalog";
        v11 = 400;
      }
    }

    else if (a3 > 299)
    {
      if (a3 == 300)
      {
        v7 = [AMSMediaTaskTypeConfig alloc];
        if (v6)
        {
          v8 = v6;
        }

        else
        {
          v8 = @"podcasts-media-api-host";
        }

        v9 = @"podcasts";
        v10 = @"catalog";
        v11 = 300;
      }

      else
      {
        v7 = [AMSMediaTaskTypeConfig alloc];
        if (v6)
        {
          v8 = v6;
        }

        else
        {
          v8 = @"podcasts-media-api-host";
        }

        v9 = @"podcast-episodes";
        v10 = @"catalog";
        v11 = 301;
      }
    }

    else if (a3 == 206)
    {
      v7 = [AMSMediaTaskTypeConfig alloc];
      if (v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = @"music-media-api-host";
      }

      v9 = @"apple-curators";
      v10 = @"catalog";
      v11 = 206;
    }

    else
    {
      if (a3 != 207)
      {
        goto LABEL_165;
      }

      v7 = [AMSMediaTaskTypeConfig alloc];
      if (v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = @"music-media-api-host";
      }

      v9 = @"uploaded-videos";
      v10 = @"catalog";
      v11 = 207;
    }

    goto LABEL_163;
  }

  if (a3 > 6)
  {
    if (a3 <= 99)
    {
      if (a3 > 8)
      {
        if (a3 == 9)
        {
          v7 = [AMSMediaTaskTypeConfig alloc];
          if (v6)
          {
            v8 = v6;
          }

          else
          {
            v8 = @"apps-media-api-host";
          }

          v9 = @"challenges";
          v10 = @"catalog";
          v11 = 9;
        }

        else
        {
          if (a3 != 10)
          {
            goto LABEL_165;
          }

          v7 = [AMSMediaTaskTypeConfig alloc];
          if (v6)
          {
            v8 = v6;
          }

          else
          {
            v8 = @"apps-media-api-host";
          }

          v9 = @"activities";
          v10 = @"catalog";
          v11 = 10;
        }
      }

      else if (a3 == 7)
      {
        if (_os_feature_enabled_impl())
        {
          v12 = @"catalog";
        }

        else
        {
          v12 = @"listing";
        }

        v7 = [AMSMediaTaskTypeConfig alloc];
        if (v6)
        {
          v8 = v6;
        }

        else
        {
          v8 = @"app-distribution-media-api-host";
        }

        v9 = @"apps";
        v11 = 7;
        v10 = v12;
      }

      else
      {
        v7 = [AMSMediaTaskTypeConfig alloc];
        if (v6)
        {
          v8 = v6;
        }

        else
        {
          v8 = @"games-media-api-host";
        }

        v9 = @"games";
        v10 = @"catalog";
        v11 = 8;
      }

      goto LABEL_158;
    }

    if (a3 > 101)
    {
      if (a3 == 102)
      {
        v7 = [AMSMediaTaskTypeConfig alloc];
        if (v6)
        {
          v8 = v6;
        }

        else
        {
          v8 = @"books-media-api-host";
        }

        v9 = @"book-series";
        v10 = @"catalog";
        v11 = 102;
      }

      else
      {
        v7 = [AMSMediaTaskTypeConfig alloc];
        if (v6)
        {
          v8 = v6;
        }

        else
        {
          v8 = @"books-media-api-host";
        }

        v9 = @"authors";
        v10 = @"catalog";
        v11 = 103;
      }
    }

    else if (a3 == 100)
    {
      v7 = [AMSMediaTaskTypeConfig alloc];
      if (v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = @"books-media-api-host";
      }

      v9 = @"audio-books";
      v10 = @"catalog";
      v11 = 100;
    }

    else
    {
      v7 = [AMSMediaTaskTypeConfig alloc];
      if (v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = @"books-media-api-host";
      }

      v9 = @"books";
      v10 = @"catalog";
      v11 = 101;
    }

LABEL_163:
    v13 = 0;
    goto LABEL_164;
  }

  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v7 = [AMSMediaTaskTypeConfig alloc];
        if (v6)
        {
          v8 = v6;
        }

        else
        {
          v8 = @"apps-media-api-host";
        }

        v9 = @"app-bundles";
        v10 = @"catalog";
        v11 = 1;
      }

      else
      {
        if (a3 != 2)
        {
          goto LABEL_165;
        }

        v7 = [AMSMediaTaskTypeConfig alloc];
        if (v6)
        {
          v8 = v6;
        }

        else
        {
          v8 = @"apps-media-api-host";
        }

        v9 = @"in-apps";
        v10 = @"catalog";
        v11 = 2;
      }
    }

    else
    {
      v7 = [AMSMediaTaskTypeConfig alloc];
      if (v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = @"apps-media-api-host";
      }

      v9 = @"apps";
      v10 = @"catalog";
      v11 = 0;
    }
  }

  else if (a3 > 4)
  {
    if (a3 == 5)
    {
      v7 = [AMSMediaTaskTypeConfig alloc];
      if (v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = @"apps-media-api-host";
      }

      v9 = @"editorial-items";
      v10 = @"editorial";
      v11 = 5;
    }

    else
    {
      v7 = [AMSMediaTaskTypeConfig alloc];
      if (v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = @"apps-media-api-host";
      }

      v9 = @"contingent-items";
      v10 = @"catalog";
      v11 = 6;
    }
  }

  else if (a3 == 3)
  {
    v7 = [AMSMediaTaskTypeConfig alloc];
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = @"apps-media-api-host";
    }

    v9 = @"arcade-apps";
    v10 = @"catalog";
    v11 = 3;
  }

  else
  {
    v7 = [AMSMediaTaskTypeConfig alloc];
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = @"apps-media-api-edge-host";
    }

    v9 = @"personal-recommendations";
    v10 = @"recommendations";
    v11 = 4;
  }

LABEL_158:
  v13 = 1;
LABEL_164:
  v4 = [(AMSMediaTaskTypeConfig *)v7 initWithType:v11 typeString:v9 hostBagKey:v8 realm:v10 includePlatform:v13];
LABEL_165:

  return v4;
}

@end