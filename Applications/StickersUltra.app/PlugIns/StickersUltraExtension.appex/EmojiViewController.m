@interface EmojiViewController
- (_TtC22StickersUltraExtension19EmojiViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)keyboardScroll:(id)a3;
- (void)textViewDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation EmojiViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100032E0C();
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for EmojiViewController();
  v2 = v4.receiver;
  [(EmojiViewController *)&v4 viewWillLayoutSubviews];
  v3 = [objc_opt_self() activeInstance];
  [v3 clearAnimations];
}

- (void)keyboardScroll:(id)a3
{
  v4 = sub_10007C300();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007C2D0();
  v8 = self;
  sub_10003394C();

  (*(v5 + 8))(v7, v4);
}

- (_TtC22StickersUltraExtension19EmojiViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_10007D7D0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_100034250(v5, v7, a4);
}

- (void)textViewDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100034828(v4);
}

@end