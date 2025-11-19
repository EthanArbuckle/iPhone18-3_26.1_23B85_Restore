@interface LocationCollectionViewCell
- (void)preferredContentSizeCategoryTraitChanged;
- (void)prepareForReuse;
@end

@implementation LocationCollectionViewCell

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for LocationCollectionViewCell();
  v2 = v3.receiver;
  [(LocationCollectionViewCell *)&v3 prepareForReuse];
  [*&v2[OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_locationIconView] setImage:{0, v3.receiver, v3.super_class}];
  [*&v2[OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_nameLabel] setText:0];
  [*&v2[OBJC_IVAR____TtC7Journal26LocationCollectionViewCell_addressLabel] setText:0];
}

- (void)preferredContentSizeCategoryTraitChanged
{
  v2 = self;
  sub_10045657C();
}

@end