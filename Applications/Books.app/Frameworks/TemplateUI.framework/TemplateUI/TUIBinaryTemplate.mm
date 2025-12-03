@interface TUIBinaryTemplate
- (TUIBinaryTemplate)initWithPackage:(id)package url:(id)url rootElementNode:(id)node;
@end

@implementation TUIBinaryTemplate

- (TUIBinaryTemplate)initWithPackage:(id)package url:(id)url rootElementNode:(id)node
{
  packageCopy = package;
  urlCopy = url;
  v13.receiver = self;
  v13.super_class = TUIBinaryTemplate;
  v10 = [(TUIBinaryTemplate *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_package = packageCopy;
    objc_storeStrong(&v10->_url, url);
    v11->_rootElementNode.index = node.var0;
  }

  return v11;
}

@end