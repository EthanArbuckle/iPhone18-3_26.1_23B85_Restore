@interface _TUILinkEntityReferencePath
- (_TUILinkEntityReferencePath)initWithIdentifier:(id)identifier parent:(id)parent;
@end

@implementation _TUILinkEntityReferencePath

- (_TUILinkEntityReferencePath)initWithIdentifier:(id)identifier parent:(id)parent
{
  identifierCopy = identifier;
  parentCopy = parent;
  v12.receiver = self;
  v12.super_class = _TUILinkEntityReferencePath;
  v9 = [(_TUILinkEntityReferencePath *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeStrong(&v10->_parent, parent);
  }

  return v10;
}

@end