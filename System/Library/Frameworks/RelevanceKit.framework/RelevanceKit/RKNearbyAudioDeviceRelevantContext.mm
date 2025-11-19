@interface RKNearbyAudioDeviceRelevantContext
- (BOOL)isEqual:(id)a3;
- (RKNearbyAudioDeviceRelevantContext)initWithCoder:(id)a3;
- (RKNearbyAudioDeviceRelevantContext)initWithDeviceIdentifier:(id)a3 isPlaying:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RKNearbyAudioDeviceRelevantContext

- (RKNearbyAudioDeviceRelevantContext)initWithDeviceIdentifier:(id)a3 isPlaying:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = RKNearbyAudioDeviceRelevantContext;
  v8 = [(RKRelevantContext *)&v12 _init];
  if (v8)
  {
    v9 = [v6 copy];
    deviceIdentifier = v8->_deviceIdentifier;
    v8->_deviceIdentifier = v9;

    objc_storeStrong(&v8->_isPlaying, a4);
  }

  return v8;
}

- (RKNearbyAudioDeviceRelevantContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isPlaying"];

  v7 = [(RKNearbyAudioDeviceRelevantContext *)self initWithDeviceIdentifier:v5 isPlaying:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  deviceIdentifier = self->_deviceIdentifier;
  v5 = a3;
  [v5 encodeObject:deviceIdentifier forKey:@"deviceIdentifier"];
  [v5 encodeObject:self->_isPlaying forKey:@"isPlaying"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      deviceIdentifier = self->_deviceIdentifier;
      v7 = [(RKNearbyAudioDeviceRelevantContext *)v5 deviceIdentifier];
      v8 = v7;
      if (deviceIdentifier == v7)
      {
      }

      else
      {
        v9 = self->_deviceIdentifier;
        v10 = [(RKNearbyAudioDeviceRelevantContext *)v5 deviceIdentifier];
        LODWORD(v9) = [(NSString *)v9 isEqualToString:v10];

        if (!v9)
        {
          v11 = 0;
LABEL_13:

          goto LABEL_14;
        }
      }

      isPlaying = self->_isPlaying;
      v13 = [(RKNearbyAudioDeviceRelevantContext *)v5 isPlaying];
      if (isPlaying == v13)
      {
        v11 = 1;
      }

      else
      {
        v14 = self->_isPlaying;
        v15 = [(RKNearbyAudioDeviceRelevantContext *)v5 isPlaying];
        v11 = [(NSNumber *)v14 isEqual:v15];
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
  v3 = [(RKNearbyAudioDeviceRelevantContext *)self isPlaying];

  v4 = MEMORY[0x277CCACA8];
  v5 = [(RKNearbyAudioDeviceRelevantContext *)self deviceIdentifier];
  v6 = v5;
  if (v3)
  {
    v7 = [(RKNearbyAudioDeviceRelevantContext *)self isPlaying];
    v8 = [v4 stringWithFormat:@"<nearby audio device: %@, isPlaying: %{BOOL}d>", v6, objc_msgSend(v7, "BOOLValue")];
  }

  else
  {
    v8 = [v4 stringWithFormat:@"<nearby audio device: %@>", v5];
  }

  return v8;
}

@end