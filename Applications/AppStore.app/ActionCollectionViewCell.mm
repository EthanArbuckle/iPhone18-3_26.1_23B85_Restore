@interface ActionCollectionViewCell
- (void)accessoryDidActionWithSender:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation ActionCollectionViewCell

- (void)layoutSubviews
{
  v2 = self;
  sub_100612F40();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100613930(a3);
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(ActionCollectionViewCell *)&v3 prepareForReuse];
  v2[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_hasArtworkToDisplay] = 0;
}

- (void)accessoryDidActionWithSender:(id)a3
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_accessoryAction);
  if (v3)
  {
    v5 = a3;
    v6 = self;
    sub_10000827C(v3);
    v3(v5);

    sub_10001F63C(v3);
  }
}

@end