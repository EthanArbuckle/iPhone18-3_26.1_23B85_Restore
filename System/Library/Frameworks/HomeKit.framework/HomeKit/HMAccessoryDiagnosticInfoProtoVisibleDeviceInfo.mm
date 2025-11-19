@interface HMAccessoryDiagnosticInfoProtoVisibleDeviceInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HMAccessoryDiagnosticInfoProtoVisibleDeviceInfo

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[1])
  {
    [(HMAccessoryDiagnosticInfoProtoVisibleDeviceInfo *)self setIdsIdentifierString:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(HMAccessoryDiagnosticInfoProtoVisibleDeviceInfo *)self setMediaRouteIdString:?];
    v4 = v5;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((idsIdentifierString = self->_idsIdentifierString, !(idsIdentifierString | v4[1])) || -[NSString isEqual:](idsIdentifierString, "isEqual:")))
  {
    mediaRouteIdString = self->_mediaRouteIdString;
    if (mediaRouteIdString | v4[2])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_idsIdentifierString copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_mediaRouteIdString copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_idsIdentifierString)
  {
    [v4 setIdsIdentifierString:?];
    v4 = v5;
  }

  if (self->_mediaRouteIdString)
  {
    [v5 setMediaRouteIdString:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_idsIdentifierString)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_mediaRouteIdString)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  idsIdentifierString = self->_idsIdentifierString;
  if (idsIdentifierString)
  {
    [v3 setObject:idsIdentifierString forKey:@"idsIdentifierString"];
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
  v5 = [(HMAccessoryDiagnosticInfoProtoVisibleDeviceInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end