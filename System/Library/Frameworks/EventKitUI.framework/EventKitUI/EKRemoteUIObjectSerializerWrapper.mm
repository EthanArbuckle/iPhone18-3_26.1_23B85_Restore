@interface EKRemoteUIObjectSerializerWrapper
- (_TtC10EventKitUI33EKRemoteUIObjectSerializerWrapper)init;
- (id)serializedRepresentationWithEkObject:(id)object;
- (id)serializedRepresentationWithEkObject:(id)object obfuscateKeyProperties:(BOOL)properties;
@end

@implementation EKRemoteUIObjectSerializerWrapper

- (_TtC10EventKitUI33EKRemoteUIObjectSerializerWrapper)init
{
  *(&self->super.isa + OBJC_IVAR____TtC10EventKitUI33EKRemoteUIObjectSerializerWrapper_serializer) = [objc_allocWithZone(sub_1D35DF2E4()) init];
  v4.receiver = self;
  v4.super_class = type metadata accessor for EKRemoteUIObjectSerializerWrapper();
  return [(EKRemoteUIObjectSerializerWrapper *)&v4 init];
}

- (id)serializedRepresentationWithEkObject:(id)object obfuscateKeyProperties:(BOOL)properties
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC10EventKitUI33EKRemoteUIObjectSerializerWrapper_serializer);
  objectCopy = object;
  selfCopy = self;
  v8 = v5;
  v9 = sub_1D35DF2C4();

  return v9;
}

- (id)serializedRepresentationWithEkObject:(id)object
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC10EventKitUI33EKRemoteUIObjectSerializerWrapper_serializer);
  objectCopy = object;
  selfCopy = self;
  v7 = v4;
  v8 = sub_1D35DF2D4();

  return v8;
}

@end