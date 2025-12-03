@interface CBAPTicket
+ (id)sharedInstance;
- (BOOL)_hasEntitlementBoolForTag:(unint64_t)tag;
- (BOOL)_verifyAPTicketDigest:(id)digest;
- (BOOL)isEntitledForTag:(unint64_t)tag;
- (CBAPTicket)init;
- (id)_loadAPTicket;
@end

@implementation CBAPTicket

+ (id)sharedInstance
{
  if (qword_1000923A0 != -1)
  {
    sub_100047240();
  }

  v3 = qword_100092398;

  return v3;
}

- (CBAPTicket)init
{
  v11.receiver = self;
  v11.super_class = CBAPTicket;
  v2 = [(CBAPTicket *)&v11 init];
  if (v2)
  {
    v3 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Loading APTicket...", buf, 2u);
    }

    _loadAPTicket = [(CBAPTicket *)v2 _loadAPTicket];
    apTicket = v2->_apTicket;
    v2->_apTicket = _loadAPTicket;

    if (v2->_apTicket)
    {
      v6 = [(CBAPTicket *)v2 _verifyAPTicketDigest:?];
    }

    else
    {
      v6 = 0;
    }

    v2->_isValid = v6;
    v7 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v2->_apTicket != 0;
      isValid = v2->_isValid;
      *buf = 67109376;
      v13 = v8;
      v14 = 1024;
      v15 = isValid;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "APTicket is loaded: (%d) and valid: (%d)", buf, 0xEu);
    }
  }

  return v2;
}

- (BOOL)isEntitledForTag:(unint64_t)tag
{
  if ([(CBAPTicket *)self isValid])
  {

    return [(CBAPTicket *)self _hasEntitlementBoolForTag:tag];
  }

  else
  {
    v5 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100047254(v5);
    }

    return 0;
  }
}

- (id)_loadAPTicket
{
  v2 = +[MSUDataAccessor sharedDataAccessor];
  v11 = 0;
  v3 = [v2 copyPathForPersonalizedData:2 error:&v11];
  v4 = v11;

  if (!v3)
  {
    v8 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100047320(v4, v8);
    }

    v6 = 0;
    goto LABEL_11;
  }

  v5 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "APTicket path is %@", buf, 0xCu);
  }

  v10 = v4;
  v6 = [NSData dataWithContentsOfFile:v3 options:0 error:&v10];
  v7 = v10;

  if (!v6)
  {
    v8 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100047298(v3, v7, v8);
    }

    v4 = v7;
LABEL_11:

    v7 = v4;
  }

  return v6;
}

- (BOOL)_verifyAPTicketDigest:(id)digest
{
  digestCopy = digest;
  v4 = MGCopyAnswer();
  if (!v4)
  {
    v9 = CheckerBoardLogHandleForCategory();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *buf = 138412290;
    v22 = @"BootManifestHash";
    v10 = "Failed to query MobileGestalt for %@";
    v11 = v9;
    v12 = 12;
LABEL_11:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
    goto LABEL_12;
  }

  v5 = MGCopyAnswer();
  if (!v5)
  {
    v9 = CheckerBoardLogHandleForCategory();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v10 = "MobileGestalt returned NULL for Image4CryptoHashMethod";
    v11 = v9;
    v12 = 2;
    goto LABEL_11;
  }

  v6 = CFStringCompare(v5, @"sha2-384", 1uLL);
  [digestCopy bytes];
  [digestCopy length];
  if (v6)
  {
    v7 = AMSupportDigestSha1();
    v8 = 20;
    if (v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v7 = AMSupportDigestSha384();
    v8 = 48;
    if (v7)
    {
LABEL_5:
      v9 = CheckerBoardLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100047398(v7, v8, v9);
      }

      goto LABEL_12;
    }
  }

  if (CFDataGetLength(v4) != v8)
  {
    v9 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      v18 = "Digest length differs from the boot manifest hash";
      goto LABEL_25;
    }

LABEL_12:

    v13 = 0;
    goto LABEL_13;
  }

  BytePtr = CFDataGetBytePtr(v4);
  if (memcmp(buf, BytePtr, v8))
  {
    v9 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      v18 = "Digest of provided ticket does not match boot manifest hash";
LABEL_25:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v18, &v19, 2u);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v13 = 1;
LABEL_13:
  v14 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = "un";
    if (v13)
    {
      v15 = "";
    }

    v19 = 136315138;
    v20 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Digest verified %ssuccessfully", &v19, 0xCu);
  }

  AMSupportSafeRelease();
  AMSupportSafeRelease();

  return v13;
}

- (BOOL)_hasEntitlementBoolForTag:(unint64_t)tag
{
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  apTicket = [(CBAPTicket *)self apTicket];

  if (!apTicket)
  {
    v8 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "AP Ticket is not loaded";
      goto LABEL_7;
    }

LABEL_12:

    return 0;
  }

  apTicket2 = [(CBAPTicket *)self apTicket];
  [apTicket2 bytes];
  apTicket3 = [(CBAPTicket *)self apTicket];
  [apTicket3 length];
  inited = Img4DecodeInitManifest();

  if (inited)
  {
    v8 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "failed to parse AP ticket as Img4 manifest\n";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  BooleanFromSection = Img4DecodeGetBooleanFromSection();
  if (BooleanFromSection)
  {
    v11 = BooleanFromSection;
    v8 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v14 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "the result is %i", buf, 8u);
    }

    goto LABEL_12;
  }

  return 0;
}

@end