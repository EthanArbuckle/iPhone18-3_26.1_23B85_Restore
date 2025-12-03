@interface SAPersonAttribute
- (id)_applicableEmail;
- (id)_applicablePhone;
- (id)sr_inPerson;
@end

@implementation SAPersonAttribute

- (id)sr_inPerson
{
  displayText = [(SAPersonAttribute *)self displayText];
  label2 = INPersonHandleLabelMain;
  dataType = [(SAPersonAttribute *)self dataType];
  typedData = [(SAPersonAttribute *)self typedData];
  v50 = dataType;
  if (([dataType isEqualToString:@"PhoneNumber"] & 1) != 0 || objc_msgSend(dataType, "isEqualToString:", @"PhoneLabel"))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        number = typedData;
      }

      else
      {
        number = 0;
      }

      v10 = 2;
      goto LABEL_14;
    }

    v7 = typedData;
    number = [v7 number];
    label = [v7 label];

    v10 = 2;
LABEL_5:
    label2 = label;
LABEL_14:
    v12 = typedData;
    goto LABEL_15;
  }

  if (([dataType isEqualToString:@"EmailAddress"] & 1) != 0 || objc_msgSend(dataType, "isEqualToString:", @"EmailLabel"))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        number = typedData;
      }

      else
      {
        number = 0;
      }

      v10 = 1;
      goto LABEL_14;
    }

    v11 = typedData;
    number = [v11 emailAddress];
    label = [v11 label];

    v10 = 1;
    goto LABEL_5;
  }

  v47 = displayText;
  v48 = label2;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    sub_1000CEBEC();
  }

  data = [(SAPersonAttribute *)self data];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  object = [(SAPersonAttribute *)self object];
  phones = [object phones];

  v31 = [phones countByEnumeratingWithState:&v55 objects:v60 count:16];
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
        objc_enumerationMutation(phones);
      }

      v35 = *(*(&v55 + 1) + 8 * v34);
      number2 = [v35 number];
      v37 = [number2 isEqualToString:data];

      if (v37)
      {
        break;
      }

      if (v32 == ++v34)
      {
        v32 = [phones countByEnumeratingWithState:&v55 objects:v60 count:16];
        if (v32)
        {
          goto LABEL_24;
        }

        goto LABEL_30;
      }
    }

    number = data;
    label2 = [v35 label];

    v10 = 2;
    displayText = v47;
    if (number)
    {
      goto LABEL_45;
    }
  }

  else
  {
LABEL_30:

    v10 = 0;
    displayText = v47;
    label2 = v48;
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  object2 = [(SAPersonAttribute *)self object];
  emails = [object2 emails];

  v40 = emails;
  number = [emails countByEnumeratingWithState:&v51 objects:v59 count:16];
  if (number)
  {
    v49 = label2;
    v41 = *v52;
    while (2)
    {
      for (i = 0; i != number; i = i + 1)
      {
        if (*v52 != v41)
        {
          objc_enumerationMutation(v40);
        }

        v43 = *(*(&v51 + 1) + 8 * i);
        emailAddress = [v43 emailAddress];
        v45 = [emailAddress isEqualToString:data];

        if (v45)
        {
          number = data;
          label2 = [v43 label];

          v10 = 1;
          displayText = v47;
          goto LABEL_44;
        }
      }

      number = [v40 countByEnumeratingWithState:&v51 objects:v59 count:16];
      if (number)
      {
        continue;
      }

      break;
    }

    displayText = v47;
    label2 = v49;
  }

LABEL_44:

LABEL_45:
  v12 = v46;
LABEL_15:
  object3 = [(SAPersonAttribute *)self object];
  v14 = objc_alloc_init(NSPersonNameComponents);
  firstName = [object3 firstName];
  [v14 setGivenName:firstName];

  nickName = [object3 nickName];
  [v14 setNickname:nickName];

  middleName = [object3 middleName];
  [v14 setMiddleName:middleName];

  lastName = [object3 lastName];
  [v14 setFamilyName:lastName];

  prefix = [object3 prefix];
  [v14 setNamePrefix:prefix];

  suffix = [object3 suffix];
  [v14 setNameSuffix:suffix];

  v21 = [[INPersonHandle alloc] initWithValue:number type:v10 label:label2];
  v22 = [INPerson alloc];
  [object3 internalGUID];
  v24 = v23 = label2;
  aceId = [object3 aceId];
  v26 = [v22 initWithPersonHandle:v21 nameComponents:v14 displayName:displayText image:0 contactIdentifier:v24 customIdentifier:aceId];

  return v26;
}

- (id)_applicablePhone
{
  typedData = [(SAPersonAttribute *)self typedData];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = typedData;
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_1000CEC60();
    }

    data = [(SAPersonAttribute *)self data];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    object = [(SAPersonAttribute *)self object];
    phones = [object phones];

    v4 = [phones countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v4)
    {
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(phones);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          number = [v10 number];
          v12 = [number isEqualToString:data];

          if (v12)
          {
            v4 = v10;
            goto LABEL_15;
          }
        }

        v4 = [phones countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  typedData = [(SAPersonAttribute *)self typedData];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = typedData;
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      sub_1000CECD4();
    }

    data = [(SAPersonAttribute *)self data];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    object = [(SAPersonAttribute *)self object];
    emails = [object emails];

    v4 = [emails countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v4)
    {
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(emails);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          emailAddress = [v10 emailAddress];
          v12 = [emailAddress isEqualToString:data];

          if (v12)
          {
            v4 = v10;
            goto LABEL_15;
          }
        }

        v4 = [emails countByEnumeratingWithState:&v14 objects:v18 count:16];
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