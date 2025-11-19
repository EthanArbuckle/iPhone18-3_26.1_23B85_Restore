@interface TrackpadSettings
- (BOOL)decodeFromMap:(void *)a3;
- (BOOL)hsDecode:(void *)a3;
- (BOOL)hsEncode:(void *)a3;
- (NSDictionary)debug;
- (TrackpadSettings)initWithPreferences:(id)a3 service:(unsigned int)a4;
- (id)defaultPreferences;
- (void)encodeToMap:(void *)a3;
@end

@implementation TrackpadSettings

- (TrackpadSettings)initWithPreferences:(id)a3 service:(unsigned int)a4
{
  v4 = *&a4;
  v6 = a3;
  v78.receiver = self;
  v78.super_class = TrackpadSettings;
  v7 = [(PointerSettings *)&v78 initWithPreferences:v6 service:v4];
  if (v7)
  {
    v8 = [PointerSettings devicePropertiesFromService:v4];
    v9 = [v8 objectForKeyedSubscript:@"TrackpadSecondaryClickCorners"];
    v10 = [v9 BOOLValue];

    v11 = [v8 objectForKeyedSubscript:@"TrackpadThreeFingerDrag"];
    v12 = [v11 BOOLValue];

    v13 = [v8 objectForKeyedSubscript:@"SupportsSilentClick"];
    v77 = v13;
    if (v13)
    {
      v75 = [v13 BOOLValue];
    }

    else
    {
      v75 = 1;
    }

    v14 = [v6 objectForKeyedSubscript:@"Built-In"];
    v76 = v12;
    v15 = [v14 BOOLValue];

    v16 = [v6 objectForKeyedSubscript:@"TrackpadExternallyDisabled"];
    v17 = [v16 BOOLValue];

    if (v15)
    {
      v18 = [v6 objectForKeyedSubscript:@"MouseKeysStopsTrackpad"];
      if ([v18 BOOLValue])
      {
        v19 = [v6 objectForKeyedSubscript:@"HIDMouseKeysOn"];
        v20 = [v19 BOOLValue];

        v21 = v20 ^ 1;
      }

      else
      {
        v21 = 1;
      }
    }

    else
    {
      v21 = 1;
    }

    v22 = [v6 objectForKeyedSubscript:@"DisablingDeviceCount"];
    v23 = [v22 unsignedIntValue];

    if (v23)
    {
      v24 = v15;
    }

    else
    {
      v24 = 0;
    }

    if (v24 == 1)
    {
      v25 = [v6 objectForKeyedSubscript:@"USBMouseStopsTrackpad"];
      v26 = [v25 BOOLValue];

      v27 = v26 ^ 1;
    }

    else
    {
      v27 = 1;
    }

    v28 = v21 & v27;
    if (v17)
    {
      v29 = 0;
    }

    else
    {
      v29 = v28;
    }

    [(PointerSettings *)v7 setEnable:v29];
    [(PointerSettings *)v7 setVerticalScrolling:1];
    [(PointerSettings *)v7 setHorizontalScrolling:1];
    v30 = [v6 objectForKeyedSubscript:@"TrackpadScroll"];
    if ([v30 BOOLValue])
    {
      v31 = [v6 objectForKeyedSubscript:@"TrackpadHorizScroll"];
      v7->_gestureScrollingEnabled = [v31 BOOLValue];
    }

    else
    {
      v7->_gestureScrollingEnabled = 0;
    }

    v7->_pointMomentum = MTPreferencesGetAppBooleanValue(@"PointerInertia", @"com.apple.MultitouchSupport", 0);
    v32 = [v6 objectForKeyedSubscript:@"NotificationCenterActive"];
    v7->_notificationCenterActive = [v32 BOOLValue];

    v7->_symmetricZoomRotate = MTPreferencesGetAppBooleanValue(@"SymmetricZoom", @"com.apple.MultitouchSupport", 0);
    v33 = [v6 objectForKeyedSubscript:@"TrackpadBasicMode"];
    v34 = [v33 BOOLValue];

    if (v34)
    {
      goto LABEL_58;
    }

    v35 = [v6 objectForKeyedSubscript:@"TrackpadMomentumScroll"];
    -[PointerSettings setScrollMomentumEnabled:](v7, "setScrollMomentumEnabled:", [v35 BOOLValue]);

    v36 = [v6 objectForKeyedSubscript:@"TrackpadTwoFingerDoubleTapGesture"];
    -[PointerSettings setZoomToggle:](v7, "setZoomToggle:", [v36 intValue] == 1);

    v37 = [v6 objectForKeyedSubscript:@"TrackpadThreeFingerTapGesture"];
    v38 = v37;
    if (v37)
    {
      v39 = [v37 unsignedIntValue] == 2;
    }

    else
    {
      v39 = 1;
    }

    v7->_showDefinition = v39;
    v40 = [v6 objectForKeyedSubscript:@"TapToClickEnabled"];
    v7->_tapClick = [v40 BOOLValue];

    v41 = [v6 objectForKeyedSubscript:@"TwoFingersSecondaryClickEnabled"];
    v7->_secondaryClick = [v41 BOOLValue];

    if (v10)
    {
      v42 = [v6 objectForKeyedSubscript:@"TrackpadCornerSecondaryClick"];
      v43 = [v42 unsignedIntValue];

      if (v43 == 1)
      {
        v44 = 2;
        goto LABEL_32;
      }

      if (v43 == 2)
      {
        v44 = 3;
LABEL_32:
        v7->_secondaryClick = v44;
      }
    }

    v45 = [v6 objectForKeyedSubscript:@"TrackpadPinch"];
    v7->_zoom = [v45 BOOLValue];

    v46 = [v6 objectForKeyedSubscript:@"TrackpadRotate"];
    v7->_rotate = [v46 BOOLValue];

    v47 = [v6 objectForKeyedSubscript:@"TrackpadTwoFingerFromRightEdgeSwipeGesture"];
    v48 = v47;
    if (v47 && [v47 unsignedIntValue] != 3)
    {
      v51 = 0;
    }

    else
    {
      v49 = [v6 objectForKeyedSubscript:@"FlipLeftAndRightEdgeGestures"];
      v50 = [v49 BOOLValue];

      if (v50)
      {
        v51 = 2;
      }

      else
      {
        v51 = 1;
      }
    }

    v7->_notificationCenterEdgeSwipe2F = v51;
    v7->_accessibilityDrag = 0;
    if (v76 && ([v6 objectForKeyedSubscript:@"TrackpadThreeFingerDrag"], v52 = objc_claimAutoreleasedReturnValue(), v53 = objc_msgSend(v52, "BOOLValue"), v52, (v53 & 1) != 0))
    {
      v54 = 1;
    }

    else
    {
      if (!v7->_tapClick || ([v6 objectForKeyedSubscript:@"DoubleTapToDragEnabled"], v55 = objc_claimAutoreleasedReturnValue(), v56 = objc_msgSend(v55, "BOOLValue"), v55, !v56))
      {
LABEL_48:
        v59 = [v6 objectForKeyedSubscript:@"TrackpadThreeFingerHorizSwipeGesture"];
        v7->_horizontalSwipe3F = [v59 unsignedIntValue];

        v60 = [v6 objectForKeyedSubscript:@"TrackpadThreeFingerVertSwipeGesture"];
        v7->_verticalSwipe3F = [v60 unsignedIntValue];

        v61 = [v6 objectForKeyedSubscript:@"TrackpadFourFingerHorizSwipeGesture"];
        v7->_horizontalSwipe4F = [v61 unsignedIntValue];

        v62 = [v6 objectForKeyedSubscript:@"TrackpadFourFingerVertSwipeGesture"];
        v7->_verticalSwipe4F = [v62 unsignedIntValue];

        v63 = [v6 objectForKeyedSubscript:@"TrackpadFourFingerPinchGesture"];
        v7->_dockScale4F = [v63 unsignedIntValue] == 2;

        v64 = [v6 objectForKeyedSubscript:@"TrackpadFiveFingerPinchGesture"];
        v7->_dockScale5F = [v64 unsignedIntValue] == 2;

        v65 = [v6 objectForKeyedSubscript:@"FirstClickThreshold"];
        v66 = [v65 intValue];

        if (v66 >= 3)
        {
          v67 = 1;
        }

        else
        {
          v67 = v66;
        }

        v7->_clickStrength = v67;
        v68 = [v6 objectForKeyedSubscript:@"ActuationStrength"];
        v69 = v68;
        if (v68)
        {
          v70 = v75;
        }

        else
        {
          v70 = 0;
        }

        v71 = v70 == 1 && [v68 unsignedIntValue] == 0;
        v7->_quietClick = v71;
        v72 = [v6 objectForKeyedSubscript:@"ForceSuppressed"];
        v7->_forceSuppressed = [v72 BOOLValue];

        v73 = [v6 objectForKeyedSubscript:@"HIDScrollZoomModifierMask"];
        v7->_screenZoom = [v73 intValue] != 0;

LABEL_58:
        goto LABEL_59;
      }

      v57 = [v6 objectForKeyedSubscript:@"DragLockEnabled"];
      v58 = [v57 BOOLValue];

      if (v58)
      {
        v54 = 2;
      }

      else
      {
        v54 = 3;
      }
    }

    v7->_accessibilityDrag = v54;
    goto LABEL_48;
  }

LABEL_59:

  return v7;
}

- (id)defaultPreferences
{
  v4[0] = @"TwoFingersSecondaryClickEnabled";
  v4[1] = @"TrackpadCornerSecondaryClick";
  v5[0] = &__kCFBooleanTrue;
  v5[1] = &__kCFBooleanFalse;
  v4[2] = @"TapToClickEnabled";
  v4[3] = @"TrackpadMomentumScroll";
  v5[2] = &__kCFBooleanFalse;
  v5[3] = &off_112140;
  v4[4] = @"TrackpadScroll";
  v4[5] = @"TrackpadHorizScroll";
  v5[4] = &__kCFBooleanTrue;
  v5[5] = &__kCFBooleanTrue;
  v4[6] = @"TrackpadPinch";
  v4[7] = @"TrackpadRotate";
  v5[6] = &__kCFBooleanTrue;
  v5[7] = &__kCFBooleanTrue;
  v4[8] = @"TrackpadTwoFingerDoubleTapGesture";
  v4[9] = @"TrackpadTwoFingerFromRightEdgeSwipeGesture";
  v5[8] = &off_112158;
  v5[9] = &off_112158;
  v4[10] = @"TrackpadThreeFingerTapGesture";
  v4[11] = @"TrackpadThreeFingerHorizSwipeGesture";
  v5[10] = &off_112158;
  v5[11] = &off_112158;
  v4[12] = @"TrackpadThreeFingerVertSwipeGesture";
  v4[13] = @"TrackpadFourFingerPinchGesture";
  v5[12] = &off_112158;
  v5[13] = &off_112158;
  v4[14] = @"TrackpadFourFingerHorizSwipeGesture";
  v4[15] = @"TrackpadFourFingerVertSwipeGesture";
  v5[14] = &off_112158;
  v5[15] = &off_112158;
  v4[16] = @"TrackpadFiveFingerPinchGesture";
  v4[17] = @"ForceSuppressed";
  v5[16] = &off_112158;
  v5[17] = &__kCFBooleanFalse;
  v4[18] = @"ActuateDetents";
  v4[19] = @"FirstClickThreshold";
  v5[18] = &__kCFBooleanTrue;
  v5[19] = &off_112170;
  v4[20] = @"SecondClickThreshold";
  v4[21] = @"TrackpadThreeFingerDrag";
  v5[20] = &off_112170;
  v5[21] = &__kCFBooleanFalse;
  v4[22] = @"DoubleTapToDragEnabled";
  v4[23] = @"DragLockEnabled";
  v5[22] = &__kCFBooleanFalse;
  v5[23] = &__kCFBooleanFalse;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:24];

  return v2;
}

- (NSDictionary)debug
{
  v29.receiver = self;
  v29.super_class = TrackpadSettings;
  v3 = [(PointerSettings *)&v29 debug];
  v4 = [v3 mutableCopy];

  v5 = [NSNumber numberWithBool:[(TrackpadSettings *)self tapClick]];
  [v4 setObject:v5 forKeyedSubscript:@"TapClick"];

  v6 = [NSNumber numberWithUnsignedChar:[(TrackpadSettings *)self secondaryClick]];
  [v4 setObject:v6 forKeyedSubscript:@"SecondaryClick"];

  v7 = [NSNumber numberWithBool:[(TrackpadSettings *)self pointMomentum]];
  [v4 setObject:v7 forKeyedSubscript:@"PointMomentum"];

  v8 = [NSNumber numberWithBool:[(TrackpadSettings *)self gestureScrollingEnabled]];
  [v4 setObject:v8 forKeyedSubscript:@"GestureScrolling"];

  v9 = [NSNumber numberWithBool:[(TrackpadSettings *)self zoom]];
  [v4 setObject:v9 forKeyedSubscript:@"Zoom"];

  v10 = [NSNumber numberWithBool:[(TrackpadSettings *)self rotate]];
  [v4 setObject:v10 forKeyedSubscript:@"Rotate"];

  v11 = [NSNumber numberWithBool:[(TrackpadSettings *)self showDefinition]];
  [v4 setObject:v11 forKeyedSubscript:@"ShowDefinition"];

  v12 = [NSNumber numberWithUnsignedChar:[(TrackpadSettings *)self notificationCenterEdgeSwipe2F]];
  [v4 setObject:v12 forKeyedSubscript:@"NotificationCenterGesture"];

  v13 = [NSNumber numberWithBool:[(TrackpadSettings *)self notificationCenterActive]];
  [v4 setObject:v13 forKeyedSubscript:@"NotificationCenterOpen"];

  v14 = [NSNumber numberWithUnsignedChar:[(TrackpadSettings *)self accessibilityDrag]];
  [v4 setObject:v14 forKeyedSubscript:@"AccessibilityDrag"];

  v15 = [NSNumber numberWithUnsignedChar:[(TrackpadSettings *)self horizontalSwipe3F]];
  [v4 setObject:v15 forKeyedSubscript:@"HorizontalSwipe3F"];

  v16 = [NSNumber numberWithUnsignedChar:[(TrackpadSettings *)self verticalSwipe3F]];
  [v4 setObject:v16 forKeyedSubscript:@"VerticalSwipe3F"];

  v17 = [NSNumber numberWithUnsignedChar:[(TrackpadSettings *)self horizontalSwipe4F]];
  [v4 setObject:v17 forKeyedSubscript:@"HorizontalSwipe4F"];

  v18 = [NSNumber numberWithUnsignedChar:[(TrackpadSettings *)self verticalSwipe4F]];
  [v4 setObject:v18 forKeyedSubscript:@"VerticalSwipe4F"];

  v19 = [NSNumber numberWithBool:[(TrackpadSettings *)self dockScale4F]];
  [v4 setObject:v19 forKeyedSubscript:@"DockScale4F"];

  v20 = [NSNumber numberWithBool:[(TrackpadSettings *)self dockScale5F]];
  [v4 setObject:v20 forKeyedSubscript:@"DockScale5F"];

  v21 = [NSNumber numberWithInt:[(TrackpadSettings *)self clickStrength]];
  [v4 setObject:v21 forKeyedSubscript:@"ClickStrength"];

  v22 = [NSNumber numberWithBool:[(TrackpadSettings *)self quietClick]];
  [v4 setObject:v22 forKeyedSubscript:@"QuietClick"];

  v23 = [NSNumber numberWithBool:[(TrackpadSettings *)self forceSuppressed]];
  [v4 setObject:v23 forKeyedSubscript:@"ForceSuppressed"];

  v24 = [NSNumber numberWithBool:[(TrackpadSettings *)self screenZoom]];
  [v4 setObject:v24 forKeyedSubscript:@"ScreenZoom"];

  v25 = [NSNumber numberWithBool:[(TrackpadSettings *)self symmetricZoomRotate]];
  [v4 setObject:v25 forKeyedSubscript:@"SymmetricZoomRotate"];

  v26 = [NSNumber numberWithBool:[(TrackpadSettings *)self restingScroll]];
  [v4 setObject:v26 forKeyedSubscript:@"RestingScroll"];

  v27 = [v4 copy];

  return v27;
}

- (void)encodeToMap:(void *)a3
{
  HSUtil::Encoder::encodeBool(a3, HSUtil::CoderKey::Literal<(char)116,(char)97,(char)112,(char)67,(char)108,(char)105,(char)99,(char)107>::Key, [(TrackpadSettings *)self tapClick]);
  HSUtil::Encoder::encodeUInt(a3, HSUtil::CoderKey::Literal<(char)115,(char)101,(char)99,(char)111,(char)110,(char)100,(char)97,(char)114,(char)121,(char)67,(char)108,(char)105,(char)99,(char)107>::Key, [(TrackpadSettings *)self secondaryClick]);
  HSUtil::Encoder::encodeBool(a3, HSUtil::CoderKey::Literal<(char)112,(char)111,(char)105,(char)110,(char)116,(char)77,(char)111,(char)109,(char)101,(char)110,(char)116,(char)117,(char)109>::Key, [(TrackpadSettings *)self pointMomentum]);
  HSUtil::Encoder::encodeBool(a3, HSUtil::CoderKey::Literal<(char)103,(char)101,(char)115,(char)116,(char)117,(char)114,(char)101,(char)83,(char)99,(char)114,(char)111,(char)108,(char)108,(char)105,(char)110,(char)103,(char)69,(char)110,(char)97,(char)98,(char)108,(char)101,(char)100>::Key, [(TrackpadSettings *)self gestureScrollingEnabled]);
  HSUtil::Encoder::encodeBool(a3, HSUtil::CoderKey::Literal<(char)122,(char)111,(char)111,(char)109>::Key, [(TrackpadSettings *)self zoom]);
  HSUtil::Encoder::encodeBool(a3, HSUtil::CoderKey::Literal<(char)114,(char)111,(char)116,(char)97,(char)116,(char)101>::Key, [(TrackpadSettings *)self rotate]);
  HSUtil::Encoder::encodeBool(a3, HSUtil::CoderKey::Literal<(char)115,(char)104,(char)111,(char)119,(char)68,(char)101,(char)102,(char)105,(char)110,(char)105,(char)116,(char)105,(char)111,(char)110>::Key, [(TrackpadSettings *)self showDefinition]);
  HSUtil::Encoder::encodeUInt(a3, HSUtil::CoderKey::Literal<(char)110,(char)111,(char)116,(char)105,(char)102,(char)105,(char)99,(char)97,(char)116,(char)105,(char)111,(char)110,(char)67,(char)101,(char)110,(char)116,(char)101,(char)114,(char)69,(char)100,(char)103,(char)101,(char)83,(char)119,(char)105,(char)112,(char)101,(char)50,(char)70>::Key, [(TrackpadSettings *)self notificationCenterEdgeSwipe2F]);
  HSUtil::Encoder::encodeBool(a3, HSUtil::CoderKey::Literal<(char)110,(char)111,(char)116,(char)105,(char)102,(char)105,(char)99,(char)97,(char)116,(char)105,(char)111,(char)110,(char)67,(char)101,(char)110,(char)116,(char)101,(char)114,(char)65,(char)99,(char)116,(char)105,(char)118,(char)101>::Key, [(TrackpadSettings *)self notificationCenterActive]);
  HSUtil::Encoder::encodeUInt(a3, HSUtil::CoderKey::Literal<(char)97,(char)99,(char)99,(char)101,(char)115,(char)115,(char)105,(char)98,(char)105,(char)108,(char)105,(char)116,(char)121,(char)68,(char)114,(char)97,(char)103>::Key, [(TrackpadSettings *)self accessibilityDrag]);
  HSUtil::Encoder::encodeUInt(a3, HSUtil::CoderKey::Literal<(char)104,(char)111,(char)114,(char)105,(char)122,(char)111,(char)110,(char)116,(char)97,(char)108,(char)83,(char)119,(char)105,(char)112,(char)101,(char)51,(char)70>::Key, [(TrackpadSettings *)self horizontalSwipe3F]);
  HSUtil::Encoder::encodeUInt(a3, HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)116,(char)105,(char)99,(char)97,(char)108,(char)83,(char)119,(char)105,(char)112,(char)101,(char)51,(char)70>::Key, [(TrackpadSettings *)self verticalSwipe3F]);
  HSUtil::Encoder::encodeUInt(a3, HSUtil::CoderKey::Literal<(char)104,(char)111,(char)114,(char)105,(char)122,(char)111,(char)110,(char)116,(char)97,(char)108,(char)83,(char)119,(char)105,(char)112,(char)101,(char)52,(char)70>::Key, [(TrackpadSettings *)self horizontalSwipe4F]);
  HSUtil::Encoder::encodeUInt(a3, HSUtil::CoderKey::Literal<(char)118,(char)101,(char)114,(char)116,(char)105,(char)99,(char)97,(char)108,(char)83,(char)119,(char)105,(char)112,(char)101,(char)52,(char)70>::Key, [(TrackpadSettings *)self verticalSwipe4F]);
  HSUtil::Encoder::encodeBool(a3, HSUtil::CoderKey::Literal<(char)100,(char)111,(char)99,(char)107,(char)83,(char)99,(char)97,(char)108,(char)101,(char)52,(char)70>::Key, [(TrackpadSettings *)self dockScale4F]);
  HSUtil::Encoder::encodeBool(a3, HSUtil::CoderKey::Literal<(char)100,(char)111,(char)99,(char)107,(char)83,(char)99,(char)97,(char)108,(char)101,(char)53,(char)70>::Key, [(TrackpadSettings *)self dockScale5F]);
  HSUtil::Encoder::encodeUInt(a3, HSUtil::CoderKey::Literal<(char)99,(char)108,(char)105,(char)99,(char)107,(char)83,(char)116,(char)114,(char)101,(char)110,(char)103,(char)116,(char)104>::Key, [(TrackpadSettings *)self clickStrength]);
  HSUtil::Encoder::encodeBool(a3, HSUtil::CoderKey::Literal<(char)113,(char)117,(char)105,(char)101,(char)116,(char)67,(char)108,(char)105,(char)99,(char)107>::Key, [(TrackpadSettings *)self quietClick]);
  HSUtil::Encoder::encodeBool(a3, HSUtil::CoderKey::Literal<(char)102,(char)111,(char)114,(char)99,(char)101,(char)83,(char)117,(char)112,(char)112,(char)114,(char)101,(char)115,(char)115,(char)101,(char)100>::Key, [(TrackpadSettings *)self forceSuppressed]);
  HSUtil::Encoder::encodeBool(a3, HSUtil::CoderKey::Literal<(char)115,(char)99,(char)114,(char)101,(char)101,(char)110,(char)90,(char)111,(char)111,(char)109>::Key, [(TrackpadSettings *)self screenZoom]);
  v5 = HSUtil::CoderKey::Literal<(char)115,(char)121,(char)109,(char)109,(char)101,(char)116,(char)114,(char)105,(char)99,(char)90,(char)111,(char)111,(char)109,(char)82,(char)111,(char)116,(char)97,(char)116,(char)101>::Key;
  v6 = [(TrackpadSettings *)self symmetricZoomRotate];

  HSUtil::Encoder::encodeBool(a3, v5, v6);
}

- (BOOL)decodeFromMap:(void *)a3
{
  [(TrackpadSettings *)self setTapClick:HSUtil::Decoder::decodeBool(a3, HSUtil::CoderKey::Literal<(char)115, (char)101, (char)108, (char)102, (char)46, (char)116, (char)97, (char)112, (char)67, (char)108, (char)105, (char)99, (char)107>::Key)];
  if (*a3 >= 2u)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PreAlg/PointerSettings.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [TrackpadSettings decodeFromMap:];
    }
  }

  else
  {
    [(TrackpadSettings *)self setSecondaryClick:HSUtil::Decoder::decodeUInt(a3, HSUtil::CoderKey::Literal<(char)115, (char)101, (char)108, (char)102, (char)46, (char)115, (char)101, (char)99, (char)111, (char)110, (char)100, (char)97, (char)114, (char)121, (char)67, (char)108, (char)105, (char)99, (char)107>::Key)];
    if (*a3 >= 2u)
    {
      memset(__b, 170, sizeof(__b));
      basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PreAlg/PointerSettings.mm", __b);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [TrackpadSettings decodeFromMap:];
      }
    }

    else
    {
      [(TrackpadSettings *)self setPointMomentum:HSUtil::Decoder::decodeBool(a3, HSUtil::CoderKey::Literal<(char)115, (char)101, (char)108, (char)102, (char)46, (char)112, (char)111, (char)105, (char)110, (char)116, (char)77, (char)111, (char)109, (char)101, (char)110, (char)116, (char)117, (char)109>::Key)];
      if (*a3 >= 2u)
      {
        memset(__b, 170, sizeof(__b));
        basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PreAlg/PointerSettings.mm", __b);
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          [TrackpadSettings decodeFromMap:];
        }
      }

      else
      {
        [(TrackpadSettings *)self setGestureScrollingEnabled:HSUtil::Decoder::decodeBool(a3, HSUtil::CoderKey::Literal<(char)115, (char)101, (char)108, (char)102, (char)46, (char)103, (char)101, (char)115, (char)116, (char)117, (char)114, (char)101, (char)83, (char)99, (char)114, (char)111, (char)108, (char)108, (char)105, (char)110, (char)103, (char)69, (char)110, (char)97, (char)98, (char)108, (char)101, (char)100>::Key)];
        if (*a3 >= 2u)
        {
          memset(__b, 170, sizeof(__b));
          basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PreAlg/PointerSettings.mm", __b);
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            [TrackpadSettings decodeFromMap:];
          }
        }

        else
        {
          [(TrackpadSettings *)self setZoom:HSUtil::Decoder::decodeBool(a3, HSUtil::CoderKey::Literal<(char)115, (char)101, (char)108, (char)102, (char)46, (char)122, (char)111, (char)111, (char)109>::Key)];
          if (*a3 >= 2u)
          {
            memset(__b, 170, sizeof(__b));
            basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PreAlg/PointerSettings.mm", __b);
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              [TrackpadSettings decodeFromMap:];
            }
          }

          else
          {
            [(TrackpadSettings *)self setRotate:HSUtil::Decoder::decodeBool(a3, HSUtil::CoderKey::Literal<(char)115, (char)101, (char)108, (char)102, (char)46, (char)114, (char)111, (char)116, (char)97, (char)116, (char)101>::Key)];
            if (*a3 >= 2u)
            {
              memset(__b, 170, sizeof(__b));
              basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PreAlg/PointerSettings.mm", __b);
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                [TrackpadSettings decodeFromMap:];
              }
            }

            else
            {
              [(TrackpadSettings *)self setShowDefinition:HSUtil::Decoder::decodeBool(a3, HSUtil::CoderKey::Literal<(char)115, (char)101, (char)108, (char)102, (char)46, (char)115, (char)104, (char)111, (char)119, (char)68, (char)101, (char)102, (char)105, (char)110, (char)105, (char)116, (char)105, (char)111, (char)110>::Key)];
              if (*a3 >= 2u)
              {
                memset(__b, 170, sizeof(__b));
                basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PreAlg/PointerSettings.mm", __b);
                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  [TrackpadSettings decodeFromMap:];
                }
              }

              else
              {
                [(TrackpadSettings *)self setNotificationCenterEdgeSwipe2F:HSUtil::Decoder::decodeUInt(a3, HSUtil::CoderKey::Literal<(char)115, (char)101, (char)108, (char)102, (char)46, (char)110, (char)111, (char)116, (char)105, (char)102, (char)105, (char)99, (char)97, (char)116, (char)105, (char)111, (char)110, (char)67, (char)101, (char)110, (char)116, (char)101, (char)114, (char)69, (char)100, (char)103, (char)101, (char)83, (char)119, (char)105, (char)112, (char)101, (char)50, (char)70>::Key)];
                if (*a3 >= 2u)
                {
                  memset(__b, 170, sizeof(__b));
                  basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PreAlg/PointerSettings.mm", __b);
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    [TrackpadSettings decodeFromMap:];
                  }
                }

                else
                {
                  [(TrackpadSettings *)self setNotificationCenterActive:HSUtil::Decoder::decodeBool(a3, HSUtil::CoderKey::Literal<(char)115, (char)101, (char)108, (char)102, (char)46, (char)110, (char)111, (char)116, (char)105, (char)102, (char)105, (char)99, (char)97, (char)116, (char)105, (char)111, (char)110, (char)67, (char)101, (char)110, (char)116, (char)101, (char)114, (char)65, (char)99, (char)116, (char)105, (char)118, (char)101>::Key)];
                  if (*a3 >= 2u)
                  {
                    memset(__b, 170, sizeof(__b));
                    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PreAlg/PointerSettings.mm", __b);
                    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                    {
                      [TrackpadSettings decodeFromMap:];
                    }
                  }

                  else
                  {
                    [(TrackpadSettings *)self setAccessibilityDrag:HSUtil::Decoder::decodeUInt(a3, HSUtil::CoderKey::Literal<(char)115, (char)101, (char)108, (char)102, (char)46, (char)97, (char)99, (char)99, (char)101, (char)115, (char)115, (char)105, (char)98, (char)105, (char)108, (char)105, (char)116, (char)121, (char)68, (char)114, (char)97, (char)103>::Key)];
                    if (*a3 >= 2u)
                    {
                      memset(__b, 170, sizeof(__b));
                      basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PreAlg/PointerSettings.mm", __b);
                      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                      {
                        [TrackpadSettings decodeFromMap:];
                      }
                    }

                    else
                    {
                      [(TrackpadSettings *)self setHorizontalSwipe3F:HSUtil::Decoder::decodeUInt(a3, HSUtil::CoderKey::Literal<(char)115, (char)101, (char)108, (char)102, (char)46, (char)104, (char)111, (char)114, (char)105, (char)122, (char)111, (char)110, (char)116, (char)97, (char)108, (char)83, (char)119, (char)105, (char)112, (char)101, (char)51, (char)70>::Key)];
                      if (*a3 >= 2u)
                      {
                        memset(__b, 170, sizeof(__b));
                        basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PreAlg/PointerSettings.mm", __b);
                        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                        {
                          [TrackpadSettings decodeFromMap:];
                        }
                      }

                      else
                      {
                        [(TrackpadSettings *)self setVerticalSwipe3F:HSUtil::Decoder::decodeUInt(a3, HSUtil::CoderKey::Literal<(char)115, (char)101, (char)108, (char)102, (char)46, (char)118, (char)101, (char)114, (char)116, (char)105, (char)99, (char)97, (char)108, (char)83, (char)119, (char)105, (char)112, (char)101, (char)51, (char)70>::Key)];
                        if (*a3 >= 2u)
                        {
                          memset(__b, 170, sizeof(__b));
                          basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PreAlg/PointerSettings.mm", __b);
                          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                          {
                            [TrackpadSettings decodeFromMap:];
                          }
                        }

                        else
                        {
                          [(TrackpadSettings *)self setHorizontalSwipe4F:HSUtil::Decoder::decodeUInt(a3, HSUtil::CoderKey::Literal<(char)115, (char)101, (char)108, (char)102, (char)46, (char)104, (char)111, (char)114, (char)105, (char)122, (char)111, (char)110, (char)116, (char)97, (char)108, (char)83, (char)119, (char)105, (char)112, (char)101, (char)52, (char)70>::Key)];
                          if (*a3 >= 2u)
                          {
                            memset(__b, 170, sizeof(__b));
                            basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PreAlg/PointerSettings.mm", __b);
                            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                            {
                              [TrackpadSettings decodeFromMap:];
                            }
                          }

                          else
                          {
                            [(TrackpadSettings *)self setVerticalSwipe4F:HSUtil::Decoder::decodeUInt(a3, HSUtil::CoderKey::Literal<(char)115, (char)101, (char)108, (char)102, (char)46, (char)118, (char)101, (char)114, (char)116, (char)105, (char)99, (char)97, (char)108, (char)83, (char)119, (char)105, (char)112, (char)101, (char)52, (char)70>::Key)];
                            if (*a3 >= 2u)
                            {
                              memset(__b, 170, sizeof(__b));
                              basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PreAlg/PointerSettings.mm", __b);
                              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                              {
                                [TrackpadSettings decodeFromMap:];
                              }
                            }

                            else
                            {
                              [(TrackpadSettings *)self setDockScale4F:HSUtil::Decoder::decodeBool(a3, HSUtil::CoderKey::Literal<(char)115, (char)101, (char)108, (char)102, (char)46, (char)100, (char)111, (char)99, (char)107, (char)83, (char)99, (char)97, (char)108, (char)101, (char)52, (char)70>::Key)];
                              if (*a3 >= 2u)
                              {
                                memset(__b, 170, sizeof(__b));
                                basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PreAlg/PointerSettings.mm", __b);
                                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                {
                                  [TrackpadSettings decodeFromMap:];
                                }
                              }

                              else
                              {
                                [(TrackpadSettings *)self setDockScale5F:HSUtil::Decoder::decodeBool(a3, HSUtil::CoderKey::Literal<(char)115, (char)101, (char)108, (char)102, (char)46, (char)100, (char)111, (char)99, (char)107, (char)83, (char)99, (char)97, (char)108, (char)101, (char)53, (char)70>::Key)];
                                if (*a3 >= 2u)
                                {
                                  memset(__b, 170, sizeof(__b));
                                  basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PreAlg/PointerSettings.mm", __b);
                                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                  {
                                    [TrackpadSettings decodeFromMap:];
                                  }
                                }

                                else
                                {
                                  [(TrackpadSettings *)self setClickStrength:HSUtil::Decoder::decodeUInt(a3, HSUtil::CoderKey::Literal<(char)115, (char)101, (char)108, (char)102, (char)46, (char)99, (char)108, (char)105, (char)99, (char)107, (char)83, (char)116, (char)114, (char)101, (char)110, (char)103, (char)116, (char)104>::Key)];
                                  if (*a3 >= 2u)
                                  {
                                    memset(__b, 170, sizeof(__b));
                                    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PreAlg/PointerSettings.mm", __b);
                                    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                    {
                                      [TrackpadSettings decodeFromMap:];
                                    }
                                  }

                                  else
                                  {
                                    [(TrackpadSettings *)self setQuietClick:HSUtil::Decoder::decodeBool(a3, HSUtil::CoderKey::Literal<(char)115, (char)101, (char)108, (char)102, (char)46, (char)113, (char)117, (char)105, (char)101, (char)116, (char)67, (char)108, (char)105, (char)99, (char)107>::Key)];
                                    if (*a3 >= 2u)
                                    {
                                      memset(__b, 170, sizeof(__b));
                                      basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PreAlg/PointerSettings.mm", __b);
                                      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                      {
                                        [TrackpadSettings decodeFromMap:];
                                      }
                                    }

                                    else
                                    {
                                      [(TrackpadSettings *)self setForceSuppressed:HSUtil::Decoder::decodeBool(a3, HSUtil::CoderKey::Literal<(char)115, (char)101, (char)108, (char)102, (char)46, (char)102, (char)111, (char)114, (char)99, (char)101, (char)83, (char)117, (char)112, (char)112, (char)114, (char)101, (char)115, (char)115, (char)101, (char)100>::Key)];
                                      if (*a3 >= 2u)
                                      {
                                        memset(__b, 170, sizeof(__b));
                                        basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PreAlg/PointerSettings.mm", __b);
                                        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                        {
                                          [TrackpadSettings decodeFromMap:];
                                        }
                                      }

                                      else
                                      {
                                        [(TrackpadSettings *)self setScreenZoom:HSUtil::Decoder::decodeBool(a3, HSUtil::CoderKey::Literal<(char)115, (char)101, (char)108, (char)102, (char)46, (char)115, (char)99, (char)114, (char)101, (char)101, (char)110, (char)90, (char)111, (char)111, (char)109>::Key)];
                                        if (*a3 >= 2u)
                                        {
                                          memset(__b, 170, sizeof(__b));
                                          basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PreAlg/PointerSettings.mm", __b);
                                          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                          {
                                            [TrackpadSettings decodeFromMap:];
                                          }
                                        }

                                        else
                                        {
                                          [(TrackpadSettings *)self setSymmetricZoomRotate:HSUtil::Decoder::decodeBool(a3, HSUtil::CoderKey::Literal<(char)115, (char)101, (char)108, (char)102, (char)46, (char)115, (char)121, (char)109, (char)109, (char)101, (char)116, (char)114, (char)105, (char)99, (char)90, (char)111, (char)111, (char)109, (char)82, (char)111, (char)116, (char)97, (char)116, (char)101>::Key)];
                                          if (*a3 < 2u)
                                          {
                                            return 1;
                                          }

                                          memset(__b, 170, sizeof(__b));
                                          basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PreAlg/PointerSettings.mm", __b);
                                          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                                          {
                                            [TrackpadSettings decodeFromMap:];
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

- (BOOL)hsEncode:(void *)a3
{
  if (!*a3)
  {
    *&v7 = *(a3 + 17);
    DWORD2(v7) = 2;
    std::vector<HSUtil::Encoder::ContainerRecord>::push_back[abi:ne200100](a3 + 56, &v7);
    HSUtil::Encoder::_writeTokenValue16(a3, 0xEAu, 0);
  }

  v6.receiver = self;
  v6.super_class = TrackpadSettings;
  [(PointerSettings *)&v6 encodeToMap:a3];
  [(TrackpadSettings *)self encodeToMap:a3];
  if (!*a3)
  {
    HSUtil::Encoder::_encodeContainerStop(a3);
  }

  return 1;
}

- (BOOL)hsDecode:(void *)a3
{
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v13 = v5;
  v14 = v5;
  v11 = v5;
  v12 = v5;
  v10 = v5;
  HSUtil::Decoder::decodeMap(a3, &v10);
  if (*a3)
  {
    memset(__b, 170, sizeof(__b));
    basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PreAlg/PointerSettings.mm", __b);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      [TrackpadSettings hsDecode:];
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = TrackpadSettings;
    if ([(PointerSettings *)&v9 decodeFromMap:&v10])
    {
      if ([(TrackpadSettings *)self decodeFromMap:&v10])
      {
        v6 = 1;
        goto LABEL_12;
      }

      memset(__b, 170, sizeof(__b));
      basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PreAlg/PointerSettings.mm", __b);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [TrackpadSettings hsDecode:];
      }
    }

    else
    {
      memset(__b, 170, sizeof(__b));
      basename_r("/Library/Caches/com.apple.xbs/Sources/Multitouch/MT2TPHIDService/HSTrackpad/PreAlg/PointerSettings.mm", __b);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [TrackpadSettings hsDecode:];
      }
    }
  }

  v6 = 0;
LABEL_12:
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v7 = v11;
  *&v11 = 0;
  if (v7)
  {
    std::__function::__value_func<objc_object * ()(HSUtil::Decoder &,HSUtil::CoderKey const&)>::~__value_func[abi:ne200100](v7);
    operator delete();
  }

  return v6;
}

- (void)decodeFromMap:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)decodeFromMap:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)decodeFromMap:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)decodeFromMap:.cold.4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)decodeFromMap:.cold.5()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)decodeFromMap:.cold.6()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)decodeFromMap:.cold.7()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)decodeFromMap:.cold.8()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)decodeFromMap:.cold.9()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)decodeFromMap:.cold.10()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)decodeFromMap:.cold.11()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)decodeFromMap:.cold.12()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)decodeFromMap:.cold.13()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)decodeFromMap:.cold.14()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)decodeFromMap:.cold.15()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)decodeFromMap:.cold.16()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)decodeFromMap:.cold.17()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)decodeFromMap:.cold.18()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)decodeFromMap:.cold.19()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)decodeFromMap:.cold.20()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)decodeFromMap:.cold.21()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)hsDecode:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)hsDecode:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

- (void)hsDecode:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_0, &_os_log_default, v0, "Assertion failed (%s @ %s:%ju): %s", v1, v2, v3, v4, 2u);
}

@end