@interface AMPAppleCardArtwork
+ (id)cardIcon;
+ (id)cardIconString;
@end

@implementation AMPAppleCardArtwork

+ (id)cardIcon
{
  v33 = *MEMORY[0x277D85DE8];
  if (cardIcon_onceToken != -1)
  {
    +[AMPAppleCardArtwork cardIcon];
  }

  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    v4 = shouldLog | 2;
  }

  else
  {
    v4 = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v4 &= 2u;
  }

  if (v4)
  {
    LODWORD(v29) = 138543362;
    *(&v29 + 4) = objc_opt_class();
    v6 = *(&v29 + 4);
    LODWORD(v24) = 12;
    v23 = &v29;
    v7 = _os_log_send_and_compose_impl();

    if (v7)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithCString:v7 encoding:{4, &v29, v24}];
      free(v7);
      v23 = v8;
      SSFileLog();
    }
  }

  else
  {
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x2050000000;
  v9 = getPKVirtualCardClass_softClass;
  v28 = getPKVirtualCardClass_softClass;
  if (!getPKVirtualCardClass_softClass)
  {
    *&v29 = MEMORY[0x277D85DD0];
    *(&v29 + 1) = 3221225472;
    v30 = __getPKVirtualCardClass_block_invoke;
    v31 = &unk_278BC1F78;
    v32 = &v25;
    __getPKVirtualCardClass_block_invoke(&v29);
    v9 = v26[3];
  }

  v10 = v9;
  _Block_object_dispose(&v25, 8);
  v11 = objc_alloc_init(v9);
  v12 = v11;
  if (v11)
  {
    cardIcon = [v11 cardIcon];
    goto LABEL_30;
  }

  mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38]2)
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
  if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
  {
    v16 = shouldLog2 | 2;
  }

  else
  {
    v16 = shouldLog2;
  }

  oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
  if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
  {
    v16 &= 2u;
  }

  if (!v16)
  {
    goto LABEL_28;
  }

  v18 = objc_opt_class();
  LODWORD(v29) = 138543362;
  *(&v29 + 4) = v18;
  v19 = v18;
  LODWORD(v24) = 12;
  v20 = _os_log_send_and_compose_impl();

  if (v20)
  {
    oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v20 encoding:{4, &v29, v24, v25}];
    free(v20);
    SSFileLog();
LABEL_28:
  }

  cardIcon = 0;
LABEL_30:

  v21 = *MEMORY[0x277D85DE8];

  return cardIcon;
}

void __31__AMPAppleCardArtwork_cardIcon__block_invoke()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!PassKitUIFoundationLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __PassKitUIFoundationLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_278BC20B8;
    v4 = 0;
    PassKitUIFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
    v0 = v2[0];
    if (PassKitUIFoundationLibraryCore_frameworkLibrary)
    {
      if (!v2[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v0 = abort_report_np();
    }

    free(v0);
  }

LABEL_4:
  v1 = *MEMORY[0x277D85DE8];
}

+ (id)cardIconString
{
  v17 = *MEMORY[0x277D85DE8];
  cardIcon = [self cardIcon];
  v3 = UIImagePNGRepresentation(cardIcon);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 base64EncodedStringWithOptions:1];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"data:image/pngbase64, %@", v5];;

    goto LABEL_15;
  }

  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    v9 = shouldLog | 2;
  }

  else
  {
    v9 = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v9 &= 2u;
  }

  if (!v9)
  {
    goto LABEL_13;
  }

  LODWORD(v16) = 138543362;
  *(&v16 + 4) = objc_opt_class();
  v11 = *(&v16 + 4);
  LODWORD(v15) = 12;
  v12 = _os_log_send_and_compose_impl();

  if (v12)
  {
    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v12 encoding:{4, &v16, v15, v16}];
    free(v12);
    SSFileLog();
LABEL_13:
  }

  v6 = 0;
LABEL_15:

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

@end