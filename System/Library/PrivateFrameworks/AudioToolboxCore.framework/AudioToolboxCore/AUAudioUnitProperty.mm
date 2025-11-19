@interface AUAudioUnitProperty
+ (id)propertyWithKey:(id)a3;
- (AUAudioUnitProperty)initWithCoder:(id)a3;
- (AUAudioUnitProperty)initWithKey:(id)a3;
- (AUAudioUnitProperty)initWithKey:(id)a3 scope:(unsigned int)a4 element:(unsigned int)a5;
- (AUAudioUnitProperty)initWithKey:(id)a3 v2propID:(unsigned int)a4 scope:(unsigned int)a5 element:(unsigned int)a6;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AUAudioUnitProperty

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = AUAudioUnitProperty;
  [(AUAudioUnitProperty *)&v2 dealloc];
}

- (AUAudioUnitProperty)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = AUAudioUnitProperty;
  v5 = [(AUAudioUnitProperty *)&v10 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"key"];
    key = v5->_key;
    v5->_key = v7;

    v5->_v2propID = [v4 decodeIntegerForKey:@"v2propID"];
    v5->_scope = [v4 decodeIntegerForKey:@"scope"];
    v5->_element = [v4 decodeIntegerForKey:@"element"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_key forKey:@"key"];
  [v4 encodeInteger:self->_v2propID forKey:@"v2propID"];
  [v4 encodeInteger:self->_scope forKey:@"scope"];
  [v4 encodeInteger:self->_element forKey:@"element"];
}

- (AUAudioUnitProperty)initWithKey:(id)a3 v2propID:(unsigned int)a4 scope:(unsigned int)a5 element:(unsigned int)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = AUAudioUnitProperty;
  v12 = [(AUAudioUnitProperty *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_key, a3);
    v13->_v2propID = a4;
    v13->_scope = a5;
    v13->_element = a6;
  }

  return v13;
}

- (AUAudioUnitProperty)initWithKey:(id)a3 scope:(unsigned int)a4 element:(unsigned int)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = AUAudioUnitProperty;
  v10 = [(AUAudioUnitProperty *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_key, a3);
    v11->_v2propID = -1;
    v11->_scope = a4;
    v11->_element = a5;
  }

  return v11;
}

- (AUAudioUnitProperty)initWithKey:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AUAudioUnitProperty;
  v6 = [(AUAudioUnitProperty *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_key, a3);
    *&v7->_v2propID = 0xFFFFFFFFLL;
    v7->_element = 0;
  }

  return v7;
}

+ (id)propertyWithKey:(id)a3
{
  v3 = a3;
  v4 = [[AUAudioUnitProperty alloc] initWithKey:v3];

  return v4;
}

@end