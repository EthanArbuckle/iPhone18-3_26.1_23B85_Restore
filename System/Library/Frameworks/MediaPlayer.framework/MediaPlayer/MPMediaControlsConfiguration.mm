@interface MPMediaControlsConfiguration
- (BOOL)isEqual:(id)equal;
- (CGRect)sourceRect;
- (MPMediaControlsConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v58 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      style = [(MPMediaControlsConfiguration *)v5 style];
      style2 = [(MPMediaControlsConfiguration *)self style];
      initatorStyle = [(MPMediaControlsConfiguration *)v5 initatorStyle];
      initatorStyle2 = [(MPMediaControlsConfiguration *)self initatorStyle];
      surface = [(MPMediaControlsConfiguration *)v5 surface];
      surface2 = [(MPMediaControlsConfiguration *)self surface];
      routingContextUID = [(MPMediaControlsConfiguration *)v5 routingContextUID];
      routingContextUID2 = [(MPMediaControlsConfiguration *)self routingContextUID];
      v13 = [routingContextUID isEqualToString:routingContextUID2];
      if (style == style2 && initatorStyle == initatorStyle2 && surface == surface2)
      {
        v16 = v13;
      }

      else
      {
        v16 = 0;
      }

      presentingAppBundleID = [(MPMediaControlsConfiguration *)v5 presentingAppBundleID];
      presentingAppBundleID2 = [(MPMediaControlsConfiguration *)self presentingAppBundleID];
      v19 = [presentingAppBundleID isEqualToString:presentingAppBundleID2];

      nowPlayingAppBundleID = [(MPMediaControlsConfiguration *)v5 nowPlayingAppBundleID];
      nowPlayingAppBundleID2 = [(MPMediaControlsConfiguration *)self nowPlayingAppBundleID];
      v22 = v19 & [nowPlayingAppBundleID isEqualToString:nowPlayingAppBundleID2];

      donatingAppBundleID = [(MPMediaControlsConfiguration *)v5 donatingAppBundleID];
      donatingAppBundleID2 = [(MPMediaControlsConfiguration *)self donatingAppBundleID];
      v25 = v16 & v22 & [donatingAppBundleID isEqualToString:donatingAppBundleID2];

      LODWORD(donatingAppBundleID) = [(MPMediaControlsConfiguration *)v5 isDonatingAppEligible];
      v26 = v25 & ~(donatingAppBundleID ^ [(MPMediaControlsConfiguration *)self isDonatingAppEligible]);
      visibleMediaApps = [(MPMediaControlsConfiguration *)v5 visibleMediaApps];
      visibleMediaApps2 = [(MPMediaControlsConfiguration *)self visibleMediaApps];
      v29 = v26 & [visibleMediaApps isEqualToArray:visibleMediaApps2];

      LODWORD(visibleMediaApps) = [(MPMediaControlsConfiguration *)v5 allowsNowPlayingApplicationLaunch];
      LODWORD(visibleMediaApps2) = visibleMediaApps ^ [(MPMediaControlsConfiguration *)self allowsNowPlayingApplicationLaunch];
      LODWORD(visibleMediaApps) = [(MPMediaControlsConfiguration *)v5 sortByIsVideoRoute];
      v30 = v29 & ~(visibleMediaApps2 | visibleMediaApps ^ [(MPMediaControlsConfiguration *)self sortByIsVideoRoute]);
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
      LODWORD(visibleMediaApps) = CGRectEqualToRect(v61, v62);
      userInterfaceStyle = [(MPMediaControlsConfiguration *)v5 userInterfaceStyle];
      userInterfaceStyle2 = [(MPMediaControlsConfiguration *)self userInterfaceStyle];
      v45 = v30 & visibleMediaApps & [userInterfaceStyle isEqualToNumber:userInterfaceStyle2];

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

      routeUID = [(MPMediaControlsConfiguration *)v5 routeUID];
      routeUID2 = [(MPMediaControlsConfiguration *)self routeUID];
      v52 = [routeUID isEqualToString:routeUID2];

      customRows = [(MPMediaControlsConfiguration *)v5 customRows];
      customRows2 = [(MPMediaControlsConfiguration *)self customRows];
      v55 = v49 & v52 & [customRows isEqualToArray:customRows2];

      LODWORD(customRows) = [(MPMediaControlsConfiguration *)v5 useGenericDevicesIconInHeader];
      v56 = v55 & ~(customRows ^ [(MPMediaControlsConfiguration *)self useGenericDevicesIconInHeader]);
      audioSessionID = [(MPMediaControlsConfiguration *)v5 audioSessionID];

      if (audioSessionID == [(MPMediaControlsConfiguration *)self audioSessionID])
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

- (id)copyWithZone:(_NSZone *)zone
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

- (void)encodeWithCoder:(id)coder
{
  style = self->_style;
  coderCopy = coder;
  [coderCopy encodeInteger:style forKey:@"style"];
  [coderCopy encodeInteger:self->_initatorStyle forKey:@"initiatorStyle"];
  [coderCopy encodeInteger:self->_surface forKey:@"surface"];
  [coderCopy encodeObject:self->_routingContextUID forKey:@"routingContextUID"];
  [coderCopy encodeObject:self->_presentingAppBundleID forKey:@"presentingAppBundleID"];
  [coderCopy encodeObject:self->_nowPlayingAppBundleID forKey:@"nowPlayingAppBundleID"];
  [coderCopy encodeObject:self->_donatingAppBundleID forKey:@"donatingAppBundleID"];
  [coderCopy encodeBool:self->_donatingAppEligible forKey:@"donatingAppEligible"];
  [coderCopy encodeObject:self->_visibleMediaApps forKey:@"visibleMediaApps"];
  [coderCopy encodeBool:self->_allowsNowPlayingApplicationLaunch forKey:@"allowsNowPlayingApplicationLaunch"];
  [coderCopy encodeBool:self->_sortByIsVideoRoute forKey:@"sortByIsVideoRoute"];
  [coderCopy encodeCGRect:@"sourceRect" forKey:{self->_sourceRect.origin.x, self->_sourceRect.origin.y, self->_sourceRect.size.width, self->_sourceRect.size.height}];
  [coderCopy encodeObject:self->_userInterfaceStyle forKey:@"userInterfaceStyle"];
  preferredWidth = self->_preferredWidth;
  *&preferredWidth = preferredWidth;
  [coderCopy encodeFloat:@"preferredWidth" forKey:preferredWidth];
  [coderCopy encodeObject:self->_routeUID forKey:@"routeUID"];
  [coderCopy encodeObject:self->_customRows forKey:@"customRows"];
  [coderCopy encodeInt32:self->_presentingAppProcessIdentifier forKey:@"presentingAppProcessIdentifier"];
  [coderCopy encodeBool:self->_useGenericDevicesIconInHeader forKey:@"useGenericDevicesIconInHeader"];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_audioSessionID];
  [coderCopy encodeObject:v7 forKey:@"audioSessionID"];
}

- (MPMediaControlsConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v31.receiver = self;
  v31.super_class = MPMediaControlsConfiguration;
  v5 = [(MPMediaControlsConfiguration *)&v31 init];
  if (v5)
  {
    v5->_style = [coderCopy decodeIntegerForKey:@"style"];
    v5->_initatorStyle = [coderCopy decodeIntegerForKey:@"initiatorStyle"];
    v5->_surface = [coderCopy decodeIntegerForKey:@"surface"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"routingContextUID"];
    routingContextUID = v5->_routingContextUID;
    v5->_routingContextUID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"presentingAppBundleID"];
    presentingAppBundleID = v5->_presentingAppBundleID;
    v5->_presentingAppBundleID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nowPlayingAppBundleID"];
    nowPlayingAppBundleID = v5->_nowPlayingAppBundleID;
    v5->_nowPlayingAppBundleID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"donatingAppBundleID"];
    donatingAppBundleID = v5->_donatingAppBundleID;
    v5->_donatingAppBundleID = v12;

    v5->_donatingAppEligible = [coderCopy decodeBoolForKey:@"donatingAppEligible"];
    v14 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"visibleMediaApps"];
    visibleMediaApps = v5->_visibleMediaApps;
    v5->_visibleMediaApps = v14;

    v5->_allowsNowPlayingApplicationLaunch = [coderCopy decodeBoolForKey:@"allowsNowPlayingApplicationLaunch"];
    v5->_sortByIsVideoRoute = [coderCopy decodeBoolForKey:@"sortByIsVideoRoute"];
    [coderCopy decodeCGRectForKey:@"sourceRect"];
    v5->_sourceRect.origin.x = v16;
    v5->_sourceRect.origin.y = v17;
    v5->_sourceRect.size.width = v18;
    v5->_sourceRect.size.height = v19;
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userInterfaceStyle"];
    userInterfaceStyle = v5->_userInterfaceStyle;
    v5->_userInterfaceStyle = v20;

    [coderCopy decodeFloatForKey:@"preferredWidth"];
    v5->_preferredWidth = v22;
    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"routeUID"];
    routeUID = v5->_routeUID;
    v5->_routeUID = v23;

    v25 = MEMORY[0x1E695DF70];
    v26 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"customRows"];
    v27 = [v25 arrayWithArray:v26];
    customRows = v5->_customRows;
    v5->_customRows = v27;

    v5->_presentingAppProcessIdentifier = [coderCopy decodeInt32ForKey:@"presentingAppProcessIdentifier"];
    v5->_useGenericDevicesIconInHeader = [coderCopy decodeBoolForKey:@"useGenericDevicesIconInHeader"];
    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"audioSessionID"];
    v5->_audioSessionID = [v29 unsignedIntegerValue];
  }

  return v5;
}

- (id)description
{
  style = [(MPMediaControlsConfiguration *)self style];
  if (style > 8)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E7682538[style];
  }

  surface = [(MPMediaControlsConfiguration *)self surface];
  if (surface > 0xB)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E7682580[surface];
  }

  v7 = MEMORY[0x1E696AEC0];
  v8 = objc_opt_class();
  routingContextUID = [(MPMediaControlsConfiguration *)self routingContextUID];
  presentingAppBundleID = self->_presentingAppBundleID;
  v11 = NSStringFromCGRect(self->_sourceRect);
  v12 = [v7 stringWithFormat:@"<%@:%p routingContextUID=%@, style=%@, presentingAppBundleID=%@, sourcRect=%@, preferredWidth=%f, userInterfaceStyle=%@ surface=%@>", v8, self, routingContextUID, v4, presentingAppBundleID, v11, *&self->_preferredWidth, self->_userInterfaceStyle, v6];

  return v12;
}

@end