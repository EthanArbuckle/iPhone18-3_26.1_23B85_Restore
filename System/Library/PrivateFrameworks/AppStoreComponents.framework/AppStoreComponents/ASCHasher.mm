@interface ASCHasher
+ (unint64_t)executionSeed;
- (ASCHasher)init;
- (unint64_t)finalizeHash;
- (void)combineBool:(BOOL)bool;
- (void)combineBytes:(const void *)bytes length:(unint64_t)length;
- (void)combineDouble:(double)double;
- (void)combineInteger:(int64_t)integer;
- (void)combineUnsignedInteger:(unint64_t)integer;
@end

@implementation ASCHasher

+ (unint64_t)executionSeed
{
  if (executionSeed_onceToken != -1)
  {
    +[ASCHasher executionSeed];
  }

  return executionSeed_executionSeed;
}

- (ASCHasher)init
{
  v7.receiver = self;
  v7.super_class = ASCHasher;
  v2 = [(ASCHasher *)&v7 init];
  if (v2)
  {
    v6 = +[ASCHasher executionSeed];
    v3 = [objc_alloc(MEMORY[0x277CBEB28]) initWithBytes:&v6 length:8];
    buffer = v2->_buffer;
    v2->_buffer = v3;

    v2->_isFinalized = 0;
  }

  return v2;
}

- (void)combineBytes:(const void *)bytes length:(unint64_t)length
{
  if ([(ASCHasher *)self isFinalized])
  {
    v7 = objc_alloc(MEMORY[0x277CBEAD8]);
    objc_exception_throw([v7 initWithName:*MEMORY[0x277CBE658] reason:@"Cannot combine additional values into finalized hasher" userInfo:0]);
  }

  buffer = [(ASCHasher *)self buffer];
  [buffer appendBytes:bytes length:length];
}

- (void)combineBool:(BOOL)bool
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:bool];
  [(ASCHasher *)self combineObject:v4];
}

- (void)combineDouble:(double)double
{
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:double];
  [(ASCHasher *)self combineObject:v4];
}

- (void)combineInteger:(int64_t)integer
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:integer];
  [(ASCHasher *)self combineObject:v4];
}

- (void)combineUnsignedInteger:(unint64_t)integer
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:integer];
  [(ASCHasher *)self combineObject:v4];
}

- (unint64_t)finalizeHash
{
  if ([(ASCHasher *)self isFinalized])
  {
    v7 = objc_alloc(MEMORY[0x277CBEAD8]);
    objc_exception_throw([v7 initWithName:*MEMORY[0x277CBE658] reason:@"Cannot finalize hasher multiple times" userInfo:0]);
  }

  buffer = [(ASCHasher *)self buffer];
  v4 = [buffer hash];

  [(ASCHasher *)self setIsFinalized:1];
  buffer2 = [(ASCHasher *)self buffer];
  [buffer2 setLength:0];

  return v4;
}

@end