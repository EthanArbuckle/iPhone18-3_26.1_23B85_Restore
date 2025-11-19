@interface CNSIMImporter
+ (BOOL)isContact:(id)a3 presentInContainer:(id)a4 store:(id)a5;
+ (id)importPhonebookEntry:(id)a3 intoContactStore:(id)a4 container:(id)a5;
+ (id)log;
+ (id)nameComponentsFromString:(id)a3;
+ (id)prepareName:(id)a3;
+ (void)setNameString:(id)a3 onContact:(id)a4;
@end

@implementation CNSIMImporter

+ (id)importPhonebookEntry:(id)a3 intoContactStore:(id)a4 container:(id)a5
{
  v7 = a3;
  v8 = a4;
  v49 = a5;
  v50 = objc_alloc_init(CNSaveRequest);
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v76 = 1;
  v9 = +[NSCharacterSet whitespaceCharacterSet];
  v51 = v8;
  v10 = [v7 objectForKey:kCTPhoneBookNameKey];
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = &stru_14F18;
  }

  v48 = v7;
  v12 = [v7 objectForKey:kCTPhoneBookNumberKey];
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = &stru_14F18;
  }

  v14 = [(__CFString *)v11 stringByTrimmingCharactersInSet:v9];

  v52 = [(__CFString *)v13 stringByTrimmingCharactersInSet:v9];

  v15 = CNIsStringEmpty;
  v16 = (*(CNIsStringEmpty + 16))(CNIsStringEmpty, v14);
  v17 = (*(v15 + 16))(v15, v52);
  if (v16 & v17)
  {
    v18 = 0;
    goto LABEL_31;
  }

  v46 = CNLabelPhoneNumberMobile;
  v19 = [v14 length];
  if (v19 >= 3 && [v14 characterAtIndex:v19 - 2] == 47)
  {
    v20 = __toupper([v14 characterAtIndex:v19 - 1]);
    if (v20 != 72)
    {
      if (v20 == 87)
      {
        v21 = &CNLabelWork;
      }

      else
      {
        v21 = &CNLabelOther;
      }

      v22 = *v21;

      v46 = v22;
    }

    v23 = [v14 substringToIndex:v19 - 2];
    v24 = [v23 stringByTrimmingCharactersInSet:v9];

    v14 = v24;
  }

  v18 = objc_alloc_init(CNMutableContact);
  if ((v17 & 1) == 0)
  {
    v25 = [CNPhoneNumber phoneNumberWithStringValue:v52];
    v26 = [CNLabeledValue labeledValueWithLabel:v46 value:v25];
    v79 = v26;
    v27 = [NSArray arrayWithObjects:&v79 count:1];
    [v18 setPhoneNumbers:v27];
  }

  if ((v16 & 1) == 0)
  {
    [a1 setNameString:v14 onContact:v18];
    v28 = [CNContactFormatter stringFromContact:v18 style:0];

    v14 = v28;
  }

  v29 = (*(v15 + 16))(v15, v14);
  v45 = objc_alloc_init(CNContactFormatter);
  v30 = v17 ^ 1;
  v31 = v29 ^ 1;
  v32 = *(v74 + 24);
  if (v32 == 1 && v30)
  {
    v33 = [CNPhoneNumber phoneNumberWithStringValue:v52];
    v34 = [CNContact predicateForContactsMatchingPhoneNumber:v33];

    v35 = [CNContactFormatter descriptorForRequiredKeysForStyle:0];
    v78 = v35;
    v36 = [NSArray arrayWithObjects:&v78 count:1];

    v37 = [v51 unifiedContactsMatchingPredicate:v34 keysToFetch:v36 error:0];
    v65[0] = _NSConcreteStackBlock;
    v65[1] = 3221225472;
    v65[2] = sub_2CB0;
    v65[3] = &unk_14A50;
    v66 = v49;
    v71 = a1;
    v67 = v51;
    v68 = v45;
    v72 = v31;
    v69 = v14;
    v70 = &v73;
    [v37 enumerateObjectsUsingBlock:v65];

    LOBYTE(v32) = *(v74 + 24);
  }

  if ((v32 & 1) == 0 || !v31)
  {
    if ((v32 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_29:
    v42 = [v49 identifier];
    [v50 addContact:v18 toContainerWithIdentifier:v42];
    goto LABEL_30;
  }

  v38 = [CNContact predicateForContactsMatchingName:v14];
  v39 = [CNContactFormatter descriptorForRequiredKeysForStyle:0];
  v77[0] = v39;
  v77[1] = CNContactPhoneNumbersKey;
  v40 = [NSArray arrayWithObjects:v77 count:2];

  v41 = [v51 unifiedContactsMatchingPredicate:v38 keysToFetch:v40 error:0];
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_2D6C;
  v54[3] = &unk_14A78;
  v55 = v49;
  v63 = a1;
  v56 = v51;
  v57 = v45;
  v58 = v14;
  v62 = &v73;
  v64 = v30;
  v59 = v52;
  v60 = v46;
  v61 = v50;
  [v41 enumerateObjectsUsingBlock:v54];

  if (v74[3])
  {
    goto LABEL_29;
  }

LABEL_27:
  v42 = v18;
  v18 = 0;
LABEL_30:

  v53 = 0;
  [v51 executeSaveRequest:v50 error:&v53];
  v43 = v53;
  NSLog(@"error %@", v43);

LABEL_31:
  _Block_object_dispose(&v73, 8);

  return v18;
}

+ (BOOL)isContact:(id)a3 presentInContainer:(id)a4 store:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [a3 identifier];
  v10 = [CNContainer predicateForContainerOfContactWithIdentifier:v9];

  v11 = [v7 containersMatchingPredicate:v10 error:0];

  v12 = [v11 firstObject];
  v13 = [v12 identifier];
  v14 = [v8 identifier];

  LOBYTE(v8) = [v13 isEqualToString:v14];
  return v8;
}

+ (void)setNameString:(id)a3 onContact:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (((*(CNIsStringEmpty + 16))(CNIsStringEmpty, v9) & 1) == 0)
  {
    v7 = [a1 nameComponentsFromString:v9];
    v8 = v7;
    if (v7)
    {
      [v7 overrideComponentsInContact:v6];
    }

    else
    {
      [v6 setGivenName:v9];
    }
  }
}

+ (id)nameComponentsFromString:(id)a3
{
  v4 = a3;
  v5 = [a1 prepareName:v4];
  if (qword_195D8 != -1)
  {
    sub_AEF4();
  }

  v6 = qword_195E0;
  v7 = [v6 personNameComponentsFromString:v5];

  return v7;
}

+ (id)prepareName:(id)a3
{
  v3 = a3;
  v4 = [NSCharacterSet characterSetWithCharactersInString:@">"];
  v5 = [v3 stringByTrimmingCharactersInSet:v4];

  return v5;
}

+ (id)log
{
  if (qword_195E8 != -1)
  {
    sub_AF90();
  }

  v3 = qword_195F0;

  return v3;
}

@end