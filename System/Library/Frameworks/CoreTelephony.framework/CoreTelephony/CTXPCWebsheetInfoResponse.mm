@interface CTXPCWebsheetInfoResponse
+ (id)allowedClassesForArguments;
- (CTXPCWebsheetInfoResponse)initWithURL:(id)a3 postdata:(id)a4;
- (CTXPCWebsheetInfoResponse)initWithURLString:(id)a3 postdata:(id)a4 type:(id)a5;
- (NSDictionary)postdata;
- (NSString)type;
- (NSString)urlString;
- (NSURL)url;
@end

@implementation CTXPCWebsheetInfoResponse

- (CTXPCWebsheetInfoResponse)initWithURLString:(id)a3 postdata:(id)a4 type:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_new();
  [v11 setObject:v8 forKeyedSubscript:@"urlString"];
  [v11 setObject:v9 forKeyedSubscript:@"postdata"];
  [v11 setObject:v10 forKeyedSubscript:@"type"];
  v14.receiver = self;
  v14.super_class = CTXPCWebsheetInfoResponse;
  v12 = [(CTXPCMessage *)&v14 initWithNamedArguments:v11];

  return v12;
}

- (CTXPCWebsheetInfoResponse)initWithURL:(id)a3 postdata:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  [v8 setObject:v6 forKeyedSubscript:@"url"];
  [v8 setObject:v7 forKeyedSubscript:@"postdata"];
  v11.receiver = self;
  v11.super_class = CTXPCWebsheetInfoResponse;
  v9 = [(CTXPCMessage *)&v11 initWithNamedArguments:v8];

  return v9;
}

- (NSString)urlString
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"urlString"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSURL)url
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"url"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDictionary)postdata
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"postdata"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)type
{
  v2 = [(CTXPCMessage *)self namedArguments];
  v3 = [v2 objectForKey:@"type"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)allowedClassesForArguments
{
  v8[5] = *MEMORY[0x1E69E9840];
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___CTXPCWebsheetInfoResponse;
  v2 = objc_msgSendSuper2(&v7, sel_allowedClassesForArguments);
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v8[2] = objc_opt_class();
  v8[3] = objc_opt_class();
  v8[4] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:5];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

@end