@interface MapsDropVCardReader
+ (NSArray)readableTypeIdentifiersForItemProvider;
+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error;
@end

@implementation MapsDropVCardReader

+ (id)objectWithItemProviderData:(id)data typeIdentifier:(id)identifier error:(id *)error
{
  dataCopy = data;
  identifierCopy = identifier;
  identifier = [UTTypeVCard identifier];
  v11 = [identifierCopy isEqualToString:identifier];

  if (v11)
  {
    v19 = 0;
    v12 = [CNContactVCardSerialization contactsWithData:dataCopy error:&v19];
    v13 = v19;
    v14 = v13;
    if (v13)
    {
      if (error)
      {
        v15 = v13;
        v16 = 0;
        *error = v14;
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
      if (self)
      {
        objc_storeStrong(v17 + 1, v12);
      }
    }
  }

  else if (error)
  {
    [NSError errorWithDomain:NSCocoaErrorDomain code:3328 userInfo:0];
    *error = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (NSArray)readableTypeIdentifiersForItemProvider
{
  identifier = [UTTypeVCard identifier];
  v5 = identifier;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

@end