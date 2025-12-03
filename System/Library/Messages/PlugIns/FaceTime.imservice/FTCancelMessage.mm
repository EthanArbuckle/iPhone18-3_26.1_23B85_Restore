@interface FTCancelMessage
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (id)requiredKeys;
- (void)dealloc;
@end

@implementation FTCancelMessage

- (id)copyWithZone:(_NSZone *)zone
{
  v22.receiver = self;
  v22.super_class = FTCancelMessage;
  v4 = [(FTFaceTimeMessage *)&v22 copyWithZone:zone];
  v9 = objc_msgSend_peers(self, v5, v6, v7, v8);
  objc_msgSend_setPeers_(v4, v10, v9, v11, v12);
  v17 = objc_msgSend_reason(self, v13, v14, v15, v16);
  objc_msgSend_setReason_(v4, v18, v17, v19, v20);
  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FTCancelMessage;
  [(FTFaceTimeMessage *)&v3 dealloc];
}

- (id)requiredKeys
{
  v15.receiver = self;
  v15.super_class = FTCancelMessage;
  requiredKeys = [(FTFaceTimeMessage *)&v15 requiredKeys];
  v10 = objc_msgSend_mutableCopy(requiredKeys, v3, v4, v5, v6);
  if (!v10)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  objc_msgSend_addObject_(v10, v7, @"reason", v8, v9);
  objc_msgSend_addObject_(v10, v11, @"peers", v12, v13);
  return v10;
}

- (id)messageBody
{
  v30.receiver = self;
  v30.super_class = FTCancelMessage;
  messageBody = [(FTFaceTimeMessage *)&v30 messageBody];
  v8 = objc_msgSend_mutableCopy(messageBody, v4, v5, v6, v7);
  v9 = MEMORY[0x277CCABB0];
  v14 = objc_msgSend_reason(self, v10, v11, v12, v13);
  v19 = objc_msgSend_intValue(v14, v15, v16, v17, v18);
  v23 = objc_msgSend_numberWithInt_(v9, v20, v19, v21, v22);
  if (v23)
  {
    CFDictionarySetValue(v8, @"reason", v23);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBFDFC();
  }

  v28 = objc_msgSend_peers(self, v24, v25, v26, v27);
  if (v28)
  {
    CFDictionarySetValue(v8, @"peers", v28);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBFE98();
  }

  return v8;
}

@end