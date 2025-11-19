@interface TUIGuides
- (TUIGuides)initWithLeading:(id)a3 trailing:(id)a4 top:(id)a5 bottom:(id)a6;
@end

@implementation TUIGuides

- (TUIGuides)initWithLeading:(id)a3 trailing:(id)a4 top:(id)a5 bottom:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = TUIGuides;
  v15 = [(TUIGuides *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_leading, a3);
    objc_storeStrong(&v16->_trailing, a4);
    objc_storeStrong(&v16->_top, a5);
    objc_storeStrong(&v16->_bottom, a6);
  }

  return v16;
}

@end