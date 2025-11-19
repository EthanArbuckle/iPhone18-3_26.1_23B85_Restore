@interface ASCHasher
+ (unint64_t)executionSeed;
- (ASCHasher)init;
- (unint64_t)finalizeHash;
- (void)combineBytes:(const void *)a3 length:(unint64_t)a4;
- (void)combineDouble:(double)a3;
- (void)combineInteger:(int64_t)a3;
- (void)combineUnsignedInteger:(unint64_t)a3;
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

- (void)combineBytes:(const void *)a3 length:(unint64_t)a4
{
  if ([(ASCHasher *)self isFinalized])
  {
    v7 = objc_alloc(MEMORY[0x277CBEAD8]);
    objc_exception_throw([v7 initWithName:*MEMORY[0x277CBE658] reason:@"Cannot combine additional values into finalized hasher" userInfo:0]);
  }

  v8 = [(ASCHasher *)self buffer];
  [v8 appendBytes:a3 length:a4];
}

- (void)combineDouble:(double)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [(ASCHasher *)self combineObject:v4];
}

- (void)combineInteger:(int64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [(ASCHasher *)self combineObject:v4];
}

- (void)combineUnsignedInteger:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [(ASCHasher *)self combineObject:v4];
}

- (unint64_t)finalizeHash
{
  if ([(ASCHasher *)self isFinalized])
  {
    v7 = objc_alloc(MEMORY[0x277CBEAD8]);
    objc_exception_throw([v7 initWithName:*MEMORY[0x277CBE658] reason:@"Cannot finalize hasher multiple times" userInfo:0]);
  }

  v3 = [(ASCHasher *)self buffer];
  v4 = [v3 hash];

  [(ASCHasher *)self setIsFinalized:1];
  v5 = [(ASCHasher *)self buffer];
  [v5 setLength:0];

  return v4;
}

@end