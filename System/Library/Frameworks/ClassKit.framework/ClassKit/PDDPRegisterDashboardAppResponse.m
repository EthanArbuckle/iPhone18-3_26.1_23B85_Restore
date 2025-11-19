@interface PDDPRegisterDashboardAppResponse
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PDDPRegisterDashboardAppResponse

- (id)description
{
  v7.receiver = self;
  v7.super_class = PDDPRegisterDashboardAppResponse;
  v3 = [(PDDPRegisterDashboardAppResponse *)&v7 description];
  v4 = [(PDDPRegisterDashboardAppResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  status = self->_status;
  if (status)
  {
    v5 = [(PDDPStatus *)status dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"status"];
  }

  return v3;
}

- (BOOL)readFrom:(id)a3
{
  v5 = [a3 position];
  if (v5 < [a3 length])
  {
    do
    {
      if ([a3 hasError])
      {
        break;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v17[0]) = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:v17 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
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

      v13 = [a3 hasError] ? 0 : v8;
LABEL_15:
      if (([a3 hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        break;
      }

      if ((v13 >> 3) == 1)
      {
        v14 = objc_alloc_init(PDDPStatus);
        objc_storeStrong(&self->_status, v14);
        v17[0] = 0;
        v17[1] = 0;
        if (!PBReaderPlaceMark() || !sub_1000E2FD8(v14, a3))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v15 = [a3 position];
    }

    while (v15 < [a3 length]);
  }

  return [a3 hasError] ^ 1;
}

- (void)writeTo:(id)a3
{
  if (self->_status)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)a3
{
  status = self->_status;
  if (status)
  {
    [a3 setStatus:status];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(PDDPStatus *)self->_status copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    status = self->_status;
    if (status | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  status = self->_status;
  v6 = v4[1];
  if (status)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    status = [(PDDPStatus *)status mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    status = [(PDDPRegisterDashboardAppResponse *)self setStatus:?];
  }

  v4 = v7;
LABEL_7:

  _objc_release_x1(status, v4);
}

@end