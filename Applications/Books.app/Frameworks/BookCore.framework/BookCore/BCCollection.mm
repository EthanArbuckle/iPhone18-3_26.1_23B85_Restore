@interface BCCollection
+ (id)identifierForMyBooksCollection;
+ (id)sortKeyForDefaultCollectionID:(id)a3;
+ (id)titleForDefaultCollectionID:(id)a3;
+ (id)uniqueTitleForMyBooksCollection:(id)a3;
@end

@implementation BCCollection

+ (id)titleForDefaultCollectionID:(id)a3
{
  v3 = qword_342248;
  v4 = a3;
  if (v3 != -1)
  {
    sub_1E6590();
  }

  v5 = [qword_342240 objectForKeyedSubscript:v4];

  return v5;
}

+ (id)identifierForMyBooksCollection
{
  v2 = +[BUAccountsProvider sharedProvider];
  v3 = [v2 activeStoreAccount];
  v4 = [v3 username];

  v5 = [v4 dataUsingEncoding:4];
  v6 = [v5 bu_sha1];

  if (v6)
  {
    v7 = [@"My_Books_Collection_" stringByAppendingString:v6];
  }

  else
  {
    v7 = @"My_Books_Collection_";
  }

  return v7;
}

+ (id)uniqueTitleForMyBooksCollection:(id)a3
{
  v3 = a3;
  v4 = IMCommonCoreBundle();
  v5 = [v4 localizedStringForKey:@"My Books" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];

  v6 = IMCommonCoreBundle();
  v7 = [v6 localizedStringForKey:@"My Books %lu" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];

  if ([v3 count] == -1)
  {
LABEL_8:
    v10 = v5;
  }

  else
  {
    v8 = 0;
    while (1)
    {
      if (v8)
      {
        v9 = [NSString localizedStringWithFormat:v7, v8];
      }

      else
      {
        v9 = v5;
      }

      v10 = v9;
      if (([v3 bu_containsLocalizedStringCaseInsensitive:v9] & 1) == 0)
      {
        break;
      }

      if (++v8 >= [v3 count] + 1)
      {
        goto LABEL_8;
      }
    }
  }

  return v10;
}

+ (id)sortKeyForDefaultCollectionID:(id)a3
{
  v3 = qword_342258;
  v4 = a3;
  if (v3 != -1)
  {
    sub_1E65A4();
  }

  v5 = [qword_342250 objectForKeyedSubscript:v4];

  return v5;
}

@end