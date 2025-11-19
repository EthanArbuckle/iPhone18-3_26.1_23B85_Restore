@interface TKNFCHardwareManager
- (BOOL)isNFCSupportedWithError:(id *)a3;
- (TKNFCHardwareManager)init;
- (TKNFCHardwareManager)initWithHWManager:(id)a3;
- (id)startNFCReaderSession:(id)a3;
@end

@implementation TKNFCHardwareManager

- (TKNFCHardwareManager)init
{
  v6.receiver = self;
  v6.super_class = TKNFCHardwareManager;
  v2 = [(TKNFCHardwareManager *)&v6 init];
  if (v2 && objc_opt_class())
  {
    v3 = +[NFHardwareManager sharedHardwareManager];
    hwManager = v2->_hwManager;
    v2->_hwManager = v3;
  }

  return v2;
}

- (TKNFCHardwareManager)initWithHWManager:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TKNFCHardwareManager;
  v5 = [(TKNFCHardwareManager *)&v9 init];
  if (v5)
  {
    if (v4)
    {
      v6 = v4;
LABEL_6:
      hwManager = v5->_hwManager;
      v5->_hwManager = v6;

      goto LABEL_7;
    }

    if (objc_opt_class())
    {
      v6 = +[NFHardwareManager sharedHardwareManager];
      goto LABEL_6;
    }
  }

LABEL_7:

  return v5;
}

- (BOOL)isNFCSupportedWithError:(id *)a3
{
  hwManager = self->_hwManager;
  if (hwManager)
  {

    return [(NFHardwareManager *)hwManager areFeaturesSupported:1 outError:a3];
  }

  else
  {
    if (a3)
    {
      v7 = NSLocalizedDescriptionKey;
      v8 = @"NFC is not supported on this device";
      v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
      *a3 = [NSError errorWithDomain:TKErrorDomain code:-1 userInfo:v5];
    }

    return 0;
  }
}

- (id)startNFCReaderSession:(id)a3
{
  hwManager = self->_hwManager;
  if (hwManager)
  {
    v5 = a3;
    v6 = [(NFHardwareManager *)hwManager startReaderSessionWithActionSheetUI:v5];
  }

  else
  {
    v11 = NSLocalizedDescriptionKey;
    v12 = @"NFC is not supported on this device";
    v7 = a3;
    v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v9 = [NSError errorWithDomain:TKErrorDomain code:-1 userInfo:v8];
    (*(a3 + 2))(v7, 0, v9);

    v6 = 0;
  }

  return v6;
}

@end