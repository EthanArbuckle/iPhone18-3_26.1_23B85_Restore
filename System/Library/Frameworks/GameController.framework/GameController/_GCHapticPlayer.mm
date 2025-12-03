@interface _GCHapticPlayer
- (BOOL)hasProcessedActiveEventsAfterTime:(double)time;
- (BOOL)hasScheduledEventsByTime:(double)time;
- (BOOL)isMuted;
- (BOOL)isMutedForReason:(unint64_t)reason;
- (BOOL)transientsEnqueuedSinceLastQuery;
- (_GCHapticLogicalDevice)hapticLogicalDevice;
- (_GCHapticPlayer)initWithIdentifier:(unint64_t)identifier actuators:(id)actuators client:(id)client;
- (double)totalLifetimeInSeconds;
- (float)continuousIntensity;
- (float)continuousSharpness;
- (void)clearParameters;
- (void)dealloc;
- (void)handleCommand:(id)command;
- (void)processSliceForLogicalDevice:(id)device startTime:(double)time endTime:(double)endTime;
- (void)scheduleCommand:(const void *)command;
- (void)setMute:(BOOL)mute forReason:(unint64_t)reason;
- (void)setRetainedByClient:(BOOL)client;
- (void)teardown;
@end

@implementation _GCHapticPlayer

- (_GCHapticPlayer)initWithIdentifier:(unint64_t)identifier actuators:(id)actuators client:(id)client
{
  actuatorsCopy = actuators;
  clientCopy = client;
  v26.receiver = self;
  v26.super_class = _GCHapticPlayer;
  v10 = [(_GCHapticPlayer *)&v26 init];
  if (v10)
  {
    v11 = [actuatorsCopy copy];
    actuators = v10->_actuators;
    v10->_actuators = v11;

    array = [MEMORY[0x1E695DF70] array];
    scheduledCommands = v10->_scheduledCommands;
    v10->_scheduledCommands = array;

    array2 = [MEMORY[0x1E695DF70] array];
    activeHapticEvents = v10->_activeHapticEvents;
    v10->_activeHapticEvents = array2;

    array3 = [MEMORY[0x1E695DF70] array];
    eventsToRemove = v10->_eventsToRemove;
    v10->_eventsToRemove = array3;

    array4 = [MEMORY[0x1E695DF70] array];
    intensityParamCurve = v10->_intensityParamCurve;
    v10->_intensityParamCurve = array4;

    array5 = [MEMORY[0x1E695DF70] array];
    sharpnessParamCurve = v10->_sharpnessParamCurve;
    v10->_sharpnessParamCurve = array5;

    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:identifier];
    identifier = v10->_identifier;
    v10->_identifier = v23;

    objc_storeStrong(&v10->_client, client);
    v10->_retainedByClient = 1;
    v10->_initializationTime = mach_absolute_time() * 0.0000000416666667;
    [(_GCHapticPlayer *)v10 clearParameters];
  }

  return v10;
}

- (BOOL)transientsEnqueuedSinceLastQuery
{
  transientsEnqueuedSinceLastQuery = self->_transientsEnqueuedSinceLastQuery;
  self->_transientsEnqueuedSinceLastQuery = 0;
  return transientsEnqueuedSinceLastQuery;
}

- (void)processSliceForLogicalDevice:(id)device startTime:(double)time endTime:(double)endTime
{
  v93 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  self->_continuousIntensity = 0.0;
  self->_continuousSharpness = 0.0;
  self->_activeEventThisSlice = 0;
  if (![(NSMutableArray *)self->_activeHapticEvents count])
  {
    goto LABEL_71;
  }

  selfCopy = self;
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v73 = self->_intensityParamCurve;
  for (i = 0; ; ++i)
  {
    if ([(NSMutableArray *)v73 count]<= i)
    {
      v11 = 0.0;
      v12 = 0.0;
      v9 = 0.0;
      v10 = 0.0;
      goto LABEL_10;
    }

    v8 = [(NSMutableArray *)v73 objectAtIndexedSubscript:i];
    [v8 getValue:buf];
    v9 = *&v88[12];
    if (*&v88[12] < time)
    {
      [indexSet addIndex:i];
      goto LABEL_7;
    }

    v10 = *&v88[4];
    if (*&v88[4] <= endTime)
    {
      break;
    }

LABEL_7:
  }

  selfCopy->_activeEventThisSlice = 1;
  v12 = v89;
  v11 = v90[0];

LABEL_10:
  [(NSMutableArray *)v73 removeObjectsAtIndexes:indexSet];
  indexSet2 = [MEMORY[0x1E696AD50] indexSet];

  v14 = selfCopy->_sharpnessParamCurve;
  v15 = 0;
  v71 = indexSet2;
  while (2)
  {
    v16 = selfCopy;
    if ([(NSMutableArray *)v14 count]<= v15)
    {
      v19 = 0.0;
      v18 = 0.0;
      v20 = 0.0;
      v21 = 0.0;
      goto LABEL_18;
    }

    v17 = [(NSMutableArray *)v14 objectAtIndexedSubscript:v15];
    [v17 getValue:buf];
    v18 = *&v88[12];
    if (*&v88[12] < time)
    {
      [v71 addIndex:v15];
LABEL_15:

      ++v15;
      continue;
    }

    break;
  }

  v19 = *&v88[4];
  if (*&v88[4] > endTime)
  {
    goto LABEL_15;
  }

  v20 = v89;
  v21 = v90[0];

  v16 = selfCopy;
LABEL_18:
  [(NSMutableArray *)v14 removeObjectsAtIndexes:v71];
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = v16->_activeHapticEvents;
  v22 = [(NSMutableArray *)obj countByEnumeratingWithState:&v83 objects:v92 count:16];
  if (!v22)
  {
    goto LABEL_68;
  }

  v77 = *v84;
  *&v23 = (time - v10) / (v9 - v10);
  v24 = v12 + *&v23 * (v11 - v12);
  *&v23 = (time - v19) / (v18 - v19);
  v25 = v20 + *&v23 * (v21 - v20);
  *&v23 = 138413058;
  v67 = v23;
  while (2)
  {
    v78 = v22;
    v26 = 0;
    while (2)
    {
      if (*v84 != v77)
      {
        objc_enumerationMutation(obj);
      }

      v27 = *(*(&v83 + 1) + 8 * v26);
      if ([v27 type] != 1)
      {
LABEL_29:
        v34 = 0;
        goto LABEL_30;
      }

      actuators = [deviceCopy[10] actuators];
      firstObject = [actuators firstObject];
      v30 = [firstObject type] == 0;

      if (v30)
      {
        [v27 startTime];
        v16 = selfCopy;
        if (v35 + 0.1 <= endTime)
        {
          [v27 setStopped:1];
        }

        goto LABEL_29;
      }

      actuators2 = [deviceCopy[10] actuators];
      firstObject2 = [actuators2 firstObject];
      v33 = [firstObject2 type] == 1;

      if (v33)
      {
        v34 = 1;
        v16 = selfCopy;
        selfCopy->_transientsEnqueuedSinceLastQuery = 1;
      }

      else
      {
        v34 = 0;
        v16 = selfCopy;
      }

LABEL_30:
      if ([v27 stopped])
      {
        [(NSMutableArray *)v16->_eventsToRemove addObject:v27];
      }

      else
      {
        [v27 sharpness];
        v37 = v36;
        [v27 intensity];
        v38 = v37;
        v40 = v39;
        if (([v27 transientBeganAsContinuousEvent] & 1) == 0)
        {
          [(_GCHapticDynamicParameter *)v16->_intensityParameter value];
          v42 = v41;
          [(_GCHapticDynamicParameter *)v16->_sharpnessParameter value];
          v45 = v44 + v38;
          if (v10 <= 0.0)
          {
            v40 = v42 * v40;
          }

          else
          {
            v43 = v42 * v40;
            v46 = v24 * v43;
            v40 = v46;
          }

          if (v19 <= 0.0)
          {
            v38 = v45;
          }

          else
          {
            v47 = v25 + v45;
            v38 = v47;
          }

          if ([v27 type] == 1)
          {
            actuators3 = [deviceCopy[10] actuators];
            firstObject3 = [actuators3 firstObject];
            v50 = [firstObject3 type] == 0;

            if (v50)
            {
              [v27 setTransientBeganAsContinuousEvent:1];
              v16 = selfCopy;
              [v27 setIntensity:v40];
              [v27 setSharpness:v38];
            }

            else
            {
              v16 = selfCopy;
            }
          }
        }

        if (v34)
        {
          if ([(_GCHapticPlayer *)v16 isMuted])
          {
            v51 = 0.0;
            [v27 setIntensity:0.0];
          }

          else
          {
            [(_GCHapticPlayer *)v16 hapticStrength];
            [v27 setIntensity:(v40 * v54)];
            v51 = v38;
          }

          [v27 setSharpness:v51];
          v81 = 0u;
          v82 = 0u;
          v79 = 0u;
          v80 = 0u;
          v55 = v16->_actuators;
          v56 = [(NSArray *)v55 countByEnumeratingWithState:&v79 objects:v91 count:16];
          if (v56)
          {
            v57 = *v80;
            do
            {
              v58 = 0;
              do
              {
                if (*v80 != v57)
                {
                  objc_enumerationMutation(v55);
                }

                v59 = *(*(&v79 + 1) + 8 * v58);
                if (gc_isInternalBuild())
                {
                  v60 = getGCHapticsLogger();
                  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
                  {
                    identifier = [(_GCHapticClientProxy *)selfCopy->_client identifier];
                    index = [v59 index];
                    [v27 intensity];
                    v62 = v61;
                    [v27 sharpness];
                    *buf = v67;
                    *v88 = identifier;
                    *&v88[8] = 2048;
                    *&v88[10] = index;
                    *&v88[18] = 2048;
                    v89 = v62;
                    LOWORD(v90[0]) = 2048;
                    *(v90 + 2) = v63;
                    _os_log_debug_impl(&dword_1D2CD5000, v60, OS_LOG_TYPE_DEBUG, "%@ enqueue transient for motor %lu I=(%.3f) S=(%.3f)", buf, 0x2Au);
                  }
                }

                [deviceCopy[9] enqueueTransient:v27 hapticMotor:{objc_msgSend(v59, "index")}];
                ++v58;
              }

              while (v56 != v58);
              v64 = [(NSArray *)v55 countByEnumeratingWithState:&v79 objects:v91 count:16];
              v56 = v64;
            }

            while (v64);
          }

          v16 = selfCopy;
          [(NSMutableArray *)selfCopy->_eventsToRemove addObject:v27];
        }

        else
        {
          v16->_continuousSharpness = v38 + v16->_continuousSharpness;
          if ([(_GCHapticClientProxy *)v16->_client shouldSquareContinuousIntensity])
          {
            [(_GCHapticPlayer *)v16 hapticStrength];
            v53 = v16->_continuousIntensity + ((v40 * v40) * v52);
          }

          else
          {
            [(_GCHapticPlayer *)v16 hapticStrength];
            v53 = v16->_continuousIntensity + (v40 * v65);
          }

          v16->_continuousIntensity = v53;
        }

        v16->_activeEventThisSlice |= v40 > 0.0;
      }

      if (++v26 != v78)
      {
        continue;
      }

      break;
    }

    v22 = [(NSMutableArray *)obj countByEnumeratingWithState:&v83 objects:v92 count:16];
    if (v22)
    {
      continue;
    }

    break;
  }

LABEL_68:

  if (selfCopy->_activeEventThisSlice)
  {
    selfCopy->_activeLifetime = endTime - time + selfCopy->_activeLifetime;
    selfCopy->_lastActiveTime = endTime;
  }

  [(NSMutableArray *)selfCopy->_activeHapticEvents removeObjectsInArray:selfCopy->_eventsToRemove];
  [(NSMutableArray *)selfCopy->_eventsToRemove removeAllObjects];

LABEL_71:
  v66 = *MEMORY[0x1E69E9840];
}

- (void)setMute:(BOOL)mute forReason:(unint64_t)reason
{
  v4 = self + 4 * reason;
  v5 = *(v4 + 15);
  if (mute)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = v5 - 1;
  }

  *(v4 + 15) = fmin(v6, 0.0);
  self->_dirtyMuteState = 1;
}

- (BOOL)isMutedForReason:(unint64_t)reason
{
  if (reason >= 5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"GCHapticPlayer.mm" lineNumber:224 description:@"Attempting to check if player is muted for invalid reason"];
  }

  return self->_muteReasons[reason] != 0;
}

- (BOOL)isMuted
{
  if ([(_GCHapticClientProxy *)self->_client isMuted])
  {
    return 1;
  }

  else if (self->_dirtyMuteState)
  {
    v4 = 0;
    self->_muted = 0;
    while (!self->_muteReasons[v4])
    {
      if (++v4 == 5)
      {
        return 0;
      }
    }

    v3 = 1;
    self->_muted = 1;
  }

  else
  {
    return self->_muted;
  }

  return v3;
}

- (float)continuousIntensity
{
  isMuted = [(_GCHapticPlayer *)self isMuted];
  result = 0.0;
  if (!isMuted)
  {
    return self->_continuousIntensity;
  }

  return result;
}

- (float)continuousSharpness
{
  isMuted = [(_GCHapticPlayer *)self isMuted];
  result = 0.0;
  if (!isMuted)
  {
    return self->_continuousSharpness;
  }

  return result;
}

- (BOOL)hasProcessedActiveEventsAfterTime:(double)time
{
  v5 = [(NSMutableArray *)self->_activeHapticEvents count];
  if (v5)
  {
    LOBYTE(v5) = self->_lastActiveTime > time;
  }

  return v5;
}

- (BOOL)hasScheduledEventsByTime:(double)time
{
  if (![(NSMutableArray *)self->_scheduledCommands count])
  {
    return 0;
  }

  lastObject = [(NSMutableArray *)self->_scheduledCommands lastObject];
  [lastObject time];
  v7 = v6 <= time;

  return v7;
}

- (void)setRetainedByClient:(BOOL)client
{
  if (self->_retainedByClient && !client)
  {
    v5 = +[_GCHapticServerManager sharedInstance];
    [v5 notifyPlayerNoLongerRetained:self];
  }

  self->_retainedByClient = client;
}

- (void)scheduleCommand:(const void *)command
{
  v5 = [[_GCHapticSyntheticCommand alloc] initWithHapticCommand:command];
  if (*(command + 1) == 1)
  {
    [(_GCHapticClientProxy *)self->_client setComplete:0];
  }

  [(NSMutableArray *)self->_scheduledCommands insertObject:v5 atIndex:[(NSMutableArray *)self->_scheduledCommands indexOfObject:v5 inSortedRange:0 options:[(NSMutableArray *)self->_scheduledCommands count] usingComparator:1024, &__block_literal_global_30]];
}

- (void)clearParameters
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = getGCHapticsLogger();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0_14(&dword_1D2CD5000, v1, v2, "Unmuting %@ for reason GCHapticMuteReasonSetParameter", v3, v4, v5, v6, 2u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)handleCommand:(id)command
{
  v84 = *MEMORY[0x1E69E9840];
  commandCopy = command;
  ++self->_totalEventsProcessed;
  type = [commandCopy type];
  if (type > 11)
  {
    if ((type - 20) >= 4)
    {
      if (type == 12)
      {
        channelID = [commandCopy channelID];
        v31 = [(NSMutableArray *)self->_scheduledCommands count];
        if (v31 < 1)
        {
          v32 = 0;
          v33 = 0;
        }

        else
        {
          v32 = 0;
          v33 = 0;
          v34 = (v31 & 0x7FFFFFFF) + 1;
          do
          {
            v35 = [(NSMutableArray *)self->_scheduledCommands objectAtIndexedSubscript:v34 - 2];

            v32 = v35;
            if ([v35 channelID] == channelID)
            {
              serverID = [v35 serverID];
              if (serverID <= [commandCopy serverID])
              {
                if ([v32 type] == 2)
                {
                  if (gc_isInternalBuild())
                  {
                    v37 = getGCHapticsLogger();
                    [_GCHapticPlayer handleCommand:v37];
                  }

                  if (!v33)
                  {
                    v33 = objc_opt_new();
                  }

                  [v33 addObject:v32];
                }

                else
                {
                  if (gc_isInternalBuild())
                  {
                    v38 = getGCHapticsLogger();
                    [_GCHapticPlayer handleCommand:v38];
                  }

                  [v32 cancel];
                }
              }
            }

            --v34;
          }

          while (v34 > 1);
          if (v33)
          {
            v72 = 0u;
            v73 = 0u;
            v70 = 0u;
            v71 = 0u;
            v33 = v33;
            v39 = [v33 countByEnumeratingWithState:&v70 objects:v80 count:16];
            if (v39)
            {
              v40 = *v71;
              do
              {
                for (i = 0; i != v39; ++i)
                {
                  if (*v71 != v40)
                  {
                    objc_enumerationMutation(v33);
                  }

                  [(_GCHapticPlayer *)self handleCommand:*(*(&v70 + 1) + 8 * i), v70];
                }

                v39 = [v33 countByEnumeratingWithState:&v70 objects:v80 count:16];
              }

              while (v39);
            }
          }
        }

        [(_GCHapticPlayer *)self clearParameters];
        if (gc_isInternalBuild())
        {
          v56 = getGCHapticsLogger();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
          {
            channelID2 = [commandCopy channelID];
            [commandCopy time];
            [(_GCHapticPlayer *)buf handleCommand:channelID2, v58];
          }
        }

        goto LABEL_23;
      }

      if (type != 30)
      {
        goto LABEL_60;
      }
    }

    else if (gc_isInternalBuild())
    {
      v8 = getGCHapticsLogger();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [commandCopy time];
        [(_GCHapticPlayer *)buf handleCommand:v9];
      }
    }

    if (!gc_isInternalBuild())
    {
      goto LABEL_23;
    }

    v15 = getGCHapticsLogger();
    if (os_log_type_enabled(&v15->super, OS_LOG_TYPE_DEBUG))
    {
      [commandCopy time];
      [(_GCHapticPlayer *)v82 handleCommand:v51];
    }

    goto LABEL_107;
  }

  if (type > 3)
  {
    if (type == 4)
    {
      if (gc_isInternalBuild())
      {
        v53 = getGCHapticsLogger();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
        {
          [commandCopy time];
          [(_GCHapticPlayer *)buf handleCommand:v54];
        }
      }

      v17 = [(NSMutableArray *)self->_scheduledCommands count];
      if (v17 < 1)
      {
        v18 = 0;
      }

      else
      {
        v18 = 0;
        v19 = (v17 & 0x7FFFFFFF) + 1;
        do
        {
          v20 = [(NSMutableArray *)self->_scheduledCommands objectAtIndexedSubscript:v19 - 2];

          v18 = v20;
          channelID3 = [v20 channelID];
          if (channelID3 == [commandCopy channelID])
          {
            [v18 time];
            v23 = v22;
            [commandCopy time];
            if (v23 >= v24 && [v18 type] != 5)
            {
              [v18 cancel];
            }
          }

          --v19;
        }

        while (v19 > 1);
      }

      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v44 = self->_activeHapticEvents;
      v45 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v74 objects:v83 count:16];
      if (v45)
      {
        v46 = *v75;
        do
        {
          for (j = 0; j != v45; ++j)
          {
            if (*v75 != v46)
            {
              objc_enumerationMutation(v44);
            }

            [*(*(&v74 + 1) + 8 * j) setStopped:1];
          }

          v45 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v74 objects:v83 count:16];
        }

        while (v45);
      }

      goto LABEL_23;
    }

    if (type != 5)
    {
      if (type == 10)
      {
        ++self->_parameterCurvesProcessed;
        paramID = [commandCopy paramID];
        if (paramID == 2001)
        {
          sharpnessParamCurve = self->_sharpnessParamCurve;
          parameterCurve = [commandCopy parameterCurve];
          curve = [parameterCurve curve];
          [(NSMutableArray *)sharpnessParamCurve addObjectsFromArray:curve];
        }

        else
        {
          if (paramID != 2000)
          {
LABEL_95:
            if (!gc_isInternalBuild())
            {
              goto LABEL_23;
            }

            v15 = getGCHapticsLogger();
            if (os_log_type_enabled(&v15->super, OS_LOG_TYPE_DEBUG))
            {
              paramID2 = [commandCopy paramID];
              [commandCopy time];
              [(_GCHapticPlayer *)buf handleCommand:paramID2, v50];
            }

            goto LABEL_107;
          }

          intensityParamCurve = self->_intensityParamCurve;
          parameterCurve = [commandCopy parameterCurve];
          curve = [parameterCurve curve];
          [(NSMutableArray *)intensityParamCurve addObjectsFromArray:curve];
        }

        goto LABEL_95;
      }

LABEL_60:
      if (!gc_isInternalBuild())
      {
        goto LABEL_23;
      }

      v15 = getGCHapticsLogger();
      if (os_log_type_enabled(&v15->super, OS_LOG_TYPE_ERROR))
      {
        [commandCopy time];
        *buf = 134218496;
        *v79 = v64;
        *&v79[8] = 1024;
        *&v79[10] = [commandCopy type];
        *&v79[14] = 1024;
        *&v79[16] = [commandCopy channelID];
        _os_log_error_impl(&dword_1D2CD5000, &v15->super, OS_LOG_TYPE_ERROR, "ERROR: read unrecognized command from client: time: %.3f type: %u chanID: %d", buf, 0x18u);
      }

      goto LABEL_107;
    }

    if (!gc_isInternalBuild())
    {
      goto LABEL_23;
    }

    v15 = getGCHapticsLogger();
    if (os_log_type_enabled(&v15->super, OS_LOG_TYPE_DEBUG))
    {
      [commandCopy time];
      [(_GCHapticPlayer *)buf handleCommand:v29];
    }

LABEL_107:

    goto LABEL_23;
  }

  if (type == 1)
  {
    if (gc_isInternalBuild())
    {
      v52 = getGCHapticsLogger();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
      {
        [commandCopy time];
        v61 = v60;
        tokenAndParams = [commandCopy tokenAndParams];
        *buf = 134218496;
        *v79 = v61;
        *&v79[8] = 2048;
        *&v79[10] = [tokenAndParams token];
        *&v79[18] = 2048;
        *&v79[20] = [commandCopy channelID];
        _os_log_debug_impl(&dword_1D2CD5000, v52, OS_LOG_TYPE_DEBUG, "StartEvent at %f token %lu (ch=%lu)", buf, 0x20u);
      }
    }

    v15 = [[_GCHapticEvent alloc] initWithSyntheticCommand:commandCopy];
    [(NSMutableArray *)self->_activeHapticEvents addObject:v15];
    if ([(_GCHapticEvent *)v15 type]== 2)
    {
      v16 = 148;
    }

    else
    {
      if ([(_GCHapticEvent *)v15 type]!= 1)
      {
        goto LABEL_107;
      }

      v16 = 144;
    }

    ++*(&self->super.isa + v16);
    goto LABEL_107;
  }

  if (type != 2)
  {
    if (type == 3)
    {
      paramID3 = [commandCopy paramID];
      if (paramID3 == 2014)
      {
        if (gc_isInternalBuild())
        {
          v59 = getGCHapticsLogger();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
          {
            -[_GCHapticPlayer handleCommand:].cold.4(buf, [commandCopy channelID], v59);
          }
        }

        [commandCopy value];
        [(_GCHapticPlayer *)self setMute:v7 != 0.0 forReason:2];
        goto LABEL_23;
      }

      v82[0] = 0;
      v81[0] = 0.0;
      [commandCopy value];
      clientParamToSynthParam(paramID3, v42, v82, v81);
      if (v82[0] == 5002)
      {
        v43 = 32;
      }

      else
      {
        if (v82[0] != 5003)
        {
LABEL_101:
          if (!gc_isInternalBuild())
          {
            goto LABEL_23;
          }

          v15 = getGCHapticsLogger();
          if (os_log_type_enabled(&v15->super, OS_LOG_TYPE_DEBUG))
          {
            v65 = v82[0];
            v66 = v81[0];
            [commandCopy time];
            v68 = v67;
            channelID4 = [commandCopy channelID];
            *buf = 67109888;
            *v79 = v65;
            *&v79[4] = 2048;
            *&v79[6] = v66;
            *&v79[14] = 2048;
            *&v79[16] = v68;
            *&v79[24] = 2048;
            *&v79[26] = channelID4;
            _os_log_debug_impl(&dword_1D2CD5000, &v15->super, OS_LOG_TYPE_DEBUG, "CommandType::SetParam - type %d param with value %f at time %.3f on channel %lu", buf, 0x26u);
          }

          goto LABEL_107;
        }

        v43 = 40;
      }

      [*(&self->super.isa + v43) setValue:v81[0]];
      goto LABEL_101;
    }

    goto LABEL_60;
  }

  if (gc_isInternalBuild())
  {
    v55 = getGCHapticsLogger();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
    {
      tokenAndParams2 = [commandCopy tokenAndParams];
      *buf = 134218240;
      *v79 = [tokenAndParams2 token];
      *&v79[8] = 2048;
      *&v79[10] = [commandCopy channelID];
      _os_log_debug_impl(&dword_1D2CD5000, v55, OS_LOG_TYPE_DEBUG, "Stop event token %lu (ch=%lu)", buf, 0x16u);
    }
  }

  for (k = 0; [(NSMutableArray *)self->_activeHapticEvents count]> k; ++k)
  {
    v26 = [(NSMutableArray *)self->_activeHapticEvents objectAtIndexedSubscript:k];
    identifier = [v26 identifier];
    tokenAndParams3 = [commandCopy tokenAndParams];
    LODWORD(identifier) = identifier == [tokenAndParams3 token];

    if (identifier)
    {
      [v26 setStopped:1];

      break;
    }
  }

LABEL_23:

  v14 = *MEMORY[0x1E69E9840];
}

- (void)teardown
{
  [(NSMutableArray *)self->_scheduledCommands removeAllObjects];
  [(NSMutableArray *)self->_activeHapticEvents removeAllObjects];
  [(NSMutableArray *)self->_eventsToRemove removeAllObjects];
  [(NSMutableArray *)self->_intensityParamCurve removeAllObjects];
  [(NSMutableArray *)self->_sharpnessParamCurve removeAllObjects];
  self->_retainedByClient = 0;
}

- (void)dealloc
{
  v3 = +[GCAnalytics instance];
  bundleIdentifier = [(_GCHapticPlayer *)self bundleIdentifier];
  v5 = [bundleIdentifier copy];
  controllerProductCategory = [(_GCHapticPlayer *)self controllerProductCategory];
  v7 = [controllerProductCategory copy];
  totalEventsProcessed = [(_GCHapticPlayer *)self totalEventsProcessed];
  transientEventsProcessed = [(_GCHapticPlayer *)self transientEventsProcessed];
  continuousEventsProcessed = [(_GCHapticPlayer *)self continuousEventsProcessed];
  parameterCurvesProcessed = [(_GCHapticPlayer *)self parameterCurvesProcessed];
  [(_GCHapticPlayer *)self totalLifetimeInSeconds];
  v13 = v12;
  [(_GCHapticPlayer *)self activeLifetimeInSeconds];
  LODWORD(v15) = v13;
  HIDWORD(v15) = v14;
  [v3 sendHapticsPlayerDestroyedEventForBundleID:v5 productCategory:v7 totalEventsProcessed:totalEventsProcessed transientEventsProcessed:transientEventsProcessed continuousEventsProcessed:continuousEventsProcessed parameterCurvesProcessed:parameterCurvesProcessed sessionTotalDuration:v15 sessionActiveDuration:?];

  v16.receiver = self;
  v16.super_class = _GCHapticPlayer;
  [(_GCHapticPlayer *)&v16 dealloc];
}

- (double)totalLifetimeInSeconds
{
  result = 0.0;
  if (self->_initializationTime >= 0.0)
  {
    return mach_absolute_time() * 0.0000000416666667 - self->_initializationTime;
  }

  return result;
}

- (_GCHapticLogicalDevice)hapticLogicalDevice
{
  WeakRetained = objc_loadWeakRetained(&self->_hapticLogicalDevice);

  return WeakRetained;
}

- (void)handleCommand:(NSObject *)a3 .cold.4(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *a1 = 134217984;
  *(a1 + 4) = a2;
  OUTLINED_FUNCTION_2_15(&dword_1D2CD5000, a3, a3, "CommandType::SetParam - mute channel %lu haptics", a1);
}

- (void)handleCommand:(NSObject *)a1 .cold.5(NSObject *a1)
{
  if (OUTLINED_FUNCTION_1_21(a1))
  {
    *v2 = 138412290;
    *v3 = v4;
    OUTLINED_FUNCTION_5_9(&dword_1D2CD5000, v5, v6, "Canceling: %@");
  }
}

- (void)handleCommand:(NSObject *)a1 .cold.6(NSObject *a1)
{
  if (OUTLINED_FUNCTION_1_21(a1))
  {
    *v2 = 138412290;
    *v3 = v4;
    OUTLINED_FUNCTION_5_9(&dword_1D2CD5000, v5, v6, "Executing stop event early: %@");
  }
}

@end