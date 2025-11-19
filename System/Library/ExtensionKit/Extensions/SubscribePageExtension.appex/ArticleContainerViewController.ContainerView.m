@interface ArticleContainerViewController.ContainerView
- (CGRect)frame;
- (_TtCC22SubscribePageExtension30ArticleContainerViewControllerP33_BACDBA853B9C19619833ED681F77E93313ContainerView)initWithCoder:(id)a3;
- (_TtCC22SubscribePageExtension30ArticleContainerViewControllerP33_BACDBA853B9C19619833ED681F77E93313ContainerView)initWithFrame:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
@end

@implementation ArticleContainerViewController.ContainerView

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for ArticleContainerViewController.ContainerView();
  [(ArticleContainerViewController.ContainerView *)&v6 frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = type metadata accessor for ArticleContainerViewController.ContainerView();
  v25.receiver = self;
  v25.super_class = v8;
  v9 = self;
  [(ArticleContainerViewController.ContainerView *)&v25 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v24.receiver = v9;
  v24.super_class = v8;
  [(ArticleContainerViewController.ContainerView *)&v24 setFrame:x, y, width, height];
  [(ArticleContainerViewController.ContainerView *)v9 frame];
  v27.origin.x = v18;
  v27.origin.y = v19;
  v27.size.width = v20;
  v27.size.height = v21;
  v26.origin.x = v11;
  v26.origin.y = v13;
  v26.size.width = v15;
  v26.size.height = v17;
  if (!CGRectEqualToRect(v26, v27))
  {
    v22 = *(&v9->super.super.super.isa + OBJC_IVAR____TtCC22SubscribePageExtension30ArticleContainerViewControllerP33_BACDBA853B9C19619833ED681F77E93313ContainerView_frameUpdatedCallback);
    if (v22)
    {

      v22(v23);
      sub_1000164A8(v22);
    }
  }
}

- (_TtCC22SubscribePageExtension30ArticleContainerViewControllerP33_BACDBA853B9C19619833ED681F77E93313ContainerView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = (&self->super.super.super.isa + OBJC_IVAR____TtCC22SubscribePageExtension30ArticleContainerViewControllerP33_BACDBA853B9C19619833ED681F77E93313ContainerView_frameUpdatedCallback);
  v9 = type metadata accessor for ArticleContainerViewController.ContainerView();
  *v8 = 0;
  v8[1] = 0;
  v11.receiver = self;
  v11.super_class = v9;
  return [(ArticleContainerViewController.ContainerView *)&v11 initWithFrame:x, y, width, height];
}

- (_TtCC22SubscribePageExtension30ArticleContainerViewControllerP33_BACDBA853B9C19619833ED681F77E93313ContainerView)initWithCoder:(id)a3
{
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtCC22SubscribePageExtension30ArticleContainerViewControllerP33_BACDBA853B9C19619833ED681F77E93313ContainerView_frameUpdatedCallback);
  *v4 = 0;
  v4[1] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ArticleContainerViewController.ContainerView();
  v5 = a3;
  v6 = [(ArticleContainerViewController.ContainerView *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end