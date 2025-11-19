@interface PIVToken
- (BOOL)populateIdentityFromSmartCard:(id)a3 into:(id)a4 certificateTag:(unint64_t)a5 name:(id)a6 keyTag:(unint64_t)a7 name:(id)a8 sign:(BOOL)a9 suitableForLogin:(BOOL)a10 keyManagement:(BOOL)a11 constraint:(id)a12 error:(id *)a13;
- (PIVToken)initWithSmartCard:(id)a3 AID:(id)a4 PIVDriver:(id)a5 error:(id *)p_isa;
- (id)dataOfCertificate:(id)a3 smartCard:(id)a4 error:(id *)a5;
- (id)token:(id)a3 createSessionWithError:(id *)a4;
@end

@implementation PIVToken

- (id)dataOfCertificate:(id)a3 smartCard:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 recordsOfObject:v7 error:a5];
  v10 = v9;
  if (v9)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = sub_1000025CC;
    v24 = sub_1000025DC;
    v25 = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000025E4;
    v15[3] = &unk_100008310;
    v15[4] = &v20;
    v15[5] = &v16;
    [v9 enumerateObjectsUsingBlock:v15];
    v11 = v21[5];
    if (v11)
    {
      if (*(v17 + 24) == 1)
      {
        v12 = [v11 inflate];
      }

      else
      {
        v12 = v11;
      }

      v13 = v12;
    }

    else if (a5)
    {
      [NSError errorWithDomain:TKErrorDomain code:-6 userInfo:0];
      *a5 = v13 = 0;
    }

    else
    {
      v13 = 0;
    }

    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)populateIdentityFromSmartCard:(id)a3 into:(id)a4 certificateTag:(unint64_t)a5 name:(id)a6 keyTag:(unint64_t)a7 name:(id)a8 sign:(BOOL)a9 suitableForLogin:(BOOL)a10 keyManagement:(BOOL)a11 constraint:(id)a12 error:(id *)a13
{
  v19 = a13;
  v20 = a4;
  v21 = a6;
  v44 = a8;
  v22 = a12;
  v23 = a3;
  v24 = [TKBERTLVRecord dataForTag:a5];
  v25 = [(PIVToken *)self dataOfCertificate:v24 smartCard:v23 error:a13];

  if (v25)
  {
    v26 = SecCertificateCreateWithData(kCFAllocatorDefault, v25);
    if (v26)
    {
      v27 = [[TKTokenKeychainCertificate alloc] initWithCertificate:v26 objectID:v24];
      v28 = v27;
      if (!v27)
      {
        v19 = 0;
LABEL_23:

        goto LABEL_24;
      }

      v43 = v22;
      [v27 setName:v21];
      v29 = [PIVTokenKeychainKey alloc];
      v30 = [NSNumber numberWithUnsignedLongLong:a7];
      v31 = [v28 objectID];
      v32 = [(PIVTokenKeychainKey *)v29 initWithCertificate:v26 objectID:v30 certificateID:v31];

      v19 = v32 != 0;
      if (!v32)
      {
LABEL_22:

        v22 = v43;
        goto LABEL_23;
      }

      [(PIVTokenKeychainKey *)v32 setName:v44];
      v42 = +[NSMutableDictionary dictionary];
      [(PIVTokenKeychainKey *)v32 setCanSign:a9];
      [(PIVTokenKeychainKey *)v32 setSuitableForLogin:a10];
      if (a9)
      {
        [v42 setObject:v43 forKeyedSubscript:&off_100008688];
      }

      v33 = [(PIVTokenKeychainKey *)v32 keyType];
      v34 = [v33 isEqual:kSecAttrKeyTypeRSA];

      if (v34)
      {
        [(PIVTokenKeychainKey *)v32 setCanDecrypt:a11];
        if (!a11)
        {
LABEL_21:
          [(PIVTokenKeychainKey *)v32 setConstraints:v42];
          [v20 addObject:v28];
          [v20 addObject:v32];

          goto LABEL_22;
        }

        v35 = &off_1000086A0;
      }

      else
      {
        v39 = [(PIVTokenKeychainKey *)v32 keyType];
        v40 = [v39 isEqual:kSecAttrKeyTypeECSECPrimeRandom];

        if (!v40)
        {
          goto LABEL_21;
        }

        [(PIVTokenKeychainKey *)v32 setCanPerformKeyExchange:a11];
        if (!a11)
        {
          goto LABEL_21;
        }

        v35 = &off_1000086B8;
      }

      [v42 setObject:v43 forKeyedSubscript:v35];
      goto LABEL_21;
    }

    if (a13)
    {
      v45 = NSLocalizedDescriptionKey;
      v36 = +[NSBundle mainBundle];
      v37 = [v36 localizedStringForKey:@"CORRUPTED_CERT" value:&stru_1000083D8 table:0];
      v46 = v37;
      v38 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      *a13 = [NSError errorWithDomain:TKErrorDomain code:-3 userInfo:v38];

      goto LABEL_15;
    }

    goto LABEL_24;
  }

  if (a13)
  {
    v26 = [*a13 domain];
    if (![v26 isEqual:TKErrorDomain])
    {
LABEL_15:
      v19 = 0;
      goto LABEL_24;
    }

    v19 = [*a13 code] == -6;
LABEL_24:
  }

  return v19;
}

- (PIVToken)initWithSmartCard:(id)a3 AID:(id)a4 PIVDriver:(id)a5 error:(id *)p_isa
{
  v71 = a3;
  v66 = a4;
  v67 = a5;
  v10 = [TKBERTLVRecord dataForTag:6275330];
  v68 = [v71 recordsOfObject:v10 error:p_isa];

  if (v68)
  {
    v85 = 0;
    v86 = &v85;
    v87 = 0x3032000000;
    v88 = sub_1000025CC;
    v89 = sub_1000025DC;
    v90 = 0;
    v84[0] = _NSConcreteStackBlock;
    v84[1] = 3221225472;
    v84[2] = sub_1000034B8;
    v84[3] = &unk_100008338;
    v84[4] = &v85;
    [v68 enumerateObjectsUsingBlock:v84];
    v11 = v86[5];
    if (v11 && [v11 length])
    {
      v12 = v86[5];
      v83.receiver = self;
      v83.super_class = PIVToken;
      v13 = [(PIVToken *)&v83 initWithSmartCard:v71 AID:v66 instanceID:v12 tokenDriver:v67];
      if (v13)
      {
        v69 = v13;
        v79 = 0;
        v80 = &v79;
        v81 = 0x2020000000;
        v82 = 0;
        v14 = [TKBERTLVRecord dataForTag:6275340];
        v78 = 0;
        v65 = [v71 recordsOfObject:v14 error:&v78];
        v15 = v78;

        if (v65)
        {
          v77[0] = _NSConcreteStackBlock;
          v77[1] = 3221225472;
          v77[2] = sub_10000354C;
          v77[3] = &unk_100008338;
          v77[4] = &v79;
          [v65 enumerateObjectsUsingBlock:v77];
        }

        else
        {
          v18 = sub_1000021D4();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            sub_10000389C();
          }

          v15 = 0;
        }

        v70 = [NSMutableArray arrayWithCapacity:v80[3] + 4];
        v19 = +[NSBundle mainBundle];
        v20 = [v19 localizedStringForKey:@"PIV_AUTH_CERT" value:&stru_1000083D8 table:0];
        v21 = +[NSBundle mainBundle];
        v22 = [v21 localizedStringForKey:@"PIV_AUTH_KEY" value:&stru_1000083D8 table:0];
        v76 = v15;
        BYTE2(v60) = 0;
        LOWORD(v60) = 257;
        v23 = [PIVToken populateIdentityFromSmartCard:v69 into:"populateIdentityFromSmartCard:into:certificateTag:name:keyTag:name:sign:suitableForLogin:keyManagement:constraint:error:" certificateTag:v71 name:v70 keyTag:6275333 name:v20 sign:154 suitableForLogin:v22 keyManagement:v60 constraint:@"PIN" error:&v76];
        v24 = v76;

        if ((v23 & 1) == 0)
        {
          v25 = sub_1000021D4();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            sub_10000390C();
          }

          v24 = 0;
        }

        v26 = +[NSBundle mainBundle];
        v27 = [v26 localizedStringForKey:@"CARD_AUTH_CERT" value:&stru_1000083D8 table:0];
        v28 = +[NSBundle mainBundle];
        v29 = [v28 localizedStringForKey:@"CARD_AUTH_KEY" value:&stru_1000083D8 table:0];
        v75 = v24;
        BYTE2(v61) = 0;
        LOWORD(v61) = 1;
        v30 = [PIVToken populateIdentityFromSmartCard:v69 into:"populateIdentityFromSmartCard:into:certificateTag:name:keyTag:name:sign:suitableForLogin:keyManagement:constraint:error:" certificateTag:v71 name:v70 keyTag:6275329 name:v27 sign:158 suitableForLogin:v29 keyManagement:v61 constraint:&__kCFBooleanTrue error:&v75];
        v31 = v75;

        if ((v30 & 1) == 0)
        {
          v32 = sub_1000021D4();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            sub_10000397C();
          }

          v31 = 0;
        }

        v33 = +[NSBundle mainBundle];
        v34 = [v33 localizedStringForKey:@"DIG_SIG_CERT" value:&stru_1000083D8 table:0];
        v35 = +[NSBundle mainBundle];
        v36 = [v35 localizedStringForKey:@"DIG_SIG_KEY" value:&stru_1000083D8 table:0];
        v74 = v31;
        BYTE2(v62) = 0;
        LOWORD(v62) = 1;
        v37 = [PIVToken populateIdentityFromSmartCard:v69 into:"populateIdentityFromSmartCard:into:certificateTag:name:keyTag:name:sign:suitableForLogin:keyManagement:constraint:error:" certificateTag:v71 name:v70 keyTag:6275338 name:v34 sign:156 suitableForLogin:v36 keyManagement:v62 constraint:@"PINAlways" error:&v74];
        v38 = v74;

        if ((v37 & 1) == 0)
        {
          v39 = sub_1000021D4();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            sub_1000039EC();
          }

          v38 = 0;
        }

        v40 = +[NSBundle mainBundle];
        v41 = [v40 localizedStringForKey:@"KEY_MGMT_CERT" value:&stru_1000083D8 table:0];
        v42 = +[NSBundle mainBundle];
        v43 = [v42 localizedStringForKey:@"KEY_MGMT_KEY" value:&stru_1000083D8 table:0];
        v73 = v38;
        BYTE2(v63) = 1;
        LOWORD(v63) = 0;
        v44 = [PIVToken populateIdentityFromSmartCard:v69 into:"populateIdentityFromSmartCard:into:certificateTag:name:keyTag:name:sign:suitableForLogin:keyManagement:constraint:error:" certificateTag:v71 name:v70 keyTag:6275339 name:v41 sign:157 suitableForLogin:v43 keyManagement:v63 constraint:@"PIN" error:&v73];
        v45 = v73;

        if ((v44 & 1) == 0)
        {
          v46 = sub_1000021D4();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            sub_100003A5C();
          }

          v45 = 0;
        }

        if (v80[3] >= 1)
        {
          v47 = 0;
          do
          {
            v48 = +[NSBundle mainBundle];
            v49 = [v48 localizedStringForKey:@"RET_KEY_MGMT_CERT" value:&stru_1000083D8 table:0];
            v50 = v47 + 1;
            v51 = [NSString stringWithFormat:v49, v47 + 1];

            v52 = +[NSBundle mainBundle];
            v53 = [v52 localizedStringForKey:@"RET_KEY_MGMT_KEY" value:&stru_1000083D8 table:0];
            v54 = [NSString stringWithFormat:v53, v47 + 1];

            v72 = v45;
            BYTE2(v64) = 1;
            LOWORD(v64) = 0;
            LOBYTE(v53) = [PIVToken populateIdentityFromSmartCard:v69 into:"populateIdentityFromSmartCard:into:certificateTag:name:keyTag:name:sign:suitableForLogin:keyManagement:constraint:error:" certificateTag:v71 name:v70 keyTag:v47 + 6275341 name:v51 sign:v47 + 130 suitableForLogin:v54 keyManagement:v64 constraint:@"PIN" error:&v72];
            v55 = v72;

            if (v53)
            {
              v45 = v55;
            }

            else
            {
              v56 = sub_1000021D4();
              if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218242;
                v92 = v47;
                v93 = 2114;
                v94 = v55;
                _os_log_error_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "failed to read retired key management (%ld) identity (%{public}@)", buf, 0x16u);
              }

              v45 = 0;
            }

            ++v47;
          }

          while (v50 < v80[3]);
        }

        if (![v70 count])
        {
          v57 = sub_1000021D4();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            sub_100003ACC();
          }
        }

        v58 = [(PIVToken *)v69 keychainContents];
        [v58 fillWithItems:v70];

        _Block_object_dispose(&v79, 8);
        v13 = v69;
      }

      self = v13;
      p_isa = &self->super.super.super.isa;
    }

    else if (p_isa)
    {
      *p_isa = [NSError errorWithDomain:TKErrorDomain code:-6 userInfo:0];
      v16 = sub_1000021D4();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100003B0C();
      }

      p_isa = 0;
    }

    _Block_object_dispose(&v85, 8);
  }

  else
  {
    v17 = sub_1000021D4();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_100003B4C(p_isa);
    }

    p_isa = 0;
  }

  return p_isa;
}

- (id)token:(id)a3 createSessionWithError:(id *)a4
{
  v4 = [[PIVTokenSession alloc] initWithToken:self];

  return v4;
}

@end