@interface NPHCSFooterHyperLinkView
- (UITextView)textView;
- (_TtC22CellularBridgeSettings24NPHCSFooterHyperLinkView)initWithReuseIdentifier:(id)identifier;
- (void)configureContents;
- (void)setTextView:(id)view;
@end

@implementation NPHCSFooterHyperLinkView

- (UITextView)textView
{
  v2 = sub_D74C();

  return v2;
}

- (void)setTextView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_D7B8(viewCopy);
}

- (_TtC22CellularBridgeSettings24NPHCSFooterHyperLinkView)initWithReuseIdentifier:(id)identifier
{
  if (identifier)
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
  selfCopy = self;
  sub_D928();
}

@end