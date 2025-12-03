@interface ATXSessionTaggingAppEntity
+ (id)genreIdForBundleId:(id)id;
- (ATXSessionTaggingAppEntity)initWithBundleId:(id)id modeMetadataConstants:(id)constants;
- (id)entityKey;
- (void)_resetAffinityVectorToDefault;
- (void)_resetAffinityVectorToDefault_v2;
@end

@implementation ATXSessionTaggingAppEntity

- (id)entityKey
{
  v3 = objc_opt_class();
  bundleId = self->_bundleId;

  return [v3 keyForBundleId:bundleId];
}

+ (id)genreIdForBundleId:(id)id
{
  idCopy = id;
  if ([idCopy isEqual:@"com.apple.calculator"])
  {
    goto LABEL_2;
  }

  if ([idCopy isEqual:@"com.apple.camera"])
  {
    goto LABEL_4;
  }

  if ([idCopy isEqual:@"com.apple.compass"])
  {
    goto LABEL_6;
  }

  if ([idCopy isEqual:@"com.apple.DocumentsApp"])
  {
    goto LABEL_2;
  }

  if ([idCopy isEqual:@"com.apple.facetime"])
  {
LABEL_12:
    v4 = &unk_283A56EE8;
    goto LABEL_7;
  }

  if ([idCopy isEqual:@"com.apple.Maps"])
  {
LABEL_6:
    v4 = &unk_283A56ED0;
    goto LABEL_7;
  }

  if ([idCopy isEqual:@"com.apple.mobilecal"] & 1) != 0 || (objc_msgSend(idCopy, "isEqual:", @"com.apple.mobilemail") & 1) != 0 || (objc_msgSend(idCopy, "isEqual:", @"com.apple.mobilenotes"))
  {
    goto LABEL_2;
  }

  if ([idCopy isEqual:@"com.apple.mobileslideshow"])
  {
LABEL_4:
    v4 = &unk_283A56EB8;
    goto LABEL_7;
  }

  if ([idCopy isEqual:@"com.apple.Music"])
  {
    v4 = &unk_283A56F00;
    goto LABEL_7;
  }

  if ([idCopy isEqual:@"com.apple.NanoAlarm"])
  {
    v4 = &unk_283A56F18;
    goto LABEL_7;
  }

  if ([idCopy isEqual:@"com.apple.news"])
  {
    v4 = &unk_283A56F30;
    goto LABEL_7;
  }

  if ([idCopy isEqual:@"com.apple.podcasts"])
  {
    goto LABEL_25;
  }

  if ([idCopy isEqual:@"com.apple.reminders"])
  {
LABEL_2:
    v4 = &unk_283A56EA0;
    goto LABEL_7;
  }

  if ([idCopy isEqual:@"com.apple.stocks"])
  {
    v4 = &unk_283A56F60;
  }

  else
  {
    if ([idCopy isEqual:@"com.apple.tv"])
    {
LABEL_25:
      v4 = &unk_283A56F48;
      goto LABEL_7;
    }

    if ([idCopy isEqual:@"com.apple.weather"])
    {
      v4 = &unk_283A56F78;
    }

    else
    {
      if ([idCopy isEqual:@"com.apple.MobileSMS"])
      {
        goto LABEL_12;
      }

      v6 = +[_ATXAppInfoManager sharedInstance];
      v4 = [v6 genreIdForBundleId:idCopy];
    }
  }

LABEL_7:

  return v4;
}

- (void)_resetAffinityVectorToDefault
{
  v7 = [objc_opt_class() genreIdForBundleId:self->_bundleId];
  if (v7)
  {
    defaultAppGenreModeAffinities = [(ATXModeMetadataConstants *)self->_modeMetadataConstants defaultAppGenreModeAffinities];
    v4 = [defaultAppGenreModeAffinities objectForKeyedSubscript:v7];

    if (v4)
    {
      v5 = [[ATXModeEntityAffinityVector alloc] initWithAffinities:v4 shouldResize:1];
    }

    else
    {
      v5 = 0;
    }

    affinityVector = self->_affinityVector;
    self->_affinityVector = v5;
  }

  else
  {
    v4 = self->_affinityVector;
    self->_affinityVector = 0;
  }
}

- (void)_resetAffinityVectorToDefault_v2
{
  v7 = [objc_opt_class() genreIdForBundleId:self->_bundleId];
  if (v7)
  {
    defaultAppGenreModeAffinities_v2 = [(ATXModeMetadataConstants *)self->_modeMetadataConstants defaultAppGenreModeAffinities_v2];
    affinityVector = [defaultAppGenreModeAffinities_v2 objectForKeyedSubscript:v7];

    if (affinityVector)
    {
      v5 = [[ATXModeEntityAffinityVector alloc] initWithAffinities:affinityVector shouldResize:0];
    }

    else
    {
      v5 = 0;
    }

    affinityVector_v2 = self->_affinityVector_v2;
    self->_affinityVector_v2 = v5;
  }

  else
  {
    affinityVector = self->_affinityVector;
    self->_affinityVector = 0;
  }
}

- (ATXSessionTaggingAppEntity)initWithBundleId:(id)id modeMetadataConstants:(id)constants
{
  idCopy = id;
  constantsCopy = constants;
  v12.receiver = self;
  v12.super_class = ATXSessionTaggingAppEntity;
  v9 = [(ATXSessionTaggingAppEntity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_bundleId, id);
    objc_storeStrong(&v10->_modeMetadataConstants, constants);
    [(ATXSessionTaggingAppEntity *)v10 _resetAffinityVectorToDefault];
    [(ATXSessionTaggingAppEntity *)v10 _resetAffinityVectorToDefault_v2];
  }

  return v10;
}

@end