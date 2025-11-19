uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  PLPushPhotoLibraryClient();
  +[PHPhotoLibrary enableMultiLibraryMode];
  v5 = dispatch_get_global_queue(33, 0);
  dispatch_async(v5, &stru_10005C0B8);

  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = UIApplicationMain(a1, a2, v7, v7);

  objc_autoreleasePoolPop(v4);
  return v8;
}

void sub_100002C1C(id a1)
{
  v1 = [PhotosApplication px_photoLibrary]_0();
  v2 = [v1 photoLibrary];

  +[PHQuery photoLibraryWasAccessed];
}

id sub_100003D58(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [NSString stringWithFormat:@"%ld", a1];
  }

  else
  {
    v2 = *(&off_10005C028 + a1);
  }

  return v2;
}

void sub_1000043D8(id a1)
{
  v1 = +[PXPreloadScheduler sharedScheduler];
  [v1 scheduleDeferredTaskWithQoS:2 block:&stru_10005A1A8];
}

void sub_10000442C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 px_photoLibrary];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001A87C;
  v8[3] = &unk_10005A218;
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v8];
}

uint64_t sub_10000452C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_100004F10();
  *a2 = result;
  return result;
}

uint64_t sub_100004580()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1000046D0()
{
  v1 = *&v0[OBJC_IVAR____TtC9PhotosAppP33_DA668D572B4928516595FA7D1A5EA7B429PlacesAlbumThumbnailGenerator_lock];
  v2 = v0;
  v3 = v1;
  sub_10000EF54(v3, v2);
}

uint64_t sub_100004780(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = sub_1000103B0(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_10:

    return sub_10000F6CC(v10, a2, v9);
  }

  v11 = type metadata accessor for LocalizedStringResource();
  v12 = sub_1000103B0(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[5];
LABEL_9:
    v10 = a1 + v14;
    goto LABEL_10;
  }

  v15 = type metadata accessor for DisplayRepresentation.Image();
  v16 = sub_1000103B0(v15);
  if (*(v17 + 84) == a2)
  {
    v9 = v16;
    v14 = a3[6];
    goto LABEL_9;
  }

  v18 = type metadata accessor for URL();
  v19 = sub_1000103B0(v18);
  if (*(v20 + 84) == a2)
  {
    v9 = v19;
    v14 = a3[7];
    goto LABEL_9;
  }

  v22 = *(a1 + a3[8] + 8);
  if (v22 >= 0xFFFFFFFF)
  {
    LODWORD(v22) = -1;
  }

  return (v22 + 1);
}

uint64_t sub_1000048F0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UUID();
  v9 = sub_1000103B0(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for LocalizedStringResource();
    v14 = sub_1000103B0(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = type metadata accessor for DisplayRepresentation.Image();
      v18 = sub_1000103B0(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[6];
      }

      else
      {
        v20 = type metadata accessor for URL();
        result = sub_1000103B0(v20);
        if (*(v22 + 84) != a3)
        {
          *(a1 + a4[8] + 8) = (a2 - 1);
          return result;
        }

        v11 = result;
        v16 = a4[7];
      }
    }

    v12 = a1 + v16;
  }

  return sub_10000627C(v12, a2, a2, v11);
}

uint64_t sub_100004A5C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, char a3@<W2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_100009D2C(a1, a2, a3 & 1, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_100004A8C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100004AF8()
{
  result = qword_100064588;
  if (!qword_100064588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064588);
  }

  return result;
}

uint64_t sub_100004B80()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for LocalizedStringResource();
  sub_100006414(v9, qword_100066678);
  sub_1000063DC(v9, qword_100066678);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_100004D6C()
{
  v0 = sub_100006234(&qword_1000645F0, &qword_100048808);
  sub_1000065D4(v0);
  v2 = *(v1 + 64);
  sub_100006630();
  __chkstk_darwin();
  v3 = *(*(sub_100006234(&qword_1000645F8, &qword_100048810) - 8) + 64);
  sub_100006630();
  __chkstk_darwin();
  sub_100005D84();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x8000000100044980;
  v4._countAndFlagsBits = 0xD000000000000022;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  sub_100006234(&qword_100064600, &qword_100048840);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_100004F34()
{
  sub_1000065C8();
  v0[3] = v1;
  v0[4] = v2;
  v3 = type metadata accessor for CollectionEntity();
  v0[5] = v3;
  sub_1000065D4(v3);
  v5 = *(v4 + 64) + 15;
  v0[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v0[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[8] = v7;
  v0[9] = v6;

  return _swift_task_switch(sub_100004FF4, v7, v6);
}

uint64_t sub_100004FF4()
{
  v2 = v0[5];
  v1 = v0[6];
  v0[2] = v0[4];
  IntentParameter.wrappedValue.getter();
  v3 = (v1 + *(v2 + 32));
  v4 = *v3;
  v5 = v3[1];
  v0[10] = v5;

  sub_1000062E8(v1);
  v6 = async function pointer to AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)[1];
  v7 = swift_task_alloc();
  v0[11] = v7;
  sub_100005D84();
  *v7 = v0;
  v7[1] = sub_100005118;
  v11 = v0[4];
  v8 = v0[3];

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v8, 0, 0, v4, v5, 0, 1, &unk_100048800);
}

uint64_t sub_100005118()
{
  sub_1000065C8();
  v3 = *(*v1 + 88);
  v2 = *v1;
  sub_100006620();
  *v4 = v2;
  v2[12] = v0;

  if (v0)
  {
    v5 = v2[8];
    v6 = v2[9];
    v7 = sub_10000528C;
  }

  else
  {
    v8 = v2[10];

    v5 = v2[8];
    v6 = v2[9];
    v7 = sub_100005228;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100005228()
{
  sub_1000065C8();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  sub_100006614();

  return v3();
}

uint64_t sub_10000528C()
{
  sub_1000065C8();
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];

  sub_100006614();
  v5 = v0[12];

  return v4();
}

uint64_t sub_100005320(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for URL();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for CollectionEntity();
  v2[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[9] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[10] = v9;
  v2[11] = v8;

  return _swift_task_switch(sub_100005444, v9, v8);
}

uint64_t sub_100005444()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  type metadata accessor for PXAppDependencyManager();
  IntentParameter.wrappedValue.getter();
  (*(v4 + 16))(v3, v1 + *(v2 + 28), v6);
  sub_1000062E8(v1);
  v7 = async function pointer to static PXAppDependencyManager.navigateToURLDestination(_:)[1];
  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_100005540;
  v9 = v0[6];

  return static PXAppDependencyManager.navigateToURLDestination(_:)(v9);
}

uint64_t sub_100005540()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *v1;
  *(*v1 + 104) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 88);
  v9 = *(v2 + 80);
  if (v0)
  {
    v10 = sub_100005760;
  }

  else
  {
    v10 = sub_1000056D8;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_1000056D8()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[2];

  static IntentResult.result<>()();

  sub_100006614();

  return v5();
}

uint64_t sub_100005760()
{
  sub_1000065C8();
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];

  sub_100006614();
  v5 = v0[13];

  return v4();
}

uint64_t sub_1000057D0(uint64_t a1)
{
  v2 = type metadata accessor for CollectionEntity();
  v3 = sub_1000065D4(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_1000065B8();
  sub_1000064AC(a1, v7 - v6);
  IntentParameter.wrappedValue.setter();
  return sub_1000062E8(a1);
}

uint64_t sub_100005854()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v1 = sub_10000663C(v0);
  v55 = v2;
  v56 = v1;
  v4 = *(v3 + 64);
  __chkstk_darwin(v1);
  sub_1000065B8();
  v54 = v6 - v5;
  v7 = sub_100006234(&qword_1000645D0, &qword_1000487D0);
  v8 = sub_1000065D4(v7);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v53 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v52 = v49 - v13;
  v14 = sub_100006234(&qword_1000645D8, &qword_1000487D8);
  sub_1000065D4(v14);
  v16 = *(v15 + 64);
  sub_100006630();
  __chkstk_darwin(v17);
  v51 = v49 - v18;
  v19 = sub_100006234(&qword_100064A90, &qword_1000487E0);
  sub_1000065D4(v19);
  v21 = *(v20 + 64);
  sub_100006630();
  __chkstk_darwin(v22);
  v50 = v49 - v23;
  v24 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v25 = sub_10000663C(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  __chkstk_darwin(v25);
  sub_1000065B8();
  v32 = v31 - v30;
  v33 = type metadata accessor for Locale();
  v34 = sub_1000065D4(v33);
  v36 = *(v35 + 64);
  __chkstk_darwin(v34);
  sub_1000065B8();
  v37 = type metadata accessor for String.LocalizationValue();
  v38 = sub_1000065D4(v37);
  v40 = *(v39 + 64);
  __chkstk_darwin(v38);
  sub_1000065B8();
  v41 = type metadata accessor for LocalizedStringResource();
  v42 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41);
  sub_1000065B8();
  v49[1] = sub_100006234(&qword_1000645E0, &qword_1000487E8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v43 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v44 = *(v27 + 104);
  v44(v32, enum case for LocalizedStringResource.BundleDescription.main(_:), v24);
  sub_1000065E0();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v44(v32, v43, v24);
  v45 = v50;
  sub_1000065E0();
  sub_10000627C(v45, 0, 1, v41);
  v46 = type metadata accessor for CollectionEntity();
  sub_10000627C(v51, 1, 1, v46);
  v47 = type metadata accessor for IntentDialog();
  sub_10000627C(v52, 1, 1, v47);
  sub_10000627C(v53, 1, 1, v47);
  (*(v55 + 104))(v54, enum case for InputConnectionBehavior.default(_:), v56);
  sub_1000062A4(&qword_1000645E8);
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

void (*sub_100005CD4(void *a1))(void *a1)
{
  v3 = sub_100006478(0x28uLL);
  *a1 = v3;
  v4 = *v1;
  v3[4] = IntentParameter.wrappedValue.modify();
  return sub_100005D34;
}

void sub_100005D34(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100005D84()
{
  result = qword_100064598;
  if (!qword_100064598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064598);
  }

  return result;
}

unint64_t sub_100005DDC()
{
  result = qword_1000645A0;
  if (!qword_1000645A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000645A0);
  }

  return result;
}

unint64_t sub_100005E34()
{
  result = qword_1000645A8;
  if (!qword_1000645A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000645A8);
  }

  return result;
}

uint64_t sub_100005ECC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100005F30@<X0>(uint64_t a1@<X8>)
{
  if (qword_100064570 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_1000063DC(v2, qword_100066678);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100005FF4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100006094;

  return sub_100004F34();
}

uint64_t sub_100006094()
{
  sub_1000065C8();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_100006620();
  *v3 = v2;

  sub_100006614();

  return v4();
}

uint64_t sub_100006178@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100005854();
  *a1 = result;
  return result;
}

uint64_t sub_1000061A0(uint64_t a1)
{
  v2 = sub_100005D84();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1000061EC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100005ECC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100006234(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000062A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CollectionEntity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000062E8(uint64_t a1)
{
  v2 = type metadata accessor for CollectionEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100006344()
{
  sub_1000065C8();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100006094;

  return sub_100005320(v3, v0);
}

uint64_t sub_1000063DC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100006414(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

void *sub_100006478(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_1000064AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollectionEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006520(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100006540(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_100064608)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100064608);
    }
  }
}

uint64_t sub_1000065E0()
{

  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_100006614()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_100006650@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_100004F10();
  *a2 = result;
  return result;
}

uint64_t sub_10000667C()
{
  v0 = sub_100006234(&qword_100064640, &qword_100048930);
  sub_1000065D4(v0);
  v2 = *(v1 + 64);
  sub_100006630();
  __chkstk_darwin(v3);
  sub_100008598();
  v206 = v4;
  v204 = sub_100006234(&qword_100064648, &qword_100048938);
  v5 = *(*(v204 - 8) + 64);
  sub_100006630();
  __chkstk_darwin(v6);
  sub_100008598();
  v203 = v7;
  v8 = sub_100006234(&qword_100064650, &qword_100048940);
  sub_1000065D4(v8);
  v10 = *(v9 + 64);
  sub_100006630();
  __chkstk_darwin(v11);
  sub_100008598();
  v205 = v12;
  v13 = sub_100006234(&qword_100064658, &qword_100048948);
  sub_1000065D4(v13);
  v15 = *(v14 + 64);
  sub_100006630();
  __chkstk_darwin(v16);
  sub_100008598();
  v207 = v17;
  v202 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v18 = sub_10000663C(v202);
  v201 = v19;
  v21 = *(v20 + 64);
  __chkstk_darwin(v18);
  sub_100008450();
  sub_1000084B8(v22);
  v23 = type metadata accessor for Locale();
  v24 = sub_1000065D4(v23);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  sub_100008450();
  sub_1000084B8(v27);
  v28 = type metadata accessor for String.LocalizationValue();
  v29 = sub_1000065D4(v28);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  sub_100008450();
  sub_1000084B8(v32);
  v33 = type metadata accessor for LocalizedStringResource();
  v34 = sub_1000065D4(v33);
  v36 = *(v35 + 64);
  __chkstk_darwin(v34);
  sub_100008450();
  sub_1000084B8(v37);
  v38 = type metadata accessor for AppShortcutPhraseToken();
  v39 = sub_10000663C(v38);
  v41 = v40;
  v43 = *(v42 + 64);
  __chkstk_darwin(v39);
  v45 = v197 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_100006234(&qword_100064660, &qword_100048950);
  v47 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  sub_100008440();
  __chkstk_darwin(v48);
  sub_100008484();
  sub_100008440();
  __chkstk_darwin(v49);
  sub_100008484();
  sub_100008440();
  __chkstk_darwin(v50);
  sub_100008484();
  sub_100008440();
  __chkstk_darwin(v51);
  sub_100008484();
  sub_100008440();
  __chkstk_darwin(v52);
  sub_100008484();
  sub_100008440();
  __chkstk_darwin(v53);
  sub_100008484();
  sub_100008440();
  __chkstk_darwin(v54);
  sub_100008484();
  sub_100008440();
  __chkstk_darwin(v55);
  sub_100008484();
  sub_100008440();
  __chkstk_darwin(v56);
  sub_100008484();
  sub_100008440();
  __chkstk_darwin(v57);
  sub_100008484();
  sub_100008440();
  __chkstk_darwin(v58);
  sub_100008484();
  sub_100008440();
  __chkstk_darwin(v59);
  sub_100008484();
  sub_100008440();
  __chkstk_darwin(v60);
  sub_100008484();
  sub_100008440();
  __chkstk_darwin(v61);
  sub_100008484();
  sub_100008440();
  __chkstk_darwin(v62);
  sub_100008484();
  sub_100008440();
  v64 = __chkstk_darwin(v63);
  __chkstk_darwin(v64);
  v199 = type metadata accessor for AppShortcut();
  v65 = sub_10000663C(v199);
  v198 = v66;
  v68 = *(v67 + 64);
  __chkstk_darwin(v65);
  sub_100008450();
  v197[18] = v69;
  v225 = sub_100005854();
  sub_100006234(&qword_100064668, &qword_100048958);
  v70 = *(sub_100006234(&qword_100064670, &qword_100048960) - 8);
  KeyPath = *(v70 + 72);
  v71 = (*(v70 + 80) + 32) & ~*(v70 + 80);
  v72 = swift_allocObject();
  v197[17] = v72;
  *(v72 + 16) = xmmword_100048890;
  v214 = v72 + v71;
  v212 = sub_100005D84();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v73 = sub_1000085BC();
  v74._countAndFlagsBits = sub_1000084D4(v73);
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v74);
  swift_getKeyPath();
  v211 = sub_100006234(&qword_100064600, &qword_100048840);
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  sub_100008464(v75);
  v76 = enum case for AppShortcutPhraseToken.applicationName(_:);
  v218 = *(v41 + 104);
  v215 = v41 + 104;
  v77 = v45;
  v218(v45, enum case for AppShortcutPhraseToken.applicationName(_:), v38);
  sub_1000084E4();
  v78 = *(v41 + 8);
  v213 = v41 + 8;
  v78(v77, v38);
  v217 = v78;
  v79._countAndFlagsBits = sub_100008430();
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v79);
  AppShortcutPhrase.init(stringInterpolation:)();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v80 = sub_1000085BC();
  sub_100008568(v80);
  swift_getKeyPath();
  sub_100008490();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  sub_100008464(v81);
  v210 = v76;
  v82 = v38;
  v216 = v38;
  v83 = v38;
  v84 = v218;
  v218(v77, v76, v83);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v78(v77, v82);
  v85._countAndFlagsBits = sub_100008430();
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v85);
  v86 = KeyPath;
  v87 = v214;
  AppShortcutPhrase.init(stringInterpolation:)();
  v197[0] = v87 + 2 * v86;
  sub_1000084C8(v209);
  sub_100008508();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  sub_1000085BC();
  sub_100008534();
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v88);
  swift_getKeyPath();
  sub_100008490();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  sub_100008464(v89);
  v208 = v77;
  v90 = v76;
  v91 = v216;
  v84(v77, v90, v216);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v92 = v217;
  v217(v77, v91);
  v93._countAndFlagsBits = sub_100008430();
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v93);
  sub_100008550(&v208);
  AppShortcutPhrase.init(stringInterpolation:)();
  v94 = KeyPath;
  v197[1] = 3 * KeyPath;
  sub_100008508();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v95 = sub_10000858C();
  sub_100008568(v95);
  swift_getKeyPath();
  sub_100008490();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  sub_100008464(v96);
  v97 = v208;
  v98 = v210;
  v218(v208, v210, v91);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v92(v97, v91);
  v99._countAndFlagsBits = sub_100008430();
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v99);
  v100 = v214;
  AppShortcutPhrase.init(stringInterpolation:)();
  v197[2] = v100 + 4 * v94;
  sub_1000084FC(&v212);
  sub_100008508();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v101 = sub_10000858C();
  v102._countAndFlagsBits = sub_1000084D4(v101);
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v102);
  swift_getKeyPath();
  sub_100008490();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  sub_100008464(v103);
  v104 = v208;
  v105 = v218;
  v218(v208, v98, v91);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v106 = v104;
  v217(v104, v91);
  v107._countAndFlagsBits = sub_100008430();
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v107);
  sub_1000085A4(&v211);
  AppShortcutPhrase.init(stringInterpolation:)();
  v197[3] = 5 * KeyPath;
  sub_1000084FC(&v213);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  sub_10000858C();
  sub_100008534();
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v108);
  swift_getKeyPath();
  sub_100008490();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  sub_100008464(v109);
  v110 = v104;
  v111 = v210;
  v105(v110, v210, v91);
  AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
  v112 = sub_1000085B0();
  v113 = v217;
  (v217)(v112);
  v114._countAndFlagsBits = sub_100008430();
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v114);
  v115 = v214;
  AppShortcutPhrase.init(stringInterpolation:)();
  v197[4] = v115 + 6 * KeyPath;
  sub_1000084C8(&v214);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v116 = sub_10000858C();
  v117._countAndFlagsBits = sub_1000084D4(v116);
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v117);
  v105(v106, v111, v216);
  sub_1000084E4();
  v118 = sub_10000855C();
  v119 = v113(v118);
  sub_1000085C8(v119);
  swift_getKeyPath();
  sub_100008544();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v120._countAndFlagsBits = sub_100008430();
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v120);
  sub_100008550(&v213);
  AppShortcutPhrase.init(stringInterpolation:)();
  v197[5] = 7 * KeyPath;
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v121._countAndFlagsBits = sub_100008514() & 0xFFFFFFFFFFFFLL | 0x6D20000000000000;
  v121._object = (v122 + 20);
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v121);
  swift_getKeyPath();
  sub_100008544();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  sub_10000849C(v123);
  v218(v106, v111, v216);
  sub_1000084E4();
  v124 = sub_1000085B0();
  v125 = v217;
  (v217)(v124);
  v126._countAndFlagsBits = sub_100008430();
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v126);
  v127 = v214;
  AppShortcutPhrase.init(stringInterpolation:)();
  v197[6] = v127 + 8 * KeyPath;
  sub_1000084C8(&v216);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v128._countAndFlagsBits = sub_100008514() & 0xFFFFFFFFFFFFLL | 0x20000000000000;
  v128._object = 0xE700000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v128);
  swift_getKeyPath();
  sub_100008490();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  sub_10000849C(v129);
  v130 = v216;
  v131 = v218;
  v218(v106, v210, v216);
  sub_1000084E4();
  v125(v106, v130);
  v132._countAndFlagsBits = sub_100008430();
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v132);
  sub_100008550(&v215);
  AppShortcutPhrase.init(stringInterpolation:)();
  v197[7] = 9 * KeyPath;
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v133._countAndFlagsBits = sub_100008514() & 0xFFFFFFFFFFFFLL | 0x7420000000000000;
  v133._object = 0xEB00000000206568;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v133);
  swift_getKeyPath();
  sub_100008544();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  sub_10000849C(v134);
  v135 = v210;
  v131(v106, v210, v216);
  sub_1000084E4();
  v136 = sub_1000085B0();
  (v217)(v136);
  v137._countAndFlagsBits = sub_100008430();
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v137);
  v138 = v214;
  AppShortcutPhrase.init(stringInterpolation:)();
  v139 = KeyPath;
  v197[8] = v138 + 10 * KeyPath;
  sub_100008508();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  sub_100008524();
  sub_100008534();
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v140);
  swift_getKeyPath();
  sub_100008490();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  sub_100008464(v141);
  v142 = v216;
  v218(v106, v135, v216);
  sub_1000084E4();
  v143 = sub_10000855C();
  (v217)(v143);
  v144._countAndFlagsBits = sub_100008430();
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v144);
  AppShortcutPhrase.init(stringInterpolation:)();
  v197[9] = v214 + 11 * v139;
  sub_1000084FC(&KeyPath);
  sub_100008508();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v145._countAndFlagsBits = sub_100008524();
  v145._object = 0xE600000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v145);
  swift_getKeyPath();
  sub_100008490();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  sub_100008464(v146);
  v147 = v210;
  v148 = v218;
  v218(v106, v210, v142);
  sub_1000084E4();
  v149 = v217;
  v217(v106, v142);
  v150._countAndFlagsBits = sub_100008430();
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v150);
  sub_1000085A4(&v218);
  AppShortcutPhrase.init(stringInterpolation:)();
  v151 = v214;
  v197[10] = v214 + 12 * KeyPath;
  sub_1000084C8(&v220);
  sub_100008508();
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v152._countAndFlagsBits = sub_100008524() & 0xFFFFFFFFFFFFLL | 0x6874000000000000;
  v152._object = 0xEA00000000002065;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v152);
  swift_getKeyPath();
  sub_100008490();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  sub_100008464(v153);
  v148(v106, v147, v216);
  sub_1000084E4();
  v154 = sub_10000855C();
  v149(v154);
  v155._countAndFlagsBits = sub_100008430();
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v155);
  sub_100008550(&KeyPath);
  AppShortcutPhrase.init(stringInterpolation:)();
  v156 = KeyPath;
  v197[11] = v151 + 13 * KeyPath;
  sub_1000084FC(&v221);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v157._countAndFlagsBits = sub_1000084D4(1684957510);
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v157);
  swift_getKeyPath();
  sub_100008490();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v158._countAndFlagsBits = 0x206874697720;
  v158._object = 0xE600000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v158);
  v159 = v210;
  v160 = v218;
  v218(v106, v210, v216);
  sub_1000084E4();
  v161 = sub_1000085B0();
  (v217)(v161);
  v162._countAndFlagsBits = sub_100008430();
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v162);
  sub_1000085A4(&v220);
  AppShortcutPhrase.init(stringInterpolation:)();
  v197[12] = v214 + 14 * v156;
  sub_1000084C8(&v222);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v163._countAndFlagsBits = sub_100008430();
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v163);
  v164 = v159;
  v165 = v159;
  v166 = v216;
  v160(v106, v164, v216);
  sub_1000084E4();
  v167 = v217;
  v168 = (v217)(v106, v166);
  sub_1000085C8(v168);
  swift_getKeyPath();
  sub_100008490();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  v169._countAndFlagsBits = sub_100008430();
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v169);
  sub_100008550(&v221);
  AppShortcutPhrase.init(stringInterpolation:)();
  v197[13] = 15 * KeyPath;
  sub_1000084C8(&v223);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v170._countAndFlagsBits = sub_100008430();
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v170);
  swift_getKeyPath();
  sub_100008544();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  sub_10000849C(v171);
  v172 = v165;
  v173 = v216;
  v218(v106, v172, v216);
  sub_1000084E4();
  v167(v106, v173);
  v174._countAndFlagsBits = sub_100008430();
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v174);
  v175 = v214;
  AppShortcutPhrase.init(stringInterpolation:)();
  v197[14] = v175 + 16 * KeyPath;
  sub_1000084FC(v224);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v176._countAndFlagsBits = 543516756;
  v176._object = 0xE400000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v176);
  swift_getKeyPath();
  sub_100008490();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  sub_10000849C(v177);
  v178 = v210;
  v179 = v216;
  v218(v106, v210, v216);
  sub_1000084E4();
  v180 = sub_10000855C();
  (v217)(v180);
  v181._countAndFlagsBits = sub_100008430();
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v181);
  sub_1000085A4(&v223);
  AppShortcutPhrase.init(stringInterpolation:)();
  sub_1000084FC(&v225);
  AppShortcutPhrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v182._countAndFlagsBits = 2128205;
  v182._object = 0xE300000000000000;
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v182);
  swift_getKeyPath();
  sub_100008544();
  AppShortcutPhrase.StringInterpolation.appendInterpolation<A, B>(_:)();

  sub_10000849C(v183);
  v218(v106, v178, v179);
  sub_1000084E4();
  v184 = sub_10000855C();
  (v217)(v184);
  v185._countAndFlagsBits = sub_100008430();
  AppShortcutPhrase.StringInterpolation.appendLiteral(_:)(v185);
  AppShortcutPhrase.init(stringInterpolation:)();
  String.LocalizationValue.init(stringLiteral:)();
  sub_1000084C8(&v227);
  static Locale.current.getter();
  (*(v201 + 104))(v200, enum case for LocalizedStringResource.BundleDescription.main(_:), v202);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  KeyPath = swift_getKeyPath();
  v186 = type metadata accessor for CollectionEntity();
  sub_100006234(&qword_1000645E0, &qword_1000487E8);
  v187 = sub_100008320();
  sub_1000084C8(&v228);
  AppShortcutParameterPresentationSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v188._countAndFlagsBits = sub_1000085BC() & 0xFFFF0000FFFFFFFFLL | 0x2000000000;
  v188._object = 0xE500000000000000;
  AppShortcutParameterPresentationSummaryString.StringInterpolation.appendLiteral(_:)(v188);
  swift_getKeyPath();
  AppShortcutParameterPresentationSummaryString.StringInterpolation.appendInterpolation(_:)();

  v189._countAndFlagsBits = 0;
  v189._object = 0xE000000000000000;
  AppShortcutParameterPresentationSummaryString.StringInterpolation.appendLiteral(_:)(v189);
  AppShortcutParameterPresentationSummaryString.init(stringInterpolation:)();
  AppShortcutParameterPresentationSummary.init(_:table:)();
  v190 = sub_100006234(&qword_100064680, &qword_100048990);
  v191 = sub_100005ECC(&qword_100064688, &qword_100048998);
  v192 = sub_100008378();
  v220 = v186;
  v221 = v191;
  v222 = v187;
  v223 = v192;
  swift_getOpaqueTypeConformance2();
  AppShortcutParameterPresentation.init<A>(for:summary:optionsCollections:)();
  sub_1000084C8(&v226);
  AppShortcut.init<A, B, C, D>(intent:phrases:shortTitle:systemImageName:parameterPresentation:)();
  v193 = static AppShortcutsBuilder.buildExpression(_:)();
  (*(v198 + 8))(v190, v199);
  sub_100006234(&qword_100064698, &unk_1000489A0);
  v194 = swift_allocObject();
  *(v194 + 16) = xmmword_1000488A0;
  *(v194 + 32) = v193;
  v195 = static AppShortcutsBuilder.buildBlock(_:)();

  return v195;
}

uint64_t sub_100007EB0()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for Locale();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for LocalizedStringResource();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_100006234(&qword_100064688, &qword_100048998);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v17[-v14];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_1000083DC();
  AppShortcutOptionsCollection.init(_:title:systemImageName:)();
  type metadata accessor for CollectionEntity();
  sub_100008320();
  sub_100008378();
  static AppShortcutOptionsCollectionSpecificationBuilder.buildBlock<A>(_:)();
  return (*(v12 + 8))(v15, v11);
}

id sub_10000820C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosAppShortcutsProviderWrapper();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100008264()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosAppShortcutsProviderWrapper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000082CC()
{
  result = qword_100064638;
  if (!qword_100064638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064638);
  }

  return result;
}

unint64_t sub_100008320()
{
  result = qword_100064678;
  if (!qword_100064678)
  {
    type metadata accessor for CollectionEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064678);
  }

  return result;
}

unint64_t sub_100008378()
{
  result = qword_100064690;
  if (!qword_100064690)
  {
    sub_100005ECC(&qword_100064688, &qword_100048998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064690);
  }

  return result;
}

unint64_t sub_1000083DC()
{
  result = qword_1000646A0;
  if (!qword_1000646A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000646A0);
  }

  return result;
}

uint64_t sub_1000084E4()
{

  return AppShortcutPhrase.StringInterpolation.appendInterpolation(_:)();
}

uint64_t sub_1000085E8(uint64_t a1)
{
  if (qword_100064578 != -1)
  {
    a1 = swift_once();
  }

  v1 = qword_1000646A8;
  __chkstk_darwin(a1);

  os_unfair_lock_lock((v1 + 24));
  sub_100009A30((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 24));
  v2 = v4;

  return v2;
}

Swift::Int sub_1000086F0(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_100008754()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1000086C8(v3, v1);
  return Hasher._finalize()();
}

_UNKNOWN **sub_100008798@<X0>(void *a1@<X8>)
{
  result = sub_1000086BC();
  *a1 = result;
  return result;
}

uint64_t sub_1000087C0()
{
  v0 = [objc_opt_self() weakToStrongObjectsMapTable];
  sub_100006234(&unk_100064810, &unk_100048AD0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  qword_1000646A8 = result;
  return result;
}

id sub_100008830@<X0>(id *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  result = [*a1 objectForKey:a2];
  v7 = result;
  if (!result)
  {
    type metadata accessor for PhotosCollectionEntityCache();
    swift_allocObject();
    v8 = a2;
    v7 = sub_1000088D8(v8);
    result = [v5 setObject:v7 forKey:v8];
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1000088D8(void *a1)
{
  v2 = v1;
  swift_unknownObjectWeakInit();
  *(v2 + 56) = 0;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  v4 = sub_100008A74();
  sub_100006234(&qword_100064800, &qword_100048AC0);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = v4;
  *(v2 + 64) = v5;
  swift_unknownObjectWeakAssign();
  swift_allocObject();
  swift_weakInit();

  PHPhotoLibrary.registerObserver(_:block:)();

  swift_beginAccess();
  sub_100009A54(v7, v2 + 24);
  swift_endAccess();
  return v2;
}

uint64_t sub_100008A0C()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100008C1C();
  }

  return 0;
}

void *sub_100008A74()
{
  v0 = 0;
  v1 = 0;
  while (1)
  {
    v2 = v0;
    v3 = *(&off_100059B88 + v1 + 32);
    sub_100006234(&qword_100064808, &qword_100048AC8);
    v4 = Dictionary.init(dictionaryLiteral:)();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = sub_100009560(v3);
    v8 = _swiftEmptyDictionarySingleton[2];
    v9 = (v7 & 1) == 0;
    v10 = v8 + v9;
    if (__OFADD__(v8, v9))
    {
      break;
    }

    v11 = v6;
    v12 = v7;
    sub_100006234(&qword_1000647E8, &qword_100048EF0);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v10))
    {
      v13 = sub_100009560(v3);
      if ((v12 & 1) != (v14 & 1))
      {
        goto LABEL_14;
      }

      v11 = v13;
    }

    if (v12)
    {
      v15 = _swiftEmptyDictionarySingleton[7];
      v16 = *(v15 + 8 * v11);
      *(v15 + 8 * v11) = v4;
    }

    else
    {
      _swiftEmptyDictionarySingleton[(v11 >> 6) + 8] |= 1 << v11;
      *(_swiftEmptyDictionarySingleton[6] + v11) = v3;
      *(_swiftEmptyDictionarySingleton[7] + 8 * v11) = v4;
      v17 = _swiftEmptyDictionarySingleton[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_13;
      }

      _swiftEmptyDictionarySingleton[2] = v19;
    }

    v0 = 1;
    v1 = &_mh_execute_header.magic + 1;
    if (v2)
    {
      return _swiftEmptyDictionarySingleton;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100008C1C()
{
  v1 = *(v0 + 64);

  os_unfair_lock_lock((v1 + 24));
  sub_100009500((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_100008C80(uint64_t *a1)
{
  v1 = *a1;
  v2 = v1 + 64;
  v3 = 1 << *(v1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;
  v59 = v1;

  v7 = 0;
  v57 = v6;
  v58 = v2;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_5:
  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
LABEL_9:
      while (1)
      {
        v9 = __clz(__rbit64(v5)) | (v7 << 6);
        v65 = *(*(v59 + 48) + v9);
        v10 = *(*(v59 + 56) + 8 * v9);
        v11 = (v5 - 1) & v5;
        v12 = v10 + 64;
        v13 = 1 << *(v10 + 32);
        v14 = v13 < 64 ? ~(-1 << v13) : -1;
        v15 = v14 & *(v10 + 64);
        v60 = v11;
        v61 = (v13 + 63) >> 6;
        swift_bridgeObjectRetain_n();
        v16 = 0;
        v66 = v10;
        if (!v15)
        {
          break;
        }

LABEL_17:
        while (1)
        {
          v18 = __clz(__rbit64(v15)) | (v16 << 6);
          sub_100009700(*(v10 + 48) + 40 * v18, &v73);
          v19 = *(*(v10 + 56) + 8 * v18);
          v20 = v74;
          v67 = v75;
          v69 = v73;
          v21 = v75;
          v22 = v19;
          if (!v21)
          {
            break;
          }

          v23 = v22;
          v73 = v69;
          v74 = v20;
          v75 = v67;
          sub_10000975C();
          v24 = PHChange.changeDetails<A>(for:)();
          if (v24)
          {
            v25 = v24;
            v26 = [v24 fetchResultAfterChanges];

            if (v26)
            {
              v68 = v23;
              sub_100009700(&v73, v72);
              v27 = *a1;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v76 = *a1;
              v29 = v76;
              v30 = sub_100009560(v65);
              v32 = *(v29 + 16);
              v33 = (v31 & 1) == 0;
              v34 = v32 + v33;
              if (__OFADD__(v32, v33))
              {
                goto LABEL_45;
              }

              v35 = v31;
              v70 = v30;
              sub_100006234(&qword_1000647E8, &qword_100048EF0);
              if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v34))
              {
                v36 = sub_100009560(v65);
                if ((v35 & 1) != (v37 & 1))
                {
                  goto LABEL_49;
                }
              }

              else
              {
                v36 = v70;
              }

              if ((v35 & 1) == 0)
              {
                goto LABEL_46;
              }

              v62 = v76;
              v71 = v36;
              v38 = *(*(v76 + 56) + 8 * v36);
              v63 = v26;
              v39 = swift_isUniquelyReferenced_nonNull_native();
              v40 = sub_10000951C(v72);
              v42 = v38[2];
              v43 = (v41 & 1) == 0;
              v44 = v42 + v43;
              if (__OFADD__(v42, v43))
              {
                goto LABEL_47;
              }

              v45 = v40;
              v46 = v41;
              sub_100006234(&qword_1000647F0, &qword_100048AB0);
              if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v39, v44))
              {
                v47 = sub_10000951C(v72);
                v10 = v66;
                v49 = v68;
                if ((v46 & 1) != (v48 & 1))
                {
                  goto LABEL_49;
                }

                v45 = v47;
              }

              else
              {
                v10 = v66;
                v49 = v68;
              }

              if (v46)
              {
                v50 = v38[7];
                v51 = *(v50 + 8 * v45);
                v52 = v63;
                *(v50 + 8 * v45) = v63;

                sub_1000097A0(v72);
              }

              else
              {
                v38[(v45 >> 6) + 8] |= 1 << v45;
                sub_100009700(v72, v38[6] + 40 * v45);
                v52 = v63;
                *(v38[7] + 8 * v45) = v63;
                sub_1000097A0(v72);
                v53 = v38[2];
                v54 = __OFADD__(v53, 1);
                v55 = v53 + 1;
                if (v54)
                {
                  goto LABEL_48;
                }

                v38[2] = v55;
              }

              *(*(v62 + 56) + 8 * v71) = v38;

              sub_1000097A0(&v73);

              *a1 = v62;
            }

            else
            {
              sub_1000097A0(&v73);

              v10 = v66;
            }
          }

          else
          {
            sub_1000097A0(&v73);
          }

          v15 &= v15 - 1;
          if (!v15)
          {
            goto LABEL_13;
          }
        }

LABEL_40:

        v6 = v57;
        v2 = v58;
        v5 = v60;
        if (!v60)
        {
          goto LABEL_5;
        }
      }

LABEL_13:
      while (1)
      {
        v17 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v17 >= v61)
        {
          goto LABEL_40;
        }

        v15 = *(v12 + 8 * v17);
        ++v16;
        if (v15)
        {
          v16 = v17;
          goto LABEL_17;
        }
      }

      __break(1u);
      break;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000090FC@<X0>(uint64_t *a1@<X0>, char a2@<W1>, void *a3@<X2>, void *a4@<X8>)
{
  v7 = a3[3];
  v8 = sub_1000099EC(a3, v7);
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v8);
  (*(v11 + 16))(&v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8]);
  AnyHashable.init<A>(_:)();
  result = sub_100009C90(a2 & 1, *a1);
  if (result)
  {
    v13 = sub_100009CE4(v15, result);

    *a4 = v13;
    return sub_1000097A0(v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100009234()
{
  swift_unknownObjectWeakDestroy();
  sub_100009984(v0 + 24);
  v1 = *(v0 + 64);

  return v0;
}

uint64_t sub_100009264()
{
  sub_100009234();

  return _swift_deallocClassInstance(v0, 72, 7);
}

uint64_t getEnumTagSinglePayload for PhotosCollectionEntityCache.CacheCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PhotosCollectionEntityCache.CacheCategory(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100009444()
{
  result = qword_1000647C8;
  if (!qword_1000647C8)
  {
    sub_100005ECC(&qword_1000647D0, qword_100048A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000647C8);
  }

  return result;
}

unint64_t sub_1000094AC()
{
  result = qword_1000647D8;
  if (!qword_1000647D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000647D8);
  }

  return result;
}

unint64_t sub_10000951C(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10000984C(a1, v4);
}

unint64_t sub_100009560(char a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  v4 = Hasher._finalize()();

  return sub_100009910(a1 & 1, v4);
}

void sub_1000095CC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_10000951C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v9;
  v15 = v10;
  sub_100006234(&qword_1000647F0, &qword_100048AB0);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v13))
  {
    goto LABEL_5;
  }

  v16 = *v4;
  v17 = sub_10000951C(a2);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v14 = v17;
LABEL_5:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v14);
    *(v20 + 8 * v14) = a1;
  }

  else
  {
    sub_100009700(a2, v22);
    sub_1000097F4(v14, v22, a1, v19);
  }
}

unint64_t sub_10000975C()
{
  result = qword_1000647E0;
  if (!qword_1000647E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000647E0);
  }

  return result;
}

unint64_t sub_1000097F4(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 40 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  *(a4[7] + 8 * result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_10000984C(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_100009700(*(v2 + 48) + 40 * i, v7);
    v5 = static AnyHashable.== infix(_:_:)();
    sub_1000097A0(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_100009910(char a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(*(v2 + 48) + result);
      if (a1)
      {
        if (*(*(v2 + 48) + result))
        {
          return result;
        }
      }

      else if ((*(*(v2 + 48) + result) & 1) == 0)
      {
        return result;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_100009984(uint64_t a1)
{
  v2 = sub_100006234(&qword_1000647F8, &qword_100048AB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1000099EC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100009A54(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006234(&qword_1000647F8, &qword_100048AB8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for CollectionEntity()
{
  result = qword_1000649A8;
  if (!qword_1000649A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100009BA0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100009C30()
{
  result = qword_100064840;
  if (!qword_100064840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064840);
  }

  return result;
}

uint64_t sub_100009C90(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_100009560(a1 & 1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
}

void *sub_100009CE4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_10000951C(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

uint64_t sub_100009D2C(uint64_t *a1, void *a2, char a3, void *a4)
{
  v7 = a2[4];
  sub_1000099EC(a2, a2[3]);
  sub_1000103F8();
  v9 = *(v8 + 64);
  __chkstk_darwin(v10);
  sub_1000065B8();
  (*(v13 + 16))(v12 - v11);
  AnyHashable.init<A>(_:)();
  sub_100009700(v35, v33);
  AnyHashable.init<A>(_:)();
  v14 = sub_100009C90(a3 & 1, *a1);
  if (!v14)
  {
    goto LABEL_16;
  }

  v15 = sub_100009CE4(v34, v14);

  sub_1000097A0(v34);
  if (v15)
  {
    sub_1000097A0(v35);
    return v15;
  }

  sub_100009700(v35, v33);
  AnyHashable.init<A>(_:)();
  v16 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33[0] = *a1;
  v18 = v33[0];
  v19 = sub_100009560(a3 & 1);
  v21 = *(v18 + 16);
  v22 = (v20 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v24 = v19;
  v25 = v20;
  sub_100006234(&qword_1000647E8, &qword_100048EF0);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v23))
  {
LABEL_8:
    if (v25)
    {
      v28 = v33[0];
      v29 = *(*(v33[0] + 56) + 8 * v24);
      v15 = a4;
      v30 = swift_isUniquelyReferenced_nonNull_native();
      v36 = v29;
      sub_1000095CC(v15, v34, v30);
      sub_1000097A0(v34);
      if (v36)
      {
        *(*(v28 + 56) + 8 * v24) = v36;
      }

      else
      {
        sub_100006234(&qword_100064A00, &qword_100048EF8);
        sub_10000FDE4();
        _NativeDictionary._delete(at:)();
      }

      sub_1000097A0(v35);
      *a1 = v28;
      v31 = v15;
      return v15;
    }

    goto LABEL_15;
  }

  v26 = sub_100009560(a3 & 1);
  if ((v25 & 1) == (v27 & 1))
  {
    v24 = v26;
    goto LABEL_8;
  }

LABEL_17:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100009FF0@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_100006234(&qword_100064A40, &qword_100048F38);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v23 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v23 - v13;
  __chkstk_darwin(v12);
  v16 = &v23 - v15;
  switch(a1)
  {
    case 1:
      UUID.init(uuidString:)();
      v17 = type metadata accessor for UUID();
      result = sub_10000F6CC(v14, 1, v17);
      if (result == 1)
      {
        goto LABEL_15;
      }

      v19 = *(*(v17 - 8) + 32);
      v20 = a2;
      v21 = v14;
      return v19(v20, v21, v17);
    case 2:
      UUID.init(uuidString:)();
      v22 = type metadata accessor for UUID();
      result = sub_10000F6CC(v8, 1, v22);
      if (result != 1)
      {
        return (*(*(v22 - 8) + 32))(a2, v8, v22);
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      return result;
    case 3:
      UUID.init(uuidString:)();
      v17 = type metadata accessor for UUID();
      result = sub_10000F6CC(v11, 1, v17);
      if (result == 1)
      {
        goto LABEL_13;
      }

      v19 = *(*(v17 - 8) + 32);
      v20 = a2;
      v21 = v11;
      return v19(v20, v21, v17);
    default:
      UUID.init(uuidString:)();
      v17 = type metadata accessor for UUID();
      result = sub_10000F6CC(v16, 1, v17);
      if (result == 1)
      {
        goto LABEL_14;
      }

      v19 = *(*(v17 - 8) + 32);
      v20 = a2;
      v21 = v16;
      return v19(v20, v21, v17);
  }
}

uint64_t sub_10000A2CC()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

id sub_10000A51C()
{
  result = [objc_allocWithZone(type metadata accessor for PlacesAlbumThumbnailGenerator()) init];
  qword_100064820 = result;
  return result;
}

id sub_10000A550(void *a1, char a2)
{
  v3 = [a1 librarySpecificFetchOptions];
  v4 = v3;
  switch(a2)
  {
    case 1:
      v5 = [objc_opt_self() fetchAssetCollectionsWithType:2 subtype:203 options:v3];
      goto LABEL_6;
    case 2:
      [v3 setIncludePlacesSmartAlbum:1];
      v5 = [objc_opt_self() fetchAssetCollectionsWithType:2 subtype:1000000203 options:v4];
      goto LABEL_6;
    case 3:

      return 0;
    default:
      v5 = [objc_opt_self() fetchAssetCollectionsWithType:2 subtype:209 options:v3];
LABEL_6:
      v6 = v5;

      return v6;
  }
}

uint64_t sub_10000A660(void *a1, unsigned __int8 a2)
{
  LODWORD(v80) = a2;
  v4 = sub_100006234(&qword_100064A48, &qword_100048F40);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v76 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v69 - v9;
  __chkstk_darwin(v8);
  v12 = &v69 - v11;
  v13 = sub_100006234(&qword_100064A50, &qword_100048F48);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v69 - v15;
  v17 = sub_100006234(&qword_100064A58, &qword_100048F50);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v69 - v19;
  v21 = type metadata accessor for DateComponents();
  v74 = *(v21 - 8);
  v75 = v21;
  v22 = *(v74 + 64);
  __chkstk_darwin(v21);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Date();
  v79 = *(v25 - 8);
  v26 = v79[8];
  v27 = __chkstk_darwin(v25);
  v73 = &v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v77 = &v69 - v30;
  v31 = __chkstk_darwin(v29);
  v78 = &v69 - v32;
  __chkstk_darwin(v31);
  v34 = &v69 - v33;
  v35 = type metadata accessor for Calendar();
  v36 = *(*(v35 - 8) + 64);
  v37 = __chkstk_darwin(v35);
  v40 = &v69 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v80 <= 2)
  {
    type metadata accessor for PhotosCollectionEntityCache();
    v41 = sub_1000085E8(a1);
    v82[3] = &type metadata for StaticAlbum;
    v82[4] = sub_10000F830();
    LOBYTE(v82[0]) = a2;
    Strong = swift_unknownObjectWeakLoadStrong();
    v43 = a1;
    if (Strong)
    {
      v44 = Strong;
      v45 = *(v41 + 64);
      __chkstk_darwin(Strong);

      os_unfair_lock_lock((v45 + 24));
      sub_1000102D8((v45 + 16), &v81);
      os_unfair_lock_unlock((v45 + 24));
      v46 = v81;

      if (v46)
      {

        goto LABEL_13;
      }

      v64 = sub_10000A550(v44, a2);
      if (v64)
      {
        v65 = v64;
        v66 = *(v41 + 64);
        __chkstk_darwin(v64);

        os_unfair_lock_lock((v66 + 24));
        sub_100010300((v66 + 16), &v81);
        os_unfair_lock_unlock((v66 + 24));
        v46 = v81;

        goto LABEL_13;
      }
    }

    v46 = 0;
LABEL_13:
    sub_10000F884(v82);
    v67 = [v46 firstObject];

    if (!v67)
    {
      return 0;
    }

    v68 = [v43 librarySpecificFetchOptions];
    [v68 setFetchLimit:1];
    [v68 setReverseSortOrder:{objc_msgSend(v67, "keyAssetsAtEnd")}];
    v62 = [objc_opt_self() fetchAssetsInAssetCollection:v67 options:v68];

    return v62;
  }

  v71 = v38;
  v80 = v34;
  v47 = v37;
  v70 = [a1 librarySpecificFetchOptions];
  static Calendar.current.getter();
  Date.init()();
  v72 = v47;
  sub_10000627C(v20, 1, 1, v47);
  v48 = type metadata accessor for TimeZone();
  sub_10000627C(v16, 1, 1, v48);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  DateComponents.year.setter();
  Calendar.date(byAdding:to:wrappingComponents:)();
  result = sub_10000F6CC(v12, 1, v25);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_18;
  }

  v50 = v79[4];
  v50(v78, v12, v25);
  DateComponents.year.setter();
  DateComponents.day.setter();
  Calendar.date(byAdding:to:wrappingComponents:)();
  result = sub_10000F6CC(v10, 1, v25);
  v51 = v77;
  if (result == 1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v50(v77, v10, v25);
  DateComponents.day.setter();
  v52 = v76;
  v69 = v40;
  Calendar.date(byAdding:to:wrappingComponents:)();
  result = sub_10000F6CC(v52, 1, v25);
  if (result != 1)
  {
    v53 = v51;
    v54 = v73;
    v50(v73, v52, v25);
    sub_10000FFCC(0, &qword_100064A60, NSPredicate_ptr);
    sub_100006234(&qword_100064A68, &qword_100048F58);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_100048AE0;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v57 = sub_10000FFCC(0, &qword_100064A70, NSDate_ptr);
    *(v55 + 56) = v57;
    v58 = sub_10001000C();
    *(v55 + 64) = v58;
    *(v55 + 32) = isa;
    v59.super.isa = Date._bridgeToObjectiveC()().super.isa;
    *(v55 + 96) = v57;
    *(v55 + 104) = v58;
    *(v55 + 72) = v59;
    v60 = NSPredicate.init(format:_:)();
    v61 = v70;
    [v70 setPredicate:v60];

    [v61 setFetchLimit:1];
    v62 = [objc_opt_self() fetchAssetsWithOptions:v61];

    v63 = v79[1];
    v63(v54, v25);
    v63(v53, v25);
    v63(v78, v25);
    (*(v74 + 8))(v24, v75);
    v63(v80, v25);
    (*(v71 + 8))(v69, v72);
    return v62;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_10000AFB8(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 248) = a3;
  *(v3 + 176) = a1;
  *(v3 + 184) = a2;
  v4 = *(*(sub_100006234(&qword_100064A20, &qword_100048F10) - 8) + 64) + 15;
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();

  return _swift_task_switch(sub_10000B070, 0, 0);
}

void sub_10000B070()
{
  v76 = v0;
  v2 = v0 + 16;
  v3 = v0 + 56;
  v4 = v0 + 96;
  v5 = v0 + 136;
  v6 = *(v0 + 248);
  v7 = *(v0 + 184);
  type metadata accessor for PhotosCollectionEntityCache();
  v8 = sub_1000085E8(v7);
  switch(v6)
  {
    case 1:
      *(v0 + 120) = &type metadata for StaticAlbum;
      *(v0 + 128) = sub_10000F830();
      *(v0 + 96) = 1;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_48;
      }

      v28 = Strong;
      v29 = *(v8 + 64);
      v30 = swift_task_alloc();
      *(v30 + 16) = 0;
      *(v30 + 24) = v4;

      os_unfair_lock_lock((v29 + 24));
      sub_1000102D8((v29 + 16), v75);
      os_unfair_lock_unlock((v29 + 24));
      v13 = v75[0];

      if (v13)
      {
      }

      else
      {
        v44 = sub_10000A660(v28, 1u);
        if (v44)
        {
          v45 = v44;
          v46 = sub_1000104CC();
          *(v46 + 16) = v4;
          *(v46 + 24) = 0;
          *(v46 + 32) = v45;

          os_unfair_lock_lock((v1 + 24));
          v47 = sub_1000103E8();
          sub_100010300(v47, v48);
          os_unfair_lock_unlock((v1 + 24));
          v13 = v75[0];
        }

        else
        {

LABEL_48:
          v13 = 0;
        }
      }

      sub_10000F884((v0 + 96));
      v65 = [v13 firstObject];

      if (!v65)
      {
        goto LABEL_52;
      }

      v66 = *(v0 + 200);
      sub_1000103A4();
      PXDisplayRepresentationImage(for:badgeName:)();

      v67 = type metadata accessor for DisplayRepresentation.Image();
      v68 = sub_1000103BC(v67);
      v58 = *(v0 + 200);
      if (v68 != 1)
      {
        goto LABEL_54;
      }

      sub_10000FE60(*(v0 + 200));
LABEL_52:
      v69 = *(v0 + 176);
      goto LABEL_53;
    case 2:
      *(v0 + 40) = &type metadata for StaticAlbum;
      *(v0 + 48) = sub_10000F830();
      *(v0 + 16) = 2;
      v14 = swift_unknownObjectWeakLoadStrong();
      if (!v14)
      {
        goto LABEL_27;
      }

      v15 = v14;
      v16 = *(v8 + 64);
      v17 = swift_task_alloc();
      *(v17 + 16) = 1;
      *(v17 + 24) = v2;

      os_unfair_lock_lock(v16 + 6);
      v18 = sub_100010464();
      sub_1000102D8(v18, v19);
      os_unfair_lock_unlock(v16 + 6);
      if (v6)
      {
        goto LABEL_15;
      }

      v20 = v75[0];

      if (v75[0])
      {
      }

      else
      {
        v31 = sub_10000A550(v15, 2);
        if (v31)
        {
          v32 = v31;
          v33 = sub_1000104CC();
          *(v33 + 16) = v2;
          *(v33 + 24) = 1;
          *(v33 + 32) = v32;

          os_unfair_lock_lock((v1 + 24));
          v34 = sub_1000103E8();
          sub_10000FE3C(v34, v35);
          os_unfair_lock_unlock((v1 + 24));
          v20 = v75[0];
        }

        else
        {

LABEL_27:
          v20 = 0;
        }
      }

      sub_10000F884((v0 + 16));
      v49 = [v20 firstObject];
      *(v0 + 216) = v49;

      if (!v49)
      {
        v53 = *(v0 + 176);
        sub_100010390();
LABEL_53:
        DisplayRepresentation.Image.init(systemName:isTemplate:)();
        goto LABEL_55;
      }

      if (qword_100064580 != -1)
      {
        swift_once();
      }

      v50 = swift_task_alloc();
      *(v0 + 224) = v50;
      *v50 = v0;
      v50[1] = sub_10000B830;
      sub_1000104B0();

      sub_10000BA80(v51);
      return;
    case 3:
      *(v0 + 80) = &type metadata for StaticAlbum;
      *(v0 + 88) = sub_10000F830();
      *(v0 + 56) = 3;
      v21 = swift_unknownObjectWeakLoadStrong();
      if (!v21)
      {
        goto LABEL_36;
      }

      v22 = v21;
      v23 = *(v8 + 64);
      v24 = swift_task_alloc();
      *(v24 + 16) = 0;
      *(v24 + 24) = v3;

      os_unfair_lock_lock(v23 + 6);
      v25 = sub_100010464();
      sub_1000102D8(v25, v26);
      os_unfair_lock_unlock(v23 + 6);
      if (v6)
      {
LABEL_15:
        sub_1000104B0();
        return;
      }

      v13 = v75[0];

      if (v75[0])
      {
      }

      else
      {
        v36 = sub_10000A660(v22, 3u);
        if (v36)
        {
          v37 = v36;
          v38 = sub_1000104CC();
          *(v38 + 16) = v3;
          *(v38 + 24) = 0;
          *(v38 + 32) = v37;

          os_unfair_lock_lock((v1 + 24));
          v39 = sub_1000103E8();
          sub_100010300(v39, v40);
          os_unfair_lock_unlock((v1 + 24));
          v13 = v75[0];
        }

        else
        {

LABEL_36:
          v13 = 0;
        }
      }

      sub_10000F884((v0 + 56));
      v54 = [v13 firstObject];

      if (!v54)
      {
        goto LABEL_40;
      }

      v55 = *(v0 + 192);
      sub_1000103A4();
      PXDisplayRepresentationImage(for:badgeName:)();

      v56 = type metadata accessor for DisplayRepresentation.Image();
      v57 = sub_1000103BC(v56);
      v58 = *(v0 + 192);
      if (v57 != 1)
      {
LABEL_54:
        (*(*(v13 - 1) + 32))(*(v0 + 176), v58, v13);
LABEL_55:
        v71 = *(v0 + 200);
        v70 = *(v0 + 208);
        v72 = *(v0 + 192);

        sub_100006614();
        sub_1000104B0();

        __asm { BRAA            X1, X16 }
      }

      sub_10000FE60(*(v0 + 192));
LABEL_40:
      v59 = *(v0 + 176);
      goto LABEL_53;
    default:
      *(v0 + 160) = &type metadata for StaticAlbum;
      *(v0 + 168) = sub_10000F830();
      *(v0 + 136) = 0;
      v9 = swift_unknownObjectWeakLoadStrong();
      if (!v9)
      {
        goto LABEL_42;
      }

      v10 = v9;
      v11 = *(v8 + 64);
      v12 = swift_task_alloc();
      *(v12 + 16) = 0;
      *(v12 + 24) = v5;

      os_unfair_lock_lock((v11 + 24));
      sub_1000102D8((v11 + 16), v75);
      os_unfair_lock_unlock((v11 + 24));
      v13 = v75[0];

      if (v13)
      {
      }

      else
      {
        v41 = sub_10000A660(v10, 0);
        if (v41)
        {
          v42 = v41;
          v43 = sub_1000104CC();
          *(v43 + 16) = v5;
          *(v43 + 24) = 0;
          *(v43 + 32) = v42;

          os_unfair_lock_lock((v1 + 24));
          sub_100010300((v1 + 16), v75);
          os_unfair_lock_unlock((v1 + 24));
          v13 = v75[0];
        }

        else
        {

LABEL_42:
          v13 = 0;
        }
      }

      sub_10000F884((v0 + 136));
      v60 = [v13 firstObject];

      if (!v60)
      {
        goto LABEL_46;
      }

      v61 = *(v0 + 208);
      sub_1000103A4();
      PXDisplayRepresentationImage(for:badgeName:)();

      v62 = type metadata accessor for DisplayRepresentation.Image();
      v63 = sub_1000103BC(v62);
      v58 = *(v0 + 208);
      if (v63 != 1)
      {
        goto LABEL_54;
      }

      sub_10000FE60(*(v0 + 208));
LABEL_46:
      v64 = *(v0 + 176);
      goto LABEL_53;
  }
}

uint64_t sub_10000B830()
{
  sub_1000065C8();
  sub_100010384();
  sub_100010360();
  *v3 = v2;
  v5 = *(v4 + 224);
  *v3 = *v1;
  *(v2 + 232) = v6;
  *(v2 + 240) = v7;

  if (v0)
  {
  }

  sub_1000103A4();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_10000B93C()
{
  sub_1000065C8();
  if (*(v0 + 240) >> 60 == 15)
  {

    v1 = *(v0 + 176);
    sub_100010390();
    DisplayRepresentation.Image.init(systemName:isTemplate:)();
  }

  else
  {
    v2 = *(v0 + 232);
    v3 = *(v0 + 216);
    v4 = *(v0 + 176);
    DisplayRepresentation.Image.init(data:isTemplate:)();
  }

  v6 = *(v0 + 200);
  v5 = *(v0 + 208);
  v7 = *(v0 + 192);

  sub_100006614();

  return v8();
}

uint64_t sub_10000B9F4()
{
  sub_1000065C8();

  v1 = *(v0 + 176);
  sub_100010390();
  DisplayRepresentation.Image.init(systemName:isTemplate:)();
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 192);

  sub_100006614();

  return v5();
}

uint64_t sub_10000BA80(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return _swift_task_switch(sub_10000BAA0, 0, 0);
}

uint64_t sub_10000BAA0()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC9PhotosAppP33_DA668D572B4928516595FA7D1A5EA7B429PlacesAlbumThumbnailGenerator_lock;
  v0[6] = OBJC_IVAR____TtC9PhotosAppP33_DA668D572B4928516595FA7D1A5EA7B429PlacesAlbumThumbnailGenerator_lock;
  v3 = *&v1[v2];
  v4 = v1;
  v5 = v3;
  [v5 lock];
  v6 = *&v4[OBJC_IVAR____TtC9PhotosAppP33_DA668D572B4928516595FA7D1A5EA7B429PlacesAlbumThumbnailGenerator_cachedThumbnail + 8];
  sub_10000FEC8(*&v4[OBJC_IVAR____TtC9PhotosAppP33_DA668D572B4928516595FA7D1A5EA7B429PlacesAlbumThumbnailGenerator_cachedThumbnail], v6);
  [v5 unlock];

  if (v6 >> 60 == 15)
  {
    v0[7] = [objc_allocWithZone(PXPlacesAlbumCoverProvider) initWithDelegate:v0[5] andPlacesCollection:v0[4]];
    v0[8] = objc_opt_self();
    v0[9] = type metadata accessor for MainActor();
    v0[10] = static MainActor.shared.getter();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10000BC18, v8, v7);
  }

  else
  {
    v9 = sub_100010428();

    return v10(v9);
  }
}

uint64_t sub_10000BC18()
{
  sub_1000065C8();
  v1 = v0[10];
  v2 = v0[8];

  v0[11] = [v2 px_mainScreen];
  v3 = sub_100010324();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10000BC94()
{
  sub_1000065C8();
  v1 = *(v0 + 72);
  *(v0 + 96) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000BD1C, v3, v2);
}

uint64_t sub_10000BD1C()
{
  sub_1000065C8();
  v2 = v0[11];
  v1 = v0[12];

  [v2 scale];
  v0[13] = v3;

  v4 = sub_100010324();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10000BD90()
{
  v1 = *(v0 + 56);
  v2 = [objc_allocWithZone(PXAppIntentsExtendedTraitCollection) initWithUserInterfaceStyle:1 displayScale:*(v0 + 104)];
  *(v0 + 112) = v2;
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  sub_100006234(&qword_100064A28, &qword_100048F20);
  *v5 = v0;
  v5[1] = sub_10000BEC8;
  sub_1000103A4();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)();
}

uint64_t sub_10000BEC8()
{
  sub_1000065C8();
  sub_100010384();
  v3 = v2;
  sub_100010360();
  *v4 = v3;
  v6 = *(v5 + 128);
  v7 = *v1;
  sub_100006620();
  *v8 = v7;
  *(v3 + 136) = v0;

  if (!v0)
  {
    v9 = *(v3 + 120);
  }

  sub_1000103A4();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10000BFCC()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[7];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  v7 = *&v4[v0[6]];
  v8 = v4;
  sub_10000FEC8(v6, v5);
  v9 = v7;
  sub_10000EEB0(v9, v8, v6, v5);

  v10 = sub_100010428();

  return v11(v10);
}

uint64_t sub_10000C088()
{
  sub_1000065C8();
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  sub_100006614();
  v4 = *(v0 + 136);

  return v3();
}

uint64_t sub_10000C0F4@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_100006234(&qword_100064A18, &qword_100048F08);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v23 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v23 - v13;
  __chkstk_darwin(v12);
  v16 = &v23 - v15;
  switch(a1)
  {
    case 1:
      URL.init(string:)();
      v17 = type metadata accessor for URL();
      result = sub_10000F6CC(v14, 1, v17);
      if (result == 1)
      {
        goto LABEL_15;
      }

      v19 = *(*(v17 - 8) + 32);
      v20 = a2;
      v21 = v14;
      return v19(v20, v21, v17);
    case 2:
      URL.init(string:)();
      v22 = type metadata accessor for URL();
      result = sub_10000F6CC(v8, 1, v22);
      if (result != 1)
      {
        return (*(*(v22 - 8) + 32))(a2, v8, v22);
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      return result;
    case 3:
      URL.init(string:)();
      v17 = type metadata accessor for URL();
      result = sub_10000F6CC(v11, 1, v17);
      if (result == 1)
      {
        goto LABEL_13;
      }

      v19 = *(*(v17 - 8) + 32);
      v20 = a2;
      v21 = v11;
      return v19(v20, v21, v17);
    default:
      URL.init(string:)();
      v17 = type metadata accessor for URL();
      result = sub_10000F6CC(v16, 1, v17);
      if (result == 1)
      {
        goto LABEL_14;
      }

      v19 = *(*(v17 - 8) + 32);
      v20 = a2;
      v21 = v16;
      return v19(v20, v21, v17);
  }
}

unint64_t sub_10000C3E0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100059BB0, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10000C438(char a1)
{
  result = 0x73746E65636572;
  switch(a1)
  {
    case 1:
      result = 0x657469726F766166;
      break;
    case 2:
      result = 0x736563616C70;
      break;
    case 3:
      result = 0x4172616559656E6FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10000C4CC(unsigned __int8 a1, char a2)
{
  v2 = 0x73746E65636572;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x73746E65636572;
  switch(v4)
  {
    case 1:
      v5 = 0x657469726F766166;
      v3 = 0xE900000000000073;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x736563616C70;
      break;
    case 3:
      v5 = 0x4172616559656E6FLL;
      v3 = 0xEA00000000006F67;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x657469726F766166;
      v6 = 0xE900000000000073;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x736563616C70;
      break;
    case 3:
      v2 = 0x4172616559656E6FLL;
      v6 = 0xEA00000000006F67;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10000C628()
{
  Hasher.init(_seed:)();
  sub_10000C678();
  return Hasher._finalize()();
}

uint64_t sub_10000C678()
{
  String.hash(into:)();
}

Swift::Int sub_10000C73C()
{
  Hasher.init(_seed:)();
  sub_10000C678();
  return Hasher._finalize()();
}

unint64_t sub_10000C780@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000C3E0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10000C7B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000C438(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_UNKNOWN **sub_10000C7DC@<X0>(void *a1@<X8>)
{
  result = sub_10000C42C();
  *a1 = result;
  return result;
}

uint64_t sub_10000C804()
{
  v0 = sub_100006234(&qword_100064A90, &qword_1000487E0);
  v1 = sub_1000065D4(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v28 - v4;
  v6 = type metadata accessor for LocalizedStringResource.BundleDescription();
  sub_1000103F8();
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v11);
  sub_1000065B8();
  v14 = v13 - v12;
  v15 = type metadata accessor for Locale();
  v16 = sub_1000065D4(v15);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  sub_1000065B8();
  v19 = type metadata accessor for String.LocalizationValue();
  v20 = sub_1000065D4(v19);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  sub_1000065B8();
  v23 = type metadata accessor for LocalizedStringResource();
  v24 = sub_100010418(v23);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  sub_1000065B8();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v8 + 104))(v14, enum case for LocalizedStringResource.BundleDescription.main(_:), v6);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_10000627C(v5, 1, 1, v23);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_10000CA50()
{
  v1 = v0;
  v2 = sub_100006234(&qword_100064A20, &qword_100048F10);
  v3 = sub_1000065D4(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v30 - v6;
  v8 = sub_100006234(&qword_100064A90, &qword_1000487E0);
  v9 = sub_1000065D4(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v30 - v12;
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = sub_100010418(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_1000065B8();
  v18 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v19 = sub_1000065D4(v18);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  sub_1000065B8();
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v22);
  v23 = type metadata accessor for CollectionEntity();
  v24 = *(v23 + 20);
  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:)();
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v25);
  LocalizedStringResource.init(stringInterpolation:)();
  sub_10000627C(v13, 1, 1, v14);
  v26 = *(v23 + 24);
  v27 = type metadata accessor for DisplayRepresentation.Image();
  sub_100010418(v27);
  (*(v28 + 16))(v7, v1 + v26, v27);
  sub_10000627C(v7, 0, 1, v27);
  return DisplayRepresentation.init(title:subtitle:image:)();
}

uint64_t sub_10000CD3C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_10000CDEC(uint64_t a1)
{
  v2 = sub_100009BA0(&qword_1000645E8, type metadata accessor for CollectionEntity);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10000CEB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1000102D0;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_10000CF78(uint64_t a1)
{
  v2 = sub_100009BA0(&qword_100064860, type metadata accessor for CollectionEntity);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10000CFF4()
{
  sub_1000065C8();
  v0[2] = v1;
  v2 = *(type metadata accessor for CollectionEntity() - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();
  v4 = sub_100010324();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10000D0B0()
{
  sub_1000065C8();
  *(v0 + 48) = [PhotosApplication px_photoLibrary]_0();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v2 = sub_100010408(v1);

  return sub_10000D4B4(v2);
}

uint64_t sub_10000D148()
{
  sub_1000065C8();
  sub_100010384();
  sub_100010360();
  *v2 = v1;
  v4 = *(v3 + 56);
  *v2 = *v0;
  *(v1 + 64) = v5;

  v6 = sub_100010324();

  return _swift_task_switch(v6, v7, v8);
}

void sub_10000D234()
{
  v1 = 0;
  v20 = *(v0 + 16);
  v21 = *(v0 + 24);
  v22 = *(v0 + 64);
  v23 = *(v22 + 16);
  while (1)
  {
    v2 = v1;
LABEL_3:
    if (v2 == v23)
    {
      break;
    }

    if (v2 >= *(v22 + 16))
    {
      __break(1u);
      return;
    }

    v3 = *(v21 + 72);
    v24 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v25 = v2 + 1;
    sub_1000064AC(*(v0 + 64) + v24 + v3 * v2, *(v0 + 40));
    v4 = 0;
    v5 = *(v20 + 16);
    do
    {
      v6 = *(v0 + 40);
      if (v5 == v4)
      {
        sub_1000062E8(*(v0 + 40));
        v2 = v25;
        goto LABEL_3;
      }

      v7 = *(v0 + 16);
      type metadata accessor for UUID();
      sub_1000103F8();
      v8 = v4 + 1;
      v11 = v7 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v10 + 72) * v4;
      sub_100009BA0(&qword_100064A80, &type metadata accessor for UUID);
      v4 = v8;
    }

    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
    sub_10000FD60(*(v0 + 40), *(v0 + 32));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10000F9CC(0, _swiftEmptyArrayStorage[2] + 1, 1);
    }

    v1 = v25;
    v14 = _swiftEmptyArrayStorage[2];
    v13 = _swiftEmptyArrayStorage[3];
    if (v14 >= v13 >> 1)
    {
      sub_10000F9CC(v13 > 1, v14 + 1, 1);
    }

    v15 = *(v0 + 32);
    _swiftEmptyArrayStorage[2] = v14 + 1;
    sub_10000FD60(v15, _swiftEmptyArrayStorage + v24 + v14 * v3);
  }

  v16 = *(v0 + 64);
  v17 = *(v0 + 40);
  v18 = *(v0 + 32);

  sub_1000103DC();

  v19(_swiftEmptyArrayStorage);
}

uint64_t sub_10000D4B4(uint64_t a1)
{
  v1[9] = a1;
  v2 = type metadata accessor for URL();
  v1[10] = v2;
  v3 = *(v2 - 8);
  v1[11] = v3;
  v4 = *(v3 + 64) + 15;
  v1[12] = swift_task_alloc();
  v5 = type metadata accessor for DisplayRepresentation.Image();
  v1[13] = v5;
  v6 = *(v5 - 8);
  v1[14] = v6;
  v7 = *(v6 + 64) + 15;
  v1[15] = swift_task_alloc();
  v8 = type metadata accessor for LocalizedStringResource();
  v1[16] = v8;
  v9 = *(v8 - 8);
  v1[17] = v9;
  v10 = *(v9 + 64) + 15;
  v1[18] = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  v1[19] = v11;
  v12 = *(v11 - 8);
  v1[20] = v12;
  v13 = *(v12 + 64) + 15;
  v1[21] = swift_task_alloc();
  v14 = type metadata accessor for CollectionEntity();
  v1[22] = v14;
  v15 = *(v14 - 8);
  v1[23] = v15;
  v16 = *(v15 + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();

  return _swift_task_switch(sub_10000D6F0, 0, 0);
}

void sub_10000D6F0()
{
  v1 = (v0 + 16);
  v2 = type metadata accessor for PhotosCollectionEntityCache();
  v3 = 0;
  v4 = 0;
  for (*(v0 + 208) = v2; ; v16 = *(v0 + 208))
  {
    *(v0 + 216) = v4;
    *(v0 + 224) = &_swiftEmptyArrayStorage;
    v5 = *(v0 + 72);
    v6 = *(&off_100059C30 + v4 + 32);
    *(v0 + 248) = v6;
    v7 = sub_1000085E8(v5);
    *(v0 + 40) = &type metadata for StaticAlbum;
    *(v0 + 48) = sub_10000F830();
    v28 = v6;
    *(v0 + 16) = v6;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_11;
    }

    v9 = Strong;
    v10 = *(v7 + 64);
    v11 = swift_task_alloc();
    *(v11 + 16) = 0;
    *(v11 + 24) = v1;

    os_unfair_lock_lock((v10 + 24));
    sub_10000FDC4((v10 + 16), (v0 + 56));
    if (v3)
    {
      break;
    }

    os_unfair_lock_unlock((v10 + 24));
    v12 = *(v0 + 56);

    if (v12)
    {

LABEL_9:
      v3 = 0;
      goto LABEL_12;
    }

    v3 = sub_10000A660(v9, v28);
    if (v3)
    {
      v13 = *(v7 + 64);
      v14 = swift_task_alloc();
      *(v14 + 16) = v1;
      *(v14 + 24) = 0;
      *(v14 + 32) = v3;

      os_unfair_lock_lock((v13 + 24));
      sub_100010300((v13 + 16), (v0 + 64));
      os_unfair_lock_unlock((v13 + 24));

      v12 = *(v0 + 64);

      goto LABEL_9;
    }

LABEL_11:
    v12 = 0;
LABEL_12:
    *(v0 + 232) = v3;
    sub_10000F884(v1);
    v15 = [v12 firstObject];

    if (v15)
    {
      v17 = *(v0 + 168);
      v18 = *(v0 + 144);

      sub_100009FF0(v28, v17);
      sub_10000A2CC();
      v19 = swift_task_alloc();
      *(v0 + 240) = v19;
      *v19 = v0;
      sub_100010334(v19);
      sub_100010478();

      sub_10000AFB8(v20, v21, v22);
      return;
    }

    v4 = *(v0 + 216) + 1;
    if (*(v0 + 216) == 3)
    {
      sub_100010440();

      sub_1000103DC();
      sub_100010478();

      __asm { BRAA            X2, X16 }
    }

    v3 = *(v0 + 232);
  }

  sub_100010478();

  os_unfair_lock_unlock(v26);
}

uint64_t sub_10000D9FC()
{
  sub_1000065C8();
  sub_100010384();
  v2 = *(v1 + 240);
  v3 = *v0;
  sub_100006620();
  *v4 = v3;

  v5 = sub_100010324();

  return _swift_task_switch(v5, v6, v7);
}

void sub_10000DAE0()
{
  v1 = *(v0 + 248);
  sub_10000C0F4(*(v0 + 248), *(v0 + 96));
  v2 = 0xE700000000000000;
  v3 = 0x73746E65636552;
  v51 = (v0 + 16);
  switch(v1)
  {
    case 1:
      v2 = 0xE900000000000073;
      v3 = 0x657469726F766146;
      break;
    case 2:
      v2 = 0xE600000000000000;
      v3 = 0x736563616C50;
      break;
    case 3:
      v2 = 0xEC0000006F674120;
      v3 = 0x7261655920656E4FLL;
      break;
    default:
      break;
  }

  v47 = v3;
  v48 = v2;
  v4 = *(v0 + 200);
  v49 = *(v0 + 192);
  v50 = *(v0 + 224);
  v5 = *(v0 + 176);
  v6 = *(v0 + 136);
  v7 = *(v0 + 144);
  v9 = *(v0 + 120);
  v8 = *(v0 + 128);
  v10 = *(v0 + 104);
  v11 = *(v0 + 112);
  v12 = *(v0 + 88);
  v45 = *(v0 + 80);
  v46 = *(v0 + 96);
  (*(*(v0 + 160) + 32))(v4, *(v0 + 168), *(v0 + 152));
  (*(v6 + 32))(v4 + v5[5], v7, v8);
  (*(v11 + 32))(v4 + v5[6], v9, v10);
  (*(v12 + 32))(v4 + v5[7], v46, v45);
  v13 = (v4 + v5[8]);
  *v13 = v47;
  v13[1] = v48;
  sub_1000064AC(v4, v49);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v0 + 224);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_10000FC74(0, *(v15 + 2) + 1, 1, *(v0 + 224));
  }

  v17 = *(v15 + 2);
  v16 = *(v15 + 3);
  if (v17 >= v16 >> 1)
  {
    v15 = sub_10000FC74((v16 > 1), v17 + 1, 1, v15);
  }

  v18 = *(v0 + 192);
  v19 = *(v0 + 184);
  sub_1000062E8(*(v0 + 200));
  *(v15 + 2) = v17 + 1;
  sub_10000FD60(v18, &v15[((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v17]);
  while (1)
  {
    v20 = *(v0 + 216) + 1;
    if (*(v0 + 216) == 3)
    {
      sub_100010440();

      sub_1000103DC();
      sub_100010494();

      __asm { BRAA            X2, X16 }
    }

    v21 = *(v0 + 232);
    *(v0 + 216) = v20;
    *(v0 + 224) = v15;
    v22 = *(v0 + 208);
    v23 = *(v0 + 72);
    v24 = *(&off_100059C30 + v20 + 32);
    *(v0 + 248) = v24;
    v25 = sub_1000085E8(v23);
    *(v0 + 40) = &type metadata for StaticAlbum;
    *(v0 + 48) = sub_10000F830();
    *(v0 + 16) = v24;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      break;
    }

    v30 = 0;
LABEL_18:
    *(v0 + 232) = v21;
    sub_10000F884(v51);
    v33 = [v30 firstObject];

    if (v33)
    {
      v34 = *(v0 + 168);
      v35 = *(v0 + 144);

      sub_100009FF0(v24, v34);
      sub_10000A2CC();
      v36 = swift_task_alloc();
      *(v0 + 240) = v36;
      *v36 = v0;
      sub_100010334();
      sub_100010494();

      sub_10000AFB8(v37, v38, v39);
      return;
    }
  }

  v27 = Strong;
  v28 = *(v25 + 64);
  v29 = swift_task_alloc();
  *(v29 + 16) = 0;
  *(v29 + 24) = v51;

  os_unfair_lock_lock((v28 + 24));
  sub_10000FDC4((v28 + 16), (v0 + 56));
  if (!v21)
  {
    os_unfair_lock_unlock((v28 + 24));
    v30 = *(v0 + 56);

    if (v30 || (v30 = sub_10000A660(v27, v24)) == 0)
    {

      v21 = 0;
    }

    else
    {
      v31 = *(v25 + 64);
      v32 = swift_task_alloc();
      *(v32 + 16) = v51;
      *(v32 + 24) = 0;
      *(v32 + 32) = v30;

      os_unfair_lock_lock((v31 + 24));
      sub_100010300((v31 + 16), (v0 + 64));
      os_unfair_lock_unlock((v31 + 24));

      v30 = *(v0 + 64);
    }

    goto LABEL_18;
  }

  sub_100010494();

  os_unfair_lock_unlock(v43);
}

uint64_t sub_10000DFC4()
{
  sub_1000065C8();
  *(v0 + 16) = [PhotosApplication px_photoLibrary]_0();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v2 = sub_100010408(v1);

  return sub_10000D4B4(v2);
}

uint64_t sub_10000E05C()
{
  sub_1000065C8();
  sub_100010384();
  sub_100010360();
  *v2 = v1;
  v4 = *(v3 + 24);
  *v2 = *v0;
  *(v1 + 32) = v5;

  v6 = sub_100010324();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10000E148()
{
  sub_1000065C8();

  sub_1000103DC();
  v2 = *(v0 + 32);

  return v1(v2);
}

uint64_t sub_10000E1A8()
{
  sub_1000065C8();
  v0[8] = v1;
  v0[9] = v2;
  v3 = type metadata accessor for CollectionEntity();
  v0[10] = v3;
  v4 = *(v3 - 8);
  v0[11] = v4;
  v5 = *(v4 + 64) + 15;
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();
  v6 = sub_100010324();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10000E268()
{
  sub_1000065C8();
  *(v0 + 112) = [PhotosApplication px_photoLibrary]_0();
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v2 = sub_100010408(v1);

  return sub_10000D4B4(v2);
}

uint64_t sub_10000E300()
{
  sub_1000065C8();
  sub_100010384();
  sub_100010360();
  *v2 = v1;
  v4 = *(v3 + 120);
  *v2 = *v0;
  *(v1 + 128) = v5;

  v6 = sub_100010324();

  return _swift_task_switch(v6, v7, v8);
}

void sub_10000E3EC()
{
  v1 = 0;
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v22 = v2;
  v23 = *(v0 + 128);
  v24 = *(v23 + 16);
  v21 = &_swiftEmptyArrayStorage;
  while (v24 != v1)
  {
    if (v1 >= *(v23 + 16))
    {
      __break(1u);
      return;
    }

    v5 = *(v0 + 64);
    v4 = *(v0 + 72);
    v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v7 = *(v3 + 72);
    sub_1000064AC(*(v0 + 128) + v6 + v7 * v1, *(v0 + 104));
    *(v0 + 16) = 0;
    *(v0 + 24) = 0xE000000000000000;
    v8 = *(v22 + 20);
    type metadata accessor for LocalizedStringResource();
    _print_unlocked<A, B>(_:_:)();
    v9 = *(v0 + 16);
    v10 = *(v0 + 24);
    v11 = String.lowercased()();

    *(v0 + 32) = v11;
    *(v0 + 48) = String.lowercased()();
    sub_100010074();
    LOBYTE(v10) = StringProtocol.contains<A>(_:)();

    v12 = *(v0 + 104);
    if (v10)
    {
      sub_10000FD60(v12, *(v0 + 96));
      v13 = v21;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10000F9CC(0, v21[2] + 1, 1);
        v13 = v21;
      }

      v15 = v13[2];
      v14 = v13[3];
      if (v15 >= v14 >> 1)
      {
        sub_10000F9CC(v14 > 1, v15 + 1, 1);
        v13 = v21;
      }

      ++v1;
      v16 = *(v0 + 96);
      v13[2] = v15 + 1;
      v21 = v13;
      sub_10000FD60(v16, v13 + v6 + v15 * v7);
    }

    else
    {
      sub_1000062E8(v12);
      ++v1;
    }
  }

  v17 = *(v0 + 128);
  v18 = *(v0 + 104);
  v19 = *(v0 + 96);

  sub_1000103DC();

  v20(v21);
}

uint64_t sub_10000E640(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10000E6E0;

  return sub_10000E1A8();
}

uint64_t sub_10000E6E0(uint64_t a1)
{
  sub_100010384();
  v5 = v4;
  sub_100010360();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v2;
  sub_100006620();
  *v10 = v9;

  if (!v1)
  {
    **(v5 + 16) = a1;
  }

  v11 = *(v9 + 8);

  return v11();
}

unint64_t sub_10000E7E8()
{
  result = qword_100064890;
  if (!qword_100064890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064890);
  }

  return result;
}

uint64_t sub_10000E884()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100010320;

  return sub_10000CFF4();
}

uint64_t sub_10000E918(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000102D4;

  return sub_10000DF9C();
}

uint64_t sub_10000E9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_10000EA68;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_10000EA68()
{
  sub_1000065C8();
  v3 = v2;
  sub_100010384();
  v5 = *(v4 + 16);
  v6 = *v1;
  sub_100006620();
  *v7 = v6;

  sub_1000103DC();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

unint64_t sub_10000EB58()
{
  result = qword_1000648A0;
  if (!qword_1000648A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000648A0);
  }

  return result;
}

unint64_t sub_10000EBB0()
{
  result = qword_1000648A8;
  if (!qword_1000648A8)
  {
    sub_100005ECC(&qword_1000648B0, qword_100048DD0);
    sub_100009BA0(&qword_100064678, type metadata accessor for CollectionEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000648A8);
  }

  return result;
}

uint64_t sub_10000EC64(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100009C30();
  *v6 = v2;
  v6[1] = sub_10000ED18;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_10000ED18()
{
  sub_1000065C8();
  sub_100010384();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_100006620();
  *v4 = v3;

  sub_100006614();

  return v5();
}

uint64_t sub_10000EDF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to DynamicOptionsProvider.defaultResult()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000ED18;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

uint64_t sub_10000EEB0(void *a1, char *a2, uint64_t a3, unint64_t a4)
{
  [a1 lock];
  v8 = &a2[OBJC_IVAR____TtC9PhotosAppP33_DA668D572B4928516595FA7D1A5EA7B429PlacesAlbumThumbnailGenerator_cachedThumbnail];
  v9 = *&a2[OBJC_IVAR____TtC9PhotosAppP33_DA668D572B4928516595FA7D1A5EA7B429PlacesAlbumThumbnailGenerator_cachedThumbnail];
  v10 = *&a2[OBJC_IVAR____TtC9PhotosAppP33_DA668D572B4928516595FA7D1A5EA7B429PlacesAlbumThumbnailGenerator_cachedThumbnail + 8];
  *v8 = a3;
  v8[1] = a4;
  sub_10000FEC8(a3, a4);
  sub_10000F7C4(v9, v10);
  [a1 unlock];

  return sub_10000F7C4(a3, a4);
}

void sub_10000EF54(void *a1, char *a2)
{
  [a1 lock];
  v4 = *&a2[OBJC_IVAR____TtC9PhotosAppP33_DA668D572B4928516595FA7D1A5EA7B429PlacesAlbumThumbnailGenerator_cachedThumbnail];
  v5 = *&a2[OBJC_IVAR____TtC9PhotosAppP33_DA668D572B4928516595FA7D1A5EA7B429PlacesAlbumThumbnailGenerator_cachedThumbnail + 8];
  *&a2[OBJC_IVAR____TtC9PhotosAppP33_DA668D572B4928516595FA7D1A5EA7B429PlacesAlbumThumbnailGenerator_cachedThumbnail] = xmmword_100048AF0;
  sub_10000F7C4(v4, v5);
  [a1 unlock];
}

void sub_10000EFC8(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(NSLock) init];
  sub_100006234(&qword_100064A30, &qword_100048F28);
  v7 = swift_allocBox();
  v9 = v8;
  v10 = sub_100006234(&qword_100064A38, &qword_100048F30);
  (*(*(v10 - 8) + 16))(v9, a1, v10);
  sub_10000627C(v9, 0, 1, v10);
  v11 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:1];
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  *(v12 + 24) = v7;
  v15[4] = sub_10000FF3C;
  v15[5] = v12;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_10000F4B4;
  v15[3] = &unk_100059E20;
  v13 = _Block_copy(v15);
  v14 = v6;

  [a2 requestPlacesAlbumCover:a3 snapshotTraitCollection:v11 completion:v13];
  _Block_release(v13);
}

id sub_10000F1A0(void *a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_100006234(&qword_100064A30, &qword_100048F28);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v29 - v11;
  v13 = sub_100006234(&qword_100064A38, &qword_100048F30);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v29 - v19;
  v21 = swift_projectBox();
  [a5 lock];
  if ((a2 & 1) == 0)
  {
    if (a1)
    {
      swift_beginAccess();
      if (!sub_10000F6CC(v21, 1, v13))
      {
        (*(v14 + 16))(v20, v21, v13);
        v22 = a1;
        v23 = UIImagePNGRepresentation(v22);
        if (v23)
        {
          v24 = v23;
          v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v27 = v26;
        }

        else
        {
          v25 = 0;
          v27 = 0xF000000000000000;
        }

        *&v29 = v25;
        *(&v29 + 1) = v27;
        CheckedContinuation.resume(returning:)();

        (*(v14 + 8))(v20, v13);
      }

      goto LABEL_14;
    }

    if (a4)
    {
      swift_beginAccess();
      if (!sub_10000F6CC(v21, 1, v13))
      {
        (*(v14 + 16))(v18, v21, v13);
        *&v29 = a4;
        swift_errorRetain();
        CheckedContinuation.resume(throwing:)();
LABEL_11:
        (*(v14 + 8))(v18, v13);
      }
    }

    else
    {
      swift_beginAccess();
      if (!sub_10000F6CC(v21, 1, v13))
      {
        (*(v14 + 16))(v18, v21, v13);
        v29 = xmmword_100048AF0;
        CheckedContinuation.resume(returning:)();
        goto LABEL_11;
      }
    }

LABEL_14:
    sub_10000627C(v12, 1, 1, v13);
    swift_beginAccess();
    sub_10000FF5C(v12, v21);
  }

  return [a5 unlock];
}

void sub_10000F4B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);

  v12 = a2;
  v11 = a5;
  v10(a2, a3, a4, a5);
}

id sub_10000F558()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC9PhotosAppP33_DA668D572B4928516595FA7D1A5EA7B429PlacesAlbumThumbnailGenerator_cachedThumbnail] = xmmword_100048AF0;
  v2 = OBJC_IVAR____TtC9PhotosAppP33_DA668D572B4928516595FA7D1A5EA7B429PlacesAlbumThumbnailGenerator_lock;
  *&v0[v2] = [objc_allocWithZone(NSLock) init];
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "init");
}

id sub_10000F5FC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000F708()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for LocalizedStringResource();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for DisplayRepresentation.Image();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for URL();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_10000F7C4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000F7D8(a1, a2);
  }

  return a1;
}

uint64_t sub_10000F7D8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_10000F830()
{
  result = qword_1000649F0;
  if (!qword_1000649F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000649F0);
  }

  return result;
}

uint64_t sub_10000F884(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

char *sub_10000F8D0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100006234(&qword_100064A10, &qword_100048F00);
  v4 = *(type metadata accessor for CollectionEntity() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (&result[-v6] != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * (&result[-v6] / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

size_t sub_10000F9CC(size_t a1, int64_t a2, char a3)
{
  result = sub_10000F9EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10000F9EC(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100006234(&qword_100064A10, &qword_100048F00);
  v10 = *(type metadata accessor for CollectionEntity() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for CollectionEntity() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_10000FBA0(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_10000FBA0(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for CollectionEntity(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = type metadata accessor for CollectionEntity();

    return _swift_arrayInitWithTakeFrontToBack(a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return _swift_arrayInitWithTakeBackToFront(a3, a1, a2, result);
  }

  return result;
}

char *sub_10000FC74(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  v9 = sub_10000F8D0(v8, v7);
  v10 = *(type metadata accessor for CollectionEntity() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_10000FBA0(a4 + v11, v8, &v9[v11]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

uint64_t sub_10000FD60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollectionEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000FDE4()
{
  result = qword_100064A08;
  if (!qword_100064A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064A08);
  }

  return result;
}

uint64_t sub_10000FE60(uint64_t a1)
{
  v2 = sub_100006234(&qword_100064A20, &qword_100048F10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000FEC8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000FEDC(a1, a2);
  }

  return a1;
}

uint64_t sub_10000FEDC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000FF44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000FF5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006234(&qword_100064A30, &qword_100048F28);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000FFCC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_10001000C()
{
  result = qword_100064A78;
  if (!qword_100064A78)
  {
    sub_10000FFCC(255, &qword_100064A70, NSDate_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064A78);
  }

  return result;
}

unint64_t sub_100010074()
{
  result = qword_100064A88;
  if (!qword_100064A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064A88);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StaticAlbum(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for StaticAlbum(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10001027C()
{
  result = qword_100064AA8;
  if (!qword_100064AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100064AA8);
  }

  return result;
}

uint64_t sub_100010334(uint64_t a1)
{
  *(a1 + 8) = sub_10000D9FC;
  result = *(v1 + 120);
  v3 = *(v1 + 72);
  return result;
}

uint64_t sub_1000103BC(uint64_t a1)
{

  return sub_10000F6CC(v1, 1, a1);
}

uint64_t sub_100010440()
{
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[21];
  v5 = v0[18];
  v6 = v0[15];
  v7 = v0[12];
}

uint64_t sub_1000104CC()
{
  v2 = *(v0 + 64);

  return swift_task_alloc();
}

id static PhotosFeedbackControllerFactory.makeFeedbackController()()
{
  v0 = objc_allocWithZone(type metadata accessor for PhotosFeedbackController());

  return [v0 init];
}

id PhotosFeedbackControllerFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PhotosFeedbackControllerFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosFeedbackControllerFactory();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t sub_10001062C()
{
  v1 = v0 + OBJC_IVAR____TtC9PhotosApp24PhotosFeedbackController_delegate;
  sub_10001105C();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_100010678(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC9PhotosApp24PhotosFeedbackController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

char *sub_1000106E4()
{
  *(v0 + OBJC_IVAR____TtC9PhotosApp24PhotosFeedbackController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC9PhotosApp24PhotosFeedbackController_controller) = 0;
  v8 = type metadata accessor for PhotosFeedbackController();
  sub_10001105C();
  v3 = objc_msgSendSuper2(v1, v2, v0, v8);
  type metadata accessor for FBKEvaluationController();
  sub_100011014(&qword_100064B88);
  v4 = v3;
  v5 = FBKEvaluationController.__allocating_init(delegate:)();
  v6 = *&v4[OBJC_IVAR____TtC9PhotosApp24PhotosFeedbackController_controller];
  *&v4[OBJC_IVAR____TtC9PhotosApp24PhotosFeedbackController_controller] = v5;

  return v4;
}

id sub_1000107C0(void *a1)
{
  *&v1[OBJC_IVAR____TtC9PhotosApp24PhotosFeedbackController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC9PhotosApp24PhotosFeedbackController_controller] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for PhotosFeedbackController();
  v3 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);
  if (v3)
  {
    type metadata accessor for FBKEvaluationController();
    sub_100011014(&qword_100064B88);
    v4 = v3;
    v5 = FBKEvaluationController.__allocating_init(delegate:)();

    a1 = *&v4[OBJC_IVAR____TtC9PhotosApp24PhotosFeedbackController_controller];
    *&v4[OBJC_IVAR____TtC9PhotosApp24PhotosFeedbackController_controller] = v5;
  }

  return v3;
}

void sub_1000108B8()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PhotosApp24PhotosFeedbackController_controller);
  if (v1)
  {
    v2 = v1;
    dispatch thunk of FBKEvaluationController.reset()();
  }
}

void sub_100010960()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PhotosApp24PhotosFeedbackController_controller);
  if (v1)
  {
    v2 = v1;
    dispatch thunk of FBKEvaluationController.userDidLike(subject:showFeedbackForm:)();
  }
}

void sub_100010A18(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v3 = *(v2 + OBJC_IVAR____TtC9PhotosApp24PhotosFeedbackController_controller);
  if (v3)
  {
    v6 = v3;
    a2(a1, 1);
  }
}

id sub_100010B14(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void (*sub_100010BA0(void *a1))(uint64_t a1, char a2)
{
  v3 = sub_100006478(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC9PhotosApp24PhotosFeedbackController_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_100010C2C;
}

void sub_100010C2C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_100010CDC()
{
  v1 = sub_100006234(&qword_100064B80, &unk_100049170);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v9 - v3;
  FBKSEvaluation.formResponse.getter();
  v5 = type metadata accessor for FBKSEvaluation.FormResponse();
  sub_10000F6CC(v4, 1, v5);
  sub_100010F44(v4);
  v6 = v0 + OBJC_IVAR____TtC9PhotosApp24PhotosFeedbackController_delegate;
  sub_10001105C();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v6 + 8);
    swift_getObjectType();
    sub_100011038(&qword_100064B78);
    dispatch thunk of PXPhotosFeedbackEvaluationDelegate.evaluationDidComplete(controller:success:)();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100010DFC()
{
  v1 = v0 + OBJC_IVAR____TtC9PhotosApp24PhotosFeedbackController_delegate;
  sub_10001105C();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    swift_getObjectType();
    sub_100011038(&qword_100064B78);
    dispatch thunk of PXPhotosFeedbackEvaluationDelegate.evaluationDidFail(controller:error:)();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100010EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return FBKEvaluationControllerDelegate.evaluationDidComplete(controller:response:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_100010F44(uint64_t a1)
{
  v2 = sub_100006234(&qword_100064B80, &unk_100049170);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100010FAC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PhotosFeedbackController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100011014(unint64_t *a1)
{

  return sub_100010FAC(a1);
}

uint64_t sub_100011038(unint64_t *a1)
{

  return sub_100010FAC(a1);
}

void sub_100011A6C(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) actionPerformerForActionType:a2];
  [v2 performActionWithCompletionHandler:0];
}

void sub_100012BF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100012C1C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = PLSharingGetLog();
  v7 = v6;
  if (a2 == 1)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v14 = 138543362;
      v15 = v8;
      v9 = "Did open iCloud Link with UUID: %{public}@";
      v10 = v7;
      v11 = OS_LOG_TYPE_DEFAULT;
      v12 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v10, v11, v9, &v14, v12);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v13 = *(a1 + 40);
    v14 = 138543874;
    v15 = v13;
    v16 = 2048;
    v17 = a2;
    v18 = 2112;
    v19 = v5;
    v9 = "Failed to open iCloud Link with UUID: %{public}@, result: %li, error: %@";
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 32;
    goto LABEL_6;
  }
}

void sub_100012D40(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _openMomentShareWithURL:*(a1 + 32)];
  }
}

void sub_100012FC0(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = PLUIGetLog();
  v10 = v9;
  if (a2)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Item provider import suceeded.", buf, 2u);
    }

    if (v8)
    {
      v10 = v8[2](v8);
    }

    else
    {
      v10 = 0;
    }

    v11 = [v10 lastObject];
    v12 = [v11 uuid];

    if (v12)
    {
      v13 = [*(a1 + 32) stringByAppendingFormat:@"&revealassetuuid=%@", v12];
      v14 = *(a1 + 40);
      v15 = [NSURL URLWithString:v13];
      [v14 openRoutingURL:v15];
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to import item providers (error: %@)", buf, 0xCu);
  }
}

void sub_1000132AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000132D8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleFetchedMomentShare:v6 forURL:*(a1 + 32) error:v5];
}

void sub_100013578(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = PLSharingGetLog();
  v7 = v6;
  if (a2 == 1)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v14 = 138543362;
      v15 = v8;
      v9 = "Did open shared collection with UUID: %{public}@";
      v10 = v7;
      v11 = OS_LOG_TYPE_DEFAULT;
      v12 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v10, v11, v9, &v14, v12);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v13 = *(a1 + 40);
    v14 = 138543874;
    v15 = v13;
    v16 = 2048;
    v17 = a2;
    v18 = 2112;
    v19 = v5;
    v9 = "Failed to open shared collection with UUID: %{public}@, result: %li, error: %@";
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 32;
    goto LABEL_6;
  }
}

void sub_100013804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100013834(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = PLSharingGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Got shared collection: %@", &v9, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleFetchedSharedCollection:v5 forURL:*(a1 + 32) error:v6];
}

void sub_100013C18(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = PLSharedLibraryGetLog();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v14 = 138412290;
      v15 = v8;
      v9 = "Did open Shared Library invitation with URL: %@";
      v10 = v7;
      v11 = OS_LOG_TYPE_DEFAULT;
      v12 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v10, v11, v9, &v14, v12);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v13 = *(a1 + 32);
    v14 = 138412546;
    v15 = v13;
    v16 = 2112;
    v17 = v5;
    v9 = "Failed to open Shared Library invitation with URL: %@, error: %@";
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 22;
    goto LABEL_6;
  }
}

void sub_100013F14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained finishExtendingStateRestorationForWidgetNavigation];

  if (v2)
  {
    v3 = PLUIGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "finished extending state restoration for widget (timeout)", v4, 2u);
    }
  }
}

void sub_10001433C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100014360(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = PLUIGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) publicDescription];
    v20 = 138413058;
    v21 = v8;
    v22 = 2114;
    v23 = v9;
    v24 = 2048;
    v25 = a2;
    v26 = 2112;
    v27 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "OpenRoutingURL completion handler for %@ (%{public}@): result=%ti error=%@", &v20, 0x2Au);
  }

  if (a2 == 1)
  {
    v10 = [*(a1 + 40) libraryViewMode];
    if (v10)
    {
      v11 = [PhotosApplication px_photoLibrary]_0();
      v12 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:v11];
      if ([v12 hasSharedLibraryOrPreview])
      {
        v13 = [v10 integerValue];
      }

      else
      {
        v13 = 0;
      }

      v16 = [WeakRetained libraryFilterState];
      [v16 setViewMode:v13];
    }

    if ([*(a1 + 40) assetCollectionSubtype] == 1000000201)
    {
      +[PLUserActivityDaemonJob userDidViewSharedLibraryParticipantAssetTrashNotification];
    }
  }

  else
  {
    v10 = PLUIGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      v15 = [*(a1 + 40) publicDescription];
      v20 = 138413058;
      v21 = v14;
      v22 = 2114;
      v23 = v15;
      v24 = 2048;
      v25 = a2;
      v26 = 2112;
      v27 = v5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "failed to programmatically navigate to %@ (%{public}@): result=%ti error=%@", &v20, 0x2Au);
    }
  }

  v17 = [*(a1 + 40) source];
  v18 = [v17 isEqualToString:PXNavigationURLSourceWidget];

  if (v18 && [WeakRetained finishExtendingStateRestorationForWidgetNavigation])
  {
    v19 = PLUIGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "finished extending state restoration for widget", &v20, 2u);
    }
  }
}

void sub_1000146DC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = PLUIGetLog();
  v7 = v6;
  if (a2 == 1)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) publicDescription];
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Retry succeeeded to programmatically navigate to %{public}@", &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v9 = [*(a1 + 32) publicDescription];
    v10 = 138543874;
    v11 = v9;
    v12 = 2048;
    v13 = a2;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Retry failed to programmatically navigate to %{public}@: result=%ti error=%@", &v10, 0x20u);
  }
}

void sub_100014AF4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 != 1)
  {
    v6 = PLUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 32) publicDescription];
      v8 = 138543874;
      v9 = v7;
      v10 = 2048;
      v11 = a2;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "failed to programmatically navigate to %{public}@: result=%ti error=%@", &v8, 0x20u);
    }
  }
}

void sub_100014F48(id a1)
{
  v1 = PLAppIntentsGetLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Perform deferred presentation of PXRetailExperienceManager", v3, 2u);
  }

  v2 = objc_alloc_init(PXRetailExperienceManager);
  [v2 presentRetailExperienceView];
}

void sub_1000161F4(id a1, BOOL a2, NSError *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = PLUIGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "+[PhotosWindowSceneDelegate _showContactsPromptIfNecessary]_block_invoke";
      v7 = 2112;
      v8 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s: Error requesting contacts access: %@", &v5, 0x16u);
    }
  }
}

void sub_100016BCC(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if ((a2 & 1) == 0)
  {
    v8 = v5;
    if ([v5 px_isDomain:PXPhotoKitActionManagerErrorDomain code:-2001])
    {
      v7 = [NSError px_errorWithDomain:PXAppIntentsNSErrorDomain code:-1004 debugDescription:@"Could not copy edits image likely had no adjustments"];;

      v6 = v7;
    }

    else
    {
      v6 = v8;
    }
  }

  v9 = v6;
  (*(*(a1 + 32) + 16))();
}

void sub_10001718C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = *(a1 + 32);
    v8 = v5;
    v7 = [objc_opt_class() _appIntentsErrorForError:v5];

    v5 = v7;
  }

  v9 = v5;
  (*(*(a1 + 40) + 16))();
}

id sub_100017ACC(uint64_t a1)
{
  v2 = PLAppIntentsGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Perform deferred check for App Intents URL navigation to workaround rdar://117412505", v4, 2u);
  }

  return [*(a1 + 32) _satisfyAppIntentsURLNavigationPerformerRequestsIfNecessary];
}

void sub_100017E1C(uint64_t a1)
{
  if ([*(a1 + 32) type])
  {
    v2 = [*(a1 + 40) keyRootViewController];
    if (!v2)
    {
      v11 = +[NSAssertionHandler currentHandler];
      [v11 handleFailureInMethod:*(a1 + 64) object:*(a1 + 40) file:@"PhotosApplication.m" lineNumber:1034 description:{@"Invalid parameter not satisfying: %@", @"participant"}];
    }

    if ([v2 routingOptionsForDestination:*(a1 + 32)])
    {
      v3 = PLAppIntentsGetLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 48);
        *buf = 138412290;
        v16 = v4;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Will perform App Intents %@ navigation request", buf, 0xCu);
      }

      v5 = *(a1 + 32);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000180FC;
      v12[3] = &unk_10005B378;
      v13 = *(a1 + 48);
      v14 = *(a1 + 56);
      [v2 navigateToDestination:v5 options:0 completionHandler:v12];

      v6 = v13;
    }

    else
    {
      v6 = [NSError px_genericErrorWithDebugDescription:@"No routing options for destination"];
      v9 = PLAppIntentsGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = *(a1 + 48);
        *buf = 138412546;
        v16 = v10;
        v17 = 2112;
        v18 = v6;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to perform App Intents %@ navigation request: %@", buf, 0x16u);
      }

      (*(*(a1 + 56) + 16))();
    }
  }

  else
  {
    v2 = [NSError px_genericErrorWithDebugDescription:@"No matching destination for URL"];
    v7 = PLAppIntentsGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 48);
      *buf = 138412546;
      v16 = v8;
      v17 = 2112;
      v18 = v2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to perform App Intents %@ navigation request: %@", buf, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
  }
}

void sub_1000180FC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 == 1)
  {
    v7 = PLAppIntentsGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138412290;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Did perform App Intents %@ navigation request", buf, 0xCu);
    }
  }

  else
  {
    if (!v5)
    {
      v6 = [NSError px_genericErrorWithDebugDescription:@"Unknown %@ navigation error", *(a1 + 32)];
    }

    v7 = PLAppIntentsGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = PXProgrammaticNavigationResultDescription();
      *buf = 138412802;
      v12 = v9;
      v13 = 2112;
      v14 = v10;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to perform App Intents %@ navigation request: %@, error: %@", buf, 0x20u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100018808(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained _nebulaDaemonProxyManager];

  if (!v3)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2050000000;
    v4 = qword_100066618;
    v11 = qword_100066618;
    if (!qword_100066618)
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100018934;
      v7[3] = &unk_10005BED0;
      v7[4] = &v8;
      sub_100018934(v7);
      v4 = v9[3];
    }

    v5 = v4;
    _Block_object_dispose(&v8, 8);
    v3 = objc_alloc_init(v4);
    v6 = objc_loadWeakRetained((a1 + 32));
    [v6 _setNebulaDaemonProxyManager:v3];
  }

  [v3 performCrashRecoveryIfNeededForceEndLastTimelapseSession:*(a1 + 40)];
}

void sub_10001891C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_100018934(uint64_t a1)
{
  v8[0] = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v2 = qword_100066620;
  v14 = qword_100066620;
  if (!qword_100066620)
  {
    v8[1] = _NSConcreteStackBlock;
    v8[2] = 3221225472;
    v8[3] = sub_100018B80;
    v8[4] = &unk_10005A3B0;
    v9 = &v11;
    v10 = v8;
    v15 = off_10005A398;
    v12[3] = _sl_dlopen();
    qword_100066620 = *(v9[1] + 24);
    v2 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (!v2)
  {
    v4 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"void *CameraUILibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"PhotosApplication.m" lineNumber:133 description:{@"%s", v8[0]}];

    goto LABEL_10;
  }

  if (v8[0])
  {
    free(v8[0]);
  }

  result = objc_getClass("CAMNebulaDaemonProxyManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v6 = +[NSAssertionHandler currentHandler];
    v7 = [NSString stringWithUTF8String:"Class getCAMNebulaDaemonProxyManagerClass(void)_block_invoke"];
    [v6 handleFailureInFunction:v7 file:@"PhotosApplication.m" lineNumber:134 description:{@"Unable to find class %s", "CAMNebulaDaemonProxyManager"}];

LABEL_10:
    __break(1u);
  }

  qword_100066618 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100018B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100018B80(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100066620 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100018C10(id a1)
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v1 = dispatch_queue_create("com.apple.photos.nebulad-access-queue", v3);
  v2 = qword_1000665F8;
  qword_1000665F8 = v1;
}

void sub_100019560(uint64_t a1)
{
  [PXSystemNavigation navigateToDestination:5 completion:0];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  sub_1000195B8(1, v2, v3);
}

void sub_1000195B8(int a1, uint64_t a2, void *a3)
{
  if (a2 >= 1)
  {
    v3 = @"com.apple.photos.CPAnalytics.exitPrompt30DaysStorageCanceled";
    v4 = @"com.apple.photos.CPAnalytics.exitPrompt7DaysStorageCanceled";
    if (a2 == 1)
    {
      v4 = @"com.apple.photos.CPAnalytics.exitPrompt1DayStorageCanceled";
    }

    if (a2 <= 7)
    {
      v3 = v4;
    }

    v5 = @"com.apple.photos.CPAnalytics.exitPrompt1DayStorageSettingsSelected";
    if (a2 != 1)
    {
      v5 = @"com.apple.photos.CPAnalytics.exitPrompt7DaysStorageSettingsSelected";
    }

    if (a2 > 7)
    {
      v5 = @"com.apple.photos.CPAnalytics.exitPrompt30DaysStorageSettingsSelected";
    }

    if (a1)
    {
      v6 = v5;
    }

    else
    {
      v6 = v3;
    }

    v9 = CPAnalyticsPayloadClassNameKey;
    v10 = a3;
    v7 = a3;
    v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    [CPAnalytics sendEvent:v6 withPayload:v8];
  }
}

Class sub_100019900(uint64_t a1)
{
  v6[0] = 0;
  if (!qword_100066610)
  {
    v6[1] = _NSConcreteStackBlock;
    v6[2] = 3221225472;
    v6[3] = sub_100019AEC;
    v6[4] = &unk_10005A8A8;
    v6[5] = v6;
    v7 = off_10005A380;
    v8 = 0;
    qword_100066610 = _sl_dlopen();
  }

  if (!qword_100066610)
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *PreferencesLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"PhotosApplication.m" lineNumber:137 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("PSOAuthAccountRedirectURLController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"Class getPSOAuthAccountRedirectURLControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"PhotosApplication.m" lineNumber:138 description:{@"Unable to find class %s", "PSOAuthAccountRedirectURLController"}];

LABEL_10:
    __break(1u);
  }

  qword_100066608 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100019AEC(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100066610 = result;
  return result;
}

void sub_10001A07C(uint64_t a1)
{
  v2 = [*(a1 + 32) undoActionsInvalidator];

  if (!v2)
  {
    v3 = [*(a1 + 32) applicationScene];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = [v4 keyWindow];
    v6 = [v5 undoManager];
    if (v6)
    {
      v7 = [PXContentPrivacyController privacyControllerForCollection:*(a1 + 40)];
      v8 = [[PXUndoActionsInvalidator alloc] initWithUndoManager:v6 privacyController:v7];
      [*(a1 + 32) setUndoActionsInvalidator:v8];

      v9 = [*(a1 + 32) undoActionsInvalidator];
      [v9 beginObservingSystemEventsForAutomaticInvalidation];
    }

    else
    {
      v10 = PLUIGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[UndoActionsInvalidator] Unable to get an undo manager for the key window.", v11, 2u);
      }
    }
  }
}

uint64_t sub_10001A450(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10001A468(uint64_t a1)
{
  v5 = +[UIApplication pu_debugCurrentAsset];
  v2 = [v5 uuid];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = @"<none>";
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), v4);
}

void sub_10001A744(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = PLUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      v7 = "User granted authorization for user notifications";
LABEL_9:
      v9 = v6;
      v10 = OS_LOG_TYPE_DEFAULT;
      v11 = 2;
      goto LABEL_10;
    }
  }

  else
  {
    v8 = PLUIGetLog();
    v6 = v8;
    if (v5)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v13 = 138412290;
        v14 = v5;
        v7 = "Error requesting authorization for user notifications: %@";
        v9 = v6;
        v10 = OS_LOG_TYPE_ERROR;
        v11 = 12;
LABEL_10:
        _os_log_impl(&_mh_execute_header, v9, v10, v7, &v13, v11);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      v7 = "User did not grant authorization for user notifications";
      goto LABEL_9;
    }
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v12);
}

void sub_10001A87C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v41 = v5;
  v65 = v5;
  v7 = [NSArray arrayWithObjects:&v65 count:1];
  v8 = [*(a1 + 32) librarySpecificFetchOptions];
  v9 = [PHCollectionShare fetchCollectionSharesWithScopeIdentifiers:v7 options:v8];
  v10 = [v9 firstObject];

  v47 = a1;
  v11 = [*(a1 + 32) librarySpecificFetchOptions];
  v40 = v10;
  v12 = [PHShareParticipant fetchParticipantsInShare:v10 options:v11];

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = v12;
  v13 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v60;
    v42 = *v60;
    v43 = v6;
    do
    {
      v16 = 0;
      v44 = v14;
      do
      {
        if (*v60 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v59 + 1) + 8 * v16);
        if ([v17 acceptanceStatus] == 1)
        {
          v46 = v16;
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v48 = v6;
          v18 = [v48 countByEnumeratingWithState:&v55 objects:v63 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v56;
            do
            {
              for (i = 0; i != v19; i = i + 1)
              {
                if (*v56 != v20)
                {
                  objc_enumerationMutation(v48);
                }

                v22 = *(*(&v55 + 1) + 8 * i);
                v23 = +[NSCharacterSet decimalDigitCharacterSet];
                v24 = [v23 invertedSet];

                v25 = [v17 phoneNumber];
                v26 = [v25 componentsSeparatedByCharactersInSet:v24];
                v27 = [v26 componentsJoinedByString:&stru_10005C9B8];

                v28 = [v22 componentsSeparatedByCharactersInSet:v24];
                v29 = [v28 componentsJoinedByString:&stru_10005C9B8];

                if ([v27 isEqualToString:v29])
                {
                  v30 = *(v47 + 32);
                  v53[4] = v17;
                  v54[0] = _NSConcreteStackBlock;
                  v54[1] = 3221225472;
                  v54[2] = sub_10001ADEC;
                  v54[3] = &unk_10005C140;
                  v54[4] = v17;
                  v53[0] = _NSConcreteStackBlock;
                  v53[1] = 3221225472;
                  v53[2] = sub_10001AE40;
                  v53[3] = &unk_10005BE08;
                  [v30 performChanges:v54 completionHandler:v53];
                }
              }

              v19 = [v48 countByEnumeratingWithState:&v55 objects:v63 count:16];
            }

            while (v19);
          }

          v15 = v42;
          v6 = v43;
          v14 = v44;
          v16 = v46;
        }

        v16 = v16 + 1;
      }

      while (v16 != v14);
      v14 = [obj countByEnumeratingWithState:&v59 objects:v64 count:16];
    }

    while (v14);
  }

  if ([v6 count] < 2)
  {
    v31 = PLLocalizedFrameworkString();
    v32 = PLLocalizedFrameworkString();
    v34 = [v6 objectAtIndexedSubscript:0];
    v33 = v40;
    v39 = [v40 localizedTitle];
    v35 = PFStringWithValidatedFormat();
  }

  else
  {
    v31 = PLLocalizedFrameworkString();
    v32 = PLLocalizedFrameworkString();
    v33 = v40;
    v34 = [v40 localizedTitle];
    v35 = PFLocalizedStringWithValidatedFormat();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001AF90;
  block[3] = &unk_10005A7B0;
  block[4] = *(v47 + 40);
  v50 = v31;
  v51 = v35;
  v52 = v33;
  v36 = v33;
  v37 = v35;
  v38 = v31;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10001ADEC(uint64_t a1)
{
  v1 = [PHShareParticipantChangeRequest changeRequestForShareParticipant:*(a1 + 32)];
  [v1 setAcceptanceStatus:0];
}

void sub_10001AE40(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = PLUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v14 = 138543362;
      v15 = v7;
      v8 = "Succeeded setting failed state on share participant %{public}@.";
LABEL_9:
      v11 = v6;
      v12 = 12;
      goto LABEL_10;
    }
  }

  else
  {
    v6 = PLUIGetLog();
    v9 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (v5)
    {
      if (v9)
      {
        v10 = *(a1 + 32);
        v14 = 138543618;
        v15 = v10;
        v16 = 2112;
        v17 = v5;
        v8 = "Unable to set failed state on share participant %{public}@. Error: %@";
        v11 = v6;
        v12 = 22;
LABEL_10:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v8, &v14, v12);
      }
    }

    else if (v9)
    {
      v13 = *(a1 + 32);
      v14 = 138543362;
      v15 = v13;
      v8 = "Unable to set failed state on share participant %{public}@.";
      goto LABEL_9;
    }
  }
}

void sub_10001AF90(uint64_t a1)
{
  v2 = [*(a1 + 32) px_firstKeyWindow];
  v3 = [UIAlertController alertControllerWithTitle:*(a1 + 40) message:*(a1 + 48) preferredStyle:1];
  v4 = PLLocalizedFrameworkString();
  v5 = [UIAlertAction actionWithTitle:v4 style:1 handler:0];
  [v3 addAction:v5];

  v6 = [v2 rootViewController];
  v7 = [v6 presentedViewController];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (!v7 || (isKindOfClass & 1) != 0)
  {
    v9 = PLLocalizedFrameworkString();
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_10001B148;
    v16 = &unk_10005A1F0;
    v10 = *(a1 + 56);
    v11 = *(a1 + 32);
    v17 = v10;
    v18 = v11;
    v12 = [UIAlertAction actionWithTitle:v9 style:0 handler:&v13];
    [v3 addAction:{v12, v13, v14, v15, v16}];
  }

  [v2 pl_presentViewController:v3 animated:1];
}

void sub_10001B148(uint64_t a1)
{
  v2 = [*(a1 + 32) uuid];
  v4 = [NSString stringWithFormat:@"photos://sharedalbum?uuid=%@&show-options=true", v2];

  v3 = [NSURL URLWithString:v4];
  [*(a1 + 40) navigateToURLDestination:v3 completionHandler:&stru_10005A1C8];
}

void sub_10001B1F4(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  if (!a2)
  {
    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to navigate to shared album details with error %@", &v6, 0xCu);
    }
  }
}

void sub_10001B344(uint64_t a1)
{
  v9[5] = _NSConcreteStackBlock;
  v9[6] = 3221225472;
  v9[7] = sub_10001B560;
  v9[8] = &unk_10005A148;
  v2 = *(a1 + 40);
  v9[9] = *(a1 + 32);
  v9[10] = v2;
  PLDisableCPLIfExited();
  PXLemonadeAppearanceConfigureIfNeeded();
  [PXRemoteDiagnosticsService startServerOnInternalDevicesWithAgentClass:objc_opt_class()];
  +[PURootSettings setupStatusBarInternalSettingsGestureOnInternalDevices];
  v3 = +[PXMediaTypeInfoManager sharedManager];
  [v3 prepareInformationForLookups];

  v4 = +[PXPreloadScheduler sharedScheduler];
  [v4 scheduleDeferredTaskWithQoS:1 block:&stru_10005A168];

  v5 = +[PXPreloadScheduler sharedScheduler];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10001B5D0;
  v9[3] = &unk_10005C140;
  v9[4] = *(a1 + 32);
  [v5 scheduleDeferredTaskWithQoS:2 block:v9];

  v6 = [*(a1 + 32) undoActionsInvalidator];

  if (!v6)
  {
    v7 = +[PXPreloadScheduler sharedScheduler];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10001B5FC;
    v8[3] = &unk_10005C140;
    v8[4] = *(a1 + 32);
    [v7 scheduleDeferredTaskWithQoS:2 block:v8];
  }
}

id sub_10001B51C(uint64_t a1)
{
  v2 = [*(a1 + 32) applicationState] == 0;
  v3 = *(a1 + 32);

  return [v3 performNebuladCrashRecoveryIfNeededForceEndLastTimelapseSession:v2];
}

uint64_t sub_10001B560(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  return px_dispatch_on_main_queue();
}

id sub_10001B5D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_class();

  return [v2 _donateTipsAppPhotosSignals];
}

void sub_10001B604(id a1)
{
  v1 = +[CPAnalytics activateEventQueue];

  _PNUserDefaultPhotosAppFinishedLaunching(v1);
}

id sub_10001B634(uint64_t a1)
{
  [*(a1 + 32) _showCloudPhotoLibraryExitPromptIfNecessary];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001B788;
  v5[3] = &unk_10005A0F8;
  v5[4] = *(a1 + 32);
  [PXUserPromptCoordinator schedulePromptWithIdentifier:@"WelcomeView" action:v5];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001B794;
  v4[3] = &unk_10005A0F8;
  v4[4] = *(a1 + 32);
  [PXUserPromptCoordinator schedulePromptWithIdentifier:@"AppleMusic" action:v4];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10001B7A0;
  v3[3] = &unk_10005A0F8;
  v3[4] = *(a1 + 32);
  [PXUserPromptCoordinator schedulePromptWithIdentifier:@"UserNotifications" action:v3];
  return [PXCloudQuotaUpsellSheetManager presentUpsellSheetIfNecessaryWithActivationOptions:*(a1 + 40)];
}

id sub_10001BC18(uint64_t a1)
{
  PXAsynchronousAddDragAndDropFileProviderDomain();
  PXAsynchronousAddBoopFileProviderDomain();
  +[PXNetworkStatusMonitor sharedInstance];

  [*(a1 + 32) updateShowHiddenAlbumCachedValue];
  v2 = *(a1 + 32);

  return [v2 updateShowRecentlyViewedAndSharedAlbumCachedValue];
}

void sub_10001BC70(uint64_t a1)
{
  v2 = PXPhotosApplicationURLToOpenWhenLaunchedForTesting();
  v3 = v2;
  if (v2)
  {
    v4 = [v2 absoluteString];
    v5 = [v4 hasPrefix:@"photos://shelf?"];

    if (v5)
    {
      v6 = dispatch_time(0, 5000000000);
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10001BD84;
      v8[3] = &unk_10005C190;
      v8[4] = *(a1 + 32);
      v9 = v3;
      dispatch_after(v6, &_dispatch_main_q, v8);
    }

    else
    {
      v7 = [*(a1 + 32) photosWindowSceneDelegate];
      [v7 openRoutingURL:v3];
    }
  }
}

void sub_10001BD84(uint64_t a1)
{
  v2 = [*(a1 + 32) photosWindowSceneDelegate];
  [v2 openRoutingURL:*(a1 + 40)];
}

void sub_10001BDD8(id a1)
{
  v1 = +[_TtC9PhotosApp33PhotosAppShortcutsProviderWrapper updateAppShortcutParameters];

  _PXPreferencesEnsureDefaultEnhancedVisualSearch(v1);
}

void sub_10001BE08(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v3 = 138412290;
    v4 = v2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Error while synchronizing key/value store: %@", &v3, 0xCu);
  }
}

void sub_10001BEB8(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  if (!a2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v4;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed setting application audio session category for Photos Application! Error: %@", &v5, 0xCu);
  }
}

id sub_10001E638(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v20 = PXLocalizedString();
  v19 = (*(*(a1 + 32) + 16))();
  v18 = [UIKeyCommand commandWithTitle:v20 image:v19 action:"newAlbum:" input:@"n" modifierFlags:0x100000 propertyList:0];
  v21[0] = v18;
  v17 = PXLocalizedString();
  v16 = (*(*(a1 + 32) + 16))();
  v15 = [UIKeyCommand commandWithTitle:v17 image:v16 action:"newSharedAlbum:" input:@"n" modifierFlags:1835008 propertyList:0];
  v21[1] = v15;
  v14 = PXLocalizedString();
  v4 = (*(*(a1 + 32) + 16))();
  v5 = [UIKeyCommand commandWithTitle:v14 image:v4 action:"newSmartAlbum:" input:@"n" modifierFlags:1572864 propertyList:0];
  v21[2] = v5;
  v6 = PXLocalizedString();
  v7 = (*(*(a1 + 32) + 16))();
  v8 = [UIKeyCommand commandWithTitle:v6 image:v7 action:"newFolder:" input:@"n" modifierFlags:1179648 propertyList:0];
  v21[3] = v8;
  v9 = PXLocalizedString();
  v10 = (*(*(a1 + 32) + 16))();
  v11 = [UIKeyCommand commandWithTitle:v9 image:v10 action:"newMemoryMovie:" input:@"n" modifierFlags:1310720 propertyList:0];
  v21[4] = v11;
  v12 = [NSArray arrayWithObjects:v21 count:5];
  [v3 addObjectsFromArray:v12];

  return v3;
}

id sub_10001E970(uint64_t a1)
{
  v2 = PXFilter();
  if ((*(*(a1 + 32) + 16))())
  {
    v3 = PXLocalizedString();
    v4 = (*(*(a1 + 40) + 16))();
    v5 = [UIKeyCommand commandWithTitle:v3 image:v4 action:"deselectAll:" input:@"a" modifierFlags:1572864 propertyList:0];
    [v2 addObject:v5];
  }

  return v2;
}

BOOL sub_10001EAE8(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = 0;
  if (v3 && (isKindOfClass & 1) != 0)
  {
    v5 = [v3 action] == *(a1 + 32);
  }

  return v5;
}

BOOL sub_10001EB58(id a1, UIMenuElement *a2)
{
  v2 = a2;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(UIMenuElement *)v3 action];
  return v4 != "pasteAndMatchStyle:";
}

void sub_10001EC9C(uint64_t a1, void *a2)
{
  v3 = a2;
  +[PXOneUpSpatialPhotoBadgeStateModel enable];
  v4 = dispatch_time(0, 3000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001ED78;
  block[3] = &unk_10005A698;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_after(v4, &_dispatch_main_q, block);
}

void sub_10001EDF4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[PHPhotoLibrary px_deprecated_appPhotoLibrary];
  v5 = [v4 librarySpecificFetchOptions];

  [v5 setIncludeAllPhotosSmartAlbum:1];
  v6 = [PHAssetCollection fetchAssetCollectionsWithType:2 subtype:1000000205 options:v5];
  v7 = [v6 firstObject];

  v8 = [PHAsset fetchAssetsInAssetCollection:v7 options:v5];
  v9 = [PXPhotoKitAssetsDataSourceManager dataSourceManagerWithAssets:v8];
  v10 = [[PXSectionedSelectionManager alloc] initWithDataSourceManager:v9];
  [v10 performChanges:&stru_10005BFB0];
  v11 = [[PXPhotoKitAssetActionManager alloc] initWithSelectionManager:v10];
  v12 = [v11 actionPerformerForActionType:PXAssetActionTypeShare];
  v13 = [PXViewControllerPresenter defaultPresenterWithViewController:v3];

  [v12 setPresentationEnvironment:v13];
  [*(a1 + 32) startedCurrentTest];
  [v12 performActionWithCompletionHandler:0];
  v14 = dispatch_time(0, 2000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001EFFC;
  block[3] = &unk_10005C140;
  block[4] = *(a1 + 32);
  dispatch_after(v14, &_dispatch_main_q, block);
}

void sub_10001F1DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 96), 8);
  _Unwind_Resume(a1);
}

id sub_10001F208(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_10001F23C(void *a1, int a2, unint64_t a3)
{
  if (a1[6] <= a3)
  {
    v5 = a1[4];
    if (a2)
    {

      [v5 finishedCurrentTest];
    }

    else
    {

      [v5 failedCurrentTest];
    }
  }

  else if (*(*(a1[5] + 8) + 40))
  {
    v4 = dispatch_time(0, 1000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001F590;
    block[3] = &unk_10005BED0;
    block[4] = a1[5];
    dispatch_after(v4, &_dispatch_main_q, block);
  }
}

void sub_10001F334(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10001F3D8;
  v6[3] = &unk_10005BF48;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v7 = v4;
  v8 = v5;
  [v2 _runImportTestCommonInit:v3 navigateToImportTab:1 completionHandler:v6];
}

void sub_10001F3D8(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = dispatch_time(0, 1000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001F4D8;
    block[3] = &unk_10005B530;
    v11 = v5;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v12 = v7;
    v13 = v8;
    dispatch_after(v6, &_dispatch_main_q, block);
  }

  else
  {
    v9 = *(a1 + 32);
    ++*(*(*(a1 + 40) + 8) + 24);
    (*(v9 + 16))();
  }
}

void sub_10001F4D8(uint64_t a1)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001F56C;
  v5[3] = &unk_10005BF20;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 ppt_removeImportDataSourceWithOptions:0 completionHandler:v5];
}

uint64_t sub_10001F56C(uint64_t a1)
{
  v1 = *(a1 + 32);
  ++*(*(*(a1 + 40) + 8) + 24);
  return (*(v1 + 16))(v1);
}

id sub_10001F650(uint64_t a1, int a2, void *a3)
{
  if (a2)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10001F6E0;
    v7[3] = &unk_10005A760;
    v4 = *(a1 + 32);
    v7[4] = *(a1 + 40);
    return [a3 ppt_performThumbnailWithOptions:v4 completionHandler:v7];
  }

  else
  {
    v6 = *(a1 + 40);

    return [v6 failedCurrentTest];
  }
}

id sub_10001F6E0(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 finishedCurrentTestWithExtraResults:?];
  }

  else
  {
    return [v2 failedCurrentTestWithFailure:@"Thumbnailing failed"];
  }
}

id sub_10001F7A0(uint64_t a1, int a2, void *a3)
{
  if (a2)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10001F830;
    v7[3] = &unk_10005A760;
    v4 = *(a1 + 32);
    v7[4] = *(a1 + 40);
    return [a3 ppt_performImportToLibraryWithOptions:v4 completionHandler:v7];
  }

  else
  {
    v6 = *(a1 + 40);

    return [v6 failedCurrentTest];
  }
}

id sub_10001F830(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 finishedCurrentTestWithExtraResults:?];
  }

  else
  {
    return [v2 failedCurrentTestWithFailure:@"Import to library all failed"];
  }
}

id sub_10001F8F0(uint64_t a1, int a2, void *a3)
{
  if (a2)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10001F980;
    v7[3] = &unk_10005A760;
    v4 = *(a1 + 32);
    v7[4] = *(a1 + 40);
    return [a3 ppt_performDeleteWithOptions:v4 completionHandler:v7];
  }

  else
  {
    v6 = *(a1 + 40);

    return [v6 failedCurrentTest];
  }
}

id sub_10001F980(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 finishedCurrentTestWithExtraResults:?];
  }

  else
  {
    return [v2 failedCurrentTestWithFailure:@"Delete all failed"];
  }
}

void sub_10001FA30(uint64_t a1, int a2, void *a3)
{
  v5 = [a3 additionalResults];
  v6 = *(a1 + 32);
  v7 = v5;
  if (a2)
  {
    [v6 finishedCurrentTestWithExtraResults:v5];
  }

  else
  {
    [v6 failedCurrentTestWithFailure:@"Content loading failed"];
  }
}

id *sub_10001FC44(id *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return [result[4] failedCurrentTestWithFailure:@"Missing import test content"];
  }

  v2 = result[6];
  if (v2)
  {
    return v2[2](result[6], 1, result[5]);
  }

  return result;
}

void sub_10001FDF4(uint64_t a1)
{
  v2 = [PXDisplayAssetViewPPTPerformer alloc];
  v3 = [*(a1 + 32) view];
  v4 = [v2 initWithContainerView:v3 delegate:*(a1 + 40) testOptions:*(a1 + 48)];

  v6 = *(a1 + 56);
  v5 = *(a1 + 64);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001FED8;
  v7[3] = &unk_10005BE08;
  v8 = *(a1 + 32);
  (*(v5 + 16))(v5, v4, v6, v7);
}

void sub_10001FED8(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = PLUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "asset view test failed: %@", &v7, 0xCu);
    }
  }

  [*(a1 + 32) dismissViewControllerAnimated:1 completion:0];
}

void sub_1000200FC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000201D4;
  v8[3] = &unk_10005BD58;
  v8[4] = v6;
  v10 = v5;
  v11 = *(a1 + 48);
  v9 = *(a1 + 40);
  v7 = v5;
  [v6 _navigateToStoryFeedWithConfiguration:a2 completion:v8];
}

void sub_1000201D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 56);
    v6 = *(a1 + 40);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000202D8;
    v9[3] = &unk_10005BE58;
    v7 = v3;
    v8 = *(a1 + 32);
    v10 = v7;
    v11 = v8;
    v12 = *(a1 + 48);
    (*(v5 + 16))(v5, v6, v7, v9);
  }

  else
  {
    [*(a1 + 32) failedCurrentTestWithFailure:@"Unable to navigate to feed."];
    (*(*(a1 + 48) + 16))();
  }
}

void sub_1000202D8(uint64_t a1, char a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100020388;
  v6[3] = &unk_10005BC50;
  v6[4] = v3;
  v7 = *(a1 + 48);
  v8 = a2;
  v5 = v4;
  [v3 _dismissStoryFeed:v5 completion:v6];
}

id sub_100020388(uint64_t a1, char a2)
{
  if (a2)
  {
    return (*(*(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
  }

  else
  {
    return [*(a1 + 32) failedCurrentTestWithFailure:@"Unable to dismiss feed."];
  }
}

void sub_1000204B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[PXMockExtendedTraitCollection alloc] initWithFormFactor:4 orientation:1 visibleChromeElements:0];
  v8 = [[PXStoryViewConfiguration alloc] initWithConfiguration:v6 extendedTraitCollection:v7];

  v11 = a1 + 32;
  v9 = *(a1 + 32);
  v10 = *(v11 + 8);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000205CC;
  v14[3] = &unk_10005BCC8;
  v15 = v5;
  v12 = *(v10 + 16);
  v13 = v5;
  v12(v10, v9, v8, v14);
}

void sub_1000206C8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000207A0;
  v8[3] = &unk_10005BC78;
  v8[4] = v6;
  v10 = v5;
  v11 = *(a1 + 48);
  v9 = *(a1 + 40);
  v7 = v5;
  [v6 _navigateToStoryPlayerWithConfiguration:a2 completion:v8];
}

void sub_1000207A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 56);
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000208A4;
    v7[3] = &unk_10005BE58;
    v6 = *(a1 + 40);
    v7[4] = *(a1 + 32);
    v8 = v3;
    v9 = *(a1 + 48);
    (*(v5 + 16))(v5, v6, v8, v7);
  }

  else
  {
    [*(a1 + 32) failedCurrentTestWithFailure:@"Unable to navigate to player."];
    (*(*(a1 + 48) + 16))();
  }
}

void sub_1000208A4(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10002094C;
  v5[3] = &unk_10005BC50;
  v5[4] = v3;
  v6 = *(a1 + 48);
  v7 = a2;
  [v3 _dismissStoryPlayer:v4 animated:0 completion:v5];
}

id sub_10002094C(uint64_t a1, char a2)
{
  if (a2)
  {
    return (*(*(a1 + 40) + 16))(*(a1 + 40), *(a1 + 48));
  }

  else
  {
    return [*(a1 + 32) failedCurrentTestWithFailure:@"Unable to dismiss player."];
  }
}

void sub_100020EA8(uint64_t a1)
{
  sub_100021410();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PUTesterDefaultVideoGenerator");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100066660 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getPUTesterDefaultVideoGeneratorClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"PhotosApplication-Testing.m" lineNumber:164 description:{@"Unable to find class %s", "PUTesterDefaultVideoGenerator"}];

    __break(1u);
  }
}

void sub_100020F70(uint64_t a1)
{
  v2 = dispatch_time(0, 2000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000211B4;
  block[3] = &unk_10005BB28;
  v7 = *(a1 + 32);
  v3 = *(&v7 + 1);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  v11 = *(a1 + 64);
  v13 = *(a1 + 80);
  v12 = *(a1 + 72);
  v14 = *(a1 + 81);
  dispatch_after(v2, &_dispatch_main_q, block);
}

uint64_t sub_100021094(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000210AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = [NSURL fileURLWithPath:v5 isDirectory:0];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  else if (v6)
  {
    v11 = PLPPTGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to generate a video %@", &v12, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000211B4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 currentTestName];
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) gridView];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000212C4;
  v8[3] = &unk_10005BB00;
  v6 = *(a1 + 56);
  v7 = *(a1 + 32);
  v9 = v6;
  v10 = v7;
  v11 = *(a1 + 64);
  v13 = *(a1 + 80);
  v12 = *(a1 + 72);
  v14 = *(a1 + 81);
  [v2 ppt_performScrollTest:v3 withOptions:v4 gridView:v5 completionHandler:v8];
}

void sub_1000212C4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000213AC;
  v9[3] = &unk_10005BAD8;
  v13 = a2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v9[4] = *(a1 + 40);
  v10 = v5;
  v11 = v7;
  v14 = *(a1 + 64);
  v12 = *(a1 + 56);
  v15 = *(a1 + 65);
  v8 = v5;
  [v6 dismissViewControllerAnimated:1 completion:v9];
}

id sub_1000213AC(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  if (v2 == 1)
  {
    [v3 finishedCurrentTestWithExtraResults:*(a1 + 40)];
  }

  else
  {
    [v3 failedCurrentTest];
  }

  [*(a1 + 48) setEnableInlinePlayback:*(a1 + 65)];
  v4 = *(a1 + 66);
  v5 = *(a1 + 56);

  return [v5 setMaxNumberOfPlayingItems:v4];
}

void sub_100021410()
{
  v3[0] = 0;
  if (!qword_100066648)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100021560;
    v3[4] = &unk_10005A8A8;
    v3[5] = v3;
    v4 = off_10005BFF8;
    v5 = 0;
    qword_100066648 = _sl_dlopen();
  }

  if (!qword_100066648)
  {
    v1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"void *PhotosUITesterLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"PhotosApplication-Testing.m" lineNumber:158 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_100021560(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100066648 = result;
  return result;
}

void sub_1000217FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectAtIndexedSubscript:{objc_msgSend(v3, "index")}];
  if ((*(a1 + 88) & 1) == 0)
  {
    [*(a1 + 40) setDefaultValuesWithPresetName:v4];
  }

  v5 = [*(a1 + 40) createLayout];
  v6 = [[PXGPPTViewController alloc] initWithLayout:v5];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100021990;
  v13[3] = &unk_10005BA60;
  v8 = *(a1 + 48);
  v7 = *(a1 + 56);
  v9 = *(a1 + 64);
  v14 = v4;
  v15 = v7;
  v16 = v9;
  v17 = *(a1 + 72);
  v18 = v6;
  v19 = *(a1 + 48);
  v20 = *(a1 + 80);
  v21 = v3;
  v10 = v3;
  v11 = v6;
  v12 = v4;
  [v8 presentViewController:v11 animated:1 completion:v13];
}

void sub_100021990(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) startedSubTest:v2 forTest:*(a1 + 48)];
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  v5 = [*(a1 + 64) gridView];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100021AC0;
  v8[3] = &unk_10005BA38;
  v6 = *(a1 + 48);
  v8[4] = *(a1 + 40);
  v9 = v2;
  v10 = v6;
  v11 = *(a1 + 72);
  v12 = *(a1 + 80);
  v13 = *(a1 + 88);
  v7 = v2;
  [v3 ppt_performScrollTest:&stru_10005C9B8 withOptions:v4 gridView:v5 completionHandler:v8];
}

void sub_100021AC0(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) finishedSubTest:*(a1 + 40) forTest:*(a1 + 48)];
  v6 = *(a1 + 56);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100021BBC;
  v10[3] = &unk_10005BA10;
  v16 = a2;
  v11 = v5;
  v12 = *(a1 + 40);
  v13 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 32);
  v14 = v7;
  v15 = v8;
  v9 = v5;
  [v6 dismissViewControllerAnimated:1 completion:v10];
}

void sub_100021BBC(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    v4 = _NSConcreteStackBlock;
    v5 = 3221225472;
    v6 = sub_100021C9C;
    v7 = &unk_10005B9E8;
    v2 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    [v2 enumerateKeysAndObjectsUsingBlock:&v4];
    [*(a1 + 56) next];
  }

  else
  {
    [*(a1 + 64) failedCurrentTest];
    v3 = *(a1 + 56);

    [v3 stop];
  }
}

void sub_100021C9C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [NSString stringWithFormat:@"sub:%@:%@", v5, a2];
  [*(a1 + 40) setObject:v6 forKeyedSubscript:v7];
}

void sub_100021F90(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 configurationDescription];
  [*(a1 + 40) pu_startedAnimationSubTest:v7 forTest:*(a1 + 48)];
  v8 = *(a1 + 56);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000225F0;
  v14[3] = &unk_10005B8F8;
  v15 = *(a1 + 32);
  v16 = *(a1 + 64);
  v17 = a2;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100022650;
  v11[3] = &unk_10005A698;
  v9 = *(a1 + 48);
  v11[4] = *(a1 + 40);
  v12 = v7;
  v13 = v9;
  v10 = v7;
  [v8 animate:v14 animationRenderingCompletionHandler:v11 proceedHandler:v6];
}

void sub_1000220E4(uint64_t a1)
{
  [*(a1 + 32) count];
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = *(a1 + 72);
  v6 = *(a1 + 64);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  PXIterateAsynchronously();
}

void sub_100022208(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = [*(a1 + 40) objectAtIndexedSubscript:{objc_msgSend(v4, "index")}];
  [v5 floatValue];
  LODWORD(v2) = vcvtps_u32_f32(sqrtf(v6));
  [*(a1 + 32) setNumberOfRows:v2];
  [*(a1 + 32) setNumberOfColumns:v2];

  [*(a1 + 32) setStyle:0];
  v7 = dispatch_time(0, 200000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000223A8;
  block[3] = &unk_10005B970;
  v8 = *(a1 + 48);
  v13 = *(a1 + 56);
  v11 = v4;
  v12 = v8;
  v9 = v4;
  dispatch_after(v7, &_dispatch_main_q, block);
}

id sub_100022328(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000223A0;
  v3[3] = &unk_10005C140;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 dismissViewControllerAnimated:1 completion:v3];
}

void sub_1000223A8(uint64_t a1)
{
  v2 = *(a1 + 48);
  v4 = *(a1 + 40);
  v3 = *(a1 + 32);
  PXIterateAsynchronously();
}

void sub_100022490(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100022554;
  v7[3] = &unk_10005B350;
  v8 = v3;
  v9 = v4;
  v5 = v4[2];
  v6 = v3;
  v5(v9, 1, v7);
}

void sub_100022554(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000225E8;
  v2[3] = &unk_10005C140;
  v1 = *(a1 + 40);
  v3 = *(a1 + 32);
  (*(v1 + 16))(v1, 0, v2);
}

void sub_1000225F0(uint64_t a1)
{
  v2 = [*(a1 + 32) createAnimation];
  [v2 setDuration:*(a1 + 40)];
  [*(a1 + 32) setStyle:*(a1 + 48)];
}

void sub_100022744(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  [v9 mean];
  v11 = [NSNumber numberWithDouble:v10 * 1000.0];
  [*(a1 + 32) setObject:v11 forKeyedSubscript:@"editorialLayoutGeneration:mean"];

  [*(a1 + 32) setObject:@"ms" forKeyedSubscript:@"editorialLayoutGeneration:meanUnits"];
  [v9 min];
  v13 = [NSNumber numberWithDouble:v12 * 1000.0];
  [*(a1 + 32) setObject:v13 forKeyedSubscript:@"editorialLayoutGeneration:min"];

  v14 = [NSString stringWithFormat:@"ms (%@)", v8];

  [*(a1 + 32) setObject:v14 forKeyedSubscript:@"editorialLayoutGeneration:minUnits"];
  [v9 max];
  v16 = v15;

  v17 = [NSNumber numberWithDouble:v16 * 1000.0];
  [*(a1 + 32) setObject:v17 forKeyedSubscript:@"editorialLayoutGeneration:max"];

  v18 = [NSString stringWithFormat:@"ms (%@)", v7];

  [*(a1 + 32) setObject:v18 forKeyedSubscript:@"editorialLayoutGeneration:maxUnits"];
}

void sub_1000229E4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  [v9 mean];
  v11 = [NSNumber numberWithDouble:v10 * 1000.0];
  [*(a1 + 32) setObject:v11 forKeyedSubscript:@"gridLayoutGeneration:mean"];

  [*(a1 + 32) setObject:@"ms" forKeyedSubscript:@"gridLayoutGeneration:meanUnits"];
  [v9 min];
  v13 = [NSNumber numberWithDouble:v12 * 1000.0];
  [*(a1 + 32) setObject:v13 forKeyedSubscript:@"gridLayoutGeneration:min"];

  v14 = [NSString stringWithFormat:@"ms (%@)", v8];

  [*(a1 + 32) setObject:v14 forKeyedSubscript:@"gridLayoutGeneration:minUnits"];
  [v9 max];
  v16 = v15;

  v17 = [NSNumber numberWithDouble:v16 * 1000.0];
  [*(a1 + 32) setObject:v17 forKeyedSubscript:@"gridLayoutGeneration:max"];

  v18 = [NSString stringWithFormat:@"ms (%@)", v7];

  [*(a1 + 32) setObject:v18 forKeyedSubscript:@"gridLayoutGeneration:maxUnits"];
}

id sub_100022CD0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) measurementsDictionaryRepresentation];
  [v1 finishedCurrentTestWithExtraResults:v2];

  return +[PXPPTLoadingLatencyMeter stopMeasurements];
}

void sub_1000231EC(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if (([v6 canPlayAutoloop] & 1) == 0)
  {
    if ([v6 canPerformEditOperation:2])
    {
      [*(a1 + 32) addObject:v6];
      if ([*(a1 + 32) count] == *(a1 + 40))
      {
        *a4 = 1;
      }
    }
  }
}

void sub_100023274(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) firstObject];
  [*(a1 + 32) removeObjectAtIndex:0];
  v5 = *(a1 + 40);
  v6 = [v5 currentTestName];
  [v5 startedSubTest:@"GenerateSingleAutoLoop" forTest:v6 withMetrics:&off_10005F8B0];

  v7 = *(a1 + 40);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000234A4;
  v10[3] = &unk_10005B830;
  v10[4] = v7;
  v11 = v4;
  v13 = v3;
  v12 = *(a1 + 32);
  v8 = v3;
  v9 = v4;
  [v7 _convertAsset:v9 toVariationType:1 completionHandler:v10];
}

void sub_1000233A4(uint64_t a1)
{
  v2 = [*(a1 + 32) valueForKeyPath:@"@avg.creationDate.timeIntervalSinceReferenceDate"];
  [v2 doubleValue];
  v4 = v3;

  v5 = *(a1 + 40);
  v6 = [v5 currentTestName];
  v9 = @"TestedAssetsHash";
  v7 = [NSNumber numberWithDouble:v4];
  v10 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [v5 finishedTest:v6 extraResults:v8];
}

void sub_1000234A4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [v6 currentTestName];
  [v6 finishedSubTest:@"GenerateSingleAutoLoop" forTest:v7];

  v8 = *(a1 + 32);
  v9 = [v8 currentTestName];
  [v8 startedSubTest:@"RevertSingleAutoLoop" forTest:v9 withMetrics:&off_10005F8C8];

  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000235FC;
  v13[3] = &unk_10005B808;
  v13[4] = v10;
  v18 = a2;
  v17 = *(a1 + 56);
  v14 = *(a1 + 48);
  v15 = *(a1 + 40);
  v16 = v5;
  v12 = v5;
  [v10 _convertAsset:v11 toVariationType:0 completionHandler:v13];
}

void sub_1000235FC(uint64_t a1, int a2, void *a3)
{
  v15 = a3;
  v5 = *(a1 + 32);
  v6 = [v5 currentTestName];
  [v5 finishedSubTest:@"RevertSingleAutoLoop" forTest:v6];

  if (*(a1 + 72) != 1 || a2 == 0)
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 48);
    if (*(a1 + 72))
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    v11 = v10;
    v12 = *(a1 + 56);
    if (a2)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    v14 = v13;
    [v8 failedCurrentTestWithFailure:{@"GenerateAutoLoop asset:%@ convertSuccess:%@ with error:%@ revertSuccess:%@ with error:%@", v9, v11, v12, v14, v15}];
  }

  else
  {
    (*(*(a1 + 64) + 16))(*(a1 + 64), [*(a1 + 40) count] == 0);
  }
}

void sub_1000239CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000239E8(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] viewController];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100023AE0;
  v5[3] = &unk_10005B790;
  v6 = a1[4];
  objc_copyWeak(&v8, a1 + 6);
  v7 = a1[5];
  [v3 presentViewController:v4 animated:1 completion:v5];

  objc_destroyWeak(&v8);
}

void sub_100023AE0(uint64_t a1)
{
  v2 = [*(a1 + 32) ppt_scrollTestViewController];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [v2 childViewControllers];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v16 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v15 + 1) + 8 * v7);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v9 = v8;

    if (!v9)
    {
      goto LABEL_12;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v11 = [WeakRetained _scrollViewToTestForViewController:v9];

    v12 = objc_loadWeakRetained((a1 + 48));
    [v12 startedCurrentTest];

    v13 = objc_loadWeakRetained((a1 + 48));
    v14 = [v13 currentTestName];
    [v13 ppt_performScrollTest:v14 withOptions:*(a1 + 40) scrollView:v11 completionHandler:0];
  }

  else
  {
LABEL_9:

LABEL_12:
    v9 = objc_loadWeakRetained((a1 + 48));
    [v9 failedCurrentTestWithFailure:@"PXPhotosUIViewController not found on image picker for runScrollAssetPickerTest"];
  }
}

void sub_100023D70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100023D8C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(UIViewController);
  v5 = +[UIColor systemBackgroundColor];
  v6 = [v4 view];
  [v6 setBackgroundColor:v5];

  [v4 setModalPresentationStyle:5];
  v7 = dispatch_time(0, 10000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100023ECC;
  block[3] = &unk_10005B790;
  objc_copyWeak(&v13, (a1 + 32));
  v11 = v3;
  v12 = v4;
  v8 = v4;
  v9 = v3;
  dispatch_after(v7, &_dispatch_main_q, block);

  objc_destroyWeak(&v13);
}

void sub_100023ECC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained startedCurrentTest];

  v3 = [PHPickerConfiguration alloc];
  v4 = +[PHPhotoLibrary px_deprecated_appPhotoLibrary];
  v5 = [v3 initWithPhotoLibrary:v4];

  v6 = [[PHPickerViewController alloc] initWithConfiguration:v5];
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002401C;
  v10[3] = &unk_10005B790;
  v11 = v7;
  v9 = v6;
  v12 = v9;
  objc_copyWeak(&v13, (a1 + 48));
  [v8 presentViewController:v11 animated:0 completion:v10];
  objc_destroyWeak(&v13);
}

void sub_10002401C(uint64_t a1)
{
  [*(a1 + 32) presentViewController:*(a1 + 40) animated:0 completion:0];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = +[NSNotificationCenter defaultCenter];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100024110;
  v4[3] = &unk_10005B740;
  objc_copyWeak(&v5, (a1 + 48));
  [WeakRetained installNotificationObserverForNotificationName:v3 notificationName:@"PPT_PickerFinishedLoading" forOneNotification:1 usingBlock:v4];

  objc_destroyWeak(&v5);
}

void sub_100024110(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained finishedCurrentTest];
}

void sub_10002449C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000244C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v9 = v3;
    if (*(a1 + 56) == 1)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 48));
      [WeakRetained removeObserver:*(*(*(a1 + 40) + 8) + 40)];

      v6 = *(*(a1 + 40) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = 0;
    }

    v3 = (*(*(a1 + 32) + 16))();
    v4 = v9;
  }

  return _objc_release_x1(v3, v4);
}

void sub_1000246B4(uint64_t a1)
{
  v2 = +[PLPhotoLibrary systemPhotoLibrary];
  ppt_ResetSyncStatusWithLibrary();

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002475C;
  block[3] = &unk_10005C140;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_1000247F8(uint64_t a1)
{
  v2 = +[PLPhotoLibrary systemPhotoLibrary];
  ppt_ResetSyncStatusWithLibrary();

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000248A0;
  block[3] = &unk_10005C140;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100024964(uint64_t a1)
{
  v2 = +[PLPhotoLibrary systemPhotoLibrary];
  [PLManagedAsset createMastersInLibrary:v2];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100024F64;
  block[3] = &unk_10005C140;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
  v3 = [v2 libraryServicesManager];
  v4 = [v3 databaseContext];

  v5 = [PLRelationshipOrderKeyManager alloc];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_100024FC4;
  v38[3] = &unk_10005B620;
  v6 = v4;
  v39 = v6;
  v7 = [v5 initWithGenerateContextBlock:v38];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100024FFC;
  v35[3] = &unk_10005C190;
  v8 = v2;
  v36 = v8;
  v9 = v7;
  v37 = v9;
  [v8 performBlockAndWait:v35 completionHandler:&stru_10005B640];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100025108;
  v34[3] = &unk_10005C140;
  v34[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v34);

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100025168;
  v32[3] = &unk_10005C140;
  v10 = v8;
  v33 = v10;
  [v10 performBlockAndWait:v32 completionHandler:&stru_10005B660];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10002518C;
  v31[3] = &unk_10005C140;
  v31[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v31);

  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1000251EC;
  v30[3] = &unk_10005C140;
  v30[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v30);

  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10002524C;
  v28[3] = &unk_10005C140;
  v11 = v10;
  v29 = v11;
  [v11 performBlockAndWait:v28 completionHandler:&stru_10005B680];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100025270;
  v27[3] = &unk_10005C140;
  v27[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v27);

  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000252D0;
  v26[3] = &unk_10005C140;
  v26[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v26);

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100025330;
  v24[3] = &unk_10005C140;
  v12 = v11;
  v25 = v12;
  [v12 performBlockAndWait:v24 completionHandler:&stru_10005B6A0];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100025350;
  v23[3] = &unk_10005C140;
  v23[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v23);

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000253B0;
  v22[3] = &unk_10005C140;
  v22[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v22);

  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  do
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100025410;
    v15[3] = &unk_10005B6C8;
    v13 = v12;
    v16 = v13;
    v17 = &v18;
    [v13 performTransactionAndWait:v15];
  }

  while ((v19[3] & 1) == 0);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100025588;
  v14[3] = &unk_10005C140;
  v14[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v14);

  _Block_object_dispose(&v18, 8);
}

void sub_100024F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100024F64(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 currentTestName];
  [v1 finishedSubTest:@"createMaster" forTest:v2];
}

id sub_100024FC4(uint64_t a1)
{
  v1 = [*(a1 + 32) newShortLivedLibraryForOrderKeyManagerWithName:"-[PLPhotosApplication(Testing) runHyperionInitialSyncTest:]_block_invoke_3"];

  return [v1 managedObjectContext];
}

void sub_100024FFC(uint64_t a1)
{
  v2 = [PLGenericAlbum albumsToUploadInitiallyInLibrary:*(a1 + 32) limit:50];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) cplAlbumChangeInPhotoLibrary:*(a1 + 32) orderKeyManager:*(a1 + 40)];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_100025108(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 currentTestName];
  [v1 startedSubTest:@"estimatedLibrarySizeCalculation" forTest:v2];
}

void sub_10002518C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 currentTestName];
  [v1 finishedSubTest:@"estimatedLibrarySizeCalculation" forTest:v2];
}

void sub_1000251EC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 currentTestName];
  [v1 startedSubTest:@"originalPhotosAndPurgableLibrarySize" forTest:v2];
}

void sub_100025270(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 currentTestName];
  [v1 finishedSubTest:@"originalPhotosAndPurgableLibrarySize" forTest:v2];
}

void sub_1000252D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 currentTestName];
  [v1 startedSubTest:@"purgeableSharedStreamsSize" forTest:v2];
}

void sub_100025350(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 currentTestName];
  [v1 finishedSubTest:@"purgeableSharedStreamsSize" forTest:v2];
}

void sub_1000253B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 currentTestName];
  [v1 startedSubTest:@"fetchAssets" forTest:v2];
}

void sub_100025410(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [PLManagedAsset assetsToUploadInitiallyInManagedObjectContext:v2 limit:50];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        [v9 incrementUploadAttempts];
        v10 = +[NSDate date];
        [v9 setLastUploadAttemptDate:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  *(*(*(a1 + 40) + 8) + 24) = [v4 count] == 0;
}

id sub_100025588(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 currentTestName];
  [v2 finishedSubTest:@"fetchAssets" forTest:v3];

  v4 = *(a1 + 32);

  return [v4 finishedCurrentTest];
}

void sub_100025E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a65, 8);
  _Unwind_Resume(a1);
}

void sub_100025E68(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectAtIndexedSubscript:*(*(*(a1 + 72) + 8) + 24)];
  v5 = *(a1 + 72);
  v6 = *(*(v5 + 8) + 24);
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_10002628C;
  v38[3] = &unk_10005B558;
  v7 = *(a1 + 104);
  v38[4] = *(a1 + 40);
  v41 = v5;
  v42 = v7;
  v43 = v6;
  v44 = *(a1 + 112);
  v8 = v3;
  v40 = v8;
  v39 = *(a1 + 32);
  v9 = objc_retainBlock(v38);
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 1;
  +[NSDate timeIntervalSinceReferenceDate];
  v11 = v10;
  v12 = *(a1 + 40);
  v13 = [v12 currentTestName];
  [v12 startedSubTest:@"highQualityImage" forTest:v13 withMetrics:&__NSArray0__struct];

  v14 = *(a1 + 136);
  v16 = *(a1 + 48);
  v15 = *(a1 + 56);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100026410;
  v26[3] = &unk_10005B580;
  v33 = v11;
  v30 = &v34;
  v31 = *(a1 + 80);
  v27 = *(a1 + 64);
  v17 = v9;
  v29 = v17;
  v18 = v4;
  v19 = *(a1 + 96);
  v28 = v18;
  v32 = v19;
  [v16 requestImageForAsset:v18 targetSize:v14 contentMode:v15 options:v26 resultHandler:{*(a1 + 120), *(a1 + 128)}];
  *(v35 + 24) = 0;
  v20 = dispatch_time(0, 60000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100026614;
  block[3] = &unk_10005B5A8;
  v24 = *(a1 + 72);
  v25 = v6;
  block[4] = *(a1 + 40);
  v23 = v18;
  v21 = v18;
  dispatch_after(v20, &_dispatch_main_q, block);

  _Block_object_dispose(&v34, 8);
}

id sub_100026154(uint64_t a1)
{
  v2 = *(*(*(a1 + 48) + 8) + 24);
  if (v2 >= 1)
  {
    v3 = *(a1 + 32);
    v11 = v2;
    v4 = @"%ld images were in the cloud and had to be downloaded, please run the test again.";
LABEL_3:
    [v3 failedCurrentTestWithFailure:{v4, v11}];
    goto LABEL_6;
  }

  if (!*(*(*(a1 + 56) + 8) + 24))
  {
    v3 = *(a1 + 32);
    v4 = @"Unable to get image results for any assets.";
    goto LABEL_3;
  }

  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = [NSNumber numberWithInteger:*(*(*(a1 + 64) + 8) + 24) / *(*(*(a1 + 56) + 8) + 24)];
  [v5 setObject:v6 forKeyedSubscript:@"imagePixelSize:mean"];

  v7 = +[PXPPTLoadingLatencyMeter sharedInstance];
  v8 = [v7 measurementsDictionaryRepresentation];
  [v5 addEntriesFromDictionary:v8];

  +[PXPPTLoadingLatencyMeter stopMeasurements];
  [*(a1 + 32) finishedCurrentTestWithExtraResults:v5];

LABEL_6:
  v9 = *(a1 + 40);

  return [v9 removeFromSuperview];
}

void sub_10002628C(uint64_t a1)
{
  if (!+[NSThread isMainThread])
  {
    v7 = +[NSAssertionHandler currentHandler];
    [v7 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"PhotosApplication-Testing.m" lineNumber:2887 description:{@"%s must be called on the main thread", "-[PLPhotosApplication(Testing) _runRequestImageWithTargetSize:contentMode:options:]_block_invoke_2"}];
  }

  if (*(*(*(a1 + 56) + 8) + 24) == *(a1 + 72))
  {
    v2 = *(a1 + 32);
    v3 = [v2 currentTestName];
    [v2 finishedSubTest:@"highQualityImage" forTest:v3];

    ++*(*(*(a1 + 56) + 8) + 24);
    v4 = dispatch_time(0, (*(a1 + 80) * 1000000000.0));
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100026660;
    block[3] = &unk_10005B530;
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v10 = v5;
    v11 = v6;
    v9 = *(a1 + 40);
    dispatch_after(v4, &_dispatch_main_q, block);
  }
}

void sub_100026410(uint64_t a1, void *a2, void *a3)
{
  v21 = a2;
  v5 = a3;
  if (v21)
  {
    +[NSDate timeIntervalSinceReferenceDate];
    v7 = v6 - *(a1 + 88);
    v8 = [v5 objectForKeyedSubscript:PHImageResultIsDegradedKey];
    v9 = [v8 BOOLValue];

    if (v9)
    {
      v10 = *(*(*(a1 + 56) + 8) + 24);
      v11 = +[PXPPTLoadingLatencyMeter sharedInstance];
      [v11 reportLatency:v10 != 1 forOutputQuality:v7];

      goto LABEL_9;
    }

    [v21 size];
    v15 = v14;
    [v21 size];
    v17 = v15 * v16;
    [v21 scale];
    *(*(*(a1 + 64) + 8) + 24) = (*(*(*(a1 + 64) + 8) + 24) + v17 * v18);
    ++*(*(*(a1 + 72) + 8) + 24);
    v19 = +[PXPPTLoadingLatencyMeter sharedInstance];
    [v19 reportLatency:2 forOutputQuality:v7];

    [*(a1 + 32) setImage:v21];
  }

  else
  {
    v12 = [v5 objectForKeyedSubscript:PHImageResultIsInCloudKey];

    v13 = *(a1 + 40);
    if (v12)
    {
      NSLog(@"Media in the cloud for asset:%@, downloading.", *(a1 + 40));
      ++*(*(*(a1 + 80) + 8) + 24);
      goto LABEL_9;
    }

    v20 = [v5 objectForKeyedSubscript:PHImageErrorKey];
    NSLog(@"Got nil image for asset:%@ error:%@", v13, v20);
  }

  (*(*(a1 + 48) + 16))();
LABEL_9:
}

id *sub_100026614(id *result)
{
  if (*(*(result[6] + 1) + 24) == result[7])
  {
    return [result[4] failedCurrentTestWithFailure:{@"Timeout requesting image for asset:%@", result[5]}];
  }

  return result;
}

uint64_t sub_100026660(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(*(a1 + 48) + 8) + 24);
  v3 = v2 >= [*(a1 + 32) count];
  v4 = *(v1 + 16);

  return v4(v1, v3);
}

void sub_100026FB0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 72) == 1)
  {
    v4 = *(a1 + 32);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000274B8;
    v19[3] = &unk_10005C078;
    v20 = *(a1 + 48);
    [v4 installCACommitCompletionBlock:v19];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000274C8;
    v17[3] = &unk_10005C078;
    v18 = *(a1 + 56);
    [v3 ppt_performBlockAfterNextNavigationAnimation:v17];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
    (*(*(a1 + 56) + 16))();
  }

  v5 = [v3 topViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x2020000000;
    v16 = 0;
    +[NSDate timeIntervalSinceReferenceDate];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000274D8;
    v9[3] = &unk_10005B490;
    v14 = v6;
    v13 = v15;
    v10 = *(a1 + 40);
    v11 = v5;
    v12 = *(a1 + 64);
    [v11 ppt_performBlockAfterAllWidgetLoadingCompletes:v9];
    v7 = dispatch_time(0, 90000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002766C;
    block[3] = &unk_10005B6C8;
    block[4] = *(a1 + 32);
    block[5] = v15;
    dispatch_after(v7, &_dispatch_main_q, block);

    _Block_object_dispose(v15, 8);
  }

  else
  {
    [*(a1 + 32) failedCurrentTest];
  }
}

void sub_100027254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002726C(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"album"];
  v3 = [v2 isEqualToString:@"People"];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = @"rdar://133850769";
  }

  else
  {
    v6 = [*(a1 + 32) objectForKeyedSubscript:@"album"];

    v7 = *(a1 + 40);
    if (v6)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000273B8;
      v10[3] = &unk_10005B4E0;
      v11 = *(a1 + 48);
      v13 = *(a1 + 64);
      v8 = *(a1 + 56);
      v9 = *(a1 + 40);
      v12 = v8;
      v10[4] = v9;
      [v7 _navigateToAlbumForCurrentTest:v10];

      return;
    }

    v5 = @"Memory details views don't exist anymore";
    v4 = *(a1 + 40);
  }

  [v4 failedCurrentTestWithFailure:v5];
}

void sub_1000273B8(uint64_t a1, void *a2)
{
  v8 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v8;
    v4 = [v3 photosDataSource];
    v5 = [v4 lastAssetCollection];

    if (v5)
    {
      (*(*(a1 + 40) + 16))();
      [v3 navigateToPhotosDetailsForAssetCollection:v5 animated:*(a1 + 56)];
      v6 = *(a1 + 48);
      v7 = [v3 navigationController];
      (*(v6 + 16))(v6, v7);
    }

    else
    {
      [*(a1 + 32) failedCurrentTest];
    }
  }

  else
  {
    [*(a1 + 32) failedCurrentTest];
  }
}

void sub_1000274D8(uint64_t a1)
{
  v2 = PLPPTGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    +[NSDate timeIntervalSinceReferenceDate];
    v4 = v3 - *(a1 + 64);
    *buf = 134217984;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Took %0.1fs to load all details view's widgets", buf, 0xCu);
  }

  *(*(*(a1 + 56) + 8) + 24) = 1;
  v5 = [*(a1 + 32) objectForKeyedSubscript:@"discloseWidgets"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    [*(a1 + 40) ppt_toggleDiscloseWidgets];
  }

  v7 = dispatch_time(0, 2000000000);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100027690;
  v8[3] = &unk_10005B350;
  v10 = *(a1 + 48);
  v9 = *(a1 + 40);
  dispatch_after(v7, &_dispatch_main_q, v8);
}

id *sub_10002766C(id *result)
{
  if ((*(*(result[5] + 1) + 24) & 1) == 0)
  {
    return [result[4] failedCurrentTestWithFailure:@"Details view's widgets took too long to load"];
  }

  return result;
}

void sub_100027778(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 px_descendantViewControllerWithClass:objc_opt_class()];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = dispatch_time(0, 2000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10002789C;
    block[3] = &unk_10005B350;
    v8 = *(a1 + 40);
    v7 = v4;
    dispatch_after(v5, &_dispatch_main_q, block);
  }

  else
  {
    [*(a1 + 32) failedCurrentTestWithFailure:{@"Top viewController is not a libraryViewController:%@", v4}];
  }
}

void sub_100027CA0(uint64_t a1, void *a2)
{
  v3 = [a2 navigationController];
  v9 = [v3 topViewController];

  v4 = [v9 presentedViewController];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 topViewController];
    }

    else
    {
      v5 = v4;
    }

    v7 = v5;

    v6 = v7;
  }

  else
  {
    v6 = v9;
  }

  v10 = v6;
  if (*(a1 + 48) == 1)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [*(a1 + 32) failedCurrentTestWithFailure:{@"Expected one up view controller, got %@", v10}];
    }
  }

  v8 = *(a1 + 49);
  (*(*(a1 + 40) + 16))();
}

void sub_100027DC0(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 collectionListFetchResult];
    v6 = v5;
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      [v5 lastObject];
    }

    else
    {
      [v5 firstObject];
    }
    v8 = ;
    v9 = [v4 assetsInAssetCollection:v8];
    v10 = v9;
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      [v9 lastObject];
    }

    else
    {
      [v9 firstObject];
    }
    v14 = ;
    v15 = [*(a1 + 32) valueForKey:@"assetMediaType"];
    if (v15)
    {
      if (*(*(*(a1 + 56) + 8) + 24) == 1)
      {
        v16 = [v10 count] - 1;
      }

      else
      {
        v16 = 0;
      }

      v18 = [v14 mediaType];
      if (v18 != [v15 unsignedIntegerValue] && (v16 & 0x8000000000000000) == 0)
      {
        while (v16 < [v10 count])
        {
          v17 = [v10 objectAtIndexedSubscript:v16];

          if (*(*(*(a1 + 56) + 8) + 24))
          {
            --v16;
          }

          else
          {
            ++v16;
          }

          v19 = [v17 mediaType];
          if (v19 != [v15 unsignedIntegerValue])
          {
            v14 = v17;
            if ((v16 & 0x8000000000000000) == 0)
            {
              continue;
            }
          }

          goto LABEL_29;
        }
      }

      v17 = v14;
LABEL_29:
      v20 = [v17 mediaType];
      if (v20 != [v15 unsignedIntegerValue])
      {
        v21 = PLPPTGetLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v15;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "no assets with mediaType = %@", buf, 0xCu);
        }

        [*(a1 + 40) failedCurrentTest];
      }
    }

    else
    {
      v17 = v14;
    }

    if (v17)
    {
      [v4 navigateToPhoto:v17 inAssetContainer:v8 animated:1];
      v22 = dispatch_time(0, 1000000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100028820;
      block[3] = &unk_10005B350;
      v61 = *(a1 + 48);
      v60 = v4;
      dispatch_after(v22, &_dispatch_main_q, block);
    }

    else
    {
      v23 = PLPPTGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "no initial asset to navigate to", buf, 2u);
      }

      [*(a1 + 40) failedCurrentTest];
    }

    goto LABEL_106;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v7 = [v4 viewModel];
    v6 = [v7 currentDataSource];

    if (*(a1 + 64))
    {
      [v6 lastAssetCollection];
    }

    else
    {
      [v6 firstAssetCollection];
    }
    v8 = ;
    v24 = [PXAssetCollectionReference alloc];
    v25 = PXSimpleIndexPathNull[1];
    *buf = PXSimpleIndexPathNull[0];
    v65 = v25;
    v26 = [v24 initWithAssetCollection:v8 keyAssetReference:0 indexPath:buf];
    *buf = 0u;
    v65 = 0u;
    if (v6)
    {
      [v6 indexPathForAssetCollectionReference:v26];
    }

    *v62 = *buf;
    v63 = v65;
    v27 = [v6 assetsInSectionIndexPath:v62];
    v28 = v27;
    if (*(a1 + 64))
    {
      [v27 lastObject];
    }

    else
    {
      [v27 firstObject];
    }
    v29 = ;
    v30 = [*(a1 + 32) valueForKey:@"assetMediaType"];
    v52 = v26;
    if (v30)
    {
      if (*(a1 + 64) == 1)
      {
        v31 = [v28 count] - 1;
      }

      else
      {
        v31 = 0;
      }

      v34 = [v29 mediaType];
      if (v34 != [v30 unsignedIntegerValue] && (v31 & 0x8000000000000000) == 0)
      {
        while (v31 < [v28 count])
        {
          v33 = [v28 objectAtIndex:v31];

          if (*(a1 + 64))
          {
            --v31;
          }

          else
          {
            ++v31;
          }

          v35 = [v33 mediaType];
          if (v35 != [v30 unsignedIntegerValue])
          {
            v29 = v33;
            if ((v31 & 0x8000000000000000) == 0)
            {
              continue;
            }
          }

          goto LABEL_63;
        }
      }

      v33 = v29;
LABEL_63:
      v36 = [v33 mediaType];
      if (v36 != [v30 unsignedIntegerValue])
      {
        v37 = PLPPTGetLog();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          *v62 = 138412290;
          *&v62[4] = v30;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "no assets with mediaType = %@", v62, 0xCu);
        }

        [*(a1 + 40) failedCurrentTest];
      }
    }

    else
    {
      v33 = v29;
    }

    if (v33)
    {
      v38 = *(a1 + 65);
      v56[0] = _NSConcreteStackBlock;
      v56[1] = 3221225472;
      v56[2] = sub_100028834;
      v56[3] = &unk_10005B378;
      v58 = *(a1 + 48);
      v57 = v4;
      [v57 ppt_navigateToAsset:v33 inAssetContainer:v8 revealInOneUp:v38 completionHandler:v56];

LABEL_105:
LABEL_106:

      goto LABEL_107;
    }

    v39 = PLPPTGetLog();
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
LABEL_104:

      [*(a1 + 40) failedCurrentTest];
      goto LABEL_105;
    }

    *v62 = 0;
LABEL_103:
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "no initial asset to navigate to", v62, 2u);
    goto LABEL_104;
  }

  v11 = [v3 px_descendantViewControllerWithClass:objc_opt_class()];

  if (v11)
  {
    v4 = [v3 px_descendantViewControllerWithClass:objc_opt_class()];
    v12 = [v4 viewProvider];
    v13 = [v12 viewModel];
    v6 = [v13 currentDataSource];

    if (*(a1 + 64))
    {
      [v6 lastAssetCollection];
    }

    else
    {
      [v6 firstAssetCollection];
    }
    v8 = ;
    v40 = [PXAssetCollectionReference alloc];
    v41 = PXSimpleIndexPathNull[1];
    *buf = PXSimpleIndexPathNull[0];
    v65 = v41;
    v42 = [v40 initWithAssetCollection:v8 keyAssetReference:0 indexPath:buf];
    *buf = 0u;
    v65 = 0u;
    if (v6)
    {
      [v6 indexPathForAssetCollectionReference:v42];
    }

    *v62 = *buf;
    v63 = v65;
    v43 = [v6 assetsInSectionIndexPath:v62];
    v28 = v43;
    if (*(a1 + 64))
    {
      [v43 lastObject];
    }

    else
    {
      [v43 firstObject];
    }
    v44 = ;
    v30 = [*(a1 + 32) valueForKey:@"assetMediaType"];
    v52 = v42;
    if (v30)
    {
      if (*(a1 + 64) == 1)
      {
        v45 = [v28 count] - 1;
      }

      else
      {
        v45 = 0;
      }

      v46 = [v44 mediaType];
      if (v46 != [v30 unsignedIntegerValue] && (v45 & 0x8000000000000000) == 0)
      {
        while (v45 < [v28 count])
        {
          v33 = [v28 objectAtIndex:v45];

          if (*(a1 + 64))
          {
            --v45;
          }

          else
          {
            ++v45;
          }

          v47 = [v33 mediaType];
          if (v47 != [v30 unsignedIntegerValue])
          {
            v44 = v33;
            if ((v45 & 0x8000000000000000) == 0)
            {
              continue;
            }
          }

          goto LABEL_92;
        }
      }

      v33 = v44;
LABEL_92:
      v48 = [v33 mediaType];
      if (v48 != [v30 unsignedIntegerValue])
      {
        v49 = PLPPTGetLog();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          *v62 = 138412290;
          *&v62[4] = v30;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "no assets with mediaType = %@", v62, 0xCu);
        }

        [*(a1 + 40) failedCurrentTest];
      }
    }

    else
    {
      v33 = v44;
    }

    if (v33)
    {
      if (*(a1 + 65))
      {
        v50 = 1;
      }

      else
      {
        v50 = 2;
      }

      v51 = [[PXProgrammaticNavigationDestination alloc] initWithType:7 revealMode:v50 asset:v33 assetCollection:v8];
      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_100028848;
      v53[3] = &unk_10005B378;
      v55 = *(a1 + 48);
      v54 = v4;
      [v54 navigateToDestination:v51 options:2 completionHandler:v53];

      goto LABEL_105;
    }

    v39 = PLPPTGetLog();
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_104;
    }

    *v62 = 0;
    goto LABEL_103;
  }

  v32 = PLPPTGetLog();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "unexpected view controller class %@", buf, 0xCu);
  }

  [*(a1 + 40) failedCurrentTest];
LABEL_107:
}

void sub_100028900(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = v6;
    if (*(a1 + 48) != 1)
    {
LABEL_11:
      v18 = dispatch_time(0, 2000000000);
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100028DF4;
      v22[3] = &unk_10005B2D8;
      v19 = *(a1 + 40);
      v23 = v7;
      v24 = v19;
      v25 = a3;
      v20 = v7;
      dispatch_after(v18, &_dispatch_main_q, v22);

      goto LABEL_15;
    }

    v8 = [v6 browsingSession];
    v9 = [v8 viewModel];

    v10 = [v9 assetsDataSource];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v40 = 0x3032000000;
    v41 = sub_100021094;
    v42 = sub_1000210A4;
    v43 = 0;
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = sub_100021094;
    v37 = sub_1000210A4;
    v38 = 0;
    v11 = [NSIndexPath indexPathForItem:0 inSection:0];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100028D20;
    v29[3] = &unk_10005B2B0;
    v12 = v10;
    v30 = v12;
    p_buf = &buf;
    v32 = &v33;
    [v12 enumerateIndexPathsStartingAtIndexPath:v11 reverseDirection:0 usingBlock:v29];

    v13 = v34[5];
    if (!v13)
    {
      v13 = *(*(&buf + 1) + 40);
      if (!v13)
      {
        if (([v12 isEmpty] & 1) == 0)
        {
          v14 = [NSIndexPath indexPathForItem:0 inSection:0];
          goto LABEL_8;
        }

        v13 = 0;
      }
    }

    v14 = v13;
LABEL_8:
    v15 = v14;
    if (v14)
    {
      v16 = [v12 assetReferenceAtIndexPath:v14];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_100028DE8;
      v26[3] = &unk_10005C190;
      v27 = v9;
      v17 = v16;
      v28 = v17;
      [v27 performChanges:v26];
    }

    _Block_object_dispose(&v33, 8);
    _Block_object_dispose(&buf, 8);

    goto LABEL_11;
  }

  v21 = PLPPTGetLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v5;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "unexpected view controller class %@", &buf, 0xCu);
  }

  [*(a1 + 32) failedCurrentTest];
LABEL_15:
}

void sub_100028CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_100028D20(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  v6 = [*(a1 + 32) assetAtIndexPath:?];
  v7 = [v6 location];

  if (v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    [v6 faceAreaMinX];
    if (v8 != 0.0)
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
      *a3 = 1;
    }
  }
}