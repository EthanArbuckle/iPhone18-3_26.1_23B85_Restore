@interface ARUIHashBuilder
+ (id)builder;
- (ARUIHashBuilder)init;
- (uint64_t)appendFloat4x4:(double)float4x4;
- (void)appendCGRect:(CGRect)rect;
- (void)appendFloat2:(ARUIHashBuilder *)self;
- (void)appendFloat4:(ARUIHashBuilder *)self;
@end

@implementation ARUIHashBuilder

+ (id)builder
{
  v2 = objc_alloc_init(ARUIHashBuilder);

  return v2;
}

- (ARUIHashBuilder)init
{
  v3.receiver = self;
  v3.super_class = ARUIHashBuilder;
  result = [(ARUIHashBuilder *)&v3 init];
  if (result)
  {
    result->_hash = 0;
  }

  return result;
}

- (void)appendCGRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  [(ARUIHashBuilder *)self appendCGFloat:rect.origin.x];
  [(ARUIHashBuilder *)self appendCGFloat:y];
  [(ARUIHashBuilder *)self appendCGFloat:width];

  [(ARUIHashBuilder *)self appendCGFloat:height];
}

- (void)appendFloat2:(ARUIHashBuilder *)self
{
  v5 = HIDWORD(v2);
  [(ARUIHashBuilder *)self appendFloat:?];
  HIDWORD(v4) = v5;
  LODWORD(v4) = v5;

  [(ARUIHashBuilder *)self appendFloat:v4];
}

- (void)appendFloat4:(ARUIHashBuilder *)self
{
  v5 = v2;
  [(ARUIHashBuilder *)self appendFloat:?];
  HIDWORD(v4) = DWORD1(v5);
  LODWORD(v4) = DWORD1(v5);
  [(ARUIHashBuilder *)self appendFloat:v4];
  [(ARUIHashBuilder *)self appendFloat:COERCE_DOUBLE(__PAIR64__(DWORD1(v5), DWORD2(v5)))];

  [(ARUIHashBuilder *)self appendFloat:COERCE_DOUBLE(__PAIR64__(DWORD1(v5), HIDWORD(v5)))];
}

- (uint64_t)appendFloat4x4:(double)float4x4
{
  [self appendFloat4:?];
  [self appendFloat4:float4x4];
  [self appendFloat4:a4];

  return [self appendFloat4:a5];
}

@end