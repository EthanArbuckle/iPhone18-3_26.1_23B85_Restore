@interface MPSectionedIdentifierListEntryPositionKey
+ (id)positionKeyWithDeviceIdentifier:(id)identifier generation:(id)generation;
- (MPSectionedIdentifierListEntryPositionKey)initWithCoder:(id)coder;
- (int64_t)compare:(id)compare;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSectionedIdentifierListEntryPositionKey

- (void)encodeWithCoder:(id)coder
{
  deviceIdentifier = self->_deviceIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:deviceIdentifier forKey:@"did"];
  [coderCopy encodeObject:self->_generation forKey:@"gen"];
}

- (MPSectionedIdentifierListEntryPositionKey)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MPSectionedIdentifierListEntryPositionKey;
  v5 = [(MPSectionedIdentifierListEntryPositionKey *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"did"];
    deviceIdentifier = v5->_deviceIdentifier;
    v5->_deviceIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gen"];
    generation = v5->_generation;
    v5->_generation = v8;
  }

  return v5;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  generation = [(MPSectionedIdentifierListEntryPositionKey *)self generation];
  generation2 = [compareCopy generation];
  v7 = [generation compare:generation2];

  if (!v7)
  {
    deviceIdentifier = [(MPSectionedIdentifierListEntryPositionKey *)self deviceIdentifier];
    deviceIdentifier2 = [compareCopy deviceIdentifier];
    v7 = [deviceIdentifier compare:deviceIdentifier2];
  }

  return v7;
}

+ (id)positionKeyWithDeviceIdentifier:(id)identifier generation:(id)generation
{
  generationCopy = generation;
  identifierCopy = identifier;
  v8 = objc_alloc_init(self);
  v9 = [identifierCopy copy];

  v10 = v8[1];
  v8[1] = v9;

  v11 = [generationCopy copy];
  v12 = v8[2];
  v8[2] = v11;

  return v8;
}

@end