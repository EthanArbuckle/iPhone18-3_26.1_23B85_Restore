@interface CLLocationButtonMechanism
- (BOOL)bkHidEventHitTestInfoValid:(id)valid fromStart:(BOOL)start;
- (BOOL)builtOnOrAfterSDKVersion:(id)version;
- (BOOL)useSeparatedTransformGrading;
- (BOOL)validateTransformForHitTestInfo:(id)info;
- (CLLocationButtonMechanism)initWithConnection:(id)connection;
- (void)deriveAnalyticsFromTag:(id)tag;
- (void)getRemoteContentForStyle:(id)style layerContext:(unint64_t)context tag:(id)tag sandboxExtension:(id)extension completionHandler:(id)handler;
- (void)onPrimaryTouchDownEvent:(id)event;
@end

@implementation CLLocationButtonMechanism

- (CLLocationButtonMechanism)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [[UISSlotMachine alloc] initWithSlotDrawer:self options:3];
  slotMachine = self->_slotMachine;
  self->_slotMachine = v5;

  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v7 = v23;
  *self->_auditToken.val = v22;
  *&self->_auditToken.val[4] = v7;
  v8 = objc_alloc_init(UISTransform3DGrader);
  layerGrader = self->_layerGrader;
  self->_layerGrader = v8;

  v10 = objc_alloc_init(UISTransform3DGrader);
  contentsGrader = self->_contentsGrader;
  self->_contentsGrader = v10;

  v12 = +[RBSProcessIdentifier identifierWithPid:](RBSProcessIdentifier, "identifierWithPid:", [connectionCopy processIdentifier]);
  v21 = 0;
  v13 = [RBSProcessHandle handleForIdentifier:v12 error:&v21];
  v14 = v21;

  if (v14)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100002A38(v14);
    }
  }

  else
  {
    bundle = [v13 bundle];
    processBundle = self->_processBundle;
    self->_processBundle = bundle;

    if (self->_processBundle)
    {
      selfCopy = self;
      goto LABEL_10;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100002AC8(v13);
    }

    v24[0] = @"ClientKey";
    identifier = [(RBSProcessBundle *)self->_processBundle identifier];
    v24[1] = @"ReasonType";
    v25[0] = identifier;
    v25[1] = @"InvalidBundleID";
    v20 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
    AnalyticsSendEvent();
  }

  selfCopy = 0;
LABEL_10:

  return selfCopy;
}

- (void)getRemoteContentForStyle:(id)style layerContext:(unint64_t)context tag:(id)tag sandboxExtension:(id)extension completionHandler:(id)handler
{
  handlerCopy = handler;
  tagCopy = tag;
  styleCopy = style;
  [(CLLocationButtonMechanism *)self setImagedTag:tagCopy];
  [(CLLocationButtonMechanism *)self setSlotStyle:styleCopy];
  v13 = [(UISSlotMachine *)self->_slotMachine remoteContentForLayerContextWithId:context style:styleCopy tag:tagCopy];

  [(CLLocationButtonMechanism *)self deriveAnalyticsFromTag:tagCopy];
  if (objc_opt_respondsToSelector())
  {
    -[CLLocationButtonMechanism setSlotId:](self, "setSlotId:", [v13 performSelector:"slotID"]);
  }

  handlerCopy[2](handlerCopy, v13);
}

- (void)onPrimaryTouchDownEvent:(id)event
{
  eventCopy = event;
  imagedTag = [(CLLocationButtonMechanism *)self imagedTag];
  renderedSuccessfully = [imagedTag renderedSuccessfully];

  if ((renderedSuccessfully & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100002B48();
    }

    v45[0] = @"ClientKey";
    identifier = [(RBSProcessBundle *)self->_processBundle identifier];
    v45[1] = @"ReasonType";
    v46[0] = identifier;
    v46[1] = @"RenderingFailed";
    v13 = v46;
    v14 = v45;
    goto LABEL_21;
  }

  v7 = +[BKSHIDEventDeliveryManager sharedInstance];
  v8 = [v7 authenticateMessage:eventCopy];

  if (v8 != 2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100002B8C();
    }

    v43[0] = @"ClientKey";
    identifier = [(RBSProcessBundle *)self->_processBundle identifier];
    v43[1] = @"ReasonType";
    v44[0] = identifier;
    v44[1] = @"AuthenicationStatusInvalid";
    v13 = v44;
    v14 = v43;
    goto LABEL_21;
  }

  v9 = *&self->_auditToken.val[4];
  v29 = *self->_auditToken.val;
  v30 = v9;
  v10 = BSVersionedPIDForAuditToken();
  if ([eventCopy versionedPID] != v10)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100002C08(eventCopy);
    }

    v41[0] = @"ClientKey";
    identifier = [(RBSProcessBundle *)self->_processBundle identifier];
    v41[1] = @"ReasonType";
    v42[0] = identifier;
    v42[1] = @"MismatchedPid";
    v13 = v42;
    v14 = v41;
    goto LABEL_21;
  }

  if ([eventCopy context] != 0x9FB774E4B8F165C9)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100002C9C(eventCopy);
    }

    v39[0] = @"ClientKey";
    identifier = [(RBSProcessBundle *)self->_processBundle identifier];
    v39[1] = @"ReasonType";
    v40[0] = identifier;
    v40[1] = @"AuthMessageContextInvalid";
    v13 = v40;
    v14 = v39;
    goto LABEL_21;
  }

  v11 = mach_continuous_time();
  if ([eventCopy timestamp] > v11)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_1000030C0(eventCopy);
    }

    v37[0] = @"ClientKey";
    identifier = [(RBSProcessBundle *)self->_processBundle identifier];
    v37[1] = @"ReasonType";
    v38[0] = identifier;
    v38[1] = @"AuthMessageFuturistic";
    v13 = v38;
    v14 = v37;
LABEL_21:
    v15 = [NSDictionary dictionaryWithObjects:v13 forKeys:v14 count:2];
    AnalyticsSendEvent();

    goto LABEL_22;
  }

  if (CLCommonConvertTicksToSeconds(v11 - [eventCopy timestamp]) > 3.0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100003024(eventCopy);
    }

    v35[0] = @"ClientKey";
    identifier = [(RBSProcessBundle *)self->_processBundle identifier];
    v35[1] = @"ReasonType";
    v36[0] = identifier;
    v36[1] = @"AuthMessageExpired";
    v13 = v36;
    v14 = v35;
    goto LABEL_21;
  }

  targetSlotID = [eventCopy targetSlotID];
  slotId = [(CLLocationButtonMechanism *)self slotId];
  v18 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
  if (targetSlotID != slotId)
  {
    if (v18)
    {
      sub_100002D18(self, eventCopy);
    }

    v33[0] = @"ClientKey";
    identifier = [(RBSProcessBundle *)self->_processBundle identifier];
    v33[1] = @"ReasonType";
    v34[0] = identifier;
    v34[1] = @"SlotIdInvalid";
    v13 = v34;
    v14 = v33;
    goto LABEL_21;
  }

  if (v18)
  {
    sub_100002DC0();
  }

  hitTestInformationFromStartEvent = [eventCopy hitTestInformationFromStartEvent];
  v20 = [(CLLocationButtonMechanism *)self bkHidEventHitTestInfoValid:hitTestInformationFromStartEvent fromStart:1];

  v21 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
  if (v20)
  {
    if (v21)
    {
      sub_100002E48();
    }

    hitTestInformationFromEndEvent = [eventCopy hitTestInformationFromEndEvent];
    v23 = [(CLLocationButtonMechanism *)self bkHidEventHitTestInfoValid:hitTestInformationFromEndEvent fromStart:0];

    v24 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
    if (v23)
    {
      if (v24)
      {
        sub_100002ED0(self);
      }

      v31[0] = @"ClientKey";
      identifier2 = [(RBSProcessBundle *)self->_processBundle identifier];
      v31[1] = @"ReasonType";
      v32[0] = identifier2;
      v32[1] = @"Success";
      v26 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:2];
      AnalyticsSendEvent();

      if ((_AXFeatureSupportsNonSightedUsage() & 1) != 0 || _AXSCommandAndControlEnabled() || _AXSFullKeyboardAccessEnabled() || _AXSAutomationEnabled())
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
        {
          sub_100002F64();
        }

        v27 = 1;
      }

      else
      {
        v27 = 0;
      }

      v28 = *&self->_auditToken.val[4];
      v29 = *self->_auditToken.val;
      v30 = v28;
      [CLLocationManager grantTemporaryAuthorizationUsingLocationButtonToClientWithAuditToken:&v29 voiceInteractionEnabled:v27];
    }

    else if (v24)
    {
      sub_100002E8C();
    }
  }

  else if (v21)
  {
    sub_100002E04();
  }

LABEL_22:
}

- (BOOL)bkHidEventHitTestInfoValid:(id)valid fromStart:(BOOL)start
{
  startCopy = start;
  validCopy = valid;
  if (!validCopy)
  {
LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v7 = [(CLLocationButtonMechanism *)self validateTransformForHitTestInfo:validCopy];
  detectedOcclusion = [validCopy detectedOcclusion];
  imagedTag = [(CLLocationButtonMechanism *)self imagedTag];
  [validCopy cumulativeOpacity];
  v10 = [imagedTag contrastValidForBgColorAndFgTextWithCumulativeOpacity:?];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109888;
    v25 = v7;
    v26 = 1024;
    hasInsecureFilter = [validCopy hasInsecureFilter];
    v28 = 1024;
    v29 = detectedOcclusion;
    v30 = 1024;
    v31 = v10;
    _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "#locationButton bkHidEventHitTestInfo - caTransformIsValid: %d hasInseccureFilter: %d detectedOcclusion: %d contrastValid: %d", buf, 0x1Au);
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  else if (!v7)
  {
LABEL_7:
    v12 = @"EndHitTestInfo";
    if (startCopy)
    {
      v12 = @"StartHitTestInfo";
    }

    v22[0] = @"ClientKey";
    processBundle = self->_processBundle;
    v14 = v12;
    identifier = [(RBSProcessBundle *)processBundle identifier];
    v23[0] = identifier;
    v23[1] = v14;
    v22[1] = @"ReasonType";
    v22[2] = @"TransformInValid";
    v16 = [NSNumber numberWithInt:v7 ^ 1];
    v23[2] = v16;
    v22[3] = @"DetectedOcclusion";
    v17 = [NSNumber numberWithBool:detectedOcclusion];
    v23[3] = v17;
    v22[4] = @"ContrastInValid";
    v18 = [NSNumber numberWithInt:v10 ^ 1];
    v23[4] = v18;
    v22[5] = @"InsecureFilter";
    v19 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [validCopy hasInsecureFilter]);
    v23[5] = v19;
    v20 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:6];

    AnalyticsSendEvent();
    goto LABEL_10;
  }

  if ((v10 & ~([validCopy hasInsecureFilter] | detectedOcclusion) & 1) == 0)
  {
    goto LABEL_7;
  }

  v11 = 1;
LABEL_11:

  return v11;
}

- (BOOL)validateTransformForHitTestInfo:(id)info
{
  infoCopy = info;
  v5 = infoCopy;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  if (infoCopy)
  {
    [infoCopy cumulativeContentsTransform];
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100003148(&v28);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  if (v5)
  {
    [v5 cumulativeLayerTransform];
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100003218(&v20);
  }

  v36 = xmmword_100004240;
  v19 = 0x3FF0000000000000;
  [(UISTransform3DGrader *)self->_layerGrader allowRotations:&UISAllDeviceRotations count:UISAllDeviceRotationCount];
  [(UISTransform3DGrader *)self->_layerGrader allowScales:&v19 count:1 lowerMultiplier:1.0 lowerConstant:0.0 upperMultiplier:1.1 upperConstant:0.0];
  [(UISTransform3DGrader *)self->_contentsGrader allowScales:&v36 count:2 lowerMultiplier:1.0 lowerConstant:0.0 upperMultiplier:1.0 upperConstant:0.0];
  layerGrader = self->_layerGrader;
  v15 = v24;
  v16 = v25;
  v17 = v26;
  v18 = v27;
  v11 = v20;
  v12 = v21;
  v13 = v22;
  v14 = v23;
  v7 = [(UISTransform3DGrader *)layerGrader gradeTransform3D:&v11];
  contentsGrader = self->_contentsGrader;
  v15 = v32;
  v16 = v33;
  v17 = v34;
  v18 = v35;
  v11 = v28;
  v12 = v29;
  v13 = v30;
  v14 = v31;
  v9 = [(UISTransform3DGrader *)contentsGrader gradeTransform3D:&v11];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_1000032E8();
  }

  return (v7 | v9) == 0;
}

- (void)deriveAnalyticsFromTag:(id)tag
{
  tagCopy = tag;
  identifier = [(RBSProcessBundle *)self->_processBundle identifier];
  objc_initWeak(&location, identifier);

  v6 = tagCopy;
  objc_copyWeak(&v7, &location);
  AnalyticsSendEventLazy();
  objc_destroyWeak(&v7);

  objc_destroyWeak(&location);
}

- (BOOL)useSeparatedTransformGrading
{
  v2 = [(CLLocationButtonMechanism *)self builtOnOrAfterSDKVersion:@"16.0"];
  v3 = MGIsDeviceOneOfType();
  if (MGGetBoolAnswer())
  {
    return 1;
  }

  else
  {
    return v3 & (v2 ^ 1);
  }
}

- (BOOL)builtOnOrAfterSDKVersion:(id)version
{
  versionCopy = version;
  v5 = [LSApplicationRecord alloc];
  identifier = [(RBSProcessBundle *)self->_processBundle identifier];
  v13 = 0;
  v7 = [v5 initWithBundleIdentifier:identifier allowPlaceholder:0 error:&v13];
  v8 = v13;

  if (v8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10000336C(v8);
    }

    v9 = 0;
  }

  else
  {
    compatibilityObject = [v7 compatibilityObject];
    sdkVersion = [compatibilityObject sdkVersion];

    if (sdkVersion)
    {
      v9 = [sdkVersion compare:versionCopy options:64] < 2;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

@end