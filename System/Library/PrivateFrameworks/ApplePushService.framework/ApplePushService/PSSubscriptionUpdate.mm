@interface PSSubscriptionUpdate
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)subscriptionsStatus;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PSSubscriptionUpdate

- (int)subscriptionsStatus
{
  if (*&self->_has)
  {
    return self->_subscriptionsStatus;
  }

  else
  {
    return 0;
  }
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PSSubscriptionUpdate;
  v3 = [(PSSubscriptionUpdate *)&v7 description];
  dictionaryRepresentation = [(PSSubscriptionUpdate *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    if (self->_subscriptionsStatus)
    {
      v4 = [NSString stringWithFormat:@"(unknown: %i)", self->_subscriptionsStatus];
    }

    else
    {
      v4 = @"RESEND_SUBSCRIPTIONS";
    }

    [v3 setObject:v4 forKey:@"subscriptions_status"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    subscriptionsStatus = self->_subscriptionsStatus;
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 2) = self->_subscriptionsStatus;
    *(to + 12) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (*&self->_has)
  {
    *(result + 2) = self->_subscriptionsStatus;
    *(result + 12) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_6;
  }

  v5 = (*(equalCopy + 12) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 12) & 1) != 0 && self->_subscriptionsStatus == *(equalCopy + 2))
    {
      v5 = 1;
      goto LABEL_7;
    }

LABEL_6:
    v5 = 0;
  }

LABEL_7:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761 * self->_subscriptionsStatus;
  }

  else
  {
    return 0;
  }
}

- (void)mergeFrom:(id)from
{
  if (*(from + 12))
  {
    self->_subscriptionsStatus = *(from + 2);
    *&self->_has |= 1u;
  }
}

@end