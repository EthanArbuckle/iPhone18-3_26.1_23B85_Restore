@interface RKNearbyAudioDeviceRelevantContext
- (BOOL)isEqual:(id)equal;
- (RKNearbyAudioDeviceRelevantContext)initWithCoder:(id)coder;
- (RKNearbyAudioDeviceRelevantContext)initWithDeviceIdentifier:(id)identifier isPlaying:(id)playing;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RKNearbyAudioDeviceRelevantContext

- (RKNearbyAudioDeviceRelevantContext)initWithDeviceIdentifier:(id)identifier isPlaying:(id)playing
{
  identifierCopy = identifier;
  playingCopy = playing;
  v12.receiver = self;
  v12.super_class = RKNearbyAudioDeviceRelevantContext;
  _init = [(RKRelevantContext *)&v12 _init];
  if (_init)
  {
    v9 = [identifierCopy copy];
    deviceIdentifier = _init->_deviceIdentifier;
    _init->_deviceIdentifier = v9;

    objc_storeStrong(&_init->_isPlaying, playing);
  }

  return _init;
}

- (RKNearbyAudioDeviceRelevantContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isPlaying"];

  v7 = [(RKNearbyAudioDeviceRelevantContext *)self initWithDeviceIdentifier:v5 isPlaying:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  deviceIdentifier = self->_deviceIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:deviceIdentifier forKey:@"deviceIdentifier"];
  [coderCopy encodeObject:self->_isPlaying forKey:@"isPlaying"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      deviceIdentifier = self->_deviceIdentifier;
      deviceIdentifier = [(RKNearbyAudioDeviceRelevantContext *)v5 deviceIdentifier];
      v8 = deviceIdentifier;
      if (deviceIdentifier == deviceIdentifier)
      {
      }

      else
      {
        v9 = self->_deviceIdentifier;
        deviceIdentifier2 = [(RKNearbyAudioDeviceRelevantContext *)v5 deviceIdentifier];
        LODWORD(v9) = [(NSString *)v9 isEqualToString:deviceIdentifier2];

        if (!v9)
        {
          v11 = 0;
LABEL_13:

          goto LABEL_14;
        }
      }

      isPlaying = self->_isPlaying;
      isPlaying = [(RKNearbyAudioDeviceRelevantContext *)v5 isPlaying];
      if (isPlaying == isPlaying)
      {
        v11 = 1;
      }

      else
      {
        v14 = self->_isPlaying;
        isPlaying2 = [(RKNearbyAudioDeviceRelevantContext *)v5 isPlaying];
        v11 = [(NSNumber *)v14 isEqual:isPlaying2];
      }

      goto LABEL_13;
    }

    v11 = 0;
  }

LABEL_14:

  return v11 & 1;
}

- (id)description
{
  isPlaying = [(RKNearbyAudioDeviceRelevantContext *)self isPlaying];

  v4 = MEMORY[0x277CCACA8];
  deviceIdentifier = [(RKNearbyAudioDeviceRelevantContext *)self deviceIdentifier];
  v6 = deviceIdentifier;
  if (isPlaying)
  {
    isPlaying2 = [(RKNearbyAudioDeviceRelevantContext *)self isPlaying];
    v8 = [v4 stringWithFormat:@"<nearby audio device: %@, isPlaying: %{BOOL}d>", v6, objc_msgSend(isPlaying2, "BOOLValue")];
  }

  else
  {
    v8 = [v4 stringWithFormat:@"<nearby audio device: %@>", deviceIdentifier];
  }

  return v8;
}

@end