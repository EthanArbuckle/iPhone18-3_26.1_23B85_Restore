@interface MTCrownFilterManager
+ (double)secondsFromMachTime:(unint64_t)a3;
- (MTCrownFilterManager)init;
- (id)filterButtonEvent:(id)a3;
- (id)filterDigitizerEvent:(id)a3;
- (id)filterEvent:(id)a3 fromService:(id)a4;
- (void)registerService:(id)a3;
- (void)unregisterService:(id)a3;
- (void)updateScrollMotionAccumulator:(id)a3;
@end

@implementation MTCrownFilterManager

+ (double)secondsFromMachTime:(unint64_t)a3
{
  if (secondsFromMachTime__once != -1)
  {
    +[MTCrownFilterManager secondsFromMachTime:];
  }

  LODWORD(v3) = secondsFromMachTime__timebase;
  LODWORD(v4) = *algn_D23C;
  return a3 * v3 / v4 / 1000000000.0;
}

- (MTCrownFilterManager)init
{
  v14.receiver = self;
  v14.super_class = MTCrownFilterManager;
  v2 = [(MTSessionFilterManager *)&v14 init];
  v3 = v2;
  if (v2)
  {
    touchService = v2->_touchService;
    v2->_touchService = 0;

    crownService = v3->_crownService;
    v3->_crownService = 0;

    buttonService = v3->_buttonService;
    v3->_buttonService = 0;

    v3->_touchFilterX1 = 0.0;
    v3->_touchFilterX2 = 0.0;
    v3->_touchFilterY1 = 0.0;
    v3->_touchFilterY2 = 0.0;
    v3->_menuButtonPressed = 0;
    v3->_helpButtonPressed = 0;
    v3->_buttonDownMachTime = 0;
    v3->_scrollAccumulatorDistance = 0.0;
    v3->_scrollAccumulatorMachTime = 0;
    v7 = objc_opt_new();
    activePathIDs = v3->_activePathIDs;
    v3->_activePathIDs = v7;

    v9 = objc_opt_new();
    cancelPathIDs = v3->_cancelPathIDs;
    v3->_cancelPathIDs = v9;

    v11 = objc_opt_new();
    consumePathIDs = v3->_consumePathIDs;
    v3->_consumePathIDs = v11;
  }

  return v3;
}

- (void)registerService:(id)a3
{
  v4 = a3;
  if ([v4 conformsToUsagePage:13 usage:4])
  {
    v5 = [v4 propertyForKey:@"CrownFilterRect"];
    if (v5)
    {
      [(MTCrownFilterManager *)self setTouchService:v4];
      v6 = [v5 objectForKeyedSubscript:@"X1"];
      -[MTCrownFilterManager setTouchFilterX1:](self, "setTouchFilterX1:", ([v6 intValue] / 100.0));

      v7 = [v5 objectForKeyedSubscript:@"X2"];
      -[MTCrownFilterManager setTouchFilterX2:](self, "setTouchFilterX2:", ([v7 intValue] / 100.0));

      v8 = [v5 objectForKeyedSubscript:@"Y1"];
      -[MTCrownFilterManager setTouchFilterY1:](self, "setTouchFilterY1:", ([v8 intValue] / 100.0));

      v9 = [v5 objectForKeyedSubscript:@"Y2"];
      -[MTCrownFilterManager setTouchFilterY2:](self, "setTouchFilterY2:", ([v9 intValue] / 100.0));

      v10 = MTLoggingCrownFilterManager();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        touchFilterX1 = self->_touchFilterX1;
        touchFilterY1 = self->_touchFilterY1;
        touchFilterX2 = self->_touchFilterX2;
        touchFilterY2 = self->_touchFilterY2;
        v15 = 134218752;
        v16 = touchFilterX1;
        v17 = 2048;
        v18 = touchFilterY1;
        v19 = 2048;
        v20 = touchFilterX2;
        v21 = 2048;
        v22 = touchFilterY2;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "MTCrownFilterManager: Filter Rect X1=%f Y1=%f X2=%f Y2=%f", &v15, 0x2Au);
      }
    }
  }

  else if ([v4 conformsToUsagePage:65291 usage:1])
  {
    [(MTCrownFilterManager *)self setCrownService:v4];
  }

  else if ([v4 conformsToUsagePage:11 usage:1])
  {
    [(MTCrownFilterManager *)self setButtonService:v4];
  }
}

- (void)unregisterService:(id)a3
{
  v8 = a3;
  v4 = [(MTCrownFilterManager *)self touchService];

  if (v4 == v8)
  {
    [(MTCrownFilterManager *)self setTouchService:0];
  }

  else
  {
    v5 = [(MTCrownFilterManager *)self crownService];

    if (v5 == v8)
    {
      [(MTCrownFilterManager *)self setCrownService:0];
    }

    else
    {
      v6 = [(MTCrownFilterManager *)self buttonService];

      v7 = v8;
      if (v6 != v8)
      {
        goto LABEL_8;
      }

      [(MTCrownFilterManager *)self setButtonService:0];
    }
  }

  v7 = v8;
LABEL_8:
}

- (id)filterEvent:(id)a3 fromService:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MTCrownFilterManager *)self touchService];
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = v8;
  v10 = [(MTCrownFilterManager *)self crownService];
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = v10;
  v12 = [(MTCrownFilterManager *)self buttonService];
  if (!v12)
  {

LABEL_9:
    goto LABEL_10;
  }

  v13 = v12;
  v14 = [(MTCrownFilterManager *)self touchService];
  if (v14 == v7)
  {
LABEL_15:

    goto LABEL_16;
  }

  v15 = [(MTCrownFilterManager *)self crownService];
  v16 = v15;
  if (v15 == v7)
  {

    goto LABEL_15;
  }

  v17 = [(MTCrownFilterManager *)self buttonService];

  if (v17 != v7)
  {
    goto LABEL_10;
  }

LABEL_16:
  v21 = [(MTCrownFilterManager *)self touchService];
  v22 = v21;
  if (v21 == v7)
  {
    v23 = [v6 type];

    if (v23 != 11)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v24 = [(MTCrownFilterManager *)self crownService];
  v25 = v24;
  if (v24 != v7)
  {

    goto LABEL_22;
  }

  v26 = [v6 type];

  if (v26 != 6)
  {
LABEL_10:
    v18 = v6;
    v6 = v18;
    goto LABEL_11;
  }

LABEL_22:
  v27 = [(MTCrownFilterManager *)self buttonService];

  if (v27 != v7)
  {
    [(MTCrownFilterManager *)self updateScrollMotionAccumulator:v6];
    if ([v6 type] == 11)
    {
      v28 = [(MTCrownFilterManager *)self filterDigitizerEvent:v6];

      v6 = v28;
    }

    goto LABEL_10;
  }

  v18 = [(MTCrownFilterManager *)self filterButtonEvent:v6];
LABEL_11:
  v19 = v18;

  return v19;
}

- (id)filterDigitizerEvent:(id)a3
{
  v68 = a3;
  v4 = [v68 children];
  v71 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v77 objects:v88 count:16];
  if (!v5)
  {
    v67 = 0;
    v72 = 0;
    goto LABEL_49;
  }

  v7 = v5;
  v67 = 0;
  v72 = 0;
  v8 = *v78;
  *&v6 = 134217984;
  v61 = v6;
  do
  {
    v9 = 0;
    v69 = v7;
    do
    {
      if (*v78 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v77 + 1) + 8 * v9);
      if ([v10 type] == 11)
      {
        v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v10 integerValueForField:720901]);
        v12 = [v10 integerValueForField:720903];
        v13 = [v10 integerValueForField:720905];
        v14 = [(MTCrownFilterManager *)self consumePathIDs];
        v15 = [v14 containsObject:v11];

        if (v15)
        {
          [v71 addObject:v10];
        }

        if (v13 == &dword_0 + 1)
        {
          v16 = [(MTCrownFilterManager *)self cancelPathIDs];
          if ([v16 containsObject:v11])
          {
            goto LABEL_14;
          }

          v17 = [(MTCrownFilterManager *)self consumePathIDs];
          v18 = [v17 containsObject:v11];

          if ((v18 & 1) == 0)
          {
            v16 = [(MTCrownFilterManager *)self activePathIDs];
            [v16 addObject:v11];
            goto LABEL_14;
          }
        }

        else
        {
          v19 = [(MTCrownFilterManager *)self activePathIDs];
          [v19 removeObject:v11];

          v16 = [(MTCrownFilterManager *)self consumePathIDs];
          [v16 removeObject:v11];
LABEL_14:
        }

        if ([(MTCrownFilterManager *)self touchIsNearCrown:v10])
        {
          v20 = [(MTCrownFilterManager *)self crownIsActive];
        }

        else
        {
          v20 = 0;
        }

        [MTCrownFilterManager secondsFromMachTime:mach_continuous_time() - [(MTCrownFilterManager *)self buttonDownMachTime]];
        v22 = v21;
        v23 = [(MTCrownFilterManager *)self buttonDownMachTime];
        v24 = v22 >= 0.5 || v23 == 0;
        v25 = !v24;
        if (!v24)
        {
          v26 = MTLoggingCrownFilterManager();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            *buf = v61;
            v83 = v22;
            _os_log_debug_impl(&dword_0, v26, OS_LOG_TYPE_DEBUG, "MTCrownFilterManager: Cancel touch button timeout = %f s", buf, 0xCu);
          }
        }

        if (v13 == &dword_0 + 1)
        {
          v27 = (v12 >> 1) & 1 & (v20 | v25);
          if ((v12 & 2) == 0 && v20 == 1)
          {
            v28 = 1;
LABEL_35:
            v30 = [(MTCrownFilterManager *)self consumePathIDs];
            [v30 addObject:v11];

            v31 = [(MTCrownFilterManager *)self activePathIDs];
            [v31 removeObject:v11];

            if (!v27 || (v28 & 1) != 0)
            {
              v32 = [v71 containsObject:v10];
              [v10 setIntegerValue:0 forField:720905];
              [v10 setIntegerValue:0 forField:720904];
              [v10 setIntegerValue:v12 | 0x83 forField:720903];
              v33 = [(MTCrownFilterManager *)self cancelPathIDs];
              [v33 removeObject:v11];

              [v10 position];
              v35 = v34;
              v37 = v36;
              v38 = MTLoggingCrownFilterManager();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
              {
                v39 = [v11 unsignedIntegerValue];
                *buf = 134218496;
                v83 = *&v39;
                v84 = 2048;
                v85 = v35;
                v86 = 2048;
                v87 = v37;
                _os_log_impl(&dword_0, v38, OS_LOG_TYPE_DEFAULT, "MTCrownFilterManager: Cancelling path id %lu at (%f, %f)", buf, 0x20u);
              }

              v67 += v32 ^ 1;
            }

            else
            {
              [v71 addObject:v10];
            }

LABEL_42:
            v40 = MTLoggingCrownFilterManager();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
            {
              v66 = [(MTCrownFilterManager *)self activePathIDs];
              v65 = [v66 allObjects];
              v63 = [v65 componentsJoinedByString:{@", "}];
              v64 = [(MTCrownFilterManager *)self cancelPathIDs];
              v62 = [v64 allObjects];
              v41 = [v62 componentsJoinedByString:{@", "}];
              v42 = [(MTCrownFilterManager *)self consumePathIDs];
              v43 = [v42 allObjects];
              v44 = [v43 componentsJoinedByString:{@", "}];
              *buf = 138412802;
              v83 = *&v63;
              v84 = 2112;
              v85 = v41;
              v86 = 2112;
              v87 = v44;
              _os_log_debug_impl(&dword_0, v40, OS_LOG_TYPE_DEBUG, "MTCrownFilterManager: Active = [%@], Cancel = [%@], Consume = [%@]", buf, 0x20u);
            }

            ++v72;

            v7 = v69;
            goto LABEL_45;
          }
        }

        else
        {
          v27 = 0;
        }

        v29 = [(MTCrownFilterManager *)self cancelPathIDs];
        v28 = [v29 containsObject:v11];

        if ((v28 & 1) != 0 || v27)
        {
          goto LABEL_35;
        }

        goto LABEL_42;
      }

LABEL_45:
      v9 = v9 + 1;
    }

    while (v7 != v9);
    v7 = [obj countByEnumeratingWithState:&v77 objects:v88 count:16];
  }

  while (v7);
LABEL_49:

  v45 = v71;
  if (v67 == v72 - [v71 count])
  {
    v46 = [v68 integerValueForField:720903];
    [v68 setIntegerValue:0 forField:720905];
    [v68 setIntegerValue:0 forField:720904];
    [v68 setIntegerValue:v46 | 0x83 forField:720903];
  }

  if ([v71 count] == v72)
  {
    v47 = MTLoggingCrownFilterManager();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      [MTCrownFilterManager filterDigitizerEvent:v47];
    }

    v48 = v68;
    v68 = 0;
  }

  else
  {
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v48 = v71;
    v49 = [v48 countByEnumeratingWithState:&v73 objects:v81 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v74;
      do
      {
        for (i = 0; i != v50; i = i + 1)
        {
          if (*v74 != v51)
          {
            objc_enumerationMutation(v48);
          }

          v53 = *(*(&v73 + 1) + 8 * i);
          v54 = [v53 integerValueForField:720901];
          [v53 position];
          v56 = v55;
          v58 = v57;
          v59 = MTLoggingCrownFilterManager();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134218496;
            v83 = *&v54;
            v84 = 2048;
            v85 = v56;
            v86 = 2048;
            v87 = v58;
            _os_log_debug_impl(&dword_0, v59, OS_LOG_TYPE_DEBUG, "MTCrownFilterManager: Consuming path id %ld at (%f, %f)", buf, 0x20u);
          }

          [v68 removeEvent:v53];
        }

        v50 = [v48 countByEnumeratingWithState:&v73 objects:v81 count:16];
      }

      while (v50);
      v45 = v71;
    }
  }

  return v68;
}

- (id)filterButtonEvent:(id)a3
{
  v4 = a3;
  if ([v4 type] == 3)
  {
    v5 = [v4 integerValueForField:196608];
    v6 = [v4 integerValueForField:196609];
    v7 = [v4 integerValueForField:196610];
    if (v5 == &dword_C)
    {
      v8 = v7;
      if (v6 == (&stru_68.size + 5))
      {
        [(MTCrownFilterManager *)self setHelpButtonPressed:v7 == &dword_0 + 1];
      }

      else
      {
        if (v6 != &stru_20.vmsize)
        {
          goto LABEL_16;
        }

        [(MTCrownFilterManager *)self setMenuButtonPressed:v7 == &dword_0 + 1];
      }

      if (v8 == &dword_0 + 1)
      {
        v9 = [(MTCrownFilterManager *)self cancelPathIDs];
        v10 = [(MTCrownFilterManager *)self activePathIDs];
        [v9 unionSet:v10];

        v11 = [(MTCrownFilterManager *)self activePathIDs];
        [v11 removeAllObjects];

        if (![(MTCrownFilterManager *)self buttonDownMachTime])
        {
          [(MTCrownFilterManager *)self setButtonDownMachTime:mach_continuous_time()];
        }
      }

      if (![(MTCrownFilterManager *)self menuButtonPressed]&& ![(MTCrownFilterManager *)self helpButtonPressed])
      {
        [(MTCrownFilterManager *)self setButtonDownMachTime:0];
      }

      v12 = MTLoggingCrownFilterManager();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [(MTCrownFilterManager *)self filterButtonEvent:v12];
      }
    }
  }

LABEL_16:

  return v4;
}

- (void)updateScrollMotionAccumulator:(id)a3
{
  v10 = a3;
  v4 = [v10 timestamp];
  v5 = 0.0;
  v6 = 0.0;
  if ([v10 type] == 6)
  {
    [v10 position];
    v6 = v7;
  }

  if (self->_scrollAccumulatorMachTime)
  {
    [MTCrownFilterManager secondsFromMachTime:v4 - [(MTCrownFilterManager *)self scrollAccumulatorMachTime]];
    v5 = v8;
  }

  v9 = pow(0.95, v5 / 0.00800000038);
  [(MTCrownFilterManager *)self setScrollAccumulatorDistance:fabs(v6) + self->_scrollAccumulatorDistance * v9];
  [(MTCrownFilterManager *)self setScrollAccumulatorMachTime:v4];
}

- (void)filterButtonEvent:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v3 = [a1 activePathIDs];
  v4 = [v3 allObjects];
  v5 = [v4 componentsJoinedByString:{@", "}];
  v6 = [a1 cancelPathIDs];
  v7 = [v6 allObjects];
  v8 = [v7 componentsJoinedByString:{@", "}];
  v9 = [a1 consumePathIDs];
  v10 = [v9 allObjects];
  v11 = [v10 componentsJoinedByString:{@", "}];
  *buf = 138412802;
  v14 = v5;
  v15 = 2112;
  v16 = v8;
  v17 = 2112;
  v18 = v11;
  _os_log_debug_impl(&dword_0, a2, OS_LOG_TYPE_DEBUG, "MTCrownFilterManager: Active = [%@], Cancel = [%@], Consume = [%@]", buf, 0x20u);
}

@end