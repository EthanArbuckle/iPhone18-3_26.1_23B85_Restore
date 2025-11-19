@interface NSXPCCoder
+ (id)_testEncodeAndDecodeInvocation:(id)a3 interface:(id)a4;
+ (id)_testEncodeAndDecodeObject:(id)a3 allowedClass:(Class)a4;
+ (id)_testEncodeAndDecodeObject:(id)a3 allowedClasses:(id)a4;
- (NSXPCCoder)init;
- (void)dealloc;
@end

@implementation NSXPCCoder

- (NSXPCCoder)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = NSXPCCoder;
  v2 = [(NSXPCCoder *)&v4 init];
  if (v2 && _initializeClasses_onceToken != -1)
  {
    dispatch_once(&_initializeClasses_onceToken, &__block_literal_global_87);
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSXPCCoder;
  [(NSXPCCoder *)&v3 dealloc];
}

+ (id)_testEncodeAndDecodeObject:(id)a3 allowedClasses:(id)a4
{
  v6 = objc_alloc_init(NSXPCEncoder);
  [(NSXPCEncoder *)v6 beginEncoding];
  [(NSXPCEncoder *)v6 encodeObject:a3 forKey:@"root"];
  v7 = [(NSXPCEncoder *)v6 finishEncoding];

  v8 = [[NSXPCDecoder alloc] initWithInterface:0];
  [(NSXPCDecoder *)v8 _startReadingFromXPCObject:v7];
  v9 = [(NSXPCDecoder *)v8 decodeObjectOfClasses:a4 forKey:@"root"];

  return v9;
}

+ (id)_testEncodeAndDecodeObject:(id)a3 allowedClass:(Class)a4
{
  v6 = [MEMORY[0x1E695DFD8] setWithObject:a4];

  return [a1 _testEncodeAndDecodeObject:a3 allowedClasses:v6];
}

+ (id)_testEncodeAndDecodeInvocation:(id)a3 interface:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(NSXPCEncoder);
  v7 = xpc_dictionary_create(0, 0, 0);
  [(NSXPCEncoder *)v6 _encodeInvocation:a3 isReply:0 into:v7];

  v8 = [[NSXPCDecoder alloc] initWithInterface:a4];
  v11[0] = 0;
  [(NSXPCDecoder *)v8 _decodeMessageFromXPCObject:v7 allowingSimpleMessageSend:0 outInvocation:v11 outArguments:0 outArgumentsMaxCount:0 outMethodSignature:0 outSelector:0];
  v9 = v8;
  xpc_release(v7);
  return v11[0];
}

@end