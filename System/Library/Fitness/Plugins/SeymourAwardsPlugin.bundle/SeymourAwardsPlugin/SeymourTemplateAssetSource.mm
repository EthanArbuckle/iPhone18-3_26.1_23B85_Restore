@interface SeymourTemplateAssetSource
- (NSString)identifier;
- (_TtC19SeymourAwardsPlugin26SeymourTemplateAssetSource)init;
@end

@implementation SeymourTemplateAssetSource

- (NSString)identifier
{
  v2 = *(self + OBJC_IVAR____TtC19SeymourAwardsPlugin26SeymourTemplateAssetSource_identifier);
  v3 = *(self + OBJC_IVAR____TtC19SeymourAwardsPlugin26SeymourTemplateAssetSource_identifier + 8);

  v4 = sub_233981694();

  return v4;
}

- (_TtC19SeymourAwardsPlugin26SeymourTemplateAssetSource)init
{
  v3 = (self + OBJC_IVAR____TtC19SeymourAwardsPlugin26SeymourTemplateAssetSource_identifier);
  sub_233981634();
  *v3 = sub_233981624();
  v3[1] = v4;
  v6.receiver = self;
  v6.super_class = type metadata accessor for SeymourTemplateAssetSource();
  return [(SeymourTemplateAssetSource *)&v6 init];
}

@end