@interface MapsAutocompletePerson
+ (NSString)sharedLocationLabelIdentifier;
+ (void)autoCompletePersonFrom:(MapsSuggestionsEntry *)a3 completionHandler:(id)a4;
+ (void)autoCompletePersonWithContact:(CNContact *)a3 completionHandler:(id)a4;
+ (void)autoCompletePersonWithHandleIdentifier:(NSString *)a3 completionHandler:(id)a4;
- (BOOL)canShowOpenFindMy;
- (BOOL)canShowRequestLocation;
- (BOOL)isEqual:(id)a3;
- (NSString)subTitle;
- (NSString)title;
- (NSURL)openFindMyURL;
- (NSURL)requestLocationURL;
- (_TtC4Maps22MapsAutocompletePerson)init;
- (_TtC4Maps22MapsAutocompletePerson)initWithContact:(id)a3 contactMatchInfo:(id)a4 handle:(id)a5 handleMatchInfo:(id)a6;
- (id)contactPrioritizingWithAddressFor:(id)a3 kind:(unsigned int)a4 cnLabelValueIdentifier:(id)a5 followedBy:(id)a6;
- (id)copyWithZone:(void *)a3;
- (id)locationTimestampString:(BOOL)a3;
- (id)updatedContactFrom:(id)a3;
- (void)setContact:(id)a3;
- (void)setContactMatchInfo:(id)a3;
- (void)setHandle:(id)a3;
- (void)setHandleMatchInfo:(id)a3;
@end

@implementation MapsAutocompletePerson

+ (void)autoCompletePersonFrom:(MapsSuggestionsEntry *)a3 completionHandler:(id)a4
{
  v7 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = a1;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1011F9BA0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1011F9360;
  v14[5] = v13;
  v15 = a3;
  sub_10054DB08(0, 0, v9, &unk_1011F66B0, v14);
}

+ (void)autoCompletePersonWithHandleIdentifier:(NSString *)a3 completionHandler:(id)a4
{
  v7 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = a1;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10120B208;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10120B210;
  v14[5] = v13;
  v15 = a3;
  sub_10054DB08(0, 0, v9, &unk_10120B218, v14);
}

+ (void)autoCompletePersonWithContact:(CNContact *)a3 completionHandler:(id)a4
{
  v7 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = a1;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10120B1E8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1011F9360;
  v14[5] = v13;
  v15 = a3;
  sub_10054DB08(0, 0, v9, &unk_1011F66B0, v14);
}

- (void)setContact:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_contact);
  *(self + OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_contact) = a3;
  v3 = a3;
}

- (void)setContactMatchInfo:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_contactMatchInfo);
  *(self + OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_contactMatchInfo) = a3;
  v3 = a3;
}

- (void)setHandle:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_handle);
  *(self + OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_handle) = a3;
  v3 = a3;
}

- (void)setHandleMatchInfo:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_handleMatchInfo);
  *(self + OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_handleMatchInfo) = a3;
  v3 = a3;
}

+ (NSString)sharedLocationLabelIdentifier
{
  if (qword_101906908 != -1)
  {
    swift_once();
  }

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (_TtC4Maps22MapsAutocompletePerson)initWithContact:(id)a3 contactMatchInfo:(id)a4 handle:(id)a5 handleMatchInfo:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = sub_10050AF34(a3, a4, a5, a6);

  return v14;
}

- (NSString)title
{
  v2 = self;
  v3 = sub_100508C94();

  return v3;
}

- (NSURL)openFindMyURL
{
  v2 = self;
  v3 = sub_1005090E8();

  return v3;
}

- (NSURL)requestLocationURL
{
  v2 = self;
  v3 = sub_10050923C();

  return v3;
}

- (BOOL)canShowRequestLocation
{
  if (!*(self + OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_contact))
  {
    return 0;
  }

  v2 = self;
  v3 = sub_10050923C();

  if (!v3)
  {
    return 0;
  }

  return 1;
}

- (BOOL)canShowOpenFindMy
{
  v2 = self;
  v3 = sub_1005096BC();

  return v3 & 1;
}

- (id)locationTimestampString:(BOOL)a3
{
  v4 = self;
  sub_100509744(a3);

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

- (NSString)subTitle
{
  v2 = self;
  v3 = sub_100509AEC();

  return v3;
}

- (id)updatedContactFrom:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_100509E3C(v4);

  return v6;
}

- (id)contactPrioritizingWithAddressFor:(id)a3 kind:(unsigned int)a4 cnLabelValueIdentifier:(id)a5 followedBy:(id)a6
{
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = a3;
  v14 = a6;
  v15 = self;
  v16 = sub_10050A3E8(v13, a4, v10, v12, a6);

  return v16;
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  sub_10050ABDC(v6);

  sub_10005E838(v6, v6[3]);
  v4 = _bridgeAnythingToObjectiveC<A>(_:)();
  sub_10004E3D0(v6);
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  swift_getObjectType();
  if (a3)
  {
    v5 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    v6 = self;
  }

  sub_10017A750(v12, v10);
  if (!v11)
  {
    sub_1000DB2F4(v10);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:

    v7 = 0;
    goto LABEL_9;
  }

  v7 = sub_10050B214(v9, self);

LABEL_9:
  sub_1000DB2F4(v12);
  return v7;
}

- (_TtC4Maps22MapsAutocompletePerson)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end