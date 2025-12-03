@interface CRLShapeLibraryHelper
+ (BOOL)shouldAddBaseShapeNameAndKeywordsForLocale:(id)locale;
+ (id)keywordByCapitalizingLowercasedKeyword:(id)keyword locale:(id)locale;
+ (id)keywordsByCapitalizingLowercasedKeywords:(id)keywords locale:(id)locale;
@end

@implementation CRLShapeLibraryHelper

+ (id)keywordsByCapitalizingLowercasedKeywords:(id)keywords locale:(id)locale
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100176BB0;
  v9[3] = &unk_101841F20;
  localeCopy = locale;
  selfCopy = self;
  v6 = localeCopy;
  v7 = [keywords crl_arrayByMappingObjectsUsingBlock:v9];

  return v7;
}

+ (id)keywordByCapitalizingLowercasedKeyword:(id)keyword locale:(id)locale
{
  keywordCopy = keyword;
  localeCopy = locale;
  if (qword_101A346D8 != -1)
  {
    sub_1013232A0();
  }

  locale = [localeCopy locale];
  v8 = [keywordCopy lowercaseStringWithLocale:locale];
  v9 = [v8 isEqualToString:keywordCopy];

  if (v9)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = sub_100176DFC;
    v23 = sub_100176E0C;
    v24 = [qword_101A346E0 objectForKey:keywordCopy];
    v10 = v20[5];
    if (!v10)
    {
      v11 = [keywordCopy length];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100176E14;
      v15[3] = &unk_101841F68;
      v18 = &v19;
      v12 = keywordCopy;
      v16 = v12;
      v17 = localeCopy;
      [v12 enumerateSubstringsInRange:0 options:v11 usingBlock:{3, v15}];
      [qword_101A346E0 setObject:v20[5] forKey:v12];

      v10 = v20[5];
    }

    v13 = v10;

    _Block_object_dispose(&v19, 8);
    keywordCopy = v13;
  }

  return keywordCopy;
}

+ (BOOL)shouldAddBaseShapeNameAndKeywordsForLocale:(id)locale
{
  locale = [locale locale];
  localeIdentifier = [locale localeIdentifier];

  if ([localeIdentifier hasPrefix:@"en"])
  {
    v5 = 0;
  }

  else
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100176F98;
    v7[3] = &unk_101841F90;
    v8 = localeIdentifier;
    v5 = [&off_1018E1128 crl_containsObjectPassingTest:v7];
  }

  return v5;
}

@end