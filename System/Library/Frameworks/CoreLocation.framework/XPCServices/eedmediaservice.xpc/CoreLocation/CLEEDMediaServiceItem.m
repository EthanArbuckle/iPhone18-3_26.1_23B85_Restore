@interface CLEEDMediaServiceItem
- (BOOL)isEqual:(id)a3;
- (CLEEDMediaServiceItem)initWithMediaItem:(id)a3 mediaRequest:(id)a4 mediaService:(id)a5;
- (id)encryptMediaItem:(id)a3 returnedAuthTag:(id *)a4;
- (int64_t)compareMediaSize:(id)a3;
- (unint64_t)hash;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 didSendBodyData:(int64_t)a5 totalBytesSent:(int64_t)a6 totalBytesExpectedToSend:(int64_t)a7;
- (void)cancelDelayTimer;
- (void)generateEncrytionKeyForMediaID:(id)a3 returningKey:(id *)a4 IV:(id *)a5;
- (void)handleUploadTaskCompletionForItem:(id)a3 response:(id)a4 error:(id)a5;
- (void)handleUploadTaskDelayForItem:(id)a3 response:(id)a4 error:(id)a5;
- (void)handleUploadTaskForSession:(id)a3 withRequest:(id)a4 resumeData:(id)a5;
- (void)processMediaItemWithCompletion:(id)a3;
- (void)setupUploadTaskForSession:(id)a3 withRequest:(id)a4 resumeData:(id)a5 urlSessionError:(id)a6;
@end

@implementation CLEEDMediaServiceItem

- (CLEEDMediaServiceItem)initWithMediaItem:(id)a3 mediaRequest:(id)a4 mediaService:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v51.receiver = self;
  v51.super_class = CLEEDMediaServiceItem;
  v12 = [(CLEEDMediaServiceItem *)&v51 init];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_14;
  }

  objc_storeStrong(&v12->_mediaRequest, a4);
  objc_storeStrong(&v13->_mediaItem, a3);
  objc_storeStrong(&v13->_mediaService, a5);
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
  v20 = [v9 stagingURL];
  v21 = [v20 path];
  v22 = [v19 fileExistsAtPath:v21];

  v23 = +[NSFileManager defaultManager];
  if (v22)
  {
    v24 = [v9 stagingURL];
    v25 = [v24 path];
    v50 = 0;
    v26 = &v50;
    v27 = &v50;
    goto LABEL_6;
  }

  v28 = [v9 encryptedFileURL];
  v29 = [v28 path];
  v30 = [v23 fileExistsAtPath:v29];

  if (v30)
  {
    v23 = +[NSFileManager defaultManager];
    v24 = [v9 encryptedFileURL];
    v25 = [v24 path];
    v49 = 0;
    v26 = &v49;
    v27 = &v49;
LABEL_6:
    v31 = [v23 attributesOfItemAtPath:v25 error:v27];
    v32 = *v26;
    v33 = [v31 fileSize];

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
        v44 = [v9 stagingURL];
        v45 = [v44 path];
        v46 = [v9 encryptedFileURL];
        v47 = [v46 path];
        *buf = 136447235;
        v53 = "[CLEEDMediaServiceItem initWithMediaItem:mediaRequest:mediaService:]";
        v54 = 2113;
        v55 = v45;
        v56 = 2113;
        v57 = *&v47;
        v58 = 2050;
        v59 = v33;
        v60 = 2114;
        v61 = v32;
        _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#EED2EMS,%{public}s, File size error for stagingFile:%{private}@ or encryptedFile:%{private}@, size:%{public}ld, error:%{public}@", buf, 0x34u);
      }

      v35 = 0;
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  v33 = 0;
LABEL_13:
  [(CLEEDMediaItem *)v13->_mediaItem setMediaItemSizeBytes:v33];
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
    v39 = [(CLEEDMediaItem *)mediaItem mediaItemID];
    v40 = [v39 UUIDString];
    v41 = [v40 UTF8String];
    v42 = [(CLEEDMediaItem *)v13->_mediaItem mediaItemSizeBytes];
    *buf = 136446723;
    v53 = "[CLEEDMediaServiceItem initWithMediaItem:mediaRequest:mediaService:]";
    v54 = 2081;
    v55 = v41;
    v56 = 2049;
    v57 = vcvtd_n_f64_u64(v42, 0x14uLL);
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, mediaID:%{private}s, size:%{private}.2lf MB", buf, 0x20u);
  }

  v35 = v13;
LABEL_19:

  return v35;
}

- (int64_t)compareMediaSize:(id)a3
{
  v4 = a3;
  v5 = [(CLEEDMediaServiceItem *)self mediaItem];
  v6 = [v5 mediaItemSizeBytes];
  v7 = [v4 mediaItem];
  v8 = [v7 mediaItemSizeBytes];

  if (v6 <= v8)
  {
    v10 = [(CLEEDMediaServiceItem *)self mediaItem];
    v11 = [v10 mediaItemSizeBytes];
    v12 = [v4 mediaItem];
    v13 = [v12 mediaItemSizeBytes];

    if (v11 == v13)
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
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

  v5 = v4;
  v6 = [(CLEEDMediaServiceItem *)self mediaItem];
  if (!v6)
  {
LABEL_8:

    goto LABEL_9;
  }

  v7 = v6;
  v8 = [(CLEEDMediaServiceItem *)v5 mediaItem];
  if (!v8)
  {

    goto LABEL_8;
  }

  v9 = v8;
  v10 = [(CLEEDMediaServiceItem *)self mediaItem];
  v11 = [(CLEEDMediaServiceItem *)v5 mediaItem];
  v12 = [v10 isEqual:v11];

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
  v2 = [(CLEEDMediaServiceItem *)self mediaItem];
  v3 = [v2 hash];

  return v3;
}

- (void)generateEncrytionKeyForMediaID:(id)a3 returningKey:(id *)a4 IV:(id *)a5
{
  v6 = a3;
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
    v30 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "#EED2EMS,%{public}s, Media encryption key generation for mediaID:%{public}@", buf, 0x16u);
  }

  v8 = [v6 UUIDString];
  v9 = [@"device media response" dataUsingEncoding:4];
  v10 = [(CLEEDMediaServiceRequest *)self->_mediaRequest sharedInfoPrefix];
  v11 = +[NSMutableData dataWithCapacity:](NSMutableData, "dataWithCapacity:", [@"device media response" length] + objc_msgSend(v8, "length") + objc_msgSend(v10, "length"));

  v12 = [(CLEEDMediaServiceRequest *)self->_mediaRequest sharedInfoPrefix];
  [v11 appendData:v12];

  v13 = [v8 dataUsingEncoding:4];
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

  v15 = [(CLEEDMediaServiceRequest *)self->_mediaRequest combinedSecret];
  v16 = [CLEEDCryptoUtilities getDerivedKeyWithLength:48 secretData:v15 additionalInfo:v11];

  if (v16)
  {
    *a4 = [v16 subdataWithRange:{0, 32}];
    *a5 = [v16 subdataWithRange:{32, 16}];
    if (qword_100029E70 != -1)
    {
      sub_100013358();
    }

    v17 = qword_100029E68;
    if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEBUG))
    {
      log = v17;
      v18 = [v16 base64EncodedStringWithOptions:0];
      v19 = [v18 UTF8String];
      v20 = [*a4 base64EncodedStringWithOptions:0];
      v21 = [v20 UTF8String];
      v22 = [*a5 base64EncodedStringWithOptions:0];
      v23 = [v22 UTF8String];
      *buf = 136446979;
      v28 = "[CLEEDMediaServiceItem generateEncrytionKeyForMediaID:returningKey:IV:]";
      v29 = 2081;
      v30 = v19;
      v31 = 2081;
      v32 = v21;
      v33 = 2081;
      v34 = v23;
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

- (id)encryptMediaItem:(id)a3 returnedAuthTag:(id *)a4
{
  v6 = a3;
  if (qword_100029E70 != -1)
  {
    sub_100013344();
  }

  v7 = qword_100029E68;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v6 stagingURL];
    v10 = [v9 path];
    *buf = 136446467;
    v73 = "[CLEEDMediaServiceItem encryptMediaItem:returnedAuthTag:]";
    v74 = 2113;
    *v75 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, Encrypting media file at path:%{private}@", buf, 0x16u);
  }

  v11 = +[NSFileManager defaultManager];
  v12 = [v6 stagingURL];
  v13 = [v12 path];
  v14 = [v11 fileExistsAtPath:v13];

  if (v14)
  {
    v15 = [v6 mediaItemID];
    v70 = 0;
    v71 = 0;
    [(CLEEDMediaServiceItem *)self generateEncrytionKeyForMediaID:v15 returningKey:&v71 IV:&v70];
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

      v20 = [v6 stagingURL];
      v21 = [v20 path];
      [CLEEDMediaService deleteFileAtPath:v21];

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
      v22 = [v6 stagingURL];
      v23 = v22;
LABEL_29:
      v24 = [v22 path];
      [CLEEDMediaService deleteFileAtPath:v24];
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

    v26 = [v6 stagingURL];
    v27 = [v26 path];
    v28 = fopen([v27 UTF8String], "rb");

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
    v65 = a4;
    v29 = [v6 stagingURL];
    v30 = [v29 path];
    v31 = [v30 stringByAppendingString:@".encrypted"];
    v23 = [NSURL fileURLWithPath:v31];

    v32 = [v23 path];
    v33 = fopen([v32 UTF8String], "wb");

    __stream = v33;
    if (!v33)
    {
      v46 = sub_1000012D8();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        sub_100013EAC();
      }

      fclose(v68);
      v47 = [v6 stagingURL];
      v48 = [v47 path];
      [CLEEDMediaService deleteFileAtPath:v48];

      v22 = v23;
      goto LABEL_29;
    }

    v66 = v23;
    v24 = [NSMutableData dataWithCapacity:0x100000];
    v34 = [(CLEEDMediaServiceItem *)self mediaItem];
    v35 = [v34 mediaItemSizeBytes] >> 20;
    v36 = [(CLEEDMediaServiceItem *)self mediaItem];
    if (([v36 mediaItemSizeBytes] & 0xFFFFF) != 0)
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

      v39 = fread([v24 mutableBytes], 1uLL, 0x100000uLL, v68);
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

      [v24 bytes];
      [v24 mutableBytes];
      if (CCCryptorGCMEncrypt())
      {
        v49 = sub_1000012D8();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          sub_100013DB4();
        }

        goto LABEL_70;
      }

      v43 = fwrite([v24 bytes], 1uLL, v40, __stream);
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
        v52 = [NSMutableData dataWithLength:16];
        [v52 mutableBytes];
        [v52 length];
        v53 = CCCryptorGCMFinalize();
        CCCryptorRelease(cryptorRef);
        if (!v53)
        {
          v58 = v52;
          *v65 = v52;
          v59 = sub_1000012D8();
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
          {
            v60 = [*v65 base64EncodedStringWithOptions:0];
            v61 = [v60 UTF8String];
            *buf = 136446467;
            v73 = "[CLEEDMediaServiceItem encryptMediaItem:returnedAuthTag:]";
            v74 = 2081;
            *v75 = v61;
            _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, AuthenticationTag:%{private}s", buf, 0x16u);
          }

          v62 = [v6 stagingURL];
          v63 = [v62 path];
          [CLEEDMediaService deleteFileAtPath:v63];

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

        v55 = [v6 stagingURL];
        v56 = [v55 path];
        [CLEEDMediaService deleteFileAtPath:v56];

        v23 = v66;
        v57 = [v66 path];
        [CLEEDMediaService deleteFileAtPath:v57];

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
    v50 = [v6 stagingURL];
    v51 = [v50 path];
    [CLEEDMediaService deleteFileAtPath:v51];

    v23 = v66;
    v52 = [v66 path];
    [CLEEDMediaService deleteFileAtPath:v52];
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

- (void)processMediaItemWithCompletion:(id)a3
{
  v4 = a3;
  if (qword_100029E70 != -1)
  {
    sub_100013344();
  }

  v5 = qword_100029E68;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
  {
    log = v5;
    v45 = [(CLEEDMediaServiceItem *)self mediaItem];
    v44 = [v45 mediaItemID];
    v43 = [v44 UUIDString];
    v35 = [v43 UTF8String];
    v42 = [(CLEEDMediaServiceItem *)self mediaItem];
    v41 = [v42 encryptedFileURL];
    v40 = [v41 path];
    v34 = [v40 UTF8String];
    v38 = [(CLEEDMediaServiceItem *)self mediaItem];
    v37 = [v38 authTag];
    v6 = [v37 base64EncodedStringWithOptions:0];
    v33 = [v6 UTF8String];
    v36 = [(CLEEDMediaServiceItem *)self mediaRequest];
    v7 = [v36 deviceKeyConfirmation];
    [v7 base64EncodedStringWithOptions:0];
    v8 = v46 = v4;
    v9 = [v8 UTF8String];
    v10 = [(CLEEDMediaServiceItem *)self mediaRequest];
    v11 = [v10 uploadURL];
    v12 = [v11 UTF8String];
    v13 = [(CLEEDMediaServiceItem *)self mediaRequest];
    v14 = [v13 token];
    *buf = 136447747;
    v48 = "[CLEEDMediaServiceItem processMediaItemWithCompletion:]";
    v49 = 2081;
    v50 = v35;
    v51 = 2081;
    v52 = v34;
    v53 = 2081;
    v54 = v33;
    v55 = 2081;
    v56 = v9;
    v57 = 2081;
    v58 = v12;
    v59 = 2081;
    v60 = [v14 UTF8String];
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, Starting media upload, mediaID:%{private}s, EncryptedFile:%{private}s, AuthTag:%{private}s, deviceKeyCnf:%{private}s, uploadURL:%{private}s, token:%{private}s", buf, 0x48u);

    v4 = v46;
  }

  [(CLEEDMediaServiceItem *)self setCompletionHandler:v4];
  v15 = [(CLEEDMediaServiceItem *)self mediaRequest];
  v16 = [v15 uploadURL];
  v17 = [NSURL URLWithString:v16];
  v18 = [NSMutableURLRequest requestWithURL:v17];

  [v18 setHTTPMethod:@"PUT"];
  [v18 setValue:@"application/octet-stream" forHTTPHeaderField:@"Content-Type"];
  v19 = [(CLEEDMediaServiceItem *)self mediaItem];
  v20 = [v19 mediaItemID];
  v21 = [v20 UUIDString];
  [v18 setValue:v21 forHTTPHeaderField:@"x-eed-media-id"];

  v22 = [(CLEEDMediaServiceItem *)self mediaItem];
  v23 = [v22 authTag];
  v24 = [v23 base64EncodedStringWithOptions:0];
  [v18 setValue:v24 forHTTPHeaderField:@"x-eed-media-auth-tag"];

  v25 = [(CLEEDMediaServiceItem *)self mediaRequest];
  v26 = [v25 deviceKeyConfirmation];
  v27 = [v26 base64EncodedStringWithOptions:0];
  [v18 setValue:v27 forHTTPHeaderField:@"x-eed-device-key-confirmation"];

  v28 = [(CLEEDMediaServiceItem *)self mediaRequest];
  v29 = [v28 token];
  v30 = [@"Bearer " stringByAppendingString:v29];
  [v18 setValue:v30 forHTTPHeaderField:@"Authorization"];

  v31 = [(CLEEDMediaServiceItem *)self mediaService];
  v32 = [v31 getURLSession];
  [(CLEEDMediaServiceItem *)self setupUploadTaskForSession:v32 withRequest:v18 resumeData:0 urlSessionError:0];
}

- (void)setupUploadTaskForSession:(id)a3 withRequest:(id)a4 resumeData:(id)a5 urlSessionError:(id)a6
{
  v10 = a3;
  v11 = a4;
  v56 = a5;
  v55 = a6;
  v12 = [(CLEEDMediaServiceItem *)self mediaItem];
  v54 = [v12 uploadAttempts];

  v13 = [(CLEEDMediaServiceItem *)self mediaItem];
  v14 = [v13 uploadAttempts];
  v15 = [(CLEEDMediaServiceItem *)self mediaItem];
  [v15 setUploadAttempts:v14 + 1];

  v16 = [(CLEEDMediaServiceItem *)self mediaRequest];
  v17 = [v16 requestTimestamp];
  [v17 timeIntervalSinceNow];
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
    v23 = [(CLEEDMediaServiceItem *)self mediaItem];
    *buf = 136447491;
    v65 = "[CLEEDMediaServiceItem setupUploadTaskForSession:withRequest:resumeData:urlSessionError:]";
    v66 = 2050;
    v67 = [v23 uploadAttempts];
    v68 = 2050;
    v69 = v20;
    v70 = 2113;
    v71 = v10;
    v72 = 2114;
    v73 = v11;
    v74 = 2113;
    v75 = v56;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, uploadAttempt:%{public}lu, timeElapsedSinceRequestSecs:%{public}lld, session:%{private}@, urlRequest:%{public}@, resumeData:%{private}@, ", buf, 0x3Eu);
  }

  if (v10 && v11)
  {
    v24 = [(CLEEDMediaServiceItem *)self mediaItem];
    v25 = [v24 encryptedFileURL];
    if (v25)
    {
      v26 = [(CLEEDMediaServiceItem *)self mediaItem];
      v28 = [v26 uploadAttempts] > 3 || v20 > 14400;

      if (!v28)
      {
        [(CLEEDMediaServiceItem *)self cancelDelayTimer];
        v29 = [(CLEEDMediaServiceItem *)self mediaService];
        v30 = [v29 getQueue];
        v31 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v30);
        [(CLEEDMediaServiceItem *)self setDelayTimer:v31];

        v32 = [(CLEEDMediaServiceItem *)self delayTimer];
        v33 = v32 == 0;

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

          [(CLEEDMediaServiceItem *)self handleUploadTaskForSession:v10 withRequest:v11 resumeData:v56, v54];
        }

        else
        {
          v34 = dispatch_time(0, 10000000000 * v54);
          v35 = [(CLEEDMediaServiceItem *)self delayTimer];
          dispatch_source_set_timer(v35, v34, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);

          objc_initWeak(buf, self);
          v36 = [(CLEEDMediaServiceItem *)self delayTimer];
          handler[0] = _NSConcreteStackBlock;
          handler[1] = 3221225472;
          handler[2] = sub_100004628;
          handler[3] = &unk_1000244C0;
          objc_copyWeak(&v61, buf);
          handler[4] = self;
          v58 = v10;
          v59 = v11;
          v60 = v56;
          dispatch_source_set_event_handler(v36, handler);

          v37 = [(CLEEDMediaServiceItem *)self delayTimer];
          dispatch_resume(v37);

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
  if (!v11)
  {
    v40 = [v38 stringByAppendingString:{@" -urlRequest nil, "}];
  }

  if (!v10)
  {
    v41 = [v39 stringByAppendingString:{@" -urlSession nil, "}];
  }

  v42 = [(CLEEDMediaServiceItem *)self mediaItem];
  v43 = [v42 encryptedFileURL];
  v44 = v43 == 0;

  if (v44)
  {
    v45 = [v39 stringByAppendingString:{@" -urlEncryptedFile nil, "}];
  }

  v46 = [(CLEEDMediaServiceItem *)self mediaItem];
  v47 = [v46 uploadAttempts] > 3;

  if (v47 && (v48 = [v39 stringByAppendingString:{@" -max uploadAttempts reached, "}], v55))
  {
    v49 = v55;
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

  v53 = [(CLEEDMediaServiceItem *)self mediaItem];
  [(CLEEDMediaServiceItem *)self handleUploadTaskCompletionForItem:v53 response:0 error:v49];

LABEL_33:
}

- (void)cancelDelayTimer
{
  v3 = [(CLEEDMediaServiceItem *)self delayTimer];

  if (v3)
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

    v5 = [(CLEEDMediaServiceItem *)self delayTimer];
    dispatch_source_cancel(v5);

    [(CLEEDMediaServiceItem *)self setDelayTimer:0];
  }
}

- (void)handleUploadTaskForSession:(id)a3 withRequest:(id)a4 resumeData:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v39 = v10;
  if (v10)
  {
    v11 = [v8 uploadTaskWithResumeData:v10];
    [(CLEEDMediaServiceItem *)self setUrlUploadTask:v11];

    v12 = [(CLEEDMediaServiceItem *)self urlUploadTask];

    if (v12)
    {
      v13 = v9;
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
      v19 = [(CLEEDMediaServiceItem *)self mediaItem];
      v20 = [v19 encryptedFileURL];
      v13 = v9;
      v21 = [v8 uploadTaskWithRequest:v9 fromFile:v20];
      [(CLEEDMediaServiceItem *)self setUrlUploadTask:v21];
    }
  }

  else
  {
    v15 = +[NSDate date];
    [(CLEEDMediaServiceItem *)self setTimestampUploadStart:v15];

    v16 = [(CLEEDMediaServiceItem *)self mediaItem];
    v17 = [v16 encryptedFileURL];
    v18 = [v8 uploadTaskWithRequest:v9 fromFile:v17];
    [(CLEEDMediaServiceItem *)self setUrlUploadTask:v18];

    v13 = v9;
  }

  if (qword_100029E70 != -1)
  {
    sub_100013358();
  }

  v22 = qword_100029E68;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
  {
    v23 = v22;
    v38 = [(CLEEDMediaServiceItem *)self mediaItem];
    v24 = v13;
    v25 = v8;
    v26 = [v38 uploadAttempts];
    v27 = [(CLEEDMediaServiceItem *)self mediaItem];
    v28 = [v27 mediaItemID];
    v29 = [v28 UUIDString];
    v30 = [v29 UTF8String];
    v31 = [(CLEEDMediaServiceItem *)self urlUploadTask];
    *buf = 136447747;
    v43 = "[CLEEDMediaServiceItem handleUploadTaskForSession:withRequest:resumeData:]";
    v44 = 2050;
    v45 = v26;
    v8 = v25;
    v13 = v24;
    v46 = 2082;
    v47 = v30;
    v48 = 2113;
    v49 = v31;
    v50 = 2113;
    v51 = v8;
    v52 = 2114;
    v53 = v24;
    v54 = 2113;
    v55 = v39;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, uploadAttempt:%{public}lu, mediaID:%{public}s, URLUploadTask:%{private}@, session:%{private}@, urlRequest:%{public}@, resumeData:%{private}@", buf, 0x48u);
  }

  v32 = [(CLEEDMediaServiceItem *)self urlUploadTask];

  if (v32)
  {
    v33 = [(CLEEDMediaServiceItem *)self urlUploadTask];
    [v33 setDelegate:self];

    v34 = [(CLEEDMediaServiceItem *)self urlUploadTask];
    [v34 resume];
  }

  else
  {
    v35 = [NSError alloc];
    v40 = NSLocalizedDescriptionKey;
    v41 = @"Upload task creation failed";
    v36 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v34 = [v35 initWithDomain:@"com.apple.locationd.CLEEDMediaService" code:1008 userInfo:v36];

    v37 = [(CLEEDMediaServiceItem *)self mediaItem];
    [(CLEEDMediaServiceItem *)self handleUploadTaskCompletionForItem:v37 response:0 error:v34];
  }
}

- (void)handleUploadTaskCompletionForItem:(id)a3 response:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v9;
  v12 = v11;
  if (v11)
  {
    v13 = [v11 statusCode];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_6;
    }

    v13 = [v10 code];
  }

  [v8 setServerUploadStatus:v13];
LABEL_6:
  if (qword_100029E70 != -1)
  {
    sub_100013344();
  }

  v14 = qword_100029E68;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
  {
    log = v14;
    v15 = [v8 serverUploadStatus];
    v31 = [(CLEEDMediaServiceItem *)self mediaItem];
    v30 = [v31 mediaItemID];
    [v30 UUIDString];
    v17 = v16 = v10;
    v18 = [v17 UTF8String];
    v19 = [(CLEEDMediaServiceItem *)self urlUploadTask];
    v20 = [v8 stagingURL];
    v21 = [v20 lastPathComponent];
    *buf = 136448003;
    v33 = "[CLEEDMediaServiceItem handleUploadTaskCompletionForItem:response:error:]";
    v34 = 2050;
    v35 = v15;
    v36 = 2082;
    v37 = v18;
    v38 = 2113;
    v39 = v19;
    v40 = 2081;
    v41 = [v21 UTF8String];
    v42 = 2114;
    v43 = v12;
    v44 = 2114;
    v45 = v16;
    v46 = 2114;
    v47 = v12;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, serverUploadStatus:%{public}ld, mediaID:%{public}s, URLUploadTask:%{private}@, [item:%{private}s,response:%{public}@,error:%{public}@], httpResponse:%{public}@", buf, 0x52u);

    v10 = v16;
  }

  if (v12 && [v12 statusCode] >= 200 && objc_msgSend(v12, "statusCode") <= 299)
  {
    [v8 setUploadStatus:5];
    v22 = [(CLEEDMediaServiceItem *)self timestampUploadStart];
    [v22 timeIntervalSinceNow];
    [v8 setDurationUploadMs:(fabs(v23) * 1000.0)];
  }

  else
  {
    [v8 setUploadStatus:6];
  }

  v24 = [(CLEEDMediaServiceItem *)self mediaItem];
  v25 = [v24 encryptedFileURL];
  v26 = [v25 path];
  [CLEEDMediaService deleteFileAtPath:v26];

  v27 = [(CLEEDMediaServiceItem *)self completionHandler];

  if (v27)
  {
    v28 = [(CLEEDMediaServiceItem *)self completionHandler];
    v28[2]();

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

- (void)handleUploadTaskDelayForItem:(id)a3 response:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v23 = a5;
  v10 = v9;
  if (qword_100029E70 != -1)
  {
    sub_100013344();
  }

  v11 = qword_100029E68;
  if (os_log_type_enabled(qword_100029E68, OS_LOG_TYPE_DEFAULT))
  {
    log = v11;
    v12 = [v8 serverUploadStatus];
    v22 = [(CLEEDMediaServiceItem *)self mediaItem];
    v21 = [v22 mediaItemID];
    v13 = [v21 UUIDString];
    v14 = [v13 UTF8String];
    v15 = [(CLEEDMediaServiceItem *)self urlUploadTask];
    v16 = [v8 stagingURL];
    v17 = [v16 lastPathComponent];
    *buf = 136448003;
    v25 = "[CLEEDMediaServiceItem handleUploadTaskDelayForItem:response:error:]";
    v26 = 2050;
    v27 = v12;
    v28 = 2082;
    v29 = v14;
    v30 = 2113;
    v31 = v15;
    v32 = 2081;
    v33 = [v17 UTF8String];
    v34 = 2114;
    v35 = v10;
    v36 = 2114;
    v37 = v23;
    v38 = 2114;
    v39 = v10;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "#EED2EMS,%{public}s, serverUploadStatus:%{public}ld, mediaID:%{public}s, URLUploadTask:%{private}@, [item:%{private}s,response:%{public}@,error:%{public}@], httpResponse:%{public}@", buf, 0x52u);
  }

  [v8 setUploadStatus:3];
  if ([v8 uploadAttempts])
  {
    [v8 setUploadAttempts:{objc_msgSend(v8, "uploadAttempts") - 1}];
  }

  v18 = [(CLEEDMediaServiceItem *)self completionHandler];

  if (v18)
  {
    v19 = [(CLEEDMediaServiceItem *)self completionHandler];
    v19[2]();

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

- (void)URLSession:(id)a3 task:(id)a4 didSendBodyData:(int64_t)a5 totalBytesSent:(int64_t)a6 totalBytesExpectedToSend:(int64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = [(CLEEDMediaServiceItem *)self mediaService];
  v15 = [v14 getQueue];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000053A0;
  v18[3] = &unk_1000244E8;
  v18[4] = self;
  v19 = v12;
  v20 = v13;
  v21 = a6;
  v22 = a7;
  v23 = a5;
  v16 = v13;
  v17 = v12;
  dispatch_async(v15, v18);
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v11 = [(CLEEDMediaServiceItem *)self mediaService];
  v12 = [v11 getQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100005654;
  v16[3] = &unk_1000244C0;
  objc_copyWeak(&v21, &location);
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v20 = self;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  dispatch_async(v12, v16);

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(CLEEDMediaServiceItem *)self mediaService];
  v15 = [v14 getQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000059F4;
  block[3] = &unk_100024510;
  v21 = v10;
  v22 = v11;
  v24 = self;
  v25 = v13;
  v23 = v12;
  v16 = v13;
  v17 = v12;
  v18 = v11;
  v19 = v10;
  dispatch_async(v15, block);
}

@end