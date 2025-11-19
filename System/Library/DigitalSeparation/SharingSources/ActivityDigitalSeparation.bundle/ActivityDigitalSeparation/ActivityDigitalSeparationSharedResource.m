@interface ActivityDigitalSeparationSharedResource
- (NSArray)participants;
- (_TtC25ActivityDigitalSeparation39ActivityDigitalSeparationSharedResource)init;
@end

@implementation ActivityDigitalSeparationSharedResource

- (_TtC25ActivityDigitalSeparation39ActivityDigitalSeparationSharedResource)init
{
  *(&self->super.isa + OBJC_IVAR____TtC25ActivityDigitalSeparation39ActivityDigitalSeparationSharedResource_digitalSeparationFriends) = &_swiftEmptyArrayStorage;
  v3.receiver = self;
  v3.super_class = type metadata accessor for ActivityDigitalSeparationSharedResource();
  return [(ActivityDigitalSeparationSharedResource *)&v3 init];
}

- (NSArray)participants
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC25ActivityDigitalSeparation39ActivityDigitalSeparationSharedResource_digitalSeparationFriends);
  v3 = self;

  sub_15E8(v4);

  sub_2084(&qword_11370, &qword_A260);
  v5.super.isa = sub_8E34().super.isa;

  return v5.super.isa;
}

@end