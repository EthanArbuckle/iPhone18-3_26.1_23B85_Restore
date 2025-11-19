@interface _ADPBProxyWakeUpRequest
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)_ad_performWithPeerStreamConnection:(id)a3 context:(id)a4;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _ADPBProxyWakeUpRequest

- (void)_ad_performWithPeerStreamConnection:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextIDS;
  if (os_log_type_enabled(AFSiriLogContextIDS, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = [(_ADPBProxyWakeUpRequest *)self streamId];
    v11 = 136315394;
    v12 = "[_ADPBProxyWakeUpRequest(ADPeerStreamConnection) _ad_performWithPeerStreamConnection:context:]";
    v13 = 2112;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s %@", &v11, 0x16u);
  }

  [v6 _handleWakeUpMessage:self context:v7];
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 1))
  {
    [(_ADPBProxyWakeUpRequest *)self setStreamId:?];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    streamId = self->_streamId;
    if (streamId | v4[1])
    {
      v6 = [(NSString *)streamId isEqual:?];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_streamId copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)a3
{
  streamId = self->_streamId;
  if (streamId)
  {
    [a3 setStreamId:streamId];
  }
}

- (void)writeTo:(id)a3
{
  if (self->_streamId)
  {
    PBDataWriterWriteStringField();
  }
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
        v19 = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:&v19 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
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

      v13 = [a3 hasError] ? 0 : v8;
LABEL_15:
      if (([a3 hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        break;
      }

      if ((v13 >> 3) == 1)
      {
        v14 = PBReaderReadString();
        streamId = self->_streamId;
        self->_streamId = v14;
      }

      else
      {
        v16 = PBReaderSkipValueWithTag();
        if (!v16)
        {
          return v16;
        }
      }

      v17 = [a3 position];
    }

    while (v17 < [a3 length]);
  }

  LOBYTE(v16) = [a3 hasError] ^ 1;
  return v16;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  streamId = self->_streamId;
  if (streamId)
  {
    [v3 setObject:streamId forKey:@"stream_id"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = _ADPBProxyWakeUpRequest;
  v3 = [(_ADPBProxyWakeUpRequest *)&v7 description];
  v4 = [(_ADPBProxyWakeUpRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

@end