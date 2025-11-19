@interface MPSectionedIdentifierListEntryPositionKey
+ (id)positionKeyWithDeviceIdentifier:(id)a3 generation:(id)a4;
- (MPSectionedIdentifierListEntryPositionKey)initWithCoder:(id)a3;
- (int64_t)compare:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSectionedIdentifierListEntryPositionKey

- (void)encodeWithCoder:(id)a3
{
  deviceIdentifier = self->_deviceIdentifier;
  v5 = a3;
  [v5 encodeObject:deviceIdentifier forKey:@"did"];
  [v5 encodeObject:self->_generation forKey:@"gen"];
}

- (MPSectionedIdentifierListEntryPositionKey)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MPSectionedIdentifierListEntryPositionKey;
  v5 = [(MPSectionedIdentifierListEntryPositionKey *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"did"];
    deviceIdentifier = v5->_deviceIdentifier;
    v5->_deviceIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gen"];
    generation = v5->_generation;
    v5->_generation = v8;
  }

  return v5;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(MPSectionedIdentifierListEntryPositionKey *)self generation];
  v6 = [v4 generation];
  v7 = [v5 compare:v6];

  if (!v7)
  {
    v8 = [(MPSectionedIdentifierListEntryPositionKey *)self deviceIdentifier];
    v9 = [v4 deviceIdentifier];
    v7 = [v8 compare:v9];
  }

  return v7;
}

+ (id)positionKeyWithDeviceIdentifier:(id)a3 generation:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(a1);
  v9 = [v7 copy];

  v10 = v8[1];
  v8[1] = v9;

  v11 = [v6 copy];
  v12 = v8[2];
  v8[2] = v11;

  return v8;
}

@end