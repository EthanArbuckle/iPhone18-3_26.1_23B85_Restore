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

  encryptedValuesByKey = [(CKRecord *)self encryptedValuesByKey];
  allKeys = [encryptedValuesByKey allKeys];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001D8828;
  v12[3] = &unk_100254E18;
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
  encryptedValuesByKey = [(CKRecord *)self encryptedValuesByKey];
  v6 = [encryptedValuesByKey objectForKeyedSubscript:keyCopy];

  return v6;
}

- (void)setField:(id)field forKey:(id)key
{
  keyCopy = key;
  fieldCopy = field;
  encryptedValuesByKey = [(CKRecord *)self encryptedValuesByKey];
  [encryptedValuesByKey setObject:fieldCopy forKeyedSubscript:keyCopy];
}

@end