@interface MIDICIDiscoveredNode
- (BOOL)isEqual:(id)equal;
- (MIDICIDiscoveredNode)initWithCoder:(id)coder;
- (MIDICIDiscoveredNode)initWithDestination:(unsigned int)destination deviceID:(MIDICIDeviceIdentification)d profilesSupported:(BOOL)supported propertiesSupported:(BOOL)propertiesSupported maxSysExSize:(unsigned int)size;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MIDICIDiscoveredNode

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy destination] == self->_destination && self->_supportsProfiles == objc_msgSend(equalCopy, "supportsProfiles") && self->_supportsProperties == objc_msgSend(equalCopy, "supportsProperties"))
  {
    deviceInfo = [equalCopy deviceInfo];
    if ([deviceInfo isEqual:self->_deviceInfo])
    {
      maximumSysExSize = [equalCopy maximumSysExSize];
      v7 = [maximumSysExSize unsignedLongValue] == self->_maxSysExSize;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  if (self->_supportsProperties)
  {
    v2 = @"supports profiles & properties";
  }

  else
  {
    v2 = @"supports profiles";
  }

  v3 = @"MIDI-CI supported?";
  if (self->_supportsProperties)
  {
    v3 = @"supports properties";
  }

  if (!self->_supportsProfiles)
  {
    v2 = v3;
  }

  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"<MIDICIDiscoveredNode(%p) : destination: 0x%x (%@) deviceInfo: %@>", self, self->_destination, v2, self->_deviceInfo];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt32:self->_destination forKey:@"destination"];
  [coderCopy encodeObject:self->_deviceInfo forKey:@"deviceInfo"];
  [coderCopy encodeBool:self->_supportsProfiles forKey:@"supportsProfiles"];
  [coderCopy encodeBool:self->_supportsProperties forKey:@"supportsProperties"];
  [coderCopy encodeInt32:self->_maxSysExSize forKey:@"maxSysExSize"];
}

- (MIDICIDiscoveredNode)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = MIDICIDiscoveredNode;
  v5 = [(MIDICIDiscoveredNode *)&v9 init];
  if (v5)
  {
    v5->_destination = [coderCopy decodeInt32ForKey:@"destination"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceInfo"];
    deviceInfo = v5->_deviceInfo;
    v5->_deviceInfo = v6;

    v5->_supportsProfiles = [coderCopy decodeBoolForKey:@"supportsProfiles"];
    v5->_supportsProperties = [coderCopy decodeBoolForKey:@"supportsProperties"];
    v5->_maxSysExSize = [coderCopy decodeInt32ForKey:@"maxSysExSize"];
  }

  return v5;
}

- (MIDICIDiscoveredNode)initWithDestination:(unsigned int)destination deviceID:(MIDICIDeviceIdentification)d profilesSupported:(BOOL)supported propertiesSupported:(BOOL)propertiesSupported maxSysExSize:(unsigned int)size
{
  v10 = *&destination;
  dCopy = d;
  v16.receiver = self;
  v16.super_class = MIDICIDiscoveredNode;
  v11 = [(MIDICIDiscoveredNode *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_destination = v10;
    v13 = [[MIDICIDeviceInfo alloc] initWithDestination:v10 deviceID:&dCopy];
    deviceInfo = v12->_deviceInfo;
    v12->_deviceInfo = v13;

    v12->_supportsProfiles = supported;
    v12->_supportsProperties = propertiesSupported;
    v12->_maxSysExSize = size;
  }

  return v12;
}

@end