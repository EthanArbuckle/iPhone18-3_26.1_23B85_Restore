@interface SponsorshipArchive
- (_TtC17AdPlatformsCommon18SponsorshipArchive)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SponsorshipArchive

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  SponsorshipArchive.encode(with:)(coderCopy);
}

- (_TtC17AdPlatformsCommon18SponsorshipArchive)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end