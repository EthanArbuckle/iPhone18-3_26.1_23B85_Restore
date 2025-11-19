@interface FTFaceTimeMessage
- (BOOL)hasRequiredKeys:(id *)a3;
- (BOOL)isValidMessage;
- (FTFaceTimeMessage)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)messageBody;
- (void)dealloc;
@end

@implementation FTFaceTimeMessage

- (FTFaceTimeMessage)init
{
  v9.receiver = self;
  v9.super_class = FTFaceTimeMessage;
  v2 = [(FTIDSMessage *)&v9 init];
  v7 = v2;
  if (v2)
  {
    objc_msgSend_setTimeout_(v2, v3, v4, v5, v6, 40.0);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v14.receiver = self;
  v14.super_class = FTFaceTimeMessage;
  v4 = [(FTIDSMessage *)&v14 copyWithZone:a3];
  v9 = objc_msgSend_sessionToken(self, v5, v6, v7, v8);
  objc_msgSend_setSessionToken_(v4, v10, v9, v11, v12);
  return v4;
}

- (void)dealloc
{
  objc_msgSend_setSessionToken_(self, a2, 0, v2, v3);
  v5.receiver = self;
  v5.super_class = FTFaceTimeMessage;
  [(FTIDSMessage *)&v5 dealloc];
}

- (BOOL)hasRequiredKeys:(id *)a3
{
  v6 = objc_msgSend_selfURI(self, a2, a3, v3, v4);
  v11 = objc_msgSend_length(v6, v7, v8, v9, v10);
  if (!v11)
  {
    v12 = IMLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_23BCBF854(v12);
      if (!a3)
      {
        return v11 != 0;
      }

      goto LABEL_4;
    }

    if (a3)
    {
LABEL_4:
      *a3 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEA60], v13, @"self URI", v14, v15);
    }
  }

  return v11 != 0;
}

- (BOOL)isValidMessage
{
  v10 = objc_msgSend_sessionToken(self, a2, v2, v3, v4);
  if (!qword_27E1C36E0)
  {
    qword_27E1C36E0 = objc_msgSend__FTDataFromHexString(@"0c0c0e0ececece", v6, v7, v8, v9);
  }

  v11 = objc_msgSend_length(v10, v6, v7, v8, v9);
  if (v11 > objc_msgSend_length(qword_27E1C36E0, v12, v13, v14, v15) && qword_27E1C36E0 != 0)
  {
    v21 = objc_msgSend_length(qword_27E1C36E0, v16, v17, v18, v19);
    v24 = objc_msgSend_subdataWithRange_(v10, v22, 0, v21, v23);
    if (objc_msgSend_isEqualToData_(v24, v25, qword_27E1C36E0, v26, v27))
    {
      return 0;
    }
  }

  v29.receiver = self;
  v29.super_class = FTFaceTimeMessage;
  return [(IDSBaseMessage *)&v29 isValidMessage];
}

- (id)messageBody
{
  v15.receiver = self;
  v15.super_class = FTFaceTimeMessage;
  v3 = [(IDSBaseMessage *)&v15 messageBody];
  v12 = objc_msgSend_mutableCopy(v3, v4, v5, v6, v7);
  if (!v12)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v13 = objc_msgSend_sessionToken(self, v8, v9, v10, v11);
  if (v13)
  {
    CFDictionarySetValue(v12, @"session-token", v13);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    sub_23BCBF898();
  }

  return v12;
}

@end