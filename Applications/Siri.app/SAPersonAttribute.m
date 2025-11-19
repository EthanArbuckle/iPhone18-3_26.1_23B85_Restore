@interface SAPersonAttribute
- (id)_applicableEmail;
- (id)_applicablePhone;
- (id)sr_inPerson;
@end

@implementation SAPersonAttribute

- (id)sr_inPerson
{
  v3 = [(SAPersonAttribute *)self displayText];
  v4 = INPersonHandleLabelMain;
  v5 = [(SAPersonAttribute *)self dataType];
  v6 = [(SAPersonAttribute *)self typedData];
  v50 = v5;
  if (([v5 isEqualToString:@"PhoneNumber"] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"PhoneLabel"))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v6;
      }

      else
      {
        v8 = 0;
      }

      v10 = 2;
      goto LABEL_14;
    }

    v7 = v6;
    v8 = [v7 number];
    v9 = [v7 label];

    v10 = 2;
LABEL_5:
    v4 = v9;
LABEL_14:
    v12 = v6;
    goto LABEL_15;
  }

  if (([v5 isEqualToString:@"EmailAddress"] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"EmailLabel"))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v6;
      }

      else
      {
        v8 = 0;
      }

      v10 = 1;
      goto LABEL_14;
    }

    v11 = v6;
    v8 = [v11 emailAddress];
    v9 = [v11 label];

    v10 = 1;
    goto LABEL_5;
  }

  v47 = v3;
  v48 = v4;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    sub_1000CEBEC();
  }

  v28 = [(SAPersonAttribute *)self data];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v29 = [(SAPersonAttribute *)self object];
  v30 = [v29 phones];

  v31 = [v30 countByEnumeratingWithState:&v55 objects:v60 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v56;
LABEL_24:
    v34 = 0;
    while (1)
    {
      if (*v56 != v33)
      {
        objc_enumerationMutation(v30);
      }

      v35 = *(*(&v55 + 1) + 8 * v34);
      v36 = [v35 number];
      v37 = [v36 isEqualToString:v28];

      if (v37)
      {
        break;
      }

      if (v32 == ++v34)
      {
        v32 = [v30 countByEnumeratingWithState:&v55 objects:v60 count:16];
        if (v32)
        {
          goto LABEL_24;
        }

        goto LABEL_30;
      }
    }

    v8 = v28;
    v4 = [v35 label];

    v10 = 2;
    v3 = v47;
    if (v8)
    {
      goto LABEL_45;
    }
  }

  else
  {
LABEL_30:

    v10 = 0;
    v3 = v47;
    v4 = v48;
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v38 = [(SAPersonAttribute *)self object];
  v39 = [v38 emails];

  v40 = v39;
  v8 = [v39 countByEnumeratingWithState:&v51 objects:v59 count:16];
  if (v8)
  {
    v49 = v4;
    v41 = *v52;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v52 != v41)
        {
          objc_enumerationMutation(v40);
        }

        v43 = *(*(&v51 + 1) + 8 * i);
        v44 = [v43 emailAddress];
        v45 = [v44 isEqualToString:v28];

        if (v45)
        {
          v8 = v28;
          v4 = [v43 label];

          v10 = 1;
          v3 = v47;
          goto LABEL_44;
        }
      }

      v8 = [v40 countByEnumeratingWithState:&v51 objects:v59 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }

    v3 = v47;
    v4 = v49;
  }

LABEL_44:

LABEL_45:
  v12 = v46;
LABEL_15:
  v13 = [(SAPersonAttribute *)self object];
  v14 = objc_alloc_init(NSPersonNameComponents);
  v15 = [v13 firstName];
  [v14 setGivenName:v15];

  v16 = [v13 nickName];
  [v14 setNickname:v16];

  v17 = [v13 middleName];
  [v14 setMiddleName:v17];

  v18 = [v13 lastName];
  [v14 setFamilyName:v18];

  v19 = [v13 prefix];
  [v14 setNamePrefix:v19];

  v20 = [v13 suffix];
  [v14 setNameSuffix:v20];

  v21 = [[INPersonHandle alloc] initWithValue:v8 type:v10 label:v4];
  v22 = [INPerson alloc];
  [v13 internalGUID];
  v24 = v23 = v4;
  v25 = [v13 aceId];
  v26 = [v22 initWithPersonHandle:v21 nameComponents:v14 displayName:v3 image:0 contactIdentifier:v24 customIdentifier:v25];

  return v26;
}

- (id)_applicablePhone
{
  v3 = [(SAPersonAttribute *)self typedData];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_1000CEC60();
    }

    v5 = [(SAPersonAttribute *)self data];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [(SAPersonAttribute *)self object];
    v7 = [v6 phones];

    v4 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v4)
    {
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v7);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = [v10 number];
          v12 = [v11 isEqualToString:v5];

          if (v12)
          {
            v4 = v10;
            goto LABEL_15;
          }
        }

        v4 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  return v4;
}

- (id)_applicableEmail
{
  v3 = [(SAPersonAttribute *)self typedData];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_1000CECD4();
    }

    v5 = [(SAPersonAttribute *)self data];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [(SAPersonAttribute *)self object];
    v7 = [v6 emails];

    v4 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v4)
    {
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v7);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          v11 = [v10 emailAddress];
          v12 = [v11 isEqualToString:v5];

          if (v12)
          {
            v4 = v10;
            goto LABEL_15;
          }
        }

        v4 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  return v4;
}

@end