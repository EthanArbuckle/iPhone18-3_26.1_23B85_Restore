@interface FBABugFormAttachmentPreview
+ (BOOL)canPreviewItem:(id)item;
+ (BOOL)hasIps_dot_synced:(id)ips_dot_synced;
+ (BOOL)hasLog_dot_number:(id)log_dot_number;
+ (BOOL)urlPointsToTextFile:(id)file;
+ (id)URLByRemovingInvalidExtensions:(id)extensions;
+ (id)previewTypeURL:(id)l;
+ (id)textFileForString:(id)string withFileName:(id)name;
+ (id)textFileForURL:(id)l;
@end

@implementation FBABugFormAttachmentPreview

+ (id)textFileForString:(id)string withFileName:(id)name
{
  stringCopy = string;
  v6 = [name stringByAppendingPathExtension:@"txt"];
  v7 = NSTemporaryDirectory();
  v8 = [v7 stringByAppendingPathComponent:v6];
  v9 = [NSURL fileURLWithPath:v8];

  path = [v9 path];
  [stringCopy writeToFile:path atomically:1 encoding:4 error:0];

  return v9;
}

+ (id)textFileForURL:(id)l
{
  lCopy = l;
  v5 = [self URLByRemovingInvalidExtensions:lCopy];
  lastPathComponent = [v5 lastPathComponent];
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

  v8 = [stringByDeletingPathExtension stringByAppendingPathExtension:@"txt"];
  v9 = NSTemporaryDirectory();
  v10 = [v9 stringByAppendingPathComponent:v8];
  v11 = [NSURL fileURLWithPath:v10];

  v12 = +[NSFileManager defaultManager];
  [v12 removeItemAtURL:v11 error:0];

  v13 = +[NSFileManager defaultManager];
  v19 = 0;
  [v13 copyItemAtURL:lCopy toURL:v11 error:&v19];
  v14 = v19;

  v15 = v11;
  if (v14)
  {
    v16 = +[FBALog appHandle];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100094144(v14, v16);
    }

    v15 = lCopy;
  }

  v17 = v15;

  return v15;
}

+ (id)previewTypeURL:(id)l
{
  lCopy = l;
  pathExtension = [lCopy pathExtension];
  v5 = [pathExtension isEqualToString:@"synced"];

  uRLByDeletingPathExtension = lCopy;
  if (v5)
  {
    uRLByDeletingPathExtension = [lCopy URLByDeletingPathExtension];
  }

  return uRLByDeletingPathExtension;
}

+ (BOOL)canPreviewItem:(id)item
{
  itemCopy = item;
  v5 = [self previewTypeURL:itemCopy];
  pathExtension = [v5 pathExtension];
  v7 = [pathExtension isEqualToString:@"zip"];

  if (v7)
  {
    v8 = 0;
  }

  else if ([self urlPointsToTextFile:v5])
  {
    v8 = 1;
  }

  else
  {
    v8 = [QLPreviewController canPreviewItem:itemCopy];
  }

  return v8;
}

+ (BOOL)urlPointsToTextFile:(id)file
{
  selfCopy = self;
  v4 = [self URLByRemovingInvalidExtensions:file];
  pathExtension = [v4 pathExtension];
  LOBYTE(selfCopy) = [selfCopy extensionIsTextFile:pathExtension];

  return selfCopy;
}

+ (id)URLByRemovingInvalidExtensions:(id)extensions
{
  extensionsCopy = extensions;
  if (([self hasLog_dot_number:extensionsCopy] & 1) != 0 || objc_msgSend(self, "hasIps_dot_synced:", extensionsCopy))
  {
    uRLByDeletingPathExtension = [extensionsCopy URLByDeletingPathExtension];
  }

  else
  {
    uRLByDeletingPathExtension = extensionsCopy;
  }

  v6 = uRLByDeletingPathExtension;

  return v6;
}

+ (BOOL)hasIps_dot_synced:(id)ips_dot_synced
{
  ips_dot_syncedCopy = ips_dot_synced;
  lastPathComponent = [ips_dot_syncedCopy lastPathComponent];
  if ([lastPathComponent rangeOfString:@"ips"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    pathExtension = [ips_dot_syncedCopy pathExtension];
    v5 = [pathExtension isEqualToString:@"synced"];
  }

  return v5;
}

+ (BOOL)hasLog_dot_number:(id)log_dot_number
{
  log_dot_numberCopy = log_dot_number;
  lastPathComponent = [log_dot_numberCopy lastPathComponent];
  v10 = 0;
  v5 = [NSRegularExpression regularExpressionWithPattern:@"\\.log\\.[0-9]+" options:0 error:&v10];
  v6 = v10;
  if (v6)
  {
    v7 = +[FBALog appHandle];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000941BC(log_dot_numberCopy, v6, v7);
    }

    v8 = 0;
  }

  else
  {
    v8 = [v5 numberOfMatchesInString:lastPathComponent options:0 range:{0, objc_msgSend(lastPathComponent, "length")}] != 0;
  }

  return v8;
}

@end