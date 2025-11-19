@interface NWPBEndpoint
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation NWPBEndpoint

- (unint64_t)hash
{
  v3 = [(NWPBAddressEndpoint *)self->_address hash];
  v4 = [(NWPBHostEndpoint *)self->_host hash]^ v3;
  v5 = [(NWPBServiceEndpoint *)self->_service hash];
  v6 = v4 ^ v5 ^ [(NWPBInterface *)self->_interface hash];
  return v6 ^ [(NSData *)self->_txtRecord hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((address = self->_address, !(address | v4[1])) || -[NWPBAddressEndpoint isEqual:](address, "isEqual:")) && ((host = self->_host, !(host | v4[2])) || -[NWPBHostEndpoint isEqual:](host, "isEqual:")) && ((service = self->_service, !(service | v4[4])) || -[NWPBServiceEndpoint isEqual:](service, "isEqual:")) && ((interface = self->_interface, !(interface | v4[3])) || -[NWPBInterface isEqual:](interface, "isEqual:")))
  {
    txtRecord = self->_txtRecord;
    if (txtRecord | v4[5])
    {
      v10 = [(NSData *)txtRecord isEqual:?];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NWPBAddressEndpoint *)self->_address copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NWPBHostEndpoint *)self->_host copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NWPBServiceEndpoint *)self->_service copyWithZone:a3];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(NWPBInterface *)self->_interface copyWithZone:a3];
  v13 = v5[3];
  v5[3] = v12;

  v14 = [(NSData *)self->_txtRecord copyWithZone:a3];
  v15 = v5[5];
  v5[5] = v14;

  return v5;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_address)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_host)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_service)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_interface)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_txtRecord)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  address = self->_address;
  if (address)
  {
    v5 = [(NWPBAddressEndpoint *)address dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"address"];
  }

  host = self->_host;
  if (host)
  {
    v7 = [(NWPBHostEndpoint *)host dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"host"];
  }

  service = self->_service;
  if (service)
  {
    v9 = [(NWPBServiceEndpoint *)service dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"service"];
  }

  interface = self->_interface;
  if (interface)
  {
    v11 = [(NWPBInterface *)interface dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"interface"];
  }

  txtRecord = self->_txtRecord;
  if (txtRecord)
  {
    [v3 setObject:txtRecord forKey:@"txtRecord"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NWPBEndpoint;
  v4 = [(NWPBEndpoint *)&v8 description];
  v5 = [(NWPBEndpoint *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end