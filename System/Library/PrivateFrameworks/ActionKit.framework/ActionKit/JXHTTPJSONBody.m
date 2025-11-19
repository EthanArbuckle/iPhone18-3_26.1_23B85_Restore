@interface JXHTTPJSONBody
+ (id)withData:(id)a3;
+ (id)withJSONObject:(id)a3;
+ (id)withString:(id)a3;
- (JXHTTPJSONBody)initWithData:(id)a3;
- (id)httpInputStream;
- (int64_t)httpContentLength;
@end

@implementation JXHTTPJSONBody

- (int64_t)httpContentLength
{
  v2 = [(JXHTTPJSONBody *)self requestData];
  v3 = [v2 length];

  return v3;
}

- (id)httpInputStream
{
  v3 = objc_alloc(MEMORY[0x277CBEAE0]);
  v4 = [(JXHTTPJSONBody *)self requestData];
  v5 = [v3 initWithData:v4];

  return v5;
}

- (JXHTTPJSONBody)initWithData:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = JXHTTPJSONBody;
  v5 = [(JXHTTPJSONBody *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(JXHTTPJSONBody *)v5 setRequestData:v4];
  }

  return v6;
}

+ (id)withJSONObject:(id)a3
{
  v11 = 0;
  v4 = [MEMORY[0x277CCAAA0] dataWithJSONObject:a3 options:0 error:&v11];
  v5 = v11;
  if (v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/JXHTTP/JXHTTP/JXHTTPJSONBody.m"];
    v7 = [v6 lastPathComponent];
    v8 = [v5 localizedDescription];
    NSLog(&cfstr_DError.isa, v7, 34, v8);
  }

  v9 = [a1 withData:v4];

  return v9;
}

+ (id)withString:(id)a3
{
  v4 = [a3 dataUsingEncoding:4];
  v5 = [a1 withData:v4];

  return v5;
}

+ (id)withData:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithData:v4];

  return v5;
}

@end