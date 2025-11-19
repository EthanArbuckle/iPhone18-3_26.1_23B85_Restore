@interface CLLocationButtonMechanism
- (BOOL)bkHidEventHitTestInfoValid:(id)a3 fromStart:(BOOL)a4;
- (BOOL)builtOnOrAfterSDKVersion:(id)a3;
- (BOOL)useSeparatedTransformGrading;
- (BOOL)validateTransformForHitTestInfo:(id)a3;
- (CLLocationButtonMechanism)initWithConnection:(id)a3;
- (void)deriveAnalyticsFromTag:(id)a3;
- (void)getRemoteContentForStyle:(id)a3 layerContext:(unint64_t)a4 tag:(id)a5 sandboxExtension:(id)a6 completionHandler:(id)a7;
- (void)onPrimaryTouchDownEvent:(id)a3;
@end

@implementation CLLocationButtonMechanism

- (CLLocationButtonMechanism)initWithConnection:(id)a3
{
  v4 = a3;
  v5 = [[UISSlotMachine alloc] initWithSlotDrawer:self options:3];
  slotMachine = self->_slotMachine;
  self->_slotMachine = v5;

  if (v4)
  {
    [v4 auditToken];
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

  v12 = +[RBSProcessIdentifier identifierWithPid:](RBSProcessIdentifier, "identifierWithPid:", [v4 processIdentifier]);
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
    v16 = [v13 bundle];
    processBundle = self->_processBundle;
    self->_processBundle = v16;

    if (self->_processBundle)
    {
      v15 = self;
      goto LABEL_10;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100002AC8(v13);
    }

    v24[0] = @"ClientKey";
    v19 = [(RBSProcessBundle *)self->_processBundle identifier];
    v24[1] = @"ReasonType";
    v25[0] = v19;
    v25[1] = @"InvalidBundleID";
    v20 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
    AnalyticsSendEvent();
  }

  v15 = 0;
LABEL_10:

  return v15;
}

- (void)getRemoteContentForStyle:(id)a3 layerContext:(unint64_t)a4 tag:(id)a5 sandboxExtension:(id)a6 completionHandler:(id)a7
{
  v14 = a7;
  v11 = a5;
  v12 = a3;
  [(CLLocationButtonMechanism *)self setImagedTag:v11];
  [(CLLocationButtonMechanism *)self setSlotStyle:v12];
  v13 = [(UISSlotMachine *)self->_slotMachine remoteContentForLayerContextWithId:a4 style:v12 tag:v11];

  [(CLLocationButtonMechanism *)self deriveAnalyticsFromTag:v11];
  if (objc_opt_respondsToSelector())
  {
    -[CLLocationButtonMechanism setSlotId:](self, "setSlotId:", [v13 performSelector:"slotID"]);
  }

  v14[2](v14, v13);
}

- (void)onPrimaryTouchDownEvent:(id)a3
{
  v4 = a3;
  v5 = [(CLLocationButtonMechanism *)self imagedTag];
  v6 = [v5 renderedSuccessfully];

  if ((v6 & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100002B48();
    }

    v45[0] = @"ClientKey";
    v12 = [(RBSProcessBundle *)self->_processBundle identifier];
    v45[1] = @"ReasonType";
    v46[0] = v12;
    v46[1] = @"RenderingFailed";
    v13 = v46;
    v14 = v45;
    goto LABEL_21;
  }

  v7 = +[BKSHIDEventDeliveryManager sharedInstance];
  v8 = [v7 authenticateMessage:v4];

  if (v8 != 2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100002B8C();
    }

    v43[0] = @"ClientKey";
    v12 = [(RBSProcessBundle *)self->_processBundle identifier];
    v43[1] = @"ReasonType";
    v44[0] = v12;
    v44[1] = @"AuthenicationStatusInvalid";
    v13 = v44;
    v14 = v43;
    goto LABEL_21;
  }

  v9 = *&self->_auditToken.val[4];
  v29 = *self->_auditToken.val;
  v30 = v9;
  v10 = BSVersionedPIDForAuditToken();
  if ([v4 versionedPID] != v10)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100002C08(v4);
    }

    v41[0] = @"ClientKey";
    v12 = [(RBSProcessBundle *)self->_processBundle identifier];
    v41[1] = @"ReasonType";
    v42[0] = v12;
    v42[1] = @"MismatchedPid";
    v13 = v42;
    v14 = v41;
    goto LABEL_21;
  }

  if ([v4 context] != 0x9FB774E4B8F165C9)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100002C9C(v4);
    }

    v39[0] = @"ClientKey";
    v12 = [(RBSProcessBundle *)self->_processBundle identifier];
    v39[1] = @"ReasonType";
    v40[0] = v12;
    v40[1] = @"AuthMessageContextInvalid";
    v13 = v40;
    v14 = v39;
    goto LABEL_21;
  }

  v11 = mach_continuous_time();
  if ([v4 timestamp] > v11)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_1000030C0(v4);
    }

    v37[0] = @"ClientKey";
    v12 = [(RBSProcessBundle *)self->_processBundle identifier];
    v37[1] = @"ReasonType";
    v38[0] = v12;
    v38[1] = @"AuthMessageFuturistic";
    v13 = v38;
    v14 = v37;
LABEL_21:
    v15 = [NSDictionary dictionaryWithObjects:v13 forKeys:v14 count:2];
    AnalyticsSendEvent();

    goto LABEL_22;
  }

  if (CLCommonConvertTicksToSeconds(v11 - [v4 timestamp]) > 3.0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100003024(v4);
    }

    v35[0] = @"ClientKey";
    v12 = [(RBSProcessBundle *)self->_processBundle identifier];
    v35[1] = @"ReasonType";
    v36[0] = v12;
    v36[1] = @"AuthMessageExpired";
    v13 = v36;
    v14 = v35;
    goto LABEL_21;
  }

  v16 = [v4 targetSlotID];
  v17 = [(CLLocationButtonMechanism *)self slotId];
  v18 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
  if (v16 != v17)
  {
    if (v18)
    {
      sub_100002D18(self, v4);
    }

    v33[0] = @"ClientKey";
    v12 = [(RBSProcessBundle *)self->_processBundle identifier];
    v33[1] = @"ReasonType";
    v34[0] = v12;
    v34[1] = @"SlotIdInvalid";
    v13 = v34;
    v14 = v33;
    goto LABEL_21;
  }

  if (v18)
  {
    sub_100002DC0();
  }

  v19 = [v4 hitTestInformationFromStartEvent];
  v20 = [(CLLocationButtonMechanism *)self bkHidEventHitTestInfoValid:v19 fromStart:1];

  v21 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
  if (v20)
  {
    if (v21)
    {
      sub_100002E48();
    }

    v22 = [v4 hitTestInformationFromEndEvent];
    v23 = [(CLLocationButtonMechanism *)self bkHidEventHitTestInfoValid:v22 fromStart:0];

    v24 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
    if (v23)
    {
      if (v24)
      {
        sub_100002ED0(self);
      }

      v31[0] = @"ClientKey";
      v25 = [(RBSProcessBundle *)self->_processBundle identifier];
      v31[1] = @"ReasonType";
      v32[0] = v25;
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

- (BOOL)bkHidEventHitTestInfoValid:(id)a3 fromStart:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (!v6)
  {
LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v7 = [(CLLocationButtonMechanism *)self validateTransformForHitTestInfo:v6];
  v8 = [v6 detectedOcclusion];
  v9 = [(CLLocationButtonMechanism *)self imagedTag];
  [v6 cumulativeOpacity];
  v10 = [v9 contrastValidForBgColorAndFgTextWithCumulativeOpacity:?];

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109888;
    v25 = v7;
    v26 = 1024;
    v27 = [v6 hasInsecureFilter];
    v28 = 1024;
    v29 = v8;
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
    if (v4)
    {
      v12 = @"StartHitTestInfo";
    }

    v22[0] = @"ClientKey";
    processBundle = self->_processBundle;
    v14 = v12;
    v15 = [(RBSProcessBundle *)processBundle identifier];
    v23[0] = v15;
    v23[1] = v14;
    v22[1] = @"ReasonType";
    v22[2] = @"TransformInValid";
    v16 = [NSNumber numberWithInt:v7 ^ 1];
    v23[2] = v16;
    v22[3] = @"DetectedOcclusion";
    v17 = [NSNumber numberWithBool:v8];
    v23[3] = v17;
    v22[4] = @"ContrastInValid";
    v18 = [NSNumber numberWithInt:v10 ^ 1];
    v23[4] = v18;
    v22[5] = @"InsecureFilter";
    v19 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 hasInsecureFilter]);
    v23[5] = v19;
    v20 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:6];

    AnalyticsSendEvent();
    goto LABEL_10;
  }

  if ((v10 & ~([v6 hasInsecureFilter] | v8) & 1) == 0)
  {
    goto LABEL_7;
  }

  v11 = 1;
LABEL_11:

  return v11;
}

- (BOOL)validateTransformForHitTestInfo:(id)a3
{
  v4 = a3;
  v5 = v4;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  if (v4)
  {
    [v4 cumulativeContentsTransform];
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

- (void)deriveAnalyticsFromTag:(id)a3
{
  v4 = a3;
  v5 = [(RBSProcessBundle *)self->_processBundle identifier];
  objc_initWeak(&location, v5);

  v6 = v4;
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

- (BOOL)builtOnOrAfterSDKVersion:(id)a3
{
  v4 = a3;
  v5 = [LSApplicationRecord alloc];
  v6 = [(RBSProcessBundle *)self->_processBundle identifier];
  v13 = 0;
  v7 = [v5 initWithBundleIdentifier:v6 allowPlaceholder:0 error:&v13];
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
    v10 = [v7 compatibilityObject];
    v11 = [v10 sdkVersion];

    if (v11)
    {
      v9 = [v11 compare:v4 options:64] < 2;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

@end