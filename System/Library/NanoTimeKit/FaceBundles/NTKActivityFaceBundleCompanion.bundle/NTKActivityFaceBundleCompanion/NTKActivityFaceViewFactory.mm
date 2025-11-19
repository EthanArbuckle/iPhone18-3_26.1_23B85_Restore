@interface NTKActivityFaceViewFactory
+ (BOOL)userActiveEnergyIsCalories;
+ (id)sharedRingsViewRenderer;
+ (id)userActiveEnergyUnit;
- (BOOL)shouldPerformFromZeroWristRaise;
- (CGRect)faceView:(id)a3 keylineFrameForComplicationSlot:(id)a4 selected:(BOOL)a5;
- (FIUIActivityDataModel)currentDataModel;
- (NTKActivityFaceViewFactoryDelegate)delegate;
- (NTKFaceView)faceView;
- (double)_edgeGapForState:(int64_t)a3;
- (double)_keylinePaddingForState:(int64_t)a3;
- (double)_lisaGapForState:(int64_t)a3;
- (double)faceView:(id)a3 keylineCornerRadiusForComplicationSlot:(id)a4;
- (id)_canonicalDataModel;
- (id)_colorComplicationSlots;
- (id)_complicationSlots;
- (id)_dateComplicationFontForStyle:(unint64_t)a3;
- (id)_slotForUtilitySlot:(int64_t)a3;
- (id)_utilityComplicationSlots;
- (id)curvedMaskForSlot:(id)a3;
- (id)debugStringForDataModel:(id)a3;
- (id)faceView:(id)a3 newLegacyViewForComplication:(id)a4 family:(int64_t)a5 slot:(id)a6;
- (id)initForAnalog:(BOOL)a3 richComplications:(BOOL)a4 forDevice:(id)a5;
- (id)keylineViewForComplicationSlot:(id)a3;
- (id)newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5;
- (int64_t)_utilitySlotForSlot:(id)a3;
- (int64_t)keylineStyleForComplicationSlot:(id)a3;
- (int64_t)legacyLayoutOverrideforComplicationType:(unint64_t)a3 slot:(id)a4;
- (unint64_t)_textLayoutStyleForSlot:(int64_t)a3;
- (void)_configureComplicationFactory:(id)a3;
- (void)activityDataProviderCurrentDataModelUpdated:(id)a3;
- (void)configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)dealloc;
- (void)faceView:(id)a3 configureComplicationView:(id)a4 forSlot:(id)a5;
- (void)launchActivityApp;
- (void)loadLayoutRules;
- (void)loadLayoutRulesForFaceView:(id)a3;
- (void)performWristRaiseAnimation;
- (void)prepareWristRaiseAnimation;
- (void)setDataMode:(int64_t)a3;
- (void)setShowsCanonicalContent:(BOOL)a3;
- (void)setShowsLockedContent:(BOOL)a3;
@end

@implementation NTKActivityFaceViewFactory

+ (id)sharedRingsViewRenderer
{
  v2 = a1;
  objc_sync_enter(v2);
  WeakRetained = objc_loadWeakRetained(&qword_28E98);
  if (!WeakRetained)
  {
    v4 = +[CLKUIMetalResourceManager sharedCommandQueue];
    WeakRetained = [[NTKRingsViewRenderer alloc] initWithMaximumRingCount:3 commandQueue:v4];
    objc_storeWeak(&qword_28E98, WeakRetained);
  }

  objc_sync_exit(v2);

  return WeakRetained;
}

- (id)initForAnalog:(BOOL)a3 richComplications:(BOOL)a4 forDevice:(id)a5
{
  v9 = a5;
  v28.receiver = self;
  v28.super_class = NTKActivityFaceViewFactory;
  v10 = [(NTKActivityFaceViewFactory *)&v28 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_device, a5);
    v11->_analog = a3;
    v11->_richComplications = a4;
    v12 = [[NTKUtilityComplicationFactory alloc] initForDevice:v9];
    complicationFactory = v11->_complicationFactory;
    v11->_complicationFactory = v12;

    [(NTKActivityFaceViewFactory *)v11 _configureComplicationFactory:v11->_complicationFactory];
    v14 = [(NTKUtilityComplicationFactory *)v11->_complicationFactory setDelegate:v11];
    v15 = v11->_complicationFactory;
    sub_B6EC(v14, v9);
    [(NTKUtilityComplicationFactory *)v15 setMaxNormalLongWidth:v16];
    v17 = +[FIUIActivityDataProvider sharedModel];
    [v17 addSubscriber:v11];

    NTKDebugActivityWristRaiseTimeout();
    if (v18 <= 0.0)
    {
      v19 = _WristRaiseDefaultTimeout;
    }

    else
    {
      NTKDebugActivityWristRaiseTimeout();
    }

    *&v11->_wristRaiseTimoutDuration = v19;
    v20 = +[NSNotificationCenter defaultCenter];
    [v20 addObserver:v11 selector:"_handleActiveEnergyUnitChange" name:kFIUIFitnessUnitPreferencesDidChangeNotification object:0];

    v21 = dispatch_source_create(&_dispatch_source_type_memorypressure, 0, 6uLL, &_dispatch_main_q);
    memoryNotificationEventSource = v11->_memoryNotificationEventSource;
    v11->_memoryNotificationEventSource = v21;

    objc_initWeak(&location, v11);
    v23 = v11->_memoryNotificationEventSource;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_90EC;
    v25[3] = &unk_20AE8;
    objc_copyWeak(&v26, &location);
    dispatch_source_set_event_handler(v23, v25);
    dispatch_resume(v11->_memoryNotificationEventSource);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  return v11;
}

- (void)setDataMode:(int64_t)a3
{
  v5 = [(NTKActivityFaceViewFactory *)self dataMode];
  if (self->_dataMode != a3)
  {
    v6 = v5;
    self->_dataMode = a3;
    if (a3 == 4 || a3 == 1)
    {
      if (self->_hasBeenLiveOrOnDeck)
      {
        [(NTKActivityFaceViewFactory *)self _updateRingsForCurrentDataModelAnimated:0];
      }

      else
      {
        self->_hasBeenLiveOrOnDeck = 1;
        [(NTKActivityFaceViewFactory *)self _loadCurrentDataModel];
      }

      if (self->_wantsUpdateNowDataModelNextLive)
      {
        self->_wantsUpdateNowDataModelNextLive = 0;
        [(NTKActivityFaceViewFactory *)self _updateRingsForCurrentDataModelAnimated:0];
      }

      v7 = __LastGoodDataModel;
      if (v7)
      {
        v8 = v7;
        v9 = _IsDataModelWithinToday(__LastGoodDataModel);

        if ((v9 & 1) == 0)
        {
          v10 = __LastGoodDataModel;
          __LastGoodDataModel = 0;
        }
      }
    }

    if (v6 == 1)
    {
      nowDataModel = self->_nowDataModel;
      if (nowDataModel)
      {

        objc_storeStrong(&__LastGoodDataModel, nowDataModel);
      }
    }
  }
}

- (void)activityDataProviderCurrentDataModelUpdated:(id)a3
{
  v4 = a3;
  v5 = [v4 activeEnergyGoal];
  if (!v5 || ([v4 appleExerciseTimeGoal], v6 == 0.0))
  {
  }

  else
  {
    v7 = [v4 appleStandHoursGoal];

    if (v7)
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_93C4;
      v8[3] = &unk_20B10;
      v8[4] = self;
      v9 = v4;
      dispatch_async(&_dispatch_main_q, v8);
    }
  }
}

- (FIUIActivityDataModel)currentDataModel
{
  if (self->_showsCanonicalContent)
  {
    v2 = [(NTKActivityFaceViewFactory *)self _canonicalDataModel];
  }

  else if (self->_showsLockedContent)
  {
    v3 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Returning locked data model", v5, 2u);
    }

    v2 = +[FIUIActivityDataModel lockedModel];
  }

  else
  {
    v2 = self->_nowDataModel;
  }

  return v2;
}

- (void)setShowsCanonicalContent:(BOOL)a3
{
  if (self->_showsCanonicalContent != a3)
  {
    self->_showsCanonicalContent = a3;
    [(NTKActivityFaceViewFactory *)self _updateRingsForCurrentDataModelAnimated:0];
  }
}

- (void)setShowsLockedContent:(BOOL)a3
{
  v3 = a3;
  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"No";
    if (v3)
    {
      v6 = @"Yes";
    }

    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Is showsLockedContent:%@", &v8, 0xCu);
  }

  if (self->_showsLockedContent != v3)
  {
    self->_showsLockedContent = v3;
    v7 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "update rings for current data model with animated NO", &v8, 2u);
    }

    [(NTKActivityFaceViewFactory *)self _updateRingsForCurrentDataModelAnimated:0];
  }
}

- (id)_canonicalDataModel
{
  v2 = __LastGoodDataModel;
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = +[FIUIActivityDataModel idealizedModel];
  }

  v5 = v4;

  return v5;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = +[FIUIActivityDataProvider sharedModel];
  [v4 removeSubscriber:self];

  v5.receiver = self;
  v5.super_class = NTKActivityFaceViewFactory;
  [(NTKActivityFaceViewFactory *)&v5 dealloc];
}

- (void)prepareWristRaiseAnimation
{
  if (fabs(self->_lastWristRaiseTime) < 0.00000011920929)
  {
    [(NTKActivityFaceViewFactory *)self _resetWristRaiseAnimationTimeout];
  }

  if (![(NTKActivityFaceViewFactory *)self showsLockedContent])
  {
    if ([(NTKActivityFaceViewFactory *)self shouldPerformFromZeroWristRaise]|| !__LastGoodDataModel)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v6 = [(NTKActivityFaceViewFactory *)self currentDataModel];
      [WeakRetained applyDataModelWithUnfilledRings:v6];
    }

    else
    {
      v3 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = __LastGoodDataModel;
        *buf = 138412546;
        v9 = self;
        v10 = 2112;
        v11 = v4;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Activity Face Factory %@ showing last good data model on wrist raise %@", buf, 0x16u);
      }

      v5 = objc_loadWeakRetained(&self->_delegate);
      [v5 applyDataModel:__LastGoodDataModel animated:0];
    }
  }
}

- (void)performWristRaiseAnimation
{
  if ([(NTKActivityFaceViewFactory *)self showsLockedContent])
  {
    v3 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "[NTKActivityFaceViewFactory performWristRaiseAnimation]";
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%s showsLockedContent", &v4, 0xCu);
    }
  }

  else
  {
    if ([(NTKActivityFaceViewFactory *)self dataMode]== &dword_0 + 1)
    {
      [(NTKActivityFaceViewFactory *)self _updateRingsForCurrentDataModelAnimated:1];
    }

    [(NTKActivityFaceViewFactory *)self _resetWristRaiseAnimationTimeout];
  }
}

- (BOOL)shouldPerformFromZeroWristRaise
{
  v3 = CFAbsoluteTimeGetCurrent() - self->_lastWristRaiseTime;
  if (v3 < 0.0)
  {
    [(NTKActivityFaceViewFactory *)self _resetWristRaiseAnimationTimeout];
  }

  return v3 >= self->_wristRaiseTimoutDuration;
}

- (id)_dateComplicationFontForStyle:(unint64_t)a3
{
  v4 = [(CLKDevice *)self->_device sizeClass];
  v5 = 11.0;
  if (!v4)
  {
    v5 = 10.0;
  }

  v6 = 17.0;
  if (!v4)
  {
    v6 = 15.0;
  }

  if (a3 == 4)
  {
    v5 = v6;
  }

  v7 = [CLKFont systemFontOfSize:v5];

  return v7;
}

- (unint64_t)_textLayoutStyleForSlot:(int64_t)a3
{
  v5 = [(NTKActivityFaceViewFactory *)self delegate];
  v6 = [(NTKActivityFaceViewFactory *)self _slotForUtilitySlot:a3];
  v7 = [v5 textLayoutStyleForSlot:v6];

  return v7;
}

- (id)curvedMaskForSlot:(id)a3
{
  complicationFactory = self->_complicationFactory;
  v4 = [(NTKActivityFaceViewFactory *)self _utilitySlotForSlot:a3];

  return [(NTKUtilityComplicationFactory *)complicationFactory curvedMaskForSlot:v4];
}

- (void)loadLayoutRulesForFaceView:(id)a3
{
  v4 = a3;
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v13 = [(NTKActivityFaceViewFactory *)self _utilityComplicationSlots];
  v14 = [v13 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v36;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v36 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v35 + 1) + 8 * i);
        v19 = [v4 complicationLayoutforSlot:v18];
        [(NTKUtilityComplicationFactory *)self->_complicationFactory configureComplicationLayout:v19 forSlot:[(NTKActivityFaceViewFactory *)self _utilitySlotForSlot:v18] withBounds:v6, v8, v10, v12];
      }

      v15 = [v13 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v15);
  }

  v20 = self->_device;
  v21 = v20;
  if (!self->_richComplications)
  {
    v29 = v20;
    v30 = v4;
    NTKEnumerateComplicationStates();

    v28 = v29;
    goto LABEL_12;
  }

  if (!self->_analog)
  {
    sub_B6EC(v20, v20);
    NTKGraphicCircularScaledComplicationDiameter();
    v23 = v22;
    NTKWhistlerSubdialComplicationDiameter();
    NTKWhistlerSubdialComplicationContentDiameter();
    v25 = v24;
    NTKCircularSmallComplicationDiameter();
    v27 = v26;
    memset(&v34, 0, sizeof(v34));
    CGAffineTransformMakeScale(&v34, v23 / v25, v23 / v25);
    memset(&v33, 0, sizeof(v33));
    CGAffineTransformMakeScale(&v33, v23 / v27, v23 / v27);
    v31 = v4;
    v32 = v21;
    NTKEnumerateComplicationStates();

    v28 = v31;
LABEL_12:
  }
}

- (double)_keylinePaddingForState:(int64_t)a3
{
  result = 0.0;
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    NTKKeylineWidth();
    v6 = v5;
    device = self->_device;
    NTKColorFaceViewDeselectedKeylineInnerPadding();
    return v6 + v8;
  }

  return result;
}

- (double)_edgeGapForState:(int64_t)a3
{
  if ((a3 - 2) >= 2)
  {
    if (a3 == 1)
    {
      _NTKColorFaceViewEdgeGapEditing(self->_device, a2);
    }

    else
    {
      _NTKColorFaceViewEdgeGapNormal(self->_device, a2);
    }
  }

  else
  {
    _NTKColorFaceViewEdgeGapDeselected(self->_device, a2);
  }

  return result;
}

- (double)_lisaGapForState:(int64_t)a3
{
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    return 0.0;
  }

  _NTKColorFaceViewLisaKeylineGap(self->_device, a2);
  return result;
}

- (CGRect)faceView:(id)a3 keylineFrameForComplicationSlot:(id)a4 selected:(BOOL)a5
{
  if (a5)
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  v7 = a4;
  v8 = a3;
  v9 = [v8 complicationLayoutforSlot:v7];
  v10 = [v9 layoutRuleForComplicationState:v6 layoutOverride:4];
  [v10 referenceFrame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [v10 keylinePadding];
  v22 = v12 - v21;
  v24 = v14 - v23;
  v25 = v16 - (-v20 - v21);
  v26 = v18 - (-v19 - v23);
  v27 = [v8 _complicationContainerViewForSlot:v7];
  [v8 convertRect:v27 fromCoordinateSpace:{v22, v24, v25, v26}];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  v36 = +[CLKDevice currentDevice];
  [v36 screenBounds];
  v38 = v37;

  [v8 faceViewFrameForEditMode:1 option:0 slot:v7];
  v40 = v39;
  v42 = v41;
  v44 = v43;

  CGAffineTransformMakeScale(&v53, v44 / v38, v44 / v38);
  v54.origin.x = v29;
  v54.origin.y = v31;
  v54.size.width = v33;
  v54.size.height = v35;
  v55 = CGRectApplyAffineTransform(v54, &v53);
  v56 = CGRectOffset(v55, v40, v42);
  x = v56.origin.x;
  y = v56.origin.y;
  width = v56.size.width;
  height = v56.size.height;

  v49 = x;
  v50 = y;
  v51 = width;
  v52 = height;
  result.size.height = v52;
  result.size.width = v51;
  result.origin.y = v50;
  result.origin.x = v49;
  return result;
}

- (id)faceView:(id)a3 newLegacyViewForComplication:(id)a4 family:(int64_t)a5 slot:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if ([v12 isEqual:NTKComplicationSlotBottomCenter])
  {
    v13 = [(NTKUtilityComplicationFactory *)self->_complicationFactory newViewForComplication:v11 family:a5 forSlot:[(NTKActivityFaceViewFactory *)self _utilitySlotForSlot:v12]];
    [v10 _configureComplicationView:v13 forSlot:v12];
  }

  else
  {
    v13 = +[NTKCircularComplicationView viewForComplicationType:](NTKCircularComplicationView, "viewForComplicationType:", [v11 complicationType]);
    v14 = +[UIColor whiteColor];
    [v13 setForegroundColor:v14];

    v15 = NTKActivityBackgroundPlatterColor();
    [v13 setPlatterColor:v15];
  }

  return v13;
}

- (void)faceView:(id)a3 configureComplicationView:(id)a4 forSlot:(id)a5
{
  v21 = a3;
  v8 = a4;
  v9 = a5;
  v10 = NTKComplicationSlotBottomCenter;
  if (([v9 isEqual:NTKComplicationSlotBottomCenter] & 1) != 0 || objc_msgSend(v9, "isEqual:", NTKComplicationSlotDate))
  {
    v11 = v8;
    if ([v9 isEqual:v10] && (-[NTKActivityFaceViewFactory delegate](self, "delegate"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "textLayoutStyleForSlot:", v9), v12, !v13))
    {
      if (self->_analog)
      {
        v14 = 1;
      }

      else
      {
        v20 = [(NTKActivityFaceViewFactory *)self device];
        v14 = [v20 deviceCategory] == &dword_0 + 1;
      }
    }

    else
    {
      v14 = 0;
    }

    [v11 setShouldUseBackgroundPlatter:v14];
    [v11 setAlwaysEnforcePlatterInset:{objc_msgSend(v9, "isEqualToString:", v10)}];
    -[NTKUtilityComplicationFactory foregroundAlphaForEditing:](self->_complicationFactory, "foregroundAlphaForEditing:", [v21 editing]);
    [v11 setForegroundAlpha:?];
    -[NTKUtilityComplicationFactory foregroundImageAlphaForEditing:](self->_complicationFactory, "foregroundImageAlphaForEditing:", [v21 editing]);
    [v11 setForegroundImageAlpha:?];
    [v11 setPlacement:{+[NTKUtilityComplicationFactory placementForSlot:](NTKUtilityComplicationFactory, "placementForSlot:", -[NTKActivityFaceViewFactory _utilitySlotForSlot:](self, "_utilitySlotForSlot:", v9))}];
    [v11 setUseRoundedFontDesign:1];
    if (self->_richComplications)
    {
      [v11 setFontWeight:UIFontWeightMedium];
    }

    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v8;
    v16 = +[UIColor whiteColor];
    [v15 setForegroundColor:v16];

    v17 = NTKActivityBackgroundPlatterColor();
    [v15 setPlatterColor:v17];

    [v15 setUseRoundedFontDesign:1];
LABEL_10:
  }

  if ([v9 isEqualToString:v10])
  {
    v18 = [(NTKActivityFaceViewFactory *)self device];
    v19 = [v18 sizeClass];

    if (v19 == &dword_0 + 3)
    {
      [v8 setFontSize:14.5];
    }
  }
}

- (int64_t)legacyLayoutOverrideforComplicationType:(unint64_t)a3 slot:(id)a4
{
  complicationFactory = self->_complicationFactory;
  v6 = [(NTKActivityFaceViewFactory *)self _utilitySlotForSlot:a4];

  return [(NTKUtilityComplicationFactory *)complicationFactory layoutOverrideForComplicationType:a3 inSlot:v6];
}

- (id)keylineViewForComplicationSlot:(id)a3
{
  complicationFactory = self->_complicationFactory;
  v4 = [(NTKActivityFaceViewFactory *)self _utilitySlotForSlot:a3];

  return [(NTKUtilityComplicationFactory *)complicationFactory keylineViewForSlot:v4];
}

- (double)faceView:(id)a3 keylineCornerRadiusForComplicationSlot:(id)a4
{
  v5 = a4;
  if ([v5 isEqual:NTKComplicationSlotDate])
  {
    NTKKeylineCornerRadiusSmall();
  }

  else
  {
    [(NTKUtilityComplicationFactory *)self->_complicationFactory keylineCornerRadiusForSlot:[(NTKActivityFaceViewFactory *)self _utilitySlotForSlot:v5]];
  }

  v7 = v6;

  return v7;
}

- (void)configureComplicationView:(id)a3 forSlot:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_faceView);
  [(NTKActivityFaceViewFactory *)self faceView:WeakRetained configureComplicationView:v7 forSlot:v6];
}

- (void)loadLayoutRules
{
  WeakRetained = objc_loadWeakRetained(&self->_faceView);
  [(NTKActivityFaceViewFactory *)self loadLayoutRulesForFaceView:WeakRetained];
}

- (id)newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5
{
  v8 = a5;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_faceView);
  v11 = [(NTKActivityFaceViewFactory *)self faceView:WeakRetained newLegacyViewForComplication:v9 family:a4 slot:v8];

  return v11;
}

- (void)launchActivityApp
{
  v3 = [NSURL URLWithString:@"ActivityMonitorApp://"];
  v2 = NTKDefaultAppLaunchLocation();
  NTKLaunchApp();
}

- (void)_configureComplicationFactory:(id)a3
{
  v4 = a3;
  [v4 setDateKeylineMaxWidth:{dbl_188C0[-[CLKDevice sizeClass](self->_device, "sizeClass") == 0]}];
  v5 = [(CLKDevice *)self->_device sizeClass];
  v6 = 30.0;
  if (!v5)
  {
    v6 = 26.0;
  }

  [v4 setDateHorizontalCenterOffset:v6];
  [v4 setForegroundAlpha:1.0];
  [v4 setForegroundImageAlpha:1.0];
  [v4 setBottomCenterLayout:3];
  if (!self->_analog)
  {
    v7 = [CLKDeviceMetrics metricsWithDevice:self->_device identitySizeClass:2];
    v11[0] = &off_21700;
    v11[1] = &off_21718;
    v12[0] = &off_21EB8;
    v12[1] = &off_21EB8;
    v11[2] = &off_21730;
    v12[2] = &off_21EC8;
    v8 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];
    [v7 scaledValue:v8 withOverrides:7.0];
    v10 = v9;

    [v4 setScreenEdgeInsets:{0.0, 0.0, v10, 0.0}];
  }
}

- (int64_t)_utilitySlotForSlot:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:NTKComplicationSlotBottomCenter])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:NTKComplicationSlotDate])
  {
    v4 = 12;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_slotForUtilitySlot:(int64_t)a3
{
  if (a3 == 10)
  {
    v4 = &NTKComplicationSlotBottomCenter;
LABEL_5:
    v5 = *v4;

    return v5;
  }

  if (a3 == 12)
  {
    v4 = &NTKComplicationSlotDate;
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

- (int64_t)keylineStyleForComplicationSlot:(id)a3
{
  v4 = a3;
  v5 = -[CLKDevice deviceCategory](self->_device, "deviceCategory") != &dword_0 + 1 && (([v4 isEqualToString:NTKComplicationSlotTopLeft] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", NTKComplicationSlotTopRight) & 1) != 0);

  return v5;
}

- (id)_utilityComplicationSlots
{
  if (qword_28EA8 != -1)
  {
    sub_1316C();
  }

  v3 = qword_28EA0;

  return v3;
}

- (id)_colorComplicationSlots
{
  if (qword_28EB8 != -1)
  {
    sub_13180();
  }

  v3 = qword_28EB0;

  return v3;
}

- (id)_complicationSlots
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_B3AC;
  block[3] = &unk_20BF0;
  block[4] = self;
  if (qword_28EC8 != -1)
  {
    dispatch_once(&qword_28EC8, block);
  }

  return qword_28EC0;
}

+ (id)userActiveEnergyUnit
{
  v2 = +[FIUIActivityDataModel formattingManager];
  v3 = [v2 unitManager];
  v4 = [v3 userActiveEnergyBurnedUnit];

  return v4;
}

+ (BOOL)userActiveEnergyIsCalories
{
  v2 = [a1 userActiveEnergyUnit];
  v3 = +[HKUnit kilocalorieUnit];
  v4 = v2 == v3;

  return v4;
}

- (id)debugStringForDataModel:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (self->_nowDataModel == v4)
    {
      v9 = @"live";
    }

    else
    {
      v6 = __LastGoodDataModel;
      if (v6 && (v7 = __LastGoodDataModel, v6, v7 == v5))
      {
        v9 = @"last good";
      }

      else
      {
        v8 = +[FIUIActivityDataModel idealizedModel];

        if (v8 == v5)
        {
          v9 = @"idealized";
        }

        else
        {
          v9 = @"none found?";
        }
      }
    }
  }

  else
  {
    v9 = @"nil";
  }

  return v9;
}

- (NTKActivityFaceViewFactoryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NTKFaceView)faceView
{
  WeakRetained = objc_loadWeakRetained(&self->_faceView);

  return WeakRetained;
}

@end