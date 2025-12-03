@interface XDCProgress
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation XDCProgress

- (id)description
{
  v7.receiver = self;
  v7.super_class = XDCProgress;
  v3 = [(XDCProgress *)&v7 description];
  dictionaryRepresentation = [(XDCProgress *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteStringField();
  PBDataWriterWriteInt64Field();
  PBDataWriterWriteInt64Field();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_bundleID copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v5[1] = self->_completedUnitCount;
  v5[2] = self->_totalUnitCount;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = [equalCopy isMemberOfClass:objc_opt_class()] && ((bundleID = self->_bundleID, !(bundleID | equalCopy[3])) || -[NSString isEqual:](bundleID, "isEqual:")) && self->_completedUnitCount == equalCopy[1] && self->_totalUnitCount == equalCopy[2];

  return v6;
}

@end