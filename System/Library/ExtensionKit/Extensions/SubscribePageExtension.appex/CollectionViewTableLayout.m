@interface CollectionViewTableLayout
- (_TtC22SubscribePageExtension25CollectionViewTableLayout)init;
- (_TtC22SubscribePageExtension25CollectionViewTableLayout)initWithCoder:(id)a3;
@end

@implementation CollectionViewTableLayout

- (_TtC22SubscribePageExtension25CollectionViewTableLayout)init
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CollectionViewTableLayout();
  v2 = [(CollectionViewTableLayout *)&v7 init];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 separatorColor];
  [(CollectionViewTableLayout *)v4 setSeparatorColor:v5];

  return v4;
}

- (_TtC22SubscribePageExtension25CollectionViewTableLayout)initWithCoder:(id)a3
{
  result = sub_100754644();
  __break(1u);
  return result;
}

@end