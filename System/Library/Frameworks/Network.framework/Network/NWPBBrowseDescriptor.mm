@interface NWPBBrowseDescriptor
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation NWPBBrowseDescriptor

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    service = self->_service;
    if (service | equalCopy[1])
    {
      v6 = [(NWPBServiceBrowse *)service isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NWPBServiceBrowse *)self->_service copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)writeTo:(id)to
{
  if (self->_service)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  service = self->_service;
  if (service)
  {
    dictionaryRepresentation = [(NWPBServiceBrowse *)service dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"service"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NWPBBrowseDescriptor;
  v4 = [(NWPBBrowseDescriptor *)&v8 description];
  dictionaryRepresentation = [(NWPBBrowseDescriptor *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end