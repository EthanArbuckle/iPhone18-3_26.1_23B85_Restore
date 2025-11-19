@interface COSInternalUserStudyAssetManager
+ (id)URLString;
+ (id)beamBridgeDetailInfo;
+ (id)bucketName;
+ (id)detailBundle;
+ (id)filePath;
+ (id)fileURLPath;
+ (id)keyIdentifier;
+ (id)path;
+ (id)userName;
+ (void)clearVideoFile;
- (id)metadata;
- (id)metadataProtoBuffer;
- (id)writeMetadataForProtobuf:(id)a3 withIdentifier:(id)a4;
- (id)writeObservationsForProtobuf:(id)a3 withIdentifier:(id)a4;
- (void)_completeStream;
- (void)_reportAssetLoaded;
- (void)createRadarForData:(id)a3;
- (void)requestDataForVideoAssetWithCompletion:(id)a3;
- (void)stream:(id)a3 handleEvent:(unint64_t)a4;
- (void)uploadData:(id)a3 withCompletion:(id)a4;
@end

@implementation COSInternalUserStudyAssetManager

+ (id)detailBundle
{
  v2 = [[NSBundle alloc] initWithPath:@"/AppleInternal/Library/Bundles/BeamBridge.bundle"];

  return v2;
}

+ (id)beamBridgeDetailInfo
{
  v2 = [a1 detailBundle];
  v3 = [v2 pathForResource:@"BeamBridgeDetail" ofType:@"plist"];
  v4 = [[NSDictionary alloc] initWithContentsOfFile:v3];

  return v4;
}

+ (id)filePath
{
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 temporaryDirectory];
  v5 = [v4 path];

  v6 = [a1 path];
  v7 = [NSString stringWithFormat:@"%@/%@", v5, v6];

  return v7;
}

+ (id)fileURLPath
{
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 temporaryDirectory];
  v5 = [v4 absoluteString];

  v6 = [a1 path];
  v7 = [NSString stringWithFormat:@"%@/%@", v5, v6];

  return v7;
}

+ (id)path
{
  v2 = [a1 beamBridgeDetailInfo];
  v3 = [v2 objectForKeyedSubscript:@"path"];

  return v3;
}

+ (id)userName
{
  v2 = [a1 beamBridgeDetailInfo];
  v3 = [v2 objectForKeyedSubscript:@"userName"];

  return v3;
}

+ (id)bucketName
{
  v2 = [a1 beamBridgeDetailInfo];
  v3 = [v2 objectForKeyedSubscript:@"bucketName"];

  return v3;
}

+ (id)URLString
{
  v2 = [a1 beamBridgeDetailInfo];
  v3 = [v2 objectForKeyedSubscript:@"URLString"];

  return v3;
}

+ (id)keyIdentifier
{
  v2 = [a1 beamBridgeDetailInfo];
  v3 = [v2 objectForKeyedSubscript:@"keyIdentifier"];

  return v3;
}

- (id)metadataProtoBuffer
{
  v2 = sub_10002D088();
  v3 = MGCopyAnswer();
  if (v2)
  {
    v4 = +[COSInternalUserStudyDataManager sharedManager];
    v5 = [v4 material];
    v6 = [v4 wristChoice];
    v7 = [v4 crownChoice];
    v8 = &stru_10026E598;
  }

  else
  {
    v9 = +[UIApplication sharedApplication];
    v4 = [v9 activeWatch];

    v10 = [v4 valueForProperty:NRDevicePropertyPairingID];
    v11 = [v4 valueForProperty:NRDevicePropertyLocalPairingDataStorePath];
    v8 = [v4 valueForProperty:NRDevicePropertyProductType];
    v12 = [v4 valueForProperty:NRDevicePropertyEnclosureMaterial];
    [v12 doubleValue];
    v5 = v13;

    v14 = [[NPSDomainAccessor alloc] initWithDomain:@"com.apple.nano" pairingID:v10 pairingDataStore:v11];
    v6 = [v14 BOOLForKey:@"wornOnRightArm"];
    v7 = [v14 BOOLForKey:@"invertUI"];
  }

  v15 = objc_alloc_init(COSBBUserStudyDataBlob);
  [(COSBBUserStudyDataBlob *)v15 setVersion:5];
  [(COSBBUserStudyDataBlob *)v15 setReportedRightWrist:v6];
  [(COSBBUserStudyDataBlob *)v15 setReportedCrownOrientation:v7];
  [(COSBBUserStudyDataBlob *)v15 setUserStudyVersion:v2];
  [(COSBBUserStudyDataBlob *)v15 setWatchSizeClass:0];
  [(COSBBUserStudyDataBlob *)v15 setWatchMaterial:v5];
  v27 = v8;
  [(COSBBUserStudyDataBlob *)v15 setWatchProductType:v8];
  [(COSBBUserStudyDataBlob *)v15 setPhoneProductType:v3];
  v16 = [UIApp setupController];
  v17 = [v16 visualDetector];

  v18 = objc_alloc_init(NSMutableArray);
  v19 = [v17 confidenceObservations];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v20 = [v19 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v29;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v28 + 1) + 8 * i);
        v25 = objc_alloc_init(COSBBScannedResults);
        [v24 observationTime];
        [(COSBBScannedResults *)v25 setTime:?];
        [v24 none];
        [(COSBBScannedResults *)v25 setNone:?];
        [v24 invalid];
        [(COSBBScannedResults *)v25 setInvalid:?];
        [v24 leftWristRightCrown];
        [(COSBBScannedResults *)v25 setLeftWristRightCrown:?];
        [v24 leftWristLeftCrown];
        [(COSBBScannedResults *)v25 setLeftWristLeftCrown:?];
        [v24 rightWristRightCrown];
        [(COSBBScannedResults *)v25 setRightWristRightCrown:?];
        [v24 rightWristLeftCrown];
        [(COSBBScannedResults *)v25 setRightWristLeftCrown:?];
        [v24 dock];
        [(COSBBScannedResults *)v25 setDock:?];
        [v24 palm];
        [(COSBBScannedResults *)v25 setPalm:?];
        [v18 addObject:v25];
      }

      v21 = [v19 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v21);
  }

  [(COSBBUserStudyDataBlob *)v15 setResults:v18];

  return v15;
}

- (id)metadata
{
  v2 = [(COSInternalUserStudyAssetManager *)self metadataProtoBuffer];
  v3 = [v2 data];

  return v3;
}

- (void)requestDataForVideoAssetWithCompletion:(id)a3
{
  v4 = a3;
  v5 = pbb_setup_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[COSInternalUserStudyAssetManager requestDataForVideoAssetWithCompletion:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  inputStream = self->_inputStream;
  if (!inputStream)
  {
    v7 = [NSInputStream alloc];
    v8 = [objc_opt_class() fileURLPath];
    v9 = [NSURL URLWithString:v8];
    v10 = [v7 initWithURL:v9];
    v11 = self->_inputStream;
    self->_inputStream = v10;

    [(NSInputStream *)self->_inputStream setDelegate:self];
    v12 = [(COSInternalUserStudyAssetManager *)self metadata];
    v13 = [NSMutableData alloc];
    v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%ld", [v12 length]);
    v15 = [v14 dataUsingEncoding:4];
    v16 = [v13 initWithData:v15];

    v17 = [v16 length];
    v18 = [v16 length];
    if (v17 > 0x63)
    {
      if (v18 >= 0x65)
      {
        v19 = pbb_setup_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Error: COSInternalUserStudyAssetManager Preamble was unexpected length!!", buf, 2u);
        }
      }
    }

    else
    {
      [v16 increaseLengthBy:100 - v18];
    }

    v20 = [[NSMutableData alloc] initWithData:v16];
    data = self->_data;
    self->_data = v20;

    [(NSMutableData *)self->_data appendData:v12];
    v22 = [v4 copy];
    videoAssetWithCompletion = self->_videoAssetWithCompletion;
    self->_videoAssetWithCompletion = v22;

    inputStream = self->_inputStream;
  }

  v24 = +[NSRunLoop currentRunLoop];
  [(NSInputStream *)inputStream scheduleInRunLoop:v24 forMode:NSDefaultRunLoopMode];

  [(NSInputStream *)self->_inputStream open];
}

- (void)_reportAssetLoaded
{
  if (self->_videoAssetWithCompletion)
  {
    v3 = pbb_setup_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Call out to completion.", v8, 2u);
    }

    (*(self->_videoAssetWithCompletion + 2))();
    videoAssetWithCompletion = self->_videoAssetWithCompletion;
    self->_videoAssetWithCompletion = 0;
  }

  inputStream = self->_inputStream;
  v6 = +[NSRunLoop currentRunLoop];
  [(NSInputStream *)inputStream removeFromRunLoop:v6 forMode:NSDefaultRunLoopMode];

  [(NSInputStream *)self->_inputStream close];
  data = self->_data;
  self->_data = 0;
}

- (void)_completeStream
{
  v3 = pbb_setup_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Completed Ingesting Blob", v6, 2u);
  }

  [(NSInputStream *)self->_inputStream close];
  inputStream = self->_inputStream;
  v5 = +[NSRunLoop mainRunLoop];
  [(NSInputStream *)inputStream removeFromRunLoop:v5 forMode:NSDefaultRunLoopMode];

  [(COSInternalUserStudyAssetManager *)self _reportAssetLoaded];
}

- (void)stream:(id)a3 handleEvent:(unint64_t)a4
{
  v6 = a3;
  v7 = v6;
  switch(a4)
  {
    case 0x10uLL:
      [(COSInternalUserStudyAssetManager *)self _completeStream];
      break;
    case 8uLL:
      v12 = pbb_setup_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "NSStreamEventErrorOccurred", buf, 2u);
      }

      break;
    case 2uLL:
      v8 = [v6 read:v16 maxLength:1024];
      v9 = v8;
      if ((v8 & 0x8000000000000000) != 0)
      {
        v13 = pbb_setup_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [NSNumber numberWithInteger:v9];
          *buf = 138412290;
          v18 = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "bytesRead was %@", buf, 0xCu);
        }
      }

      else if (v8)
      {
        v10 = [NSData dataWithBytes:v16 length:v8];
        [(NSMutableData *)self->_data appendData:v10];
        if (v9 <= 0x3FF)
        {
          v11 = pbb_setup_log();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Supplied bytes and did complete", buf, 2u);
          }

          [(COSInternalUserStudyAssetManager *)self _completeStream];
        }
      }

      else
      {
        v15 = pbb_setup_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Read an empty buffer", buf, 2u);
        }

        [(COSInternalUserStudyAssetManager *)self _completeStream];
      }

      break;
  }
}

- (void)uploadData:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() bucketName];
  v9 = +[NSUUID UUID];
  v10 = [v9 UUIDString];

  v11 = [objc_opt_class() URLString];
  v12 = [NSString stringWithFormat:@"%@/%@/%@", v11, v8, v10];

  v13 = [NSURL URLWithString:v12];
  v14 = [S3AccessConfig alloc];
  v15 = [objc_opt_class() keyIdentifier];
  v16 = [objc_opt_class() userName];
  v17 = [(S3AccessConfig *)v14 initWithAWSAccessKeyID:v15 AWSSecretAccessKey:v16];

  v18 = [[NSMutableURLRequest alloc] initWithURL:v13];
  v19 = [[S3Content alloc] initWithContent:v7 filename:v10 bucket:v8 gzip:1];

  [v18 s3_setS3HeadersWithContent:v19 accessConfig:v17];
  v20 = +[NSURLSession sharedSession];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1000B9B5C;
  v24[3] = &unk_10026AF50;
  v25 = v6;
  v21 = v6;
  v22 = [v20 dataTaskWithRequest:v18 completionHandler:v24];
  uploadTask = self->_uploadTask;
  self->_uploadTask = v22;

  [(NSURLSessionDataTask *)self->_uploadTask resume];
}

- (void)createRadarForData:(id)a3
{
  v4 = a3;
  v5 = +[NSUUID UUID];
  v6 = [v5 UUIDString];

  v7 = [NSString stringWithFormat:@"[BeamBridge] Offline Collection Report %@", v6];
  v8 = [(COSInternalUserStudyAssetManager *)self metadataProtoBuffer];
  if (v8)
  {
    v26 = [(COSInternalUserStudyAssetManager *)self writeMetadataForProtobuf:v8 withIdentifier:v6];
    v9 = [(COSInternalUserStudyAssetManager *)self writeObservationsForProtobuf:v8 withIdentifier:v6];
    v10 = +[COSInternalUserStudyAssetManager filePath];
    v11 = [NSString stringWithFormat:@"%@, %@, %@", v10, v26, v9];

    v12 = objc_alloc_init(NSMutableArray);
    v13 = [NSURLQueryItem queryItemWithName:@"ComponentID" value:@"601337"];
    [v12 addObject:v13];

    v14 = [NSURLQueryItem queryItemWithName:@"ComponentName" value:@"Pepper UI UtilityBelt"];
    [v12 addObject:v14];

    v15 = [NSURLQueryItem queryItemWithName:@"ComponentVersion" value:@"1.0"];
    [v12 addObject:v15];

    v16 = [NSURLQueryItem queryItemWithName:@"Classification" value:@"Task"];
    [v12 addObject:v16];

    v17 = [NSURLQueryItem queryItemWithName:@"Reproducibility" value:@"Not Applicable"];
    [v12 addObject:v17];

    v18 = [NSURLQueryItem queryItemWithName:@"Title" value:v7];
    [v12 addObject:v18];

    v19 = [NSURLQueryItem queryItemWithName:@"AutoDiagnostics" value:@"0"];
    [v12 addObject:v19];

    v20 = [NSURLQueryItem queryItemWithName:@"Description" value:@"BeamBridge Collection"];
    [v12 addObject:v20];

    v21 = [NSURLQueryItem queryItemWithName:@"Attachments" value:v11];
    [v12 addObject:v21];

    v22 = objc_alloc_init(NSURLComponents);
    [v22 setScheme:@"tap-to-radar"];
    [v22 setHost:@"new"];
    [v22 setQueryItems:v12];
    v23 = +[LSApplicationWorkspace defaultWorkspace];
    v24 = [v22 URL];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000BA064;
    v28[3] = &unk_10026AF78;
    v29 = v4;
    [v23 openURL:v24 configuration:0 completionHandler:v28];
  }

  else
  {
    v25 = pbb_bridge_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "ML Samples had no Metadata!", buf, 2u);
    }

    (*(v4 + 2))(v4, 0, 0);
  }
}

- (id)writeMetadataForProtobuf:(id)a3 withIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(NSMutableString);
  v8 = objc_alloc_init(NSMutableString);
  if ([v5 hasVersion])
  {
    [v7 appendString:@"Version\t"];
    v9 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v5 version]);
    v10 = [NSString stringWithFormat:@"%@\t", v9];
    [v8 appendString:v10];
  }

  if ([v5 hasReportedRightWrist])
  {
    [v7 appendString:@"RightWrist\t"];
    v11 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v5 reportedRightWrist]);
    v12 = [NSString stringWithFormat:@"%@\t", v11];
    [v8 appendString:v12];
  }

  if ([v5 hasReportedCrownOrientation])
  {
    [v7 appendString:@"CrownOrientation\t"];
    v13 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v5 reportedCrownOrientation]);
    v14 = [NSString stringWithFormat:@"%@\t", v13];
    [v8 appendString:v14];
  }

  if ([v5 hasUserStudyVersion])
  {
    [v7 appendString:@"UserStudyVersion\t"];
    v15 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v5 userStudyVersion]);
    v16 = [NSString stringWithFormat:@"%@\t", v15];
    [v8 appendString:v16];
  }

  if ([v5 hasWatchSizeClass])
  {
    [v7 appendString:@"WatchSizeClass\t"];
    v17 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v5 watchSizeClass]);
    v18 = [NSString stringWithFormat:@"%@\t", v17];
    [v8 appendString:v18];
  }

  if ([v5 hasWatchMaterial])
  {
    [v7 appendString:@"WatchMaterial\t"];
    v19 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v5 watchMaterial]);
    v20 = [NSString stringWithFormat:@"%@\t", v19];
    [v8 appendString:v20];
  }

  if ([v5 hasWatchProductType])
  {
    [v7 appendString:@"WatchProductType\t"];
    v21 = [v5 watchProductType];
    v22 = [NSString stringWithFormat:@"%@\t", v21];
    [v8 appendString:v22];
  }

  if ([v5 hasPhoneProductType])
  {
    [v7 appendString:@"PhoneProductType\t"];
    v23 = [v5 phoneProductType];
    v24 = [NSString stringWithFormat:@"%@\t", v23];
    [v8 appendString:v24];
  }

  if ([v5 hasDetectedRightWrist])
  {
    [v7 appendString:@"ML RightWrist\t"];
    v25 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v5 detectedRightWrist]);
    v26 = [NSString stringWithFormat:@"%@\t", v25];
    [v8 appendString:v26];
  }

  if ([v5 hasDetectedCrownOrientation])
  {
    [v7 appendString:@"ML Crown\t"];
    v27 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v5 detectedCrownOrientation]);
    v28 = [NSString stringWithFormat:@"%@\t", v27];
    [v8 appendString:v28];
  }

  if ([v5 hasDetectedConfidence])
  {
    [v7 appendString:@"ML Confidence\t"];
    [v5 detectedConfidence];
    v29 = [NSNumber numberWithDouble:?];
    v30 = [NSString stringWithFormat:@"%@\t", v29];
    [v8 appendString:v30];
  }

  v31 = [NSString stringWithFormat:@"%@\n%@", v7, v8];
  v32 = +[NSFileManager defaultManager];
  v33 = [v32 temporaryDirectory];
  v34 = [v33 path];
  v35 = [NSString stringWithFormat:@"%@/%@", v34, v6];

  v36 = [v35 stringByAppendingString:@".csv"];
  v42 = 0;
  LODWORD(v34) = [v31 writeToFile:v36 atomically:1 encoding:4 error:&v42];
  v37 = v42;
  v38 = pbb_bridge_log();
  v39 = v38;
  if (v34)
  {
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    *buf = 138412546;
    v44 = v36;
    v45 = 2112;
    v46 = v37;
    v40 = "Wrote Metadata text to: %@ -- %@";
    goto LABEL_29;
  }

  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v44 = v36;
    v45 = 2112;
    v46 = v37;
    v40 = "Failed to write Metadata text to: %@ -- %@";
LABEL_29:
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, v40, buf, 0x16u);
  }

LABEL_30:

  return v36;
}

- (id)writeObservationsForProtobuf:(id)a3 withIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 results];
  if (v7)
  {
    v8 = [v5 results];
    v9 = [v8 count];

    if (!v9)
    {
      v7 = 0;
      goto LABEL_56;
    }

    v10 = objc_alloc_init(NSMutableString);
    v11 = objc_alloc_init(NSMutableString);
    v12 = [v5 results];
    v13 = [v12 firstObject];

    if ([v13 hasTime])
    {
      [v10 appendFormat:@"Time\t"];
    }

    if ([v13 hasNone])
    {
      [v10 appendFormat:@"None\t"];
    }

    if ([v13 hasInvalid])
    {
      [v10 appendFormat:@"Invalid\t"];
    }

    [v13 leftWristRightCrown];
    if (v14 != 0.0)
    {
      [v10 appendFormat:@"LW-RC\t"];
    }

    [v13 leftWristLeftCrown];
    if (v15 != 0.0)
    {
      [v10 appendFormat:@"LW-LC\t"];
    }

    [v13 rightWristRightCrown];
    if (v16 != 0.0)
    {
      [v10 appendFormat:@"RW-RC\t"];
    }

    [v13 rightWristLeftCrown];
    if (v17 != 0.0)
    {
      [v10 appendFormat:@"RW-LC\t"];
    }

    [v13 dock];
    if (v18 != 0.0)
    {
      [v10 appendFormat:@"Dock\t"];
    }

    v52 = v13;
    [v13 palm];
    if (v19 != 0.0)
    {
      [v10 appendFormat:@"Palm\t"];
    }

    v53 = v10;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = v5;
    v20 = [v5 results];
    v21 = [v20 countByEnumeratingWithState:&v56 objects:v64 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v57;
      do
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v57 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v56 + 1) + 8 * i);
          if ([v25 hasTime])
          {
            [v25 time];
            v26 = [NSNumber numberWithDouble:?];
            [v11 appendFormat:@"%@", v26];
          }

          [v11 appendFormat:@"\t"];
          if ([v25 hasNone])
          {
            [v25 none];
            [v11 appendFormat:@"%.3f", v27];
          }

          [v11 appendFormat:@"\t"];
          if ([v25 hasInvalid])
          {
            [v25 invalid];
            [v11 appendFormat:@"%.3f", v28];
          }

          [v11 appendFormat:@"\t"];
          [v25 leftWristRightCrown];
          if (v29 != 0.0)
          {
            [v25 leftWristRightCrown];
            [v11 appendFormat:@"%.3f", v30];
          }

          [v11 appendFormat:@"\t"];
          [v25 leftWristLeftCrown];
          if (v31 != 0.0)
          {
            [v25 leftWristLeftCrown];
            [v11 appendFormat:@"%.3f", v32];
          }

          [v11 appendFormat:@"\t"];
          [v25 rightWristRightCrown];
          if (v33 != 0.0)
          {
            [v25 rightWristRightCrown];
            [v11 appendFormat:@"%.3f", v34];
          }

          [v11 appendFormat:@"\t"];
          [v25 rightWristLeftCrown];
          if (v35 != 0.0)
          {
            [v25 rightWristLeftCrown];
            [v11 appendFormat:@"%.3f", v36];
          }

          [v11 appendFormat:@"\t"];
          [v25 dock];
          if (v37 != 0.0)
          {
            [v25 dock];
            [v11 appendFormat:@"%.3f", v38];
          }

          [v11 appendFormat:@"\t"];
          [v25 palm];
          if (v39 != 0.0)
          {
            [v25 palm];
            [v11 appendFormat:@"%.3f", v40];
          }

          [v11 appendFormat:@"\n"];
        }

        v22 = [v20 countByEnumeratingWithState:&v56 objects:v64 count:16];
      }

      while (v22);
    }

    v41 = [NSString stringWithFormat:@"%@\n%@", v53, v11];
    v42 = +[NSFileManager defaultManager];
    v43 = [v42 temporaryDirectory];
    v44 = [v43 path];
    v7 = [NSString stringWithFormat:@"%@/o%@.csv", v44, v6];

    v55 = 0;
    v45 = [v41 writeToFile:v7 atomically:1 encoding:4 error:&v55];
    v46 = v55;
    v47 = pbb_bridge_log();
    v48 = os_log_type_enabled(v47, OS_LOG_TYPE_ERROR);
    if (v45)
    {
      v5 = v54;
      v49 = v52;
      if (!v48 || !os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_55;
      }

      *buf = 138412546;
      v61 = v7;
      v62 = 2112;
      v63 = v46;
      v50 = "Wrote Observation text to: %@ -- %@";
    }

    else
    {
      v5 = v54;
      v49 = v52;
      if (!v48 || !os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_55;
      }

      *buf = 138412546;
      v61 = v7;
      v62 = 2112;
      v63 = v46;
      v50 = "Failed to write Observation text to: %@ -- %@";
    }

    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, v50, buf, 0x16u);
LABEL_55:
  }

LABEL_56:

  return v7;
}

+ (void)clearVideoFile
{
  v3 = +[NSFileManager defaultManager];
  v2 = +[COSInternalUserStudyAssetManager filePath];
  [v3 removeItemAtPath:v2 error:0];
}

@end