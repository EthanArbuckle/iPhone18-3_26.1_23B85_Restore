@interface ASFReceipt
+ (id)receiptFromBundleAtPath:(id)a3;
+ (id)receiptFromBundleAtURL:(id)a3;
+ (id)receiptWithContentsOfFile:(id)a3;
+ (id)receiptWithData:(id)a3;
- (ASFReceipt)initWithContentsOfFile:(id)a3;
- (ASFReceipt)initWithData:(id)a3;
- (BOOL)isDSIDless;
- (NSString)receiptDataString;
@end

@implementation ASFReceipt

+ (id)receiptFromBundleAtPath:(id)a3
{
  if (a3)
  {
    v3 = [MEMORY[0x277CBEBC0] fileURLWithPath:?];
    v4 = [ASFReceipt receiptFromBundleAtURL:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)receiptFromBundleAtURL:(id)a3
{
  v3 = a3;
  if ([v3 isFileURL])
  {
    v4 = v3;
    objc_opt_self();
    v5 = v4;
    objc_opt_self();
    v14 = 0;
    v6 = [objc_alloc(MEMORY[0x277CC1E70]) initWithURL:v5 allowPlaceholder:0 error:&v14];

    v7 = [v6 dataContainerURL];
    v8 = [v7 URLByAppendingPathComponent:@"StoreKit" isDirectory:1];

    if ([v6 isProfileValidated])
    {
      v9 = @"sandboxReceipt";
    }

    else
    {
      v9 = @"receipt";
    }

    v10 = [v8 URLByAppendingPathComponent:v9 isDirectory:0];

    if (v10)
    {
      v11 = [v10 path];
      v12 = [ASFReceipt receiptWithContentsOfFile:v11];

      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
  }

  v12 = 0;
LABEL_9:

  return v12;
}

+ (id)receiptWithContentsOfFile:(id)a3
{
  v3 = a3;
  v4 = [[ASFReceipt alloc] initWithContentsOfFile:v3];

  return v4;
}

+ (id)receiptWithData:(id)a3
{
  v3 = a3;
  v4 = [[ASFReceipt alloc] initWithData:v3];

  return v4;
}

- (ASFReceipt)initWithContentsOfFile:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!v4 || ![v4 length])
  {
    v6 = 0;
LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  v16 = 0;
  v6 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v5 options:0 error:&v16];
  v7 = v16;
  v8 = v7;
  if (v7)
  {
    v9 = [v7 domain];
    if ([v9 isEqualToString:*MEMORY[0x277CCA050]])
    {
      v10 = [v8 code];

      if (v10 == 260)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

    if (ASFLogHandleForCategory_onceToken != -1)
    {
      dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
    }

    v14 = ASFLogHandleForCategory_logHandles_0;
    if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v18 = v8;
      _os_log_error_impl(&dword_2400E0000, v14, OS_LOG_TYPE_ERROR, "Error reading receipt: %{public}@", buf, 0xCu);
    }
  }

LABEL_16:

  if (!v6)
  {
    goto LABEL_8;
  }

  v11 = [(ASFReceipt *)self initWithData:v6];
  if (!v11)
  {
    goto LABEL_10;
  }

  v15 = v5;
  self = v11->_path;
  v11->_path = v15;
LABEL_9:

LABEL_10:
  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (ASFReceipt)initWithData:(id)a3
{
  v225 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v221.receiver = self;
  v221.super_class = ASFReceipt;
  v5 = [(ASFReceipt *)&v221 init];
  if (!v5)
  {
    goto LABEL_44;
  }

  v6 = objc_opt_new();
  mutableIAPs = v5->_mutableIAPs;
  v5->_mutableIAPs = v6;

  if (![v4 length])
  {
    goto LABEL_28;
  }

  v8 = v4;
  *v224 = 0;
  if (SecCmsDecoderCreate())
  {
    if (!v5->_verbose)
    {
      goto LABEL_22;
    }

    if (ASFLogHandleForCategory_onceToken != -1)
    {
      dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
    }

    v9 = ASFLogHandleForCategory_logHandles_0;
    if (!os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v10 = "Could not create decoder";
LABEL_21:
    _os_log_error_impl(&dword_2400E0000, v9, OS_LOG_TYPE_ERROR, v10, buf, 2u);
LABEL_22:
    if (*v224)
    {
      SecCmsDecoderDestroy();
    }

    v11 = 0;
    goto LABEL_25;
  }

  [v8 bytes];
  [v8 length];
  if (SecCmsDecoderUpdate())
  {
    if (!v5->_verbose)
    {
      goto LABEL_22;
    }

    if (ASFLogHandleForCategory_onceToken != -1)
    {
      dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
    }

    v9 = ASFLogHandleForCategory_logHandles_0;
    if (!os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v10 = "Could not read data";
    goto LABEL_21;
  }

  if (SecCmsDecoderFinish())
  {
    if (!v5->_verbose)
    {
      goto LABEL_22;
    }

    if (ASFLogHandleForCategory_onceToken != -1)
    {
      dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
    }

    v9 = ASFLogHandleForCategory_logHandles_0;
    if (!os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v10 = "Could not parse data";
    goto LABEL_21;
  }

  v23 = MEMORY[0x245CB8B50](0);
  if (!v23 || !*v23)
  {
    if (v5->_verbose)
    {
      if (ASFLogHandleForCategory_onceToken != -1)
      {
        dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
      }

      v176 = ASFLogHandleForCategory_logHandles_0;
      if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_DEFAULT))
      {
        *v224 = 0;
        _os_log_impl(&dword_2400E0000, v176, OS_LOG_TYPE_DEFAULT, "No content", v224, 2u);
      }
    }

    goto LABEL_232;
  }

  v24 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v23[1] length:*v23];
  v25 = 0x280FB5000uLL;
  v26 = [ASFAsn1Token readTokenFromBuffer:v24 length:0];
  v27 = v26;
  if (!v26 || v26[2] != 17)
  {
    if (v5->_verbose)
    {
      if (ASFLogHandleForCategory_onceToken != -1)
      {
        dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
      }

      v179 = ASFLogHandleForCategory_logHandles_0;
      if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_ERROR))
      {
        *v224 = 0;
        _os_log_error_impl(&dword_2400E0000, v179, OS_LOG_TYPE_ERROR, "Failed to parse data", v224, 2u);
      }
    }

LABEL_232:
    v11 = 0;
    goto LABEL_233;
  }

  v28 = v26;
  if (v5->_verbose)
  {
    if (ASFLogHandleForCategory_onceToken != -1)
    {
      dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
    }

    v29 = ASFLogHandleForCategory_logHandles_0;
    if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_DEFAULT))
    {
      *v224 = 0;
      _os_log_impl(&dword_2400E0000, v29, OS_LOG_TYPE_DEFAULT, "Parsing receipt", v224, 2u);
    }
  }

  v30 = [(ASFAsn1SetToken *)v28 nextToken];
  if (v30)
  {
    v31 = 0x280FB5000uLL;
    do
    {
      context = objc_autoreleasePoolPush();
      v33 = objc_getProperty(v30, v32, 24, 1);
      v34 = [(ASFAsn1ReceiptToken *)v31 + 1304 readFromBuffer:v33];

      if (v34)
      {
        switch(v34[1])
        {
          case 0:
            v36 = [(ASFAsn1ReceiptIAPToken *)v34 stringValue];
            receiptType = v5->_receiptType;
            v5->_receiptType = v36;

            if (v5->_verbose)
            {
              if (ASFLogHandleForCategory_onceToken != -1)
              {
                dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
              }

              v38 = ASFLogHandleForCategory_logHandles_0;
              if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_DEFAULT))
              {
                v39 = v5->_receiptType;
                *v224 = 138543362;
                *&v224[4] = v39;
                v40 = v38;
                v41 = "Receipt type: %{public}@";
                goto LABEL_199;
              }
            }

            break;
          case 1:
            v86 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:-[ASFAsn1ReceiptIAPToken integerValue](v34)];
            itemID = v5->_itemID;
            v5->_itemID = v86;

            if (v5->_verbose)
            {
              if (ASFLogHandleForCategory_onceToken != -1)
              {
                dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
              }

              v88 = ASFLogHandleForCategory_logHandles_0;
              if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_DEFAULT))
              {
                v89 = v5->_itemID;
                *v224 = 138543362;
                *&v224[4] = v89;
                v40 = v88;
                v41 = "AdamID: %{public}@";
                goto LABEL_199;
              }
            }

            break;
          case 2:
            v65 = objc_getProperty(v34, v35, 24, 1);
            v67 = v65;
            if (v65)
            {
              Property = objc_getProperty(v65, v66, 24, 1);
            }

            else
            {
              Property = 0;
            }

            objc_storeStrong(&v5->_bundleIDData, Property);

            v69 = [(ASFAsn1ReceiptIAPToken *)v34 stringValue];
            bundleID = v5->_bundleID;
            v5->_bundleID = v69;

            if (v5->_verbose)
            {
              if (ASFLogHandleForCategory_onceToken != -1)
              {
                dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
              }

              v71 = ASFLogHandleForCategory_logHandles_0;
              if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_DEFAULT))
              {
                v72 = v5->_bundleID;
                *v224 = 138543362;
                *&v224[4] = v72;
                v40 = v71;
                v41 = "BundleID: %{public}@";
                goto LABEL_199;
              }
            }

            break;
          case 3:
            v126 = [(ASFAsn1ReceiptIAPToken *)v34 stringValue];
            bundleVersion = v5->_bundleVersion;
            v5->_bundleVersion = v126;

            if (v5->_verbose)
            {
              if (ASFLogHandleForCategory_onceToken != -1)
              {
                dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
              }

              v128 = ASFLogHandleForCategory_logHandles_0;
              if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_DEFAULT))
              {
                v129 = v5->_bundleVersion;
                *v224 = 138543362;
                *&v224[4] = v129;
                v40 = v128;
                v41 = "Application version: %{public}@";
                goto LABEL_199;
              }
            }

            break;
          case 4:
            if ([(ASFAsn1ReceiptToken *)v34 contentIsAnInteger])
            {
              v131 = objc_getProperty(v34, v130, 24, 1);
              v133 = v131;
              if (v131)
              {
                v131 = objc_getProperty(v131, v132, 24, 1);
              }

              v134 = v131;
              v135 = [v134 length];

              if (v135)
              {
                v136 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:-[ASFAsn1ReceiptIAPToken integerValue](v34)];
                v137 = [v136 stringValue];
                opaqueDSIDString = v5->_opaqueDSIDString;
                v5->_opaqueDSIDString = v137;

LABEL_193:
                goto LABEL_194;
              }
            }

            v158 = objc_getProperty(v34, v130, 24, 1);
            v160 = v158;
            if (v158)
            {
              v158 = objc_getProperty(v158, v159, 24, 1);
            }

            v161 = v158;
            v162 = [v161 length];

            if (v162)
            {
              v164 = objc_getProperty(v34, v163, 24, 1);
              v166 = v164;
              if (v164)
              {
                v167 = objc_getProperty(v164, v165, 24, 1);
              }

              else
              {
                v167 = 0;
              }

              objc_storeStrong(&v5->_opaqueDSIDData, v167);

              v168 = [(NSData *)v5->_opaqueDSIDData base64EncodedStringWithOptions:0];
              v136 = v5->_opaqueDSIDString;
              v5->_opaqueDSIDString = v168;
              goto LABEL_193;
            }

LABEL_194:
            v31 = 0x280FB5000;
            if (v5->_verbose)
            {
              if (ASFLogHandleForCategory_onceToken != -1)
              {
                dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
              }

              v169 = ASFLogHandleForCategory_logHandles_0;
              if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_DEFAULT))
              {
                v170 = v5->_opaqueDSIDString;
                *v224 = 138543362;
                *&v224[4] = v170;
                v40 = v169;
                v41 = "DSID: %{public}@";
                goto LABEL_199;
              }
            }

            break;
          case 5:
            v73 = objc_getProperty(v34, v35, 24, 1);
            v75 = v73;
            if (v73)
            {
              v73 = objc_getProperty(v73, v74, 24, 1);
            }

            v76 = v73;

            sha1 = v5->_sha1;
            v5->_sha1 = v76;

            if (v5->_verbose)
            {
              if (ASFLogHandleForCategory_onceToken != -1)
              {
                dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
              }

              v78 = ASFLogHandleForCategory_logHandles_0;
              if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_DEFAULT))
              {
                v79 = v5->_sha1;
                v80 = v78;
                v81 = [(NSData *)v79 base64EncodedStringWithOptions:0];
                *v224 = 138543362;
                *&v224[4] = v81;
                _os_log_impl(&dword_2400E0000, v80, OS_LOG_TYPE_DEFAULT, "SHA1: %{public}@", v224, 0xCu);
              }
            }

            break;
          case 8:
            v90 = [(ASFAsn1ReceiptIAPToken *)v34 stringValue];
            v91 = _readStringDate(v90);
            purchaseDate = v5->_purchaseDate;
            v5->_purchaseDate = v91;

            if (v5->_verbose)
            {
              if (ASFLogHandleForCategory_onceToken != -1)
              {
                dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
              }

              v93 = ASFLogHandleForCategory_logHandles_0;
              if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_DEFAULT))
              {
                v94 = v5->_purchaseDate;
                *v224 = 138543362;
                *&v224[4] = v94;
                v40 = v93;
                v41 = "Transaction date: %{public}@";
                goto LABEL_199;
              }
            }

            break;
          case 9:
            v95 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:-[ASFAsn1ReceiptIAPToken integerValue](v34)];
            frToolVersion = v5->_frToolVersion;
            v5->_frToolVersion = v95;

            if (v5->_verbose)
            {
              if (ASFLogHandleForCategory_onceToken != -1)
              {
                dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
              }

              v97 = ASFLogHandleForCategory_logHandles_0;
              if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_DEFAULT))
              {
                v98 = v5->_frToolVersion;
                *v224 = 138543362;
                *&v224[4] = v98;
                v40 = v97;
                v41 = "FR tool version: %{public}@";
                goto LABEL_199;
              }
            }

            break;
          case 0xALL:
            v144 = [(ASFAsn1ReceiptIAPToken *)v34 stringValue];
            parentalControls = v5->_parentalControls;
            v5->_parentalControls = v144;

            if (v5->_verbose)
            {
              if (ASFLogHandleForCategory_onceToken != -1)
              {
                dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
              }

              v146 = ASFLogHandleForCategory_logHandles_0;
              if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_DEFAULT))
              {
                v147 = v5->_parentalControls;
                *v224 = 138543362;
                *&v224[4] = v147;
                v40 = v146;
                v41 = "Parental controls: %{public}@";
                goto LABEL_199;
              }
            }

            break;
          case 0xBLL:
            v139 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:-[ASFAsn1ReceiptIAPToken integerValue](v34)];
            v140 = [v139 stringValue];
            developerID = v5->_developerID;
            v5->_developerID = v140;

            if (v5->_verbose)
            {
              if (ASFLogHandleForCategory_onceToken != -1)
              {
                dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
              }

              v142 = ASFLogHandleForCategory_logHandles_0;
              if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_DEFAULT))
              {
                v143 = v5->_developerID;
                *v224 = 138543362;
                *&v224[4] = v143;
                v40 = v142;
                v41 = "DeveloperID: %{public}@";
                goto LABEL_199;
              }
            }

            break;
          case 0xCLL:
            v51 = [(ASFAsn1ReceiptIAPToken *)v34 stringValue];
            v52 = _readStringDate(v51);
            creationDate = v5->_creationDate;
            v5->_creationDate = v52;

            if (v5->_verbose)
            {
              if (ASFLogHandleForCategory_onceToken != -1)
              {
                dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
              }

              v54 = ASFLogHandleForCategory_logHandles_0;
              if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_DEFAULT))
              {
                v55 = v5->_creationDate;
                *v224 = 138543362;
                *&v224[4] = v55;
                v40 = v54;
                v41 = "Receipt created: %{public}@";
                goto LABEL_199;
              }
            }

            break;
          case 0xDLL:
            v82 = [(ASFAsn1ReceiptIAPToken *)v34 stringValue];
            frAppVersion = v5->_frAppVersion;
            v5->_frAppVersion = v82;

            if (v5->_verbose)
            {
              if (ASFLogHandleForCategory_onceToken != -1)
              {
                dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
              }

              v84 = ASFLogHandleForCategory_logHandles_0;
              if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_DEFAULT))
              {
                v85 = v5->_frAppVersion;
                *v224 = 138543362;
                *&v224[4] = v85;
                v40 = v84;
                v41 = "FR app version: %{public}@";
                goto LABEL_199;
              }
            }

            break;
          case 0xELL:
            v56 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:-[ASFAsn1ReceiptIAPToken integerValue](v34)];
            v57 = [v56 stringValue];
            hwtype = v5->_hwtype;
            v5->_hwtype = v57;

            if (v5->_verbose)
            {
              if (ASFLogHandleForCategory_onceToken != -1)
              {
                dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
              }

              v59 = ASFLogHandleForCategory_logHandles_0;
              if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_DEFAULT))
              {
                v60 = v5->_hwtype;
                *v224 = 138543362;
                *&v224[4] = v60;
                v40 = v59;
                v41 = "HW type: %{public}@";
                goto LABEL_199;
              }
            }

            break;
          case 0xFLL:
            v46 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:-[ASFAsn1ReceiptIAPToken integerValue](v34)];
            v47 = [v46 stringValue];
            downloadID = v5->_downloadID;
            v5->_downloadID = v47;

            if (v5->_verbose)
            {
              if (ASFLogHandleForCategory_onceToken != -1)
              {
                dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
              }

              v49 = ASFLogHandleForCategory_logHandles_0;
              if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_DEFAULT))
              {
                v50 = v5->_downloadID;
                *v224 = 138543362;
                *&v224[4] = v50;
                v40 = v49;
                v41 = "DownloadID: %{public}@";
                goto LABEL_199;
              }
            }

            break;
          case 0x10:
            v99 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:-[ASFAsn1ReceiptIAPToken integerValue](v34)];
            v100 = [v99 stringValue];
            installerVersionID = v5->_installerVersionID;
            v5->_installerVersionID = v100;

            if (v5->_verbose)
            {
              if (ASFLogHandleForCategory_onceToken != -1)
              {
                dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
              }

              v102 = ASFLogHandleForCategory_logHandles_0;
              if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_DEFAULT))
              {
                v103 = v5->_installerVersionID;
                *v224 = 138543362;
                *&v224[4] = v103;
                v40 = v102;
                v41 = "Installer versionID: %{public}@";
                goto LABEL_199;
              }
            }

            break;
          case 0x11:
            v104 = objc_getProperty(v34, v35, 24, 1);
            v106 = v104;
            if (v104)
            {
              v104 = objc_getProperty(v104, v105, 24, 1);
            }

            v107 = v104;

            v108 = v107;
            if (v108)
            {
              v109 = [(ASFAsn1Token *)v25 + 1224 readTokenFromBuffer:v108 length:0];
              if (v109 && v109[2] == 17)
              {
                v215 = v108;
                v216 = v28;
                v217 = v24;
                v214 = v109;
                v110 = v109;
                v111 = objc_opt_new();
                v219 = v110;
                v112 = [(ASFAsn1SetToken *)v110 nextToken];
                if (v112)
                {
                  do
                  {
                    v113 = objc_autoreleasePoolPush();
                    v115 = objc_getProperty(v112, v114, 24, 1);
                    v116 = [ASFAsn1ReceiptIAPToken readFromBuffer:v115];

                    if (v116)
                    {
                      v117 = v116[1];
                      if (v117 > 1703)
                      {
                        switch(v117)
                        {
                          case 1704:
                            v124 = [(ASFAsn1ReceiptIAPToken *)v116 stringValue];
                            v119 = _readStringDate(v124);

                            if (!v111)
                            {
                              goto LABEL_154;
                            }

                            v120 = v111;
                            v121 = v119;
                            v122 = 24;
                            goto LABEL_153;
                          case 1705:
                            v119 = [(ASFAsn1ReceiptIAPToken *)v116 stringValue];
                            if (!v111)
                            {
                              goto LABEL_154;
                            }

                            v120 = v111;
                            v121 = v119;
                            v122 = 16;
                            goto LABEL_153;
                          case 1706:
                            v123 = [(ASFAsn1ReceiptIAPToken *)v116 stringValue];
                            v119 = _readStringDate(v123);

                            if (v111)
                            {
                              v120 = v111;
                              v121 = v119;
                              v122 = 8;
                              goto LABEL_153;
                            }

LABEL_154:

                            break;
                        }
                      }

                      else
                      {
                        switch(v117)
                        {
                          case 1701:
                            v119 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:-[ASFAsn1ReceiptIAPToken integerValue](v116)];
                            if (!v111)
                            {
                              goto LABEL_154;
                            }

                            v120 = v111;
                            v121 = v119;
                            v122 = 40;
LABEL_153:
                            objc_setProperty_atomic_copy(v120, v118, v121, v122);
                            goto LABEL_154;
                          case 1702:
                            v119 = [(ASFAsn1ReceiptIAPToken *)v116 stringValue];
                            if (!v111)
                            {
                              goto LABEL_154;
                            }

                            v120 = v111;
                            v121 = v119;
                            v122 = 32;
                            goto LABEL_153;
                          case 1703:
                            v119 = [(ASFAsn1ReceiptIAPToken *)v116 stringValue];
                            if (v111)
                            {
                              v120 = v111;
                              v121 = v119;
                              v122 = 48;
                              goto LABEL_153;
                            }

                            goto LABEL_154;
                        }
                      }
                    }

                    objc_autoreleasePoolPop(v113);
                    v125 = [(ASFAsn1SetToken *)v219 nextToken];

                    v112 = v125;
                  }

                  while (v125);
                }

                v28 = v216;
                v24 = v217;
                v25 = 0x280FB5000;
                v109 = v214;
                v108 = v215;
              }

              else if (v5->_verbose)
              {
                v218 = v24;
                v173 = v25;
                v174 = v109;
                if (ASFLogHandleForCategory_onceToken != -1)
                {
                  dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
                }

                v175 = ASFLogHandleForCategory_logHandles_0;
                if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_ERROR))
                {
                  *v224 = 0;
                  _os_log_error_impl(&dword_2400E0000, v175, OS_LOG_TYPE_ERROR, "Failed to parse data", v224, 2u);
                }

                v111 = 0;
                v109 = v174;
                v25 = v173;
                v24 = v218;
              }

              else
              {
                v111 = 0;
              }

              if (v111)
              {
                [(NSMutableArray *)v5->_mutableIAPs addObject:v111];

                goto LABEL_217;
              }
            }

            else if (v5->_verbose)
            {
              if (ASFLogHandleForCategory_onceToken != -1)
              {
                dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
              }

              v172 = ASFLogHandleForCategory_logHandles_0;
              if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_ERROR))
              {
                *v224 = 0;
                _os_log_error_impl(&dword_2400E0000, v172, OS_LOG_TYPE_ERROR, "Failed to load data", v224, 2u);
              }
            }

            NSLog(&cfstr_DecodeIapsFail.isa, v214, v215, v216);
LABEL_217:
            v31 = 0x280FB5000;

            break;
          case 0x15:
            v153 = [(ASFAsn1ReceiptIAPToken *)v34 stringValue];
            v154 = _readStringDate(v153);
            expirationDate = v5->_expirationDate;
            v5->_expirationDate = v154;

            if (v5->_verbose)
            {
              if (ASFLogHandleForCategory_onceToken != -1)
              {
                dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
              }

              v156 = ASFLogHandleForCategory_logHandles_0;
              if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_DEFAULT))
              {
                v157 = v5->_expirationDate;
                *v224 = 138543362;
                *&v224[4] = v157;
                v40 = v156;
                v41 = "Receipt expires: %{public}@";
                goto LABEL_199;
              }
            }

            break;
          case 0x16:
            v148 = [(ASFAsn1ReceiptIAPToken *)v34 stringValue];
            v149 = _readStringDate(v148);
            renewalDate = v5->_renewalDate;
            v5->_renewalDate = v149;

            if (v5->_verbose)
            {
              if (ASFLogHandleForCategory_onceToken != -1)
              {
                dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
              }

              v151 = ASFLogHandleForCategory_logHandles_0;
              if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_DEFAULT))
              {
                v152 = v5->_renewalDate;
                *v224 = 138543362;
                *&v224[4] = v152;
                v40 = v151;
                v41 = "Receipt renewal: %{public}@";
                goto LABEL_199;
              }
            }

            break;
          case 0x17:
            v42 = [(ASFAsn1ReceiptIAPToken *)v34 stringValue];
            organizationDisplayName = v5->_organizationDisplayName;
            v5->_organizationDisplayName = v42;

            if (v5->_verbose)
            {
              if (ASFLogHandleForCategory_onceToken != -1)
              {
                dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
              }

              v44 = ASFLogHandleForCategory_logHandles_0;
              if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_DEFAULT))
              {
                v45 = v5->_organizationDisplayName;
                *v224 = 138543362;
                *&v224[4] = v45;
                v40 = v44;
                v41 = "Organization display name: %{public}@";
                goto LABEL_199;
              }
            }

            break;
          case 0x18:
            v61 = [(ASFAsn1ReceiptIAPToken *)v34 stringValue];
            cancellationReason = v5->_cancellationReason;
            v5->_cancellationReason = v61;

            if (v5->_verbose)
            {
              if (ASFLogHandleForCategory_onceToken != -1)
              {
                dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
              }

              v63 = ASFLogHandleForCategory_logHandles_0;
              if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_DEFAULT))
              {
                v64 = v5->_cancellationReason;
                *v224 = 138543362;
                *&v224[4] = v64;
                v40 = v63;
                v41 = "Cancellation reason: %{public}@";
LABEL_199:
                _os_log_impl(&dword_2400E0000, v40, OS_LOG_TYPE_DEFAULT, v41, v224, 0xCu);
              }
            }

            break;
          default:
            break;
        }
      }

      objc_autoreleasePoolPop(context);
      v171 = [(ASFAsn1SetToken *)v28 nextToken];

      v30 = v171;
    }

    while (v171);
  }

  v180 = SecCmsMessageContentLevelCount();
  if (v180 >= 1)
  {
    v181 = v180;
    for (i = 0; i != v181; ++i)
    {
      SecCmsMessageContentLevel();
      if (SecCmsContentInfoGetContentTypeTag() == 26 && SecCmsContentInfoGetContent())
      {
        break;
      }
    }
  }

  v183 = v5->_creationDate;
  *buf = 0;
  CertificateList = SecCmsSignedDataGetCertificateList();
  if (!CertificateList)
  {
    goto LABEL_254;
  }

  v185 = CertificateList;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  v187 = *v185;
  if (*v185)
  {
    v188 = v185 + 1;
    do
    {
      v189 = CFDataCreate(0, *(v187 + 8), *v187);
      if (v189)
      {
        v190 = v189;
        v191 = SecCertificateCreateWithData(0, v189);
        if (v191)
        {
          v192 = v191;
          CFArrayAppendValue(Mutable, v191);
          CFRelease(v192);
        }

        CFRelease(v190);
      }

      v193 = *v188++;
      v187 = v193;
    }

    while (v193);
  }

  if (!Mutable)
  {
LABEL_254:
    if (v5->_verbose)
    {
      if (ASFLogHandleForCategory_onceToken != -1)
      {
        dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
      }

      v196 = ASFLogHandleForCategory_logHandles_0;
      if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_ERROR))
      {
        *v224 = 0;
        _os_log_error_impl(&dword_2400E0000, v196, OS_LOG_TYPE_ERROR, "Could not read certificates", v224, 2u);
      }
    }

    v11 = 0;
    goto LABEL_284;
  }

  if (SecTrustCreateWithCertificates(Mutable, 0, buf))
  {
    if (v5->_verbose)
    {
      if (ASFLogHandleForCategory_onceToken != -1)
      {
        dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
      }

      v194 = ASFLogHandleForCategory_logHandles_0;
      if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_ERROR))
      {
        *v224 = 0;
        v195 = "Could not create trust";
LABEL_302:
        _os_log_error_impl(&dword_2400E0000, v194, OS_LOG_TYPE_ERROR, v195, v224, 2u);
      }
    }

    goto LABEL_282;
  }

  v197 = *buf;
  v198 = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 3, MEMORY[0x277CBF128]);
  v199 = *MEMORY[0x277CDC4C8];
  v200 = *MEMORY[0x277CDC4D0];
  v201 = 1;
  do
  {
    v202 = v201;
    v203 = SecPolicyCreateWithProperties(v199, 0);
    if (!v203)
    {
      v204 = CFDictionaryCreateMutable(0, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!v204)
      {
        goto LABEL_277;
      }

      goto LABEL_266;
    }

    CFArrayAppendValue(v198, v203);
    CFRelease(v203);
    v201 = 0;
    v199 = v200;
  }

  while ((v202 & 1) != 0);
  v204 = CFDictionaryCreateMutable(0, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v204)
  {
LABEL_266:
    v205 = v204;
    v206 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{3, v214, v215, v216}];
    CFDictionaryAddValue(v205, *MEMORY[0x277CDC4E8], v206);
    v207 = SecPolicyCreateWithProperties(*MEMORY[0x277CDC4C0], v205);
    if (v207)
    {
      v208 = v207;
      CFArrayAppendValue(v198, v207);
      CFRelease(v208);
      CFRelease(v205);

      if (v203)
      {
        goto LABEL_268;
      }
    }

    else
    {
      CFRelease(v205);
    }

LABEL_277:
    CFRelease(v198);
    goto LABEL_278;
  }

LABEL_268:
  v209 = SecTrustSetPolicies(v197, v198);
  CFRelease(v198);
  if (!v209)
  {
    if (v183 && SecTrustSetVerifyDate(*buf, v183))
    {
      if (v5->_verbose)
      {
        if (ASFLogHandleForCategory_onceToken != -1)
        {
          dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
        }

        v194 = ASFLogHandleForCategory_logHandles_0;
        if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_ERROR))
        {
          *v224 = 0;
          v195 = "Could not set verification date";
          goto LABEL_302;
        }
      }
    }

    else
    {
      error = 0;
      v210 = SecTrustEvaluateWithError(*buf, &error);
      v211 = error;
      if (error)
      {
        if (v5->_verbose)
        {
          if (ASFLogHandleForCategory_onceToken != -1)
          {
            dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
          }

          v212 = ASFLogHandleForCategory_logHandles_0;
          if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_DEFAULT))
          {
            *v224 = 138543362;
            *&v224[4] = error;
            _os_log_impl(&dword_2400E0000, v212, OS_LOG_TYPE_DEFAULT, "Error evaluating trust: %{public}@", v224, 0xCu);
          }

          v211 = error;
        }

        CFRelease(v211);
      }

      if (v210)
      {
        v11 = error == 0;
        goto LABEL_283;
      }

      if (v5->_verbose)
      {
        v213 = ASFLogHandleForCategory();
        if (os_log_type_enabled(v213, OS_LOG_TYPE_ERROR))
        {
          *v224 = 0;
          _os_log_error_impl(&dword_2400E0000, v213, OS_LOG_TYPE_ERROR, "Failed to evaluate trust", v224, 2u);
        }
      }
    }

    goto LABEL_282;
  }

LABEL_278:
  if (v5->_verbose)
  {
    if (ASFLogHandleForCategory_onceToken != -1)
    {
      dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
    }

    v194 = ASFLogHandleForCategory_logHandles_0;
    if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_ERROR))
    {
      *v224 = 0;
      v195 = "Failed to update policies";
      goto LABEL_302;
    }
  }

LABEL_282:
  v11 = 0;
LABEL_283:
  CFRelease(Mutable);
LABEL_284:
  if (*buf)
  {
    CFRelease(*buf);
  }

LABEL_233:
  SecCmsMessageDestroy();
LABEL_25:
  if ([(NSMutableArray *)v5->_mutableIAPs count:v214])
  {
    v12 = [(NSMutableArray *)v5->_mutableIAPs copy];
    iaps = v5->_iaps;
    v5->_iaps = v12;
  }

  if (!v11)
  {
LABEL_28:
    if ([(NSString *)v5->_receiptType hasSuffix:@"Stub"])
    {
      if (ASFLogHandleForCategory_onceToken != -1)
      {
        dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
      }

      v14 = ASFLogHandleForCategory_logHandles_0;
      if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_ERROR))
      {
        v15 = v14;
        v16 = [v4 length];
        *v224 = 134217984;
        *&v224[4] = v16;
        v17 = "Allowing invalid receipt because it is a stub receipt [%{iec-bytes}ld]";
        goto LABEL_38;
      }
    }

    else if ([(NSString *)v5->_receiptType isEqualToString:@"Xcode"])
    {
      if (ASFLogHandleForCategory_onceToken != -1)
      {
        dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
      }

      v18 = ASFLogHandleForCategory_logHandles_0;
      if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_ERROR))
      {
        v15 = v18;
        v19 = [v4 length];
        *v224 = 134217984;
        *&v224[4] = v19;
        v17 = "Allowing invalid receipt because it is an StoreKit testing receipt [%{iec-bytes}ld]";
LABEL_38:
        _os_log_error_impl(&dword_2400E0000, v15, OS_LOG_TYPE_ERROR, v17, v224, 0xCu);
      }
    }

    else
    {
      if (ASFLogHandleForCategory_onceToken != -1)
      {
        dispatch_once(&ASFLogHandleForCategory_onceToken, &__block_literal_global);
      }

      v20 = ASFLogHandleForCategory_logHandles_0;
      if (os_log_type_enabled(ASFLogHandleForCategory_logHandles_0, OS_LOG_TYPE_ERROR))
      {
        v177 = v20;
        v178 = [v4 length];
        *v224 = 134217984;
        *&v224[4] = v178;
        _os_log_error_impl(&dword_2400E0000, v177, OS_LOG_TYPE_ERROR, "Invalid receipt [%{iec-bytes}ld]", v224, 0xCu);
      }

      v5 = 0;
    }
  }

LABEL_44:

  v21 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isDSIDless
{
  downloadID = self->_downloadID;
  if (!downloadID || (LODWORD(v4) = [(NSString *)downloadID isEqualToString:@"0"], v4))
  {
    v4 = [(NSString *)self->_opaqueDSIDString length];
    if (v4)
    {
      if ([(NSString *)self->_opaqueDSIDString isEqualToString:@"0"])
      {
        LOBYTE(v4) = 0;
      }

      else
      {
        LOBYTE(v4) = ![(NSString *)self->_receiptType isEqualToString:@"ProductionSandbox"];
      }
    }
  }

  return v4;
}

- (NSString)receiptDataString
{
  v2 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:self->_path];
  v3 = [v2 base64EncodedStringWithOptions:0];

  return v3;
}

@end