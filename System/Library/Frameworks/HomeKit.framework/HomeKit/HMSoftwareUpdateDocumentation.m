@interface HMSoftwareUpdateDocumentation
+ (id)localizationsForBundle:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HMSoftwareUpdateDocumentation)init;
- (HMSoftwareUpdateDocumentation)initWithBundle:(id)a3;
- (HMSoftwareUpdateDocumentation)initWithCoder:(id)a3;
- (HMSoftwareUpdateDocumentation)initWithReleaseNotesSummary:(id)a3 releaseNotes:(id)a4 textReleaseNotes:(id)a5 licenseAgreement:(id)a6 licenseAgreementVersion:(id)a7;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMSoftwareUpdateDocumentation

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMSoftwareUpdateDocumentation *)self releaseNotesSummary];
  [v4 encodeObject:v5 forKey:@"HM.summary"];

  v6 = [(HMSoftwareUpdateDocumentation *)self releaseNotes];
  [v4 encodeObject:v6 forKey:@"HM.releaseNotes"];

  v7 = [(HMSoftwareUpdateDocumentation *)self textReleaseNotes];
  [v4 encodeObject:v7 forKey:@"HM.textReleaseNotes"];

  v8 = [(HMSoftwareUpdateDocumentation *)self licenseAgreement];
  [v4 encodeObject:v8 forKey:@"HM.licenseAgreement"];

  v9 = [(HMSoftwareUpdateDocumentation *)self licenseAgreementVersion];
  [v4 encodeObject:v9 forKey:@"HM.slaVersion"];
}

- (HMSoftwareUpdateDocumentation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.summary"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.releaseNotes"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.textReleaseNotes"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.licenseAgreement"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.slaVersion"];

  v10 = [(HMSoftwareUpdateDocumentation *)self initWithReleaseNotesSummary:v5 releaseNotes:v6 textReleaseNotes:v7 licenseAgreement:v8 licenseAgreementVersion:v9];
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v21 = 1;
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
      goto LABEL_11;
    }

    v7 = [(HMSoftwareUpdateDocumentation *)self releaseNotesSummary];
    v8 = [(HMSoftwareUpdateDocumentation *)v6 releaseNotesSummary];
    v9 = HMFEqualObjects();

    if (!v9)
    {
      goto LABEL_11;
    }

    v10 = [(HMSoftwareUpdateDocumentation *)self releaseNotes];
    v11 = [(HMSoftwareUpdateDocumentation *)v6 releaseNotes];
    v12 = HMFEqualObjects();

    if (!v12)
    {
      goto LABEL_11;
    }

    v13 = [(HMSoftwareUpdateDocumentation *)self textReleaseNotes];
    v14 = [(HMSoftwareUpdateDocumentation *)v6 textReleaseNotes];
    v15 = HMFEqualObjects();

    if (!v15)
    {
      goto LABEL_11;
    }

    v16 = [(HMSoftwareUpdateDocumentation *)self licenseAgreement];
    v17 = [(HMSoftwareUpdateDocumentation *)v6 licenseAgreement];
    v18 = HMFEqualObjects();

    if (v18)
    {
      v19 = [(HMSoftwareUpdateDocumentation *)self licenseAgreementVersion];
      v20 = [(HMSoftwareUpdateDocumentation *)v6 licenseAgreementVersion];
      v21 = HMFEqualObjects();
    }

    else
    {
LABEL_11:
      v21 = 0;
    }
  }

  return v21;
}

- (unint64_t)hash
{
  v3 = [(HMSoftwareUpdateDocumentation *)self releaseNotesSummary];
  v4 = [v3 hash];
  v5 = [(HMSoftwareUpdateDocumentation *)self releaseNotes];
  v6 = [v5 hash] ^ v4;
  v7 = [(HMSoftwareUpdateDocumentation *)self textReleaseNotes];
  v8 = [v7 hash];
  v9 = [(HMSoftwareUpdateDocumentation *)self licenseAgreement];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(HMSoftwareUpdateDocumentation *)self licenseAgreementVersion];
  v12 = [v11 hash];

  return v10 ^ v12;
}

- (HMSoftwareUpdateDocumentation)initWithReleaseNotesSummary:(id)a3 releaseNotes:(id)a4 textReleaseNotes:(id)a5 licenseAgreement:(id)a6 licenseAgreementVersion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v31.receiver = self;
  v31.super_class = HMSoftwareUpdateDocumentation;
  v17 = [(HMSoftwareUpdateDocumentation *)&v31 init];
  if (v17)
  {
    v18 = [v12 copy];
    releaseNotesSummary = v17->_releaseNotesSummary;
    v17->_releaseNotesSummary = v18;

    v20 = [v13 copy];
    releaseNotes = v17->_releaseNotes;
    v17->_releaseNotes = v20;

    v22 = [v14 copy];
    textReleaseNotes = v17->_textReleaseNotes;
    v17->_textReleaseNotes = v22;

    v24 = [v15 copy];
    licenseAgreement = v17->_licenseAgreement;
    v17->_licenseAgreement = v24;

    v26 = [v16 copy];
    licenseAgreementVersion = v17->_licenseAgreementVersion;
    v17->_licenseAgreementVersion = v26;

    v28 = [v12 copy];
    v29 = v17->_releaseNotesSummary;
    v17->_releaseNotesSummary = v28;
  }

  return v17;
}

- (HMSoftwareUpdateDocumentation)init
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (HMSoftwareUpdateDocumentation)initWithBundle:(id)a3
{
  v74 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = __resourceBundleForBundle(v4);
    v7 = v6;
    if (!v6)
    {
      v30 = objc_autoreleasePoolPush();
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543618;
        v71 = v32;
        v72 = 2112;
        v73 = v5;
        _os_log_impl(&dword_19BB39000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@Invalid bundle: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v30);
      v26 = 0;
      goto LABEL_46;
    }

    v8 = MEMORY[0x1E696AAE8];
    v9 = [v6 localizations];
    v10 = [v8 preferredLocalizationsFromArray:v9];

    if (![v10 count])
    {

      v10 = &unk_1F0EFE0E0;
    }

    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v71 = v14;
      v72 = 2112;
      v73 = v10;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Parsing using preferred localizations: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = __htmlDocumentForResource(v7, v10, @"ReadMeSummary");
    v16 = __htmlDocumentForResource(v7, v10, @"ReadMe");
    v55 = __htmlDocumentForResource(v7, v10, @"License");
    v17 = v7;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v18 = v10;
    v19 = [v18 countByEnumeratingWithState:&v60 objects:buf count:16];
    if (v19)
    {
      v56 = v16;
      v52 = v15;
      v53 = v12;
      v20 = *v61;
      while (2)
      {
        for (i = 0; i != v19; i = (i + 1))
        {
          if (*v61 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = [v17 URLForResource:@"ReadMe" withExtension:@"txt" subdirectory:0 localization:*(*(&v60 + 1) + 8 * i)];
          if (v22)
          {
            v27 = v22;
            v59 = 0;
            v19 = [[HMPlainTextDocument alloc] initWithURL:v22 error:&v59];
            v28 = v59;
            if (v19)
            {
              v29 = v19;
              v15 = v52;
              v12 = v53;
            }

            else
            {
              context = objc_autoreleasePoolPush();
              v33 = HMFGetOSLogHandle();
              v15 = v52;
              v12 = v53;
              if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
              {
                v50 = HMFGetLogIdentifier();
                v49 = [v27 path];
                *v64 = 138543874;
                v65 = v50;
                v66 = 2112;
                v67 = v49;
                v68 = 2112;
                v69 = v28;
                _os_log_impl(&dword_19BB39000, v33, OS_LOG_TYPE_INFO, "%{public}@Unable to load document, %@, with error: %@", v64, 0x20u);
              }

              objc_autoreleasePoolPop(context);
            }

            goto LABEL_28;
          }
        }

        v19 = [v18 countByEnumeratingWithState:&v60 objects:buf count:16];
        if (v19)
        {
          continue;
        }

        break;
      }

      v15 = v52;
      v12 = v53;
LABEL_28:
      v16 = v56;
    }

    if (v16 && v19)
    {
      v34 = objc_autoreleasePoolPush();
      v35 = v12;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        HMFGetLogIdentifier();
        v37 = v57 = v16;
        *buf = 138543362;
        v71 = v37;
        _os_log_impl(&dword_19BB39000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@Both html and text release notes provided, using text notes", buf, 0xCu);

        v16 = v57;
      }

      objc_autoreleasePoolPop(v34);
      v16 = 0;
      v15 = 0;
    }

    if (!v55)
    {
      v41 = 0;
LABEL_45:
      self = [(HMSoftwareUpdateDocumentation *)v12 initWithReleaseNotesSummary:v15 releaseNotes:v16 textReleaseNotes:v19 licenseAgreement:v55 licenseAgreementVersion:v41, v49];

      v26 = self;
LABEL_46:

      goto LABEL_47;
    }

    v58 = v16;
    v38 = [v5 infoDictionary];
    v39 = [v38 hmf_dictionaryForKey:@"MobileAssetProperties"];
    v40 = v39;
    if (v39)
    {
      v41 = [v39 hmf_numberForKey:@"SUSLAVersionRequired"];
      if (v41)
      {
LABEL_44:

        v16 = v58;
        goto LABEL_45;
      }

      v54 = objc_autoreleasePoolPush();
      v42 = v12;
      v43 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v44 = HMFGetLogIdentifier();
        *buf = 138543618;
        v71 = v44;
        v72 = 2112;
        v73 = v40;
        v45 = "%{public}@Missing SLA version from asset properties: %@";
LABEL_42:
        _os_log_impl(&dword_19BB39000, v43, OS_LOG_TYPE_ERROR, v45, buf, 0x16u);
      }
    }

    else
    {
      v54 = objc_autoreleasePoolPush();
      v46 = v12;
      v43 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v44 = HMFGetLogIdentifier();
        *buf = 138543618;
        v71 = v44;
        v72 = 2112;
        v73 = v38;
        v45 = "%{public}@Missing asset properties from asset info: %@";
        goto LABEL_42;
      }
    }

    objc_autoreleasePoolPop(v54);
    v41 = 0;
    goto LABEL_44;
  }

  v23 = objc_autoreleasePoolPush();
  self = self;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = HMFGetLogIdentifier();
    *buf = 138543362;
    v71 = v25;
    _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@The bundle parameter is required", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v23);
  v26 = 0;
LABEL_47:

  v47 = *MEMORY[0x1E69E9840];
  return v26;
}

+ (id)localizationsForBundle:(id)a3
{
  v3 = __resourceBundleForBundle(a3);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 localizations];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

@end