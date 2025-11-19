@interface CRLShapeLibraryHelper
+ (BOOL)shouldAddBaseShapeNameAndKeywordsForLocale:(id)a3;
+ (id)keywordByCapitalizingLowercasedKeyword:(id)a3 locale:(id)a4;
+ (id)keywordsByCapitalizingLowercasedKeywords:(id)a3 locale:(id)a4;
@end

@implementation CRLShapeLibraryHelper

+ (id)keywordsByCapitalizingLowercasedKeywords:(id)a3 locale:(id)a4
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100176BB0;
  v9[3] = &unk_101841F20;
  v10 = a4;
  v11 = a1;
  v6 = v10;
  v7 = [a3 crl_arrayByMappingObjectsUsingBlock:v9];

  return v7;
}

+ (id)keywordByCapitalizingLowercasedKeyword:(id)a3 locale:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (qword_101A346D8 != -1)
  {
    sub_1013232A0();
  }

  v7 = [v6 locale];
  v8 = [v5 lowercaseStringWithLocale:v7];
  v9 = [v8 isEqualToString:v5];

  if (v9)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = sub_100176DFC;
    v23 = sub_100176E0C;
    v24 = [qword_101A346E0 objectForKey:v5];
    v10 = v20[5];
    if (!v10)
    {
      v11 = [v5 length];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100176E14;
      v15[3] = &unk_101841F68;
      v18 = &v19;
      v12 = v5;
      v16 = v12;
      v17 = v6;
      [v12 enumerateSubstringsInRange:0 options:v11 usingBlock:{3, v15}];
      [qword_101A346E0 setObject:v20[5] forKey:v12];

      v10 = v20[5];
    }

    v13 = v10;

    _Block_object_dispose(&v19, 8);
    v5 = v13;
  }

  return v5;
}

+ (BOOL)shouldAddBaseShapeNameAndKeywordsForLocale:(id)a3
{
  v3 = [a3 locale];
  v4 = [v3 localeIdentifier];

  if ([v4 hasPrefix:@"en"])
  {
    v5 = 0;
  }

  else
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100176F98;
    v7[3] = &unk_101841F90;
    v8 = v4;
    v5 = [&off_1018E1128 crl_containsObjectPassingTest:v7];
  }

  return v5;
}

@end