@interface CBQRCodeScanner
- (BOOL)startScan;
- (CBQRCodeScanner)initWithScanCompletion:(id)a3;
- (id)setupQRCodeScanner;
- (void)captureOutput:(id)a3 didOutputMetadataObjects:(id)a4 fromConnection:(id)a5;
- (void)stopScan;
@end

@implementation CBQRCodeScanner

- (CBQRCodeScanner)initWithScanCompletion:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CBQRCodeScanner;
  v5 = [(CBQRCodeScanner *)&v11 init];
  if (v5)
  {
    v6 = objc_retainBlock(v4);
    scanCompletion = v5->_scanCompletion;
    v5->_scanCompletion = v6;

    v5->_scanCompleted = 0;
    v8 = [(CBQRCodeScanner *)v5 setupQRCodeScanner];
    captureSession = v5->_captureSession;
    v5->_captureSession = v8;

    if (!v5->_captureSession)
    {

      v5 = 0;
    }
  }

  return v5;
}

- (id)setupQRCodeScanner
{
  v2 = objc_alloc_init(AVCaptureSession);
  v3 = [AVCaptureDevice defaultDeviceWithDeviceType:AVCaptureDeviceTypeBuiltInWideAngleCamera mediaType:AVMediaTypeVideo position:1];
  if (!v3)
  {
    v7 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to get default rear camera. Performing discovery of cameras", &v17, 2u);
    }

    v19 = AVCaptureDeviceTypeBuiltInWideAngleCamera;
    v8 = [NSArray arrayWithObjects:&v19 count:1];
    v3 = [AVCaptureDeviceDiscoverySession discoverySessionWithDeviceTypes:v8 mediaType:AVMediaTypeVideo position:1];

    v9 = [v3 devices];
    v10 = [v9 count];

    v11 = CheckerBoardLogHandleForCategory();
    v4 = v11;
    if (!v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10004749C();
      }

      goto LABEL_18;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v3 devices];
      v13 = [v12 count];
      v17 = 134217984;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Found %lu devices. Using first one", &v17, 0xCu);
    }

    v14 = [v3 devices];
    v15 = [v14 firstObject];

    if (!v15)
    {
      v4 = CheckerBoardLogHandleForCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_100047468();
      }

      goto LABEL_18;
    }

    v3 = v15;
  }

  [v2 setSessionPreset:AVCaptureSessionPresetPhoto];
  v4 = [[AVCaptureDeviceInput alloc] initWithDevice:v3 error:0];
  if ([v2 canAddInput:v4])
  {
    [v2 addInput:v4];
    v5 = v2;
    goto LABEL_19;
  }

  v6 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100047434();
  }

LABEL_18:
  v5 = 0;
LABEL_19:

  return v5;
}

- (BOOL)startScan
{
  [(CBQRCodeScanner *)self setScanCompleted:0];
  v3 = [(CBQRCodeScanner *)self captureSession];

  if (!v3)
  {
    return 0;
  }

  v4 = objc_alloc_init(AVCaptureMetadataOutput);
  v5 = [(CBQRCodeScanner *)self captureSession];
  [v5 addOutput:v4];

  [v4 setMetadataObjectsDelegate:self queue:&_dispatch_main_q];
  v6 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 availableMetadataObjectTypes];
    *buf = 138412290;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Available metadata object types: %@", buf, 0xCu);
  }

  v8 = [v4 availableMetadataObjectTypes];
  v9 = [v8 containsObject:AVMetadataObjectTypeQRCode];

  if (v9)
  {
    v14 = AVMetadataObjectTypeQRCode;
    v10 = [NSArray arrayWithObjects:&v14 count:1];
    [v4 setMetadataObjectTypes:v10];

    v11 = [(CBQRCodeScanner *)self captureSession];
    [v11 commitConfiguration];

    v12 = [(CBQRCodeScanner *)self captureSession];
    [v12 startRunning];
  }

  else
  {
    v12 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000474D0();
    }
  }

  return v9;
}

- (void)stopScan
{
  [(CBQRCodeScanner *)self setScanCompleted:1];
  v3 = [(CBQRCodeScanner *)self captureSession];

  if (v3)
  {
    v4 = [(CBQRCodeScanner *)self captureSession];
    [v4 stopRunning];
  }
}

- (void)captureOutput:(id)a3 didOutputMetadataObjects:(id)a4 fromConnection:(id)a5
{
  v6 = a4;
  if (![(CBQRCodeScanner *)self scanCompleted])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v20 = v6;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (!v8)
    {
      goto LABEL_23;
    }

    v9 = v8;
    v10 = *v25;
    v21 = AVMetadataObjectTypeAppClipCode;
    while (1)
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v24 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
          v14 = [v13 stringValue];
          if (v14)
          {
            v15 = v14;
            v16 = [v13 type];

            if (v16 != v21)
            {
              v17 = v15;
              goto LABEL_11;
            }

            v18 = [NSScanner scannerWithString:v15];
            v23 = 0;
            [v18 scanHexInt:&v23];
            v17 = [NSString stringWithFormat:@"%6d", v23];

            if ([v17 length] == 6 && objc_msgSend(v17, "intValue"))
            {

              if (!v17)
              {
                goto LABEL_20;
              }

LABEL_11:
              [(CBQRCodeScanner *)self setScanCompleted:1];
              v18 = [(CBQRCodeScanner *)self scanCompletion];
              (v18)[2](v18, v17);
            }

            else
            {
              v19 = CheckerBoardLogHandleForCategory();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Found AppClip code is in an invalid format. Skipping", buf, 2u);
              }
            }
          }

LABEL_20:
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (!v9)
      {
LABEL_23:

        v6 = v20;
        break;
      }
    }
  }
}

@end