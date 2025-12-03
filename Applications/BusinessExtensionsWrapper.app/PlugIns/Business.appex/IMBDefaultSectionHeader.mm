@interface IMBDefaultSectionHeader
- (_TtC8Business23IMBDefaultSectionHeader)initWithCoder:(id)coder;
- (_TtC8Business23IMBDefaultSectionHeader)initWithReuseIdentifier:(id)identifier;
@end

@implementation IMBDefaultSectionHeader

- (_TtC8Business23IMBDefaultSectionHeader)initWithReuseIdentifier:(id)identifier
{
  if (identifier)
  {
    v3 = sub_1000AC06C();
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return sub_10008C6EC(v3, v4);
}

- (_TtC8Business23IMBDefaultSectionHeader)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC8Business23IMBDefaultSectionHeader_headerLabel;
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(UILabel) init];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Business23IMBDefaultSectionHeader____lazy_storage___separatorView) = 0;
  result = sub_1000AC63C();
  __break(1u);
  return result;
}

@end