@interface FMDRemoteUnlockPairingData
+ (BOOL)testPairingData;
+ (BOOL)testPairingData2;
+ (BOOL)testPairingData3;
+ (id)keys;
+ (id)randomDataOfSize:(unint64_t)a3;
- (FMDRemoteUnlockPairingData)initWithData:(id)a3;
- (id)data;
@end

@implementation FMDRemoteUnlockPairingData

+ (id)keys
{
  if (qword_100030B40 != -1)
  {
    sub_100015524();
  }

  v3 = qword_100030B38;

  return v3;
}

- (FMDRemoteUnlockPairingData)initWithData:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = FMDRemoteUnlockPairingData;
  v5 = [(FMDRemoteUnlockPairingData *)&v28 init];
  if (v5)
  {
    v6 = [objc_opt_class() keys];
    v7 = [v4 bytes];
    v23 = v4;
    v8 = [v4 length];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v25;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = v12 + 2;
          if (v12 + 2 <= v8)
          {
            v16 = __rev16(*&v7[v12]);
            v12 = v15 + v16;
            if (v15 + v16 > v8)
            {
              v19 = sub_100004FC8();
              v4 = v23;
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                sub_100015538(v23, v19);
              }

              v20 = 0;
              goto LABEL_22;
            }

            if (v16)
            {
              v17 = *(*(&v24 + 1) + 8 * i);
              v18 = [NSData dataWithBytes:&v7[v15] length:?];
              [(FMDRemoteUnlockPairingData *)v5 setValue:v18 forKey:v17];
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v12 = 0;
    }

    if (v8 > v12)
    {
      v21 = [NSData dataWithBytes:&v7[v12] length:&v8[-v12]];
      [(FMDRemoteUnlockPairingData *)v5 setOtherData:v21];
    }

    v4 = v23;
  }

  v20 = v5;
LABEL_22:

  return v20;
}

- (id)data
{
  v3 = objc_alloc_init(NSMutableData);
  [objc_opt_class() keys];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = v23 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(FMDRemoteUnlockPairingData *)self valueForKey:*(*(&v20 + 1) + 8 * i), v20];
        v10 = malloc_type_malloc(2uLL, 0xF154F28DuLL);
        if (!v10)
        {

          v18 = 0;
          goto LABEL_16;
        }

        v11 = v10;
        v10[1] = [v9 length];
        *v11 = [v9 length] >> 8;
        [v3 appendBytes:v11 length:2];
        [v3 appendData:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = [(FMDRemoteUnlockPairingData *)self otherData];
  if (v12)
  {
    v13 = v12;
    v14 = [(FMDRemoteUnlockPairingData *)self otherData];
    v15 = [v14 length];

    if (v15)
    {
      v16 = [(FMDRemoteUnlockPairingData *)self otherData];
      [v3 appendData:v16];
    }
  }

  v17 = sub_100004FC8();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    sub_1000155B0(v3, v17);
  }

  v18 = v3;
LABEL_16:

  return v18;
}

+ (id)randomDataOfSize:(unint64_t)a3
{
  v4 = malloc_type_malloc(a3, 0x855E318EuLL);
  if (v4)
  {
    v5 = v4;
    arc4random_buf(v4, a3);
    v4 = [NSData dataWithBytesNoCopy:v5 length:a3 freeWhenDone:1];
  }

  return v4;
}

+ (BOOL)testPairingData
{
  v2 = objc_alloc_init(FMDRemoteUnlockPairingData);
  v3 = [objc_opt_class() randomDataOfSize:60];
  [(FMDRemoteUnlockPairingData *)v2 setPairingCheckToken:v3];

  v4 = [objc_opt_class() randomDataOfSize:64];
  [(FMDRemoteUnlockPairingData *)v2 setLostModePrivateKey:v4];

  v5 = [(FMDRemoteUnlockPairingData *)v2 data];
  if (v5)
  {
    v6 = [[FMDRemoteUnlockPairingData alloc] initWithData:v5];
    if (v6)
    {
      [objc_opt_class() keys];
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v7 = v23 = 0u;
      v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v21;
        while (2)
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v21 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v20 + 1) + 8 * i);
            v13 = [(FMDRemoteUnlockPairingData *)v2 valueForKey:v12];
            v14 = [(FMDRemoteUnlockPairingData *)v6 valueForKey:v12];
            v15 = [v13 isEqualToData:v14];

            if (!v15)
            {
              v17 = 0;
              v16 = v7;
              goto LABEL_18;
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

      v16 = sub_100004FC8();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "FMDRemoteUnlockPairingData: test 1 success", v19, 2u);
      }

      v17 = 1;
LABEL_18:
    }

    else
    {
      v7 = sub_100004FC8();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100015628();
      }

      v17 = 0;
    }
  }

  else
  {
    v6 = sub_100004FC8();
    if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_ERROR))
    {
      sub_10001565C();
    }

    v17 = 0;
  }

  return v17;
}

+ (BOOL)testPairingData2
{
  v2 = malloc_type_malloc(0x15uLL, 0x47A2CFEAuLL);
  *v2 = 1280;
  *(v2 + 2) = 875770417;
  v2[6] = 53;
  *(v2 + 7) = 3072;
  *(v2 + 17) = 1818978921;
  *(v2 + 9) = *"abcdefghijkl";
  v3 = [[NSData alloc] initWithBytes:v2 length:21];
  v4 = [[FMDRemoteUnlockPairingData alloc] initWithData:v3];
  if (v4)
  {
    v5 = [[NSData alloc] initWithBytes:"12345" length:5];
    v6 = [[NSData alloc] initWithBytes:"abcdefghijkl" length:12];
    v7 = [(FMDRemoteUnlockPairingData *)v4 pairingCheckToken];
    v8 = [v5 isEqualToData:v7];

    if (v8 && (-[FMDRemoteUnlockPairingData lostModePrivateKey](v4, "lostModePrivateKey"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v6 isEqualToData:v9], v9, v10))
    {
      v11 = sub_100004FC8();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14[0] = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "FMDRemoteUnlockPairingData: test 2 success", v14, 2u);
      }

      v12 = 1;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v5 = sub_100004FC8();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100015628();
    }

    v12 = 0;
  }

  return v12;
}

+ (BOOL)testPairingData3
{
  v2 = malloc_type_malloc(0x28uLL, 0xDBBBE2E2uLL);
  *v2 = 1280;
  *(v2 + 2) = 875770417;
  v2[6] = 53;
  *(v2 + 7) = 3072;
  *(v2 + 17) = 1818978921;
  *(v2 + 9) = *"abcdefghijkl";
  *(v2 + 21) = 2304;
  v2[31] = 57;
  *(v2 + 23) = *"123456789";
  *(v2 + 4) = 0x6867666564636261;
  v3 = [[NSData alloc] initWithBytes:v2 length:40];
  v4 = [[FMDRemoteUnlockPairingData alloc] initWithData:v3];
  if (v4)
  {
    v5 = [[NSData alloc] initWithBytes:"12345" length:5];
    v6 = [[NSData alloc] initWithBytes:"abcdefghijkl" length:12];
    v7 = [[NSData alloc] initWithBytes:"123456789" length:9];
    v8 = [[NSData alloc] initWithBytes:"abcdefgh" length:8];
    v9 = [(FMDRemoteUnlockPairingData *)v4 pairingCheckToken];
    v10 = [v5 isEqualToData:v9];

    if (v10)
    {
      v11 = [(FMDRemoteUnlockPairingData *)v4 lostModePrivateKey];
      v12 = [v6 isEqualToData:v11];

      if (v12)
      {
        v13 = [(FMDRemoteUnlockPairingData *)v4 phoneNumber];
        v14 = [v7 isEqualToData:v13];

        if (v14)
        {
          v15 = [(FMDRemoteUnlockPairingData *)v4 otherData];
          v16 = [v8 isEqualToData:v15];

          if (v16)
          {
            v17 = [(FMDRemoteUnlockPairingData *)v4 data];
            v18 = [v17 isEqualToData:v3];
            v19 = sub_100004FC8();
            v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
            if (v18)
            {
              if (v20)
              {
                v26 = 0;
                v21 = "FMDRemoteUnlockPairingData: test 3 success";
                v22 = &v26;
LABEL_26:
                _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v21, v22, 2u);
              }
            }

            else if (v20)
            {
              *v27 = 0;
              v21 = "FMDRemoteUnlockPairingData: decodedData failure";
              v22 = v27;
              goto LABEL_26;
            }

            goto LABEL_22;
          }

          v17 = sub_100004FC8();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v23 = "FMDRemoteUnlockPairingData: otherData failure";
            v24 = buf;
            goto LABEL_20;
          }

LABEL_21:
          v18 = 0;
LABEL_22:

          goto LABEL_23;
        }

        v17 = sub_100004FC8();
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_21;
        }

        v29 = 0;
        v23 = "FMDRemoteUnlockPairingData: phoneNumber failure";
        v24 = &v29;
      }

      else
      {
        v17 = sub_100004FC8();
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_21;
        }

        v30 = 0;
        v23 = "FMDRemoteUnlockPairingData: lostModePrivateKey failure";
        v24 = &v30;
      }
    }

    else
    {
      v17 = sub_100004FC8();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      v31 = 0;
      v23 = "FMDRemoteUnlockPairingData: pairingCheckToken failure";
      v24 = &v31;
    }

LABEL_20:
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v23, v24, 2u);
    goto LABEL_21;
  }

  v5 = sub_100004FC8();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_100015690();
  }

  v18 = 0;
LABEL_23:

  return v18;
}

@end