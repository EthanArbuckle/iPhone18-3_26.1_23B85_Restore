@interface ASDAppUsageStats
- (id)_formatTimeInternal:(uint64_t)internal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation ASDAppUsageStats

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_new();
  v6 = [(NSString *)self->_bundleID copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_bundleVersion copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_clipBundleID copyWithZone:zone];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  v12 = [(NSString *)self->_clipLaunchReason copyWithZone:zone];
  v13 = *(v5 + 48);
  *(v5 + 48) = v12;

  v14 = [(NSURL *)self->_clipFullURL copyWithZone:zone];
  v15 = *(v5 + 40);
  *(v5 + 40) = v14;

  v16 = [(NSString *)self->_clipReferrerBundleID copyWithZone:zone];
  v17 = *(v5 + 64);
  *(v5 + 64) = v16;

  v18 = [(NSString *)self->_clipReferrerURL copyWithZone:zone];
  v19 = *(v5 + 56);
  *(v5 + 56) = v18;

  v20 = [(NSString *)self->_clipWebAppBundleID copyWithZone:zone];
  v21 = *(v5 + 72);
  *(v5 + 72) = v20;

  v22 = [(NSString *)self->_containingBundleID copyWithZone:zone];
  v23 = *(v5 + 80);
  *(v5 + 80) = v22;

  v24 = [(NSDate *)self->_endDate copyWithZone:zone];
  v25 = *(v5 + 88);
  *(v5 + 88) = v24;

  v26 = [(NSNumber *)self->_evid copyWithZone:zone];
  v27 = *(v5 + 104);
  *(v5 + 104) = v26;

  *(v5 + 8) = self->_isClip;
  *(v5 + 9) = self->_isClipLaunch;
  *(v5 + 10) = self->_isExtensionUsage;
  v28 = [(NSNumber *)self->_itemID copyWithZone:zone];
  v29 = *(v5 + 112);
  *(v5 + 112) = v28;

  v30 = [(NSString *)self->_itemName copyWithZone:zone];
  v31 = *(v5 + 120);
  *(v5 + 120) = v30;

  v32 = [(NSString *)self->_launchReason copyWithZone:zone];
  v33 = *(v5 + 136);
  *(v5 + 136) = v32;

  v34 = [(NSString *)self->_sourceStream copyWithZone:zone];
  v35 = *(v5 + 144);
  *(v5 + 144) = v34;

  v36 = [(NSDate *)self->_startDate copyWithZone:zone];
  v37 = *(v5 + 152);
  *(v5 + 152) = v36;

  *(v5 + 160) = *&self->_usageTime;
  return v5;
}

- (id)description
{
  if (self->_isExtensionUsage)
  {
    v3 = MEMORY[0x1E696AEC0];
    bundleID = self->_bundleID;
    containingBundleID = self->_containingBundleID;
    startDate = [(ASDAppUsageStats *)self _formatTimeInternal:?];
    [v3 stringWithFormat:@"<id: %@ isExtension: Y containingBundleID: %@ usage: %@>", bundleID, containingBundleID, startDate];
    v14 = LABEL_8:;
    goto LABEL_9;
  }

  isClip = [(ASDAppUsageStats *)self isClip];
  v8 = MEMORY[0x1E696AEC0];
  v9 = self->_bundleID;
  if (!isClip)
  {
    usageCount = self->_usageCount;
    startDate = [(ASDAppUsageStats *)self _formatTimeInternal:?];
    [v8 stringWithFormat:@"<id: %@ count: %lu usage: %@>", v9, usageCount, startDate];
    goto LABEL_8;
  }

  isClipLaunch = self->_isClipLaunch;
  isClip = self->_isClip;
  usageTime = self->_usageTime;
  startDate = [(ASDAppUsageStats *)self startDate];
  if (qword_1ED90D4B8 != -1)
  {
    dispatch_once(&qword_1ED90D4B8, &__block_literal_global_6);
  }

  v13 = [_MergedGlobals_29 stringFromDate:startDate];

  v14 = [v8 stringWithFormat:@"{ id: %@ launch: %d clip: %d usage: %ld startDate: %@ }", v9, isClipLaunch, isClip, usageTime, v13];

LABEL_9:

  return v14;
}

- (id)_formatTimeInternal:(uint64_t)internal
{
  if (internal)
  {
    v3 = a2 % 60;
    if (a2 / 60 % 60 >= 10)
    {
      v4 = &stru_1F30184F0;
    }

    else
    {
      v4 = @"0";
    }

    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%lu", v4, a2 / 60 % 60];
    if (v3 >= 10)
    {
      v6 = &stru_1F30184F0;
    }

    else
    {
      v6 = @"0";
    }

    0x3CuLL = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%lu", v6, v3 % 0x3CuLL];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu:%@:%@", a2 / 3600, v5, 0x3CuLL];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __37__ASDAppUsageStats__formatShortDate___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v1 = _MergedGlobals_29;
  _MergedGlobals_29 = v0;

  v2 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"en_US_POSIX"];
  [_MergedGlobals_29 setLocale:v2];
  [_MergedGlobals_29 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
}

@end