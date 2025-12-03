@interface SRFullScreenEffects
- (id)_effectForIdentifier:(id)identifier;
- (id)_fullscreenEffectMap;
- (id)effectForAceObject:(id)object;
@end

@implementation SRFullScreenEffects

- (id)effectForAceObject:(id)object
{
  fullScreenEffectType = [object fullScreenEffectType];
  if ([fullScreenEffectType isEqualToString:SAUIShowFullScreenEffectEffectTypeCONFETTIValue])
  {
    v5 = @"com.apple.messages.effect.CKConfettiEffect";
  }

  else if ([fullScreenEffectType isEqualToString:SAUIShowFullScreenEffectEffectTypeLASERSValue])
  {
    v5 = @"com.apple.messages.effect.CKLasersEffect";
  }

  else if ([fullScreenEffectType isEqualToString:SAUIShowFullScreenEffectEffectTypeFIREWORKSValue])
  {
    v5 = @"com.apple.messages.effect.CKFireworksEffect";
  }

  else if ([fullScreenEffectType isEqualToString:SAUIShowFullScreenEffectEffectTypeSHOOTINGSTARValue])
  {
    v5 = @"com.apple.messages.effect.CKShootingStarEffect";
  }

  else if ([fullScreenEffectType isEqualToString:SAUIShowFullScreenEffectEffectTypeBALLOONSValue])
  {
    v5 = @"com.apple.messages.effect.CKHappyBirthdayEffect";
  }

  else if ([fullScreenEffectType isEqualToString:SAUIShowFullScreenEffectEffectTypeSPARKLESValue])
  {
    v5 = @"com.apple.messages.effect.CKSparklesEffect";
  }

  else if ([fullScreenEffectType isEqualToString:SAUIShowFullScreenEffectEffectTypeLOVEValue])
  {
    v5 = @"com.apple.messages.effect.CKHeartEffect";
  }

  else if ([fullScreenEffectType isEqualToString:SAUIShowFullScreenEffectEffectTypeSPOTLIGHTValue])
  {
    v5 = @"com.apple.messages.effect.CKSpotlightEffect";
  }

  else
  {
    v5 = 0;
  }

  v6 = [(SRFullScreenEffects *)self _effectForIdentifier:v5];

  return v6;
}

- (id)_effectForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    _fullscreenEffectMap = [(SRFullScreenEffects *)self _fullscreenEffectMap];
    v6 = [_fullscreenEffectMap objectForKey:identifierCopy];

    if (v6)
    {
      if (([v6 isLoaded] & 1) == 0)
      {
        [v6 load];
      }

      v7 = objc_alloc_init([v6 principalClass]);
      [v7 setIdentifier:identifierCopy];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_fullscreenEffectMap
{
  fullscreenEffectMapInternal = self->_fullscreenEffectMapInternal;
  if (!fullscreenEffectMapInternal)
  {
    selfCopy = self;
    v4 = objc_alloc_init(NSMutableDictionary);
    v5 = +[NSFileManager defaultManager];
    v6 = [NSURL fileURLWithPath:@"/System/Library/Messages/iMessageEffects"];
    v7 = [v5 enumeratorAtURL:v6 includingPropertiesForKeys:0 options:7 errorHandler:&stru_100167CA0];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        v12 = 0;
        do
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[NSBundle alloc] initWithURL:*(*(&v19 + 1) + 8 * v12)];
          bundleIdentifier = [v13 bundleIdentifier];
          if (bundleIdentifier)
          {
            [(NSDictionary *)v4 setObject:v13 forKey:bundleIdentifier];
          }

          else
          {
            v15 = AFSiriLogContextConnection;
            if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v24 = "[SRFullScreenEffects _fullscreenEffectMap]";
              v25 = 2112;
              v26 = v13;
              _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Failed to get bundle identifier for %@", buf, 0x16u);
            }
          }

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v10);
    }

    v16 = selfCopy->_fullscreenEffectMapInternal;
    selfCopy->_fullscreenEffectMapInternal = v4;

    fullscreenEffectMapInternal = selfCopy->_fullscreenEffectMapInternal;
  }

  return fullscreenEffectMapInternal;
}

@end