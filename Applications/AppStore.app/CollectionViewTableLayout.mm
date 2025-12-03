@interface CollectionViewTableLayout
- (_TtC8AppStore25CollectionViewTableLayout)init;
- (_TtC8AppStore25CollectionViewTableLayout)initWithCoder:(id)coder;
@end

@implementation CollectionViewTableLayout

- (_TtC8AppStore25CollectionViewTableLayout)init
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CollectionViewTableLayout();
  v2 = [(CollectionViewTableLayout *)&v7 init];
  v3 = objc_opt_self();
  v4 = v2;
  separatorColor = [v3 separatorColor];
  [(CollectionViewTableLayout *)v4 setSeparatorColor:separatorColor];

  return v4;
}

- (_TtC8AppStore25CollectionViewTableLayout)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end