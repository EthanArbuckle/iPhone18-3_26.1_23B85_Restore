@interface _TUILinkEntityReferencePath
- (_TUILinkEntityReferencePath)initWithIdentifier:(id)a3 parent:(id)a4;
@end

@implementation _TUILinkEntityReferencePath

- (_TUILinkEntityReferencePath)initWithIdentifier:(id)a3 parent:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _TUILinkEntityReferencePath;
  v9 = [(_TUILinkEntityReferencePath *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    objc_storeStrong(&v10->_parent, a4);
  }

  return v10;
}

@end