@interface EmojiViewController
- (_TtC22StickersUltraExtension19EmojiViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)keyboardScroll:(id)scroll;
- (void)textViewDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation EmojiViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100032E0C();
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for EmojiViewController();
  v2 = v4.receiver;
  [(EmojiViewController *)&v4 viewWillLayoutSubviews];
  activeInstance = [objc_opt_self() activeInstance];
  [activeInstance clearAnimations];
}

- (void)keyboardScroll:(id)scroll
{
  v4 = sub_10007C300();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007C2D0();
  selfCopy = self;
  sub_10003394C();

  (*(v5 + 8))(v7, v4);
}

- (_TtC22StickersUltraExtension19EmojiViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_10007D7D0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_100034250(v5, v7, bundle);
}

- (void)textViewDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_100034828(changeCopy);
}

@end