uint64_t sub_10035890C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10015DA04(&qword_1006C4B10);
  sub_10015DA04(&qword_1006C4B18);

  return sub_100357E54(a1, a2, a3);
}

uint64_t sub_100358A10(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DA04(&unk_1006C4B20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t TagEntity.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  TagID.init(_:)();
  v4 = [v3 objectID];
  v5 = [v4 URIRepresentation];

  v6 = type metadata accessor for TagEntity();
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = [v3 standardizedContent];
  if (v7)
  {
    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  v12 = (a2 + v6[6]);
  *v12 = v9;
  v12[1] = v11;
  v13 = [v3 displayText];
  if (v13)
  {
    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0xE000000000000000;
  }

  v18 = (a2 + v6[7]);
  *v18 = v15;
  v18[1] = v17;
  sub_100456198(v3);
  if ((v19 & 0xC000000000000001) != 0)
  {
    v20 = __CocoaSet.count.getter();
  }

  else
  {
    v20 = *(v19 + 16);
  }

  *(a2 + v6[8]) = v20;
  sub_1004562CC(v3);
  v22 = v21;
  if ((v21 & 0xC000000000000001) != 0)
  {
    v23 = __CocoaSet.count.getter();
  }

  else
  {

    v23 = *(v22 + 16);
  }

  *(a2 + v6[9]) = v23;
  return result;
}

uint64_t sub_100358C3C()
{
  result = _s11MobileNotes18VisibleTablesQueryVACycfC_0();
  static TagEntity.defaultQuery = result;
  *algn_1006EF758 = v1;
  return result;
}

uint64_t *TagEntity.defaultQuery.unsafeMutableAddressor()
{
  if (qword_1006BC7E0 != -1)
  {
    swift_once();
  }

  return &static TagEntity.defaultQuery;
}

uint64_t static TagEntity.defaultQuery.getter()
{
  if (qword_1006BC7E0 != -1)
  {
    swift_once();
  }

  v0 = static TagEntity.defaultQuery;

  return v0;
}

uint64_t sub_100358D20()
{
  v0 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = type metadata accessor for LocalizedStringResource.BundleDescription();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for TypeDisplayRepresentation();
  sub_100025918(v10, static TagEntity.typeDisplayRepresentation);
  sub_10002597C(v10, static TagEntity.typeDisplayRepresentation);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  LocalizedStringResource.init(stringLiteral:)();
  (*(v9 + 56))(v2, 0, 1, v8);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t TagEntity.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (qword_1006BC7E8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();

  return sub_10002597C(v0, static TagEntity.typeDisplayRepresentation);
}

uint64_t static TagEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC7E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_10002597C(v2, static TagEntity.typeDisplayRepresentation);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t TagEntity.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TagID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TagEntity.id.setter(uint64_t a1)
{
  v3 = type metadata accessor for TagID();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t TagEntity.managedObjectURI.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TagEntity() + 20);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TagEntity.managedObjectURI.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TagEntity() + 20);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TagEntity.standardizedContent.getter()
{
  v1 = *(v0 + *(type metadata accessor for TagEntity() + 24));

  return v1;
}

uint64_t TagEntity.standardizedContent.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TagEntity() + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TagEntity.displayText.getter()
{
  v1 = *(v0 + *(type metadata accessor for TagEntity() + 28));

  return v1;
}

uint64_t TagEntity.displayText.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TagEntity() + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TagEntity.notesCount.setter(uint64_t a1)
{
  result = type metadata accessor for TagEntity();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t TagEntity.smartFoldersCount.setter(uint64_t a1)
{
  result = type metadata accessor for TagEntity();
  *(v1 + *(result + 36)) = a1;
  return result;
}

void TagEntity.hash(into:)()
{
  type metadata accessor for TagID();
  sub_10035BD14(&qword_1006C4B48, &type metadata accessor for TagID);
  dispatch thunk of Hashable.hash(into:)();
  v1 = type metadata accessor for TagEntity();
  type metadata accessor for URL();
  sub_10035BD14(&qword_1006C07C0, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(*(v0 + *(v1 + 32)));
  Hasher._combine(_:)(*(v0 + *(v1 + 36)));
}

Swift::Int TagEntity.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for TagID();
  sub_10035BD14(&qword_1006C4B48, &type metadata accessor for TagID);
  dispatch thunk of Hashable.hash(into:)();
  v1 = type metadata accessor for TagEntity();
  type metadata accessor for URL();
  sub_10035BD14(&qword_1006C07C0, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(*(v0 + *(v1 + 32)));
  Hasher._combine(_:)(*(v0 + *(v1 + 36)));
  return Hasher._finalize()();
}

Swift::Int sub_100359874(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for TagID();
  sub_10035BD14(&qword_1006C4B48, &type metadata accessor for TagID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for URL();
  sub_10035BD14(&qword_1006C07C0, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(*(v1 + *(a1 + 32)));
  Hasher._combine(_:)(*(v1 + *(a1 + 36)));
  return Hasher._finalize()();
}

void sub_1003599AC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TagID();
  sub_10035BD14(&qword_1006C4B48, &type metadata accessor for TagID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for URL();
  sub_10035BD14(&qword_1006C07C0, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(*(v2 + *(a2 + 32)));
  Hasher._combine(_:)(*(v2 + *(a2 + 36)));
}

Swift::Int sub_100359AD0(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for TagID();
  sub_10035BD14(&qword_1006C4B48, &type metadata accessor for TagID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for URL();
  sub_10035BD14(&qword_1006C07C0, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(*(v2 + *(a2 + 32)));
  Hasher._combine(_:)(*(v2 + *(a2 + 36)));
  return Hasher._finalize()();
}

uint64_t sub_100359C04@<X0>(void *a1@<X8>)
{
  if (qword_1006BC7E0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = *algn_1006EF758;
  *a1 = static TagEntity.defaultQuery;
  a1[1] = v1;
}

uint64_t sub_100359C80(uint64_t a1)
{
  v2 = sub_10035BD14(&qword_1006BCB08, type metadata accessor for TagEntity);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t TagEntity.description.getter()
{
  v1 = [objc_opt_self() ic_hashtagCharacterString];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = *(v0 + *(type metadata accessor for TagEntity() + 28));
  String.append(_:)(v3);
  return v2;
}

uint64_t TagEntity.localizedDescription.getter()
{
  v1 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v2);
  v3 = [objc_opt_self() ic_hashtagCharacterString];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v7);

  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v8);
  v9 = *(v0 + *(type metadata accessor for TagEntity() + 28));
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v9);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v10);
  return LocalizedStringResource.init(stringInterpolation:)();
}

uint64_t sub_100359E9C(uint64_t a1)
{
  v3 = [objc_opt_self() ic_hashtagCharacterString];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  String.append(_:)(*(v1 + *(a1 + 28)));
  return v4;
}

uint64_t TagEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v2 = sub_10015DA04(&unk_1006BEA80);
  __chkstk_darwin(v2 - 8);
  v4 = &v32 - v3;
  v5 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v5 - 8);
  v7 = &v32 - v6;
  v8 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v8 - 8);
  v33 = type metadata accessor for LocalizedStringResource();
  v9 = *(v33 - 8);
  __chkstk_darwin(v33);
  v34 = v1;
  TagEntity.displayRepresentationSubtitle.getter();
  if (v10)
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v11);
    v12 = [objc_opt_self() ic_hashtagCharacterString];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16._countAndFlagsBits = v13;
    v16._object = v15;
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v16);

    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v17);
    v18 = *(v34 + *(type metadata accessor for TagEntity() + 28));
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v18);
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v19);
    LocalizedStringResource.init(stringInterpolation:)();
    LocalizedStringResource.init(stringLiteral:)();
    v20 = 0;
  }

  else
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v21);
    v22 = [objc_opt_self() ic_hashtagCharacterString];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26._countAndFlagsBits = v23;
    v26._object = v25;
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v26);

    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v27);
    v28 = *(v34 + *(type metadata accessor for TagEntity() + 28));
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v28);
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v29);
    LocalizedStringResource.init(stringInterpolation:)();
    v20 = 1;
  }

  (*(v9 + 56))(v7, v20, 1, v33);
  v30 = type metadata accessor for DisplayRepresentation.Image();
  (*(*(v30 - 8) + 56))(v4, 1, 1, v30);
  return DisplayRepresentation.init(title:subtitle:image:)();
}

uint64_t TagEntity.displayRepresentationSubtitle.getter()
{
  v1 = type metadata accessor for TagEntity();
  v2 = *(v0 + *(v1 + 36));
  v3 = *(v0 + *(v1 + 32));
  if (v2 <= 0)
  {
    if (v3 < 1)
    {
      return 0;
    }

    sub_10015DA04(&qword_1006C1A30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100531E30;
    *(inited + 32) = v3;
    *(inited + 56) = &type metadata for Int;
    *(inited + 64) = &protocol witness table for Int;
    v5 = [objc_opt_self() mainBundle];
  }

  else
  {
    sub_10015DA04(&qword_1006C1A30);
    inited = swift_initStackObject();
    if (v3 <= 0)
    {
      *(inited + 16) = xmmword_100531E30;
      *(inited + 32) = v2;
      *(inited + 56) = &type metadata for Int;
      *(inited + 64) = &protocol witness table for Int;
    }

    else
    {
      *(inited + 32) = v3;
      *(inited + 16) = xmmword_100535E30;
      *(inited + 56) = &type metadata for Int;
      *(inited + 64) = &protocol witness table for Int;
      *(inited + 96) = &type metadata for Int;
      *(inited + 104) = &protocol witness table for Int;
      *(inited + 72) = v2;
    }

    v5 = [objc_opt_self() mainBundle];
  }

  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 localizedStringForKey:v6 value:0 table:0];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  v11 = sub_10035B3E8(inited, v8, v10);
  swift_bridgeObjectRelease_n();
  swift_setDeallocating();
  sub_10015DA04(&unk_1006C5D10);
  swift_arrayDestroy();
  return v11;
}

uint64_t sub_10035A564(uint64_t a1)
{
  v2 = sub_10035BD14(&qword_1006C4B88, type metadata accessor for TagEntity);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t TagEntity.init(for:in:)(uint64_t a1, void *a2, void *a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = type metadata accessor for TagEntity();
  v3[6] = swift_task_alloc();
  v6 = a2;
  v7 = a3;

  return _swift_task_switch(sub_10035A698, 0, 0);
}

uint64_t sub_10035A698()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_allocObject();
  v0[7] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = v2;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_10035A784;
  v8 = v0[5];
  v7 = v0[6];

  return NSManagedObjectContext.perform<A>(_:)(v7, sub_1001927A0, v3, v8);
}

uint64_t sub_10035A784()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_100313B00;
  }

  else
  {

    v2 = sub_10035A8A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10035A8A0()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  sub_10035B964(v1, v4);

  v5 = v0[1];

  return v5();
}

uint64_t TagEntity.init(for:in:includeContents:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_10035A958, 0, 0);
}

uint64_t sub_10035A958()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_allocObject();
  v0[5] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = v1;
  v5 = v2;
  v6 = swift_task_alloc();
  v0[6] = v6;
  v7 = type metadata accessor for TagEntity();
  *v6 = v0;
  v6[1] = sub_100313CA8;
  v8 = v0[2];

  return NSManagedObjectContext.perform<A>(_:)(v8, sub_10035BDD0, v3, v7);
}

uint64_t sub_10035AA50@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 0;
  v4 = [a1 existingObjectWithID:a2 error:&v10];
  v5 = v10;
  if (v4)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClassUnconditional();
    v7 = v5;
    return TagEntity.init(_:)(v6, a3);
  }

  else
  {
    v9 = v10;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

uint64_t TagEntity.init(for:in:includeContents:noteContext:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a3;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a2;
  v5[6] = type metadata accessor for TagEntity();
  v5[7] = swift_task_alloc();
  v8 = a2;
  v9 = a3;

  return _swift_task_switch(sub_10035ABF0, 0, 0);
}

uint64_t sub_10035ABF0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_allocObject();
  v0[8] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = v2;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_10035ACDC;
  v8 = v0[6];
  v7 = v0[7];

  return NSManagedObjectContext.perform<A>(_:)(v7, sub_10035BDD0, v3, v8);
}

uint64_t sub_10035ACDC()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100314400;
  }

  else
  {

    v2 = sub_10035ADF8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10035ADF8()
{
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v5 = v0[3];

  sub_10035B964(v1, v4);

  v6 = v0[1];

  return v6();
}

uint64_t static TagEntity.managedObjectID(for:in:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1001B70EC;

  return (sub_10035B620)(a1, a2);
}

void sub_10035AF4C(uint64_t a1@<X2>, void *a2@<X8>)
{
  v4 = objc_opt_self();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 hashtagObjectIDWithStandardizedContent:v5 context:a1];

  *a2 = v6;
}

uint64_t sub_10035AFDC(uint64_t a1, void *a2, void *a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000A1FC;

  return TagEntity.init(for:in:)(a1, a2, a3);
}

uint64_t sub_10035B08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a3;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a2;
  return _swift_task_switch(sub_10035B0B0, 0, 0);
}

uint64_t sub_10035B0B0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_allocObject();
  v0[6] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = v1;
  v5 = v2;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_100314968;
  v7 = v0[5];
  v8 = v0[2];

  return NSManagedObjectContext.perform<A>(_:)(v8, sub_10035BDD0, v3, v7);
}

uint64_t sub_10035B19C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_10000A600;

  return TagEntity.init(for:in:includeContents:noteContext:)(a1, a2, a3, 0, a5);
}

uint64_t sub_10035B258(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1001B75E8;

  return (sub_10035B620)(a1, a2);
}

BOOL _s11MobileNotes9TagEntityV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (static TagID.== infix(_:_:)() & 1) != 0 && (v4 = type metadata accessor for TagEntity(), (static URL.== infix(_:_:)()) && ((v5 = v4[6], v6 = *(a1 + v5), v7 = *(a1 + v5 + 8), v8 = (a2 + v5), v6 == *v8) ? (v9 = v7 == v8[1]) : (v9 = 0), (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && ((v10 = v4[7], v11 = *(a1 + v10), v12 = *(a1 + v10 + 8), v13 = (a2 + v10), v11 == *v13) ? (v14 = v12 == v13[1]) : (v14 = 0), (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *(a1 + v4[8]) == *(a2 + v4[8]))))
  {
    return *(a1 + v4[9]) == *(a2 + v4[9]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10035B3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for __VaListBuilder();
  v4 = swift_allocObject();
  v4[2] = 8;
  v4[3] = 0;
  v5 = v4 + 3;
  v4[4] = 0;
  v4[5] = 0;
  v6 = *(a1 + 16);
  if (!v6)
  {
LABEL_26:
    v24 = __VaListBuilder.va_list()();
    sub_10035BD84();
    v29[3] = type metadata accessor for Locale();
    sub_100180240(v29);

    static Locale.current.getter();
    v25 = sub_100455F2C(a2, a3, v29, v24);
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v26;
  }

  v7 = 0;
  v8 = a1 + 32;
  while (1)
  {
    sub_10017CC60((v8 + 40 * v7), *(v8 + 40 * v7 + 24));
    result = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v10 = *v5;
    v11 = *(result + 16);
    v12 = __OFADD__(*v5, v11);
    v13 = *v5 + v11;
    if (v12)
    {
      break;
    }

    v14 = v4[4];
    if (v14 >= v13)
    {
      goto LABEL_18;
    }

    if (v14 + 0x4000000000000000 < 0)
    {
      goto LABEL_29;
    }

    v15 = v4[5];
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    v4[4] = v13;
    if ((v13 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_30;
    }

    v16 = result;
    v17 = swift_slowAlloc();
    v18 = v17;
    v4[5] = v17;
    if (v15)
    {
      if (v17 != v15 || v17 >= &v15[8 * v10])
      {
        memmove(v17, v15, 8 * v10);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      result = v16;
LABEL_18:
      v18 = v4[5];
      if (!v18)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    result = v16;
    if (!v18)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_19:
    v20 = *(result + 16);
    if (v20)
    {
      v21 = (result + 32);
      v22 = *v5;
      while (1)
      {
        v23 = *v21++;
        *&v18[8 * v22] = v23;
        v22 = *v5 + 1;
        if (__OFADD__(*v5, 1))
        {
          break;
        }

        *v5 = v22;
        if (!--v20)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
      break;
    }

LABEL_3:

    if (++v7 == v6)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_10035B620(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return _swift_task_switch(sub_10035B640, 0, 0);
}

uint64_t sub_10035B640()
{
  v1 = [*(v0 + 32) modernManagedObjectContext];
  *(v0 + 40) = v1;
  v2 = objc_opt_self();
  TagID.displayText.getter();
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 standardizedHashtagRepresentationForDisplayText:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = swift_allocObject();
  *(v0 + 48) = v8;
  v8[2] = v5;
  v8[3] = v7;
  v8[4] = v1;
  v1;
  v9 = swift_task_alloc();
  *(v0 + 56) = v9;
  v10 = sub_10015DA04(&unk_1006BFED0);
  *v9 = v0;
  v9[1] = sub_10035B7C4;

  return NSManagedObjectContext.perform<A>(_:)(v0 + 16, sub_100192738, v8, v10);
}

uint64_t sub_10035B7C4()
{

  if (v0)
  {
  }

  else
  {

    return _swift_task_switch(sub_10035B900, 0, 0);
  }
}

uint64_t sub_10035B900()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10035B964(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TagEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10035BBC8()
{
  result = qword_1006C4B78;
  if (!qword_1006C4B78)
  {
    sub_10017992C(&qword_1006C4B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C4B78);
  }

  return result;
}

uint64_t sub_10035BCBC(uint64_t a1)
{
  result = sub_10035BD14(&qword_1006BCB08, type metadata accessor for TagEntity);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10035BD14(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10035BD84()
{
  result = qword_1006C21F0;
  if (!qword_1006C21F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006C21F0);
  }

  return result;
}

void sub_10035BE58()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for FolderComposerFolderViewController();
  objc_msgSendSuper2(&v9, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1003E2DB4();
    [v2 addSubview:v3];

    [*&v0[OBJC_IVAR____TtC11MobileNotes37FolderComposerSelectionViewController____lazy_storage___collectionView] ic_addAnchorsToFillSuperview];
    v4 = [v0 navigationItem];
    v5 = [objc_opt_self() mainBundle];
    v6 = String._bridgeToObjectiveC()();
    v7 = [v5 localizedStringForKey:v6 value:0 table:0];

    if (!v7)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = String._bridgeToObjectiveC()();
    }

    [v4 setTitle:v7];

    v8 = sub_10035C138();
    [v8 reloadDataAnimated:0];
  }

  else
  {
    __break(1u);
  }
}

char *sub_10035C138()
{
  v1 = OBJC_IVAR____TtC11MobileNotes34FolderComposerFolderViewController____lazy_storage___folderSelectionDataSource;
  v2 = *(v0 + OBJC_IVAR____TtC11MobileNotes34FolderComposerFolderViewController____lazy_storage___folderSelectionDataSource);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MobileNotes34FolderComposerFolderViewController____lazy_storage___folderSelectionDataSource);
LABEL_8:
    v18 = v2;
    return v3;
  }

  result = [objc_opt_self() sharedContext];
  if (result)
  {
    v5 = result;
    v6 = [result managedObjectContext];

    v7 = [objc_opt_self() sharedContext];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 managedObjectContext];
    }

    else
    {
      v9 = 0;
    }

    v10 = *(v0 + OBJC_IVAR____TtC11MobileNotes34FolderComposerFolderViewController_accountObjectID);
    v11 = *(v0 + OBJC_IVAR____TtC11MobileNotes34FolderComposerFolderViewController_folderSelection);
    v12 = v10;
    v13 = v0;
    v14 = sub_1003E2DB4();
    v15 = objc_allocWithZone(type metadata accessor for FolderComposerFolderSelectionDataSource());
    v16 = sub_1001D1FF4(v6, v9, v11, v12, v14);
    v17 = *(v13 + v1);
    *(v13 + v1) = v16;
    v3 = v16;

    v2 = 0;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void sub_10035C2C0()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MobileNotes34FolderComposerFolderViewController____lazy_storage___folderSelectionDataSource);
}

id sub_10035C310()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FolderComposerFolderViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FolderComposerFolderViewController()
{
  result = qword_1006C4CA8;
  if (!qword_1006C4CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10035C44C()
{
  v1 = v0;
  v2 = sub_1003E2DB4();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v30 = [v2 cellForItemAtIndexPath:isa];

  if (v30)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4 && (v29 = v4, (v5 = [v4 noteContainer]) != 0) && (v6 = v5, v7 = objc_msgSend(v5, "identifier"), v6, v7))
    {
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;
      v11 = OBJC_IVAR____TtC11MobileNotes34FolderComposerFolderViewController_folderSelection;
      v12 = *(v1 + OBJC_IVAR____TtC11MobileNotes34FolderComposerFolderViewController_folderSelection);
      v13 = v7;
      v14 = [v12 folderIdentifiers];
      v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v31 = v8;
      v32 = v10;
      __chkstk_darwin(v16);
      v28 = &v31;
      v17 = sub_100474E24(sub_1001D3624, v27, v15);

      v18 = *(v1 + v11);
      v19 = v18;
      v20 = &selRef_removeFolderIdentifier_;
      if ((v17 & 1) == 0)
      {
        v20 = &selRef_addFolderIdentifier_;
      }

      [v18 *v20];

      v21 = [*(v1 + v11) folderIdentifiers];
      v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v31 = v8;
      v32 = v10;
      __chkstk_darwin(v23);
      v28 = &v31;
      v24 = sub_100474E24(sub_10035C74C, v27, v22);

      [v29 setShowsCheckmark:v24 & 1];
      v25 = *(v1 + OBJC_IVAR____TtC11MobileNotes37FolderComposerSelectionViewController____lazy_storage___collectionView);
      v26 = IndexPath._bridgeToObjectiveC()().super.isa;
      [v25 deselectItemAtIndexPath:v26 animated:0];
    }

    else
    {
    }
  }
}

uint64_t static ICViewControllerManager.createDonation(of:transcript:date:isFeedbackPositive:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 380) = a4;
  *(v5 + 56) = a3;
  *(v5 + 64) = v4;
  *(v5 + 40) = a1;
  *(v5 + 48) = a2;
  v6 = type metadata accessor for UUID();
  *(v5 + 72) = v6;
  *(v5 + 80) = *(v6 - 8);
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = swift_task_alloc();
  *(v5 + 104) = swift_task_alloc();
  sub_10015DA04(&unk_1006BE0B0);
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();
  sub_10015DA04(&qword_1006C4CB8);
  *(v5 + 128) = swift_task_alloc();
  sub_10015DA04(&qword_1006C4CC0);
  *(v5 + 136) = swift_task_alloc();
  sub_10015DA04(&qword_1006C4CC8);
  *(v5 + 144) = swift_task_alloc();
  type metadata accessor for Locale();
  *(v5 + 152) = swift_task_alloc();
  type metadata accessor for Date();
  *(v5 + 160) = swift_task_alloc();
  v7 = type metadata accessor for SpeechDonation();
  *(v5 + 168) = v7;
  *(v5 + 176) = *(v7 - 8);
  *(v5 + 184) = swift_task_alloc();
  v8 = type metadata accessor for SpeechDonation.TranscriptionEvaluation();
  *(v5 + 192) = v8;
  *(v5 + 200) = *(v8 - 8);
  *(v5 + 208) = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  *(v5 + 216) = v9;
  *(v5 + 224) = *(v9 - 8);
  *(v5 + 232) = swift_task_alloc();
  *(v5 + 240) = swift_task_alloc();
  *(v5 + 248) = swift_task_alloc();
  *(v5 + 256) = swift_task_alloc();
  *(v5 + 264) = swift_task_alloc();
  type metadata accessor for URL();
  *(v5 + 272) = swift_task_alloc();
  v10 = type metadata accessor for AudioBufferSequence();
  *(v5 + 280) = v10;
  *(v5 + 288) = *(v10 - 8);
  *(v5 + 296) = swift_task_alloc();
  *(v5 + 304) = swift_task_alloc();
  *(v5 + 312) = swift_task_alloc();

  return _swift_task_switch(sub_10035CB70, 0, 0);
}

uint64_t sub_10035CB70()
{
  v1 = [objc_allocWithZone(AVAudioFormat) initWithCommonFormat:3 sampleRate:1 channels:0 interleaved:16000.0];
  *(v0 + 320) = v1;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  AudioBufferSequence.init(url:processingFormat:)();
  (*(*(v0 + 288) + 32))(*(v0 + 312), *(v0 + 304), *(v0 + 280));
  *(v0 + 16) = _swiftEmptyArrayStorage;
  AudioBufferSequence.makeAsyncIterator()();
  *(v0 + 328) = _swiftEmptyArrayStorage;
  *(v0 + 376) = 960000;
  v3 = sub_10035E4E0(&qword_1006C4CD0, &type metadata accessor for AudioBufferSequence);
  v4 = swift_task_alloc();
  *(v0 + 336) = v4;
  *v4 = v0;
  v4[1] = sub_10035CF04;
  v5 = *(v0 + 280);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 24, v5, v3);
}

uint64_t sub_10035CF04()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_10035D48C;
  }

  else
  {
    v2 = sub_10035D018;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10035D03C()
{
  v1 = *(v0 + 352);
  if (!v1)
  {
    v8 = *(*(v0 + 288) + 8);
    v8(*(v0 + 296), *(v0 + 280));
LABEL_7:
    *(v0 + 360) = v8;
    if (*(v0 + 380) == 1)
    {
      static SpeechDonation.TranscriptionEvaluation.accurate.getter();
    }

    else
    {
      static SpeechDonation.TranscriptionEvaluation.inaccurate.getter();
    }

    v9 = *(v0 + 200);
    v10 = *(v0 + 208);
    v11 = *(v0 + 192);
    v12 = *(v0 + 144);
    v25 = *(v0 + 136);
    v26 = *(v0 + 128);
    v13 = ICNotesAppBundleIdentifier();
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    static Locale.current.getter();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v9 + 16))(v12, v10, v11);
    (*(v9 + 56))(v12, 0, 1, v11);
    v14 = type metadata accessor for TaskHint();
    (*(*(v14 - 8) + 56))(v25, 1, 1, v14);
    v15 = type metadata accessor for SpeechDonation.AudioSource();
    (*(*(v15 - 8) + 56))(v26, 1, 1, v15);
    SpeechDonation.init(donorBundleID:recordingDate:audioBuffers:locale:transcription:evaluation:speechAttributes:taskHint:audioSource:)();
    v16 = swift_task_alloc();
    *(v0 + 368) = v16;
    *v16 = v0;
    v16[1] = sub_10035D768;
    v17 = *(v0 + 120);

    return SpeechDonation.donate()(v17);
  }

  v2 = *(v0 + 376);
  v3 = [*(v0 + 352) frameLength];
  if (v2 < v3)
  {
    v4 = [swift_getObjCClassFromMetadata() trimBuffer:v1 toFrameLength:*(v0 + 376)];
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v6 = *(v0 + 288);
    v5 = *(v0 + 296);
    v7 = *(v0 + 280);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v8 = *(v6 + 8);
    v8(v5, v7);
    goto LABEL_7;
  }

  v18 = v3;
  v19 = v1;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v20 = *(v0 + 376);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  *(v0 + 328) = *(v0 + 16);
  *(v0 + 376) = v20 - v18;
  v21 = sub_10035E4E0(&qword_1006C4CD0, &type metadata accessor for AudioBufferSequence);
  v22 = swift_task_alloc();
  *(v0 + 336) = v22;
  *v22 = v0;
  v22[1] = sub_10035CF04;
  v23 = *(v0 + 280);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 24, v23, v21);
}

uint64_t sub_10035D48C()
{
  *(v0 + 32) = *(v0 + 344);
  sub_10015DA04(&unk_1006C9B40);
  swift_willThrowTypedImpl();

  return _swift_task_switch(sub_10035D52C, 0, 0);
}

uint64_t sub_10035D52C()
{
  v1 = *(v0[36] + 8);
  v1(v0[37], v0[35]);
  static Logger.audioTranscription.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Audio Donation: Failure iterating audio buffer", v4, 2u);
  }

  v5 = v0[39];
  v6 = v0[40];
  v7 = v0[35];
  v8 = v0[33];
  v9 = v0[27];
  v10 = v0[28];

  (*(v10 + 8))(v8, v9);
  v1(v5, v7);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10035D768()
{

  return _swift_task_switch(sub_10035D864, 0, 0);
}

uint64_t sub_10035D864()
{
  v71 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  sub_100294900(*(v0 + 120), v1);
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    v15 = *(v0 + 80);
    v16 = *(v0 + 380);
    (*(v15 + 32))(*(v0 + 104), *(v0 + 112), *(v0 + 72));
    v17 = (v15 + 16);
    v18 = *(v0 + 104);
    v19 = *(v0 + 72);
    if (v16 == 1)
    {
      v20 = *(v0 + 96);
      static Logger.audioTranscription.getter();
      (*v17)(v20, v18, v19);
      v21 = Logger.logObject.getter();
      v53 = static os_log_type_t.info.getter();
      v22 = os_log_type_enabled(v21, v53);
      v23 = *(v0 + 360);
      v25 = *(v0 + 312);
      v24 = *(v0 + 320);
      v26 = *(v0 + 280);
      v27 = *(v0 + 224);
      v55 = *(v0 + 216);
      v56 = *(v0 + 256);
      v66 = *(v0 + 208);
      v68 = *(v0 + 200);
      v63 = *(v0 + 176);
      v64 = *(v0 + 192);
      v59 = *(v0 + 168);
      v61 = *(v0 + 184);
      v57 = *(v0 + 120);
      v28 = *(v0 + 96);
      v54 = *(v0 + 104);
      v29 = *(v0 + 72);
      v30 = *(v0 + 80);
      if (v22)
      {
        v52 = *(v0 + 360);
        v31 = swift_slowAlloc();
        v51 = v25;
        v32 = swift_slowAlloc();
        v70 = v32;
        *v31 = 136315138;
        sub_10035E4E0(&qword_1006C2580, &type metadata accessor for UUID);
        v49 = v24;
        v50 = v26;
        v33 = dispatch thunk of CustomStringConvertible.description.getter();
        v35 = v34;
        log = v21;
        v36 = *(v30 + 8);
        v36(v28, v29);
        v37 = sub_100009D88(v33, v35, &v70);

        *(v31 + 4) = v37;
        v38 = "Audio Donation: Success reporting positive feedback with UUID: %s";
LABEL_10:
        _os_log_impl(&_mh_execute_header, log, v53, v38, v31, 0xCu);
        sub_100009F60(v32);

        (*(v27 + 8))(v56, v55);
        v36(v54, v29);
        sub_10035E478(v57);
        (*(v63 + 8))(v61, v59);
        (*(v68 + 8))(v66, v64);
        v52(v51, v50);
        goto LABEL_13;
      }
    }

    else
    {
      v39 = *(v0 + 88);
      static Logger.audioTranscription.getter();
      (*v17)(v39, v18, v19);
      v21 = Logger.logObject.getter();
      v53 = static os_log_type_t.info.getter();
      v40 = os_log_type_enabled(v21, v53);
      v23 = *(v0 + 360);
      v25 = *(v0 + 312);
      v24 = *(v0 + 320);
      v26 = *(v0 + 280);
      v27 = *(v0 + 224);
      v55 = *(v0 + 216);
      v56 = *(v0 + 248);
      v66 = *(v0 + 208);
      v68 = *(v0 + 200);
      v63 = *(v0 + 176);
      v64 = *(v0 + 192);
      v59 = *(v0 + 168);
      v61 = *(v0 + 184);
      v57 = *(v0 + 120);
      v54 = *(v0 + 104);
      v30 = *(v0 + 80);
      v28 = *(v0 + 88);
      v29 = *(v0 + 72);
      if (v40)
      {
        v52 = *(v0 + 360);
        v31 = swift_slowAlloc();
        v51 = v25;
        v32 = swift_slowAlloc();
        v70 = v32;
        *v31 = 136315138;
        sub_10035E4E0(&qword_1006C2580, &type metadata accessor for UUID);
        v49 = v24;
        v50 = v26;
        v41 = dispatch thunk of CustomStringConvertible.description.getter();
        v43 = v42;
        log = v21;
        v36 = *(v30 + 8);
        v36(v28, v29);
        v44 = sub_100009D88(v41, v43, &v70);

        *(v31 + 4) = v44;
        v38 = "Audio Donation: Success reporting negative feedback with UUID: %s";
        goto LABEL_10;
      }
    }

    v45 = *(v30 + 8);
    v45(v28, v29);
    (*(v27 + 8))(v56, v55);
    v45(v54, v29);
    sub_10035E478(v57);
    (*(v63 + 8))(v61, v59);
    (*(v68 + 8))(v66, v64);
    v23(v25, v26);
    goto LABEL_13;
  }

  sub_10035E478(*(v0 + 112));
  static Logger.audioTranscription.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Audio Donation: Failure", v6, 2u);
  }

  v7 = *(v0 + 320);
  v67 = *(v0 + 312);
  v69 = *(v0 + 360);
  v65 = *(v0 + 280);
  v8 = *(v0 + 240);
  v9 = *(v0 + 216);
  v10 = *(v0 + 224);
  v11 = *(v0 + 200);
  v60 = *(v0 + 192);
  v62 = *(v0 + 208);
  v58 = *(v0 + 184);
  v13 = *(v0 + 168);
  v12 = *(v0 + 176);
  v14 = *(v0 + 120);

  (*(v10 + 8))(v8, v9);
  sub_10035E478(v14);
  (*(v12 + 8))(v58, v13);
  (*(v11 + 8))(v62, v60);
  v69(v67, v65);
LABEL_13:

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_10035E134(void *a1, void *a2, void *a3, char a4, void *aBlock)
{
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[5] = _Block_copy(aBlock);
  swift_getObjCClassMetadata();
  v10 = a1;
  v11 = a2;
  v12 = a3;
  v13 = swift_task_alloc();
  v5[6] = v13;
  *v13 = v5;
  v13[1] = sub_10035E234;

  return static ICViewControllerManager.createDonation(of:transcript:date:isFeedbackPositive:)(v10, v11, v12, a4);
}

uint64_t sub_10035E234()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v7 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_10035E3A4(uint64_t result, uint64_t a2, uint64_t a3, int a4, void *__dst, uint64_t a6)
{
  if (__OFADD__(result, a2 - result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = result;
  v8 = __OFSUB__(a2, result);
  result = a2 - result;
  if (result < 0 != v8)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (!a3)
  {
    return 0;
  }

  if (result > a6)
  {
    goto LABEL_12;
  }

  v9 = (a3 + 2 * v7);
  if (v9 != __dst || a3 + 2 * a2 <= __dst)
  {
    v10 = result;
    memmove(__dst, v9, 2 * result);
    return v10;
  }

  return result;
}

uint64_t sub_10035E478(uint64_t a1)
{
  v2 = sub_10015DA04(&unk_1006BE0B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10035E4E0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10035E528(void *a1, uint64_t a2)
{
  v4 = [a1 int16ChannelData];
  v5 = [a1 format];
  v6 = [v5 channelCount];

  if (v6)
  {
    v7 = *v4;
  }

  else
  {
    v7 = 0;
  }

  v8 = [a1 frameLength];
  v9 = [a1 frameLength];
  v10 = [a1 format];
  v11 = [objc_allocWithZone(AVAudioPCMBuffer) initWithPCMFormat:v10 frameCapacity:a2];

  if (v11)
  {
    [v11 setFrameLength:{objc_msgSend(v11, "frameCapacity")}];
    v12 = [v11 int16ChannelData];
    v13 = [v11 format];
    v14 = [v13 channelCount];

    if (v14)
    {
      v15 = *v12;
    }

    else
    {
      v15 = 0;
    }

    if (v9 >= a2)
    {
      a2 = a2;
    }

    else
    {
      a2 = v9;
    }

    sub_10035E3A4(0, a2, v7, v8, v15, [v11 frameLength]);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10035E6CC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10000A1FC;

  return sub_10035E134(v2, v3, v4, v5, v6);
}

uint64_t sub_10035E7A4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

void sub_10035E7E4(uint64_t a1, void *a2)
{
  v4 = sub_10015DA04(&qword_1006C4D50);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_1001CE3BC;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001CDDB4;
  aBlock[3] = &unk_100658E18;
  v10 = _Block_copy(aBlock);

  [a2 performDecisionWithCompletion:v10];
  _Block_release(v10);
}

uint64_t MoveNotesToFolderIntent.perform()(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = type metadata accessor for NoteEntity(0);
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = type metadata accessor for FolderEntity();
  v2[18] = swift_task_alloc();
  v2[19] = type metadata accessor for MainActor();
  v2[20] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[21] = v5;
  v2[22] = v4;

  return _swift_task_switch(sub_10035EABC, v5, v4);
}

uint64_t sub_10035EABC()
{
  v1 = *(v0[13] + 16);
  v0[23] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [v2 rootViewController];
    v0[24] = v3;
    if (v3)
    {
      v38 = v3;
      IntentParameter.wrappedValue.getter();
      v4 = v0[6];
      v5 = *(v4 + 16);
      if (v5)
      {
        v6 = v0[15];
        v39 = v0[14];
        v7 = specialized ContiguousArray.reserveCapacity(_:)();
        v10 = 0;
        v40 = v6;
        v11 = v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
        while (v10 < *(v4 + 16))
        {
          sub_100361190(v11 + *(v40 + 72) * v10, v0[16], type metadata accessor for NoteEntity);
          AppDependency.wrappedValue.getter();
          v12 = v0[7];
          URL._bridgeToObjectiveC()(*(v39 + 20));
          v14 = v13;
          v15 = [v12 managedObjectIDForURIRepresentation:v13];

          if (!v15)
          {
            goto LABEL_22;
          }

          v16 = v4;
          v17 = v5;
          v7 = [v12 managedObjectContextForObjectID:v15];
          if (!v7)
          {
            goto LABEL_23;
          }

          v18 = v7;
          ++v10;
          v19 = v0[16];
          v20 = [v7 objectWithID:v15];

          sub_1001E34E4(v19, type metadata accessor for NoteEntity);
          v0[8] = &OBJC_PROTOCOL___ICSearchIndexableNote;
          swift_dynamicCastObjCProtocolUnconditional();
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v7 = specialized ContiguousArray._endMutation()();
          v5 = v17;
          v21 = v17 == v10;
          v4 = v16;
          if (v21)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
      }

      else
      {
LABEL_16:

        v24 = v0[17];
        IntentParameter.wrappedValue.getter();
        AppDependency.wrappedValue.getter();
        v25 = v0[9];
        URL._bridgeToObjectiveC()(*(v24 + 20));
        v27 = v26;
        v28 = [v25 managedObjectIDForURIRepresentation:v26];

        if (v28)
        {
          v7 = [v25 managedObjectContextForObjectID:v28];
          if (v7)
          {
            v29 = v7;
            v30 = v0[18];
            v0[25] = [v7 objectWithID:v28];

            sub_1001E34E4(v30, type metadata accessor for FolderEntity);
            v0[10] = &OBJC_PROTOCOL___ICFolderObject;
            v31 = swift_dynamicCastObjCProtocolUnconditional();
            sub_10035F52C(_swiftEmptyArrayStorage);

            v32 = objc_allocWithZone(ICMoveDecisionController);
            v33 = v38;
            isa = Array._bridgeToObjectiveC()().super.isa;

            v35 = [v32 initWithSourceObjects:isa presentingViewController:v33];
            v0[26] = v35;

            [v35 setDestination:v31];
            v0[27] = static MainActor.shared.getter();
            v36 = dispatch thunk of Actor.unownedExecutor.getter();
            v9 = v37;
            v0[28] = v36;
            v0[29] = v37;
            v7 = sub_10035F08C;
            v8 = v36;

            return _swift_task_switch(v7, v8, v9);
          }

LABEL_25:
          __break(1u);
          return _swift_task_switch(v7, v8, v9);
        }
      }

      __break(1u);
      goto LABEL_25;
    }

    type metadata accessor for ICError(0);
    v0[5] = 222;
    sub_1001E27A0(_swiftEmptyArrayStorage);
    sub_1003612E0(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  else
  {

    type metadata accessor for ICError(0);
    v0[3] = 222;
    sub_1001E27A0(_swiftEmptyArrayStorage);
    sub_1003612E0(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_10035F08C()
{
  v1 = v0[26];
  v2 = static MainActor.shared.getter();
  v0[30] = v2;
  v3 = swift_task_alloc();
  v0[31] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[32] = v4;
  v5 = sub_10015DA04(&qword_1006BF4A0);
  *v4 = v0;
  v4[1] = sub_10035F1A8;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 11, v2, &protocol witness table for MainActor, 0xD000000000000011, 0x8000000100563410, sub_100360890, v3, v5);
}

uint64_t sub_10035F1A8()
{
  v1 = *v0;

  v2 = *(v1 + 232);
  v3 = *(v1 + 224);

  return _swift_task_switch(sub_10035F320, v3, v2);
}

uint64_t sub_10035F320()
{

  v1 = *(v0 + 168);
  v2 = *(v0 + 176);

  return _swift_task_switch(sub_10035F384, v1, v2);
}

uint64_t sub_10035F384()
{
  v2 = v0[25];
  v1 = v0[26];
  v4 = v0[23];
  v3 = v0[24];

  static IntentResult.result<>()();

  v5 = v0[1];

  return v5();
}

double MoveNotesToFolderIntent.init()@<D0>(uint64_t a1@<X8>)
{
  sub_100360898(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t MoveNotesToFolderIntent.container.setter(uint64_t a1)
{
  v2 = type metadata accessor for FolderEntity();
  __chkstk_darwin(v2 - 8);
  sub_100361190(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FolderEntity);
  IntentParameter.wrappedValue.setter();
  return sub_1001E34E4(a1, type metadata accessor for FolderEntity);
}

char *sub_10035F52C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_100189504(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_10015DA04(&unk_1006BFA20);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_100189504((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_10001FA64(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      do
      {
        v9 = *v8;
        sub_10015DA04(&unk_1006BFA20);
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_100189504((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_10001FA64(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_10035F724(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100189564(0, v1, 0);
    v3 = (a1 + 48);
    do
    {
      v4 = *v3;

      v5 = v4;
      sub_10015DA04(&qword_1006BF438);
      sub_10015DA04(&unk_1006C4D40);
      swift_dynamicCast();
      v6 = v12;
      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      if (v8 >= v7 >> 1)
      {
        sub_100189564((v7 > 1), v8 + 1, 1);
        v6 = v12;
      }

      _swiftEmptyArrayStorage[2] = v8 + 1;
      v9 = &_swiftEmptyArrayStorage[3 * v8];
      v9[4] = v11;
      *(v9 + 5) = v6;
      v3 += 3;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

char *sub_10035F884(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_100189504(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_1000054A4(0, &qword_1006C2D00);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_100189504((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_10001FA64(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_1000054A4(0, &qword_1006C2D00);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_100189504((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_10001FA64(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_10035FA80(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    v6 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = a1 + 32;
    do
    {
      sub_10000A2A0(v4, &v5);
      sub_1000054A4(0, &unk_1006C4D30);
      swift_dynamicCast();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v4 += 32;
      --v2;
    }

    while (v2);
    return v6;
  }

  return result;
}

char *sub_10035FB8C(unint64_t a1, unint64_t *a2)
{
  if (a1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  result = sub_1001896E4(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = 0;
      do
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_1000054A4(0, a2);
        swift_dynamicCast();
        v8 = _swiftEmptyArrayStorage[2];
        v7 = _swiftEmptyArrayStorage[3];
        if (v8 >= v7 >> 1)
        {
          sub_1001896E4((v7 > 1), v8 + 1, 1);
        }

        ++v6;
        _swiftEmptyArrayStorage[2] = v8 + 1;
        v9 = &_swiftEmptyArrayStorage[5 * v8];
        v9[8] = v17;
        *(v9 + 2) = v15;
        *(v9 + 3) = v16;
      }

      while (v4 != v6);
    }

    else
    {
      v10 = (a1 + 32);
      sub_1000054A4(0, a2);
      do
      {
        v11 = *v10;
        swift_dynamicCast();
        v13 = _swiftEmptyArrayStorage[2];
        v12 = _swiftEmptyArrayStorage[3];
        if (v13 >= v12 >> 1)
        {
          sub_1001896E4((v12 > 1), v13 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v13 + 1;
        v14 = &_swiftEmptyArrayStorage[5 * v13];
        v14[8] = v17;
        *(v14 + 2) = v15;
        *(v14 + 3) = v16;
        ++v10;
        --v4;
      }

      while (v4);
    }

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

uint64_t sub_10035FD94()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_100025918(v6, static MoveNotesToFolderIntent.title);
  sub_10002597C(v6, static MoveNotesToFolderIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t MoveNotesToFolderIntent.title.unsafeMutableAddressor()
{
  if (qword_1006BC7F0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return sub_10002597C(v0, static MoveNotesToFolderIntent.title);
}

uint64_t static MoveNotesToFolderIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC7F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10002597C(v2, static MoveNotesToFolderIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static MoveNotesToFolderIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for LocalizedStringResource();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v6 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v12 + 56))(v4, 1, 1, v11);
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v13 = type metadata accessor for IntentDescription();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t static MoveNotesToFolderIntent.parameterSummary.getter()
{
  v0 = sub_10015DA04(&qword_1006C4CD8);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&unk_1006C4CE0);
  __chkstk_darwin(v1);
  sub_100020AAC();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x6568742065766F4DLL;
  v2._object = 0xE900000000000020;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C4CF0);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0x74207365746F6E20;
  v3._object = 0xEE0020656874206FLL;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C4CF8);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v4._countAndFlagsBits = 0x7265646C6F6620;
  v4._object = 0xE700000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t (*MoveNotesToFolderIntent.container.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t (*MoveNotesToFolderIntent.entities.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t (*MoveNotesToFolderIntent.loggingConfiguration.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = AppDependency.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t (*sub_1003606F4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017D9DC;
}

uint64_t (*sub_100360768(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t sub_1003607E4(uint64_t a1)
{
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = sub_1001E26AC;

  return MoveNotesToFolderIntent.perform()(a1);
}

uint64_t sub_100360898@<X0>(void *a1@<X8>)
{
  v58 = a1;
  v1 = type metadata accessor for InputConnectionBehavior();
  v2 = *(v1 - 8);
  v64 = v1;
  v65 = v2;
  __chkstk_darwin(v1);
  v63 = &v44[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_10015DA04(&unk_1006BE0D0);
  v5 = __chkstk_darwin(v4 - 8);
  v62 = &v44[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v61 = &v44[-v7];
  v8 = sub_10015DA04(&unk_1006BF9D0);
  __chkstk_darwin(v8 - 8);
  v60 = &v44[-v9];
  v10 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v10 - 8);
  v59 = &v44[-v11];
  v12 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v44[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for Locale();
  __chkstk_darwin(v16 - 8);
  v17 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v17 - 8);
  v18 = type metadata accessor for LocalizedStringResource();
  v55 = v18;
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v49 = &v44[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v57 = sub_10015DA04(&unk_1006BCC30);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v21 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v22 = *(v13 + 104);
  v50 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v51 = v12;
  v22(v15, enum case for LocalizedStringResource.BundleDescription.main(_:), v12);
  v52 = v22;
  v53 = v13 + 104;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v22(v15, v21, v12);
  v23 = v59;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v24 = *(v19 + 56);
  v54 = v19 + 56;
  v56 = v24;
  v24(v23, 0, 1, v18);
  v25 = type metadata accessor for FolderEntity();
  (*(*(v25 - 8) + 56))(v60, 1, 1, v25);
  v26 = type metadata accessor for IntentDialog();
  v27 = *(v26 - 8);
  v28 = *(v27 + 56);
  v47 = v28;
  v48 = v27 + 56;
  v28(v61, 1, 1, v26);
  v28(v62, 1, 1, v26);
  v68 = sub_10019C84C();
  v69 = v29;
  v70 = v30 & 1;
  v71 = v31 & 1;
  v72 = v32 & 1;
  v73 = v33 & 1;
  v45 = enum case for InputConnectionBehavior.default(_:);
  v34 = *(v65 + 104);
  v65 += 104;
  v46 = v34;
  v34(v63);
  sub_100179874();
  v35 = v59;
  v60 = IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:query:)();
  v57 = sub_10015DA04(&unk_1006BCAF0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v36 = v50;
  v37 = v51;
  v38 = v52;
  v52(v15, v50, v51);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v38(v15, v36, v37);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v56(v35, 0, 1, v55);
  v68 = 0;
  v39 = v47;
  v47(v61, 1, 1, v26);
  v39(v62, 1, 1, v26);
  v46(v63, v45, v64);
  sub_1003612E0(&qword_1006BCAD0, type metadata accessor for NoteEntity);
  v40 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  sub_10015DA04(&qword_1006C34B0);
  v66 = 0xD000000000000021;
  v67 = 0x800000010055CFC0;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v41 = AppDependency.__allocating_init(key:manager:)();
  sub_10015DA04(&unk_1006BCA40);
  v66 = 0xD000000000000024;
  v67 = 0x800000010055CF90;
  AnyHashable.init<A>(_:)();
  static AppDependencyManager.shared.getter();
  result = AppDependency.__allocating_init(key:manager:)();
  v43 = v58;
  *v58 = v60;
  v43[1] = v40;
  v43[2] = 0;
  v43[3] = v41;
  v43[4] = result;
  return result;
}

uint64_t sub_100361190(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1003611FC()
{
  result = qword_1006C4D00;
  if (!qword_1006C4D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C4D00);
  }

  return result;
}

uint64_t sub_1003612E0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100361374@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_1000054A4(0, &qword_1006C6420);
    sub_100005B0C(&qword_1006C17E0, &qword_1006C6420);
    Set.Iterator.init(_cocoa:)();
    result = v14;
    v7 = v15;
    v9 = v16;
    v8 = v17;
    v10 = v18;
  }

  else
  {
    v8 = 0;
    v11 = -1;
    v12 = -1 << *(result + 32);
    v7 = result + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v11 = ~(-1 << v13);
    }

    v10 = v11 & *(result + 56);
  }

  *a4 = result;
  a4[1] = v7;
  a4[2] = v9;
  a4[3] = v8;
  a4[4] = v10;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

void sub_1003614E4(uint64_t a1, unint64_t *a2, uint64_t a3, unint64_t *a4)
{
  v5 = a1;
  v6 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = &_swiftEmptySetSingleton;
    goto LABEL_6;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_10015DA04(&qword_1006C1B68);
  v7 = static _SetStorage.allocate(capacity:)();
LABEL_6:
  if (sub_1000054A4(0, &qword_1006C1B60) == &type metadata for String)
  {
    if (v6)
    {

      __CocoaSet.makeIterator()();
      sub_1000054A4(0, a2);
      sub_100005B0C(a4, a2);
      Set.Iterator.init(_cocoa:)();
      v5 = v43;
      v12 = v44;
      v13 = v45;
      v14 = v46;
      v15 = v47;
    }

    else
    {
      v34 = -1 << *(v5 + 32);
      v12 = v5 + 56;
      v13 = ~v34;
      v35 = -v34;
      if (v35 < 64)
      {
        v36 = ~(-1 << v35);
      }

      else
      {
        v36 = -1;
      }

      v15 = v36 & *(v5 + 56);

      v14 = 0;
    }

    while (1)
    {
      if (v5 < 0)
      {
        if (!__CocoaSet.Iterator.next()())
        {
LABEL_55:
          sub_10019E530();

          return;
        }

        sub_1000054A4(0, a2);
        swift_dynamicCast();
        v39 = v42;
      }

      else
      {
        if (v15)
        {
          v37 = v14;
        }

        else
        {
          v40 = v14;
          do
          {
            v37 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
              goto LABEL_58;
            }

            if (v37 >= ((v13 + 64) >> 6))
            {
              goto LABEL_55;
            }

            v15 = *(v12 + 8 * v37);
            ++v40;
          }

          while (!v15);
          v14 = v37;
        }

        v38 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
        v39 = *(*(v5 + 48) + ((v37 << 9) | (8 * v38)));
      }

      sub_1003659AC(v39, &qword_1006C1B60);
    }
  }

  if (v6)
  {

    __CocoaSet.makeIterator()();
    sub_1000054A4(0, a2);
    sub_100005B0C(a4, a2);
    Set.Iterator.init(_cocoa:)();
    v5 = v43;
    v8 = v44;
    v9 = v45;
    v10 = v46;
    v11 = v47;
  }

  else
  {
    v16 = -1 << *(v5 + 32);
    v8 = v5 + 56;
    v9 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v11 = v18 & *(v5 + 56);

    v10 = 0;
  }

  v19 = (v9 + 64) >> 6;
  v20 = (v7 + 7);
  while (v5 < 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
      goto LABEL_55;
    }

    sub_1000054A4(0, a2);
    swift_dynamicCast();
    v23 = v42;
LABEL_29:
    v26 = NSObject._rawHashValue(seed:)(v7[5]);
    v27 = -1 << *(v7 + 32);
    v28 = v26 & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*&v20[8 * (v28 >> 6)]) != 0)
    {
      v21 = __clz(__rbit64((-1 << v28) & ~*&v20[8 * (v28 >> 6)])) | v28 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v30 = 0;
      v31 = (63 - v27) >> 6;
      do
      {
        if (++v29 == v31 && (v30 & 1) != 0)
        {
          __break(1u);
          goto LABEL_57;
        }

        v32 = v29 == v31;
        if (v29 == v31)
        {
          v29 = 0;
        }

        v30 |= v32;
        v33 = *&v20[8 * v29];
      }

      while (v33 == -1);
      v21 = __clz(__rbit64(~v33)) + (v29 << 6);
    }

    *&v20[(v21 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v21;
    *(v7[6] + 8 * v21) = v23;
    ++v7[2];
  }

  if (v11)
  {
    v22 = v10;
LABEL_28:
    v25 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v42 = *(*(v5 + 48) + ((v22 << 9) | (8 * v25)));
    v23 = v42;
    goto LABEL_29;
  }

  v24 = v10;
  while (1)
  {
    v22 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v22 >= v19)
    {
      goto LABEL_55;
    }

    v11 = *(v8 + 8 * v22);
    ++v24;
    if (v11)
    {
      v10 = v22;
      goto LABEL_28;
    }
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
}

void sub_1003619DC(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = &_swiftEmptySetSingleton;
    goto LABEL_6;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_10015DA04(&qword_1006C4E70);
  v3 = static _SetStorage.allocate(capacity:)();
LABEL_6:
  if (sub_1000054A4(0, &qword_1006C4E60) == &type metadata for String)
  {
    if (v2)
    {

      __CocoaSet.makeIterator()();
      sub_1000054A4(0, &qword_1006C6420);
      sub_100005B0C(&qword_1006C17E0, &qword_1006C6420);
      Set.Iterator.init(_cocoa:)();
      v1 = v38;
      v8 = v39;
      v9 = v40;
      v10 = v41;
      v11 = v42;
    }

    else
    {
      v30 = -1 << *(v1 + 32);
      v8 = v1 + 56;
      v9 = ~v30;
      v31 = -v30;
      if (v31 < 64)
      {
        v32 = ~(-1 << v31);
      }

      else
      {
        v32 = -1;
      }

      v11 = v32 & *(v1 + 56);

      v10 = 0;
    }

    while (1)
    {
      if (v1 < 0)
      {
        if (!__CocoaSet.Iterator.next()())
        {
LABEL_55:
          sub_10019E530();

          return;
        }

        sub_1000054A4(0, &qword_1006C6420);
        swift_dynamicCast();
        v35 = v37;
      }

      else
      {
        if (v11)
        {
          v33 = v10;
        }

        else
        {
          v36 = v10;
          do
          {
            v33 = v36 + 1;
            if (__OFADD__(v36, 1))
            {
              goto LABEL_58;
            }

            if (v33 >= ((v9 + 64) >> 6))
            {
              goto LABEL_55;
            }

            v11 = *(v8 + 8 * v33);
            ++v36;
          }

          while (!v11);
          v10 = v33;
        }

        v34 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v35 = *(*(v1 + 48) + ((v33 << 9) | (8 * v34)));
      }

      sub_1003659AC(v35, &qword_1006C4E60);
    }
  }

  if (v2)
  {

    __CocoaSet.makeIterator()();
    sub_1000054A4(0, &qword_1006C6420);
    sub_100005B0C(&qword_1006C17E0, &qword_1006C6420);
    Set.Iterator.init(_cocoa:)();
    v1 = v38;
    v4 = v39;
    v5 = v40;
    v6 = v41;
    v7 = v42;
  }

  else
  {
    v12 = -1 << *(v1 + 32);
    v4 = v1 + 56;
    v5 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v7 = v14 & *(v1 + 56);

    v6 = 0;
  }

  v15 = (v5 + 64) >> 6;
  v16 = (v3 + 7);
  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
      goto LABEL_55;
    }

    sub_1000054A4(0, &qword_1006C6420);
    swift_dynamicCast();
    v19 = v37;
LABEL_29:
    v22 = NSObject._rawHashValue(seed:)(v3[5]);
    v23 = -1 << *(v3 + 32);
    v24 = v22 & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*&v16[8 * (v24 >> 6)]) != 0)
    {
      v17 = __clz(__rbit64((-1 << v24) & ~*&v16[8 * (v24 >> 6)])) | v24 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = 0;
      v27 = (63 - v23) >> 6;
      do
      {
        if (++v25 == v27 && (v26 & 1) != 0)
        {
          __break(1u);
          goto LABEL_57;
        }

        v28 = v25 == v27;
        if (v25 == v27)
        {
          v25 = 0;
        }

        v26 |= v28;
        v29 = *&v16[8 * v25];
      }

      while (v29 == -1);
      v17 = __clz(__rbit64(~v29)) + (v25 << 6);
    }

    *&v16[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
    *(v3[6] + 8 * v17) = v19;
    ++v3[2];
  }

  if (v7)
  {
    v18 = v6;
LABEL_28:
    v21 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v37 = *(*(v1 + 48) + ((v18 << 9) | (8 * v21)));
    v19 = v37;
    goto LABEL_29;
  }

  v20 = v6;
  while (1)
  {
    v18 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_55;
    }

    v7 = *(v4 + 8 * v18);
    ++v20;
    if (v7)
    {
      v6 = v18;
      goto LABEL_28;
    }
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
}

void sub_100361F00(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for EditNoteActivity();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = EditNoteActivity.id.getter();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  v11 = sub_100362248(v8, v10);

  if (!v11)
  {
    return;
  }

  v12 = *(v2 + *(type metadata accessor for FastSyncControllerPool(0) + 36));
  if ((v12 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000054A4(0, &qword_1006C6420);
    sub_100005B0C(&qword_1006C17E0, &qword_1006C6420);
    Set.Iterator.init(_cocoa:)();
    v12 = v30;
    v13 = v31;
    v14 = v32;
    v15 = v33;
    v16 = v34;
  }

  else
  {
    v17 = -1 << *(v12 + 32);
    v13 = v12 + 56;
    v14 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v16 = v19 & *(v12 + 56);

    v15 = 0;
  }

  v28[1] = v14;
  v20 = (v14 + 64) >> 6;
  while (1)
  {
    v21 = v15;
    if ((v12 & 0x8000000000000000) == 0)
    {
      break;
    }

    v25 = __CocoaSet.Iterator.next()();
    if (!v25 || (v28[3] = v25, sub_1000054A4(0, &qword_1006C6420), swift_dynamicCast(), (v24 = v29) == 0))
    {
LABEL_21:
      sub_10019E530();

      return;
    }

LABEL_18:
    v28[2] = v21;
    v26 = [v24 realtimeCollaborationController];

    if (v26)
    {
      v27 = *&v26[OBJC_IVAR___ICRealtimeCollaborationController_id];

      if (v27 == *&v11[OBJC_IVAR___ICRealtimeCollaborationController_id])
      {
        sub_10019E530();
        return;
      }
    }
  }

  v22 = v15;
  v23 = v16;
  if (v16)
  {
LABEL_14:
    v16 = (v23 - 1) & v23;
    v24 = *(*(v12 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v23)))));
    if (!v24)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v15 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      goto LABEL_21;
    }

    v23 = *(v13 + 8 * v15);
    ++v22;
    if (v23)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

unint64_t sub_100362248(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for FastSyncControllerPool(0);
  v7 = *(v2 + *(v6 + 32));
  if (!*(v7 + 16))
  {
    return 0;
  }

  v8 = v6;
  v9 = sub_1002DF11C(a1, a2);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  result = *(*(v7 + 56) + 8 * v9);
  v12 = *(v3 + *(v8 + 28));
  if ((v12 & 0xC000000000000001) != 0)
  {
    return specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(v12 + 8 * result + 32);
  }

  __break(1u);
  return result;
}

char *sub_1003622FC(id *a1, uint64_t a2)
{
  result = [*a1 realtimeCollaborationController];
  if (result)
  {
    v4 = *&result[OBJC_IVAR___ICRealtimeCollaborationController_id];

    return (v4 == *(a2 + OBJC_IVAR___ICRealtimeCollaborationController_id));
  }

  return result;
}

void sub_100362364(void *a1, uint64_t a2)
{
  v3 = *(v2 + *(type metadata accessor for FastSyncControllerPool(0) + 36));
  swift_bridgeObjectRetain_n();
  sub_100361374(v3, sub_1003625B8, 0, v26);
  v5 = v26[0];
  v4 = v26[1];
  v6 = v26[3];
  v7 = v26[4];
  v22 = v26[5];
  v20 = OBJC_IVAR___ICRealtimeCollaborationController_id;
  v8 = (v26[2] + 64) >> 6;
  while (1)
  {
    if (v5 < 0)
    {
      v13 = __CocoaSet.Iterator.next()();
      if (!v13 || (v25 = v13, sub_1000054A4(0, &qword_1006C6420), swift_dynamicCast(), (v12 = v23) == 0))
      {
LABEL_16:
        sub_10019E530();

        return;
      }

      goto LABEL_13;
    }

    v10 = v6;
    v11 = v7;
    if (!v7)
    {
      break;
    }

LABEL_9:
    v7 = (v11 - 1) & v11;
    v12 = *(*(v5 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v12)
    {
      goto LABEL_16;
    }

LABEL_13:
    v25 = v12;
    v22(&v23, &v25);

    v9 = v23;
    v14 = v24;
    if (v24)
    {
      if (*&v24[OBJC_IVAR___ICRealtimeCollaborationController_id] != *(a2 + v20))
      {

        v9 = v14;
        goto LABEL_3;
      }

      v19 = [v23 editorIdentifier];
      v15 = v5;
      v16 = [a1 editorIdentifier];

      v17 = v19 == v16;
      v5 = v15;
      if (!v17)
      {
        goto LABEL_16;
      }
    }

    else
    {
LABEL_3:
    }
  }

  while (1)
  {
    v6 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v6 >= v8)
    {
      goto LABEL_16;
    }

    v11 = *(v4 + 8 * v6);
    ++v10;
    if (v11)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

id sub_1003625B8@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v3 = *a1;
  *a2 = *a1;
  result = [v3 realtimeCollaborationController];
  a2[1] = result;
  return result;
}

uint64_t sub_1003625FC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(_BYTE *, uint64_t))
{
  v6 = v5;
  v81 = a5;
  v89 = a3;
  v90 = a4;
  v95 = a1;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v85 = &v78[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v13 = &v78[-v12];
  v91 = sub_10015DA04(&qword_1006C4E40);
  v14 = __chkstk_darwin(v91);
  v94 = &v78[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v93 = &v78[-v16];
  v17 = type metadata accessor for EditNoteActivity();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v78[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = *(v18 + 16);
  v92 = a2;
  v86 = v21;
  v87 = v18 + 16;
  v21(v20, a2, v17);
  v22 = EditNoteActivity.id.getter();
  v24 = v23;
  v25 = *(v18 + 8);
  v88 = v17;
  v25(v20, v17);
  v84 = type metadata accessor for FastSyncControllerPool(0);
  v26 = *(v84 + 20);
  v96 = v6;
  v97 = v9;
  v27 = *(v9 + 16);
  v82 = v26;
  v83 = v27;
  v27(v13, &v26[v6], v8);
  v28 = v90;

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();

  v31 = os_log_type_enabled(v29, v30);
  v90 = v28;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v80 = v8;
    v35 = v34;
    v98[0] = v34;
    *v32 = 138412546;
    *(v32 + 4) = v28;
    *v33 = v28;
    *(v32 + 12) = 2080;
    v36 = v28;

    v37 = sub_100009D88(v22, v24, v98);

    *(v32 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v29, v30, "%@: requested to join activity for note %s", v32, 0x16u);
    sub_1000073B4(v33, &qword_1006C1440);

    sub_100009F60(v35);
    v8 = v80;
  }

  v38 = *(v97 + 8);
  v38(v13, v8);
  v39 = v96;
  v40 = sub_100362248(v22, v24);
  if (v40)
  {
    v41 = v40;

    v42 = v90;
    sub_100362E2C(v41, v90, v92);

    v43 = v93;
  }

  else
  {
    v80 = v22;
    v42 = v90;
    v44 = sub_100363264();
    if (v44)
    {
      v45 = v44;
      v81 = v38;
      v46 = v85;
      v83(v85, &v82[v39], v8);
      v47 = v42;

      v48 = v45;
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.info.getter();

      v82 = v48;

      v83 = v47;
      v79 = v50;
      v51 = v49;
      if (os_log_type_enabled(v49, v50))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v98[0] = v54;
        *v52 = 138412802;
        v56 = v82;
        v55 = v83;
        *(v52 + 4) = v83;
        *(v52 + 12) = 2112;
        *(v52 + 14) = v56;
        *v53 = v55;
        v53[1] = v45;
        *(v52 + 22) = 2080;
        v57 = v55;

        v58 = v56;
        v59 = v80;
        v60 = sub_100009D88(v80, v24, v98);

        *(v52 + 24) = v60;
        _os_log_impl(&_mh_execute_header, v51, v79, "%@: reassigning %@ to join group activity %s.", v52, 0x20u);
        sub_10015DA04(&qword_1006C1440);
        swift_arrayDestroy();
        v39 = v96;

        sub_100009F60(v54);

        v81(v85, v8);
        v61 = v82;
      }

      else
      {

        v81(v46, v8);
        v61 = v82;
        v59 = v80;
      }

      v66 = *&v61[OBJC_IVAR___ICRealtimeCollaborationController_id];
      v67 = *(v84 + 32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v98[0] = *(v39 + v67);
      sub_1002E7058(v66, v59, v24, isUniquelyReferenced_nonNull_native);

      *(v39 + v67) = v98[0];
      isa = Bool._bridgeToObjectiveC()().super.super.isa;
      swift_beginAccess();
      objc_setAssociatedObject(v83, &unk_1006C4D59, isa, 3);
      swift_endAccess();

      v70 = sub_10015DA04(&qword_1006C4E48);
      v71 = *(v70 + 48);
      v72 = *(v70 + 64);
      v43 = v93;
      v86(v93, v92, v88);
      sub_100006038(v89, v43 + v71, &qword_1006BFC50);
      *(v43 + v72) = v61;
    }

    else
    {
      v62 = sub_10036334C(v42, v80, v24);

      swift_beginAccess();
      swift_unknownObjectWeakAssign();
      v63 = sub_10015DA04(&qword_1006C4E48);
      v64 = *(v63 + 48);
      v65 = *(v63 + 64);
      v43 = v93;
      v86(v93, v92, v88);
      sub_100006038(v89, v43 + v64, &qword_1006BFC50);
      *(v43 + v65) = v62;
    }
  }

  type metadata accessor for FastSyncControllerPool.PresenceAction(0);
  swift_storeEnumTagMultiPayload();
  v73 = v91;
  *(v43 + *(v91 + 48)) = v42;
  v74 = v94;
  sub_1001F7498(v43, v94, &qword_1006C4E40);
  v75 = *&v74[*(v73 + 48)];
  sub_10036551C(v74, v95);
  v76 = v42;
  return v75;
}

void sub_100362E2C(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for EditNoteActivity();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v35[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v42 = type metadata accessor for FastSyncControllerPool(0);
  (*(v13 + 16))(v15, v4 + *(v42 + 20), v12);
  v16 = *(v9 + 16);
  v41 = v8;
  v16(v11, a3, v8);
  v17 = a2;
  v18 = a1;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v40 = v12;
    v22 = v21;
    v23 = swift_slowAlloc();
    v37 = v19;
    v24 = v18;
    v25 = v23;
    v39 = swift_slowAlloc();
    v43[0] = v39;
    *v22 = 138412802;
    *(v22 + 4) = v17;
    *(v22 + 12) = 2112;
    *(v22 + 14) = v24;
    *v25 = v17;
    v25[1] = v24;
    *(v22 + 22) = 2080;
    v26 = v17;
    v27 = v24;
    v36 = v20;
    v28 = EditNoteActivity.id.getter();
    v38 = v13;
    v30 = v29;
    (*(v9 + 8))(v11, v41);
    v31 = sub_100009D88(v28, v30, v43);

    *(v22 + 24) = v31;
    v32 = v37;
    _os_log_impl(&_mh_execute_header, v37, v36, "%@: using existing %@ for activity %s.", v22, 0x20u);
    sub_10015DA04(&qword_1006C1440);
    swift_arrayDestroy();
    v18 = v24;

    sub_100009F60(v39);

    (*(v38 + 8))(v15, v40);
  }

  else
  {

    (*(v9 + 8))(v11, v41);
    (*(v13 + 8))(v15, v12);
  }

  sub_100364BDC(v17);
  v33 = v17;
  sub_100266838(v43, v33);

  swift_beginAccess();
  objc_setAssociatedObject(v33, &unk_1006C4D58, v18, 0);
  swift_endAccess();
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  swift_beginAccess();
  objc_setAssociatedObject(v33, &unk_1006C4D59, isa, 3);
  swift_endAccess();
}

uint64_t sub_100363264()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_1006C4D58);
  swift_endAccess();
  if (v1)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    type metadata accessor for RealtimeCollaborationController(0);
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1000073B4(v6, &qword_1006BE7A0);
    return 0;
  }
}

char *sub_10036334C(id a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v82 = a2;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v77 = &v72[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v9);
  v76 = &v72[-v12];
  __chkstk_darwin(v11);
  v14 = &v72[-v13];
  v84 = a1;
  v15 = type metadata accessor for FastSyncControllerPool(0);
  v16 = *(v8 + 16);
  v78 = v15[5];
  v79 = v16;
  v80 = (v8 + 16);
  v16(v14, v4 + v78, v7);
  v17 = swift_allocObject();
  *(v17 + 16) = 2;
  v18 = sub_100365CA4(v17, sub_100365974);
  v83 = v15;
  if ((v18 & 1) == 0)
  {
    v19 = static os_log_type_t.fault.getter();
    v20 = Logger.logObject.getter();
    if (os_log_type_enabled(v20, v19))
    {
      v21 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v75 = a3;
      v85[0] = v74;
      *v21 = 136315650;
      v22 = StaticString.description.getter();
      v24 = sub_100009D88(v22, v23, v85);
      v73 = v19;
      v25 = v8;
      v26 = v7;
      v27 = v24;

      *(v21 + 4) = v27;
      v7 = v26;
      v8 = v25;
      *(v21 + 12) = 2048;
      *(v21 + 14) = 132;
      *(v21 + 22) = 2080;
      *(v21 + 24) = sub_100009D88(0xD000000000000065, 0x800000010056E110, v85);
      _os_log_impl(&_mh_execute_header, v20, v73, "Failed assertion at %s:%lu: %s", v21, 0x20u);
      swift_arrayDestroy();
      a3 = v75;

      v15 = v83;

      v28 = v25;
      goto LABEL_6;
    }
  }

  v28 = v8;
LABEL_6:
  v29 = *(v28 + 8);
  v29(v14, v7);

  v30 = *(v4 + v15[10]);
  v31 = *(v30 + 16);
  v81 = v8;
  if (!v31)
  {
    v77 = a1;
    a1 = v15[7];
    v53 = *(a1 + v4);
    if (!(v53 >> 62))
    {
      v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_15;
    }

LABEL_25:
    v54 = _CocoaArrayWrapper.endIndex.getter();
LABEL_15:
    v55 = *v4;
    v56 = *(v4 + v15[6]);
    objc_allocWithZone(type metadata accessor for RealtimeCollaborationController(0));
    v39 = RealtimeCollaborationController.init(id:cloudConfiguration:noteContext:)(v54, v55, v56);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(a1 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v35 = v76;
    v79(v76, v4 + v78, v7);
    a1 = v77;
    v57 = v77;

    v40 = Logger.logObject.getter();
    v58 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v40, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v80 = v29;
      v62 = v61;
      v85[0] = v61;
      *v59 = 138412802;
      *(v59 + 4) = v57;
      *(v59 + 12) = 2112;
      *(v59 + 14) = v39;
      *v60 = v57;
      v60[1] = v39;
      *(v59 + 22) = 2080;
      v39 = v39;
      v63 = v57;
      v50 = v82;
      *(v59 + 24) = sub_100009D88(v82, a3, v85);
      _os_log_impl(&_mh_execute_header, v40, v58, "%@: empty controller pool: allocated new %@ to activity %s.", v59, 0x20u);
      sub_10015DA04(&qword_1006C1440);
      swift_arrayDestroy();
      a1 = v77;

      sub_100009F60(v62);

      v51 = v76;
      v52 = v7;
      goto LABEL_19;
    }

LABEL_20:

    v29(v35, v7);
    v50 = v82;
    goto LABEL_21;
  }

  v32 = _HashTable.startBucket.getter();
  v33 = sub_100365AEC(v32, *(v30 + 36));
  v34 = *(v4 + v15[7]);
  if ((v34 & 0xC000000000000001) == 0)
  {
    v35 = v77;
    if ((v33 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v33 < *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v36 = *(v34 + 8 * v33 + 32);
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_25;
  }

  v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v35 = v77;
LABEL_11:
  v79(v35, v4 + v78, v7);
  v37 = v36;
  v38 = a1;

  v39 = v37;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();

  if (!os_log_type_enabled(v40, v41))
  {
    goto LABEL_20;
  }

  v42 = swift_slowAlloc();
  v43 = swift_slowAlloc();
  v79 = v7;
  v44 = a1;
  v45 = v43;
  v46 = swift_slowAlloc();
  v80 = v29;
  v47 = a3;
  v48 = v46;
  v85[0] = v46;
  *v42 = 138412802;
  *(v42 + 4) = v38;
  *(v42 + 12) = 2112;
  *(v42 + 14) = v39;
  *v45 = v38;
  v45[1] = v39;
  *(v42 + 22) = 2080;
  v49 = v38;
  v39 = v39;
  v50 = v82;
  *(v42 + 24) = sub_100009D88(v82, v47, v85);
  _os_log_impl(&_mh_execute_header, v40, v41, "%@: allocated %@ from pool to activity %s.", v42, 0x20u);
  sub_10015DA04(&qword_1006C1440);
  swift_arrayDestroy();
  a1 = v44;

  sub_100009F60(v48);
  a3 = v47;

  v51 = v77;
  v52 = v79;
LABEL_19:
  v80(v51, v52);
LABEL_21:
  v64 = v83;
  v65 = a1;
  sub_100266838(v85, v65);

  swift_beginAccess();
  v66 = v39;
  objc_setAssociatedObject(v65, &unk_1006C4D58, v66, 0);
  swift_endAccess();
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  swift_beginAccess();
  objc_setAssociatedObject(v65, &unk_1006C4D59, isa, 3);
  swift_endAccess();

  v68 = *&v66[OBJC_IVAR___ICRealtimeCollaborationController_id];
  v69 = v64[8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v85[0] = *(v4 + v69);
  sub_1002E7058(v68, v50, a3, isUniquelyReferenced_nonNull_native);
  *(v4 + v69) = v85[0];
  return v66;
}

uint64_t sub_100363C18@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v86 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v91 = &v78 - v11;
  __chkstk_darwin(v10);
  v13 = &v78 - v12;
  v14 = sub_10015DA04(&qword_1006C4E58);
  __chkstk_darwin(v14 - 8);
  v92 = (&v78 - v15);
  v16 = type metadata accessor for EditNoteActivity();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_100363264();
  if (v89)
  {
    (*(v17 + 16))(v19, a1, v16);
    v90 = EditNoteActivity.id.getter();
    v21 = v20;
    (*(v17 + 8))(v19, v16);
    v80 = type metadata accessor for FastSyncControllerPool(0);
    v22 = *(v7 + 16);
    v82 = *(v80 + 20);
    v83 = v22;
    v23 = v88;
    v84 = v7 + 16;
    v22(v13, v88 + v82, v6);
    v24 = a2;

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();

    v27 = os_log_type_enabled(v25, v26);
    v28 = v6;
    v87 = v7;
    v85 = a3;
    v79 = v21;
    if (v27)
    {
      v29 = swift_slowAlloc();
      v78 = v6;
      v30 = v29;
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v93[0] = v32;
      *v30 = 138412546;
      *(v30 + 4) = v24;
      *v31 = v24;
      *(v30 + 12) = 2080;
      v33 = v24;

      v34 = v23;
      v35 = sub_100009D88(v90, v21, v93);

      *(v30 + 14) = v35;
      v23 = v34;
      _os_log_impl(&_mh_execute_header, v25, v26, "%@: start leaving activity for note %s", v30, 0x16u);
      sub_1000073B4(v31, &qword_1006C1440);

      sub_100009F60(v32);

      v28 = v78;

      v81 = *(v87 + 8);
      v81(v13, v28);
    }

    else
    {

      v81 = *(v7 + 8);
      v81(v13, v6);
    }

    v39 = v89;
    v40 = v90;
    sub_100362364(v24, v89);
    v41 = v91;
    if (v42)
    {
      v43 = v23;
      v44 = v79;

      sub_10024982C(0, 1, v40, v44);
      isa = Bool._bridgeToObjectiveC()().super.super.isa;
      swift_beginAccess();
      objc_setAssociatedObject(v24, &unk_1006C4D59, isa, 3);
      swift_endAccess();

      v46 = sub_10015DA04(&qword_1006C4E40);
      v47 = *(v46 + 48);
      v48 = v92;
      *v92 = v39;
      type metadata accessor for FastSyncControllerPool.PresenceAction(0);
      swift_storeEnumTagMultiPayload();
      *(v48 + v47) = v24;
      (*(*(v46 - 8) + 56))(v48, 0, 1, v46);
      v83(v41, v43 + v82, v28);
      v49 = v24;
      v50 = v28;
      v51 = v49;

      v52 = v39;
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v93[0] = v57;
        *v55 = 138412546;
        *(v55 + 4) = v51;
        *v56 = v51;
        *(v55 + 12) = 2080;
        v58 = v51;
        v59 = sub_100009D88(v40, v44, v93);

        *(v55 + 14) = v59;
        _os_log_impl(&_mh_execute_header, v53, v54, "%@: last editor for activity %s.", v55, 0x16u);
        sub_1000073B4(v56, &qword_1006C1440);

        sub_100009F60(v57);

        v60 = v91;
      }

      else
      {

        v60 = v41;
      }

      v61 = v50;
    }

    else
    {
      v62 = *(v80 + 36);

      v63 = v23;
      swift_beginAccess();
      objc_setAssociatedObject(v24, &unk_1006C4D58, 0, 0);
      swift_endAccess();
      v64 = Bool._bridgeToObjectiveC()().super.super.isa;
      swift_beginAccess();
      objc_setAssociatedObject(v24, &unk_1006C4D59, v64, 3);
      swift_endAccess();

      v65 = sub_10015DA04(&qword_1006C4E40);
      (*(*(v65 - 8) + 56))(v92, 1, 1, v65);
      sub_1003619DC(*(v63 + v62));
      sub_100364624(v39, v66);

      v67 = v86;
      v83(v86, v63 + v82, v28);
      v68 = v79;

      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v93[0] = swift_slowAlloc();
        *v71 = 136315394;
        v72 = sub_100009D88(v90, v68, v93);

        *(v71 + 4) = v72;
        *(v71 + 12) = 2080;
        type metadata accessor for ID(0);

        v73 = Array.description.getter();
        v74 = v39;
        v76 = v75;
        swift_bridgeObjectRelease_n();
        v77 = sub_100009D88(v73, v76, v93);

        *(v71 + 14) = v77;
        _os_log_impl(&_mh_execute_header, v69, v70, "Remaining editors for activity %s: %s", v71, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v60 = v67;
      v61 = v28;
    }

    v81(v60, v61);
    return sub_1001F7498(v92, v85, &qword_1006C4E58);
  }

  else
  {
    v36 = sub_10015DA04(&qword_1006C4E40);
    v37 = *(*(v36 - 8) + 56);

    return v37(a3, 1, 1, v36);
  }
}

void sub_100364624(uint64_t a1, uint64_t a2)
{

  sub_100365BB8(a2, v20);
  v4 = OBJC_IVAR___ICRealtimeCollaborationController_id;
  v5 = v20[0];
  v6 = v20[1];
  v7 = v20[3];
  v8 = v20[4];
  v9 = (v20[2] + 64) >> 6;
  v18 = _swiftEmptyArrayStorage;
  while (v5 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_1000054A4(0, &qword_1006C4E60), swift_dynamicCast(), (v12 = v19) == 0))
    {
LABEL_19:
      sub_10019E530();
      return;
    }

LABEL_12:
    v13 = [v12 realtimeCollaborationController];
    if (v13 && (v14 = *&v13[OBJC_IVAR___ICRealtimeCollaborationController_id], v13, v14 == *(a1 + v4)))
    {
      v15 = [v12 editorIdentifier];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1001CB81C(0, *(v18 + 2) + 1, 1, v18);
      }

      v17 = *(v18 + 2);
      v16 = *(v18 + 3);
      if (v17 >= v16 >> 1)
      {
        v18 = sub_1001CB81C((v16 > 1), v17 + 1, 1, v18);
      }

      *(v18 + 2) = v17 + 1;
      *&v18[8 * v17 + 32] = v15;
    }

    else
    {
    }
  }

  v10 = v7;
  v11 = v8;
  if (v8)
  {
LABEL_8:
    v8 = (v11 - 1) & v11;
    v12 = *(*(v5 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v12)
    {
      goto LABEL_19;
    }

    goto LABEL_12;
  }

  while (1)
  {
    v7 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v7 >= v9)
    {
      goto LABEL_19;
    }

    v11 = *(v6 + 8 * v7);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_100364868(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for EditNoteActivity();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v36 = &v32[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v10 = &v32[-v9];
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100364BDC(a2);
  v15 = *(type metadata accessor for FastSyncControllerPool(0) + 20);
  v37 = v12;
  v38 = v11;
  (*(v12 + 16))(v14, v2 + v15, v11);
  v16 = *(v6 + 16);
  v16(v10, a1, v5);
  v17 = a2;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v34 = v18;
    v22 = v21;
    v35 = swift_slowAlloc();
    v39 = v35;
    *v20 = 138412546;
    *(v20 + 4) = v17;
    *v22 = v17;
    *(v20 + 12) = 2080;
    v33 = v19;
    v23 = v36;
    v16(v36, v10, v5);
    v24 = v17;
    v25 = EditNoteActivity.id.getter();
    v27 = v26;
    v28 = *(v6 + 8);
    v28(v23, v5);
    v28(v10, v5);
    v29 = sub_100009D88(v25, v27, &v39);

    *(v20 + 14) = v29;
    v30 = v34;
    _os_log_impl(&_mh_execute_header, v34, v33, "%@: finished leaving activity for note %s", v20, 0x16u);
    sub_1000073B4(v22, &qword_1006C1440);

    sub_100009F60(v35);
  }

  else
  {

    (*(v6 + 8))(v10, v5);
  }

  return (*(v37 + 8))(v14, v38);
}

void sub_100364BDC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v63 - v9;
  v11 = sub_100363264();
  if (v11)
  {
    v12 = v11;
    v13 = type metadata accessor for FastSyncControllerPool(0);
    v14 = v13;
    v15 = 0;
    v16 = *(v2 + v13[8]);
    v17 = 1 << *(v16 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v16 + 64);
    v20 = OBJC_IVAR___ICRealtimeCollaborationController_id;
    v21 = (v17 + 63) >> 6;
    while (v19)
    {
      v22 = v15;
LABEL_11:
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v24 = v23 | (v22 << 6);
      if (*(*(v16 + 56) + 8 * v24) == *&v12[OBJC_IVAR___ICRealtimeCollaborationController_id])
      {
        v25 = (*(v16 + 48) + 16 * v24);
        v27 = *v25;
        v26 = v25[1];
        v67 = v27;
        v28 = v5;
        v70 = v26;
        v29 = *(v2 + v13[9]);
        v30 = swift_allocObject();
        *(v30 + 16) = v12;
        v72[0] = v29;
        v72[1] = sub_10036596C;
        v72[2] = v30;
        v72[3] = sub_100365288;
        v72[4] = 0;
        v31 = v4;
        v32 = v14[5];
        v69 = v28;
        v33 = *(v28 + 16);

        v35 = v2 + v32;
        v36 = v34;
        v37 = v31;
        v33(v10, v35, v31);
        swift_bridgeObjectRetain_n();
        swift_retain_n();

        v38 = v12;
        v39 = a1;
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v66 = v38;
          v43 = v42;
          v44 = swift_slowAlloc();
          v64 = v44;
          v65 = swift_slowAlloc();
          v71 = v65;
          *v43 = 138412802;
          *(v43 + 4) = v39;
          *v44 = v39;
          v68 = v37;
          *(v43 + 12) = 2080;
          v45 = v39;
          v46 = sub_100009D88(v67, v36, &v71);

          *(v43 + 14) = v46;
          *(v43 + 22) = 2080;

          sub_100365580(v72);

          v47 = Array.description.getter();
          v49 = v48;

          v50 = sub_100009D88(v47, v49, &v71);

          *(v43 + 24) = v50;
          _os_log_impl(&_mh_execute_header, v40, v41, "%@: remaining editors for activity %s: %s.", v43, 0x20u);
          sub_1000073B4(v64, &qword_1006C1440);

          swift_arrayDestroy();

          (*(v69 + 8))(v10, v68);
        }

        else
        {

          swift_bridgeObjectRelease_n();
          (*(v69 + 8))(v10, v31);
        }

        return;
      }
    }

    while (1)
    {
      v22 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        return;
      }

      if (v22 >= v21)
      {
        break;
      }

      v19 = *(v16 + 64 + 8 * v22);
      ++v15;
      if (v19)
      {
        v15 = v22;
        goto LABEL_11;
      }
    }

    v51 = v13[5];
    v52 = *(v5 + 16);
    v70 = v2;
    v52(v8, v2 + v51, v4);
    v53 = v12;
    v54 = a1;
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v69 = v5;
      v58 = v57;
      v59 = swift_slowAlloc();
      v68 = v4;
      *v58 = 138412546;
      *(v58 + 4) = v54;
      *(v58 + 12) = 2112;
      *(v58 + 14) = v53;
      *v59 = v54;
      v59[1] = v12;
      v60 = v53;
      v61 = v54;
      _os_log_impl(&_mh_execute_header, v55, v56, "%@: %@ was not reassigned: moving into pool.", v58, 0x16u);
      sub_10015DA04(&qword_1006C1440);
      swift_arrayDestroy();
      v4 = v68;

      v5 = v69;
    }

    (*(v5 + 8))(v8, v4);
    swift_beginAccess();
    objc_setAssociatedObject(v54, &unk_1006C4D58, 0, 0);
    swift_endAccess();
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    swift_beginAccess();
    objc_setAssociatedObject(v54, &unk_1006C4D59, isa, 3);
    swift_endAccess();

    sub_100266758(v72, *&v12[v20]);
  }
}

void sub_100365288(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifierDescription];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

Swift::Int sub_1003652E0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100365334()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t ICArchiveCreator.softwareIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1003653AC(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t ICNoteEditorBaseViewController.realtimeCollaborationController.getter()
{
  if (qword_1006BC7C8 != -1)
  {
    swift_once();
  }

  if (byte_1006EF718 != 1 || (sub_100025BC8() & 1) == 0)
  {
    return 0;
  }

  return sub_100363264();
}

uint64_t sub_100365468(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003654B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10036551C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FastSyncControllerPool.PresenceAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100365580(uint64_t *a1)
{
  v3 = a1[1];
  v48 = *a1;
  v2 = v48;
  if ((v48 & 0xC000000000000001) != 0)
  {
    sub_100006038(&v48, v47, &qword_1006C4E50);

    __CocoaSet.makeIterator()();
    sub_1000054A4(0, &qword_1006C6420);
    sub_100005B0C(&qword_1006C17E0, &qword_1006C6420);
    Set.Iterator.init(_cocoa:)();
    v2 = v47[0];
    v4 = v47[1];
    v5 = v47[2];
    v6 = v47[3];
    v7 = v47[4];
  }

  else
  {
    v8 = -1 << *(v48 + 32);
    v4 = v48 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v48 + 56);
    sub_100006038(&v48, v47, &qword_1006C4E50);

    v6 = 0;
  }

  v36 = a1[3];
  v11 = (v5 + 64) >> 6;

  v39 = 0;
  v43 = _swiftEmptyArrayStorage;
  v37 = &_swiftEmptyArrayStorage[4];
  v12 = v6;
  while (v2 < 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
      goto LABEL_36;
    }

    sub_1000054A4(0, &qword_1006C6420);
    swift_dynamicCast();
    v16 = v46;
    if (!v46)
    {
      goto LABEL_36;
    }

LABEL_19:
    v44 = v16;
    if (v3(&v44))
    {
      v46 = v16;
      v36(&v44, &v46);

      v17 = v44;
      v18 = v45;
      v19 = v39;
      if (!v39)
      {
        v34 = v45;
        v35 = v44;
        v20 = v43[3];
        if (((v20 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_43;
        }

        v21 = v20 & 0xFFFFFFFFFFFFFFFELL;
        if (v21 <= 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = v21;
        }

        v40 = v22;
        sub_10015DA04(&qword_1006BE8F0);
        v23 = swift_allocObject();
        v24 = j__malloc_size(v23);
        v25 = v24 - 32;
        if (v24 < 32)
        {
          v25 = v24 - 17;
        }

        v26 = v25 >> 4;
        v23[2] = v40;
        v23[3] = 2 * (v25 >> 4);
        v27 = (v23 + 4);
        v28 = v43[3] >> 1;
        if (v43[2])
        {
          v29 = v43 + 4;
          if (v23 != v43 || v27 >= v29 + 16 * v28)
          {
            v38 = v43[3] >> 1;
            v41 = v25 >> 4;
            memmove(v23 + 4, v29, 16 * v28);
            v28 = v38;
            v26 = v41;
            v27 = (v23 + 4);
          }

          v43[2] = 0;
        }

        v37 = (v27 + 16 * v28);
        v42 = (v26 & 0x7FFFFFFFFFFFFFFFLL) - v28;

        v19 = v42;
        v43 = v23;
        v18 = v34;
        v17 = v35;
      }

      v39 = v19 - 1;
      if (__OFSUB__(v19, 1))
      {
        goto LABEL_42;
      }

      *v37 = v17;
      v37[1] = v18;
      v37 += 2;
    }

    else
    {
    }
  }

  v13 = v12;
  if (!v7)
  {
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
        goto LABEL_36;
      }

      v7 = *(v4 + 8 * v14);
      ++v13;
      if (v7)
      {
        v12 = v14;
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_41;
  }

  v14 = v12;
LABEL_15:
  v15 = __clz(__rbit64(v7));
  v7 &= v7 - 1;
  v16 = *(*(v2 + 48) + ((v14 << 9) | (8 * v15)));
  if (v16)
  {
    goto LABEL_19;
  }

LABEL_36:
  sub_10019E530();

  v30 = v43[3];
  if (v30 < 2)
  {
    return;
  }

  v31 = v30 >> 1;
  v32 = __OFSUB__(v31, v39);
  v33 = v31 - v39;
  if (!v32)
  {
    v43[2] = v33;
    return;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
}

BOOL sub_100365974()
{
  v0 = sub_100363264();
  v1 = v0;
  if (v0)
  {
  }

  return v1 == 0;
}

void sub_1003659AC(uint64_t a1, unint64_t *a2)
{
  v5 = *v2;
  v6 = NSObject._rawHashValue(seed:)(*(*v2 + 40));
  v7 = v5 + 56;
  v8 = -1 << *(v5 + 32);
  v9 = v6 & ~v8;
  v10 = v9 >> 6;
  v11 = *(v5 + 56 + 8 * (v9 >> 6));
  v12 = 1 << v9;
  if (((1 << v9) & v11) != 0)
  {
    v13 = ~v8;
    sub_1000054A4(0, a2);
    while (1)
    {
      v14 = *(*(v5 + 48) + 8 * v9);
      v15 = static NSObject.== infix(_:_:)();

      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v13;
      v10 = v9 >> 6;
      v11 = *(v7 + 8 * (v9 >> 6));
      v12 = 1 << v9;
      if (((1 << v9) & v11) == 0)
      {
        goto LABEL_5;
      }
    }

    v17 = *(v5 + 48);
    v18 = *(v17 + 8 * v9);
    *(v17 + 8 * v9) = a1;
  }

  else
  {
LABEL_5:
    v16 = *(v5 + 16);
    if (v16 >= *(v5 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v7 + 8 * v10) = v12 | v11;
      *(*(v5 + 48) + 8 * v9) = a1;
      *(v5 + 16) = v16 + 1;
    }
  }
}

uint64_t sub_100365AEC(uint64_t a1, int a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (a1 < 0 || (v7 = isUniquelyReferenced_nonNull_native, isUniquelyReferenced_nonNull_native = a1, v8 = *v3, 1 << *(*v3 + 32) <= a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (((*(v8 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*(v8 + 36) != a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = *v3;
  if (!v7)
  {
LABEL_10:
    v11 = isUniquelyReferenced_nonNull_native;
    sub_10026C0D4();
    isUniquelyReferenced_nonNull_native = v11;
    v8 = v12;
  }

  v9 = *(*(v8 + 48) + 8 * isUniquelyReferenced_nonNull_native);
  sub_1003B53A0(isUniquelyReferenced_nonNull_native);
  *v3 = v12;
  return v9;
}

uint64_t sub_100365BB8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_1000054A4(0, &qword_1006C4E60);
    sub_100005B0C(&qword_1006C4E68, &qword_1006C4E60);
    Set.Iterator.init(_cocoa:)();
    result = v10;
    v3 = v11;
    v5 = v12;
    v4 = v13;
    v6 = v14;
  }

  else
  {
    v4 = 0;
    v7 = -1;
    v8 = -1 << *(result + 32);
    v3 = result + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v7 = ~(-1 << v9);
    }

    v6 = v7 & *(result + 56);
  }

  *a2 = result;
  a2[1] = v3;
  a2[2] = v5;
  a2[3] = v4;
  a2[4] = v6;
  return result;
}

uint64_t sub_100365CA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = (a1 + 16);
  v2 = *(a1 + 16);
  if (v2 == 2)
  {
    LOBYTE(v2) = a2();
    swift_beginAccess();
    *v3 = v2 & 1;
  }

  return v2 & 1;
}

void sub_100365D10()
{
  sub_100365D84();
  if (v0 <= 0x3F)
  {
    type metadata accessor for RealtimeCollaborationController(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100365D84()
{
  if (!qword_1006C4EF8)
  {
    type metadata accessor for EditNoteActivity();
    sub_10017992C(&qword_1006BFC50);
    type metadata accessor for RealtimeCollaborationController(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1006C4EF8);
    }
  }
}

void sub_100365F3C(void *a1)
{
  v2 = OBJC_IVAR____TtC11MobileNotes14TagEditingCell_hashtag;
  v3 = *&v1[OBJC_IVAR____TtC11MobileNotes14TagEditingCell_hashtag];
  *&v1[OBJC_IVAR____TtC11MobileNotes14TagEditingCell_hashtag] = a1;
  v7 = a1;

  v4 = *&v1[v2];
  if (v4)
  {
    v5 = [v4 displayText];
    if (v5)
    {
      v6 = v5;
      [*&v1[OBJC_IVAR____TtC11MobileNotes14TagEditingCell_textField] setText:v5];
      [v1 setAccessibilityLabel:v6];
    }
  }
}

uint64_t sub_100365FF0()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MobileNotes14TagEditingCell_hashtag);
  if (v1 && (v2 = [v1 displayText]) != 0)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = [*(v0 + OBJC_IVAR____TtC11MobileNotes14TagEditingCell_textField) text];
  if (!v7)
  {
    if (v6)
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  v8 = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  if (!v6)
  {
    if (v11)
    {
LABEL_16:

      v14 = 1;
      return v14 & 1;
    }

LABEL_18:
    v14 = 0;
    return v14 & 1;
  }

  if (!v11)
  {
    goto LABEL_16;
  }

  if (v4 == v9 && v6 == v11)
  {

    goto LABEL_18;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v14 = v13 ^ 1;
  return v14 & 1;
}

uint64_t sub_10036617C()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MobileNotes14TagEditingCell_textField);
  v2 = [v1 text];
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
LABEL_5:
    v8 = [v1 text];
    if (v8)
    {
      v9 = v8;
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    v13 = *(v0 + OBJC_IVAR____TtC11MobileNotes14TagEditingCell_hashtag);
    if (v13 && (v14 = [v13 displayText]) != 0)
    {
      v15 = v14;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      if (!v12)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v16 = 0;
      v18 = 0;
      if (!v12)
      {
LABEL_11:
        if (v18)
        {
          goto LABEL_19;
        }

LABEL_18:
        LOBYTE(v7) = 0;
        return v7 & 1;
      }
    }

    if (!v18)
    {
LABEL_19:

      LOBYTE(v7) = 1;
      return v7 & 1;
    }

    if (v10 != v16 || v12 != v18)
    {
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      LOBYTE(v7) = v19 ^ 1;
      return v7 & 1;
    }

    goto LABEL_18;
  }

  return v7 & 1;
}

id sub_100366300()
{
  v1 = v0;
  v2 = type metadata accessor for UIListContentConfiguration();
  __chkstk_darwin(v2 - 8);
  v3 = OBJC_IVAR____TtC11MobileNotes14TagEditingCell____lazy_storage___listContentView;
  v4 = *(v0 + OBJC_IVAR____TtC11MobileNotes14TagEditingCell____lazy_storage___listContentView);
  if (v4)
  {
    v5 = *(v0 + OBJC_IVAR____TtC11MobileNotes14TagEditingCell____lazy_storage___listContentView);
  }

  else
  {
    sub_100367B50();
    static UIListContentConfiguration.cell()();
    v6 = UIListContentView.init(configuration:)();
    v7 = *(v0 + v3);
    *(v1 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_1003663C8(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC11MobileNotes14TagEditingCell_hashtag] = 0;
  v9 = &v4[OBJC_IVAR____TtC11MobileNotes14TagEditingCell_tagEditingCellRenameDelegate];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v4[OBJC_IVAR____TtC11MobileNotes14TagEditingCell____lazy_storage___listContentView] = 0;
  *&v4[OBJC_IVAR____TtC11MobileNotes14TagEditingCell_textFieldHorizontalPadding] = 0x4028000000000000;
  *&v4[OBJC_IVAR____TtC11MobileNotes14TagEditingCell_contentViewCornerRadius] = 0x4020000000000000;
  v10 = [objc_opt_self() ic_isVision];
  v11 = 8.0;
  if (v10)
  {
    v11 = 0.0;
  }

  *&v4[OBJC_IVAR____TtC11MobileNotes14TagEditingCell_textFieldVerticalPadding] = v11;
  *&v4[OBJC_IVAR____TtC11MobileNotes14TagEditingCell_textFieldLeadingPadding] = 0x4030000000000000;
  *&v4[OBJC_IVAR____TtC11MobileNotes14TagEditingCell_separatorLeadingPadding] = 0x4030000000000000;
  v12 = OBJC_IVAR____TtC11MobileNotes14TagEditingCell_textField;
  *&v4[v12] = [objc_allocWithZone(type metadata accessor for TagEditingTextField()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC11MobileNotes14TagEditingCell_tagObjectID] = 0;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for TagEditingCell();
  v13 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  sub_1003666C0(v14);

  return v13;
}

id sub_100366550(void *a1)
{
  *&v1[OBJC_IVAR____TtC11MobileNotes14TagEditingCell_hashtag] = 0;
  v3 = &v1[OBJC_IVAR____TtC11MobileNotes14TagEditingCell_tagEditingCellRenameDelegate];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes14TagEditingCell____lazy_storage___listContentView] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes14TagEditingCell_textFieldHorizontalPadding] = 0x4028000000000000;
  *&v1[OBJC_IVAR____TtC11MobileNotes14TagEditingCell_contentViewCornerRadius] = 0x4020000000000000;
  v4 = [objc_opt_self() ic_isVision];
  v5 = 8.0;
  if (v4)
  {
    v5 = 0.0;
  }

  *&v1[OBJC_IVAR____TtC11MobileNotes14TagEditingCell_textFieldVerticalPadding] = v5;
  *&v1[OBJC_IVAR____TtC11MobileNotes14TagEditingCell_textFieldLeadingPadding] = 0x4030000000000000;
  *&v1[OBJC_IVAR____TtC11MobileNotes14TagEditingCell_separatorLeadingPadding] = 0x4030000000000000;
  v6 = OBJC_IVAR____TtC11MobileNotes14TagEditingCell_textField;
  *&v1[v6] = [objc_allocWithZone(type metadata accessor for TagEditingTextField()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC11MobileNotes14TagEditingCell_tagObjectID] = 0;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for TagEditingCell();
  v7 = objc_msgSendSuper2(&v12, "initWithCoder:", a1);
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    sub_1003666C0(v10);
  }

  return v8;
}

id sub_1003666C0(double a1)
{
  v2 = *&v1[OBJC_IVAR____TtC11MobileNotes14TagEditingCell_textField];
  LODWORD(a1) = 1148846080;
  [v2 setContentCompressionResistancePriority:0 forAxis:a1];
  LODWORD(v3) = 1148846080;
  [v2 setContentHuggingPriority:0 forAxis:v3];
  [v2 setUserInteractionEnabled:1];
  [v2 setDelegate:v1];
  [v2 setReturnKeyType:9];
  [v2 addTarget:v1 action:"textChanged:" forControlEvents:0x20000];
  [v2 setAdjustsFontForContentSizeCategory:1];
  v4 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v2 setFont:v4];

  sub_100367558();
  [v1 setIsAccessibilityElement:1];
  v5 = [objc_opt_self() mainBundle];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 localizedStringForKey:v6 value:0 table:0];

  if (!v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = String._bridgeToObjectiveC()();
  }

  [v1 setAccessibilityHint:v7];

  return [v1 setFocusEffect:0];
}

void sub_1003668CC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UIBackgroundConfiguration();
  v42 = *(v4 - 8);
  v43 = v4;
  __chkstk_darwin(v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10015DA04(&qword_1006C5030);
  __chkstk_darwin(v7 - 8);
  v9 = &v40 - v8;
  v10 = type metadata accessor for UIListContentConfiguration();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v40 - v15;
  sub_10036786C();
  static UIListContentConfiguration.cell()();
  v17 = type metadata accessor for UICellConfigurationState();
  v48 = v17;
  v49 = &protocol witness table for UICellConfigurationState;
  v18 = sub_100180240(v47);
  v19 = *(v17 - 8);
  v20 = *(v19 + 16);
  v40 = v19 + 16;
  v41 = a1;
  v21 = a1;
  v22 = v20;
  v20(v18, v21, v17);
  v45 = v16;
  UIListContentConfiguration.updated(for:)();
  v23 = *(v11 + 8);
  v46 = v10;
  v44 = v23;
  v23(v14, v10);
  sub_100009F60(v47);
  v24 = [v1 window];
  if (!v24)
  {
    goto LABEL_6;
  }

  v25 = v24;
  v26 = [v24 rootViewController];

  if (!v26)
  {
    goto LABEL_6;
  }

  v27 = [v26 view];

  if (v27)
  {
    v28 = [v27 ic_hasCompactWidth];

    if (v28)
    {
      static UIBackgroundConfiguration._listInsetGroupedCell()();
LABEL_7:
      v48 = v17;
      v49 = &protocol witness table for UICellConfigurationState;
      v29 = sub_100180240(v47);
      v22(v29, v41, v17);
      UIBackgroundConfiguration.updated(for:)();
      v31 = v42;
      v30 = v43;
      (*(v42 + 8))(v6, v43);
      sub_100009F60(v47);
      (*(v31 + 56))(v9, 0, 1, v30);
      UICollectionViewCell.backgroundConfiguration.setter();
      v32 = sub_100366300();
      v33 = v46;
      v48 = v46;
      v49 = &protocol witness table for UIListContentConfiguration;
      v34 = sub_100180240(v47);
      v35 = v45;
      (*(v11 + 16))(v34, v45, v33);
      UIListContentView.configuration.setter();

      v36 = [v2 separatorLayoutGuide];
      v37 = [v36 leadingAnchor];

      v38 = [*&v2[OBJC_IVAR____TtC11MobileNotes14TagEditingCell____lazy_storage___listContentView] leadingAnchor];
      v39 = [v37 constraintEqualToAnchor:v38 constant:16.0];

      [v39 setActive:1];
      v44(v35, v33);
      return;
    }

LABEL_6:
    static UIBackgroundConfiguration.listSidebarCell()();
    goto LABEL_7;
  }

  __break(1u);
}

id sub_100367034()
{
  v1 = *&v0[OBJC_IVAR____TtC11MobileNotes14TagEditingCell_textField];
  v2 = OBJC_IVAR____TtC11MobileNotes14TagEditingCell_hashtag;
  v3 = *&v0[OBJC_IVAR____TtC11MobileNotes14TagEditingCell_hashtag];
  if (!v3 || (v4 = [v3 displayText]) == 0)
  {
    v4 = 0;
  }

  [v1 setText:v4];

  v5 = *&v0[v2];
  if (!v5 || (v6 = [v5 displayText]) == 0)
  {
    v6 = 0;
  }

  [v0 setAccessibilityLabel:v6];

  return [v1 becomeFirstResponder];
}

void sub_10036710C()
{
  v1 = v0;
  v2 = type metadata accessor for CharacterSet();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *&v0[OBJC_IVAR____TtC11MobileNotes14TagEditingCell_textField];
  v7 = [v6 markedTextRange];
  if (v7)
  {
  }

  else
  {
    v8 = [v6 text];
    if (v8)
    {
      v9 = v8;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v10 = [objc_opt_self() ic_hashtagAllowedCharacterSet];
      static CharacterSet._unconditionallyBridgeFromObjectiveC(_:)();

      String.removingCharacters(notContainedIn:)();

      (*(v3 + 8))(v5, v2);
      sub_10042D890(75);

      v11 = static String._fromSubstring(_:)();
      v13 = v12;

      v14 = String._bridgeToObjectiveC()();
      [v6 setText:v14];

      v15 = String._bridgeToObjectiveC()();
      [v1 setAccessibilityLabel:v15];

      v17 = sub_10036611C();
      if (*(v16 + 24))
      {
        v18 = v16;
        v19 = sub_10036617C();
        v20 = *(v18 + 24);
        v21 = *(v18 + 32);
        sub_100367B00(v18, v20);
        (*(v21 + 24))(v19 & 1, v20, v21);
      }

      (v17)(v30, 0);
      v23 = sub_10036611C();
      v24 = *(v22 + 24);
      if (v24)
      {
        v25 = *&v1[OBJC_IVAR____TtC11MobileNotes14TagEditingCell_hashtag];
        v26 = *(v22 + 32);
        sub_100367B00(v22, *(v22 + 24));
        v27 = *(v26 + 48);
        v28 = v25;
        v29 = v1;
        v27(v25, v11, v13, v1, v24, v26);
      }

      else
      {
      }

      (v23)(v30, 0);
    }
  }
}

uint64_t sub_100367558()
{
  v1 = v0;
  v2 = sub_10015DA04(&qword_1006C5030);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = type metadata accessor for UIListContentConfiguration.TextProperties();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UIListContentConfiguration();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&v1[OBJC_IVAR____TtC11MobileNotes14TagEditingCell_textField];
  static UIListContentConfiguration.cell()();
  UIListContentConfiguration.textProperties.getter();
  (*(v10 + 8))(v12, v9);
  v14 = UIListContentConfiguration.TextProperties.color.getter();
  (*(v6 + 8))(v8, v5);
  [v13 setTextColor:v14];

  v15 = [v1 layer];
  v16 = [objc_opt_self() tertiarySystemFillColor];
  v17 = [v16 CGColor];

  [v15 setBorderColor:v17];
  v18 = [v1 layer];
  [v18 setBorderWidth:0.0];

  v19 = [v1 layer];
  [v19 setCornerRadius:0.0];

  static UIBackgroundConfiguration.clear()();
  v20 = type metadata accessor for UIBackgroundConfiguration();
  (*(*(v20 - 8) + 56))(v4, 0, 1, v20);
  return UICollectionViewCell.backgroundConfiguration.setter();
}

void sub_10036786C()
{
  v1 = sub_100366300();
  v8 = [v1 superview];

  if (v8)
  {
  }

  else
  {
    v2 = OBJC_IVAR____TtC11MobileNotes14TagEditingCell____lazy_storage___listContentView;
    [*&v0[OBJC_IVAR____TtC11MobileNotes14TagEditingCell____lazy_storage___listContentView] setTranslatesAutoresizingMaskIntoConstraints:0];
    v3 = *&v0[OBJC_IVAR____TtC11MobileNotes14TagEditingCell_textField];
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v4 = [v0 contentView];
    [v4 addSubview:*&v0[v2]];

    v5 = [v0 contentView];
    [v5 addSubview:v3];

    [v3 ic_applyRoundedCornersWithRadius:8.0];
    [v3 ic_addAnchorsToFillSuperviewWithHorizontalPadding:0 verticalPadding:12.0 usesSafeAreaLayoutGuide:*&v0[OBJC_IVAR____TtC11MobileNotes14TagEditingCell_textFieldVerticalPadding]];
    v6 = [v0 contentView];
    [v6 ic_applyRoundedCornersWithRadius:8.0];

    v7 = *&v0[v2];

    [v7 ic_addAnchorsToFillSuperview];
  }
}

id sub_100367A18(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100367B00(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_100367B50()
{
  result = qword_1006C5038;
  if (!qword_1006C5038)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006C5038);
  }

  return result;
}

uint64_t sub_100367B9C()
{
  v1 = OBJC_IVAR____TtC11MobileNotes14TagEditingCell_tagEditingCellRenameDelegate;
  swift_beginAccess();
  sub_1003680B8(v0 + v1, v5);
  if (!v6)
  {
    sub_1000073B4(v5, &unk_1006C4B20);
    return 1;
  }

  v2 = *(*sub_10017CC60(v5, v6) + OBJC_IVAR____TtC11MobileNotes17TagCollectionView_isRenamingTags);
  sub_1000073B4(v5, &unk_1006C4B20);
  if (v2 != 1)
  {
    return 1;
  }

  sub_1003680B8(v0 + v1, v5);
  if (v6)
  {
    sub_1002EC1FC(v5, v4);
    sub_1000073B4(v5, &unk_1006C4B20);
    sub_10017CC60(v4, v4[3]);
    sub_1003AE544();
    sub_100009F60(v4);
  }

  else
  {
    sub_1000073B4(v5, &unk_1006C4B20);
  }

  return 0;
}

BOOL sub_100367CCC(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() ic_hashtagAllowedCharacterSet];
  static CharacterSet._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = String.removingCharacters(notContainedIn:)();
  v11 = v10;
  (*(v5 + 8))(v7, v4);

  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    return 1;
  }

  v14 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v14 = a1 & 0xFFFFFFFFFFFFLL;
  }

  return v14 == 0;
}

void sub_100367E20()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MobileNotes14TagEditingCell_textField);
  v2 = [v1 text];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = String._bridgeToObjectiveC()();

  v5 = [v4 ic_withoutHashtagPrefix];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = OBJC_IVAR____TtC11MobileNotes14TagEditingCell_hashtag;
  v10 = *(v0 + OBJC_IVAR____TtC11MobileNotes14TagEditingCell_hashtag);
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = [v10 displayText];
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  if (v6 == v13 && v8 == v15)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
LABEL_9:
      [v1 resignFirstResponder];

      v18 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v18 = v6 & 0xFFFFFFFFFFFFLL;
      }

      if (v18)
      {
        v19 = OBJC_IVAR____TtC11MobileNotes14TagEditingCell_tagEditingCellRenameDelegate;
        swift_beginAccess();
        sub_1003680B8(v0 + v19, v24);
        if (v25)
        {
          sub_1002EC1FC(v24, v23);
          sub_1000073B4(v24, &unk_1006C4B20);
          sub_10017CC60(v23, v23[3]);
          sub_1003AE544();
          sub_100009F60(v23);
        }

        else
        {
          sub_1000073B4(v24, &unk_1006C4B20);
        }
      }

      else
      {
        v20 = *(v0 + v9);
        if (!v20 || (v21 = [v20 displayText]) == 0)
        {
          v21 = 0;
        }

        [v1 setText:v21];
      }

      return;
    }
  }
}

uint64_t sub_1003680B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DA04(&unk_1006C4B20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t GetLinkedNotesIntent.entity.setter(uint64_t a1)
{
  v2 = type metadata accessor for NoteEntity(0);
  __chkstk_darwin(v2 - 8);
  sub_1001AD0E0(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  IntentParameter.wrappedValue.setter();
  return sub_1001AD144(a1);
}

uint64_t sub_1003681E4()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_100025918(v6, static GetLinkedNotesIntent.title);
  sub_10002597C(v6, static GetLinkedNotesIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t GetLinkedNotesIntent.title.unsafeMutableAddressor()
{
  if (qword_1006BC7F8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return sub_10002597C(v0, static GetLinkedNotesIntent.title);
}

uint64_t static GetLinkedNotesIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC7F8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10002597C(v2, static GetLinkedNotesIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static GetLinkedNotesIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for LocalizedStringResource();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v6 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v12 + 56))(v4, 1, 1, v11);
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v13 = type metadata accessor for IntentDescription();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t static GetLinkedNotesIntent.parameterSummary.getter()
{
  v0 = sub_10015DA04(&qword_1006C5040);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&qword_1006C5048);
  __chkstk_darwin(v1);
  sub_10021B428();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._object = 0x800000010056E390;
  v2._countAndFlagsBits = 0xD000000000000014;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C5050);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

void (*GetLinkedNotesIntent.entity.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017D9E0;
}

uint64_t GetLinkedNotesIntent.perform()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v3[7] = *(type metadata accessor for NoteEntity(0) - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_100368AB8, 0, 0);
}

uint64_t sub_100368AB8()
{
  v2 = v0[5];
  v1 = v0[6];
  IntentParameter.wrappedValue.getter();
  AppDependency.wrappedValue.getter();
  v3 = v0[2];
  v0[11] = v3;
  v4 = swift_allocObject();
  v0[12] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;

  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_100368BE4;

  return sub_1001AB134(v3, sub_10036A204, v4);
}

uint64_t sub_100368BE4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v5 = *(*v2 + 80);
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  sub_1001AD144(v5);

  if (v1)
  {
    v6 = sub_1003692C8;
  }

  else
  {
    v6 = sub_100368D54;
  }

  return _swift_task_switch(v6, 0, 0);
}

void *sub_100368D54()
{
  result = v0[14];
  v2 = result[2];
  v0[16] = v2;
  if (v2)
  {
    v0[17] = _swiftEmptyArrayStorage;
    v0[18] = 0;
    if (result[2])
    {
      v3 = result[4];
      v0[19] = v3;
      v4 = result[5];
      v0[20] = v4;
      v5 = v3;
      v6 = v4;
      v7 = v5;
      v8 = v6;
      v9 = swift_task_alloc();
      v0[21] = v9;
      *v9 = v0;
      v9[1] = sub_100368F18;
      v10 = v0[9];

      return NoteEntity.init(for:in:)(v10, v7, v8);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v0[3] = _swiftEmptyArrayStorage;
    sub_10015DA04(&unk_1006C14D0);
    sub_100184E54();
    static IntentResult.result<A>(value:)();

    v11 = v0[1];

    return v11();
  }

  return result;
}

uint64_t sub_100368F18()
{
  *(*v1 + 176) = v0;

  if (v0)
  {

    v2 = sub_100369348;
  }

  else
  {
    v2 = sub_100369040;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100369040()
{
  sub_1001AD0E0(*(v0 + 72), *(v0 + 64));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 136);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1001CAB80(0, v2[2] + 1, 1, *(v0 + 136));
  }

  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1001CAB80(v3 > 1, v4 + 1, 1, v2);
  }

  v5 = *(v0 + 160);
  v6 = *(v0 + 144);
  v7 = *(v0 + 128);
  v9 = *(v0 + 64);
  v8 = *(v0 + 72);
  v10 = *(v0 + 56);

  sub_1001AD144(v8);
  v2[2] = v4 + 1;
  result = sub_1002D92B8(v9, v2 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v4);
  if (v6 + 1 == v7)
  {

    *(v0 + 24) = v2;
    sub_10015DA04(&unk_1006C14D0);
    sub_100184E54();
    static IntentResult.result<A>(value:)();

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v13 = *(v0 + 144) + 1;
    *(v0 + 136) = v2;
    *(v0 + 144) = v13;
    v14 = *(v0 + 112);
    if (v13 >= *(v14 + 16))
    {
      __break(1u);
    }

    else
    {
      v15 = v14 + 16 * v13;
      v16 = *(v15 + 32);
      *(v0 + 152) = v16;
      v17 = *(v15 + 40);
      *(v0 + 160) = v17;
      v18 = v16;
      v19 = v17;
      v20 = v18;
      v21 = v19;
      v22 = swift_task_alloc();
      *(v0 + 168) = v22;
      *v22 = v0;
      v22[1] = sub_100368F18;
      v23 = *(v0 + 72);

      return NoteEntity.init(for:in:)(v23, v20, v21);
    }
  }

  return result;
}

uint64_t sub_1003692C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100369348()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1003693D4(void *a1@<X0>, void *a2@<X8>)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = a1;
    sub_10036A378(v6);
    v9 = v8;

    if (!v2)
    {
      *a2 = v9;
    }
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      *a2 = _swiftEmptyArrayStorage;
    }

    else
    {
      type metadata accessor for ICError(0);
      sub_10015DA04(&qword_1006BFBE0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100531E30;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 40) = v11;
      v12 = [objc_opt_self() mainBundle];
      v13 = String._bridgeToObjectiveC()();
      v14 = [v12 localizedStringForKey:v13 value:0 table:0];

      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      *(inited + 72) = &type metadata for String;
      *(inited + 48) = v15;
      *(inited + 56) = v17;
      sub_10018F334(inited);
      swift_setDeallocating();
      sub_1000073B4(inited + 32, &unk_1006BFA10);
      sub_10036A330(&qword_1006BE4D0, type metadata accessor for ICError);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
    }
  }
}

uint64_t sub_100369604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a5;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v37 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v36 = &v36 - v11;
  __chkstk_darwin(v10);
  v39 = &v36 - v12;
  v13 = sub_10015DA04(&qword_1006BCC20);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v36 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v36 - v21;
  __chkstk_darwin(v20);
  v24 = &v36 - v23;
  v25 = *(v7 + 56);
  v25(&v36 - v23, 1, 1, v6);
  sub_100006038(a1, v40, &qword_1006BE7A0);
  if (v41)
  {
    v26 = swift_dynamicCast();
    v25(v22, v26 ^ 1u, 1, v6);
    if ((*(v7 + 48))(v22, 1, v6) != 1)
    {
      sub_1000073B4(v24, &qword_1006BCC20);
      (*(v7 + 32))(v24, v22, v6);
      v25(v24, 0, 1, v6);
      goto LABEL_9;
    }
  }

  else
  {
    sub_1000073B4(v40, &qword_1006BE7A0);
    v25(v22, 1, 1, v6);
  }

  sub_1000073B4(v22, &qword_1006BCC20);
  sub_100006038(a1, v40, &qword_1006BE7A0);
  if (v41)
  {
    if (swift_dynamicCast())
    {
      URL.init(string:)();

      sub_1000073B4(v24, &qword_1006BCC20);
      sub_10000CA08(v19, v24);
    }
  }

  else
  {
    sub_1000073B4(v40, &qword_1006BE7A0);
  }

LABEL_9:
  v27 = v39;
  sub_100006038(v24, v16, &qword_1006BCC20);
  if ((*(v7 + 48))(v16, 1, v6) == 1)
  {
    sub_1000073B4(v24, &qword_1006BCC20);
  }

  else
  {
    (*(v7 + 32))(v27, v16, v6);
    v28 = objc_opt_self();
    URL._bridgeToObjectiveC()(v29);
    v31 = v30;
    LODWORD(v28) = [v28 isShowNoteURL:v30];

    if (v28)
    {
      v32 = v37;
      (*(v7 + 16))(v37, v27, v6);
      v33 = v36;
      sub_100265DC4(v36, v32);
      v34 = *(v7 + 8);
      v34(v33, v6);
      v34(v27, v6);
    }

    else
    {
      (*(v7 + 8))(v27, v6);
    }

    v16 = v24;
  }

  return sub_1000073B4(v16, &qword_1006BCC20);
}

uint64_t sub_100369B1C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000A600;

  return GetLinkedNotesIntent.perform()(a1, v5, v4);
}

uint64_t sub_100369BC8@<X0>(uint64_t *a1@<X8>)
{
  result = _s11MobileNotes09GetLinkedB6IntentVACycfC_0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t _s11MobileNotes09GetLinkedB6IntentVACycfC_0()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v31 = *(v0 - 8);
  v32 = v0;
  __chkstk_darwin(v0);
  v30 = v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v29 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v28 = v26 - v5;
  v6 = sub_10015DA04(&unk_1006BCAC0);
  __chkstk_darwin(v6 - 8);
  v27 = v26 - v7;
  v8 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v8 - 8);
  v26[0] = v26 - v9;
  v10 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for LocalizedStringResource();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v26[1] = sub_10015DA04(&unk_1006BE580);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v11 + 104);
  v19(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19(v13, v18, v10);
  v20 = v26[0];
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v17 + 56))(v20, 0, 1, v16);
  v21 = type metadata accessor for NoteEntity(0);
  (*(*(v21 - 8) + 56))(v27, 1, 1, v21);
  v22 = type metadata accessor for IntentDialog();
  v23 = *(*(v22 - 8) + 56);
  v23(v28, 1, 1, v22);
  v23(v29, 1, 1, v22);
  (*(v31 + 104))(v30, enum case for InputConnectionBehavior.default(_:), v32);
  sub_10036A330(&qword_1006BCAD0, type metadata accessor for NoteEntity);
  v24 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  sub_10015DA04(&qword_1006C34B0);
  v33 = 0xD000000000000021;
  v34 = 0x800000010055CFC0;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  return v24;
}

unint64_t sub_10036A224()
{
  result = qword_1006C5058;
  if (!qword_1006C5058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C5058);
  }

  return result;
}

unint64_t sub_10036A27C()
{
  result = qword_1006C5060;
  if (!qword_1006C5060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C5060);
  }

  return result;
}

uint64_t sub_10036A330(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10036A378(void *a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v93 = v3;
  v94 = v4;
  v5 = __chkstk_darwin(v3);
  v91 = v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v92 = v77 - v8;
  v9 = __chkstk_darwin(v7);
  v89 = v77 - v10;
  v11 = __chkstk_darwin(v9);
  v88 = v77 - v12;
  __chkstk_darwin(v11);
  v87 = (v77 - v13);
  v90 = [a1 managedObjectContext];
  if (!v90)
  {
    type metadata accessor for ICError(0);
    v96 = 225;
    sub_1001E27A0(_swiftEmptyArrayStorage);
    sub_10036A330(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    return;
  }

  v96 = &_swiftEmptySetSingleton;
  v14 = [a1 textStorage];
  v85 = v1;
  if (v14)
  {
    v86 = NSLinkAttributeName;
    v15 = v14;
    v16 = [v14 ic_range];
    v18 = v17;
    v19 = swift_allocObject();
    *(v19 + 16) = &v96;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_10036AD60;
    *(v20 + 24) = v19;
    aBlock[4] = sub_1001A1F54;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1004AEAA8;
    aBlock[3] = &unk_100659018;
    v21 = _Block_copy(aBlock);

    [v15 enumerateAttribute:v86 inRange:v16 options:v18 usingBlock:{0, v21}];

    _Block_release(v21);
    LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

    if (v15)
    {
      goto LABEL_58;
    }

    v83 = sub_10036AD60;
    v84 = v19;
  }

  else
  {
    v83 = 0;
    v84 = 0;
  }

  v22 = [a1 inlineAttachments];
  if (v22)
  {
    v23 = v22;
    v24 = sub_1000054A4(0, &qword_1006C26A8);
    sub_10036ACF8();
    v25 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v25 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v25 = aBlock[7];
      v26 = aBlock[8];
      v27 = aBlock[9];
      v28 = aBlock[10];
      v29 = aBlock[11];
    }

    else
    {
      v28 = 0;
      v30 = -1 << *(v25 + 32);
      v26 = v25 + 56;
      v27 = ~v30;
      v31 = -v30;
      if (v31 < 64)
      {
        v32 = ~(-1 << v31);
      }

      else
      {
        v32 = -1;
      }

      v29 = v32 & *(v25 + 56);
    }

    v77[1] = v27;
    v33 = (v27 + 64) >> 6;
    v80 = (v94 + 32);
    v79 = (v94 + 16);
    v78 = (v94 + 8);
    v82 = v24;
    v81 = v25;
    if ((v25 & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_23:
    v39 = __CocoaSet.Iterator.next()();
    if (v39)
    {
      aBlock[6] = v39;
      swift_dynamicCast();
      v38 = aBlock[0];
      v36 = v28;
      v37 = v29;
      if (aBlock[0])
      {
        while (1)
        {
          if ([v38 isLinkAttachment] && (v40 = objc_msgSend(v38, "tokenContentIdentifier")) != 0)
          {
            v86 = v37;
            v41 = v40;
            v42 = NotesAppURLForNoteIdentifierOrTokenContentIdentifier();

            if (v42)
            {
              v43 = v88;
              static URL._unconditionallyBridgeFromObjectiveC(_:)();

              v44 = v87;
              v45 = v43;
              v46 = v93;
              (*v80)(v87, v45, v93);
              v47 = v92;
              (*v79)(v92, v44, v46);
              v48 = v89;
              sub_100265DC4(v89, v47);

              v49 = *v78;
              v50 = v48;
              v25 = v81;
              (*v78)(v50, v46);
              v49(v44, v46);
            }

            else
            {
            }

            v28 = v36;
            v29 = v86;
            if (v25 < 0)
            {
              goto LABEL_23;
            }
          }

          else
          {

            v28 = v36;
            v29 = v37;
            if (v25 < 0)
            {
              goto LABEL_23;
            }
          }

LABEL_17:
          v34 = v28;
          v35 = v29;
          v36 = v28;
          if (!v29)
          {
            break;
          }

LABEL_21:
          v37 = (v35 - 1) & v35;
          v38 = *(*(v25 + 48) + ((v36 << 9) | (8 * __clz(__rbit64(v35)))));
          if (!v38)
          {
            goto LABEL_32;
          }
        }

        while (1)
        {
          v36 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            goto LABEL_57;
          }

          if (v36 >= v33)
          {
            break;
          }

          v35 = *(v26 + 8 * v36);
          ++v34;
          if (v35)
          {
            goto LABEL_21;
          }
        }
      }
    }

LABEL_32:
    sub_10019E530();
  }

  v51 = v96 + 56;
  v52 = 1 << *(v96 + 32);
  v53 = -1;
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  v54 = v53 & *(v96 + 56);
  v55 = (v52 + 63) >> 6;
  v88 = (v94 + 8);
  v89 = v94 + 16;
  v92 = v96;

  v56 = 0;
  v87 = _swiftEmptyArrayStorage;
  while (v54)
  {
LABEL_41:
    v58 = __clz(__rbit64(v54));
    v54 &= v54 - 1;
    v59 = v91;
    v61 = v93;
    v60 = v94;
    (*(v94 + 16))(v91, *(v92 + 6) + *(v94 + 72) * (v58 | (v56 << 6)), v93);
    v62 = objc_opt_self();
    URL._bridgeToObjectiveC()(v63);
    v65 = v64;
    (*(v60 + 8))(v59, v61);
    v66 = [v62 predicateForNotesMentionedInURL:v65];

    if (v66)
    {
      v67 = [objc_opt_self() notesMatchingPredicate:v66 context:v90];
      sub_1000054A4(0, &qword_1006C1420);
      v68 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v68 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_46;
        }

LABEL_44:
      }

      else
      {
        if (!*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_44;
        }

LABEL_46:
        if ((v68 & 0xC000000000000001) != 0)
        {
          v69 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_59;
          }

          v69 = *(v68 + 32);
        }

        v70 = v69;

        v86 = [v70 objectID];
        v82 = v90;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v87 = sub_1001CB92C(0, v87[2] + 1, 1, v87);
        }

        v72 = v87[2];
        v71 = v87[3];
        if (v72 >= v71 >> 1)
        {
          v87 = sub_1001CB92C((v71 > 1), v72 + 1, 1, v87);
        }

        v74 = v86;
        v73 = v87;
        v87[2] = v72 + 1;
        v75 = &v73[2 * v72];
        v76 = v82;
        v75[4] = v74;
        v75[5] = v76;
      }
    }
  }

  while (1)
  {
    v57 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      break;
    }

    if (v57 >= v55)
    {

      sub_10000C840(v83);
      return;
    }

    v54 = *(v51 + 8 * v57);
    ++v56;
    if (v54)
    {
      v56 = v57;
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
}

unint64_t sub_10036ACF8()
{
  result = qword_1006C26B0;
  if (!qword_1006C26B0)
  {
    sub_1000054A4(255, &qword_1006C26A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C26B0);
  }

  return result;
}

uint64_t sub_10036AD68()
{
  v1 = v0;
  v2 = sub_10015DA04(&unk_1006C1710);
  __chkstk_darwin(v2 - 8);
  v4 = &v101 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v105 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v101 - v9;
  v11 = v0[OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker_prefersPopover];
  v12 = sub_10036BEE8();
  v13 = v12;
  if (v11 != 1)
  {
    [v12 setPreferredDatePickerStyle:3];

    v19 = sub_10036C078();
    [v19 setHidden:1];

    v20 = OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker____lazy_storage___datePicker;
    v21 = [*&v1[OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker____lazy_storage___datePicker] superview];
    v22 = [v1 contentView];
    v23 = v22;
    if (v21)
    {
      if (v22)
      {
        sub_1000054A4(0, &qword_1006C95E0);
        v24 = static NSObject.== infix(_:_:)();

        if (v24)
        {
LABEL_31:
          v89 = [v1 separatorLayoutGuide];
          v59 = [v89 leadingAnchor];

          v90 = [v1 contentView];
          v60 = [v90 leadingAnchor];

          [v1 directionalLayoutMargins];
          v61 = [v59 constraintEqualToAnchor:v60 constant:v91 + 44.0];
          goto LABEL_32;
        }

LABEL_25:
        [*&v1[v20] _appliedInsetsToEdgeOfContent];
        v63 = v62;
        [*&v1[v20] _appliedInsetsToEdgeOfContent];
        v65 = v64;
        v66 = [v1 contentView];
        [v66 addSubview:*&v1[v20]];

        sub_10015DA04(&unk_1006BD390);
        v67 = swift_allocObject();
        *(v67 + 16) = xmmword_100531E10;
        v68 = *&v1[v20];
        v104 = v5;
        v69 = [v68 topAnchor];
        v70 = [v1 contentView];
        v71 = [v70 topAnchor];

        v103 = v10;
        v72 = [v69 constraintEqualToAnchor:v71];

        *(v67 + 32) = v72;
        v73 = [*&v1[v20] bottomAnchor];
        v74 = [v1 contentView];
        v75 = [v74 bottomAnchor];

        v76 = [v73 constraintEqualToAnchor:v75];
        *(v67 + 40) = v76;
        v77 = [*&v1[v20] leadingAnchor];
        v78 = [v1 contentView];
        v79 = [v78 leadingAnchor];

        if ([v1 ic_isRTL])
        {
          v80 = v65;
        }

        else
        {
          v80 = v63;
        }

        v81 = [v77 constraintEqualToAnchor:v79 constant:v80];

        *(v67 + 48) = v81;
        v82 = [*&v1[v20] trailingAnchor];
        v83 = [v1 contentView];
        v84 = [v83 trailingAnchor];

        if (![v1 ic_isRTL])
        {
          v63 = v65;
        }

        v85 = objc_opt_self();
        v86 = [v82 constraintEqualToAnchor:v84 constant:-v63];

        v5 = v104;
        *(v67 + 56) = v86;
        sub_1000054A4(0, &qword_1006C5D90);
        isa = Array._bridgeToObjectiveC()().super.isa;

        v88 = v85;
        v10 = v103;
        [v88 activateConstraints:isa];

        goto LABEL_31;
      }

      v23 = v21;
    }

    else if (!v22)
    {
      goto LABEL_31;
    }

    goto LABEL_25;
  }

  [v12 setPreferredDatePickerStyle:2];

  v14 = sub_10036C078();
  [v14 setHidden:0];

  v15 = OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker____lazy_storage___inlineLabel;
  v16 = *&v1[OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker____lazy_storage___inlineLabel];
  if (*&v1[OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker_popoverLeadingText + 8])
  {
    v17 = v16;

    v18 = String._bridgeToObjectiveC()();
  }

  else
  {
    v17 = v16;
    v18 = 0;
  }

  [v17 setText:v18];

  v25 = sub_10036BFDC();
  v26 = [v25 superview];

  if (!v26)
  {
    v101 = v15;
    v103 = v10;
    v104 = v5;
    v27 = [v1 contentView];
    v28 = OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker____lazy_storage___compactStackView;
    [v27 addSubview:*&v1[OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker____lazy_storage___compactStackView]];

    v29 = [*&v1[v28] leadingAnchor];
    v30 = [v1 contentView];
    v31 = [v30 layoutMarginsGuide];

    v32 = [v31 leadingAnchor];
    v33 = [v29 constraintEqualToAnchor:v32];

    v34 = *&v1[OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker_inlineStackViewLeadingAnchor];
    *&v1[OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker_inlineStackViewLeadingAnchor] = v33;
    v35 = v33;

    if (v35)
    {
      [v35 setActive:1];
    }

    v102 = objc_opt_self();
    sub_10015DA04(&unk_1006BD390);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_100534950;
    v37 = [*&v1[v28] topAnchor];
    v38 = [v1 contentView];
    v39 = [v38 layoutMarginsGuide];

    v40 = [v39 topAnchor];
    v41 = [v37 constraintEqualToAnchor:v40];

    *(v36 + 32) = v41;
    v42 = [*&v1[v28] trailingAnchor];
    v43 = [v1 contentView];
    v44 = [v43 layoutMarginsGuide];

    v45 = [v44 trailingAnchor];
    v46 = [v42 constraintEqualToAnchor:v45];

    *(v36 + 40) = v46;
    v47 = [*&v1[v28] bottomAnchor];
    v48 = [v1 contentView];
    v49 = [v48 layoutMarginsGuide];

    v50 = [v49 bottomAnchor];
    v51 = [v47 constraintEqualToAnchor:v50];

    *(v36 + 48) = v51;
    sub_1000054A4(0, &qword_1006C5D90);
    v26 = Array._bridgeToObjectiveC()().super.isa;

    [v102 activateConstraints:v26];
    v10 = v103;
    v5 = v104;
    v15 = v101;
  }

  v52 = OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker____lazy_storage___compactStackView;
  [*&v1[OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker____lazy_storage___compactStackView] addArrangedSubview:*&v1[v15]];
  [*&v1[v52] addArrangedSubview:*&v1[OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker____lazy_storage___datePicker]];
  v53 = ICAccessibilityAccessibilityLargerTextSizesEnabled();
  v54 = *&v1[OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker_inlineStackViewLeadingAnchor];
  v55 = v53;
  if (v53)
  {
    v56 = 1;
  }

  else
  {
    v56 = 3;
  }

  if (v54)
  {
    v57 = 44.0;
    if (v53)
    {
      v57 = 0.0;
    }

    [v54 setConstant:v57];
  }

  [*&v1[v52] setAxis:v55];
  [*&v1[v52] setAlignment:v56];
  v58 = [v1 separatorLayoutGuide];
  v59 = [v58 leadingAnchor];

  v60 = [*&v1[v52] leadingAnchor];
  v61 = [v59 constraintEqualToAnchor:v60];
LABEL_32:
  v92 = v61;

  [v92 setActive:1];
  v93 = OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker_date;
  swift_beginAccess();
  sub_100239F98(&v1[v93], v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10036C5C4(v4);
  }

  (*(v6 + 32))(v10, v4, v5);
  v95 = sub_10036BEE8();
  v96 = [v95 date];

  v97 = v105;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v95) = Date.isSameDay(as:)();
  v98 = *(v6 + 8);
  v98(v97, v5);
  if ((v95 & 1) == 0)
  {
    v99 = *&v1[OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker____lazy_storage___datePicker];
    v100 = Date._bridgeToObjectiveC()().super.isa;
    [v99 setDate:v100 animated:0];
  }

  return (v98)(v10, v5);
}

void sub_10036BAAC()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for FolderComposerFilterCellDatePicker();
  objc_msgSendSuper2(&v5, "prepareForReuse");
  v1 = sub_10036BFDC();
  [v1 removeFromSuperview];

  v2 = sub_10036BEE8();
  [v2 removeFromSuperview];

  v3 = [objc_allocWithZone(UIDatePicker) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v3 _setSelectionBarIgnoresInset:1];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setPreferredDatePickerStyle:3];
  [v3 setDatePickerMode:1];
  [v3 addTarget:v0 action:"dateSelectionChanged:" forControlEvents:4096];
  v4 = *&v0[OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker____lazy_storage___datePicker];
  *&v0[OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker____lazy_storage___datePicker] = v3;
}

uint64_t sub_10036BC14(void *a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10015DA04(&unk_1006C1710);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v17 - v11;
  v13 = [a1 date];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v4 + 56))(v12, 0, 1, v3);
  v14 = OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker_date;
  swift_beginAccess();
  sub_10023A008(v12, &v1[v14]);
  swift_endAccess();
  [v1 setNeedsUpdateConfiguration];
  sub_10036C5C4(v12);
  sub_100239F98(&v1[v14], v10);
  if ((*(v4 + 48))(v10, 1, v3) == 1)
  {
    return sub_10036C5C4(v10);
  }

  (*(v4 + 32))(v6, v10, v3);
  v16 = *&v1[OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker_dateSelectionChanged];
  if (v16)
  {

    v16(v6);
    sub_10000C840(v16);
  }

  return (*(v4 + 8))(v6, v3);
}

id sub_10036BEE8()
{
  v1 = OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker____lazy_storage___datePicker;
  v2 = *(v0 + OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker____lazy_storage___datePicker);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker____lazy_storage___datePicker);
  }

  else
  {
    v4 = [objc_allocWithZone(UIDatePicker) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v4 _setSelectionBarIgnoresInset:1];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 setPreferredDatePickerStyle:3];
    [v4 setDatePickerMode:1];
    [v4 addTarget:v0 action:"dateSelectionChanged:" forControlEvents:4096];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10036BFDC()
{
  v1 = OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker____lazy_storage___compactStackView;
  v2 = *(v0 + OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker____lazy_storage___compactStackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker____lazy_storage___compactStackView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIStackView) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 setSpacing:4.0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10036C078()
{
  v1 = OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker____lazy_storage___inlineLabel;
  v2 = *(v0 + OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker____lazy_storage___inlineLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker____lazy_storage___inlineLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(UILabel) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 setAdjustsFontForContentSizeCategory:1];
    v5 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
    [v4 setFont:v5];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_10036C15C(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker_dateSelectionChanged];
  *v9 = 0;
  v9[1] = 0;
  v10 = OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker_date;
  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v4[OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker_prefersPopover] = 1;
  v12 = &v4[OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker_popoverLeadingText];
  *v12 = 0;
  v12[1] = 0;
  *&v4[OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker____lazy_storage___datePicker] = 0;
  *&v4[OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker_inlineStackViewLeadingAnchor] = 0;
  *&v4[OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker____lazy_storage___compactStackView] = 0;
  *&v4[OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker____lazy_storage___inlineLabel] = 0;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for FolderComposerFilterCellDatePicker();
  return objc_msgSendSuper2(&v14, "initWithFrame:", a1, a2, a3, a4);
}

id sub_10036C2A0(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker_dateSelectionChanged];
  *v3 = 0;
  v3[1] = 0;
  v4 = OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker_date;
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 56))(&v1[v4], 1, 1, v5);
  v1[OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker_prefersPopover] = 1;
  v6 = &v1[OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker_popoverLeadingText];
  *v6 = 0;
  v6[1] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker____lazy_storage___datePicker] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker_inlineStackViewLeadingAnchor] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker____lazy_storage___compactStackView] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotes34FolderComposerFilterCellDatePicker____lazy_storage___inlineLabel] = 0;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for FolderComposerFilterCellDatePicker();
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

id sub_10036C3DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FolderComposerFilterCellDatePicker();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FolderComposerFilterCellDatePicker()
{
  result = qword_1006C50C8;
  if (!qword_1006C50C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10036C50C()
{
  sub_10001E5B8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10036C5C4(uint64_t a1)
{
  v2 = sub_10015DA04(&unk_1006C1710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10036C62C()
{
  v1 = [v0 identifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10036C694()
{
  v1 = [v0 identifier];
  if (v1)
  {
    v2 = v1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v3 = String._bridgeToObjectiveC()();

  if ([v0 isURL])
  {
    goto LABEL_4;
  }

  if ([v0 hasFallbackPDF])
  {
    v5 = String._bridgeToObjectiveC()();
    v6 = [v3 stringByAppendingPathExtension:v5];

    if (!v6)
    {
LABEL_7:

      return 0x2E77656976657250;
    }
  }

  else
  {
    if (![v0 hasFallbackImage])
    {
      sub_10036D7D8();
      v9 = String._bridgeToObjectiveC()();

      v10 = [v3 stringByAppendingPathExtension:v9];

      if (!v10)
      {
LABEL_4:

        return 0;
      }

      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v8;
    }

    v7 = String._bridgeToObjectiveC()();
    v6 = [v3 stringByAppendingPathExtension:v7];

    if (!v6)
    {
      goto LABEL_7;
    }
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v8;
}

uint64_t sub_10036C8AC()
{
  v0 = type metadata accessor for Logger();
  sub_100025918(v0, qword_1006C50D8);
  sub_10002597C(v0, qword_1006C50D8);
  return static Logger.archiving.getter();
}

uint64_t sub_10036C8F8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_10036C970()
{
  v1 = [*v0 hashtags];
  sub_1000054A4(0, &qword_1006C63E0);
  sub_100005B0C(&qword_1006C1770, &qword_1006C63E0);
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = sub_100282F9C(v2);

  v4 = sub_10026F868(v3);

  return v4;
}

uint64_t sub_10036CA44(uint64_t a1)
{
  v3 = *v1;
  [v3 persistPendingChanges];
  v4 = v3;
  sub_10027A180(a1, &v7);
  sub_100284980(v4, a1, &v7);
  if (qword_1006BC8C8 != -1)
  {
    swift_once();
  }

  sub_100284EB8();
  v5 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  sub_100284D5C(&v7);
  return v5;
}

uint64_t sub_10036CB34()
{
  v1 = [v0 visibleNotesInFolder];
  sub_1000054A4(0, &qword_1006C1420);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
LABEL_13:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      do
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_11:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_13;
          }

          v5 = *(v2 + 8 * v4 + 32);
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_11;
          }
        }

        v7 = v5;
        v8 = sub_10036CCA0();

        sub_1002DC388(v8);
        ++v4;
      }

      while (v6 != v3);
    }
  }

  v9 = sub_10026F868(_swiftEmptyArrayStorage);

  return v9;
}

void *sub_10036CCA0()
{
  v1 = sub_10015DA04(&unk_1006C1710);
  __chkstk_darwin(v1 - 8);
  v3 = &v39 - v2;
  v4 = _s3TagVMa();
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = __chkstk_darwin(v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v39 - v8;
  v10 = [v0 account];
  if (!v10)
  {
    return &_swiftEmptySetSingleton;
  }

  v11 = v10;
  v12 = [v0 visibleInlineAttachments];
  sub_1000054A4(0, &qword_1006C26A8);
  sub_100005B0C(&qword_1006C26B0, &qword_1006C26A8);
  v13 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = v11;
  sub_10036E318(v13, v14);
  v16 = v15;

  if (!(v16 >> 62))
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_4;
    }

LABEL_20:

    v21 = _swiftEmptyArrayStorage;
LABEL_21:
    v38 = sub_10026F868(v21);

    return v38;
  }

  v17 = _CocoaArrayWrapper.endIndex.getter();
  if (!v17)
  {
    goto LABEL_20;
  }

LABEL_4:
  v18 = v16;
  v45 = _swiftEmptyArrayStorage;
  result = sub_100189644(0, v17 & ~(v17 >> 63), 0);
  if ((v17 & 0x8000000000000000) == 0)
  {
    v20 = 0;
    v21 = v45;
    v22 = v18;
    v39 = v14;
    v40 = v18 & 0xC000000000000001;
    v41 = v17;
    v42 = v18;
    do
    {
      if (v40)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v23 = *(v22 + 8 * v20 + 32);
      }

      v24 = v23;
      v25 = type metadata accessor for Date();
      v26 = *(*(v25 - 8) + 56);
      v27 = 1;
      v26(v7, 1, 1, v25);
      v28 = [v24 creationDate];
      if (v28)
      {
        v29 = v28;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v27 = 0;
      }

      v26(v3, v27, 1, v25);
      sub_10023A078(v3, v7);
      v30 = [v24 displayText];
      if (v30)
      {
        v31 = v30;
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;
      }

      else
      {

        v32 = 0;
        v34 = 0xE000000000000000;
      }

      v35 = &v7[*(v44 + 20)];
      *v35 = v32;
      v35[1] = v34;
      sub_10024E29C(v7, v9);
      v45 = v21;
      v37 = v21[2];
      v36 = v21[3];
      if (v37 >= v36 >> 1)
      {
        sub_100189644(v36 > 1, v37 + 1, 1);
        v21 = v45;
      }

      ++v20;
      v21[2] = v37 + 1;
      sub_10024E29C(v9, v21 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v37);
      v22 = v42;
    }

    while (v41 != v20);

    v14 = v39;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t sub_10036D0D0(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v5;
}

uint64_t sub_10036D148(uint64_t a1)
{
  v3 = type metadata accessor for ICFolderArchiveModel(0);
  __chkstk_darwin(v3);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *v1;
  [v6 persistPendingChanges];
  v7 = v6;
  sub_10027A180(a1, v10);
  sub_1003F0710(v7, a1, v5);
  if (qword_1006BC8C8 != -1)
  {
    swift_once();
  }

  sub_10036E5F4(&qword_1006C50F8, type metadata accessor for ICFolderArchiveModel);
  v8 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  sub_10036E63C(v5, type metadata accessor for ICFolderArchiveModel);
  return v8;
}

uint64_t sub_10036D2BC(void (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = v1;
  v5 = type metadata accessor for String.Encoding();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for ICNoteArchiveModel();
  __chkstk_darwin(v9);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  [v3 persistPendingChanges];
  v12 = v3;
  sub_10027A180(a1, v21);
  sub_1004C1A70(v12, a1, v11);
  if (*a1)
  {
    if (!*&v11[*(v9 + 100) + 8] || (, static String.Encoding.utf8.getter(), v9 = String.data(using:allowLossyConversion:)(), v14 = v13, , (*(v6 + 8))(v8, v5), v14 >> 60 == 15))
    {
      if (qword_1006BC800 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_10002597C(v15, qword_1006C50D8);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "failed to encode markdown string", v18, 2u);
      }

      v9 = 0;
    }
  }

  else
  {
    if (qword_1006BC8C8 != -1)
    {
      swift_once();
    }

    sub_10036E5F4(&qword_1006C50F0, type metadata accessor for ICNoteArchiveModel);
    v19 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    if (!v2)
    {
      v9 = v19;
    }
  }

  sub_10036E63C(v11, type metadata accessor for ICNoteArchiveModel);
  return v9;
}

uint64_t sub_10036D608()
{
  v1 = [*v0 title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

id sub_10036D6B8()
{
  if ([v0 isTable])
  {
    v1 = [v0 identifier];
    if (v1)
    {
      v2 = v1;
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v4;
    }

    else
    {
      v5 = 0xE500000000000000;
      v3 = 0x656C626154;
    }

    v10._countAndFlagsBits = v3;
    v10._object = v5;
    String.append(_:)(v10);

    v11._countAndFlagsBits = 1987273518;
    v11._object = 0xE400000000000000;
    String.append(_:)(v11);
    return 0;
  }

  else
  {
    result = [v0 media];
    if (result)
    {
      v7 = result;
      v8 = [result filename];

      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      return v9;
    }
  }

  return result;
}

uint64_t sub_10036D7D8()
{
  v1 = v0;
  v2 = sub_10015DA04(&qword_1006BCC20);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v14 - v6;
  if ([v1 isTable])
  {
    return 7762787;
  }

  result = [v1 media];
  if (result)
  {
    v9 = result;
    v10 = [result mediaURL];

    if (v10)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v11 = type metadata accessor for URL();
      (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
    }

    else
    {
      v11 = type metadata accessor for URL();
      (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
    }

    sub_10000CA08(v5, v7);
    type metadata accessor for URL();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v7, 1, v11) == 1)
    {
      sub_10036E2B0(v7);
      return 0;
    }

    else
    {
      v13 = URL.pathExtension.getter();
      (*(v12 + 8))(v7, v11);
      return v13;
    }
  }

  return result;
}

uint64_t sub_10036DA18@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10015DA04(&qword_1006BCC20);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  if ([v2 isPasswordProtected] || (v7 = objc_msgSend(v2, "media")) == 0)
  {
    v11 = type metadata accessor for URL();
    v12 = *(*(v11 - 8) + 56);

    return v12(a1, 1, 1, v11);
  }

  else
  {
    v8 = v7;
    v9 = [v7 mediaURL];

    if (v9)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v10 = type metadata accessor for URL();
      (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
    }

    else
    {
      v14 = type metadata accessor for URL();
      (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    }

    return sub_10000CA08(v6, a1);
  }
}

id sub_10036DBDC()
{
  if (![v0 isTable])
  {
    result = [v0 media];
    if (!result)
    {
      return result;
    }

    v4 = result;
    v5 = [result cryptoStrategy];

    if (!v5)
    {
      return 0;
    }

    v3 = [v5 decryptedData];
    swift_unknownObjectRelease();
    if (!v3)
    {
      return 0;
    }

LABEL_8:
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

    return v6;
  }

  result = [v0 tableModel];
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = [result csvData];

  if (v3)
  {
    goto LABEL_8;
  }

  return 0;
}

void *sub_10036DCE8()
{
  v1 = [v0 attachmentModel];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    sub_10015DA04(&qword_1006BE7D0);
    type metadata accessor for URL();
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100535E30;
    v5 = [v3 paperBundleDatabaseSubdirectoryURL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = [v3 paperBundleAssetsSubdirectoryURL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = sub_1004591FC(v4);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
  }

  else
  {
    v7 = &_swiftEmptySetSingleton;
  }

  return v7;
}

id sub_10036DE88()
{
  if ([v0 attachmentType] != 14 && objc_msgSend(v0, "attachmentType") != 15)
  {
    return 0;
  }

  result = [v0 fallbackPDFData];
  if (result)
  {
    v2 = result;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

    return v3;
  }

  return result;
}

uint64_t sub_10036DF1C(uint64_t a1)
{
  v3 = type metadata accessor for ICAttachmentArchiveModel();
  __chkstk_darwin(v3);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  [v1 persistPendingChanges];
  v6 = [v1 media];
  if (v6)
  {
    v7 = v6;
    [v6 persistPendingChanges];
  }

  v8 = v1;
  sub_10027A180(a1, v11);
  sub_1002755F8(v8, a1, v5);
  if (qword_1006BC8C8 != -1)
  {
    swift_once();
  }

  sub_10036E5F4(&qword_1006C1DE0, type metadata accessor for ICAttachmentArchiveModel);
  v9 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  sub_10036E63C(v5, type metadata accessor for ICAttachmentArchiveModel);
  return v9;
}

uint64_t sub_10036E0C4()
{
  v1 = *v0;
  v2 = [*v0 userTitle];
  if (!v2)
  {
    v2 = [v1 title];
    if (!v2)
    {
      return 0;
    }
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t sub_10036E1DC()
{
  v1 = [*v0 fallbackImageData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10036E2B0(uint64_t a1)
{
  v2 = sub_10015DA04(&qword_1006BCC20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10036E318(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000054A4(0, &qword_1006C26A8);
    sub_100005B0C(&qword_1006C26B0, &qword_1006C26A8);
    Set.Iterator.init(_cocoa:)();
    v2 = v20;
    v3 = v21;
    v5 = v22;
    v4 = v23;
    v6 = v24;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v5 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v4 = 0;
  }

LABEL_8:
  v10 = v4;
  v11 = v6;
  while (1)
  {
    if (v2 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (sub_1000054A4(0, &qword_1006C26A8), swift_dynamicCast(), v14 = v19, v4 = v10, v6 = v11, !v19))
      {
LABEL_24:
        sub_10019E530();
        return;
      }

      goto LABEL_18;
    }

    v12 = v10;
    v13 = v11;
    v4 = v10;
    if (!v11)
    {
      break;
    }

LABEL_14:
    v6 = (v13 - 1) & v13;
    v14 = *(*(v2 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v14)
    {
      goto LABEL_24;
    }

LABEL_18:
    if (![v14 isHashtagAttachment] || (v15 = objc_msgSend(v14, "tokenContentIdentifier")) == 0)
    {

      goto LABEL_8;
    }

    v16 = v15;
    v17 = [objc_opt_self() hashtagWithStandardizedContent:v15 onlyVisible:1 account:a2];

    v10 = v4;
    v11 = v6;
    if (v17)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_8;
    }
  }

  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= ((v5 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v13 = *(v3 + 8 * v4);
    ++v12;
    if (v13)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_10036E5F4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10036E63C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_10036E6C4(uint64_t a1, uint64_t a2, char *a3)
{
  result = [v3 managedObjectContext];
  if (result)
  {
    v8 = result;
    v9 = *a3;
    if ((*a3 & 1) == 0 || (sub_1000054A4(0, &qword_1006C32F0), ObjCClassFromMetadata = swift_getObjCClassFromMetadata(), v11 = String._bridgeToObjectiveC()(), v12 = [ObjCClassFromMetadata cloudObjectWithIdentifier:v11 context:v8], v11, !v12))
    {
      v12 = sub_10036F314(a1, a2, v9 & 1);
    }

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10036E7D8()
{
  v1 = objc_opt_self();
  v2 = [v0 defaultFolder];
  v3 = [v1 newEmptyNoteInFolder:v2];

  return v3;
}

char **sub_10036E850(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = v3;
  result = [v5 managedObjectContext];
  if (result)
  {
    v10 = result;
    v11 = *a3;
    v12 = &selRef_animatePresentationOrDismissalTransition_;
    v13 = [v5 canAddSubfolder];
    if (v11)
    {
      if (v13)
      {
        if ([v5 canAddSubfolder])
        {
          sub_1000054A4(0, &qword_1006BF450);
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v15 = String._bridgeToObjectiveC()();
          v12 = [ObjCClassFromMetadata cloudObjectWithIdentifier:v15 context:v10];

          if (v12)
          {
            if (static NSObject.== infix(_:_:)())
            {
              goto LABEL_28;
            }

            v16 = [v5 objectID];
            v17 = *(a3 + 2);
            if (v17)
            {
              v18 = [v17 objectID];
              v19 = v18;
              if (v16)
              {
                if (v18)
                {
                  sub_1000054A4(0, &qword_1006BFEC0);
                  v20 = static NSObject.== infix(_:_:)();

                  if (v20)
                  {
                    goto LABEL_28;
                  }

LABEL_26:
                  if ([v12 isMovable])
                  {
                    [v12 unmarkForDeletion];
                    [v12 setParent:v5];
                    goto LABEL_29;
                  }

LABEL_28:
                  [v12 unmarkForDeletion];
                  goto LABEL_29;
                }
              }

              else
              {
                v16 = v18;
                if (!v18)
                {
                  goto LABEL_28;
                }
              }
            }

            else if (!v16)
            {
              goto LABEL_28;
            }

            goto LABEL_26;
          }

          v26 = objc_opt_self();
          v27 = String._bridgeToObjectiveC()();
          v12 = [v26 newFolderWithIdentifier:v27 parentFolder:v5];

LABEL_21:
          v28 = String._bridgeToObjectiveC()();
          [v12 updateChangeCountWithReason:v28];

          return v12;
        }

        v21 = v5;
LABEL_18:
        v25 = v21;

        return v25;
      }

      sub_1001CDC44();
      swift_allocError();
      *v22 = 2;
      swift_willThrow();
    }

    else
    {
      if (v13)
      {
        v21 = [objc_opt_self() newFolderInParentFolder:v5];
        goto LABEL_18;
      }

      v23 = [v5 account];
      v24 = sub_10036F314(a1, a2, 0);
      if (!v4)
      {
        v12 = v24;

        goto LABEL_21;
      }

      v10 = v23;
    }

LABEL_29:

    return v12;
  }

  __break(1u);
  return result;
}

id sub_10036EB90(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = v3;
  result = [v4 managedObjectContext];
  if (result)
  {
    v9 = result;
    v10 = *a3;
    v11 = [v4 canMoveAddOrDeleteContents];
    if (v10)
    {
      if (v11)
      {
        sub_1000054A4(0, &qword_1006C1420);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v13 = String._bridgeToObjectiveC()();
        v10 = [ObjCClassFromMetadata cloudObjectWithIdentifier:v13 context:v9];

        if (v10)
        {
          v14 = [v4 objectID];
          v15 = *(a3 + 2);
          if (v15)
          {
            v16 = [v15 objectID];
            v17 = v16;
            if (v14)
            {
              if (v16)
              {
                sub_1000054A4(0, &qword_1006BFEC0);
                v18 = static NSObject.== infix(_:_:)();

                if (v18)
                {
                  goto LABEL_22;
                }

LABEL_19:
                if ([v10 isMovable])
                {
                  [v10 unmarkForDeletion];
                  [v10 setFolder:v4];
                  goto LABEL_21;
                }

LABEL_22:
                [v10 unmarkForDeletion];

                return v10;
              }
            }

            else
            {
              v14 = v16;
              if (!v16)
              {
                goto LABEL_22;
              }
            }
          }

          else if (!v14)
          {
            goto LABEL_22;
          }

          goto LABEL_19;
        }

        v22 = objc_opt_self();
        v23 = String._bridgeToObjectiveC()();
        v10 = [v22 newEmptyNoteWithIdentifier:v23 folder:v4];

LABEL_21:
        v24 = String._bridgeToObjectiveC()();
        [v10 updateChangeCountWithReason:v24];

        return v10;
      }

      sub_1001CDC44();
      swift_allocError();
      *v19 = 2;
      swift_willThrow();
    }

    else
    {
      if (v11)
      {
        v10 = [objc_opt_self() newEmptyNoteInFolder:v4];
        goto LABEL_21;
      }

      v20 = [v4 account];
      v21 = [v20 defaultFolder];

      v10 = sub_10036EB90(a1, a2, a3);
    }

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_10036EEA4(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = [v3 account];
  v8 = sub_10036F1C0(a1, a2, *a3 & 1);

  return v8;
}

uint64_t sub_10036EF40(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = v3;
  v8 = [v4 account];
  if (v8)
  {
    v9 = v8;
    a2 = sub_10036F1C0(a1, a2, *a3 & 1);
  }

  else
  {
    sub_1001CDC44();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();
  }

  return a2;
}

uint64_t sub_10036F048(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = v3;
  v8 = [v4 note];
  if (v8 && (v9 = v8, v10 = [v8 account], v9, v10))
  {
    a2 = sub_10036F1C0(a1, a2, *a3 & 1);
  }

  else
  {
    sub_1001CDC44();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();
  }

  return a2;
}

uint64_t sub_10036F130()
{
  sub_1001CDC44();
  swift_allocError();
  *v0 = 1;
  return swift_willThrow();
}

uint64_t sub_10036F1C0(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();
  v6 = [objc_opt_self() hashtagWithDisplayText:v5 account:v3 createIfNecessary:1];

  if (v6)
  {
    if (a3)
    {
      v7 = String._bridgeToObjectiveC()();
      [v6 setDisplayText:v7];

      [v6 unmarkForDeletion];
      v8 = String._bridgeToObjectiveC()();
      [v6 updateChangeCountWithReason:v8];
    }

    return v6;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_10036F314(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  result = [v3 managedObjectContext];
  if (result)
  {
    v7 = result;
    if (a3)
    {
      sub_1000054A4(0, &qword_1006BF450);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v9 = String._bridgeToObjectiveC()();
      v10 = [ObjCClassFromMetadata cloudObjectWithIdentifier:v9 context:v7];

      if (v10)
      {
        if ([v10 isMovable])
        {
          [v10 setParent:0];
        }

        else
        {
          [v10 unmarkForDeletion];
        }

        goto LABEL_9;
      }

      v11 = objc_opt_self();
      v12 = String._bridgeToObjectiveC()();
      v10 = [v11 newFolderWithIdentifier:v12 account:v4];
    }

    else
    {
      v10 = [objc_opt_self() newFolderInAccount:v4];
    }

    v13 = String._bridgeToObjectiveC()();
    [v10 updateChangeCountWithReason:v13];

    v7 = v13;
LABEL_9:

    return v10;
  }

  __break(1u);
  return result;
}

id sub_10036F4CC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v3 managedObjectContext];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = result;
  result = [v3 note];
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v12 = result;
  if (a3)
  {
    sub_1000054A4(0, &qword_1006C26A8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = String._bridgeToObjectiveC()();
    v15 = [ObjCClassFromMetadata cloudObjectWithIdentifier:v14 context:v11];

    if (v15)
    {
      v16 = v15;
      [v16 setNote:v12];
      [v16 setParentAttachment:v4];

      [v16 unmarkForDeletion];
    }

    else
    {
      v18 = String._bridgeToObjectiveC()();
      v16 = [v3 addInlineAttachmentWithIdentifier:v18];
    }
  }

  else
  {
    UUID.init()();
    UUID.uuidString.getter();
    (*(v7 + 8))(v9, v6);
    v17 = String._bridgeToObjectiveC()();

    v16 = [v3 addInlineAttachmentWithIdentifier:v17];
  }

  v19 = String._bridgeToObjectiveC()();
  [v16 updateChangeCountWithReason:v19];

  return v16;
}

id sub_10036F770(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v3 managedObjectContext];
  if (result)
  {
    v11 = result;
    if (a3)
    {
      sub_1000054A4(0, &qword_1006C26A8);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v13 = String._bridgeToObjectiveC()();
      v14 = [ObjCClassFromMetadata cloudObjectWithIdentifier:v13 context:v11];

      if (v14)
      {
        v15 = v14;
        [v15 setNote:v4];
        [v15 setParentAttachment:0];

        [v15 unmarkForDeletion];
        v16 = String._bridgeToObjectiveC()();
        [v15 updateChangeCountWithReason:v16];

        return v15;
      }

      v17 = String._bridgeToObjectiveC()();
      v18 = [v4 addInlineAttachmentWithIdentifier:v17];
    }

    else
    {
      UUID.init()();
      UUID.uuidString.getter();
      (*(v7 + 8))(v9, v6);
      v17 = String._bridgeToObjectiveC()();

      v18 = [v4 addInlineAttachmentWithIdentifier:v17];
    }

    v19 = v18;

    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10036F9E8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v3 managedObjectContext];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = result;
  result = [v3 note];
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v12 = result;
  if (a3)
  {
    sub_1000054A4(0, &unk_1006C2C90);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = String._bridgeToObjectiveC()();
    v15 = [ObjCClassFromMetadata cloudObjectWithIdentifier:v14 context:v11];

    if (v15)
    {
      v16 = v15;
      [v16 setNote:v12];
      [v16 setParentAttachment:v4];

      [v16 unmarkForDeletion];
    }

    else
    {
      v19 = objc_opt_self();
      v20 = String._bridgeToObjectiveC()();
      v16 = [v19 newAttachmentWithIdentifier:v20 note:v12];

      [v16 setParentAttachment:v4];
    }
  }

  else
  {
    v17 = objc_opt_self();
    UUID.init()();
    UUID.uuidString.getter();
    (*(v7 + 8))(v9, v6);
    v18 = String._bridgeToObjectiveC()();

    v16 = [v17 newAttachmentWithIdentifier:v18 note:v12];

    [v16 setParentAttachment:v4];
  }

  v21 = String._bridgeToObjectiveC()();
  [v16 updateChangeCountWithReason:v21];

  return v16;
}

id sub_10036FCDC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v3 managedObjectContext];
  if (result)
  {
    v11 = result;
    if (a3)
    {
      sub_1000054A4(0, &unk_1006C2C90);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v13 = String._bridgeToObjectiveC()();
      v14 = [ObjCClassFromMetadata cloudObjectWithIdentifier:v13 context:v11];

      if (!v14)
      {
        v19 = objc_opt_self();
        v20 = String._bridgeToObjectiveC()();
        v21 = [v19 newAttachmentWithIdentifier:v20 note:v4];

        return v21;
      }

      v15 = v14;
      [v15 setNote:v4];
      [v15 setParentAttachment:0];

      [v15 unmarkForDeletion];
      v16 = String._bridgeToObjectiveC()();
      [v15 updateChangeCountWithReason:v16];
    }

    else
    {
      v17 = objc_opt_self();
      UUID.init()();
      UUID.uuidString.getter();
      (*(v7 + 8))(v9, v6);
      v18 = String._bridgeToObjectiveC()();

      v15 = [v17 newAttachmentWithIdentifier:v18 note:v3];
    }

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t PinNotesIntent.operation.setter(uint64_t a1)
{
  v2 = type metadata accessor for FavoriteOperation();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  IntentParameter.wrappedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_1003703F4()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_100025918(v6, static PinNotesIntent.title);
  sub_10002597C(v6, static PinNotesIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t PinNotesIntent.title.unsafeMutableAddressor()
{
  if (qword_1006BC808 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return sub_10002597C(v0, static PinNotesIntent.title);
}

uint64_t static PinNotesIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC808 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10002597C(v2, static PinNotesIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static PinNotesIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for LocalizedStringResource();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v6 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v12 + 56))(v4, 1, 1, v11);
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v13 = type metadata accessor for IntentDescription();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t static PinNotesIntent.parameterSummary.getter()
{
  v0 = sub_10015DA04(&qword_1006C5130);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&qword_1006C5138);
  __chkstk_darwin(v1);
  sub_10021B4D0();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C5140);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0x2065687420;
  v3._object = 0xE500000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C5148);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v4._countAndFlagsBits = 0x7365746F6E20;
  v4._object = 0xE600000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t (*PinNotesIntent.operation.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t (*PinNotesIntent.entities.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t (*PinNotesIntent.loggingConfiguration.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = AppDependency.wrappedValue.modify();
  return sub_10017D9DC;
}

uint64_t PinNotesIntent.perform()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[31] = a4;
  v5[32] = a5;
  v5[29] = a2;
  v5[30] = a3;
  v5[28] = a1;
  v6 = type metadata accessor for NoteEntity(0);
  v5[33] = v6;
  v7 = *(v6 - 8);
  v5[34] = v7;
  v5[35] = *(v7 + 64);
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v5[39] = v8;
  v5[40] = *(v8 - 8);
  v5[41] = swift_task_alloc();
  v9 = type metadata accessor for FavoriteOperation();
  v5[42] = v9;
  v5[43] = *(v9 - 8);
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();

  return _swift_task_switch(sub_100370ED0, 0, 0);
}

uint64_t sub_100370ED0()
{
  v82 = v0;
  AppDependency.wrappedValue.getter();
  v1 = *(v0 + 152);
  v2 = [v1 modernManagedObjectContext];
  *(v0 + 368) = v2;

  v3 = swift_allocObject();
  *(v0 + 376) = v3;
  v4 = _swiftEmptyArrayStorage;
  *(v3 + 16) = _swiftEmptyArrayStorage;
  IntentParameter.wrappedValue.getter();
  v5 = *(*(v0 + 160) + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 16) = _swiftEmptyArrayStorage;
  if (!isUniquelyReferenced_nonNull_native || v5 > _swiftEmptyArrayStorage[3] >> 1)
  {
    if (_swiftEmptyArrayStorage[2] <= v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage[2];
    }

    v4 = sub_1001CBAAC(isUniquelyReferenced_nonNull_native, v7, 0, _swiftEmptyArrayStorage);
  }

  v8 = *(v0 + 360);
  v10 = *(v0 + 336);
  v9 = *(v0 + 344);
  *(v3 + 16) = v4;
  IntentParameter.wrappedValue.getter();
  v11 = (*(v9 + 88))(v8, v10);
  *(v0 + 504) = v11;
  v12 = enum case for FavoriteOperation.add(_:);
  *(v0 + 508) = enum case for FavoriteOperation.add(_:);
  v79 = v2;
  if (v11 == v12 || v11 == enum case for FavoriteOperation.remove(_:))
  {
    v24 = v11;
    v26 = *(v0 + 264);
    v25 = *(v0 + 272);
    v27 = IntentParameter.wrappedValue.getter();
    v31 = 0;
    v32 = *(v0 + 184);
    v33 = *(v32 + 16);
    do
    {
      if (v33 == v31)
      {

        goto LABEL_18;
      }

      if (v31 >= *(v32 + 16))
      {
        __break(1u);
        goto LABEL_36;
      }

      v34 = *(v0 + 304);
      sub_1001AD0E0(v32 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v31++, v34);
      v35 = *(v34 + *(v26 + 24));
      v27 = sub_1001AD144(v34);
    }

    while ((v35 & 1) != 0);

    if (v24 == v12)
    {
      sub_100197CCC();
      swift_allocError();
      *v36 = 17;
      swift_willThrow();

      goto LABEL_25;
    }

LABEL_18:
    IntentParameter.wrappedValue.getter();
    v27 = *(v0 + 192);
    *(v0 + 384) = v27;
    v37 = v27[2];
    *(v0 + 392) = v37;
    if (v37)
    {
      *(v0 + 400) = 0;
      if (v27[2])
      {
        v77 = *(v0 + 376);
        v39 = *(v0 + 288);
        v38 = *(v0 + 296);
        v40 = *(v0 + 248);
        v75 = *(v0 + 256);
        v42 = *(v0 + 232);
        v41 = *(v0 + 240);
        v43 = *(v0 + 504) == *(v0 + 508);
        v44 = *(*(v0 + 272) + 80);
        sub_1001AD0E0(v27 + ((v44 + 32) & ~v44), v38);
        AppDependency.wrappedValue.getter();
        *(v0 + 408) = *(v0 + 200);
        sub_1001AD0E0(v38, v39);
        v45 = swift_allocObject();
        *(v0 + 416) = v45;
        *(v45 + 16) = v43;
        *(v45 + 24) = v77;
        *(v45 + 32) = v42;
        *(v45 + 40) = v41;
        *(v45 + 48) = v40;
        *(v45 + 56) = v75;
        sub_1002D92B8(v39, v45 + ((v44 + 64) & ~v44));

        v46 = swift_task_alloc();
        *(v0 + 424) = v46;
        *v46 = v0;
        v46[1] = sub_100371838;

        return (sub_1001A9A64)();
      }

LABEL_36:
      __break(1u);
    }

    else
    {
      v66 = *(v0 + 376);

      swift_beginAccess();
      v67 = *(v66 + 16);
      if (!*(v67 + 16))
      {
        *(v0 + 464) = v67;

        AppDependency.wrappedValue.getter();
        v71 = *(v0 + 208);
        *(v0 + 472) = v71;
        v72 = swift_task_alloc();
        *(v0 + 480) = v72;
        *v72 = v0;
        v72[1] = sub_100371F34;

        return sub_100186464(v67, v71, 1);
      }

      v68 = *(v0 + 368);
      v69 = swift_allocObject();
      *(v0 + 440) = v69;
      *(v69 + 16) = v68;
      v70 = v68;
      v27 = swift_task_alloc();
      *(v0 + 448) = v27;
      *v27 = v0;
      v27[1] = sub_100371D40;
      v28 = sub_10037337C;
      v30 = &type metadata for () + 8;
      v29 = v69;
    }

    return NSManagedObjectContext.perform<A>(_:)(v27, v28, v29, v30);
  }

  AppDependency.wrappedValue.getter();
  Logger.init(subsystem:category:)();

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v16 = *(v0 + 344);
    v15 = *(v0 + 352);
    v76 = *(v0 + 328);
    v17 = *(v0 + 320);
    v73 = *(v0 + 336);
    v74 = *(v0 + 312);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v80 = v19;
    *v18 = 136315138;
    IntentParameter.wrappedValue.getter();
    v20 = FavoriteOperation.rawValue.getter();
    v22 = v21;
    (*(v16 + 8))(v15, v73);
    v23 = sub_100009D88(v20, v22, &v80);

    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v13, v14, "Unknown pin note operation type %s — unable to change pinned status", v18, 0xCu);
    sub_100009F60(v19);

    (*(v17 + 8))(v76, v74);
  }

  else
  {
    v49 = *(v0 + 320);
    v48 = *(v0 + 328);
    v50 = *(v0 + 312);

    (*(v49 + 8))(v48, v50);
  }

  v51 = *(v0 + 352);
  v78 = *(v0 + 360);
  v52 = *(v0 + 336);
  v53 = *(v0 + 344);
  type metadata accessor for ICError(0);
  *(v0 + 176) = 224;
  sub_10015DA04(&qword_1006BFBE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100531E30;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v55;
  v80 = 0;
  v81 = 0xE000000000000000;
  _StringGuts.grow(_:)(67);
  v56._object = 0x800000010056E560;
  v56._countAndFlagsBits = 0xD000000000000020;
  String.append(_:)(v56);
  IntentParameter.wrappedValue.getter();
  v57 = FavoriteOperation.rawValue.getter();
  v59 = v58;
  v60 = *(v53 + 8);
  v60(v51, v52);
  v61._countAndFlagsBits = v57;
  v61._object = v59;
  String.append(_:)(v61);

  v62._countAndFlagsBits = 0xD000000000000021;
  v62._object = 0x800000010056E590;
  String.append(_:)(v62);
  v63 = v80;
  v64 = v81;
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v63;
  *(inited + 56) = v64;
  sub_10018F334(inited);
  swift_setDeallocating();
  sub_1001AD2D0(inited + 32);
  sub_10037354C(&qword_1006BE4D0, type metadata accessor for ICError);
  _BridgedStoredNSError.init(_:userInfo:)();
  swift_willThrow();

  v60(v78, v52);

LABEL_25:

  v65 = *(v0 + 8);

  return v65();
}

uint64_t sub_100371838()
{
  v2 = *v1;
  v2[54] = v0;

  v3 = v2[51];
  sub_1001AD144(v2[37]);
  if (v0)
  {

    v4 = sub_1003721B0;
  }

  else
  {

    v4 = sub_1003719B8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003719B8(void *a1, id (*a2)(), uint64_t a3, char *a4)
{
  v5 = *(v4 + 400) + 1;
  if (v5 == *(v4 + 392))
  {
    v6 = *(v4 + 376);

    swift_beginAccess();
    v7 = *(v6 + 16);
    if (*(v7 + 16))
    {
      v8 = *(v4 + 368);
      v9 = swift_allocObject();
      *(v4 + 440) = v9;
      *(v9 + 16) = v8;
      v10 = v8;
      a1 = swift_task_alloc();
      *(v4 + 448) = a1;
      *a1 = v4;
      a1[1] = sub_100371D40;
      a2 = sub_10037337C;
      a4 = &type metadata for () + 8;
      a3 = v9;

      return NSManagedObjectContext.perform<A>(_:)(a1, a2, a3, a4);
    }

    *(v4 + 464) = v7;

    AppDependency.wrappedValue.getter();
    v23 = *(v4 + 208);
    *(v4 + 472) = v23;
    v24 = swift_task_alloc();
    *(v4 + 480) = v24;
    *v24 = v4;
    v24[1] = sub_100371F34;

    return sub_100186464(v7, v23, 1);
  }

  else
  {
    *(v4 + 400) = v5;
    v11 = *(v4 + 384);
    if (v5 >= *(v11 + 16))
    {
      __break(1u);
      return NSManagedObjectContext.perform<A>(_:)(a1, a2, a3, a4);
    }

    v13 = *(v4 + 288);
    v12 = *(v4 + 296);
    v14 = *(v4 + 272);
    v15 = *(v4 + 248);
    v25 = *(v4 + 256);
    v26 = *(v4 + 376);
    v17 = *(v4 + 232);
    v16 = *(v4 + 240);
    v18 = *(v4 + 504) == *(v4 + 508);
    v19 = *(v14 + 80);
    sub_1001AD0E0(v11 + ((v19 + 32) & ~v19) + *(v14 + 72) * v5, v12);
    AppDependency.wrappedValue.getter();
    *(v4 + 408) = *(v4 + 200);
    sub_1001AD0E0(v12, v13);
    v20 = swift_allocObject();
    *(v4 + 416) = v20;
    *(v20 + 16) = v18;
    *(v20 + 24) = v26;
    *(v20 + 32) = v17;
    *(v20 + 40) = v16;
    *(v20 + 48) = v15;
    *(v20 + 56) = v25;
    sub_1002D92B8(v13, v20 + ((v19 + 64) & ~v19));

    v21 = swift_task_alloc();
    *(v4 + 424) = v21;
    *v21 = v4;
    v21[1] = sub_100371838;

    return (sub_1001A9A64)();
  }
}

uint64_t sub_100371D40()
{
  *(*v1 + 456) = v0;

  if (v0)
  {
    v2 = sub_100372268;
  }

  else
  {

    v2 = sub_100371E5C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100371E5C()
{
  v1 = *(v0[47] + 16);
  v0[58] = v1;

  AppDependency.wrappedValue.getter();
  v2 = v0[26];
  v0[59] = v2;
  v3 = swift_task_alloc();
  v0[60] = v3;
  *v3 = v0;
  v3[1] = sub_100371F34;

  return sub_100186464(v1, v2, 1);
}

uint64_t sub_100371F34(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 488) = v1;

  if (v1)
  {
    v5 = sub_10037232C;
  }

  else
  {
    *(v4 + 496) = a1;
    v5 = sub_100372094;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100372094()
{
  v1 = v0[46];
  v0[27] = v0[62];
  sub_10015DA04(&unk_1006C14D0);
  sub_100184E54();
  static IntentResult.result<A>(value:)();

  v2 = v0[1];

  return v2();
}

uint64_t sub_1003721B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100372268()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10037232C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1003723E4(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v40 = a7;
  v41 = a8;
  v11 = type metadata accessor for NoteEntity(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Logger();
  v42 = *(v14 - 8);
  v43 = v14;
  __chkstk_darwin(v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for NoteID();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (v21)
  {
    v22 = v21;
    v23 = a1;
    if ([v22 isPinned] == (a2 & 1))
    {
      v28 = a2;
      AppDependency.wrappedValue.getter();
      Logger.init(subsystem:category:)();
      sub_1001AD0E0(v41, v13);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v41 = v23;
        v44 = v32;
        *v31 = 136315394;
        v33 = NoteID.managedIdentifier.getter();
        v35 = v34;
        sub_1001AD144(v13);
        v36 = sub_100009D88(v33, v35, &v44);

        *(v31 + 4) = v36;
        *(v31 + 12) = 2080;
        if (v28)
        {
          v37 = 0x64656E6E6970;
        }

        else
        {
          v37 = 0x64656E6E69706E75;
        }

        if (v28)
        {
          v38 = 0xE600000000000000;
        }

        else
        {
          v38 = 0xE800000000000000;
        }

        v39 = sub_100009D88(v37, v38, &v44);

        *(v31 + 14) = v39;
        _os_log_impl(&_mh_execute_header, v29, v30, "Note %s is already %s", v31, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_1001AD144(v13);
      }

      (*(v42 + 8))(v16, v43);
    }

    else
    {
      [v22 setIsPinned:?];
      sub_10017CC14();
      ICSearchIndexableNote<>.entityIdentifier.getter();
      swift_beginAccess();
      v24 = *(a3 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a3 + 16) = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v24 = sub_1001CBAAC(0, v24[2] + 1, 1, v24);
        *(a3 + 16) = v24;
      }

      v27 = v24[2];
      v26 = v24[3];
      if (v27 >= v26 >> 1)
      {
        v24 = sub_1001CBAAC(v26 > 1, v27 + 1, 1, v24);
      }

      v24[2] = v27 + 1;
      (*(v18 + 32))(v24 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v27, v20, v17);
      *(a3 + 16) = v24;
      swift_endAccess();
    }
  }
}

id sub_10037283C(void *a1)
{
  v3 = 0;
  if ([a1 save:&v3])
  {
    return v3;
  }

  v2 = v3;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

uint64_t sub_1003728E8(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  v6 = v1[3];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000A600;

  return PinNotesIntent.perform()(a1, v4, v5, v7, v6);
}

char *sub_1003729A8@<X0>(char **a1@<X8>)
{
  result = _s11MobileNotes03PinB6IntentVACycfC_0();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

char *_s11MobileNotes03PinB6IntentVACycfC_0()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v1 = *(v0 - 8);
  v58 = v0;
  v59 = v1;
  __chkstk_darwin(v0);
  v57 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10015DA04(&unk_1006BE0D0);
  v4 = __chkstk_darwin(v3 - 8);
  v56 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v55 = &v39 - v6;
  v7 = sub_10015DA04(&qword_1006BCD30);
  __chkstk_darwin(v7 - 8);
  v54 = &v39 - v8;
  v9 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v9 - 8);
  v53 = &v39 - v10;
  v11 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Locale();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v16 - 8);
  v17 = type metadata accessor for LocalizedStringResource();
  v50 = v17;
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v42 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_10015DA04(&qword_1006BCD38);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v20 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v21 = *(v12 + 104);
  v43 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v44 = v11;
  v21(v14, enum case for LocalizedStringResource.BundleDescription.main(_:), v11);
  v45 = v21;
  v46 = v12 + 104;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v21(v14, v20, v11);
  v22 = v53;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v23 = *(v18 + 56);
  v49 = v18 + 56;
  v51 = v23;
  v23(v22, 0, 1, v17);
  v24 = type metadata accessor for FavoriteOperation();
  (*(*(v24 - 8) + 56))(v54, 1, 1, v24);
  v25 = type metadata accessor for IntentDialog();
  v26 = *(v25 - 8);
  v27 = *(v26 + 56);
  v40 = v27;
  v41 = v26 + 56;
  v27(v55, 1, 1, v25);
  v27(v56, 1, 1, v25);
  v47 = enum case for InputConnectionBehavior.default(_:);
  v28 = *(v59 + 104);
  v59 += 104;
  v48 = v28;
  v28(v57);
  sub_10037354C(&qword_1006BCD40, &type metadata accessor for FavoriteOperation);
  dispatch thunk of static CaseIterable.allCases.getter();
  sub_10037354C(&qword_1006BCD48, &type metadata accessor for FavoriteOperation);
  v29 = v53;
  v54 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  v52 = sub_10015DA04(&unk_1006BCAF0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v30 = v43;
  v31 = v44;
  v32 = v45;
  v45(v14, v43, v44);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v32(v14, v30, v31);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v51(v29, 0, 1, v50);
  v60 = 0;
  v33 = v40;
  v40(v55, 1, 1, v25);
  v33(v56, 1, 1, v25);
  v62 = sub_10026EE08();
  v63 = v34;
  v64 = v35;
  v65 = v36;
  v66 = v37;
  v48(v57, v47, v58);
  sub_1001797CC();
  IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:query:)();
  sub_10015DA04(&qword_1006C34B0);
  v60 = 0xD000000000000021;
  v61 = 0x800000010055CFC0;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  sub_10015DA04(&unk_1006BCA40);
  v60 = 0xD000000000000024;
  v61 = 0x800000010055CF90;
  AnyHashable.init<A>(_:)();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  return v54;
}

unint64_t sub_10037339C()
{
  result = qword_1006C5150;
  if (!qword_1006C5150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C5150);
  }

  return result;
}

unint64_t sub_100373440()
{
  result = qword_1006C5158;
  if (!qword_1006C5158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C5158);
  }

  return result;
}