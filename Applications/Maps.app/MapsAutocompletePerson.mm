@interface MapsAutocompletePerson
+ (NSString)sharedLocationLabelIdentifier;
+ (void)autoCompletePersonFrom:(MapsSuggestionsEntry *)from completionHandler:(id)handler;
+ (void)autoCompletePersonWithContact:(CNContact *)contact completionHandler:(id)handler;
+ (void)autoCompletePersonWithHandleIdentifier:(NSString *)identifier completionHandler:(id)handler;
- (BOOL)canShowOpenFindMy;
- (BOOL)canShowRequestLocation;
- (BOOL)isEqual:(id)equal;
- (NSString)subTitle;
- (NSString)title;
- (NSURL)openFindMyURL;
- (NSURL)requestLocationURL;
- (_TtC4Maps22MapsAutocompletePerson)init;
- (_TtC4Maps22MapsAutocompletePerson)initWithContact:(id)contact contactMatchInfo:(id)info handle:(id)handle handleMatchInfo:(id)matchInfo;
- (id)contactPrioritizingWithAddressFor:(id)for kind:(unsigned int)kind cnLabelValueIdentifier:(id)identifier followedBy:(id)by;
- (id)copyWithZone:(void *)zone;
- (id)locationTimestampString:(BOOL)string;
- (id)updatedContactFrom:(id)from;
- (void)setContact:(id)contact;
- (void)setContactMatchInfo:(id)info;
- (void)setHandle:(id)handle;
- (void)setHandleMatchInfo:(id)info;
@end

@implementation MapsAutocompletePerson

+ (void)autoCompletePersonFrom:(MapsSuggestionsEntry *)from completionHandler:(id)handler
{
  v7 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = from;
  v11[3] = v10;
  v11[4] = self;
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
  fromCopy = from;
  sub_10054DB08(0, 0, v9, &unk_1011F66B0, v14);
}

+ (void)autoCompletePersonWithHandleIdentifier:(NSString *)identifier completionHandler:(id)handler
{
  v7 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = identifier;
  v11[3] = v10;
  v11[4] = self;
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
  identifierCopy = identifier;
  sub_10054DB08(0, 0, v9, &unk_10120B218, v14);
}

+ (void)autoCompletePersonWithContact:(CNContact *)contact completionHandler:(id)handler
{
  v7 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = contact;
  v11[3] = v10;
  v11[4] = self;
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
  contactCopy = contact;
  sub_10054DB08(0, 0, v9, &unk_1011F66B0, v14);
}

- (void)setContact:(id)contact
{
  v4 = *(self + OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_contact);
  *(self + OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_contact) = contact;
  contactCopy = contact;
}

- (void)setContactMatchInfo:(id)info
{
  v4 = *(self + OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_contactMatchInfo);
  *(self + OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_contactMatchInfo) = info;
  infoCopy = info;
}

- (void)setHandle:(id)handle
{
  v4 = *(self + OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_handle);
  *(self + OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_handle) = handle;
  handleCopy = handle;
}

- (void)setHandleMatchInfo:(id)info
{
  v4 = *(self + OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_handleMatchInfo);
  *(self + OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_handleMatchInfo) = info;
  infoCopy = info;
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

- (_TtC4Maps22MapsAutocompletePerson)initWithContact:(id)contact contactMatchInfo:(id)info handle:(id)handle handleMatchInfo:(id)matchInfo
{
  contactCopy = contact;
  infoCopy = info;
  handleCopy = handle;
  matchInfoCopy = matchInfo;
  v14 = sub_10050AF34(contact, info, handle, matchInfo);

  return v14;
}

- (NSString)title
{
  selfCopy = self;
  v3 = sub_100508C94();

  return v3;
}

- (NSURL)openFindMyURL
{
  selfCopy = self;
  v3 = sub_1005090E8();

  return v3;
}

- (NSURL)requestLocationURL
{
  selfCopy = self;
  v3 = sub_10050923C();

  return v3;
}

- (BOOL)canShowRequestLocation
{
  if (!*(self + OBJC_IVAR____TtC4Maps22MapsAutocompletePerson_contact))
  {
    return 0;
  }

  selfCopy = self;
  v3 = sub_10050923C();

  if (!v3)
  {
    return 0;
  }

  return 1;
}

- (BOOL)canShowOpenFindMy
{
  selfCopy = self;
  v3 = sub_1005096BC();

  return v3 & 1;
}

- (id)locationTimestampString:(BOOL)string
{
  selfCopy = self;
  sub_100509744(string);

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

- (NSString)subTitle
{
  selfCopy = self;
  v3 = sub_100509AEC();

  return v3;
}

- (id)updatedContactFrom:(id)from
{
  fromCopy = from;
  selfCopy = self;
  v6 = sub_100509E3C(fromCopy);

  return v6;
}

- (id)contactPrioritizingWithAddressFor:(id)for kind:(unsigned int)kind cnLabelValueIdentifier:(id)identifier followedBy:(id)by
{
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  forCopy = for;
  byCopy = by;
  selfCopy = self;
  v16 = sub_10050A3E8(forCopy, kind, v10, v12, by);

  return v16;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_10050ABDC(v6);

  sub_10005E838(v6, v6[3]);
  v4 = _bridgeAnythingToObjectiveC<A>(_:)();
  sub_10004E3D0(v6);
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  swift_getObjectType();
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    selfCopy2 = self;
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