@interface NavigationIdleTimerProvider
- (BOOL)_shouldGuidanceUpdateDisplayPersistently:(id)persistently;
- (NavigationIdleTimerProvider)initWithIdleStateHandler:(id)handler undimHandler:(id)undimHandler;
- (unint64_t)_guidanceUpdate:(id)update isDifferentFromGuidanceUpdate:(id)guidanceUpdate;
- (void)_notifyShouldUndim;
- (void)_updateIdleTimerState;
- (void)dealloc;
- (void)navigationService:(id)service shouldEnableIdleTimer:(BOOL)timer;
- (void)screenLayoutDidChangeWithReason:(unint64_t)reason;
- (void)setPocketStateType:(int64_t)type;
- (void)setShouldDisableIdleTimer:(BOOL)timer;
- (void)updateGuidanceState:(id)state;
@end

@implementation NavigationIdleTimerProvider

- (void)navigationService:(id)service shouldEnableIdleTimer:(BOOL)timer
{
  timerCopy = timer;
  v6 = sub_100799E70();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[NavigationIdleTimerProvider navigationService:shouldEnableIdleTimer:]";
    v9 = 1024;
    v10 = timerCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s: %d", &v7, 0x12u);
  }

  self->_navdRequestingIdleTimerEnabled = timerCopy;
  [(NavigationIdleTimerProvider *)self _updateIdleTimerState];
}

- (unint64_t)_guidanceUpdate:(id)update isDifferentFromGuidanceUpdate:(id)guidanceUpdate
{
  updateCopy = update;
  guidanceUpdateCopy = guidanceUpdate;
  guidanceState = [updateCopy guidanceState];
  if ([guidanceUpdateCopy guidanceState] != guidanceState)
  {
    if (![guidanceUpdateCopy guidanceState])
    {
      v17 = 1;
      goto LABEL_27;
    }

    if (guidanceState == 1)
    {
      v17 = 2;
      goto LABEL_27;
    }

    if ([guidanceUpdateCopy guidanceState] == 1)
    {
      v17 = 3;
      goto LABEL_27;
    }
  }

  if (!guidanceState)
  {
    goto LABEL_6;
  }

  maneuverID = [updateCopy maneuverID];
  maneuverID2 = [guidanceUpdateCopy maneuverID];
  v11 = maneuverID;
  v12 = maneuverID2;
  if (v11 | v12)
  {
    v13 = v12;
    v14 = [v11 isEqual:v12];

    if (!v14)
    {
      v17 = 5;
      goto LABEL_27;
    }
  }

  maneuver = [(IPCGuidanceStateReply *)self->_lastGuidanceUpdate maneuver];
  if (maneuver != [updateCopy maneuver])
  {
    v17 = 4;
  }

  else
  {
LABEL_6:
    alightMessage = [updateCopy alightMessage];

    if (alightMessage)
    {
      v17 = 6;
    }

    else if ([updateCopy isAlerting])
    {
      v17 = 7;
    }

    else
    {
      laneGuidanceInfo = [guidanceUpdateCopy laneGuidanceInfo];
      if (laneGuidanceInfo)
      {
      }

      else
      {
        laneGuidanceInfo2 = [updateCopy laneGuidanceInfo];

        if (laneGuidanceInfo2)
        {
          v17 = 8;
          goto LABEL_27;
        }
      }

      trafficIncidentAlert = [guidanceUpdateCopy trafficIncidentAlert];
      if (trafficIncidentAlert)
      {

        v17 = 0;
      }

      else
      {
        trafficIncidentAlert2 = [updateCopy trafficIncidentAlert];

        if (trafficIncidentAlert2)
        {
          v17 = 9;
        }

        else
        {
          v17 = 0;
        }
      }
    }
  }

LABEL_27:

  return v17;
}

- (BOOL)_shouldGuidanceUpdateDisplayPersistently:(id)persistently
{
  persistentlyCopy = persistently;
  v4 = ([persistentlyCopy isSticky] & 1) != 0 || objc_msgSend(persistentlyCopy, "guidanceState") == 3 || objc_msgSend(persistentlyCopy, "guidanceState") == 2;

  return v4;
}

- (void)_updateIdleTimerState
{
  _isInPocket = [(NavigationIdleTimerProvider *)self _isInPocket];
  v4 = +[MapsScreenLayoutMonitor sharedMonitor];
  if (![v4 isOurAppActive])
  {
    goto LABEL_5;
  }

  v5 = +[MapsScreenLayoutMonitor sharedMonitor];
  if (![v5 isScreenOn] || +[UIApplication _maps_isAnySceneConnectedForRole:](UIApplication, "_maps_isAnySceneConnectedForRole:", _UIWindowSceneSessionRoleCarPlay))
  {

LABEL_5:
LABEL_6:
    v6 = sub_100799E70();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = +[MapsScreenLayoutMonitor sharedMonitor];
      isOurAppActive = [v7 isOurAppActive];
      v9 = +[MapsScreenLayoutMonitor sharedMonitor];
      isScreenOn = [v9 isScreenOn];
      v11 = +[CarDisplayController sharedInstance];
      isCurrentlyConnectedToAnyCarScene = [v11 isCurrentlyConnectedToAnyCarScene];
      navdRequestingIdleTimerEnabled = self->_navdRequestingIdleTimerEnabled;
      pocketStateType = [(NavigationIdleTimerProvider *)self pocketStateType];
      if (pocketStateType > 4)
      {
        v15 = @"Unknown";
      }

      else
      {
        v15 = *(&off_101657C10 + pocketStateType);
      }

      v20[0] = 67110146;
      v20[1] = isOurAppActive;
      v21 = 1024;
      v22 = isScreenOn;
      v23 = 1024;
      v24 = isCurrentlyConnectedToAnyCarScene;
      v25 = 1024;
      v26 = navdRequestingIdleTimerEnabled;
      v27 = 2114;
      v28 = v15;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "enabling idle timer due to: isForeground: %d isScreenOn: %d connectedToCarPlay: %d navdIdleTimer: %d pocketState: %{public}@", v20, 0x24u);
    }

    selfCopy2 = self;
    v17 = 0;
    goto LABEL_12;
  }

  v18 = self->_navdRequestingIdleTimerEnabled | _isInPocket;

  if (v18)
  {
    goto LABEL_6;
  }

  v19 = sub_100799E70();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    LOWORD(v20[0]) = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "disabling idle timer", v20, 2u);
  }

  selfCopy2 = self;
  v17 = 1;
LABEL_12:
  [(NavigationIdleTimerProvider *)selfCopy2 setShouldDisableIdleTimer:v17];
}

- (void)_notifyShouldUndim
{
  hasReceivedScreenLayout = self->_hasReceivedScreenLayout;
  _isInPocket = [(NavigationIdleTimerProvider *)self _isInPocket];
  v5 = +[MapsScreenLayoutMonitor sharedMonitor];
  if ([v5 isScreenOn])
  {
    v6 = +[MapsScreenLayoutMonitor sharedMonitor];
    v7 = [v6 isScreenFullyOn] ^ 1;
  }

  else
  {
    v7 = 0;
  }

  if (_isInPocket & 1 | !hasReceivedScreenLayout || (v7 & 1) != 0)
  {
    if (hasReceivedScreenLayout)
    {
      if (_isInPocket)
      {
        undimHandler2 = sub_100799E70();
        if (!os_log_type_enabled(undimHandler2, OS_LOG_TYPE_INFO))
        {
          goto LABEL_24;
        }

        pocketStateType = [(NavigationIdleTimerProvider *)self pocketStateType];
        if (pocketStateType > 4)
        {
          v12 = @"Unknown";
        }

        else
        {
          v12 = *(&off_101657C10 + pocketStateType);
        }

        v17 = 138543362;
        v18 = v12;
        v13 = "Not undimming the screen due to CMPocketStateManager state: %{public}@";
        v14 = undimHandler2;
        v15 = OS_LOG_TYPE_INFO;
        v16 = 12;
LABEL_23:
        _os_log_impl(&_mh_execute_header, v14, v15, v13, &v17, v16);
        goto LABEL_24;
      }

      if (!v7)
      {
        return;
      }

      undimHandler2 = sub_100799E70();
      if (!os_log_type_enabled(undimHandler2, OS_LOG_TYPE_INFO))
      {
        goto LABEL_24;
      }

      LOWORD(v17) = 0;
      v13 = "Not undimming due to the screen currently turning off";
      v14 = undimHandler2;
      v15 = OS_LOG_TYPE_INFO;
    }

    else
    {
      undimHandler2 = sub_100799E70();
      if (!os_log_type_enabled(undimHandler2, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      LOWORD(v17) = 0;
      v13 = "Can't safely undim as we haven't determined the current screen state";
      v14 = undimHandler2;
      v15 = OS_LOG_TYPE_ERROR;
    }

    v16 = 2;
    goto LABEL_23;
  }

  v8 = sub_100799E70();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Notifying undim handler to undim the screen", &v17, 2u);
  }

  undimHandler = [(NavigationIdleTimerProvider *)self undimHandler];

  if (undimHandler)
  {
    undimHandler2 = [(NavigationIdleTimerProvider *)self undimHandler];
    (*(undimHandler2 + 16))();
LABEL_24:
  }
}

- (void)updateGuidanceState:(id)state
{
  stateCopy = state;
  v5 = [(NavigationIdleTimerProvider *)self _guidanceUpdate:stateCopy isDifferentFromGuidanceUpdate:self->_lastGuidanceUpdate];
  if (!self->_navigationPromptsUndimScreen || ![(IPCGuidanceStateReply *)stateCopy affectsDimming])
  {
    goto LABEL_22;
  }

  alightMessage = [(IPCGuidanceStateReply *)stateCopy alightMessage];

  if (alightMessage)
  {
    p_super = sub_100799E70();
    if (!os_log_type_enabled(p_super, OS_LOG_TYPE_INFO))
    {
LABEL_8:

      v11 = sub_100799E70();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        shortDescription = [(IPCGuidanceStateReply *)stateCopy shortDescription];
        v13 = shortDescription;
        if (v5 > 9)
        {
          v14 = @"Unknown";
        }

        else
        {
          v14 = *(&off_101657BC0 + v5);
        }

        v21 = 138412546;
        v22 = shortDescription;
        v23 = 2112;
        v24 = v14;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "guidance update: %@, did change due to %@", &v21, 0x16u);
      }

      if (![(NavigationIdleTimerProvider *)self _isInPocket])
      {
        [(NavigationIdleTimerProvider *)self _notifyShouldUndim];
      }

      goto LABEL_22;
    }

    LOWORD(v21) = 0;
    v8 = "Undim due to alight message";
    goto LABEL_6;
  }

  if (!self->_lastGuidanceUpdate)
  {
    p_super = sub_100799E70();
    if (!os_log_type_enabled(p_super, OS_LOG_TYPE_INFO))
    {
      goto LABEL_8;
    }

    LOWORD(v21) = 0;
    v8 = "Undim due to first guidance update";
    goto LABEL_6;
  }

  if (!self->_screenLockedGuidanceUpdate)
  {
    if (![(NavigationIdleTimerProvider *)self _shouldGuidanceUpdateDisplayPersistently:stateCopy])
    {
      if (!v5)
      {
        goto LABEL_24;
      }

      p_super = sub_100799E70();
      if (!os_log_type_enabled(p_super, OS_LOG_TYPE_INFO))
      {
        goto LABEL_8;
      }

      if (v5 > 9)
      {
        v20 = @"Unknown";
      }

      else
      {
        v20 = *(&off_101657B78 + v5 - 1);
      }

      v21 = 138412290;
      v22 = v20;
      v8 = "Undim from guidance update due to %@";
      v9 = p_super;
      v10 = 12;
      goto LABEL_7;
    }

    p_super = sub_100799E70();
    if (!os_log_type_enabled(p_super, OS_LOG_TYPE_INFO))
    {
      goto LABEL_8;
    }

    LOWORD(v21) = 0;
    v8 = "Undim from guidance update due to being persistently displayed";
LABEL_6:
    v9 = p_super;
    v10 = 2;
LABEL_7:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, v8, &v21, v10);
    goto LABEL_8;
  }

  v15 = [(NavigationIdleTimerProvider *)self _guidanceUpdate:stateCopy isDifferentFromGuidanceUpdate:?];
  if (v5)
  {
    v16 = v15;
    if (v15)
    {
      v17 = sub_100799E70();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        if (v16 > 9)
        {
          v18 = @"Unknown";
        }

        else
        {
          v18 = *(&off_101657B78 + v16 - 1);
        }

        v21 = 138412290;
        v22 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Undim after locked due to %@", &v21, 0xCu);
      }

      p_super = &self->_screenLockedGuidanceUpdate->super.super;
      self->_screenLockedGuidanceUpdate = 0;
      goto LABEL_8;
    }
  }

LABEL_22:
  if ((v5 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    [(NavigationIdleTimerProvider *)self _updateIdleTimerState];
  }

LABEL_24:
  lastGuidanceUpdate = self->_lastGuidanceUpdate;
  self->_lastGuidanceUpdate = stateCopy;
}

- (void)setPocketStateType:(int64_t)type
{
  if (self->_pocketStateType != type)
  {
    v5 = sub_100799E70();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      pocketStateType = self->_pocketStateType;
      if (pocketStateType > 4)
      {
        v7 = @"Unknown";
      }

      else
      {
        v7 = *(&off_101657C10 + pocketStateType);
      }

      if (type > 4)
      {
        v8 = @"Unknown";
      }

      else
      {
        v8 = *(&off_101657C10 + type);
      }

      v9 = 138543618;
      v10 = v7;
      v11 = 2114;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Changing pocket state type from %{public}@ to %{public}@", &v9, 0x16u);
    }

    self->_pocketStateType = type;
    if ([(NavigationIdleTimerProvider *)self _isInPocket])
    {
      [(NavigationIdleTimerProvider *)self _updateIdleTimerState];
    }
  }
}

- (void)setShouldDisableIdleTimer:(BOOL)timer
{
  if (self->_shouldDisableIdleTimer != timer)
  {
    timerCopy = timer;
    v5 = sub_100799E70();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      shouldDisableIdleTimer = self->_shouldDisableIdleTimer;
      v9[0] = 67109376;
      v9[1] = shouldDisableIdleTimer;
      v10 = 1024;
      v11 = timerCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Changing idle timer disabled from %d to %d", v9, 0xEu);
    }

    self->_shouldDisableIdleTimer = timerCopy;
    idleStateChangeHandler = [(NavigationIdleTimerProvider *)self idleStateChangeHandler];

    if (idleStateChangeHandler)
    {
      idleStateChangeHandler2 = [(NavigationIdleTimerProvider *)self idleStateChangeHandler];
      idleStateChangeHandler2[2](idleStateChangeHandler2, timerCopy);
    }
  }
}

- (void)screenLayoutDidChangeWithReason:(unint64_t)reason
{
  self->_hasReceivedScreenLayout = 1;
  if (reason == 3)
  {
    v5 = sub_100799E70();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Lock button pressed", v8, 2u);
    }

    v6 = +[MapsScreenLayoutMonitor sharedMonitor];
    isScreenOn = [v6 isScreenOn];

    if ((isScreenOn & 1) == 0)
    {
      objc_storeStrong(&self->_screenLockedGuidanceUpdate, self->_lastGuidanceUpdate);
    }

    goto LABEL_10;
  }

  if (reason)
  {
LABEL_10:
    [(NavigationIdleTimerProvider *)self _updateIdleTimerState];
    return;
  }

  v4 = sub_100799E70();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Ignoring layout change", buf, 2u);
  }
}

- (void)dealloc
{
  v3 = +[MapsScreenLayoutMonitor sharedMonitor];
  [v3 stopMonitoringWithObserver:self];

  v4 = +[MNNavigationService sharedService];
  [v4 unregisterObserver:self];

  [(NavigationIdleTimerProvider *)self setShouldDisableIdleTimer:0];
  GEOConfigRemoveBlockListener();
  v5 = sub_100799E70();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v9 = objc_opt_class();
    v10 = 2048;
    selfCopy = self;
    v12 = 2080;
    v13 = "[NavigationIdleTimerProvider dealloc]";
    v6 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "<%@:%p> %s", buf, 0x20u);
  }

  v7.receiver = self;
  v7.super_class = NavigationIdleTimerProvider;
  [(NavigationIdleTimerProvider *)&v7 dealloc];
}

- (NavigationIdleTimerProvider)initWithIdleStateHandler:(id)handler undimHandler:(id)undimHandler
{
  handlerCopy = handler;
  undimHandlerCopy = undimHandler;
  v25.receiver = self;
  v25.super_class = NavigationIdleTimerProvider;
  v8 = [(NavigationIdleTimerProvider *)&v25 init];
  if (v8)
  {
    v9 = sub_100799E70();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      *buf = 138412802;
      v27 = v10;
      v28 = 2048;
      v29 = v8;
      v30 = 2080;
      v31 = "[NavigationIdleTimerProvider initWithIdleStateHandler:undimHandler:]";
      v11 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "<%@:%p> %s", buf, 0x20u);
    }

    v12 = objc_retainBlock(handlerCopy);
    idleStateChangeHandler = v8->_idleStateChangeHandler;
    v8->_idleStateChangeHandler = v12;

    v14 = objc_retainBlock(undimHandlerCopy);
    undimHandler = v8->_undimHandler;
    v8->_undimHandler = v14;

    v8->_pocketStateType = 4;
    v16 = [[MapsPocketStateProvider alloc] initWithDelegate:v8];
    pocketStateManager = v8->_pocketStateManager;
    v8->_pocketStateManager = v16;

    v18 = +[MapsScreenLayoutMonitor sharedMonitor];
    [v18 startMonitoringWithObserver:v8];

    v19 = +[MNNavigationService sharedService];
    [v19 registerObserver:v8];

    objc_initWeak(buf, v8);
    v8->_navigationPromptsUndimScreen = GEOConfigGetBOOL();
    v20 = &_dispatch_main_q;
    objc_copyWeak(&v24, buf);
    v21 = _GEOConfigAddBlockListenerForKey();
    navigationPromptsUndimScreenListener = v8->_navigationPromptsUndimScreenListener;
    v8->_navigationPromptsUndimScreenListener = v21;

    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }

  return v8;
}

@end