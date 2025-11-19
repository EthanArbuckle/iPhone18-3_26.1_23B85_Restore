@interface EventToDictionaryConverter
+ (id)convertEvents:(id)a3;
+ (id)eventTypeToNSString:(unint64_t)a3;
+ (id)paramTypeToNSString:(unint64_t)a3;
@end

@implementation EventToDictionaryConverter

+ (id)eventTypeToNSString:(unint64_t)a3
{
  v43[33] = *MEMORY[0x277D85DE8];
  {
    v41 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:32514];
    v42[0] = v41;
    v43[0] = @"AudioSineTransient";
    v40 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:32513];
    v42[1] = v40;
    v43[1] = @"AudioSine";
    v39 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:32611];
    v42[2] = v39;
    v43[2] = @"HapticSineTransient";
    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:32610];
    v42[3] = v38;
    v43[3] = @"HapticSine";
    v37 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:15713];
    v42[4] = v37;
    v43[4] = @"HapticSineLow";
    v36 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:15969];
    v42[5] = v36;
    v43[5] = @"HapticSineLowMid";
    v35 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:16225];
    v42[6] = v35;
    v43[6] = @"HapticSineMid";
    v34 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:16481];
    v42[7] = v34;
    v43[7] = @"HapticSineMidHigh";
    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:16737];
    v42[8] = v33;
    v43[8] = @"HapticSineHigh";
    v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:8021];
    v42[9] = v32;
    v43[9] = @"HapticMicroTap2";
    v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:11093];
    v42[10] = v31;
    v43[10] = @"HapticMicroTap3";
    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:14165];
    v42[11] = v30;
    v43[11] = @"HapticMicroTap4";
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:17237];
    v42[12] = v29;
    v43[12] = @"HapticMicroTap5";
    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:20309];
    v42[13] = v28;
    v43[13] = @"HapticMicroTap6";
    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:23381];
    v42[14] = v27;
    v43[14] = @"HapticMicroTap7";
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:26453];
    v42[15] = v26;
    v43[15] = @"HapticMicroTap8";
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:29525];
    v42[16] = v25;
    v43[16] = @"HapticMicroTap9";
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:8022];
    v42[17] = v24;
    v43[17] = @"HapticMiniTap2";
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:11094];
    v42[18] = v23;
    v43[18] = @"HapticMiniTap3";
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:14166];
    v42[19] = v22;
    v43[19] = @"HapticMiniTap4";
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:17238];
    v42[20] = v21;
    v43[20] = @"HapticMiniTap5";
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:20310];
    v42[21] = v20;
    v43[21] = @"HapticMiniTap6";
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:23382];
    v42[22] = v19;
    v43[22] = @"HapticMiniTap7";
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:26454];
    v42[23] = v18;
    v43[23] = @"HapticMiniTap8";
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:29526];
    v42[24] = v17;
    v43[24] = @"HapticMiniTap9";
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:8023];
    v42[25] = v16;
    v43[25] = @"HapticFullTap2";
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:11095];
    v42[26] = v9;
    v43[26] = @"HapticFullTap3";
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:14167];
    v42[27] = v10;
    v43[27] = @"HapticFullTap4";
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:17239];
    v42[28] = v11;
    v43[28] = @"HapticFullTap5";
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:20311];
    v42[29] = v12;
    v43[29] = @"HapticFullTap6";
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:23383];
    v42[30] = v13;
    v43[30] = @"HapticFullTap7";
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:26455];
    v42[31] = v14;
    v43[31] = @"HapticFullTap8";
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:29527];
    v42[32] = v15;
    v43[32] = @"HapticFullTap9";
    +[EventToDictionaryConverter eventTypeToNSString:]::eventDict = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:33];
  }

  v4 = +[EventToDictionaryConverter eventTypeToNSString:]::eventDict;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a3];
  v6 = [v4 objectForKey:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)paramTypeToNSString:(unint64_t)a3
{
  v22[11] = *MEMORY[0x277D85DE8];
  {
    v17 = a3;
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:1000];
    v21[0] = v20;
    v22[0] = @"AudioVolume";
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:1001];
    v21[1] = v19;
    v22[1] = @"AudioTransposition";
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:1010];
    v21[2] = v18;
    v22[2] = @"AudioAttackTime";
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:1011];
    v21[3] = v9;
    v22[3] = @"AudioDecayTime";
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:1012];
    v21[4] = v10;
    v22[4] = @"AudioReleaseTime";
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:1013];
    v21[5] = v11;
    v22[5] = @"AudioLPFilterCutoff";
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:2000];
    v21[6] = v12;
    v22[6] = @"HapticVolume";
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:2001];
    v21[7] = v13;
    v22[7] = @"HapticTransposition";
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:2010];
    v21[8] = v14;
    v22[8] = @"HapticAttackTime";
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:2011];
    v21[9] = v15;
    v22[9] = @"HapticDecayTime";
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:2012];
    v21[10] = v16;
    v22[10] = @"HapticReleaseTime";
    +[EventToDictionaryConverter paramTypeToNSString:]::paramDict = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:11];

    a3 = v17;
  }

  v4 = +[EventToDictionaryConverter paramTypeToNSString:]::paramDict;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a3];
  v6 = [v4 objectForKey:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)convertEvents:(id)a3
{
  v57 = *MEMORY[0x277D85DE8];
  v39 = a3;
  v40 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v39;
  v3 = [obj countByEnumeratingWithState:&v44 objects:v56 count:16];
  if (v3)
  {
    v43 = *v45;
    do
    {
      v4 = 0;
      v42 = v3;
      do
      {
        if (*v45 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v44 + 1) + 8 * v4);
        if ([v5 eventCategory] == 1)
        {
          v6 = +[EventToDictionaryConverter paramTypeToNSString:](EventToDictionaryConverter, "paramTypeToNSString:", [v5 paramType]);
          if (v6)
          {
            v7 = MEMORY[0x277CBEAC0];
            v8 = MEMORY[0x277CCABB0];
            [v5 value];
            v9 = [v8 numberWithFloat:?];
            v10 = MEMORY[0x277CCABB0];
            [v5 time];
            *&v11 = v11;
            v12 = [v10 numberWithFloat:v11];
            v13 = [v7 dictionaryWithObjectsAndKeys:{v6, @"Type", v9, @"Value", v12, @"Time", 0}];

            v14 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v13 forKey:@"Param"];
            [v40 addObject:v14];
            goto LABEL_38;
          }

          if (kHAPIScope)
          {
            v27 = *kHAPIScope;
            if (v27)
            {
              goto LABEL_28;
            }

            goto LABEL_39;
          }

          v28 = MEMORY[0x277D86220];
          v29 = MEMORY[0x277D86220];
          v27 = v28;
LABEL_28:
          v14 = v27;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v30 = [v5 paramType];
            *buf = 136315906;
            v49 = "EventToDictionaryConverter.mm";
            v50 = 1024;
            v51 = 111;
            v52 = 2080;
            v53 = "+[EventToDictionaryConverter convertEvents:]";
            v54 = 1024;
            v55 = v30;
            v31 = v14;
LABEL_36:
            _os_log_impl(&dword_21569A000, v31, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Unknown param type: %u", buf, 0x22u);
            goto LABEL_37;
          }

          goto LABEL_37;
        }

        if ([v5 eventCategory])
        {
          goto LABEL_40;
        }

        v6 = +[EventToDictionaryConverter eventTypeToNSString:](EventToDictionaryConverter, "eventTypeToNSString:", [v5 eventType]);
        if (v6)
        {
          v15 = MEMORY[0x277CBEB38];
          v16 = MEMORY[0x277CCABB0];
          [v5 time];
          *&v17 = v17;
          v18 = [v16 numberWithFloat:v17];
          v13 = [v15 dictionaryWithObjectsAndKeys:{v6, @"Type", v18, @"Time", 0}];

          for (i = 0; ; i = v20 + 1)
          {
            v20 = i;
            if ([v5 fixedParamCount] <= i)
            {
              v14 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v13 forKey:@"Event"];
              [v40 addObject:v14];
              goto LABEL_38;
            }

            v21 = [v5 fixedParams] + 16 * i;
            v22 = [EventToDictionaryConverter paramTypeToNSString:*v21];
            if (v22)
            {
              break;
            }

            if (!kHAPIScope)
            {
              v24 = MEMORY[0x277D86220];
              v25 = MEMORY[0x277D86220];
LABEL_21:
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                v26 = *v21;
                *buf = 136315906;
                v49 = "EventToDictionaryConverter.mm";
                v50 = 1024;
                v51 = 128;
                v52 = 2080;
                v53 = "+[EventToDictionaryConverter convertEvents:]";
                v54 = 1024;
                v55 = v26;
                _os_log_impl(&dword_21569A000, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Unknown event param type: %u", buf, 0x22u);
              }

LABEL_15:

              goto LABEL_16;
            }

            v24 = *kHAPIScope;
            if (v24)
            {
              goto LABEL_21;
            }

LABEL_16:
          }

          LODWORD(v23) = *(v21 + 8);
          v24 = [MEMORY[0x277CCABB0] numberWithFloat:v23];
          [v13 setObject:v24 forKeyedSubscript:v22];
          goto LABEL_15;
        }

        if (!kHAPIScope)
        {
          v33 = MEMORY[0x277D86220];
          v34 = MEMORY[0x277D86220];
          v32 = v33;
LABEL_34:
          v14 = v32;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v35 = [v5 eventType];
            *buf = 136315906;
            v49 = "EventToDictionaryConverter.mm";
            v50 = 1024;
            v51 = 134;
            v52 = 2080;
            v53 = "+[EventToDictionaryConverter convertEvents:]";
            v54 = 1024;
            v55 = v35;
            v31 = v14;
            goto LABEL_36;
          }

LABEL_37:
          v13 = v14;
LABEL_38:

          goto LABEL_39;
        }

        v32 = *kHAPIScope;
        if (v32)
        {
          goto LABEL_34;
        }

LABEL_39:

        v3 = v42;
LABEL_40:
        ++v4;
      }

      while (v4 != v3);
      v3 = [obj countByEnumeratingWithState:&v44 objects:v56 count:16];
    }

    while (v3);
  }

  v36 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v40, @"Pattern", 0}];
  v37 = *MEMORY[0x277D85DE8];

  return v36;
}

@end