@interface AXNPSWrapper
+ (void)synchronizeNanoDomain:(id)a3 keys:(id)a4;
- (AXNPSWrapper)initWithDomain:(id)a3;
@end

@implementation AXNPSWrapper

+ (void)synchronizeNanoDomain:(id)a3 keys:(id)a4
{
  v5 = MEMORY[0x1E69B3590];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  [v8 synchronizeNanoDomain:v7 keys:v6];
}

- (AXNPSWrapper)initWithDomain:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AXNPSWrapper;
  v5 = [(AXNPSWrapper *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69B3588]) initWithDomain:v4];
    wrapped = v5->_wrapped;
    v5->_wrapped = v6;
  }

  return v5;
}

@end