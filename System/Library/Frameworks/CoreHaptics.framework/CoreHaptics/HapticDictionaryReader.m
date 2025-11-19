@interface HapticDictionaryReader
- (BOOL)parseEventsAndParameters:(id)a3 withBaseURL:(id)a4 reply:(id)a5;
- (id)parseConfiguration:(id)a3 error:(id *)a4;
- (id)parseEvent:(id)a3 withBaseURL:(id)a4;
- (id)parseEventParams:(id)a3;
- (id)parseParam:(id)a3;
- (id)parseParamCurve:(id)a3;
- (id)parseParamCurveControlPoints:(id)a3;
- (id)readAndVerifyVersion:(id)a3 error:(id *)a4;
- (id)scanForEmbeddedResources:(id)a3;
@end

@implementation HapticDictionaryReader

- (id)readAndVerifyVersion:(id)a3 error:(id *)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 objectForKey:CHHapticPatternKeyVersion];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (kHAPIScope)
    {
      v12 = *kHAPIScope;
      if (!v12)
      {
LABEL_18:
        LODWORD(v13) = 1.0;
        v15 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
        v9 = v6;
        v6 = v15;
        goto LABEL_19;
      }
    }

    else
    {
      v12 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315650;
      v22 = "HapticDictionaryReader.mm";
      v23 = 1024;
      v24 = 38;
      v25 = 2080;
      v26 = "[HapticDictionaryReader readAndVerifyVersion:error:]";
      _os_log_impl(&dword_21569A000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: WARNING: Missing or malformed version key - assuming v1.0", &v21, 0x1Cu);
    }

    goto LABEL_18;
  }

  [v6 floatValue];
  v8 = v7;
  v9 = kHAPIScope;
  if (v7 <= 1.1 && v7 >= 1.0)
  {
    if (kHAPIScope)
    {
      if (*(kHAPIScope + 8))
      {
        v18 = *kHAPIScope;
        if (v18)
        {
          v19 = v18;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            v21 = 136315906;
            v22 = "HapticDictionaryReader.mm";
            v23 = 1024;
            v24 = 48;
            v25 = 2080;
            v26 = "[HapticDictionaryReader readAndVerifyVersion:error:]";
            v27 = 2048;
            v28 = v8;
            _os_log_impl(&dword_21569A000, v19, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Pattern version %.1f", &v21, 0x26u);
          }
        }
      }

      v9 = 0;
    }

    goto LABEL_19;
  }

  if (!kHAPIScope)
  {
    v11 = MEMORY[0x277D86220];
    v20 = MEMORY[0x277D86220];
    goto LABEL_30;
  }

  v11 = *kHAPIScope;
  if (v11)
  {
LABEL_30:
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v21 = 136315906;
      v22 = "HapticDictionaryReader.mm";
      v23 = 1024;
      v24 = 44;
      v25 = 2080;
      v26 = "[HapticDictionaryReader readAndVerifyVersion:error:]";
      v27 = 2048;
      v28 = v8;
      _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Unsupported version number: %.1f", &v21, 0x26u);
    }
  }

  if (a4)
  {
    *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4809 userInfo:0];
  }

  v9 = v6;
  v6 = 0;
LABEL_19:

  v16 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)parseConfiguration:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = [v4 objectForKey:CHHapticPatternKeyConfiguration];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__HapticDictionaryReader_parseConfiguration_error___block_invoke;
  v9[3] = &unk_2781C8F70;
  v7 = v5;
  v10 = v7;
  [v6 enumerateKeysAndObjectsUsingBlock:v9];

  return v7;
}

void __51__HapticDictionaryReader_parseConfiguration_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v5 isEqualToString:CHHapticPatternKeyLocality])
  {
    v7 = v6;
    if ([v7 length])
    {
      if (kHAPIScope)
      {
        if (*(kHAPIScope + 8))
        {
          v8 = *kHAPIScope;
          if (v8)
          {
            v9 = v8;
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
            {
              v24 = 136315906;
              v25 = "HapticDictionaryReader.mm";
              v26 = 1024;
              v27 = 64;
              v28 = 2080;
              v29 = "[HapticDictionaryReader parseConfiguration:error:]_block_invoke";
              v30 = 2112;
              v31 = v7;
              _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Pattern Locality: '%@'", &v24, 0x26u);
            }
          }
        }
      }

      [*(a1 + 32) setObject:v7 forKey:@"Locality"];
    }

LABEL_43:

    goto LABEL_44;
  }

  if ([v5 isEqualToString:CHHapticPatternKeyPriority])
  {
    v10 = v6;
    if ([v10 length])
    {
      if (kHAPIScope)
      {
        if (*(kHAPIScope + 8))
        {
          v11 = *kHAPIScope;
          if (v11)
          {
            v12 = v11;
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              v24 = 136315906;
              v25 = "HapticDictionaryReader.mm";
              v26 = 1024;
              v27 = 71;
              v28 = 2080;
              v29 = "[HapticDictionaryReader parseConfiguration:error:]_block_invoke";
              v30 = 2112;
              v31 = v10;
              _os_log_impl(&dword_21569A000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Pattern Priority: '%@'", &v24, 0x26u);
            }
          }
        }
      }

      [*(a1 + 32) setObject:v10 forKey:@"Priority"];
    }

    goto LABEL_43;
  }

  if ([v5 isEqualToString:CHHapticPatternKeyHapticPowerUsage])
  {
    v13 = v6;
    if ([v13 length])
    {
      if (kHAPIScope)
      {
        if (*(kHAPIScope + 8))
        {
          v14 = *kHAPIScope;
          if (v14)
          {
            v15 = v14;
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              v24 = 136315906;
              v25 = "HapticDictionaryReader.mm";
              v26 = 1024;
              v27 = 78;
              v28 = 2080;
              v29 = "[HapticDictionaryReader parseConfiguration:error:]_block_invoke";
              v30 = 2112;
              v31 = v13;
              _os_log_impl(&dword_21569A000, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Pattern HapticPowerUsage: '%@'", &v24, 0x26u);
            }
          }
        }
      }

      [*(a1 + 32) setObject:v13 forKey:@"HapticPowerUsage"];
    }

    goto LABEL_43;
  }

  if ([v5 isEqualToString:CHHapticPatternKeyAudioPowerUsage])
  {
    v16 = v6;
    if ([v16 length])
    {
      if (kHAPIScope)
      {
        if (*(kHAPIScope + 8))
        {
          v17 = *kHAPIScope;
          if (v17)
          {
            v18 = v17;
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              v24 = 136315906;
              v25 = "HapticDictionaryReader.mm";
              v26 = 1024;
              v27 = 85;
              v28 = 2080;
              v29 = "[HapticDictionaryReader parseConfiguration:error:]_block_invoke";
              v30 = 2112;
              v31 = v16;
              _os_log_impl(&dword_21569A000, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Pattern AudioPowerUsage: '%@'", &v24, 0x26u);
            }
          }
        }
      }

      [*(a1 + 32) setObject:v16 forKey:@"AudioPowerUsage"];
    }

    goto LABEL_43;
  }

  if ([v5 isEqualToString:CHHapticPatternKeyUsageCategory])
  {
    v19 = v6;
    if ([v19 length])
    {
      v21 = CALog::LogObjIfEnabled(6, kHAPIScope, v20);
      v22 = v21;
      if (v21 && os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v24 = 136315906;
        v25 = "HapticDictionaryReader.mm";
        v26 = 1024;
        v27 = 92;
        v28 = 2080;
        v29 = "[HapticDictionaryReader parseConfiguration:error:]_block_invoke";
        v30 = 2112;
        v31 = v19;
        _os_log_impl(&dword_21569A000, v22, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Pattern UsageCategory: '%@'", &v24, 0x26u);
      }

      [*(a1 + 32) setObject:v19 forKey:@"UsageCategory"];
    }

    goto LABEL_43;
  }

LABEL_44:

  v23 = *MEMORY[0x277D85DE8];
}

- (id)scanForEmbeddedResources:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  [a3 objectForKey:CHHapticPatternKeyPattern];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__0;
  v20 = __Block_byref_object_dispose__0;
  v21 = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v22 count:16];
  if (v4)
  {
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __51__HapticDictionaryReader_scanForEmbeddedResources___block_invoke;
        v11[3] = &unk_2781C90D0;
        v11[4] = &v16;
        [v7 enumerateKeysAndObjectsUsingBlock:v11];
      }

      v4 = [v3 countByEnumeratingWithState:&v12 objects:v22 count:16];
    }

    while (v4);
  }

  v8 = v17[5];
  _Block_object_dispose(&v16, 8);

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void __51__HapticDictionaryReader_scanForEmbeddedResources___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([a2 isEqualToString:CHHapticPatternKeyEvent])
  {
    v6 = v5;
    v7 = [v6 objectForKey:CHHapticPatternKeyEventWaveformPath];
    if (!v7)
    {
LABEL_20:

      goto LABEL_21;
    }

    if (!*(*(*(a1 + 32) + 8) + 40))
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v9 = *(*(a1 + 32) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }

    v11 = [v6 objectForKey:CHHapticPatternKeyEventWaveformUseVolumeEnvelope];
    if (v11)
    {
      v12 = [MEMORY[0x277CBEB38] dictionaryWithObject:v11 forKey:CHHapticAudioResourceKeyUseVolumeEnvelope];
    }

    else
    {
      v12 = 0;
    }

    v13 = [v6 objectForKey:CHHapticPatternKeyEventWaveformLoopEnabled];
    if (v13)
    {
      if (v12)
      {
        [v12 setObject:v13 forKeyedSubscript:CHHapticAudioResourceKeyLoopEnabled];
      }

      else
      {
        v12 = [MEMORY[0x277CBEB38] dictionaryWithObject:v13 forKey:CHHapticAudioResourceKeyLoopEnabled];
      }
    }

    if (kHAPIScope)
    {
      v14 = *kHAPIScope;
      if (!v14)
      {
LABEL_19:
        v16 = *(*(*(a1 + 32) + 8) + 40);
        v17 = [CHEmbeddedAudioResourceInfo alloc];
        v18 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7 isDirectory:0];
        v19 = [(CHEmbeddedAudioResourceInfo *)v17 initWithURL:v18 options:v12];
        [v16 addObject:v19];

        goto LABEL_20;
      }
    }

    else
    {
      v14 = MEMORY[0x277D86220];
      v15 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v21 = 136316162;
      v22 = "HapticDictionaryReader.mm";
      v23 = 1024;
      v24 = 136;
      v25 = 2080;
      v26 = "[HapticDictionaryReader scanForEmbeddedResources:]_block_invoke";
      v27 = 2112;
      v28 = v7;
      v29 = 2112;
      v30 = v12;
      _os_log_impl(&dword_21569A000, v14, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Adding embedded audio resource path '%@', options '%@'", &v21, 0x30u);
    }

    goto LABEL_19;
  }

LABEL_21:

  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)parseEventsAndParameters:(id)a3 withBaseURL:(id)a4 reply:(id)a5
{
  v53 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v27 = a4;
  v25 = a5;
  v24 = v8;
  v9 = [v8 objectForKey:CHHapticPatternKeyPattern];
  v23 = v9;
  if (v9)
  {
    v10 = 0;
    goto LABEL_11;
  }

  if (!kHAPIScope)
  {
    v11 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
    goto LABEL_7;
  }

  v11 = *kHAPIScope;
  if (v11)
  {
LABEL_7:
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "HapticDictionaryReader.mm";
      *&buf[12] = 1024;
      *&buf[14] = 156;
      *&buf[18] = 2080;
      *&buf[20] = "[HapticDictionaryReader parseEventsAndParameters:withBaseURL:reply:]";
      *&buf[28] = 2112;
      *&buf[30] = CHHapticPatternKeyPattern;
      _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Pattern dictionary is missing '%@' key", buf, 0x26u);
    }
  }

  v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4814 userInfo:{0, 0}];
  (*(v25 + 2))(v25, 0, 0, 0, v10);
LABEL_11:
  v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy__0;
  *&buf[32] = __Block_byref_object_dispose__0;
  v52 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__0;
  v42 = __Block_byref_object_dispose__0;
  v43 = 0;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v9;
  v13 = [obj countByEnumeratingWithState:&v34 objects:v50 count:16];
  if (v13)
  {
    v14 = *v35;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v35 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v34 + 1) + 8 * i);
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __69__HapticDictionaryReader_parseEventsAndParameters_withBaseURL_reply___block_invoke;
        v29[3] = &unk_2781C90F8;
        v29[4] = self;
        v30 = v27;
        v31 = v28;
        v32 = buf;
        v33 = &v38;
        [v16 enumerateKeysAndObjectsUsingBlock:v29];
      }

      v13 = [obj countByEnumeratingWithState:&v34 objects:v50 count:16];
    }

    while (v13);
  }

  if (![v28 count] && !objc_msgSend(*(*&buf[8] + 40), "count") && !objc_msgSend(v39[5], "count"))
  {
    if (kHAPIScope)
    {
      v21 = *kHAPIScope;
      if (!v21)
      {
LABEL_30:
        v18 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4814 userInfo:{0, v23}];

        (*(v25 + 2))(v25, 0, 0, 0, v18);
        v17 = 0;
        goto LABEL_22;
      }
    }

    else
    {
      v21 = MEMORY[0x277D86220];
      v22 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *v44 = 136315650;
      v45 = "HapticDictionaryReader.mm";
      v46 = 1024;
      v47 = 196;
      v48 = 2080;
      v49 = "[HapticDictionaryReader parseEventsAndParameters:withBaseURL:reply:]";
      _os_log_impl(&dword_21569A000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Empty pattern", v44, 0x1Cu);
    }

    goto LABEL_30;
  }

  (*(v25 + 2))(v25, v28, *(*&buf[8] + 40), v39[5], 0);
  v17 = 1;
  v18 = v10;
LABEL_22:
  _Block_object_dispose(&v38, 8);

  _Block_object_dispose(buf, 8);
  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

void __69__HapticDictionaryReader_parseEventsAndParameters_withBaseURL_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  if ([v13 isEqualToString:CHHapticPatternKeyEvent])
  {
    v6 = [*(a1 + 32) parseEvent:v5 withBaseURL:*(a1 + 40)];
    [*(a1 + 48) addObject:v6];
  }

  else if ([v13 isEqualToString:CHHapticPatternKeyParameter])
  {
    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v8 = *(*(a1 + 56) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;
    }

    v6 = [*(a1 + 32) parseParam:v5];
    [*(*(*(a1 + 56) + 8) + 40) addObject:v6];
  }

  else
  {
    if (![v13 isEqualToString:CHHapticPatternKeyParameterCurve])
    {
      goto LABEL_12;
    }

    if (!*(*(*(a1 + 64) + 8) + 40))
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v11 = *(*(a1 + 64) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;
    }

    v6 = [*(a1 + 32) parseParamCurve:v5];
    [*(*(*(a1 + 64) + 8) + 40) addObject:v6];
  }

LABEL_12:
}

- (id)parseEvent:(id)a3 withBaseURL:(id)a4
{
  v61 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__0;
  v55 = __Block_byref_object_dispose__0;
  v56 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__0;
  v49 = __Block_byref_object_dispose__0;
  v50 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__0;
  v43 = __Block_byref_object_dispose__0;
  v44 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0xBFF0000000000000;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0xBFF0000000000000;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __49__HapticDictionaryReader_parseEvent_withBaseURL___block_invoke;
  v30[3] = &unk_2781C9120;
  v30[6] = &v35;
  v30[7] = &v31;
  v30[4] = self;
  v30[5] = &v51;
  v30[8] = &v39;
  v30[9] = &v45;
  [a3 enumerateKeysAndObjectsUsingBlock:v30];
  v7 = v52[5];
  if (!v7)
  {
    if (kHAPIScope)
    {
      v8 = *kHAPIScope;
      if (!v8)
      {
        v9 = -4830;
        v10 = @"Missing event type";
        v11 = @"CoreHapticsMissingEventTypeException";
        goto LABEL_36;
      }
    }

    else
    {
      v8 = MEMORY[0x277D86220];
      v19 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v58 = "HapticDictionaryReader.mm";
      v59 = 1024;
      *v60 = 239;
      *&v60[4] = 2080;
      *&v60[6] = "[HapticDictionaryReader parseEvent:withBaseURL:]";
      _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Missing event type", buf, 0x1Cu);
    }

    v9 = -4830;
    v10 = @"Missing event type";
    v11 = @"CoreHapticsMissingEventTypeException";
    goto LABEL_35;
  }

  if (v36[3] < 0.0)
  {
    if (kHAPIScope)
    {
      v8 = *kHAPIScope;
      if (!v8)
      {
        v9 = -4822;
        v10 = @"Illegal or missing event time";
        v11 = @"CoreHapticsInvalidEventTimeException";
        goto LABEL_36;
      }
    }

    else
    {
      v8 = MEMORY[0x277D86220];
      v20 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v58 = "HapticDictionaryReader.mm";
      v59 = 1024;
      *v60 = 243;
      *&v60[4] = 2080;
      *&v60[6] = "[HapticDictionaryReader parseEvent:withBaseURL:]";
      _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Illegal or missing event time", buf, 0x1Cu);
    }

    v9 = -4822;
    v10 = @"Illegal or missing event time";
    v11 = @"CoreHapticsInvalidEventTimeException";
    goto LABEL_35;
  }

  v12 = v32[3];
  if (v12 != -1.0 && v12 < 0.0)
  {
    if (kHAPIScope)
    {
      v8 = *kHAPIScope;
      if (!v8)
      {
        v9 = -4823;
        v10 = @"Illegal event duration";
        v11 = @"CoreHapticsInvalidEventDurationException";
        goto LABEL_36;
      }
    }

    else
    {
      v8 = MEMORY[0x277D86220];
      v21 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v58 = "HapticDictionaryReader.mm";
      v59 = 1024;
      *v60 = 247;
      *&v60[4] = 2080;
      *&v60[6] = "[HapticDictionaryReader parseEvent:withBaseURL:]";
      _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Illegal event duration", buf, 0x1Cu);
    }

    v9 = -4823;
    v10 = @"Illegal event duration";
    v11 = @"CoreHapticsInvalidEventDurationException";
    goto LABEL_35;
  }

  if ([v7 isEqualToString:CHHapticEventTypeAudioCustom])
  {
    v13 = v46[5];
    if (!v13)
    {
      if (kHAPIScope)
      {
        v8 = *kHAPIScope;
        if (!v8)
        {
          v9 = -4830;
          v10 = @"Missing or invalid audio resource path";
          v11 = @"CoreHapticsBadEventEntryException";
LABEL_36:
          Haptic_RaiseException(&v11->isa, &v10->isa, v9);
        }
      }

      else
      {
        v8 = MEMORY[0x277D86220];
        v29 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v58 = "HapticDictionaryReader.mm";
        v59 = 1024;
        *v60 = 252;
        *&v60[4] = 2080;
        *&v60[6] = "[HapticDictionaryReader parseEvent:withBaseURL:]";
        _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Custom event is missing its audio resource path", buf, 0x1Cu);
      }

      v9 = -4830;
      v10 = @"Missing or invalid audio resource path";
      v11 = @"CoreHapticsBadEventEntryException";
LABEL_35:

      goto LABEL_36;
    }

    v15 = FullURLPathFromURL(v13, v6);
    if (!v15)
    {
      v16 = CALog::LogObjIfEnabled(1, kHAPIScope, v14);
      v17 = v16;
      if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v58 = "HapticDictionaryReader.mm";
        v59 = 1024;
        *v60 = 261;
        *&v60[4] = 2080;
        *&v60[6] = "[HapticDictionaryReader parseEvent:withBaseURL:]";
        _os_log_impl(&dword_21569A000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Custom event's audio resource path cannot be resolved", buf, 0x1Cu);
      }

      Haptic_RaiseException(&cfstr_Corehapticsbad.isa, &cfstr_InvalidAudioRe.isa, -4830);
    }

    AudioResource::AudioResource(buf, v15);
    if (AudioResource::verifyAudioFile(v18, 1))
    {
      Haptic_RaiseException(&cfstr_Corehapticsinv_1.isa, &cfstr_InvalidAudioRe_0.isa, -4824);
    }

    v27 = [CHHapticEvent alloc];
    ++self->_urlIndex;
    v28 = v40[5];
    v24 = [CHHapticEvent initWithAudioResourceIndex:v27 parameters:"initWithAudioResourceIndex:parameters:time:duration:" time:v36[3] duration:*&v60[2] / *&v60[10]];
    AudioResource::~AudioResource(buf);
  }

  else
  {
    v22 = [CHHapticEvent alloc];
    v23 = v32[3];
    if (v23 == -1.0)
    {
      v23 = 0.0;
    }

    v24 = [(CHHapticEvent *)v22 initWithEventType:v52[5] parameters:v40[5] relativeTime:v36[3] duration:v23];
  }

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);

  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v51, 8);

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

void __49__HapticDictionaryReader_parseEvent_withBaseURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v17 = v5;
  if ([v17 isEqualToString:CHHapticPatternKeyEventType])
  {
    v7 = *(*(a1 + 40) + 8);
    v8 = v6;
    v9 = *(v7 + 40);
    *(v7 + 40) = v8;
LABEL_7:

    goto LABEL_8;
  }

  if (([v17 isEqualToString:CHHapticPatternKeyTime] & 1) != 0 || objc_msgSend(v17, "isEqualToString:", @"EventTime"))
  {
    v9 = v6;
    [v9 floatValue];
    v11 = v10;
    v12 = *(a1 + 48);
LABEL_6:
    *(*(v12 + 8) + 24) = v11;
    goto LABEL_7;
  }

  if ([v17 isEqualToString:CHHapticPatternKeyEventDuration])
  {
    v9 = v6;
    [v9 floatValue];
    v11 = v13;
    v12 = *(a1 + 56);
    goto LABEL_6;
  }

  if ([v17 isEqualToString:CHHapticPatternKeyEventParameters])
  {
    v14 = [*(a1 + 32) parseEventParams:v6];
    v15 = *(a1 + 64);
LABEL_17:
    v16 = *(v15 + 8);
    v9 = *(v16 + 40);
    *(v16 + 40) = v14;
    goto LABEL_7;
  }

  if ([v17 isEqualToString:CHHapticPatternKeyEventWaveformPath])
  {
    v14 = [MEMORY[0x277CBEBC0] fileURLWithPath:v6 isDirectory:0];
    v15 = *(a1 + 72);
    goto LABEL_17;
  }

LABEL_8:
}

- (id)parseEventParams:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v18 = a3;
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v18;
  v4 = [obj countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v4)
  {
    v5 = *v21;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v20 + 1) + 8 * i);
        v8 = [v7 objectForKey:CHHapticPatternKeyParameterID];
        if (!v8)
        {
          if (kHAPIScope)
          {
            v9 = *kHAPIScope;
            if (!v9)
            {
              goto LABEL_14;
            }
          }

          else
          {
            v9 = MEMORY[0x277D86220];
            v10 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v25 = "HapticDictionaryReader.mm";
            v26 = 1024;
            v27 = 288;
            v28 = 2080;
            v29 = "[HapticDictionaryReader parseEventParams:]";
            _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Event parameter has invalid or missing parameter ID", buf, 0x1Cu);
          }

LABEL_14:
          Haptic_RaiseException(&cfstr_Corehapticsbad_0.isa, &cfstr_EventParameter.isa, -4831);
        }

        v11 = [v7 objectForKey:CHHapticPatternKeyParameterValue];
        if (!v11)
        {
          if (kHAPIScope)
          {
            v12 = *kHAPIScope;
            if (!v12)
            {
              goto LABEL_23;
            }
          }

          else
          {
            v12 = MEMORY[0x277D86220];
            v13 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v25 = "HapticDictionaryReader.mm";
            v26 = 1024;
            v27 = 295;
            v28 = 2080;
            v29 = "[HapticDictionaryReader parseEventParams:]";
            _os_log_impl(&dword_21569A000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Event parameter has invalid or missing parameter value", buf, 0x1Cu);
          }

LABEL_23:
          Haptic_RaiseException(&cfstr_Corehapticsbad_0.isa, &cfstr_EventParameter_0.isa, -4831);
        }

        v14 = [CHHapticEventParameter alloc];
        [v11 floatValue];
        v15 = [(CHHapticEventParameter *)v14 initWithParameterID:v8 value:?];
        [v3 addObject:v15];
      }

      v4 = [obj countByEnumeratingWithState:&v20 objects:v30 count:16];
    }

    while (v4);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)parseParam:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__0;
  v26 = __Block_byref_object_dispose__0;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0xBFF0000000000000;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __37__HapticDictionaryReader_parseParam___block_invoke;
  v13[3] = &unk_2781C9148;
  v13[4] = &v22;
  v13[5] = &v18;
  v13[6] = &v14;
  [v3 enumerateKeysAndObjectsUsingBlock:v13];
  if (!v23[5] || v19[3] == -1.0)
  {
    if (kHAPIScope)
    {
      v7 = *kHAPIScope;
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v7 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = v23[5] == 0;
      *buf = 136315906;
      v29 = "HapticDictionaryReader.mm";
      if (v9)
      {
        v10 = "type";
      }

      else
      {
        v10 = "time";
      }

      v30 = 1024;
      v31 = 330;
      v32 = 2080;
      v33 = "[HapticDictionaryReader parseParam:]";
      v34 = 2080;
      v35 = v10;
      _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Param is missing a %s", buf, 0x26u);
    }

LABEL_14:
    Haptic_RaiseException(&cfstr_Corehapticsbad_0.isa, &cfstr_ParameterHasIn.isa, -4831);
  }

  v4 = [CHHapticDynamicParameter alloc];
  v5 = v15[3];
  *&v5 = v5;
  v6 = [(CHHapticDynamicParameter *)v4 initWithParameterID:v23[5] value:v5 relativeTime:v19[3]];
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);

  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

void __37__HapticDictionaryReader_parseParam___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v14 = v5;
  if ([v14 isEqualToString:CHHapticPatternKeyParameterID])
  {
    v7 = *(a1[4] + 8);
    v8 = v6;
    v9 = *(v7 + 40);
    *(v7 + 40) = v8;
LABEL_7:

    goto LABEL_8;
  }

  if (([v14 isEqualToString:CHHapticPatternKeyTime] & 1) != 0 || objc_msgSend(v14, "isEqualToString:", @"ParameterTime"))
  {
    v9 = v6;
    [v9 floatValue];
    v11 = v10;
    v12 = a1[5];
LABEL_6:
    *(*(v12 + 8) + 24) = v11;
    goto LABEL_7;
  }

  if ([v14 isEqualToString:CHHapticPatternKeyParameterValue])
  {
    v9 = v6;
    [v9 floatValue];
    v11 = v13;
    v12 = a1[6];
    goto LABEL_6;
  }

LABEL_8:
}

- (id)parseParamCurve:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__0;
  v26 = __Block_byref_object_dispose__0;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0xBFF0000000000000;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __42__HapticDictionaryReader_parseParamCurve___block_invoke;
  v11[3] = &unk_2781C9170;
  v11[6] = &v18;
  v11[7] = &v12;
  v11[4] = self;
  v11[5] = &v22;
  [a3 enumerateKeysAndObjectsUsingBlock:v11];
  if (!v23[5] || v19[3] == -1.0)
  {
    if (kHAPIScope)
    {
      v5 = *kHAPIScope;
      if (!v5)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v5 = MEMORY[0x277D86220];
      v6 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = v23[5] == 0;
      *buf = 136315906;
      v29 = "HapticDictionaryReader.mm";
      if (v7)
      {
        v8 = "type";
      }

      else
      {
        v8 = "time";
      }

      v30 = 1024;
      v31 = 359;
      v32 = 2080;
      v33 = "[HapticDictionaryReader parseParamCurve:]";
      v34 = 2080;
      v35 = v8;
      _os_log_impl(&dword_21569A000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Param is missing a %s", buf, 0x26u);
    }

LABEL_14:
    Haptic_RaiseException(&cfstr_Corehapticsbad_0.isa, &cfstr_Parametercurve.isa, -4831);
  }

  v3 = [CHHapticParameterCurve alloc];
  v4 = [(CHHapticParameterCurve *)v3 initWithParameterID:v23[5] controlPoints:v13[5] relativeTime:v19[3]];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);

  v9 = *MEMORY[0x277D85DE8];

  return v4;
}

void __42__HapticDictionaryReader_parseParamCurve___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = v5;
  if ([v13 isEqualToString:CHHapticPatternKeyParameterID])
  {
    v7 = *(*(a1 + 40) + 8);
    v8 = v6;
    v9 = *(v7 + 40);
    *(v7 + 40) = v8;
  }

  else if ([v13 isEqualToString:CHHapticPatternKeyTime])
  {
    v9 = v6;
    [v9 floatValue];
    *(*(*(a1 + 48) + 8) + 24) = v10;
  }

  else
  {
    if (![v13 isEqualToString:CHHapticPatternKeyParameterCurveControlPoints])
    {
      goto LABEL_8;
    }

    v11 = [*(a1 + 32) parseParamCurveControlPoints:v6];
    v12 = *(*(a1 + 56) + 8);
    v9 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

LABEL_8:
}

- (id)parseParamCurveControlPoints:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v5)
  {
    v23 = v3;
    v6 = *v26;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v26 != v6)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v25 + 1) + 8 * v7);
      v9 = [v8 objectForKey:{CHHapticPatternKeyTime, v23}];
      if (!v9)
      {
        break;
      }

      v10 = [v8 objectForKey:CHHapticPatternKeyParameterValue];
      if (!v10)
      {
        if (kHAPIScope)
        {
          v18 = *kHAPIScope;
          if (!v18)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v18 = MEMORY[0x277D86220];
          v20 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v30 = "HapticDictionaryReader.mm";
          v31 = 1024;
          v32 = 378;
          v33 = 2080;
          v34 = "[HapticDictionaryReader parseParamCurveControlPoints:]";
          _os_log_impl(&dword_21569A000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Parameter curve control point has invalid or missing value", buf, 0x1Cu);
        }

LABEL_24:
LABEL_25:

        v17 = v4;
        v4 = 0;
        goto LABEL_26;
      }

      v11 = [CHHapticParameterCurveControlPoint alloc];
      [v9 doubleValue];
      v13 = v12;
      [v10 floatValue];
      LODWORD(v15) = v14;
      v16 = [(CHHapticParameterCurveControlPoint *)v11 initWithRelativeTime:v13 value:v15];
      [v4 addObject:v16];

      if (v5 == ++v7)
      {
        v5 = [obj countByEnumeratingWithState:&v25 objects:v35 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    if (kHAPIScope)
    {
      v9 = *kHAPIScope;
      if (!v9)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v9 = MEMORY[0x277D86220];
      v19 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v30 = "HapticDictionaryReader.mm";
      v31 = 1024;
      v32 = 372;
      v33 = 2080;
      v34 = "[HapticDictionaryReader parseParamCurveControlPoints:]";
      _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Parameter curve control point has invalid or missing time", buf, 0x1Cu);
    }

    goto LABEL_24;
  }

LABEL_10:
  v17 = obj;
LABEL_26:

  v21 = *MEMORY[0x277D85DE8];

  return v4;
}

@end