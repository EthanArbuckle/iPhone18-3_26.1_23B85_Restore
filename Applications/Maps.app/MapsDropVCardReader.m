@interface MapsDropVCardReader
+ (NSArray)readableTypeIdentifiersForItemProvider;
+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5;
@end

@implementation MapsDropVCardReader

+ (id)objectWithItemProviderData:(id)a3 typeIdentifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [UTTypeVCard identifier];
  v11 = [v9 isEqualToString:v10];

  if (v11)
  {
    v19 = 0;
    v12 = [CNContactVCardSerialization contactsWithData:v8 error:&v19];
    v13 = v19;
    v14 = v13;
    if (v13)
    {
      if (a5)
      {
        v15 = v13;
        v16 = 0;
        *a5 = v14;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v17 = objc_alloc_init(objc_opt_class());
      v16 = v17;
      if (a1)
      {
        objc_storeStrong(v17 + 1, v12);
      }
    }
  }

  else if (a5)
  {
    [NSError errorWithDomain:NSCocoaErrorDomain code:3328 userInfo:0];
    *a5 = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (NSArray)readableTypeIdentifiersForItemProvider
{
  v2 = [UTTypeVCard identifier];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

@end