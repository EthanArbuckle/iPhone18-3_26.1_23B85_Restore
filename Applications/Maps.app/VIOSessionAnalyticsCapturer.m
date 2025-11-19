@interface VIOSessionAnalyticsCapturer
- (BOOL)hasInFlightEntryWithUsageType:(int)a3;
- (BOOL)isRecording;
- (VIOSessionAnalyticsCapturer)init;
- (VIOSessionStateManager)stateManager;
- (void)completeInFlightEntriesExcluding:(id)a3 withExitReason:(int)a4;
- (void)completeInFlightEntriesForUsageType:(int)a3 withExitReason:(int)a4;
- (void)completeInFlightEntriesWithExitReason:(int)a3;
- (void)createEntryForUsageType:(int)a3 value:(id)a4;
- (void)dealloc;
- (void)disableEventReceived:(int64_t)a3;
- (void)disableEventReset:(int64_t)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)pauseRecording;
- (void)resumeRecording;
- (void)session:(id)a3 cameraDidChangeTrackingState:(id)a4;
- (void)session:(id)a3 didChangeState:(unint64_t)a4;
- (void)sessionInterruptionEnded:(id)a3;
- (void)sessionWasInterrupted:(id)a3;
- (void)setSession:(id)a3;
- (void)setStateManager:(id)a3;
- (void)startRecording;
- (void)stopRecording;
- (void)stopRecordingWithExitReason:(int)a3;
- (void)throttleDidBeginWithEvent:(int64_t)a3;
- (void)throttleDidEnd;
@end

@implementation VIOSessionAnalyticsCapturer

- (VIOSessionStateManager)stateManager
{
  WeakRetained = objc_loadWeakRetained(&self->_stateManager);

  return WeakRetained;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = +[NSUserDefaults standardUserDefaults];
  v14 = v13;
  if (v13 != v11)
  {

LABEL_6:
    v18.receiver = self;
    v18.super_class = VIOSessionAnalyticsCapturer;
    [(VIOSessionAnalyticsCapturer *)&v18 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
    goto LABEL_7;
  }

  v15 = [v10 isEqualToString:@"MapsWalkingEnableImageBasedHeading"];

  if (!v15)
  {
    goto LABEL_6;
  }

  v16 = [v12 objectForKey:NSKeyValueChangeNewKey];
  v17 = [v16 BOOLValue];

  if (v17)
  {
    [(VIOSessionAnalyticsCapturer *)self createEntryForUsageType:5 value:0];
  }

  else
  {
    [(VIOSessionAnalyticsCapturer *)self completeInFlightEntriesForUsageType:5 withExitReason:5];
  }

LABEL_7:
}

- (void)session:(id)a3 didChangeState:(unint64_t)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100BAB43C;
  v4[3] = &unk_101661650;
  v4[4] = self;
  v4[5] = a4;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)sessionInterruptionEnded:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100BAB504;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)sessionWasInterrupted:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100BAB588;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)session:(id)a3 cameraDidChangeTrackingState:(id)a4
{
  v5 = a4;
  if ([(VIOSessionAnalyticsCapturer *)self isPaused])
  {
    v7 = sub_10006D178();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v13 = "[VIOSessionAnalyticsCapturer session:cameraDidChangeTrackingState:]";
      v14 = 2080;
      v15 = "VIOSessionAnalyticsCapturer.m";
      v16 = 1024;
      v17 = 512;
      v18 = 2080;
      v19 = "!self.isPaused";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v8 = sub_10006D178();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v13 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100BAB7AC;
  v10[3] = &unk_101661A90;
  v10[4] = self;
  v11 = v5;
  v6 = v5;
  dispatch_async(&_dispatch_main_q, v10);
}

- (void)disableEventReset:(int64_t)a3
{
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v6 = dispatch_queue_get_label(0);
  if (label != v6)
  {
    v7 = !label || v6 == 0;
    if (v7 || strcmp(label, v6))
    {
      v13 = sub_10006D178();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v16 = 136316418;
        v17 = "[VIOSessionAnalyticsCapturer disableEventReset:]";
        v18 = 2080;
        v19 = "VIOSessionAnalyticsCapturer.m";
        v20 = 1024;
        v21 = 492;
        v22 = 2080;
        v23 = "dispatch_get_main_queue()";
        v24 = 2080;
        v25 = dispatch_queue_get_label(&_dispatch_main_q);
        v26 = 2080;
        v27 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v16, 0x3Au);
      }

      if (sub_100E03634())
      {
        v14 = sub_10006D178();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = +[NSThread callStackSymbols];
          v16 = 138412290;
          v17 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@", &v16, 0xCu);
        }
      }
    }
  }

  if ((a3 - 1) > 9)
  {
    v8 = 0;
  }

  else
  {
    v8 = dword_1012154D4[a3 - 1];
  }

  v9 = [(VIOSessionAnalyticsCapturer *)self stateManager];
  if ([v9 isDisabled])
  {
    v10 = v8;
  }

  else
  {
    v10 = 13;
  }

  [(VIOSessionAnalyticsCapturer *)self completeInFlightEntriesForUsageType:v8 withExitReason:v10];
  v11 = [(VIOSessionAnalyticsCapturer *)self stateManager];
  v12 = [v11 isDisabled];

  if ((v12 & 1) == 0)
  {
    [(VIOSessionAnalyticsCapturer *)self setIsInitializing:1];
    [(VIOSessionAnalyticsCapturer *)self setDidRecordInitializing:0];
  }
}

- (void)disableEventReceived:(int64_t)a3
{
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v6 = dispatch_queue_get_label(0);
  if (label != v6)
  {
    v7 = !label || v6 == 0;
    if (v7 || strcmp(label, v6))
    {
      v15 = sub_10006D178();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v21 = 136316418;
        v22 = "[VIOSessionAnalyticsCapturer disableEventReceived:]";
        v23 = 2080;
        v24 = "VIOSessionAnalyticsCapturer.m";
        v25 = 1024;
        v26 = 409;
        v27 = 2080;
        v28 = "dispatch_get_main_queue()";
        v29 = 2080;
        v30 = dispatch_queue_get_label(&_dispatch_main_q);
        v31 = 2080;
        v32 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v21, 0x3Au);
      }

      if (sub_100E03634())
      {
        v16 = sub_10006D178();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = +[NSThread callStackSymbols];
          v21 = 138412290;
          v22 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@", &v21, 0xCu);
        }
      }
    }
  }

  if ((a3 - 1) > 9)
  {
    v8 = 0;
  }

  else
  {
    v8 = dword_1012154D4[a3 - 1];
  }

  v9 = [NSNumber numberWithInt:v8];
  v10 = [&off_1016ED670 containsObject:v9];

  if ((v10 & 1) == 0)
  {
    v18 = sub_10006D178();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v21 = 136315906;
      v22 = "[VIOSessionAnalyticsCapturer disableEventReceived:]";
      v23 = 2080;
      v24 = "VIOSessionAnalyticsCapturer.m";
      v25 = 1024;
      v26 = 427;
      v27 = 2080;
      v28 = "[allDisableEvents containsObject:@(usageType)]";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v21, 0x26u);
    }

    if (sub_100E03634())
    {
      v19 = sub_10006D178();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = +[NSThread callStackSymbols];
        v21 = 138412290;
        v22 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%@", &v21, 0xCu);
      }
    }
  }

  if (![(VIOSessionAnalyticsCapturer *)self hasInFlightEntryWithUsageType:v8])
  {
    if ([(VIOSessionAnalyticsCapturer *)self isInitializing])
    {
      v13 = 16;
    }

    else
    {
      v13 = v8;
    }

    [(VIOSessionAnalyticsCapturer *)self completeInFlightEntriesExcluding:&off_1016ED670 withExitReason:v13];
    if (a3 <= 4)
    {
      if (a3 > 1)
      {
        if (a3 != 2 && a3 != 3)
        {
          goto LABEL_33;
        }

        goto LABEL_34;
      }

      if (a3)
      {
        if (a3 != 1)
        {
          return;
        }

        goto LABEL_34;
      }
    }

    else
    {
      if (a3 <= 7)
      {
        if (a3 != 6)
        {
          goto LABEL_33;
        }

LABEL_34:
        GEOConfigGetDouble();
        v14 = [NSNumber numberWithDouble:?];
        [(VIOSessionAnalyticsCapturer *)self createEntryForUsageType:v8 value:v14];

        return;
      }

      if (a3 == 8 || a3 == 9)
      {
        goto LABEL_34;
      }

      if (a3 != 10)
      {
        return;
      }
    }

LABEL_33:
    [(VIOSessionAnalyticsCapturer *)self createEntryForUsageType:v8 value:0];
    return;
  }

  v11 = sub_100BAC298();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = off_10164C5C8[v8];
    v21 = 138477827;
    v22 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Already tracking an in-flight disable event entry with usage type: %{private}@; ignoring event", &v21, 0xCu);
  }
}

- (void)throttleDidEnd
{
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v4 = dispatch_queue_get_label(0);
  if (label != v4)
  {
    v5 = !label || v4 == 0;
    if (v5 || strcmp(label, v4))
    {
      v6 = sub_10006D178();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v9 = 136316418;
        v10 = "[VIOSessionAnalyticsCapturer throttleDidEnd]";
        v11 = 2080;
        v12 = "VIOSessionAnalyticsCapturer.m";
        v13 = 1024;
        v14 = 399;
        v15 = 2080;
        v16 = "dispatch_get_main_queue()";
        v17 = 2080;
        v18 = dispatch_queue_get_label(&_dispatch_main_q);
        v19 = 2080;
        v20 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v9, 0x3Au);
      }

      if (sub_100E03634())
      {
        v7 = sub_10006D178();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v8 = +[NSThread callStackSymbols];
          v9 = 138412290;
          v10 = v8;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@", &v9, 0xCu);
        }
      }
    }
  }

  [(VIOSessionAnalyticsCapturer *)self completeInFlightEntriesWithExitReason:13];
  [(VIOSessionAnalyticsCapturer *)self setIsInitializing:1];
  [(VIOSessionAnalyticsCapturer *)self setDidRecordInitializing:0];
}

- (void)throttleDidBeginWithEvent:(int64_t)a3
{
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v6 = dispatch_queue_get_label(0);
  if (label != v6)
  {
    v7 = !label || v6 == 0;
    if (v7 || strcmp(label, v6))
    {
      v13 = sub_10006D178();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v16 = 136316418;
        v17 = "[VIOSessionAnalyticsCapturer throttleDidBeginWithEvent:]";
        v18 = 2080;
        v19 = "VIOSessionAnalyticsCapturer.m";
        v20 = 1024;
        v21 = 383;
        v22 = 2080;
        v23 = "dispatch_get_main_queue()";
        v24 = 2080;
        v25 = dispatch_queue_get_label(&_dispatch_main_q);
        v26 = 2080;
        v27 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v16, 0x3Au);
      }

      if (sub_100E03634())
      {
        v14 = sub_10006D178();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = +[NSThread callStackSymbols];
          v16 = 138412290;
          v17 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@", &v16, 0xCu);
        }
      }
    }
  }

  GEOConfigGetDouble();
  v9 = v8;
  if (a3)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  if ([(VIOSessionAnalyticsCapturer *)self isInitializing])
  {
    v11 = 16;
  }

  else
  {
    v11 = v10;
  }

  [(VIOSessionAnalyticsCapturer *)self completeInFlightEntriesWithExitReason:v11];
  v12 = [NSNumber numberWithDouble:v9];
  [(VIOSessionAnalyticsCapturer *)self createEntryForUsageType:v10 value:v12];
}

- (BOOL)hasInFlightEntryWithUsageType:(int)a3
{
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v6 = dispatch_queue_get_label(0);
  if (label != v6)
  {
    v7 = !label || v6 == 0;
    if (v7 || strcmp(label, v6))
    {
      v17 = sub_10006D178();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v26 = "[VIOSessionAnalyticsCapturer hasInFlightEntryWithUsageType:]";
        v27 = 2080;
        v28 = "VIOSessionAnalyticsCapturer.m";
        v29 = 1024;
        v30 = 368;
        v31 = 2080;
        v32 = "dispatch_get_main_queue()";
        v33 = 2080;
        v34 = dispatch_queue_get_label(&_dispatch_main_q);
        v35 = 2080;
        v36 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", buf, 0x3Au);
      }

      if (sub_100E03634())
      {
        v18 = sub_10006D178();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v26 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [(VIOSessionAnalyticsCapturer *)self recordedEntries];
  v9 = [v8 allObjects];

  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        if ([v14 usageType] == a3 && !objc_msgSend(v14, "isComplete"))
        {
          v15 = 1;
          goto LABEL_18;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_18:

  return v15;
}

- (void)completeInFlightEntriesExcluding:(id)a3 withExitReason:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v8 = dispatch_queue_get_label(0);
  if (label != v8)
  {
    v9 = !label || v8 == 0;
    if (v9 || strcmp(label, v8))
    {
      v21 = sub_10006D178();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v31 = "[VIOSessionAnalyticsCapturer completeInFlightEntriesExcluding:withExitReason:]";
        v32 = 2080;
        v33 = "VIOSessionAnalyticsCapturer.m";
        v34 = 1024;
        v35 = 356;
        v36 = 2080;
        v37 = "dispatch_get_main_queue()";
        v38 = 2080;
        v39 = dispatch_queue_get_label(&_dispatch_main_q);
        v40 = 2080;
        v41 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", buf, 0x3Au);
      }

      if (sub_100E03634())
      {
        v22 = sub_10006D178();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v31 = v23;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = [(VIOSessionAnalyticsCapturer *)self recordedEntries];
  v11 = [v10 allObjects];

  v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v12)
  {
    v14 = v12;
    v15 = *v26;
    *&v13 = 138477827;
    v24 = v13;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v25 + 1) + 8 * i);
        if (([v17 isComplete] & 1) == 0)
        {
          v18 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v17 usageType]);
          v19 = [v6 containsObject:v18];

          if ((v19 & 1) == 0)
          {
            [v17 completeEntryWithReason:v4];
            v20 = sub_100BAC298();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              *buf = v24;
              v31 = v17;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Completing entry: %{private}@", buf, 0xCu);
            }
          }
        }
      }

      v14 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v14);
  }
}

- (void)completeInFlightEntriesForUsageType:(int)a3 withExitReason:(int)a4
{
  v4 = *&a4;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v8 = dispatch_queue_get_label(0);
  if (label != v8)
  {
    v9 = !label || v8 == 0;
    if (v9 || strcmp(label, v8))
    {
      v19 = sub_10006D178();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v29 = "[VIOSessionAnalyticsCapturer completeInFlightEntriesForUsageType:withExitReason:]";
        v30 = 2080;
        v31 = "VIOSessionAnalyticsCapturer.m";
        v32 = 1024;
        v33 = 344;
        v34 = 2080;
        v35 = "dispatch_get_main_queue()";
        v36 = 2080;
        v37 = dispatch_queue_get_label(&_dispatch_main_q);
        v38 = 2080;
        v39 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", buf, 0x3Au);
      }

      if (sub_100E03634())
      {
        v20 = sub_10006D178();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v29 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = [(VIOSessionAnalyticsCapturer *)self recordedEntries];
  v11 = [v10 allObjects];

  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v14 = v12;
    v15 = *v24;
    *&v13 = 138477827;
    v22 = v13;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        if (([v17 isComplete] & 1) == 0 && objc_msgSend(v17, "usageType") == a3)
        {
          [v17 completeEntryWithReason:v4];
          v18 = sub_100BAC298();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            *buf = v22;
            v29 = v17;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Completing entry: %{private}@", buf, 0xCu);
          }
        }
      }

      v14 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v14);
  }
}

- (void)completeInFlightEntriesWithExitReason:(int)a3
{
  v3 = *&a3;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v6 = dispatch_queue_get_label(0);
  if (label != v6)
  {
    v7 = !label || v6 == 0;
    if (v7 || strcmp(label, v6))
    {
      v17 = sub_10006D178();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v27 = "[VIOSessionAnalyticsCapturer completeInFlightEntriesWithExitReason:]";
        v28 = 2080;
        v29 = "VIOSessionAnalyticsCapturer.m";
        v30 = 1024;
        v31 = 332;
        v32 = 2080;
        v33 = "dispatch_get_main_queue()";
        v34 = 2080;
        v35 = dispatch_queue_get_label(&_dispatch_main_q);
        v36 = 2080;
        v37 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", buf, 0x3Au);
      }

      if (sub_100E03634())
      {
        v18 = sub_10006D178();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v27 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [(VIOSessionAnalyticsCapturer *)self recordedEntries];
  v9 = [v8 allObjects];

  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v22;
    *&v11 = 138477827;
    v20 = v11;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        if (([v15 isComplete] & 1) == 0)
        {
          [v15 completeEntryWithReason:v3];
          v16 = sub_100BAC298();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            *buf = v20;
            v27 = v15;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Completing entry: %{private}@", buf, 0xCu);
          }
        }
      }

      v12 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }
}

- (void)createEntryForUsageType:(int)a3 value:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v8 = dispatch_queue_get_label(0);
  if (label != v8)
  {
    v9 = !label || v8 == 0;
    if (v9 || strcmp(label, v8))
    {
      v15 = sub_10006D178();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v22 = "[VIOSessionAnalyticsCapturer createEntryForUsageType:value:]";
        v23 = 2080;
        v24 = "VIOSessionAnalyticsCapturer.m";
        v25 = 1024;
        v26 = 317;
        v27 = 2080;
        v28 = "dispatch_get_main_queue()";
        v29 = 2080;
        v30 = dispatch_queue_get_label(&_dispatch_main_q);
        v31 = 2080;
        v32 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", buf, 0x3Au);
      }

      if (sub_100E03634())
      {
        v16 = sub_10006D178();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v22 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }
  }

  if (![(VIOSessionAnalyticsCapturer *)self isRecording])
  {
    v18 = sub_10006D178();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v22 = "[VIOSessionAnalyticsCapturer createEntryForUsageType:value:]";
      v23 = 2080;
      v24 = "VIOSessionAnalyticsCapturer.m";
      v25 = 1024;
      v26 = 319;
      v27 = 2080;
      v28 = "self.isRecording";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
    }

    if (sub_100E03634())
    {
      v19 = sub_10006D178();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v22 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }

  v10 = [(VIOSessionAnalyticsCapturer *)self recordedEntries];
  v11 = [v10 count];

  if (v11 <= 0xF9)
  {
    v12 = [[VIOSessionAnalyticsEntry alloc] initWithUsageType:v4 value:v6];
    v13 = sub_100BAC298();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138477827;
      v22 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Creating new entry: %{private}@", buf, 0xCu);
    }

    v14 = [(VIOSessionAnalyticsCapturer *)self recordedEntries];
    [(__CFString *)v14 addObject:v12];
    goto LABEL_17;
  }

  v12 = sub_100BAC298();
  if (os_log_type_enabled(&v12->super, OS_LOG_TYPE_DEBUG))
  {
    if (v4 >= 0x1A)
    {
      v14 = [NSString stringWithFormat:@"(unknown: %i)", v4];
    }

    else
    {
      v14 = off_10164C4F8[v4];
    }

    *buf = 134218242;
    v22 = 250;
    v23 = 2112;
    v24 = v14;
    _os_log_impl(&_mh_execute_header, &v12->super, OS_LOG_TYPE_DEBUG, "Reached entry limit (%lu) for a single nav session. Ignoring entry of type: %@", buf, 0x16u);
LABEL_17:
  }
}

- (BOOL)isRecording
{
  v2 = [(VIOSessionAnalyticsCapturer *)self lastRecordingStartDate];
  v3 = v2 != 0;

  return v3;
}

- (void)stopRecordingWithExitReason:(int)a3
{
  v3 = *&a3;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v6 = dispatch_queue_get_label(0);
  if (label != v6)
  {
    v7 = !label || v6 == 0;
    if (v7 || strcmp(label, v6))
    {
      v26 = sub_10006D178();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v29 = 136316418;
        v30 = "[VIOSessionAnalyticsCapturer stopRecordingWithExitReason:]";
        v31 = 2080;
        v32 = "VIOSessionAnalyticsCapturer.m";
        v33 = 1024;
        v34 = 271;
        v35 = 2080;
        v36 = "dispatch_get_main_queue()";
        v37 = 2080;
        v38 = dispatch_queue_get_label(&_dispatch_main_q);
        v39 = 2080;
        v40 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v29, 0x3Au);
      }

      if (sub_100E03634())
      {
        v27 = sub_10006D178();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = +[NSThread callStackSymbols];
          v29 = 138412290;
          v30 = v28;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%@", &v29, 0xCu);
        }
      }
    }
  }

  v8 = sub_100BAC298();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v29 = 136315138;
    v30 = "[VIOSessionAnalyticsCapturer stopRecordingWithExitReason:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "%s", &v29, 0xCu);
  }

  v9 = [(VIOSessionAnalyticsCapturer *)self session];
  v10 = [v9 configuration];
  v11 = [v10 isVLF];

  v12 = [(VIOSessionAnalyticsCapturer *)self stateManager];
  [v12 removeObserver:self];

  [(VIOSessionAnalyticsCapturer *)self setStateManager:0];
  v13 = [(VIOSessionAnalyticsCapturer *)self session];
  [v13 _removeObserver:self];

  [(VIOSessionAnalyticsCapturer *)self setSession:0];
  v14 = [(VIOSessionAnalyticsCapturer *)self recordedEntries];
  v15 = [v14 count];

  if (v15)
  {
    [(VIOSessionAnalyticsCapturer *)self completeInFlightEntriesWithExitReason:v3];
    v16 = [(VIOSessionAnalyticsCapturer *)self recordedEntries];
    v17 = [v16 allObjects];
    v18 = [v17 sortedArrayUsingComparator:&stru_10164C478];

    v19 = sub_100BAC298();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v29 = 138477827;
      v30 = v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Captured entries: %{private}@", &v29, 0xCu);
    }

    v20 = sub_100021DB0(v18, &stru_10164C4B8);
    v21 = +[NSDate date];
    v22 = [(VIOSessionAnalyticsCapturer *)self lastRecordingStartDate];
    [v21 timeIntervalSinceDate:v22];
    v24 = ceil(v23);

    v25 = [NSNumber numberWithDouble:v24];
    [GEOAPPortal captureMarcoLiteWithTotalNavTime:v25 usageStates:v20 vioTrigger:v11];
  }

  [(VIOSessionAnalyticsCapturer *)self setLastRecordingStartDate:0];
  [(VIOSessionAnalyticsCapturer *)self setRecordedEntries:0];
  [(VIOSessionAnalyticsCapturer *)self setIsInitializing:0];
  [(VIOSessionAnalyticsCapturer *)self setDidRecordInitializing:0];
}

- (void)stopRecording
{
  [(VIOSessionAnalyticsCapturer *)self stopRecordingWithExitReason:15];

  [(VIOSessionAnalyticsCapturer *)self setShouldBeRecording:0];
}

- (void)resumeRecording
{
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v4 = dispatch_queue_get_label(0);
  if (label != v4)
  {
    v5 = !label || v4 == 0;
    if (v5 || strcmp(label, v4))
    {
      v7 = sub_10006D178();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v10 = 136316418;
        v11 = "[VIOSessionAnalyticsCapturer resumeRecording]";
        v12 = 2080;
        v13 = "VIOSessionAnalyticsCapturer.m";
        v14 = 1024;
        v15 = 241;
        v16 = 2080;
        v17 = "dispatch_get_main_queue()";
        v18 = 2080;
        v19 = dispatch_queue_get_label(&_dispatch_main_q);
        v20 = 2080;
        v21 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v10, 0x3Au);
      }

      if (sub_100E03634())
      {
        v8 = sub_10006D178();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = +[NSThread callStackSymbols];
          v10 = 138412290;
          v11 = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@", &v10, 0xCu);
        }
      }
    }
  }

  v6 = sub_100BAC298();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315138;
    v11 = "[VIOSessionAnalyticsCapturer resumeRecording]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s", &v10, 0xCu);
  }

  if ([(VIOSessionAnalyticsCapturer *)self isPaused]&& ![(VIOSessionAnalyticsCapturer *)self isRecording])
  {
    [(VIOSessionAnalyticsCapturer *)self setPaused:0];
    if ([(VIOSessionAnalyticsCapturer *)self shouldBeRecording])
    {
      [(VIOSessionAnalyticsCapturer *)self startRecording];
    }
  }
}

- (void)pauseRecording
{
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v4 = dispatch_queue_get_label(0);
  if (label != v4)
  {
    v5 = !label || v4 == 0;
    if (v5 || strcmp(label, v4))
    {
      v7 = sub_10006D178();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v10 = 136316418;
        v11 = "[VIOSessionAnalyticsCapturer pauseRecording]";
        v12 = 2080;
        v13 = "VIOSessionAnalyticsCapturer.m";
        v14 = 1024;
        v15 = 222;
        v16 = 2080;
        v17 = "dispatch_get_main_queue()";
        v18 = 2080;
        v19 = dispatch_queue_get_label(&_dispatch_main_q);
        v20 = 2080;
        v21 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v10, 0x3Au);
      }

      if (sub_100E03634())
      {
        v8 = sub_10006D178();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = +[NSThread callStackSymbols];
          v10 = 138412290;
          v11 = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@", &v10, 0xCu);
        }
      }
    }
  }

  v6 = sub_100BAC298();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315138;
    v11 = "[VIOSessionAnalyticsCapturer pauseRecording]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s", &v10, 0xCu);
  }

  if ([(VIOSessionAnalyticsCapturer *)self isRecording])
  {
    if (![(VIOSessionAnalyticsCapturer *)self isPaused])
    {
      [(VIOSessionAnalyticsCapturer *)self setPaused:1];
      [(VIOSessionAnalyticsCapturer *)self stopRecordingWithExitReason:18];
    }
  }
}

- (void)startRecording
{
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v4 = dispatch_queue_get_label(0);
  if (label != v4)
  {
    v5 = !label || v4 == 0;
    if (v5 || strcmp(label, v4))
    {
      v13 = sub_10006D178();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v16 = 136316418;
        v17 = "[VIOSessionAnalyticsCapturer startRecording]";
        v18 = 2080;
        v19 = "VIOSessionAnalyticsCapturer.m";
        v20 = 1024;
        v21 = 198;
        v22 = 2080;
        v23 = "dispatch_get_main_queue()";
        v24 = 2080;
        v25 = dispatch_queue_get_label(&_dispatch_main_q);
        v26 = 2080;
        v27 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v16, 0x3Au);
      }

      if (sub_100E03634())
      {
        v14 = sub_10006D178();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = +[NSThread callStackSymbols];
          v16 = 138412290;
          v17 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@", &v16, 0xCu);
        }
      }
    }
  }

  v6 = sub_100BAC298();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v16 = 136315138;
    v17 = "[VIOSessionAnalyticsCapturer startRecording]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%s", &v16, 0xCu);
  }

  v7 = [(VIOSessionAnalyticsCapturer *)self lastRecordingStartDate];

  if (v7)
  {
    v8 = sub_100BAC298();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Tried to start recording when we're already recording; ignoring", &v16, 2u);
    }
  }

  else
  {
    [(VIOSessionAnalyticsCapturer *)self setShouldBeRecording:1];
    v9 = +[NSDate date];
    [(VIOSessionAnalyticsCapturer *)self setLastRecordingStartDate:v9];

    v10 = +[NSMutableSet set];
    [(VIOSessionAnalyticsCapturer *)self setRecordedEntries:v10];

    v11 = +[NSUserDefaults standardUserDefaults];
    v12 = [v11 BOOLForKey:@"MapsWalkingEnableImageBasedHeading"];

    if (v12)
    {
      [(VIOSessionAnalyticsCapturer *)self setIsInitializing:1];
      [(VIOSessionAnalyticsCapturer *)self setDidRecordInitializing:0];
    }

    else
    {
      [(VIOSessionAnalyticsCapturer *)self createEntryForUsageType:5 value:0];
    }
  }
}

- (void)setSession:(id)a3
{
  v5 = a3;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v7 = dispatch_queue_get_label(0);
  if (label != v7)
  {
    v8 = !label || v7 == 0;
    if (v8 || strcmp(label, v7))
    {
      v10 = sub_10006D178();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v13 = 136316418;
        v14 = "[VIOSessionAnalyticsCapturer setSession:]";
        v15 = 2080;
        v16 = "VIOSessionAnalyticsCapturer.m";
        v17 = 1024;
        v18 = 181;
        v19 = 2080;
        v20 = "dispatch_get_main_queue()";
        v21 = 2080;
        v22 = dispatch_queue_get_label(&_dispatch_main_q);
        v23 = 2080;
        v24 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", &v13, 0x3Au);
      }

      if (sub_100E03634())
      {
        v11 = sub_10006D178();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v12 = +[NSThread callStackSymbols];
          v13 = 138412290;
          v14 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@", &v13, 0xCu);
        }
      }
    }
  }

  if (self->_session != v5)
  {
    v9 = sub_100BAC298();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v13 = 136315138;
      v14 = "[VIOSessionAnalyticsCapturer setSession:]";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s", &v13, 0xCu);
    }

    [(ARSession *)self->_session _removeObserver:self];
    objc_storeStrong(&self->_session, a3);
    [(ARSession *)self->_session _addObserver:self];
  }
}

- (void)setStateManager:(id)a3
{
  v4 = a3;
  label = dispatch_queue_get_label(&_dispatch_main_q);
  v6 = dispatch_queue_get_label(0);
  if (label != v6)
  {
    v7 = !label || v6 == 0;
    if (v7 || strcmp(label, v6))
    {
      v17 = sub_10006D178();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        v32 = "[VIOSessionAnalyticsCapturer setStateManager:]";
        v33 = 2080;
        v34 = "VIOSessionAnalyticsCapturer.m";
        v35 = 1024;
        v36 = 153;
        v37 = 2080;
        v38 = "dispatch_get_main_queue()";
        v39 = 2080;
        v40 = dispatch_queue_get_label(&_dispatch_main_q);
        v41 = 2080;
        v42 = dispatch_queue_get_label(0);
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion on queue failed: %s/%s; actual queue: %s", buf, 0x3Au);
      }

      if (sub_100E03634())
      {
        v18 = sub_10006D178();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v32 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_stateManager);

  if (WeakRetained != v4)
  {
    v9 = sub_100BAC298();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v32 = "[VIOSessionAnalyticsCapturer setStateManager:]";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
    }

    v10 = objc_loadWeakRetained(&self->_stateManager);
    [v10 removeObserver:self];

    v11 = objc_storeWeak(&self->_stateManager, v4);
    [v4 addObserver:self];

    if (![(VIOSessionAnalyticsCapturer *)self isRecording])
    {
      v20 = sub_10006D178();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v32 = "[VIOSessionAnalyticsCapturer setStateManager:]";
        v33 = 2080;
        v34 = "VIOSessionAnalyticsCapturer.m";
        v35 = 1024;
        v36 = 165;
        v37 = 2080;
        v38 = "self.isRecording";
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
      }

      if (sub_100E03634())
      {
        v21 = sub_10006D178();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v32 = v22;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }

    if ([v4 isDisabled])
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v12 = [v4 disableEventReasons];
      v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v27;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v27 != v15)
            {
              objc_enumerationMutation(v12);
            }

            -[VIOSessionAnalyticsCapturer disableEventReceived:](self, "disableEventReceived:", [*(*(&v26 + 1) + 8 * i) integerValue]);
          }

          v14 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v14);
      }
    }

    if ([v4 isThrottling])
    {
      v23 = sub_10006D178();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v32 = "[VIOSessionAnalyticsCapturer setStateManager:]";
        v33 = 2080;
        v34 = "VIOSessionAnalyticsCapturer.m";
        v35 = 1024;
        v36 = 173;
        v37 = 2080;
        v38 = "!stateManager.isThrottling";
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
      }

      if (sub_100E03634())
      {
        v24 = sub_10006D178();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v32 = v25;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }
    }
  }
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_stateManager);
  [WeakRetained removeObserver:self];

  [(ARSession *)self->_session _removeObserver:self];
  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 removeObserver:self forKeyPath:@"MapsWalkingEnableImageBasedHeading"];

  v5.receiver = self;
  v5.super_class = VIOSessionAnalyticsCapturer;
  [(VIOSessionAnalyticsCapturer *)&v5 dealloc];
}

- (VIOSessionAnalyticsCapturer)init
{
  v5.receiver = self;
  v5.super_class = VIOSessionAnalyticsCapturer;
  v2 = [(VIOSessionAnalyticsCapturer *)&v5 init];
  if (v2)
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    [v3 addObserver:v2 forKeyPath:@"MapsWalkingEnableImageBasedHeading" options:1 context:0];
  }

  return v2;
}

@end