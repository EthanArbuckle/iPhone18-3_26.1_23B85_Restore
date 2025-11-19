@interface HMDAccountHandleFormatter
+ (id)defaultFormatter;
- (BOOL)getObjectValue:(id *)a3 forString:(id)a4 errorDescription:(id *)a5;
- (id)accountHandleFromString:(id)a3;
- (id)privateStringForObjectValue:(id)a3;
- (id)stringForObjectValue:(id)a3;
@end

@implementation HMDAccountHandleFormatter

+ (id)defaultFormatter
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (id)privateStringForObjectValue:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = v4;
  if (!v6)
  {
    v8 = v4;
    objc_opt_class();
    v9 = (objc_opt_isKindOfClass() & 1) != 0 ? v8 : 0;
    v10 = v9;

    v7 = [(HMDAccountHandleFormatter *)self accountHandleFromString:v10];

    if (!v7)
    {
      goto LABEL_14;
    }
  }

  v11 = [v7 type];
  if (v11 == 2)
  {
    v12 = [v7 URI];
    v23 = [v12 unprefixedURI];
    v14 = self;
    v15 = v23;
    v24 = objc_autoreleasePoolPush();
    v25 = [v15 length];
    v26 = [v15 characterAtIndex:0] == 43;
    v27 = &v25[-v26] >= 4;
    v28 = &v25[-v26 - 4];
    if (v28 != 0 && v27)
    {
      v59 = v14;
      v37 = v24;
      v38 = v12;
      v39 = +[NSMutableString string];
      if (v28 >= 1)
      {
        v40 = v28;
        do
        {
          [v39 appendString:@"."];
          --v40;
        }

        while (v40);
      }

      v33 = [v15 stringByReplacingCharactersInRange:v26 withString:{v28, v39}];

      v12 = v38;
      v24 = v37;
      v14 = v59;
    }

    else
    {
      v29 = objc_autoreleasePoolPush();
      v30 = v14;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543362;
        v66 = v32;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "%{public}@Phone number is too short to partially redact", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v29);
      v33 = 0;
    }

    v36 = v24;
    goto LABEL_31;
  }

  if (v11 != 1)
  {
LABEL_14:
    v22 = 0;
    goto LABEL_34;
  }

  v12 = [v7 URI];
  v13 = [v12 unprefixedURI];
  v14 = self;
  v15 = v13;
  v16 = objc_autoreleasePoolPush();
  if ([v15 length] > 4)
  {
    v34 = [v15 rangeOfString:@"@"];
    if (v34 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v35 = v34;
      if (v34)
      {
        v57 = v16;
        v58 = v14;
        v60 = v12;
        v43 = [v15 substringToIndex:v34];
        v56 = [v43 stringByReplacingCharactersInRange:1 withString:{v35 - 1, @"***"}];

        v44 = [v15 substringFromIndex:v35 + 1];
        v45 = [v44 componentsSeparatedByString:@"."];

        v46 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v45 count]);
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v47 = v45;
        v48 = [v47 countByEnumeratingWithState:&v61 objects:buf count:16];
        if (v48)
        {
          v49 = v48;
          v50 = *v62;
          do
          {
            for (i = 0; i != v49; i = i + 1)
            {
              if (*v62 != v50)
              {
                objc_enumerationMutation(v47);
              }

              v52 = *(*(&v61 + 1) + 8 * i);
              if ([v52 length])
              {
                v53 = [v52 stringByReplacingCharactersInRange:1 withString:{objc_msgSend(v52, "length") - 1, @"***"}];
                [v46 addObject:v53];
              }
            }

            v49 = [v47 countByEnumeratingWithState:&v61 objects:buf count:16];
          }

          while (v49);
        }

        v54 = [v46 componentsJoinedByString:@"."];

        v55 = [v54 lowercaseString];
        v33 = [NSString stringWithFormat:@"%@@%@", v56, v55];

        v14 = v58;
        v12 = v60;
        v16 = v57;
        goto LABEL_25;
      }
    }

    v17 = objc_autoreleasePoolPush();
    v18 = v14;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v66 = v20;
      v21 = "%{public}@Failed to determine '@' range";
      goto LABEL_23;
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = v14;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v66 = v20;
      v21 = "%{public}@Invalid email address length";
LABEL_23:
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, v21, buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v17);
  v33 = 0;
LABEL_25:
  v36 = v16;
LABEL_31:
  objc_autoreleasePoolPop(v36);
  v41 = @"<redacted>";
  if (v33)
  {
    v41 = v33;
  }

  v22 = v41;

LABEL_34:

  return v22;
}

- (id)accountHandleFromString:(id)a3
{
  v8 = 0;
  v3 = [(HMDAccountHandleFormatter *)self getObjectValue:&v8 forString:a3 errorDescription:0];
  v4 = v8;
  v5 = v4;
  v6 = 0;
  if (v3)
  {
    v6 = v4;
  }

  return v6;
}

- (BOOL)getObjectValue:(id *)a3 forString:(id)a4 errorDescription:(id *)a5
{
  v7 = IDSCopyAddressDestinationForDestination();
  if (([v7 _appearsToBeEmail] & 1) != 0 || objc_msgSend(v7, "hasPrefix:", @"mailto:"))
  {
    v8 = [IDSURI alloc];
    v9 = IDSCopyIDForEmailAddress();
LABEL_4:
    v10 = v9;
    v11 = [v8 initWithPrefixedURI:v9];

    if (a3)
    {
      *a3 = [[HMDAccountHandle alloc] initWithURI:v11];
    }

    v12 = 1;
    goto LABEL_7;
  }

  if (([v7 _appearsToBePhoneNumber] & 1) != 0 || objc_msgSend(v7, "hasPrefix:", @"tel:"))
  {
    v8 = [IDSURI alloc];
    v9 = IDSCopyIDForPhoneNumber();
    goto LABEL_4;
  }

  v12 = 0;
  v11 = 0;
  if (a5)
  {
    *a5 = @"String does not appear to be valid handle type";
  }

LABEL_7:

  return v12;
}

- (id)stringForObjectValue:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v4;
  if (v5)
  {
    goto LABEL_9;
  }

  v7 = v4;
  objc_opt_class();
  v8 = (objc_opt_isKindOfClass() & 1) != 0 ? v7 : 0;
  v9 = v8;

  v6 = [(HMDAccountHandleFormatter *)self accountHandleFromString:v9];

  if (v6)
  {
LABEL_9:
    v10 = [v6 URI];
    v11 = [v10 unprefixedURI];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end