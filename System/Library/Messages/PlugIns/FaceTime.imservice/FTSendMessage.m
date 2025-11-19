@interface FTSendMessage
- (id)copyWithZone:(_NSZone *)a3;
- (id)messageBody;
- (id)requiredKeys;
- (void)dealloc;
@end

@implementation FTSendMessage

- (id)copyWithZone:(_NSZone *)a3
{
  v30.receiver = self;
  v30.super_class = FTSendMessage;
  v4 = [(FTFaceTimeMessage *)&v30 copyWithZone:a3];
  v9 = objc_msgSend_peers(self, v5, v6, v7, v8);
  objc_msgSend_setPeers_(v4, v10, v9, v11, v12);
  v17 = objc_msgSend_reason(self, v13, v14, v15, v16);
  objc_msgSend_setReason_(v4, v18, v17, v19, v20);
  v25 = objc_msgSend_selfPushToken(self, v21, v22, v23, v24);
  objc_msgSend_setSelfPushToken_(v4, v26, v25, v27, v28);
  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FTSendMessage;
  [(FTFaceTimeMessage *)&v3 dealloc];
}

- (id)requiredKeys
{
  v18.receiver = self;
  v18.super_class = FTSendMessage;
  v2 = [(FTFaceTimeMessage *)&v18 requiredKeys];
  v10 = objc_msgSend_mutableCopy(v2, v3, v4, v5, v6);
  if (!v10)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  objc_msgSend_addObject_(v10, v7, @"reason", v8, v9);
  objc_msgSend_addObject_(v10, v11, @"peers", v12, v13);
  objc_msgSend_addObject_(v10, v14, @"self-push-token", v15, v16);
  return v10;
}

- (id)messageBody
{
  v35.receiver = self;
  v35.super_class = FTSendMessage;
  v3 = [(FTFaceTimeMessage *)&v35 messageBody];
  v8 = objc_msgSend_mutableCopy(v3, v4, v5, v6, v7);
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
    sub_23BCBFFBC();
  }

  v28 = objc_msgSend_peers(self, v24, v25, v26, v27);
  if (v28)
  {
    CFDictionarySetValue(v8, @"peers", v28);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBFF34();
  }

  v33 = objc_msgSend_selfPushToken(self, v29, v30, v31, v32);
  if (v33)
  {
    CFDictionarySetValue(v8, @"self-push-token", v33);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBF934();
  }

  return v8;
}

@end