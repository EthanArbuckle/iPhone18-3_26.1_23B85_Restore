@interface APSSharedDecoder
- (APSSharedCoderDelegate)delegate;
- (APSSharedDecoder)initWithMaxTableSize:(unint64_t)a3 shouldUsePack:(BOOL)a4 direction:(int)a5;
- (BOOL)decodeMessage:(id)a3 parser:(id)a4 parameters:(id *)a5 isInvalid:(BOOL *)a6 lengthParsed:(unint64_t *)a7;
- (id)_parseMessage:(id)a3;
- (void)dealloc;
@end

@implementation APSSharedDecoder

- (APSSharedDecoder)initWithMaxTableSize:(unint64_t)a3 shouldUsePack:(BOOL)a4 direction:(int)a5
{
  v9.receiver = self;
  v9.super_class = APSSharedDecoder;
  v7 = [(APSSharedDecoder *)&v9 init];
  if (v7)
  {
    v7->_maxTableSize = a3;
    v7->_usingPack = a4;
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  keyTable = self->_keyTable;
  if (keyTable)
  {
    (*(keyTable->var0 + 1))(keyTable, a2);
  }

  valueTable = self->_valueTable;
  if (valueTable)
  {
    (*(valueTable->var0 + 1))(valueTable, a2);
  }

  if (self->_packState)
  {
    operator delete();
  }

  if (self->_serialState)
  {
    operator delete();
  }

  courierMessage = self->_courierMessage;
  if (courierMessage)
  {
    (*(courierMessage->var0 + 1))(courierMessage, a2);
  }

  v6.receiver = self;
  v6.super_class = APSSharedDecoder;
  [(APSSharedDecoder *)&v6 dealloc];
}

- (BOOL)decodeMessage:(id)a3 parser:(id)a4 parameters:(id *)a5 isInvalid:(BOOL *)a6 lengthParsed:(unint64_t *)a7
{
  v12 = a3;
  v13 = a4;
  if (!self->_courierMessage)
  {
    operator new();
  }

  if (![v12 length])
  {
    goto LABEL_11;
  }

  v14 = [v12 bytes];
  v28 = 0;
  if ([(APSSharedDecoder *)self usingPack])
  {
    v15 = [v12 length];
    v18 = uaps::CourierMessage::decodeNeededPacked(v14, v15, &v28, v16, v17);
  }

  else
  {
    v19 = [v12 length];
    v18 = uaps::CourierMessage::decodeNeededSerialized(v14, v19, &v28, v20, v21);
  }

  if (!v18)
  {
LABEL_17:
    v23 = 0;
    *a6 = 1;
    goto LABEL_18;
  }

  v22 = v28;
  if (v22 <= [v12 length])
  {
    v24 = [(APSSharedDecoder *)self usingPack];
    courierMessage = self->_courierMessage;
    if (v24)
    {
      v26 = uaps::CourierMessage::decodePacked(courierMessage, v14, &v28, self->_packState);
    }

    else
    {
      v26 = uaps::CourierMessage::decodeSerialized(courierMessage, v14, &v28, self->_serialState);
    }

    if (v26)
    {
      *a5 = [(APSSharedDecoder *)self _parseMessage:v13];
      *a7 = v28;
      v23 = 1;
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v23 = 0;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = self;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ we don't have entire frame data yet when parsing", buf, 0xCu);
LABEL_11:
    v23 = 0;
  }

LABEL_18:

  return v23;
}

- (id)_parseMessage:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionary];
  Command = uaps::CourierMessage::getCommand(self->_courierMessage);
  v7 = 0;
  v34 = malloc_type_malloc(0x10000uLL, 0xE55ECB08uLL);
  v33 = v4;
  while (v7 < uaps::CourierMessage::getAttributeCount(self->_courierMessage))
  {
    v44 = 0x10000;
    v43 = 0;
    uaps::CourierMessage::getAttributeId(self->_courierMessage, v7, &v43);
    v8 = uaps::CourierMessage::describeCommandItem(1, Command, v43);
    v9 = v8;
    if (v8)
    {
      v10 = *(v8 + 1);
      if (v10)
      {
        v11 = [NSString stringWithCString:v10 encoding:4];
        v12 = *(v9 + 1);
        if (v12 <= 4)
        {
          if (v12 > 1)
          {
            if (v12 == 2)
            {
              *v37 = 0;
              uaps::CourierMessage::getNumber(self->_courierMessage, v7, v37);
              v13 = [NSNumber numberWithUnsignedShort:*v37];
              [v5 setObject:v13 forKeyedSubscript:v11];
            }

            else
            {
              if (v12 == 3)
              {
                *v37 = 0;
                uaps::CourierMessage::getNumber(self->_courierMessage, v7, v37);
                [NSNumber numberWithUnsignedInt:*v37];
              }

              else
              {
                *v37 = 0;
                uaps::CourierMessage::getNumber(self->_courierMessage, v7, v37);
                [NSNumber numberWithUnsignedLongLong:*v37];
              }
              v13 = ;
              [v5 setObject:v13 forKeyedSubscript:v11];
            }

            goto LABEL_31;
          }

          if (v12)
          {
            if (v12 == 1)
            {
              v37[0] = 0;
              uaps::CourierMessage::getNumber(self->_courierMessage, v7, v37);
              v13 = [NSNumber numberWithUnsignedChar:v37[0]];
              [v5 setObject:v13 forKeyedSubscript:v11];
              goto LABEL_31;
            }

            goto LABEL_32;
          }

          goto LABEL_43;
        }

        if (v12 <= 6)
        {
          if (v12 == 5)
          {
            *v37 = 0;
            uaps::CourierMessage::getNumber(self->_courierMessage, v7, v37);
            LODWORD(v17) = *v37;
            v13 = [NSDate dateWithTimeIntervalSince1970:v17];
            [v5 setObject:v13 forKeyedSubscript:v11];
            goto LABEL_31;
          }

          *v37 = 0;
          v38 = v37;
          v39 = 0x3032000000;
          v40 = sub_100014054;
          v41 = sub_1000146BC;
          v42 = 0;
          courierMessage = self->_courierMessage;
          v36[0] = _NSConcreteStackBlock;
          v36[1] = 3221225472;
          v36[2] = sub_10009864C;
          v36[3] = &unk_100188858;
          v36[4] = v37;
          uaps::CourierMessage::getData(courierMessage, v7, v36);
          [v5 setObject:*(v38 + 5) forKeyedSubscript:v11];
        }

        else
        {
          switch(v12)
          {
            case 7:
              uaps::CourierMessage::getString(self->_courierMessage, v7, v34, &v44);
              if (v44)
              {
                --v44;
              }

              v13 = [NSData dataWithBytes:v34 length:?];
              v19 = [[NSString alloc] initWithData:v13 encoding:4];
              [v5 setObject:v19 forKeyedSubscript:v11];

LABEL_31:
LABEL_32:
              v20 = v43;
              if (Command == 10 && v43 == 4)
              {
                v21 = [v5 objectForKeyedSubscript:v11];
                v22 = [v21 unsignedIntValue];

                *v37 = v22;
                v23 = [NSData dataWithBytes:v37 length:4];
                [v5 setObject:v23 forKeyedSubscript:v11];

                v20 = v43;
              }

              if (v12 == 6 && Command == 10 && v20 == 24)
              {
                v24 = [v5 objectForKeyedSubscript:v11];
                v25 = [[NSString alloc] initWithData:v24 encoding:4];
                [v5 setObject:v25 forKeyedSubscript:v11];
              }

              else
              {
                if (Command != 8 || v20 != 6)
                {
                  goto LABEL_43;
                }

                v26 = [v5 objectForKeyedSubscript:v11];
                v27 = [v26 unsignedIntValue];

                [v5 setObject:0 forKeyedSubscript:v11];
                v24 = [NSNumber numberWithBool:v27 & 1];
                [v5 setObject:v24 forKey:@"APSProtocolDualChannelSupport"];
                v25 = [NSNumber numberWithBool:(v27 >> 1) & 1];
                [v5 setObject:v25 forKey:@"APSProtocolReportLastReversePushRTT"];
                v28 = [NSNumber numberWithBool:(v27 >> 2) & 1];
                [v5 setObject:v28 forKey:@"APSProtocolFilterOptimizationSupport"];
                v29 = [NSNumber numberWithBool:(v27 >> 3) & 1];
                [v5 setObject:v29 forKey:@"APSProtocolServerRequestedTTR"];
              }

LABEL_43:
              goto LABEL_44;
            case 8:
              *v37 = 0;
              v38 = v37;
              v39 = 0x3032000000;
              v40 = sub_100014054;
              v41 = sub_1000146BC;
              v42 = 0;
              v18 = self->_courierMessage;
              v35[5] = _NSConcreteStackBlock;
              v35[6] = 3221225472;
              v35[7] = sub_1000986A4;
              v35[8] = &unk_100188858;
              v35[9] = v37;
              uaps::CourierMessage::getBinaryPropertyList();
              [v5 setObject:*(v38 + 5) forKeyedSubscript:v11];
              break;
            case 9:
              *v37 = 0;
              v38 = v37;
              v39 = 0x3032000000;
              v40 = sub_100014054;
              v41 = sub_1000146BC;
              v42 = 0;
              v35[0] = _NSConcreteStackBlock;
              v35[1] = 3221225472;
              v35[2] = sub_1000986FC;
              v35[3] = &unk_100188858;
              v35[4] = v37;
              v14 = objc_retainBlock(v35);
              v15 = self->_courierMessage;
              if (!uaps::CourierMessage::getBinaryPropertyList())
              {
                uaps::CourierMessage::getData(self->_courierMessage, v7, v14);
              }

              [v5 setObject:*(v38 + 5) forKeyedSubscript:v11];

              break;
            default:
              goto LABEL_32;
          }
        }

        _Block_object_dispose(v37, 8);

        goto LABEL_32;
      }
    }

LABEL_44:
    ++v7;
  }

  if (v34)
  {
    free(v34);
  }

  v30 = self->_courierMessage;
  if (v30)
  {
    (*(v30->var0 + 1))(v30);
  }

  self->_courierMessage = 0;
  v31 = [NSNumber numberWithUnsignedChar:Command];
  [v5 setObject:v31 forKeyedSubscript:@"APSProtocolCommand"];

  return v5;
}

- (APSSharedCoderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end