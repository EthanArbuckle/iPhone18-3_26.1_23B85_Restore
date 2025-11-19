@interface CNContactDataSerialization
+ (id)contactsFromData:(id)a3;
+ (id)dataWithContacts:(id)a3;
@end

@implementation CNContactDataSerialization

+ (id)dataWithContacts:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DEF0] data];
  if (v3 && [v3 count])
  {

    v5 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
    [v5 encodeObject:v3 forKey:@"key"];
    [v5 finishEncoding];
    v4 = [v5 encodedData];
  }

  return v4;
}

+ (id)contactsFromData:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v10 = 0;
    v4 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v3 error:&v10];
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