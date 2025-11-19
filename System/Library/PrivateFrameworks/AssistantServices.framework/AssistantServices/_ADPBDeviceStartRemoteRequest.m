@interface _ADPBDeviceStartRemoteRequest
- (AFRequestInfo)_ad_requestInfo;
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)_ad_performWithCloudService:(id)a3 fromPeer:(id)a4 completion:(id)a5;
- (void)_ad_performWithSharedDataRemote:(id)a3 completion:(id)a4;
- (void)_ad_setRequestInfo:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _ADPBDeviceStartRemoteRequest

- (void)_ad_performWithSharedDataRemote:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[_ADPBDeviceStartRemoteRequest(ADSharedDataService) _ad_performWithSharedDataRemote:completion:]";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s ", &v9, 0xCu);
  }

  [v6 _startRemoteRequest:self completion:v7];
}

- (void)_ad_performWithCloudService:(id)a3 fromPeer:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AFSiriLogContextDaemon;
  if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
  {
    v13 = 136315138;
    v14 = "[_ADPBDeviceStartRemoteRequest(ADPeerCloudService) _ad_performWithCloudService:fromPeer:completion:]";
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s ", &v13, 0xCu);
  }

  v12 = [(_ADPBDeviceStartRemoteRequest *)self _ad_requestInfo];
  [v8 _notifyObserversOfRequestInfo:v12 fromPeer:v9 completion:v10];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 5))
  {
    [(_ADPBDeviceStartRemoteRequest *)self setText:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(_ADPBDeviceStartRemoteRequest *)self setHandoffData:?];
    v4 = v5;
  }

  if (*(v4 + 4))
  {
    [(_ADPBDeviceStartRemoteRequest *)self setHandoffUrlString:?];
    v4 = v5;
  }

  if (v4[52])
  {
    self->_requiresUserInteraction = v4[48];
    *&self->_has |= 1u;
  }

  if (*(v4 + 2))
  {
    [(_ADPBDeviceStartRemoteRequest *)self setHandoffNotification:?];
    v4 = v5;
  }

  if (*(v4 + 3))
  {
    [(_ADPBDeviceStartRemoteRequest *)self setHandoffOriginDeviceName:?];
    v4 = v5;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  text = self->_text;
  if (text | *(v4 + 5))
  {
    if (![(NSString *)text isEqual:?])
    {
      goto LABEL_15;
    }
  }

  handoffData = self->_handoffData;
  if (handoffData | *(v4 + 1))
  {
    if (![(NSData *)handoffData isEqual:?])
    {
      goto LABEL_15;
    }
  }

  handoffUrlString = self->_handoffUrlString;
  if (handoffUrlString | *(v4 + 4))
  {
    if (![(NSString *)handoffUrlString isEqual:?])
    {
      goto LABEL_15;
    }
  }

  v8 = *(v4 + 52);
  if (*&self->_has)
  {
    if ((*(v4 + 52) & 1) == 0)
    {
      goto LABEL_15;
    }

    v8 = *(v4 + 48);
    if (self->_requiresUserInteraction)
    {
      if (*(v4 + 48))
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
  if (handoffNotification | *(v4 + 2) && ![(NSString *)handoffNotification isEqual:?])
  {
    goto LABEL_15;
  }

  handoffOriginDeviceName = self->_handoffOriginDeviceName;
  if (handoffOriginDeviceName | *(v4 + 3))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_text copyWithZone:a3];
  v7 = v5[5];
  v5[5] = v6;

  v8 = [(NSData *)self->_handoffData copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSString *)self->_handoffUrlString copyWithZone:a3];
  v11 = v5[4];
  v5[4] = v10;

  if (*&self->_has)
  {
    *(v5 + 48) = self->_requiresUserInteraction;
    *(v5 + 52) |= 1u;
  }

  v12 = [(NSString *)self->_handoffNotification copyWithZone:a3];
  v13 = v5[2];
  v5[2] = v12;

  v14 = [(NSString *)self->_handoffOriginDeviceName copyWithZone:a3];
  v15 = v5[3];
  v5[3] = v14;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_text)
  {
    [v4 setText:?];
    v4 = v5;
  }

  if (self->_handoffData)
  {
    [v5 setHandoffData:?];
    v4 = v5;
  }

  if (self->_handoffUrlString)
  {
    [v5 setHandoffUrlString:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[48] = self->_requiresUserInteraction;
    v4[52] |= 1u;
  }

  if (self->_handoffNotification)
  {
    [v5 setHandoffNotification:?];
    v4 = v5;
  }

  if (self->_handoffOriginDeviceName)
  {
    [v5 setHandoffOriginDeviceName:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_text)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_handoffData)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_handoffUrlString)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
    v4 = v5;
  }

  if (self->_handoffNotification)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_handoffOriginDeviceName)
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
        break;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v28 = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:&v28 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
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

      v13 = [a3 hasError] ? 0 : v8;
LABEL_15:
      if (([a3 hasError] & 1) != 0 || (v13 & 7) == 4)
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
              v20 = [a3 position] + 1;
              if (v20 >= [a3 position] && (v21 = objc_msgSend(a3, "position") + 1, v21 <= objc_msgSend(a3, "length")))
              {
                v22 = [a3 data];
                [v22 getBytes:&v29 range:{objc_msgSend(a3, "position"), 1}];

                [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
              }

              else
              {
                [a3 _setError];
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

            v23 = (v19 != 0) & ~[a3 hasError];
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
      v26 = [a3 position];
    }

    while (v26 < [a3 length]);
  }

  LOBYTE(v24) = [a3 hasError] ^ 1;
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
  v4 = [(_ADPBDeviceStartRemoteRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (void)_ad_setRequestInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 text];
  [(_ADPBDeviceStartRemoteRequest *)self setText:v5];

  v6 = [v4 handoffRequestData];
  [(_ADPBDeviceStartRemoteRequest *)self setHandoffData:v6];

  v7 = [v4 handoffURLString];
  [(_ADPBDeviceStartRemoteRequest *)self setHandoffUrlString:v7];

  -[_ADPBDeviceStartRemoteRequest setRequiresUserInteraction:](self, "setRequiresUserInteraction:", [v4 handoffRequiresUserInteraction]);
  v8 = [v4 handoffNotification];
  [(_ADPBDeviceStartRemoteRequest *)self setHandoffNotification:v8];

  v9 = [v4 handoffOriginDeviceName];

  [(_ADPBDeviceStartRemoteRequest *)self setHandoffOriginDeviceName:v9];
}

- (AFRequestInfo)_ad_requestInfo
{
  v3 = objc_alloc_init(AFRequestInfo);
  v4 = [(_ADPBDeviceStartRemoteRequest *)self text];
  [v3 setText:v4];

  v5 = [(_ADPBDeviceStartRemoteRequest *)self handoffData];
  [v3 setHandoffRequestData:v5];

  v6 = [(_ADPBDeviceStartRemoteRequest *)self handoffUrlString];
  [v3 setHandoffURLString:v6];

  [v3 setHandoffRequiresUserInteraction:{-[_ADPBDeviceStartRemoteRequest requiresUserInteraction](self, "requiresUserInteraction")}];
  v7 = [(_ADPBDeviceStartRemoteRequest *)self handoffNotification];
  [v3 setHandoffNotification:v7];

  v8 = [(_ADPBDeviceStartRemoteRequest *)self handoffOriginDeviceName];
  [v3 setHandoffOriginDeviceName:v8];

  [v3 setActivationEvent:1];

  return v3;
}

@end