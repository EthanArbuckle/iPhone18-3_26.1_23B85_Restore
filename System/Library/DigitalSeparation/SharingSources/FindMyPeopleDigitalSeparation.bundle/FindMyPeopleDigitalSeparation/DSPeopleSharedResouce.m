@interface DSPeopleSharedResouce
- (NSArray)participants;
- (NSString)displayName;
- (_TtC29FindMyPeopleDigitalSeparation21DSPeopleSharedResouce)init;
@end

@implementation DSPeopleSharedResouce

- (_TtC29FindMyPeopleDigitalSeparation21DSPeopleSharedResouce)init
{
  *(&self->super.isa + OBJC_IVAR____TtC29FindMyPeopleDigitalSeparation21DSPeopleSharedResouce_dsFriends) = &_swiftEmptyArrayStorage;
  v3.receiver = self;
  v3.super_class = type metadata accessor for DSPeopleSharedResouce();
  return [(DSPeopleSharedResouce *)&v3 init];
}

- (NSArray)participants
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC29FindMyPeopleDigitalSeparation21DSPeopleSharedResouce_dsFriends);
  v3 = self;
  sub_7C84(v2);

  sub_5BC4(&unk_11A30, &qword_9430);
  v4.super.isa = sub_7FF4().super.isa;

  return v4.super.isa;
}

- (NSString)displayName
{
  v2 = sub_7F54();

  return v2;
}

@end