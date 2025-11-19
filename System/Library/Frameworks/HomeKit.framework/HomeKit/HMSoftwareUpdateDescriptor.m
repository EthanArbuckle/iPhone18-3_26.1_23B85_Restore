@interface HMSoftwareUpdateDescriptor
+ (id)descriptorFromEvent:(id)a3;
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMSoftwareUpdateDescriptor)initWithProtoPayload:(id)a3;
- (HMSoftwareUpdateDescriptor)initWithStatus:(int64_t)a3 downloadSize:(id)a4 humanReadableUpdateName:(id)a5 rampEnabled:(id)a6 errorCode:(id)a7 serverAssetURL:(id)a8 serverAssetAlgorithm:(id)a9 serverAssetMeasurement:(id)a10 majorVersion:(id)a11 minorVersion:(id)a12 updateVersion:(id)a13 buildVersion:(id)a14 softwareVersionRequiresMetadata:(BOOL)a15;
- (HMSoftwareUpdateDescriptor)initWithStatus:(int64_t)a3 error:(id)a4 documentationMetadata:(id)a5 version:(id)a6 downloadSize:(id)a7 humanReadableUpdateName:(id)a8 rampFeatureEnabledOnServer:(id)a9;
- (id)attributeDescriptions;
- (id)copyWithZone:(_NSZone *)a3;
- (id)protoPayload;
- (id)shortDescription;
- (unint64_t)hash;
@end

@implementation HMSoftwareUpdateDescriptor

- (id)attributeDescriptions
{
  v27[7] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v26 = [MEMORY[0x1E696AD98] numberWithInteger:{-[HMSoftwareUpdateDescriptor status](self, "status")}];
  v25 = [v3 initWithName:@"status" value:v26];
  v27[0] = v25;
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  v24 = [(HMSoftwareUpdateDescriptor *)self error];
  v23 = [v4 initWithName:@"error" value:v24];
  v27[1] = v23;
  v5 = objc_alloc(MEMORY[0x1E69A29C8]);
  v22 = [(HMSoftwareUpdateDescriptor *)self documentationMetadata];
  v6 = [v5 initWithName:@"documentationMetadata" value:v22];
  v27[2] = v6;
  v7 = objc_alloc(MEMORY[0x1E69A29C8]);
  v8 = [(HMSoftwareUpdateDescriptor *)self version];
  v9 = [v7 initWithName:@"version" value:v8];
  v27[3] = v9;
  v10 = objc_alloc(MEMORY[0x1E69A29C8]);
  v11 = [(HMSoftwareUpdateDescriptor *)self downloadSize];
  v12 = [v10 initWithName:@"downloadSize" value:v11];
  v27[4] = v12;
  v13 = objc_alloc(MEMORY[0x1E69A29C8]);
  v14 = [(HMSoftwareUpdateDescriptor *)self humanReadableUpdateName];
  v15 = [v13 initWithName:@"humanReadableUpdateName" value:v14];
  v27[5] = v15;
  v16 = objc_alloc(MEMORY[0x1E69A29C8]);
  v17 = [(HMSoftwareUpdateDescriptor *)self rampFeatureEnabledOnServer];
  v18 = [v16 initWithName:@"rampFeatureEnabledOnServer" value:v17];
  v27[6] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:7];

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMSoftwareUpdateDescriptor alloc];
  v5 = [(HMSoftwareUpdateDescriptor *)self protoPayload];
  v6 = [(HMSoftwareUpdateDescriptor *)v4 initWithProtoPayload:v5];

  return v6;
}

- (unint64_t)hash
{
  v3 = [(HMSoftwareUpdateDescriptor *)self status];
  v4 = [(HMSoftwareUpdateDescriptor *)self downloadSize];
  v5 = [v4 unsignedIntegerValue] ^ v3;
  v6 = [(HMSoftwareUpdateDescriptor *)self version];
  v7 = [v6 hash];

  return v5 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
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
    goto LABEL_12;
  }

  v7 = [(HMSoftwareUpdateDescriptor *)self version];
  v8 = [v6 version];
  v9 = HMFEqualObjects();

  if (!v9)
  {
    goto LABEL_12;
  }

  v10 = [(HMSoftwareUpdateDescriptor *)self status];
  if (v10 != [v6 status])
  {
    goto LABEL_12;
  }

  v11 = [(HMSoftwareUpdateDescriptor *)self documentationMetadata];
  v12 = [v6 documentationMetadata];
  v13 = HMFEqualObjects();

  if (!v13)
  {
    goto LABEL_12;
  }

  v14 = [(HMSoftwareUpdateDescriptor *)self downloadSize];
  v15 = [v6 downloadSize];
  v16 = HMFEqualObjects();

  if (!v16)
  {
    goto LABEL_12;
  }

  v17 = [(HMSoftwareUpdateDescriptor *)self humanReadableUpdateName];
  v18 = [v6 humanReadableUpdateName];
  v19 = HMFEqualObjects();

  if (!v19)
  {
    goto LABEL_12;
  }

  v20 = [(HMSoftwareUpdateDescriptor *)self rampFeatureEnabledOnServer];
  v21 = [v6 rampFeatureEnabledOnServer];
  v22 = HMFEqualObjects();

  if (v22)
  {
    v23 = [(HMSoftwareUpdateDescriptor *)self error];
    v24 = [v6 error];
    v25 = HMFEqualObjects();
  }

  else
  {
LABEL_12:
    v25 = 0;
  }

  return v25;
}

- (HMSoftwareUpdateDescriptor)initWithStatus:(int64_t)a3 downloadSize:(id)a4 humanReadableUpdateName:(id)a5 rampEnabled:(id)a6 errorCode:(id)a7 serverAssetURL:(id)a8 serverAssetAlgorithm:(id)a9 serverAssetMeasurement:(id)a10 majorVersion:(id)a11 minorVersion:(id)a12 updateVersion:(id)a13 buildVersion:(id)a14 softwareVersionRequiresMetadata:(BOOL)a15
{
  v60 = *MEMORY[0x1E69E9840];
  v51 = a4;
  v50 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v55 = a11;
  v24 = a12;
  v25 = a13;
  v26 = a14;
  v27 = v26;
  v53 = v21;
  v54 = v20;
  v48 = v23;
  if (v26 && v25 && v24 && v55 && v21 && v22 && v23)
  {
    v28 = HMFDigestAlgorithmFromString();
    if (v28)
    {
      v29 = [objc_alloc(MEMORY[0x1E69A29D0]) initWithAlgorithm:v28 value:v23];
      v30 = [[HMSoftwareUpdateDocumentationMetadata alloc] initWithURL:v21 digest:v29];
      v31 = [objc_alloc(MEMORY[0x1E69A2A60]) initWithMajorVersion:objc_msgSend(v55 minorVersion:"unsignedIntValue") updateVersion:objc_msgSend(v24 buildVersion:{"unsignedIntValue"), objc_msgSend(v25, "unsignedIntValue"), v27}];
    }

    else
    {
      v38 = objc_autoreleasePoolPush();
      v39 = self;
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = HMFGetLogIdentifier();
        *buf = 138543618;
        v57 = v41;
        v58 = 2112;
        v59 = v22;
        _os_log_impl(&dword_19BB39000, v40, OS_LOG_TYPE_ERROR, "%{public}@Invalid algorithm string: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v38);
      v31 = 0;
      v30 = 0;
    }

    v32 = v51;
    v20 = v54;
  }

  else
  {
    v31 = 0;
    if (v26)
    {
      v32 = v51;
      if (v25 && v24 && v55)
      {
        v30 = 0;
        if (!a15)
        {
          v33 = objc_alloc(MEMORY[0x1E69A2A60]);
          v34 = [v55 unsignedIntValue];
          v35 = [v24 unsignedIntValue];
          v36 = [v25 unsignedIntValue];
          v37 = v34;
          v20 = v54;
          v31 = [v33 initWithMajorVersion:v37 minorVersion:v35 updateVersion:v36 buildVersion:v27];
          v30 = 0;
        }
      }

      else
      {
        v30 = 0;
      }
    }

    else
    {
      v30 = 0;
      v32 = v51;
    }
  }

  if (v20 && ((v42 = [v20 integerValue], v42 > 0x3B) ? (v43 = -1) : (v43 = v42), v43))
  {
    v44 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMSoftwareUpdateV2ErrorDomain" code:v43 userInfo:0];
  }

  else
  {
    v44 = 0;
  }

  v45 = [(HMSoftwareUpdateDescriptor *)self initWithStatus:a3 error:v44 documentationMetadata:v30 version:v31 downloadSize:v32 humanReadableUpdateName:v50 rampFeatureEnabledOnServer:v19];

  v46 = *MEMORY[0x1E69E9840];
  return v45;
}

- (HMSoftwareUpdateDescriptor)initWithProtoPayload:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 hasStatus])
  {
    v27 = [v4 status];
    v31 = [v4 hasDownloadSize];
    if (v31)
    {
      v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "downloadSize")}];
    }

    else
    {
      v37 = 0;
    }

    v30 = [v4 hasHumanReadableUpdateName];
    if (v30)
    {
      v36 = [v4 humanReadableUpdateName];
    }

    else
    {
      v36 = 0;
    }

    v29 = [v4 hasRampEnabled];
    if (v29)
    {
      v35 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v4, "rampEnabled")}];
    }

    else
    {
      v35 = 0;
    }

    v28 = [v4 hasErrorCode];
    if (v28)
    {
      v34 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v4, "errorCode")}];
    }

    else
    {
      v34 = 0;
    }

    v26 = [v4 hasServerAssetURL];
    if (v26)
    {
      v10 = MEMORY[0x1E695DFF8];
      v23 = [v4 serverAssetURL];
      v11 = [v10 URLWithString:?];
    }

    else
    {
      v11 = 0;
    }

    v25 = [v4 hasServerAssetAlgorithm];
    if (v25)
    {
      v33 = [v4 serverAssetAlgorithm];
    }

    else
    {
      v33 = 0;
    }

    v24 = [v4 hasServerAssetMeasurement];
    if (v24)
    {
      v32 = [v4 serverAssetMeasurement];
    }

    else
    {
      v32 = 0;
    }

    v12 = [v4 hasMajorVersion];
    if (v12)
    {
      v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "majorVersion")}];
    }

    else
    {
      v13 = 0;
    }

    v14 = [v4 hasMinorVersion];
    if (v14)
    {
      v15 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "minorVersion")}];
    }

    else
    {
      v15 = 0;
    }

    v16 = [v4 hasUpdateVersion];
    if (v16)
    {
      v17 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "updateVersion")}];
    }

    else
    {
      v17 = 0;
    }

    if ([v4 hasBuildVersion])
    {
      [v4 buildVersion];
      v19 = v18 = v11;
      LOBYTE(v22) = 0;
      v6 = [(HMSoftwareUpdateDescriptor *)self initWithStatus:v27 downloadSize:v37 humanReadableUpdateName:v36 rampEnabled:v35 errorCode:v34 serverAssetURL:v18 serverAssetAlgorithm:v33 serverAssetMeasurement:v32 majorVersion:v13 minorVersion:v15 updateVersion:v17 buildVersion:v19 softwareVersionRequiresMetadata:v22];

      v11 = v18;
      if (!v16)
      {
LABEL_40:
        if (v14)
        {

          if (!v12)
          {
            goto LABEL_43;
          }
        }

        else if (!v12)
        {
LABEL_43:
          if (v24)
          {
          }

          if (v25)
          {
          }

          if (v26)
          {
          }

          if (v28)
          {
          }

          if (v29)
          {
          }

          if (v30)
          {
          }

          if (v31)
          {
          }

          v9 = v6;
          goto LABEL_58;
        }

        goto LABEL_43;
      }
    }

    else
    {
      LOBYTE(v22) = 0;
      v6 = [(HMSoftwareUpdateDescriptor *)self initWithStatus:v27 downloadSize:v37 humanReadableUpdateName:v36 rampEnabled:v35 errorCode:v34 serverAssetURL:v11 serverAssetAlgorithm:v33 serverAssetMeasurement:v32 majorVersion:v13 minorVersion:v15 updateVersion:v17 buildVersion:0 softwareVersionRequiresMetadata:v22];
      if (!v16)
      {
        goto LABEL_40;
      }
    }

    goto LABEL_40;
  }

  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v39 = v8;
    v40 = 2112;
    v41 = v4;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_ERROR, "%{public}@Proto payload HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor is missing data: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = 0;
LABEL_58:

  v20 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)protoPayload
{
  v3 = objc_alloc_init(HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor);
  [(HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor *)v3 setStatus:[(HMSoftwareUpdateDescriptor *)self status]];
  v4 = [(HMSoftwareUpdateDescriptor *)self downloadSize];

  if (v4)
  {
    v5 = [(HMSoftwareUpdateDescriptor *)self downloadSize];
    -[HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor setDownloadSize:](v3, "setDownloadSize:", [v5 unsignedLongLongValue]);
  }

  v6 = [(HMSoftwareUpdateDescriptor *)self humanReadableUpdateName];

  if (v6)
  {
    v7 = [(HMSoftwareUpdateDescriptor *)self humanReadableUpdateName];
    [(HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor *)v3 setHumanReadableUpdateName:v7];
  }

  v8 = [(HMSoftwareUpdateDescriptor *)self rampFeatureEnabledOnServer];

  if (v8)
  {
    v9 = [(HMSoftwareUpdateDescriptor *)self rampFeatureEnabledOnServer];
    -[HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor setRampEnabled:](v3, "setRampEnabled:", [v9 BOOLValue]);
  }

  v10 = [(HMSoftwareUpdateDescriptor *)self error];

  if (v10)
  {
    v11 = [(HMSoftwareUpdateDescriptor *)self error];
    -[HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor setErrorCode:](v3, "setErrorCode:", [v11 code]);
  }

  v12 = [(HMSoftwareUpdateDescriptor *)self documentationMetadata];

  if (v12)
  {
    v13 = [(HMSoftwareUpdateDescriptor *)self documentationMetadata];
    v14 = [v13 URL];
    v15 = [v14 absoluteString];
    [(HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor *)v3 setServerAssetURL:v15];

    v16 = [(HMSoftwareUpdateDescriptor *)self documentationMetadata];
    v17 = [v16 digest];
    [v17 algorithm];
    v18 = HMFDigestAlgorithmToString();
    [(HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor *)v3 setServerAssetAlgorithm:v18];

    v19 = [(HMSoftwareUpdateDescriptor *)self documentationMetadata];
    v20 = [v19 digest];
    v21 = [v20 value];
    [(HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor *)v3 setServerAssetMeasurement:v21];
  }

  v22 = [(HMSoftwareUpdateDescriptor *)self version];

  if (v22)
  {
    v23 = [(HMSoftwareUpdateDescriptor *)self version];
    -[HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor setMajorVersion:](v3, "setMajorVersion:", [v23 majorVersion]);

    v24 = [(HMSoftwareUpdateDescriptor *)self version];
    -[HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor setMinorVersion:](v3, "setMinorVersion:", [v24 minorVersion]);

    v25 = [(HMSoftwareUpdateDescriptor *)self version];
    -[HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor setUpdateVersion:](v3, "setUpdateVersion:", [v25 updateVersion]);

    v26 = [(HMSoftwareUpdateDescriptor *)self version];
    v27 = [v26 buildVersion];
    [(HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor *)v3 setBuildVersion:v27];
  }

  return v3;
}

- (HMSoftwareUpdateDescriptor)initWithStatus:(int64_t)a3 error:(id)a4 documentationMetadata:(id)a5 version:(id)a6 downloadSize:(id)a7 humanReadableUpdateName:(id)a8 rampFeatureEnabledOnServer:(id)a9
{
  v26 = a4;
  v25 = a5;
  v24 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v27.receiver = self;
  v27.super_class = HMSoftwareUpdateDescriptor;
  v19 = [(HMSoftwareUpdateDescriptor *)&v27 init];
  v20 = v19;
  if (v19)
  {
    v19->_status = a3;
    objc_storeStrong(&v19->_error, a4);
    objc_storeStrong(&v20->_documentationMetadata, a5);
    objc_storeStrong(&v20->_version, a6);
    objc_storeStrong(&v20->_downloadSize, a7);
    v21 = [v17 copy];
    humanReadableUpdateName = v20->_humanReadableUpdateName;
    v20->_humanReadableUpdateName = v21;

    objc_storeStrong(&v20->_rampFeatureEnabledOnServer, a9);
  }

  return v20;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)descriptorFromEvent:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor alloc];
  v6 = [v4 encodedData];
  v7 = [(HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor *)v5 initWithData:v6];

  if (v7)
  {
    v8 = [[HMSoftwareUpdateDescriptor alloc] initWithProtoPayload:v7];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = a1;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = v4;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to create HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor from event: %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v8 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v8;
}

@end