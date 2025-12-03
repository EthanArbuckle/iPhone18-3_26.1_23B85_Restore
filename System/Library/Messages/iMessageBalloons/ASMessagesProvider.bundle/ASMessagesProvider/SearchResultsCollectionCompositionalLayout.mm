@interface SearchResultsCollectionCompositionalLayout
- (CGSize)collectionViewContentSize;
- (_TtC18ASMessagesProvider42SearchResultsCollectionCompositionalLayout)initWithSectionProvider:(id)provider configuration:(id)configuration;
- (id)layoutAttributesForDecorationViewOfKind:(id)kind atIndexPath:(id)path;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path;
@end

@implementation SearchResultsCollectionCompositionalLayout

- (_TtC18ASMessagesProvider42SearchResultsCollectionCompositionalLayout)initWithSectionProvider:(id)provider configuration:(id)configuration
{
  v5 = _Block_copy(provider);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  return sub_E3BD4(sub_E5B10, v6, configuration);
}

- (CGSize)collectionViewContentSize
{
  selfCopy = self;
  v3 = sub_E3DC8();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  x = rect.origin.x;
  selfCopy = self;
  v5 = sub_E4104(x);

  if (v5)
  {
    sub_E59C4();
    v6.super.isa = sub_769450().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  return v6.super.isa;
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  v4 = sub_757640();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757590();
  selfCopy = self;
  isa = sub_757550().super.isa;
  v10 = type metadata accessor for SearchResultsCollectionCompositionalLayout();
  v14.receiver = selfCopy;
  v14.super_class = v10;
  v11 = [(BaseCollectionCompositionalLayout *)&v14 layoutAttributesForItemAtIndexPath:isa];

  if (v11)
  {
    v12 = sub_E4CE4(v11);

    selfCopy = v11;
  }

  else
  {
    v12 = 0;
  }

  (*(v5 + 8))(v7, v4);

  return v12;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path
{
  v6 = sub_757640();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757590();
  kindCopy = kind;
  selfCopy = self;
  isa = sub_757550().super.isa;
  v13 = type metadata accessor for SearchResultsCollectionCompositionalLayout();
  v17.receiver = selfCopy;
  v17.super_class = v13;
  v14 = [(BaseCollectionCompositionalLayout *)&v17 layoutAttributesForSupplementaryViewOfKind:kindCopy atIndexPath:isa];

  if (v14)
  {
    v15 = sub_E4CE4(v14);

    selfCopy = v14;
  }

  else
  {
    v15 = 0;
  }

  (*(v7 + 8))(v9, v6);

  return v15;
}

- (id)layoutAttributesForDecorationViewOfKind:(id)kind atIndexPath:(id)path
{
  v5 = sub_757640();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_769240();
  v11 = v10;
  sub_757590();
  selfCopy = self;
  v13 = sub_E50BC(v9, v11, v8);

  (*(v6 + 8))(v8, v5);

  return v13;
}

@end