@interface TUILinkEntityAttributes
- (TUILinkEntityAttributes)initWithIdentifier:(id)identifier linkEntities:(id)entities size:(CGSize)size center:(CGPoint)center transform:(CGAffineTransform *)transform;
- (id)description;
@end

@implementation TUILinkEntityAttributes

- (TUILinkEntityAttributes)initWithIdentifier:(id)identifier linkEntities:(id)entities size:(CGSize)size center:(CGPoint)center transform:(CGAffineTransform *)transform
{
  y = center.y;
  x = center.x;
  height = size.height;
  width = size.width;
  identifierCopy = identifier;
  entitiesCopy = entities;
  v24.receiver = self;
  v24.super_class = TUILinkEntityAttributes;
  v17 = *&transform->c;
  v23[0] = *&transform->a;
  v23[1] = v17;
  v23[2] = *&transform->tx;
  v18 = [(TUIGeometryAttributes *)&v24 initWithSize:v23 center:width transform:height, x, y];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_identifier, identifier);
    v20 = [entitiesCopy copy];
    linkEntities = v19->_linkEntities;
    v19->_linkEntities = v20;
  }

  return v19;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  tui_identifierToString = [(TUIIdentifier *)self->_identifier tui_identifierToString];
  v6 = [NSString stringWithFormat:@"<%@ %p id=%@ entities=%@>", v4, self, tui_identifierToString, self->_linkEntities];

  return v6;
}

@end