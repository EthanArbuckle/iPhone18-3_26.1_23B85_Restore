@interface HapticServerConfig
- (HapticServerConfig)initWithHapticPlayer:(id)a3 withOptions:(id)a4 error:(id *)a5;
- (id).cxx_construct;
@end

@implementation HapticServerConfig

- (id).cxx_construct
{
  *(self + 14) = 0;
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  return self;
}

- (HapticServerConfig)initWithHapticPlayer:(id)a3 withOptions:(id)a4 error:(id *)a5
{
  v70 = *MEMORY[0x277D85DE8];
  v61 = a3;
  v62 = a4;
  v67.receiver = self;
  v67.super_class = HapticServerConfig;
  v53 = [(HapticServerConfig *)&v67 init];
  if (!v53)
  {
    v10 = 0;
    goto LABEL_73;
  }

  v7 = [v62 objectForKey:@"Locality"];
  v8 = v7;
  if (!v7)
  {
    if (kHAPIScope)
    {
      v9 = *kHAPIScope;
      if (!v9)
      {
        v60 = @"Default";
        goto LABEL_18;
      }
    }

    else
    {
      v9 = MEMORY[0x277D86220];
      v13 = MEMORY[0x277D86220];
    }

    v60 = @"Default";
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    *buf = 136315906;
    *&buf[4] = "HapticServerConfig.mm";
    *&buf[12] = 1024;
    *&buf[14] = 37;
    *&buf[18] = 2080;
    *&buf[20] = "[HapticServerConfig initWithHapticPlayer:withOptions:error:]";
    *&buf[28] = 2112;
    *&buf[30] = @"Default";
    v12 = "%25s:%-5d %s: Engine not configured with a Locality - querying using '%@'";
    goto LABEL_16;
  }

  v60 = v7;
  if (!kHAPIScope)
  {
    v9 = MEMORY[0x277D86220];
    v11 = MEMORY[0x277D86220];
    goto LABEL_11;
  }

  v9 = *kHAPIScope;
  if (v9)
  {
LABEL_11:
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
LABEL_17:

      goto LABEL_18;
    }

    *buf = 136315906;
    *&buf[4] = "HapticServerConfig.mm";
    *&buf[12] = 1024;
    *&buf[14] = 40;
    *&buf[18] = 2080;
    *&buf[20] = "[HapticServerConfig initWithHapticPlayer:withOptions:error:]";
    *&buf[28] = 2112;
    *&buf[30] = v8;
    v12 = "%25s:%-5d %s: Querying server for capabilities with '%@' Locality";
LABEL_16:
    _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_DEFAULT, v12, buf, 0x26u);
    goto LABEL_17;
  }

LABEL_18:
  v14 = MEMORY[0x277CCABB0];
  v15 = SecTaskCreateFromSelf(0);
  v16 = v15;
  if (v15)
  {
    v17 = SecTaskCopyValueForEntitlement(v15, @"com.apple.private.allow-background-haptics", 0);
    v18 = v17;
    if (v17)
    {
      v19 = CFGetTypeID(v17);
      v20 = v19 == CFBooleanGetTypeID() && CFBooleanGetValue(v18) != 0;
      CFRelease(v18);
    }

    else
    {
      v20 = 0;
    }

    CFRelease(v16);
  }

  else
  {
    v20 = 0;
  }

  v54 = [v14 numberWithBool:v20];
  v21 = MEMORY[0x277CBEB38];
  v58 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v57 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v56 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v55 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0];
  v23 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
  v24 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
  v25 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
  v26 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
  v27 = [MEMORY[0x277CBEA60] array];
  v28 = [MEMORY[0x277CBEA60] array];
  v29 = [MEMORY[0x277CBEA60] array];
  v30 = [MEMORY[0x277CBEAC0] dictionary];
  v31 = [v21 dictionaryWithObjectsAndKeys:{v60, @"RequestedLocality", v54, @"AllowBackgroundHaptics", v58, @"SupportsAudioPlayback", v57, @"SupportsHapticPlayback", v56, @"SupportsAdvancedPatternPlayers", v55, @"UsingInternalHaptics", v22, @"HapticContinuousTimeLimit", v23, @"HapticTransientDefaultIntensity", v24, @"HapticTransientDefaultSharpness", v25, @"HapticContinuousDefaultIntensity", v26, @"HapticContinuousDefaultSharpness", v27, @"HapticTransientEventIDs", v28, @"HapticContinuousSustainedEventIDs", v29, @"HapticContinuousNonsustainedEventIDs", v30, @"BuiltInAudioEventIDs", 0}];

  v32 = [v62 objectForKey:@"Priority"];
  if (!v32)
  {
LABEL_44:
    v37 = [v62 objectForKey:@"HapticPowerUsage"];
    if (!v37)
    {
      goto LABEL_57;
    }

    if (kHAPIScope)
    {
      v38 = *kHAPIScope;
      if (!v38)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v38 = MEMORY[0x277D86220];
      v39 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = "HapticServerConfig.mm";
      *&buf[12] = 1024;
      *&buf[14] = 88;
      *&buf[18] = 2080;
      *&buf[20] = "[HapticServerConfig initWithHapticPlayer:withOptions:error:]";
      *&buf[28] = 2112;
      *&buf[30] = v37;
      _os_log_impl(&dword_21569A000, v38, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Querying server for capabilities with HapticPowerUsage '%@'", buf, 0x26u);
    }

LABEL_52:
    if ([v37 containsString:@"LowPower"])
    {
      v40 = 10;
LABEL_56:
      v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v40];
      [v31 setObject:v41 forKey:@"RequestedPowerUsage"];

LABEL_57:
      v42 = [v62 objectForKey:@"UsageCategory"];
      if (!v42)
      {
LABEL_66:
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        *&buf[24] = __Block_byref_object_copy_;
        *&buf[32] = __Block_byref_object_dispose_;
        v69 = 0;
        v63[0] = MEMORY[0x277D85DD0];
        v63[1] = 3221225472;
        v63[2] = __61__HapticServerConfig_initWithHapticPlayer_withOptions_error___block_invoke;
        v63[3] = &unk_2781C8FB8;
        v66 = buf;
        v10 = v53;
        v64 = v10;
        v65 = v60;
        [v61 queryServerCapabilities:v31 reply:v63];
        if (a5)
        {
          *a5 = *(*&buf[8] + 40);
        }

        if (*(*&buf[8] + 40))
        {

          v10 = 0;
        }

        _Block_object_dispose(buf, 8);
        v45 = 1;
        goto LABEL_71;
      }

      if (kHAPIScope)
      {
        v43 = *kHAPIScope;
        if (!v43)
        {
LABEL_65:
          [v31 setObject:v42 forKey:@"RequestedUsageCategory"];
          goto LABEL_66;
        }
      }

      else
      {
        v43 = MEMORY[0x277D86220];
        v44 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        *&buf[4] = "HapticServerConfig.mm";
        *&buf[12] = 1024;
        *&buf[14] = 106;
        *&buf[18] = 2080;
        *&buf[20] = "[HapticServerConfig initWithHapticPlayer:withOptions:error:]";
        *&buf[28] = 2112;
        *&buf[30] = v42;
        _os_log_impl(&dword_21569A000, v43, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Querying server for UsageCategory of '%@'", buf, 0x26u);
      }

      goto LABEL_65;
    }

    if ([v37 containsString:@"HighPower"])
    {
      v40 = 11;
      goto LABEL_56;
    }

    if (kHAPIScope)
    {
      v49 = *kHAPIScope;
      if (!v49)
      {
LABEL_83:
        if (a5)
        {
          [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4816 userInfo:0];
          v45 = 0;
          *a5 = v10 = 0;
        }

        else
        {
          v45 = 0;
          v10 = 0;
        }

        v42 = v53;
LABEL_71:

        goto LABEL_72;
      }
    }

    else
    {
      v49 = MEMORY[0x277D86220];
      v50 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "HapticServerConfig.mm";
      *&buf[12] = 1024;
      *&buf[14] = 97;
      *&buf[18] = 2080;
      *&buf[20] = "[HapticServerConfig initWithHapticPlayer:withOptions:error:]";
      *&buf[28] = 2112;
      *&buf[30] = v37;
      _os_log_impl(&dword_21569A000, v49, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Illegal power usage: %@", buf, 0x26u);
    }

    goto LABEL_83;
  }

  if (kHAPIScope)
  {
    v33 = *kHAPIScope;
    if (!v33)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v33 = MEMORY[0x277D86220];
    v34 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    *&buf[4] = "HapticServerConfig.mm";
    *&buf[12] = 1024;
    *&buf[14] = 64;
    *&buf[18] = 2080;
    *&buf[20] = "[HapticServerConfig initWithHapticPlayer:withOptions:error:]";
    *&buf[28] = 2112;
    *&buf[30] = v32;
    _os_log_impl(&dword_21569A000, v33, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Querying server for capabilities with Priority '%@'", buf, 0x26u);
  }

LABEL_35:
  if ([v32 containsString:@"LowPriority"])
  {
    v35 = 1;
LABEL_43:
    v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v35];
    [v31 setObject:v36 forKey:@"RequestedPriority"];

    goto LABEL_44;
  }

  if ([v32 containsString:@"HighPriority"])
  {
    v35 = 2;
    goto LABEL_43;
  }

  if ([v32 containsString:@"ExclusivePriority"])
  {
    v35 = 4;
    goto LABEL_43;
  }

  if ([v32 containsString:@"HighestPriority"])
  {
    v35 = 3;
    goto LABEL_43;
  }

  if (!kHAPIScope)
  {
    v51 = MEMORY[0x277D86220];
    v52 = MEMORY[0x277D86220];
    goto LABEL_91;
  }

  v51 = *kHAPIScope;
  if (v51)
  {
LABEL_91:
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "HapticServerConfig.mm";
      *&buf[12] = 1024;
      *&buf[14] = 79;
      *&buf[18] = 2080;
      *&buf[20] = "[HapticServerConfig initWithHapticPlayer:withOptions:error:]";
      *&buf[28] = 2112;
      *&buf[30] = v32;
      _os_log_impl(&dword_21569A000, v51, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Illegal priority: %@", buf, 0x26u);
    }
  }

  if (a5)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreHaptics" code:-4816 userInfo:0];
    v45 = 0;
    *a5 = v10 = 0;
  }

  else
  {
    v45 = 0;
    v10 = 0;
  }

  v37 = v53;
LABEL_72:

  if ((v45 & 1) == 0)
  {
    v46 = 0;
    goto LABEL_75;
  }

LABEL_73:
  v10 = v10;
  v46 = v10;
LABEL_75:

  v47 = *MEMORY[0x277D85DE8];
  return v46;
}

void __61__HapticServerConfig_initWithHapticPlayer_withOptions_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v92 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v8 = [v5 objectForKey:@"SupportsHapticPlayback"];
    *(*(a1 + 32) + 18) = [v8 BOOLValue];
    v62 = [v5 objectForKey:@"SupportsAudioPlayback"];
    *(*(a1 + 32) + 17) = [v62 BOOLValue];
    v61 = [v5 objectForKey:@"SupportsAdvancedPatternPlayers"];
    *(*(a1 + 32) + 19) = [v61 BOOLValue];
    v60 = [v5 objectForKey:@"UsingInternalHaptics"];
    *(*(a1 + 32) + 16) = [v60 BOOLValue];
    v59 = [v5 objectForKey:@"HapticContinuousTimeLimit"];
    *(*(a1 + 32) + 20) = [v59 unsignedIntValue];
    if (kHAPIScope)
    {
      v9 = *kHAPIScope;
      if (!v9)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v9 = MEMORY[0x277D86220];
      v12 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 32);
      v14 = *(v13 + 17);
      v15 = *(v13 + 19);
      v16 = *(v13 + 16);
      LODWORD(v13) = *(v13 + 20);
      *buf = 136316674;
      *&buf[4] = "HapticServerConfig.mm";
      v82 = 1024;
      v83 = 128;
      v84 = 2080;
      v85 = "[HapticServerConfig initWithHapticPlayer:withOptions:error:]_block_invoke";
      v86 = 1024;
      *v87 = v14;
      *&v87[4] = 1024;
      *&v87[6] = v15;
      v88 = 1024;
      v89 = v16;
      v90 = 1024;
      v91 = v13;
      _os_log_impl(&dword_21569A000, v9, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Server returned: supports audio: %d adv players: %d internal: %d cont time limit: %us", buf, 0x34u);
    }

LABEL_16:
    objc_storeStrong((*(a1 + 32) + 8), *(a1 + 40));
    v17 = [v5 objectForKey:@"HapticTransientDefaultIntensity"];
    [v17 floatValue];
    *(*(a1 + 32) + 32) = v18;
    v19 = [v5 objectForKey:@"HapticTransientDefaultSharpness"];

    [v19 floatValue];
    *(*(a1 + 32) + 24) = v20;
    v21 = [v5 objectForKey:@"HapticContinuousDefaultIntensity"];

    [v21 floatValue];
    *(*(a1 + 32) + 36) = v22;
    v64 = [v5 objectForKey:@"HapticContinuousDefaultSharpness"];

    [v64 floatValue];
    *(*(a1 + 32) + 28) = v23;
    v65 = [v5 objectForKey:@"HapticTransientEventIDs"];
    if (kHAPIScope)
    {
      v24 = *kHAPIScope;
      if (!v24)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v24 = MEMORY[0x277D86220];
      v25 = MEMORY[0x277D86220];
    }

    v26 = v24;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = [v65 count];
      *buf = 136315906;
      *&buf[4] = "HapticServerConfig.mm";
      v82 = 1024;
      v83 = 141;
      v84 = 2080;
      v85 = "[HapticServerConfig initWithHapticPlayer:withOptions:error:]_block_invoke";
      v86 = 1024;
      *v87 = v27;
      _os_log_impl(&dword_21569A000, v26, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Received %u haptic transient IDs", buf, 0x22u);
    }

LABEL_23:
    v63 = v8;
    if ([v65 count])
    {
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v28 = v65;
      v29 = [v28 countByEnumeratingWithState:&v74 objects:v80 count:16];
      if (v29)
      {
        v30 = *v75;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v75 != v30)
            {
              objc_enumerationMutation(v28);
            }

            *buf = [*(*(&v74 + 1) + 8 * i) unsignedIntegerValue];
            std::vector<unsigned long>::push_back[abi:ne200100]((*(a1 + 32) + 48), buf);
          }

          v29 = [v28 countByEnumeratingWithState:&v74 objects:v80 count:16];
        }

        while (v29);
      }

      v8 = v63;
    }

    v32 = [v5 objectForKey:@"HapticContinuousSustainedEventIDs"];
    if (kHAPIScope)
    {
      v33 = *kHAPIScope;
      if (!v33)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v33 = MEMORY[0x277D86220];
      v34 = MEMORY[0x277D86220];
    }

    v35 = v33;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = [v32 count];
      *buf = 136315906;
      *&buf[4] = "HapticServerConfig.mm";
      v82 = 1024;
      v83 = 150;
      v84 = 2080;
      v85 = "[HapticServerConfig initWithHapticPlayer:withOptions:error:]_block_invoke";
      v86 = 1024;
      *v87 = v36;
      _os_log_impl(&dword_21569A000, v35, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Received %u haptic continuous sustained IDs", buf, 0x22u);
    }

LABEL_39:
    if ([v32 count])
    {
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v37 = v32;
      v38 = [v37 countByEnumeratingWithState:&v70 objects:v79 count:16];
      if (v38)
      {
        v39 = *v71;
        do
        {
          for (j = 0; j != v38; ++j)
          {
            if (*v71 != v39)
            {
              objc_enumerationMutation(v37);
            }

            *buf = [*(*(&v70 + 1) + 8 * j) unsignedIntegerValue];
            std::vector<unsigned long>::push_back[abi:ne200100]((*(a1 + 32) + 72), buf);
          }

          v38 = [v37 countByEnumeratingWithState:&v70 objects:v79 count:16];
        }

        while (v38);
      }

      v8 = v63;
    }

    v41 = [v5 objectForKey:@"HapticContinuousNonsustainedEventIDs"];
    if (kHAPIScope)
    {
      v42 = *kHAPIScope;
      if (!v42)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v42 = MEMORY[0x277D86220];
      v43 = MEMORY[0x277D86220];
    }

    v44 = v42;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      v45 = [v41 count];
      *buf = 136315906;
      *&buf[4] = "HapticServerConfig.mm";
      v82 = 1024;
      v83 = 159;
      v84 = 2080;
      v85 = "[HapticServerConfig initWithHapticPlayer:withOptions:error:]_block_invoke";
      v86 = 1024;
      *v87 = v45;
      _os_log_impl(&dword_21569A000, v44, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Received %u haptic continuous nonsustained IDs", buf, 0x22u);
    }

LABEL_55:
    if ([v41 count])
    {
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v46 = v41;
      v47 = [v46 countByEnumeratingWithState:&v66 objects:v78 count:16];
      if (v47)
      {
        v48 = *v67;
        do
        {
          for (k = 0; k != v47; ++k)
          {
            if (*v67 != v48)
            {
              objc_enumerationMutation(v46);
            }

            *buf = [*(*(&v66 + 1) + 8 * k) unsignedIntegerValue];
            std::vector<unsigned long>::push_back[abi:ne200100]((*(a1 + 32) + 96), buf);
          }

          v47 = [v46 countByEnumeratingWithState:&v66 objects:v78 count:16];
        }

        while (v47);
      }

      v8 = v63;
    }

    v50 = [v5 objectForKey:@"BuiltInAudioEventIDs"];
    if (![v50 count])
    {
      goto LABEL_72;
    }

    v51 = [v50 copy];
    v52 = *(a1 + 32);
    v53 = *(v52 + 40);
    *(v52 + 40) = v51;

    if (kHAPIScope)
    {
      v54 = *kHAPIScope;
      if (!v54)
      {
LABEL_72:

        goto LABEL_73;
      }
    }

    else
    {
      v54 = MEMORY[0x277D86220];
      v55 = MEMORY[0x277D86220];
    }

    v56 = v54;
    if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
    {
      v57 = [v50 count];
      *buf = 136315906;
      *&buf[4] = "HapticServerConfig.mm";
      v82 = 1024;
      v83 = 170;
      v84 = 2080;
      v85 = "[HapticServerConfig initWithHapticPlayer:withOptions:error:]_block_invoke";
      v86 = 1024;
      *v87 = v57;
      _os_log_impl(&dword_21569A000, v56, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Received %u built-in audio event IDs", buf, 0x22u);
    }

    goto LABEL_72;
  }

  if (kHAPIScope)
  {
    v7 = *kHAPIScope;
    if (!v7)
    {
      goto LABEL_73;
    }
  }

  else
  {
    v7 = MEMORY[0x277D86220];
    v10 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v11 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 136315906;
    *&buf[4] = "HapticServerConfig.mm";
    v82 = 1024;
    v83 = 179;
    v84 = 2080;
    v85 = "[HapticServerConfig initWithHapticPlayer:withOptions:error:]_block_invoke";
    v86 = 2112;
    *v87 = v11;
    _os_log_impl(&dword_21569A000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Server query returned error '%@'", buf, 0x26u);
  }

LABEL_73:
  v58 = *MEMORY[0x277D85DE8];
}

@end