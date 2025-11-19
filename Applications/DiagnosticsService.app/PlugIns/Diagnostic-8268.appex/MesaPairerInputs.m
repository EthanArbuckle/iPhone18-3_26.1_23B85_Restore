@interface MesaPairerInputs
- (BOOL)validateAndInitializeParameters:(id)a3;
- (id)_filterSeaCookieServerUrl:(id)a3;
- (void)_validateURL:(id)a3 failed:(BOOL *)a4;
@end

@implementation MesaPairerInputs

- (id)_filterSeaCookieServerUrl:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (MGGetBoolAnswer())
  {
    v5 = objc_opt_new();
    v6 = [v5 hasEntitlementBoolForTag:1633776739 inAPTicket:0];

    v4 = v3;
    if ((v6 & 1) == 0)
    {

      v7 = handleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412290;
        v10 = @"https://shps.apple.com/hps/processor";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Prod fused device, force to set SeaCookie server as %@", &v9, 0xCu);
      }

      v4 = @"https://shps.apple.com/hps/processor";
    }
  }

  return v4;
}

- (void)_validateURL:(id)a3 failed:(BOOL *)a4
{
  v5 = a3;
  if (v5)
  {
    v6 = [NSURL URLWithString:v5];
    v7 = v6;
    if (v6 && ([v6 host], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
    {
      v9 = [v7 scheme];
      if (![v9 caseInsensitiveCompare:@"http"])
      {

        goto LABEL_11;
      }

      v10 = [v7 scheme];
      v11 = [v10 caseInsensitiveCompare:@"https"];

      if (!v11)
      {
LABEL_11:

        goto LABEL_12;
      }

      v12 = handleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10000B81C();
      }
    }

    else
    {
      v12 = handleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10000B890();
      }
    }

    *a4 = 1;
    goto LABEL_11;
  }

LABEL_12:
}

- (BOOL)validateAndInitializeParameters:(id)a3
{
  v6 = a3;
  v53 = 0;
  v7 = handleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v55 = "[MesaPairerInputs validateAndInitializeParameters:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v8 = [v6 dk_stringFromKey:@"SCPairURL" maxLength:256 defaultValue:@"https://shps.apple.com/hps/processor" failed:&v53];
  v9 = [(MesaPairerInputs *)self _filterSeaCookieServerUrl:v8];

  v10 = handleForCategory();
  v11 = &off_10000E000;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v55 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "SC Pairing URL: %@", buf, 0xCu);
  }

  v12 = [NSURL URLWithString:v9];
  SCPairURL = self->_SCPairURL;
  self->_SCPairURL = v12;

  v14 = self->_SCPairURL;
  v15 = v14;
  if (!v14)
  {
    goto LABEL_13;
  }

  v16 = [(NSURL *)v14 scheme];
  v4 = [v16 caseInsensitiveCompare:@"http"];
  if (!v4)
  {
    v3 = [(NSURL *)v15 scheme];
    if (![v3 caseInsensitiveCompare:@"https"])
    {

LABEL_13:
      v18 = handleForCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10000B904();
      }

      v53 = 1;
      goto LABEL_16;
    }
  }

  v17 = [(NSURL *)v15 host];

  if (!v4)
  {
  }

  if (!v17)
  {
    goto LABEL_13;
  }

LABEL_16:
  v19 = [v6 NSStringFromKey:@"CAURL" defaultValue:0 failed:&v53];
  FDRCAURL = self->_FDRCAURL;
  self->_FDRCAURL = v19;

  v21 = handleForCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = self->_FDRCAURL;
    *buf = 138412290;
    v55 = v22;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "FDR CA URL: %@", buf, 0xCu);
  }

  [(MesaPairerInputs *)self _validateURL:self->_FDRCAURL failed:&v53];
  v23 = [v6 NSStringFromKey:@"DSURL" defaultValue:0 failed:&v53];
  FDRDSURL = self->_FDRDSURL;
  self->_FDRDSURL = v23;

  v25 = handleForCategory();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = self->_FDRDSURL;
    *buf = 138412290;
    v55 = v26;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "FDR DS URL: %@", buf, 0xCu);
  }

  [(MesaPairerInputs *)self _validateURL:self->_FDRDSURL failed:&v53];
  v27 = [v6 NSStringFromKey:@"TrustObjectURL" defaultValue:0 failed:&v53];
  trustObjectURL = self->_trustObjectURL;
  self->_trustObjectURL = v27;

  v29 = handleForCategory();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = self->_trustObjectURL;
    *buf = 138412290;
    v55 = v30;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "FDR Trust Object URL: %@", buf, 0xCu);
  }

  [(MesaPairerInputs *)self _validateURL:self->_trustObjectURL failed:&v53];
  self->_useAppleConnect = [v6 dk_BOOLFromKey:@"UseAppleConnect" defaultValue:0 failed:&v53];
  v31 = handleForCategory();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_useAppleConnect)
    {
      v32 = @"YES";
    }

    else
    {
      v32 = @"NO";
    }

    *buf = 138412290;
    v55 = v32;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Use AppleConnect: %@", buf, 0xCu);
  }

  v33 = [v6 dk_stringFromKey:@"TatsuURL" maxLength:256 defaultValue:0 failed:&v53];
  if (!v33)
  {
    if (self->_useAppleConnect)
    {
      v34 = @"https://gs.apple.com:443";
    }

    else
    {
      v34 = @"https://ac-gs.apple.com:443";
    }

    v33 = v34;
  }

  v35 = handleForCategory();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v55 = v33;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "TATSU server URL: %@", buf, 0xCu);
  }

  v36 = [NSURL URLWithString:v33];
  TatsuURL = self->_TatsuURL;
  self->_TatsuURL = v36;

  v38 = self->_TatsuURL;
  if (!v38)
  {
    goto LABEL_42;
  }

  v39 = [(NSURL *)v38 scheme];
  v40 = [v39 caseInsensitiveCompare:@"http"];
  if (!v40)
  {
    v4 = [(NSURL *)v38 scheme];
    if (![v4 caseInsensitiveCompare:@"https"])
    {

      v11 = &off_10000E000;
LABEL_42:
      v42 = handleForCategory();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        sub_10000B904();
      }

      v53 = 1;
      goto LABEL_45;
    }
  }

  v41 = [(NSURL *)v38 host];

  if (!v40)
  {
  }

  v11 = &off_10000E000;
  if (!v41)
  {
    goto LABEL_42;
  }

LABEL_45:
  v43 = [v6 dk_stringFromKey:@"keyBlob" maxLength:1024 defaultValue:0 failed:&v53];
  if (v43)
  {
    v44 = handleForCategory();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Parsing RIK", buf, 2u);
    }

    v45 = [[NSData alloc] initWithBase64EncodedString:v43 options:0];
    signingKeyBlob = self->_signingKeyBlob;
    self->_signingKeyBlob = v45;
  }

  if (!self->_signingKeyBlob)
  {
    v47 = handleForCategory();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "No RIK", buf, 2u);
    }
  }

  self->_skipPairingPreCheck = [v6 dk_BOOLFromKey:@"SkipPairingPreCheck" defaultValue:0 failed:&v53];
  v48 = handleForCategory();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    v49 = @"YES";
    if (!self->_skipPairingPreCheck)
    {
      v49 = @"NO";
    }

    *buf = *(v11 + 77);
    v55 = v49;
    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "Skip Pairing Pre-Check: %@", buf, 0xCu);
  }

  v50 = handleForCategory();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v55) = v53;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "validationFailed is %d", buf, 8u);
  }

  v51 = v53;
  return (v51 & 1) == 0;
}

@end