@interface LAPersistedRight
- (LAPersistedRight)initWithIdentifier:(id)identifier accessKey:(id)key privateKeys:(id)keys secrets:(id)secrets;
- (LAPrivateKey)key;
- (LASecret)secret;
@end

@implementation LAPersistedRight

- (LAPersistedRight)initWithIdentifier:(id)identifier accessKey:(id)key privateKeys:(id)keys secrets:(id)secrets
{
  keysCopy = keys;
  secretsCopy = secrets;
  v16.receiver = self;
  v16.super_class = LAPersistedRight;
  v13 = [(LARight *)&v16 initWithIdentifier:identifier accessKey:key];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_secrets, secrets);
    objc_storeStrong(&v14->_privateKeys, keys);
  }

  return v14;
}

- (LASecret)secret
{
  if ([(NSArray *)self->_secrets count]>= 2)
  {
    [LAPersistedRight secret];
  }

  firstObject = [(NSArray *)self->_secrets firstObject];
  [firstObject setRight:self];

  return firstObject;
}

- (LAPrivateKey)key
{
  if ([(NSArray *)self->_privateKeys count]!= 1)
  {
    [LAPersistedRight key];
  }

  firstObject = [(NSArray *)self->_privateKeys firstObject];
  [firstObject setRight:self];

  return firstObject;
}

@end