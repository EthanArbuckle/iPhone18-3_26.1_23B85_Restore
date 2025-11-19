@interface TUIBinaryTemplate
- (TUIBinaryTemplate)initWithPackage:(id)a3 url:(id)a4 rootElementNode:(id)a5;
@end

@implementation TUIBinaryTemplate

- (TUIBinaryTemplate)initWithPackage:(id)a3 url:(id)a4 rootElementNode:(id)a5
{
  v8 = a3;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = TUIBinaryTemplate;
  v10 = [(TUIBinaryTemplate *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_package = v8;
    objc_storeStrong(&v10->_url, a4);
    v11->_rootElementNode.index = a5.var0;
  }

  return v11;
}

@end