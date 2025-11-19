@interface BarcodeParsingService
- (BOOL)_associatedDomainIsApprovedForURL:(id)a3 applicationIdentifier:(id)a4;
- (BarcodeParsingService)init;
- (id)_urlDecoderErrorWithCode:(int64_t)a3 description:(id)a4;
- (id)_urlDecoderWithVersion:(unint64_t)a3 error:(id *)a4;
- (void)decodeAppClipCodeURLWithEncodedData:(id)a3 codingVersion:(unint64_t)a4 requiresAuthorization:(BOOL)a5 withReply:(id)a6;
- (void)parseQRCodeFeature:(id)a3 withReply:(id)a4;
- (void)parseQRCodeMetadata:(id)a3 withReply:(id)a4;
- (void)parseQRCodeString:(id)a3 withReply:(id)a4;
@end

@implementation BarcodeParsingService

- (BarcodeParsingService)init
{
  v8.receiver = self;
  v8.super_class = BarcodeParsingService;
  v2 = [(BarcodeParsingService *)&v8 init];
  if (v2)
  {
    v3 = [NSString stringWithFormat:@"com.apple.BarcodeSupport.BarcodeParsingService.%@.%p", objc_opt_class(), v2];
    v4 = dispatch_queue_create([v3 UTF8String], 0);
    decodingQueue = v2->_decodingQueue;
    v2->_decodingQueue = v4;

    v6 = v2;
  }

  return v2;
}

- (void)parseQRCodeString:(id)a3 withReply:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
  if (v7)
  {
    sub_100001E5C(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  v15 = [BCSParser parseString:v5];
  if (v15)
  {
    v6[2](v6, v15, 0);
  }

  else
  {
    v16 = [NSError errorWithDomain:BCSErrorDomain code:3 userInfo:0];
    (v6)[2](v6, 0, v16);
  }
}

- (void)parseQRCodeMetadata:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
  if (v8)
  {
    sub_100001E98(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  v16 = MRCDescriptorCreateWithAttributes();
  v17 = MRCDescriptorDecodePayload();
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v19 = 138477827;
    v20 = v17;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "BarcodeParingService: string decoded from QR: %{private}@", &v19, 0xCu);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v17 length])
  {
    [(BarcodeParsingService *)self parseQRCodeString:v17 withReply:v7];
  }

  else
  {
    v18 = [NSError errorWithDomain:BCSErrorDomain code:2 userInfo:0];
    v7[2](v7, 0, v18);
  }
}

- (void)parseQRCodeFeature:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
  if (v8)
  {
    sub_100001ED4(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  v16 = [v6 messageString];
  if ([v16 length])
  {
    [(BarcodeParsingService *)self parseQRCodeString:v16 withReply:v7];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100001F10();
    }

    v17 = [NSError errorWithDomain:BCSErrorDomain code:2 userInfo:0];
    v7[2](v7, 0, v17);
  }
}

- (id)_urlDecoderWithVersion:(unint64_t)a3 error:(id *)a4
{
  urlDecoder = self->_urlDecoder;
  if (urlDecoder && [(UCAppClipCodeURLDecoding *)urlDecoder codingVersion]== a3)
  {
    goto LABEL_8;
  }

  if (a3 < 4)
  {
    v10 = [UCAppClipCodeURLDecoder decoderWithVersion:a3];
    v11 = self->_urlDecoder;
    self->_urlDecoder = v10;

LABEL_8:
    v9 = self->_urlDecoder;
    goto LABEL_9;
  }

  if (a4)
  {
    v8 = [NSString stringWithFormat:@"The version of encoded URL is not supported. current version:%ld, max supported:%ld", a3, 3];
    *a4 = [(BarcodeParsingService *)self _urlDecoderErrorWithCode:1 description:v8];
  }

  v9 = 0;
LABEL_9:

  return v9;
}

- (BOOL)_associatedDomainIsApprovedForURL:(id)a3 applicationIdentifier:(id)a4
{
  v5 = a4;
  if (a3)
  {
    v6 = [NSURLComponents componentsWithURL:a3 resolvingAgainstBaseURL:1];
    v7 = [v6 host];
    if (v7)
    {
      v8 = [[_SWCServiceSpecifier alloc] initWithServiceType:0 applicationIdentifier:v5 domain:0];
      [_SWCServiceDetails serviceDetailsWithServiceSpecifier:v8 error:0];
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v9 = v20 = 0u;
      v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        v11 = *v18;
        while (2)
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v18 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v17 + 1) + 8 * i);
            if ([v13 isApproved])
            {
              v14 = [v13 serviceSpecifier];
              v15 = [v14 domainEncompassesDomain:v7];

              if (v15)
              {
                LOBYTE(v10) = 1;
                goto LABEL_16;
              }
            }
          }

          v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

LABEL_16:
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (id)_urlDecoderErrorWithCode:(int64_t)a3 description:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    v10 = NSLocalizedDescriptionKey;
    v11 = v5;
    v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = [NSError errorWithDomain:BCSAppClipCodeURLDecoderErrorDomain code:a3 userInfo:v7];

  return v8;
}

- (void)decodeAppClipCodeURLWithEncodedData:(id)a3 codingVersion:(unint64_t)a4 requiresAuthorization:(BOOL)a5 withReply:(id)a6
{
  v10 = a3;
  v11 = a6;
  v28 = 0u;
  v29 = 0u;
  v12 = +[NSXPCConnection currentConnection];
  v13 = v12;
  if (v12)
  {
    [v12 auditToken];
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
  }

  v14 = WBSApplicationIdentifierFromAuditToken();
  v26 = v28;
  v27 = v29;
  HasEntitlement = WBSAuditTokenHasEntitlement();
  if (a5 || (HasEntitlement & 1) != 0)
  {
    decodingQueue = self->_decodingQueue;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100001834;
    v18[3] = &unk_100004238;
    v18[4] = self;
    v22 = a4;
    v21 = v11;
    v19 = v10;
    v25 = a5;
    v23 = v28;
    v24 = v29;
    v20 = v14;
    dispatch_async(decodingQueue, v18);
  }

  else
  {
    v16 = [(BarcodeParsingService *)self _urlDecoderErrorWithCode:0 description:@"Process requires an entitlement for suppressing URL authorization check"];
    (*(v11 + 2))(v11, 0, v16);
  }
}

@end