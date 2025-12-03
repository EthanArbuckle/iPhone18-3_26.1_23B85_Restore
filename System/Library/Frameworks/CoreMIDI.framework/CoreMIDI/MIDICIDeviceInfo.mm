@interface MIDICIDeviceInfo
- (BOOL)isEqual:(id)equal;
- (MIDICIDeviceIdentification)asDeviceIDStruct;
- (MIDICIDeviceInfo)initWithCoder:(id)coder;
- (MIDICIDeviceInfo)initWithDestination:(MIDIEntityRef)midiDestination manufacturer:(NSData *)manufacturer family:(NSData *)family model:(NSData *)modelNumber revision:(NSData *)revisionLevel;
- (MIDICIDeviceInfo)initWithDestination:(unsigned int)destination deviceID:(MIDICIDeviceIdentification *)d;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MIDICIDeviceInfo

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy midiDestination] == self->_midiDestination)
  {
    manufacturerID = [equalCopy manufacturerID];
    if ([manufacturerID isEqualToData:self->_manufacturerID])
    {
      family = [equalCopy family];
      if ([family isEqualToData:self->_family])
      {
        modelNumber = [equalCopy modelNumber];
        if ([modelNumber isEqualToData:self->_model])
        {
          revisionLevel = [equalCopy revisionLevel];
          v9 = [revisionLevel isEqualToData:self->_revision];
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_manufacturerID forKey:@"manufacturerID"];
  [coderCopy encodeObject:self->_family forKey:@"family"];
  [coderCopy encodeObject:self->_model forKey:@"model"];
  [coderCopy encodeObject:self->_revision forKey:@"revision"];
  [coderCopy encodeInt32:self->_midiDestination forKey:@"midiDestination"];
}

- (MIDICIDeviceInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = MIDICIDeviceInfo;
  v5 = [(MIDICIDeviceInfo *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"manufacturerID"];
    manufacturerID = v5->_manufacturerID;
    v5->_manufacturerID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"family"];
    family = v5->_family;
    v5->_family = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"model"];
    model = v5->_model;
    v5->_model = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"revision"];
    revision = v5->_revision;
    v5->_revision = v12;

    v5->_midiDestination = [coderCopy decodeInt32ForKey:@"midiDestination"];
  }

  return v5;
}

- (MIDICIDeviceIdentification)asDeviceIDStruct
{
  v9 = 0;
  v10 = 0;
  manufacturerID = self->_manufacturerID;
  if (manufacturerID && [(NSData *)manufacturerID length]== 3)
  {
    memcpy(&v9, [(NSData *)self->_manufacturerID bytes], [(NSData *)self->_manufacturerID length]);
  }

  family = self->_family;
  if (family && [(NSData *)family length]== 2)
  {
    memcpy(&v9 + 3, [(NSData *)self->_family bytes], [(NSData *)self->_family length]);
  }

  model = self->_model;
  if (model && [(NSData *)model length]== 2)
  {
    memcpy(&v9 + 5, [(NSData *)self->_model bytes], [(NSData *)self->_model length]);
  }

  revision = self->_revision;
  if (revision && [(NSData *)revision length]== 4)
  {
    memcpy(&v9 + 7, [(NSData *)self->_revision bytes], [(NSData *)self->_revision length]);
  }

  v7 = v9;
  v8 = v10;
  *&result.revisionLevel[1] = v8;
  *&result.reserved[1] = HIDWORD(v8);
  *result.manufacturer = v7;
  result.manufacturer[2] = BYTE2(v7);
  *result.family = *(&v7 + 3);
  *result.modelNumber = *(&v7 + 5);
  result.revisionLevel[0] = HIBYTE(v7);
  return result;
}

- (MIDICIDeviceInfo)initWithDestination:(unsigned int)destination deviceID:(MIDICIDeviceIdentification *)d
{
  v5 = *&destination;
  v7 = [MEMORY[0x277CBEA90] dataWithBytes:d length:3];
  v8 = [MEMORY[0x277CBEA90] dataWithBytes:d->family length:2];
  v9 = [MEMORY[0x277CBEA90] dataWithBytes:d->modelNumber length:2];
  v10 = [MEMORY[0x277CBEA90] dataWithBytes:d->revisionLevel length:4];
  v11 = [(MIDICIDeviceInfo *)self initWithDestination:v5 manufacturer:v7 family:v8 model:v9 revision:v10];

  return v11;
}

- (MIDICIDeviceInfo)initWithDestination:(MIDIEntityRef)midiDestination manufacturer:(NSData *)manufacturer family:(NSData *)family model:(NSData *)modelNumber revision:(NSData *)revisionLevel
{
  v13 = manufacturer;
  v14 = family;
  v15 = modelNumber;
  v16 = revisionLevel;
  if (!midiDestination || [(NSData *)v13 length]!= 3 || [(NSData *)v14 length]!= 2 || [(NSData *)v15 length]!= 2 || [(NSData *)v16 length]!= 4)
  {
    goto LABEL_9;
  }

  v21.receiver = self;
  v21.super_class = MIDICIDeviceInfo;
  v17 = [(MIDICIDeviceInfo *)&v21 init];
  if (!v17)
  {
    self = 0;
LABEL_9:
    selfCopy = 0;
    goto LABEL_10;
  }

  v17->_midiDestination = midiDestination;
  p_isa = &v17->super.isa;
  objc_storeStrong(&v17->_manufacturerID, manufacturer);
  objc_storeStrong(p_isa + 2, family);
  objc_storeStrong(p_isa + 3, modelNumber);
  objc_storeStrong(p_isa + 4, revisionLevel);
  self = p_isa;
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

@end