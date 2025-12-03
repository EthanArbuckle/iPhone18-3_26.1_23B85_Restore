@interface TFAppleWatch
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation TFAppleWatch

- (id)description
{
  v7.receiver = self;
  v7.super_class = TFAppleWatch;
  v3 = [(TFAppleWatch *)&v7 description];
  dictionaryRepresentation = [(TFAppleWatch *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  model = self->_model;
  if (model)
  {
    [v3 setObject:model forKey:@"model"];
  }

  osVersion = self->_osVersion;
  if (osVersion)
  {
    [v4 setObject:osVersion forKey:@"osVersion"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_model)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_osVersion)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_model copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_osVersion copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((model = self->_model, !(model | equalCopy[1])) || -[NSString isEqual:](model, "isEqual:")))
  {
    osVersion = self->_osVersion;
    if (osVersion | equalCopy[2])
    {
      v7 = [(NSString *)osVersion isEqual:?];
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

@end