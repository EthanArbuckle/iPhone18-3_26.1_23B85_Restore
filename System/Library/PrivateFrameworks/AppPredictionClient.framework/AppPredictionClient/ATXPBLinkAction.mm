@interface ATXPBLinkAction
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXPBLinkAction

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ATXPBLinkAction;
  v4 = [(ATXPBLinkAction *)&v8 description];
  v5 = [(ATXPBLinkAction *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  bundleId = self->_bundleId;
  if (bundleId)
  {
    [v3 setObject:bundleId forKey:@"bundleId"];
  }

  action = self->_action;
  if (action)
  {
    [v4 setObject:action forKey:@"action"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_bundleId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_action)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_bundleId)
  {
    [v4 setBundleId:?];
    v4 = v5;
  }

  if (self->_action)
  {
    [v5 setAction:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_bundleId copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_action copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((bundleId = self->_bundleId, !(bundleId | v4[2])) || -[NSString isEqual:](bundleId, "isEqual:")))
  {
    action = self->_action;
    if (action | v4[1])
    {
      v7 = [(NSData *)action isEqual:?];
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(ATXPBLinkAction *)self setBundleId:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(ATXPBLinkAction *)self setAction:?];
    v4 = v5;
  }
}

@end