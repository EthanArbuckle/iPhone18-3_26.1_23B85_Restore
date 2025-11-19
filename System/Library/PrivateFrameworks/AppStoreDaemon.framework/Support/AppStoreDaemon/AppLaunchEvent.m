@interface AppLaunchEvent
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation AppLaunchEvent

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_new();
  v6 = [(NSString *)self->_bundleID copyWithZone:a3];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(NSString *)self->_bundleVersion copyWithZone:a3];
  v9 = *(v5 + 48);
  *(v5 + 48) = v8;

  v10 = [(NSString *)self->_clipBundleID copyWithZone:a3];
  v11 = *(v5 + 80);
  *(v5 + 80) = v10;

  v12 = [(NSString *)self->_clipLaunchReason copyWithZone:a3];
  v13 = *(v5 + 96);
  *(v5 + 96) = v12;

  v14 = [(NSURL *)self->_clipFullURL copyWithZone:a3];
  v15 = *(v5 + 88);
  *(v5 + 88) = v14;

  v16 = [(NSString *)self->_clipReferrerBundleID copyWithZone:a3];
  v17 = *(v5 + 112);
  *(v5 + 112) = v16;

  v18 = [(NSURL *)self->_clipReferrerURL copyWithZone:a3];
  v19 = *(v5 + 104);
  *(v5 + 104) = v18;

  v20 = [(NSString *)self->_clipWebAppBundleID copyWithZone:a3];
  v21 = *(v5 + 120);
  *(v5 + 120) = v20;

  v22 = [(NSString *)self->_containingBundleID copyWithZone:a3];
  v23 = *(v5 + 128);
  *(v5 + 128) = v22;

  v24 = [(NSDate *)self->_endDate copyWithZone:a3];
  v25 = *(v5 + 16);
  *(v5 + 16) = v24;

  v26 = [(NSNumber *)self->_evid copyWithZone:a3];
  v27 = *(v5 + 56);
  *(v5 + 56) = v26;

  *(v5 + 8) = self->_isExtensionUsage;
  *(v5 + 10) = self->_clip;
  v28 = [(NSNumber *)self->_itemID copyWithZone:a3];
  v29 = *(v5 + 64);
  *(v5 + 64) = v28;

  v30 = [(NSString *)self->_itemName copyWithZone:a3];
  v31 = *(v5 + 72);
  *(v5 + 72) = v30;

  v32 = [(NSString *)self->_launchReason copyWithZone:a3];
  v33 = *(v5 + 32);
  *(v5 + 32) = v32;

  *(v5 + 12) = self->_sourceStream;
  v34 = [(NSDate *)self->_startDate copyWithZone:a3];
  v35 = *(v5 + 24);
  *(v5 + 24) = v34;

  *(v5 + 144) = *&self->_usageTime;
  return v5;
}

- (id)description
{
  v3 = +[NSMutableArray array];
  if (self)
  {
    bundleID = self->_bundleID;
  }

  else
  {
    bundleID = 0;
  }

  v5 = [NSString stringWithFormat:@"bundleID: %@", bundleID];
  [v3 addObject:v5];

  if (self)
  {
    startDate = self->_startDate;
  }

  else
  {
    startDate = 0;
  }

  v7 = sub_1002525A8(startDate);
  v8 = [NSString stringWithFormat:@"startTime: %@", v7];
  [v3 addObject:v8];

  if (self)
  {
    endDate = self->_endDate;
  }

  else
  {
    endDate = 0;
  }

  v10 = sub_1002525A8(endDate);
  v11 = [NSString stringWithFormat:@"endTime: %@", v10];
  [v3 addObject:v11];

  if (self)
  {
    v12 = [NSString stringWithFormat:@"type: %ld", self->_sourceStream];
    [v3 addObject:v12];

    if (self->_isExtensionUsage)
    {
      [v3 addObject:@"isExtensionUsage: Y"];
    }

    containingBundleID = self->_containingBundleID;
  }

  else
  {
    v22 = [NSString stringWithFormat:@"type: %ld", 0];
    [v3 addObject:v22];

    containingBundleID = 0;
  }

  if ([(NSString *)containingBundleID length])
  {
    if (self)
    {
      v14 = self->_containingBundleID;
    }

    else
    {
      v14 = 0;
    }

    v15 = [NSString stringWithFormat:@"bundleID: %@", v14];
    [v3 addObject:v15];
  }

  if (self)
  {
    launchReason = self->_launchReason;
  }

  else
  {
    launchReason = 0;
  }

  if ([(NSString *)launchReason length])
  {
    if (self)
    {
      v17 = self->_launchReason;
    }

    else
    {
      v17 = 0;
    }

    v18 = [NSString stringWithFormat:@"launchReason: %@", v17];
    [v3 addObject:v18];
  }

  v19 = [v3 componentsJoinedByString:{@", "}];
  v20 = [NSString stringWithFormat:@"{ %@ }", v19];

  return v20;
}

@end