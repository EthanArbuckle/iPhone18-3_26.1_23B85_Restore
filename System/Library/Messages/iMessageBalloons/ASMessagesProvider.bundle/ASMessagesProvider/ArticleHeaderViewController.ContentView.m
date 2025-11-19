@interface ArticleHeaderViewController.ContentView
- (_TtCC18ASMessagesProvider27ArticleHeaderViewControllerP33_00BC5D4E2124FF40B16B40032225D71111ContentView)initWithCoder:(id)a3;
- (_TtCC18ASMessagesProvider27ArticleHeaderViewControllerP33_00BC5D4E2124FF40B16B40032225D71111ContentView)initWithFrame:(CGRect)a3;
@end

@implementation ArticleHeaderViewController.ContentView

- (_TtCC18ASMessagesProvider27ArticleHeaderViewControllerP33_00BC5D4E2124FF40B16B40032225D71111ContentView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v7 = [(ArticleHeaderViewController.ContentView *)&v9 initWithFrame:x, y, width, height];
  [(ArticleHeaderViewController.ContentView *)v7 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  return v7;
}

- (_TtCC18ASMessagesProvider27ArticleHeaderViewControllerP33_00BC5D4E2124FF40B16B40032225D71111ContentView)initWithCoder:(id)a3
{
  result = sub_76A840();
  __break(1u);
  return result;
}

@end