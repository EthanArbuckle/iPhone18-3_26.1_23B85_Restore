@interface _ADPBDeviceExecuteOnRemoteRequest
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)_ad_performWithCloudService:(id)a3 fromPeer:(id)a4 completion:(id)a5;
- (void)_ad_performWithSharedDataRemote:(id)a3 completion:(id)a4;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _ADPBDeviceExecuteOnRemoteRequest

- (void)_ad_performWithSharedDataRemote:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[_ADPBDeviceExecuteOnRemoteRequest(ADSharedDataService) _ad_performWithSharedDataRemote:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s ", &v9, 0xCu);
  }

  [v6 _handleExecuteRequestOnRemoteWatch:self completion:v7];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[2])
  {
    [(_ADPBDeviceExecuteOnRemoteRequest *)self setContent:?];
  }

  if (v4[4])
  {
    [(_ADPBDeviceExecuteOnRemoteRequest *)self setSourceIDSFirstRoutableDestination:?];
  }

  if (v4[1])
  {
    [(_ADPBDeviceExecuteOnRemoteRequest *)self setAssistantId:?];
  }

  if (v4[3])
  {
    [(_ADPBDeviceExecuteOnRemoteRequest *)self setSourceAirplayId:?];
  }
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_content hash];
  v4 = [(NSString *)self->_sourceIDSFirstRoutableDestination hash]^ v3;
  v5 = [(NSString *)self->_assistantId hash];
  return v4 ^ v5 ^ [(NSString *)self->_sourceAirplayId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((content = self->_content, !(content | v4[2])) || -[NSData isEqual:](content, "isEqual:")) && ((sourceIDSFirstRoutableDestination = self->_sourceIDSFirstRoutableDestination, !(sourceIDSFirstRoutableDestination | v4[4])) || -[NSString isEqual:](sourceIDSFirstRoutableDestination, "isEqual:")) && ((assistantId = self->_assistantId, !(assistantId | v4[1])) || -[NSString isEqual:](assistantId, "isEqual:")))
  {
    sourceAirplayId = self->_sourceAirplayId;
    if (sourceAirplayId | v4[3])
    {
      v9 = [(NSString *)sourceAirplayId isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_content copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_sourceIDSFirstRoutableDestination copyWithZone:a3];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSString *)self->_assistantId copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(NSString *)self->_sourceAirplayId copyWithZone:a3];
  v13 = v5[3];
  v5[3] = v12;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_content)
  {
    [v4 setContent:?];
    v4 = v5;
  }

  if (self->_sourceIDSFirstRoutableDestination)
  {
    [v5 setSourceIDSFirstRoutableDestination:?];
    v4 = v5;
  }

  if (self->_assistantId)
  {
    [v5 setAssistantId:?];
    v4 = v5;
  }

  if (self->_sourceAirplayId)
  {
    [v5 setSourceAirplayId:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_content)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_sourceIDSFirstRoutableDestination)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_assistantId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_sourceAirplayId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
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
        return [a3 hasError] ^ 1;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v21 = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:&v21 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
        }

        v8 |= (v21 & 0x7F) << v6;
        if ((v21 & 0x80) == 0)
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
        return [a3 hasError] ^ 1;
      }

      v14 = v13 >> 3;
      if ((v13 >> 3) > 2)
      {
        if (v14 == 3)
        {
          v15 = PBReaderReadString();
          v16 = &OBJC_IVAR____ADPBDeviceExecuteOnRemoteRequest__assistantId;
          goto LABEL_28;
        }

        if (v14 == 4)
        {
          v15 = PBReaderReadString();
          v16 = &OBJC_IVAR____ADPBDeviceExecuteOnRemoteRequest__sourceAirplayId;
          goto LABEL_28;
        }
      }

      else
      {
        if (v14 == 1)
        {
          v15 = PBReaderReadData();
          v16 = &OBJC_IVAR____ADPBDeviceExecuteOnRemoteRequest__content;
          goto LABEL_28;
        }

        if (v14 == 2)
        {
          v15 = PBReaderReadString();
          v16 = &OBJC_IVAR____ADPBDeviceExecuteOnRemoteRequest__sourceIDSFirstRoutableDestination;
LABEL_28:
          v17 = *v16;
          v18 = *&self->PBRequest_opaque[v17];
          *&self->PBRequest_opaque[v17] = v15;

          goto LABEL_29;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_29:
      v19 = [a3 position];
    }

    while (v19 < [a3 length]);
  }

  return [a3 hasError] ^ 1;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  content = self->_content;
  if (content)
  {
    [v3 setObject:content forKey:@"content"];
  }

  sourceIDSFirstRoutableDestination = self->_sourceIDSFirstRoutableDestination;
  if (sourceIDSFirstRoutableDestination)
  {
    [v4 setObject:sourceIDSFirstRoutableDestination forKey:@"sourceIDSFirstRoutableDestination"];
  }

  assistantId = self->_assistantId;
  if (assistantId)
  {
    [v4 setObject:assistantId forKey:@"assistant_id"];
  }

  sourceAirplayId = self->_sourceAirplayId;
  if (sourceAirplayId)
  {
    [v4 setObject:sourceAirplayId forKey:@"source_airplay_id"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = _ADPBDeviceExecuteOnRemoteRequest;
  v3 = [(_ADPBDeviceExecuteOnRemoteRequest *)&v7 description];
  v4 = [(_ADPBDeviceExecuteOnRemoteRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (void)_ad_performWithCloudService:(id)a3 fromPeer:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v12 = 136315138;
    v13 = "[_ADPBDeviceExecuteOnRemoteRequest(ADPeerCloudService) _ad_performWithCloudService:fromPeer:completion:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s ", &v12, 0xCu);
  }

  [v8 _handleRemoteExecution:self peer:v9 completion:v10];
}

@end