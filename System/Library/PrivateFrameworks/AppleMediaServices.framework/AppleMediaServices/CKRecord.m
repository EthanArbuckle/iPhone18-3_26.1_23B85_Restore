@interface CKRecord
- (NSString)hashedDescription;
- (id)fieldForKey:(id)a3;
- (void)setField:(id)a3 forKey:(id)a4;
@end

@implementation CKRecord

- (NSString)hashedDescription
{
  v3 = objc_opt_class();
  v4 = [(CKRecord *)self identifier];
  v5 = AMSHashIfNeeded();
  v6 = [NSMutableString stringWithFormat:@"<%@: %p recordIdentifier = %@ | values = {", v3, self, v5];

  v7 = [(CKRecord *)self encryptedValues];
  v8 = [v7 allKeys];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10009927C;
  v12[3] = &unk_1002B2CA8;
  v9 = v6;
  v13 = v9;
  v14 = self;
  [v8 enumerateObjectsUsingBlock:v12];

  [v9 appendString:@"\n}"];
  v10 = v9;

  return v9;
}

- (id)fieldForKey:(id)a3
{
  v4 = a3;
  v5 = [(CKRecord *)self encryptedValues];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (void)setField:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CKRecord *)self encryptedValues];
  [v8 setObject:v7 forKeyedSubscript:v6];
}

@end