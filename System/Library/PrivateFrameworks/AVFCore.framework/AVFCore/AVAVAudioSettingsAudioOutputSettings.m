@interface AVAVAudioSettingsAudioOutputSettings
+ (id)_audioOutputSettingsWithAudioSettingsDictionary:(id)a3 exceptionReason:(id *)a4;
- (AVAVAudioSettingsAudioOutputSettings)initWithAVAudioSettingsDictionary:(id)a3 exceptionReason:(id *)a4;
- (AudioChannelLayout)copyAudioChannelLayoutForSourceFormatDescription:(opaqueCMFormatDescription *)a3 audioChannelLayoutSize:(unint64_t *)a4;
- (BOOL)canFullySpecifyOutputFormatReturningReason:(id *)a3;
- (BOOL)encoderIsAvailableOnCurrentSystemReturningError:(id *)a3;
- (id)audioOptions;
- (void)getAudioStreamBasicDescription:(AudioStreamBasicDescription *)a3 forAudioFileTypeID:(unsigned int)a4 sourceFormatDescription:(opaqueCMFormatDescription *)a5;
@end

@implementation AVAVAudioSettingsAudioOutputSettings

+ (id)_audioOutputSettingsWithAudioSettingsDictionary:(id)a3 exceptionReason:(id *)a4
{
  v4 = [objc_alloc(objc_opt_class()) initWithAVAudioSettingsDictionary:a3 exceptionReason:a4];

  return v4;
}

- (AVAVAudioSettingsAudioOutputSettings)initWithAVAudioSettingsDictionary:(id)a3 exceptionReason:(id *)a4
{
  v149 = 0;
  v7 = [(AVAudioOutputSettings *)self initWithAudioSettingsDictionary:a3 exceptionReason:&v149];
  v8 = v7;
  if (!a3)
  {
    v126 = v7;
    v132 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(v8 userInfo:{a2, @"invalid parameter not satisfying: %s", v127, v128, v129, v130, v131, "avAudioSettingsDictionary != nil"), 0}];
    objc_exception_throw(v132);
  }

  if (!v7)
  {
    goto LABEL_175;
  }

  v144 = v7;
  v145 = a4;
  v9 = [a3 allKeys];
  v147 = *MEMORY[0x1E69582B0];
  v10 = [v9 containsObject:?];
  if ((v10 & 1) == 0)
  {
    v149 = @"AVAudioSettings dictionary must contain AVFormatIDKey";
  }

  v143 = *MEMORY[0x1E6958280];
  v11 = [v9 containsObject:?];
  v142 = *MEMORY[0x1E6958290];
  v12 = [v9 containsObject:?];
  v13 = (v10 & v11) != 1 || v12 == 0;
  v14 = MEMORY[0x1E69582E8];
  v15 = MEMORY[0x1E69582C8];
  if (v13)
  {
    if (!v10)
    {
      v17 = 0;
      goto LABEL_19;
    }

    v16 = *MEMORY[0x1E69582E8];
    if ((![v9 containsObject:*MEMORY[0x1E69582E8]] || objc_msgSend(v9, "containsObject:", *v15)) && ((objc_msgSend(v9, "containsObject:", v16) & 1) != 0 || !objc_msgSend(v9, "containsObject:", *v15)))
    {
      v17 = 1;
      goto LABEL_19;
    }

    v17 = 0;
    v18 = @"If one of AVLinearPCMIsFloatKey and AVLinearPCMBitDepthKey is specified, both must be specified";
  }

  else
  {
    v17 = 0;
    v18 = @"Cannot specify both AVEncoderBitRateKey and AVEncoderBitRatePerChannelKey";
  }

  v149 = v18;
LABEL_19:
  v141 = *v15;
  v19 = [a3 objectForKey:?];
  v20 = v19;
  if (v17 && v19)
  {
    v21 = MEMORY[0x1E695DFD8];
    v22 = [MEMORY[0x1E696AD98] numberWithInteger:8];
    v23 = [MEMORY[0x1E696AD98] numberWithInteger:16];
    v24 = [MEMORY[0x1E696AD98] numberWithInteger:24];
    v25 = [v21 setWithObjects:{v22, v23, v24, objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", 32), 0}];
    if ([v25 containsObject:v20])
    {
      v17 = 1;
    }

    else
    {
      v17 = 0;
      v149 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Bit depth can only be one of: %@", objc_msgSend(objc_msgSend(v25, "allObjects"), "componentsJoinedByString:", @", ")];
    }
  }

  v140 = *MEMORY[0x1E6958278];
  v26 = [a3 objectForKey:?];
  if (v17)
  {
    v27 = v26;
    if (v26)
    {
      v28 = MEMORY[0x1E695DFD8];
      v29 = [MEMORY[0x1E696AD98] numberWithInteger:16];
      v30 = [MEMORY[0x1E696AD98] numberWithInteger:20];
      v31 = [MEMORY[0x1E696AD98] numberWithInteger:24];
      v32 = [v28 setWithObjects:{v29, v30, v31, objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", 32), 0}];
      if ([v32 containsObject:v27])
      {
        v17 = 1;
      }

      else
      {
        v17 = 0;
        v149 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Bit depth hint can only be one of: %@", objc_msgSend(objc_msgSend(v32, "allObjects"), "componentsJoinedByString:", @", ")];
      }
    }
  }

  v139 = *MEMORY[0x1E6958298];
  v33 = [a3 objectForKey:?];
  v34 = v33;
  if (v17 && v33)
  {
    v35 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E6958008], *MEMORY[0x1E6958010], *MEMORY[0x1E6958020], *MEMORY[0x1E6958018], 0}];
    if ([v35 containsObject:v34])
    {
      v17 = 1;
    }

    else
    {
      v17 = 0;
      v149 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Bit rate strategy can only be one of: %@", objc_msgSend(objc_msgSend(v35, "allObjects"), "componentsJoinedByString:", @", ")];
    }
  }

  v138 = *MEMORY[0x1E6958268];
  v36 = [a3 objectForKey:?];
  if (v17 && v36)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v34 && ([v34 isEqualToString:*MEMORY[0x1E6958018]] & 1) != 0)
      {
        v17 = 1;
        goto LABEL_43;
      }

      v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot specify a value for AVEncoderAudioQualityForVBRKey without also specifying AVAudioBitRateStrategy_Variable for AVEncoderBitRateStrategyKey", v133];
    }

    else
    {
      v37 = MEMORY[0x1E696AEC0];
      v38 = objc_opt_class();
      v39 = [v37 stringWithFormat:@"Value for AVEncoderAudioQualityForVBRKey must be an instance of %@", NSStringFromClass(v38)];
    }

    v17 = 0;
    v149 = v39;
  }

LABEL_43:
  v40 = *v14;
  v41 = [a3 objectForKey:*v14];
  if (v17 && v41 && v20)
  {
    if ([v41 BOOLValue] && objc_msgSend(v20, "integerValue") != 32)
    {
      v17 = 0;
      v149 = @"Floating-point LPCM must be 32-bit";
    }

    else
    {
      v17 = 1;
    }
  }

  v42 = *MEMORY[0x1E6958300];
  v43 = [a3 objectForKey:*MEMORY[0x1E6958300]];
  v44 = v43;
  if (v17 && v43)
  {
    if ([v43 integerValue] <= 0)
    {
      v17 = 0;
      v149 = @"Channel count must be positive";
    }

    else
    {
      v17 = 1;
    }
  }

  *inSpecifierSize = 0;
  v45 = *MEMORY[0x1E6958258];
  v46 = copyAudioChannelLayoutFromData([a3 objectForKey:*MEMORY[0x1E6958258]], inSpecifierSize);
  v47 = v46;
  if (v17 && v46)
  {
    if (AudioFormatGetProperty(0x7661636Cu, inSpecifierSize[0], v46, 0, 0))
    {
      v17 = 0;
      v48 = @"AudioChannelLayout is invalid";
LABEL_66:
      v149 = v48;
      goto LABEL_67;
    }

    LODWORD(outPropertyData) = 0;
    ioPropertyDataSize[0] = 4;
    if (AudioFormatGetProperty(0x6E63686Du, inSpecifierSize[0], v47, ioPropertyDataSize, &outPropertyData) || (v49 = outPropertyData, !outPropertyData))
    {
      v17 = 0;
      v48 = @"AudioChannelLayout channel count must be positive";
      goto LABEL_66;
    }

    if (v44 && [v44 integerValue] != v49)
    {
      v17 = 0;
      v48 = @"AudioChannelLayout channel count does not match AVNumberOfChannelsKey channel count";
      goto LABEL_66;
    }

    v17 = 1;
  }

LABEL_67:
  v137 = v44;
  v50 = *MEMORY[0x1E6958348];
  v51 = [a3 objectForKey:*MEMORY[0x1E6958348]];
  v52 = v51;
  if (v17 && v51)
  {
    [v51 floatValue];
    if (v53 < 8000.0 || v53 > 192000.0)
    {
      v17 = 0;
      v149 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid value %.2f for AVSampleRateKey; sample rate must be between 8.0 and 192.0 kHz inclusive", v53];
    }

    else
    {
      v17 = 1;
    }
  }

  inSpecifier = v47;
  v54 = *MEMORY[0x1E6958318];
  v55 = [a3 objectForKey:*MEMORY[0x1E6958318]];
  if (!v17 || (v56 = v55) == 0)
  {
LABEL_79:
    v57 = [a3 objectForKey:v147];
    if (!v17)
    {
      goto LABEL_173;
    }

    v58 = v57;
    if (!v57)
    {
      goto LABEL_173;
    }

    v59 = [v57 unsignedIntValue];
    v60 = [MEMORY[0x1E695DFD8] setWithObjects:{v147, v50, v42, v54, *MEMORY[0x1E6958338], v45, 0}];
    v61 = [MEMORY[0x1E695DFD8] setWithArray:{objc_msgSend(a3, "allKeys")}];
    [objc_msgSend(MEMORY[0x1E695DFA8] setWithSet:{v61), "intersectSet:", v60}];
    v62 = MEMORY[0x1E695DFD8];
    v136 = v59;
    if (v59 == 1634492771)
    {
      v66 = [MEMORY[0x1E695DFD8] setWithObjects:{v140, 0}];
      v64 = [MEMORY[0x1E695DFA8] setWithSet:v66];
    }

    else if (v59 == 1819304813)
    {
      v63 = [MEMORY[0x1E695DFD8] setWithObjects:{v141, *MEMORY[0x1E69582D0], v40, *MEMORY[0x1E69582F0], 0}];
      v64 = [MEMORY[0x1E695DFA8] setWithSet:v63];
      [v64 unionSet:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithObjects:", *MEMORY[0x1E69582A0], 0)}];
    }

    else
    {
      v67 = v59;
      v68 = *MEMORY[0x1E6958270];
      v69 = [v61 containsObject:v142];
      v70 = v143;
      if (v69)
      {
        v70 = v142;
      }

      v71 = [v62 setWithObjects:{v68, v70, v139, v138, 0}];
      v64 = [MEMORY[0x1E695DFA8] setWithSet:v71];
      if (v67 == 1634754915)
      {
        [v64 unionSet:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithObjects:", *MEMORY[0x1E69582A8], *MEMORY[0x1E69582A0], *MEMORY[0x1E6958260], 0)}];
      }
    }

    v72 = [MEMORY[0x1E695DFA8] setWithSet:v61];
    [v72 minusSet:v60];
    [v64 intersectSet:v72];
    v73 = [v64 count];
    if (v73 < [v72 count])
    {
      v74 = [MEMORY[0x1E695DFA8] setWithSet:v72];
      [v74 minusSet:v64];
      v149 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The following keys are not allowed when format ID is '%@': %@", AVStringForOSType(v136), objc_msgSend(objc_msgSend(v74, "allObjects"), "componentsJoinedByString:", @", ")];
      goto LABEL_93;
    }

    v77 = [v58 unsignedIntValue];
    v76 = inSpecifier;
    if (!encoderExistsForFormat(v77))
    {
LABEL_179:
      free(v76);
      v75 = v144;
      a4 = v145;
      if (!v145)
      {
        return v75;
      }

      goto LABEL_177;
    }

    if (!v52)
    {
      goto LABEL_122;
    }

    [v52 doubleValue];
    v79 = v78;
    LODWORD(outPropertyData) = v77;
    ioPropertyDataSize[0] = 0;
    if (AudioFormatGetPropertyInfo(0x61657372u, 4u, &outPropertyData, ioPropertyDataSize))
    {
      v80 = 0;
    }

    else
    {
      v80 = malloc_type_malloc(ioPropertyDataSize[0], 0x1000040451B5BE8uLL);
      if (v80 && !AudioFormatGetProperty(0x61657372u, 4u, &outPropertyData, ioPropertyDataSize, v80))
      {
        v81 = 0.0;
        if (ioPropertyDataSize[0] < 0x10)
        {
          goto LABEL_119;
        }

        v82 = ioPropertyDataSize[0] >> 4;
        v83 = v80 + 1;
        v84 = 3.40282347e38;
        while (1)
        {
          v85 = *(v83 - 1);
          v86 = *v83;
          if (v85 == 0.0 && v86 == 0.0)
          {
            break;
          }

          if (v85 <= v79 && v86 >= v79)
          {
            break;
          }

          if (v86 >= v79)
          {
            if (v85 - v79 < v84)
            {
              v84 = v85 - v79;
              v81 = *(v83 - 1);
            }
          }

          else if (v79 - v86 < v84)
          {
            v84 = v79 - v86;
            v81 = *v83;
          }

          v83 += 2;
          if (!--v82)
          {
            goto LABEL_119;
          }
        }
      }
    }

    v81 = v79;
LABEL_119:
    free(v80);
    if (v79 != v81)
    {
      v88 = MEMORY[0x1E696AEC0];
      v135 = AVStringForOSType(v77);
      v134 = *&v79;
      v89 = @"%g Hz is not a valid sample rate for Format ID '%@'.  Use kAudioFormatProperty_AvailableEncodeSampleRates (<AudioToolbox/AudioFormat.h>) to enumerate available rates for a given format.";
LABEL_121:
      v90 = v88;
LABEL_151:
      v17 = 0;
      v149 = [v90 stringWithFormat:v89, v134, v135];
LABEL_159:
      v107 = [a3 objectForKey:*MEMORY[0x1E69582A8]];
      if (v17 && v107)
      {
        v108 = [v107 integerValue];
        if (v108 < 5)
        {
          v17 = 1;
        }

        else
        {
          v17 = 0;
          v149 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid value %ld for AVEncoderDynamicRangeControlConfigurationKey; dynamic range control config must be between AVAudioDynamicRangeControlConfiguration_None and AVAudioDynamicRangeControlConfiguration_Capture inclusive", v108];
        }
      }

      v109 = [a3 objectForKey:*MEMORY[0x1E69582A0]];
      if (v17 && v109)
      {
        v110 = [v109 integerValue];
        if ((v110 - 11) > 0xFFFFFFFFFFFFFFF5)
        {
          v17 = 1;
        }

        else
        {
          v17 = 0;
          v149 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid value %ld for AVEncoderContentSourceKey; content source must be between AVAudioContentSource_AppleCapture_Traditional and AVAudioContentSource_ApplePassthrough inclusive", v110];
        }
      }

      v111 = [a3 objectForKey:*MEMORY[0x1E6958260]];
      if (v17 && v111)
      {
        v112 = [v111 integerValue];
        v76 = inSpecifier;
        if (v112 <= 2)
        {
          v149 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid value %ld for AVEncoderASPFrequencyKey; audio sync packet frequency must be an integer larger than 2.", v112];
          v75 = v144;
          a4 = v145;
          goto LABEL_94;
        }

        goto LABEL_179;
      }

LABEL_173:
      free(inSpecifier);
      v75 = v144;
      a4 = v145;
      if (v17)
      {
        goto LABEL_176;
      }

      goto LABEL_174;
    }

LABEL_122:
    if (v137)
    {
      v91 = [v137 unsignedIntegerValue];
      ioPropertyDataSize[0] = 0;
      v153 = 0;
      outPropertyData = 0u;
      v152 = 0u;
      DWORD2(outPropertyData) = v77;
      if (AudioFormatGetPropertyInfo(0x61766E63u, 0x28u, &outPropertyData, ioPropertyDataSize))
      {
        v92 = 0;
      }

      else
      {
        v92 = malloc_type_malloc(ioPropertyDataSize[0], 0xCD244C3FuLL);
        if (!AudioFormatGetProperty(0x61766E63u, 0x28u, &outPropertyData, ioPropertyDataSize, v92))
        {
          v93 = ioPropertyDataSize[0] >> 2;
          if (ioPropertyDataSize[0] >> 2 != 1 || *v92 != -1)
          {
            if (ioPropertyDataSize[0] >= 4)
            {
              v95 = 0;
              v96 = 0;
              v97 = 0;
              v98 = v92;
              do
              {
                v100 = *v98++;
                v99 = v100;
                if (v100 == v91)
                {
                  v94 = v91;
                  goto LABEL_149;
                }

                if (v99 == 1)
                {
                  v101 = 1;
                }

                else
                {
                  v101 = v95;
                }

                if (v99 == 2)
                {
                  v96 = 1;
                }

                else
                {
                  v95 = v101;
                }

                if (v99 > v97 && v99 < v91)
                {
                  v97 = v91;
                }

                --v93;
              }

              while (v93);
              if (v95)
              {
                v94 = 1;
              }

              else
              {
                v94 = v97;
              }

              if (v96)
              {
                v94 = 2;
              }
            }

            else
            {
              v94 = 0;
            }

LABEL_149:
            free(v92);
            if (v94 != v91)
            {
              v103 = MEMORY[0x1E696AEC0];
              v134 = v91;
              v135 = AVStringForOSType(v77);
              v89 = @"%d is not a valid channel count for Format ID '%@'.  Use kAudioFormatProperty_AvailableEncodeNumberChannels (<AudioToolbox/AudioFormat.h>) to enumerate available channel counts for a given format.";
              v90 = v103;
              goto LABEL_151;
            }

            goto LABEL_154;
          }
        }
      }

      free(v92);
    }

LABEL_154:
    if (!inSpecifier)
    {
      goto LABEL_158;
    }

    v104 = inSpecifierSize[0];
    LODWORD(outPropertyData) = 0;
    outPropertyDataSize = 0;
    ioPropertyDataSize[0] = 4;
    Property = AudioFormatGetProperty(0x6E63686Du, inSpecifierSize[0], inSpecifier, ioPropertyDataSize, &outPropertyData);
    v106 = outPropertyData;
    if (Property)
    {
      v106 = 0;
    }

    outPropertyData = 0u;
    v152 = 0u;
    v153 = 0;
    DWORD2(outPropertyData) = v77;
    HIDWORD(v152) = v106;
    if (AudioFormatGetPropertyInfo(0x6165636Cu, 0x28u, &outPropertyData, &outPropertyDataSize))
    {
      goto LABEL_158;
    }

    v114 = malloc_type_malloc(outPropertyDataSize, 0x8D118290uLL);
    if (!v114 || AudioFormatGetProperty(0x6165636Cu, 0x28u, &outPropertyData, &outPropertyDataSize, v114))
    {
      goto LABEL_193;
    }

    v115 = outPropertyDataSize;
    v150 = 0;
    outPropertyDataSize = 4;
    if (AudioFormatGetProperty(0x636D7074u, v104, inSpecifier, &outPropertyDataSize, &v150))
    {
      goto LABEL_194;
    }

    if (v115 >= 4)
    {
      v116 = v115 >> 2;
      v117 = v114;
      while (1)
      {
        v118 = *v117++;
        if (v118 == v150)
        {
          break;
        }

        if (!--v116)
        {
          goto LABEL_188;
        }
      }

LABEL_193:
      free(v114);
      goto LABEL_158;
    }

LABEL_188:
    if (v77 == 1634754915 || v77 == 1667330147 || v77 == 1902211171)
    {
      v119 = v150;
      free(v114);
      if (v119 == -266338299)
      {
        goto LABEL_158;
      }
    }

    else
    {
LABEL_194:
      free(v114);
    }

    if (*inSpecifier || v77 != 1634754915 && v77 != 1902211171 && v77 != 1667330147)
    {
      goto LABEL_196;
    }

    v120 = inSpecifier[2];
    if (!v120)
    {
      goto LABEL_196;
    }

    v121 = 0;
    v122 = 0;
    v123 = inSpecifier + 3;
    do
    {
      v124 = *v123;
      v123 += 5;
      v122 += (v124 >> 17) & 1;
      if (v124 == 3)
      {
        v121 = 1;
      }

      --v120;
    }

    while (v120);
    if (v122 != 4 || v121 == 0)
    {
LABEL_196:
      v88 = MEMORY[0x1E696AEC0];
      v134 = AVStringForOSType(v77);
      v89 = @"Channel layout is not valid for Format ID '%@'.  Use kAudioFormatProperty_AvailableEncodeChannelLayoutTags (<AudioToolbox/AudioFormat.h>) to enumerate available channel layout tags for a given format.";
      goto LABEL_121;
    }

LABEL_158:
    v17 = 1;
    goto LABEL_159;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v56 isEqualToString:*MEMORY[0x1E6958330]] & 1) != 0 || (objc_msgSend(v56, "isEqualToString:", *MEMORY[0x1E6958328]))
    {
      v17 = 1;
      goto LABEL_79;
    }

    v65 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unrecognized value %@ for AVSampleRateConverterAlgorithmKey", v56];
  }

  else
  {
    v65 = @"Value for AVSampleRateConverterAlgorithmKey must be an instance of NSString";
  }

  v149 = v65;
  [a3 objectForKey:v147];
LABEL_93:
  v75 = v144;
  a4 = v145;
  v76 = inSpecifier;
LABEL_94:
  free(v76);
LABEL_174:

LABEL_175:
  v75 = 0;
LABEL_176:
  if (a4)
  {
LABEL_177:
    *a4 = v149;
  }

  return v75;
}

- (BOOL)encoderIsAvailableOnCurrentSystemReturningError:(id *)a3
{
  v4 = [(AVAudioOutputSettings *)self audioSettingsDictionary];
  v5 = [(NSDictionary *)v4 objectForKey:*MEMORY[0x1E69582B0]];
  v6 = encoderExistsForFormat([v5 unsignedIntValue]);
  if ((v6 & 1) == 0)
  {
    v7 = AVLocalizedError(@"AVFoundationErrorDomain", -11834, [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"soun", @"AVErrorMediaTypeKey", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:", v5, 0), @"AVErrorMediaSubTypeKey", 0}]);
    if (a3)
    {
      *a3 = v7;
    }
  }

  return v6;
}

- (BOOL)canFullySpecifyOutputFormatReturningReason:(id *)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = [(AVAudioOutputSettings *)self audioSettingsDictionary];
  v5 = *MEMORY[0x1E69582B0];
  v6 = *MEMORY[0x1E6958258];
  v7 = [MEMORY[0x1E695DFA8] setWithObjects:{*MEMORY[0x1E69582B0], *MEMORY[0x1E6958348], *MEMORY[0x1E6958258], 0}];
  v8 = [-[NSDictionary objectForKey:](v4 objectForKey:{v5), "unsignedIntValue"}];
  v9 = [(NSDictionary *)v4 objectForKey:*MEMORY[0x1E6958300]];
  if (v9 && ([v9 integerValue] - 1) <= 1)
  {
    [v7 removeObject:v6];
  }

  if (v8 == 1634492771)
  {
    v10 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E6958278], 0, v19, v20, v21}];
  }

  else
  {
    if (v8 != 1819304813)
    {
      goto LABEL_9;
    }

    v10 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E69582C8], *MEMORY[0x1E69582D0], *MEMORY[0x1E69582E8], *MEMORY[0x1E69582F0], 0}];
  }

  [v7 unionSet:v10];
LABEL_9:
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        if (![(NSDictionary *)v4 objectForKey:v15])
        {
          v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing required key %@", v15];
          if (!a3)
          {
            return 0;
          }

          v18 = v17;
          result = 0;
          *a3 = v18;
          return result;
        }
      }

      v12 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

- (void)getAudioStreamBasicDescription:(AudioStreamBasicDescription *)a3 forAudioFileTypeID:(unsigned int)a4 sourceFormatDescription:(opaqueCMFormatDescription *)a5
{
  v69 = 0;
  outPropertyData = 0u;
  v68 = 0u;
  if (!a5)
  {
    v11 = [(AVAudioOutputSettings *)self audioSettingsDictionary];
    StreamBasicDescription = 0;
    goto LABEL_5;
  }

  RichestDecodableFormat = CMAudioFormatDescriptionGetRichestDecodableFormat(a5);
  if (!RichestDecodableFormat)
  {
    StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(a5);
    v11 = [(AVAudioOutputSettings *)self audioSettingsDictionary];
    if (StreamBasicDescription)
    {
      goto LABEL_7;
    }

LABEL_5:
    v12 = 1;
    v13 = 1;
    goto LABEL_8;
  }

  StreamBasicDescription = &RichestDecodableFormat->mASBD;
  v11 = [(AVAudioOutputSettings *)self audioSettingsDictionary];
LABEL_7:
  v12 = 0;
  v13 = StreamBasicDescription->mFormatID != 1819304813;
LABEL_8:
  v14 = [-[NSDictionary objectForKey:](v11 objectForKey:{*MEMORY[0x1E69582B0]), "unsignedIntValue"}];
  DWORD2(outPropertyData) = v14;
  if (v14 == 1634492771)
  {
    v16 = [-[NSDictionary objectForKey:](v11 objectForKey:{*MEMORY[0x1E6958278]), "integerValue"}];
    if ((v12 & 1) == 0 && StreamBasicDescription->mFormatID == 1819304813)
    {
      mBitsPerChannel = StreamBasicDescription->mBitsPerChannel;
      if (mBitsPerChannel == 32 && (StreamBasicDescription->mFormatFlags & 1) != 0)
      {
        mBitsPerChannel = 24;
      }

      if (v16 >= mBitsPerChannel)
      {
        v18 = mBitsPerChannel;
      }

      else
      {
        v18 = v16;
      }

      if (v16)
      {
        v16 = v18;
      }

      else
      {
        v16 = mBitsPerChannel;
      }
    }

    v19 = v16 - 16;
    goto LABEL_26;
  }

  if (v14 != 1819304813)
  {
    v19 = -16;
LABEL_26:
    v20 = __ROR8__(v19, 2);
    if (v20 > 4)
    {
      v21 = 0;
    }

    else
    {
      v21 = dword_1962574D0[v20];
    }

    DWORD2(v68) = 0;
    *&v68 = 0;
    HIDWORD(outPropertyData) = v21;
    goto LABEL_115;
  }

  desc[0] = 0;
  if (v12 & 1 | !v13)
  {
    if (a5)
    {
      v15 = CFRetain(a5);
    }

    else
    {
      v15 = 0;
    }

    desc[0] = v15;
    v23 = StreamBasicDescription;
  }

  else
  {
    v22 = [MEMORY[0x1E695DEC8] arrayWithObject:a5];
    CMAudioFormatDescriptionCreateSummary(*MEMORY[0x1E695E480], v22, 0, desc);
    v23 = CMAudioFormatDescriptionGetStreamBasicDescription(desc[0]);
  }

  if ((v12 | v13))
  {
    v24 = HIDWORD(outPropertyData) | 8;
  }

  else
  {
    HIDWORD(outPropertyData) |= v23->mFormatFlags & 8;
    v24 = v23->mFormatFlags & 0x10 | HIDWORD(outPropertyData);
  }

  HIDWORD(outPropertyData) = v24;
  v25 = [(NSDictionary *)v11 objectForKey:*MEMORY[0x1E69582F0], desc[0]];
  if (v25)
  {
    v26 = [v25 BOOLValue];
    v27 = HIDWORD(outPropertyData);
    if (v26)
    {
      v28 = HIDWORD(outPropertyData) | 0x20;
LABEL_42:
      HIDWORD(outPropertyData) = v28;
      goto LABEL_43;
    }

LABEL_41:
    v28 = v27 & 0xFFFFFFDF;
    goto LABEL_42;
  }

  if (a4)
  {
    v27 = HIDWORD(outPropertyData);
    goto LABEL_41;
  }

  if (v23)
  {
    v28 = HIDWORD(outPropertyData) | v23->mFormatFlags & 0x20;
    goto LABEL_42;
  }

LABEL_43:
  v29 = [(NSDictionary *)v11 objectForKey:*MEMORY[0x1E69582D0]];
  if (v29)
  {
    v30 = [v29 BOOLValue];
    v31 = HIDWORD(outPropertyData);
    if (!v30)
    {
      goto LABEL_54;
    }

LABEL_50:
    v32 = v31 | 2;
LABEL_55:
    HIDWORD(outPropertyData) = v32;
    goto LABEL_56;
  }

  if (a4 > 1380333107)
  {
    if (a4 == 1380333108 || a4 == 1463899717)
    {
      v31 = HIDWORD(outPropertyData);
LABEL_54:
      v32 = v31 & 0xFFFFFFFD;
      goto LABEL_55;
    }
  }

  else if (a4 == 1095321155 || a4 == 1095321158)
  {
    v31 = HIDWORD(outPropertyData);
    goto LABEL_50;
  }

  if (v23)
  {
    v32 = HIDWORD(outPropertyData) | v23->mFormatFlags & 2;
    goto LABEL_55;
  }

LABEL_56:
  v33 = [(NSDictionary *)v11 objectForKey:*MEMORY[0x1E69582E8]];
  v34 = MEMORY[0x1E69582C8];
  if (v33)
  {
    if ([v33 BOOLValue])
    {
      v35 = HIDWORD(outPropertyData) & 0xFFFFFFFA | 1;
      goto LABEL_77;
    }

    v37 = a4 == 1380333108 || a4 == 1463899717;
    v35 = HIDWORD(outPropertyData) & 0xFFFFFFFA;
    if (v37 && v69 == 8)
    {
      goto LABEL_77;
    }

    goto LABEL_72;
  }

  if ((v12 & 1) != 0 || StreamBasicDescription->mFormatID != 1634492771)
  {
    if (a4 != 1095321158)
    {
      if (!v23)
      {
        goto LABEL_78;
      }

      HIDWORD(outPropertyData) |= v23->mFormatFlags & 1;
      v35 = v23->mFormatFlags & 4 | HIDWORD(outPropertyData);
LABEL_77:
      HIDWORD(outPropertyData) = v35;
LABEL_78:
      v36 = [(NSDictionary *)v11 objectForKey:*v34];
      if (v36)
      {
        goto LABEL_79;
      }

      if (v12)
      {
        goto LABEL_86;
      }

      goto LABEL_81;
    }

    v35 = HIDWORD(outPropertyData) & 0xFFFFFFFE;
LABEL_72:
    v35 |= 4u;
    goto LABEL_77;
  }

  HIDWORD(outPropertyData) = HIDWORD(outPropertyData) & 0xFFFFFFFA | 4;
  v36 = [(NSDictionary *)v11 objectForKey:*MEMORY[0x1E69582C8]];
  if (v36)
  {
LABEL_79:
    LODWORD(v69) = [v36 unsignedIntegerValue];
    goto LABEL_113;
  }

LABEL_81:
  if (StreamBasicDescription->mFormatID == 1634492771)
  {
    mFormatFlags = StreamBasicDescription->mFormatFlags;
    if (mFormatFlags <= 2)
    {
      if (mFormatFlags != 1)
      {
        if (mFormatFlags != 2)
        {
          goto LABEL_113;
        }

        v39 = 20;
        goto LABEL_112;
      }

      goto LABEL_111;
    }

    if (mFormatFlags != 3)
    {
      if (mFormatFlags != 4)
      {
        goto LABEL_113;
      }

      goto LABEL_107;
    }

    goto LABEL_109;
  }

LABEL_86:
  if (!v23)
  {
    goto LABEL_113;
  }

  v40 = v23->mBitsPerChannel;
  LODWORD(v69) = v40;
  if (a4 > 1380333107)
  {
    if (a4 == 1463899717)
    {
      goto LABEL_93;
    }

    v41 = 1380333108;
  }

  else
  {
    if (a4 == 1095321155)
    {
      goto LABEL_93;
    }

    v41 = 1095321158;
  }

  if (a4 != v41)
  {
    goto LABEL_113;
  }

LABEL_93:
  HIDWORD(outPropertyData) = HIDWORD(outPropertyData) & 0xFFFFFFE7 | 8;
  if (v23->mFormatFlags)
  {
    if (a4 != 1095321158)
    {
      goto LABEL_113;
    }

    goto LABEL_109;
  }

  if ((a4 == 1095321155 || a4 == 1463899717 || a4 == 1380333108) && v40 >= 0x40)
  {
    v39 = 64;
LABEL_112:
    LODWORD(v69) = v39;
    goto LABEL_113;
  }

  if (v40 >= 0x20)
  {
LABEL_107:
    v39 = 32;
    goto LABEL_112;
  }

  if (v40 >= 0x18)
  {
LABEL_109:
    v39 = 24;
    goto LABEL_112;
  }

  if (v40 >= 0x10)
  {
LABEL_111:
    v39 = 16;
    goto LABEL_112;
  }

  if (v40 >= 8)
  {
    v39 = 8;
    goto LABEL_112;
  }

LABEL_113:
  DWORD1(v68) = 1;
  if (desc[0])
  {
    CFRelease(desc[0]);
  }

LABEL_115:
  v42 = [(NSDictionary *)v11 objectForKey:*MEMORY[0x1E6958300]];
  *inSpecifierSize = 0;
  v43 = copyAudioChannelLayoutFromData([(NSDictionary *)v11 objectForKey:*MEMORY[0x1E6958258]], inSpecifierSize);
  v44 = v43;
  if (v42)
  {
    v45 = 1;
  }

  else
  {
    v45 = v43 == 0;
  }

  if (!v45)
  {
    v46 = MEMORY[0x1E696AD98];
    LODWORD(desc[0]) = 0;
    ioPropertyDataSize = 4;
    if (AudioFormatGetProperty(0x6E63686Du, inSpecifierSize[0], v43, &ioPropertyDataSize, desc))
    {
      v47 = 0;
    }

    else
    {
      v47 = LODWORD(desc[0]);
    }

    v42 = [v46 numberWithInteger:v47];
  }

  v48 = [(NSDictionary *)v11 objectForKey:*MEMORY[0x1E6958348]];
  v49 = [(NSDictionary *)v11 objectForKey:*MEMORY[0x1E6958280]];
  if (v12)
  {
    v50 = 0;
  }

  else
  {
    v51 = v49;
    v50 = objc_alloc_init(AVAudioSettingsValueConstrainer);
    v52 = *&StreamBasicDescription->mSampleRate;
    v53 = *&StreamBasicDescription->mBytesPerPacket;
    v65 = *&StreamBasicDescription->mBitsPerChannel;
    *desc = v52;
    v64 = v53;
    [(AVAudioSettingsValueConstrainer *)v50 setInputPropertiesFromASBD:desc];
    [(AVAudioSettingsValueConstrainer *)v50 setOutputFormat:DWORD2(outPropertyData)];
    [(AVAudioSettingsValueConstrainer *)v50 setOutputFormatFlags:HIDWORD(outPropertyData)];
    [(AVAudioSettingsValueConstrainer *)v50 setOutputBitsPerChannel:v69];
    if (v48)
    {
      [v48 doubleValue];
      *&v54 = v54;
      [(AVAudioSettingsValueConstrainer *)v50 setOutputSampleRate:v54];
    }

    if (v42)
    {
      -[AVAudioSettingsValueConstrainer setOutputChannelCount:](v50, "setOutputChannelCount:", [v42 unsignedIntegerValue]);
    }

    if (v51)
    {
      -[AVAudioSettingsValueConstrainer setOutputDataRate:](v50, "setOutputDataRate:", [v51 unsignedIntegerValue]);
    }
  }

  if (v42)
  {
    HIDWORD(v68) = [v42 unsignedIntegerValue];
  }

  else
  {
    if (a4 == 1634562662)
    {
      HIDWORD(v68) = 1;
      if (v48)
      {
        goto LABEL_134;
      }

LABEL_139:
      *&outPropertyData = 0x40BF400000000000;
      goto LABEL_144;
    }

    if ((v12 & 1) == 0)
    {
      v56 = [(AVAudioSettingsValueConstrainer *)v50 availableOutputChannelCountForDesiredChannelCount:StreamBasicDescription->mChannelsPerFrame rounding:-1];
      HIDWORD(v68) = v56;
      [(AVAudioSettingsValueConstrainer *)v50 setOutputChannelCount:v56];
    }
  }

  if (v48)
  {
LABEL_134:
    [v48 doubleValue];
    *&outPropertyData = v55;
    goto LABEL_144;
  }

  if (a4 == 1634562662)
  {
    goto LABEL_139;
  }

  if ((v12 & 1) == 0)
  {
    mSampleRate = StreamBasicDescription->mSampleRate;
    *&mSampleRate = StreamBasicDescription->mSampleRate;
    [(AVAudioSettingsValueConstrainer *)v50 applicableOutputSampleRateForDesiredSampleRate:1 rounding:mSampleRate];
    *&outPropertyData = v58;
    [(AVAudioSettingsValueConstrainer *)v50 setOutputSampleRate:?];
  }

LABEL_144:
  if (DWORD2(outPropertyData) == 1819304813)
  {
    if ((BYTE12(outPropertyData) & 8) != 0)
    {
      mBytesPerFrame = vcvtpd_u64_f64(vcvtd_n_f64_u32(v69, 3uLL));
    }

    else if (((v12 | v13) & 1) != 0 || (v59 = StreamBasicDescription->mFormatFlags, (v59 & 8) != 0))
    {
      mBytesPerFrame = ((v69 >> 3) + 3) & 0x3FFFFFFC;
    }

    else
    {
      mBytesPerFrame = StreamBasicDescription->mBytesPerFrame;
      if ((v59 & 0x20) == 0)
      {
        mBytesPerFrame /= StreamBasicDescription->mChannelsPerFrame;
      }
    }

    if ((BYTE12(outPropertyData) & 0x20) != 0)
    {
      v61 = 1;
    }

    else
    {
      v61 = HIDWORD(v68);
    }

    LODWORD(v68) = mBytesPerFrame * v61;
    DWORD2(v68) = mBytesPerFrame * v61;
  }

  free(v44);
  LODWORD(desc[0]) = 40;
  AudioFormatGetProperty(0x666D7469u, 0, 0, desc, &outPropertyData);
  if (a3)
  {
    v62 = v68;
    *&a3->mSampleRate = outPropertyData;
    *&a3->mBytesPerPacket = v62;
    *&a3->mBitsPerChannel = v69;
  }
}

- (AudioChannelLayout)copyAudioChannelLayoutForSourceFormatDescription:(opaqueCMFormatDescription *)a3 audioChannelLayoutSize:(unint64_t *)a4
{
  v22 = 0;
  v6 = [(AVAudioOutputSettings *)self audioSettingsDictionary];
  v7 = [(NSDictionary *)v6 objectForKey:*MEMORY[0x1E6958258]];
  v8 = [(NSDictionary *)v6 objectForKey:*MEMORY[0x1E6958300]];
  if (v7)
  {
    v9 = copyAudioChannelLayoutFromData(v7, &v22);
    if (!a4)
    {
      return v9;
    }

    goto LABEL_25;
  }

  v10 = v8;
  if (a3)
  {
    *inSpecifierSize = 0;
    v9 = AVCopyBestAudioChannelLayoutFromFormatDescription(a3, inSpecifierSize);
    if (!v9 || !v10)
    {
      goto LABEL_10;
    }

    v11 = [v10 unsignedIntegerValue];
    ioPropertyDataSize = 4;
    outPropertyData = 0;
    Property = AudioFormatGetProperty(0x6E63686Du, inSpecifierSize[0], v9, &ioPropertyDataSize, &outPropertyData);
    v13 = outPropertyData;
    if (Property)
    {
      v13 = 0;
    }

    if (v13 == v11)
    {
LABEL_10:
      v22 = *inSpecifierSize;
      if (!a4)
      {
        return v9;
      }

      goto LABEL_25;
    }

    if (v11 == 1)
    {
      v16 = 6553601;
    }

    else
    {
      if (v11 != 2)
      {
        v19 = 0;
        v20 = 0;
LABEL_30:
        v22 = v19;
        free(v9);
        v9 = v20;
        if (!a4)
        {
          return v9;
        }

        goto LABEL_25;
      }

      v16 = 6619138;
    }

    v19 = 12;
    v20 = malloc_type_calloc(1uLL, 0xCuLL, 0xB3ED925DuLL);
    v20->mChannelLayoutTag = v16;
    goto LABEL_30;
  }

  if (!v8)
  {
    v9 = 0;
    if (!a4)
    {
      return v9;
    }

    goto LABEL_25;
  }

  v14 = [v8 integerValue];
  if (v14 == 1)
  {
    v15 = 6553601;
    goto LABEL_22;
  }

  if (v14 == 2)
  {
    v15 = 6619138;
LABEL_22:
    v17 = 12;
    v9 = malloc_type_calloc(1uLL, 0xCuLL, 0xB3ED925DuLL);
    v9->mChannelLayoutTag = v15;
    goto LABEL_24;
  }

  v17 = 0;
  v9 = 0;
LABEL_24:
  v22 = v17;
  if (a4)
  {
LABEL_25:
    *a4 = v22;
  }

  return v9;
}

- (id)audioOptions
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(AVAudioOutputSettings *)self audioSettingsDictionary];
  v5 = [(NSDictionary *)v4 objectForKey:*MEMORY[0x1E6958280]];
  v6 = MEMORY[0x1E6971628];
  if (v5)
  {
    [v3 setObject:v5 forKey:*MEMORY[0x1E6971628]];
  }

  v7 = [(NSDictionary *)v4 objectForKey:*MEMORY[0x1E6958270]];
  if (v7)
  {
    [v3 setObject:v7 forKey:*MEMORY[0x1E6971648]];
  }

  v8 = [(NSDictionary *)v4 objectForKey:*MEMORY[0x1E6958290]];
  v9 = [(NSDictionary *)v4 objectForKey:*MEMORY[0x1E6958300]];
  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = v9;
    v12 = [v8 integerValue];
    v13 = [v11 integerValue];
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", v13 * v12), *v6}];
  }

  v14 = [(NSDictionary *)v4 objectForKey:*MEMORY[0x1E6958298]];
  if (v14)
  {
    v15 = v14;
    v16 = MEMORY[0x1E696AD98];
    if ([v14 isEqualToString:*MEMORY[0x1E6958008]])
    {
      v17 = 0;
    }

    else if ([v15 isEqualToString:*MEMORY[0x1E6958010]])
    {
      v17 = 1;
    }

    else if ([v15 isEqualToString:*MEMORY[0x1E6958018]])
    {
      v17 = 3;
    }

    else
    {
      if (([v15 isEqualToString:*MEMORY[0x1E6958020]] & 1) == 0)
      {
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Unrecognized bit rate strategy" userInfo:0]);
      }

      v17 = 2;
    }

    v18 = [v16 numberWithUnsignedInteger:v17];
    [v3 setObject:v18 forKey:*MEMORY[0x1E6971640]];
  }

  v19 = [(NSDictionary *)v4 objectForKey:*MEMORY[0x1E6958268]];
  if (v19)
  {
    [v3 setObject:v19 forKey:*MEMORY[0x1E6971660]];
  }

  v20 = [(NSDictionary *)v4 objectForKey:*MEMORY[0x1E6958318]];
  if (v20)
  {
    v21 = v20;
    v22 = MEMORY[0x1E696AD98];
    if ([v20 isEqualToString:*MEMORY[0x1E6958330]])
    {
      v23 = 1852797549;
    }

    else if ([v21 isEqualToString:*MEMORY[0x1E6958328]])
    {
      v23 = 1650553971;
    }

    else
    {
      v23 = 0;
    }

    v24 = [v22 numberWithUnsignedInt:v23];
    [v3 setObject:v24 forKey:*MEMORY[0x1E6971630]];
  }

  v25 = [(NSDictionary *)v4 objectForKey:*MEMORY[0x1E69582A8]];
  if (v25)
  {
    [v3 setObject:v25 forKey:*MEMORY[0x1E6971658]];
  }

  v26 = [(NSDictionary *)v4 objectForKey:*MEMORY[0x1E69582A0]];
  if (v26)
  {
    [v3 setObject:v26 forKey:*MEMORY[0x1E6971650]];
  }

  v27 = [(NSDictionary *)v4 objectForKey:*MEMORY[0x1E6958260]];
  if (v27)
  {
    [v3 setObject:v27 forKey:*MEMORY[0x1E6971638]];
  }

  [(AVAVAudioSettingsAudioOutputSettings *)self willYieldCompressedSamples];
  return v3;
}

@end