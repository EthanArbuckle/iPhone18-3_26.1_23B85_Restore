@interface _ADPBDeviceExecuteOnRemoteRequest
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)_ad_performWithCloudService:(id)service fromPeer:(id)peer completion:(id)completion;
- (void)_ad_performWithSharedDataRemote:(id)remote completion:(id)completion;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _ADPBDeviceExecuteOnRemoteRequest

- (void)_ad_performWithSharedDataRemote:(id)remote completion:(id)completion
{
  remoteCopy = remote;
  completionCopy = completion;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[_ADPBDeviceExecuteOnRemoteRequest(ADSharedDataService) _ad_performWithSharedDataRemote:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s ", &v9, 0xCu);
  }

  [remoteCopy _handleExecuteRequestOnRemoteWatch:self completion:completionCopy];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[2])
  {
    [(_ADPBDeviceExecuteOnRemoteRequest *)self setContent:?];
  }

  if (fromCopy[4])
  {
    [(_ADPBDeviceExecuteOnRemoteRequest *)self setSourceIDSFirstRoutableDestination:?];
  }

  if (fromCopy[1])
  {
    [(_ADPBDeviceExecuteOnRemoteRequest *)self setAssistantId:?];
  }

  if (fromCopy[3])
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((content = self->_content, !(content | equalCopy[2])) || -[NSData isEqual:](content, "isEqual:")) && ((sourceIDSFirstRoutableDestination = self->_sourceIDSFirstRoutableDestination, !(sourceIDSFirstRoutableDestination | equalCopy[4])) || -[NSString isEqual:](sourceIDSFirstRoutableDestination, "isEqual:")) && ((assistantId = self->_assistantId, !(assistantId | equalCopy[1])) || -[NSString isEqual:](assistantId, "isEqual:")))
  {
    sourceAirplayId = self->_sourceAirplayId;
    if (sourceAirplayId | equalCopy[3])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_content copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_sourceIDSFirstRoutableDestination copyWithZone:zone];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSString *)self->_assistantId copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(NSString *)self->_sourceAirplayId copyWithZone:zone];
  v13 = v5[3];
  v5[3] = v12;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_content)
  {
    [toCopy setContent:?];
    toCopy = v5;
  }

  if (self->_sourceIDSFirstRoutableDestination)
  {
    [v5 setSourceIDSFirstRoutableDestination:?];
    toCopy = v5;
  }

  if (self->_assistantId)
  {
    [v5 setAssistantId:?];
    toCopy = v5;
  }

  if (self->_sourceAirplayId)
  {
    [v5 setSourceAirplayId:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_content)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_sourceIDSFirstRoutableDestination)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_assistantId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_sourceAirplayId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
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
        return [from hasError] ^ 1;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v21 = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:&v21 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
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

      v13 = [from hasError] ? 0 : v8;
LABEL_15:
      if (([from hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        return [from hasError] ^ 1;
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
      position2 = [from position];
    }

    while (position2 < [from length]);
  }

  return [from hasError] ^ 1;
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
  dictionaryRepresentation = [(_ADPBDeviceExecuteOnRemoteRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (void)_ad_performWithCloudService:(id)service fromPeer:(id)peer completion:(id)completion
{
  serviceCopy = service;
  peerCopy = peer;
  completionCopy = completion;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v12 = 136315138;
    v13 = "[_ADPBDeviceExecuteOnRemoteRequest(ADPeerCloudService) _ad_performWithCloudService:fromPeer:completion:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s ", &v12, 0xCu);
  }

  [serviceCopy _handleRemoteExecution:self peer:peerCopy completion:completionCopy];
}

@end