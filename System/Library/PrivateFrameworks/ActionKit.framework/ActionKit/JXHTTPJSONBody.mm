@interface JXHTTPJSONBody
+ (id)withData:(id)data;
+ (id)withJSONObject:(id)object;
+ (id)withString:(id)string;
- (JXHTTPJSONBody)initWithData:(id)data;
- (id)httpInputStream;
- (int64_t)httpContentLength;
@end

@implementation JXHTTPJSONBody

- (int64_t)httpContentLength
{
  requestData = [(JXHTTPJSONBody *)self requestData];
  v3 = [requestData length];

  return v3;
}

- (id)httpInputStream
{
  v3 = objc_alloc(MEMORY[0x277CBEAE0]);
  requestData = [(JXHTTPJSONBody *)self requestData];
  v5 = [v3 initWithData:requestData];

  return v5;
}

- (JXHTTPJSONBody)initWithData:(id)data
{
  dataCopy = data;
  v8.receiver = self;
  v8.super_class = JXHTTPJSONBody;
  v5 = [(JXHTTPJSONBody *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(JXHTTPJSONBody *)v5 setRequestData:dataCopy];
  }

  return v6;
}

+ (id)withJSONObject:(id)object
{
  v11 = 0;
  v4 = [MEMORY[0x277CCAAA0] dataWithJSONObject:object options:0 error:&v11];
  v5 = v11;
  if (v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/JXHTTP/JXHTTP/JXHTTPJSONBody.m"];
    lastPathComponent = [v6 lastPathComponent];
    localizedDescription = [v5 localizedDescription];
    NSLog(&cfstr_DError.isa, lastPathComponent, 34, localizedDescription);
  }

  v9 = [self withData:v4];

  return v9;
}

+ (id)withString:(id)string
{
  v4 = [string dataUsingEncoding:4];
  v5 = [self withData:v4];

  return v5;
}

+ (id)withData:(id)data
{
  dataCopy = data;
  v5 = [[self alloc] initWithData:dataCopy];

  return v5;
}

@end