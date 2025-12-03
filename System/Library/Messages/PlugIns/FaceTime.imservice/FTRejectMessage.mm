@interface FTRejectMessage
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (id)requiredKeys;
- (void)dealloc;
@end

@implementation FTRejectMessage

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = FTRejectMessage;
  return [(FTFaceTimeMessage *)&v4 copyWithZone:zone];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FTRejectMessage;
  [(FTFaceTimeMessage *)&v3 dealloc];
}

- (id)requiredKeys
{
  v21.receiver = self;
  v21.super_class = FTRejectMessage;
  requiredKeys = [(FTFaceTimeMessage *)&v21 requiredKeys];
  v7 = objc_msgSend_mutableCopy(requiredKeys, v3, v4, v5, v6);
  objc_msgSend_addObject_(v7, v8, @"peer-id", v9, v10);
  objc_msgSend_addObject_(v7, v11, @"self-push-token", v12, v13);
  objc_msgSend_addObject_(v7, v14, @"peer-push-token", v15, v16);
  objc_msgSend_addObject_(v7, v17, @"reason", v18, v19);
  return v7;
}

- (id)messageBody
{
  v40.receiver = self;
  v40.super_class = FTRejectMessage;
  messageBody = [(FTFaceTimeMessage *)&v40 messageBody];
  v8 = objc_msgSend_mutableCopy(messageBody, v4, v5, v6, v7);
  v13 = objc_msgSend_peerID(self, v9, v10, v11, v12);
  if (v13)
  {
    CFDictionarySetValue(v8, @"peer-id", v13);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBFB54();
  }

  v18 = objc_msgSend_selfPushToken(self, v14, v15, v16, v17);
  if (v18)
  {
    CFDictionarySetValue(v8, @"self-push-token", v18);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBF934();
  }

  v23 = objc_msgSend_peerPushToken(self, v19, v20, v21, v22);
  if (v23)
  {
    CFDictionarySetValue(v8, @"peer-push-token", v23);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBFBDC();
  }

  v28 = MEMORY[0x277CCABB0];
  v29 = objc_msgSend_reason(self, v24, v25, v26, v27);
  v34 = objc_msgSend_intValue(v29, v30, v31, v32, v33);
  v38 = objc_msgSend_numberWithInt_(v28, v35, v34, v36, v37);
  if (v38)
  {
    CFDictionarySetValue(v8, @"reason", v38);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBFFBC();
  }

  return v8;
}

@end