@interface HapticDictionaryWriter
- (id)eventParamsToArray:(id)a3;
- (id)eventToDictionary:(id)a3 embeddedResourceInfo:(id)a4;
- (id)paramCurveControlPointsToArray:(id)a3;
- (id)paramCurveToDictionary:(id)a3;
- (id)paramToDictionary:(id)a3;
- (id)patternToDictionary:(id)a3 events:(id)a4 parameters:(id)a5 parameterCurves:(id)a6 embeddedResourceInfo:(id)a7 configuration:(id)a8;
@end

@implementation HapticDictionaryWriter

- (id)patternToDictionary:(id)a3 events:(id)a4 parameters:(id)a5 parameterCurves:(id)a6 embeddedResourceInfo:(id)a7 configuration:(id)a8
{
  v62 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v45 = a4;
  v44 = a5;
  v43 = a6;
  v15 = a7;
  v46 = a8;
  v42 = v14;
  v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v16 setObject:v14 forKeyedSubscript:CHHapticPatternKeyVersion];
  if (v46)
  {
    v17 = [v46 copy];
    [v16 setObject:v17 forKeyedSubscript:CHHapticPatternKeyConfiguration];
  }

  v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v16 setObject:v18 forKeyedSubscript:CHHapticPatternKeyPattern];

  if ([v45 count])
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v19 = v45;
    v20 = [v19 countByEnumeratingWithState:&v55 objects:v61 count:16];
    if (v20)
    {
      v21 = *v56;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v56 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v55 + 1) + 8 * i);
          v24 = [v16 objectForKeyedSubscript:CHHapticPatternKeyPattern];
          v25 = [(HapticDictionaryWriter *)self eventToDictionary:v23 embeddedResourceInfo:v15];
          [v24 addObject:v25];
        }

        v20 = [v19 countByEnumeratingWithState:&v55 objects:v61 count:16];
      }

      while (v20);
    }
  }

  if ([v44 count])
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v26 = v44;
    v27 = [v26 countByEnumeratingWithState:&v51 objects:v60 count:16];
    if (v27)
    {
      v28 = *v52;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v52 != v28)
          {
            objc_enumerationMutation(v26);
          }

          v30 = *(*(&v51 + 1) + 8 * j);
          v31 = [v16 objectForKeyedSubscript:CHHapticPatternKeyPattern];
          v32 = [(HapticDictionaryWriter *)self paramToDictionary:v30];
          [v31 addObject:v32];
        }

        v27 = [v26 countByEnumeratingWithState:&v51 objects:v60 count:16];
      }

      while (v27);
    }
  }

  if ([v43 count])
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v33 = v43;
    v34 = [v33 countByEnumeratingWithState:&v47 objects:v59 count:16];
    if (v34)
    {
      v35 = *v48;
      do
      {
        for (k = 0; k != v34; ++k)
        {
          if (*v48 != v35)
          {
            objc_enumerationMutation(v33);
          }

          v37 = *(*(&v47 + 1) + 8 * k);
          v38 = [v16 objectForKeyedSubscript:CHHapticPatternKeyPattern];
          v39 = [(HapticDictionaryWriter *)self paramCurveToDictionary:v37];
          [v38 addObject:v39];
        }

        v34 = [v33 countByEnumeratingWithState:&v47 objects:v59 count:16];
      }

      while (v34);
    }
  }

  v40 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)eventToDictionary:(id)a3 embeddedResourceInfo:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v8 setObject:v9 forKeyedSubscript:CHHapticPatternKeyEvent];

  v10 = [v8 objectForKeyedSubscript:CHHapticPatternKeyEvent];
  v11 = [v6 type];
  v12 = [v11 isEqualToString:CHHapticEventTypeAudioCustom];

  if (v12)
  {
    if (kHAPIScope)
    {
      v13 = *kHAPIScope;
      if (!v13)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v13 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v32 = 136315650;
      v33 = "HapticDictionaryWriter.mm";
      v34 = 1024;
      v35 = 74;
      v36 = 2080;
      v37 = "[HapticDictionaryWriter eventToDictionary:embeddedResourceInfo:]";
      _os_log_impl(&dword_21569A000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Cannot export AudioCustom events", &v32, 0x1Cu);
    }

LABEL_9:
    Haptic_RaiseException(&cfstr_Corehapticsope.isa, &cfstr_CannotExportAu.isa, -4806);
  }

  v15 = [v6 type];
  v16 = [v15 isEqualToString:CHHapticEventTypeAudioResourceIndex];

  if (v16)
  {
    [v10 setObject:CHHapticEventTypeAudioCustom forKeyedSubscript:CHHapticPatternKeyEventType];
    v17 = [v7 objectAtIndexedSubscript:{objc_msgSend(v6, "audioResID")}];
    v18 = [v17 url];
    v19 = [v18 path];
    [v10 setObject:v19 forKeyedSubscript:CHHapticPatternKeyEventWaveformPath];

    v20 = [v7 objectAtIndexedSubscript:{objc_msgSend(v6, "audioResID")}];
    v21 = [v20 options];

    if (v21)
    {
      v22 = [v21 objectForKey:CHHapticPatternKeyEventWaveformUseVolumeEnvelope];
      if (([v22 BOOLValue] & 1) == 0)
      {
        [v10 setObject:v22 forKeyedSubscript:CHHapticPatternKeyEventWaveformUseVolumeEnvelope];
      }

      v23 = [v21 objectForKey:CHHapticPatternKeyEventWaveformLoopEnabled];

      if ([v23 BOOLValue])
      {
        [v10 setObject:v23 forKeyedSubscript:CHHapticPatternKeyEventWaveformLoopEnabled];
      }
    }
  }

  else
  {
    v21 = [v6 type];
    [v10 setObject:v21 forKeyedSubscript:CHHapticPatternKeyEventType];
  }

  v24 = MEMORY[0x277CCABB0];
  [v6 relativeTime];
  v25 = [v24 numberWithDouble:?];
  [v10 setObject:v25 forKeyedSubscript:CHHapticPatternKeyTime];

  v26 = MEMORY[0x277CCABB0];
  [v6 duration];
  v27 = [v26 numberWithDouble:?];
  [v10 setObject:v27 forKeyedSubscript:CHHapticPatternKeyEventDuration];

  v28 = [v6 eventParameters];
  v29 = [(HapticDictionaryWriter *)self eventParamsToArray:v28];
  [v10 setObject:v29 forKeyedSubscript:CHHapticPatternKeyEventParameters];

  v30 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)eventParamsToArray:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = v14;
  v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:{16, v14}];
  if (v4)
  {
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v9 = [v7 parameterID];
        [v8 setObject:v9 forKeyedSubscript:CHHapticPatternKeyParameterID];

        v10 = MEMORY[0x277CCABB0];
        [v7 value];
        v11 = [v10 numberWithFloat:?];
        [v8 setObject:v11 forKeyedSubscript:CHHapticPatternKeyParameterValue];

        [v3 addObject:v8];
      }

      v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)paramToDictionary:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v4 setObject:v5 forKeyedSubscript:CHHapticPatternKeyParameter];

  v6 = [v4 objectForKeyedSubscript:CHHapticPatternKeyParameter];
  v7 = [v3 parameterID];
  [v6 setObject:v7 forKeyedSubscript:CHHapticPatternKeyParameterID];

  v8 = MEMORY[0x277CCABB0];
  [v3 relativeTime];
  v9 = [v8 numberWithDouble:?];
  [v6 setObject:v9 forKeyedSubscript:CHHapticPatternKeyTime];

  v10 = MEMORY[0x277CCABB0];
  [v3 value];
  v11 = [v10 numberWithFloat:?];
  [v6 setObject:v11 forKeyedSubscript:CHHapticPatternKeyParameterValue];

  return v4;
}

- (id)paramCurveToDictionary:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v5 setObject:v6 forKeyedSubscript:CHHapticPatternKeyParameterCurve];

  v7 = [v5 objectForKeyedSubscript:CHHapticPatternKeyParameterCurve];
  v8 = [v4 parameterID];
  [v7 setObject:v8 forKeyedSubscript:CHHapticPatternKeyParameterID];

  v9 = MEMORY[0x277CCABB0];
  [v4 relativeTime];
  v10 = [v9 numberWithDouble:?];
  [v7 setObject:v10 forKeyedSubscript:CHHapticPatternKeyTime];

  v11 = [v4 controlPoints];
  v12 = [(HapticDictionaryWriter *)self paramCurveControlPointsToArray:v11];
  [v7 setObject:v12 forKeyedSubscript:CHHapticPatternKeyParameterCurveControlPoints];

  return v5;
}

- (id)paramCurveControlPointsToArray:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = v15;
  v4 = [obj countByEnumeratingWithState:&v17 objects:v23 count:{16, v15}];
  if (v4)
  {
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        v21[0] = CHHapticPatternKeyTime;
        v8 = MEMORY[0x277CCABB0];
        [v7 relativeTime];
        v9 = [v8 numberWithDouble:?];
        v21[1] = CHHapticPatternKeyParameterValue;
        v22[0] = v9;
        v10 = MEMORY[0x277CCABB0];
        [v7 value];
        v11 = [v10 numberWithFloat:?];
        v22[1] = v11;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];

        [v3 addObject:v12];
      }

      v4 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v4);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v3;
}

@end