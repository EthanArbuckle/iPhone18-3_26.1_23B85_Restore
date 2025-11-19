@interface NSLocale
+ (id)_distinctiveLanguageIdentifierForLanguageIdentifier:(id)a3;
+ (id)string:(id)a3 withCapitalizedDisplayNamesForFirstLanguageIdentifier:(id)a4 secondLanguageIdentifier:(id)a5 thirdLanguageIdentifier:(id)a6;
@end

@implementation NSLocale

+ (id)string:(id)a3 withCapitalizedDisplayNamesForFirstLanguageIdentifier:(id)a4 secondLanguageIdentifier:(id)a5 thirdLanguageIdentifier:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = +[NSMutableArray array];
  v14 = v13;
  if (v10)
  {
    [v13 addObject:v10];
  }

  if (v11)
  {
    [v14 addObject:v11];
  }

  v35 = v11;
  v36 = v10;
  if (v12)
  {
    [v14 addObject:v12];
  }

  v34 = v12;
  v15 = +[NSMutableArray array];
  v16 = [v9 rangeOfString:@"%@"];
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
        v23 = [v9 rangeOfString:@"%@" options:0 range:{v16 + 1, objc_msgSend(v9, "length") + ~v16}];
      }

      ++v17;
      v16 = v23;
    }

    while (v17 < [v14 count]);
  }

  v24 = v9;
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

+ (id)_distinctiveLanguageIdentifierForLanguageIdentifier:(id)a3
{
  v3 = sub_211EC();
  sub_20448(v3);

  v4 = sub_211BC();

  return v4;
}

@end