@interface _ADPBDeviceStartRemoteRequest
- (AFRequestInfo)_ad_requestInfo;
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)_ad_performWithCloudService:(id)service fromPeer:(id)peer completion:(id)completion;
- (void)_ad_performWithSharedDataRemote:(id)remote completion:(id)completion;
- (void)_ad_setRequestInfo:(id)info;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _ADPBDeviceStartRemoteRequest

- (void)_ad_performWithSharedDataRemote:(id)remote completion:(id)completion
{
  remoteCopy = remote;
  completionCopy = completion;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[_ADPBDeviceStartRemoteRequest(ADSharedDataService) _ad_performWithSharedDataRemote:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s ", &v9, 0xCu);
  }

  [remoteCopy _startRemoteRequest:self completion:completionCopy];
}

- (void)_ad_performWithCloudService:(id)service fromPeer:(id)peer completion:(id)completion
{
  serviceCopy = service;
  peerCopy = peer;
  completionCopy = completion;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v13 = 136315138;
    v14 = "[_ADPBDeviceStartRemoteRequest(ADPeerCloudService) _ad_performWithCloudService:fromPeer:completion:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s ", &v13, 0xCu);
  }

  _ad_requestInfo = [(_ADPBDeviceStartRemoteRequest *)self _ad_requestInfo];
  [serviceCopy _notifyObserversOfRequestInfo:_ad_requestInfo fromPeer:peerCopy completion:completionCopy];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 5))
  {
    [(_ADPBDeviceStartRemoteRequest *)self setText:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 1))
  {
    [(_ADPBDeviceStartRemoteRequest *)self setHandoffData:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 4))
  {
    [(_ADPBDeviceStartRemoteRequest *)self setHandoffUrlString:?];
    fromCopy = v5;
  }

  if (fromCopy[52])
  {
    self->_requiresUserInteraction = fromCopy[48];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 2))
  {
    [(_ADPBDeviceStartRemoteRequest *)self setHandoffNotification:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(_ADPBDeviceStartRemoteRequest *)self setHandoffOriginDeviceName:?];
    fromCopy = v5;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_text hash];
  v4 = [(NSData *)self->_handoffData hash];
  v5 = [(NSString *)self->_handoffUrlString hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_requiresUserInteraction;
  }

  else
  {
    v6 = 0;
  }

  v7 = v4 ^ v3 ^ v5 ^ v6;
  v8 = [(NSString *)self->_handoffNotification hash];
  return v7 ^ v8 ^ [(NSString *)self->_handoffOriginDeviceName hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  text = self->_text;
  if (text | *(equalCopy + 5))
  {
    if (![(NSString *)text isEqual:?])
    {
      goto LABEL_15;
    }
  }

  handoffData = self->_handoffData;
  if (handoffData | *(equalCopy + 1))
  {
    if (![(NSData *)handoffData isEqual:?])
    {
      goto LABEL_15;
    }
  }

  handoffUrlString = self->_handoffUrlString;
  if (handoffUrlString | *(equalCopy + 4))
  {
    if (![(NSString *)handoffUrlString isEqual:?])
    {
      goto LABEL_15;
    }
  }

  v8 = *(equalCopy + 52);
  if (*&self->_has)
  {
    if ((*(equalCopy + 52) & 1) == 0)
    {
      goto LABEL_15;
    }

    v8 = *(equalCopy + 48);
    if (self->_requiresUserInteraction)
    {
      if (*(equalCopy + 48))
      {
        goto LABEL_10;
      }

LABEL_15:
      v11 = 0;
      goto LABEL_16;
    }
  }

  if (v8)
  {
    goto LABEL_15;
  }

LABEL_10:
  handoffNotification = self->_handoffNotification;
  if (handoffNotification | *(equalCopy + 2) && ![(NSString *)handoffNotification isEqual:?])
  {
    goto LABEL_15;
  }

  handoffOriginDeviceName = self->_handoffOriginDeviceName;
  if (handoffOriginDeviceName | *(equalCopy + 3))
  {
    v11 = [(NSString *)handoffOriginDeviceName isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_16:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_text copyWithZone:zone];
  v7 = v5[5];
  v5[5] = v6;

  v8 = [(NSData *)self->_handoffData copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSString *)self->_handoffUrlString copyWithZone:zone];
  v11 = v5[4];
  v5[4] = v10;

  if (*&self->_has)
  {
    *(v5 + 48) = self->_requiresUserInteraction;
    *(v5 + 52) |= 1u;
  }

  v12 = [(NSString *)self->_handoffNotification copyWithZone:zone];
  v13 = v5[2];
  v5[2] = v12;

  v14 = [(NSString *)self->_handoffOriginDeviceName copyWithZone:zone];
  v15 = v5[3];
  v5[3] = v14;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_text)
  {
    [toCopy setText:?];
    toCopy = v5;
  }

  if (self->_handoffData)
  {
    [v5 setHandoffData:?];
    toCopy = v5;
  }

  if (self->_handoffUrlString)
  {
    [v5 setHandoffUrlString:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[48] = self->_requiresUserInteraction;
    toCopy[52] |= 1u;
  }

  if (self->_handoffNotification)
  {
    [v5 setHandoffNotification:?];
    toCopy = v5;
  }

  if (self->_handoffOriginDeviceName)
  {
    [v5 setHandoffOriginDeviceName:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_text)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_handoffData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_handoffUrlString)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v5;
  }

  if (self->_handoffNotification)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_handoffOriginDeviceName)
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
        break;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v28 = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:&v28 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
        }

        v8 |= (v28 & 0x7F) << v6;
        if ((v28 & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        v12 = v7++ >= 9;
        if (v12)
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

      v14 = v13 >> 3;
      if ((v13 >> 3) > 3)
      {
        switch(v14)
        {
          case 4:
            v17 = 0;
            v18 = 0;
            v19 = 0;
            *&self->_has |= 1u;
            while (1)
            {
              v29 = 0;
              v20 = [from position] + 1;
              if (v20 >= [from position] && (v21 = objc_msgSend(from, "position") + 1, v21 <= objc_msgSend(from, "length")))
              {
                data2 = [from data];
                [data2 getBytes:&v29 range:{objc_msgSend(from, "position"), 1}];

                [from setPosition:{objc_msgSend(from, "position") + 1}];
              }

              else
              {
                [from _setError];
              }

              v19 |= (v29 & 0x7F) << v17;
              if ((v29 & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v12 = v18++ >= 9;
              if (v12)
              {
                LOBYTE(v23) = 0;
                goto LABEL_44;
              }
            }

            v23 = (v19 != 0) & ~[from hasError];
LABEL_44:
            self->_requiresUserInteraction = v23;
            goto LABEL_41;
          case 5:
            v15 = PBReaderReadString();
            v16 = 16;
            break;
          case 6:
            v15 = PBReaderReadString();
            v16 = 24;
            break;
          default:
LABEL_36:
            v24 = PBReaderSkipValueWithTag();
            if (!v24)
            {
              return v24;
            }

            goto LABEL_41;
        }
      }

      else
      {
        switch(v14)
        {
          case 1:
            v15 = PBReaderReadString();
            v16 = 40;
            break;
          case 2:
            v15 = PBReaderReadData();
            v16 = 8;
            break;
          case 3:
            v15 = PBReaderReadString();
            v16 = 32;
            break;
          default:
            goto LABEL_36;
        }
      }

      v25 = *&self->PBRequest_opaque[v16];
      *&self->PBRequest_opaque[v16] = v15;

LABEL_41:
      position2 = [from position];
    }

    while (position2 < [from length]);
  }

  LOBYTE(v24) = [from hasError] ^ 1;
  return v24;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  text = self->_text;
  if (text)
  {
    [v3 setObject:text forKey:@"text"];
  }

  handoffData = self->_handoffData;
  if (handoffData)
  {
    [v4 setObject:handoffData forKey:@"handoff_data"];
  }

  handoffUrlString = self->_handoffUrlString;
  if (handoffUrlString)
  {
    [v4 setObject:handoffUrlString forKey:@"handoff_url_string"];
  }

  if (*&self->_has)
  {
    v8 = [NSNumber numberWithBool:self->_requiresUserInteraction];
    [v4 setObject:v8 forKey:@"requiresUserInteraction"];
  }

  handoffNotification = self->_handoffNotification;
  if (handoffNotification)
  {
    [v4 setObject:handoffNotification forKey:@"handoff_notification"];
  }

  handoffOriginDeviceName = self->_handoffOriginDeviceName;
  if (handoffOriginDeviceName)
  {
    [v4 setObject:handoffOriginDeviceName forKey:@"handoff_origin_device_name"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = _ADPBDeviceStartRemoteRequest;
  v3 = [(_ADPBDeviceStartRemoteRequest *)&v7 description];
  dictionaryRepresentation = [(_ADPBDeviceStartRemoteRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (void)_ad_setRequestInfo:(id)info
{
  infoCopy = info;
  text = [infoCopy text];
  [(_ADPBDeviceStartRemoteRequest *)self setText:text];

  handoffRequestData = [infoCopy handoffRequestData];
  [(_ADPBDeviceStartRemoteRequest *)self setHandoffData:handoffRequestData];

  handoffURLString = [infoCopy handoffURLString];
  [(_ADPBDeviceStartRemoteRequest *)self setHandoffUrlString:handoffURLString];

  -[_ADPBDeviceStartRemoteRequest setRequiresUserInteraction:](self, "setRequiresUserInteraction:", [infoCopy handoffRequiresUserInteraction]);
  handoffNotification = [infoCopy handoffNotification];
  [(_ADPBDeviceStartRemoteRequest *)self setHandoffNotification:handoffNotification];

  handoffOriginDeviceName = [infoCopy handoffOriginDeviceName];

  [(_ADPBDeviceStartRemoteRequest *)self setHandoffOriginDeviceName:handoffOriginDeviceName];
}

- (AFRequestInfo)_ad_requestInfo
{
  v3 = objc_alloc_init(AFRequestInfo);
  text = [(_ADPBDeviceStartRemoteRequest *)self text];
  [v3 setText:text];

  handoffData = [(_ADPBDeviceStartRemoteRequest *)self handoffData];
  [v3 setHandoffRequestData:handoffData];

  handoffUrlString = [(_ADPBDeviceStartRemoteRequest *)self handoffUrlString];
  [v3 setHandoffURLString:handoffUrlString];

  [v3 setHandoffRequiresUserInteraction:{-[_ADPBDeviceStartRemoteRequest requiresUserInteraction](self, "requiresUserInteraction")}];
  handoffNotification = [(_ADPBDeviceStartRemoteRequest *)self handoffNotification];
  [v3 setHandoffNotification:handoffNotification];

  handoffOriginDeviceName = [(_ADPBDeviceStartRemoteRequest *)self handoffOriginDeviceName];
  [v3 setHandoffOriginDeviceName:handoffOriginDeviceName];

  [v3 setActivationEvent:1];

  return v3;
}

@end