@interface VCCallInfoBlob
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)stringForCheckpoint;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation VCCallInfoBlob

- (id)stringForCheckpoint
{
  v2 = [objc_msgSend(objc_msgSend(-[VCCallInfoBlob formattedText](self "formattedText")];
  v3 = [v2 length];

  return [v2 stringByReplacingOccurrencesOfString:@" withString:$" options:&stru_1F570E008 range:{1024, 0, v3}];
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(VCCallInfoBlob *)self setDeviceType:0];
  [(VCCallInfoBlob *)self setFrameworkVersion:0];
  [(VCCallInfoBlob *)self setOsVersion:0];
  [(VCCallInfoBlob *)self setDeviceName:0];
  [(VCCallInfoBlob *)self setAudioDeviceUID:0];
  v3.receiver = self;
  v3.super_class = VCCallInfoBlob;
  [(VCCallInfoBlob *)&v3 dealloc];
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCCallInfoBlob;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", -[VCCallInfoBlob description](&v3, sel_description), -[VCCallInfoBlob dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_callID), @"callID"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_clientVersion), @"clientVersion"}];
  deviceType = self->_deviceType;
  if (deviceType)
  {
    [v3 setObject:deviceType forKey:@"deviceType"];
  }

  frameworkVersion = self->_frameworkVersion;
  if (frameworkVersion)
  {
    [v3 setObject:frameworkVersion forKey:@"frameworkVersion"];
  }

  osVersion = self->_osVersion;
  if (osVersion)
  {
    [v3 setObject:osVersion forKey:@"osVersion"];
  }

  deviceName = self->_deviceName;
  if (deviceName)
  {
    [v3 setObject:deviceName forKey:@"deviceName"];
  }

  audioDeviceUID = self->_audioDeviceUID;
  if (audioDeviceUID)
  {
    [v3 setObject:audioDeviceUID forKey:@"audioDeviceUID"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  PBDataWriterWriteUint32Field();
  PBDataWriterWriteUint32Field();
  PBDataWriterWriteStringField();
  PBDataWriterWriteStringField();
  PBDataWriterWriteStringField();
  if (self->_deviceName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_audioDeviceUID)
  {

    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  *(a3 + 4) = self->_callID;
  *(a3 + 5) = self->_clientVersion;
  [a3 setDeviceType:self->_deviceType];
  [a3 setFrameworkVersion:self->_frameworkVersion];
  [a3 setOsVersion:self->_osVersion];
  if (self->_deviceName)
  {
    [a3 setDeviceName:?];
  }

  if (self->_audioDeviceUID)
  {

    [a3 setAudioDeviceUID:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 16) = self->_callID;
  *(v5 + 20) = self->_clientVersion;

  *(v5 + 32) = [(NSString *)self->_deviceType copyWithZone:a3];
  *(v5 + 40) = [(NSString *)self->_frameworkVersion copyWithZone:a3];

  *(v5 + 48) = [(NSString *)self->_osVersion copyWithZone:a3];
  *(v5 + 24) = [(NSString *)self->_deviceName copyWithZone:a3];

  *(v5 + 8) = [(NSString *)self->_audioDeviceUID copyWithZone:a3];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (self->_callID == *(a3 + 4) && self->_clientVersion == *(a3 + 5))
    {
      deviceType = self->_deviceType;
      if (!(deviceType | *(a3 + 4)) || (v5 = [(NSString *)deviceType isEqual:?]) != 0)
      {
        frameworkVersion = self->_frameworkVersion;
        if (!(frameworkVersion | *(a3 + 5)) || (v5 = [(NSString *)frameworkVersion isEqual:?]) != 0)
        {
          osVersion = self->_osVersion;
          if (!(osVersion | *(a3 + 6)) || (v5 = [(NSString *)osVersion isEqual:?]) != 0)
          {
            deviceName = self->_deviceName;
            if (!(deviceName | *(a3 + 3)) || (v5 = [(NSString *)deviceName isEqual:?]) != 0)
            {
              audioDeviceUID = self->_audioDeviceUID;
              if (audioDeviceUID | *(a3 + 1))
              {

                LOBYTE(v5) = [(NSString *)audioDeviceUID isEqual:?];
              }

              else
              {
                LOBYTE(v5) = 1;
              }
            }
          }
        }
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = (2654435761 * self->_clientVersion) ^ (2654435761 * self->_callID);
  v4 = [(NSString *)self->_deviceType hash];
  v5 = v4 ^ [(NSString *)self->_frameworkVersion hash];
  v6 = v5 ^ [(NSString *)self->_osVersion hash];
  v7 = v6 ^ [(NSString *)self->_deviceName hash];
  return v3 ^ v7 ^ [(NSString *)self->_audioDeviceUID hash];
}

- (void)mergeFrom:(id)a3
{
  self->_callID = *(a3 + 4);
  self->_clientVersion = *(a3 + 5);
  if (*(a3 + 4))
  {
    [(VCCallInfoBlob *)self setDeviceType:?];
  }

  if (*(a3 + 5))
  {
    [(VCCallInfoBlob *)self setFrameworkVersion:?];
  }

  if (*(a3 + 6))
  {
    [(VCCallInfoBlob *)self setOsVersion:?];
  }

  if (*(a3 + 3))
  {
    [(VCCallInfoBlob *)self setDeviceName:?];
  }

  if (*(a3 + 1))
  {

    [(VCCallInfoBlob *)self setAudioDeviceUID:?];
  }
}

@end