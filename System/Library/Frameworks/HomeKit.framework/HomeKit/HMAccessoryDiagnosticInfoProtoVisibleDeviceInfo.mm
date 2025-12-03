@interface HMAccessoryDiagnosticInfoProtoVisibleDeviceInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HMAccessoryDiagnosticInfoProtoVisibleDeviceInfo

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[1])
  {
    [(HMAccessoryDiagnosticInfoProtoVisibleDeviceInfo *)self setIdsIdentifierString:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(HMAccessoryDiagnosticInfoProtoVisibleDeviceInfo *)self setMediaRouteIdString:?];
    fromCopy = v5;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((idsIdentifierString = self->_idsIdentifierString, !(idsIdentifierString | equalCopy[1])) || -[NSString isEqual:](idsIdentifierString, "isEqual:")))
  {
    mediaRouteIdString = self->_mediaRouteIdString;
    if (mediaRouteIdString | equalCopy[2])
    {
      v7 = [(NSString *)mediaRouteIdString isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_idsIdentifierString copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_mediaRouteIdString copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_idsIdentifierString)
  {
    [toCopy setIdsIdentifierString:?];
    toCopy = v5;
  }

  if (self->_mediaRouteIdString)
  {
    [v5 setMediaRouteIdString:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_idsIdentifierString)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_mediaRouteIdString)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  idsIdentifierString = self->_idsIdentifierString;
  if (idsIdentifierString)
  {
    [dictionary setObject:idsIdentifierString forKey:@"idsIdentifierString"];
  }

  mediaRouteIdString = self->_mediaRouteIdString;
  if (mediaRouteIdString)
  {
    [v4 setObject:mediaRouteIdString forKey:@"mediaRouteIdString"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMAccessoryDiagnosticInfoProtoVisibleDeviceInfo;
  v4 = [(HMAccessoryDiagnosticInfoProtoVisibleDeviceInfo *)&v8 description];
  dictionaryRepresentation = [(HMAccessoryDiagnosticInfoProtoVisibleDeviceInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end