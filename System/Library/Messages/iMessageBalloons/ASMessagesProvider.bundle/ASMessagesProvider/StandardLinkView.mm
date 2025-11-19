@interface StandardLinkView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC18ASMessagesProvider16StandardLinkView)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation StandardLinkView

- (_TtC18ASMessagesProvider16StandardLinkView)initWithCoder:(id)a3
{
  result = sub_76A840();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  sub_220F60();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_2214D0();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_221940(a3);
}

@end