@interface BarcodeParsingService
- (BOOL)_associatedDomainIsApprovedForURL:(id)l applicationIdentifier:(id)identifier;
- (BarcodeParsingService)init;
- (id)_urlDecoderErrorWithCode:(int64_t)code description:(id)description;
- (id)_urlDecoderWithVersion:(unint64_t)version error:(id *)error;
- (void)decodeAppClipCodeURLWithEncodedData:(id)data codingVersion:(unint64_t)version requiresAuthorization:(BOOL)authorization withReply:(id)reply;
- (void)parseQRCodeFeature:(id)feature withReply:(id)reply;
- (void)parseQRCodeMetadata:(id)metadata withReply:(id)reply;
- (void)parseQRCodeString:(id)string withReply:(id)reply;
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

- (void)parseQRCodeString:(id)string withReply:(id)reply
{
  stringCopy = string;
  replyCopy = reply;
  v7 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
  if (v7)
  {
    sub_100001E5C(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  v15 = [BCSParser parseString:stringCopy];
  if (v15)
  {
    replyCopy[2](replyCopy, v15, 0);
  }

  else
  {
    v16 = [NSError errorWithDomain:BCSErrorDomain code:3 userInfo:0];
    (replyCopy)[2](replyCopy, 0, v16);
  }
}

- (void)parseQRCodeMetadata:(id)metadata withReply:(id)reply
{
  metadataCopy = metadata;
  replyCopy = reply;
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
    [(BarcodeParsingService *)self parseQRCodeString:v17 withReply:replyCopy];
  }

  else
  {
    v18 = [NSError errorWithDomain:BCSErrorDomain code:2 userInfo:0];
    replyCopy[2](replyCopy, 0, v18);
  }
}

- (void)parseQRCodeFeature:(id)feature withReply:(id)reply
{
  featureCopy = feature;
  replyCopy = reply;
  v8 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
  if (v8)
  {
    sub_100001ED4(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  messageString = [featureCopy messageString];
  if ([messageString length])
  {
    [(BarcodeParsingService *)self parseQRCodeString:messageString withReply:replyCopy];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100001F10();
    }

    v17 = [NSError errorWithDomain:BCSErrorDomain code:2 userInfo:0];
    replyCopy[2](replyCopy, 0, v17);
  }
}

- (id)_urlDecoderWithVersion:(unint64_t)version error:(id *)error
{
  urlDecoder = self->_urlDecoder;
  if (urlDecoder && [(UCAppClipCodeURLDecoding *)urlDecoder codingVersion]== version)
  {
    goto LABEL_8;
  }

  if (version < 4)
  {
    v10 = [UCAppClipCodeURLDecoder decoderWithVersion:version];
    v11 = self->_urlDecoder;
    self->_urlDecoder = v10;

LABEL_8:
    v9 = self->_urlDecoder;
    goto LABEL_9;
  }

  if (error)
  {
    v8 = [NSString stringWithFormat:@"The version of encoded URL is not supported. current version:%ld, max supported:%ld", version, 3];
    *error = [(BarcodeParsingService *)self _urlDecoderErrorWithCode:1 description:v8];
  }

  v9 = 0;
LABEL_9:

  return v9;
}

- (BOOL)_associatedDomainIsApprovedForURL:(id)l applicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (l)
  {
    v6 = [NSURLComponents componentsWithURL:l resolvingAgainstBaseURL:1];
    host = [v6 host];
    if (host)
    {
      v8 = [[_SWCServiceSpecifier alloc] initWithServiceType:0 applicationIdentifier:identifierCopy domain:0];
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
              serviceSpecifier = [v13 serviceSpecifier];
              v15 = [serviceSpecifier domainEncompassesDomain:host];

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

- (id)_urlDecoderErrorWithCode:(int64_t)code description:(id)description
{
  descriptionCopy = description;
  v6 = descriptionCopy;
  if (descriptionCopy)
  {
    v10 = NSLocalizedDescriptionKey;
    v11 = descriptionCopy;
    v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = [NSError errorWithDomain:BCSAppClipCodeURLDecoderErrorDomain code:code userInfo:v7];

  return v8;
}

- (void)decodeAppClipCodeURLWithEncodedData:(id)data codingVersion:(unint64_t)version requiresAuthorization:(BOOL)authorization withReply:(id)reply
{
  dataCopy = data;
  replyCopy = reply;
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
  if (authorization || (HasEntitlement & 1) != 0)
  {
    decodingQueue = self->_decodingQueue;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100001834;
    v18[3] = &unk_100004238;
    v18[4] = self;
    versionCopy = version;
    v21 = replyCopy;
    v19 = dataCopy;
    authorizationCopy = authorization;
    v23 = v28;
    v24 = v29;
    v20 = v14;
    dispatch_async(decodingQueue, v18);
  }

  else
  {
    v16 = [(BarcodeParsingService *)self _urlDecoderErrorWithCode:0 description:@"Process requires an entitlement for suppressing URL authorization check"];
    (*(replyCopy + 2))(replyCopy, 0, v16);
  }
}

@end