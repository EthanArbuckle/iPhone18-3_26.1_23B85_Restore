@interface BackgroundFeedbackUploader
+ (id)resubmissionDateWithRetryCount:(int64_t)count;
- (BOOL)_saveAttachedImages:(id)images andUpdateCorrectionsRequest:(id)request withImageUploadInfoResult:(id)result submissionIdentifier:(id)identifier;
- (BOOL)_saveCorrections:(id)corrections submissionIdentifier:(id)identifier addARPCHeaders:(BOOL)headers;
- (BackgroundFeedbackUploader)initWithUploadStepObserver:(id)observer;
- (FeedbackUploaderStepObserver)uploadStepObserver;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)_dispatchCorrectionsUploadForSubmissionIdentifier:(id)identifier newRetryCount:(int64_t)count isPOIEnrichment:(BOOL)enrichment;
- (void)_dispatchImageUploadForImageURL:(id)l submissionIdentifier:(id)identifier clientImageIdentifier:(id)imageIdentifier httpType:(id)type newRetryCount:(int64_t)count;
- (void)_handleCorrectionsResponse:(id)response withData:(id)data withTaskDescription:(id)description;
- (void)_handleCorrectionsResubmissionWithSubmissionIdentifier:(id)identifier newRetryCount:(int64_t)count;
- (void)_handleCorrectionsUploadTask:(id)task withSessionError:(id)error;
- (void)_handleImageResubmissionWithUploadURL:(id)l submissionIdentifier:(id)identifier imageIdentifier:(id)imageIdentifier httpType:(id)type newRetryCount:(int64_t)count;
- (void)_handleImageUploadResponse:(id)response withData:(id)data withTaskDescription:(id)description;
- (void)_handleImageUploadTask:(id)task withSessionError:(id)error;
- (void)_logResponse:(id)response;
- (void)getSessionWithCompletionHandler:(id)handler;
- (void)imageStorage:(id)storage didFinishRemovingAllImagesForClientSubmissionIdentifier:(id)identifier;
- (void)submitCorrectionsRequest:(id)request traits:(id)traits parentProgress:(id)progress completion:(id)completion;
- (void)submitPhotosWithMetadata:(id)metadata withImageUploadResult:(id)result withCorrectionsRequest:(id)request traits:(id)traits parentProgress:(id)progress completion:(id)completion;
- (void)updateEventsForBackgroundURLSessionWithCompletionHandler:(id)handler;
@end

@implementation BackgroundFeedbackUploader

- (FeedbackUploaderStepObserver)uploadStepObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_uploadStepObserver);

  return WeakRetained;
}

- (void)_handleCorrectionsResponse:(id)response withData:(id)data withTaskDescription:(id)description
{
  dataCopy = data;
  descriptionCopy = description;
  if (!+[FeedbackSubmissionManager isStatusCodeSuccess:](FeedbackSubmissionManager, "isStatusCodeSuccess:", [response statusCode]))
  {
    goto LABEL_80;
  }

  v10 = objc_opt_class();
  v59 = dataCopy;
  v11 = dataCopy;
  v12 = [[PBDataReader alloc] initWithData:v11];
  selfCopy = self;
  if (![v12 readBigEndianFixed16] || !objc_msgSend(v12, "readBigEndianFixed32"))
  {
    v16 = sub_10002E924();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to parse the preamble", buf, 2u);
    }

    readProtoBuffer2 = v11;
    v14 = [[PBDataReader alloc] initWithData:readProtoBuffer2];
    GEOAlwaysUseV2PreambleForRequestKind();
    v17 = GEOProtocolBufferRequestPreamble();
    v18 = [v14 readBytes:{objc_msgSend(v17, "length")}];

    if ([v14 hasError])
    {
      readProtoBuffer = sub_10002E924();
      if (os_log_type_enabled(readProtoBuffer, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v20 = "Failed to parse the preamble (ARP)";
LABEL_14:
        _os_log_impl(&_mh_execute_header, readProtoBuffer, OS_LOG_TYPE_ERROR, v20, buf, 2u);
      }
    }

    else
    {
      [v14 readBigEndianFixed32];
      if (![v14 hasError])
      {
        readProtoBuffer = [v14 readProtoBuffer];
        v27 = [[PBDataReader alloc] initWithData:readProtoBuffer];
        if (([(objc_class *)v10 isValid:v14]& 1) != 0)
        {
          v15 = objc_alloc_init(v10);
          [v15 readFrom:v27];
        }

        else
        {
          v28 = sub_10002E924();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to parse the data (ARP)", buf, 2u);
          }

          v15 = 0;
        }

        goto LABEL_30;
      }

      readProtoBuffer = sub_10002E924();
      if (os_log_type_enabled(readProtoBuffer, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v20 = "Failed to parse request type (ARP)";
        goto LABEL_14;
      }
    }

    v15 = 0;
LABEL_30:

    goto LABEL_38;
  }

  readProtoBuffer2 = [v12 readProtoBuffer];
  v14 = [[PBDataReader alloc] initWithData:readProtoBuffer2];
  if (([(objc_class *)v10 isValid:v12]& 1) == 0)
  {
    v21 = v11;
    v22 = [[PBDataReader alloc] initWithData:v21];
    GEOAlwaysUseV2PreambleForRequestKind();
    v23 = GEOProtocolBufferRequestPreamble();
    v24 = [v22 readBytes:{objc_msgSend(v23, "length")}];

    if ([v22 hasError])
    {
      readProtoBuffer3 = sub_10002E924();
      if (os_log_type_enabled(readProtoBuffer3, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v26 = "Failed to parse the preamble (ARP)";
LABEL_24:
        _os_log_impl(&_mh_execute_header, readProtoBuffer3, OS_LOG_TYPE_ERROR, v26, buf, 2u);
      }
    }

    else
    {
      [v22 readBigEndianFixed32];
      if (![v22 hasError])
      {
        readProtoBuffer3 = [v22 readProtoBuffer];
        v29 = [[PBDataReader alloc] initWithData:readProtoBuffer3];
        if (([(objc_class *)v10 isValid:v22]& 1) != 0)
        {
          v15 = objc_alloc_init(v10);
          [v15 readFrom:v29];
        }

        else
        {
          v30 = sub_10002E924();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Failed to parse the data (ARP)", buf, 2u);
          }

          v15 = 0;
        }

        goto LABEL_37;
      }

      readProtoBuffer3 = sub_10002E924();
      if (os_log_type_enabled(readProtoBuffer3, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v26 = "Failed to parse request type (ARP)";
        goto LABEL_24;
      }
    }

    v15 = 0;
LABEL_37:

    self = selfCopy;
    goto LABEL_38;
  }

  v15 = objc_alloc_init(v10);
  [v15 readFrom:v14];
LABEL_38:

  v61 = &stru_1016631F0;
  *buf = -1;
  sub_100B0164C(descriptionCopy, &v61, buf);
  v31 = v61;
  v32 = [(RAPCorrectionsStorage *)self->_correctionsStorage correctionsDataForSubmissionIdentifier:v31];
  v33 = objc_opt_class();
  v34 = v32;
  v35 = [[PBDataReader alloc] initWithData:v34];
  if (![v35 readBigEndianFixed16] || !objc_msgSend(v35, "readBigEndianFixed32"))
  {
    v39 = sub_10002E924();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *v63 = 0;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Failed to parse the preamble", v63, 2u);
    }

    readProtoBuffer5 = v34;
    v37 = [[PBDataReader alloc] initWithData:readProtoBuffer5];
    GEOAlwaysUseV2PreambleForRequestKind();
    v40 = GEOProtocolBufferRequestPreamble();
    v41 = [v37 readBytes:{objc_msgSend(v40, "length")}];

    if ([v37 hasError])
    {
      readProtoBuffer4 = sub_10002E924();
      if (os_log_type_enabled(readProtoBuffer4, OS_LOG_TYPE_ERROR))
      {
        *v63 = 0;
        v43 = "Failed to parse the preamble (ARP)";
LABEL_50:
        _os_log_impl(&_mh_execute_header, readProtoBuffer4, OS_LOG_TYPE_ERROR, v43, v63, 2u);
      }
    }

    else
    {
      [v37 readBigEndianFixed32];
      if (![v37 hasError])
      {
        readProtoBuffer4 = [v37 readProtoBuffer];
        v49 = [[PBDataReader alloc] initWithData:readProtoBuffer4];
        if (([(objc_class *)v33 isValid:v37]& 1) != 0)
        {
          v38 = objc_alloc_init(v33);
          [v38 readFrom:v49];
        }

        else
        {
          v50 = sub_10002E924();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            *v63 = 0;
            _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "Failed to parse the data (ARP)", v63, 2u);
          }

          v38 = 0;
        }

        goto LABEL_66;
      }

      readProtoBuffer4 = sub_10002E924();
      if (os_log_type_enabled(readProtoBuffer4, OS_LOG_TYPE_ERROR))
      {
        *v63 = 0;
        v43 = "Failed to parse request type (ARP)";
        goto LABEL_50;
      }
    }

    v38 = 0;
LABEL_66:

    goto LABEL_74;
  }

  readProtoBuffer5 = [v35 readProtoBuffer];
  v37 = [[PBDataReader alloc] initWithData:readProtoBuffer5];
  if (([(objc_class *)v33 isValid:v35]& 1) == 0)
  {
    v58 = v34;
    v44 = [[PBDataReader alloc] initWithData:v58];
    GEOAlwaysUseV2PreambleForRequestKind();
    v45 = GEOProtocolBufferRequestPreamble();
    v46 = [v44 readBytes:{objc_msgSend(v45, "length")}];

    if ([v44 hasError])
    {
      readProtoBuffer6 = sub_10002E924();
      if (os_log_type_enabled(readProtoBuffer6, OS_LOG_TYPE_ERROR))
      {
        *v63 = 0;
        v48 = "Failed to parse the preamble (ARP)";
LABEL_60:
        _os_log_impl(&_mh_execute_header, readProtoBuffer6, OS_LOG_TYPE_ERROR, v48, v63, 2u);
      }
    }

    else
    {
      [v44 readBigEndianFixed32];
      if (![v44 hasError])
      {
        readProtoBuffer6 = [v44 readProtoBuffer];
        v57 = [[PBDataReader alloc] initWithData:readProtoBuffer6];
        if (([(objc_class *)v33 isValid:v44]& 1) != 0)
        {
          v38 = objc_alloc_init(v33);
          [v38 readFrom:v57];
        }

        else
        {
          v51 = sub_10002E924();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            *v63 = 0;
            _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_ERROR, "Failed to parse the data (ARP)", v63, 2u);
          }

          v38 = 0;
        }

        goto LABEL_73;
      }

      readProtoBuffer6 = sub_10002E924();
      if (os_log_type_enabled(readProtoBuffer6, OS_LOG_TYPE_ERROR))
      {
        *v63 = 0;
        v48 = "Failed to parse request type (ARP)";
        goto LABEL_60;
      }
    }

    v38 = 0;
LABEL_73:

    goto LABEL_74;
  }

  v38 = objc_alloc_init(v33);
  [v38 readFrom:v37];
LABEL_74:

  if ([v15 status])
  {
    v52 = sub_10002E924();
    v53 = selfCopy;
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      status = [v15 status];
      *v63 = 67109120;
      v64 = status;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, "Received a GEORPFeedbackResponse object with a bad status code %d", v63, 8u);
    }

    v55 = +[FeedbackSubmissionManager badFeedbackResponseErrorWithCode:](FeedbackSubmissionManager, "badFeedbackResponseErrorWithCode:", [v15 status]);
  }

  else
  {
    [UGCSubmissionStorage removeClientSubmissionIdentifier:v31];
    v55 = 0;
    v53 = selfCopy;
  }

  WeakRetained = objc_loadWeakRetained(&v53->_uploadStepObserver);
  [WeakRetained finishedCorrectionsUploadWithResponse:v15 request:v38 error:v55];

  dataCopy = v59;
LABEL_80:
}

- (void)_handleImageUploadResponse:(id)response withData:(id)data withTaskDescription:(id)description
{
  dataCopy = data;
  descriptionCopy = description;
  if (+[FeedbackSubmissionManager isStatusCodeSuccess:](FeedbackSubmissionManager, "isStatusCodeSuccess:", [response statusCode]))
  {
    v30 = 0;
    v10 = [NSJSONSerialization JSONObjectWithData:dataCopy options:0 error:&v30];
    v11 = v30;
    v12 = sub_10002E924();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Did receive json object", buf, 2u);
    }

    v13 = sub_10002E924();
    v14 = v13;
    if (v11)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v32 = v11;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to parse json object with error %@.  Probably means that we shouldn't include this in the final submission.  Bailing...", buf, 0xCu);
      }

      goto LABEL_22;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v32 = v10;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Did receive json object %@", buf, 0xCu);
    }

    v27 = 0;
    v28 = 0;
    v26 = 0;
    v15 = sub_100B014BC(descriptionCopy, &v28, &v27, &v26, &v29);
    v14 = v28;
    v16 = v27;
    v17 = v26;
    v18 = sub_10002E924();
    v19 = v18;
    if (v15)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Successfully parsed image upload task description for CloudKit receipt response", buf, 2u);
      }

      v20 = [(RAPImageResponseStorage *)self->_imageResponseStorage saveResponseData:dataCopy forSubmissionIdentifier:v14 imageIdentifier:v16];
      v21 = sub_10002E924();
      v19 = v21;
      if (v20)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v32 = v14;
          v33 = 2112;
          v34 = v16;
          v22 = "Successfully saved CloudKit receipt for submission identifier %@ and image identifier %@";
          v23 = v19;
          v24 = OS_LOG_TYPE_INFO;
LABEL_19:
          v25 = 22;
          goto LABEL_20;
        }
      }

      else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v32 = v14;
        v33 = 2112;
        v34 = v16;
        v22 = "Failed to save CloudKit receipt for submission identifier %@ and image identifier %@";
        v23 = v19;
        v24 = OS_LOG_TYPE_ERROR;
        goto LABEL_19;
      }
    }

    else if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v22 = "Failed to parse image upload task description for CloudKit receipt response";
      v23 = v19;
      v24 = OS_LOG_TYPE_ERROR;
      v25 = 2;
LABEL_20:
      _os_log_impl(&_mh_execute_header, v23, v24, v22, buf, v25);
    }

LABEL_22:
  }
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  dataCopy = data;
  taskCopy = task;
  taskDescription = [taskCopy taskDescription];
  v10 = sub_10002E924();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v13 = 134218242;
    v14 = [dataCopy length];
    v15 = 2112;
    v16 = taskDescription;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Did receive data of length %lu from task with description identifier %@", &v13, 0x16u);
  }

  v11 = sub_100B01308(taskDescription);
  response = [taskCopy response];

  if (v11 == 2)
  {
    [(BackgroundFeedbackUploader *)self _handleCorrectionsResponse:response withData:dataCopy withTaskDescription:taskDescription];
  }

  else if (v11 == 1)
  {
    [(BackgroundFeedbackUploader *)self _handleImageUploadResponse:response withData:dataCopy withTaskDescription:taskDescription];
  }
}

- (void)_dispatchCorrectionsUploadForSubmissionIdentifier:(id)identifier newRetryCount:(int64_t)count isPOIEnrichment:(BOOL)enrichment
{
  identifierCopy = identifier;
  v8 = [RAPCorrectionsStorage pathForFeedbackRequestForSubmissionIdentifier:identifierCopy];
  v9 = sub_10002E924();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = GEOURLString();
    *buf = 138412290;
    v24 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Choosing url %@", buf, 0xCu);
  }

  v11 = GEOGetURL();
  v12 = [NSMutableURLRequest requestWithURL:v11];
  [v12 setHTTPMethod:@"POST"];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1009B0638;
  v17[3] = &unk_101630ED0;
  v18 = v12;
  v19 = v8;
  v21 = v11;
  countCopy = count;
  v20 = identifierCopy;
  v13 = v11;
  v14 = identifierCopy;
  v15 = v8;
  v16 = v12;
  [(BackgroundFeedbackUploader *)self getSessionWithCompletionHandler:v17];
}

- (void)_dispatchImageUploadForImageURL:(id)l submissionIdentifier:(id)identifier clientImageIdentifier:(id)imageIdentifier httpType:(id)type newRetryCount:(int64_t)count
{
  lCopy = l;
  identifierCopy = identifier;
  imageIdentifierCopy = imageIdentifier;
  typeCopy = type;
  v16 = [RAPImageStorage filePathForSubmissionIdentifier:identifierCopy imageIdentifier:imageIdentifierCopy];
  v17 = [NSURL URLWithString:lCopy];
  v18 = [NSMutableURLRequest requestWithURL:v17];

  [v18 setHTTPMethod:typeCopy];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1009B09E0;
  v25[3] = &unk_101630EA8;
  v26 = v18;
  v27 = v16;
  v28 = identifierCopy;
  v29 = imageIdentifierCopy;
  v31 = lCopy;
  countCopy = count;
  v30 = typeCopy;
  v19 = lCopy;
  v20 = typeCopy;
  v21 = imageIdentifierCopy;
  v22 = identifierCopy;
  v23 = v16;
  v24 = v18;
  [(BackgroundFeedbackUploader *)self getSessionWithCompletionHandler:v25];
}

- (void)_logResponse:(id)response
{
  responseCopy = response;
  v4 = +[FeedbackSubmissionManager isStatusCodeSuccess:](FeedbackSubmissionManager, "isStatusCodeSuccess:", [responseCopy statusCode]);
  v5 = sub_10002E924();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v10 = 134217984;
      statusCode = [responseCopy statusCode];
      v7 = "The status code is good %lu";
      v8 = v6;
      v9 = OS_LOG_TYPE_INFO;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, v9, v7, &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v10 = 134217984;
    statusCode = [responseCopy statusCode];
    v7 = "The status code is bad and we cannot recover %lu";
    v8 = v6;
    v9 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }
}

- (void)_handleCorrectionsResubmissionWithSubmissionIdentifier:(id)identifier newRetryCount:(int64_t)count
{
  identifierCopy = identifier;
  v7 = [RAPCorrectionsStorage pathForFeedbackRequestForSubmissionIdentifier:identifierCopy];
  v8 = [BackgroundFeedbackUploader resubmissionDateWithRetryCount:count];
  v9 = [RAPFileManager haveContentsOfFilePathExpired:v7 withSuggestedRetryDate:v8];
  correctionsStorage = self->_correctionsStorage;
  if (!v9)
  {
    v11 = [(RAPCorrectionsStorage *)correctionsStorage correctionsDataForSubmissionIdentifier:identifierCopy];
    v36 = objc_opt_class();
    v12 = v11;
    v13 = [[PBDataReader alloc] initWithData:v12];
    if ([v13 readBigEndianFixed16] && objc_msgSend(v13, "readBigEndianFixed32"))
    {
      readProtoBuffer = [v13 readProtoBuffer];
      v15 = [[PBDataReader alloc] initWithData:readProtoBuffer];
      if (([(objc_class *)v36 isValid:v13]& 1) != 0)
      {
        v16 = objc_alloc_init(v36);
        [v16 readFrom:v15];
LABEL_40:

        -[BackgroundFeedbackUploader _dispatchCorrectionsUploadForSubmissionIdentifier:newRetryCount:isPOIEnrichment:](self, "_dispatchCorrectionsUploadForSubmissionIdentifier:newRetryCount:isPOIEnrichment:", identifierCopy, count, [v16 isPOIEnrichment]);
        goto LABEL_41;
      }

      v37 = readProtoBuffer;
      v34 = v12;
      v23 = [[PBDataReader alloc] initWithData:v34];
      GEOAlwaysUseV2PreambleForRequestKind();
      v24 = GEOProtocolBufferRequestPreamble();
      v25 = [v23 readBytes:{objc_msgSend(v24, "length")}];

      v33 = v23;
      if ([v23 hasError])
      {
        v26 = sub_10002E924();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *v44 = 0;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Failed to parse the preamble (ARP)", v44, 2u);
        }

        v16 = 0;
      }

      else
      {
        [v23 readBigEndianFixed32];
        if ([v23 hasError])
        {
          v26 = sub_10002E924();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            *v43 = 0;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Failed to parse request type (ARP)", v43, 2u);
          }

          v16 = 0;
        }

        else
        {
          readProtoBuffer2 = [v23 readProtoBuffer];
          v31 = [[PBDataReader alloc] initWithData:readProtoBuffer2];
          if (([(objc_class *)v36 isValid:v23]& 1) != 0)
          {
            v16 = objc_alloc_init(v36);
            [v16 readFrom:v31];
            v29 = v31;
            v26 = readProtoBuffer2;
          }

          else
          {
            v30 = sub_10002E924();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              *v42 = 0;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Failed to parse the data (ARP)", v42, 2u);
            }

            v16 = 0;
            v29 = v31;
            v26 = readProtoBuffer2;
          }
        }
      }

LABEL_39:
      readProtoBuffer = v37;
      goto LABEL_40;
    }

    v17 = sub_10002E924();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to parse the preamble", buf, 2u);
    }

    v37 = v12;
    v15 = [[PBDataReader alloc] initWithData:v37];
    GEOAlwaysUseV2PreambleForRequestKind();
    v18 = GEOProtocolBufferRequestPreamble();
    v19 = [v15 readBytes:{objc_msgSend(v18, "length")}];

    if ([v15 hasError])
    {
      readProtoBuffer3 = sub_10002E924();
      if (os_log_type_enabled(readProtoBuffer3, OS_LOG_TYPE_ERROR))
      {
        v41 = 0;
        v21 = "Failed to parse the preamble (ARP)";
        v22 = &v41;
LABEL_15:
        _os_log_impl(&_mh_execute_header, readProtoBuffer3, OS_LOG_TYPE_ERROR, v21, v22, 2u);
      }
    }

    else
    {
      [v15 readBigEndianFixed32];
      if (![v15 hasError])
      {
        v35 = v13;
        readProtoBuffer3 = [v15 readProtoBuffer];
        v27 = [[PBDataReader alloc] initWithData:readProtoBuffer3];
        if (([(objc_class *)v36 isValid:v15]& 1) != 0)
        {
          v16 = objc_alloc_init(v36);
          [v16 readFrom:v27];
        }

        else
        {
          v28 = sub_10002E924();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *v39 = 0;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to parse the data (ARP)", v39, 2u);
          }

          v16 = 0;
        }

        v13 = v35;
        goto LABEL_31;
      }

      readProtoBuffer3 = sub_10002E924();
      if (os_log_type_enabled(readProtoBuffer3, OS_LOG_TYPE_ERROR))
      {
        *v40 = 0;
        v21 = "Failed to parse request type (ARP)";
        v22 = v40;
        goto LABEL_15;
      }
    }

    v16 = 0;
LABEL_31:

    goto LABEL_39;
  }

  [(RAPCorrectionsStorage *)correctionsStorage removeCorrectionDataForSubmissionIdentifier:identifierCopy];
LABEL_41:
}

- (void)_handleCorrectionsUploadTask:(id)task withSessionError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  v24 = -1;
  taskDescription = [taskCopy taskDescription];
  v23 = &stru_1016631F0;
  v9 = sub_100B0164C(taskDescription, &v23, &v24);
  v10 = v23;

  v11 = sub_10002E924();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v26 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Submission Finished... Received a corrections upload task %@", buf, 0xCu);
  }

  if (v9)
  {
    v12 = v24;
    if (errorCopy)
    {
      v13 = sub_10002E924();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v26 = errorCopy;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Corrections upload task failed with error %@", buf, 0xCu);
      }

      [(BackgroundFeedbackUploader *)self _handleCorrectionsResubmissionWithSubmissionIdentifier:v10 newRetryCount:v12 + 1];
      goto LABEL_21;
    }

    response = [taskCopy response];
    [(BackgroundFeedbackUploader *)self _logResponse:response];
    if (!+[FeedbackSubmissionManager isStatusCodeSuccess:](FeedbackSubmissionManager, "isStatusCodeSuccess:", [response statusCode]))
    {
      [(BackgroundFeedbackUploader *)self _handleCorrectionsResubmissionWithSubmissionIdentifier:v10 newRetryCount:v12 + 1];
LABEL_20:

      goto LABEL_21;
    }

    v17 = [(RAPCorrectionsStorage *)self->_correctionsStorage removeCorrectionDataForSubmissionIdentifier:v10];
    v18 = sub_10002E924();
    v19 = v18;
    if (v17)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v26 = v10;
        v20 = "Successfully deleted corrections object %@";
        v21 = v19;
        v22 = OS_LOG_TYPE_INFO;
LABEL_18:
        _os_log_impl(&_mh_execute_header, v21, v22, v20, buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v26 = v10;
      v20 = "Failed to delete corrections object %@";
      v21 = v19;
      v22 = OS_LOG_TYPE_ERROR;
      goto LABEL_18;
    }

    goto LABEL_20;
  }

  v14 = sub_10002E924();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    taskDescription2 = [taskCopy taskDescription];
    *buf = 138412290;
    v26 = taskDescription2;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to parse task description %@", buf, 0xCu);
  }

LABEL_21:
}

- (void)_handleImageResubmissionWithUploadURL:(id)l submissionIdentifier:(id)identifier imageIdentifier:(id)imageIdentifier httpType:(id)type newRetryCount:(int64_t)count
{
  lCopy = l;
  typeCopy = type;
  imageIdentifierCopy = imageIdentifier;
  identifierCopy = identifier;
  v15 = [RAPImageStorage filePathForSubmissionIdentifier:identifierCopy imageIdentifier:imageIdentifierCopy];
  v16 = [BackgroundFeedbackUploader resubmissionDateWithRetryCount:count];
  if ([RAPFileManager haveContentsOfFilePathExpired:v15 withSuggestedRetryDate:v16])
  {
    [(RAPImageStorage *)self->_imageStorage removeImageForSubmissionIdentifier:identifierCopy imageIdentifier:imageIdentifierCopy];
  }

  else
  {
    [(BackgroundFeedbackUploader *)self _dispatchImageUploadForImageURL:lCopy submissionIdentifier:identifierCopy clientImageIdentifier:imageIdentifierCopy httpType:typeCopy newRetryCount:count];
  }
}

- (void)_handleImageUploadTask:(id)task withSessionError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  v34 = -1;
  taskDescription = [taskCopy taskDescription];
  v32 = &stru_1016631F0;
  v33 = &stru_1016631F0;
  v31 = @"PUT";
  v9 = sub_100B014BC(taskDescription, &v33, &v32, &v31, &v34);
  v10 = v33;
  v11 = v32;
  v12 = v31;

  if (v9)
  {
    v13 = v34;
    v14 = sub_10002E924();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v36 = v10;
      v37 = 2112;
      v38 = v11;
      v39 = 2048;
      v40 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "An image upload task with client uuid %@ and image uuid %@ completed and number of retries %ld", buf, 0x20u);
    }

    if (errorCopy)
    {
      originalRequest = [taskCopy originalRequest];
      v16 = [originalRequest URL];
      absoluteString = [v16 absoluteString];

      v18 = sub_10002E924();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v36 = absoluteString;
        v37 = 2112;
        v38 = errorCopy;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Image upload task failed to submit to url %@ with error %@", buf, 0x16u);
      }

      [(BackgroundFeedbackUploader *)self _handleImageResubmissionWithUploadURL:absoluteString submissionIdentifier:v10 imageIdentifier:v11 httpType:v12 newRetryCount:v13 + 1];
      goto LABEL_21;
    }

    absoluteString = [taskCopy response];
    if (![FeedbackSubmissionManager isStatusCodeSuccess:[absoluteString statusCode]])
    {
      v30 = v13;
      originalRequest2 = [taskCopy originalRequest];
      v27 = [originalRequest2 URL];
      absoluteString2 = [v27 absoluteString];

      v28 = sub_10002E924();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        statusCode = [absoluteString statusCode];
        *buf = 134218242;
        v36 = statusCode;
        v37 = 2112;
        v38 = absoluteString2;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Status code error for %lu for image url %@, so dispatching again", buf, 0x16u);
      }

      [(BackgroundFeedbackUploader *)self _handleImageResubmissionWithUploadURL:absoluteString2 submissionIdentifier:v10 imageIdentifier:v11 httpType:v12 newRetryCount:v30 + 1];
      goto LABEL_20;
    }

    [(BackgroundFeedbackUploader *)self _logResponse:absoluteString];
    v20 = [(RAPImageStorage *)self->_imageStorage removeImageForSubmissionIdentifier:v10 imageIdentifier:v11];
    v21 = sub_10002E924();
    absoluteString2 = v21;
    if (v20)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v36 = v11;
        v23 = "Successfully deleted image %@";
        v24 = absoluteString2;
        v25 = OS_LOG_TYPE_INFO;
LABEL_19:
        _os_log_impl(&_mh_execute_header, v24, v25, v23, buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v36 = v11;
      v23 = "Failed to delete image %@";
      v24 = absoluteString2;
      v25 = OS_LOG_TYPE_ERROR;
      goto LABEL_19;
    }

LABEL_20:

    goto LABEL_21;
  }

  absoluteString = sub_10002E924();
  if (os_log_type_enabled(absoluteString, OS_LOG_TYPE_ERROR))
  {
    taskDescription2 = [taskCopy taskDescription];
    *buf = 138412290;
    v36 = taskDescription2;
    _os_log_impl(&_mh_execute_header, absoluteString, OS_LOG_TYPE_ERROR, "Failed to parse task description %@", buf, 0xCu);
  }

LABEL_21:
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  taskDescription = [taskCopy taskDescription];
  v10 = sub_100B01308(taskDescription);

  if (v10 == 2)
  {
    [(BackgroundFeedbackUploader *)self _handleCorrectionsUploadTask:taskCopy withSessionError:errorCopy];
  }

  else if (v10 == 1)
  {
    [(BackgroundFeedbackUploader *)self _handleImageUploadTask:taskCopy withSessionError:errorCopy];
  }

  else
  {
    v11 = sub_10002E924();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      taskDescription2 = [taskCopy taskDescription];
      v13 = 138412290;
      v14 = taskDescription2;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to submit task with description %@", &v13, 0xCu);
    }
  }
}

- (void)imageStorage:(id)storage didFinishRemovingAllImagesForClientSubmissionIdentifier:(id)identifier
{
  storageCopy = storage;
  identifierCopy = identifier;
  v8 = sub_10002E924();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v20 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Removed all image storage for %@", buf, 0xCu);
  }

  v9 = [(RAPCorrectionsStorage *)self->_correctionsStorage correctionsDataForSubmissionIdentifier:identifierCopy];
  v10 = [[GEORPFeedbackRequest alloc] initWithData:v9];
  v11 = [(RAPImageResponseStorage *)self->_imageResponseStorage fetchImageUploadObjectsForSubmissionIdentifier:identifierCopy];
  v12 = sub_10002E924();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = [v11 count];
    *buf = 134217984;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Received %lu number of image upload data", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  WeakRetained = objc_loadWeakRetained(&self->_uploadStepObserver);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1009B1DF8;
  v16[3] = &unk_101630E80;
  objc_copyWeak(&v18, buf);
  v15 = identifierCopy;
  v17 = v15;
  [WeakRetained finishedUploadingImagesWithImageUpdate:v11 correctionsRequest:v10 completion:v16];

  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);
}

- (void)getSessionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  sessionQueue = self->_sessionQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1009B1F2C;
  v7[3] = &unk_101661090;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(sessionQueue, v7);
}

- (void)updateEventsForBackgroundURLSessionWithCompletionHandler:(id)handler
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1009B2088;
  v4[3] = &unk_101630E58;
  selfCopy = self;
  handlerCopy = handler;
  v3 = handlerCopy;
  [(BackgroundFeedbackUploader *)selfCopy getSessionWithCompletionHandler:v4];
}

- (BOOL)_saveAttachedImages:(id)images andUpdateCorrectionsRequest:(id)request withImageUploadInfoResult:(id)result submissionIdentifier:(id)identifier
{
  imagesCopy = images;
  requestCopy = request;
  resultCopy = result;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1009B24A8;
  v15[3] = &unk_101630E08;
  v15[4] = self;
  identifierCopy = identifier;
  v16 = identifierCopy;
  v17 = &v18;
  [resultCopy enumerateAndMatchPhotosWithMetadata:imagesCopy withBlock:v15];
  LOBYTE(self) = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  return self;
}

- (BOOL)_saveCorrections:(id)corrections submissionIdentifier:(id)identifier addARPCHeaders:(BOOL)headers
{
  headersCopy = headers;
  correctionsCopy = corrections;
  identifierCopy = identifier;
  data = [correctionsCopy data];
  v11 = data;
  if (!headersCopy)
  {
    v13 = data;
    goto LABEL_7;
  }

  v23 = data;
  v12 = GEOCreateBodyDataForProtocolBufferRequest();
  v13 = v23;

  v14 = sub_10002E924();
  v15 = v14;
  if (v12)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Successfully created data for protobuf %@", buf, 0xCu);
    }

LABEL_7:
    v16 = [(RAPCorrectionsStorage *)self->_correctionsStorage saveCorrections:v13 forSubmissionIdentifier:identifierCopy];
    v17 = sub_10002E924();
    v18 = v17;
    if (v16)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v25 = identifierCopy;
        v19 = "Successfully saved protobuf to disk %@";
        v20 = v18;
        v21 = OS_LOG_TYPE_INFO;
LABEL_12:
        _os_log_impl(&_mh_execute_header, v20, v21, v19, buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = identifierCopy;
      v19 = "Failed to save protobuf to disk %@";
      v20 = v18;
      v21 = OS_LOG_TYPE_ERROR;
      goto LABEL_12;
    }

    [UGCSubmissionStorage setMUIDAndSubmissionIdentifierWithCorrectionsRequest:correctionsCopy];
    goto LABEL_17;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v25 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to add ARPC headers for protobuf %@", buf, 0xCu);
  }

  LOBYTE(v16) = 0;
LABEL_17:

  return v16;
}

- (void)submitPhotosWithMetadata:(id)metadata withImageUploadResult:(id)result withCorrectionsRequest:(id)request traits:(id)traits parentProgress:(id)progress completion:(id)completion
{
  metadataCopy = metadata;
  resultCopy = result;
  requestCopy = request;
  completionCopy = completion;
  feedbackRequestParameters = [requestCopy feedbackRequestParameters];
  submissionParameters = [feedbackRequestParameters submissionParameters];
  clientSubmissionUuid = [submissionParameters clientSubmissionUuid];

  feedbackRequestParameters2 = [requestCopy feedbackRequestParameters];
  submissionParameters2 = [feedbackRequestParameters2 submissionParameters];
  hasClientSubmissionUuid = [submissionParameters2 hasClientSubmissionUuid];

  if (!hasClientSubmissionUuid || !clientSubmissionUuid)
  {
    v34 = sub_10002E924();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      feedbackRequestParameters3 = [requestCopy feedbackRequestParameters];
      submissionParameters3 = [feedbackRequestParameters3 submissionParameters];
      *buf = 138412290;
      v46 = submissionParameters3;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "submissionIdentifier is nil, please check submissionParameters: %@", buf, 0xCu);
    }

LABEL_17:
    v33 = +[FeedbackSubmissionManager failedToEnqueueSubmissionError];
    if (!completionCopy)
    {
      goto LABEL_19;
    }

LABEL_18:
    completionCopy[2](completionCopy, 0, v33);
    goto LABEL_19;
  }

  v22 = [(BackgroundFeedbackUploader *)self _saveAttachedImages:metadataCopy andUpdateCorrectionsRequest:requestCopy withImageUploadInfoResult:resultCopy submissionIdentifier:clientSubmissionUuid];
  v23 = [(BackgroundFeedbackUploader *)self _saveCorrections:requestCopy submissionIdentifier:clientSubmissionUuid addARPCHeaders:0];
  if (!v22 || (v23 & 1) == 0)
  {
    goto LABEL_17;
  }

  v37 = completionCopy;
  v38 = resultCopy;
  v39 = metadataCopy;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  imageUploadInfos = [resultCopy imageUploadInfos];
  v25 = [imageUploadInfos countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v41;
    do
    {
      for (i = 0; i != v26; i = i + 1)
      {
        if (*v41 != v27)
        {
          objc_enumerationMutation(imageUploadInfos);
        }

        v29 = *(*(&v40 + 1) + 8 * i);
        imageUploadUrl = [v29 imageUploadUrl];
        clientImageUuid = [v29 clientImageUuid];
        imageUploadHttpMethod = [v29 imageUploadHttpMethod];
        [(BackgroundFeedbackUploader *)self _dispatchImageUploadForImageURL:imageUploadUrl submissionIdentifier:clientSubmissionUuid clientImageIdentifier:clientImageUuid httpType:imageUploadHttpMethod newRetryCount:0];
      }

      v26 = [imageUploadInfos countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v26);
  }

  v33 = 0;
  resultCopy = v38;
  metadataCopy = v39;
  completionCopy = v37;
  if (v37)
  {
    goto LABEL_18;
  }

LABEL_19:
}

- (void)submitCorrectionsRequest:(id)request traits:(id)traits parentProgress:(id)progress completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  feedbackRequestParameters = [requestCopy feedbackRequestParameters];
  submissionParameters = [feedbackRequestParameters submissionParameters];
  clientSubmissionUuid = [submissionParameters clientSubmissionUuid];

  feedbackRequestParameters2 = [requestCopy feedbackRequestParameters];
  submissionParameters2 = [feedbackRequestParameters2 submissionParameters];
  hasClientSubmissionUuid = [submissionParameters2 hasClientSubmissionUuid];

  if (hasClientSubmissionUuid && clientSubmissionUuid)
  {
    if ([(BackgroundFeedbackUploader *)self _saveCorrections:requestCopy submissionIdentifier:clientSubmissionUuid addARPCHeaders:1])
    {
      -[BackgroundFeedbackUploader _dispatchCorrectionsUploadForSubmissionIdentifier:newRetryCount:isPOIEnrichment:](self, "_dispatchCorrectionsUploadForSubmissionIdentifier:newRetryCount:isPOIEnrichment:", clientSubmissionUuid, 0, [requestCopy isPOIEnrichment]);
      v16 = 0;
      if (!completionCopy)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v17 = sub_10002E924();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      feedbackRequestParameters3 = [requestCopy feedbackRequestParameters];
      submissionParameters3 = [feedbackRequestParameters3 submissionParameters];
      v20 = 138412290;
      v21 = submissionParameters3;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "submissionIdentifier is nil, please check submissionParameters: %@", &v20, 0xCu);
    }
  }

  v16 = +[FeedbackSubmissionManager failedToEnqueueSubmissionError];
  if (completionCopy)
  {
LABEL_10:
    completionCopy[2](completionCopy, 0, v16);
  }

LABEL_11:
}

- (BackgroundFeedbackUploader)initWithUploadStepObserver:(id)observer
{
  observerCopy = observer;
  v16.receiver = self;
  v16.super_class = BackgroundFeedbackUploader;
  v5 = [(BackgroundFeedbackUploader *)&v16 init];
  if (v5)
  {
    v6 = objc_alloc_init(RAPCorrectionsStorage);
    correctionsStorage = v5->_correctionsStorage;
    v5->_correctionsStorage = v6;

    v8 = [[RAPImageStorage alloc] initWithDelegate:v5];
    imageStorage = v5->_imageStorage;
    v5->_imageStorage = v8;

    v10 = objc_alloc_init(RAPImageResponseStorage);
    imageResponseStorage = v5->_imageResponseStorage;
    v5->_imageResponseStorage = v10;

    objc_storeWeak(&v5->_uploadStepObserver, observerCopy);
    v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v13 = dispatch_queue_create("BackgroundFeedbackUploader.sessionQueue", v12);
    sessionQueue = v5->_sessionQueue;
    v5->_sessionQueue = v13;
  }

  return v5;
}

+ (id)resubmissionDateWithRetryCount:(int64_t)count
{
  GEOConfigGetDouble();
  v5 = pow(v4, count);
  v6 = +[NSDate date];
  v7 = [v6 dateByAddingTimeInterval:v5];

  return v7;
}

@end