@interface MPMediaControlsConfiguration
- (BOOL)isEqual:(id)a3;
- (CGRect)sourceRect;
- (MPMediaControlsConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPMediaControlsConfiguration

- (CGRect)sourceRect
{
  x = self->_sourceRect.origin.x;
  y = self->_sourceRect.origin.y;
  width = self->_sourceRect.size.width;
  height = self->_sourceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v58 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v60 = [(MPMediaControlsConfiguration *)v5 style];
      v6 = [(MPMediaControlsConfiguration *)self style];
      v7 = [(MPMediaControlsConfiguration *)v5 initatorStyle];
      v8 = [(MPMediaControlsConfiguration *)self initatorStyle];
      v9 = [(MPMediaControlsConfiguration *)v5 surface];
      v10 = [(MPMediaControlsConfiguration *)self surface];
      v11 = [(MPMediaControlsConfiguration *)v5 routingContextUID];
      v12 = [(MPMediaControlsConfiguration *)self routingContextUID];
      v13 = [v11 isEqualToString:v12];
      if (v60 == v6 && v7 == v8 && v9 == v10)
      {
        v16 = v13;
      }

      else
      {
        v16 = 0;
      }

      v17 = [(MPMediaControlsConfiguration *)v5 presentingAppBundleID];
      v18 = [(MPMediaControlsConfiguration *)self presentingAppBundleID];
      v19 = [v17 isEqualToString:v18];

      v20 = [(MPMediaControlsConfiguration *)v5 nowPlayingAppBundleID];
      v21 = [(MPMediaControlsConfiguration *)self nowPlayingAppBundleID];
      v22 = v19 & [v20 isEqualToString:v21];

      v23 = [(MPMediaControlsConfiguration *)v5 donatingAppBundleID];
      v24 = [(MPMediaControlsConfiguration *)self donatingAppBundleID];
      v25 = v16 & v22 & [v23 isEqualToString:v24];

      LODWORD(v23) = [(MPMediaControlsConfiguration *)v5 isDonatingAppEligible];
      v26 = v25 & ~(v23 ^ [(MPMediaControlsConfiguration *)self isDonatingAppEligible]);
      v27 = [(MPMediaControlsConfiguration *)v5 visibleMediaApps];
      v28 = [(MPMediaControlsConfiguration *)self visibleMediaApps];
      v29 = v26 & [v27 isEqualToArray:v28];

      LODWORD(v27) = [(MPMediaControlsConfiguration *)v5 allowsNowPlayingApplicationLaunch];
      LODWORD(v28) = v27 ^ [(MPMediaControlsConfiguration *)self allowsNowPlayingApplicationLaunch];
      LODWORD(v27) = [(MPMediaControlsConfiguration *)v5 sortByIsVideoRoute];
      v30 = v29 & ~(v28 | v27 ^ [(MPMediaControlsConfiguration *)self sortByIsVideoRoute]);
      [(MPMediaControlsConfiguration *)v5 sourceRect];
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v38 = v37;
      [(MPMediaControlsConfiguration *)self sourceRect];
      v62.origin.x = v39;
      v62.origin.y = v40;
      v62.size.width = v41;
      v62.size.height = v42;
      v61.origin.x = v32;
      v61.origin.y = v34;
      v61.size.width = v36;
      v61.size.height = v38;
      LODWORD(v27) = CGRectEqualToRect(v61, v62);
      v43 = [(MPMediaControlsConfiguration *)v5 userInterfaceStyle];
      v44 = [(MPMediaControlsConfiguration *)self userInterfaceStyle];
      v45 = v30 & v27 & [v43 isEqualToNumber:v44];

      [(MPMediaControlsConfiguration *)v5 preferredWidth];
      v47 = v46;
      [(MPMediaControlsConfiguration *)self preferredWidth];
      if (v47 == v48)
      {
        v49 = v45;
      }

      else
      {
        v49 = 0;
      }

      v50 = [(MPMediaControlsConfiguration *)v5 routeUID];
      v51 = [(MPMediaControlsConfiguration *)self routeUID];
      v52 = [v50 isEqualToString:v51];

      v53 = [(MPMediaControlsConfiguration *)v5 customRows];
      v54 = [(MPMediaControlsConfiguration *)self customRows];
      v55 = v49 & v52 & [v53 isEqualToArray:v54];

      LODWORD(v53) = [(MPMediaControlsConfiguration *)v5 useGenericDevicesIconInHeader];
      v56 = v55 & ~(v53 ^ [(MPMediaControlsConfiguration *)self useGenericDevicesIconInHeader]);
      v57 = [(MPMediaControlsConfiguration *)v5 audioSessionID];

      if (v57 == [(MPMediaControlsConfiguration *)self audioSessionID])
      {
        v58 = v56;
      }

      else
      {
        v58 = 0;
      }
    }

    else
    {
      v58 = 0;
    }
  }

  return v58;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MPMediaControlsConfiguration);
  v4->_style = self->_style;
  v4->_initatorStyle = self->_initatorStyle;
  v4->_surface = self->_surface;
  objc_storeStrong(&v4->_routingContextUID, self->_routingContextUID);
  objc_storeStrong(&v4->_presentingAppBundleID, self->_presentingAppBundleID);
  objc_storeStrong(&v4->_nowPlayingAppBundleID, self->_nowPlayingAppBundleID);
  objc_storeStrong(&v4->_donatingAppBundleID, self->_donatingAppBundleID);
  v4->_donatingAppEligible = self->_donatingAppEligible;
  objc_storeStrong(&v4->_visibleMediaApps, self->_visibleMediaApps);
  v4->_allowsNowPlayingApplicationLaunch = self->_allowsNowPlayingApplicationLaunch;
  v4->_sortByIsVideoRoute = self->_sortByIsVideoRoute;
  size = self->_sourceRect.size;
  v4->_sourceRect.origin = self->_sourceRect.origin;
  v4->_sourceRect.size = size;
  objc_storeStrong(&v4->_userInterfaceStyle, self->_userInterfaceStyle);
  v4->_preferredWidth = self->_preferredWidth;
  objc_storeStrong(&v4->_routeUID, self->_routeUID);
  objc_storeStrong(&v4->_customRows, self->_customRows);
  v4->_presentingAppProcessIdentifier = self->_presentingAppProcessIdentifier;
  v4->_useGenericDevicesIconInHeader = self->_useGenericDevicesIconInHeader;
  v4->_audioSessionID = self->_audioSessionID;
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  style = self->_style;
  v5 = a3;
  [v5 encodeInteger:style forKey:@"style"];
  [v5 encodeInteger:self->_initatorStyle forKey:@"initiatorStyle"];
  [v5 encodeInteger:self->_surface forKey:@"surface"];
  [v5 encodeObject:self->_routingContextUID forKey:@"routingContextUID"];
  [v5 encodeObject:self->_presentingAppBundleID forKey:@"presentingAppBundleID"];
  [v5 encodeObject:self->_nowPlayingAppBundleID forKey:@"nowPlayingAppBundleID"];
  [v5 encodeObject:self->_donatingAppBundleID forKey:@"donatingAppBundleID"];
  [v5 encodeBool:self->_donatingAppEligible forKey:@"donatingAppEligible"];
  [v5 encodeObject:self->_visibleMediaApps forKey:@"visibleMediaApps"];
  [v5 encodeBool:self->_allowsNowPlayingApplicationLaunch forKey:@"allowsNowPlayingApplicationLaunch"];
  [v5 encodeBool:self->_sortByIsVideoRoute forKey:@"sortByIsVideoRoute"];
  [v5 encodeCGRect:@"sourceRect" forKey:{self->_sourceRect.origin.x, self->_sourceRect.origin.y, self->_sourceRect.size.width, self->_sourceRect.size.height}];
  [v5 encodeObject:self->_userInterfaceStyle forKey:@"userInterfaceStyle"];
  preferredWidth = self->_preferredWidth;
  *&preferredWidth = preferredWidth;
  [v5 encodeFloat:@"preferredWidth" forKey:preferredWidth];
  [v5 encodeObject:self->_routeUID forKey:@"routeUID"];
  [v5 encodeObject:self->_customRows forKey:@"customRows"];
  [v5 encodeInt32:self->_presentingAppProcessIdentifier forKey:@"presentingAppProcessIdentifier"];
  [v5 encodeBool:self->_useGenericDevicesIconInHeader forKey:@"useGenericDevicesIconInHeader"];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_audioSessionID];
  [v5 encodeObject:v7 forKey:@"audioSessionID"];
}

- (MPMediaControlsConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = MPMediaControlsConfiguration;
  v5 = [(MPMediaControlsConfiguration *)&v31 init];
  if (v5)
  {
    v5->_style = [v4 decodeIntegerForKey:@"style"];
    v5->_initatorStyle = [v4 decodeIntegerForKey:@"initiatorStyle"];
    v5->_surface = [v4 decodeIntegerForKey:@"surface"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"routingContextUID"];
    routingContextUID = v5->_routingContextUID;
    v5->_routingContextUID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"presentingAppBundleID"];
    presentingAppBundleID = v5->_presentingAppBundleID;
    v5->_presentingAppBundleID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nowPlayingAppBundleID"];
    nowPlayingAppBundleID = v5->_nowPlayingAppBundleID;
    v5->_nowPlayingAppBundleID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"donatingAppBundleID"];
    donatingAppBundleID = v5->_donatingAppBundleID;
    v5->_donatingAppBundleID = v12;

    v5->_donatingAppEligible = [v4 decodeBoolForKey:@"donatingAppEligible"];
    v14 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"visibleMediaApps"];
    visibleMediaApps = v5->_visibleMediaApps;
    v5->_visibleMediaApps = v14;

    v5->_allowsNowPlayingApplicationLaunch = [v4 decodeBoolForKey:@"allowsNowPlayingApplicationLaunch"];
    v5->_sortByIsVideoRoute = [v4 decodeBoolForKey:@"sortByIsVideoRoute"];
    [v4 decodeCGRectForKey:@"sourceRect"];
    v5->_sourceRect.origin.x = v16;
    v5->_sourceRect.origin.y = v17;
    v5->_sourceRect.size.width = v18;
    v5->_sourceRect.size.height = v19;
    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userInterfaceStyle"];
    userInterfaceStyle = v5->_userInterfaceStyle;
    v5->_userInterfaceStyle = v20;

    [v4 decodeFloatForKey:@"preferredWidth"];
    v5->_preferredWidth = v22;
    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"routeUID"];
    routeUID = v5->_routeUID;
    v5->_routeUID = v23;

    v25 = MEMORY[0x1E695DF70];
    v26 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"customRows"];
    v27 = [v25 arrayWithArray:v26];
    customRows = v5->_customRows;
    v5->_customRows = v27;

    v5->_presentingAppProcessIdentifier = [v4 decodeInt32ForKey:@"presentingAppProcessIdentifier"];
    v5->_useGenericDevicesIconInHeader = [v4 decodeBoolForKey:@"useGenericDevicesIconInHeader"];
    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"audioSessionID"];
    v5->_audioSessionID = [v29 unsignedIntegerValue];
  }

  return v5;
}

- (id)description
{
  v3 = [(MPMediaControlsConfiguration *)self style];
  if (v3 > 8)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E7682538[v3];
  }

  v5 = [(MPMediaControlsConfiguration *)self surface];
  if (v5 > 0xB)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E7682580[v5];
  }

  v7 = MEMORY[0x1E696AEC0];
  v8 = objc_opt_class();
  v9 = [(MPMediaControlsConfiguration *)self routingContextUID];
  presentingAppBundleID = self->_presentingAppBundleID;
  v11 = NSStringFromCGRect(self->_sourceRect);
  v12 = [v7 stringWithFormat:@"<%@:%p routingContextUID=%@, style=%@, presentingAppBundleID=%@, sourcRect=%@, preferredWidth=%f, userInterfaceStyle=%@ surface=%@>", v8, self, v9, v4, presentingAppBundleID, v11, *&self->_preferredWidth, self->_userInterfaceStyle, v6];

  return v12;
}

@end