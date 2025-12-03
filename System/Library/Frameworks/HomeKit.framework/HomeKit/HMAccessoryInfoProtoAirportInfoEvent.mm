@interface HMAccessoryInfoProtoAirportInfoEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HMAccessoryInfoProtoAirportInfoEvent

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(HMAccessoryInfoProtoAirportInfoEvent *)self setSsid:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(HMAccessoryInfoProtoAirportInfoEvent *)self setBssid:?];
    fromCopy = v5;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((ssid = self->_ssid, !(ssid | equalCopy[2])) || -[NSData isEqual:](ssid, "isEqual:")))
  {
    bssid = self->_bssid;
    if (bssid | equalCopy[1])
    {
      v7 = [(NSData *)bssid isEqual:?];
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
  v6 = [(NSData *)self->_ssid copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_bssid copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_ssid)
  {
    [toCopy setSsid:?];
    toCopy = v5;
  }

  if (self->_bssid)
  {
    [v5 setBssid:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_ssid)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_bssid)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  ssid = self->_ssid;
  if (ssid)
  {
    [dictionary setObject:ssid forKey:@"ssid"];
  }

  bssid = self->_bssid;
  if (bssid)
  {
    [v4 setObject:bssid forKey:@"bssid"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMAccessoryInfoProtoAirportInfoEvent;
  v4 = [(HMAccessoryInfoProtoAirportInfoEvent *)&v8 description];
  dictionaryRepresentation = [(HMAccessoryInfoProtoAirportInfoEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end