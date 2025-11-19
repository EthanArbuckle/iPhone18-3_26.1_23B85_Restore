@interface HKImportExclusionDeviceDataSource
+ (BOOL)isDeviceSerialNumberOnAllowedListForHKFeatureIdentifierOxygenSaturationRecording:(id)a3;
+ (BOOL)isDeviceSerialNumberOnTIBListForHKFeatureIdentifierOxygenSaturationRecording:(id)a3;
- (BOOL)isDeviceSerialNumberOnPreImportExclusionList:(id)a3 featureIdentifier:(id)a4;
- (BOOL)isDeviceSerialNumberOnTIBList:(id)a3 featureIdentifier:(id)a4;
- (BOOL)isDeviceTypeNotOnImportExclusionList:(id)a3 featureIdentifier:(id)a4;
- (HKImportExclusionDeviceDataSource)initWithPairedDeviceRegistry:(id)a3;
- (NRPairedDeviceRegistry)pairedDeviceRegistry;
- (id)activePairedDevice;
- (id)isActiveWatchProdFusedWithBehavior:(id)a3;
- (id)isHKFeatureIdentifierOxygenSaturationRecordingCompanionAnalysisImportAllowedForActiveWatchWithDeviceType:(id)a3 prodFused:(BOOL)a4 serialNumber:(id)a5 regionCode:(id)a6;
- (id)isHKFeatureIdentifierOxygenSaturationRecordingImportAllowedForActiveWatchWithDeviceType:(id)a3 serialNumber:(id)a4 regionCode:(id)a5;
- (id)isImportAllowedForActiveWatchWithBehavior:(id)a3 featureIdentifier:(id)a4;
@end

@implementation HKImportExclusionDeviceDataSource

+ (BOOL)isDeviceSerialNumberOnAllowedListForHKFeatureIdentifierOxygenSaturationRecording:(id)a3
{
  v3 = a3;
  std::string::basic_string[abi:ne200100]<0>(&__p, [v3 UTF8String]);
  v4 = v33;
  v5 = v33;
  v6 = __p;
  if ((v33 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v33 & 0x80u) != 0)
  {
    v4 = v32;
  }

  v37 = 0;
  v36 = 0;
  if (v4 == 10)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = p_p[v8] - 48;
      if (v10 > 0x29 || ((0x3D77DD802FFuLL >> v10) & 1) == 0)
      {
        break;
      }

      v9 = qword_191DCCB88[(p_p[v8++] - 48)] + 27 * v9;
      if (v8 == 10)
      {
        for (i = 5; i != -1; --i)
        {
          *(&v36 + i) = v9;
          v9 >>= 8;
        }

        v12 = v36 | (v37 << 32);
        goto LABEL_15;
      }
    }
  }

  v12 = 0;
LABEL_15:
  v34 = v12;
  v35 = WORD2(v12);
  if (v5 < 0)
  {
    operator delete(v6);
  }

  if (v34 | v35)
  {
    v13 = 0;
    v14 = 107399;
    do
    {
      v15 = 0;
      v16 = v14 >> 1;
      v17 = v13 + 6 * (v14 >> 1);
      while (1)
      {
        v18 = hk_HKFeatureIdentifierOxygenSaturationRecording::allowed_encoded_serial_numbers[v17 + v15];
        v19 = *(&v34 + v15);
        if (v18 != v19)
        {
          break;
        }

        if (++v15 == 6)
        {
          goto LABEL_25;
        }
      }

      v20 = v14 + ~v16;
      if (v18 < v19)
      {
        v16 = v20;
        v13 = v17 + 6;
      }

LABEL_25:
      v14 = v16;
    }

    while (v16);
    if (v13 == 644394)
    {
      v21 = 0;
    }

    else
    {
      v26 = 0;
      v27 = &hk_HKFeatureIdentifierOxygenSaturationRecording::allowed_encoded_serial_numbers[v13];
      while (1)
      {
        v28 = *(&v34 + v26);
        v29 = v27[v26];
        if (v28 != v29)
        {
          break;
        }

        if (++v26 == 6)
        {
          v21 = 1;
          goto LABEL_44;
        }
      }

      v21 = v28 >= v29;
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, [v3 UTF8String]);
    LOBYTE(v36) = 0;
    v22 = std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,std::string_view const*,std::string,std::__identity,std::__less<void,void>>(&hk_HKFeatureIdentifierOxygenSaturationRecording::additional_allowed_serial_numbers, &__p, 0x44uLL);
    if (v22 == &__block_descriptor_32_e35_v24__0__NSString_8__NSDictionary_16l)
    {
      v21 = 0;
    }

    else
    {
      v23 = *v22;
      if ((v33 & 0x80u) == 0)
      {
        v24 = &__p;
      }

      else
      {
        v24 = __p;
      }

      if ((v33 & 0x80u) == 0)
      {
        v25 = v33;
      }

      else
      {
        v25 = v32;
      }

      v21 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(*v22, *(v22 + 8), v24, v25) < 1;
    }

    if (v33 < 0)
    {
      operator delete(__p);
    }
  }

LABEL_44:

  return v21;
}

- (HKImportExclusionDeviceDataSource)initWithPairedDeviceRegistry:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HKImportExclusionDeviceDataSource;
  v6 = [(HKImportExclusionDeviceDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pairedDeviceRegistry, a3);
  }

  return v7;
}

- (id)isActiveWatchProdFusedWithBehavior:(id)a3
{
  v4 = a3;
  if ([v4 isAppleWatch])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "isProdFused")}];
  }

  else
  {
    v6 = [(HKImportExclusionDeviceDataSource *)self activePairedDevice];
    if (v6)
    {
      v10 = 0;
      v11 = &v10;
      v12 = 0x2020000000;
      v7 = getNRDevicePropertySigningFuseSymbolLoc_ptr;
      v13 = getNRDevicePropertySigningFuseSymbolLoc_ptr;
      if (!getNRDevicePropertySigningFuseSymbolLoc_ptr)
      {
        v8 = NanoRegistryLibrary_3();
        v11[3] = dlsym(v8, "NRDevicePropertySigningFuse");
        getNRDevicePropertySigningFuseSymbolLoc_ptr = v11[3];
        v7 = v11[3];
      }

      _Block_object_dispose(&v10, 8);
      if (!v7)
      {
        [HKImportExclusionDeviceDataSource isActiveWatchProdFusedWithBehavior:];
      }

      v5 = [v6 valueForProperty:*v7];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)activePairedDevice
{
  v2 = [(HKImportExclusionDeviceDataSource *)self pairedDeviceRegistry];
  v3 = [getNRPairedDeviceRegistryClass_0() activeDeviceSelectorBlock];
  v4 = [v2 getDevicesMatching:v3];
  v5 = [v4 firstObject];

  return v5;
}

- (NRPairedDeviceRegistry)pairedDeviceRegistry
{
  pairedDeviceRegistry = self->_pairedDeviceRegistry;
  if (pairedDeviceRegistry)
  {
    v3 = pairedDeviceRegistry;
  }

  else
  {
    v3 = [getNRPairedDeviceRegistryClass_0() sharedInstance];
  }

  return v3;
}

- (id)isImportAllowedForActiveWatchWithBehavior:(id)a3 featureIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isAppleWatch])
  {
    v8 = [v6 currentDeviceProductType];
    v9 = [v6 currentDeviceSerialNumber];
    v10 = [v6 currentDeviceRegionCode];
  }

  else
  {
    v11 = [(HKImportExclusionDeviceDataSource *)self activePairedDevice];
    if (!v11)
    {
      goto LABEL_24;
    }

    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v12 = getNRDevicePropertyProductTypeSymbolLoc_ptr_1;
    v23 = getNRDevicePropertyProductTypeSymbolLoc_ptr_1;
    if (!getNRDevicePropertyProductTypeSymbolLoc_ptr_1)
    {
      v13 = NanoRegistryLibrary_3();
      v21[3] = dlsym(v13, "NRDevicePropertyProductType");
      getNRDevicePropertyProductTypeSymbolLoc_ptr_1 = v21[3];
      v12 = v21[3];
    }

    _Block_object_dispose(&v20, 8);
    if (!v12)
    {
      [HKImportExclusionDeviceDataSource isImportAllowedForActiveWatchWithBehavior:featureIdentifier:];
    }

    v8 = [v11 valueForProperty:*v12];
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v14 = getNRDevicePropertySerialNumberSymbolLoc_ptr;
    v23 = getNRDevicePropertySerialNumberSymbolLoc_ptr;
    if (!getNRDevicePropertySerialNumberSymbolLoc_ptr)
    {
      v15 = NanoRegistryLibrary_3();
      v21[3] = dlsym(v15, "NRDevicePropertySerialNumber");
      getNRDevicePropertySerialNumberSymbolLoc_ptr = v21[3];
      v14 = v21[3];
    }

    _Block_object_dispose(&v20, 8);
    if (!v14)
    {
      [HKImportExclusionDeviceDataSource isImportAllowedForActiveWatchWithBehavior:featureIdentifier:];
    }

    v9 = [v11 valueForProperty:*v14];
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v16 = getNRDevicePropertyRegionCodeSymbolLoc_ptr_0;
    v23 = getNRDevicePropertyRegionCodeSymbolLoc_ptr_0;
    if (!getNRDevicePropertyRegionCodeSymbolLoc_ptr_0)
    {
      v17 = NanoRegistryLibrary_3();
      v21[3] = dlsym(v17, "NRDevicePropertyRegionCode");
      getNRDevicePropertyRegionCodeSymbolLoc_ptr_0 = v21[3];
      v16 = v21[3];
    }

    _Block_object_dispose(&v20, 8);
    if (!v16)
    {
      [HKImportExclusionDeviceDataSource isImportAllowedForActiveWatchWithBehavior:featureIdentifier:];
    }

    v10 = [v11 valueForProperty:*v16];
  }

  v11 = MEMORY[0x1E695E110];
  if (v8 && v9 && v10)
  {
    if ([v7 isEqualToString:@"OxygenSaturationRecording"])
    {
      v18 = [(HKImportExclusionDeviceDataSource *)self isHKFeatureIdentifierOxygenSaturationRecordingImportAllowedForActiveWatchWithDeviceType:v8 serialNumber:v9 regionCode:v10];
    }

    else
    {
      if (![v7 isEqualToString:@"OxygenSaturationRecordingCompanionAnalysis"])
      {
        v11 = MEMORY[0x1E695E118];
        goto LABEL_23;
      }

      v18 = -[HKImportExclusionDeviceDataSource isHKFeatureIdentifierOxygenSaturationRecordingCompanionAnalysisImportAllowedForActiveWatchWithDeviceType:prodFused:serialNumber:regionCode:](self, "isHKFeatureIdentifierOxygenSaturationRecordingCompanionAnalysisImportAllowedForActiveWatchWithDeviceType:prodFused:serialNumber:regionCode:", v8, [v6 isProdFused], v9, v10);
    }

    v11 = v18;
  }

LABEL_23:

LABEL_24:

  return v11;
}

- (id)isHKFeatureIdentifierOxygenSaturationRecordingImportAllowedForActiveWatchWithDeviceType:(id)a3 serialNumber:(id)a4 regionCode:(id)a5
{
  v7 = a4;
  if ([(HKImportExclusionDeviceDataSource *)self isDeviceTypeNotOnImportExclusionList:a3 featureIdentifier:@"OxygenSaturationRecording"])
  {
    v8 = MEMORY[0x1E695E118];
  }

  else
  {
    v9 = [(HKImportExclusionDeviceDataSource *)self isDeviceSerialNumberOnTIBList:v7 featureIdentifier:@"OxygenSaturationRecording"];
    v8 = MEMORY[0x1E695E118];
    if (!v9 && ![(HKImportExclusionDeviceDataSource *)self isDeviceSerialNumberOnPreImportExclusionList:v7 featureIdentifier:@"OxygenSaturationRecording"])
    {
      v8 = MEMORY[0x1E695E110];
    }
  }

  return v8;
}

- (id)isHKFeatureIdentifierOxygenSaturationRecordingCompanionAnalysisImportAllowedForActiveWatchWithDeviceType:(id)a3 prodFused:(BOOL)a4 serialNumber:(id)a5 regionCode:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = v12;
  if (v8 && ([v12 isEqualToString:@"LW"] & 1) == 0 && !objc_msgSend(v13, "isEqualToString:", @"LM") || -[HKImportExclusionDeviceDataSource isDeviceTypeNotOnImportExclusionList:featureIdentifier:](self, "isDeviceTypeNotOnImportExclusionList:featureIdentifier:", v10, @"OxygenSaturationRecordingCompanionAnalysis"))
  {
    v14 = MEMORY[0x1E695E118];
    goto LABEL_15;
  }

  v15 = [(HKImportExclusionDeviceDataSource *)self isDeviceSerialNumberOnTIBList:v11 featureIdentifier:@"OxygenSaturationRecordingCompanionAnalysis"];
  v14 = MEMORY[0x1E695E118];
  if (v15)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
    v16 = v13;
    if ([v16 isEqualToString:@"LW"])
    {
    }

    else
    {
      v17 = [v16 isEqualToString:@"LM"];

      if ((v17 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v14 = MEMORY[0x1E695E110];
    goto LABEL_15;
  }

LABEL_8:
  if (![(HKImportExclusionDeviceDataSource *)self isDeviceSerialNumberOnPreImportExclusionList:v11 featureIdentifier:@"OxygenSaturationRecordingCompanionAnalysis"])
  {
    v14 = MEMORY[0x1E695E110];
  }

LABEL_15:

  return v14;
}

- (BOOL)isDeviceTypeNotOnImportExclusionList:(id)a3 featureIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (([v6 isEqualToString:@"OxygenSaturationRecording"] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"OxygenSaturationRecordingCompanionAnalysis"))
  {
    v7 = [objc_opt_class() isDeviceTypeAllowedForHKFeatureIdentifierOxygenSaturationRecording:v5];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)isDeviceSerialNumberOnTIBList:(id)a3 featureIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (([v6 isEqualToString:@"OxygenSaturationRecording"] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"OxygenSaturationRecordingCompanionAnalysis"))
  {
    v7 = [objc_opt_class() isDeviceSerialNumberOnTIBListForHKFeatureIdentifierOxygenSaturationRecording:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isDeviceSerialNumberOnPreImportExclusionList:(id)a3 featureIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (([v6 isEqualToString:@"OxygenSaturationRecording"] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"OxygenSaturationRecordingCompanionAnalysis"))
  {
    v7 = [objc_opt_class() isDeviceSerialNumberOnAllowedListForHKFeatureIdentifierOxygenSaturationRecording:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)isDeviceSerialNumberOnTIBListForHKFeatureIdentifierOxygenSaturationRecording:(id)a3
{
  v3 = a3;
  std::string::basic_string[abi:ne200100]<0>(&__p, [v3 UTF8String]);
  v4 = v33;
  v5 = v33;
  v6 = __p;
  if ((v33 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v33 & 0x80u) != 0)
  {
    v4 = v32;
  }

  v37 = 0;
  v36 = 0;
  if (v4 == 10)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = p_p[v8] - 48;
      if (v10 > 0x29 || ((0x3D77DD802FFuLL >> v10) & 1) == 0)
      {
        break;
      }

      v9 = qword_191DCDE08[(p_p[v8++] - 48)] + 27 * v9;
      if (v8 == 10)
      {
        for (i = 5; i != -1; --i)
        {
          *(&v36 + i) = v9;
          v9 >>= 8;
        }

        v12 = v36 | (v37 << 32);
        goto LABEL_15;
      }
    }
  }

  v12 = 0;
LABEL_15:
  v34 = v12;
  v35 = WORD2(v12);
  if (v5 < 0)
  {
    operator delete(v6);
  }

  if (v34 | v35)
  {
    v13 = 0;
    v14 = 265;
    do
    {
      v15 = 0;
      v16 = v14 >> 1;
      v17 = v13 + 6 * (v14 >> 1);
      while (1)
      {
        v18 = hk_HKFeatureIdentifierOxygenSaturationRecording::allowed_encoded_serial_numbers_tib[v17 + v15];
        v19 = *(&v34 + v15);
        if (v18 != v19)
        {
          break;
        }

        if (++v15 == 6)
        {
          goto LABEL_25;
        }
      }

      v20 = v14 + ~v16;
      if (v18 < v19)
      {
        v16 = v20;
        v13 = v17 + 6;
      }

LABEL_25:
      v14 = v16;
    }

    while (v16);
    if (v13 == 1590)
    {
      v21 = 0;
    }

    else
    {
      v26 = 0;
      v27 = &hk_HKFeatureIdentifierOxygenSaturationRecording::allowed_encoded_serial_numbers_tib[v13];
      while (1)
      {
        v28 = *(&v34 + v26);
        v29 = v27[v26];
        if (v28 != v29)
        {
          break;
        }

        if (++v26 == 6)
        {
          v21 = 1;
          goto LABEL_44;
        }
      }

      v21 = v28 >= v29;
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, [v3 UTF8String]);
    LOBYTE(v36) = 0;
    v22 = std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,std::string_view const*,std::string,std::__identity,std::__less<void,void>>(&hk_HKFeatureIdentifierOxygenSaturationRecording::additional_allowed_serial_numbers_tib, &__p, 1uLL);
    if (v22 == HKConceptAttributeValueTrue)
    {
      v21 = 0;
    }

    else
    {
      v23 = *v22;
      if ((v33 & 0x80u) == 0)
      {
        v24 = &__p;
      }

      else
      {
        v24 = __p;
      }

      if ((v33 & 0x80u) == 0)
      {
        v25 = v33;
      }

      else
      {
        v25 = v32;
      }

      v21 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(*v22, *(v22 + 8), v24, v25) < 1;
    }

    if (v33 < 0)
    {
      operator delete(__p);
    }
  }

LABEL_44:

  return v21;
}

- (void)isActiveWatchProdFusedWithBehavior:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getNRDevicePropertySigningFuse(void)"];
  [v0 handleFailureInFunction:v1 file:@"HKImportExclusionDeviceDataSource.m" lineNumber:26 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)isImportAllowedForActiveWatchWithBehavior:featureIdentifier:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getNRDevicePropertyRegionCode(void)"];
  [v0 handleFailureInFunction:v1 file:@"HKImportExclusionDeviceDataSource.m" lineNumber:24 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)isImportAllowedForActiveWatchWithBehavior:featureIdentifier:.cold.2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getNRDevicePropertySerialNumber(void)"];
  [v0 handleFailureInFunction:v1 file:@"HKImportExclusionDeviceDataSource.m" lineNumber:25 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)isImportAllowedForActiveWatchWithBehavior:featureIdentifier:.cold.3()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getNRDevicePropertyProductType(void)"];
  [v0 handleFailureInFunction:v1 file:@"HKImportExclusionDeviceDataSource.m" lineNumber:23 description:{@"%s", dlerror()}];

  __break(1u);
}

@end