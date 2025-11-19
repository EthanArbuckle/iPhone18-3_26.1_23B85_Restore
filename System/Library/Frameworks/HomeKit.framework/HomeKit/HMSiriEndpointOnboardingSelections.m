@interface HMSiriEndpointOnboardingSelections
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMSiriEndpointOnboardingSelections)init;
- (HMSiriEndpointOnboardingSelections)initWithPayload:(id)a3;
- (NSArray)attributeDescriptions;
- (NSString)shortDescription;
- (id)payloadCopy;
- (unint64_t)hash;
@end

@implementation HMSiriEndpointOnboardingSelections

- (unint64_t)hash
{
  v3 = [(HMSiriEndpointOnboardingSelections *)self languageValue];
  v4 = [v3 hash];

  v5 = v4 ^ [(HMSiriEndpointOnboardingSelections *)self isSiriEnabled];
  if ([(HMSiriEndpointOnboardingSelections *)self allowHeySiri])
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(HMSiriEndpointOnboardingSelections *)self isAirPlayEnabled];
  v8 = 4;
  if (!v7)
  {
    v8 = 0;
  }

  v9 = v5 ^ v6 ^ v8;
  if ([(HMSiriEndpointOnboardingSelections *)self isExplicitContentAllowed])
  {
    v10 = 8;
  }

  else
  {
    v10 = 0;
  }

  v11 = [(HMSiriEndpointOnboardingSelections *)self isShareSiriAnalyticsEnabled];
  v12 = 16;
  if (!v11)
  {
    v12 = 0;
  }

  v13 = v10 ^ v12;
  v14 = [(HMSiriEndpointOnboardingSelections *)self isLightWhenUsingSiriEnabled];
  v15 = 32;
  if (!v14)
  {
    v15 = 0;
  }

  v16 = v9 ^ v13 ^ v15;
  if ([(HMSiriEndpointOnboardingSelections *)self isAnnounceEnabled])
  {
    v17 = 64;
  }

  else
  {
    v17 = 0;
  }

  v18 = [(HMSiriEndpointOnboardingSelections *)self isDoorbellChimeEnabled];
  v19 = 128;
  if (!v18)
  {
    v19 = 0;
  }

  v20 = v17 ^ v19;
  v21 = [(HMSiriEndpointOnboardingSelections *)self hasDoorbellChimeEnabled];
  v22 = 256;
  if (!v21)
  {
    v22 = 0;
  }

  v23 = v20 ^ v22;
  v24 = [(HMSiriEndpointOnboardingSelections *)self hasLightWhenUsingSiriEnabled];
  v25 = 512;
  if (!v24)
  {
    v25 = 0;
  }

  v26 = v16 ^ v23 ^ v25;
  if ([(HMSiriEndpointOnboardingSelections *)self hasAnnounceEnabled])
  {
    v27 = 1024;
  }

  else
  {
    v27 = 0;
  }

  v28 = [(HMSiriEndpointOnboardingSelections *)self hasAllowHeySiri];
  v29 = 2048;
  if (!v28)
  {
    v29 = 0;
  }

  v30 = v27 ^ v29;
  v31 = [(HMSiriEndpointOnboardingSelections *)self hasShareSiriAnalyticsEnabled];
  v32 = 4096;
  if (!v31)
  {
    v32 = 0;
  }

  v33 = v30 ^ v32;
  v34 = [(HMSiriEndpointOnboardingSelections *)self hasAirPlayEnabled];
  v35 = 0x2000;
  if (!v34)
  {
    v35 = 0;
  }

  v36 = v33 ^ v35;
  v37 = [(HMSiriEndpointOnboardingSelections *)self hasExplicitContentAllowed];
  v38 = 0x4000;
  if (!v37)
  {
    v38 = 0;
  }

  v39 = v26 ^ v36 ^ v38;
  v40 = [(HMSiriEndpointOnboardingSelections *)self hasLanguageValue];
  v41 = 0x8000;
  if (!v40)
  {
    v41 = 0;
  }

  return v39 ^ v41;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v22) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (!v6)
    {
      goto LABEL_19;
    }

    v7 = [(HMSiriEndpointOnboardingSelections *)self isSiriEnabled];
    if (v7 != [(HMSiriEndpointOnboardingSelections *)v6 isSiriEnabled])
    {
      goto LABEL_19;
    }

    v8 = [(HMSiriEndpointOnboardingSelections *)self allowHeySiri];
    if (v8 != [(HMSiriEndpointOnboardingSelections *)v6 allowHeySiri])
    {
      goto LABEL_19;
    }

    v9 = [(HMSiriEndpointOnboardingSelections *)self isAirPlayEnabled];
    if (v9 != [(HMSiriEndpointOnboardingSelections *)v6 isAirPlayEnabled])
    {
      goto LABEL_19;
    }

    v10 = [(HMSiriEndpointOnboardingSelections *)self isExplicitContentAllowed];
    if (v10 != [(HMSiriEndpointOnboardingSelections *)v6 isExplicitContentAllowed])
    {
      goto LABEL_19;
    }

    v11 = [(HMSiriEndpointOnboardingSelections *)self isShareSiriAnalyticsEnabled];
    if (v11 != [(HMSiriEndpointOnboardingSelections *)v6 isShareSiriAnalyticsEnabled])
    {
      goto LABEL_19;
    }

    v12 = [(HMSiriEndpointOnboardingSelections *)self languageValue];
    v13 = [(HMSiriEndpointOnboardingSelections *)v6 languageValue];
    v14 = HMFEqualObjects();

    if (!v14)
    {
      goto LABEL_19;
    }

    v15 = [(HMSiriEndpointOnboardingSelections *)self isAnnounceEnabled];
    if (v15 == [(HMSiriEndpointOnboardingSelections *)v6 isAnnounceEnabled]&& (v16 = [(HMSiriEndpointOnboardingSelections *)self isDoorbellChimeEnabled], v16 == [(HMSiriEndpointOnboardingSelections *)v6 isDoorbellChimeEnabled]) && (v17 = [(HMSiriEndpointOnboardingSelections *)self isLightWhenUsingSiriEnabled], v17 == [(HMSiriEndpointOnboardingSelections *)v6 isLightWhenUsingSiriEnabled]) && (v18 = [(HMSiriEndpointOnboardingSelections *)self hasLanguageValue], v18 == [(HMSiriEndpointOnboardingSelections *)v6 hasLanguageValue]) && (v19 = [(HMSiriEndpointOnboardingSelections *)self hasSiriEnabled], v19 == [(HMSiriEndpointOnboardingSelections *)v6 hasSiriEnabled]) && (v20 = [(HMSiriEndpointOnboardingSelections *)self hasAllowHeySiri], v20 == [(HMSiriEndpointOnboardingSelections *)v6 hasAllowHeySiri]) && (v21 = [(HMSiriEndpointOnboardingSelections *)self hasExplicitContentAllowed], v21 == [(HMSiriEndpointOnboardingSelections *)v6 hasExplicitContentAllowed]))
    {
      v24 = [(HMSiriEndpointOnboardingSelections *)self hasShareSiriAnalyticsEnabled];
      v22 = v24 ^ [(HMSiriEndpointOnboardingSelections *)v6 hasShareSiriAnalyticsEnabled]^ 1;
    }

    else
    {
LABEL_19:
      LOBYTE(v22) = 0;
    }
  }

  return v22;
}

- (NSArray)attributeDescriptions
{
  v33[9] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMSiriEndpointOnboardingSelections *)self isSiriEnabled];
  v32 = HMFBooleanToString();
  v31 = [v3 initWithName:@"siriEnabled" value:v32];
  v33[0] = v31;
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMSiriEndpointOnboardingSelections *)self allowHeySiri];
  v30 = HMFBooleanToString();
  v29 = [v4 initWithName:@"allowHeySiri" value:v30];
  v33[1] = v29;
  v5 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMSiriEndpointOnboardingSelections *)self isAirPlayEnabled];
  v28 = HMFBooleanToString();
  v27 = [v5 initWithName:@"airPlayEnabled" value:v28];
  v33[2] = v27;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMSiriEndpointOnboardingSelections *)self isExplicitContentAllowed];
  v26 = HMFBooleanToString();
  v25 = [v6 initWithName:@"explicitContentAllowed" value:v26];
  v33[3] = v25;
  v7 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMSiriEndpointOnboardingSelections *)self isShareSiriAnalyticsEnabled];
  v24 = HMFBooleanToString();
  v8 = [v7 initWithName:@"shareSiriAnalyticsEnabled" value:v24];
  v33[4] = v8;
  v9 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMSiriEndpointOnboardingSelections *)self isLightWhenUsingSiriEnabled];
  v10 = HMFBooleanToString();
  v11 = [v9 initWithName:@"lightWhenUsingSiriEnabled" value:v10];
  v33[5] = v11;
  v12 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMSiriEndpointOnboardingSelections *)self isDoorbellChimeEnabled];
  v13 = HMFBooleanToString();
  v14 = [v12 initWithName:@"doorbellChimeEnabled" value:v13];
  v33[6] = v14;
  v15 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMSiriEndpointOnboardingSelections *)self isAnnounceEnabled];
  v16 = HMFBooleanToString();
  v17 = [v15 initWithName:@"announceEnabled" value:v16];
  v33[7] = v17;
  v18 = objc_alloc(MEMORY[0x1E69A29C8]);
  v19 = [(HMSiriEndpointOnboardingSelections *)self languageValue];
  v20 = [v18 initWithName:@"languageValue" value:v19];
  v33[8] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:9];

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (HMSiriEndpointOnboardingSelections)initWithPayload:(id)a3
{
  v94 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v85 = 0;
  v5 = [v4 hmf_BOOLForKey:@"HMSiriEndpointOnboardingSelectionsSiriEnabledPayloadKey" error:&v85];
  v6 = v85;
  if (v6)
  {
    v7 = v6;
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v87 = v11;
      v88 = 2112;
      v89 = v7;
      v12 = "%{public}@Failed to decode isSiriEnabled due to error: %@";
LABEL_16:
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, v12, buf, 0x16u);

      goto LABEL_17;
    }

    goto LABEL_17;
  }

  v84 = 0;
  v13 = [v4 hmf_BOOLForKey:@"HMSiriEndpointOnboardingSelectionsAllowHeySiriPayloadKey" error:&v84];
  v14 = v84;
  if (v14)
  {
    v7 = v14;
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v87 = v11;
      v88 = 2112;
      v89 = v7;
      v12 = "%{public}@Failed to decode allowHeySiri due to error: %@";
      goto LABEL_16;
    }

LABEL_17:

    objc_autoreleasePoolPop(v8);
    v20 = 0;
    goto LABEL_18;
  }

  v83 = 0;
  v15 = [v4 hmf_BOOLForKey:@"HMSiriEndpointOnboardingSelectionsAirPlayEnabledPayloadKey" error:&v83];
  v16 = v83;
  if (v16)
  {
    v7 = v16;
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v87 = v11;
      v88 = 2112;
      v89 = v7;
      v12 = "%{public}@Failed to decode isAirPlayEnabled due to error: %@";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v82 = 0;
  v69 = [v4 hmf_BOOLForKey:@"HMSiriEndpointOnboardingSelectionsExplicitContentAllowedPayloadKey" error:&v82];
  v17 = v82;
  if (v17)
  {
    v7 = v17;
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v87 = v11;
      v88 = 2112;
      v89 = v7;
      v12 = "%{public}@Failed to decode isExplicitContentAllowed due to error: %@";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v81 = 0;
  v18 = [v4 hmf_BOOLForKey:@"HMSiriEndpointOnboardingSelectionsShareSiriAnalyticsPayloadKey" error:&v81];
  v19 = v81;
  if (v19)
  {
    v7 = v19;
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v87 = v11;
      v88 = 2112;
      v89 = v7;
      v12 = "%{public}@Failed to decode isShareSiriAnalyticsEnabled due to error: %@";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v23 = [v4 hmf_BOOLForKey:@"HMSiriEndpointOnboardingSelectionsShouldHonorSiriAnalyticsSelectionPayloadKey"];
  if (v18 && (v23 & 1) == 0)
  {
    v24 = objc_autoreleasePoolPush();
    v25 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v87 = v27;
      _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_INFO, "%{public}@Blocking enabling siri analytics due to old payload with missing flag", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
    v18 = 0;
  }

  v65 = v18;
  v80 = 0;
  v64 = [v4 hmf_BOOLForKey:@"HMSiriEndpointOnboardingSelectionsHasSiriEnabledPayloadKey" error:&v80];
  v28 = v80;
  v79 = v28;
  v63 = [v4 hmf_BOOLForKey:@"HMSiriEndpointOnboardingSelectionsHasAllowHeySiriPayloadKey" error:&v79];
  v29 = v79;

  v78 = v29;
  v62 = [v4 hmf_BOOLForKey:@"HMSiriEndpointOnboardingSelectionsHasAirPlayEnabledPayloadKey" error:&v78];
  v30 = v78;

  v77 = v30;
  v61 = [v4 hmf_BOOLForKey:@"HMSiriEndpointOnboardingSelectionsHasExplicitContentAllowedPayloadKey" error:&v77];
  v31 = v77;

  v76 = v31;
  v32 = [v4 hmf_BOOLForKey:@"HMSiriEndpointOnboardingSelectionsHasShareSiriAnalyticsPayloadKey" error:&v76];
  v33 = v76;

  v34 = [v4 hmf_dictionaryForKey:@"HMSiriEndpointOnboardingSelectionsLanguageValueKey"];
  v35 = v34;
  if (v34 && (v34 = [[HMSettingLanguageValue alloc] initWithPayload:v34]) == 0)
  {
    v7 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:2 reason:@"Unable to decode languageValue"];

    v49 = objc_autoreleasePoolPush();
    v9 = self;
    v50 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      v51 = HMFGetLogIdentifier();
      *buf = 138543618;
      v87 = v51;
      v88 = 2112;
      v89 = v35;
      _os_log_impl(&dword_19BB39000, v50, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode onboarding selections due to invalid language value payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v49);
    v20 = 0;
  }

  else
  {
    v58 = v34;
    v59 = v32;
    v60 = v35;
    v57 = [v4 hmf_BOOLForKey:@"HMSiriEndpointOnboardingSelectionsHasLanguageValueKey"];
    v75 = v33;
    v68 = [v4 hmf_BOOLForKey:@"HMSiriEndpointOnboardingSelectionsHasDoorbellChimeEnabledPayloadKey" error:&v75];
    v36 = v75;

    v74 = v36;
    v67 = [v4 hmf_BOOLForKey:@"HMSiriEndpointOnboardingSelectionsHasAnnounceEnabledPayloadKey" error:&v74];
    v37 = v74;

    v73 = v37;
    v66 = [v4 hmf_BOOLForKey:@"HMSiriEndpointOnboardingSelectionsHasLightWhenUsingSiriEnabledPayloadKey" error:&v73];
    v38 = v73;

    v72 = v38;
    v56 = [v4 hmf_BOOLForKey:@"HMSiriEndpointOnboardingSelectionsDoorbellChimeEnabledPayloadKey" error:&v72];
    v39 = v72;

    v71 = v39;
    v55 = [v4 hmf_BOOLForKey:@"HMSiriEndpointOnboardingSelectionsAnnounceEnabledPayloadKey" error:&v71];
    v40 = v71;

    v70 = v40;
    v54 = [v4 hmf_BOOLForKey:@"HMSiriEndpointOnboardingSelectionsLightWhenUsingSiriEnabledPayloadKey" error:&v70];
    v7 = v70;

    v41 = objc_autoreleasePoolPush();
    v42 = self;
    v43 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      v53 = HMFGetLogIdentifier();
      v44 = HMFBooleanToString();
      HMFBooleanToString();
      v45 = v52 = v41;
      v46 = HMFBooleanToString();
      *buf = 138544130;
      v87 = v53;
      v88 = 2112;
      v89 = v44;
      v90 = 2112;
      v91 = v45;
      v92 = 2112;
      v93 = v46;
      v47 = v46;
      _os_log_impl(&dword_19BB39000, v43, OS_LOG_TYPE_INFO, "%{public}@Decoded Payload hasAnnounce = %@, hasLightWhenUsingSiri = %@, hasDoorbellChimeEnabled = %@ ", buf, 0x2Au);

      v41 = v52;
    }

    objc_autoreleasePoolPop(v41);
    v48 = [(HMSiriEndpointOnboardingSelections *)v42 init];
    [(HMSiriEndpointOnboardingSelections *)v48 setAllowHeySiri:v13];
    [(HMSiriEndpointOnboardingSelections *)v48 setSiriEnabled:v5];
    [(HMSiriEndpointOnboardingSelections *)v48 setAirPlayEnabled:v15];
    [(HMSiriEndpointOnboardingSelections *)v48 setExplicitContentAllowed:v69];
    [(HMSiriEndpointOnboardingSelections *)v48 setShareSiriAnalyticsEnabled:v65];
    [(HMSiriEndpointOnboardingSelections *)v48 setLanguageValue:v58];
    [(HMSiriEndpointOnboardingSelections *)v48 setDoorbellChimeEnabled:v56];
    [(HMSiriEndpointOnboardingSelections *)v48 setAnnounceEnabled:v55];
    [(HMSiriEndpointOnboardingSelections *)v48 setLightWhenUsingSiriEnabled:v54];
    [(HMSiriEndpointOnboardingSelections *)v48 setHasAllowHeySiri:v63];
    [(HMSiriEndpointOnboardingSelections *)v48 setHasSiriEnabled:v64];
    [(HMSiriEndpointOnboardingSelections *)v48 setHasAirPlayEnabled:v62];
    [(HMSiriEndpointOnboardingSelections *)v48 setHasExplicitContentAllowed:v61];
    [(HMSiriEndpointOnboardingSelections *)v48 setHasShareSiriAnalyticsEnabled:v59];
    [(HMSiriEndpointOnboardingSelections *)v48 setHasLanguageValue:v57];
    [(HMSiriEndpointOnboardingSelections *)v48 setHasAnnounceEnabled:v67];
    [(HMSiriEndpointOnboardingSelections *)v48 setHasDoorbellChimeEnabled:v68];
    [(HMSiriEndpointOnboardingSelections *)v48 setHasLightWhenUsingSiriEnabled:v66];
    v9 = v48;

    v20 = v9;
    v35 = v60;
  }

LABEL_18:
  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (id)payloadCopy
{
  v29[17] = *MEMORY[0x1E69E9840];
  v24 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:19];
  v28[0] = @"HMSiriEndpointOnboardingSelectionsSiriEnabledPayloadKey";
  v27 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMSiriEndpointOnboardingSelections isSiriEnabled](self, "isSiriEnabled")}];
  v29[0] = v27;
  v28[1] = @"HMSiriEndpointOnboardingSelectionsAllowHeySiriPayloadKey";
  v26 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMSiriEndpointOnboardingSelections allowHeySiri](self, "allowHeySiri")}];
  v29[1] = v26;
  v28[2] = @"HMSiriEndpointOnboardingSelectionsAirPlayEnabledPayloadKey";
  v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMSiriEndpointOnboardingSelections isAirPlayEnabled](self, "isAirPlayEnabled")}];
  v29[2] = v25;
  v28[3] = @"HMSiriEndpointOnboardingSelectionsExplicitContentAllowedPayloadKey";
  v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMSiriEndpointOnboardingSelections isExplicitContentAllowed](self, "isExplicitContentAllowed")}];
  v29[3] = v23;
  v28[4] = @"HMSiriEndpointOnboardingSelectionsShareSiriAnalyticsPayloadKey";
  v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMSiriEndpointOnboardingSelections isShareSiriAnalyticsEnabled](self, "isShareSiriAnalyticsEnabled")}];
  v29[4] = v22;
  v28[5] = @"HMSiriEndpointOnboardingSelectionsDoorbellChimeEnabledPayloadKey";
  v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMSiriEndpointOnboardingSelections isDoorbellChimeEnabled](self, "isDoorbellChimeEnabled")}];
  v29[5] = v21;
  v28[6] = @"HMSiriEndpointOnboardingSelectionsAnnounceEnabledPayloadKey";
  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMSiriEndpointOnboardingSelections isAnnounceEnabled](self, "isAnnounceEnabled")}];
  v29[6] = v20;
  v28[7] = @"HMSiriEndpointOnboardingSelectionsLightWhenUsingSiriEnabledPayloadKey";
  v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMSiriEndpointOnboardingSelections isLightWhenUsingSiriEnabled](self, "isLightWhenUsingSiriEnabled")}];
  v29[7] = v19;
  v28[8] = @"HMSiriEndpointOnboardingSelectionsHasSiriEnabledPayloadKey";
  v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMSiriEndpointOnboardingSelections hasSiriEnabled](self, "hasSiriEnabled")}];
  v29[8] = v18;
  v28[9] = @"HMSiriEndpointOnboardingSelectionsHasAllowHeySiriPayloadKey";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMSiriEndpointOnboardingSelections hasAllowHeySiri](self, "hasAllowHeySiri")}];
  v29[9] = v3;
  v28[10] = @"HMSiriEndpointOnboardingSelectionsHasAirPlayEnabledPayloadKey";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMSiriEndpointOnboardingSelections hasAirPlayEnabled](self, "hasAirPlayEnabled")}];
  v29[10] = v4;
  v28[11] = @"HMSiriEndpointOnboardingSelectionsHasExplicitContentAllowedPayloadKey";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMSiriEndpointOnboardingSelections hasExplicitContentAllowed](self, "hasExplicitContentAllowed")}];
  v29[11] = v5;
  v28[12] = @"HMSiriEndpointOnboardingSelectionsHasShareSiriAnalyticsPayloadKey";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMSiriEndpointOnboardingSelections hasShareSiriAnalyticsEnabled](self, "hasShareSiriAnalyticsEnabled")}];
  v29[12] = v6;
  v28[13] = @"HMSiriEndpointOnboardingSelectionsHasDoorbellChimeEnabledPayloadKey";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMSiriEndpointOnboardingSelections hasDoorbellChimeEnabled](self, "hasDoorbellChimeEnabled")}];
  v29[13] = v7;
  v28[14] = @"HMSiriEndpointOnboardingSelectionsHasAnnounceEnabledPayloadKey";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMSiriEndpointOnboardingSelections hasAnnounceEnabled](self, "hasAnnounceEnabled")}];
  v29[14] = v8;
  v28[15] = @"HMSiriEndpointOnboardingSelectionsHasLightWhenUsingSiriEnabledPayloadKey";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMSiriEndpointOnboardingSelections hasLightWhenUsingSiriEnabled](self, "hasLightWhenUsingSiriEnabled")}];
  v28[16] = @"HMSiriEndpointOnboardingSelectionsShouldHonorSiriAnalyticsSelectionPayloadKey";
  v29[15] = v9;
  v29[16] = MEMORY[0x1E695E118];
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:17];
  [v24 addEntriesFromDictionary:v10];

  v11 = [(HMSiriEndpointOnboardingSelections *)self languageValue];

  if (v11)
  {
    v12 = [(HMSiriEndpointOnboardingSelections *)self languageValue];
    v13 = [v12 payloadCopy];
    [v24 setObject:v13 forKeyedSubscript:@"HMSiriEndpointOnboardingSelectionsLanguageValueKey"];
  }

  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMSiriEndpointOnboardingSelections hasLanguageValue](self, "hasLanguageValue")}];
  [v24 setObject:v14 forKeyedSubscript:@"HMSiriEndpointOnboardingSelectionsHasLanguageValueKey"];

  v15 = [v24 copy];
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (HMSiriEndpointOnboardingSelections)init
{
  v6.receiver = self;
  v6.super_class = HMSiriEndpointOnboardingSelections;
  v2 = [(HMSiriEndpointOnboardingSelections *)&v6 init];
  v3 = v2;
  if (v2)
  {
    languageValue = v2->_languageValue;
    v2->_languageValue = 0;

    v3->_siriEnabled = 0;
    *&v3->_allowHeySiri = 0;
  }

  return v3;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t8 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t8, &__block_literal_global_32218);
  }

  v3 = logCategory__hmf_once_v9;

  return v3;
}

uint64_t __49__HMSiriEndpointOnboardingSelections_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v9;
  logCategory__hmf_once_v9 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end