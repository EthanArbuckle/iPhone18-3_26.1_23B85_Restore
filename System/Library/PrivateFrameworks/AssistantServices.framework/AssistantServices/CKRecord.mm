@interface CKRecord
- (id)_ad_dataOfClass:(Class)class;
- (id)_ad_dataOfClasses:(id)classes;
- (void)_ad_setData:(id)data;
@end

@implementation CKRecord

- (void)_ad_setData:(id)data
{
  if (data)
  {
    v5 = [NSKeyedArchiver archivedDataWithRootObject:data requiringSecureCoding:1 error:0];
  }

  else
  {
    v5 = 0;
  }

  encryptedValuesByKey = [(CKRecord *)self encryptedValuesByKey];
  [encryptedValuesByKey setObject:v5 forKey:@"value"];
}

- (id)_ad_dataOfClasses:(id)classes
{
  classesCopy = classes;
  encryptedValuesByKey = [(CKRecord *)self encryptedValuesByKey];
  v6 = [encryptedValuesByKey objectForKey:@"value"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [NSKeyedUnarchiver unarchivedObjectOfClasses:classesCopy fromData:v6 error:0];
  }

  else
  {
    v7 = v6;
  }

  v8 = v7;

  return v8;
}

- (id)_ad_dataOfClass:(Class)class
{
  v4 = [NSSet setWithObject:class];
  v5 = [(CKRecord *)self _ad_dataOfClasses:v4];

  return v5;
}

@end