@interface CKRecord
- (id)_ad_dataOfClass:(Class)a3;
- (id)_ad_dataOfClasses:(id)a3;
- (void)_ad_setData:(id)a3;
@end

@implementation CKRecord

- (void)_ad_setData:(id)a3
{
  if (a3)
  {
    v5 = [NSKeyedArchiver archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
  }

  else
  {
    v5 = 0;
  }

  v4 = [(CKRecord *)self encryptedValuesByKey];
  [v4 setObject:v5 forKey:@"value"];
}

- (id)_ad_dataOfClasses:(id)a3
{
  v4 = a3;
  v5 = [(CKRecord *)self encryptedValuesByKey];
  v6 = [v5 objectForKey:@"value"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v4 fromData:v6 error:0];
  }

  else
  {
    v7 = v6;
  }

  v8 = v7;

  return v8;
}

- (id)_ad_dataOfClass:(Class)a3
{
  v4 = [NSSet setWithObject:a3];
  v5 = [(CKRecord *)self _ad_dataOfClasses:v4];

  return v5;
}

@end