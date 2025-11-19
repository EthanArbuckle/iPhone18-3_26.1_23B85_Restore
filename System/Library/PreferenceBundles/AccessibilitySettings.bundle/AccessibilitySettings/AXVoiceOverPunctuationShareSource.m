@interface AXVoiceOverPunctuationShareSource
- (AXVoiceOverPunctuationShareSource)initWithData:(id)a3 fileName:(id)a4;
- (NSURL)fileURL;
- (id)activityViewControllerPlaceholderItem:(id)a3;
- (void)dealloc;
@end

@implementation AXVoiceOverPunctuationShareSource

- (AXVoiceOverPunctuationShareSource)initWithData:(id)a3 fileName:(id)a4
{
  v31.receiver = self;
  v31.super_class = AXVoiceOverPunctuationShareSource;
  v5 = a4;
  v6 = a3;
  v7 = [(AXVoiceOverPunctuationShareSource *)&v31 init];
  v8 = NSTemporaryDirectory();
  v9 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v10 = [v5 scrStringByReplacingCharactersInSet:v9 withString:@"_"];

  v11 = [NSString stringWithFormat:@"%@", v10];
  v12 = [v11 stringByAppendingPathExtension:AXSSPunctutionGroupFileExtension];

  v13 = [v8 stringByAppendingPathComponent:v12];
  [(AXVoiceOverPunctuationShareSource *)v7 setPath:v13];

  v14 = +[NSFileManager defaultManager];
  v15 = [(AXVoiceOverPunctuationShareSource *)v7 path];
  v16 = [v14 fileExistsAtPath:v15];

  if (v16)
  {
    v17 = +[NSFileManager defaultManager];
    v18 = [(AXVoiceOverPunctuationShareSource *)v7 fileURL];
    v30 = 0;
    [v17 removeItemAtURL:v18 error:&v30];
    v19 = v30;

    if (v19)
    {
      v20 = AXLogPunctuationStorage();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [AXVoiceOverPunctuationShareSource initWithData:v19 fileName:v20];
      }
    }
  }

  v21 = AXLogPunctuationStorage();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = [(AXVoiceOverPunctuationShareSource *)v7 path];
    *buf = 138412290;
    v35 = v22;
    _os_log_impl(&dword_0, v21, OS_LOG_TYPE_INFO, "Creating share file at: %@", buf, 0xCu);
  }

  v23 = +[NSFileManager defaultManager];
  v24 = [(AXVoiceOverPunctuationShareSource *)v7 path];
  v32 = NSFilePosixPermissions;
  v33 = &off_27A830;
  v25 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
  v26 = [v23 createFileAtPath:v24 contents:v6 attributes:v25];

  if (v26)
  {
    v27 = v7;
  }

  else
  {
    v28 = AXLogPunctuationStorage();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [AXVoiceOverPunctuationShareSource initWithData:v7 fileName:v28];
    }

    v27 = 0;
  }

  return v27;
}

- (NSURL)fileURL
{
  v2 = [(AXVoiceOverPunctuationShareSource *)self path];
  v3 = [NSURL fileURLWithPath:v2];

  return v3;
}

- (id)activityViewControllerPlaceholderItem:(id)a3
{
  v3 = [(AXVoiceOverPunctuationShareSource *)self path];
  v4 = [NSURL fileURLWithPath:v3];

  return v4;
}

- (void)dealloc
{
  v3 = +[NSFileManager defaultManager];
  v4 = [(AXVoiceOverPunctuationShareSource *)self fileURL];
  [v3 removeItemAtURL:v4 error:0];

  v5.receiver = self;
  v5.super_class = AXVoiceOverPunctuationShareSource;
  [(AXVoiceOverPunctuationShareSource *)&v5 dealloc];
}

- (void)initWithData:(uint64_t)a1 fileName:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Err deleting old share: %@", &v2, 0xCu);
}

- (void)initWithData:(void *)a1 fileName:(NSObject *)a2 .cold.2(void *a1, NSObject *a2)
{
  v3 = [a1 path];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Err creating share: %@", &v4, 0xCu);
}

@end