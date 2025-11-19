@interface HMPBCommandContainer
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HMPBCommandContainer

- (void)mergeFrom:(id)a3
{
  v6 = a3;
  if (v6[4])
  {
    [(HMPBCommandContainer *)self setCommandID:?];
  }

  if (v6[5])
  {
    [(HMPBCommandContainer *)self setEndpointID:?];
  }

  if (v6[2])
  {
    [(HMPBCommandContainer *)self setClusterID:?];
  }

  if (v6[3])
  {
    [(HMPBCommandContainer *)self setCommandFields:?];
  }

  if (v6[6])
  {
    [(HMPBCommandContainer *)self setExpectedValues:?];
  }

  accessoryReference = self->_accessoryReference;
  v5 = v6[1];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((commandID = self->_commandID, !(commandID | v4[4])) || -[NSData isEqual:](commandID, "isEqual:")) && ((endpointID = self->_endpointID, !(endpointID | v4[5])) || -[NSData isEqual:](endpointID, "isEqual:")) && ((clusterID = self->_clusterID, !(clusterID | v4[2])) || -[NSData isEqual:](clusterID, "isEqual:")) && ((commandFields = self->_commandFields, !(commandFields | v4[3])) || -[NSData isEqual:](commandFields, "isEqual:")) && ((expectedValues = self->_expectedValues, !(expectedValues | v4[6])) || -[NSData isEqual:](expectedValues, "isEqual:")))
  {
    accessoryReference = self->_accessoryReference;
    if (accessoryReference | v4[1])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_commandID copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSData *)self->_endpointID copyWithZone:a3];
  v9 = v5[5];
  v5[5] = v8;

  v10 = [(NSData *)self->_clusterID copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(NSData *)self->_commandFields copyWithZone:a3];
  v13 = v5[3];
  v5[3] = v12;

  v14 = [(NSData *)self->_expectedValues copyWithZone:a3];
  v15 = v5[6];
  v5[6] = v14;

  v16 = [(HMPBAccessoryReference *)self->_accessoryReference copyWithZone:a3];
  v17 = v5[1];
  v5[1] = v16;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_commandID)
  {
    [v4 setCommandID:?];
    v4 = v5;
  }

  if (self->_endpointID)
  {
    [v5 setEndpointID:?];
    v4 = v5;
  }

  if (self->_clusterID)
  {
    [v5 setClusterID:?];
    v4 = v5;
  }

  if (self->_commandFields)
  {
    [v5 setCommandFields:?];
    v4 = v5;
  }

  if (self->_expectedValues)
  {
    [v5 setExpectedValues:?];
    v4 = v5;
  }

  if (self->_accessoryReference)
  {
    [v5 setAccessoryReference:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_commandID)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_endpointID)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_clusterID)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_commandFields)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_expectedValues)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_accessoryReference)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  commandID = self->_commandID;
  if (commandID)
  {
    [v3 setObject:commandID forKey:@"commandID"];
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
    v11 = [(HMPBAccessoryReference *)accessoryReference dictionaryRepresentation];
    [v4 setObject:v11 forKey:@"accessoryReference"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMPBCommandContainer;
  v4 = [(HMPBCommandContainer *)&v8 description];
  v5 = [(HMPBCommandContainer *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end