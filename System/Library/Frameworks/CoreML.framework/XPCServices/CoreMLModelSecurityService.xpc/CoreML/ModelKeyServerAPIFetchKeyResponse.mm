@interface ModelKeyServerAPIFetchKeyResponse
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsResult:(id)result;
- (int)result;
- (unint64_t)hash;
- (void)clearOneofValuesForResult;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setError:(id)error;
- (void)setSuccess:(id)success;
- (void)writeTo:(id)to;
@end

@implementation ModelKeyServerAPIFetchKeyResponse

- (void)setSuccess:(id)success
{
  successCopy = success;
  [(ModelKeyServerAPIFetchKeyResponse *)self clearOneofValuesForResult];
  *&self->_has |= 1u;
  self->_result = 1;
  success = self->_success;
  self->_success = successCopy;
}

- (void)setError:(id)error
{
  errorCopy = error;
  [(ModelKeyServerAPIFetchKeyResponse *)self clearOneofValuesForResult];
  *&self->_has |= 1u;
  self->_result = 2;
  error = self->_error;
  self->_error = errorCopy;
}

- (int)result
{
  if (*&self->_has)
  {
    return self->_result;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsResult:(id)result
{
  resultCopy = result;
  if ([resultCopy isEqualToString:@"PBUNSET"])
  {
    v4 = 0;
  }

  else if ([resultCopy isEqualToString:@"success"])
  {
    v4 = 1;
  }

  else if ([resultCopy isEqualToString:@"error"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)clearOneofValuesForResult
{
  *&self->_has &= ~1u;
  self->_result = 0;
  success = self->_success;
  self->_success = 0;

  error = self->_error;
  self->_error = 0;
}

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = ModelKeyServerAPIFetchKeyResponse;
  v3 = [(ModelKeyServerAPIFetchKeyResponse *)&v7 description];
  dictionaryRepresentation = [(ModelKeyServerAPIFetchKeyResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  success = self->_success;
  if (success)
  {
    dictionaryRepresentation = [(ModelKeyServerAPIFetchKeyResult *)success dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"success"];
  }

  error = self->_error;
  if (error)
  {
    dictionaryRepresentation2 = [(ModelKeyServerAPIResultError *)error dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation2 forKey:@"error"];
  }

  if (*&self->_has)
  {
    v8 = self->_result;
    if (v8 >= 3)
    {
      v9 = [NSString stringWithFormat:@"(unknown: %i)", self->_result];
    }

    else
    {
      v9 = off_100010340[v8];
    }

    [v3 setObject:v9 forKey:@"Result"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_success)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_error)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[4] = self->_result;
    *(toCopy + 32) |= 1u;
  }

  v5 = toCopy;
  if (self->_success)
  {
    [toCopy setSuccess:?];
    toCopy = v5;
  }

  if (self->_error)
  {
    [v5 setError:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 4) = self->_result;
    *(v5 + 32) |= 1u;
  }

  v7 = [(ModelKeyServerAPIFetchKeyResult *)self->_success copyWithZone:zone];
  v8 = v6[3];
  v6[3] = v7;

  v9 = [(ModelKeyServerAPIResultError *)self->_error copyWithZone:zone];
  v10 = v6[1];
  v6[1] = v9;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(equalCopy + 32);
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_result != *(equalCopy + 4))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  success = self->_success;
  if (success | *(equalCopy + 3) && ![(ModelKeyServerAPIFetchKeyResult *)success isEqual:?])
  {
    goto LABEL_11;
  }

  error = self->_error;
  if (error | *(equalCopy + 1))
  {
    v8 = [(ModelKeyServerAPIResultError *)error isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_result;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(ModelKeyServerAPIFetchKeyResult *)self->_success hash]^ v3;
  return v4 ^ [(ModelKeyServerAPIResultError *)self->_error hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[8])
  {
    self->_result = fromCopy[4];
    *&self->_has |= 1u;
  }

  success = self->_success;
  v7 = *(v5 + 3);
  v10 = v5;
  if (success)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(ModelKeyServerAPIFetchKeyResult *)success mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(ModelKeyServerAPIFetchKeyResponse *)self setSuccess:?];
  }

  v5 = v10;
LABEL_9:
  error = self->_error;
  v9 = *(v5 + 1);
  if (error)
  {
    if (v9)
    {
      [(ModelKeyServerAPIResultError *)error mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(ModelKeyServerAPIFetchKeyResponse *)self setError:?];
  }

  _objc_release_x1();
}

@end