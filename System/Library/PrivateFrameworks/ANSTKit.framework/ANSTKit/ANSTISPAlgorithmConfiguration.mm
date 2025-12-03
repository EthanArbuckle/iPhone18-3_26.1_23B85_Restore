@interface ANSTISPAlgorithmConfiguration
- (ANSTISPAlgorithmConfiguration)initWithVersion:(unint64_t)version;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation ANSTISPAlgorithmConfiguration

- (ANSTISPAlgorithmConfiguration)initWithVersion:(unint64_t)version
{
  v4.receiver = self;
  v4.super_class = ANSTISPAlgorithmConfiguration;
  result = [(ANSTConfiguration *)&v4 initWithVersion:version];
  if (result)
  {
    result->_enableObjectTracking = 1;
    result->_enableSegmentation = 1;
    result->_enableFaceAttributes = 0;
    result->_networkResolution = 0;
    result->_runningFrameRate = 0;
  }

  return result;
}

- (id)description
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_msgSend_version(self, a2, v2);
  v6 = ANSTISPAlgorithmVersionToNSString(v5);
  v9 = objc_msgSend_qualityOfService(self, v7, v8);
  v10 = v9;
  if (v9 > 20)
  {
    switch(v9)
    {
      case 21:
        v11 = @"DEFAULT";
        goto LABEL_17;
      case 33:
        v11 = @"USER_INTERACTIVE";
        goto LABEL_17;
      case 25:
        v11 = @"USER_INITIATED";
        goto LABEL_17;
    }
  }

  else
  {
    switch(v9)
    {
      case 0:
        v11 = @"UNSPECIFIED";
        goto LABEL_17;
      case 9:
        v11 = @"BACKGROUND";
        goto LABEL_17;
      case 17:
        v11 = @"UTILITY";
        goto LABEL_17;
    }
  }

  v12 = _ANSTLoggingGetOSLogForCategoryANSTKit();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_22E6585F0(v10, v12);
  }

  v11 = @"UNEXPECTED_ENUM_VALUE";
LABEL_17:
  if (self->_enableObjectTracking)
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  if (self->_enableSegmentation)
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  if (self->_enableFaceAttributes)
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  networkResolution = self->_networkResolution;
  v17 = v15;
  v18 = v14;
  v19 = v13;
  v20 = ANSTISPAlgorithmResolutionToNSString(networkResolution);
  v21 = ANSTISPAlgorithmRunningFrameRateToNSString(self->_runningFrameRate);
  v23 = objc_msgSend_stringWithFormat_(v4, v22, @"ANSTISPAlgorithmConfiguration [version %@, QoS %@, enableOD %@, enableSeg %@, enableAttr %@, networkResolution %@, runningFrameRate %@]", v6, v11, v19, v18, v17, v20, v21);

  return v23;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ANSTISPAlgorithmConfiguration alloc];
  v7 = objc_msgSend_version(self, v5, v6);
  v9 = objc_msgSend_initWithVersion_(v4, v8, v7);
  v12 = objc_msgSend_networkEngineType(self, v10, v11);
  objc_msgSend_setNetworkEngineType_(v9, v13, v12);
  v16 = objc_msgSend_qualityOfService(self, v14, v15);
  objc_msgSend_setQualityOfService_(v9, v17, v16);
  objc_msgSend_setEnableObjectTracking_(v9, v18, self->_enableObjectTracking);
  objc_msgSend_setEnableSegmentation_(v9, v19, self->_enableSegmentation);
  objc_msgSend_setEnableFaceAttributes_(v9, v20, self->_enableFaceAttributes);
  objc_msgSend_setEnableSkinTone_(v9, v21, self->_enableSkinTone);
  objc_msgSend_setEnableBodyKeypoints_(v9, v22, self->_enableBodyKeypoints);
  objc_msgSend_setEnableDepth_(v9, v23, self->_enableDepth);
  objc_msgSend_setNetworkResolution_(v9, v24, self->_networkResolution);
  objc_msgSend_setRunningFrameRate_(v9, v25, self->_runningFrameRate);
  return v9;
}

@end