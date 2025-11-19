@interface HMPBMetadataService
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)a3;
@end

@implementation HMPBMetadataService

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((uuidStr = self->_uuidStr, !(uuidStr | v4[2])) || -[NSString isEqual:](uuidStr, "isEqual:")))
  {
    svcDescription = self->_svcDescription;
    if (svcDescription | v4[1])
    {
      v7 = [(NSString *)svcDescription isEqual:?];
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
  v6 = [(NSString *)self->_uuidStr copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_svcDescription copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_uuidStr)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_svcDescription)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  uuidStr = self->_uuidStr;
  if (uuidStr)
  {
    [v3 setObject:uuidStr forKey:@"uuidStr"];
  }

  svcDescription = self->_svcDescription;
  if (svcDescription)
  {
    [v4 setObject:svcDescription forKey:@"svcDescription"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMPBMetadataService;
  v4 = [(HMPBMetadataService *)&v8 description];
  v5 = [(HMPBMetadataService *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end