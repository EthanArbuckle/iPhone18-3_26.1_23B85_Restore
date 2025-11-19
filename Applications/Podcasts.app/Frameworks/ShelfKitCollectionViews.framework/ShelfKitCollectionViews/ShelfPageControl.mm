@interface ShelfPageControl
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
@end

@implementation ShelfPageControl

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  ObjectType = swift_getObjectType();
  v9 = a4;
  v10 = self;
  v11 = [(ShelfPageControl *)v10 layoutMarginsGuide];
  [v11 layoutFrame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v24.origin.x = v13;
  v24.origin.y = v15;
  v24.size.width = v17;
  v24.size.height = v19;
  v23.x = x;
  v23.y = y;
  if (CGRectContainsPoint(v24, v23))
  {

    return 0;
  }

  else
  {
    v22.receiver = v10;
    v22.super_class = ObjectType;
    v21 = [(ShelfPageControl *)&v22 pointInside:v9 withEvent:x, y];

    return v21;
  }
}

- (void)layoutMarginsDidChange
{
  v2 = self;
  ShelfPageControl.layoutMarginsDidChange()();
}

- (void)layoutSubviews
{
  v2 = self;
  ShelfPageControl.layoutSubviews()();
}

@end