@interface HMPBCommandContainer
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HMPBCommandContainer

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[4])
  {
    [(HMPBCommandContainer *)self setCommandID:?];
  }

  if (fromCopy[5])
  {
    [(HMPBCommandContainer *)self setEndpointID:?];
  }

  if (fromCopy[2])
  {
    [(HMPBCommandContainer *)self setClusterID:?];
  }

  if (fromCopy[3])
  {
    [(HMPBCommandContainer *)self setCommandFields:?];
  }

  if (fromCopy[6])
  {
    [(HMPBCommandContainer *)self setExpectedValues:?];
  }

  accessoryReference = self->_accessoryReference;
  v5 = fromCopy[1];
  if (accessoryReference)
  {
    if (v5)
    {
      [(HMPBAccessoryReference *)accessoryReference mergeFrom:?];
    }
  }

  else if (v5)
  {
    [(HMPBCommandContainer *)self setAccessoryReference:?];
  }
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_commandID hash];
  v4 = [(NSData *)self->_endpointID hash]^ v3;
  v5 = [(NSData *)self->_clusterID hash];
  v6 = v4 ^ v5 ^ [(NSData *)self->_commandFields hash];
  v7 = [(NSData *)self->_expectedValues hash];
  return v6 ^ v7 ^ [(HMPBAccessoryReference *)self->_accessoryReference hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((commandID = self->_commandID, !(commandID | equalCopy[4])) || -[NSData isEqual:](commandID, "isEqual:")) && ((endpointID = self->_endpointID, !(endpointID | equalCopy[5])) || -[NSData isEqual:](endpointID, "isEqual:")) && ((clusterID = self->_clusterID, !(clusterID | equalCopy[2])) || -[NSData isEqual:](clusterID, "isEqual:")) && ((commandFields = self->_commandFields, !(commandFields | equalCopy[3])) || -[NSData isEqual:](commandFields, "isEqual:")) && ((expectedValues = self->_expectedValues, !(expectedValues | equalCopy[6])) || -[NSData isEqual:](expectedValues, "isEqual:")))
  {
    accessoryReference = self->_accessoryReference;
    if (accessoryReference | equalCopy[1])
    {
      v11 = [(HMPBAccessoryReference *)accessoryReference isEqual:?];
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_commandID copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSData *)self->_endpointID copyWithZone:zone];
  v9 = v5[5];
  v5[5] = v8;

  v10 = [(NSData *)self->_clusterID copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(NSData *)self->_commandFields copyWithZone:zone];
  v13 = v5[3];
  v5[3] = v12;

  v14 = [(NSData *)self->_expectedValues copyWithZone:zone];
  v15 = v5[6];
  v5[6] = v14;

  v16 = [(HMPBAccessoryReference *)self->_accessoryReference copyWithZone:zone];
  v17 = v5[1];
  v5[1] = v16;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_commandID)
  {
    [toCopy setCommandID:?];
    toCopy = v5;
  }

  if (self->_endpointID)
  {
    [v5 setEndpointID:?];
    toCopy = v5;
  }

  if (self->_clusterID)
  {
    [v5 setClusterID:?];
    toCopy = v5;
  }

  if (self->_commandFields)
  {
    [v5 setCommandFields:?];
    toCopy = v5;
  }

  if (self->_expectedValues)
  {
    [v5 setExpectedValues:?];
    toCopy = v5;
  }

  if (self->_accessoryReference)
  {
    [v5 setAccessoryReference:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_commandID)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_endpointID)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_clusterID)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_commandFields)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_expectedValues)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_accessoryReference)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  commandID = self->_commandID;
  if (commandID)
  {
    [dictionary setObject:commandID forKey:@"commandID"];
  }

  endpointID = self->_endpointID;
  if (endpointID)
  {
    [v4 setObject:endpointID forKey:@"endpointID"];
  }

  clusterID = self->_clusterID;
  if (clusterID)
  {
    [v4 setObject:clusterID forKey:@"clusterID"];
  }

  commandFields = self->_commandFields;
  if (commandFields)
  {
    [v4 setObject:commandFields forKey:@"commandFields"];
  }

  expectedValues = self->_expectedValues;
  if (expectedValues)
  {
    [v4 setObject:expectedValues forKey:@"expectedValues"];
  }

  accessoryReference = self->_accessoryReference;
  if (accessoryReference)
  {
    dictionaryRepresentation = [(HMPBAccessoryReference *)accessoryReference dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"accessoryReference"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMPBCommandContainer;
  v4 = [(HMPBCommandContainer *)&v8 description];
  dictionaryRepresentation = [(HMPBCommandContainer *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end