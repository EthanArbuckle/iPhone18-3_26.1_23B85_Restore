@interface BCAugmentedExperienceManager
+ (BOOL)autoExpandAtEnd;
+ (BOOL)enabled;
+ (BOOL)endOfBookExperienceFeatureEnabled;
+ (float)confidenceThreshold;
+ (id)newAugmentedExperienceManager;
- (BCAugmentedExperienceHosting)presentationViewController;
- (BCAugmentedExperienceManager)initWithStateChangeCoalescingDelay:(double)delay;
- (BOOL)_cancelShowExperience:(id)experience;
- (id)_detailsForExperience:(id)experience;
- (id)_eventToString:(int64_t)string;
- (id)_stateToString:(int64_t)string;
- (void)_cancelDelayForExperience:(id)experience;
- (void)_cancelPreloadExperience:(id)experience;
- (void)_currentBookIsFinished;
- (void)_delayCompletedForExperience:(id)experience;
- (void)_expandExperience:(id)experience;
- (void)_handleStateChange:(id)change;
- (void)_preloadExperience:(id)experience;
- (void)_processStateEvent:(int64_t)event forExperience:(id)experience;
- (void)_showExperience:(id)experience;
- (void)_startDelayForExperience:(id)experience;
- (void)_userClosedExperience:(id)experience;
- (void)addExperience:(id)experience;
- (void)emitter:(id)emitter bookMilestoneReached:(int64_t)reached;
- (void)emitter:(id)emitter bookPositionChanged:(id)changed;
- (void)emitter:(id)emitter bookSectionChanged:(id)changed;
- (void)presenterWantsToCloseAsset:(id)asset completion:(id)completion;
- (void)presenterWantsToDismiss:(id)dismiss;
- (void)presentingViewControllerDidChangeLayout:(id)layout;
- (void)removeExperienceOfType:(int64_t)type;
@end

@implementation BCAugmentedExperienceManager

+ (BOOL)endOfBookExperienceFeatureEnabled
{
  v3 = +[NSUserDefaults standardUserDefaults];
  if ([v3 BOOLForKey:@"BKEndOfBookExperienceDisabled"])
  {
    enabled = 0;
  }

  else
  {
    enabled = [self enabled];
  }

  return enabled;
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
  configs = [v2 configs];
  v4 = [configs valueForKeyPath:@"endOfBookExperience.enabled"];
  v5 = BUDynamicCast();

  if (v5)
  {
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

+ (BOOL)autoExpandAtEnd
{
  objc_opt_class();
  v2 = +[BCRCDataContainer defaultContainer];
  configs = [v2 configs];
  v4 = [configs valueForKeyPath:@"endOfBookExperience.autoExpandAtEnd"];
  v5 = BUDynamicCast();

  if (v5)
  {
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

+ (float)confidenceThreshold
{
  objc_opt_class();
  v2 = +[BCRCDataContainer defaultContainer];
  configs = [v2 configs];
  v4 = [configs valueForKeyPath:@"endOfBookExperience.confidenceThreshold"];
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

- (BCAugmentedExperienceManager)initWithStateChangeCoalescingDelay:(double)delay
{
  v17.receiver = self;
  v17.super_class = BCAugmentedExperienceManager;
  v4 = [(BCAugmentedExperienceManager *)&v17 init];
  if (v4)
  {
    v5 = +[NSMutableArray array];
    augmentedExperiences = v4->_augmentedExperiences;
    v4->_augmentedExperiences = v5;

    if (delay != 0.0)
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

      [(BUCoalescingCallBlock *)v4->_stateChangeCoalescingCallBlock setCoalescingDelay:delay];
      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }
  }

  return v4;
}

- (void)_currentBookIsFinished
{
  presentationViewController = [(BCAugmentedExperienceManager *)self presentationViewController];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    presentationViewController2 = [(BCAugmentedExperienceManager *)self presentationViewController];
    storeID = [(BCAugmentedExperienceManager *)self storeID];
    [presentationViewController2 setFinishedForAssetID:storeID];
  }
}

- (void)_handleStateChange:(id)change
{
  changeCopy = change;
  stateChangeCoalescingCallBlock = [(BCAugmentedExperienceManager *)self stateChangeCoalescingCallBlock];

  if (stateChangeCoalescingCallBlock)
  {
    [(BCAugmentedExperienceManager *)self setStateChangeBlock:changeCopy];

    stateChangeCoalescingCallBlock2 = [(BCAugmentedExperienceManager *)self stateChangeCoalescingCallBlock];
    [stateChangeCoalescingCallBlock2 signalWithCompletion:&stru_2C8160];
  }

  else
  {
    stateChangeCoalescingCallBlock2 = objc_retainBlock(changeCopy);

    v6 = stateChangeCoalescingCallBlock2;
    if (!stateChangeCoalescingCallBlock2)
    {
      goto LABEL_6;
    }

    stateChangeCoalescingCallBlock2[2](stateChangeCoalescingCallBlock2);
  }

  v6 = stateChangeCoalescingCallBlock2;
LABEL_6:
}

- (void)emitter:(id)emitter bookPositionChanged:(id)changed
{
  emitterCopy = emitter;
  changedCopy = changed;
  v8 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1E49B4(changedCopy, v8);
  }

  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_14188;
  v10[3] = &unk_2C8188;
  objc_copyWeak(&v12, &location);
  v9 = changedCopy;
  v11 = v9;
  [(BCAugmentedExperienceManager *)self _handleStateChange:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)emitter:(id)emitter bookMilestoneReached:(int64_t)reached
{
  v6 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1E4A98(reached, v6);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  augmentedExperiences = [(BCAugmentedExperienceManager *)self augmentedExperiences];
  v8 = [augmentedExperiences countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(augmentedExperiences);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        experience = [v12 experience];
        kind = [experience kind];

        if (!kind)
        {
          if (reached <= 6)
          {
            if (reached != 2)
            {
              if (reached != 3)
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
            selfCopy2 = self;
            v16 = 2;
            goto LABEL_23;
          }

          if ((reached - 7) < 2 || reached == 10)
          {
            selfCopy2 = self;
            v16 = 7;
LABEL_23:
            [(BCAugmentedExperienceManager *)selfCopy2 _processStateEvent:v16 forExperience:v12];
            continue;
          }

          if (reached == 9 && [v12 isPresented] && objc_msgSend(v12, "isOnExperiencePage"))
          {
            goto LABEL_20;
          }
        }
      }

      v9 = [augmentedExperiences countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }
}

- (void)emitter:(id)emitter bookSectionChanged:(id)changed
{
  emitterCopy = emitter;
  changedCopy = changed;
  v8 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1E4B3C(changedCopy, v8);
  }

  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_146D4;
  v10[3] = &unk_2C81B0;
  objc_copyWeak(&v13, &location);
  v9 = changedCopy;
  v11 = v9;
  selfCopy = self;
  [(BCAugmentedExperienceManager *)self _handleStateChange:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)presentingViewControllerDidChangeLayout:(id)layout
{
  layoutCopy = layout;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  augmentedExperiences = [(BCAugmentedExperienceManager *)self augmentedExperiences];
  v6 = [augmentedExperiences countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(augmentedExperiences);
        }

        experience = [*(*(&v12 + 1) + 8 * v9) experience];
        presenter = [experience presenter];
        [presenter bringExperienceViewToFront:layoutCopy];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [augmentedExperiences countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)removeExperienceOfType:(int64_t)type
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  augmentedExperiences = [(BCAugmentedExperienceManager *)self augmentedExperiences];
  v6 = [augmentedExperiences countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(augmentedExperiences);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        experience = [v10 experience];
        kind = [experience kind];

        if (kind == type)
        {
          experience2 = [v10 experience];
          presenter = [experience2 presenter];
          [presenter endPresentation:0];

          augmentedExperiences2 = [(BCAugmentedExperienceManager *)self augmentedExperiences];
          [augmentedExperiences2 removeObject:v10];

          goto LABEL_11;
        }
      }

      v7 = [augmentedExperiences countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)addExperience:(id)experience
{
  experienceCopy = experience;
  location = [experienceCopy location];
  if (!location || (v5 = location, [experienceCopy location], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "confidence"), v8 = v7, +[BCAugmentedExperienceManager confidenceThreshold](BCAugmentedExperienceManager, "confidenceThreshold"), v10 = v9, v6, v5, v8 >= v10))
  {
    v11 = objc_alloc_init(BKAugmentedExperienceData);
    [(BKAugmentedExperienceData *)v11 setExperience:experienceCopy];
    [(BKAugmentedExperienceData *)v11 setTriggeredLocation:0];
    augmentedExperiences = [(BCAugmentedExperienceManager *)self augmentedExperiences];
    [augmentedExperiences addObject:v11];

    presenter = [experienceCopy presenter];
    [presenter setPresentingDelegate:self];
  }
}

- (void)_processStateEvent:(int64_t)event forExperience:(id)experience
{
  experienceCopy = experience;
  v7 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(BCAugmentedExperienceManager *)self _eventToString:event];
    v23 = 138412290;
    v24 = v8;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "processStateEvent %@", &v23, 0xCu);
  }

  state = [experienceCopy state];
  state2 = [experienceCopy state];
  if (state2 <= 3)
  {
    if (state2 > 1)
    {
      if (state2 != (&dword_0 + 2))
      {
        if (event)
        {
          goto LABEL_53;
        }

        goto LABEL_45;
      }

      if (event == 7)
      {
        if (![(BCAugmentedExperienceManager *)self _cancelShowExperience:experienceCopy])
        {
          goto LABEL_53;
        }

        v15 = experienceCopy;
        v16 = 1;
        goto LABEL_52;
      }

      if (event != 6 || ![(BCAugmentedExperienceManager *)self _cancelShowExperience:experienceCopy])
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (!state2)
      {
        if (event == 1)
        {
          experience = [experienceCopy experience];
          v14 = [(BCAugmentedExperienceManager *)self _isExperienceViable:experience];

          if (v14)
          {
            [experienceCopy setState:4];
            [(BCAugmentedExperienceManager *)self _preloadExperience:experienceCopy];
          }
        }

        goto LABEL_53;
      }

      if (state2 != (&dword_0 + 1) || event == 7)
      {
        goto LABEL_53;
      }

      if (event != 6)
      {
        goto LABEL_40;
      }
    }

    v15 = experienceCopy;
    v16 = 3;
LABEL_52:
    [v15 setState:v16];
    goto LABEL_53;
  }

  if (state2 <= 5)
  {
    if (state2 != &dword_4)
    {
      if (event)
      {
        if (event != 2)
        {
          goto LABEL_53;
        }

        v11 = experienceCopy;
        v12 = 7;
LABEL_38:
        [v11 setState:v12];
        [(BCAugmentedExperienceManager *)self _startDelayForExperience:experienceCopy];
        goto LABEL_53;
      }

      goto LABEL_41;
    }

    if (event <= 2)
    {
      if (event)
      {
        if (event != 2)
        {
          goto LABEL_53;
        }

        v11 = experienceCopy;
        v12 = 6;
        goto LABEL_38;
      }

LABEL_41:
      [experienceCopy setState:0];
LABEL_48:
      [(BCAugmentedExperienceManager *)self _cancelPreloadExperience:experienceCopy];
      goto LABEL_53;
    }

    if (event != 4)
    {
      if (event != 3)
      {
        goto LABEL_53;
      }

      v15 = experienceCopy;
      v16 = 5;
      goto LABEL_52;
    }

LABEL_45:
    v15 = experienceCopy;
    v16 = 0;
    goto LABEL_52;
  }

  if (state2 != (&dword_4 + 2))
  {
    if (state2 == (&dword_4 + 3))
    {
      if (event != 5)
      {
        if ((event & 0xFFFFFFFFFFFFFFFBLL) != 0)
        {
          goto LABEL_53;
        }

        [experienceCopy setState:0];
        [(BCAugmentedExperienceManager *)self _cancelDelayForExperience:experienceCopy];
        goto LABEL_48;
      }
    }

    else
    {
      if (state2 != &dword_8)
      {
        goto LABEL_53;
      }

      if (event != 3)
      {
        if ((event & 0xFFFFFFFFFFFFFFFBLL) != 0)
        {
          goto LABEL_53;
        }

        goto LABEL_41;
      }
    }

LABEL_40:
    [experienceCopy setState:2];
    [(BCAugmentedExperienceManager *)self _showExperience:experienceCopy];
    goto LABEL_53;
  }

  if (event == 5)
  {
    v15 = experienceCopy;
    v16 = 8;
    goto LABEL_52;
  }

  if (event == 3)
  {
    v15 = experienceCopy;
    v16 = 7;
    goto LABEL_52;
  }

  if ((event & 0xFFFFFFFFFFFFFFFBLL) == 0)
  {
    [experienceCopy setState:0];
    [(BCAugmentedExperienceManager *)self _cancelPreloadExperience:experienceCopy];
    [(BCAugmentedExperienceManager *)self _cancelDelayForExperience:experienceCopy];
  }

LABEL_53:
  state3 = [experienceCopy state];
  if (state != state3)
  {
    v18 = state3;
    v19 = BCAugmentedExperienceLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [(BCAugmentedExperienceManager *)self _stateToString:state];
      v21 = [(BCAugmentedExperienceManager *)self _stateToString:v18];
      v23 = 138412546;
      v24 = v20;
      v25 = 2112;
      v26 = v21;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "processStateEvent state change from %@ to %@", &v23, 0x16u);
    }

    experience2 = [experienceCopy experience];
    [(BCAugmentedExperienceManager *)self _stateChangedTo:v18 forExperience:experience2];
  }
}

- (id)_eventToString:(int64_t)string
{
  if (string > 7)
  {
    return 0;
  }

  else
  {
    return off_2C8248[string];
  }
}

- (id)_stateToString:(int64_t)string
{
  if (string > 8)
  {
    return 0;
  }

  else
  {
    return off_2C8288[string];
  }
}

- (void)_preloadExperience:(id)experience
{
  experienceCopy = experience;
  v5 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "preloadExperience", buf, 2u);
  }

  experience = [experienceCopy experience];
  presenter = [experience presenter];

  if (presenter)
  {
    presentationViewController = [(BCAugmentedExperienceManager *)self presentationViewController];
    if (presentationViewController)
    {
      experience2 = [experienceCopy experience];
      presenter2 = [experience2 presenter];
      experience3 = [experienceCopy experience];
      pageProgressionIsRTL = [experience3 pageProgressionIsRTL];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_15380;
      v14[3] = &unk_2C8200;
      v14[4] = self;
      v15 = experienceCopy;
      [presenter2 preloadPresentationInVC:presentationViewController pageProgressionIsRTL:pageProgressionIsRTL completion:v14];
    }
  }

  else
  {
    v13 = BCAugmentedExperienceLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1E4C20(v13);
    }

    [(BCAugmentedExperienceManager *)self _processStateEvent:4 forExperience:experienceCopy];
  }
}

- (void)_cancelPreloadExperience:(id)experience
{
  experienceCopy = experience;
  v4 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "cancelPreloadExperience", v7, 2u);
  }

  experience = [experienceCopy experience];

  presenter = [experience presenter];
  [presenter cancelPreloadPresentation];
}

- (void)_startDelayForExperience:(id)experience
{
  experienceCopy = experience;
  v5 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "startDelayForExperience", buf, 2u);
  }

  experience = [experienceCopy experience];
  [experience delay];
  v8 = v7;

  if (v8 <= 0.0)
  {
    [(BCAugmentedExperienceManager *)self _delayCompletedForExperience:experienceCopy];
  }

  else
  {
    experience2 = [experienceCopy experience];
    [experience2 delay];
    v11 = v10;
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_15634;
    v17 = &unk_2C8228;
    v12 = experienceCopy;
    v18 = v12;
    selfCopy = self;
    v13 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:&v14 block:v11];

    [v12 setDelayTimer:{v13, v14, v15, v16, v17}];
  }
}

- (void)_delayCompletedForExperience:(id)experience
{
  experienceCopy = experience;
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
  v8 = experienceCopy;
  v6 = experienceCopy;
  dispatch_async(&_dispatch_main_q, v7);
}

- (void)_cancelDelayForExperience:(id)experience
{
  experienceCopy = experience;
  v4 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "cancelDelayForExperience", v6, 2u);
  }

  delayTimer = [experienceCopy delayTimer];
  [delayTimer invalidate];

  [experienceCopy setDelayTimer:0];
}

- (id)_detailsForExperience:(id)experience
{
  experienceCopy = experience;
  v4 = +[NSMutableDictionary dictionary];
  [v4 setObject:&off_2E5858 forKeyedSubscript:@"BCAugmentedExperienceLocationKey"];
  v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [experienceCopy triggeredLocation]);
  [v4 setObject:v5 forKeyedSubscript:@"BCAugmentedExperienceLocationVariantKey"];

  experience = [experienceCopy experience];

  version = [experience version];
  [v4 setObject:version forKeyedSubscript:@"BCAugmentedExperienceVariantVersionKey"];

  return v4;
}

- (void)_expandExperience:(id)experience
{
  experienceCopy = experience;
  v5 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "expandExperience", v9, 2u);
  }

  presentationViewController = [(BCAugmentedExperienceManager *)self presentationViewController];
  if (presentationViewController)
  {
    experience = [experienceCopy experience];
    presenter = [experience presenter];
    [presenter expandInVC:presentationViewController];
  }
}

- (void)_showExperience:(id)experience
{
  experienceCopy = experience;
  v5 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "showExperience", v13, 2u);
  }

  presentationViewController = [(BCAugmentedExperienceManager *)self presentationViewController];
  if (presentationViewController)
  {
    experience = [experienceCopy experience];
    presenter = [experience presenter];
    autoExpand = [experienceCopy autoExpand];
    v10 = [(BCAugmentedExperienceManager *)self _detailsForExperience:experienceCopy];
    [presenter presentInVC:presentationViewController autoExpanded:autoExpand details:v10];

    [experienceCopy setIsPresented:1];
    experience2 = [experienceCopy experience];
    kind = [experience2 kind];

    if (!kind)
    {
      [(BCAugmentedExperienceManager *)self _currentBookIsFinished];
    }
  }
}

- (void)_userClosedExperience:(id)experience
{
  experienceCopy = experience;
  v5 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "userClosedExperience", v6, 2u);
  }

  [experienceCopy setIsPresented:0];
  [(BCAugmentedExperienceManager *)self _processStateEvent:6 forExperience:experienceCopy];
}

- (BOOL)_cancelShowExperience:(id)experience
{
  experienceCopy = experience;
  v4 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "cancelShowExperience", buf, 2u);
  }

  experience = [experienceCopy experience];
  presenter = [experience presenter];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_15C9C;
  v10[3] = &unk_2C7D40;
  v11 = experienceCopy;
  v7 = experienceCopy;
  v8 = [presenter endPresentation:v10];

  return v8;
}

- (void)presenterWantsToDismiss:(id)dismiss
{
  dismissCopy = dismiss;
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
  augmentedExperiences = [(BCAugmentedExperienceManager *)self augmentedExperiences];
  v7 = [augmentedExperiences countByEnumeratingWithState:&v14 objects:v19 count:16];
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
          objc_enumerationMutation(augmentedExperiences);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        experience = [v11 experience];
        presenter = [experience presenter];

        if (presenter == dismissCopy)
        {
          [(BCAugmentedExperienceManager *)self _userClosedExperience:v11];
        }
      }

      v8 = [augmentedExperiences countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v8);
  }
}

- (void)presenterWantsToCloseAsset:(id)asset completion:(id)completion
{
  completionCopy = completion;
  assetCopy = asset;
  v8 = BCAugmentedExperienceLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "Closing the current asset", v11, 2u);
  }

  [(BCAugmentedExperienceManager *)self presenterWantsToDismiss:assetCopy];
  presentationViewController = [(BCAugmentedExperienceManager *)self presentationViewController];
  [presentationViewController requestClose:1];

  v10 = objc_retainBlock(completionCopy);
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