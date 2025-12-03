@interface _ADPBProxyReestablishRequest
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)_ad_performWithPeerStreamConnection:(id)connection context:(id)context;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _ADPBProxyReestablishRequest

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(_ADPBProxyReestablishRequest *)self setLastKnownStreamId:?];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    lastKnownStreamId = self->_lastKnownStreamId;
    if (lastKnownStreamId | equalCopy[1])
    {
      v6 = [(NSString *)lastKnownStreamId isEqual:?];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_lastKnownStreamId copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)to
{
  lastKnownStreamId = self->_lastKnownStreamId;
  if (lastKnownStreamId)
  {
    [to setLastKnownStreamId:lastKnownStreamId];
  }
}

- (void)writeTo:(id)to
{
  if (self->_lastKnownStreamId)
  {
    PBDataWriterWriteStringField();
  }
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
        v19 = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:&v19 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
        }

        v8 |= (v19 & 0x7F) << v6;
        if ((v19 & 0x80) == 0)
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
        v14 = PBReaderReadString();
        lastKnownStreamId = self->_lastKnownStreamId;
        self->_lastKnownStreamId = v14;
      }

      else
      {
        v16 = PBReaderSkipValueWithTag();
        if (!v16)
        {
          return v16;
        }
      }

      position2 = [from position];
    }

    while (position2 < [from length]);
  }

  LOBYTE(v16) = [from hasError] ^ 1;
  return v16;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  lastKnownStreamId = self->_lastKnownStreamId;
  if (lastKnownStreamId)
  {
    [v3 setObject:lastKnownStreamId forKey:@"last_known_stream_id"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = _ADPBProxyReestablishRequest;
  v3 = [(_ADPBProxyReestablishRequest *)&v7 description];
  dictionaryRepresentation = [(_ADPBProxyReestablishRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (void)_ad_performWithPeerStreamConnection:(id)connection context:(id)context
{
  connectionCopy = connection;
  contextCopy = context;
  v8 = AFSiriLogContextIDS;
  if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[_ADPBProxyReestablishRequest(ADPeerStreamConnection) _ad_performWithPeerStreamConnection:context:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s ", &v9, 0xCu);
  }

  [connectionCopy _handleReestablishMessage:self context:contextCopy];
}

@end