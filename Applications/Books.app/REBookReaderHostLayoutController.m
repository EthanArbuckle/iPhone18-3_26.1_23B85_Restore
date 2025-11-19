@interface REBookReaderHostLayoutController
- (CGRect)frame;
- (NSString)description;
- (REBookReaderHostLayoutController)init;
- (REBookReaderHostLayoutController)initWithView:(id)a3;
- (REBookReaderHostLayoutController)initWithViewController:(id)a3;
- (UIEdgeInsets)safeAreaInsets;
- (UITraitCollection)traitCollection;
- (double)defaultStatusBarHeight;
- (void)setFrame:(CGRect)a3;
- (void)setSafeAreaInsets:(UIEdgeInsets)a3;
- (void)setTraitCollection:(id)a3;
- (void)willEnterForeground;
@end

@implementation REBookReaderHostLayoutController

- (CGRect)frame
{
  v2 = self;
  sub_10079B904();

  v3 = v7;
  v4 = v8;
  v5 = v9;
  v6 = v10;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  BookReaderHostLayoutController.frame.setter(x, y, width, height);
}

- (UIEdgeInsets)safeAreaInsets
{
  v2 = self;
  sub_10079B904();

  v3 = v7;
  v4 = v8;
  v5 = v9;
  v6 = v10;
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)setSafeAreaInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v7 = self;
  BookReaderHostLayoutController.safeAreaInsets.setter(top, left, bottom, right);
}

- (UITraitCollection)traitCollection
{
  v2 = self;
  sub_10079B904();

  return v4;
}

- (void)setTraitCollection:(id)a3
{
  v4 = a3;
  v5 = self;
  BookReaderHostLayoutController.traitCollection.setter(v4);
}

- (double)defaultStatusBarHeight
{
  v2 = self;
  v3 = BookReaderHostLayoutController.defaultStatusBarHeight.getter();

  return v3;
}

- (REBookReaderHostLayoutController)initWithViewController:(id)a3
{
  v4 = a3;
  result = [v4 view];
  if (result)
  {
    v6 = result;
    v7 = [(REBookReaderHostLayoutController *)self initWithView:result];

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (REBookReaderHostLayoutController)initWithView:(id)a3
{
  v3 = a3;
  [v3 frame];
  [v3 safeAreaInsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [v3 traitCollection];
  v13 = objc_allocWithZone(type metadata accessor for BookReaderHostLayoutController());
  *&v22 = v9;
  *(&v22 + 1) = v11;
  *&v21 = v5;
  *(&v21 + 1) = v7;
  v19 = sub_100545708(v12, v3, v13, v14, v15, v16, v17, v18, v21, v22);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v19;
}

- (void)willEnterForeground
{
  v2 = self;
  BookReaderHostLayoutController.willEnterForeground()();
}

- (REBookReaderHostLayoutController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)description
{
  v2 = self;
  BookReaderHostLayoutController.description.getter();

  v3 = sub_1007A2214();

  return v3;
}

@end