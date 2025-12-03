@interface RepairInputs
- (BOOL)validateAndInitializeParameters:(id)parameters;
- (BOOL)validateUpdateProperties:(id)properties;
@end

@implementation RepairInputs

- (BOOL)validateAndInitializeParameters:(id)parameters
{
  parametersCopy = parameters;
  v110 = 0;
  v6 = [parametersCopy NSStringFromKey:@"CAURL" defaultValue:@"https://gg.apple.com" failed:&v110];
  FDRCAURL = self->FDRCAURL;
  self->FDRCAURL = v6;

  v8 = handleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->FDRCAURL;
    *buf = 138412290;
    v112 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "FDR CA URL: %@", buf, 0xCu);
  }

  v10 = [NSURL URLWithString:self->FDRCAURL];
  v11 = v10;
  if (v10)
  {
    scheme = [v10 scheme];
    v13 = [scheme caseInsensitiveCompare:@"http"];
    if (v13 || ([v11 scheme], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "caseInsensitiveCompare:", @"https")))
    {
      host = [v11 host];

      if (!v13)
      {
      }

      if (host)
      {
        goto LABEL_14;
      }
    }

    else
    {
    }
  }

  v15 = handleForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_1000030B0();
  }

  v110 = 1;
LABEL_14:
  v16 = [parametersCopy NSStringFromKey:@"TrustObjectURL" defaultValue:@"http://gg.apple.com/fdrtrustobject" failed:&v110];
  trustObjectURL = self->trustObjectURL;
  self->trustObjectURL = v16;

  v18 = handleForCategory();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = self->trustObjectURL;
    *buf = 138412290;
    v112 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "FDR Trust Object URL: %@", buf, 0xCu);
  }

  v20 = [NSURL URLWithString:self->trustObjectURL];

  if (!v20)
  {
    goto LABEL_20;
  }

  scheme2 = [v20 scheme];
  if ([scheme2 caseInsensitiveCompare:@"http"])
  {

    goto LABEL_23;
  }

  scheme3 = [v20 scheme];
  v23 = [scheme3 caseInsensitiveCompare:@"https"];

  if (!v23)
  {
LABEL_20:
    v24 = handleForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_1000030E4();
    }

    v110 = 1;
  }

LABEL_23:
  v25 = [parametersCopy NSStringFromKey:@"DSURL" defaultValue:@"https://skl.apple.com" failed:&v110];
  FDRDSURL = self->FDRDSURL;
  self->FDRDSURL = v25;

  v27 = handleForCategory();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = self->FDRDSURL;
    *buf = 138412290;
    v112 = v28;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "FDR DS URL: %@", buf, 0xCu);
  }

  v29 = [NSURL URLWithString:self->FDRDSURL];

  if (!v29)
  {
    goto LABEL_29;
  }

  scheme4 = [v29 scheme];
  if (![scheme4 caseInsensitiveCompare:@"http"])
  {
    scheme5 = [v29 scheme];
    v32 = [scheme5 caseInsensitiveCompare:@"https"];

    if (v32)
    {
      goto LABEL_32;
    }

LABEL_29:
    v33 = handleForCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_100003118();
    }

    v110 = 1;
    goto LABEL_32;
  }

LABEL_32:
  v34 = [parametersCopy NSStringFromKey:@"SealingURL" defaultValue:@"https://ig.apple.com" failed:&v110];
  FDRSealingURL = self->FDRSealingURL;
  self->FDRSealingURL = v34;

  v36 = handleForCategory();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v37 = self->FDRSealingURL;
    *buf = 138412290;
    v112 = v37;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "FDR Sealing URL: %@", buf, 0xCu);
  }

  v38 = [NSURL URLWithString:self->FDRSealingURL];

  if (!v38)
  {
    goto LABEL_38;
  }

  scheme6 = [v38 scheme];
  if ([scheme6 caseInsensitiveCompare:@"http"])
  {

    goto LABEL_41;
  }

  scheme7 = [v38 scheme];
  v41 = [scheme7 caseInsensitiveCompare:@"https"];

  if (!v41)
  {
LABEL_38:
    v42 = handleForCategory();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      sub_10000314C();
    }

    v110 = 1;
  }

LABEL_41:
  v43 = [parametersCopy NSStringFromRequiredKey:@"partSPC" maxLength:128 failed:&v110];
  v44 = handleForCategory();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v112 = v43;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "partSPC is %@", buf, 0xCu);
  }

  if ([v43 length] <= 2)
  {
    v45 = handleForCategory();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      sub_100003180(v43);
    }

    v110 = 1;
  }

  v46 = [NSMutableCharacterSet characterSetWithCharactersInString:@", "];
  v47 = [v43 stringByTrimmingCharactersInSet:v46];
  v48 = [v47 componentsSeparatedByString:{@", "}];
  v49 = [NSMutableSet setWithArray:v48];
  partSPC = self->partSPC;
  self->partSPC = v49;

  if (![(NSMutableSet *)self->partSPC count])
  {
    v51 = handleForCategory();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      sub_1000031FC(&self->partSPC);
    }

    v110 = 1;
  }

  self->doSeal = [parametersCopy BOOLFromKey:@"doSeal" defaultValue:1 failed:&v110];
  v52 = handleForCategory();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    if (self->doSeal)
    {
      v53 = @"YES";
    }

    else
    {
      v53 = @"NO";
    }

    *buf = 138412290;
    v112 = v53;
    _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Do seal: %@", buf, 0xCu);
  }

  self->enableProxy = [parametersCopy BOOLFromKey:@"enableProxy" defaultValue:0 failed:&v110];
  v54 = handleForCategory();
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
  {
    if (self->enableProxy)
    {
      v55 = @"YES";
    }

    else
    {
      v55 = @"NO";
    }

    *buf = 138412290;
    v112 = v55;
    _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Enable Proxy : %@", buf, 0xCu);
  }

  v56 = [parametersCopy NSNumberFromKey:@"timeoutPeriod" lowerBound:&off_1000089B8 upperBound:&off_1000089D0 defaultValue:&off_1000089E8 failed:&v110];
  timeoutPeriod = self->timeoutPeriod;
  self->timeoutPeriod = v56;

  v58 = handleForCategory();
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    v59 = self->timeoutPeriod;
    *buf = 138412290;
    v112 = v59;
    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Timeout period : %@ s", buf, 0xCu);
  }

  v60 = objc_opt_new();
  v61 = [parametersCopy NSDictionaryFromKey:@"updateProperties" defaultValue:v60 failed:&v110];
  updateProperties = self->updateProperties;
  self->updateProperties = v61;

  v63 = handleForCategory();
  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
  {
    v64 = self->updateProperties;
    *buf = 138412290;
    v112 = v64;
    _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "UpdateProperties:%@", buf, 0xCu);
  }

  if (![(RepairInputs *)self validateUpdateProperties:self->updateProperties])
  {
    v65 = handleForCategory();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      sub_10000327C();
    }

    v110 = 1;
  }

  v66 = [parametersCopy NSStringFromKey:@"KBBSerialNumber" defaultValue:0 failed:0];
  KBBSerialNumber = self->KBBSerialNumber;
  self->KBBSerialNumber = v66;

  v68 = handleForCategory();
  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
  {
    v69 = self->KBBSerialNumber;
    *buf = 138412290;
    v112 = v69;
    _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "KBBSerialNumber is %@", buf, 0xCu);
  }

  v70 = [parametersCopy NSStringFromKey:@"KGBSerialNumber" defaultValue:0 failed:0];
  KGBSerialNumber = self->KGBSerialNumber;
  self->KGBSerialNumber = v70;

  v72 = handleForCategory();
  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
  {
    v73 = self->KGBSerialNumber;
    *buf = 138412290;
    v112 = v73;
    _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "KGBSerialNumber is %@", buf, 0xCu);
  }

  v74 = [parametersCopy NSStringFromKey:@"MountPath" defaultValue:0 failed:0];
  mountPath = self->mountPath;
  self->mountPath = v74;

  v76 = handleForCategory();
  if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
  {
    v77 = self->mountPath;
    *buf = 138412290;
    v112 = v77;
    _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "PDI mountPath is %@", buf, 0xCu);
  }

  v78 = [parametersCopy NSNumberFromKey:@"displayMaxDuration" lowerBound:&off_100008A00 upperBound:&off_100008A18 defaultValue:&off_100008A30 failed:&v110];
  displayMaxDuration = self->displayMaxDuration;
  self->displayMaxDuration = v78;

  v80 = handleForCategory();
  if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
  {
    v81 = self->displayMaxDuration;
    *buf = 138412290;
    v112 = v81;
    _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "Display max duration : %@ days", buf, 0xCu);
  }

  v82 = [NSSet setWithObject:objc_opt_class()];
  v83 = [parametersCopy NSArrayFromKey:@"patchItems" types:v82 maxLength:32 defaultValue:0 failed:&v110];
  patchItems = self->patchItems;
  self->patchItems = v83;

  v85 = handleForCategory();
  if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
  {
    v86 = self->patchItems;
    *buf = 138412290;
    v112 = v86;
    _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "patchItems is %@", buf, 0xCu);
  }

  v87 = [parametersCopy NSStringFromKey:@"SOCKSHost" defaultValue:0 failed:&v110];
  SOCKSHost = self->SOCKSHost;
  self->SOCKSHost = v87;

  v89 = [parametersCopy NSNumberFromKey:@"SOCKSPort" lowerBound:&off_100008A48 upperBound:&off_100008A60 defaultValue:0 failed:&v110];
  SOCKSPort = self->SOCKSPort;
  self->SOCKSPort = v89;

  v91 = handleForCategory();
  if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
  {
    v92 = self->SOCKSHost;
    v93 = self->SOCKSPort;
    *buf = 138412546;
    v112 = v92;
    v113 = 2112;
    v114 = v93;
    _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "SOCKS Host: %@, SOCKS Port: %@", buf, 0x16u);
  }

  self->enableStagedSeal = [parametersCopy BOOLFromKey:@"enableStagedSeal" defaultValue:0 failed:0];
  v94 = handleForCategory();
  if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
  {
    if (self->enableStagedSeal)
    {
      v95 = @"YES";
    }

    else
    {
      v95 = @"NO";
    }

    *buf = 138412290;
    v112 = v95;
    _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "enableStagedSeal is %@", buf, 0xCu);
  }

  self->ignoreStagedData = [parametersCopy BOOLFromKey:@"ignoreStagedData" defaultValue:0 failed:0];
  v96 = handleForCategory();
  if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
  {
    if (self->ignoreStagedData)
    {
      v97 = @"YES";
    }

    else
    {
      v97 = @"NO";
    }

    *buf = 138412290;
    v112 = v97;
    _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "ignoreStagedData is %@", buf, 0xCu);
  }

  self->skipStageEAN = [parametersCopy BOOLFromKey:@"skipStageEAN" defaultValue:0 failed:0];
  v98 = handleForCategory();
  if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
  {
    if (self->skipStageEAN)
    {
      v99 = @"YES";
    }

    else
    {
      v99 = @"NO";
    }

    *buf = 138412290;
    v112 = v99;
    _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "skipStageEAN is %@", buf, 0xCu);
  }

  v100 = [parametersCopy NSStringFromKey:@"keyBlob" defaultValue:0 failed:0];
  keyBlob = self->keyBlob;
  self->keyBlob = v100;

  v102 = handleForCategory();
  if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
  {
    if (self->keyBlob)
    {
      v103 = @"YES";
    }

    else
    {
      v103 = @"NO";
    }

    *buf = 138412290;
    v112 = v103;
    _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "Use keyBlob: %@", buf, 0xCu);
  }

  self->allowSelfService = [parametersCopy BOOLFromKey:@"allowSelfService" defaultValue:0 failed:0];
  v104 = handleForCategory();
  if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
  {
    if (self->allowSelfService)
    {
      v105 = @"YES";
    }

    else
    {
      v105 = @"NO";
    }

    *buf = 138412290;
    v112 = v105;
    _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "allowSelfService: %@", buf, 0xCu);
  }

  self->allowUsedPart = [parametersCopy BOOLFromKey:@"allowUsedPart" defaultValue:0 failed:0];
  v106 = handleForCategory();
  if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
  {
    if (self->allowUsedPart)
    {
      v107 = @"YES";
    }

    else
    {
      v107 = @"NO";
    }

    *buf = 138412290;
    v112 = v107;
    _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEFAULT, "allowUsedPart: %@", buf, 0xCu);
  }

  v108 = v110;
  return (v108 & 1) == 0;
}

- (BOOL)validateUpdateProperties:(id)properties
{
  propertiesCopy = properties;
  v4 = propertiesCopy;
  if (propertiesCopy)
  {
    v5 = [propertiesCopy objectForKeyedSubscript:@"PrCL"];

    if (v5)
    {
      v6 = [v4 objectForKeyedSubscript:@"PrCL"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v8 = [v4 objectForKeyedSubscript:@"PrCL"];
        v9 = [[NSRegularExpression alloc] initWithPattern:@"^[a-fA-F0-9]{512}+$" options:0 error:0];
        v10 = [v9 firstMatchInString:v8 options:0 range:{0, -[NSObject length](v8, "length")}];
        v11 = handleForCategory();
        v12 = v11;
        if (v10)
        {
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v15 = 138412290;
            v16 = v8;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "matched property:%@", &v15, 0xCu);
          }

          v13 = 1;
          goto LABEL_15;
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_100003334(v8, v12);
        }
      }

      else
      {
        v8 = handleForCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_1000032B0(v8);
        }
      }

      v13 = 0;
LABEL_15:

      goto LABEL_16;
    }
  }

  v13 = 1;
LABEL_16:

  return v13;
}

@end