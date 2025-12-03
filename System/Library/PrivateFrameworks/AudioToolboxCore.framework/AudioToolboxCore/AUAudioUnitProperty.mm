@interface AUAudioUnitProperty
+ (id)propertyWithKey:(id)key;
- (AUAudioUnitProperty)initWithCoder:(id)coder;
- (AUAudioUnitProperty)initWithKey:(id)key;
- (AUAudioUnitProperty)initWithKey:(id)key scope:(unsigned int)scope element:(unsigned int)element;
- (AUAudioUnitProperty)initWithKey:(id)key v2propID:(unsigned int)d scope:(unsigned int)scope element:(unsigned int)element;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AUAudioUnitProperty

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = AUAudioUnitProperty;
  [(AUAudioUnitProperty *)&v2 dealloc];
}

- (AUAudioUnitProperty)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = AUAudioUnitProperty;
  v5 = [(AUAudioUnitProperty *)&v10 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"key"];
    key = v5->_key;
    v5->_key = v7;

    v5->_v2propID = [coderCopy decodeIntegerForKey:@"v2propID"];
    v5->_scope = [coderCopy decodeIntegerForKey:@"scope"];
    v5->_element = [coderCopy decodeIntegerForKey:@"element"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_key forKey:@"key"];
  [coderCopy encodeInteger:self->_v2propID forKey:@"v2propID"];
  [coderCopy encodeInteger:self->_scope forKey:@"scope"];
  [coderCopy encodeInteger:self->_element forKey:@"element"];
}

- (AUAudioUnitProperty)initWithKey:(id)key v2propID:(unsigned int)d scope:(unsigned int)scope element:(unsigned int)element
{
  keyCopy = key;
  v15.receiver = self;
  v15.super_class = AUAudioUnitProperty;
  v12 = [(AUAudioUnitProperty *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_key, key);
    v13->_v2propID = d;
    v13->_scope = scope;
    v13->_element = element;
  }

  return v13;
}

- (AUAudioUnitProperty)initWithKey:(id)key scope:(unsigned int)scope element:(unsigned int)element
{
  keyCopy = key;
  v13.receiver = self;
  v13.super_class = AUAudioUnitProperty;
  v10 = [(AUAudioUnitProperty *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_key, key);
    v11->_v2propID = -1;
    v11->_scope = scope;
    v11->_element = element;
  }

  return v11;
}

- (AUAudioUnitProperty)initWithKey:(id)key
{
  keyCopy = key;
  v9.receiver = self;
  v9.super_class = AUAudioUnitProperty;
  v6 = [(AUAudioUnitProperty *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_key, key);
    *&v7->_v2propID = 0xFFFFFFFFLL;
    v7->_element = 0;
  }

  return v7;
}

+ (id)propertyWithKey:(id)key
{
  keyCopy = key;
  v4 = [[AUAudioUnitProperty alloc] initWithKey:keyCopy];

  return v4;
}

@end