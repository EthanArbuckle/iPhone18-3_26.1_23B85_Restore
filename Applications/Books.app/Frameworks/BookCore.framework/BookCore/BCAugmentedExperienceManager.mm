@interface BCAugmentedExperienceManager
+ (BOOL)autoExpandAtEnd;
+ (BOOL)enabled;
+ (BOOL)endOfBookExperienceFeatureEnabled;
+ (float)confidenceThreshold;
+ (id)newAugmentedExperienceManager;
- (BCAugmentedExperienceHosting)presentationViewController;
- (BCAugmentedExperienceManager)initWithStateChangeCoalescingDelay:(double)a3;
- (BOOL)_cancelShowExperience:(id)a3;
- (id)_detailsForExperience:(id)a3;
- (id)_eventToString:(int64_t)a3;
- (id)_stateToString:(int64_t)a3;
- (void)_cancelDelayForExperience:(id)a3;
- (void)_cancelPreloadExperience:(id)a3;
- (void)_currentBookIsFinished;
- (void)_delayCompletedForExperience:(id)a3;
- (void)_expandExperience:(id)a3;
- (void)_handleStateChange:(id)a3;
- (void)_preloadExperience:(id)a3;
- (void)_processStateEvent:(int64_t)a3 forExperience:(id)a4;
- (void)_showExperience:(id)a3;
- (void)_startDelayForExperience:(id)a3;
- (void)_userClosedExperience:(id)a3;
- (void)addExperience:(id)a3;
- (void)emitter:(id)a3 bookMilestoneReached:(int64_t)a4;
- (void)emitter:(id)a3 bookPositionChanged:(id)a4;
- (void)emitter:(id)a3 bookSectionChanged:(id)a4;
- (void)presenterWantsToCloseAsset:(id)a3 completion:(id)a4;
- (void)presenterWantsToDismiss:(id)a3;
- (void)presentingViewControllerDidChangeLayout:(id)a3;
- (void)removeExperienceOfType:(int64_t)a3;
@end

@implementation BCAugmentedExperienceManager

+ (BOOL)endOfBookExperienceFeatureEnabled
{
  v3 = +[NSUserDefaults standardUserDefaults];
  if ([v3 BOOLForKey:@"BKEndOfBookExperienceDisabled"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [a1 enabled];
  }

  return v4;
}

+ (id)newAugmentedExperienceManager
{
  if (!+[BCAugmentedExperienceManager endOfBookExperienceFeatureEnabled])
  {
    return 0;
  }

  return objc_alloc_init(BCAugmentedExperienceManager);
}

+ (BOOL)enabled
{
  objc_opt_class();
  v2 = +[BCRCDataContainer defaultContainer];
  v3 = [v2 configs];
  v4 = [v3 valueForKeyPath:@"endOfBookExperience.enabled"];
  v5 = BUDynamicCast();

  if (v5)
  {
    v6 = [v5 BOOLValue];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

+ (BOOL)autoExpandAtEnd
{
  objc_opt_class();
  v2 = +[BCRCDataContainer defaultContainer];
  v3 = [v2 configs];
  v4 = [v3 valueForKeyPath:@"endOfBookExperience.autoExpandAtEnd"];
  v5 = BUDynamicCast();

  if (v5)
  {
    v6 = [v5 BOOLValue];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

+ (float)confidenceThreshold
{
  objc_opt_class();
  v2 = +[BCRCDataContainer defaultContainer];
  v3 = [v2 configs];
  v4 = [v3 valueForKeyPath:@"endOfBookExperience.confidenceThreshold"];
  v5 = BUDynamicCast();

  if (v5)
  {
    [v5 floatValue];
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (BCAugmentedExperienceManager)initWithStateChangeCoalescingDelay:(double)a3
{
  v17.receiver = self;
  v17.super_class = BCAugmentedExperienceManager;
  v4 = [(BCAugmentedExperienceManager *)&v17 init];
  if (v4)
  {
    v5 = +[NSMutableArray array];
    augmentedExperiences = v4->_augmentedExperiences;
    v4->_augmentedExperiences = v5;

    if (a3 != 0.0)
    {
      objc_initWeak(&location, v4);
      v7 = [BUCoalescingCallBlock alloc];
      objc_copyWeak(&v15, &location);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [NSString stringWithFormat:@"%@ in %@", @"stateChangeCoalescingCallBlock", v9, _NSConcreteStackBlock, 3221225472, sub_13DC0, &unk_2C8140];
      v11 = [v7 initWithNotifyBlock:&v14 blockDescription:v10];
      stateChangeCoalescingCallBlock = v4->_stateChangeCoalescingCallBlock;
      v4->_stateChangeCoalescingCallBlock = v11;

      [(BUCoalescingCallBlock *)v4->_stateChangeCoalescingCallBlock setCoalescingDelay:a3];
      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }
  }

  return v4;
}

- (void)_currentBookIsFinished
{
  v3 = [(BCAugmentedExperienceManager *)self presentationViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v6 = [(BCAugmentedExperienceManager *)self presentationViewController];
    v5 = [(BCAugmentedExperienceManager *)self storeID];
    [v6 setFinishedForAssetID:v5];
  }
}

- (void)_handleStateChange:(id)a3
{
  v4 = a3;
  v5 = [(BCAugmentedExperienceManager *)self stateChangeCoalescingCallBlock];

  if (v5)
  {
    [(BCAugmentedExperienceManager *)self setStateChangeBlock:v4];

    v7 = [(BCAugmentedExperienceManager *)self stateChangeCoalescingCallBlock];
    [v7 signalWithCompletion:&stru_2C8160];
  }

  else
  {
    v7 = objc_retainBlock(v4);

    v6 = v7;
    if (!v7)
    {
      goto LABEL_6;
    }

    v7[2](v7);
  }

  v6 = v7;
LABEL_6:
}

- (void)emitter:(id)a3 bookPositionChanged:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1E49B4(v7, v8);
  }

  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_14188;
  v10[3] = &unk_2C8188;
  objc_copyWeak(&v12, &location);
  v9 = v7;
  v11 = v9;
  [(BCAugmentedExperienceManager *)self _handleStateChange:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)emitter:(id)a3 bookMilestoneReached:(int64_t)a4
{
  v6 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1E4A98(a4, v6);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [(BCAugmentedExperienceManager *)self augmentedExperiences];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 experience];
        v14 = [v13 kind];

        if (!v14)
        {
          if (a4 <= 6)
          {
            if (a4 != 2)
            {
              if (a4 != 3)
              {
                continue;
              }

              if ([v12 isPresented])
              {
LABEL_20:
                [(BCAugmentedExperienceManager *)self _expandExperience:v12];
                continue;
              }

              [v12 setAutoExpand:1];
            }

            [v12 setTriggeredLocation:1];
            [(BCAugmentedExperienceManager *)self _processStateEvent:1 forExperience:v12];
            v15 = self;
            v16 = 2;
            goto LABEL_23;
          }

          if ((a4 - 7) < 2 || a4 == 10)
          {
            v15 = self;
            v16 = 7;
LABEL_23:
            [(BCAugmentedExperienceManager *)v15 _processStateEvent:v16 forExperience:v12];
            continue;
          }

          if (a4 == 9 && [v12 isPresented] && objc_msgSend(v12, "isOnExperiencePage"))
          {
            goto LABEL_20;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }
}

- (void)emitter:(id)a3 bookSectionChanged:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1E4B3C(v7, v8);
  }

  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_146D4;
  v10[3] = &unk_2C81B0;
  objc_copyWeak(&v13, &location);
  v9 = v7;
  v11 = v9;
  v12 = self;
  [(BCAugmentedExperienceManager *)self _handleStateChange:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)presentingViewControllerDidChangeLayout:(id)a3
{
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(BCAugmentedExperienceManager *)self augmentedExperiences];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * v9) experience];
        v11 = [v10 presenter];
        [v11 bringExperienceViewToFront:v4];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)removeExperienceOfType:(int64_t)a3
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(BCAugmentedExperienceManager *)self augmentedExperiences];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 experience];
        v12 = [v11 kind];

        if (v12 == a3)
        {
          v13 = [v10 experience];
          v14 = [v13 presenter];
          [v14 endPresentation:0];

          v15 = [(BCAugmentedExperienceManager *)self augmentedExperiences];
          [v15 removeObject:v10];

          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)addExperience:(id)a3
{
  v14 = a3;
  v4 = [v14 location];
  if (!v4 || (v5 = v4, [v14 location], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "confidence"), v8 = v7, +[BCAugmentedExperienceManager confidenceThreshold](BCAugmentedExperienceManager, "confidenceThreshold"), v10 = v9, v6, v5, v8 >= v10))
  {
    v11 = objc_alloc_init(BKAugmentedExperienceData);
    [(BKAugmentedExperienceData *)v11 setExperience:v14];
    [(BKAugmentedExperienceData *)v11 setTriggeredLocation:0];
    v12 = [(BCAugmentedExperienceManager *)self augmentedExperiences];
    [v12 addObject:v11];

    v13 = [v14 presenter];
    [v13 setPresentingDelegate:self];
  }
}

- (void)_processStateEvent:(int64_t)a3 forExperience:(id)a4
{
  v6 = a4;
  v7 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(BCAugmentedExperienceManager *)self _eventToString:a3];
    v23 = 138412290;
    v24 = v8;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "processStateEvent %@", &v23, 0xCu);
  }

  v9 = [v6 state];
  v10 = [v6 state];
  if (v10 <= 3)
  {
    if (v10 > 1)
    {
      if (v10 != (&dword_0 + 2))
      {
        if (a3)
        {
          goto LABEL_53;
        }

        goto LABEL_45;
      }

      if (a3 == 7)
      {
        if (![(BCAugmentedExperienceManager *)self _cancelShowExperience:v6])
        {
          goto LABEL_53;
        }

        v15 = v6;
        v16 = 1;
        goto LABEL_52;
      }

      if (a3 != 6 || ![(BCAugmentedExperienceManager *)self _cancelShowExperience:v6])
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (!v10)
      {
        if (a3 == 1)
        {
          v13 = [v6 experience];
          v14 = [(BCAugmentedExperienceManager *)self _isExperienceViable:v13];

          if (v14)
          {
            [v6 setState:4];
            [(BCAugmentedExperienceManager *)self _preloadExperience:v6];
          }
        }

        goto LABEL_53;
      }

      if (v10 != (&dword_0 + 1) || a3 == 7)
      {
        goto LABEL_53;
      }

      if (a3 != 6)
      {
        goto LABEL_40;
      }
    }

    v15 = v6;
    v16 = 3;
LABEL_52:
    [v15 setState:v16];
    goto LABEL_53;
  }

  if (v10 <= 5)
  {
    if (v10 != &dword_4)
    {
      if (a3)
      {
        if (a3 != 2)
        {
          goto LABEL_53;
        }

        v11 = v6;
        v12 = 7;
LABEL_38:
        [v11 setState:v12];
        [(BCAugmentedExperienceManager *)self _startDelayForExperience:v6];
        goto LABEL_53;
      }

      goto LABEL_41;
    }

    if (a3 <= 2)
    {
      if (a3)
      {
        if (a3 != 2)
        {
          goto LABEL_53;
        }

        v11 = v6;
        v12 = 6;
        goto LABEL_38;
      }

LABEL_41:
      [v6 setState:0];
LABEL_48:
      [(BCAugmentedExperienceManager *)self _cancelPreloadExperience:v6];
      goto LABEL_53;
    }

    if (a3 != 4)
    {
      if (a3 != 3)
      {
        goto LABEL_53;
      }

      v15 = v6;
      v16 = 5;
      goto LABEL_52;
    }

LABEL_45:
    v15 = v6;
    v16 = 0;
    goto LABEL_52;
  }

  if (v10 != (&dword_4 + 2))
  {
    if (v10 == (&dword_4 + 3))
    {
      if (a3 != 5)
      {
        if ((a3 & 0xFFFFFFFFFFFFFFFBLL) != 0)
        {
          goto LABEL_53;
        }

        [v6 setState:0];
        [(BCAugmentedExperienceManager *)self _cancelDelayForExperience:v6];
        goto LABEL_48;
      }
    }

    else
    {
      if (v10 != &dword_8)
      {
        goto LABEL_53;
      }

      if (a3 != 3)
      {
        if ((a3 & 0xFFFFFFFFFFFFFFFBLL) != 0)
        {
          goto LABEL_53;
        }

        goto LABEL_41;
      }
    }

LABEL_40:
    [v6 setState:2];
    [(BCAugmentedExperienceManager *)self _showExperience:v6];
    goto LABEL_53;
  }

  if (a3 == 5)
  {
    v15 = v6;
    v16 = 8;
    goto LABEL_52;
  }

  if (a3 == 3)
  {
    v15 = v6;
    v16 = 7;
    goto LABEL_52;
  }

  if ((a3 & 0xFFFFFFFFFFFFFFFBLL) == 0)
  {
    [v6 setState:0];
    [(BCAugmentedExperienceManager *)self _cancelPreloadExperience:v6];
    [(BCAugmentedExperienceManager *)self _cancelDelayForExperience:v6];
  }

LABEL_53:
  v17 = [v6 state];
  if (v9 != v17)
  {
    v18 = v17;
    v19 = BCAugmentedExperienceLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [(BCAugmentedExperienceManager *)self _stateToString:v9];
      v21 = [(BCAugmentedExperienceManager *)self _stateToString:v18];
      v23 = 138412546;
      v24 = v20;
      v25 = 2112;
      v26 = v21;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "processStateEvent state change from %@ to %@", &v23, 0x16u);
    }

    v22 = [v6 experience];
    [(BCAugmentedExperienceManager *)self _stateChangedTo:v18 forExperience:v22];
  }
}

- (id)_eventToString:(int64_t)a3
{
  if (a3 > 7)
  {
    return 0;
  }

  else
  {
    return off_2C8248[a3];
  }
}

- (id)_stateToString:(int64_t)a3
{
  if (a3 > 8)
  {
    return 0;
  }

  else
  {
    return off_2C8288[a3];
  }
}

- (void)_preloadExperience:(id)a3
{
  v4 = a3;
  v5 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "preloadExperience", buf, 2u);
  }

  v6 = [v4 experience];
  v7 = [v6 presenter];

  if (v7)
  {
    v8 = [(BCAugmentedExperienceManager *)self presentationViewController];
    if (v8)
    {
      v9 = [v4 experience];
      v10 = [v9 presenter];
      v11 = [v4 experience];
      v12 = [v11 pageProgressionIsRTL];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_15380;
      v14[3] = &unk_2C8200;
      v14[4] = self;
      v15 = v4;
      [v10 preloadPresentationInVC:v8 pageProgressionIsRTL:v12 completion:v14];
    }
  }

  else
  {
    v13 = BCAugmentedExperienceLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1E4C20(v13);
    }

    [(BCAugmentedExperienceManager *)self _processStateEvent:4 forExperience:v4];
  }
}

- (void)_cancelPreloadExperience:(id)a3
{
  v3 = a3;
  v4 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "cancelPreloadExperience", v7, 2u);
  }

  v5 = [v3 experience];

  v6 = [v5 presenter];
  [v6 cancelPreloadPresentation];
}

- (void)_startDelayForExperience:(id)a3
{
  v4 = a3;
  v5 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "startDelayForExperience", buf, 2u);
  }

  v6 = [v4 experience];
  [v6 delay];
  v8 = v7;

  if (v8 <= 0.0)
  {
    [(BCAugmentedExperienceManager *)self _delayCompletedForExperience:v4];
  }

  else
  {
    v9 = [v4 experience];
    [v9 delay];
    v11 = v10;
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_15634;
    v17 = &unk_2C8228;
    v12 = v4;
    v18 = v12;
    v19 = self;
    v13 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:&v14 block:v11];

    [v12 setDelayTimer:{v13, v14, v15, v16, v17}];
  }
}

- (void)_delayCompletedForExperience:(id)a3
{
  v4 = a3;
  v5 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "delayCompletedForExperience", buf, 2u);
  }

  [(BCAugmentedExperienceManager *)self _delayCompleted];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_15768;
  v7[3] = &unk_2C7BE8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(&_dispatch_main_q, v7);
}

- (void)_cancelDelayForExperience:(id)a3
{
  v3 = a3;
  v4 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "cancelDelayForExperience", v6, 2u);
  }

  v5 = [v3 delayTimer];
  [v5 invalidate];

  [v3 setDelayTimer:0];
}

- (id)_detailsForExperience:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableDictionary dictionary];
  [v4 setObject:&off_2E5858 forKeyedSubscript:@"BCAugmentedExperienceLocationKey"];
  v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 triggeredLocation]);
  [v4 setObject:v5 forKeyedSubscript:@"BCAugmentedExperienceLocationVariantKey"];

  v6 = [v3 experience];

  v7 = [v6 version];
  [v4 setObject:v7 forKeyedSubscript:@"BCAugmentedExperienceVariantVersionKey"];

  return v4;
}

- (void)_expandExperience:(id)a3
{
  v4 = a3;
  v5 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "expandExperience", v9, 2u);
  }

  v6 = [(BCAugmentedExperienceManager *)self presentationViewController];
  if (v6)
  {
    v7 = [v4 experience];
    v8 = [v7 presenter];
    [v8 expandInVC:v6];
  }
}

- (void)_showExperience:(id)a3
{
  v4 = a3;
  v5 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "showExperience", v13, 2u);
  }

  v6 = [(BCAugmentedExperienceManager *)self presentationViewController];
  if (v6)
  {
    v7 = [v4 experience];
    v8 = [v7 presenter];
    v9 = [v4 autoExpand];
    v10 = [(BCAugmentedExperienceManager *)self _detailsForExperience:v4];
    [v8 presentInVC:v6 autoExpanded:v9 details:v10];

    [v4 setIsPresented:1];
    v11 = [v4 experience];
    v12 = [v11 kind];

    if (!v12)
    {
      [(BCAugmentedExperienceManager *)self _currentBookIsFinished];
    }
  }
}

- (void)_userClosedExperience:(id)a3
{
  v4 = a3;
  v5 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "userClosedExperience", v6, 2u);
  }

  [v4 setIsPresented:0];
  [(BCAugmentedExperienceManager *)self _processStateEvent:6 forExperience:v4];
}

- (BOOL)_cancelShowExperience:(id)a3
{
  v3 = a3;
  v4 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "cancelShowExperience", buf, 2u);
  }

  v5 = [v3 experience];
  v6 = [v5 presenter];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_15C9C;
  v10[3] = &unk_2C7D40;
  v11 = v3;
  v7 = v3;
  v8 = [v6 endPresentation:v10];

  return v8;
}

- (void)presenterWantsToDismiss:(id)a3
{
  v4 = a3;
  v5 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "User wants to dismiss the experience", buf, 2u);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(BCAugmentedExperienceManager *)self augmentedExperiences];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [v11 experience];
        v13 = [v12 presenter];

        if (v13 == v4)
        {
          [(BCAugmentedExperienceManager *)self _userClosedExperience:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v8);
  }
}

- (void)presenterWantsToCloseAsset:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Closing the current asset", v11, 2u);
  }

  [(BCAugmentedExperienceManager *)self presenterWantsToDismiss:v7];
  v9 = [(BCAugmentedExperienceManager *)self presentationViewController];
  [v9 requestClose:1];

  v10 = objc_retainBlock(v6);
  if (v10)
  {
    v10[2](v10);
  }
}

- (BCAugmentedExperienceHosting)presentationViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationViewController);

  return WeakRetained;
}

@end