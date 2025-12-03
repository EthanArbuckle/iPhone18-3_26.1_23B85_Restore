@interface HapticCommandConverter
- (HapticCommandConverter)initWithServerConfig:(id)config;
- (float)defaultEventParameterValueForParameter:(id)parameter eventType:(id)type;
- (float)limitDynamicParameter:(id)parameter value:(float)value parameter:(id)a5;
- (float)limitEventParameter:(id)parameter value:(float)value parameter:(id)a5 eventType:(id)type;
- (id)CHtoAVParameterCurve:(id)curve;
- (id)eventForAudioEventType:(unint64_t)type time:(double)time eventParams:(id)params duration:(double)duration;
- (id)eventForContinuousHapticEventType:(int)type time:(double)time params:(id)params duration:(double)duration;
- (id)eventForDynamicParameterEntry:(id)entry;
- (id)eventForEventEntry:(id)entry engine:(id)engine privileged:(BOOL)privileged;
- (id)eventForLegacyTransientHapticAtTime:(double)time params:(id)params duration:(double)duration;
- (id)eventForParameterCurveEntry:(id)entry;
- (id)eventForSPIEventType:(unint64_t)type time:(double)time eventParams:(id)params duration:(double)duration;
- (id)eventForTransientHapticAtTime:(double)time params:(id)params duration:(double)duration;
- (unint64_t)continuousHapticEventTypeFromSharpness:(float)sharpness sustained:(BOOL)sustained;
- (unint64_t)eventTypeForBuiltInAudioEventType:(unint64_t)type;
- (unint64_t)transientHapticEventTypeForDefaultSharpness;
- (unint64_t)transientHapticEventTypeFromSharpness:(float)sharpness;
@end

@implementation HapticCommandConverter

- (HapticCommandConverter)initWithServerConfig:(id)config
{
  configCopy = config;
  v9.receiver = self;
  v9.super_class = HapticCommandConverter;
  v6 = [(HapticCommandConverter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serverConfig, config);
  }

  return v7;
}

- (float)limitEventParameter:(id)parameter value:(float)value parameter:(id)a5 eventType:(id)type
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = [parameter attributesForEventParameter:a5 eventType:type error:0];
  v8 = v7;
  if (!v7)
  {
    if (kHAPIScope)
    {
      v13 = *kHAPIScope;
      if (!v13)
      {
LABEL_14:
        v12 = 0.0;
        goto LABEL_15;
      }
    }

    else
    {
      v13 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v17 = 136315650;
      v18 = "HapticCommandConverter.mm";
      v19 = 1024;
      v20 = 100;
      v21 = 2080;
      v22 = "[HapticCommandConverter limitEventParameter:value:parameter:eventType:]";
      _os_log_impl(&dword_21569A000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Invalid event parameter ID.", &v17, 0x1Cu);
    }

    goto LABEL_14;
  }

  [v7 minValue];
  v10 = v9;
  [v8 maxValue];
  if (valueCopy >= value)
  {
    valueCopy = value;
  }

  if (valueCopy >= v10)
  {
    v12 = valueCopy;
  }

  else
  {
    v12 = v10;
  }

LABEL_15:

  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

- (float)limitDynamicParameter:(id)parameter value:(float)value parameter:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = [parameter attributesForDynamicParameter:a5 error:0];
  v7 = v6;
  if (!v6)
  {
    if (kHAPIScope)
    {
      v12 = *kHAPIScope;
      if (!v12)
      {
LABEL_14:
        v11 = 0.0;
        goto LABEL_15;
      }
    }

    else
    {
      v12 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315650;
      v17 = "HapticCommandConverter.mm";
      v18 = 1024;
      v19 = 118;
      v20 = 2080;
      v21 = "[HapticCommandConverter limitDynamicParameter:value:parameter:]";
      _os_log_impl(&dword_21569A000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Invalid dynamic parameter ID", &v16, 0x1Cu);
    }

    goto LABEL_14;
  }

  [v6 minValue];
  v9 = v8;
  [v7 maxValue];
  if (valueCopy >= value)
  {
    valueCopy = value;
  }

  if (valueCopy >= v9)
  {
    v11 = valueCopy;
  }

  else
  {
    v11 = v9;
  }

LABEL_15:

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

- (float)defaultEventParameterValueForParameter:(id)parameter eventType:(id)type
{
  parameterCopy = parameter;
  typeCopy = type;
  v7 = +[CHHapticEngine capabilitiesForHardware];
  v13 = 0;
  v8 = [v7 attributesForEventParameter:parameterCopy eventType:typeCopy error:&v13];
  v9 = v13;
  if (v9)
  {
    v10 = -999.0;
  }

  else
  {
    [v8 defaultValue];
    v10 = v11;
  }

  return v10;
}

- (id)eventForAudioEventType:(unint64_t)type time:(double)time eventParams:(id)params duration:(double)duration
{
  v81 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  if (kHAPIScope)
  {
    if (*(kHAPIScope + 8))
    {
      v10 = *kHAPIScope;
      if (v10)
      {
        v11 = v10;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136316674;
          *&buf[4] = "HapticCommandConverter.mm";
          v76 = 1024;
          *v77 = 139;
          *&v77[4] = 2080;
          *&v77[6] = "[HapticCommandConverter eventForAudioEventType:time:eventParams:duration:]";
          v78 = 1024;
          *v79 = type;
          *&v79[4] = 2048;
          *&v79[6] = time;
          *&v79[14] = 2048;
          *&v79[16] = duration;
          *&v79[24] = 1024;
          v80 = [paramsCopy count];
          _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Type %u time: %.2f secs dur: %.2f secs %u event params", buf, 0x3Cu);
        }
      }
    }
  }

  if ([paramsCopy count])
  {
    typeCopy = type;
    __p = 0;
    v72 = 0;
    v73 = 0;
    v12 = +[CHHapticEngine capabilitiesForHardware];
    v68 = 0u;
    v69 = 0u;
    v70 = 1065353216;
    [(HapticCommandConverter *)self defaultEventParameterValueForParameter:CHHapticEventParameterIDAudioVolume eventType:CHHapticEventTypeAudioContinuous];
    v14 = v13;
    [(HapticCommandConverter *)self defaultEventParameterValueForParameter:CHHapticEventParameterIDAudioPan eventType:CHHapticEventTypeAudioContinuous];
    v16 = v15;
    [(HapticCommandConverter *)self defaultEventParameterValueForParameter:CHHapticEventParameterIDAudioBrightness eventType:CHHapticEventTypeAudioContinuous];
    v18 = v17;
    [(HapticCommandConverter *)self defaultEventParameterValueForParameter:CHHapticEventParameterIDAudioPitch eventType:CHHapticEventTypeAudioContinuous];
    v19 = 0;
    *buf = 1000;
    *&buf[8] = v14;
    *&v77[2] = 1015;
    *&v77[10] = v16;
    *&v79[2] = 1013;
    *&v79[10] = v18;
    *&v79[18] = 1001;
    v80 = v20;
    do
    {
      std::__hash_table<std::__hash_value_type<AVHapticPlayerParameterType,float>,std::__unordered_map_hasher<AVHapticPlayerParameterType,std::__hash_value_type<AVHapticPlayerParameterType,float>,std::hash<AVHapticPlayerParameterType>,std::equal_to<AVHapticPlayerParameterType>,true>,std::__unordered_map_equal<AVHapticPlayerParameterType,std::__hash_value_type<AVHapticPlayerParameterType,float>,std::equal_to<AVHapticPlayerParameterType>,std::hash<AVHapticPlayerParameterType>,true>,std::allocator<std::__hash_value_type<AVHapticPlayerParameterType,float>>>::__emplace_unique_key_args<AVHapticPlayerParameterType,std::pair<AVHapticPlayerParameterType const,float> const&>(&v68, &buf[v19]);
      v19 += 16;
    }

    while (v19 != 64);
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    obj = paramsCopy;
    v21 = [obj countByEnumeratingWithState:&v64 objects:v74 count:16];
    if (v21)
    {
      v22 = *v65;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v65 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v64 + 1) + 8 * i);
          if (kHAPIScope)
          {
            if (*(kHAPIScope + 8))
            {
              v25 = *kHAPIScope;
              if (v25)
              {
                v26 = v25;
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
                {
                  parameterID = [v24 parameterID];
                  [v24 value];
                  *buf = 136316162;
                  *&buf[4] = "HapticCommandConverter.mm";
                  v76 = 1024;
                  *v77 = 162;
                  *&v77[4] = 2080;
                  *&v77[6] = "[HapticCommandConverter eventForAudioEventType:time:eventParams:duration:]";
                  v78 = 2112;
                  *v79 = parameterID;
                  *&v79[8] = 2048;
                  *&v79[10] = v28;
                  _os_log_impl(&dword_21569A000, v26, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Fixed Param '%@': value %f", buf, 0x30u);
                }
              }
            }
          }

          [v24 value];
          v30 = v29;
          parameterID2 = [v24 parameterID];
          LODWORD(v32) = v30;
          [(HapticCommandConverter *)self limitEventParameter:v12 value:parameterID2 parameter:CHHapticEventTypeAudioContinuous eventType:v32];
          v34 = v33;

          parameterID3 = [v24 parameterID];
          v36 = [parameterID3 isEqualToString:CHHapticEventParameterIDAudioVolume];

          if (v36)
          {
            *buf = 1000;
            *&buf[8] = v34;
            std::vector<AVHapticPlayerFixedParameter>::push_back[abi:ne200100](&__p, buf);
            *buf = 1000;
            std::__hash_table<std::__hash_value_type<AVHapticPlayerParameterType,float>,std::__unordered_map_hasher<AVHapticPlayerParameterType,std::__hash_value_type<AVHapticPlayerParameterType,float>,std::hash<AVHapticPlayerParameterType>,std::equal_to<AVHapticPlayerParameterType>,true>,std::__unordered_map_equal<AVHapticPlayerParameterType,std::__hash_value_type<AVHapticPlayerParameterType,float>,std::equal_to<AVHapticPlayerParameterType>,std::hash<AVHapticPlayerParameterType>,true>,std::allocator<std::__hash_value_type<AVHapticPlayerParameterType,float>>>::__erase_unique<AVHapticPlayerParameterType>(&v68, buf);
          }

          else
          {
            parameterID4 = [v24 parameterID];
            v38 = [parameterID4 isEqualToString:CHHapticEventParameterIDAudioPan];

            if (v38)
            {
              *buf = 1015;
              *&buf[8] = v34;
              std::vector<AVHapticPlayerFixedParameter>::push_back[abi:ne200100](&__p, buf);
              *buf = 1015;
              std::__hash_table<std::__hash_value_type<AVHapticPlayerParameterType,float>,std::__unordered_map_hasher<AVHapticPlayerParameterType,std::__hash_value_type<AVHapticPlayerParameterType,float>,std::hash<AVHapticPlayerParameterType>,std::equal_to<AVHapticPlayerParameterType>,true>,std::__unordered_map_equal<AVHapticPlayerParameterType,std::__hash_value_type<AVHapticPlayerParameterType,float>,std::equal_to<AVHapticPlayerParameterType>,std::hash<AVHapticPlayerParameterType>,true>,std::allocator<std::__hash_value_type<AVHapticPlayerParameterType,float>>>::__erase_unique<AVHapticPlayerParameterType>(&v68, buf);
            }

            else
            {
              parameterID5 = [v24 parameterID];
              v40 = [parameterID5 isEqualToString:CHHapticEventParameterIDAudioBrightness];

              if (v40)
              {
                *buf = 1013;
                *&buf[8] = v34;
                std::vector<AVHapticPlayerFixedParameter>::push_back[abi:ne200100](&__p, buf);
                *buf = 1013;
                std::__hash_table<std::__hash_value_type<AVHapticPlayerParameterType,float>,std::__unordered_map_hasher<AVHapticPlayerParameterType,std::__hash_value_type<AVHapticPlayerParameterType,float>,std::hash<AVHapticPlayerParameterType>,std::equal_to<AVHapticPlayerParameterType>,true>,std::__unordered_map_equal<AVHapticPlayerParameterType,std::__hash_value_type<AVHapticPlayerParameterType,float>,std::equal_to<AVHapticPlayerParameterType>,std::hash<AVHapticPlayerParameterType>,true>,std::allocator<std::__hash_value_type<AVHapticPlayerParameterType,float>>>::__erase_unique<AVHapticPlayerParameterType>(&v68, buf);
              }

              else
              {
                parameterID6 = [v24 parameterID];
                v42 = [parameterID6 isEqualToString:CHHapticEventParameterIDAudioPitch];

                if (v42)
                {
                  *buf = 1001;
                  *&buf[8] = v34;
                  std::vector<AVHapticPlayerFixedParameter>::push_back[abi:ne200100](&__p, buf);
                  *buf = 1001;
                  std::__hash_table<std::__hash_value_type<AVHapticPlayerParameterType,float>,std::__unordered_map_hasher<AVHapticPlayerParameterType,std::__hash_value_type<AVHapticPlayerParameterType,float>,std::hash<AVHapticPlayerParameterType>,std::equal_to<AVHapticPlayerParameterType>,true>,std::__unordered_map_equal<AVHapticPlayerParameterType,std::__hash_value_type<AVHapticPlayerParameterType,float>,std::equal_to<AVHapticPlayerParameterType>,std::hash<AVHapticPlayerParameterType>,true>,std::allocator<std::__hash_value_type<AVHapticPlayerParameterType,float>>>::__erase_unique<AVHapticPlayerParameterType>(&v68, buf);
                }

                else
                {
                  parameterID7 = [v24 parameterID];
                  v44 = [parameterID7 isEqualToString:CHHapticEventParameterIDAttackTime];

                  if (v44)
                  {
                    *buf = 1010;
                    *&buf[8] = v34;
                    std::vector<AVHapticPlayerFixedParameter>::push_back[abi:ne200100](&__p, buf);
                  }

                  else
                  {
                    parameterID8 = [v24 parameterID];
                    v46 = [parameterID8 isEqualToString:CHHapticEventParameterIDDecayTime];

                    if (v46)
                    {
                      *buf = 1011;
                      *&buf[8] = v34;
                      std::vector<AVHapticPlayerFixedParameter>::push_back[abi:ne200100](&__p, buf);
                    }

                    else
                    {
                      parameterID9 = [v24 parameterID];
                      v48 = [parameterID9 isEqualToString:CHHapticEventParameterIDReleaseTime];

                      if (v48)
                      {
                        *buf = 1012;
                        *&buf[8] = v34;
                        std::vector<AVHapticPlayerFixedParameter>::push_back[abi:ne200100](&__p, buf);
                      }

                      else
                      {
                        parameterID10 = [v24 parameterID];
                        v50 = [parameterID10 isEqualToString:CHHapticEventParameterIDSustained];

                        if ((v50 & 1) == 0)
                        {
                          v57 = CALog::LogObjIfEnabled(1, kHAPIScope, v51);
                          v58 = v57;
                          if (v57)
                          {
                            v59 = v57;
                            if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                            {
                              parameterID11 = [v24 parameterID];
                              *buf = 136315906;
                              *&buf[4] = "HapticCommandConverter.mm";
                              v76 = 1024;
                              *v77 = 196;
                              *&v77[4] = 2080;
                              *&v77[6] = "[HapticCommandConverter eventForAudioEventType:time:eventParams:duration:]";
                              v78 = 2112;
                              *v79 = parameterID11;
                              _os_log_impl(&dword_21569A000, v59, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Unknown event param type: %@", buf, 0x26u);
                            }
                          }

                          Haptic_RaiseException(&cfstr_Corehapticinva.isa, &cfstr_UnknownEventPa.isa, -4820);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        v21 = [obj countByEnumeratingWithState:&v64 objects:v74 count:16];
      }

      while (v21);
    }

    for (j = v69; j; j = *j)
    {
      *buf = j[2];
      *&buf[8] = *(j + 6);
      std::vector<AVHapticPlayerFixedParameter>::push_back[abi:ne200100](&__p, buf);
    }

    if (v72 == __p)
    {
      v53 = 0;
    }

    else
    {
      v53 = __p;
    }

    v54 = [MEMORY[0x277CEFD50] eventWithEventType:typeCopy time:v53 parameters:(v72 - __p) >> 4 count:time duration:duration];
    std::__hash_table<std::__hash_value_type<void const*,unsigned int>,std::__unordered_map_hasher<void const*,std::__hash_value_type<void const*,unsigned int>,std::hash<void const*>,std::equal_to<void const*>,true>,std::__unordered_map_equal<void const*,std::__hash_value_type<void const*,unsigned int>,std::equal_to<void const*>,std::hash<void const*>,true>,std::allocator<std::__hash_value_type<void const*,unsigned int>>>::~__hash_table(&v68);

    if (__p)
    {
      v72 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v54 = [MEMORY[0x277CEFD50] eventWithEventType:type time:time duration:duration];
  }

  v55 = *MEMORY[0x277D85DE8];

  return v54;
}

- (unint64_t)transientHapticEventTypeFromSharpness:(float)sharpness
{
  serverConfig = [(HapticCommandConverter *)self serverConfig];
  v5 = serverConfig;
  if (serverConfig)
  {
    [serverConfig hapticTransientIDs];
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  if (v9 != v10)
  {
    v6 = v9[(((((v10 - v9) >> 3) - 1) * sharpness) + 0.5)];
LABEL_7:
    operator delete(v9);
    return v6;
  }

  v6 = 0;
  v7 = 0;
  if (v9)
  {
    goto LABEL_7;
  }

  return v7;
}

- (unint64_t)transientHapticEventTypeForDefaultSharpness
{
  serverConfig = [(HapticCommandConverter *)self serverConfig];
  [serverConfig defaultHapticTransientEventSharpness];
  v4 = [(HapticCommandConverter *)self transientHapticEventTypeFromSharpness:?];

  return v4;
}

- (unint64_t)eventTypeForBuiltInAudioEventType:(unint64_t)type
{
  v22 = *MEMORY[0x277D85DE8];
  serverConfig = [(HapticCommandConverter *)self serverConfig];
  builtInAudioEventIDs = [serverConfig builtInAudioEventIDs];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:type];
  v7 = [builtInAudioEventIDs objectForKey:v6];

  if (v7)
  {
    type = [v7 unsignedIntegerValue];
  }

  else if (kHAPIScope)
  {
    if (*(kHAPIScope + 8))
    {
      v10 = *kHAPIScope;
      if (v10)
      {
        v11 = v10;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v12 = 136316162;
          v13 = "HapticCommandConverter.mm";
          v15 = 239;
          v16 = 2080;
          v14 = 1024;
          v17 = "[HapticCommandConverter eventTypeForBuiltInAudioEventType:]";
          v18 = 1024;
          typeCopy = type;
          v20 = 1024;
          typeCopy2 = type;
          _os_log_impl(&dword_21569A000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: No altered event ID for original event ID %u. Returning original event ID %u", &v12, 0x28u);
        }
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return type;
}

- (id)eventForTransientHapticAtTime:(double)time params:(id)params duration:(double)duration
{
  v80 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  if (kHAPIScope)
  {
    if (*(kHAPIScope + 8))
    {
      v8 = *kHAPIScope;
      if (v8)
      {
        v9 = v8;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136316418;
          *&buf[4] = "HapticCommandConverter.mm";
          v70 = 1024;
          v71 = 248;
          v72 = 2080;
          v73 = "[HapticCommandConverter eventForTransientHapticAtTime:params:duration:]";
          v74 = 2048;
          timeCopy = time;
          v76 = 2048;
          durationCopy = duration;
          v78 = 1024;
          v79 = [paramsCopy count];
          _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Time: %.2f secs dur %.2f secs %u event params", buf, 0x36u);
        }
      }
    }
  }

  __p = 0;
  v66 = 0;
  v67 = 0;
  v60 = +[CHHapticEngine capabilitiesForHardware];
  serverConfig = [(HapticCommandConverter *)self serverConfig];
  [serverConfig defaultHapticTransientEventIntensity];
  v12 = v11;

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = paramsCopy;
  v13 = [obj countByEnumeratingWithState:&v61 objects:v68 count:16];
  if (v13)
  {
    transientHapticEventTypeForDefaultSharpness = 0;
    v57 = 0;
    v14 = *v62;
    while (1)
    {
      v15 = 0;
      do
      {
        if (*v62 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v61 + 1) + 8 * v15);
        if (kHAPIScope)
        {
          if (*(kHAPIScope + 8))
          {
            v17 = *kHAPIScope;
            if (v17)
            {
              v18 = v17;
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
              {
                [v16 parameterID];
                v19 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                [v16 value];
                *buf = 136316162;
                *&buf[4] = "HapticCommandConverter.mm";
                v70 = 1024;
                v71 = 257;
                v72 = 2080;
                v73 = "[HapticCommandConverter eventForTransientHapticAtTime:params:duration:]";
                v74 = 2112;
                timeCopy = v19;
                v76 = 2048;
                durationCopy = v20;
                _os_log_impl(&dword_21569A000, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Fixed Param '%@': value: %f", buf, 0x30u);
              }
            }
          }
        }

        [v16 value];
        v22 = v21;
        parameterID = [v16 parameterID];
        LODWORD(v24) = v22;
        [(HapticCommandConverter *)self limitEventParameter:v60 value:parameterID parameter:CHHapticEventTypeHapticTransient eventType:v24];
        v26 = v25;

        parameterID2 = [v16 parameterID];
        v28 = [parameterID2 isEqualToString:CHHapticEventParameterIDHapticIntensity];

        if (v28)
        {
          v12 = v26;
          goto LABEL_40;
        }

        parameterID3 = [v16 parameterID];
        v30 = [parameterID3 isEqualToString:CHHapticEventParameterIDHapticSharpness];

        if (v30)
        {
          *&v31 = v26;
          transientHapticEventTypeForDefaultSharpness = [(HapticCommandConverter *)self transientHapticEventTypeFromSharpness:v31];
          if (kHAPIScope)
          {
            if (*(kHAPIScope + 8))
            {
              v32 = *kHAPIScope;
              if (v32)
              {
                v33 = v32;
                if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136316162;
                  *&buf[4] = "HapticCommandConverter.mm";
                  v70 = 1024;
                  v71 = 265;
                  v72 = 2080;
                  v73 = "[HapticCommandConverter eventForTransientHapticAtTime:params:duration:]";
                  v74 = 2048;
                  timeCopy = v26;
                  v76 = 1024;
                  LODWORD(durationCopy) = transientHapticEventTypeForDefaultSharpness;
                  _os_log_impl(&dword_21569A000, v33, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Normalized sharpness %f -> event type %u", buf, 0x2Cu);
                }

                v57 = 1;
LABEL_38:

                goto LABEL_40;
              }
            }
          }

          v57 = 1;
          goto LABEL_40;
        }

        parameterID4 = [v16 parameterID];
        if ([parameterID4 isEqualToString:CHHapticEventParameterIDAttackTime])
        {
          goto LABEL_32;
        }

        parameterID5 = [v16 parameterID];
        if ([parameterID5 isEqualToString:CHHapticEventParameterIDDecayTime])
        {
          goto LABEL_31;
        }

        parameterID6 = [v16 parameterID];
        if ([parameterID6 isEqualToString:CHHapticEventParameterIDReleaseTime])
        {

LABEL_31:
LABEL_32:

          goto LABEL_33;
        }

        parameterID7 = [v16 parameterID];
        v39 = [parameterID7 isEqualToString:CHHapticEventParameterIDSustained];

        if ((v39 & 1) == 0)
        {
          if (kHAPIScope)
          {
            v47 = *kHAPIScope;
            if (!v47)
            {
              goto LABEL_74;
            }
          }

          else
          {
            v47 = MEMORY[0x277D86220];
            v51 = MEMORY[0x277D86220];
          }

          v52 = v47;
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            [v16 parameterID];
            v53 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            *buf = 136315906;
            *&buf[4] = "HapticCommandConverter.mm";
            v70 = 1024;
            v71 = 275;
            v72 = 2080;
            v73 = "[HapticCommandConverter eventForTransientHapticAtTime:params:duration:]";
            v74 = 2112;
            timeCopy = v53;
            _os_log_impl(&dword_21569A000, v52, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Unknown event param type: %@", buf, 0x26u);
          }

LABEL_74:
          Haptic_RaiseException(&cfstr_Corehapticinva.isa, &cfstr_UnknownEventPa.isa, -4820);
        }

LABEL_33:
        if (kHAPIScope)
        {
          if (*(kHAPIScope + 8))
          {
            v37 = *kHAPIScope;
            if (v37)
            {
              v33 = v37;
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315650;
                *&buf[4] = "HapticCommandConverter.mm";
                v70 = 1024;
                v71 = 272;
                v72 = 2080;
                v73 = "[HapticCommandConverter eventForTransientHapticAtTime:params:duration:]";
                _os_log_impl(&dword_21569A000, v33, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Ignoring for HapticTransient", buf, 0x1Cu);
              }

              goto LABEL_38;
            }
          }
        }

LABEL_40:
        ++v15;
      }

      while (v13 != v15);
      v40 = [obj countByEnumeratingWithState:&v61 objects:v68 count:16];
      v13 = v40;
      if (!v40)
      {

        if (v57)
        {
          goto LABEL_54;
        }

        goto LABEL_48;
      }
    }
  }

LABEL_48:
  transientHapticEventTypeForDefaultSharpness = [(HapticCommandConverter *)self transientHapticEventTypeForDefaultSharpness];
  if (kHAPIScope)
  {
    if (*(kHAPIScope + 8))
    {
      v41 = *kHAPIScope;
      if (v41)
      {
        v42 = v41;
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          *&buf[4] = "HapticCommandConverter.mm";
          v70 = 1024;
          v71 = 282;
          v72 = 2080;
          v73 = "[HapticCommandConverter eventForTransientHapticAtTime:params:duration:]";
          v74 = 1024;
          LODWORD(timeCopy) = transientHapticEventTypeForDefaultSharpness;
          _os_log_impl(&dword_21569A000, v42, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Event has no HapticSharpness EventParameter. Default event type: %u", buf, 0x22u);
        }
      }
    }
  }

LABEL_54:
  if (v12 == 1.0)
  {
    v45 = 0;
    v46 = 0;
  }

  else
  {
    if (kHAPIScope)
    {
      if (*(kHAPIScope + 8))
      {
        v43 = *kHAPIScope;
        if (v43)
        {
          v44 = v43;
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315906;
            *&buf[4] = "HapticCommandConverter.mm";
            v70 = 1024;
            v71 = 286;
            v72 = 2080;
            v73 = "[HapticCommandConverter eventForTransientHapticAtTime:params:duration:]";
            v74 = 2048;
            timeCopy = v12;
            _os_log_impl(&dword_21569A000, v44, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Adding event param for haptic gain: %.2f", buf, 0x26u);
          }
        }
      }
    }

    *buf = 2000;
    *&buf[8] = v12;
    std::vector<AVHapticPlayerFixedParameter>::push_back[abi:ne200100](&__p, buf);
    v45 = __p;
    v46 = v66;
  }

  v48 = v46 - v45;
  if (v48)
  {
    v49 = v45;
  }

  else
  {
    v49 = 0;
  }

  v50 = [MEMORY[0x277CEFD50] eventWithEventType:transientHapticEventTypeForDefaultSharpness time:v49 parameters:v48 >> 4 count:time duration:duration];

  if (__p)
  {
    v66 = __p;
    operator delete(__p);
  }

  v54 = *MEMORY[0x277D85DE8];

  return v50;
}

- (id)eventForLegacyTransientHapticAtTime:(double)time params:(id)params duration:(double)duration
{
  v91 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  if (kHAPIScope)
  {
    if (*(kHAPIScope + 8))
    {
      v7 = *kHAPIScope;
      if (v7)
      {
        v8 = v7;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136316418;
          *&buf[4] = "HapticCommandConverter.mm";
          v81 = 1024;
          v82 = 306;
          v83 = 2080;
          v84 = "[HapticCommandConverter eventForLegacyTransientHapticAtTime:params:duration:]";
          v85 = 2048;
          timeCopy = time;
          v87 = 2048;
          durationCopy = duration;
          v89 = 1024;
          v90 = [paramsCopy count];
          _os_log_impl(&dword_21569A000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Time: %.2f secs dur %.2f secs %u event params", buf, 0x36u);
        }
      }
    }
  }

  __p = 0;
  v77 = 0;
  v78 = 0;
  v70 = +[CHHapticEngine capabilitiesForHardware];
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = paramsCopy;
  v9 = [obj countByEnumeratingWithState:&v72 objects:v79 count:16];
  if (!v9)
  {

    v47 = 1;
    v46 = 3;
    goto LABEL_74;
  }

  v10 = 0;
  v11 = *v73;
  v67 = 3;
  v68 = 0;
  v66 = 1;
  do
  {
    v12 = 0;
    do
    {
      if (*v73 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v72 + 1) + 8 * v12);
      if (kHAPIScope)
      {
        if (*(kHAPIScope + 8))
        {
          v14 = *kHAPIScope;
          if (v14)
          {
            v15 = v14;
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              parameterID = [v13 parameterID];
              [v13 value];
              *buf = 136316162;
              *&buf[4] = "HapticCommandConverter.mm";
              v81 = 1024;
              v82 = 312;
              v83 = 2080;
              v84 = "[HapticCommandConverter eventForLegacyTransientHapticAtTime:params:duration:]";
              v85 = 2112;
              timeCopy = *&parameterID;
              v87 = 2048;
              durationCopy = v17;
              _os_log_impl(&dword_21569A000, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Fixed Param '%@': value: %f", buf, 0x30u);
            }
          }
        }
      }

      parameterID2 = [v13 parameterID];
      v19 = [parameterID2 isEqualToString:CHHapticEventParameterIDHapticIntensity];

      if (v19)
      {
        [v13 value];
        v21 = v20;
        parameterID3 = [v13 parameterID];
        LODWORD(v23) = v21;
        [(HapticCommandConverter *)self limitEventParameter:v70 value:parameterID3 parameter:CHHapticEventTypeHapticTransient eventType:v23];
        v25 = v24;

        *buf = 2000;
        *&buf[8] = v25;
        std::vector<AVHapticPlayerFixedParameter>::push_back[abi:ne200100](&__p, buf);
        goto LABEL_45;
      }

      parameterID4 = [v13 parameterID];
      v27 = [parameterID4 isEqualToString:CHHapticEventParameterIDHapticSharpnessSelect];

      if (v27)
      {
        if (v10)
        {
          if (kHAPIScope)
          {
            v53 = *kHAPIScope;
            if (!v53)
            {
LABEL_81:
              v54 = -4830;
              v55 = @"Cannot mix privileged and unprivileged Sharpness parameters";
              goto LABEL_98;
            }
          }

          else
          {
            v53 = MEMORY[0x277D86220];
            v56 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "HapticCommandConverter.mm";
            v81 = 1024;
            v82 = 319;
            v83 = 2080;
            v84 = "[HapticCommandConverter eventForLegacyTransientHapticAtTime:params:duration:]";
            goto LABEL_88;
          }

          goto LABEL_89;
        }

        [v13 value];
        if (v28 > 1.0)
        {
          v28 = 1.0;
        }

        if (v28 < -1.0)
        {
          v28 = -1.0;
        }

        v29 = (v28 + 1.0) * 0.5;
        v67 = ((v29 * 7.0) + 0.5);
        if (kHAPIScope)
        {
          if (*(kHAPIScope + 8))
          {
            v30 = *kHAPIScope;
            if (v30)
            {
              v31 = v30;
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136316162;
                *&buf[4] = "HapticCommandConverter.mm";
                v81 = 1024;
                v82 = 327;
                v83 = 2080;
                v84 = "[HapticCommandConverter eventForLegacyTransientHapticAtTime:params:duration:]";
                v85 = 2048;
                timeCopy = v29;
                v87 = 1024;
                LODWORD(durationCopy) = ((v29 * 7.0) + 0.5);
                _os_log_impl(&dword_21569A000, v31, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Normalized value %f -> sharpness index %d", buf, 0x2Cu);
              }

              goto LABEL_43;
            }
          }
        }

        goto LABEL_44;
      }

      parameterID5 = [v13 parameterID];
      v33 = [parameterID5 isEqualToString:CHHapticEventParameterIDHapticFullnessSelect];

      if (v33)
      {
        if (v10)
        {
          if (kHAPIScope)
          {
            v53 = *kHAPIScope;
            if (!v53)
            {
              v54 = -4830;
              v55 = @"Cannot mix Fullness with unprivileged Sharpness parameter";
              goto LABEL_98;
            }
          }

          else
          {
            v53 = MEMORY[0x277D86220];
            v57 = MEMORY[0x277D86220];
          }

          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "HapticCommandConverter.mm";
            v81 = 1024;
            v82 = 332;
            v83 = 2080;
            v84 = "[HapticCommandConverter eventForLegacyTransientHapticAtTime:params:duration:]";
            _os_log_impl(&dword_21569A000, v53, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Cannot mix Fullness with unprivileged Sharpness parameter", buf, 0x1Cu);
          }

          v54 = -4830;
          v55 = @"Cannot mix Fullness with unprivileged Sharpness parameter";
          goto LABEL_97;
        }

        [v13 value];
        if (v34 > 1.0)
        {
          v34 = 1.0;
        }

        if (v34 < -1.0)
        {
          v34 = -1.0;
        }

        v35 = (v34 + 1.0) * 0.5;
        v66 = ((v35 + v35) + 0.5);
        if (kHAPIScope)
        {
          if (*(kHAPIScope + 8))
          {
            v36 = *kHAPIScope;
            if (v36)
            {
              v31 = v36;
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136316162;
                *&buf[4] = "HapticCommandConverter.mm";
                v81 = 1024;
                v82 = 340;
                v83 = 2080;
                v84 = "[HapticCommandConverter eventForLegacyTransientHapticAtTime:params:duration:]";
                v85 = 2048;
                timeCopy = v35;
                v87 = 1024;
                LODWORD(durationCopy) = ((v35 + v35) + 0.5);
                _os_log_impl(&dword_21569A000, v31, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Normalized value %f -> fullness index %d", buf, 0x2Cu);
              }

LABEL_43:
            }
          }
        }

LABEL_44:
        v10 = 0;
        v68 = 1;
        goto LABEL_45;
      }

      parameterID6 = [v13 parameterID];
      v38 = [parameterID6 isEqualToString:CHHapticEventParameterIDHapticSharpness];

      if (!v38)
      {
        parameterID7 = [v13 parameterID];
        if ([parameterID7 isEqualToString:CHHapticEventParameterIDAttackTime])
        {
          goto LABEL_55;
        }

        parameterID8 = [v13 parameterID];
        if ([parameterID8 isEqualToString:CHHapticEventParameterIDDecayTime])
        {
          goto LABEL_54;
        }

        parameterID9 = [v13 parameterID];
        if ([parameterID9 isEqualToString:CHHapticEventParameterIDReleaseTime])
        {

LABEL_54:
LABEL_55:
        }

        else
        {
          parameterID10 = [v13 parameterID];
          v64 = [parameterID10 isEqualToString:CHHapticEventParameterIDSustained];

          if ((v64 & 1) == 0)
          {
            if (kHAPIScope)
            {
              v61 = *kHAPIScope;
              if (!v61)
              {
                v54 = -4820;
                v55 = @"Unknown event parameter type";
LABEL_98:
                Haptic_RaiseException(&cfstr_Corehapticsbad.isa, &v55->isa, v54);
              }
            }

            else
            {
              v61 = MEMORY[0x277D86220];
              v62 = MEMORY[0x277D86220];
            }

            v53 = v61;
            if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
            {
              parameterID11 = [v13 parameterID];
              *buf = 136315906;
              *&buf[4] = "HapticCommandConverter.mm";
              v81 = 1024;
              v82 = 360;
              v83 = 2080;
              v84 = "[HapticCommandConverter eventForLegacyTransientHapticAtTime:params:duration:]";
              v85 = 2112;
              timeCopy = *&parameterID11;
              _os_log_impl(&dword_21569A000, v53, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Unknown event parameter type: %@", buf, 0x26u);
            }

            v54 = -4820;
            v55 = @"Unknown event parameter type";
LABEL_97:

            goto LABEL_98;
          }
        }

        if (kHAPIScope)
        {
          if (*(kHAPIScope + 8))
          {
            v42 = *kHAPIScope;
            if (v42)
            {
              v43 = v42;
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315650;
                *&buf[4] = "HapticCommandConverter.mm";
                v81 = 1024;
                v82 = 357;
                v83 = 2080;
                v84 = "[HapticCommandConverter eventForLegacyTransientHapticAtTime:params:duration:]";
                _os_log_impl(&dword_21569A000, v43, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Ignoring for HapticTransient", buf, 0x1Cu);
              }
            }
          }
        }

        goto LABEL_45;
      }

      if (v68)
      {
        if (kHAPIScope)
        {
          v53 = *kHAPIScope;
          if (!v53)
          {
            goto LABEL_81;
          }
        }

        else
        {
          v53 = MEMORY[0x277D86220];
          v60 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "HapticCommandConverter.mm";
          v81 = 1024;
          v82 = 345;
          v83 = 2080;
          v84 = "[HapticCommandConverter eventForLegacyTransientHapticAtTime:params:duration:]";
LABEL_88:
          _os_log_impl(&dword_21569A000, v53, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Cannot mix privileged and unprivileged Sharpness parameters", buf, 0x1Cu);
        }

LABEL_89:
        v54 = -4830;
        v55 = @"Cannot mix privileged and unprivileged Sharpness parameters";
        goto LABEL_97;
      }

      v68 = 0;
      v10 = 1;
LABEL_45:
      ++v12;
    }

    while (v9 != v12);
    v45 = [obj countByEnumeratingWithState:&v72 objects:v79 count:16];
    v9 = v45;
  }

  while (v45);

  v46 = v67;
  v47 = v66;
  if ((v10 & 1) == 0)
  {
LABEL_74:
    if (v77 == __p)
    {
      v51 = 0;
    }

    else
    {
      v51 = __p;
    }

    v50 = [MEMORY[0x277CEFD50] eventWithEventType:sLegacyHapticTapTypes[8 * v47 + v46] time:v51 parameters:(v77 - __p) >> 4 count:time duration:duration];
    goto LABEL_78;
  }

  if (kHAPIScope)
  {
    if (*(kHAPIScope + 8))
    {
      v48 = *kHAPIScope;
      if (v48)
      {
        v49 = v48;
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *&buf[4] = "HapticCommandConverter.mm";
          v81 = 1024;
          v82 = 369;
          v83 = 2080;
          v84 = "[HapticCommandConverter eventForLegacyTransientHapticAtTime:params:duration:]";
          _os_log_impl(&dword_21569A000, v49, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Handling as a non-privileged event", buf, 0x1Cu);
        }
      }
    }
  }

  v50 = [(HapticCommandConverter *)self eventForTransientHapticAtTime:obj params:time duration:duration];
LABEL_78:
  v52 = v50;

  if (__p)
  {
    v77 = __p;
    operator delete(__p);
  }

  v58 = *MEMORY[0x277D85DE8];

  return v52;
}

- (unint64_t)continuousHapticEventTypeFromSharpness:(float)sharpness sustained:(BOOL)sustained
{
  sustainedCopy = sustained;
  serverConfig = [(HapticCommandConverter *)self serverConfig];
  v7 = serverConfig;
  if (sustainedCopy)
  {
    if (serverConfig)
    {
      [serverConfig hapticContinuousSustainedIDs];
      goto LABEL_7;
    }
  }

  else if (serverConfig)
  {
    [serverConfig hapticContinuousNonsustainedIDs];
    goto LABEL_7;
  }

  v11 = 0;
  v12 = 0;
LABEL_7:

  if (v11 != v12)
  {
    v8 = v11[(((((v12 - v11) >> 3) - 1) * sharpness) + 0.5)];
LABEL_10:
    operator delete(v11);
    return v8;
  }

  v8 = 0;
  v9 = 0;
  if (v11)
  {
    goto LABEL_10;
  }

  return v9;
}

- (id)eventForContinuousHapticEventType:(int)type time:(double)time params:(id)params duration:(double)duration
{
  v76 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  if (kHAPIScope)
  {
    if (*(kHAPIScope + 8))
    {
      v9 = *kHAPIScope;
      if (v9)
      {
        v10 = v9;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136316674;
          *&buf[4] = "HapticCommandConverter.mm";
          v68 = 1024;
          v69 = 408;
          v70 = 2080;
          v71 = "[HapticCommandConverter eventForContinuousHapticEventType:time:params:duration:]";
          v72 = 1024;
          *v73 = type;
          *&v73[4] = 2048;
          *&v73[6] = time;
          *&v73[14] = 2048;
          *&v73[16] = duration;
          v74 = 1024;
          v75 = [paramsCopy count];
          _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Type %u time: %.2f secs duration: %.2f secs %u client event params", buf, 0x3Cu);
        }
      }
    }
  }

  __p = 0;
  v64 = 0;
  v65 = 0;
  v58 = +[CHHapticEngine capabilitiesForHardware];
  serverConfig = [(HapticCommandConverter *)self serverConfig];
  [serverConfig defaultHapticContinuousEventIntensity];
  v13 = v12;

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = paramsCopy;
  v14 = [obj countByEnumeratingWithState:&v59 objects:v66 count:16];
  if (v14)
  {
    v55 = 0;
    v15 = 0;
    v16 = *v60;
    while (1)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v60 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v59 + 1) + 8 * i);
        if (kHAPIScope)
        {
          if (*(kHAPIScope + 8))
          {
            v19 = *kHAPIScope;
            if (v19)
            {
              v20 = v19;
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
              {
                parameterID = [v18 parameterID];
                [v18 value];
                *buf = 136316162;
                *&buf[4] = "HapticCommandConverter.mm";
                v68 = 1024;
                v69 = 417;
                v70 = 2080;
                v71 = "[HapticCommandConverter eventForContinuousHapticEventType:time:params:duration:]";
                v72 = 2112;
                *v73 = parameterID;
                *&v73[8] = 2048;
                *&v73[10] = v22;
                _os_log_impl(&dword_21569A000, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Fixed Param '%@': value %f", buf, 0x30u);
              }
            }
          }
        }

        [v18 value];
        v24 = v23;
        parameterID2 = [v18 parameterID];
        LODWORD(v26) = v24;
        [(HapticCommandConverter *)self limitEventParameter:v58 value:parameterID2 parameter:CHHapticEventTypeHapticContinuous eventType:v26];
        v28 = v27;

        parameterID3 = [v18 parameterID];
        v30 = [parameterID3 isEqualToString:CHHapticEventParameterIDHapticIntensity];

        if (v30)
        {
          v13 = v28;
        }

        else
        {
          parameterID4 = [v18 parameterID];
          v32 = [parameterID4 isEqualToString:CHHapticEventParameterIDHapticSharpness];

          if (v32)
          {
            *&v33 = v28;
            v15 = [(HapticCommandConverter *)self continuousHapticEventTypeFromSharpness:type == 1 sustained:v33];
            v55 = 1;
          }

          else
          {
            parameterID5 = [v18 parameterID];
            v35 = [parameterID5 isEqualToString:CHHapticEventParameterIDAttackTime];

            if (v35)
            {
              *buf = 2010;
              *&buf[8] = v28;
              std::vector<AVHapticPlayerFixedParameter>::push_back[abi:ne200100](&__p, buf);
            }

            else
            {
              parameterID6 = [v18 parameterID];
              v37 = [parameterID6 isEqualToString:CHHapticEventParameterIDDecayTime];

              if (v37)
              {
                *buf = 2011;
                *&buf[8] = v28;
                std::vector<AVHapticPlayerFixedParameter>::push_back[abi:ne200100](&__p, buf);
              }

              else
              {
                parameterID7 = [v18 parameterID];
                v39 = [parameterID7 isEqualToString:CHHapticEventParameterIDReleaseTime];

                if (v39)
                {
                  *buf = 2012;
                  *&buf[8] = v28;
                  std::vector<AVHapticPlayerFixedParameter>::push_back[abi:ne200100](&__p, buf);
                }

                else
                {
                  parameterID8 = [v18 parameterID];
                  v41 = [parameterID8 isEqualToString:CHHapticEventParameterIDSustained];

                  if ((v41 & 1) == 0)
                  {
                    if (kHAPIScope)
                    {
                      v48 = *kHAPIScope;
                      if (!v48)
                      {
                        goto LABEL_59;
                      }
                    }

                    else
                    {
                      v48 = MEMORY[0x277D86220];
                      v49 = MEMORY[0x277D86220];
                    }

                    v50 = v48;
                    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                    {
                      parameterID9 = [v18 parameterID];
                      *buf = 136315906;
                      *&buf[4] = "HapticCommandConverter.mm";
                      v68 = 1024;
                      v69 = 440;
                      v70 = 2080;
                      v71 = "[HapticCommandConverter eventForContinuousHapticEventType:time:params:duration:]";
                      v72 = 2112;
                      *v73 = parameterID9;
                      _os_log_impl(&dword_21569A000, v50, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Unknown event param type: %@", buf, 0x26u);
                    }

LABEL_59:
                    Haptic_RaiseException(&cfstr_Corehapticinva.isa, &cfstr_UnknownEventPa.isa, -4820);
                  }
                }
              }
            }
          }
        }
      }

      v14 = [obj countByEnumeratingWithState:&v59 objects:v66 count:16];
      if (!v14)
      {

        if (v55)
        {
          goto LABEL_40;
        }

        goto LABEL_34;
      }
    }
  }

LABEL_34:
  v15 = [(HapticCommandConverter *)self continuousHapticEventTypeForDefaultSharpness:type == 1];
  if (kHAPIScope)
  {
    if (*(kHAPIScope + 8))
    {
      v42 = *kHAPIScope;
      if (v42)
      {
        v43 = v42;
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          *&buf[4] = "HapticCommandConverter.mm";
          v68 = 1024;
          v69 = 447;
          v70 = 2080;
          v71 = "[HapticCommandConverter eventForContinuousHapticEventType:time:params:duration:]";
          v72 = 1024;
          *v73 = v15;
          _os_log_impl(&dword_21569A000, v43, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Event has no HapticSharpness EventParameter. Using default event ID %u", buf, 0x22u);
        }
      }
    }
  }

LABEL_40:
  if (v13 != 1.0)
  {
    if (kHAPIScope)
    {
      if (*(kHAPIScope + 8))
      {
        v44 = *kHAPIScope;
        if (v44)
        {
          v45 = v44;
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315906;
            *&buf[4] = "HapticCommandConverter.mm";
            v68 = 1024;
            v69 = 450;
            v70 = 2080;
            v71 = "[HapticCommandConverter eventForContinuousHapticEventType:time:params:duration:]";
            v72 = 2048;
            *v73 = v13;
            _os_log_impl(&dword_21569A000, v45, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Adding event param for continuous haptic intensity: %.2f", buf, 0x26u);
          }
        }
      }
    }

    *buf = 2000;
    *&buf[8] = v13;
    std::vector<AVHapticPlayerFixedParameter>::push_back[abi:ne200100](&__p, buf);
  }

  if (v64 == __p)
  {
    v46 = 0;
  }

  else
  {
    v46 = __p;
  }

  v47 = [MEMORY[0x277CEFD50] eventWithEventType:v15 time:v46 parameters:(v64 - __p) >> 4 count:time duration:duration];

  if (__p)
  {
    v64 = __p;
    operator delete(__p);
  }

  v52 = *MEMORY[0x277D85DE8];

  return v47;
}

- (id)eventForSPIEventType:(unint64_t)type time:(double)time eventParams:(id)params duration:(double)duration
{
  v72 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  if (kHAPIScope)
  {
    if (*(kHAPIScope + 8))
    {
      v9 = *kHAPIScope;
      if (v9)
      {
        v10 = v9;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136316674;
          *&buf[4] = "HapticCommandConverter.mm";
          v64 = 1024;
          v65 = 469;
          v66 = 2080;
          v67 = "[HapticCommandConverter eventForSPIEventType:time:eventParams:duration:]";
          v68 = 1024;
          *v69 = type;
          *&v69[4] = 2048;
          *&v69[6] = time;
          *&v69[14] = 2048;
          *&v69[16] = duration;
          v70 = 1024;
          v71 = [paramsCopy count];
          _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Type %u time: %.2f secs dur: %.2f secs %u event params", buf, 0x3Cu);
        }
      }
    }
  }

  __p = 0;
  v60 = 0;
  v61 = 0;
  if ([paramsCopy count])
  {
    v11 = +[CHHapticEngine capabilitiesForHardware];
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = paramsCopy;
    v12 = [obj countByEnumeratingWithState:&v55 objects:v62 count:16];
    if (!v12)
    {
      goto LABEL_28;
    }

    v13 = *v56;
    while (1)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v56 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v55 + 1) + 8 * i);
        if (kHAPIScope)
        {
          if (*(kHAPIScope + 8))
          {
            v16 = *kHAPIScope;
            if (v16)
            {
              v17 = v16;
              if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
              {
                parameterID = [v15 parameterID];
                [v15 value];
                *buf = 136316162;
                *&buf[4] = "HapticCommandConverter.mm";
                v64 = 1024;
                v65 = 474;
                v66 = 2080;
                v67 = "[HapticCommandConverter eventForSPIEventType:time:eventParams:duration:]";
                v68 = 2112;
                *v69 = parameterID;
                *&v69[8] = 2048;
                *&v69[10] = v19;
                _os_log_impl(&dword_21569A000, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Fixed Param '%@': value %f", buf, 0x30u);
              }
            }
          }
        }

        parameterID2 = [v15 parameterID];
        v21 = [parameterID2 isEqualToString:CHHapticEventParameterIDAudioVolume];

        if (v21)
        {
          [v15 value];
          v23 = v22;
          parameterID3 = [v15 parameterID];
          LODWORD(v25) = v23;
          [(HapticCommandConverter *)self limitEventParameter:v11 value:parameterID3 parameter:CHHapticEventTypeAudioContinuous eventType:v25];
          v27 = v26;

          *buf = 1000;
          *&buf[8] = v27;
          std::vector<AVHapticPlayerFixedParameter>::push_back[abi:ne200100](&__p, buf);
        }

        else
        {
          parameterID4 = [v15 parameterID];
          v29 = [parameterID4 isEqualToString:CHHapticEventParameterIDAudioPitch];

          if (v29)
          {
            [v15 value];
            v31 = v30;
            parameterID5 = [v15 parameterID];
            LODWORD(v33) = v31;
            [(HapticCommandConverter *)self limitEventParameter:v11 value:parameterID5 parameter:CHHapticEventTypeAudioContinuous eventType:v33];
            v35 = v34;

            *buf = 1001;
            *&buf[8] = v35;
            std::vector<AVHapticPlayerFixedParameter>::push_back[abi:ne200100](&__p, buf);
          }

          else
          {
            parameterID6 = [v15 parameterID];
            v37 = [parameterID6 isEqualToString:CHHapticEventParameterIDHapticIntensity];

            if (!v37)
            {
              if (kHAPIScope)
              {
                v46 = *kHAPIScope;
                if (!v46)
                {
                  goto LABEL_40;
                }
              }

              else
              {
                v46 = MEMORY[0x277D86220];
                v47 = MEMORY[0x277D86220];
              }

              v48 = v46;
              if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
              {
                parameterID7 = [v15 parameterID];
                *buf = 136315906;
                *&buf[4] = "HapticCommandConverter.mm";
                v64 = 1024;
                v65 = 492;
                v66 = 2080;
                v67 = "[HapticCommandConverter eventForSPIEventType:time:eventParams:duration:]";
                v68 = 2112;
                *v69 = parameterID7;
                _os_log_impl(&dword_21569A000, v48, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Unsupported event param type: %@", buf, 0x26u);
              }

LABEL_40:
              Haptic_RaiseException(&cfstr_Corehapticinva.isa, &cfstr_UnsupportedEve.isa, -4820);
            }

            if ([(HapticCommandConverter *)self eventTypeForBuiltInAudioEventType:32556]!= type)
            {
              [v15 value];
              v39 = v38;
              parameterID8 = [v15 parameterID];
              LODWORD(v41) = v39;
              [(HapticCommandConverter *)self limitEventParameter:v11 value:parameterID8 parameter:CHHapticEventTypeHapticTransient eventType:v41];
              v43 = v42;

              *buf = 2000;
              *&buf[8] = v43;
              std::vector<AVHapticPlayerFixedParameter>::push_back[abi:ne200100](&__p, buf);
            }
          }
        }
      }

      v12 = [obj countByEnumeratingWithState:&v55 objects:v62 count:16];
      if (!v12)
      {
LABEL_28:

        break;
      }
    }
  }

  if (v60 == __p)
  {
    v44 = 0;
  }

  else
  {
    v44 = __p;
  }

  v45 = [MEMORY[0x277CEFD50] eventWithEventType:type time:v44 parameters:(v60 - __p) >> 4 count:time duration:duration];
  if (__p)
  {
    v60 = __p;
    operator delete(__p);
  }

  v50 = *MEMORY[0x277D85DE8];

  return v45;
}

- (id)eventForEventEntry:(id)entry engine:(id)engine privileged:(BOOL)privileged
{
  privilegedCopy = privileged;
  v74 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  engineCopy = engine;
  eventParameters = [entryCopy eventParameters];
  [entryCopy relativeTime];
  v12 = v11;
  [entryCopy duration];
  v14 = v13;
  serverConfig = [engineCopy serverConfig];
  [serverConfig hapticContinuousTimeLimit];
  v17 = v16;

  if (kHAPIScope)
  {
    if (*(kHAPIScope + 8))
    {
      v18 = *kHAPIScope;
      if (v18)
      {
        v19 = v18;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          type = [entryCopy type];
          v66 = 136315906;
          v67 = "HapticCommandConverter.mm";
          v68 = 1024;
          v69 = 515;
          v70 = 2080;
          v71 = "[HapticCommandConverter eventForEventEntry:engine:privileged:]";
          v72 = 2112;
          v73 = *&type;
          _os_log_impl(&dword_21569A000, v19, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Event type '%@':", &v66, 0x26u);
        }
      }
    }
  }

  if (v12 < 0.0)
  {
    if (kHAPIScope)
    {
      v21 = *kHAPIScope;
      if (!v21)
      {
        v22 = -4822;
        v23 = @"Illegal time value";
        v24 = @"CoreHapticInvalidEventTimeException";
        goto LABEL_35;
      }
    }

    else
    {
      v21 = MEMORY[0x277D86220];
      v28 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v66 = 136315906;
      v67 = "HapticCommandConverter.mm";
      v68 = 1024;
      v69 = 517;
      v70 = 2080;
      v71 = "[HapticCommandConverter eventForEventEntry:engine:privileged:]";
      v72 = 2048;
      v73 = v12;
      _os_log_impl(&dword_21569A000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Illegal time value: %f", &v66, 0x26u);
    }

    v22 = -4822;
    v23 = @"Illegal time value";
    v24 = @"CoreHapticInvalidEventTimeException";
    goto LABEL_34;
  }

  if (v14 < 0.0)
  {
    if (kHAPIScope)
    {
      v21 = *kHAPIScope;
      if (!v21)
      {
        v22 = -4823;
        v23 = @"Illegal event duration";
        v24 = @"CoreHapticInvalidEventDurationException";
        goto LABEL_35;
      }
    }

    else
    {
      v21 = MEMORY[0x277D86220];
      v32 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v66 = 136315906;
      v67 = "HapticCommandConverter.mm";
      v68 = 1024;
      v69 = 522;
      v70 = 2080;
      v71 = "[HapticCommandConverter eventForEventEntry:engine:privileged:]";
      v72 = 2048;
      v73 = v14;
      _os_log_impl(&dword_21569A000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Illegal duration value: %f", &v66, 0x26u);
    }

    v22 = -4823;
    v23 = @"Illegal event duration";
    v24 = @"CoreHapticInvalidEventDurationException";
LABEL_34:

LABEL_35:
    Haptic_RaiseException(&v24->isa, &v23->isa, v22);
  }

  type2 = [entryCopy type];
  v26 = [type2 isEqualToString:CHHapticEventTypeHapticTransient];

  if (!v26)
  {
    type3 = [entryCopy type];
    v30 = [type3 isEqualToString:CHHapticEventTypeHapticContinuous];

    if (!v30)
    {
      type4 = [entryCopy type];
      v36 = [type4 isEqualToString:CHHapticEventTypeAudioContinuous];

      if (v36)
      {
        audioResID = [(HapticCommandConverter *)self eventTypeForBuiltInAudioEventType:32513];
        if (eventParameters && [eventParameters indexOfObjectPassingTest:&__block_literal_global_43] != 0x7FFFFFFFFFFFFFFFLL)
        {
          audioResID = [(HapticCommandConverter *)self eventTypeForBuiltInAudioEventType:32514];
        }

        else if (v14 == 0.0)
        {
          v39 = CALog::LogObjIfEnabled(1, kHAPIScope, v37);
          v40 = v39;
          if (v39 && os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            v66 = 136315650;
            v67 = "HapticCommandConverter.mm";
            v68 = 1024;
            v69 = 571;
            v70 = 2080;
            v71 = "[HapticCommandConverter eventForEventEntry:engine:privileged:]";
            _os_log_impl(&dword_21569A000, v40, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Continuous audio event has a missing or zero-length duration", &v66, 0x1Cu);
          }

          Haptic_RaiseException(&cfstr_Corehapticinva_1.isa, &cfstr_IllegalOrMissi.isa, -4823);
        }
      }

      else
      {
        type5 = [entryCopy type];
        v42 = [type5 isEqualToString:CHHapticEventTypeAudioCustom];

        if (!v42)
        {
          if (privilegedCopy)
          {
            type6 = [entryCopy type];
            v54 = [type6 isEqualToString:CHHapticEventTypeWheelsOfTime];

            if (v54)
            {
              v27 = [(HapticCommandConverter *)self eventForSPIEventType:[(HapticCommandConverter *)self eventTypeForBuiltInAudioEventType:32556] time:eventParameters eventParams:v12 duration:v14];
              goto LABEL_82;
            }

            type7 = [entryCopy type];
            v62 = [type7 isEqualToString:CHHapticEventTypeAudioClick];

            if (v62)
            {
              v27 = [(HapticCommandConverter *)self eventForSPIEventType:[(HapticCommandConverter *)self eventTypeForBuiltInAudioEventType:32555] time:eventParameters eventParams:v12 duration:v14];
              goto LABEL_82;
            }

            v64 = CALog::LogObjIfEnabled(1, kHAPIScope, v63);
            v21 = v64;
            if (v64)
            {
              v21 = v64;
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                type8 = [entryCopy type];
                v66 = 136315906;
                v67 = "HapticCommandConverter.mm";
                v68 = 1024;
                v69 = 609;
                v70 = 2080;
                v71 = "[HapticCommandConverter eventForEventEntry:engine:privileged:]";
                v72 = 2112;
                v73 = *&type8;
                _os_log_impl(&dword_21569A000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Unknown privileged event type: %@", &v66, 0x26u);
              }
            }

            v22 = -4821;
            v23 = @"Unknown privileged event type";
          }

          else
          {
            v59 = CALog::LogObjIfEnabled(1, kHAPIScope, v43);
            v21 = v59;
            if (v59)
            {
              v21 = v59;
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                type9 = [entryCopy type];
                v66 = 136315906;
                v67 = "HapticCommandConverter.mm";
                v68 = 1024;
                v69 = 615;
                v70 = 2080;
                v71 = "[HapticCommandConverter eventForEventEntry:engine:privileged:]";
                v72 = 2112;
                v73 = *&type9;
                _os_log_impl(&dword_21569A000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Unknown event type: %@", &v66, 0x26u);
              }
            }

            v22 = -4821;
            v23 = @"Unknown event type";
          }

          v24 = @"CoreHapticInvalidEventTypeException";
          goto LABEL_34;
        }

        audioResID = [entryCopy audioResID];
        if (audioResID == -1 || ![CHHapticEngine resourceIsRegistered:audioResID])
        {
          v55 = CALog::LogObjIfEnabled(1, kHAPIScope, v44);
          v56 = v55;
          if (v55 && os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            v66 = 136315906;
            v67 = "HapticCommandConverter.mm";
            v68 = 1024;
            v69 = 595;
            v70 = 2080;
            v71 = "[HapticCommandConverter eventForEventEntry:engine:privileged:]";
            v72 = 1024;
            LODWORD(v73) = audioResID;
            _os_log_impl(&dword_21569A000, v56, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Invalid or missing audio resource with ID %u", &v66, 0x22u);
          }

          Haptic_RaiseException(&cfstr_Corehapticinva_2.isa, &cfstr_InvalidOrMissi.isa, -4824);
        }

        if (v14 == 0.0 && [engineCopy isResourceLoopEnabled:audioResID])
        {
          v46 = CALog::LogObjIfEnabled(1, kHAPIScope, v45);
          v47 = v46;
          if (v46 && os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            v66 = 136315906;
            v67 = "HapticCommandConverter.mm";
            v68 = 1024;
            v69 = 584;
            v70 = 2080;
            v71 = "[HapticCommandConverter eventForEventEntry:engine:privileged:]";
            v72 = 1024;
            LODWORD(v73) = audioResID;
            _os_log_impl(&dword_21569A000, v47, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Audio resource with ID %u has looping enabled but the event does not specify a duration", &v66, 0x22u);
          }

          Haptic_RaiseException(&cfstr_Corehapticinva_1.isa, &cfstr_LoopedCustomAu.isa, -4823);
        }

        if (v14 < 0.000000999999997)
        {
          [engineCopy getDurationForResource:audioResID];
          [entryCopy setDuration:?];
          [entryCopy duration];
          v14 = v48;
        }
      }

      v27 = [(HapticCommandConverter *)self eventForAudioEventType:audioResID time:eventParameters eventParams:v12 duration:v14];
      goto LABEL_82;
    }

    if (eventParameters && [eventParameters indexOfObjectPassingTest:&__block_literal_global_0] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v49 = 2;
    }

    else
    {
      if (v14 == 0.0)
      {
        if (kHAPIScope)
        {
          v31 = *kHAPIScope;
          if (!v31)
          {
            goto LABEL_79;
          }
        }

        else
        {
          v31 = MEMORY[0x277D86220];
          v57 = MEMORY[0x277D86220];
        }

        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v66 = 136315650;
          v67 = "HapticCommandConverter.mm";
          v68 = 1024;
          v69 = 546;
          v70 = 2080;
          v71 = "[HapticCommandConverter eventForEventEntry:engine:privileged:]";
          _os_log_impl(&dword_21569A000, v31, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Continuous haptic event has a missing or zero-length duration", &v66, 0x1Cu);
        }

LABEL_79:
        Haptic_RaiseException(&cfstr_Corehapticinva_1.isa, &cfstr_IllegalOrMissi.isa, -4823);
      }

      v49 = 1;
      if (v17 > 0.0)
      {
        v50 = v17;
        if (v14 > v50)
        {
          v51 = CALog::LogObjIfEnabled(6, kHAPIScope, 1);
          v52 = v51;
          if (v51 && os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
          {
            v66 = 136315906;
            v67 = "HapticCommandConverter.mm";
            v68 = 1024;
            v69 = 552;
            v70 = 2080;
            v71 = "[HapticCommandConverter eventForEventEntry:engine:privileged:]";
            v72 = 2048;
            v73 = v50;
            _os_log_impl(&dword_21569A000, v52, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Haptic event duration capped at %f seconds", &v66, 0x26u);
          }

          v49 = 1;
          v14 = v50;
        }
      }
    }

    v27 = [(HapticCommandConverter *)self eventForContinuousHapticEventType:v49 time:eventParameters params:v12 duration:v14];
    goto LABEL_82;
  }

  if (privilegedCopy)
  {
    [(HapticCommandConverter *)self eventForLegacyTransientHapticAtTime:eventParameters params:v12 duration:v14];
  }

  else
  {
    [(HapticCommandConverter *)self eventForTransientHapticAtTime:eventParameters params:v12 duration:v14];
  }
  v27 = ;
LABEL_82:
  v58 = v27;

  v33 = *MEMORY[0x277D85DE8];

  return v58;
}

uint64_t __63__HapticCommandConverter_eventForEventEntry_engine_privileged___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = a2;
  v6 = [v5 parameterID];
  if (![v6 isEqualToString:CHHapticEventParameterIDSustained])
  {

    goto LABEL_5;
  }

  [v5 value];
  v8 = v7;

  if (v8 != 0.0)
  {
LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v9 = 1;
  *a4 = 1;
LABEL_6:

  return v9;
}

uint64_t __63__HapticCommandConverter_eventForEventEntry_engine_privileged___block_invoke_41(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = a2;
  v6 = [v5 parameterID];
  if (![v6 isEqualToString:CHHapticEventParameterIDSustained])
  {

    goto LABEL_5;
  }

  [v5 value];
  v8 = v7;

  if (v8 != 0.0)
  {
LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v9 = 1;
  *a4 = 1;
LABEL_6:

  return v9;
}

- (id)eventForDynamicParameterEntry:(id)entry
{
  v112 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  [entryCopy value];
  v6 = v5;
  [entryCopy relativeTime];
  v8 = v7;
  if (kHAPIScope)
  {
    if (*(kHAPIScope + 8))
    {
      v9 = *kHAPIScope;
      if (v9)
      {
        v10 = v9;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          [entryCopy parameterID];
          v11 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          v102 = 136315906;
          v103 = "HapticCommandConverter.mm";
          v104 = 1024;
          v105 = 626;
          v106 = 2080;
          v107 = "[HapticCommandConverter eventForDynamicParameterEntry:]";
          v108 = 2112;
          v109 = v11;
          _os_log_impl(&dword_21569A000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Dynamic parameter ID '%@':", &v102, 0x26u);
        }
      }
    }
  }

  v12 = +[CHHapticEngine capabilitiesForHardware];
  parameterID = [entryCopy parameterID];
  v14 = [parameterID isEqualToString:CHHapticDynamicParameterIDHapticIntensityControl];

  if (v14)
  {
    if (kHAPIScope)
    {
      if (*(kHAPIScope + 8))
      {
        v15 = *kHAPIScope;
        if (v15)
        {
          v16 = v15;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v102 = 136316162;
            v103 = "HapticCommandConverter.mm";
            v104 = 1024;
            v105 = 629;
            v106 = 2080;
            v107 = "[HapticCommandConverter eventForDynamicParameterEntry:]";
            v108 = 2048;
            v109 = v6;
            v110 = 2048;
            v111 = v8;
            _os_log_impl(&dword_21569A000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Creating event for haptic volume %f for time %f seconds", &v102, 0x30u);
          }
        }
      }
    }

    v17 = MEMORY[0x277CEFD50];
    parameterID2 = [entryCopy parameterID];
    *&v19 = v6;
    [(HapticCommandConverter *)self limitDynamicParameter:v12 value:parameterID2 parameter:v19];
    v20 = [v17 eventWithParameter:2000 value:? time:?];
  }

  else
  {
    parameterID3 = [entryCopy parameterID];
    v22 = [parameterID3 isEqualToString:CHHapticDynamicParameterIDHapticSharpnessControl];

    if (v22)
    {
      if (kHAPIScope)
      {
        if (*(kHAPIScope + 8))
        {
          v23 = *kHAPIScope;
          if (v23)
          {
            v24 = v23;
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              v102 = 136316162;
              v103 = "HapticCommandConverter.mm";
              v104 = 1024;
              v105 = 633;
              v106 = 2080;
              v107 = "[HapticCommandConverter eventForDynamicParameterEntry:]";
              v108 = 2048;
              v109 = v6;
              v110 = 2048;
              v111 = v8;
              _os_log_impl(&dword_21569A000, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Creating event for haptic transposition %f for time %f seconds", &v102, 0x30u);
            }
          }
        }
      }

      v25 = MEMORY[0x277CEFD50];
      parameterID2 = [entryCopy parameterID];
      *&v26 = v6;
      [(HapticCommandConverter *)self limitDynamicParameter:v12 value:parameterID2 parameter:v26];
      v20 = [v25 eventWithParameter:2001 value:? time:?];
    }

    else
    {
      parameterID4 = [entryCopy parameterID];
      v28 = [parameterID4 isEqualToString:CHHapticDynamicParameterIDHapticAttackTimeControl];

      if (v28)
      {
        if (kHAPIScope)
        {
          if (*(kHAPIScope + 8))
          {
            v29 = *kHAPIScope;
            if (v29)
            {
              v30 = v29;
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
              {
                v102 = 136316162;
                v103 = "HapticCommandConverter.mm";
                v104 = 1024;
                v105 = 637;
                v106 = 2080;
                v107 = "[HapticCommandConverter eventForDynamicParameterEntry:]";
                v108 = 2048;
                v109 = v6;
                v110 = 2048;
                v111 = v8;
                _os_log_impl(&dword_21569A000, v30, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Creating event for haptic attack time %f for time %f seconds", &v102, 0x30u);
              }
            }
          }
        }

        v31 = MEMORY[0x277CEFD50];
        parameterID2 = [entryCopy parameterID];
        *&v32 = v6;
        [(HapticCommandConverter *)self limitDynamicParameter:v12 value:parameterID2 parameter:v32];
        v20 = [v31 eventWithParameter:2010 value:? time:?];
      }

      else
      {
        parameterID5 = [entryCopy parameterID];
        v34 = [parameterID5 isEqualToString:CHHapticDynamicParameterIDHapticDecayTimeControl];

        if (v34)
        {
          if (kHAPIScope)
          {
            if (*(kHAPIScope + 8))
            {
              v35 = *kHAPIScope;
              if (v35)
              {
                v36 = v35;
                if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
                {
                  v102 = 136316162;
                  v103 = "HapticCommandConverter.mm";
                  v104 = 1024;
                  v105 = 641;
                  v106 = 2080;
                  v107 = "[HapticCommandConverter eventForDynamicParameterEntry:]";
                  v108 = 2048;
                  v109 = v6;
                  v110 = 2048;
                  v111 = v8;
                  _os_log_impl(&dword_21569A000, v36, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Creating event for haptic decay time %f for time %f seconds", &v102, 0x30u);
                }
              }
            }
          }

          v37 = MEMORY[0x277CEFD50];
          parameterID2 = [entryCopy parameterID];
          *&v38 = v6;
          [(HapticCommandConverter *)self limitDynamicParameter:v12 value:parameterID2 parameter:v38];
          v20 = [v37 eventWithParameter:2011 value:? time:?];
        }

        else
        {
          parameterID6 = [entryCopy parameterID];
          v40 = [parameterID6 isEqualToString:CHHapticDynamicParameterIDHapticReleaseTimeControl];

          if (v40)
          {
            if (kHAPIScope)
            {
              if (*(kHAPIScope + 8))
              {
                v41 = *kHAPIScope;
                if (v41)
                {
                  v42 = v41;
                  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
                  {
                    v102 = 136316162;
                    v103 = "HapticCommandConverter.mm";
                    v104 = 1024;
                    v105 = 645;
                    v106 = 2080;
                    v107 = "[HapticCommandConverter eventForDynamicParameterEntry:]";
                    v108 = 2048;
                    v109 = v6;
                    v110 = 2048;
                    v111 = v8;
                    _os_log_impl(&dword_21569A000, v42, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Creating event for haptic release time %f for time %f seconds", &v102, 0x30u);
                  }
                }
              }
            }

            v43 = MEMORY[0x277CEFD50];
            parameterID2 = [entryCopy parameterID];
            *&v44 = v6;
            [(HapticCommandConverter *)self limitDynamicParameter:v12 value:parameterID2 parameter:v44];
            v20 = [v43 eventWithParameter:2012 value:? time:?];
          }

          else
          {
            parameterID7 = [entryCopy parameterID];
            v46 = [parameterID7 isEqualToString:CHHapticDynamicParameterIDAudioVolumeControl];

            if (v46)
            {
              v48 = CALog::LogObjIfEnabled(6, kHAPIScope, v47);
              v49 = v48;
              if (v48 && os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
              {
                v102 = 136316162;
                v103 = "HapticCommandConverter.mm";
                v104 = 1024;
                v105 = 649;
                v106 = 2080;
                v107 = "[HapticCommandConverter eventForDynamicParameterEntry:]";
                v108 = 2048;
                v109 = v6;
                v110 = 2048;
                v111 = v8;
                _os_log_impl(&dword_21569A000, v49, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Creating event for audio volume %f for time %f seconds", &v102, 0x30u);
              }

              v50 = MEMORY[0x277CEFD50];
              parameterID2 = [entryCopy parameterID];
              *&v51 = v6;
              [(HapticCommandConverter *)self limitDynamicParameter:v12 value:parameterID2 parameter:v51];
              v20 = [v50 eventWithParameter:1000 value:? time:?];
            }

            else
            {
              parameterID8 = [entryCopy parameterID];
              v53 = [parameterID8 isEqualToString:CHHapticDynamicParameterIDAudioBrightnessControl];

              if (v53)
              {
                v55 = CALog::LogObjIfEnabled(6, kHAPIScope, v54);
                v56 = v55;
                if (v55 && os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
                {
                  v102 = 136316162;
                  v103 = "HapticCommandConverter.mm";
                  v104 = 1024;
                  v105 = 653;
                  v106 = 2080;
                  v107 = "[HapticCommandConverter eventForDynamicParameterEntry:]";
                  v108 = 2048;
                  v109 = v6;
                  v110 = 2048;
                  v111 = v8;
                  _os_log_impl(&dword_21569A000, v56, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Creating event for audio brightness %f for time %f seconds", &v102, 0x30u);
                }

                v57 = MEMORY[0x277CEFD50];
                parameterID2 = [entryCopy parameterID];
                *&v58 = v6;
                [(HapticCommandConverter *)self limitDynamicParameter:v12 value:parameterID2 parameter:v58];
                v20 = [v57 eventWithParameter:1013 value:? time:?];
              }

              else
              {
                parameterID9 = [entryCopy parameterID];
                v60 = [parameterID9 isEqualToString:CHHapticDynamicParameterIDAudioPanControl];

                if (v60)
                {
                  v62 = CALog::LogObjIfEnabled(6, kHAPIScope, v61);
                  v63 = v62;
                  if (v62 && os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
                  {
                    v102 = 136316162;
                    v103 = "HapticCommandConverter.mm";
                    v104 = 1024;
                    v105 = 657;
                    v106 = 2080;
                    v107 = "[HapticCommandConverter eventForDynamicParameterEntry:]";
                    v108 = 2048;
                    v109 = v6;
                    v110 = 2048;
                    v111 = v8;
                    _os_log_impl(&dword_21569A000, v63, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Creating event for audio pan %f for time %f seconds", &v102, 0x30u);
                  }

                  v64 = MEMORY[0x277CEFD50];
                  parameterID2 = [entryCopy parameterID];
                  *&v65 = v6;
                  [(HapticCommandConverter *)self limitDynamicParameter:v12 value:parameterID2 parameter:v65];
                  v20 = [v64 eventWithParameter:1015 value:? time:?];
                }

                else
                {
                  parameterID10 = [entryCopy parameterID];
                  v67 = [parameterID10 isEqualToString:CHHapticDynamicParameterIDAudioPitchControl];

                  if (v67)
                  {
                    v69 = CALog::LogObjIfEnabled(6, kHAPIScope, v68);
                    v70 = v69;
                    if (v69 && os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
                    {
                      v102 = 136316162;
                      v103 = "HapticCommandConverter.mm";
                      v104 = 1024;
                      v105 = 661;
                      v106 = 2080;
                      v107 = "[HapticCommandConverter eventForDynamicParameterEntry:]";
                      v108 = 2048;
                      v109 = v6;
                      v110 = 2048;
                      v111 = v8;
                      _os_log_impl(&dword_21569A000, v70, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Creating event for audio transposition %f for time %f seconds", &v102, 0x30u);
                    }

                    v71 = MEMORY[0x277CEFD50];
                    parameterID2 = [entryCopy parameterID];
                    *&v72 = v6;
                    [(HapticCommandConverter *)self limitDynamicParameter:v12 value:parameterID2 parameter:v72];
                    v20 = [v71 eventWithParameter:1001 value:? time:?];
                  }

                  else
                  {
                    parameterID11 = [entryCopy parameterID];
                    v74 = [parameterID11 isEqualToString:CHHapticDynamicParameterIDAudioAttackTimeControl];

                    if (v74)
                    {
                      v76 = CALog::LogObjIfEnabled(6, kHAPIScope, v75);
                      v77 = v76;
                      if (v76 && os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
                      {
                        v102 = 136316162;
                        v103 = "HapticCommandConverter.mm";
                        v104 = 1024;
                        v105 = 665;
                        v106 = 2080;
                        v107 = "[HapticCommandConverter eventForDynamicParameterEntry:]";
                        v108 = 2048;
                        v109 = v6;
                        v110 = 2048;
                        v111 = v8;
                        _os_log_impl(&dword_21569A000, v77, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Creating event for audio attack time %f for time %f seconds", &v102, 0x30u);
                      }

                      v78 = MEMORY[0x277CEFD50];
                      parameterID2 = [entryCopy parameterID];
                      *&v79 = v6;
                      [(HapticCommandConverter *)self limitDynamicParameter:v12 value:parameterID2 parameter:v79];
                      v20 = [v78 eventWithParameter:1010 value:? time:?];
                    }

                    else
                    {
                      parameterID12 = [entryCopy parameterID];
                      v81 = [parameterID12 isEqualToString:CHHapticDynamicParameterIDAudioDecayTimeControl];

                      if (v81)
                      {
                        v83 = CALog::LogObjIfEnabled(6, kHAPIScope, v82);
                        v84 = v83;
                        if (v83 && os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
                        {
                          v102 = 136316162;
                          v103 = "HapticCommandConverter.mm";
                          v104 = 1024;
                          v105 = 669;
                          v106 = 2080;
                          v107 = "[HapticCommandConverter eventForDynamicParameterEntry:]";
                          v108 = 2048;
                          v109 = v6;
                          v110 = 2048;
                          v111 = v8;
                          _os_log_impl(&dword_21569A000, v84, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Creating event for audio decay time %f for time %f seconds", &v102, 0x30u);
                        }

                        v85 = MEMORY[0x277CEFD50];
                        parameterID2 = [entryCopy parameterID];
                        *&v86 = v6;
                        [(HapticCommandConverter *)self limitDynamicParameter:v12 value:parameterID2 parameter:v86];
                        v20 = [v85 eventWithParameter:1011 value:? time:?];
                      }

                      else
                      {
                        parameterID13 = [entryCopy parameterID];
                        v88 = [parameterID13 isEqualToString:CHHapticDynamicParameterIDAudioReleaseTimeControl];

                        if (!v88)
                        {
                          v97 = CALog::LogObjIfEnabled(1, kHAPIScope, v89);
                          v98 = v97;
                          if (v97)
                          {
                            v99 = v97;
                            if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
                            {
                              [entryCopy parameterID];
                              *&v100 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                              v102 = 136315906;
                              v103 = "HapticCommandConverter.mm";
                              v104 = 1024;
                              v105 = 676;
                              v106 = 2080;
                              v107 = "[HapticCommandConverter eventForDynamicParameterEntry:]";
                              v108 = 2112;
                              v109 = *&v100;
                              v101 = v100;
                              _os_log_impl(&dword_21569A000, v99, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Unrecognized dynamic parameter: %@", &v102, 0x26u);
                            }
                          }

                          Haptic_RaiseException(&cfstr_Corehapticinva.isa, &cfstr_UnknownDynamic.isa, -4820);
                        }

                        v90 = CALog::LogObjIfEnabled(6, kHAPIScope, v89);
                        v91 = v90;
                        if (v90 && os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
                        {
                          v102 = 136316162;
                          v103 = "HapticCommandConverter.mm";
                          v104 = 1024;
                          v105 = 673;
                          v106 = 2080;
                          v107 = "[HapticCommandConverter eventForDynamicParameterEntry:]";
                          v108 = 2048;
                          v109 = v6;
                          v110 = 2048;
                          v111 = v8;
                          _os_log_impl(&dword_21569A000, v91, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Creating event for audio release time %f for time %f seconds", &v102, 0x30u);
                        }

                        v92 = MEMORY[0x277CEFD50];
                        parameterID2 = [entryCopy parameterID];
                        *&v93 = v6;
                        [(HapticCommandConverter *)self limitDynamicParameter:v12 value:parameterID2 parameter:v93];
                        v20 = [v92 eventWithParameter:1012 value:? time:?];
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v94 = v20;

  v95 = *MEMORY[0x277D85DE8];

  return v94;
}

- (id)eventForParameterCurveEntry:(id)entry
{
  v23 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  if (kHAPIScope)
  {
    if (*(kHAPIScope + 8))
    {
      v5 = *kHAPIScope;
      if (v5)
      {
        v6 = v5;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          parameterID = [entryCopy parameterID];
          [entryCopy relativeTime];
          v13 = 136316162;
          v14 = "HapticCommandConverter.mm";
          v15 = 1024;
          v16 = 683;
          v17 = 2080;
          v18 = "[HapticCommandConverter eventForParameterCurveEntry:]";
          v19 = 2112;
          v20 = parameterID;
          v21 = 2048;
          v22 = v8;
          _os_log_impl(&dword_21569A000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Parameter curve ID: '%@', relative time: %f", &v13, 0x30u);
        }
      }
    }
  }

  v9 = [(HapticCommandConverter *)self CHtoAVParameterCurve:entryCopy];
  v10 = [MEMORY[0x277CEFD50] eventWithParameterCurve:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)CHtoAVParameterCurve:(id)curve
{
  v57 = *MEMORY[0x277D85DE8];
  curveCopy = curve;
  controlPoints = [curveCopy controlPoints];
  v6 = [controlPoints count];

  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v6];
  v8 = +[CHHapticEngine capabilitiesForHardware];
  if (v6)
  {
    v9 = 0;
    v10 = 1;
    do
    {
      controlPoints2 = [curveCopy controlPoints];
      v12 = [controlPoints2 objectAtIndex:v9];
      [v12 relativeTime];
      v14 = v13;

      controlPoints3 = [curveCopy controlPoints];
      v16 = [controlPoints3 objectAtIndex:v9];
      [v16 value];
      v18 = v17;

      parameterID = [curveCopy parameterID];
      LODWORD(v20) = v18;
      [(HapticCommandConverter *)self limitDynamicParameter:v8 value:parameterID parameter:v20];
      v22 = v21;

      v23 = objc_alloc(MEMORY[0x277CEFD60]);
      LODWORD(v24) = v22;
      v25 = [v23 initWithTime:v14 value:v24];
      [v7 addObject:v25];

      v9 = v10;
    }

    while (v6 > v10++);
  }

  parameterID2 = [curveCopy parameterID];
  v28 = [parameterID2 isEqualToString:CHHapticDynamicParameterIDAudioVolumeControl];

  if (v28)
  {
    v29 = 1000;
  }

  else
  {
    parameterID3 = [curveCopy parameterID];
    v31 = [parameterID3 isEqualToString:CHHapticDynamicParameterIDAudioPanControl];

    if (v31)
    {
      v29 = 1015;
    }

    else
    {
      parameterID4 = [curveCopy parameterID];
      v33 = [parameterID4 isEqualToString:CHHapticDynamicParameterIDAudioBrightnessControl];

      if (v33)
      {
        v29 = 1013;
      }

      else
      {
        parameterID5 = [curveCopy parameterID];
        v35 = [parameterID5 isEqualToString:CHHapticDynamicParameterIDAudioPitchControl];

        if (v35)
        {
          v29 = 1001;
        }

        else
        {
          parameterID6 = [curveCopy parameterID];
          v37 = [parameterID6 isEqualToString:CHHapticDynamicParameterIDHapticIntensityControl];

          if (v37)
          {
            v29 = 2000;
          }

          else
          {
            parameterID7 = [curveCopy parameterID];
            v39 = [parameterID7 isEqualToString:CHHapticDynamicParameterIDHapticSharpnessControl];

            if ((v39 & 1) == 0)
            {
              v45 = CALog::LogObjIfEnabled(1, kHAPIScope, v40);
              v46 = v45;
              if (v45)
              {
                v47 = v45;
                if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                {
                  parameterID8 = [curveCopy parameterID];
                  v49 = 136315906;
                  v50 = "HapticCommandConverter.mm";
                  v51 = 1024;
                  v52 = 727;
                  v53 = 2080;
                  v54 = "[HapticCommandConverter CHtoAVParameterCurve:]";
                  v55 = 2112;
                  v56 = parameterID8;
                  _os_log_impl(&dword_21569A000, v47, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: ID %@ is not supported by parameter curves", &v49, 0x26u);
                }
              }

              Haptic_RaiseException(&cfstr_Corehapticinva.isa, &cfstr_InvalidDynamic.isa, -4820);
            }

            v29 = 2001;
          }
        }
      }
    }
  }

  v41 = objc_alloc(MEMORY[0x277CEFD58]);
  [curveCopy relativeTime];
  v42 = [v41 initWithType:v29 relativeTime:1 shape:v7 controlPoints:?];

  v43 = *MEMORY[0x277D85DE8];

  return v42;
}

@end