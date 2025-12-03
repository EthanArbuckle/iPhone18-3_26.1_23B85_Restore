@interface CLEEDMediaServiceItem
- (BOOL)isEqual:(id)equal;
- (CLEEDMediaServiceItem)initWithMediaItem:(id)item mediaRequest:(id)request mediaService:(id)service;
- (id)encryptMediaItem:(id)item returnedAuthTag:(id *)tag;
- (int64_t)compareMediaSize:(id)size;
- (unint64_t)hash;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send;
- (void)cancelDelayTimer;
- (void)generateEncrytionKeyForMediaID:(id)d returningKey:(id *)key IV:(id *)v;
- (void)handleUploadTaskCompletionForItem:(id)item response:(id)response error:(id)error;
- (void)handleUploadTaskDelayForItem:(id)item response:(id)response error:(id)error;
- (void)handleUploadTaskForSession:(id)session withRequest:(id)request resumeData:(id)data;
- (void)processMediaItemWithCompletion:(id)completion;
- (void)setupUploadTaskForSession:(id)session withRequest:(id)request resumeData:(id)data urlSessionError:(id)error;
@end

@implementation CLEEDMediaServiceItem

- (CLEEDMediaServiceItem)initWithMediaItem:(id)item mediaRequest:(id)request mediaService:(id)service
{
  itemCopy = item;
  requestCopy = request;
  serviceCopy = service;
  v51.receiver = self;
  v51.super_class = CLEEDMediaServiceItem;
  v12 = [(CLEEDMediaServiceItem *)&v51 init];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_14;
  }

  objc_storeStrong(&v12->_mediaRequest, request);
  objc_storeStrong(&v13->_mediaItem, item);
  objc_storeStrong(&v13->_mediaService, service);
  urlUploadTask = v13->_urlUploadTask;
  v13->_urlUploadTask = 0;

  completionHandler = v13->_completionHandler;
  v13->_completionHandler = 0;

  delayTimer = v13->_delayTimer;
  v13->_uploadProgressFraction = 0.0;
  v13->_delayTimer = 0;

  timestampEncryptionStart = v13->_timestampEncryptionStart;
  v13->_timestampEncryptionStart = 0;

  timestampUploadStart = v13->_timestampUploadStart;
  v13->_timestampUploadStart = 0;

  v19 = +[NSFileManager defaultManager];
  stagingURL = [itemCopy stagingURL];
  path = [stagingURL path];
  v22 = [v19 fileExistsAtPath:path];

  v23 = +[NSFileManager defaultManager];
  if (v22)
  {
    stagingURL2 = [itemCopy stagingURL];
    path2 = [stagingURL2 path];
    v50 = 0;
    v26 = &v50;
    v27 = &v50;
    goto LABEL_6;
  }

  encryptedFileURL = [itemCopy encryptedFileURL];
  path3 = [encryptedFileURL path];
  v30 = [v23 fileExistsAtPath:path3];

  if (v30)
  {
    v23 = +[NSFileManager defaultManager];
    stagingURL2 = [itemCopy encryptedFileURL];
    path2 = [stagingURL2 path];
    v49 = 0;
    v26 = &v49;
    v27 = &v49;
LABEL_6:
    v31 = [v23 attributesOfItemAtPath:path2 error:v27];
    v32 = *v26;
    fileSize = [v31 fileSize];

    if (v32)
    {
      if (qword_100029E70 != -1)
      {
        sub_100013358();
      }

      v34 = qword_100029E68;
      if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
      {
        log = v34;
        stagingURL3 = [itemCopy stagingURL];
        path4 = [stagingURL3 path];
        encryptedFileURL2 = [itemCopy encryptedFileURL];
        path5 = [encryptedFileURL2 path];
        *buf = 136447235;
        v53 = "[CLEEDMediaServiceItem initWithMediaItem:mediaRequest:mediaService:]";
        v54 = 2113;
        v55 = path4;
        v56 = 2113;
        v57 = *&path5;
        v58 = 2050;
        v59 = fileSize;
        v60 = 2114;
        v61 = v32;
        _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#EED2EMS,%{public}s, File size error for stagingFile:%{private}@ or encryptedFile:%{private}@, size:%{public}ld, error:%{public}@", buf, 0x34u);
      }

      v35 = 0;
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  fileSize = 0;
LABEL_13:
  [(CLEEDMediaItem *)v13->_mediaItem setMediaItemSizeBytes:fileSize];
LABEL_14:
  if (qword_100029E70 != -1)
  {
    sub_100013358();
  }

  v36 = qword_100029E68;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
  {
    mediaItem = v13->_mediaItem;
    v38 = v36;
    mediaItemID = [(CLEEDMediaItem *)mediaItem mediaItemID];
    uUIDString = [mediaItemID UUIDString];
    uTF8String = [uUIDString UTF8String];
    mediaItemSizeBytes = [(CLEEDMediaItem *)v13->_mediaItem mediaItemSizeBytes];
    *buf = 136446723;
    v53 = "[CLEEDMediaServiceItem initWithMediaItem:mediaRequest:mediaService:]";
    v54 = 2081;
    v55 = uTF8String;
    v56 = 2049;
    v57 = vcvtd_n_f64_u64(mediaItemSizeBytes, 0x14uLL);
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, mediaID:%{private}s, size:%{private}.2lf MB", buf, 0x20u);
  }

  v35 = v13;
LABEL_19:

  return v35;
}

- (int64_t)compareMediaSize:(id)size
{
  sizeCopy = size;
  mediaItem = [(CLEEDMediaServiceItem *)self mediaItem];
  mediaItemSizeBytes = [mediaItem mediaItemSizeBytes];
  mediaItem2 = [sizeCopy mediaItem];
  mediaItemSizeBytes2 = [mediaItem2 mediaItemSizeBytes];

  if (mediaItemSizeBytes <= mediaItemSizeBytes2)
  {
    mediaItem3 = [(CLEEDMediaServiceItem *)self mediaItem];
    mediaItemSizeBytes3 = [mediaItem3 mediaItemSizeBytes];
    mediaItem4 = [sizeCopy mediaItem];
    mediaItemSizeBytes4 = [mediaItem4 mediaItemSizeBytes];

    if (mediaItemSizeBytes3 == mediaItemSizeBytes4)
    {
      v9 = 0;
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  v5 = equalCopy;
  mediaItem = [(CLEEDMediaServiceItem *)self mediaItem];
  if (!mediaItem)
  {
LABEL_8:

    goto LABEL_9;
  }

  v7 = mediaItem;
  mediaItem2 = [(CLEEDMediaServiceItem *)v5 mediaItem];
  if (!mediaItem2)
  {

    goto LABEL_8;
  }

  v9 = mediaItem2;
  mediaItem3 = [(CLEEDMediaServiceItem *)self mediaItem];
  mediaItem4 = [(CLEEDMediaServiceItem *)v5 mediaItem];
  v12 = [mediaItem3 isEqual:mediaItem4];

  if ((v12 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v13 = 1;
LABEL_10:

  return v13;
}

- (unint64_t)hash
{
  mediaItem = [(CLEEDMediaServiceItem *)self mediaItem];
  v3 = [mediaItem hash];

  return v3;
}

- (void)generateEncrytionKeyForMediaID:(id)d returningKey:(id *)key IV:(id *)v
{
  dCopy = d;
  if (qword_100029E70 != -1)
  {
    sub_100013344();
  }

  v7 = qword_100029E68;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_INFO))
  {
    *buf = 136446466;
    v28 = "[CLEEDMediaServiceItem generateEncrytionKeyForMediaID:returningKey:IV:]";
    v29 = 2114;
    v30 = dCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "#EED2EMS,%{public}s, Media encryption key generation for mediaID:%{public}@", buf, 0x16u);
  }

  uUIDString = [dCopy UUIDString];
  v9 = [@"device media response" dataUsingEncoding:4];
  sharedInfoPrefix = [(CLEEDMediaServiceRequest *)self->_mediaRequest sharedInfoPrefix];
  v11 = +[NSMutableData dataWithCapacity:](NSMutableData, "dataWithCapacity:", [@"device media response" length] + objc_msgSend(uUIDString, "length") + objc_msgSend(sharedInfoPrefix, "length"));

  sharedInfoPrefix2 = [(CLEEDMediaServiceRequest *)self->_mediaRequest sharedInfoPrefix];
  [v11 appendData:sharedInfoPrefix2];

  v13 = [uUIDString dataUsingEncoding:4];
  [v11 appendData:v13];

  [v11 appendData:v9];
  if (qword_100029E70 != -1)
  {
    sub_100013358();
  }

  v14 = qword_100029E68;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEBUG))
  {
    sub_1000139C0(v14);
  }

  combinedSecret = [(CLEEDMediaServiceRequest *)self->_mediaRequest combinedSecret];
  v16 = [CLEEDCryptoUtilities getDerivedKeyWithLength:48 secretData:combinedSecret additionalInfo:v11];

  if (v16)
  {
    *key = [v16 subdataWithRange:{0, 32}];
    *v = [v16 subdataWithRange:{32, 16}];
    if (qword_100029E70 != -1)
    {
      sub_100013358();
    }

    v17 = qword_100029E68;
    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEBUG))
    {
      log = v17;
      v18 = [v16 base64EncodedStringWithOptions:0];
      uTF8String = [v18 UTF8String];
      v20 = [*key base64EncodedStringWithOptions:0];
      uTF8String2 = [v20 UTF8String];
      v22 = [*v base64EncodedStringWithOptions:0];
      uTF8String3 = [v22 UTF8String];
      *buf = 136446979;
      v28 = "[CLEEDMediaServiceItem generateEncrytionKeyForMediaID:returningKey:IV:]";
      v29 = 2081;
      v30 = uTF8String;
      v31 = 2081;
      v32 = uTF8String2;
      v33 = 2081;
      v34 = uTF8String3;
      _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "#EED2EMS,%{public}s, Derived key blob:%{private}s, derived key:%{private}s, derived IV:%{private}s", buf, 0x2Au);
    }
  }

  else
  {
    if (qword_100029E70 != -1)
    {
      sub_100013358();
    }

    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
    {
      sub_100013A68();
    }
  }
}

- (id)encryptMediaItem:(id)item returnedAuthTag:(id *)tag
{
  itemCopy = item;
  if (qword_100029E70 != -1)
  {
    sub_100013344();
  }

  v7 = qword_100029E68;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    stagingURL = [itemCopy stagingURL];
    path = [stagingURL path];
    *buf = 136446467;
    v73 = "[CLEEDMediaServiceItem encryptMediaItem:returnedAuthTag:]";
    v74 = 2113;
    *v75 = path;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, Encrypting media file at path:%{private}@", buf, 0x16u);
  }

  v11 = +[NSFileManager defaultManager];
  stagingURL2 = [itemCopy stagingURL];
  path2 = [stagingURL2 path];
  v14 = [v11 fileExistsAtPath:path2];

  if (v14)
  {
    mediaItemID = [itemCopy mediaItemID];
    v70 = 0;
    v71 = 0;
    [(CLEEDMediaServiceItem *)self generateEncrytionKeyForMediaID:mediaItemID returningKey:&v71 IV:&v70];
    v16 = v71;
    v17 = v70;

    if (!v16 || !v17)
    {
      if (qword_100029E70 != -1)
      {
        sub_100013358();
      }

      if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
      {
        sub_100013FE4();
      }

      stagingURL3 = [itemCopy stagingURL];
      path3 = [stagingURL3 path];
      [CLEEDMediaService deleteFileAtPath:path3];

      v19 = 0;
      goto LABEL_31;
    }

    cryptorRef = 0;
    if (CCCryptorCreateWithMode(0, 0xBu, 0, 0, 0, [v16 bytes], objc_msgSend(v16, "length"), 0, 0, 0, 0, &cryptorRef))
    {
      if (qword_100029E70 != -1)
      {
        sub_100013358();
      }

      if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
      {
        sub_100013BAC();
      }

LABEL_28:
      stagingURL4 = [itemCopy stagingURL];
      v23 = stagingURL4;
LABEL_29:
      path4 = [stagingURL4 path];
      [CLEEDMediaService deleteFileAtPath:path4];
      v19 = 0;
LABEL_30:

LABEL_31:
      goto LABEL_32;
    }

    [v17 bytes];
    [v17 length];
    if (CCCryptorGCMSetIV())
    {
      if (qword_100029E70 != -1)
      {
        sub_100013358();
      }

      if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
      {
        sub_100013C28();
      }

      goto LABEL_28;
    }

    stagingURL5 = [itemCopy stagingURL];
    path5 = [stagingURL5 path];
    v28 = fopen([path5 UTF8String], "rb");

    if (!v28)
    {
      v45 = sub_1000012D8();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        sub_100013F48();
      }

      goto LABEL_28;
    }

    v68 = v28;
    tagCopy = tag;
    stagingURL6 = [itemCopy stagingURL];
    path6 = [stagingURL6 path];
    v31 = [path6 stringByAppendingString:@".encrypted"];
    v23 = [NSURL fileURLWithPath:v31];

    path7 = [v23 path];
    v33 = fopen([path7 UTF8String], "wb");

    __stream = v33;
    if (!v33)
    {
      v46 = sub_1000012D8();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        sub_100013EAC();
      }

      fclose(v68);
      stagingURL7 = [itemCopy stagingURL];
      path8 = [stagingURL7 path];
      [CLEEDMediaService deleteFileAtPath:path8];

      stagingURL4 = v23;
      goto LABEL_29;
    }

    v66 = v23;
    path4 = [NSMutableData dataWithCapacity:0x100000];
    mediaItem = [(CLEEDMediaServiceItem *)self mediaItem];
    v35 = [mediaItem mediaItemSizeBytes] >> 20;
    mediaItem2 = [(CLEEDMediaServiceItem *)self mediaItem];
    if (([mediaItem2 mediaItemSizeBytes] & 0xFFFFF) != 0)
    {
      v37 = v35 + 1;
    }

    else
    {
      v37 = v35;
    }

    v64 = v37;

    v38 = 1;
    while (1)
    {
      if (feof(v68))
      {
        goto LABEL_71;
      }

      v39 = fread([path4 mutableBytes], 1uLL, 0x100000uLL, v68);
      if (!v39)
      {
        goto LABEL_71;
      }

      v40 = v39;
      v41 = ferror(v68);
      if (v40 > 0x100000 || v41)
      {
        break;
      }

      if (qword_100029E70 != -1)
      {
        sub_100013358();
      }

      v42 = qword_100029E68;
      if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446978;
        v73 = "[CLEEDMediaServiceItem encryptMediaItem:returnedAuthTag:]";
        v74 = 1026;
        *v75 = v38;
        *&v75[4] = 1026;
        *&v75[6] = v64;
        *&v75[10] = 2050;
        *&v75[12] = v40;
        _os_log_debug_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "#EED2EMS,%{public}s, Encrypting chunk %{public}d of %{public}d, chunkLength:%{public}zu", buf, 0x22u);
      }

      [path4 bytes];
      [path4 mutableBytes];
      if (CCCryptorGCMEncrypt())
      {
        v49 = sub_1000012D8();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          sub_100013DB4();
        }

        goto LABEL_70;
      }

      v43 = fwrite([path4 bytes], 1uLL, v40, __stream);
      v44 = ferror(__stream);
      if (!v44)
      {
        ++v38;
        if (v43 == v40)
        {
          continue;
        }
      }

      v49 = sub_1000012D8();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v73 = "[CLEEDMediaServiceItem encryptMediaItem:returnedAuthTag:]";
        v74 = 1026;
        *v75 = v44;
        *&v75[4] = 2050;
        *&v75[6] = v40;
        *&v75[14] = 2050;
        *&v75[16] = v43;
        _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "#EED2EMS,%{public}s, Failed to write file,error code:%{public}d, readSize:%{public}zu, sizeWritten:%{public}zu", buf, 0x26u);
      }

      goto LABEL_70;
    }

    if (v41)
    {
      v49 = sub_1000012D8();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        sub_100013CA4();
      }
    }

    else
    {
      if (v40 <= 0x100000)
      {
LABEL_71:
        fclose(v68);
        fclose(__stream);
        path13 = [NSMutableData dataWithLength:16];
        [path13 mutableBytes];
        [path13 length];
        v53 = CCCryptorGCMFinalize();
        CCCryptorRelease(cryptorRef);
        if (!v53)
        {
          v58 = path13;
          *tagCopy = path13;
          v59 = sub_1000012D8();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
          {
            v60 = [*tagCopy base64EncodedStringWithOptions:0];
            uTF8String = [v60 UTF8String];
            *buf = 136446467;
            v73 = "[CLEEDMediaServiceItem encryptMediaItem:returnedAuthTag:]";
            v74 = 2081;
            *v75 = uTF8String;
            _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, AuthenticationTag:%{private}s", buf, 0x16u);
          }

          stagingURL8 = [itemCopy stagingURL];
          path9 = [stagingURL8 path];
          [CLEEDMediaService deleteFileAtPath:path9];

          v23 = v66;
          v19 = v66;
LABEL_76:

          goto LABEL_30;
        }

        v54 = sub_1000012D8();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          sub_100013E30();
        }

        stagingURL9 = [itemCopy stagingURL];
        path10 = [stagingURL9 path];
        [CLEEDMediaService deleteFileAtPath:path10];

        v23 = v66;
        path11 = [v66 path];
        [CLEEDMediaService deleteFileAtPath:path11];

LABEL_75:
        v19 = 0;
        goto LABEL_76;
      }

      v49 = sub_1000012D8();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        sub_100013D20();
      }
    }

LABEL_70:

    fclose(v68);
    fclose(__stream);
    stagingURL10 = [itemCopy stagingURL];
    path12 = [stagingURL10 path];
    [CLEEDMediaService deleteFileAtPath:path12];

    v23 = v66;
    path13 = [v66 path];
    [CLEEDMediaService deleteFileAtPath:path13];
    goto LABEL_75;
  }

  if (qword_100029E70 != -1)
  {
    sub_100013358();
  }

  v18 = qword_100029E68;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
  {
    sub_100013AE8(v18);
  }

  v19 = 0;
LABEL_32:

  return v19;
}

- (void)processMediaItemWithCompletion:(id)completion
{
  completionCopy = completion;
  if (qword_100029E70 != -1)
  {
    sub_100013344();
  }

  v5 = qword_100029E68;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
  {
    log = v5;
    mediaItem = [(CLEEDMediaServiceItem *)self mediaItem];
    mediaItemID = [mediaItem mediaItemID];
    uUIDString = [mediaItemID UUIDString];
    uTF8String = [uUIDString UTF8String];
    mediaItem2 = [(CLEEDMediaServiceItem *)self mediaItem];
    encryptedFileURL = [mediaItem2 encryptedFileURL];
    path = [encryptedFileURL path];
    uTF8String2 = [path UTF8String];
    mediaItem3 = [(CLEEDMediaServiceItem *)self mediaItem];
    authTag = [mediaItem3 authTag];
    v6 = [authTag base64EncodedStringWithOptions:0];
    uTF8String3 = [v6 UTF8String];
    mediaRequest = [(CLEEDMediaServiceItem *)self mediaRequest];
    deviceKeyConfirmation = [mediaRequest deviceKeyConfirmation];
    [deviceKeyConfirmation base64EncodedStringWithOptions:0];
    v8 = v46 = completionCopy;
    uTF8String4 = [v8 UTF8String];
    mediaRequest2 = [(CLEEDMediaServiceItem *)self mediaRequest];
    uploadURL = [mediaRequest2 uploadURL];
    uTF8String5 = [uploadURL UTF8String];
    mediaRequest3 = [(CLEEDMediaServiceItem *)self mediaRequest];
    token = [mediaRequest3 token];
    *buf = 136447747;
    v48 = "[CLEEDMediaServiceItem processMediaItemWithCompletion:]";
    v49 = 2081;
    v50 = uTF8String;
    v51 = 2081;
    v52 = uTF8String2;
    v53 = 2081;
    v54 = uTF8String3;
    v55 = 2081;
    v56 = uTF8String4;
    v57 = 2081;
    v58 = uTF8String5;
    v59 = 2081;
    uTF8String6 = [token UTF8String];
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, Starting media upload, mediaID:%{private}s, EncryptedFile:%{private}s, AuthTag:%{private}s, deviceKeyCnf:%{private}s, uploadURL:%{private}s, token:%{private}s", buf, 0x48u);

    completionCopy = v46;
  }

  [(CLEEDMediaServiceItem *)self setCompletionHandler:completionCopy];
  mediaRequest4 = [(CLEEDMediaServiceItem *)self mediaRequest];
  uploadURL2 = [mediaRequest4 uploadURL];
  v17 = [NSURL URLWithString:uploadURL2];
  v18 = [NSMutableURLRequest requestWithURL:v17];

  [v18 setHTTPMethod:@"PUT"];
  [v18 setValue:@"application/octet-stream" forHTTPHeaderField:@"Content-Type"];
  mediaItem4 = [(CLEEDMediaServiceItem *)self mediaItem];
  mediaItemID2 = [mediaItem4 mediaItemID];
  uUIDString2 = [mediaItemID2 UUIDString];
  [v18 setValue:uUIDString2 forHTTPHeaderField:@"x-eed-media-id"];

  mediaItem5 = [(CLEEDMediaServiceItem *)self mediaItem];
  authTag2 = [mediaItem5 authTag];
  v24 = [authTag2 base64EncodedStringWithOptions:0];
  [v18 setValue:v24 forHTTPHeaderField:@"x-eed-media-auth-tag"];

  mediaRequest5 = [(CLEEDMediaServiceItem *)self mediaRequest];
  deviceKeyConfirmation2 = [mediaRequest5 deviceKeyConfirmation];
  v27 = [deviceKeyConfirmation2 base64EncodedStringWithOptions:0];
  [v18 setValue:v27 forHTTPHeaderField:@"x-eed-device-key-confirmation"];

  mediaRequest6 = [(CLEEDMediaServiceItem *)self mediaRequest];
  token2 = [mediaRequest6 token];
  v30 = [@"Bearer " stringByAppendingString:token2];
  [v18 setValue:v30 forHTTPHeaderField:@"Authorization"];

  mediaService = [(CLEEDMediaServiceItem *)self mediaService];
  getURLSession = [mediaService getURLSession];
  [(CLEEDMediaServiceItem *)self setupUploadTaskForSession:getURLSession withRequest:v18 resumeData:0 urlSessionError:0];
}

- (void)setupUploadTaskForSession:(id)session withRequest:(id)request resumeData:(id)data urlSessionError:(id)error
{
  sessionCopy = session;
  requestCopy = request;
  dataCopy = data;
  errorCopy = error;
  mediaItem = [(CLEEDMediaServiceItem *)self mediaItem];
  uploadAttempts = [mediaItem uploadAttempts];

  mediaItem2 = [(CLEEDMediaServiceItem *)self mediaItem];
  uploadAttempts2 = [mediaItem2 uploadAttempts];
  mediaItem3 = [(CLEEDMediaServiceItem *)self mediaItem];
  [mediaItem3 setUploadAttempts:uploadAttempts2 + 1];

  mediaRequest = [(CLEEDMediaServiceItem *)self mediaRequest];
  requestTimestamp = [mediaRequest requestTimestamp];
  [requestTimestamp timeIntervalSinceNow];
  v19 = v18;

  if (qword_100029E70 != -1)
  {
    sub_100013344();
  }

  v20 = fabs(v19);
  v21 = qword_100029E68;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
  {
    v22 = v21;
    mediaItem4 = [(CLEEDMediaServiceItem *)self mediaItem];
    *buf = 136447491;
    v65 = "[CLEEDMediaServiceItem setupUploadTaskForSession:withRequest:resumeData:urlSessionError:]";
    v66 = 2050;
    uploadAttempts3 = [mediaItem4 uploadAttempts];
    v68 = 2050;
    v69 = v20;
    v70 = 2113;
    v71 = sessionCopy;
    v72 = 2114;
    v73 = requestCopy;
    v74 = 2113;
    v75 = dataCopy;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, uploadAttempt:%{public}lu, timeElapsedSinceRequestSecs:%{public}lld, session:%{private}@, urlRequest:%{public}@, resumeData:%{private}@, ", buf, 0x3Eu);
  }

  if (sessionCopy && requestCopy)
  {
    mediaItem5 = [(CLEEDMediaServiceItem *)self mediaItem];
    encryptedFileURL = [mediaItem5 encryptedFileURL];
    if (encryptedFileURL)
    {
      mediaItem6 = [(CLEEDMediaServiceItem *)self mediaItem];
      v28 = [mediaItem6 uploadAttempts] > 3 || v20 > 14400;

      if (!v28)
      {
        [(CLEEDMediaServiceItem *)self cancelDelayTimer];
        mediaService = [(CLEEDMediaServiceItem *)self mediaService];
        getQueue = [mediaService getQueue];
        v31 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, getQueue);
        [(CLEEDMediaServiceItem *)self setDelayTimer:v31];

        delayTimer = [(CLEEDMediaServiceItem *)self delayTimer];
        v33 = delayTimer == 0;

        if (v33)
        {
          if (qword_100029E70 != -1)
          {
            sub_100013358();
          }

          if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
          {
            sub_100014060();
          }

          [(CLEEDMediaServiceItem *)self handleUploadTaskForSession:sessionCopy withRequest:requestCopy resumeData:dataCopy, uploadAttempts];
        }

        else
        {
          v34 = dispatch_time(0, 10000000000 * uploadAttempts);
          delayTimer2 = [(CLEEDMediaServiceItem *)self delayTimer];
          dispatch_source_set_timer(delayTimer2, v34, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);

          objc_initWeak(buf, self);
          delayTimer3 = [(CLEEDMediaServiceItem *)self delayTimer];
          handler[0] = _NSConcreteStackBlock;
          handler[1] = 3221225472;
          handler[2] = sub_100004628;
          handler[3] = &unk_1000244C0;
          objc_copyWeak(&v61, buf);
          handler[4] = self;
          v58 = sessionCopy;
          v59 = requestCopy;
          v60 = dataCopy;
          dispatch_source_set_event_handler(delayTimer3, handler);

          delayTimer4 = [(CLEEDMediaServiceItem *)self delayTimer];
          dispatch_resume(delayTimer4);

          objc_destroyWeak(&v61);
          objc_destroyWeak(buf);
        }

        goto LABEL_33;
      }
    }

    else
    {
    }
  }

  v38 = [[NSMutableString alloc] initWithString:@"Error"];
  v39 = v38;
  if (!requestCopy)
  {
    v40 = [v38 stringByAppendingString:{@" -urlRequest nil, "}];
  }

  if (!sessionCopy)
  {
    v41 = [v39 stringByAppendingString:{@" -urlSession nil, "}];
  }

  mediaItem7 = [(CLEEDMediaServiceItem *)self mediaItem];
  encryptedFileURL2 = [mediaItem7 encryptedFileURL];
  v44 = encryptedFileURL2 == 0;

  if (v44)
  {
    v45 = [v39 stringByAppendingString:{@" -urlEncryptedFile nil, "}];
  }

  mediaItem8 = [(CLEEDMediaServiceItem *)self mediaItem];
  v47 = [mediaItem8 uploadAttempts] > 3;

  if (v47 && (v48 = [v39 stringByAppendingString:{@" -max uploadAttempts reached, "}], errorCopy))
  {
    v49 = errorCopy;
  }

  else
  {
    v49 = 0;
  }

  if (v20 >= 14401)
  {
    v50 = [v39 stringByAppendingString:{@" -exceeded MaxAllowedTimeForRequest, "}];
  }

  if (!v49)
  {
    v51 = [NSError alloc];
    v62 = NSLocalizedDescriptionKey;
    v63 = v39;
    v52 = [NSDictionary dictionaryWithObjects:&v63 forKeys:&v62 count:1];
    v49 = [v51 initWithDomain:@"com.apple.locationd.CLEEDMediaService" code:1007 userInfo:v52];
  }

  mediaItem9 = [(CLEEDMediaServiceItem *)self mediaItem];
  [(CLEEDMediaServiceItem *)self handleUploadTaskCompletionForItem:mediaItem9 response:0 error:v49];

LABEL_33:
}

- (void)cancelDelayTimer
{
  delayTimer = [(CLEEDMediaServiceItem *)self delayTimer];

  if (delayTimer)
  {
    if (qword_100029E70 != -1)
    {
      sub_100013344();
    }

    v4 = qword_100029E68;
    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEBUG))
    {
      sub_100014184(v4);
    }

    delayTimer2 = [(CLEEDMediaServiceItem *)self delayTimer];
    dispatch_source_cancel(delayTimer2);

    [(CLEEDMediaServiceItem *)self setDelayTimer:0];
  }
}

- (void)handleUploadTaskForSession:(id)session withRequest:(id)request resumeData:(id)data
{
  sessionCopy = session;
  requestCopy = request;
  dataCopy = data;
  v39 = dataCopy;
  if (dataCopy)
  {
    v11 = [sessionCopy uploadTaskWithResumeData:dataCopy];
    [(CLEEDMediaServiceItem *)self setUrlUploadTask:v11];

    urlUploadTask = [(CLEEDMediaServiceItem *)self urlUploadTask];

    if (urlUploadTask)
    {
      v13 = requestCopy;
      if (qword_100029E70 != -1)
      {
        sub_100013344();
      }

      v14 = qword_100029E68;
      if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v43 = "[CLEEDMediaServiceItem handleUploadTaskForSession:withRequest:resumeData:]";
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, Retrying upload using resumable upload", buf, 0xCu);
      }
    }

    else
    {
      mediaItem = [(CLEEDMediaServiceItem *)self mediaItem];
      encryptedFileURL = [mediaItem encryptedFileURL];
      v13 = requestCopy;
      v21 = [sessionCopy uploadTaskWithRequest:requestCopy fromFile:encryptedFileURL];
      [(CLEEDMediaServiceItem *)self setUrlUploadTask:v21];
    }
  }

  else
  {
    v15 = +[NSDate date];
    [(CLEEDMediaServiceItem *)self setTimestampUploadStart:v15];

    mediaItem2 = [(CLEEDMediaServiceItem *)self mediaItem];
    encryptedFileURL2 = [mediaItem2 encryptedFileURL];
    v18 = [sessionCopy uploadTaskWithRequest:requestCopy fromFile:encryptedFileURL2];
    [(CLEEDMediaServiceItem *)self setUrlUploadTask:v18];

    v13 = requestCopy;
  }

  if (qword_100029E70 != -1)
  {
    sub_100013358();
  }

  v22 = qword_100029E68;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
  {
    v23 = v22;
    mediaItem3 = [(CLEEDMediaServiceItem *)self mediaItem];
    v24 = v13;
    v25 = sessionCopy;
    uploadAttempts = [mediaItem3 uploadAttempts];
    mediaItem4 = [(CLEEDMediaServiceItem *)self mediaItem];
    mediaItemID = [mediaItem4 mediaItemID];
    uUIDString = [mediaItemID UUIDString];
    uTF8String = [uUIDString UTF8String];
    urlUploadTask2 = [(CLEEDMediaServiceItem *)self urlUploadTask];
    *buf = 136447747;
    v43 = "[CLEEDMediaServiceItem handleUploadTaskForSession:withRequest:resumeData:]";
    v44 = 2050;
    v45 = uploadAttempts;
    sessionCopy = v25;
    v13 = v24;
    v46 = 2082;
    v47 = uTF8String;
    v48 = 2113;
    v49 = urlUploadTask2;
    v50 = 2113;
    v51 = sessionCopy;
    v52 = 2114;
    v53 = v24;
    v54 = 2113;
    v55 = v39;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, uploadAttempt:%{public}lu, mediaID:%{public}s, URLUploadTask:%{private}@, session:%{private}@, urlRequest:%{public}@, resumeData:%{private}@", buf, 0x48u);
  }

  urlUploadTask3 = [(CLEEDMediaServiceItem *)self urlUploadTask];

  if (urlUploadTask3)
  {
    urlUploadTask4 = [(CLEEDMediaServiceItem *)self urlUploadTask];
    [urlUploadTask4 setDelegate:self];

    urlUploadTask5 = [(CLEEDMediaServiceItem *)self urlUploadTask];
    [urlUploadTask5 resume];
  }

  else
  {
    v35 = [NSError alloc];
    v40 = NSLocalizedDescriptionKey;
    v41 = @"Upload task creation failed";
    v36 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    urlUploadTask5 = [v35 initWithDomain:@"com.apple.locationd.CLEEDMediaService" code:1008 userInfo:v36];

    mediaItem5 = [(CLEEDMediaServiceItem *)self mediaItem];
    [(CLEEDMediaServiceItem *)self handleUploadTaskCompletionForItem:mediaItem5 response:0 error:urlUploadTask5];
  }
}

- (void)handleUploadTaskCompletionForItem:(id)item response:(id)response error:(id)error
{
  itemCopy = item;
  responseCopy = response;
  errorCopy = error;
  v11 = responseCopy;
  v12 = v11;
  if (v11)
  {
    statusCode = [v11 statusCode];
  }

  else
  {
    if (!errorCopy)
    {
      goto LABEL_6;
    }

    statusCode = [errorCopy code];
  }

  [itemCopy setServerUploadStatus:statusCode];
LABEL_6:
  if (qword_100029E70 != -1)
  {
    sub_100013344();
  }

  v14 = qword_100029E68;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
  {
    log = v14;
    serverUploadStatus = [itemCopy serverUploadStatus];
    mediaItem = [(CLEEDMediaServiceItem *)self mediaItem];
    mediaItemID = [mediaItem mediaItemID];
    [mediaItemID UUIDString];
    v17 = v16 = errorCopy;
    uTF8String = [v17 UTF8String];
    urlUploadTask = [(CLEEDMediaServiceItem *)self urlUploadTask];
    stagingURL = [itemCopy stagingURL];
    lastPathComponent = [stagingURL lastPathComponent];
    *buf = 136448003;
    v33 = "[CLEEDMediaServiceItem handleUploadTaskCompletionForItem:response:error:]";
    v34 = 2050;
    v35 = serverUploadStatus;
    v36 = 2082;
    v37 = uTF8String;
    v38 = 2113;
    v39 = urlUploadTask;
    v40 = 2081;
    uTF8String2 = [lastPathComponent UTF8String];
    v42 = 2114;
    v43 = v12;
    v44 = 2114;
    v45 = v16;
    v46 = 2114;
    v47 = v12;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, serverUploadStatus:%{public}ld, mediaID:%{public}s, URLUploadTask:%{private}@, [item:%{private}s,response:%{public}@,error:%{public}@], httpResponse:%{public}@", buf, 0x52u);

    errorCopy = v16;
  }

  if (v12 && [v12 statusCode] >= 200 && objc_msgSend(v12, "statusCode") <= 299)
  {
    [itemCopy setUploadStatus:5];
    timestampUploadStart = [(CLEEDMediaServiceItem *)self timestampUploadStart];
    [timestampUploadStart timeIntervalSinceNow];
    [itemCopy setDurationUploadMs:(fabs(v23) * 1000.0)];
  }

  else
  {
    [itemCopy setUploadStatus:6];
  }

  mediaItem2 = [(CLEEDMediaServiceItem *)self mediaItem];
  encryptedFileURL = [mediaItem2 encryptedFileURL];
  path = [encryptedFileURL path];
  [CLEEDMediaService deleteFileAtPath:path];

  completionHandler = [(CLEEDMediaServiceItem *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(CLEEDMediaServiceItem *)self completionHandler];
    completionHandler2[2]();

    [(CLEEDMediaServiceItem *)self setCompletionHandler:0];
  }

  else
  {
    if (qword_100029E70 != -1)
    {
      sub_100013358();
    }

    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
    {
      sub_100014220();
    }
  }
}

- (void)handleUploadTaskDelayForItem:(id)item response:(id)response error:(id)error
{
  itemCopy = item;
  responseCopy = response;
  errorCopy = error;
  v10 = responseCopy;
  if (qword_100029E70 != -1)
  {
    sub_100013344();
  }

  v11 = qword_100029E68;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
  {
    log = v11;
    serverUploadStatus = [itemCopy serverUploadStatus];
    mediaItem = [(CLEEDMediaServiceItem *)self mediaItem];
    mediaItemID = [mediaItem mediaItemID];
    uUIDString = [mediaItemID UUIDString];
    uTF8String = [uUIDString UTF8String];
    urlUploadTask = [(CLEEDMediaServiceItem *)self urlUploadTask];
    stagingURL = [itemCopy stagingURL];
    lastPathComponent = [stagingURL lastPathComponent];
    *buf = 136448003;
    v25 = "[CLEEDMediaServiceItem handleUploadTaskDelayForItem:response:error:]";
    v26 = 2050;
    v27 = serverUploadStatus;
    v28 = 2082;
    v29 = uTF8String;
    v30 = 2113;
    v31 = urlUploadTask;
    v32 = 2081;
    uTF8String2 = [lastPathComponent UTF8String];
    v34 = 2114;
    v35 = v10;
    v36 = 2114;
    v37 = errorCopy;
    v38 = 2114;
    v39 = v10;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, serverUploadStatus:%{public}ld, mediaID:%{public}s, URLUploadTask:%{private}@, [item:%{private}s,response:%{public}@,error:%{public}@], httpResponse:%{public}@", buf, 0x52u);
  }

  [itemCopy setUploadStatus:3];
  if ([itemCopy uploadAttempts])
  {
    [itemCopy setUploadAttempts:{objc_msgSend(itemCopy, "uploadAttempts") - 1}];
  }

  completionHandler = [(CLEEDMediaServiceItem *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(CLEEDMediaServiceItem *)self completionHandler];
    completionHandler2[2]();

    [(CLEEDMediaServiceItem *)self setCompletionHandler:0];
  }

  else
  {
    if (qword_100029E70 != -1)
    {
      sub_100013358();
    }

    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_ERROR))
    {
      sub_1000142A0();
    }
  }
}

- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send
{
  sessionCopy = session;
  taskCopy = task;
  mediaService = [(CLEEDMediaServiceItem *)self mediaService];
  getQueue = [mediaService getQueue];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000053A0;
  v18[3] = &unk_1000244E8;
  v18[4] = self;
  v19 = sessionCopy;
  v20 = taskCopy;
  sentCopy = sent;
  sendCopy = send;
  dataCopy = data;
  v16 = taskCopy;
  v17 = sessionCopy;
  dispatch_async(getQueue, v18);
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  sessionCopy = session;
  taskCopy = task;
  errorCopy = error;
  objc_initWeak(&location, self);
  mediaService = [(CLEEDMediaServiceItem *)self mediaService];
  getQueue = [mediaService getQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100005654;
  v16[3] = &unk_1000244C0;
  objc_copyWeak(&v21, &location);
  v17 = sessionCopy;
  v18 = taskCopy;
  v19 = errorCopy;
  selfCopy = self;
  v13 = errorCopy;
  v14 = taskCopy;
  v15 = sessionCopy;
  dispatch_async(getQueue, v16);

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  sessionCopy = session;
  taskCopy = task;
  challengeCopy = challenge;
  handlerCopy = handler;
  mediaService = [(CLEEDMediaServiceItem *)self mediaService];
  getQueue = [mediaService getQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000059F4;
  block[3] = &unk_100024510;
  v21 = sessionCopy;
  v22 = taskCopy;
  selfCopy = self;
  v25 = handlerCopy;
  v23 = challengeCopy;
  v16 = handlerCopy;
  v17 = challengeCopy;
  v18 = taskCopy;
  v19 = sessionCopy;
  dispatch_async(getQueue, block);
}

@end