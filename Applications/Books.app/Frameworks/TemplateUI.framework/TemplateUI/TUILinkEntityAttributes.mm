@interface TUILinkEntityAttributes
- (TUILinkEntityAttributes)initWithIdentifier:(id)a3 linkEntities:(id)a4 size:(CGSize)a5 center:(CGPoint)a6 transform:(CGAffineTransform *)a7;
- (id)description;
@end

@implementation TUILinkEntityAttributes

- (TUILinkEntityAttributes)initWithIdentifier:(id)a3 linkEntities:(id)a4 size:(CGSize)a5 center:(CGPoint)a6 transform:(CGAffineTransform *)a7
{
  y = a6.y;
  x = a6.x;
  height = a5.height;
  width = a5.width;
  v15 = a3;
  v16 = a4;
  v24.receiver = self;
  v24.super_class = TUILinkEntityAttributes;
  v17 = *&a7->c;
  v23[0] = *&a7->a;
  v23[1] = v17;
  v23[2] = *&a7->tx;
  v18 = [(TUIGeometryAttributes *)&v24 initWithSize:v23 center:width transform:height, x, y];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_identifier, a3);
    v20 = [v16 copy];
    linkEntities = v19->_linkEntities;
    v19->_linkEntities = v20;
  }

  return v19;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(TUIIdentifier *)self->_identifier tui_identifierToString];
  v6 = [NSString stringWithFormat:@"<%@ %p id=%@ entities=%@>", v4, self, v5, self->_linkEntities];

  return v6;
}

@end