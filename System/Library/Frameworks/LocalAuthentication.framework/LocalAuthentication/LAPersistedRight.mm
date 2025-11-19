@interface LAPersistedRight
- (LAPersistedRight)initWithIdentifier:(id)a3 accessKey:(id)a4 privateKeys:(id)a5 secrets:(id)a6;
- (LAPrivateKey)key;
- (LASecret)secret;
@end

@implementation LAPersistedRight

- (LAPersistedRight)initWithIdentifier:(id)a3 accessKey:(id)a4 privateKeys:(id)a5 secrets:(id)a6
{
  v11 = a5;
  v12 = a6;
  v16.receiver = self;
  v16.super_class = LAPersistedRight;
  v13 = [(LARight *)&v16 initWithIdentifier:a3 accessKey:a4];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_secrets, a6);
    objc_storeStrong(&v14->_privateKeys, a5);
  }

  return v14;
}

- (LASecret)secret
{
  if ([(NSArray *)self->_secrets count]>= 2)
  {
    [LAPersistedRight secret];
  }

  v3 = [(NSArray *)self->_secrets firstObject];
  [v3 setRight:self];

  return v3;
}

- (LAPrivateKey)key
{
  if ([(NSArray *)self->_privateKeys count]!= 1)
  {
    [LAPersistedRight key];
  }

  v3 = [(NSArray *)self->_privateKeys firstObject];
  [v3 setRight:self];

  return v3;
}

@end