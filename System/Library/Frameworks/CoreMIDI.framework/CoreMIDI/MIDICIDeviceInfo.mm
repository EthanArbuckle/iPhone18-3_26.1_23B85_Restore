@interface MIDICIDeviceInfo
- (BOOL)isEqual:(id)a3;
- (MIDICIDeviceIdentification)asDeviceIDStruct;
- (MIDICIDeviceInfo)initWithCoder:(id)a3;
- (MIDICIDeviceInfo)initWithDestination:(MIDIEntityRef)midiDestination manufacturer:(NSData *)manufacturer family:(NSData *)family model:(NSData *)modelNumber revision:(NSData *)revisionLevel;
- (MIDICIDeviceInfo)initWithDestination:(unsigned int)a3 deviceID:(MIDICIDeviceIdentification *)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MIDICIDeviceInfo

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 midiDestination] == self->_midiDestination)
  {
    v5 = [v4 manufacturerID];
    if ([v5 isEqualToData:self->_manufacturerID])
    {
      v6 = [v4 family];
      if ([v6 isEqualToData:self->_family])
      {
        v7 = [v4 modelNumber];
        if ([v7 isEqualToData:self->_model])
        {
          v8 = [v4 revisionLevel];
          v9 = [v8 isEqualToData:self->_revision];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_manufacturerID forKey:@"manufacturerID"];
  [v4 encodeObject:self->_family forKey:@"family"];
  [v4 encodeObject:self->_model forKey:@"model"];
  [v4 encodeObject:self->_revision forKey:@"revision"];
  [v4 encodeInt32:self->_midiDestination forKey:@"midiDestination"];
}

- (MIDICIDeviceInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MIDICIDeviceInfo;
  v5 = [(MIDICIDeviceInfo *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"manufacturerID"];
    manufacturerID = v5->_manufacturerID;
    v5->_manufacturerID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"family"];
    family = v5->_family;
    v5->_family = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"model"];
    model = v5->_model;
    v5->_model = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"revision"];
    revision = v5->_revision;
    v5->_revision = v12;

    v5->_midiDestination = [v4 decodeInt32ForKey:@"midiDestination"];
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

- (MIDICIDeviceInfo)initWithDestination:(unsigned int)a3 deviceID:(MIDICIDeviceIdentification *)a4
{
  v5 = *&a3;
  v7 = [MEMORY[0x277CBEA90] dataWithBytes:a4 length:3];
  v8 = [MEMORY[0x277CBEA90] dataWithBytes:a4->family length:2];
  v9 = [MEMORY[0x277CBEA90] dataWithBytes:a4->modelNumber length:2];
  v10 = [MEMORY[0x277CBEA90] dataWithBytes:a4->revisionLevel length:4];
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
    v19 = 0;
    goto LABEL_10;
  }

  v17->_midiDestination = midiDestination;
  p_isa = &v17->super.isa;
  objc_storeStrong(&v17->_manufacturerID, manufacturer);
  objc_storeStrong(p_isa + 2, family);
  objc_storeStrong(p_isa + 3, modelNumber);
  objc_storeStrong(p_isa + 4, revisionLevel);
  self = p_isa;
  v19 = self;
LABEL_10:

  return v19;
}

@end