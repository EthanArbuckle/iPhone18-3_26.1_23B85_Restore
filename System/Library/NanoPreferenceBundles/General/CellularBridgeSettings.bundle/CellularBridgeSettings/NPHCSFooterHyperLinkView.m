@interface NPHCSFooterHyperLinkView
- (UITextView)textView;
- (_TtC22CellularBridgeSettings24NPHCSFooterHyperLinkView)initWithReuseIdentifier:(id)a3;
- (void)configureContents;
- (void)setTextView:(id)a3;
@end

@implementation NPHCSFooterHyperLinkView

- (UITextView)textView
{
  v2 = sub_D74C();

  return v2;
}

- (void)setTextView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_D7B8(v4);
}

- (_TtC22CellularBridgeSettings24NPHCSFooterHyperLinkView)initWithReuseIdentifier:(id)a3
{
  if (a3)
  {
    v3 = sub_E418();
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return sub_D7CC(v3, v4);
}

- (void)configureContents
{
  v2 = self;
  sub_D928();
}

@end