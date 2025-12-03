@interface CuratedGuidesActivityDataProvider
- (LPSpecializationMetadata)specializationMetadata;
- (NSString)activityTitle;
- (NSURL)activityURL;
- (_TtC4Maps33CuratedGuidesActivityDataProvider)init;
- (_TtC4Maps33CuratedGuidesActivityDataProvider)initWithCuratedGuide:(id)guide mapItems:(id)items;
- (_TtC4Maps33CuratedGuidesActivityDataProvider)initWithPublisher:(id)publisher;
- (void)fetchHTMLTemplateWithCompletion:(id)completion;
@end

@implementation CuratedGuidesActivityDataProvider

- (NSString)activityTitle
{
  selfCopy = self;
  sub_1000DD0C8();
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSURL)activityURL
{
  v3 = sub_1000CE6B8(&unk_101909B00);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  selfCopy = self;
  sub_1000DD2F4(v5);

  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    URL._bridgeToObjectiveC()(v9);
    v12 = v11;
    (*(v8 + 8))(v5, v7);
    v10 = v12;
  }

  return v10;
}

- (LPSpecializationMetadata)specializationMetadata
{
  v3 = *&self->MUActivityDataProvider_opaque[OBJC_IVAR____TtC4Maps33CuratedGuidesActivityDataProvider_configuration];
  v2 = *&self->configuration[OBJC_IVAR____TtC4Maps33CuratedGuidesActivityDataProvider_configuration];
  v4 = self->configuration[OBJC_IVAR____TtC4Maps33CuratedGuidesActivityDataProvider_configuration + 8];
  selfCopy = self;
  if (v4)
  {
    sub_1000DE578(v3, v2, 1);
    v6 = sub_1000DEE5C(v3);

    sub_1000DE4F4(v3, v2, 1);
  }

  else
  {
    sub_1000DE578(v3, v2, 0);
    v6 = sub_1000DE628(v3);
  }

  return v6;
}

- (void)fetchHTMLTemplateWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1000DD4A0(sub_1000DE4EC, v5);
}

- (_TtC4Maps33CuratedGuidesActivityDataProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC4Maps33CuratedGuidesActivityDataProvider)initWithPublisher:(id)publisher
{
  ObjectType = swift_getObjectType();
  v5 = objc_allocWithZone(ObjectType);
  v6 = &v5[OBJC_IVAR____TtC4Maps33CuratedGuidesActivityDataProvider_configuration];
  *v6 = publisher;
  *(v6 + 1) = 0;
  v6[16] = 1;
  *&v5[OBJC_IVAR____TtC4Maps33CuratedGuidesActivityDataProvider_thumbnailGenerator] = 0;
  v10.receiver = v5;
  v10.super_class = ObjectType;
  publisherCopy = publisher;
  v8 = [(CuratedGuidesActivityDataProvider *)&v10 init];
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v8;
}

- (_TtC4Maps33CuratedGuidesActivityDataProvider)initWithCuratedGuide:(id)guide mapItems:(id)items
{
  ObjectType = swift_getObjectType();
  if (items)
  {
    sub_100014C84(0, &unk_101918390);
    items = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = objc_allocWithZone(ObjectType);
  v8 = &v7[OBJC_IVAR____TtC4Maps33CuratedGuidesActivityDataProvider_configuration];
  *v8 = guide;
  *(v8 + 1) = items;
  v8[16] = 0;
  v9 = objc_allocWithZone(CollectionThumbnailGenerator);

  guideCopy = guide;
  v11 = [v9 initWithPlaceCollection:guideCopy size:{70.0, 70.0}];
  *&v7[OBJC_IVAR____TtC4Maps33CuratedGuidesActivityDataProvider_thumbnailGenerator] = v11;
  v14.receiver = v7;
  v14.super_class = ObjectType;
  v12 = [(CuratedGuidesActivityDataProvider *)&v14 init];

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v12;
}

@end