@interface CKRecord
- (NSString)hashedDescription;
- (id)fieldForKey:(id)key;
- (void)setField:(id)field forKey:(id)key;
@end

@implementation CKRecord

- (NSString)hashedDescription
{
  v3 = objc_opt_class();
  identifier = [(CKRecord *)self identifier];
  v5 = AMSHashIfNeeded();
  v6 = [NSMutableString stringWithFormat:@"<%@: %p recordIdentifier = %@ | values = {", v3, self, v5];

  encryptedValues = [(CKRecord *)self encryptedValues];
  allKeys = [encryptedValues allKeys];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10009927C;
  v12[3] = &unk_1002B2CA8;
  v9 = v6;
  v13 = v9;
  selfCopy = self;
  [allKeys enumerateObjectsUsingBlock:v12];

  [v9 appendString:@"\n}"];
  v10 = v9;

  return v9;
}

- (id)fieldForKey:(id)key
{
  keyCopy = key;
  encryptedValues = [(CKRecord *)self encryptedValues];
  v6 = [encryptedValues objectForKeyedSubscript:keyCopy];

  return v6;
}

- (void)setField:(id)field forKey:(id)key
{
  keyCopy = key;
  fieldCopy = field;
  encryptedValues = [(CKRecord *)self encryptedValues];
  [encryptedValues setObject:fieldCopy forKeyedSubscript:keyCopy];
}

@end