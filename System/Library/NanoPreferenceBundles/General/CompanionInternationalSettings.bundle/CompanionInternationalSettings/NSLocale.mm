@interface NSLocale
+ (id)_distinctiveLanguageIdentifierForLanguageIdentifier:(id)identifier;
+ (id)string:(id)string withCapitalizedDisplayNamesForFirstLanguageIdentifier:(id)identifier secondLanguageIdentifier:(id)languageIdentifier thirdLanguageIdentifier:(id)thirdLanguageIdentifier;
@end

@implementation NSLocale

+ (id)string:(id)string withCapitalizedDisplayNamesForFirstLanguageIdentifier:(id)identifier secondLanguageIdentifier:(id)languageIdentifier thirdLanguageIdentifier:(id)thirdLanguageIdentifier
{
  stringCopy = string;
  identifierCopy = identifier;
  languageIdentifierCopy = languageIdentifier;
  thirdLanguageIdentifierCopy = thirdLanguageIdentifier;
  v13 = +[NSMutableArray array];
  v14 = v13;
  if (identifierCopy)
  {
    [v13 addObject:identifierCopy];
  }

  if (languageIdentifierCopy)
  {
    [v14 addObject:languageIdentifierCopy];
  }

  v35 = languageIdentifierCopy;
  v36 = identifierCopy;
  if (thirdLanguageIdentifierCopy)
  {
    [v14 addObject:thirdLanguageIdentifierCopy];
  }

  v34 = thirdLanguageIdentifierCopy;
  v15 = +[NSMutableArray array];
  v16 = [stringCopy rangeOfString:@"%@"];
  if ([v14 count])
  {
    v17 = 0;
    do
    {
      if (v16)
      {
        v18 = 5;
      }

      else
      {
        v18 = 4;
      }

      v19 = +[NSLocale _deviceLanguage];
      v20 = [NSLocale localeWithLocaleIdentifier:v19];
      v21 = [v14 objectAtIndexedSubscript:v17];
      v22 = [v20 localizedStringForLanguage:v21 context:v18];

      [v15 addObject:v22];
      v23 = 0x7FFFFFFFFFFFFFFFLL;
      if (v16 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v23 = [stringCopy rangeOfString:@"%@" options:0 range:{v16 + 1, objc_msgSend(stringCopy, "length") + ~v16}];
      }

      ++v17;
      v16 = v23;
    }

    while (v17 < [v14 count]);
  }

  v24 = stringCopy;
  v25 = v15;
  if ([v15 count] == &dword_0 + 1)
  {
    v26 = [v15 objectAtIndexedSubscript:0];
    v27 = [NSString stringWithFormat:v24, v26];
    v28 = v24;
    v29 = v35;
    v30 = v36;
    v31 = v34;
  }

  else
  {
    v29 = v35;
    v30 = v36;
    v31 = v34;
    if ([v15 count] == &dword_0 + 2)
    {
      v26 = [v15 objectAtIndexedSubscript:0];
      v28 = [v15 objectAtIndexedSubscript:1];
      v27 = [NSString stringWithFormat:v24, v26, v28];
    }

    else
    {
      v27 = v24;
      if ([v15 count] != &dword_0 + 3)
      {
        goto LABEL_22;
      }

      v26 = [v15 objectAtIndexedSubscript:0];
      v28 = [v15 objectAtIndexedSubscript:1];
      v32 = [v15 objectAtIndexedSubscript:2];
      v27 = [NSString stringWithFormat:v24, v26, v28, v32];

      v25 = v15;
    }
  }

LABEL_22:

  return v27;
}

+ (id)_distinctiveLanguageIdentifierForLanguageIdentifier:(id)identifier
{
  v3 = sub_1ABF8();
  sub_155C0(v3);

  v4 = sub_1ABC8();

  return v4;
}

@end