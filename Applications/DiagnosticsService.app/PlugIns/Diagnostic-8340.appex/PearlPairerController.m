@interface PearlPairerController
- (BOOL)isRetest:(id)a3;
- (BOOL)parseSeaCookieServerError:(id)a3 errorCode:(id *)a4;
- (id)_createFDROptions;
- (id)getPatchDataWithDigest:(id)a3;
- (int64_t)detectCamera;
- (int64_t)verifyPSD2;
- (void)cancel;
- (void)setupWithInputs:(id)a3 responder:(id)a4;
- (void)start;
- (void)teardown;
@end

@implementation PearlPairerController

- (void)setupWithInputs:(id)a3 responder:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = handleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315650;
    v12 = "[PearlPairerController setupWithInputs:responder:]";
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: %@, %@", &v11, 0x20u);
  }

  [(PearlPairerController *)self setInputs:v6];
  v9 = [(PearlPairerController *)self inputs];

  if (!v9)
  {
    v10 = [(PearlPairerController *)self result];
    [v10 setStatusCode:&off_1000156C0];

    [(PearlPairerController *)self setFinished:1];
  }
}

- (void)start
{
  v2 = handleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[PearlPairerController start]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &buf, 0xCu);
  }

  v112 = 0;
  cf = 0;
  theData = 0;
  v109[0] = 0;
  v109[1] = v109;
  v109[2] = 0x2020000000;
  v109[3] = 0;
  v108[0] = 0;
  v108[1] = v108;
  v108[2] = 0x2020000000;
  v108[3] = 0;
  CStringPtr = CFStringGetCStringPtr(@"Savage", 0x8000100u);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v118 = 0x3032000000;
  v119 = sub_100002E30;
  v120 = sub_100002E40;
  v121 = 0;
  v107[0] = 0;
  v107[1] = v107;
  v107[2] = 0x2020000000;
  v107[3] = 0;
  v106[0] = 0;
  v106[1] = v106;
  v106[2] = 0x2020000000;
  v106[3] = 0;
  v105[0] = 0;
  v105[1] = v105;
  v105[2] = 0x2020000000;
  v105[3] = 0;
  v104[0] = 0;
  v104[1] = v104;
  v104[2] = 0x2020000000;
  v104[3] = 0;
  v103[0] = 0;
  v103[1] = v103;
  v103[2] = 0x2020000000;
  v103[3] = 0;
  v102[0] = 0;
  v102[1] = v102;
  v102[2] = 0x2020000000;
  v102[3] = 0;
  v100[0] = 0;
  v100[1] = v100;
  v100[2] = 0x2020000000;
  v101 = 0;
  v98[0] = 0;
  v98[1] = v98;
  v98[2] = 0x3032000000;
  v98[3] = sub_100002E30;
  v98[4] = sub_100002E40;
  v99 = 0;
  v96[0] = 0;
  v96[1] = v96;
  v96[2] = 0x3032000000;
  v96[3] = sub_100002E30;
  v96[4] = sub_100002E40;
  v97 = objc_opt_new();
  v94[0] = 0;
  v94[1] = v94;
  v94[2] = 0x3032000000;
  v94[3] = sub_100002E30;
  v94[4] = sub_100002E40;
  v95 = 0;
  AMSupportLogSetHandler();
  v93[0] = _NSConcreteStackBlock;
  v93[1] = 3221225472;
  v93[2] = sub_100002E48;
  v93[3] = &unk_1000145A0;
  v93[6] = v108;
  v93[7] = v107;
  v93[8] = v106;
  v93[9] = v105;
  v93[10] = v104;
  v93[11] = &buf;
  v93[18] = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v93[19] = CStringPtr;
  v93[12] = v94;
  v93[13] = v103;
  v93[14] = v102;
  v93[15] = v100;
  v93[16] = v98;
  v93[17] = v96;
  v93[4] = self;
  v93[5] = v109;
  v84 = objc_retainBlock(v93);
  v4 = MGCopyAnswer();
  v5 = v4;
  if (!v4)
  {
    v72 = [(PearlPairerController *)self result];
    [v72 setStatusCode:&off_1000156D8];

    v73 = handleForCategory();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      sub_10000BD94();
    }

    goto LABEL_97;
  }

  v6 = [v4 convertToHexString];
  savageSN = self->_savageSN;
  self->_savageSN = v6;

  v8 = handleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = self->_savageSN;
    *v115 = 138412290;
    v116 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Savage Serial Number: %@", v115, 0xCu);
  }

  v85 = MGCopyAnswer();
  if (!v85)
  {
    v74 = [(PearlPairerController *)self result];
    [v74 setStatusCode:&off_1000156D8];

    v73 = handleForCategory();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      sub_10000BD58();
    }

LABEL_97:

    v82 = 0;
    v85 = 0;
    v86 = 0;
    v87 = 0;
    goto LABEL_68;
  }

  v10 = [v85 convertToHexString];
  savageUID = self->_savageUID;
  self->_savageUID = v10;

  v12 = handleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = self->_savageUID;
    *v115 = 138412290;
    v116 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Savage UID: %@", v115, 0xCu);
  }

  v14 = [(PearlPairerController *)self inputs];
  v15 = [v14 SCPairURL];
  v16 = CFURLCreateWithString(kCFAllocatorDefault, v15, 0);

  v17 = handleForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *v115 = 138412290;
    v116 = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Seacookie Pairing URL: %@", v115, 0xCu);
  }

  v18 = [(PearlPairerController *)self inputs];
  v19 = [v18 rikKeyBlob];

  if (v19)
  {
    v20 = [NSData alloc];
    v21 = [(PearlPairerController *)self inputs];
    v22 = [v21 rikKeyBlob];
    v23 = [v20 initWithBase64EncodedString:v22 options:0];

    if (!v23)
    {
      v75 = [(PearlPairerController *)self result];
      [v75 setStatusCode:&off_1000156F0];

      v50 = handleForCategory();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        sub_10000B9D8();
      }

      v82 = 0;
      goto LABEL_103;
    }

    v90[0] = _NSConcreteStackBlock;
    v90[1] = 3221225472;
    v90[2] = sub_1000038A8;
    v90[3] = &unk_1000145C8;
    v91 = v23;
    v92 = v102;
    v24 = v23;
    v81 = objc_retainBlock(v90);
  }

  else
  {
    v81 = 0;
  }

  v25 = [(PearlPairerController *)self inputs];
  v26 = [v25 skipScPairingTicket];

  if (v26)
  {
    v27 = 0;
    goto LABEL_33;
  }

  v27 = +[CRPersonalizationManager getDefaultAMAuthInstallRef];
  if (!v27)
  {
    v76 = [(PearlPairerController *)self result];
    [v76 setStatusCode:&off_100015708];

    v50 = handleForCategory();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      sub_10000BC18();
    }

LABEL_103:
    v86 = 0;
    v87 = 0;
    v27 = 0;
    goto LABEL_64;
  }

  v28 = [(PearlPairerController *)self inputs];
  v29 = [v28 tatsuURL];

  if (v29)
  {
    v30 = [(PearlPairerController *)self inputs];
    v31 = [v30 tatsuURL];
    [NSURL URLWithString:v31];
    v32 = AMAuthInstallSetSigningServerURL();

    v33 = handleForCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [(PearlPairerController *)self inputs];
      v35 = [v34 tatsuURL];
      *v115 = 138412290;
      v116 = v35;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Setting custom TATSU server URL: %@", v115, 0xCu);
    }

    if (v32)
    {
      v80 = [(PearlPairerController *)self result];
      [v80 setStatusCode:&off_100015708];

      v50 = handleForCategory();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        sub_10000BA14();
      }

      goto LABEL_116;
    }
  }

  v36 = [(PearlPairerController *)self inputs];
  if ([v36 useAppleConnect])
  {
  }

  else
  {
    v37 = +[CRPersonalizationManager shouldPersonalizeWithSSOByDefault];

    if ((v37 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  if ([CRPersonalizationManager enableSSO:v27])
  {
    v79 = [(PearlPairerController *)self result];
    [v79 setStatusCode:&off_100015720];

    v50 = handleForCategory();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      sub_10000BA84();
    }

    goto LABEL_116;
  }

LABEL_26:
  if (HSCGetPearlNonce() != 1 || !cf)
  {
    v77 = [(PearlPairerController *)self result];
    [v77 setStatusCode:&off_100015738];

    v87 = v112;
    v50 = handleForCategory();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      sub_10000BBA4();
    }

    goto LABEL_63;
  }

  if (AMAuthInstallApImg4SetSepNonce())
  {
    v78 = [(PearlPairerController *)self result];
    [v78 setStatusCode:&off_100015738];

    v50 = handleForCategory();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      sub_10000BAC0();
    }

LABEL_116:
    v86 = 0;
    v87 = 0;
    goto LABEL_64;
  }

  v38 = [CRPersonalizationManager initWithAuthInstallObj:v27];
  v89 = 0;
  v39 = [v38 getApTicketForSeaCookiePairingWithOptions:0 pairingTicket:&theData error:&v89];
  v87 = v89;

  if (v87)
  {
    v40 = 0;
  }

  else
  {
    v40 = v39;
  }

  if ((v40 & 1) == 0)
  {
    v42 = handleForCategory();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      sub_10000BB30();
    }

    v43 = [(PearlPairerController *)self inputs];
    v44 = [v43 rikKeyBlob];

    if (!v44)
    {
      v50 = [(PearlPairerController *)self result];
      [v50 setStatusCode:&off_100015708];
      goto LABEL_63;
    }

    if (v87)
    {
      goto LABEL_41;
    }

LABEL_45:
    v87 = 0;
    goto LABEL_46;
  }

LABEL_33:
  v41 = HSCSecurePairPearl(v16, theData, &v112, v84, v82);
  v87 = v112;
  if (!v112)
  {
    goto LABEL_45;
  }

  if (!v41 && [(__CFError *)v112 code]!= 6)
  {
    v56 = [NSNumber numberWithInteger:[(__CFError *)v87 code]];
    PearlPairingErrorCode = self->_PearlPairingErrorCode;
    self->_PearlPairingErrorCode = v56;

    v58 = [(__CFError *)v87 description];
    PearlPairingErrorDescription = self->_PearlPairingErrorDescription;
    self->_PearlPairingErrorDescription = v58;

    v60 = handleForCategory();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      sub_10000BC54();
    }

    if ([(__CFError *)v87 code]== 8 || [(__CFError *)v87 code]== 4 || [(__CFError *)v87 code]== 5 || [(__CFError *)v87 code]== 9 || [(__CFError *)v87 code]== 16 || [(__CFError *)v87 code]== 15)
    {
      v50 = [(PearlPairerController *)self result];
      [v50 setStatusCode:&off_100015750];
    }

    else if ([(__CFError *)v87 code]== 12 || [(__CFError *)v87 code]== 13 || [(__CFError *)v87 code]== 14)
    {
      v50 = [(PearlPairerController *)self result];
      [v50 setStatusCode:&off_100015768];
    }

    else if ([(__CFError *)v87 code]== 3 || [(__CFError *)v87 code]== 7 || [(__CFError *)v87 code]== 10)
    {
      v50 = [(PearlPairerController *)self result];
      [v50 setStatusCode:&off_100015780];
    }

    else
    {
      v50 = [(PearlPairerController *)self result];
      [v50 setStatusCode:&off_100015798];
    }

    goto LABEL_63;
  }

LABEL_41:
  v45 = [NSNumber numberWithInteger:[(__CFError *)v87 code]];
  v46 = self->_PearlPairingErrorCode;
  self->_PearlPairingErrorCode = v45;

  v47 = [(__CFError *)v87 description];
  v48 = self->_PearlPairingErrorDescription;
  self->_PearlPairingErrorDescription = v47;

  v49 = handleForCategory();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
  {
    sub_10000BCD4();
  }

  if (![(PearlPairerController *)self isRetest:v87])
  {
    v50 = [(PearlPairerController *)self result];
    [v50 setStatusCode:&off_1000157B0];
LABEL_63:
    v86 = 0;
    goto LABEL_64;
  }

LABEL_46:
  v86 = [NSNumber numberWithInteger:[(PearlPairerController *)self verifyPSD2]];
  if ([v86 isEqual:&off_1000157C8])
  {
    v51 = [(PearlPairerController *)self result];
    [v51 setStatusCode:&off_1000157C8];

    v52 = self;
    v50 = self->_PearlPairingErrorDescription;
    v53 = @"Unprovisioned sensor";
  }

  else if ([v86 isEqual:&off_1000157E0])
  {
    v54 = [(PearlPairerController *)self result];
    [v54 setStatusCode:&off_1000157E0];

    v52 = self;
    v50 = self->_PearlPairingErrorDescription;
    v53 = @"Failed to request FDR permission";
  }

  else
  {
    if (![v86 isEqual:&off_1000157F8])
    {
      v50 = [(PearlPairerController *)self result];
      [v50 setStatusCode:&off_100015810];
      goto LABEL_64;
    }

    v55 = [(PearlPairerController *)self result];
    [v55 setStatusCode:&off_1000157F8];

    v52 = self;
    v50 = self->_PearlPairingErrorDescription;
    v53 = @"Failed to create FDR permission string";
  }

  v52->_PearlPairingErrorDescription = &v53->isa;
LABEL_64:

  if (v16)
  {
    CFRelease(v16);
  }

  if (v27)
  {
    CFRelease(v27);
  }

LABEL_68:
  if (cf)
  {
    CFRelease(cf);
  }

  v113[0] = @"pearlPairingErrorCode";
  v61 = self;
  v62 = self->_PearlPairingErrorCode;
  v63 = v62;
  if (!v62)
  {
    v63 = +[NSNull null];
    v61 = self;
  }

  v114[0] = v63;
  v113[1] = @"pearlPairingErrorDescription";
  v64 = v61->_PearlPairingErrorDescription;
  v65 = v64;
  if (!v64)
  {
    v65 = +[NSNull null];
    v61 = self;
  }

  v114[1] = v65;
  v113[2] = @"pearlSavageSerialNumber";
  v66 = v61->_savageSN;
  v67 = v66;
  if (!v66)
  {
    v67 = +[NSNull null];
    v61 = self;
  }

  v114[2] = v67;
  v113[3] = @"pearlSavageUID";
  v68 = v61->_savageUID;
  if (v68)
  {
    v69 = v61->_savageUID;
  }

  else
  {
    v69 = +[NSNull null];
  }

  v114[3] = v69;
  v70 = [NSDictionary dictionaryWithObjects:v114 forKeys:v113 count:4, v82];
  v71 = [(PearlPairerController *)self result];
  [v71 setData:v70];

  if (!v68)
  {
  }

  if (!v66)
  {
  }

  if (!v64)
  {
  }

  if (!v62)
  {
  }

  [(PearlPairerController *)self setFinished:1];

  _Block_object_dispose(v94, 8);
  _Block_object_dispose(v96, 8);

  _Block_object_dispose(v98, 8);
  _Block_object_dispose(v100, 8);
  _Block_object_dispose(v102, 8);
  _Block_object_dispose(v103, 8);
  _Block_object_dispose(v104, 8);
  _Block_object_dispose(v105, 8);
  _Block_object_dispose(v106, 8);
  _Block_object_dispose(v107, 8);
  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(v108, 8);
  _Block_object_dispose(v109, 8);
}

- (void)cancel
{
  v2 = handleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[PearlPairerController cancel]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v3, 0xCu);
  }
}

- (void)teardown
{
  v2 = handleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[PearlPairerController teardown]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v3, 0xCu);
  }
}

- (BOOL)parseSeaCookieServerError:(id)a3 errorCode:(id *)a4
{
  v5 = a3;
  v6 = handleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315138;
    v19 = "[PearlPairerController parseSeaCookieServerError:errorCode:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s", &v18, 0xCu);
  }

  v7 = 0;
  if (v5 && a4)
  {
    if ([v5 code] == 6 && (objc_msgSend(v5, "localizedDescription"), v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
    {
      v9 = [v5 localizedDescription];
      v10 = [[NSRegularExpression alloc] initWithPattern:@"errorCode: (-?\\d+)" options:0 error:0];
      v11 = [v10 firstMatchInString:v9 options:0 range:{0, objc_msgSend(v9, "length")}];
      v7 = v11 != 0;
      if (v11)
      {
        v12 = v11;
        v13 = [v11 rangeAtIndex:1];
        *a4 = [v9 substringWithRange:{v13, v14}];
        v15 = handleForCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = *a4;
          v18 = 138412290;
          v19 = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "serverErrorCode: %@", &v18, 0xCu);
        }
      }

      else
      {
        v12 = handleForCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_10000C338();
        }
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)isRetest:(id)a3
{
  v4 = a3;
  v5 = handleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v21 = "[PearlPairerController isRetest:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v6 = [(PearlPairerController *)self inputs];
  v7 = [v6 rikKeyBlob];
  v8 = v7;
  if (!v4 || !v7)
  {

LABEL_10:
    v19 = 0;
    v11 = [(PearlPairerController *)self parseSeaCookieServerError:v4 errorCode:&v19];
    v10 = v19;
    if (!v11)
    {
      v16 = handleForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10000C3AC();
      }

      goto LABEL_22;
    }

    v12 = [(PearlPairerController *)self inputs];
    v13 = [v12 rikKeyBlob];
    if (v13)
    {
      v14 = v13;
      v15 = [v10 isEqual:@"5010"];

      if (v15)
      {
        v16 = handleForCategory();
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
LABEL_22:

          goto LABEL_23;
        }

        *buf = 0;
        v17 = "Server error is 5010.";
LABEL_21:
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v17, buf, 2u);
        goto LABEL_22;
      }
    }

    else
    {
    }

    if (![v10 isEqual:@"6006"])
    {
      v11 = 0;
      goto LABEL_23;
    }

    v16 = handleForCategory();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v17 = "Server error is 6006 (PSDT not found).";
    goto LABEL_21;
  }

  v9 = [v4 code];

  if (v9 != 3194)
  {
    goto LABEL_10;
  }

  v10 = handleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "AuthInstall error is 3194.", buf, 2u);
  }

  v11 = 1;
LABEL_23:

  return v11;
}

- (id)_createFDROptions
{
  v3 = handleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315138;
    v20 = "[PearlPairerController _createFDROptions]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v19, 0xCu);
  }

  v4 = objc_alloc_init(NSMutableDictionary);
  [v4 setObject:&__kCFBooleanFalse forKeyedSubscript:@"VerifyData"];
  v5 = [(PearlPairerController *)self inputs];
  v6 = [v5 FDRCAURL];

  if (v6)
  {
    v7 = [(PearlPairerController *)self inputs];
    v8 = [v7 FDRCAURL];
    [v4 setObject:v8 forKeyedSubscript:@"CAURL"];
  }

  v9 = [(PearlPairerController *)self inputs];
  v10 = [v9 FDRDSURL];

  if (v10)
  {
    v11 = [(PearlPairerController *)self inputs];
    v12 = [v11 FDRDSURL];
    [v4 setObject:v12 forKeyedSubscript:@"DSURL"];
  }

  v13 = [(PearlPairerController *)self inputs];
  v14 = [v13 trustObjectURL];

  if (v14)
  {
    v15 = [(PearlPairerController *)self inputs];
    v16 = [v15 trustObjectURL];
    [v4 setObject:v16 forKeyedSubscript:@"TrustObjectURL"];
  }

  v17 = handleForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "AMFDR options: %@", &v19, 0xCu);
  }

  return v4;
}

- (int64_t)verifyPSD2
{
  v3 = handleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[PearlPairerController verifyPSD2]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v17 = 0;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  *buf = 0u;
  v4 = [(PearlPairerController *)self _createFDROptions];
  v5 = AMFDRSealingMapCopyInstanceForClass();
  if (!v5)
  {
    sub_10000C64C(&v17);
LABEL_33:
    v11 = 0;
    PermissionsString = 0;
    v15 = 12;
    goto LABEL_24;
  }

  if (!AMFDRCreateTypeWithOptions())
  {
    sub_10000C5EC();
    goto LABEL_33;
  }

  v6 = AMFDRCreateTypeWithOptions();
  AMFDRDataCopyTrustObject();
  AMFDRSetOption();
  PermissionsString = AMFDRDataCreatePermissionsString();
  v8 = handleForCategory();
  v9 = v8;
  if (!PermissionsString)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10000C5B0();
    }

    v11 = 0;
    v15 = -84;
    goto LABEL_21;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 138412290;
    v19 = PermissionsString;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Request FDR permissionStr: %@", v18, 0xCu);
  }

  AMFDRSetOption();
  if (!AMFDRPermissionsRequest())
  {
    v9 = handleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10000C3E8(&v17);
    }

    v11 = 0;
    v15 = -83;
    goto LABEL_21;
  }

  v10 = AMFDRDataCopy();
  v11 = v10;
  if (!v10)
  {
    v9 = handleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10000C53C(&v17);
    }

    goto LABEL_46;
  }

  [v10 bytes];
  [v11 length];
  if (AMFDRDecodeFDR2Data())
  {
    [v11 bytes];
    [v11 length];
    if (Img4DecodeInit())
    {
      v9 = handleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_45;
      }

      goto LABEL_46;
    }

LABEL_17:
    v13 = verifyFDRData(*(&v28 + 1), v29);
    v14 = handleForCategory();
    v9 = v14;
    if (!v13)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Verify PSD2 successfully", v18, 2u);
      }

      v15 = 0;
      goto LABEL_21;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10000C4CC();
    }

    goto LABEL_46;
  }

  v12 = handleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Decoded FDR2 format", v18, 2u);
  }

  if (!Img4DecodeInit())
  {
    goto LABEL_17;
  }

  v9 = handleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
LABEL_45:
    sub_10000C45C();
  }

LABEL_46:
  v15 = 12;
LABEL_21:

  if (v6)
  {
    AMSupportSafeRelease();
  }

  AMSupportSafeRelease();
LABEL_24:
  if (v5)
  {
    AMSupportSafeRelease();
  }

  if (PermissionsString)
  {
    AMSupportSafeRelease();
  }

  if (v17)
  {
    AMSupportSafeRelease();
  }

  return v15;
}

- (int64_t)detectCamera
{
  v2 = IOServiceMatching("AppleH10CamIn");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v2);
  if (MatchingService)
  {
    IOObjectRelease(MatchingService);
    v4 = handleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "h10 device", buf, 2u);
    }

    v5 = 1;
  }

  else
  {
    v7 = IOServiceMatching("AppleH13CamIn");
    v8 = IOServiceGetMatchingService(kIOMainPortDefault, v7);
    if (v8)
    {
      IOObjectRelease(v8);
      v4 = handleForCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        v5 = 2;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "h13 device", v12, 2u);
      }

      else
      {
        v5 = 2;
      }
    }

    else
    {
      v9 = IOServiceMatching("AppleH16CamIn");
      v10 = IOServiceGetMatchingService(kIOMainPortDefault, v9);
      if (!v10)
      {
        return 0;
      }

      IOObjectRelease(v10);
      v4 = handleForCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "h16 device", v11, 2u);
      }

      v5 = 3;
    }
  }

  return v5;
}

- (id)getPatchDataWithDigest:(id)a3
{
  v31 = a3;
  v3 = MGCopyAnswer();
  v4 = [v3 intValue];

  v5 = objc_opt_new();
  v6 = v5;
  if (v4 == 3)
  {
    v38 = 0;
    v7 = &v38;
    v8 = [v5 getPathForBorsFirmwareWithError:&v38];
  }

  else
  {
    v37 = 0;
    v7 = &v37;
    v8 = [v5 getPathForSavageFirmwareWithError:&v37];
  }

  v9 = v8;
  v10 = *v7;

  if (v9)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    v12 = handleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10000C724();
    }

LABEL_36:
    v23 = 0;
    goto LABEL_41;
  }

  v13 = +[NSFileManager defaultManager];
  v36 = 0;
  v10 = [v13 contentsOfDirectoryAtPath:v9 error:&v36];
  v12 = v36;

  if (!v10 || v12)
  {
    v27 = handleForCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_10000C6E8();
    }

    goto LABEL_36;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v12 = v10;
  v14 = [v12 countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v14)
  {
    v16 = v14;
    v17 = *v33;
    *&v15 = 138412290;
    v30 = v15;
    while (2)
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v33 != v17)
        {
          objc_enumerationMutation(v12);
        }

        v19 = *(*(&v32 + 1) + 8 * i);
        v20 = [v9 stringByAppendingPathComponent:{v19, v30}];
        if (v20)
        {
          v21 = v20;
          v22 = [NSData dataWithContentsOfFile:v20];
          if (v22)
          {
            v23 = v22;
            v24 = [v22 SHA256DigestData];
            if (!v24)
            {
              v25 = handleForCategory();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                *buf = v30;
                v40 = v19;
                _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to get digest for file: %@", buf, 0xCu);
              }
            }

            if ([v24 isEqualToData:v31])
            {
              v28 = handleForCategory();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v30;
                v40 = v19;
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Expected patch data found: %@", buf, 0xCu);
              }

              goto LABEL_40;
            }
          }

          else
          {
            v26 = handleForCategory();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = v30;
              v40 = v21;
              _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Failed to get content in path: %@", buf, 0xCu);
            }
          }
        }

        else
        {
          v21 = handleForCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            *buf = v30;
            v40 = v19;
            _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to get path for file: %@", buf, 0xCu);
          }
        }
      }

      v16 = [v12 countByEnumeratingWithState:&v32 objects:v41 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v23 = 0;
LABEL_40:
  v10 = v12;
LABEL_41:

  return v23;
}

@end