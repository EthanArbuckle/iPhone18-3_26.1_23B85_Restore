@interface CLSUtil
+ (BOOL)isAppleInternalInstall;
+ (BOOL)isSystemIntegrityEnabled;
+ (id)dataFromError:(id)a3;
+ (id)dataFromPath:(id)a3 makeBackwardCompatible:(BOOL)a4 error:(id *)a5;
+ (id)dictionaryStrippingNSNullValues:(id)a3;
+ (id)errorFromData:(id)a3;
+ (id)hashArrayOfStrings:(id)a3 lastHash:(id)a4;
+ (id)hashData:(id)a3 lastHash:(id)a4;
+ (id)hashData:(id)a3 lastHashData:(id)a4;
+ (id)mediumDateFormatter;
+ (id)mediumStringFromDate:(id)a3;
+ (id)pathFromData:(id)a3;
+ (id)percentNumberFormatter;
+ (id)percentageStringFromNumber:(id)a3;
+ (id)stringFromTimeInterval:(double)a3;
+ (void)fetchInfoForAppWithBundleIdentifier:(id)a3 completion:(id)a4;
+ (void)postNotification:(char *)a3;
+ (void)postNotificationAsync:(char *)a3;
@end

@implementation CLSUtil

+ (BOOL)isAppleInternalInstall
{
  if (qword_280B2A510 != -1)
  {
    dispatch_once(&qword_280B2A510, &unk_284A079C8);
  }

  return byte_280B2A508;
}

+ (BOOL)isSystemIntegrityEnabled
{
  if (qword_27DE90730 != -1)
  {
    dispatch_once(&qword_27DE90730, &unk_284A080C8);
  }

  return byte_27DE90598;
}

+ (id)percentageStringFromNumber:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v7 = objc_msgSend_percentNumberFormatter(a1, v5, v6);
    v9 = objc_msgSend_stringFromNumber_(v7, v8, v4);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)percentNumberFormatter
{
  v3 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], a2, v2);
  v6 = objc_msgSend_threadDictionary(v3, v4, v5);
  v8 = objc_msgSend_objectForKeyedSubscript_(v6, v7, @"kCLSUtilPercentNumberFormatter");

  if (!v8)
  {
    v8 = objc_alloc_init(MEMORY[0x277CCABB8]);
    objc_msgSend_setNumberStyle_(v8, v9, 3);
    objc_msgSend_setUsesGroupingSeparator_(v8, v10, 0);
    v13 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], v11, v12);
    v16 = objc_msgSend_threadDictionary(v13, v14, v15);
    objc_msgSend_setObject_forKeyedSubscript_(v16, v17, v8, @"kCLSUtilPercentNumberFormatter");
  }

  return v8;
}

+ (id)mediumStringFromDate:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_mediumDateFormatter(a1, v5, v6);
  v9 = objc_msgSend_stringFromDate_(v7, v8, v4);

  return v9;
}

+ (id)stringFromTimeInterval:(double)a3
{
  if (qword_280B2A520 != -1)
  {
    dispatch_once(&qword_280B2A520, &unk_284A080E8);
  }

  v4 = qword_280B2A518;

  return MEMORY[0x2821F9670](v4, sel_stringFromTimeInterval_, v3);
}

+ (id)mediumDateFormatter
{
  if (qword_280B2A530 != -1)
  {
    dispatch_once(&qword_280B2A530, &unk_284A08108);
  }

  v3 = qword_280B2A528;

  return v3;
}

+ (id)dataFromPath:(id)a3 makeBackwardCompatible:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v7 = a3;
  if (!objc_msgSend_count(v7, v8, v9))
  {
    v18 = 0;
    goto LABEL_19;
  }

  v11 = objc_msgSend_validatedContextIdentifierPathFromPath_(CLSContext, v10, v7);

  v30 = 0;
  v13 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x277CCAAB0], v12, v11, 1, &v30);
  v14 = v30;
  if (!v14)
  {
    if (v6)
    {
      v28 = 0;
      v29 = 0;
      v19 = objc_msgSend_propertyListWithData_options_format_error_(MEMORY[0x277CCAC58], v15, v13, 0, &v29, &v28);
      v20 = v28;
      if (v20)
      {
        v16 = v20;
        objc_msgSend_cls_debug_(v20, v21, CLSLogDefault);
        if (a5)
        {
          v22 = v16;
          *a5 = v16;
        }

        goto LABEL_11;
      }

      v27 = 0;
      v23 = objc_msgSend_dataWithPropertyList_format_options_error_(MEMORY[0x277CCAC58], v21, v19, v29, 0, &v27);
      v16 = v27;

      if (v16)
      {
        objc_msgSend_cls_debug_(v16, v24, CLSLogDefault);
        if (a5)
        {
          v25 = v16;
          *a5 = v16;
        }
      }

      v13 = v23;
    }

    else
    {
      v16 = 0;
    }

    v13 = v13;
    v18 = v13;
    goto LABEL_18;
  }

  v16 = v14;
  objc_msgSend_cls_debug_(v14, v15, CLSLogDefault);
  if (!a5)
  {
LABEL_11:
    v18 = 0;
    goto LABEL_18;
  }

  v17 = v16;
  v18 = 0;
  *a5 = v16;
LABEL_18:

  v7 = v11;
LABEL_19:

  return v18;
}

+ (id)pathFromData:(id)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = MEMORY[0x277CCAAC8];
    v4 = MEMORY[0x277CBEB98];
    v5 = a3;
    v14[0] = objc_opt_class();
    v14[1] = objc_opt_class();
    v7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v6, v14, 2);
    v9 = objc_msgSend_setWithArray_(v4, v8, v7);
    v11 = objc_msgSend_cls_secureUnarchiveObjectOfClasses_withData_(v3, v10, v9, v5);
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)dataFromError:(id)a3
{
  if (a3)
  {
    v9 = 0;
    v3 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x277CCAAB0], a2, a3, 1, &v9);
    v4 = v9;
    v6 = v4;
    if (v4)
    {
      objc_msgSend_cls_debug_(v4, v5, CLSLogDefault);
      v7 = 0;
    }

    else
    {
      v7 = v3;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)errorFromData:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x277CCAAC8];
    v4 = a3;
    v5 = objc_opt_class();
    v7 = objc_msgSend_cls_secureUnarchiveObjectOfClass_withData_(v3, v6, v5, v4);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)hashData:(id)a3 lastHash:(id)a4
{
  v6 = a3;
  v8 = objc_msgSend_dataUsingEncoding_(a4, v7, 4);
  v10 = objc_msgSend_hashData_lastHashData_(a1, v9, v6, v8);

  return v10;
}

+ (id)hashData:(id)a3 lastHashData:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  memset(&c, 0, sizeof(c));
  CC_SHA224_Init(&c);
  v7 = v5;
  v10 = objc_msgSend_bytes(v7, v8, v9);
  v13 = objc_msgSend_length(v5, v11, v12);
  CC_SHA224_Update(&c, v10, v13);
  if (v6)
  {
    v14 = v6;
    v17 = objc_msgSend_bytes(v14, v15, v16);
    v20 = objc_msgSend_length(v6, v18, v19);
    CC_SHA224_Update(&c, v17, v20);
  }

  CC_SHA224_Final(md, &c);
  v22 = objc_alloc_init(MEMORY[0x277CCAB68]);
  for (i = 0; i != 28; ++i)
  {
    objc_msgSend_appendFormat_(v22, v21, @"%02x", md[i]);
  }

  v25 = objc_msgSend_copy(v22, v21, v24);

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

+ (id)hashArrayOfStrings:(id)a3 lastHash:(id)a4
{
  v5 = a3;
  v10 = objc_msgSend_firstObject(v5, v6, v7);
  if (v10)
  {
    v11 = objc_msgSend_count(v5, v8, v9);
    v13 = objc_msgSend_dataUsingEncoding_(v10, v12, 4);
    v15 = objc_msgSend_hashData_lastHash_(a1, v14, v13, 0);

    if (v11 < 2)
    {
      v22 = v15;
    }

    else
    {
      for (i = 1; i != v11; ++i)
      {
        v18 = objc_msgSend_objectAtIndex_(v5, v16, i);
        v20 = objc_msgSend_dataUsingEncoding_(v18, v19, 4);
        v22 = objc_msgSend_hashData_lastHash_(a1, v21, v20, v15);

        v15 = v22;
      }
    }
  }

  else
  {
    v23 = objc_msgSend_data(MEMORY[0x277CBEA90], v8, v9);
    v22 = objc_msgSend_hashData_lastHash_(a1, v24, v23, 0);
  }

  return v22;
}

+ (id)dictionaryStrippingNSNullValues:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v5 = v3;
  if (v3)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v23, v27, 16);
    v9 = v5;
    if (v6)
    {
      v10 = v6;
      v11 = 0;
      v12 = *v24;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v5);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          v15 = objc_msgSend_null(MEMORY[0x277CBEB68], v7, v8);
          v17 = objc_msgSend_objectForKeyedSubscript_(v5, v16, v14);
          isEqual = objc_msgSend_isEqual_(v15, v18, v17);

          if (isEqual)
          {
            if (!v11)
            {
              v11 = objc_msgSend_mutableCopy(v5, v7, v8);
            }

            objc_msgSend_setObject_forKeyedSubscript_(v11, v7, 0, v14);
          }
        }

        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v23, v27, 16);
      }

      while (v10);
      v9 = v5;
      if (v11)
      {
        if (objc_msgSend_count(v11, v7, v8))
        {
          v9 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x277CBEAC0], v20, v11);
        }

        else
        {
          v9 = 0;
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (void)postNotification:(char *)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = notify_post(a3);
  if (qword_280B2A720 != -1)
  {
    dispatch_once(&qword_280B2A720, &unk_284A07B28);
  }

  v5 = CLSLogDefault;
  if (v4)
  {
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = a3;
      _os_log_error_impl(&dword_236F71000, v5, OS_LOG_TYPE_ERROR, "Notification post failed: '%s'", &v7, 0xCu);
    }
  }

  else if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = a3;
    _os_log_impl(&dword_236F71000, v5, OS_LOG_TYPE_INFO, "Notification posted: '%s'", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)postNotificationAsync:(char *)a3
{
  v4 = clsNotificationQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_236FD2230;
  block[3] = &unk_278A17960;
  block[4] = a3;
  dispatch_async(v4, block);
}

+ (void)fetchInfoForAppWithBundleIdentifier:(id)a3 completion:(id)a4
{
  v27 = a3;
  v5 = a4;
  v6 = objc_autoreleasePoolPush();
  if (objc_msgSend_length(v27, v7, v8))
  {
    v9 = objc_alloc(MEMORY[0x277CC1E70]);
    v11 = objc_msgSend_initWithBundleIdentifier_allowPlaceholder_error_(v9, v10, v27, 0, 0);
    v14 = v11;
    if (v11)
    {
      v15 = objc_msgSend_localizedName(v11, v12, v13);
      v18 = objc_msgSend_teamIdentifier(v14, v16, v17);
      v21 = objc_msgSend_iTunesMetadata(v14, v19, v20);
      v24 = objc_msgSend_storeItemIdentifier(v21, v22, v23);
      if (v24)
      {
        v26 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v25, @"%lld", v24);
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      v26 = 0;
      v18 = 0;
      v15 = 0;
    }
  }

  else
  {
    v26 = 0;
    v18 = 0;
    v15 = 0;
  }

  v5[2](v5, v15, v26, v18);

  objc_autoreleasePoolPop(v6);
}

@end