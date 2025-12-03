@interface HMSoftwareUpdateDescriptor
+ (id)descriptorFromEvent:(id)event;
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMSoftwareUpdateDescriptor)initWithProtoPayload:(id)payload;
- (HMSoftwareUpdateDescriptor)initWithStatus:(int64_t)status downloadSize:(id)size humanReadableUpdateName:(id)name rampEnabled:(id)enabled errorCode:(id)code serverAssetURL:(id)l serverAssetAlgorithm:(id)algorithm serverAssetMeasurement:(id)self0 majorVersion:(id)self1 minorVersion:(id)self2 updateVersion:(id)self3 buildVersion:(id)self4 softwareVersionRequiresMetadata:(BOOL)self5;
- (HMSoftwareUpdateDescriptor)initWithStatus:(int64_t)status error:(id)error documentationMetadata:(id)metadata version:(id)version downloadSize:(id)size humanReadableUpdateName:(id)name rampFeatureEnabledOnServer:(id)server;
- (id)attributeDescriptions;
- (id)copyWithZone:(_NSZone *)zone;
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
  error = [(HMSoftwareUpdateDescriptor *)self error];
  v23 = [v4 initWithName:@"error" value:error];
  v27[1] = v23;
  v5 = objc_alloc(MEMORY[0x1E69A29C8]);
  documentationMetadata = [(HMSoftwareUpdateDescriptor *)self documentationMetadata];
  v6 = [v5 initWithName:@"documentationMetadata" value:documentationMetadata];
  v27[2] = v6;
  v7 = objc_alloc(MEMORY[0x1E69A29C8]);
  version = [(HMSoftwareUpdateDescriptor *)self version];
  v9 = [v7 initWithName:@"version" value:version];
  v27[3] = v9;
  v10 = objc_alloc(MEMORY[0x1E69A29C8]);
  downloadSize = [(HMSoftwareUpdateDescriptor *)self downloadSize];
  v12 = [v10 initWithName:@"downloadSize" value:downloadSize];
  v27[4] = v12;
  v13 = objc_alloc(MEMORY[0x1E69A29C8]);
  humanReadableUpdateName = [(HMSoftwareUpdateDescriptor *)self humanReadableUpdateName];
  v15 = [v13 initWithName:@"humanReadableUpdateName" value:humanReadableUpdateName];
  v27[5] = v15;
  v16 = objc_alloc(MEMORY[0x1E69A29C8]);
  rampFeatureEnabledOnServer = [(HMSoftwareUpdateDescriptor *)self rampFeatureEnabledOnServer];
  v18 = [v16 initWithName:@"rampFeatureEnabledOnServer" value:rampFeatureEnabledOnServer];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMSoftwareUpdateDescriptor alloc];
  protoPayload = [(HMSoftwareUpdateDescriptor *)self protoPayload];
  v6 = [(HMSoftwareUpdateDescriptor *)v4 initWithProtoPayload:protoPayload];

  return v6;
}

- (unint64_t)hash
{
  status = [(HMSoftwareUpdateDescriptor *)self status];
  downloadSize = [(HMSoftwareUpdateDescriptor *)self downloadSize];
  v5 = [downloadSize unsignedIntegerValue] ^ status;
  version = [(HMSoftwareUpdateDescriptor *)self version];
  v7 = [version hash];

  return v5 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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

  version = [(HMSoftwareUpdateDescriptor *)self version];
  version2 = [v6 version];
  v9 = HMFEqualObjects();

  if (!v9)
  {
    goto LABEL_12;
  }

  status = [(HMSoftwareUpdateDescriptor *)self status];
  if (status != [v6 status])
  {
    goto LABEL_12;
  }

  documentationMetadata = [(HMSoftwareUpdateDescriptor *)self documentationMetadata];
  documentationMetadata2 = [v6 documentationMetadata];
  v13 = HMFEqualObjects();

  if (!v13)
  {
    goto LABEL_12;
  }

  downloadSize = [(HMSoftwareUpdateDescriptor *)self downloadSize];
  downloadSize2 = [v6 downloadSize];
  v16 = HMFEqualObjects();

  if (!v16)
  {
    goto LABEL_12;
  }

  humanReadableUpdateName = [(HMSoftwareUpdateDescriptor *)self humanReadableUpdateName];
  humanReadableUpdateName2 = [v6 humanReadableUpdateName];
  v19 = HMFEqualObjects();

  if (!v19)
  {
    goto LABEL_12;
  }

  rampFeatureEnabledOnServer = [(HMSoftwareUpdateDescriptor *)self rampFeatureEnabledOnServer];
  rampFeatureEnabledOnServer2 = [v6 rampFeatureEnabledOnServer];
  v22 = HMFEqualObjects();

  if (v22)
  {
    error = [(HMSoftwareUpdateDescriptor *)self error];
    error2 = [v6 error];
    v25 = HMFEqualObjects();
  }

  else
  {
LABEL_12:
    v25 = 0;
  }

  return v25;
}

- (HMSoftwareUpdateDescriptor)initWithStatus:(int64_t)status downloadSize:(id)size humanReadableUpdateName:(id)name rampEnabled:(id)enabled errorCode:(id)code serverAssetURL:(id)l serverAssetAlgorithm:(id)algorithm serverAssetMeasurement:(id)self0 majorVersion:(id)self1 minorVersion:(id)self2 updateVersion:(id)self3 buildVersion:(id)self4 softwareVersionRequiresMetadata:(BOOL)self5
{
  v60 = *MEMORY[0x1E69E9840];
  sizeCopy = size;
  nameCopy = name;
  enabledCopy = enabled;
  codeCopy = code;
  lCopy = l;
  algorithmCopy = algorithm;
  measurementCopy = measurement;
  versionCopy = version;
  minorVersionCopy = minorVersion;
  updateVersionCopy = updateVersion;
  buildVersionCopy = buildVersion;
  v27 = buildVersionCopy;
  v53 = lCopy;
  v54 = codeCopy;
  v48 = measurementCopy;
  if (buildVersionCopy && updateVersionCopy && minorVersionCopy && versionCopy && lCopy && algorithmCopy && measurementCopy)
  {
    v28 = HMFDigestAlgorithmFromString();
    if (v28)
    {
      v29 = [objc_alloc(MEMORY[0x1E69A29D0]) initWithAlgorithm:v28 value:measurementCopy];
      v30 = [[HMSoftwareUpdateDocumentationMetadata alloc] initWithURL:lCopy digest:v29];
      v31 = [objc_alloc(MEMORY[0x1E69A2A60]) initWithMajorVersion:objc_msgSend(versionCopy minorVersion:"unsignedIntValue") updateVersion:objc_msgSend(minorVersionCopy buildVersion:{"unsignedIntValue"), objc_msgSend(updateVersionCopy, "unsignedIntValue"), v27}];
    }

    else
    {
      v38 = objc_autoreleasePoolPush();
      selfCopy = self;
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = HMFGetLogIdentifier();
        *buf = 138543618;
        v57 = v41;
        v58 = 2112;
        v59 = algorithmCopy;
        _os_log_impl(&dword_19BB39000, v40, OS_LOG_TYPE_ERROR, "%{public}@Invalid algorithm string: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v38);
      v31 = 0;
      v30 = 0;
    }

    v32 = sizeCopy;
    codeCopy = v54;
  }

  else
  {
    v31 = 0;
    if (buildVersionCopy)
    {
      v32 = sizeCopy;
      if (updateVersionCopy && minorVersionCopy && versionCopy)
      {
        v30 = 0;
        if (!metadata)
        {
          v33 = objc_alloc(MEMORY[0x1E69A2A60]);
          unsignedIntValue = [versionCopy unsignedIntValue];
          unsignedIntValue2 = [minorVersionCopy unsignedIntValue];
          unsignedIntValue3 = [updateVersionCopy unsignedIntValue];
          v37 = unsignedIntValue;
          codeCopy = v54;
          v31 = [v33 initWithMajorVersion:v37 minorVersion:unsignedIntValue2 updateVersion:unsignedIntValue3 buildVersion:v27];
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
      v32 = sizeCopy;
    }
  }

  if (codeCopy && ((v42 = [codeCopy integerValue], v42 > 0x3B) ? (v43 = -1) : (v43 = v42), v43))
  {
    v44 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMSoftwareUpdateV2ErrorDomain" code:v43 userInfo:0];
  }

  else
  {
    v44 = 0;
  }

  v45 = [(HMSoftwareUpdateDescriptor *)self initWithStatus:status error:v44 documentationMetadata:v30 version:v31 downloadSize:v32 humanReadableUpdateName:nameCopy rampFeatureEnabledOnServer:enabledCopy];

  v46 = *MEMORY[0x1E69E9840];
  return v45;
}

- (HMSoftwareUpdateDescriptor)initWithProtoPayload:(id)payload
{
  v42 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  if ([payloadCopy hasStatus])
  {
    status = [payloadCopy status];
    hasDownloadSize = [payloadCopy hasDownloadSize];
    if (hasDownloadSize)
    {
      v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(payloadCopy, "downloadSize")}];
    }

    else
    {
      v37 = 0;
    }

    hasHumanReadableUpdateName = [payloadCopy hasHumanReadableUpdateName];
    if (hasHumanReadableUpdateName)
    {
      humanReadableUpdateName = [payloadCopy humanReadableUpdateName];
    }

    else
    {
      humanReadableUpdateName = 0;
    }

    hasRampEnabled = [payloadCopy hasRampEnabled];
    if (hasRampEnabled)
    {
      v35 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(payloadCopy, "rampEnabled")}];
    }

    else
    {
      v35 = 0;
    }

    hasErrorCode = [payloadCopy hasErrorCode];
    if (hasErrorCode)
    {
      v34 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(payloadCopy, "errorCode")}];
    }

    else
    {
      v34 = 0;
    }

    hasServerAssetURL = [payloadCopy hasServerAssetURL];
    if (hasServerAssetURL)
    {
      v10 = MEMORY[0x1E695DFF8];
      serverAssetURL = [payloadCopy serverAssetURL];
      v11 = [v10 URLWithString:?];
    }

    else
    {
      v11 = 0;
    }

    hasServerAssetAlgorithm = [payloadCopy hasServerAssetAlgorithm];
    if (hasServerAssetAlgorithm)
    {
      serverAssetAlgorithm = [payloadCopy serverAssetAlgorithm];
    }

    else
    {
      serverAssetAlgorithm = 0;
    }

    hasServerAssetMeasurement = [payloadCopy hasServerAssetMeasurement];
    if (hasServerAssetMeasurement)
    {
      serverAssetMeasurement = [payloadCopy serverAssetMeasurement];
    }

    else
    {
      serverAssetMeasurement = 0;
    }

    hasMajorVersion = [payloadCopy hasMajorVersion];
    if (hasMajorVersion)
    {
      v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(payloadCopy, "majorVersion")}];
    }

    else
    {
      v13 = 0;
    }

    hasMinorVersion = [payloadCopy hasMinorVersion];
    if (hasMinorVersion)
    {
      v15 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(payloadCopy, "minorVersion")}];
    }

    else
    {
      v15 = 0;
    }

    hasUpdateVersion = [payloadCopy hasUpdateVersion];
    if (hasUpdateVersion)
    {
      v17 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(payloadCopy, "updateVersion")}];
    }

    else
    {
      v17 = 0;
    }

    if ([payloadCopy hasBuildVersion])
    {
      [payloadCopy buildVersion];
      v19 = v18 = v11;
      LOBYTE(v22) = 0;
      selfCopy = [(HMSoftwareUpdateDescriptor *)self initWithStatus:status downloadSize:v37 humanReadableUpdateName:humanReadableUpdateName rampEnabled:v35 errorCode:v34 serverAssetURL:v18 serverAssetAlgorithm:serverAssetAlgorithm serverAssetMeasurement:serverAssetMeasurement majorVersion:v13 minorVersion:v15 updateVersion:v17 buildVersion:v19 softwareVersionRequiresMetadata:v22];

      v11 = v18;
      if (!hasUpdateVersion)
      {
LABEL_40:
        if (hasMinorVersion)
        {

          if (!hasMajorVersion)
          {
            goto LABEL_43;
          }
        }

        else if (!hasMajorVersion)
        {
LABEL_43:
          if (hasServerAssetMeasurement)
          {
          }

          if (hasServerAssetAlgorithm)
          {
          }

          if (hasServerAssetURL)
          {
          }

          if (hasErrorCode)
          {
          }

          if (hasRampEnabled)
          {
          }

          if (hasHumanReadableUpdateName)
          {
          }

          if (hasDownloadSize)
          {
          }

          v9 = selfCopy;
          goto LABEL_58;
        }

        goto LABEL_43;
      }
    }

    else
    {
      LOBYTE(v22) = 0;
      selfCopy = [(HMSoftwareUpdateDescriptor *)self initWithStatus:status downloadSize:v37 humanReadableUpdateName:humanReadableUpdateName rampEnabled:v35 errorCode:v34 serverAssetURL:v11 serverAssetAlgorithm:serverAssetAlgorithm serverAssetMeasurement:serverAssetMeasurement majorVersion:v13 minorVersion:v15 updateVersion:v17 buildVersion:0 softwareVersionRequiresMetadata:v22];
      if (!hasUpdateVersion)
      {
        goto LABEL_40;
      }
    }

    goto LABEL_40;
  }

  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v39 = v8;
    v40 = 2112;
    v41 = payloadCopy;
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
  downloadSize = [(HMSoftwareUpdateDescriptor *)self downloadSize];

  if (downloadSize)
  {
    downloadSize2 = [(HMSoftwareUpdateDescriptor *)self downloadSize];
    -[HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor setDownloadSize:](v3, "setDownloadSize:", [downloadSize2 unsignedLongLongValue]);
  }

  humanReadableUpdateName = [(HMSoftwareUpdateDescriptor *)self humanReadableUpdateName];

  if (humanReadableUpdateName)
  {
    humanReadableUpdateName2 = [(HMSoftwareUpdateDescriptor *)self humanReadableUpdateName];
    [(HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor *)v3 setHumanReadableUpdateName:humanReadableUpdateName2];
  }

  rampFeatureEnabledOnServer = [(HMSoftwareUpdateDescriptor *)self rampFeatureEnabledOnServer];

  if (rampFeatureEnabledOnServer)
  {
    rampFeatureEnabledOnServer2 = [(HMSoftwareUpdateDescriptor *)self rampFeatureEnabledOnServer];
    -[HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor setRampEnabled:](v3, "setRampEnabled:", [rampFeatureEnabledOnServer2 BOOLValue]);
  }

  error = [(HMSoftwareUpdateDescriptor *)self error];

  if (error)
  {
    error2 = [(HMSoftwareUpdateDescriptor *)self error];
    -[HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor setErrorCode:](v3, "setErrorCode:", [error2 code]);
  }

  documentationMetadata = [(HMSoftwareUpdateDescriptor *)self documentationMetadata];

  if (documentationMetadata)
  {
    documentationMetadata2 = [(HMSoftwareUpdateDescriptor *)self documentationMetadata];
    v14 = [documentationMetadata2 URL];
    absoluteString = [v14 absoluteString];
    [(HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor *)v3 setServerAssetURL:absoluteString];

    documentationMetadata3 = [(HMSoftwareUpdateDescriptor *)self documentationMetadata];
    digest = [documentationMetadata3 digest];
    [digest algorithm];
    v18 = HMFDigestAlgorithmToString();
    [(HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor *)v3 setServerAssetAlgorithm:v18];

    documentationMetadata4 = [(HMSoftwareUpdateDescriptor *)self documentationMetadata];
    digest2 = [documentationMetadata4 digest];
    value = [digest2 value];
    [(HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor *)v3 setServerAssetMeasurement:value];
  }

  version = [(HMSoftwareUpdateDescriptor *)self version];

  if (version)
  {
    version2 = [(HMSoftwareUpdateDescriptor *)self version];
    -[HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor setMajorVersion:](v3, "setMajorVersion:", [version2 majorVersion]);

    version3 = [(HMSoftwareUpdateDescriptor *)self version];
    -[HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor setMinorVersion:](v3, "setMinorVersion:", [version3 minorVersion]);

    version4 = [(HMSoftwareUpdateDescriptor *)self version];
    -[HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor setUpdateVersion:](v3, "setUpdateVersion:", [version4 updateVersion]);

    version5 = [(HMSoftwareUpdateDescriptor *)self version];
    buildVersion = [version5 buildVersion];
    [(HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor *)v3 setBuildVersion:buildVersion];
  }

  return v3;
}

- (HMSoftwareUpdateDescriptor)initWithStatus:(int64_t)status error:(id)error documentationMetadata:(id)metadata version:(id)version downloadSize:(id)size humanReadableUpdateName:(id)name rampFeatureEnabledOnServer:(id)server
{
  errorCopy = error;
  metadataCopy = metadata;
  versionCopy = version;
  sizeCopy = size;
  nameCopy = name;
  serverCopy = server;
  v27.receiver = self;
  v27.super_class = HMSoftwareUpdateDescriptor;
  v19 = [(HMSoftwareUpdateDescriptor *)&v27 init];
  v20 = v19;
  if (v19)
  {
    v19->_status = status;
    objc_storeStrong(&v19->_error, error);
    objc_storeStrong(&v20->_documentationMetadata, metadata);
    objc_storeStrong(&v20->_version, version);
    objc_storeStrong(&v20->_downloadSize, size);
    v21 = [nameCopy copy];
    humanReadableUpdateName = v20->_humanReadableUpdateName;
    v20->_humanReadableUpdateName = v21;

    objc_storeStrong(&v20->_rampFeatureEnabledOnServer, server);
  }

  return v20;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)descriptorFromEvent:(id)event
{
  v19 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v5 = [HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor alloc];
  encodedData = [eventCopy encodedData];
  v7 = [(HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor *)v5 initWithData:encodedData];

  if (v7)
  {
    v8 = [[HMSoftwareUpdateDescriptor alloc] initWithProtoPayload:v7];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v12;
      v17 = 2112;
      v18 = eventCopy;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to create HMSoftwareUpdateEventProtoSoftwareUpdateDescriptor from event: %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v8 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v8;
}

@end