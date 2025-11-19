@interface XDCProgress
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)a3;
@end

@implementation XDCProgress

- (id)description
{
  v7.receiver = self;
  v7.super_class = XDCProgress;
  v3 = [(XDCProgress *)&v7 description];
  v4 = [(XDCProgress *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  bundleID = self->_bundleID;
  if (bundleID)
  {
    [v3 setObject:bundleID forKey:@"bundleID"];
  }

  v6 = [NSNumber numberWithLongLong:self->_completedUnitCount];
  [v4 setObject:v6 forKey:@"completedUnitCount"];

  v7 = [NSNumber numberWithLongLong:self->_totalUnitCount];
  [v4 setObject:v7 forKey:@"totalUnitCount"];

  return v4;
}

- (void)writeTo:(id)a3
{
  v3 = a3;
  PBDataWriterWriteStringField();
  PBDataWriterWriteInt64Field();
  PBDataWriterWriteInt64Field();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_bundleID copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v5[1] = self->_completedUnitCount;
  v5[2] = self->_totalUnitCount;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v6 = [v4 isMemberOfClass:objc_opt_class()] && ((bundleID = self->_bundleID, !(bundleID | v4[3])) || -[NSString isEqual:](bundleID, "isEqual:")) && self->_completedUnitCount == v4[1] && self->_totalUnitCount == v4[2];

  return v6;
}

@end