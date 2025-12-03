@interface VCCallInfoBlob
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)stringForCheckpoint;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_callID), @"callID"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_clientVersion), @"clientVersion"}];
  deviceType = self->_deviceType;
  if (deviceType)
  {
    [dictionary setObject:deviceType forKey:@"deviceType"];
  }

  frameworkVersion = self->_frameworkVersion;
  if (frameworkVersion)
  {
    [dictionary setObject:frameworkVersion forKey:@"frameworkVersion"];
  }

  osVersion = self->_osVersion;
  if (osVersion)
  {
    [dictionary setObject:osVersion forKey:@"osVersion"];
  }

  deviceName = self->_deviceName;
  if (deviceName)
  {
    [dictionary setObject:deviceName forKey:@"deviceName"];
  }

  audioDeviceUID = self->_audioDeviceUID;
  if (audioDeviceUID)
  {
    [dictionary setObject:audioDeviceUID forKey:@"audioDeviceUID"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
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

- (void)copyTo:(id)to
{
  *(to + 4) = self->_callID;
  *(to + 5) = self->_clientVersion;
  [to setDeviceType:self->_deviceType];
  [to setFrameworkVersion:self->_frameworkVersion];
  [to setOsVersion:self->_osVersion];
  if (self->_deviceName)
  {
    [to setDeviceName:?];
  }

  if (self->_audioDeviceUID)
  {

    [to setAudioDeviceUID:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 16) = self->_callID;
  *(v5 + 20) = self->_clientVersion;

  *(v5 + 32) = [(NSString *)self->_deviceType copyWithZone:zone];
  *(v5 + 40) = [(NSString *)self->_frameworkVersion copyWithZone:zone];

  *(v5 + 48) = [(NSString *)self->_osVersion copyWithZone:zone];
  *(v5 + 24) = [(NSString *)self->_deviceName copyWithZone:zone];

  *(v5 + 8) = [(NSString *)self->_audioDeviceUID copyWithZone:zone];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (self->_callID == *(equal + 4) && self->_clientVersion == *(equal + 5))
    {
      deviceType = self->_deviceType;
      if (!(deviceType | *(equal + 4)) || (v5 = [(NSString *)deviceType isEqual:?]) != 0)
      {
        frameworkVersion = self->_frameworkVersion;
        if (!(frameworkVersion | *(equal + 5)) || (v5 = [(NSString *)frameworkVersion isEqual:?]) != 0)
        {
          osVersion = self->_osVersion;
          if (!(osVersion | *(equal + 6)) || (v5 = [(NSString *)osVersion isEqual:?]) != 0)
          {
            deviceName = self->_deviceName;
            if (!(deviceName | *(equal + 3)) || (v5 = [(NSString *)deviceName isEqual:?]) != 0)
            {
              audioDeviceUID = self->_audioDeviceUID;
              if (audioDeviceUID | *(equal + 1))
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

- (void)mergeFrom:(id)from
{
  self->_callID = *(from + 4);
  self->_clientVersion = *(from + 5);
  if (*(from + 4))
  {
    [(VCCallInfoBlob *)self setDeviceType:?];
  }

  if (*(from + 5))
  {
    [(VCCallInfoBlob *)self setFrameworkVersion:?];
  }

  if (*(from + 6))
  {
    [(VCCallInfoBlob *)self setOsVersion:?];
  }

  if (*(from + 3))
  {
    [(VCCallInfoBlob *)self setDeviceName:?];
  }

  if (*(from + 1))
  {

    [(VCCallInfoBlob *)self setAudioDeviceUID:?];
  }
}

@end