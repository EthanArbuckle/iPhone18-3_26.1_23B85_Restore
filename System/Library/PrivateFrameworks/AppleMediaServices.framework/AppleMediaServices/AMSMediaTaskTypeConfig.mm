@interface AMSMediaTaskTypeConfig
+ (id)configForType:(int64_t)type environment:(int64_t)environment;
- (AMSMediaTaskTypeConfig)initWithType:(int64_t)type typeString:(id)string hostBagKey:(id)key realm:(id)realm includePlatform:(BOOL)platform;
@end

@implementation AMSMediaTaskTypeConfig

- (AMSMediaTaskTypeConfig)initWithType:(int64_t)type typeString:(id)string hostBagKey:(id)key realm:(id)realm includePlatform:(BOOL)platform
{
  stringCopy = string;
  keyCopy = key;
  realmCopy = realm;
  v19.receiver = self;
  v19.super_class = AMSMediaTaskTypeConfig;
  v16 = [(AMSMediaTaskTypeConfig *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_type = type;
    objc_storeStrong(&v16->_typeString, string);
    objc_storeStrong(&v17->_hostBagKey, key);
    objc_storeStrong(&v17->_realm, realm);
    v17->_includePlatform = platform;
  }

  return v17;
}

+ (id)configForType:(int64_t)type environment:(int64_t)environment
{
  if (environment == 1)
  {
    v6 = @"sandbox-media-api-host";
  }

  else
  {
    v6 = 0;
  }

  if (type > 103)
  {
    if (type <= 205)
    {
      if (type <= 201)
      {
        switch(type)
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

      else if (type > 203)
      {
        if (type == 204)
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

      else if (type == 202)
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

    else if (type > 301)
    {
      if (type > 400)
      {
        if (type == 401)
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
          if (type != 402)
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

      else if (type == 302)
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
        if (type != 400)
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

    else if (type > 299)
    {
      if (type == 300)
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

    else if (type == 206)
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
      if (type != 207)
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

  if (type > 6)
  {
    if (type <= 99)
    {
      if (type > 8)
      {
        if (type == 9)
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
          if (type != 10)
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

      else if (type == 7)
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

    if (type > 101)
    {
      if (type == 102)
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

    else if (type == 100)
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

  if (type <= 2)
  {
    if (type)
    {
      if (type == 1)
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
        if (type != 2)
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

  else if (type > 4)
  {
    if (type == 5)
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

  else if (type == 3)
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