@interface AFSiriAudioRoute
- (AFSiriAudioRoute)initWithRouteDescription:(id)a3 hearingAidsAnnounceEnabled:(BOOL)a4 builtInSpeakerAnnounceEnabled:(BOOL)a5 ringerSwitchState:(int64_t)a6;
- (BOOL)_isAppleHeadphone;
- (BOOL)_isBuiltInSpeakerRoute;
- (BOOL)isBluetoothHeadset;
- (BOOL)isEqualToRoute:(id)a3;
- (BOOL)isNonAnnounceSupportedWirelessHeadset;
- (BOOL)supportsVolumeAdjustment;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)_announcementPlatform;
- (unint64_t)_getRouteCapabilities;
- (unint64_t)hash;
- (void)_initializeInternalState;
@end

@implementation AFSiriAudioRoute

- (void)_initializeInternalState
{
  avscRouteDescription = self->_avscRouteDescription;
  if (avscRouteDescription)
  {
    v4 = avscRouteDescription;
    v67 = 0;
    v68 = &v67;
    v69 = 0x2020000000;
    v5 = qword_10058FEE8;
    v70 = qword_10058FEE8;
    if (!qword_10058FEE8)
    {
      v63 = _NSConcreteStackBlock;
      v64 = 3221225472;
      v65 = sub_1000A05E8;
      v66 = &unk_10051E1C8;
      v6 = sub_1000A0638();
      v68[3] = dlsym(v6, "AVSystemController_RouteDescriptionKey_IsGenuineAppleAccessory");
      qword_10058FEE8 = v68[3];
      v5 = v68[3];
    }

    _Block_object_dispose(&v67, 8);
    if (!v5)
    {
      v61 = +[NSAssertionHandler currentHandler];
      v62 = [NSString stringWithUTF8String:"NSString *getAVSystemController_RouteDescriptionKey_IsGenuineAppleAccessory(void)"];
      [v61 handleFailureInFunction:v62 file:@"AFSiriAudioRoute.m" lineNumber:38 description:{@"%s", dlerror(), v63, v64, v65, v66}];
      goto LABEL_60;
    }

    v7 = *v5;
    v8 = [(NSDictionary *)v4 objectForKey:v7];
    self->_isGenuineAppleAccessory = [v8 BOOLValue];

    v67 = 0;
    v68 = &v67;
    v69 = 0x2020000000;
    v9 = qword_10058FEF8;
    v70 = qword_10058FEF8;
    if (!qword_10058FEF8)
    {
      v63 = _NSConcreteStackBlock;
      v64 = 3221225472;
      v65 = sub_1000A078C;
      v66 = &unk_10051E1C8;
      v10 = sub_1000A0638();
      v68[3] = dlsym(v10, "AVSystemController_RouteDescriptionKey_RouteCurrentlyPicked");
      qword_10058FEF8 = v68[3];
      v9 = v68[3];
    }

    _Block_object_dispose(&v67, 8);
    if (!v9)
    {
      v61 = +[NSAssertionHandler currentHandler];
      v62 = [NSString stringWithUTF8String:"NSString *getAVSystemController_RouteDescriptionKey_RouteCurrentlyPicked(void)"];
      [v61 handleFailureInFunction:v62 file:@"AFSiriAudioRoute.m" lineNumber:34 description:{@"%s", dlerror(), v63, v64, v65, v66}];
      goto LABEL_60;
    }

    v11 = *v9;
    v12 = [(NSDictionary *)v4 objectForKey:v11];
    self->_isRouteCurrentlyPicked = [v12 BOOLValue];

    v67 = 0;
    v68 = &v67;
    v69 = 0x2020000000;
    v13 = qword_10058FF00;
    v70 = qword_10058FF00;
    if (!qword_10058FF00)
    {
      v63 = _NSConcreteStackBlock;
      v64 = 3221225472;
      v65 = sub_1000A07DC;
      v66 = &unk_10051E1C8;
      v14 = sub_1000A0638();
      v68[3] = dlsym(v14, "AVSystemController_RouteDescriptionKey_BTDetails_SupportsDoAP");
      qword_10058FF00 = v68[3];
      v13 = v68[3];
    }

    _Block_object_dispose(&v67, 8);
    if (!v13)
    {
      v61 = +[NSAssertionHandler currentHandler];
      v62 = [NSString stringWithUTF8String:"NSString *getAVSystemController_RouteDescriptionKey_BTDetails_SupportsDoAP(void)"];
      [v61 handleFailureInFunction:v62 file:@"AFSiriAudioRoute.m" lineNumber:32 description:{@"%s", dlerror(), v63, v64, v65, v66}];
      goto LABEL_60;
    }

    v15 = *v13;
    v16 = [(NSDictionary *)v4 objectForKey:v15];
    self->_isDoAPCapable = [v16 BOOLValue];

    v67 = 0;
    v68 = &v67;
    v69 = 0x2020000000;
    v17 = qword_10058FF08;
    v70 = qword_10058FF08;
    if (!qword_10058FF08)
    {
      v63 = _NSConcreteStackBlock;
      v64 = 3221225472;
      v65 = sub_1000A082C;
      v66 = &unk_10051E1C8;
      v18 = sub_1000A0638();
      v68[3] = dlsym(v18, "AVSystemController_RouteDescriptionKey_PreferredExternalRouteDetails_IsActive");
      qword_10058FF08 = v68[3];
      v17 = v68[3];
    }

    _Block_object_dispose(&v67, 8);
    if (!v17)
    {
      v61 = +[NSAssertionHandler currentHandler];
      v62 = [NSString stringWithUTF8String:"NSString *getAVSystemController_RouteDescriptionKey_PreferredExternalRouteDetails_IsActive(void)"];
      [v61 handleFailureInFunction:v62 file:@"AFSiriAudioRoute.m" lineNumber:29 description:{@"%s", dlerror(), v63, v64, v65, v66}];
      goto LABEL_60;
    }

    v19 = *v17;
    v20 = [(NSDictionary *)v4 objectForKey:v19];
    self->_isHeadsetInEar = [v20 BOOLValue];

    v21 = sub_100012328();
    v22 = [(NSDictionary *)v4 objectForKey:v21];

    if (v22)
    {
      self->_inEarDetectEnabledSpecified = 1;
      v23 = sub_100012328();
      v24 = [(NSDictionary *)v4 objectForKey:v23];
      self->_inEarDetectEnabled = [v24 BOOLValue];
    }

    v67 = 0;
    v68 = &v67;
    v69 = 0x2020000000;
    v25 = qword_10058FF18;
    v70 = qword_10058FF18;
    if (!qword_10058FF18)
    {
      v63 = _NSConcreteStackBlock;
      v64 = 3221225472;
      v65 = sub_1000A087C;
      v66 = &unk_10051E1C8;
      v26 = sub_1000A0638();
      v68[3] = dlsym(v26, "AVSystemController_RouteDescriptionKey_BTDetails_ProductID");
      qword_10058FF18 = v68[3];
      v25 = v68[3];
    }

    _Block_object_dispose(&v67, 8);
    if (!v25)
    {
      v61 = +[NSAssertionHandler currentHandler];
      v62 = [NSString stringWithUTF8String:"NSString *getAVSystemController_RouteDescriptionKey_BTDetails_ProductID(void)"];
      [v61 handleFailureInFunction:v62 file:@"AFSiriAudioRoute.m" lineNumber:35 description:{@"%s", dlerror(), v63, v64, v65, v66}];
      goto LABEL_60;
    }

    v27 = *v25;
    v28 = [(NSDictionary *)v4 objectForKey:v27];
    connectedBTProductID = self->_connectedBTProductID;
    self->_connectedBTProductID = v28;

    v30 = @"BTHeadphones";
    v31 = [(NSString *)self->_connectedBTProductID hasPrefix:@"BTHeadphones"];
    v32 = self->_connectedBTProductID;
    if ((v31 & 1) == 0)
    {
      if (![(NSString *)self->_connectedBTProductID hasPrefix:@"BTHeadset"])
      {
        goto LABEL_23;
      }

      v32 = self->_connectedBTProductID;
      v30 = @"BTHeadset";
    }

    v33 = [(NSString *)v32 substringFromIndex:[(__CFString *)v30 length]];
    productID = self->_productID;
    self->_productID = v33;

LABEL_23:
    v67 = 0;
    v68 = &v67;
    v69 = 0x2020000000;
    v35 = qword_10058FF20;
    v70 = qword_10058FF20;
    if (!qword_10058FF20)
    {
      v63 = _NSConcreteStackBlock;
      v64 = 3221225472;
      v65 = sub_1000A08CC;
      v66 = &unk_10051E1C8;
      v36 = sub_1000A0638();
      v68[3] = dlsym(v36, "AVSystemController_RouteDescriptionKey_RouteUID");
      qword_10058FF20 = v68[3];
      v35 = v68[3];
    }

    _Block_object_dispose(&v67, 8);
    if (!v35)
    {
      v61 = +[NSAssertionHandler currentHandler];
      v62 = [NSString stringWithUTF8String:"NSString *getAVSystemController_RouteDescriptionKey_RouteUID(void)"];
      [v61 handleFailureInFunction:v62 file:@"AFSiriAudioRoute.m" lineNumber:36 description:{@"%s", dlerror(), v63, v64, v65, v66}];
      goto LABEL_60;
    }

    v37 = *v35;
    v38 = [(NSDictionary *)v4 objectForKey:v37];
    uid = self->_uid;
    self->_uid = v38;

    v40 = [(NSString *)self->_uid componentsSeparatedByString:@"-"];
    v41 = [v40 objectAtIndex:0];
    btAddress = self->_btAddress;
    self->_btAddress = v41;

    if ((AFBTProductIDSupportsAnnounce() & 1) != 0 || self->_isDoAPCapable)
    {
      v43 = AFBTAnnounceCallsUnsupportedOnProductID() ^ 1;
    }

    else
    {
      v43 = 0;
    }

    self->_headsetSupportsAnnounceCalls = v43;
    self->_headsetSupportsIED = AFBTProductIDSupportsIED();
    self->_headsetSupportsFauxIED = AFBTProductIDSupportsFauxIED();
    v67 = 0;
    v68 = &v67;
    v69 = 0x2020000000;
    v44 = qword_10058FF28;
    v70 = qword_10058FF28;
    if (!qword_10058FF28)
    {
      v63 = _NSConcreteStackBlock;
      v64 = 3221225472;
      v65 = sub_1000A091C;
      v66 = &unk_10051E1C8;
      v45 = sub_1000A0638();
      v68[3] = dlsym(v45, "AVSystemController_RouteDescriptionKey_BTDetails_IsBTManaged");
      qword_10058FF28 = v68[3];
      v44 = v68[3];
    }

    _Block_object_dispose(&v67, 8);
    if (!v44)
    {
      v61 = +[NSAssertionHandler currentHandler];
      v62 = [NSString stringWithUTF8String:"NSString *getAVSystemController_RouteDescriptionKey_BTDetails_IsBTManaged(void)"];
      [v61 handleFailureInFunction:v62 file:@"AFSiriAudioRoute.m" lineNumber:33 description:{@"%s", dlerror(), v63, v64, v65, v66}];
      goto LABEL_60;
    }

    v46 = *v44;
    v47 = [(NSDictionary *)v4 objectForKey:v46];
    self->_isTipiRoute = [v47 BOOLValue];

    if (AFIsNano())
    {
      v67 = 0;
      v68 = &v67;
      v69 = 0x2020000000;
      v48 = qword_10058FF30;
      v70 = qword_10058FF30;
      if (!qword_10058FF30)
      {
        v63 = _NSConcreteStackBlock;
        v64 = 3221225472;
        v65 = sub_1000A096C;
        v66 = &unk_10051E1C8;
        v49 = sub_1000A0638();
        v68[3] = dlsym(v49, "AVSystemController_RouteDescriptionKey_OtherDevicesConnected");
        qword_10058FF30 = v68[3];
        v48 = v68[3];
      }

      _Block_object_dispose(&v67, 8);
      if (!v48)
      {
        v61 = +[NSAssertionHandler currentHandler];
        v62 = [NSString stringWithUTF8String:"NSString *getAVSystemController_RouteDescriptionKey_OtherDevicesConnected(void)"];
        [v61 handleFailureInFunction:v62 file:@"AFSiriAudioRoute.m" lineNumber:31 description:{@"%s", dlerror(), v63, v64, v65, v66}];
        goto LABEL_60;
      }

      v50 = *v48;
      v51 = [(NSDictionary *)v4 objectForKey:v50];
      self->_isOtherDeviceConnected = [v51 count] != 0;

      if (self->_isTipiRoute)
      {
        LOBYTE(isHeadsetInEar) = 0;
        v53 = 92;
        goto LABEL_45;
      }

      isOtherDeviceConnected = self->_isOtherDeviceConnected;
      self->_isInTriangleMode = isOtherDeviceConnected;
      if (isOtherDeviceConnected)
      {
        self->_shouldDeferToOtherConnectedDevice = 1;
      }
    }

    else if (self->_isTipiRoute)
    {
      goto LABEL_46;
    }

    isHeadsetInEar = self->_isHeadsetInEar;
    if (!isHeadsetInEar)
    {
LABEL_46:
      v67 = 0;
      v68 = &v67;
      v69 = 0x2020000000;
      v55 = qword_10058FF38;
      v70 = qword_10058FF38;
      if (!qword_10058FF38)
      {
        v63 = _NSConcreteStackBlock;
        v64 = 3221225472;
        v65 = sub_1000A09BC;
        v66 = &unk_10051E1C8;
        v56 = sub_1000A0638();
        v68[3] = dlsym(v56, "AVSystemController_RouteDescriptionKey_AVAudioRouteName");
        qword_10058FF38 = v68[3];
        v55 = v68[3];
      }

      _Block_object_dispose(&v67, 8);
      if (v55)
      {
        v57 = *v55;
        v58 = [(NSDictionary *)v4 objectForKey:v57];
        v59 = [v58 copy];
        name = self->_name;
        self->_name = v59;

        self->_isBuiltInSpeakerRoute = [(AFSiriAudioRoute *)self _isBuiltInSpeakerRoute];
        self->_isHearingAidsRoute = [(AFSiriAudioRoute *)self _isHearingAidsRoute];

        return;
      }

      v61 = +[NSAssertionHandler currentHandler];
      v62 = [NSString stringWithUTF8String:"NSString *getAVSystemController_RouteDescriptionKey_AVAudioRouteName(void)"];
      [v61 handleFailureInFunction:v62 file:@"AFSiriAudioRoute.m" lineNumber:37 description:{@"%s", dlerror(), v63, v64, v65, v66}];
LABEL_60:

      __break(1u);
      return;
    }

    v53 = 93;
LABEL_45:
    *(&self->super.isa + v53) = isHeadsetInEar;
    goto LABEL_46;
  }
}

- (BOOL)_isBuiltInSpeakerRoute
{
  if ([(NSString *)self->_name isEqualToString:@"Speaker"])
  {
    return 1;
  }

  name = self->_name;

  return [(NSString *)name isEqualToString:@"BestSpeaker"];
}

- (unint64_t)_getRouteCapabilities
{
  if (self->_isRouteCurrentlyPicked && self->_isDoAPCapable && (self->_isHeadsetInEar || !self->_headsetSupportsIED))
  {
    goto LABEL_19;
  }

  if ((+[AFFeatureFlags isAccessibleAnnounceEnabled]& 1) == 0)
  {
    isRouteCurrentlyPicked = self->_isRouteCurrentlyPicked;
    goto LABEL_12;
  }

  isRouteCurrentlyPicked = self->_isRouteCurrentlyPicked;
  if (!self->_hearingAidsAnnounceEnabled || !self->_isRouteCurrentlyPicked)
  {
    if (self->_builtInSpeakerAnnounceEnabled && self->_isRouteCurrentlyPicked)
    {
      goto LABEL_17;
    }

LABEL_12:
    if (!isRouteCurrentlyPicked)
    {
      result = 0;
      if (!self->_shouldTakeRouteFromOtherConnectedDevice)
      {
        return result;
      }

      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (self->_isHearingAidsRoute)
  {
    goto LABEL_19;
  }

  if (!self->_builtInSpeakerAnnounceEnabled)
  {
LABEL_20:
    result = 0;
    goto LABEL_21;
  }

LABEL_17:
  if (!self->_isBuiltInSpeakerRoute || self->_ringerSwitchState != 1)
  {
    goto LABEL_20;
  }

LABEL_19:
  result = 1;
LABEL_21:
  if (self->_headsetSupportsAnnounceCalls && self->_isHeadsetInEar && (self->_inEarDetectEnabled || !self->_inEarDetectEnabledSpecified) && !self->_shouldDeferToOtherConnectedDevice)
  {
    result |= 2uLL;
  }

  return result;
}

- (int64_t)_announcementPlatform
{
  if ([(AFSiriAudioRoute *)self _isHearingAidsRoute])
  {
    return 3;
  }

  if ([(AFSiriAudioRoute *)self _isBuiltInSpeakerRoute])
  {
    return 4;
  }

  return 1;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_productID hash];
  v4 = [(NSString *)self->_btAddress hash]^ v3;
  v5 = v4 ^ [(NSString *)self->_name hash];
  v6 = [NSNumber numberWithUnsignedInteger:[(AFSiriAudioRoute *)self availableAnnouncementRequestTypes]];
  v7 = v5 ^ [v6 hash];
  v8 = [NSNumber numberWithBool:[(AFSiriAudioRoute *)self hasAuthenticationCapability]];
  v9 = [v8 hash];

  return v7 ^ v9;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v16 = [NSString alloc];
  v18.receiver = self;
  v18.super_class = AFSiriAudioRoute;
  v4 = [(AFSiriAudioRoute *)&v18 description];
  v17 = [[NSString alloc] initWithFormat:@"name = %@", self->_name];
  v19[0] = v17;
  v15 = [[NSString alloc] initWithFormat:@"btAddress = %@", self->_btAddress];
  v19[1] = v15;
  v5 = [[NSString alloc] initWithFormat:@"uid = %@", self->_uid];
  v19[2] = v5;
  v6 = [[NSString alloc] initWithFormat:@"connectedBTProductID = %@", self->_connectedBTProductID];
  v19[3] = v6;
  v7 = [[NSString alloc] initWithFormat:@"productID = %@", self->_productID];
  v19[4] = v7;
  v8 = [[NSString alloc] initWithFormat:@"availableAnnouncementRequestTypes = %lu", self->_availableAnnouncementRequestTypes];
  v19[5] = v8;
  v9 = [[NSString alloc] initWithFormat:@"announcePlatformForRoute = %ld", self->_announcePlatformForRoute];
  v19[6] = v9;
  v10 = [[NSString alloc] initWithFormat:@"hasAuthenticationCapability = %d", -[AFSiriAudioRoute hasAuthenticationCapability](self, "hasAuthenticationCapability")];
  v19[7] = v10;
  v11 = [NSArray arrayWithObjects:v19 count:8];
  v12 = [v11 componentsJoinedByString:{@", "}];
  v13 = [v16 initWithFormat:@"%@ {%@}", v4, v12];

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [AFSiriAudioRoute alloc];
  avscRouteDescription = self->_avscRouteDescription;
  hearingAidsAnnounceEnabled = self->_hearingAidsAnnounceEnabled;
  builtInSpeakerAnnounceEnabled = self->_builtInSpeakerAnnounceEnabled;
  ringerSwitchState = self->_ringerSwitchState;

  return [(AFSiriAudioRoute *)v4 initWithRouteDescription:avscRouteDescription hearingAidsAnnounceEnabled:hearingAidsAnnounceEnabled builtInSpeakerAnnounceEnabled:builtInSpeakerAnnounceEnabled ringerSwitchState:ringerSwitchState];
}

- (BOOL)supportsVolumeAdjustment
{
  if ([(NSString *)self->_btAddress length]!= 17)
  {
    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      productID = self->_productID;
      btAddress = self->_btAddress;
      v11 = 136315650;
      v12 = "[AFSiriAudioRoute supportsVolumeAdjustment]";
      v13 = 2112;
      v14 = productID;
      v15 = 2112;
      v16 = btAddress;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s ProductID: %@, BTAddress: %@, route doesn't support volume adjustments", &v11, 0x20u);
    }

    return 0;
  }

  v3 = AFIsH1Headset();
  v4 = AFSiriLogContextConnection;
  v5 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO);
  if (!v3)
  {
    if (v5)
    {
      v11 = 136315138;
      v12 = "[AFSiriAudioRoute supportsVolumeAdjustment]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s Non H1 based headphones route, doesn't support volume adjustment", &v11, 0xCu);
    }

    return 0;
  }

  if (!v5)
  {
    return 1;
  }

  v11 = 136315138;
  v12 = "[AFSiriAudioRoute supportsVolumeAdjustment]";
  v6 = 1;
  _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s H1 based headphones route, supports volume adjustment", &v11, 0xCu);
  return v6;
}

- (BOOL)isEqualToRoute:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self == v5)
  {
    LOBYTE(v12) = 1;
    goto LABEL_22;
  }

  productID = self->_productID;
  v8 = productID;
  if (!productID)
  {
    v9 = [(AFSiriAudioRoute *)v5 productID];
    if (!v9)
    {
      goto LABEL_10;
    }

    v3 = v9;
    v8 = self->_productID;
  }

  v10 = [(AFSiriAudioRoute *)v6 productID];
  v11 = [(NSString *)v8 isEqualToString:v10];

  if (productID)
  {
    if (!v11)
    {
      goto LABEL_21;
    }
  }

  else
  {

    if ((v11 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

LABEL_10:
  btAddress = self->_btAddress;
  v14 = btAddress;
  if (!btAddress)
  {
    v15 = [(AFSiriAudioRoute *)v6 btAddress];
    if (!v15)
    {
      goto LABEL_17;
    }

    v3 = v15;
    v14 = self->_btAddress;
  }

  v16 = [(AFSiriAudioRoute *)v6 btAddress];
  v17 = [(NSString *)v14 isEqualToString:v16];

  if (btAddress)
  {
    if (!v17)
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  if ((v17 & 1) == 0)
  {
LABEL_21:
    LOBYTE(v12) = 0;
    goto LABEL_22;
  }

LABEL_17:
  name = self->_name;
  v19 = [(AFSiriAudioRoute *)v6 name];
  LODWORD(name) = [(NSString *)name isEqualToString:v19];

  if (!name)
  {
    goto LABEL_21;
  }

  availableAnnouncementRequestTypes = self->_availableAnnouncementRequestTypes;
  if (availableAnnouncementRequestTypes != [(AFSiriAudioRoute *)v6 availableAnnouncementRequestTypes])
  {
    goto LABEL_21;
  }

  announcePlatformForRoute = self->_announcePlatformForRoute;
  if (announcePlatformForRoute != [(AFSiriAudioRoute *)v6 announcePlatformForRoute])
  {
    goto LABEL_21;
  }

  v22 = [(AFSiriAudioRoute *)self hasAuthenticationCapability];
  v12 = v22 ^ [(AFSiriAudioRoute *)v6 hasAuthenticationCapability]^ 1;
LABEL_22:

  return v12;
}

- (BOOL)_isAppleHeadphone
{
  v3 = [NSString stringWithFormat:@"%u, ", 76];
  v4 = [(NSString *)self->_productID length]&& [(NSString *)self->_productID hasPrefix:v3];

  return v4;
}

- (BOOL)isNonAnnounceSupportedWirelessHeadset
{
  v2 = [(AFSiriAudioRoute *)self isBluetoothHeadset];
  if (v2)
  {
    LOBYTE(v2) = AFBTProductIDSupportsAnnounce() ^ 1;
  }

  return v2;
}

- (BOOL)isBluetoothHeadset
{
  if ([(NSString *)self->_name isEqualToString:@"HeadsetBT"])
  {
    return 1;
  }

  name = self->_name;

  return [(NSString *)name isEqualToString:@"HeadphonesBT"];
}

- (AFSiriAudioRoute)initWithRouteDescription:(id)a3 hearingAidsAnnounceEnabled:(BOOL)a4 builtInSpeakerAnnounceEnabled:(BOOL)a5 ringerSwitchState:(int64_t)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = AFSiriAudioRoute;
  v12 = [(AFSiriAudioRoute *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_avscRouteDescription, a3);
    v13->_hearingAidsAnnounceEnabled = a4;
    v13->_builtInSpeakerAnnounceEnabled = a5;
    v13->_ringerSwitchState = a6;
    [(AFSiriAudioRoute *)v13 _initializeInternalState];
    v13->_availableAnnouncementRequestTypes = [(AFSiriAudioRoute *)v13 _getRouteCapabilities];
    v13->_announcePlatformForRoute = [(AFSiriAudioRoute *)v13 _announcementPlatform];
  }

  return v13;
}

@end