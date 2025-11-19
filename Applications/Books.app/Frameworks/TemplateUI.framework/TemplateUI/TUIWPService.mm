@interface TUIWPService
- (TUIWPService)init;
@end

@implementation TUIWPService

- (TUIWPService)init
{
  v6.receiver = self;
  v6.super_class = TUIWPService;
  v2 = [(TUIWPService *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(TUIWPDocument);
    document = v2->_document;
    v2->_document = v3;
  }

  return v2;
}

@end