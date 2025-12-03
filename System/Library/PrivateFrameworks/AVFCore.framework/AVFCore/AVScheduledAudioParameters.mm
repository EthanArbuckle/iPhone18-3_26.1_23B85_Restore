@interface AVScheduledAudioParameters
- (AVScheduledAudioParameters)init;
- (AVScheduledAudioParameters)initWithPropertyList:(id)list;
- (BOOL)getVolumeRampForTime:(id *)time startVolume:(float *)volume endVolume:(float *)endVolume timeRange:(id *)range rampMode:(int64_t *)mode;
- (BOOL)isEqual:(id)equal;
- (id)_audioCurveOfClass:(Class)class;
- (id)_audioVolumeCurve;
- (id)_figAudioCurves;
- (id)_getRampOfClass:(Class)class forTime:(id *)time timeRange:(id *)range;
- (id)_rampsOfClass:(Class)class;
- (id)_volumeCurveAsString;
- (id)_volumeCurveKeysForScheduledRampClassNames;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)propertyList;
- (void)_setRamp:(id)ramp;
- (void)_setRamps:(id)ramps;
- (void)dealloc;
@end

@implementation AVScheduledAudioParameters

- (AVScheduledAudioParameters)init
{
  v5.receiver = self;
  v5.super_class = AVScheduledAudioParameters;
  v2 = [(AVScheduledAudioParameters *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(AVScheduledAudioParametersInternal);
    v2->_scheduledParametersInternal = v3;
    if (v3)
    {
      CFRetain(v3);
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

- (void)dealloc
{
  scheduledParametersInternal = self->_scheduledParametersInternal;
  if (scheduledParametersInternal)
  {

    CFRelease(self->_scheduledParametersInternal);
  }

  v4.receiver = self;
  v4.super_class = AVScheduledAudioParameters;
  [(AVScheduledAudioParameters *)&v4 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p, volume mix: %@>", NSStringFromClass(v4), self, -[AVScheduledAudioParameters _volumeCurveAsString](self, "_volumeCurveAsString")];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [(AVScheduledAudioParameters *)[AVMutableScheduledAudioParameters allocWithZone:?]];
  [(AVScheduledAudioParameters *)v4 _setRamps:self->_scheduledParametersInternal->parameterRamps];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  parameterRamps = self->_scheduledParametersInternal->parameterRamps;
  v6 = *(*(equal + 1) + 8);

  return [(NSMutableDictionary *)parameterRamps isEqual:v6];
}

- (id)_volumeCurveKeysForScheduledRampClassNames
{
  if (_volumeCurveKeysForScheduledRampClassNames_onceToken != -1)
  {
    [AVScheduledAudioParameters _volumeCurveKeysForScheduledRampClassNames];
  }

  return _volumeCurveKeysForScheduledRampClassNames_figKeysForRampClassNames;
}

id __72__AVScheduledAudioParameters__volumeCurveKeysForScheduledRampClassNames__block_invoke()
{
  v10[8] = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v9[0] = NSStringFromClass(v0);
  v10[0] = *MEMORY[0x1E69716C0];
  v1 = objc_opt_class();
  v9[1] = NSStringFromClass(v1);
  v10[1] = *MEMORY[0x1E6971690];
  v2 = objc_opt_class();
  v9[2] = NSStringFromClass(v2);
  v10[2] = *MEMORY[0x1E6971680];
  v3 = objc_opt_class();
  v9[3] = NSStringFromClass(v3);
  v10[3] = *MEMORY[0x1E69716A0];
  v4 = objc_opt_class();
  v9[4] = NSStringFromClass(v4);
  v10[4] = *MEMORY[0x1E6971698];
  v5 = objc_opt_class();
  v9[5] = NSStringFromClass(v5);
  v10[5] = *MEMORY[0x1E6971688];
  v6 = objc_opt_class();
  v9[6] = NSStringFromClass(v6);
  v10[6] = *MEMORY[0x1E69716B0];
  v7 = objc_opt_class();
  v9[7] = NSStringFromClass(v7);
  v10[7] = *MEMORY[0x1E69716B8];
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:8];
  _volumeCurveKeysForScheduledRampClassNames_figKeysForRampClassNames = result;
  return result;
}

- (void)_setRamps:(id)ramps
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [ramps countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(ramps);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([(AVScheduledAudioParameters *)self _isScheduledRampClass:v10])
        {
          v11 = [ramps objectForKey:v10];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [v11 mutableCopy];
            [(NSMutableDictionary *)v5 setObject:v12 forKey:v10];
          }
        }
      }

      v7 = [ramps countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  self->_scheduledParametersInternal->parameterRamps = v5;
}

- (id)_rampsOfClass:(Class)class
{
  parameterRamps = self->_scheduledParametersInternal->parameterRamps;
  v4 = NSStringFromClass(class);

  return [(NSMutableDictionary *)parameterRamps objectForKey:v4];
}

- (BOOL)getVolumeRampForTime:(id *)time startVolume:(float *)volume endVolume:(float *)endVolume timeRange:(id *)range rampMode:(int64_t *)mode
{
  v13 = objc_opt_class();
  v19 = *time;
  v14 = [(AVScheduledAudioParameters *)self _getRampOfClass:v13 forTime:&v19 timeRange:range];
  v15 = v14;
  if (v14)
  {
    if (volume)
    {
      [v14 startVolume];
      *volume = v16;
    }

    if (endVolume)
    {
      [v15 endVolume];
      *endVolume = v17;
    }

    if (mode)
    {
      *mode = [v15 rampMode];
    }
  }

  return v15 != 0;
}

- (AVScheduledAudioParameters)initWithPropertyList:(id)list
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = [(AVScheduledAudioParameters *)self init];
  if (v4)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v21 = [list countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v21)
      {
        v5 = *v27;
        listCopy = list;
        v20 = v4;
        v18 = *v27;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v27 != v5)
            {
              objc_enumerationMutation(list);
            }

            v7 = *(*(&v26 + 1) + 8 * i);
            if ([(AVScheduledAudioParameters *)v4 _isScheduledRampClass:v7])
            {
              v8 = [list objectForKey:v7];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                array = [MEMORY[0x1E695DF70] array];
                v22 = 0u;
                v23 = 0u;
                v24 = 0u;
                v25 = 0u;
                v10 = [v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
                if (v10)
                {
                  v11 = v10;
                  v12 = *v23;
                  do
                  {
                    for (j = 0; j != v11; ++j)
                    {
                      if (*v23 != v12)
                      {
                        objc_enumerationMutation(v8);
                      }

                      v14 = *(*(&v22 + 1) + 8 * j);
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v15 = [objc_alloc(NSClassFromString(v7)) initWithPropertyList:v14];
                        if (v14)
                        {
                          [array addObject:v15];
                        }
                      }
                    }

                    v11 = [v8 countByEnumeratingWithState:&v22 objects:v30 count:16];
                  }

                  while (v11);
                }

                list = listCopy;
                v4 = v20;
                v5 = v18;
                if ([array count])
                {
                  [dictionary setObject:array forKey:v7];
                }
              }
            }
          }

          v21 = [list countByEnumeratingWithState:&v26 objects:v31 count:16];
        }

        while (v21);
      }
    }

    [(AVScheduledAudioParameters *)v4 _setRamps:dictionary];
  }

  return v4;
}

- (id)propertyList
{
  v28 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  selfCopy = self;
  obj = self->_scheduledParametersInternal->parameterRamps;
  v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      v7 = 0;
      do
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * v7);
        array = [MEMORY[0x1E695DF70] array];
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v10 = [(NSMutableDictionary *)selfCopy->_scheduledParametersInternal->parameterRamps objectForKey:v8];
        v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v19;
          do
          {
            v14 = 0;
            do
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(v10);
              }

              [array addObject:{objc_msgSend(*(*(&v18 + 1) + 8 * v14++), "propertyList")}];
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v12);
        }

        [dictionary setObject:array forKey:v8];
        ++v7;
      }

      while (v7 != v5);
      v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
  }

  return dictionary;
}

- (id)_getRampOfClass:(Class)class forTime:(id *)time timeRange:(id *)range
{
  if ((time->var2 & 0x1D) != 1)
  {
    return 0;
  }

  v7 = [(AVScheduledAudioParameters *)self _rampsOfClass:class];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0x7FFFFFFFFFFFFFFFLL;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __101__AVScheduledAudioParameters_AVScheduledAudioParameters_Internal___getRampOfClass_forTime_timeRange___block_invoke;
  v25[3] = &unk_1E74638D8;
  v26 = *&time->var0;
  var3 = time->var3;
  v25[4] = &v28;
  v9 = [v7 indexOfObjectPassingTest:v25];
  if (v29[3] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = v9;
  }

  else
  {
    v10 = v29[3];
  }

  if (v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0;
  }

  else
  {
    v12 = [v8 objectAtIndex:?];
    v11 = v12;
    if (range)
    {
      memset(v24, 0, sizeof(v24));
      v23 = 0u;
      if (v12)
      {
        [v12 timeRange];
        if ((~DWORD1(v24[1]) & 5) == 0)
        {
          v13 = [v8 count];
          if (v29[3] + 1 < v13)
          {
            v21 = 0u;
            v22 = 0u;
            v20 = 0u;
            v14 = [v8 objectAtIndex:?];
            if (v14)
            {
              [v14 timeRange];
            }

            else
            {
              v21 = 0u;
              v22 = 0u;
              v20 = 0u;
            }

            *&lhs.value = v20;
            lhs.epoch = v21;
            *&v17.value = v23;
            v17.epoch = *&v24[0];
            CMTimeSubtract(&v19, &lhs, &v17);
            *(v24 + 8) = v19;
          }
        }
      }

      v15 = v24[0];
      *&range->var0.var0 = v23;
      *&range->var0.var3 = v15;
      *&range->var1.var1 = v24[1];
    }
  }

  _Block_object_dispose(&v28, 8);
  return v11;
}

BOOL __101__AVScheduledAudioParameters_AVScheduledAudioParameters_Internal___getRampOfClass_forTime_timeRange___block_invoke(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  memset(&v12, 0, sizeof(v12));
  if (a2)
  {
    [a2 timeRange];
  }

  range = v12;
  v10 = *(a1 + 40);
  if (CMTimeRangeContainsTime(&range, &v10))
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
  }

  *&range.start.value = *&v12.start.value;
  range.start.epoch = v12.start.epoch;
  v10 = *(a1 + 40);
  v7 = CMTimeCompare(&range.start, &v10);
  if (v7 < 1)
  {
    v8 = *(*(a1 + 32) + 8);
    if (*(v8 + 24) < a3)
    {
      *(v8 + 24) = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    *a4 = 1;
  }

  return v7 > 0;
}

- (void)_setRamp:(id)ramp
{
  if (ramp)
  {
    v6 = objc_opt_class();
    if ([(AVScheduledAudioParameters *)self _isScheduledRampClass:NSStringFromClass(v6)])
    {
      array = [(AVScheduledAudioParameters *)self _rampsOfClass:objc_opt_class()];
      v29 = 0u;
      v30 = 0u;
      v28 = 0u;
      [ramp timeRange];
      v25 = v28;
      v26 = v29;
      v27 = v30;
      if (AVScheduledParameterRampsIncludesRampThatOverlapsTimeRange(array, &v25))
      {
        v18 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"The timeRange of a ramp must not overlap the timeRange of an existing ramp.", v8, v9, v10, v11, v12, v19.value), 0}];
        objc_exception_throw(v18);
      }

      if (!array)
      {
        array = [MEMORY[0x1E695DF70] array];
        parameterRamps = self->_scheduledParametersInternal->parameterRamps;
        if (!parameterRamps)
        {
          self->_scheduledParametersInternal->parameterRamps = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
          parameterRamps = self->_scheduledParametersInternal->parameterRamps;
        }

        v14 = objc_opt_class();
        [(NSMutableDictionary *)parameterRamps setObject:array forKey:NSStringFromClass(v14)];
      }

      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __76__AVScheduledAudioParameters_AVScheduledAudioParameters_Internal___setRamp___block_invoke;
      v21[3] = &__block_descriptor_80_e15_B32__0_8Q16_B24l;
      v22 = v28;
      v23 = v29;
      v24 = v30;
      v15 = [array indexOfObjectPassingTest:v21];
      if (v15 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [array addObject:ramp];
      }

      else
      {
        v16 = v15;
        v26 = 0u;
        v27 = 0u;
        v25 = 0u;
        v17 = [array objectAtIndex:v15];
        if (v17)
        {
          [v17 timeRange];
        }

        else
        {
          v26 = 0u;
          v27 = 0u;
          v25 = 0u;
        }

        *&time1.value = v25;
        time1.epoch = v26;
        *&v19.value = v28;
        v19.epoch = v29;
        if (CMTimeCompare(&time1, &v19))
        {
          [array insertObject:ramp atIndex:v16];
        }

        else
        {
          [array replaceObjectAtIndex:v16 withObject:ramp];
        }
      }
    }
  }
}

BOOL __76__AVScheduledAudioParameters_AVScheduledAudioParameters_Internal___setRamp___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (a2)
  {
    [a2 timeRange];
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
  }

  *&time1.value = v10;
  time1.epoch = v11;
  v8 = *(a1 + 32);
  v6 = CMTimeCompare(&time1, &v8);
  if ((v6 & 0x80000000) == 0)
  {
    *a4 = 1;
  }

  return v6 >= 0;
}

- (id)_audioCurveOfClass:(Class)class
{
  v4 = [(AVScheduledAudioParameters *)self _rampsOfClass:?];
  v5 = [v4 count];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = [-[objc_class _defaultAdditionalFigRepresentationObjects](class "_defaultAdditionalFigRepresentationObjects")];
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:(v7 + 2) * v6];
  v9 = [v4 objectAtIndex:0];
  if (v9)
  {
    [v9 timeRange];
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
  }

  v31 = v28;
  v32 = v29;
  *&time1.start.value = v28;
  time1.start.epoch = v29;
  v21 = *MEMORY[0x1E6960CC0];
  *&time2.start.value = *MEMORY[0x1E6960CC0];
  v10 = *(MEMORY[0x1E6960CC0] + 16);
  time2.start.epoch = v10;
  if (CMTimeCompare(&time1.start, &time2.start) >= 1)
  {
    defaultValue = [(objc_class *)class defaultValue];
    _defaultAdditionalFigRepresentationObjects = [(objc_class *)class _defaultAdditionalFigRepresentationObjects];
    *&time1.start.value = v21;
    time1.start.epoch = v10;
    [v8 addObject:NSDictionaryFromCMTime(&time1.start)];
    [v8 addObject:defaultValue];
    [v8 addObjectsFromArray:_defaultAdditionalFigRepresentationObjects];
    *&time1.start.value = v31;
    time1.start.epoch = v32;
    [v8 addObject:NSDictionaryFromCMTime(&time1.start)];
    [v8 addObject:defaultValue];
    [v8 addObjectsFromArray:_defaultAdditionalFigRepresentationObjects];
  }

  if (v6 >= 1)
  {
    v13 = 0;
    v20 = *(MEMORY[0x1E6960C98] + 16);
    v22 = *MEMORY[0x1E6960C98];
    v19 = *(MEMORY[0x1E6960C98] + 32);
    do
    {
      v14 = [v4 objectAtIndex:{v13, v19, v20}];
      v15 = v14;
      memset(&time1, 0, sizeof(time1));
      if (v14)
      {
        [v14 timeRange];
      }

      memset(&v26, 0, sizeof(v26));
      time2 = time1;
      CMTimeRangeGetEnd(&v26, &time2);
      *&time2.start.value = v22;
      *&time2.start.epoch = v20;
      *&time2.duration.timescale = v19;
      if (++v13 >= v6)
      {
        v17 = 0;
      }

      else
      {
        v16 = [v4 objectAtIndex:v13];
        v17 = v16;
        if (v16)
        {
          [v16 timeRange];
        }

        else
        {
          memset(&v24, 0, sizeof(v24));
        }

        time2 = v24;
        v23 = v26;
        if (CMTimeCompare(&v24.start, &v23) < 0)
        {
          *&v24.start.value = *&time2.start.value;
          v24.start.epoch = time2.start.epoch;
          v15 = [v15 scheduledParameterRampInterpolatedToTime:&v24];
        }
      }

      *&v24.start.value = *&time1.start.value;
      v24.start.epoch = time1.start.epoch;
      [v8 addObject:NSDictionaryFromCMTime(&v24.start)];
      [v8 addObject:{objc_msgSend(v15, "startValue")}];
      [v8 addObjectsFromArray:{objc_msgSend(v15, "_additionalFigRepresentationObjects")}];
      if ((v26.flags & 0x1D) == 1)
      {
        v24.start = v26;
        [v8 addObject:NSDictionaryFromCMTime(&v24.start)];
        [v8 addObject:{objc_msgSend(v15, "endValue")}];
        [v8 addObjectsFromArray:{objc_msgSend(v15, "_additionalFigRepresentationObjects")}];
      }

      if (v17)
      {
        *&v24.start.value = *&time2.start.value;
        v24.start.epoch = time2.start.epoch;
        v23 = v26;
        if (CMTimeCompare(&v24.start, &v23) >= 1 && ([objc_msgSend(v15 "endValue")] & 1) == 0)
        {
          *&v24.start.value = *&time2.start.value;
          v24.start.epoch = time2.start.epoch;
          [v8 addObject:NSDictionaryFromCMTime(&v24.start)];
          [v8 addObject:{objc_msgSend(v15, "endValue")}];
          [v8 addObjectsFromArray:{-[objc_class _defaultAdditionalFigRepresentationObjects](class, "_defaultAdditionalFigRepresentationObjects")}];
        }
      }
    }

    while (v6 != v13);
  }

  return v8;
}

- (id)_audioVolumeCurve
{
  v3 = objc_opt_class();

  return [(AVScheduledAudioParameters *)self _audioCurveOfClass:v3];
}

- (id)_figAudioCurves
{
  v20 = *MEMORY[0x1E69E9840];
  result = [(NSMutableDictionary *)self->_scheduledParametersInternal->parameterRamps count];
  if (result)
  {
    _volumeCurveKeysForScheduledRampClassNames = [(AVScheduledAudioParameters *)self _volumeCurveKeysForScheduledRampClassNames];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    parameterRamps = self->_scheduledParametersInternal->parameterRamps;
    v7 = [(NSMutableDictionary *)parameterRamps countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(parameterRamps);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = [_volumeCurveKeysForScheduledRampClassNames objectForKey:v11];
          if (v12)
          {
            v13 = v12;
            v14 = [(AVScheduledAudioParameters *)self _audioCurveOfClass:NSClassFromString(v11)];
            if (v14)
            {
              [dictionary setObject:v14 forKey:v13];
            }
          }
        }

        v8 = [(NSMutableDictionary *)parameterRamps countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    if ([dictionary count])
    {
      return dictionary;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)_volumeCurveAsString
{
  string = [MEMORY[0x1E696AD60] string];
  _audioVolumeCurve = [(AVScheduledAudioParameters *)self _audioVolumeCurve];
  v4 = [_audioVolumeCurve count];
  if (v4 >= 3)
  {
    v5 = 0;
    v6 = v4 / 3;
    v7 = v4 / 3 - 1;
    v8 = &stru_1F0A8E470;
    v9 = 2;
    for (i = 4; ; i += 3)
    {
      CMTimeMakeFromDictionary(&time, [_audioVolumeCurve objectAtIndex:i - 4]);
      Seconds = CMTimeGetSeconds(&time);
      [objc_msgSend(_audioVolumeCurve objectAtIndex:{i - 3), "floatValue"}];
      v13 = v12;
      v14 = [_audioVolumeCurve objectAtIndex:i - 2];
      v15 = 0.0;
      v16 = 0.0;
      if (v7 != v5)
      {
        CMTimeMakeFromDictionary(&time, [_audioVolumeCurve objectAtIndex:{i - 1, 0.0}]);
        v15 = CMTimeGetSeconds(&time);
        [objc_msgSend(_audioVolumeCurve objectAtIndex:{i), "floatValue"}];
      }

      v17 = Seconds;
      if (v9 == 2)
      {
        v18 = @"at";
      }

      else
      {
        v18 = @"through";
      }

      v19 = v8;
      v20 = &stru_1F0A8E470;
      if (v7 <= v5)
      {
        goto LABEL_16;
      }

      if (v15 != v17)
      {
        break;
      }

      if (v13 != v16)
      {
        v9 = 2;
        v19 = &stru_1F0A8E470;
        v20 = @", changes instantaneously to ";
LABEL_16:
        [string appendString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"volume %1.3f %@ time %1.3f%@%@", v13, v18, v17, v8, v20)}];
        goto LABEL_17;
      }

      v9 = 0;
      v19 = &stru_1F0A8E470;
LABEL_17:
      ++v5;
      v8 = v19;
      if (v6 == v5)
      {
        return string;
      }
    }

    if (v13 == v16)
    {
      v9 = 0;
      v19 = &stru_1F0A8E470;
      v20 = @", holds steady at ";
    }

    else
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@" with %@ ramp style", v14];
      v9 = 1;
      v20 = @", ramps to ";
    }

    goto LABEL_16;
  }

  return string;
}

@end