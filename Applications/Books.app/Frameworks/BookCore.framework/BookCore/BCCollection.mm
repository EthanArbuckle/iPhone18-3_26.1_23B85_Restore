@interface BCCollection
+ (id)identifierForMyBooksCollection;
+ (id)sortKeyForDefaultCollectionID:(id)d;
+ (id)titleForDefaultCollectionID:(id)d;
+ (id)uniqueTitleForMyBooksCollection:(id)collection;
@end

@implementation BCCollection

+ (id)titleForDefaultCollectionID:(id)d
{
  v3 = qword_342248;
  dCopy = d;
  if (v3 != -1)
  {
    sub_1E6590();
  }

  v5 = [qword_342240 objectForKeyedSubscript:dCopy];

  return v5;
}

+ (id)identifierForMyBooksCollection
{
  v2 = +[BUAccountsProvider sharedProvider];
  activeStoreAccount = [v2 activeStoreAccount];
  username = [activeStoreAccount username];

  v5 = [username dataUsingEncoding:4];
  bu_sha1 = [v5 bu_sha1];

  if (bu_sha1)
  {
    v7 = [@"My_Books_Collection_" stringByAppendingString:bu_sha1];
  }

  else
  {
    v7 = @"My_Books_Collection_";
  }

  return v7;
}

+ (id)uniqueTitleForMyBooksCollection:(id)collection
{
  collectionCopy = collection;
  v4 = IMCommonCoreBundle();
  v5 = [v4 localizedStringForKey:@"My Books" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];

  v6 = IMCommonCoreBundle();
  v7 = [v6 localizedStringForKey:@"My Books %lu" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];

  if ([collectionCopy count] == -1)
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
      if (([collectionCopy bu_containsLocalizedStringCaseInsensitive:v9] & 1) == 0)
      {
        break;
      }

      if (++v8 >= [collectionCopy count] + 1)
      {
        goto LABEL_8;
      }
    }
  }

  return v10;
}

+ (id)sortKeyForDefaultCollectionID:(id)d
{
  v3 = qword_342258;
  dCopy = d;
  if (v3 != -1)
  {
    sub_1E65A4();
  }

  v5 = [qword_342250 objectForKeyedSubscript:dCopy];

  return v5;
}

@end