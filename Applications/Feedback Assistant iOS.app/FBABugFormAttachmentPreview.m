@interface FBABugFormAttachmentPreview
+ (BOOL)canPreviewItem:(id)a3;
+ (BOOL)hasIps_dot_synced:(id)a3;
+ (BOOL)hasLog_dot_number:(id)a3;
+ (BOOL)urlPointsToTextFile:(id)a3;
+ (id)URLByRemovingInvalidExtensions:(id)a3;
+ (id)previewTypeURL:(id)a3;
+ (id)textFileForString:(id)a3 withFileName:(id)a4;
+ (id)textFileForURL:(id)a3;
@end

@implementation FBABugFormAttachmentPreview

+ (id)textFileForString:(id)a3 withFileName:(id)a4
{
  v5 = a3;
  v6 = [a4 stringByAppendingPathExtension:@"txt"];
  v7 = NSTemporaryDirectory();
  v8 = [v7 stringByAppendingPathComponent:v6];
  v9 = [NSURL fileURLWithPath:v8];

  v10 = [v9 path];
  [v5 writeToFile:v10 atomically:1 encoding:4 error:0];

  return v9;
}

+ (id)textFileForURL:(id)a3
{
  v4 = a3;
  v5 = [a1 URLByRemovingInvalidExtensions:v4];
  v6 = [v5 lastPathComponent];
  v7 = [v6 stringByDeletingPathExtension];

  v8 = [v7 stringByAppendingPathExtension:@"txt"];
  v9 = NSTemporaryDirectory();
  v10 = [v9 stringByAppendingPathComponent:v8];
  v11 = [NSURL fileURLWithPath:v10];

  v12 = +[NSFileManager defaultManager];
  [v12 removeItemAtURL:v11 error:0];

  v13 = +[NSFileManager defaultManager];
  v19 = 0;
  [v13 copyItemAtURL:v4 toURL:v11 error:&v19];
  v14 = v19;

  v15 = v11;
  if (v14)
  {
    v16 = +[FBALog appHandle];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100094144(v14, v16);
    }

    v15 = v4;
  }

  v17 = v15;

  return v15;
}

+ (id)previewTypeURL:(id)a3
{
  v3 = a3;
  v4 = [v3 pathExtension];
  v5 = [v4 isEqualToString:@"synced"];

  v6 = v3;
  if (v5)
  {
    v6 = [v3 URLByDeletingPathExtension];
  }

  return v6;
}

+ (BOOL)canPreviewItem:(id)a3
{
  v4 = a3;
  v5 = [a1 previewTypeURL:v4];
  v6 = [v5 pathExtension];
  v7 = [v6 isEqualToString:@"zip"];

  if (v7)
  {
    v8 = 0;
  }

  else if ([a1 urlPointsToTextFile:v5])
  {
    v8 = 1;
  }

  else
  {
    v8 = [QLPreviewController canPreviewItem:v4];
  }

  return v8;
}

+ (BOOL)urlPointsToTextFile:(id)a3
{
  v3 = a1;
  v4 = [a1 URLByRemovingInvalidExtensions:a3];
  v5 = [v4 pathExtension];
  LOBYTE(v3) = [v3 extensionIsTextFile:v5];

  return v3;
}

+ (id)URLByRemovingInvalidExtensions:(id)a3
{
  v4 = a3;
  if (([a1 hasLog_dot_number:v4] & 1) != 0 || objc_msgSend(a1, "hasIps_dot_synced:", v4))
  {
    v5 = [v4 URLByDeletingPathExtension];
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v6;
}

+ (BOOL)hasIps_dot_synced:(id)a3
{
  v3 = a3;
  v4 = [v3 lastPathComponent];
  if ([v4 rangeOfString:@"ips"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = [v3 pathExtension];
    v5 = [v6 isEqualToString:@"synced"];
  }

  return v5;
}

+ (BOOL)hasLog_dot_number:(id)a3
{
  v3 = a3;
  v4 = [v3 lastPathComponent];
  v10 = 0;
  v5 = [NSRegularExpression regularExpressionWithPattern:@"\\.log\\.[0-9]+" options:0 error:&v10];
  v6 = v10;
  if (v6)
  {
    v7 = +[FBALog appHandle];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000941BC(v3, v6, v7);
    }

    v8 = 0;
  }

  else
  {
    v8 = [v5 numberOfMatchesInString:v4 options:0 range:{0, objc_msgSend(v4, "length")}] != 0;
  }

  return v8;
}

@end