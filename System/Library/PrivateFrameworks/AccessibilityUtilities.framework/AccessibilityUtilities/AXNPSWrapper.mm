@interface AXNPSWrapper
+ (void)synchronizeNanoDomain:(id)domain keys:(id)keys;
- (AXNPSWrapper)initWithDomain:(id)domain;
@end

@implementation AXNPSWrapper

+ (void)synchronizeNanoDomain:(id)domain keys:(id)keys
{
  v5 = MEMORY[0x1E69B3590];
  keysCopy = keys;
  domainCopy = domain;
  v8 = objc_alloc_init(v5);
  [v8 synchronizeNanoDomain:domainCopy keys:keysCopy];
}

- (AXNPSWrapper)initWithDomain:(id)domain
{
  domainCopy = domain;
  v9.receiver = self;
  v9.super_class = AXNPSWrapper;
  v5 = [(AXNPSWrapper *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69B3588]) initWithDomain:domainCopy];
    wrapped = v5->_wrapped;
    v5->_wrapped = v6;
  }

  return v5;
}

@end