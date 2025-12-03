@interface NWPBEndpoint
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((address = self->_address, !(address | equalCopy[1])) || -[NWPBAddressEndpoint isEqual:](address, "isEqual:")) && ((host = self->_host, !(host | equalCopy[2])) || -[NWPBHostEndpoint isEqual:](host, "isEqual:")) && ((service = self->_service, !(service | equalCopy[4])) || -[NWPBServiceEndpoint isEqual:](service, "isEqual:")) && ((interface = self->_interface, !(interface | equalCopy[3])) || -[NWPBInterface isEqual:](interface, "isEqual:")))
  {
    txtRecord = self->_txtRecord;
    if (txtRecord | equalCopy[5])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NWPBAddressEndpoint *)self->_address copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NWPBHostEndpoint *)self->_host copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NWPBServiceEndpoint *)self->_service copyWithZone:zone];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(NWPBInterface *)self->_interface copyWithZone:zone];
  v13 = v5[3];
  v5[3] = v12;

  v14 = [(NSData *)self->_txtRecord copyWithZone:zone];
  v15 = v5[5];
  v5[5] = v14;

  return v5;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_address)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_host)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_service)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_interface)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_txtRecord)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  address = self->_address;
  if (address)
  {
    dictionaryRepresentation = [(NWPBAddressEndpoint *)address dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"address"];
  }

  host = self->_host;
  if (host)
  {
    dictionaryRepresentation2 = [(NWPBHostEndpoint *)host dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"host"];
  }

  service = self->_service;
  if (service)
  {
    dictionaryRepresentation3 = [(NWPBServiceEndpoint *)service dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"service"];
  }

  interface = self->_interface;
  if (interface)
  {
    dictionaryRepresentation4 = [(NWPBInterface *)interface dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"interface"];
  }

  txtRecord = self->_txtRecord;
  if (txtRecord)
  {
    [dictionary setObject:txtRecord forKey:@"txtRecord"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NWPBEndpoint;
  v4 = [(NWPBEndpoint *)&v8 description];
  dictionaryRepresentation = [(NWPBEndpoint *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end