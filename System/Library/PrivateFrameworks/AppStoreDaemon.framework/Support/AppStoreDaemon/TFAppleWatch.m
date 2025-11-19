@interface TFAppleWatch
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)a3;
@end

@implementation TFAppleWatch

- (id)description
{
  v7.receiver = self;
  v7.super_class = TFAppleWatch;
  v3 = [(TFAppleWatch *)&v7 description];
  v4 = [(TFAppleWatch *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_model)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_osVersion)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_model copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_osVersion copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((model = self->_model, !(model | v4[1])) || -[NSString isEqual:](model, "isEqual:")))
  {
    osVersion = self->_osVersion;
    if (osVersion | v4[2])
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