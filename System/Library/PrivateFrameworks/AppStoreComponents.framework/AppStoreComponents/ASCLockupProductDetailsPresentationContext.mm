@interface ASCLockupProductDetailsPresentationContext
+ (ASCLockupProductDetailsPresentationContext)defaultPresentationContext;
- (ASCLockupProductDetailsPresentationContext)initWithPresentationStyle:(int64_t)style;
@end

@implementation ASCLockupProductDetailsPresentationContext

+ (ASCLockupProductDetailsPresentationContext)defaultPresentationContext
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__ASCLockupProductDetailsPresentationContext_defaultPresentationContext__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultPresentationContext_onceToken != -1)
  {
    dispatch_once(&defaultPresentationContext_onceToken, block);
  }

  v2 = defaultPresentationContext_context;

  return v2;
}

uint64_t __72__ASCLockupProductDetailsPresentationContext_defaultPresentationContext__block_invoke(uint64_t a1)
{
  defaultPresentationContext_context = [objc_alloc(*(a1 + 32)) initWithPresentationStyle:0];

  return MEMORY[0x2821F96F8]();
}

- (ASCLockupProductDetailsPresentationContext)initWithPresentationStyle:(int64_t)style
{
  v5.receiver = self;
  v5.super_class = ASCLockupProductDetailsPresentationContext;
  result = [(ASCLockupProductDetailsPresentationContext *)&v5 init];
  if (result)
  {
    result->_presentationStyle = style;
  }

  return result;
}

@end