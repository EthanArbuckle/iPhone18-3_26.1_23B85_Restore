@interface PDDPDashboardApp
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PDDPDashboardApp

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPDashboardApp;
  v3 = [(PDDPDashboardApp *)&v7 description];
  dictionaryRepresentation = [(PDDPDashboardApp *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  appIdentifier = self->_appIdentifier;
  if (appIdentifier)
  {
    [v3 setObject:appIdentifier forKey:@"app_identifier"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  if (self->_appIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  appIdentifier = self->_appIdentifier;
  if (appIdentifier)
  {
    [to setAppIdentifier:appIdentifier];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_appIdentifier copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    appIdentifier = self->_appIdentifier;
    if (appIdentifier | equalCopy[1])
    {
      v6 = [(NSString *)appIdentifier isEqual:?];
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

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(PDDPDashboardApp *)self setAppIdentifier:?];
  }
}

@end