@interface MesaPairer
- (BOOL)loadMSRkWithData:(id)a3 error:(id *)a4;
- (BOOL)mesaAlreadyPaired:(int *)a3;
- (BOOL)mesaClearPhysicalPresence;
- (BOOL)mesaPhysicalPresenceAsserted;
- (id)createFDROptions;
- (id)runWithInputs:(id)a3 results:(id *)a4;
- (int64_t)verifyMSRkWithError:(id *)a3;
- (void)cancel;
- (void)setupWithInputs:(id)a3 responder:(id)a4;
- (void)start;
- (void)teardown;
@end

@implementation MesaPairer

- (void)setupWithInputs:(id)a3 responder:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = handleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315650;
    v12 = "[MesaPairer setupWithInputs:responder:]";
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: %@, %@", &v11, 0x20u);
  }

  [(MesaPairer *)self setInputs:v6];
  v9 = [(MesaPairer *)self inputs];

  if (!v9)
  {
    v10 = [(MesaPairer *)self result];
    [v10 setStatusCode:&off_100015648];

    [(MesaPairer *)self setFinished:1];
  }
}

- (id)runWithInputs:(id)a3 results:(id *)a4
{
  v5 = a3;
  v87 = 128;
  v88 = 0;
  v86 = 0;
  v6 = handleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v95 = "[MesaPairer runWithInputs:results:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v7 = [(MesaPairer *)self inputs];

  if (!v7)
  {
    [(MesaPairer *)self setInputs:v5];
  }

  AMSupportLogSetHandler();
  if ([(MesaPairer *)self mesaProtocolVersion]< 2)
  {
    v76 = 0;
    goto LABEL_26;
  }

  v76 = [(MesaPairer *)self mesaPhysicalPresenceAsserted];
  v8 = [(MesaPairer *)self inputs];
  v9 = [v8 skipPairingPreCheck];

  if (v9)
  {
    v10 = handleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v11 = "Skip pairing pre-check";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 2u);
      goto LABEL_25;
    }

    goto LABEL_25;
  }

  if (![(MesaPairer *)self mesaAlreadyPaired:0])
  {
    if (v76)
    {
      v10 = handleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Mesa physical presence already asserted. Skip verify MSRk", buf, 2u);
      }

      v76 = 1;
      goto LABEL_25;
    }

    v12 = [(MesaPairer *)self verifyMSRkWithError:0];
    v10 = handleForCategory();
    v13 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      if (v13)
      {
        *buf = 0;
        v14 = "Mesa is unpaired";
LABEL_23:
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v14, buf, 2u);
      }
    }

    else if (v13)
    {
      *buf = 0;
      v14 = "Mesa already paired using remote data";
      goto LABEL_23;
    }

    v76 = 0;
    goto LABEL_25;
  }

  v10 = handleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v11 = "Mesa already paired and sealed";
    goto LABEL_13;
  }

LABEL_25:

LABEL_26:
  v15 = &AMFDRCreateTypeWithOptions_ptr;
  if (sub_10000CCCC(&v88 + 4))
  {
    v16 = handleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10000B944();
    }

    v84 = 0;
    v85 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v78 = 0;
    HIDWORD(v88) = 0;
    v20 = &off_100015678;
LABEL_30:
    v83 = v20;
    goto LABEL_31;
  }

  if (sub_100008CF8(buf, &v87))
  {
    if (HIDWORD(v88) != 7)
    {
      v58 = handleForCategory();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        sub_10000B980();
      }

      v84 = 0;
      v85 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v78 = 0;
      HIDWORD(v88) = 0;
      v20 = &off_100015690;
      goto LABEL_30;
    }

    v17 = 0;
  }

  else
  {
    v17 = [NSData dataWithBytes:buf length:v87];
    v55 = handleForCategory();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      v56 = [v17 description];
      *v93 = 138412290;
      *&v93[4] = v56;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Mesa sensor serial number: %@", v93, 0xCu);
    }
  }

  v57 = 0;
  if ([(MesaPairer *)self mesaAlreadyPaired:0])
  {
    if ([(MesaPairer *)self mesaProtocolVersion]< 2 || ![(MesaPairer *)self mesaAlreadyPaired:0]|| ![(MesaPairer *)self mesaPhysicalPresenceAsserted])
    {
      goto LABEL_123;
    }

    v59 = handleForCategory();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      *v93 = 0;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "Reset physical presence", v93, 2u);
    }

    [(MesaPairer *)self mesaClearPhysicalPresence];
    if ([(MesaPairer *)self mesaPhysicalPresenceAsserted])
    {
      v60 = handleForCategory();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        sub_10000BE70();
      }

      v18 = @"Physical presence is not cleared properly";
    }

    else
    {
LABEL_123:
      v18 = 0;
    }

    v87 = 128;
    if (sub_100008AF0(buf, &v87))
    {
      v85 = 0;
    }

    else
    {
      v61 = [NSString alloc];
      v85 = [v61 initWithBytes:buf length:v87 encoding:4];
      v62 = handleForCategory();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        *v93 = 138412290;
        *&v93[4] = v85;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "Mesa Module serial number: %@", v93, 0xCu);
      }
    }

    v83 = &off_100015660;
    v19 = @"No Error";
  }

  else
  {
    HSCGetMesaNonce();
    sub_10000BDD0(&v86, v93);
    v19 = 0;
    v57 = *v93;
    v83 = &off_1000156A8;

    v18 = 0;
    v85 = 0;
  }

  if (sub_10000CCCC(&v88))
  {
    v63 = handleForCategory();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      sub_10000BEAC();
    }

    LODWORD(v88) = 0;
  }

  if (!v57)
  {
    v84 = 0;
    v78 = 0;
    v15 = &AMFDRCreateTypeWithOptions_ptr;
    goto LABEL_31;
  }

  v64 = [CRUtils getInnermostNSError:v57];

  v15 = &AMFDRCreateTypeWithOptions_ptr;
  v65 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v64 code]);
  v78 = v64;
  v66 = [v64 localizedDescription];

  v84 = v65;
  if ([v65 isEqual:&off_100015708])
  {
    if ([(__CFString *)v66 containsString:@"errorCode: 8500"])
    {

      v67 = &off_100015720;
LABEL_141:
      v83 = v67;
      goto LABEL_142;
    }

    if ([(__CFString *)v66 containsString:@"errorCode: 8302"])
    {

      v67 = &off_100015738;
      goto LABEL_141;
    }
  }

LABEL_142:
  v19 = v66;
LABEL_31:
  v81 = v5;
  v82 = v17;
  v79 = v19;
  if ([(MesaPairer *)self mesaProtocolVersion]>= 2)
  {
    v91[0] = @"mesaPairingErrorCode";
    v21 = v84;
    if (!v84)
    {
      v21 = +[NSNull null];
    }

    v75 = v21;
    v92[0] = v21;
    v91[1] = @"mesaPairingErrorDescription";
    v22 = v19;
    if (!v19)
    {
      v22 = +[NSNull null];
    }

    v72 = v22;
    v92[1] = v22;
    v91[2] = @"mesaSensorPreviousState";
    v23 = [v15[136] numberWithUnsignedInt:HIDWORD(v88)];
    v74 = v23;
    if (!v23)
    {
      v23 = +[NSNull null];
    }

    v71 = v23;
    v92[2] = v23;
    v91[3] = @"mesaSensorProvisioningState";
    v24 = [v15[136] numberWithUnsignedInt:v88];
    v25 = v24;
    if (!v24)
    {
      v24 = +[NSNull null];
    }

    v73 = v25;
    v70 = v24;
    v92[3] = v24;
    v91[4] = @"mesaSensorPreviousPhysicalPresenceState";
    v26 = [v15[136] numberWithBool:v76];
    v27 = v26;
    if (!v26)
    {
      v26 = +[NSNull null];
    }

    v69 = v26;
    v92[4] = v26;
    v91[5] = @"mesaSensorPhysicalPresenceState";
    v28 = [v15[136] numberWithBool:{-[MesaPairer mesaPhysicalPresenceAsserted](self, "mesaPhysicalPresenceAsserted")}];
    v29 = v28;
    if (!v28)
    {
      v28 = +[NSNull null];
    }

    v68 = v28;
    v92[5] = v28;
    v91[6] = @"mesaSensorSerialNumber";
    v30 = [v17 description];
    v31 = v30;
    v32 = v18;
    if (!v30)
    {
      v31 = +[NSNull null];
    }

    v92[6] = v31;
    v91[7] = @"mesaModuleSerialNumber";
    v33 = v85;
    if (!v85)
    {
      v33 = +[NSNull null];
    }

    v92[7] = v33;
    v91[8] = @"isUnlockRequired";
    v34 = [v15[136] numberWithInt:{(objc_msgSend(v83, "intValue") == 2) & (v76 ^ 1)}];
    v35 = v34;
    if (!v34)
    {
      v35 = +[NSNull null];
    }

    v92[8] = v35;
    v91[9] = @"warnings";
    if (!v18)
    {
      v18 = +[NSNull null];
    }

    v92[9] = v18;
    v36 = [NSDictionary dictionaryWithObjects:v92 forKeys:v91 count:10];
    if (v32)
    {
      if (v34)
      {
LABEL_54:

        if (!v85)
        {
        }

        v37 = a4;
        if (!v30)
        {
        }

        if (!v29)
        {
        }

        v39 = v81;
        v38 = v82;
        if (!v27)
        {
        }

        if (!v73)
        {
        }

        if (!v74)
        {
        }

        v40 = v79;
        if (!v79)
        {
        }

        goto LABEL_92;
      }
    }

    else
    {

      if (v34)
      {
        goto LABEL_54;
      }
    }

    goto LABEL_54;
  }

  v89[0] = @"mesaPairingErrorCode";
  v41 = v84;
  if (!v84)
  {
    v41 = +[NSNull null];
  }

  v75 = v41;
  v90[0] = v41;
  v89[1] = @"mesaPairingErrorDescription";
  v42 = v19;
  v43 = v18;
  if (!v19)
  {
    v42 = +[NSNull null];
  }

  v77 = v42;
  v90[1] = v42;
  v89[2] = @"mesaSensorPreviousState";
  v44 = [v15[136] numberWithUnsignedInt:HIDWORD(v88)];
  v45 = v44;
  if (!v44)
  {
    v45 = +[NSNull null];
  }

  v90[2] = v45;
  v89[3] = @"mesaSensorProvisioningState";
  v46 = [v15[136] numberWithUnsignedInt:v88];
  v47 = v46;
  if (!v46)
  {
    v47 = +[NSNull null];
  }

  v90[3] = v47;
  v89[4] = @"mesaSensorSerialNumber";
  v48 = [v17 description];
  v49 = v48;
  if (!v48)
  {
    v49 = +[NSNull null];
  }

  v90[4] = v49;
  v89[5] = @"mesaModuleSerialNumber";
  v50 = v85;
  if (!v85)
  {
    v50 = +[NSNull null];
  }

  v90[5] = v50;
  v90[6] = &__kCFBooleanFalse;
  v89[6] = @"isUnlockRequired";
  v89[7] = @"warnings";
  v51 = v43;
  if (!v43)
  {
    v51 = +[NSNull null];
  }

  v90[7] = v51;
  v36 = [NSDictionary dictionaryWithObjects:v90 forKeys:v89 count:8];
  if (!v43)
  {
  }

  if (!v85)
  {

    if (v48)
    {
      goto LABEL_86;
    }

LABEL_105:

    goto LABEL_86;
  }

  if (!v48)
  {
    goto LABEL_105;
  }

LABEL_86:

  v37 = a4;
  if (!v46)
  {
  }

  v39 = v81;
  v38 = v82;
  if (!v44)
  {
  }

  v40 = v79;
  if (!v79)
  {
  }

LABEL_92:
  if (!v84)
  {
  }

  if (v37)
  {
    v52 = v36;
    *v37 = v36;
  }

  v53 = v83;

  return v53;
}

- (void)start
{
  v3 = handleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[MesaPairer start]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v4 = [(MesaPairer *)self inputs];
  v9 = 0;
  v5 = [(MesaPairer *)self runWithInputs:v4 results:&v9];
  v6 = v9;

  v7 = [(MesaPairer *)self result];
  [v7 setStatusCode:v5];

  v8 = [(MesaPairer *)self result];
  [v8 setData:v6];

  [(MesaPairer *)self setFinished:1];
}

- (int64_t)verifyMSRkWithError:(id *)a3
{
  v5 = handleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v23 = "[MesaPairer verifyMSRkWithError:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v21 = 0;
  if (!AMFDRSealingMapCopyInstanceForClass())
  {
    sub_10000BFF0(&v21);
    v6 = 0;
LABEL_21:
    v12 = 0;
    goto LABEL_29;
  }

  v6 = [(MesaPairer *)self createFDROptions];
  if (!AMFDRCreateTypeWithOptions())
  {
    sub_10000BF90();
    goto LABEL_21;
  }

  AMFDRCreateTypeWithOptions();
  AMFDRDataCopyTrustObject();
  AMFDRSetOption();
  PermissionsString = AMFDRDataCreatePermissionsString();
  v8 = handleForCategory();
  v9 = v8;
  if (!PermissionsString)
  {
    sub_10000BF3C(v8);
    v12 = 0;
    v18 = 0;
    v17 = -84;
    goto LABEL_18;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = PermissionsString;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Request FDR permissionStr: %@", buf, 0xCu);
  }

  AMFDRSetOption();
  v10 = v21;
  if (AMFDRPermissionsRequest())
  {
    v11 = handleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Get remote data", buf, 2u);
    }

    v12 = AMFDRDataCopy();
    v10 = v21;
    if (v12)
    {
      v13 = handleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Load remote data", buf, 2u);
      }

      v14 = [(MesaPairer *)self loadMSRkWithData:v12 error:a3];
      v15 = handleForCategory();
      v16 = v15;
      if (v14)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Verify successfully", buf, 2u);
        }

        v17 = 0;
        v18 = 0;
        goto LABEL_18;
      }

      sub_10000BEE8(v15);
LABEL_29:
      v18 = 0;
      v17 = -8;
      goto LABEL_18;
    }

    v17 = -11;
    v18 = sub_1000039B4(0xFFFFFFFFFFFFFFF5, @"Failed to get remote data class", v21);
  }

  else
  {
    v17 = -83;
    v18 = sub_1000039B4(0xFFFFFFFFFFFFFFADLL, @"Failed to request FDR Permissions", v21);
    v12 = 0;
  }

  if (a3 && v18)
  {
    v20 = v18;
    *a3 = v18;
  }

LABEL_18:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();

  return v17;
}

- (BOOL)loadMSRkWithData:(id)a3 error:(id *)a4
{
  v7 = a3;
  v8 = a3;
  v9 = [v8 bytes];
  v10 = [v8 length];

  v11 = sub_1000095D8(1, v9, v10);
  v17 = v11;
  if (v11)
  {
    [NSString stringWithFormat:@"Failed to load data: 0x%x", v11];
  }

  else
  {
    if ([(MesaPairer *)self mesaAlreadyPaired:&v17])
    {
      v12 = 0;
      LOBYTE(a4) = 1;
      goto LABEL_4;
    }

    [NSString stringWithFormat:@"Mesa is not paired using loaded data: 0x%x", v17];
  }
  v12 = ;
  if (!v12)
  {
LABEL_12:
    LOBYTE(a4) = 0;
    goto LABEL_4;
  }

  v14 = handleForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_10000C08C();
  }

  if (a4)
  {
    v15 = CRErrorDomain;
    v18 = NSLocalizedDescriptionKey;
    v19 = v12;
    v16 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    *a4 = [NSError errorWithDomain:v15 code:-8 userInfo:v16];

    goto LABEL_12;
  }

LABEL_4:

  return a4;
}

- (id)createFDROptions
{
  v3 = handleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315138;
    v20 = "[MesaPairer createFDROptions]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v19, 0xCu);
  }

  v4 = +[NSMutableDictionary dictionary];
  [v4 setObject:&__kCFBooleanFalse forKeyedSubscript:@"VerifyData"];
  [v4 setObject:&__kCFBooleanFalse forKeyedSubscript:@"StripImg4"];
  [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:@"GetCombined"];
  v5 = [(MesaPairer *)self inputs];
  v6 = [v5 FDRCAURL];

  if (v6)
  {
    v7 = [(MesaPairer *)self inputs];
    v8 = [v7 FDRCAURL];
    [v4 setObject:v8 forKeyedSubscript:@"CAURL"];
  }

  v9 = [(MesaPairer *)self inputs];
  v10 = [v9 FDRDSURL];

  if (v10)
  {
    v11 = [(MesaPairer *)self inputs];
    v12 = [v11 FDRDSURL];
    [v4 setObject:v12 forKeyedSubscript:@"DSURL"];
  }

  v13 = [(MesaPairer *)self inputs];
  v14 = [v13 trustObjectURL];

  if (v14)
  {
    v15 = [(MesaPairer *)self inputs];
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

- (BOOL)mesaPhysicalPresenceAsserted
{
  v2 = objc_opt_new();
  v3 = [v2 isPhysicalPresenceAsserted];

  return v3;
}

- (BOOL)mesaClearPhysicalPresence
{
  v2 = objc_opt_new();
  v3 = [v2 clearPhysicalPresence];

  return v3;
}

- (BOOL)mesaAlreadyPaired:(int *)a3
{
  v4 = objc_opt_new();
  LOBYTE(a3) = [v4 isPaired:a3];

  return a3;
}

- (void)cancel
{
  v2 = handleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[MesaPairer cancel]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v3, 0xCu);
  }
}

- (void)teardown
{
  v2 = handleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[MesaPairer teardown]";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v3, 0xCu);
  }
}

@end