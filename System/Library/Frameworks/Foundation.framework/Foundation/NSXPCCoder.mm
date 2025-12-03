@interface NSXPCCoder
+ (id)_testEncodeAndDecodeInvocation:(id)invocation interface:(id)interface;
+ (id)_testEncodeAndDecodeObject:(id)object allowedClass:(Class)class;
+ (id)_testEncodeAndDecodeObject:(id)object allowedClasses:(id)classes;
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

+ (id)_testEncodeAndDecodeObject:(id)object allowedClasses:(id)classes
{
  v6 = objc_alloc_init(NSXPCEncoder);
  [(NSXPCEncoder *)v6 beginEncoding];
  [(NSXPCEncoder *)v6 encodeObject:object forKey:@"root"];
  finishEncoding = [(NSXPCEncoder *)v6 finishEncoding];

  v8 = [[NSXPCDecoder alloc] initWithInterface:0];
  [(NSXPCDecoder *)v8 _startReadingFromXPCObject:finishEncoding];
  v9 = [(NSXPCDecoder *)v8 decodeObjectOfClasses:classes forKey:@"root"];

  return v9;
}

+ (id)_testEncodeAndDecodeObject:(id)object allowedClass:(Class)class
{
  v6 = [MEMORY[0x1E695DFD8] setWithObject:class];

  return [self _testEncodeAndDecodeObject:object allowedClasses:v6];
}

+ (id)_testEncodeAndDecodeInvocation:(id)invocation interface:(id)interface
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(NSXPCEncoder);
  v7 = xpc_dictionary_create(0, 0, 0);
  [(NSXPCEncoder *)v6 _encodeInvocation:invocation isReply:0 into:v7];

  v8 = [[NSXPCDecoder alloc] initWithInterface:interface];
  v11[0] = 0;
  [(NSXPCDecoder *)v8 _decodeMessageFromXPCObject:v7 allowingSimpleMessageSend:0 outInvocation:v11 outArguments:0 outArgumentsMaxCount:0 outMethodSignature:0 outSelector:0];
  v9 = v8;
  xpc_release(v7);
  return v11[0];
}

@end