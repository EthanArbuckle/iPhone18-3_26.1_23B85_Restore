@interface CollectionViewSection.SectionHeaderView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtCV16MusicApplication21CollectionViewSection17SectionHeaderView)initWithCoder:(id)coder;
- (_TtCV16MusicApplication21CollectionViewSection17SectionHeaderView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation CollectionViewSection.SectionHeaderView

- (_TtCV16MusicApplication21CollectionViewSection17SectionHeaderView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  sub_E31CC(self + OBJC_IVAR____TtCV16MusicApplication21CollectionViewSection17SectionHeaderView_contentConfiguration);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtCV16MusicApplication21CollectionViewSection17SectionHeaderView_artworkCachingReference) = 0;
  v9 = (&self->super.super.super.super.isa + OBJC_IVAR____TtCV16MusicApplication21CollectionViewSection17SectionHeaderView____lazy_storage___contentView);
  *v9 = 0;
  v9[1] = 0;
  v13.receiver = self;
  v13.super_class = ObjectType;
  height = [(CollectionViewSection.SectionHeaderView *)&v13 initWithFrame:x, y, width, height];
  v11 = sub_E34F8();
  [(CollectionViewSection.SectionHeaderView *)height addSubview:v11];

  return height;
}

- (_TtCV16MusicApplication21CollectionViewSection17SectionHeaderView)initWithCoder:(id)coder
{
  sub_E31CC(self + OBJC_IVAR____TtCV16MusicApplication21CollectionViewSection17SectionHeaderView_contentConfiguration);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtCV16MusicApplication21CollectionViewSection17SectionHeaderView_artworkCachingReference) = 0;
  v4 = (&self->super.super.super.super.isa + OBJC_IVAR____TtCV16MusicApplication21CollectionViewSection17SectionHeaderView____lazy_storage___contentView);
  *v4 = 0;
  v4[1] = 0;
  result = sub_ABAFD0();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(CollectionViewSection.SectionHeaderView *)&v4 layoutSubviews];
  v3 = sub_E34F8();
  [v2 bounds];
  [v3 setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_E34F8();
  [v6 sizeThatFits:{width, height}];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  v3 = sub_E34F8();
  [v3 intrinsicContentSize];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

@end