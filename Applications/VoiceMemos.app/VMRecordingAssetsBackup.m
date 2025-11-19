@interface VMRecordingAssetsBackup
- (VMRecordingAssetsBackup)initWithComposedAVURL:(id)a3 duration:(double)a4 error:(id *)a5;
- (void)dealloc;
@end

@implementation VMRecordingAssetsBackup

- (VMRecordingAssetsBackup)initWithComposedAVURL:(id)a3 duration:(double)a4 error:(id *)a5
{
  v8 = a3;
  v22.receiver = self;
  v22.super_class = VMRecordingAssetsBackup;
  v9 = [(VMRecordingAssetsBackup *)&v22 init];
  if (!v9)
  {
    goto LABEL_4;
  }

  v10 = +[NSFileManager defaultManager];
  v11 = NSTemporaryDirectory();
  v12 = [NSURL fileURLWithPath:v11];
  v13 = [v10 URLForDirectory:99 inDomain:1 appropriateForURL:v12 create:1 error:a5];
  temporaryDirectoryURL = v9->_temporaryDirectoryURL;
  v9->_temporaryDirectoryURL = v13;

  v15 = v9->_temporaryDirectoryURL;
  if (!v15)
  {

    goto LABEL_6;
  }

  v16 = [v8 lastPathComponent];
  v17 = [(NSURL *)v15 URLByAppendingPathComponent:v16];
  composedAVURLBackup = v9->_composedAVURLBackup;
  v9->_composedAVURLBackup = v17;

  v9->_originalDuration = a4;
  v19 = [v10 copyItemAtURL:v8 toURL:v9->_composedAVURLBackup error:a5];

  if (!v19)
  {
LABEL_6:
    v20 = 0;
    goto LABEL_7;
  }

LABEL_4:
  v20 = v9;
LABEL_7:

  return v20;
}

- (void)dealloc
{
  v3 = +[NSFileManager defaultManager];
  v4 = [(VMRecordingAssetsBackup *)self temporaryDirectoryURL];
  [v3 removeItemAtURL:v4 error:0];

  v5.receiver = self;
  v5.super_class = VMRecordingAssetsBackup;
  [(VMRecordingAssetsBackup *)&v5 dealloc];
}

@end