@interface TUIGuides
- (TUIGuides)initWithLeading:(id)leading trailing:(id)trailing top:(id)top bottom:(id)bottom;
@end

@implementation TUIGuides

- (TUIGuides)initWithLeading:(id)leading trailing:(id)trailing top:(id)top bottom:(id)bottom
{
  leadingCopy = leading;
  trailingCopy = trailing;
  topCopy = top;
  bottomCopy = bottom;
  v18.receiver = self;
  v18.super_class = TUIGuides;
  v15 = [(TUIGuides *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_leading, leading);
    objc_storeStrong(&v16->_trailing, trailing);
    objc_storeStrong(&v16->_top, top);
    objc_storeStrong(&v16->_bottom, bottom);
  }

  return v16;
}

@end