@interface AMPCardMetadataRegistration
+ (id)_cardArtworkForPaymentPass:(id)pass width:(double)width;
+ (id)_passesForPassTypeIdentifier:(id)identifier serialNumber:(id)number;
+ (id)metadataForPassTypeIdentifier:(id)identifier serialNumber:(id)number size:(id)size;
@end

@implementation AMPCardMetadataRegistration

+ (id)metadataForPassTypeIdentifier:(id)identifier serialNumber:(id)number size:(id)size
{
  v35 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  numberCopy = number;
  sizeCopy = size;
  v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = [self _passesForPassTypeIdentifier:identifierCopy serialNumber:numberCopy];
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    shouldLog |= 2u;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v14 = shouldLog;
  }

  else
  {
    v14 = shouldLog & 2;
  }

  if (v14)
  {
    v15 = objc_opt_class();
    v16 = MEMORY[0x277CCABB0];
    v17 = v15;
    [v16 numberWithUnsignedInteger:{objc_msgSend(v10, "count")}];
    *location = 138543618;
    *&location[4] = v15;
    v34 = v33 = 2114;
    LODWORD(v25) = 22;
    v18 = _os_log_send_and_compose_impl();

    if (v18)
    {
      v19 = [MEMORY[0x277CCACA8] stringWithCString:v18 encoding:{4, location, v25}];
      free(v18);
      SSFileLog();
    }
  }

  else
  {
  }

  objc_initWeak(location, self);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __79__AMPCardMetadataRegistration_metadataForPassTypeIdentifier_serialNumber_size___block_invoke;
  v28[3] = &unk_278BC2098;
  objc_copyWeak(&v31, location);
  v20 = sizeCopy;
  v29 = v20;
  v21 = v26;
  v30 = v21;
  [v10 enumerateObjectsUsingBlock:v28];
  v22 = [v21 copy];

  objc_destroyWeak(&v31);
  objc_destroyWeak(location);

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

void __79__AMPCardMetadataRegistration_metadataForPassTypeIdentifier_serialNumber_size___block_invoke(id *a1, void *a2)
{
  v73 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = objc_alloc_init(MEMORY[0x277CEE448]);
  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = __Block_byref_object_copy_;
  v69 = __Block_byref_object_dispose_;
  v70 = 0;
  [a1[4] floatValue];
  if (v6 > 0.0)
  {
    v7 = v6;
    block = MEMORY[0x277D85DD0];
    v58 = 3221225472;
    v59 = __79__AMPCardMetadataRegistration_metadataForPassTypeIdentifier_serialNumber_size___block_invoke_20;
    v60 = &unk_278BC2070;
    v63 = &v65;
    v61 = WeakRetained;
    v62 = v3;
    v64 = v7;
    dispatch_sync(MEMORY[0x277D85CD0], &block);
    v8 = v66[5];
    if (v8)
    {
      v9 = [v8 base64EncodedStringWithOptions:1];
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"data:image/pngbase64, %@", v9];;
      [v5 setCardArtwork:v10];
    }

    else
    {
      v9 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
      if (!v9)
      {
        v9 = [MEMORY[0x277D69B38] sharedConfig];
      }

      v41 = [v9 shouldLog];
      v42 = [v9 shouldLogToDisk];
      v43 = [v9 OSLogObject];
      v10 = v43;
      if (v42)
      {
        v41 |= 2u;
      }

      if (!os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v41 &= 2u;
      }

      if (v41)
      {
        v44 = objc_opt_class();
        v71 = 138543362;
        v72 = v44;
        v45 = v44;
        LODWORD(v56) = 12;
        v55 = &v71;
        v46 = _os_log_send_and_compose_impl();

        if (!v46)
        {
          goto LABEL_5;
        }

        v10 = [MEMORY[0x277CCACA8] stringWithCString:v46 encoding:{4, &v71, v56, block, v58, v59, v60, v61}];
        free(v46);
        v55 = v10;
        SSFileLog();
      }
    }

LABEL_5:
    goto LABEL_17;
  }

  v11 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v11)
  {
    v11 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v12 = [v11 shouldLog];
  v13 = [v11 shouldLogToDisk];
  v14 = [v11 OSLogObject];
  v15 = v14;
  if (v13)
  {
    v12 |= 2u;
  }

  if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v12 &= 2u;
  }

  if (!v12)
  {
    goto LABEL_15;
  }

  v16 = objc_opt_class();
  v71 = 138543362;
  v72 = v16;
  v17 = v16;
  LODWORD(v56) = 12;
  v55 = &v71;
  v18 = _os_log_send_and_compose_impl();

  if (v18)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithCString:v18 encoding:{4, &v71, v56}];
    free(v18);
    v55 = v15;
    SSFileLog();
LABEL_15:
  }

LABEL_17:
  v19 = [v3 localizedDescription];
  [v5 setDescriptionShort:v19];

  v20 = [v3 serialNumber];
  [v5 setSerialNumber:v20];

  getPKPaymentPassClass();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 setSuffix:{objc_msgSend(v3, "performSelector:withObject:", sel_primaryAccountNumberSuffix, 0)}];
  }

  v21 = [v3 paymentPass];
  v22 = [v21 associatedAccountServiceAccountIdentifier];
  v23 = v22 == 0;

  if (!v23)
  {
    v24 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v24)
    {
      v24 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v25 = [v24 shouldLog];
    v26 = [v24 shouldLogToDisk];
    v27 = [v24 OSLogObject];
    v28 = v27;
    if (v26)
    {
      v25 |= 2u;
    }

    if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v25 &= 2u;
    }

    if (v25)
    {
      v29 = objc_opt_class();
      v71 = 138543362;
      v72 = v29;
      v30 = v29;
      LODWORD(v56) = 12;
      v31 = _os_log_send_and_compose_impl();

      if (!v31)
      {
        v32 = 2;
        goto LABEL_61;
      }

      v28 = [MEMORY[0x277CCACA8] stringWithCString:v31 encoding:{4, &v71, v56}];
      free(v31);
      SSFileLog();
    }

    v32 = 2;
    goto LABEL_60;
  }

  v33 = [v3 paymentPass];
  v34 = [v33 hasAssociatedPeerPaymentAccount];

  if (v34)
  {
    v24 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!v24)
    {
      v24 = [MEMORY[0x277D69B38] sharedConfig];
    }

    v35 = [v24 shouldLog];
    v36 = [v24 shouldLogToDisk];
    v37 = [v24 OSLogObject];
    v28 = v37;
    if (v36)
    {
      v35 |= 2u;
    }

    if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v35 &= 2u;
    }

    if (v35)
    {
      v38 = objc_opt_class();
      v71 = 138543362;
      v72 = v38;
      v39 = v38;
      LODWORD(v56) = 12;
      v40 = _os_log_send_and_compose_impl();

      if (!v40)
      {
        v32 = 1;
        goto LABEL_61;
      }

      v28 = [MEMORY[0x277CCACA8] stringWithCString:v40 encoding:{4, &v71, v56}];
      free(v40);
      SSFileLog();
    }

    v32 = 1;
    goto LABEL_60;
  }

  v24 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!v24)
  {
    v24 = [MEMORY[0x277D69B38] sharedConfig];
  }

  v47 = [v24 shouldLog];
  v48 = [v24 shouldLogToDisk];
  v49 = [v24 OSLogObject];
  v28 = v49;
  if (v48)
  {
    v47 |= 2u;
  }

  if (!os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    v47 &= 2u;
  }

  if (!v47)
  {
LABEL_59:
    v32 = 0;
LABEL_60:

    goto LABEL_61;
  }

  v50 = objc_opt_class();
  v71 = 138543362;
  v72 = v50;
  v51 = v50;
  LODWORD(v56) = 12;
  v32 = _os_log_send_and_compose_impl();

  if (v32)
  {
    v28 = [MEMORY[0x277CCACA8] stringWithCString:v32 encoding:{4, &v71, v56}];
    free(v32);
    SSFileLog();
    goto LABEL_59;
  }

LABEL_61:

  [v5 setCardType:v32];
  v52 = [v3 paymentPass];
  v53 = [v52 devicePrimaryInAppPaymentApplication];
  [v5 setPaymentNetwork:{objc_msgSend(v53, "paymentNetworkIdentifier")}];

  [a1[5] addObject:v5];
  _Block_object_dispose(&v65, 8);

  v54 = *MEMORY[0x277D85DE8];
}

uint64_t __79__AMPCardMetadataRegistration_metadataForPassTypeIdentifier_serialNumber_size___block_invoke_20(uint64_t a1)
{
  v2 = [*(a1 + 32) _cardArtworkForPaymentPass:*(a1 + 40) width:*(a1 + 56)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

+ (id)_cardArtworkForPaymentPass:(id)pass width:(double)width
{
  v19 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  if (_cardArtworkForPaymentPass_width__onceToken != -1)
  {
    +[AMPCardMetadataRegistration _cardArtworkForPaymentPass:width:];
  }

  v6 = [passCopy cardImageWithDimensions:{width, width}];
  v7 = v6;
  if (v6)
  {
    v8 = UIImagePNGRepresentation(v6);
    goto LABEL_17;
  }

  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog = [mEMORY[0x277D69B38] shouldLog];
  if ([mEMORY[0x277D69B38] shouldLogToDisk])
  {
    v11 = shouldLog | 2;
  }

  else
  {
    v11 = shouldLog;
  }

  oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v11 &= 2u;
  }

  if (!v11)
  {
    goto LABEL_15;
  }

  LODWORD(v18) = 138543362;
  *(&v18 + 4) = objc_opt_class();
  v13 = *(&v18 + 4);
  LODWORD(v17) = 12;
  v14 = _os_log_send_and_compose_impl();

  if (v14)
  {
    oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v14 encoding:{4, &v18, v17, v18}];
    free(v14);
    SSFileLog();
LABEL_15:
  }

  v8 = 0;
LABEL_17:

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

void __64__AMPCardMetadataRegistration__cardArtworkForPaymentPass_width___block_invoke()
{
  if (PassKitUILibrary_sOnce != -1)
  {
    __64__AMPCardMetadataRegistration__cardArtworkForPaymentPass_width___block_invoke_cold_1();
  }
}

+ (id)_passesForPassTypeIdentifier:(id)identifier serialNumber:(id)number
{
  v38 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  numberCopy = number;
  v7 = objc_alloc_init(getPKPassLibraryClass());
  mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
  mEMORY[0x277D69B38]2 = mEMORY[0x277D69B38];
  if (!identifierCopy || !numberCopy)
  {
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38]2 shouldLog];
    if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
    {
      v19 = shouldLog | 2;
    }

    else
    {
      v19 = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38]2 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v19 &= 2u;
    }

    if (v19)
    {
      v36 = 138543362;
      v37 = objc_opt_class();
      v21 = v37;
      LODWORD(v34) = 12;
      v33 = &v36;
      v22 = _os_log_send_and_compose_impl();

      if (!v22)
      {
LABEL_27:

        v17 = [v7 passesOfType:1];
        goto LABEL_41;
      }

      oSLogObject = [MEMORY[0x277CCACA8] stringWithCString:v22 encoding:{4, &v36, v34}];
      free(v22);
      v33 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_27;
  }

  if (!mEMORY[0x277D69B38])
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
  }

  shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
  if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
  {
    v11 = shouldLog2 | 2;
  }

  else
  {
    v11 = shouldLog2;
  }

  oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
  if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v11 &= 2u;
  }

  if (v11)
  {
    v36 = 138543362;
    v37 = objc_opt_class();
    v13 = v37;
    LODWORD(v34) = 12;
    v33 = &v36;
    v14 = _os_log_send_and_compose_impl();

    if (!v14)
    {
      goto LABEL_14;
    }

    oSLogObject2 = [MEMORY[0x277CCACA8] stringWithCString:v14 encoding:{4, &v36, v34}];
    free(v14);
    v33 = oSLogObject2;
    SSFileLog();
  }

LABEL_14:
  v15 = [v7 passWithPassTypeIdentifier:identifierCopy serialNumber:numberCopy];
  v16 = v15;
  if (!v15)
  {
    mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]3)
    {
      mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog3 = [mEMORY[0x277D69B38]3 shouldLog];
    if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
    {
      v25 = shouldLog3 | 2;
    }

    else
    {
      v25 = shouldLog3;
    }

    oSLogObject3 = [mEMORY[0x277D69B38]3 OSLogObject];
    if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
    {
      v25 &= 2u;
    }

    if (v25)
    {
      v27 = objc_opt_class();
      v36 = 138543362;
      v37 = v27;
      v28 = v27;
      LODWORD(v34) = 12;
      v33 = &v36;
      v29 = _os_log_send_and_compose_impl();

      if (!v29)
      {
LABEL_39:

        v17 = 0;
        goto LABEL_40;
      }

      oSLogObject3 = [MEMORY[0x277CCACA8] stringWithCString:v29 encoding:{4, &v36, v34}];
      free(v29);
      v33 = oSLogObject3;
      SSFileLog();
    }

    goto LABEL_39;
  }

  v35 = v15;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
LABEL_40:

LABEL_41:
  v30 = [v17 copy];

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

@end