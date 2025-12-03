@interface TKNFCHardwareManager
- (BOOL)isNFCSupportedWithError:(id *)error;
- (TKNFCHardwareManager)init;
- (TKNFCHardwareManager)initWithHWManager:(id)manager;
- (id)startNFCReaderSession:(id)session;
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

- (TKNFCHardwareManager)initWithHWManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = TKNFCHardwareManager;
  v5 = [(TKNFCHardwareManager *)&v9 init];
  if (v5)
  {
    if (managerCopy)
    {
      v6 = managerCopy;
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

- (BOOL)isNFCSupportedWithError:(id *)error
{
  hwManager = self->_hwManager;
  if (hwManager)
  {

    return [(NFHardwareManager *)hwManager areFeaturesSupported:1 outError:error];
  }

  else
  {
    if (error)
    {
      v7 = NSLocalizedDescriptionKey;
      v8 = @"NFC is not supported on this device";
      v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
      *error = [NSError errorWithDomain:TKErrorDomain code:-1 userInfo:v5];
    }

    return 0;
  }
}

- (id)startNFCReaderSession:(id)session
{
  hwManager = self->_hwManager;
  if (hwManager)
  {
    sessionCopy = session;
    v6 = [(NFHardwareManager *)hwManager startReaderSessionWithActionSheetUI:sessionCopy];
  }

  else
  {
    v11 = NSLocalizedDescriptionKey;
    v12 = @"NFC is not supported on this device";
    sessionCopy2 = session;
    v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v9 = [NSError errorWithDomain:TKErrorDomain code:-1 userInfo:v8];
    (*(session + 2))(sessionCopy2, 0, v9);

    v6 = 0;
  }

  return v6;
}

@end