@interface CarClusterSuggestionController
- (CarClusterSuggestionController)init;
- (NSString)debugDescription;
- (void)_cancelStopSuggestingTurnCardTimerIfNeeded;
- (void)_clear;
- (void)_scheduleStopSuggestingTurnCardTimerIfNeeded;
- (void)_sendOneTimeTurnCardSuggestion;
- (void)_sendSuggestionIfNeeded;
- (void)_startSuggestingTurnCard;
- (void)_stopSuggestingTurnCard;
- (void)_stopSuggestingTurnCardTimerFired;
- (void)_supportedUrlsChanged:(id)changed;
- (void)_updateCurrentSuggestions;
- (void)dealloc;
- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)navigationService:(id)service updateSignsWithInfo:(id)info;
- (void)navigationService:(id)service usePersistentDisplay:(BOOL)display;
- (void)navigationServiceDidEnterPreArrivalState:(id)state;
- (void)sessionDidConnect:(id)connect;
- (void)sessionDidDisconnect:(id)disconnect;
- (void)setCurrentlySuggestingURLs:(id)ls;
- (void)setIsCarPlaySessionConnected:(BOOL)connected;
- (void)setIsNavigating:(BOOL)navigating;
- (void)setShouldSuggestTurnCard:(BOOL)card;
- (void)setUsePersistentDisplay:(BOOL)display;
@end

@implementation CarClusterSuggestionController

- (void)navigationService:(id)service updateSignsWithInfo:(id)info
{
  serviceCopy = service;
  primarySign = [info primarySign];
  composedGuidanceEventIndex = [primarySign composedGuidanceEventIndex];

  route = [serviceCopy route];
  composedGuidanceEvents = [route composedGuidanceEvents];
  v11 = [composedGuidanceEvents count];

  if (v11 <= composedGuidanceEventIndex)
  {
    v14 = sub_1007999D0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "navigationService updateSignsWithInfo, navd sent incorrect guidanceEventIndex.", &v23, 2u);
    }
  }

  else
  {
    route2 = [serviceCopy route];
    composedGuidanceEvents2 = [route2 composedGuidanceEvents];
    v14 = [composedGuidanceEvents2 objectAtIndexedSubscript:composedGuidanceEventIndex];

    if (v14)
    {
      uUIDString = [(NSUUID *)self->_lastGuidanceEventId UUIDString];
      uniqueID = [v14 uniqueID];
      uUIDString2 = [uniqueID UUIDString];
      v18 = [uUIDString isEqualToString:uUIDString2];

      if ((v18 & 1) == 0)
      {
        uniqueID2 = [v14 uniqueID];
        lastGuidanceEventId = self->_lastGuidanceEventId;
        self->_lastGuidanceEventId = uniqueID2;

        v21 = sub_1007999D0();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          uUIDString3 = [(NSUUID *)self->_lastGuidanceEventId UUIDString];
          v23 = 138412290;
          v24 = uUIDString3;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "navigationService updateSignsWithInfo new guidanceEvent: %@, sending suggestion update.", &v23, 0xCu);
        }

        [(CarClusterSuggestionController *)self _sendOneTimeTurnCardSuggestion];
      }
    }
  }
}

- (void)navigationServiceDidEnterPreArrivalState:(id)state
{
  v4 = sub_1007999D0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "navigationService didEnterPreArrivalState, sending suggestion update.", v5, 2u);
  }

  [(CarClusterSuggestionController *)self _startSuggestingTurnCard];
}

- (void)navigationService:(id)service usePersistentDisplay:(BOOL)display
{
  displayCopy = display;
  v6 = sub_1007999D0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [NSNumber numberWithBool:displayCopy];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "navigationService updated usePersistentDisplay : %@", &v8, 0xCu);
  }

  [(CarClusterSuggestionController *)self setUsePersistentDisplay:displayCopy];
}

- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  if (MNNavigationServiceStateChangedToNavigating())
  {
    v6 = sub_1007999D0();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "navigationService changed state to .Navigating.", buf, 2u);
    }

    [(CarClusterSuggestionController *)self setIsNavigating:1];
    [(CarClusterSuggestionController *)self _sendOneTimeTurnCardSuggestion];
  }

  else if (MNNavigationServiceStateChangedFromNavigatingToStopped())
  {
    v7 = sub_1007999D0();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "navigationService changed state to .Stopped. Clearing out", v8, 2u);
    }

    [(CarClusterSuggestionController *)self setIsNavigating:0];
    [(CarClusterSuggestionController *)self _clear];
  }
}

- (void)sessionDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v5 = sub_1007999D0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = disconnectCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "sessionDidDisconnect: %@", &v6, 0xCu);
  }

  [(CarClusterSuggestionController *)self setIsCarPlaySessionConnected:0];
}

- (void)sessionDidConnect:(id)connect
{
  connectCopy = connect;
  v5 = sub_1007999D0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = connectCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "sessionDidConnect: %@", &v6, 0xCu);
  }

  [(CarClusterSuggestionController *)self setIsCarPlaySessionConnected:1];
}

- (void)_supportedUrlsChanged:(id)changed
{
  v4 = sub_1007999D0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "_supportedUrlsChanged: supported URLs changed, resending suggestUI.", v5, 2u);
  }

  [(CarClusterSuggestionController *)self _sendSuggestionIfNeeded];
}

- (void)_clear
{
  self->_isNavigating = 0;
  [(CarClusterSuggestionController *)self _stopSuggestingTurnCard];
  lastGuidanceEventId = self->_lastGuidanceEventId;
  self->_lastGuidanceEventId = 0;
}

- (void)_sendSuggestionIfNeeded
{
  selfCopy = self;
  currentSession = [(CarClusterSuggestionController *)self currentSession];

  currentSession2 = sub_1007999D0();
  v5 = os_log_type_enabled(currentSession2, OS_LOG_TYPE_INFO);
  if (!currentSession)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, currentSession2, OS_LOG_TYPE_INFO, "_sendSuggestionIfNeeded tried to send suggestUI but session was nil.", buf, 2u);
    }

    goto LABEL_30;
  }

  if (v5)
  {
    v6 = selfCopy->_currentlySuggestingURLs;
    v7 = v6;
    if (v6)
    {
      if ([(NSArray *)v6 count])
      {
        v24 = selfCopy;
        v25 = currentSession2;
        v8 = [NSMutableArray arrayWithCapacity:[(NSArray *)v7 count]];
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v23 = v7;
        v9 = v7;
        v10 = [(NSArray *)v9 countByEnumeratingWithState:&v26 objects:buf count:16];
        if (!v10)
        {
          goto LABEL_22;
        }

        v11 = v10;
        v12 = *v27;
        while (1)
        {
          v13 = 0;
          do
          {
            if (*v27 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v26 + 1) + 8 * v13);
            if (v14)
            {
              v15 = objc_opt_class();
              v16 = NSStringFromClass(v15);
              if ((objc_opt_respondsToSelector() & 1) == 0)
              {
                goto LABEL_15;
              }

              v17 = [v14 performSelector:"accessibilityIdentifier"];
              v18 = v17;
              if (v17 && ![v17 isEqualToString:v16])
              {
                v19 = [NSString stringWithFormat:@"%@<%p, %@>", v16, v14, v18];
              }

              else
              {

LABEL_15:
                v19 = [NSString stringWithFormat:@"%@<%p>", v16, v14];
              }

              goto LABEL_18;
            }

            v19 = @"<nil>";
LABEL_18:

            [v8 addObject:v19];
            v13 = v13 + 1;
          }

          while (v11 != v13);
          v20 = [(NSArray *)v9 countByEnumeratingWithState:&v26 objects:buf count:16];
          v11 = v20;
          if (!v20)
          {
LABEL_22:

            v21 = [(NSArray *)v9 componentsJoinedByString:@", "];
            v22 = [NSString stringWithFormat:@"<%p> [%@]", v9, v21];

            selfCopy = v24;
            currentSession2 = v25;
            v7 = v23;
            goto LABEL_27;
          }
        }
      }

      v22 = [NSString stringWithFormat:@"<%p> (empty)", v7];
    }

    else
    {
      v22 = @"<nil>";
    }

LABEL_27:

    *buf = 138412290;
    v31 = v22;
    _os_log_impl(&_mh_execute_header, currentSession2, OS_LOG_TYPE_INFO, "_sendSuggestionIfNeeded is sending the following URLs: %@", buf, 0xCu);
  }

  if ([(NSArray *)selfCopy->_currentlySuggestingURLs count])
  {
    currentSession2 = [(CarClusterSuggestionController *)selfCopy currentSession];
    [currentSession2 suggestUI:selfCopy->_currentlySuggestingURLs];
LABEL_30:
  }
}

- (void)_updateCurrentSuggestions
{
  v4 = +[NSMutableArray array];
  if (self->_shouldSuggestTurnCard)
  {
    [v4 addObjectsFromArray:self->_turnCardSuggestURLs];
  }

  if (self->_isNavigating)
  {
    [v4 addObjectsFromArray:self->_mapBasedSuggestURLs];
  }

  v3 = [v4 copy];
  [(CarClusterSuggestionController *)self setCurrentlySuggestingURLs:v3];
}

- (void)_stopSuggestingTurnCard
{
  [(CarClusterSuggestionController *)self _cancelStopSuggestingTurnCardTimerIfNeeded];
  v3 = sub_1007999D0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "_stopSuggestingTurnCard will stop suggesting if not already stopped", v4, 2u);
  }

  [(CarClusterSuggestionController *)self setShouldSuggestTurnCard:0];
}

- (void)_startSuggestingTurnCard
{
  if ([(NSArray *)self->_turnCardSuggestURLs count])
  {
    if (self->_stopSuggestingTurnCardTimer)
    {
      v3 = sub_1007999D0();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "_startSuggestingTurnCard, will cancel current stop suggestion timer.", buf, 2u);
      }

      [(CarClusterSuggestionController *)self _cancelStopSuggestingTurnCardTimerIfNeeded];
    }

    v4 = sub_1007999D0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "_startSuggestingTurnCard will start suggesting if not already suggesting", v6, 2u);
    }

    [(CarClusterSuggestionController *)self setShouldSuggestTurnCard:1];
  }

  else
  {
    v5 = sub_1007999D0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "_turnCardSuggestURLs is empty, not sending suggestUI.", v8, 2u);
    }
  }
}

- (void)_sendOneTimeTurnCardSuggestion
{
  v3 = sub_1007999D0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "_sendOneTimeTurnCardSuggestion, will cancel current stop suggestion timer.", v4, 2u);
  }

  [(CarClusterSuggestionController *)self _cancelStopSuggestingTurnCardTimerIfNeeded];
  [(CarClusterSuggestionController *)self _startSuggestingTurnCard];
  [(CarClusterSuggestionController *)self _scheduleStopSuggestingTurnCardTimerIfNeeded];
}

- (void)_stopSuggestingTurnCardTimerFired
{
  usePersistentDisplay = self->_usePersistentDisplay;
  v4 = sub_1007999D0();
  v5 = v4;
  if (usePersistentDisplay)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = [(CarClusterSuggestionController *)self debugDescription];
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "timer fired despite _usePersistentDisplay set to yes, currentState: %@", &v8, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = [(CarClusterSuggestionController *)self debugDescription];
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "timer fired, currentState: %@", &v8, 0xCu);
    }

    [(CarClusterSuggestionController *)self _cancelStopSuggestingTurnCardTimerIfNeeded];
    [(CarClusterSuggestionController *)self _stopSuggestingTurnCard];
  }
}

- (void)_cancelStopSuggestingTurnCardTimerIfNeeded
{
  stopSuggestingTurnCardTimer = self->_stopSuggestingTurnCardTimer;
  if (stopSuggestingTurnCardTimer)
  {
    [(NSTimer *)stopSuggestingTurnCardTimer invalidate];
    v4 = self->_stopSuggestingTurnCardTimer;
    self->_stopSuggestingTurnCardTimer = 0;
  }
}

- (void)_scheduleStopSuggestingTurnCardTimerIfNeeded
{
  if (!self->_stopSuggestingTurnCardTimer)
  {
    if (self->_usePersistentDisplay)
    {
      v3 = sub_1007999D0();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = [(CarClusterSuggestionController *)self debugDescription];
        v7 = 138412290;
        v8 = v4;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "scheduleStopSuggestingTurnCardTimerIfNeeded aborted, because _usePersistentDisplay is set. Current state: %@", &v7, 0xCu);
      }
    }

    else
    {
      v5 = [NSTimer scheduledTimerWithTimeInterval:self target:"_stopSuggestingTurnCardTimerFired" selector:0 userInfo:0 repeats:10.0];
      stopSuggestingTurnCardTimer = self->_stopSuggestingTurnCardTimer;
      self->_stopSuggestingTurnCardTimer = v5;
    }
  }
}

- (NSString)debugDescription
{
  selfCopy = self;
  v3 = self->_currentlySuggestingURLs;
  v4 = v3;
  if (v3)
  {
    if ([(NSArray *)v3 count])
    {
      v34 = selfCopy;
      v5 = [NSMutableArray arrayWithCapacity:[(NSArray *)v4 count]];
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v33 = v4;
      v6 = v4;
      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (!v7)
      {
        goto LABEL_20;
      }

      v8 = v7;
      v9 = *v36;
      while (1)
      {
        v10 = 0;
        do
        {
          if (*v36 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v35 + 1) + 8 * v10);
          if (v11)
          {
            v12 = objc_opt_class();
            v13 = NSStringFromClass(v12);
            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              goto LABEL_13;
            }

            v14 = [v11 performSelector:"accessibilityIdentifier"];
            v15 = v14;
            if (v14 && ![v14 isEqualToString:v13])
            {
              v16 = [NSString stringWithFormat:@"%@<%p, %@>", v13, v11, v15];
            }

            else
            {

LABEL_13:
              v16 = [NSString stringWithFormat:@"%@<%p>", v13, v11];
            }

            goto LABEL_16;
          }

          v16 = @"<nil>";
LABEL_16:

          [v5 addObject:v16];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v17 = [(NSArray *)v6 countByEnumeratingWithState:&v35 objects:v39 count:16];
        v8 = v17;
        if (!v17)
        {
LABEL_20:

          v18 = [(NSArray *)v6 componentsJoinedByString:@", "];
          v19 = [NSString stringWithFormat:@"<%p> [%@]", v6, v18];

          selfCopy = v34;
          v4 = v33;
          goto LABEL_23;
        }
      }
    }

    v19 = [NSString stringWithFormat:@"<%p> (empty)", v4];
  }

  else
  {
    v19 = @"<nil>";
  }

LABEL_23:

  if (selfCopy->_shouldSuggestTurnCard)
  {
    v20 = @"YES";
  }

  else
  {
    v20 = @"NO";
  }

  if (selfCopy->_isNavigating)
  {
    v21 = @"YES";
  }

  else
  {
    v21 = @"NO";
  }

  if (selfCopy->_usePersistentDisplay)
  {
    v22 = @"YES";
  }

  else
  {
    v22 = @"NO";
  }

  p_lastGuidanceEventId = &selfCopy->_lastGuidanceEventId;
  lastGuidanceEventId = selfCopy->_lastGuidanceEventId;
  if (p_lastGuidanceEventId[1])
  {
    v25 = @"YES";
  }

  else
  {
    v25 = @"NO";
  }

  v26 = v25;
  v27 = v22;
  v28 = v21;
  v29 = v20;
  uUIDString = [(NSUUID *)lastGuidanceEventId UUIDString];
  v31 = [NSString stringWithFormat:@"_currentlySuggestingURLs: %@, _shouldSuggestTurnCard: %@, _isNavigating: %@, usePersistentDisplay: %@, timerActive: %@, currentSignInfo: %@", v19, v29, v28, v27, v26, uUIDString];

  return v31;
}

- (void)setCurrentlySuggestingURLs:(id)ls
{
  lsCopy = ls;
  currentlySuggestingURLs = self->_currentlySuggestingURLs;
  v7 = lsCopy;
  v8 = currentlySuggestingURLs;
  if (v7 | v8)
  {
    v9 = v8;
    v10 = [v7 isEqual:v8];

    if ((v10 & 1) == 0)
    {
      objc_storeStrong(&self->_currentlySuggestingURLs, ls);
      v11 = sub_1007999D0();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = self->_currentlySuggestingURLs;
        v13 = v12;
        if (v12)
        {
          if ([(NSArray *)v12 count])
          {
            v30 = v11;
            v31 = v7;
            selfCopy = self;
            v14 = [NSMutableArray arrayWithCapacity:[(NSArray *)v13 count]];
            v33 = 0u;
            v34 = 0u;
            v35 = 0u;
            v36 = 0u;
            v29 = v13;
            v15 = v13;
            v16 = [(NSArray *)v15 countByEnumeratingWithState:&v33 objects:buf count:16];
            if (!v16)
            {
              goto LABEL_23;
            }

            v17 = v16;
            v18 = *v34;
            while (1)
            {
              v19 = 0;
              do
              {
                if (*v34 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v33 + 1) + 8 * v19);
                if (v20)
                {
                  v21 = objc_opt_class();
                  v22 = NSStringFromClass(v21);
                  if ((objc_opt_respondsToSelector() & 1) == 0)
                  {
                    goto LABEL_16;
                  }

                  v23 = [v20 performSelector:"accessibilityIdentifier"];
                  v24 = v23;
                  if (v23 && ![v23 isEqualToString:v22])
                  {
                    v25 = [NSString stringWithFormat:@"%@<%p, %@>", v22, v20, v24];
                  }

                  else
                  {

LABEL_16:
                    v25 = [NSString stringWithFormat:@"%@<%p>", v22, v20];
                  }

                  goto LABEL_19;
                }

                v25 = @"<nil>";
LABEL_19:

                [v14 addObject:v25];
                v19 = v19 + 1;
              }

              while (v17 != v19);
              v26 = [(NSArray *)v15 countByEnumeratingWithState:&v33 objects:buf count:16];
              v17 = v26;
              if (!v26)
              {
LABEL_23:

                v27 = [(NSArray *)v15 componentsJoinedByString:@", "];
                v28 = [NSString stringWithFormat:@"<%p> [%@]", v15, v27];

                v7 = v31;
                self = selfCopy;
                v13 = v29;
                v11 = v30;
                goto LABEL_26;
              }
            }
          }

          v28 = [NSString stringWithFormat:@"<%p> (empty)", v13];
        }

        else
        {
          v28 = @"<nil>";
        }

LABEL_26:

        *buf = 138412290;
        v38 = v28;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "currentlySuggestingURLs set to %@", buf, 0xCu);
      }

      [(CarClusterSuggestionController *)self _sendSuggestionIfNeeded];
    }
  }
}

- (void)setUsePersistentDisplay:(BOOL)display
{
  if (self->_usePersistentDisplay != display)
  {
    displayCopy = display;
    self->_usePersistentDisplay = display;
    v5 = sub_1007999D0();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
    if (displayCopy)
    {
      if (v6)
      {
        v7 = [(CarClusterSuggestionController *)self debugDescription];
        v9 = 138412290;
        v10 = v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "usePersistentDisplay set to YES. Canceling timer and sending suggestion. Current state: %@", &v9, 0xCu);
      }

      [(CarClusterSuggestionController *)self _startSuggestingTurnCard];
    }

    else
    {
      if (v6)
      {
        v8 = [(CarClusterSuggestionController *)self debugDescription];
        v9 = 138412290;
        v10 = v8;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "usePersistentDisplay set to NO. Scheduling timer. Current state: %@", &v9, 0xCu);
      }

      [(CarClusterSuggestionController *)self _cancelStopSuggestingTurnCardTimerIfNeeded];
      [(CarClusterSuggestionController *)self _scheduleStopSuggestingTurnCardTimerIfNeeded];
    }
  }
}

- (void)setShouldSuggestTurnCard:(BOOL)card
{
  if (self->_shouldSuggestTurnCard != card)
  {
    cardCopy = card;
    self->_shouldSuggestTurnCard = card;
    v5 = sub_1007999D0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (cardCopy)
      {
        v6 = @"YES";
      }

      v7 = v6;
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "shouldSuggestTurnCard set to: %@", &v8, 0xCu);
    }

    [(CarClusterSuggestionController *)self _updateCurrentSuggestions];
  }
}

- (void)setIsNavigating:(BOOL)navigating
{
  if (self->_isNavigating != navigating)
  {
    navigatingCopy = navigating;
    self->_isNavigating = navigating;
    v5 = sub_1007999D0();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (navigatingCopy)
      {
        v6 = @"YES";
      }

      v7 = v6;
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "isNavigating set to: %@", &v8, 0xCu);
    }

    [(CarClusterSuggestionController *)self _updateCurrentSuggestions];
  }
}

- (void)setIsCarPlaySessionConnected:(BOOL)connected
{
  if (self->_isCarPlaySessionConnected != connected)
  {
    self->_isCarPlaySessionConnected = connected;
    v4 = sub_1007999D0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      if (self->_isCarPlaySessionConnected)
      {
        v5 = @"YES";
      }

      else
      {
        v5 = @"NO";
      }

      v6 = v5;
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "isCarPlaySessionConnected set to: %@", &v7, 0xCu);
    }

    [(CarClusterSuggestionController *)self _sendSuggestionIfNeeded];
  }
}

- (void)dealloc
{
  [(CarClusterSuggestionController *)self _cancelStopSuggestingTurnCardTimerIfNeeded];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [(CARSessionStatus *)self->_carSessionStatus removeSessionObserver:self];
  v4 = +[MNNavigationService sharedService];
  [v4 unregisterObserver:self];

  v5.receiver = self;
  v5.super_class = CarClusterSuggestionController;
  [(CarClusterSuggestionController *)&v5 dealloc];
}

- (CarClusterSuggestionController)init
{
  v17.receiver = self;
  v17.super_class = CarClusterSuggestionController;
  v2 = [(CarClusterSuggestionController *)&v17 init];
  if (v2)
  {
    v3 = objc_alloc_init(CARSessionStatus);
    carSessionStatus = v2->_carSessionStatus;
    v2->_carSessionStatus = v3;

    [(CARSessionStatus *)v2->_carSessionStatus addSessionObserver:v2];
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v2 selector:"_supportedUrlsChanged:" name:@"CRInstrumentClusterURLsDidChangeNotification" object:0];

    v6 = [NSURL URLWithString:@"maps:/car/instrumentcluster/instructioncard"];
    v19 = v6;
    v7 = [NSArray arrayWithObjects:&v19 count:1];
    turnCardSuggestURLs = v2->_turnCardSuggestURLs;
    v2->_turnCardSuggestURLs = v7;

    v9 = [NSURL URLWithString:@"maps:/car/instrumentcluster/map"];
    v18[0] = v9;
    v10 = [NSURL URLWithString:@"maps:/car/instrumentcluster"];
    v18[1] = v10;
    v11 = [NSArray arrayWithObjects:v18 count:2];
    mapBasedSuggestURLs = v2->_mapBasedSuggestURLs;
    v2->_mapBasedSuggestURLs = v11;

    currentSession = [(CarClusterSuggestionController *)v2 currentSession];
    v2->_isCarPlaySessionConnected = currentSession != 0;

    v14 = +[MNNavigationService sharedService];
    [v14 registerObserver:v2];

    v15 = +[MNNavigationService sharedService];
    [v15 state];
    [(CarClusterSuggestionController *)v2 setIsNavigating:MNNavigationServiceStateIsNavigating()];

    [(CarClusterSuggestionController *)v2 _updateCurrentSuggestions];
  }

  return v2;
}

@end