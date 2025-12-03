@interface JXHTTPFileBody
+ (id)withFilePath:(id)path contentType:(id)type;
- (JXHTTPFileBody)initWithFilePath:(id)path contentType:(id)type;
- (id)httpInputStream;
- (int64_t)httpContentLength;
@end

@implementation JXHTTPFileBody

- (int64_t)httpContentLength
{
  filePath = [(JXHTTPFileBody *)self filePath];
  v4 = [filePath length];

  if (!v4)
  {
    return -1;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  filePath2 = [(JXHTTPFileBody *)self filePath];
  v16 = 0;
  v7 = [defaultManager attributesOfItemAtPath:filePath2 error:&v16];
  v8 = v16;

  if (v8)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/JXHTTP/JXHTTP/JXHTTPFileBody.m"];
    lastPathComponent = [v9 lastPathComponent];
    localizedDescription = [v8 localizedDescription];
    NSLog(&cfstr_DError.isa, lastPathComponent, 41, localizedDescription);
  }

  v12 = [v7 objectForKey:*MEMORY[0x277CCA1C0]];
  v13 = v12;
  if (v12)
  {
    longLongValue = [v12 longLongValue];
  }

  else
  {
    longLongValue = -1;
  }

  return longLongValue;
}

- (id)httpInputStream
{
  v3 = objc_alloc(MEMORY[0x277CBEAE0]);
  filePath = [(JXHTTPFileBody *)self filePath];
  v5 = [v3 initWithFileAtPath:filePath];

  return v5;
}

- (JXHTTPFileBody)initWithFilePath:(id)path contentType:(id)type
{
  pathCopy = path;
  typeCopy = type;
  v11.receiver = self;
  v11.super_class = JXHTTPFileBody;
  v8 = [(JXHTTPFileBody *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(JXHTTPFileBody *)v8 setFilePath:pathCopy];
    [(JXHTTPFileBody *)v9 setHttpContentType:typeCopy];
  }

  return v9;
}

+ (id)withFilePath:(id)path contentType:(id)type
{
  typeCopy = type;
  pathCopy = path;
  v8 = [[self alloc] initWithFilePath:pathCopy contentType:typeCopy];

  return v8;
}

@end