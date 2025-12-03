@interface CNContactDataSerialization
+ (id)contactsFromData:(id)data;
+ (id)dataWithContacts:(id)contacts;
@end

@implementation CNContactDataSerialization

+ (id)dataWithContacts:(id)contacts
{
  contactsCopy = contacts;
  data = [MEMORY[0x1E695DEF0] data];
  if (contactsCopy && [contactsCopy count])
  {

    v5 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
    [v5 encodeObject:contactsCopy forKey:@"key"];
    [v5 finishEncoding];
    data = [v5 encodedData];
  }

  return data;
}

+ (id)contactsFromData:(id)data
{
  dataCopy = data;
  if ([dataCopy length])
  {
    v10 = 0;
    v4 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:dataCopy error:&v10];
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
    v8 = [v4 decodeArrayOfObjectsOfClasses:v7 forKey:@"key"];

    [v4 finishDecoding];
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  return v8;
}

@end