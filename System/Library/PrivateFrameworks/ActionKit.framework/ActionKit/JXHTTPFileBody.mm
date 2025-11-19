@interface JXHTTPFileBody
+ (id)withFilePath:(id)a3 contentType:(id)a4;
- (JXHTTPFileBody)initWithFilePath:(id)a3 contentType:(id)a4;
- (id)httpInputStream;
- (int64_t)httpContentLength;
@end

@implementation JXHTTPFileBody

- (int64_t)httpContentLength
{
  v3 = [(JXHTTPFileBody *)self filePath];
  v4 = [v3 length];

  if (!v4)
  {
    return -1;
  }

  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [(JXHTTPFileBody *)self filePath];
  v16 = 0;
  v7 = [v5 attributesOfItemAtPath:v6 error:&v16];
  v8 = v16;

  if (v8)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/JXHTTP/JXHTTP/JXHTTPFileBody.m"];
    v10 = [v9 lastPathComponent];
    v11 = [v8 localizedDescription];
    NSLog(&cfstr_DError.isa, v10, 41, v11);
  }

  v12 = [v7 objectForKey:*MEMORY[0x277CCA1C0]];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 longLongValue];
  }

  else
  {
    v14 = -1;
  }

  return v14;
}

- (id)httpInputStream
{
  v3 = objc_alloc(MEMORY[0x277CBEAE0]);
  v4 = [(JXHTTPFileBody *)self filePath];
  v5 = [v3 initWithFileAtPath:v4];

  return v5;
}

- (JXHTTPFileBody)initWithFilePath:(id)a3 contentType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = JXHTTPFileBody;
  v8 = [(JXHTTPFileBody *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(JXHTTPFileBody *)v8 setFilePath:v6];
    [(JXHTTPFileBody *)v9 setHttpContentType:v7];
  }

  return v9;
}

+ (id)withFilePath:(id)a3 contentType:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithFilePath:v7 contentType:v6];

  return v8;
}

@end