@interface HMAccessoryInfoProtoAirportInfoEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HMAccessoryInfoProtoAirportInfoEvent

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(HMAccessoryInfoProtoAirportInfoEvent *)self setSsid:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(HMAccessoryInfoProtoAirportInfoEvent *)self setBssid:?];
    v4 = v5;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((ssid = self->_ssid, !(ssid | v4[2])) || -[NSData isEqual:](ssid, "isEqual:")))
  {
    bssid = self->_bssid;
    if (bssid | v4[1])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_ssid copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_bssid copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_ssid)
  {
    [v4 setSsid:?];
    v4 = v5;
  }

  if (self->_bssid)
  {
    [v5 setBssid:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_ssid)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_bssid)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  ssid = self->_ssid;
  if (ssid)
  {
    [v3 setObject:ssid forKey:@"ssid"];
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
  v5 = [(HMAccessoryInfoProtoAirportInfoEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end