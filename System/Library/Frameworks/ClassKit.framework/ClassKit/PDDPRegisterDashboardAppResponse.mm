@interface PDDPRegisterDashboardAppResponse
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PDDPRegisterDashboardAppResponse

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPRegisterDashboardAppResponse;
  v3 = [(PDDPRegisterDashboardAppResponse *)&v7 description];
  dictionaryRepresentation = [(PDDPRegisterDashboardAppResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  status = self->_status;
  if (status)
  {
    dictionaryRepresentation = [(PDDPStatus *)status dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"status"];
  }

  return v3;
}

- (BOOL)readFrom:(id)from
{
  position = [from position];
  if (position < [from length])
  {
    do
    {
      if ([from hasError])
      {
        break;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v17[0]) = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:v17 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
        }

        v8 |= (v17[0] & 0x7F) << v6;
        if ((v17[0] & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        if (v7++ >= 9)
        {
          v13 = 0;
          goto LABEL_15;
        }
      }

      v13 = [from hasError] ? 0 : v8;
LABEL_15:
      if (([from hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        break;
      }

      if ((v13 >> 3) == 1)
      {
        v14 = objc_alloc_init(PDDPStatus);
        objc_storeStrong(&self->_status, v14);
        v17[0] = 0;
        v17[1] = 0;
        if (!PBReaderPlaceMark() || !sub_1000E2FD8(v14, from))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      position2 = [from position];
    }

    while (position2 < [from length]);
  }

  return [from hasError] ^ 1;
}

- (void)writeTo:(id)to
{
  if (self->_status)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  status = self->_status;
  if (status)
  {
    [to setStatus:status];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(PDDPStatus *)self->_status copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    status = self->_status;
    if (status | equalCopy[1])
    {
      v6 = [(PDDPStatus *)status isEqual:?];
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
  fromCopy = from;
  status = self->_status;
  v6 = fromCopy[1];
  if (status)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    status = [(PDDPStatus *)status mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    status = [(PDDPRegisterDashboardAppResponse *)self setStatus:?];
  }

  fromCopy = v7;
LABEL_7:

  _objc_release_x1(status, fromCopy);
}

@end