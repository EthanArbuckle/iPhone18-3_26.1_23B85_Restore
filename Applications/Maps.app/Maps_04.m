unint64_t sub_1000DCFFC()
{
  result = qword_101909AA0;
  if (!qword_101909AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101909AA0);
  }

  return result;
}

uint64_t sub_1000DD0C8()
{
  v1 = v0 + OBJC_IVAR____TtC4Maps33CuratedGuidesActivityDataProvider_configuration;
  v3 = *(v0 + OBJC_IVAR____TtC4Maps33CuratedGuidesActivityDataProvider_configuration);
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = v3;
  if (v4)
  {
    v6 = [v5 publisherAttribution];
    if (v6 && (v7 = [v6 displayName], swift_unknownObjectRelease(), v7))
    {
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1000DE4F4(v3, v2, 1);
    }

    else
    {
      sub_1000DE4F4(v3, v2, 1);
      return 0;
    }
  }

  else
  {
    v9 = v5;
    v10 = [v5 collectionTitle];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return v8;
}

uint64_t sub_1000DD2F4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC4Maps33CuratedGuidesActivityDataProvider_configuration;
  v4 = *(v1 + OBJC_IVAR____TtC4Maps33CuratedGuidesActivityDataProvider_configuration);
  if (*(v3 + 16))
  {
    v5 = *(v3 + 8);
    v6 = [v4 publisherURL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000DE4F4(v4, v5, 1);
  }

  else
  {
    v7 = v4;
    v8 = [v7 collectionURL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9 = type metadata accessor for URL();
  v10 = *(*(v9 - 8) + 56);

  return v10(a1, 0, 1, v9);
}

void sub_1000DD4A0(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC4Maps33CuratedGuidesActivityDataProvider_configuration];
  v6 = *&v2[OBJC_IVAR____TtC4Maps33CuratedGuidesActivityDataProvider_configuration + 8];
  v7 = v2[OBJC_IVAR____TtC4Maps33CuratedGuidesActivityDataProvider_configuration + 16];
  v8 = sub_1000DD0C8();
  v10 = v9;
  v11 = [v2 linkMetadata];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = v5;
  *(v12 + 40) = v6;
  *(v12 + 48) = v7;
  *(v12 + 56) = v8;
  *(v12 + 64) = v10;
  *(v12 + 72) = v11;
  v15[4] = sub_1000DE540;
  v15[5] = v12;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_100362F2C;
  v15[3] = &unk_101602760;
  v13 = _Block_copy(v15);

  sub_1000DE578(v5, v6, v7);
  v14 = v11;

  [v2 fetchActivityURLWithCompletion:v13];
  _Block_release(v13);
}

void sub_1000DD600(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, void), uint64_t a4, void *a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9)
{
  v41 = a7;
  v15 = sub_1000CE6B8(&unk_101909B00);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v38 - v17;
  if (a2)
  {
    (a3)(0, 0, a2, v16);
  }

  else
  {
    v38 = a6;
    v39 = a9;
    v40 = a4;
    v19 = a5;
    if (v41)
    {
      v20 = HTMLStringForMetadata();
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      a3(v21, v23, 0);

      v24 = v38;

      sub_1000DE4F4(a5, v24, 1);
    }

    else
    {
      v25 = v19;
      sub_1000DE5B8(a1, v18);
      v26 = type metadata accessor for URL();
      v27 = *(v26 - 8);
      v28 = (*(v27 + 48))(v18, 1, v26);
      v30 = v25;
      v31 = 0;
      if (v28 != 1)
      {
        URL._bridgeToObjectiveC()(v29);
        v31 = v32;
        (*(v27 + 8))(v18, v26);
      }

      if (v39)
      {
        v33 = String._bridgeToObjectiveC()();
      }

      else
      {
        v33 = 0;
      }

      v34 = [objc_opt_self() createHTMLTemplateForCuratedGuide:v30 url:v31 title:v33];

      if (v34)
      {
        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v36;
      }

      else
      {
        v35 = 0;
        v37 = 0;
      }

      a3(v35, v37, 0);
    }
  }
}

uint64_t sub_1000DD938(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC4Maps33CuratedGuidesActivityDataProvider_thumbnailGenerator);
    if (v6)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = a1;
      *(v7 + 24) = a2;
      aBlock[4] = sub_1000DF024;
      aBlock[5] = v7;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100113C68;
      aBlock[3] = &unk_1016028A0;
      v8 = _Block_copy(aBlock);
      v9 = v6;

      [v9 loadThumbnailIfNeededWithCompletion:v8];

      _Block_release(v8);
      v5 = v9;
    }
  }

  return 0;
}

uint64_t sub_1000DDA70(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v11 = *(v19 - 8);
  __chkstk_darwin(v19);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100014C84(0, &qword_10190B4F0);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a3;
  v15[4] = a4;
  v15[5] = a2;
  aBlock[4] = sub_1000DF02C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100039C64;
  aBlock[3] = &unk_1016028F0;
  v16 = _Block_copy(aBlock);
  v17 = a1;

  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000DB364();
  sub_1000CE6B8(&unk_10190B500);
  sub_1000DB3BC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v20 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v19);
}

void sub_1000DDD28(void *a1, void (*a2)(uint64_t, unint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v11 = a1;
    v6 = UIImagePNGRepresentation(v11);
    if (v6)
    {
      v7 = v6;
      v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0xF000000000000000;
    }

    a2(v8, v10, a4);
    sub_1000D41A0(v8, v10);
  }
}

void sub_1000DDDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && a5)
  {
    v12 = objc_opt_self();
    swift_unknownObjectRetain();
    sub_1000CD9D4(a1);
    v13 = [v12 sharedImageManager];
    v14 = [a5 url];
    if (v14)
    {
      v15 = v14;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      URL._bridgeToObjectiveC()(v16);
      v18 = v17;
      (*(v9 + 8))(v11, v8);
      v19 = swift_allocObject();
      *(v19 + 16) = a1;
      *(v19 + 24) = a2;
      aBlock[4] = sub_1000DF01C;
      aBlock[5] = v19;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100101634;
      aBlock[3] = &unk_101602850;
      v20 = _Block_copy(aBlock);

      [v13 loadAppImageAtURL:v18 completionHandler:v20];
      _Block_release(v20);
      swift_unknownObjectRelease();

      sub_1000588AC(a1);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1000DE004(NSData *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  if (a1)
  {
    a1 = UIImagePNGRepresentation(a1);
    if (a1)
    {
      v6 = a1;
      v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_1000D41B4(v7, v9);
      v10 = isa;
      a1 = isa;
    }
  }

  v12 = a1;
  a5();
  swift_unknownObjectRelease();
}

uint64_t sub_1000DE0C0(uint64_t a1, void *aBlock, uint64_t ObjCClassMetadata, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v7 = sub_1000DF014;
    if (!ObjCClassMetadata)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  if (ObjCClassMetadata)
  {
LABEL_3:
    ObjCClassMetadata = swift_getObjCClassMetadata();
  }

LABEL_4:
  if (a4)
  {
    a4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6(v7, v8, ObjCClassMetadata, a4);

  sub_1000588AC(v7);
}

void sub_1000DE1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

__n128 sub_1000DE4C8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

void sub_1000DE4F4(void *a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }
}

id sub_1000DE578(void *a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v5 = a1;

    a1 = v5;
    v3 = vars8;
  }

  return a1;
}

uint64_t sub_1000DE5B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&unk_101909B00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1000DE628(__objc2_prop *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UTType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(LPMapCollectionMetadata) init];
  v52 = a1;
  v9 = [(__objc2_prop *)a1 collectionTitle];
  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  [v8 setName:v9];

  v10 = [objc_allocWithZone(NSItemProvider) init];
  static UTType.png.getter();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  NSItemProvider.registerDataRepresentation(for:visibility:loadHandler:)();

  (*(v5 + 8))(v7, v4);

  v11 = *(v2 + OBJC_IVAR____TtC4Maps33CuratedGuidesActivityDataProvider_thumbnailGenerator);
  if (v11)
  {
    v12 = v11;
    v13 = [v12 placeholderImage];
    v14 = [objc_allocWithZone(LPImage) initWithPlatformImage:v13];

    v15 = [objc_allocWithZone(LPImage) initWithItemProvider:v10 properties:0 placeholderImage:v14];
    [v8 setIcon:v15];
  }

  v16 = v52;
  v17 = [(__objc2_prop *)v52 numberOfItems];
  if (HIDWORD(v17))
  {
    goto LABEL_30;
  }

  [v8 setNumberOfItems:v17];
  if ((*(v2 + OBJC_IVAR____TtC4Maps33CuratedGuidesActivityDataProvider_configuration + 16) & 1) == 0)
  {
    v2 = *(v2 + OBJC_IVAR____TtC4Maps33CuratedGuidesActivityDataProvider_configuration + 8);
    if (v2)
    {
      v51 = v8;
      aBlock[0] = _swiftEmptyArrayStorage;
      v8 = (v2 & 0xFFFFFFFFFFFFFF8);
      v50 = v10;
      if (v2 >> 62)
      {
        goto LABEL_46;
      }

      for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v19 = 0;
        v10 = (v2 & 0xC000000000000001);
        v16 = &stru_10185C000;
        while (1)
        {
          if (i == v19)
          {
            sub_100014C84(0, &unk_101909B70);
            isa = Array._bridgeToObjectiveC()().super.isa;

            v8 = v51;
            [v51 setAddresses:isa];

            v10 = v50;
            v16 = v52;
            goto LABEL_22;
          }

          if (v10)
          {
            v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v19 >= v8[2])
            {
              goto LABEL_29;
            }

            v20 = *(v2 + 8 * v19 + 32);
          }

          v21 = v20;
          v22 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          v23 = [v20 _cnPostalAddress];

          ++v19;
          if (v23)
          {
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v19 = v22;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_32;
        }

LABEL_24:
        if ((v2 & 0xC000000000000001) != 0)
        {
          break;
        }

        if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v26 = *(v2 + 32);
          swift_unknownObjectRetain();
LABEL_27:

          v27 = kRichPreviewSnapshotSize[0];
          v28 = kRichPreviewSnapshotSize[1];
          v29 = objc_opt_self();
          swift_unknownObjectRetain();
          v30 = [v29 defaultPhotoOptionsWithAllowSmaller:0];
          v31 = [v26 bestPhotoForFrameSize:v30 displayScale:v27 options:{v28, 3.0}];
          swift_unknownObjectRelease();

          goto LABEL_33;
        }

        __break(1u);
LABEL_46:
        ;
      }

      v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_27;
    }
  }

LABEL_22:
  v25 = [(__objc2_prop *)v16 photos];
  sub_1000CE6B8(&qword_10190ABA0);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_31;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_24;
  }

LABEL_32:

  v31 = 0;
  v27 = kRichPreviewSnapshotSize[0];
  v28 = kRichPreviewSnapshotSize[1];
LABEL_33:
  v32 = [objc_opt_self() sharedInstance];
  v33 = [v32 joeColorForCuratedCollection:v16];

  v54.width = v27;
  v54.height = v28;
  UIGraphicsBeginImageContextWithOptions(v54, 0, 3.0);
  [v33 set];
  v55.origin.x = 0.0;
  v55.origin.y = 0.0;
  v55.size.width = v27;
  v55.size.height = v28;
  UIRectFill(v55);
  v34 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  if (v34)
  {
    v35 = swift_allocObject();
    *(v35 + 16) = v31;
    aBlock[4] = sub_1000DF00C;
    aBlock[5] = v35;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000DE0C0;
    aBlock[3] = &unk_1016027D8;
    v36 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    v37 = imageWithPlaceholderAndLoadHandler();
    _Block_release(v36);
    v38 = v37;
    [v8 setImage:v38];
    [v8 setDarkImage:v38];
  }

  v39 = [(__objc2_prop *)v16 publisher];
  if (v39)
  {
    v40 = v39;
    v41 = [v39 publisherAttribution];
    if (v41)
    {
      v42 = v41;
      v43 = [v41 displayName];
      if (!v43)
      {

        swift_unknownObjectRelease();
        goto LABEL_43;
      }

      v44 = v43;
      [v8 setPublisherName:v43];
      v45 = [objc_opt_self() sharedInstance];
      v46 = [v45 iconForPublisherNamed:v44 usingId:objc_msgSend(v42 usingContentScale:"iconIdentifier") usingSizeGroup:5 isNightMode:{0, 3.0}];

      if (v46)
      {
        v47 = [objc_allocWithZone(LPImage) initWithPlatformImage:v46];
        [v8 setPublisherIcon:v47];
      }

      swift_unknownObjectRelease();
    }
  }

LABEL_43:
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v8;
}

unint64_t sub_1000DEE5C(void *a1)
{
  v2 = [a1 publisherAttribution];
  v3 = [objc_allocWithZone(LPMapCollectionPublisherMetadata) init];
  if (!v2)
  {
    return v3;
  }

  v4 = [v2 displayName];
  [v3 setName:v4];

  v5 = [v2 displayName];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_opt_self() sharedInstance];
    v8 = [v7 iconForPublisherNamed:v6 usingId:objc_msgSend(v2 usingContentScale:"iconIdentifier") usingSizeGroup:5 isNightMode:{0, 3.0}];

    if (v8)
    {
      v9 = [objc_allocWithZone(LPImage) initWithPlatformImage:v8];
      [v3 setIcon:v9];
    }
  }

  result = [a1 totalCollectionCount];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(result))
  {
    [v3 setNumberOfPublishedCollections:result];
    swift_unknownObjectRelease();
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000DF038(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000DF080(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

id sub_1000DF108()
{
  v1 = OBJC_IVAR____TtC4Maps32AirQualityConditionsDataProvider_updatingTimer;
  if (*&v0[OBJC_IVAR____TtC4Maps32AirQualityConditionsDataProvider_updatingTimer])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
    *&v0[v1] = 0;
    swift_unknownObjectRelease();
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for AirQualityConditionsDataProvider();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1000DF310(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC4Maps32AirQualityConditionsDataProvider_enabled) != (a1 & 1))
  {
    v2 = v1;
    if (*(v1 + OBJC_IVAR____TtC4Maps32AirQualityConditionsDataProvider_enabled))
    {
      if (qword_101906538 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_100021540(v3, qword_10195FA88);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v4, v5, "Enabling air quality conditions data provider", v6, 2u);
      }

      sub_1000DF98C();
    }

    else
    {
      if (qword_101906538 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_100021540(v7, qword_10195FA88);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "Disabling air quality conditions data provider", v10, 2u);
      }

      v11 = OBJC_IVAR____TtC4Maps32AirQualityConditionsDataProvider_updatingTimer;
      if (*(v2 + OBJC_IVAR____TtC4Maps32AirQualityConditionsDataProvider_updatingTimer))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        OS_dispatch_source.cancel()();
        swift_unknownObjectRelease();
        *(v2 + v11) = 0;

        swift_unknownObjectRelease();
      }
    }
  }
}

uint64_t sub_1000DF544()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v4 = *(v12 - 8);
  __chkstk_darwin(v12);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100014C84(0, &qword_10190B4F0);
  v7 = static OS_dispatch_queue.main.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_1000E1704;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100039C64;
  aBlock[3] = &unk_101602A98;
  v9 = _Block_copy(aBlock);
  v10 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100041288(&qword_1019097D0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000CE6B8(&unk_10190B500);
  sub_1000414C8(&qword_1019097E0, &unk_10190B500);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);

  (*(v13 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v12);
}

uint64_t sub_1000DF838(uint64_t a1)
{
  v2 = [*(a1 + OBJC_IVAR____TtC4Maps32AirQualityConditionsDataProvider_observers) allObjects];
  sub_1000CE6B8(&unk_101909C30);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    v6 = OBJC_IVAR____TtC4Maps32AirQualityConditionsDataProvider_airQualityConditions;
    while ((v3 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      [v7 airQualityConditionsDataProviderDidChangeAirQualityConditions:*(a1 + v6)];
      swift_unknownObjectRelease();
      ++v5;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v7 = *(v3 + 8 * v5 + 32);
    swift_unknownObjectRetain();
    v8 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

void sub_1000DF98C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v58 = *(v1 - 8);
  __chkstk_darwin(v1);
  v57 = v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v56 = *(v3 - 8);
  __chkstk_darwin(v3);
  v55 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for DispatchTimeInterval();
  v54 = *(v60 - 8);
  v5 = __chkstk_darwin(v60);
  v53 = (v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v8 = (v48 - v7);
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  v62 = v9;
  v63 = v10;
  v11 = __chkstk_darwin(v9);
  v13 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v61 = v48 - v14;
  v15 = type metadata accessor for Date();
  v52 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v19 = *(v18 - 1);
  __chkstk_darwin(v18);
  v21 = v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC4Maps32AirQualityConditionsDataProvider_enabled) != 1)
  {
    return;
  }

  v50 = v3;
  v51 = v1;
  v22 = OBJC_IVAR____TtC4Maps32AirQualityConditionsDataProvider_updatingTimer;
  v49 = *(v0 + OBJC_IVAR____TtC4Maps32AirQualityConditionsDataProvider_updatingTimer);
  v59 = v0;
  if (v49 || (v48[1] = sub_100014C84(0, &unk_101909C10), aBlock[0] = &_swiftEmptyArrayStorage, v48[0] = sub_100041288(&unk_101918E60, &type metadata accessor for OS_dispatch_source.TimerFlags), sub_1000CE6B8(&unk_101909C20), sub_1000414C8(&qword_101918E70, &unk_101909C20), dispatch thunk of SetAlgebra.init<A>(_:)(), sub_100014C84(0, &qword_10190B4F0), v23 = static OS_dispatch_queue.main.getter(), v24 = static OS_dispatch_source.makeTimerSource(flags:queue:)(), v23, (*(v19 + 8))(v21, v18), *(v59 + v22) = v24, swift_unknownObjectRelease(), v0 = v59, *(v59 + v22)))
  {
    v25 = *(v0 + OBJC_IVAR____TtC4Maps32AirQualityConditionsDataProvider_airQualityConditions);
    if (v25)
    {
      swift_unknownObjectRetain();
      v26 = [v25 expirationDate];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      Date.timeIntervalSinceNow.getter();
      v28 = v27;
      (*(v52 + 8))(v17, v15);
      if (v28 + 60.0 > 60.0)
      {
        v29 = v28 + 60.0;
      }

      else
      {
        v29 = 60.0;
      }
    }

    else
    {
      swift_unknownObjectRetain();
      v29 = 60.0;
    }

    static DispatchTime.now()();
    if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v29 > -9.22337204e18)
    {
      if (v29 < 9.22337204e18)
      {
        *v8 = v29;
        v30 = v54;
        v21 = *(v54 + 13);
        v31 = v60;
        (v21)(v8, enum case for DispatchTimeInterval.seconds(_:), v60);
        + infix(_:_:)();
        v18 = v30[1];
        (v18)(v8, v31);
        v32 = *(v63 + 8);
        v63 += 8;
        v54 = v32;
        v32(v13, v62);
        if (qword_101906538 == -1)
        {
LABEL_13:
          v33 = type metadata accessor for Logger();
          sub_100021540(v33, qword_10195FA88);
          v34 = Logger.logObject.getter();
          v35 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            *v36 = 134217984;
            *(v36 + 4) = v29;
            _os_log_impl(&_mh_execute_header, v34, v35, "Scheduling air quality conditions refresh in %f seconds", v36, 0xCu);
          }

          swift_getObjectType();
          v37 = v60;
          (v21)(v8, enum case for DispatchTimeInterval.never(_:), v60);
          v38 = v53;
          *v53 = 30;
          (v21)(v38, enum case for DispatchTimeInterval.nanoseconds(_:), v37);
          v39 = v61;
          OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
          (v18)(v38, v37);
          (v18)(v8, v37);
          v40 = swift_allocObject();
          swift_unknownObjectWeakInit();
          aBlock[4] = sub_1000E16FC;
          aBlock[5] = v40;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100039C64;
          aBlock[3] = &unk_101602A48;
          v41 = _Block_copy(aBlock);

          v42 = v55;
          j___s8Dispatch0A3QoSV11unspecifiedACvgZ();
          v43 = v57;
          sub_100059410();
          OS_dispatch_source.setEventHandler(qos:flags:handler:)();
          _Block_release(v41);
          (*(v58 + 8))(v43, v51);
          (*(v56 + 8))(v42, v50);

          if (v49)
          {
            v54(v39, v62);
            swift_unknownObjectRelease();
          }

          else
          {
            OS_dispatch_source.resume()();
            swift_unknownObjectRelease();
            v54(v39, v62);
          }

          return;
        }

LABEL_27:
        swift_once();
        goto LABEL_13;
      }

LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    __break(1u);
    goto LABEL_26;
  }

  if (qword_101906538 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  sub_100021540(v44, qword_10195FA88);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&_mh_execute_header, v45, v46, "Failed to create timer to refresh air quality conditions", v47, 2u);
  }
}

void sub_1000E0370()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC4Maps32AirQualityConditionsDataProvider_lastSavedLocation);
    if (v2)
    {
      v3 = qword_101906538;
      v4 = v2;
      if (v3 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_100021540(v5, qword_10195FA88);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "Scheduled air quality conditions refresh", v8, 2u);
      }

      sub_1000E04B4(v4);
    }

    else
    {
      v4 = Strong;
    }
  }
}

uint64_t sub_1000E04B4(void *a1)
{
  v2 = v1;
  v4 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100014C84(0, &qword_10190B4F0);
  *v10 = static OS_dispatch_queue.main.getter();
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v11 = _dispatchPreconditionTest(_:)();
  result = (*(v8 + 8))(v10, v7);
  if (v11)
  {
    v13 = [objc_opt_self() sharedManager];
    v14 = [v13 shouldShowAirQualityConditions];

    if (v14 && *(v2 + OBJC_IVAR____TtC4Maps32AirQualityConditionsDataProvider_enabled) == 1)
    {
      v15 = type metadata accessor for TaskPriority();
      (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
      v16 = swift_allocObject();
      v16[2] = 0;
      v16[3] = 0;
      v16[4] = v2;
      v16[5] = a1;
      v17 = v2;
      v18 = a1;
      sub_10050D2C8(0, 0, v6, &unk_1011E4D20, v16);
    }

    else
    {
      return sub_10004E7C8(0);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000E0724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = type metadata accessor for Date();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  v7 = type metadata accessor for WeatherMetadata();
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v5[12] = v8;
  v5[13] = *(v8 - 8);
  v5[14] = swift_task_alloc();
  v9 = type metadata accessor for AirQualityScaleCategory();
  v5[15] = v9;
  v5[16] = *(v9 - 8);
  v5[17] = swift_task_alloc();
  v10 = type metadata accessor for AirQualityScale();
  v5[18] = v10;
  v5[19] = *(v10 - 8);
  v5[20] = swift_task_alloc();
  v11 = type metadata accessor for AirQuality();
  v5[21] = v11;
  v5[22] = *(v11 - 8);
  v5[23] = swift_task_alloc();
  v12 = sub_1000CE6B8(&qword_101909BE0);
  v5[24] = v12;
  v5[25] = *(v12 - 8);
  v5[26] = swift_task_alloc();
  v5[27] = sub_1000CE6B8(&qword_101909BE8);
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();

  return _swift_task_switch(sub_1000E0A60, 0, 0);
}

uint64_t sub_1000E0A60()
{
  if (qword_101906538 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[30] = sub_100021540(v1, qword_10195FA88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching air quality conditions", v4, 2u);
  }

  static WeatherQuery.airQuality.getter();
  v5 = swift_task_alloc();
  v0[31] = v5;
  *v5 = v0;
  v5[1] = sub_1000E0BE0;
  v6 = v0[29];
  v7 = v0[26];
  v8 = v0[27];
  v9 = v0[5];

  return WeatherService.weather<A>(for:including:)(v6, v9, v7, v8);
}

uint64_t sub_1000E0BE0()
{
  v2 = *(*v1 + 208);
  v3 = *(*v1 + 200);
  v4 = *(*v1 + 192);
  *(*v1 + 256) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1000E1328;
  }

  else
  {
    v5 = sub_1000E0D50;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000E0D50()
{
  v1 = v0[28];
  v2 = v0[21];
  v3 = v0[22];
  sub_1000E15D0(v0[29], v1);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1000E1640(v0[28]);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Failed to retrieve air quality conditions", v6, 2u);
    }

    v7 = v0[29];

    sub_10004E7C8(0);
  }

  else
  {
    v8 = v0[20];
    v9 = v0[18];
    v10 = v0[19];
    (*(v0[22] + 32))(v0[23], v0[28], v0[21]);
    AirQuality.scale.getter();
    v11 = AirQualityScale.isNumerical.getter();
    v12 = *(v10 + 8);
    v12(v8, v9);
    v14 = v0[16];
    v13 = v0[17];
    v15 = v0[15];
    if (v11)
    {
      sub_1000CE6B8(&qword_101909BF0);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1011E1D60;
      v0[2] = AirQuality.index.getter();
      sub_1000E16A8();
      *(v16 + 32) = BinaryInteger.formatted()();
      AirQuality.currentScaleCategory.getter();
      v17 = AirQualityScaleCategory.description.getter();
      v19 = v18;
      v54 = *(v14 + 8);
      v54(v13, v15);
      *(v16 + 48) = v17;
      *(v16 + 56) = v19;
      v0[3] = v16;
      sub_1000CE6B8(&unk_101909C00);
      sub_1000414C8(&qword_101918A70, &unk_101909C00);
      BidirectionalCollection<>.joined(separator:)();
    }

    else
    {
      AirQuality.currentScaleCategory.getter();
      AirQualityScaleCategory.description.getter();
      v54 = *(v14 + 8);
      v54(v13, v15);
    }

    result = AirQuality.index.getter();
    if (result < 0)
    {
      __break(1u);
      return result;
    }

    v21 = v12;
    v22 = v0[20];
    v24 = v0[17];
    v23 = v0[18];
    v43 = v0[15];
    v44 = v0[14];
    v52 = v0[13];
    v53 = v0[12];
    v25 = v0[10];
    v26 = v0[11];
    v45 = v0[8];
    v46 = v0[9];
    v50 = v0[7];
    v51 = v0[6];
    v48 = result;
    v49 = v0[5];
    AirQuality.scale.getter();
    v47 = AirQualityScale.isNumerical.getter();
    v21(v22, v23);
    AirQuality.currentScaleCategory.getter();
    AirQualityScaleCategory.color.getter();
    v54(v24, v43);
    AirQuality.learnMoreURL.getter();
    AirQuality.metadata.getter();
    WeatherMetadata.expirationDate.getter();
    (*(v25 + 8))(v26, v46);
    v27 = objc_allocWithZone(AirQualityConditions);
    v28 = String._bridgeToObjectiveC()();

    URL._bridgeToObjectiveC()(v29);
    v31 = v30;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v33 = String._bridgeToObjectiveC()();

    v34 = [v27 initWithAirQualityIndex:v48 isNumerical:v47 & 1 color:v28 learnMoreURL:v31 forLocation:v49 withExpirationDate:isa airQualityDescription:v33];

    (*(v50 + 8))(v45, v51);
    (*(v52 + 8))(v44, v53);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Successfully fetched air quality conditions", v37, 2u);
    }

    v7 = v0[29];
    v39 = v0[22];
    v38 = v0[23];
    v40 = v0[21];

    v41 = v34;
    sub_10004E7C8(v34);

    (*(v39 + 8))(v38, v40);
  }

  sub_1000E1640(v7);

  v42 = v0[1];

  return v42();
}

uint64_t sub_1000E1328()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1000E1400(uint64_t a1, void *a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC4Maps32AirQualityConditionsDataProvider_airQualityConditions);
  *(a1 + OBJC_IVAR____TtC4Maps32AirQualityConditionsDataProvider_airQualityConditions) = a2;
  v5 = a2;

  if (a2)
  {
    v6 = [v5 location];
    if (v6)
    {
      v7 = *(a1 + OBJC_IVAR____TtC4Maps32AirQualityConditionsDataProvider_lastSavedLocation);
      *(a1 + OBJC_IVAR____TtC4Maps32AirQualityConditionsDataProvider_lastSavedLocation) = v6;
    }
  }

  sub_1000DF544();
  sub_1000DF98C();
}

uint64_t sub_1000E1484()
{
  v0 = type metadata accessor for Logger();
  sub_100021578(v0, qword_10195FA88);
  sub_100021540(v0, qword_10195FA88);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000E1510(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10003AC4C;

  return sub_1000E0724(a1, v4, v5, v7, v6);
}

uint64_t sub_1000E15D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_101909BE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E1640(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_101909BE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000E16A8()
{
  result = qword_101909BF8;
  if (!qword_101909BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101909BF8);
  }

  return result;
}

BOOL sub_1000E1714()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Maps20PlaceSummaryTemplate_entries);
  if (v1 >> 62)
  {
LABEL_15:
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  do
  {
    v4 = v3;
    if (v2 == v3)
    {
      break;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v7 = [v5 containsPhotoCarouselUnit];

    v3 = v4 + 1;
  }

  while (!v7);
  return v2 != v4;
}

char *sub_1000E17F8()
{
  _StringGuts.grow(_:)(55);
  v1._countAndFlagsBits = 0x6E65644920202020;
  v1._object = 0xEF3A726569666974;
  String.append(_:)(v1);
  String.append(_:)(*(v0 + OBJC_IVAR____TtC4Maps20PlaceSummaryTemplate_identifier));
  v2._countAndFlagsBits = 0x746E45202020200ALL;
  v2._object = 0xEE00203A73656972;
  String.append(_:)(v2);
  v3 = *(v0 + OBJC_IVAR____TtC4Maps20PlaceSummaryTemplate_entries);
  if (v3 >> 62)
  {
LABEL_52:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v4)
  {
    goto LABEL_44;
  }

  result = sub_1005111C4(0, v4 & ~(v4 >> 63), 0);
  if (v4 < 0)
  {
    __break(1u);
    return result;
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  v57 = v4;
  v58 = v3 & 0xC000000000000001;
  v56 = v3 + 32;
  while (1)
  {
    v60 = v6;
    v61 = v7;
    v8 = v58 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v56 + 8 * v6);
    v59 = v8;
    v9 = *&v8[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_lines];
    v64 = *(v9 + 16);
    if (v64)
    {
      break;
    }

    v11 = 0;
    v12 = 0xE000000000000000;
LABEL_38:
    v42 = v11;

    v7 = v61;
    v44 = v61[2];
    v43 = v61[3];
    v3 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      sub_1005111C4((v43 > 1), v44 + 1, 1);
      v7 = v61;
    }

    v6 = v60 + 1;
    v7[2] = v3;
    v45 = &v7[2 * v44];
    v45[4] = v42;
    v45[5] = v12;
    if (v60 + 1 == v57)
    {
      goto LABEL_44;
    }
  }

  v10 = 0;
  v11 = 0;
  v62 = *&v8[OBJC_IVAR____TtC4Maps25PlaceSummaryTemplateEntry_lines];
  v63 = v9 + 32;
  v12 = 0xE000000000000000;
  while (1)
  {
    if (v10 >= *(v9 + 16))
    {
      __break(1u);
      goto LABEL_52;
    }

    v66 = v11;
    v67 = v12;
    v18 = *(v63 + 16 * v10);
    v65 = v10;

    v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v19);

    v20._countAndFlagsBits = 2108704;
    v20._object = 0xE300000000000000;
    String.append(_:)(v20);
    v71 = 0;
    v72 = 0xE000000000000000;
    if (!(v18 >> 62))
    {
      v21 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v21)
      {
        break;
      }

      goto LABEL_36;
    }

    v21 = _CocoaArrayWrapper.endIndex.getter();
    if (v21)
    {
      break;
    }

LABEL_36:

    v13 = 0;
    v14 = 0xE000000000000000;
LABEL_12:
    v15 = v14;
    String.append(_:)(*&v13);

    v16._countAndFlagsBits = 93;
    v16._object = 0xE100000000000000;
    String.append(_:)(v16);
    v3 = 0x656E694C5BLL;

    v17._countAndFlagsBits = 0x656E694C5BLL;
    v17._object = 0xE500000000000000;
    String.append(_:)(v17);

    v10 = v65 + 1;
    v11 = v66;
    v12 = v67;
    v9 = v62;
    if (v65 + 1 == v64)
    {
      goto LABEL_38;
    }
  }

  v22 = 0;
  while ((v18 & 0xC000000000000001) != 0)
  {
    v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v26 = __OFADD__(v22++, 1);
    if (v26)
    {
      goto LABEL_42;
    }

LABEL_24:
    v27 = v71 & 0xFFFFFFFFFFFFLL;
    if ((v72 & 0x2000000000000000) != 0)
    {
      v27 = HIBYTE(v72) & 0xF;
    }

    if (v27)
    {
      v28 = sub_100389BE0();
      v30 = v29;
      v68 = v29;
      v31 = *(v25 + 128);

      if (v31)
      {
        do
        {
          v32._countAndFlagsBits = sub_100389BE0();
          String.append(_:)(v32);

          v33._countAndFlagsBits = 540945696;
          v33._object = 0xE400000000000000;
          String.append(_:)(v33);

          v34 = *(v31 + 128);

          v31 = v34;
        }

        while (v34);
        v30 = v68;
      }

      v23._countAndFlagsBits = v28;
      v23._object = v30;
      String.append(_:)(v23);

      v24._countAndFlagsBits = 2108704;
      v24._object = 0xE300000000000000;
      String.append(_:)(v24);

      if (v22 == v21)
      {
        goto LABEL_11;
      }
    }

    else
    {

      v35 = sub_100389BE0();
      v37 = v36;
      v69 = v35;
      v70 = v36;
      v38 = *(v25 + 128);

      if (v38)
      {
        do
        {
          v39._countAndFlagsBits = sub_100389BE0();
          String.append(_:)(v39);

          v40._countAndFlagsBits = 540945696;
          v40._object = 0xE400000000000000;
          String.append(_:)(v40);

          v41 = *(v38 + 128);

          v38 = v41;
        }

        while (v41);
        v35 = v69;
        v37 = v70;
      }

      v71 = v35;
      v72 = v37;
      if (v22 == v21)
      {
LABEL_11:

        v13 = v71;
        v14 = v72;
        goto LABEL_12;
      }
    }
  }

  if (v22 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_43;
  }

  v25 = *(v18 + 32 + 8 * v22);

  v26 = __OFADD__(v22++, 1);
  if (!v26)
  {
    goto LABEL_24;
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  v46 = Array.description.getter();
  v48 = v47;

  v49._countAndFlagsBits = v46;
  v49._object = v48;
  String.append(_:)(v49);

  v50._object = 0x8000000101219F20;
  v50._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v50);
  v51 = sub_1000E1714();
  v52 = !v51;
  if (v51)
  {
    v53 = 5457241;
  }

  else
  {
    v53 = 20302;
  }

  if (v52)
  {
    v54 = 0xE200000000000000;
  }

  else
  {
    v54 = 0xE300000000000000;
  }

  v55 = v54;
  String.append(_:)(*&v53);

  return 0;
}

id sub_1000E1E0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaceSummaryTemplate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1000E1EB4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for PlaceSummaryTemplate();
  v7 = objc_allocWithZone(v6);
  if (String.count.getter() >= 1)
  {
    if (a3 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() >= 1)
      {
        goto LABEL_4;
      }
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
LABEL_4:
      v8 = &v7[OBJC_IVAR____TtC4Maps20PlaceSummaryTemplate_identifier];
      *v8 = a1;
      *(v8 + 1) = a2;
      *&v7[OBJC_IVAR____TtC4Maps20PlaceSummaryTemplate_entries] = a3;
      v10.receiver = v7;
      v10.super_class = v6;
      return objc_msgSendSuper2(&v10, "init");
    }
  }

  swift_deallocPartialClassInstance();
  return 0;
}

id sub_1000E1FA4(void *a1)
{
  v2 = type metadata accessor for NSFastEnumerationIterator();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  result = [a1 templateEntrys];
  if (result)
  {
    v8 = result;
    v9 = _swiftEmptyArrayStorage;
    v20 = _swiftEmptyArrayStorage;
    NSArray.makeIterator()();
    sub_1000E21E8();
    dispatch thunk of IteratorProtocol.next()();
    while (v19)
    {
      sub_1000D2BE0(&v18, v17);
      sub_10004E374(v17, v16);
      sub_1000E2240();
      swift_dynamicCast();
      v10 = sub_10022C618(v15);
      sub_10004E3D0(v17);
      if (v10)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v9 = v20;
      }

      dispatch thunk of IteratorProtocol.next()();
    }

    (*(v3 + 8))(v6, v2);
    result = [a1 templateId];
    if (result)
    {
      v11 = result;
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      return sub_1000E1EB4(v12, v14, v9);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1000E21E8()
{
  result = qword_101909C78;
  if (!qword_101909C78)
  {
    type metadata accessor for NSFastEnumerationIterator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101909C78);
  }

  return result;
}

unint64_t sub_1000E2240()
{
  result = qword_101909C80;
  if (!qword_101909C80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101909C80);
  }

  return result;
}

void *sub_1000E2320()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong searchPinsManager];

    if (v2)
    {
      v3 = [v2 searchResultsItemSource];
      if (v3)
      {
        v4 = v3;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v14 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v5 = [v2 singleSearchResultItemSource];
      if (v5)
      {
        v6 = v5;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v15 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v7 = [v2 droppedPinsItemSource];
      if (v7)
      {
        v8 = v7;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v16 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v9 = [v2 collectionPinsItemSource];
      if (v9)
      {
        v10 = v9;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v17 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v11 = [v2 parkedCarItemSource];
      if (v11)
      {
        v12 = v11;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      else
      {
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

unint64_t sub_1000E2690()
{
  result = qword_101909CF0;
  if (!qword_101909CF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101909CF0);
  }

  return result;
}

uint64_t sub_1000E26EC(void *a1)
{
  if ([a1 annotation])
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = v2;
      v4 = [v1 iosBasedChromeViewController];
      if (v4)
      {
        v5 = v4;
        v6 = [v4 appCoordinator];

        if (v6)
        {
          v7 = [objc_allocWithZone(PlaceCardItem) initWithSearchResult:v3];
          v8 = type metadata accessor for PlaceCardContextConfiguration();
          v9 = objc_allocWithZone(v8);
          v9[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_presentedModally] = 0;
          *&v9[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_placeCardItem] = v7;
          v9[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_shouldInsertInHistory] = 0;
          *&v9[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_excludedContent] = 0;
          v9[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_buildingMultistopRoute] = 0;
          v13.receiver = v9;
          v13.super_class = v8;
          v10 = v7;
          v11 = objc_msgSendSuper2(&v13, "init");
          [v6 displayPlaceCardWithConfiguration:{v11, v13.receiver, v13.super_class}];
        }
      }
    }

    swift_unknownObjectRelease();
  }

  return 1;
}

uint64_t sub_1000E28BC(uint64_t a1)
{
  v2 = v1;
  v4 = [v2 iosBasedChromeViewController];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 appCoordinator];

    if (v6)
    {
      v7 = [objc_allocWithZone(PlaceCardItem) initWithMapItem:a1];
      v8 = type metadata accessor for PlaceCardContextConfiguration();
      v9 = objc_allocWithZone(v8);
      v9[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_presentedModally] = 0;
      *&v9[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_placeCardItem] = v7;
      v9[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_shouldInsertInHistory] = 1;
      *&v9[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_excludedContent] = 0;
      v9[OBJC_IVAR____TtC4Maps29PlaceCardContextConfiguration_buildingMultistopRoute] = 0;
      v13.receiver = v9;
      v13.super_class = v8;
      v10 = v7;
      v11 = objc_msgSendSuper2(&v13, "init");
      [v6 displayPlaceCardWithConfiguration:{v11, v13.receiver, v13.super_class}];
    }
  }

  return 1;
}

uint64_t sub_1000E2A48(void *a1)
{
  v2 = [a1 personalizedItem];
  if (v2)
  {
    v3 = v2;
    if ([v2 respondsToSelector:"parkedCar"])
    {
      if ([v3 respondsToSelector:"parkedCar"])
      {
        v4 = [v3 parkedCar];
        if (v4)
        {
          v5 = v4;
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v7 = Strong;
            v8 = swift_allocObject();
            *(v8 + 16) = v5;
            *(v8 + 24) = v7;
            v13[4] = sub_1000E2E74;
            v13[5] = v8;
            v13[0] = _NSConcreteStackBlock;
            v13[1] = 1107296256;
            v13[2] = sub_100039C64;
            v13[3] = &unk_101602AE8;
            v9 = _Block_copy(v13);
            v10 = v5;
            v11 = v7;

            [v11 popToContext:v1 animated:1 completion:v9];

            swift_unknownObjectRelease();
            _Block_release(v9);

            return 1;
          }
        }
      }
    }

    swift_unknownObjectRelease();
  }

  return 1;
}

uint64_t VisitedPlacesLibraryContext.chromeDidSelectClusteredFeatureAnnotationsMarker(_:)(void *a1)
{
  result = [v1 iosBasedChromeViewController];
  if (result)
  {
    v4 = result;
    v5 = [result appCoordinator];

    if (v5)
    {
      v6 = type metadata accessor for ClusteredResultsContextConfiguration();
      v7 = objc_allocWithZone(v6);
      *&v7[OBJC_IVAR____TtC4Maps36ClusteredResultsContextConfiguration_labelMarker] = a1;
      v7[OBJC_IVAR____TtC4Maps36ClusteredResultsContextConfiguration_sortAlphabetically] = 1;
      v7[OBJC_IVAR____TtC4Maps36ClusteredResultsContextConfiguration_displayDistance] = 1;
      *&v7[OBJC_IVAR____TtC4Maps36ClusteredResultsContextConfiguration_originalSearchInfo] = 0;
      *&v7[OBJC_IVAR____TtC4Maps36ClusteredResultsContextConfiguration_currentLocation] = 0;
      v10.receiver = v7;
      v10.super_class = v6;
      v8 = a1;
      v9 = objc_msgSendSuper2(&v10, "init");
      [v5 displayClusteredResultsWithConfiguration:{v9, v10.receiver, v10.super_class}];
    }

    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000E2D8C(void *a1, void *a2)
{
  v4 = type metadata accessor for ParkedCarContextConfiguration();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC4Maps29ParkedCarContextConfiguration_parkedCar] = a1;
  *&v5[OBJC_IVAR____TtC4Maps29ParkedCarContextConfiguration_initialAction] = 0;
  v5[OBJC_IVAR____TtC4Maps29ParkedCarContextConfiguration_selectOnMap] = 1;
  v10.receiver = v5;
  v10.super_class = v4;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v10, "init");
  objc_allocWithZone(type metadata accessor for ParkedCarContext());
  v8 = v7;
  v9 = sub_100229170(v8);
  [a2 pushContext:v9 animated:1 completion:{0, v10.receiver, v10.super_class}];
}

void sub_1000E2E7C()
{
  v1 = OBJC_IVAR____TtC4Maps11HomeContext_containees;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (v3)
    {
LABEL_3:
      v4 = v3 - 1;
      if (__OFSUB__(v3, 1))
      {
        __break(1u);
      }

      else if ((v2 & 0xC000000000000001) == 0)
      {
        if ((v4 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v4 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v5 = *(v2 + 8 * v4 + 32);
          goto LABEL_8;
        }

        __break(1u);
        return;
      }

      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_8:
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();

      if (v6)
      {
        return;
      }
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  swift_beginAccess();
  v7 = sub_1003989D0();
  swift_endAccess();
}

void sub_1000E30A8()
{
  v1 = v0;
  v2 = [objc_allocWithZone(SearchViewController) initWithSearchAlongRoute:0];
  if (v2)
  {
    v3 = v2;
    v4 = OBJC_IVAR____TtC4Maps11HomeContext_containees;
    swift_beginAccess();
    v5 = v3;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v1 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t sub_1000E32B8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000E34B0()
{
  v1 = type metadata accessor for ScrollBounceBehavior();
  v32 = *(v1 - 8);
  v33 = v1;
  __chkstk_darwin(v1);
  v25 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000CE6B8(&qword_101909F78);
  v23 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v22 - v4;
  v6 = sub_1000CE6B8(&qword_101909F80);
  v24 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v22 - v7;
  v31 = sub_1000CE6B8(&qword_101909F88);
  v28 = *(v31 - 8);
  __chkstk_darwin(v31);
  v10 = &v22 - v9;
  v11 = sub_1000CE6B8(&qword_101909F90);
  v29 = *(v11 - 8);
  v30 = v11;
  __chkstk_darwin(v11);
  v13 = &v22 - v12;
  v27 = sub_1000CE6B8(&qword_101909F98);
  __chkstk_darwin(v27);
  v26 = &v22 - v14;
  v34 = v0;
  static Axis.Set.vertical.getter();
  sub_1000CE6B8(&qword_101909FA0);
  sub_1000E5238();
  ScrollView.init(_:showsIndicators:content:)();
  static UnitPoint.bottom.getter();
  v15 = sub_1000414C8(&qword_101909FD0, &qword_101909F78);
  v16 = v25;
  View.defaultScrollAnchor(_:)();
  (*(v23 + 8))(v5, v3);
  v35 = v3;
  v36 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.scrollAccessoryEdge(_:)();
  (*(v24 + 8))(v8, v6);
  static ScrollBounceBehavior.basedOnSize.getter();
  LOBYTE(v8) = static Axis.Set.vertical.getter();
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v8)
  {
    Axis.Set.init(rawValue:)();
  }

  v35 = v6;
  v36 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeConformance2();
  v19 = v31;
  View.scrollBounceBehavior(_:axes:)();
  (*(v32 + 8))(v16, v33);
  (*(v28 + 8))(v10, v19);
  v35 = v19;
  v36 = v18;
  swift_getOpaqueTypeConformance2();
  v20 = v30;
  View.accessibilityIdentifier(_:)();
  (*(v29 + 8))(v13, v20);
  sub_1000E53C0();
  return AnyView.init<A>(_:)();
}

uint64_t sub_1000E3A38@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000CE6B8(&qword_101909FC0);
  __chkstk_darwin(v4);
  v6 = &v31 - v5;
  v7 = sub_1000CE6B8(&qword_101909FB8);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v31 - v9;
  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v11 = sub_1000CE6B8(&qword_101909FE8);
  sub_1000E3CDC(a1, &v6[*(v11 + 44)]);
  sub_1000414C8(&qword_101909FC8, &qword_101909FC0);
  View.scrollTargetLayout(isEnabled:)();
  sub_100024F64(v6, &qword_101909FC0);
  v12 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v13 = &v10[*(v8 + 44)];
  *v13 = v12;
  *(v13 + 1) = v14;
  *(v13 + 2) = v15;
  *(v13 + 3) = v16;
  *(v13 + 4) = v17;
  v13[40] = 0;
  sub_1000CE6B8(&qword_101909FF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1011E1D60;
  LOBYTE(v8) = static Edge.Set.horizontal.getter();
  *(inited + 32) = v8;
  v19 = static Edge.Set.bottom.getter();
  *(inited + 33) = v19;
  v20 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v8)
  {
    v20 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v19)
  {
    v20 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_1000A103C(v10, a2);
  result = sub_1000CE6B8(&qword_101909FA0);
  v30 = a2 + *(result + 36);
  *v30 = v20;
  *(v30 + 8) = v22;
  *(v30 + 16) = v24;
  *(v30 + 24) = v26;
  *(v30 + 32) = v28;
  *(v30 + 40) = 0;
  return result;
}

uint64_t sub_1000E3CDC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = type metadata accessor for AccessibilityTraits();
  v67 = *(v3 - 8);
  v68 = v3;
  __chkstk_darwin(v3);
  v66 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessibilityChildBehavior();
  v64 = *(v5 - 8);
  v65 = v5;
  __chkstk_darwin(v5);
  v62 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for UUID();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000CE6B8(&qword_101909FF8);
  __chkstk_darwin(v9 - 8);
  v53 = &v45 - v10;
  v58 = type metadata accessor for CarCapsuleButton();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v54 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1000CE6B8(&qword_10190A000);
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v55 = &v45 - v12;
  v60 = sub_1000CE6B8(&qword_10190A008);
  __chkstk_darwin(v60);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v63 = &v45 - v16;
  v17 = sub_1000CE6B8(&qword_10190A010);
  __chkstk_darwin(v17 - 8);
  v61 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v45 - v20;
  v22 = qword_10193E340;
  *v21 = static HorizontalAlignment.center.getter();
  *(v21 + 1) = v22;
  v21[16] = 0;
  sub_1000CE6B8(&qword_10190A018);
  v70._countAndFlagsBits = *&a1[OBJC_IVAR____TtC4Maps18CarETAExpandedSign_actionViewModels];
  *(swift_allocObject() + 16) = a1;

  v49 = a1;
  sub_1000CE6B8(&qword_10190A020);
  type metadata accessor for CarETACardAction(0);
  type metadata accessor for NavigationCell();
  sub_1000414C8(&qword_10190A028, &qword_10190A020);
  sub_1000E56AC(&qword_10190A030, 255, &type metadata accessor for NavigationCell);
  sub_1000E56AC(&qword_101909F70, v23, type metadata accessor for CarETAExpandedSign.CarETAActionViewModel);
  ForEach<>.init(_:content:)();
  v50 = qword_10193E348;
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v48 = 0x800000010121A210;
  v46 = "leadingAccessory";
  v47.super.isa = qword_1019600D8;
  v71._object = 0x800000010121A210;
  v24._countAndFlagsBits = 0x74756F5220646E45;
  v25._object = 0x800000010121A1F0;
  v71._countAndFlagsBits = 0xD000000000000048;
  v25._countAndFlagsBits = 0xD000000000000010;
  v24._object = 0xE900000000000065;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v25, 0, qword_1019600D8, v24, v71);
  v26 = enum case for CarButtonVariant.end(_:);
  v27 = type metadata accessor for CarButtonVariant();
  v28 = *(v27 - 8);
  v29 = v53;
  (*(v28 + 104))(v53, v26, v27);
  (*(v28 + 56))(v29, 0, 1, v27);
  UUID.init()();
  UUID.uuidString.getter();
  (*(v51 + 8))(v8, v52);
  type metadata accessor for CarButtonViewModel();
  swift_allocObject();
  CarButtonViewModel.init(id:imageName:label:variant:progress:systemImagePadding:axID:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = v54;
  CarCapsuleButton.init(model:tapHandler:)();
  v31 = v62;
  static AccessibilityChildBehavior.ignore.getter();
  v32 = sub_1000E56AC(&qword_10190A038, 255, &type metadata accessor for CarCapsuleButton);
  v33 = v55;
  v34 = v58;
  View.accessibilityElement(children:)();
  (*(v64 + 8))(v31, v65);
  (*(v56 + 8))(v30, v34);
  v35 = v66;
  static AccessibilityTraits.isButton.getter();
  v70._countAndFlagsBits = v34;
  v70._object = v32;
  swift_getOpaqueTypeConformance2();
  v36 = v59;
  View.accessibilityAddTraits(_:)();
  (*(v67 + 8))(v35, v68);
  (*(v57 + 8))(v33, v36);
  v72._object = v48;
  v37._object = (v46 | 0x8000000000000000);
  v72._countAndFlagsBits = 0xD000000000000048;
  v37._countAndFlagsBits = 0xD000000000000010;
  v38._countAndFlagsBits = 0x74756F5220646E45;
  v38._object = 0xE900000000000065;
  v70 = NSLocalizedString(_:tableName:bundle:value:comment:)(v37, 0, v47, v38, v72);
  sub_1000E5580();
  v39 = v63;
  ModifiedContent<>.accessibilityLabel<A>(_:)();

  sub_100024F64(v14, &qword_10190A008);
  v40 = v61;
  sub_1000E55D4(v21, v61);
  sub_1000A111C(v39, v14);
  v41 = v69;
  sub_1000E55D4(v40, v69);
  v42 = sub_1000CE6B8(&qword_10190A048);
  v43 = v41 + *(v42 + 48);
  *v43 = v50;
  *(v43 + 8) = 0;
  sub_1000A111C(v14, v41 + *(v42 + 64));
  sub_100024F64(v39, &qword_10190A008);
  sub_1000E5644(v21);
  sub_100024F64(v14, &qword_10190A008);
  return sub_1000E5644(v40);
}

uint64_t sub_1000E4730(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for CarETAExpandedSign.CarETAActionViewModel();
  sub_1000E56AC(&unk_10190A050, v2, type metadata accessor for CarETAExpandedSign.CarETAActionViewModel);
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  swift_retain_n();
  return NavigationCell.init(model:tapHandler:)();
}

void sub_1000E481C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = *(a2 + 16);
      v8 = v4;
      [v6 etaCardSign:v8 didSelectAction:v7];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1000E48C8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      v4 = v1;
      [v3 etaCardSign:v4 didSelectAction:1];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_1000E4964()
{
  v1 = *(v0 + OBJC_IVAR____TtC4Maps18CarETAExpandedSign_lastUpdatedState);
  if (v1 != 2)
  {
    sub_1000E56FC(v1 & 1);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    if ((v1 & 0x100) != 0)
    {
      sub_1000E5BD0(BYTE2(v1) & 1);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    if ((v1 & 0x1000000) != 0)
    {
      sub_1000E60A0();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  *(v0 + OBJC_IVAR____TtC4Maps18CarETAExpandedSign_actionViewModels) = _swiftEmptyArrayStorage;
}

void sub_1000E4AF4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = [Strong upcomingWaypoints];
    swift_unknownObjectRelease();
    sub_100014C84(0, &qword_101914500);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v3 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
    if (!(_swiftEmptyArrayStorage >> 62))
    {
LABEL_3:
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  if (_CocoaArrayWrapper.endIndex.getter() < 1)
  {
LABEL_21:

    v14 = 0;
LABEL_22:
    v15 = MSPSharedTripSharingAvailable();
    if (v15 && (v16 = swift_unknownObjectWeakLoadStrong()) != 0)
    {
      v17 = [v16 isSharingTrip];
      swift_unknownObjectRelease();
    }

    else
    {
      v17 = 0;
    }

    v18 = [objc_opt_self() sharedInstance];
    v19 = [v18 isIncidentReportingEnabled];

    v20 = *(v0 + OBJC_IVAR____TtC4Maps18CarETAExpandedSign_lastUpdatedState);
    if (v20 == 2 || v15 == ((v20 & 0x100) == 0) || ((v14 ^ v20) & 1) != 0 || v17 == ((v20 & 0x10000) == 0) || ((v19 ^ ((v20 & 0x1000000) == 0)) & 1) == 0)
    {
      if (v15)
      {
        v21 = 256;
      }

      else
      {
        v21 = 0;
      }

      if (v17)
      {
        v22 = 0x10000;
      }

      else
      {
        v22 = 0;
      }

      v23 = v21 | v14 | v22;
      if (v19)
      {
        v24 = 0x1000000;
      }

      else
      {
        v24 = 0;
      }

      *(v0 + OBJC_IVAR____TtC4Maps18CarETAExpandedSign_lastUpdatedState) = v23 | v24;

      sub_1000E4964();
    }

    return;
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (!v4)
  {
    v25 = v0;
    v6 = _swiftEmptyArrayStorage;
LABEL_20:

    v13 = *(v6 + 2);

    v14 = v13 > 1;
    v0 = v25;
    goto LABEL_22;
  }

LABEL_4:
  v25 = v0;
  v5 = 0;
  v6 = _swiftEmptyArrayStorage;
  while (1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_45;
      }

      v7 = *(v3 + 8 * v5 + 32);
    }

    v8 = v7;
    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    v10 = [v7 isServerProvidedWaypoint];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1003559B0(0, *(v6 + 2) + 1, 1, v6);
    }

    v12 = *(v6 + 2);
    v11 = *(v6 + 3);
    if (v12 >= v11 >> 1)
    {
      v6 = sub_1003559B0((v11 > 1), v12 + 1, 1, v6);
    }

    *(v6 + 2) = v12 + 1;
    v6[v12 + 32] = v10 ^ 1;
    ++v5;
    if (v9 == v4)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
}

void sub_1000E4F5C()
{
  sub_1000A09E0(v0 + OBJC_IVAR____TtC4Maps18CarETAExpandedSign_dataSource);

  sub_1000A09E0(v0 + OBJC_IVAR____TtC4Maps18CarETAExpandedSign_delegate);
  v1 = *(v0 + OBJC_IVAR____TtC4Maps18CarETAExpandedSign_latestETA);
}

id sub_1000E4FBC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarETAExpandedSign();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for CarETAActionsViewModel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[4])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CarETAActionsViewModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1000E5238()
{
  result = qword_101909FA8;
  if (!qword_101909FA8)
  {
    sub_1000D6664(&qword_101909FA0);
    sub_1000E52C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101909FA8);
  }

  return result;
}

unint64_t sub_1000E52C4()
{
  result = qword_101909FB0;
  if (!qword_101909FB0)
  {
    sub_1000D6664(&qword_101909FB8);
    sub_1000D6664(&qword_101909FC0);
    sub_1000414C8(&qword_101909FC8, &qword_101909FC0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101909FB0);
  }

  return result;
}

unint64_t sub_1000E53C0()
{
  result = qword_101909FD8;
  if (!qword_101909FD8)
  {
    sub_1000D6664(&qword_101909F98);
    sub_1000D6664(&qword_101909F88);
    sub_1000D6664(&qword_101909F80);
    sub_1000D6664(&qword_101909F78);
    sub_1000414C8(&qword_101909FD0, &qword_101909F78);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000E56AC(&qword_101909FE0, 255, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101909FD8);
  }

  return result;
}

unint64_t sub_1000E5580()
{
  result = qword_10190A040;
  if (!qword_10190A040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190A040);
  }

  return result;
}

uint64_t sub_1000E55D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_10190A010);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E5644(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_10190A010);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000E56AC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1000E56FC(char a1)
{
  v23 = type metadata accessor for RichTextType();
  v2 = *(v23 - 8);
  __chkstk_darwin(v23);
  v4 = &countAndFlagsBits - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LeadingAccessoryViewModel.LeadingAccessoryType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&countAndFlagsBits - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v25._object = 0x800000010121A460;
    v9._countAndFlagsBits = 0x73706F7453;
    v10._object = 0x800000010121A440;
    v25._countAndFlagsBits = 0xD000000000000028;
    v10._countAndFlagsBits = 0xD000000000000011;
    v9._object = 0xE500000000000000;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, qword_1019600D8, v9, v25)._countAndFlagsBits;
    v11 = 0x800000010121A490;
    v12 = 0xD00000000000001CLL;
  }

  else
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v26._object = 0x800000010121A410;
    v13._countAndFlagsBits = 0x5F79616C50726143;
    v13._object = 0xEF706F7453646441;
    v14._countAndFlagsBits = 0x706F745320646441;
    v26._countAndFlagsBits = 0xD00000000000002FLL;
    v14._object = 0xE800000000000000;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, qword_1019600D8, v14, v26)._countAndFlagsBits;
    v11 = 0xE400000000000000;
    v12 = 1937075312;
  }

  sub_1000CE6B8(&unk_10190A060);
  type metadata accessor for LeadingAccessoryViewModel();
  v15 = swift_allocObject();
  v24 = xmmword_1011E1D30;
  *(v15 + 16) = xmmword_1011E1D30;
  v16 = [objc_opt_self() systemBlueColor];
  v17 = Color.init(_:)();
  *v8 = v12;
  v8[1] = v11;
  v8[2] = v17;
  (*(v6 + 104))(v8, enum case for LeadingAccessoryViewModel.LeadingAccessoryType.symbol(_:), v5);
  LeadingAccessoryViewModel.init(type:)();
  sub_1000CE6B8(&unk_1019157F0);
  v18 = swift_allocObject();
  *(v18 + 16) = v24;
  sub_1000CE6B8(&qword_10190A070);
  type metadata accessor for RichTextViewModel();
  v19 = swift_allocObject();
  *(v19 + 16) = v24;
  v20 = v23;
  (*(v2 + 104))(v4, enum case for RichTextType.title(_:), v23);
  RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

  (*(v2 + 8))(v4, v20);
  *(v18 + 32) = v19;
  type metadata accessor for CarETAExpandedSign.CarETAActionViewModel();
  result = swift_allocObject();
  result[2] = 4;
  result[3] = v15;
  result[4] = v18;
  return result;
}

void *sub_1000E5BD0(char a1)
{
  v2 = 0xD000000000000022;
  v24 = type metadata accessor for RichTextType();
  v3 = *(v24 - 8);
  __chkstk_darwin(v24);
  v5 = &countAndFlagsBits - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LeadingAccessoryViewModel.LeadingAccessoryType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&countAndFlagsBits - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v10._countAndFlagsBits = 0xD00000000000001FLL;
    v26._object = 0x800000010121A310;
    v11._countAndFlagsBits = 0x20676E6972616853;
    v11._object = 0xEB00000000415445;
    v10._object = 0x800000010121A2F0;
    v26._countAndFlagsBits = 0xD00000000000003CLL;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, qword_1019600D8, v11, v26)._countAndFlagsBits;
    v12 = " screen when already sharing";
  }

  else
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v27._object = 0x800000010121A290;
    v13._countAndFlagsBits = 0x5445206572616853;
    v14._object = 0x800000010121A260;
    v27._countAndFlagsBits = 0xD00000000000003ELL;
    v14._countAndFlagsBits = 0xD000000000000022;
    v13._object = 0xE900000000000041;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, qword_1019600D8, v13, v27)._countAndFlagsBits;
    v12 = " screen if not already sharing";
    v2 = 0xD00000000000001DLL;
  }

  v15 = v12 | 0x8000000000000000;
  sub_1000CE6B8(&unk_10190A060);
  type metadata accessor for LeadingAccessoryViewModel();
  v16 = swift_allocObject();
  v25 = xmmword_1011E1D30;
  *(v16 + 16) = xmmword_1011E1D30;
  v17 = [objc_opt_self() systemGreenColor];
  v18 = Color.init(_:)();
  *v9 = v2;
  v9[1] = v15;
  v9[2] = v18;
  (*(v7 + 104))(v9, enum case for LeadingAccessoryViewModel.LeadingAccessoryType.symbol(_:), v6);
  LeadingAccessoryViewModel.init(type:)();
  sub_1000CE6B8(&unk_1019157F0);
  v19 = swift_allocObject();
  *(v19 + 16) = v25;
  sub_1000CE6B8(&qword_10190A070);
  type metadata accessor for RichTextViewModel();
  v20 = swift_allocObject();
  *(v20 + 16) = v25;
  v21 = v24;
  (*(v3 + 104))(v5, enum case for RichTextType.title(_:), v24);
  RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

  (*(v3 + 8))(v5, v21);
  *(v19 + 32) = v20;
  type metadata accessor for CarETAExpandedSign.CarETAActionViewModel();
  result = swift_allocObject();
  result[2] = 6;
  result[3] = v16;
  result[4] = v19;
  return result;
}

void *sub_1000E60A0()
{
  v17 = type metadata accessor for RichTextType();
  v0 = *(v17 - 8);
  __chkstk_darwin(v17);
  v2 = &countAndFlagsBits - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for LeadingAccessoryViewModel.LeadingAccessoryType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&countAndFlagsBits - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v19._object = 0x800000010121A3B0;
  v7._countAndFlagsBits = 0x74726F706552;
  v8._countAndFlagsBits = 0xD000000000000022;
  v8._object = 0x800000010121A380;
  v19._countAndFlagsBits = 0xD000000000000030;
  v7._object = 0xE600000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, qword_1019600D8, v7, v19)._countAndFlagsBits;
  sub_1000CE6B8(&unk_10190A060);
  type metadata accessor for LeadingAccessoryViewModel();
  v9 = swift_allocObject();
  v18 = xmmword_1011E1D30;
  *(v9 + 16) = xmmword_1011E1D30;
  v10 = [objc_opt_self() systemPinkColor];
  v11 = Color.init(_:)();
  *v6 = 0xD00000000000001BLL;
  v6[1] = 0x800000010121A3F0;
  v6[2] = v11;
  (*(v4 + 104))(v6, enum case for LeadingAccessoryViewModel.LeadingAccessoryType.symbol(_:), v3);
  LeadingAccessoryViewModel.init(type:)();
  sub_1000CE6B8(&unk_1019157F0);
  v12 = swift_allocObject();
  *(v12 + 16) = v18;
  sub_1000CE6B8(&qword_10190A070);
  type metadata accessor for RichTextViewModel();
  v13 = swift_allocObject();
  *(v13 + 16) = v18;
  v14 = v17;
  (*(v0 + 104))(v2, enum case for RichTextType.title(_:), v17);
  RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

  (*(v0 + 8))(v2, v14);
  *(v12 + 32) = v13;
  type metadata accessor for CarETAExpandedSign.CarETAActionViewModel();
  result = swift_allocObject();
  result[2] = 5;
  result[3] = v9;
  result[4] = v12;
  return result;
}

void sub_1000E64B8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v18[2] = a2;
  v19 = a3;
  v18[1] = a1;
  v5 = type metadata accessor for TimeZone();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC4Maps18CarETAExpandedSign_actionViewModels] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC4Maps18CarETAExpandedSign_lastUpdatedState] = 2;
  swift_unknownObjectWeakInit();
  sub_100014C84(0, &qword_101909920);
  isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
  v10 = [objc_opt_self() localTimeZone];
  static TimeZone._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = objc_allocWithZone(GuidanceETA);
  v12 = TimeZone._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v8, v5);
  v13 = [v11 initWithRemainingTime:isa remainingDistance:v12 arrivalBatteryCharge:0 destinationTimeZone:0.0 transportType:0.0];

  if (v13)
  {
    *&v4[OBJC_IVAR____TtC4Maps18CarETAExpandedSign_latestETA] = v13;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectWeakAssign();
    *&v4[OBJC_IVAR____TtC4Maps15MapsHostingView_hostingController] = 0;
    v14 = v19;
    *&v4[OBJC_IVAR____TtC4Maps15MapsHostingView_parentViewController] = v19;
    v15 = type metadata accessor for MapsHostingView();
    v20.receiver = v4;
    v20.super_class = v15;
    v16 = v14;
    v17 = objc_msgSendSuper2(&v20, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    sub_10046A3C0();
  }

  else
  {
    __break(1u);
  }
}

void sub_1000E6728()
{
  v1 = v0;
  v2 = type metadata accessor for TimeZone();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC4Maps18CarETAExpandedSign_actionViewModels) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC4Maps18CarETAExpandedSign_lastUpdatedState) = 2;
  swift_unknownObjectWeakInit();
  sub_100014C84(0, &qword_101909920);
  isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
  v7 = [objc_opt_self() localTimeZone];
  static TimeZone._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = objc_allocWithZone(GuidanceETA);
  v9 = TimeZone._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v5, v2);
  v10 = [v8 initWithRemainingTime:isa remainingDistance:v9 arrivalBatteryCharge:0 destinationTimeZone:0.0 transportType:0.0];

  if (!v10)
  {
    __break(1u);
  }

  *(v1 + OBJC_IVAR____TtC4Maps18CarETAExpandedSign_latestETA) = v10;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

__n128 sub_1000E6930(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1000E694C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000E6994(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000E6A18()
{
  v1 = v0;
  v8[0] = *(v0 + 16);
  sub_1000CE6B8(&qword_10190A150);
  State.wrappedValue.getter();
  swift_getKeyPath();
  *&v8[0] = v9[0];
  sub_1000EA910(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = OBJC_IVAR____TtC4Maps18UserGuideViewModel__state;
  swift_beginAccess();
  sub_1000EF8AC(v9[0] + v2, v8);

  sub_1000EF908(v8, v9);
  sub_1000EF964(v8);
  LODWORD(v2) = v11;
  sub_1000EF9B8(v9);
  if (v2 == 1 && (v8[0] = *(v1 + 16), State.wrappedValue.getter(), v3 = sub_1003F2E04(), , (v3 & 1) == 0))
  {
    v8[0] = *(v1 + 16);
    State.wrappedValue.getter();
    v5 = v9[0];
    swift_getKeyPath();
    *&v8[0] = v5;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v6 = OBJC_IVAR____TtC4Maps18UserGuideViewModel__state;
    swift_beginAccess();
    sub_1000EF8AC(v5 + v6, v8);

    sub_1000EF908(v8, v9);
    sub_1000EF964(v8);
    LOBYTE(v5) = v10;
    sub_1000EF9B8(v9);
    v4 = v5 ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1000E6C2C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v58 = a1;
  v53 = type metadata accessor for ScrollDismissesKeyboardMode();
  v3 = *(v53 - 8);
  __chkstk_darwin(v53);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UserGuideScrollView(0);
  __chkstk_darwin(v6);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1000CE6B8(&qword_10190A188);
  __chkstk_darwin(v52);
  v10 = &v51 - v9;
  v54 = sub_1000CE6B8(&qword_10190A190);
  __chkstk_darwin(v54);
  v12 = &v51 - v11;
  v13 = sub_1000CE6B8(&qword_10190A198);
  v14 = *(v13 - 8);
  v56 = v13;
  v57 = v14;
  __chkstk_darwin(v13);
  v55 = &v51 - v15;
  v62 = *v1;
  v63 = v62;
  sub_1000CE6B8(&qword_10190A170);
  State.projectedValue.getter();
  v16 = v59;
  v51 = v60;
  v62 = v1[1];
  sub_1000CE6B8(&qword_10190A150);
  State.projectedValue.getter();
  v17 = v59;
  v18 = v60;
  *v8 = v16;
  *(v8 + 8) = v51;
  *(v8 + 3) = v17;
  *(v8 + 2) = v18;
  *(v8 + 6) = swift_getKeyPath();
  v8[56] = 0;
  v19 = *(v6 + 28);
  *&v8[v19] = swift_getKeyPath();
  sub_1000CE6B8(&qword_10190A1A0);
  swift_storeEnumTagMultiPayload();
  static ScrollDismissesKeyboardMode.immediately.getter();
  sub_1000EA910(&qword_10190A1A8, type metadata accessor for UserGuideScrollView);
  View.scrollDismissesKeyboard(_:)();
  (*(v3 + 8))(v5, v53);
  sub_1000EFB34(v8);
  v20 = swift_allocObject();
  v21 = v1[3];
  *(v20 + 3) = v1[2];
  *(v20 + 4) = v21;
  v22 = v1[5];
  *(v20 + 5) = v1[4];
  *(v20 + 6) = v22;
  v23 = v1[1];
  *(v20 + 1) = *v1;
  *(v20 + 2) = v23;
  v24 = &v10[*(v52 + 36)];
  *v24 = sub_1000EFB90;
  v24[1] = v20;
  v24[2] = 0;
  v24[3] = 0;
  v62 = v63;
  sub_1000EA8D8(v1, &v59);
  State.wrappedValue.getter();
  *&v62 = v59;
  v25 = swift_allocObject();
  v26 = v1[3];
  v25[3] = v1[2];
  v25[4] = v26;
  v27 = v1[5];
  v25[5] = v1[4];
  v25[6] = v27;
  v28 = v1[1];
  v25[1] = *v1;
  v25[2] = v28;
  sub_1000EA8D8(v1, &v59);
  sub_1000CE6B8(&qword_10190A1B0);
  sub_1000EFBA0();
  sub_1000414C8(&qword_10190A1C0, &qword_10190A1B0);
  View.onChange<A>(of:initial:_:)();

  sub_100024F64(v10, &qword_10190A188);
  v29 = swift_allocObject();
  v30 = v1[3];
  *(v29 + 3) = v1[2];
  *(v29 + 4) = v30;
  v31 = v1[5];
  *(v29 + 5) = v1[4];
  *(v29 + 6) = v31;
  v32 = v1[1];
  *(v29 + 1) = *v1;
  *(v29 + 2) = v32;
  v33 = v54;
  v34 = &v12[*(v54 + 36)];
  *v34 = sub_1000EFC8C;
  v34[1] = v29;
  v35 = swift_allocObject();
  v36 = v2[3];
  v35[3] = v2[2];
  v35[4] = v36;
  v37 = v2[5];
  v35[5] = v2[4];
  v35[6] = v37;
  v38 = v2[1];
  v35[1] = *v2;
  v35[2] = v38;
  sub_1000EA8D8(v2, &v59);
  sub_1000EA8D8(v2, &v59);
  v39 = sub_1000EFD3C();
  v40 = v55;
  View.onScrollGeometryChange<A>(for:of:action:)();

  sub_100024F64(v12, &qword_10190A190);
  v41 = swift_allocObject();
  v42 = v2[3];
  v41[3] = v2[2];
  v41[4] = v42;
  v43 = v2[5];
  v41[5] = v2[4];
  v41[6] = v43;
  v44 = v2[1];
  v41[1] = *v2;
  v41[2] = v44;
  v45 = swift_allocObject();
  v46 = v2[3];
  v45[3] = v2[2];
  v45[4] = v46;
  v47 = v2[5];
  v45[5] = v2[4];
  v45[6] = v47;
  v48 = v2[1];
  v45[1] = *v2;
  v45[2] = v48;
  sub_1000EA8D8(v2, &v59);
  sub_1000EA8D8(v2, &v59);
  v59 = v33;
  *&v60 = &type metadata for Bool;
  *(&v60 + 1) = v39;
  v61 = &protocol witness table for Bool;
  swift_getOpaqueTypeConformance2();
  v49 = v56;
  View.onScrollGeometryChange<A>(for:of:action:)();

  return (*(v57 + 8))(v40, v49);
}

uint64_t sub_1000E7378()
{
  sub_1000CE6B8(&qword_10190A150);
  State.wrappedValue.getter();
  sub_1003F315C();
}

uint64_t sub_1000E73D4()
{
  sub_1000CE6B8(&qword_10190A150);
  State.wrappedValue.getter();
  sub_1000CE6B8(&qword_10190A170);
  State.wrappedValue.getter();
  sub_1003F32B8(v1);
}

uint64_t sub_1000E7478@<X0>(BOOL *a1@<X8>)
{
  result = ScrollGeometry.contentOffset.getter();
  *a1 = v3 > 0.0;
  return result;
}

uint64_t sub_1000E74AC@<X0>(BOOL *a1@<X8>)
{
  ScrollGeometry.contentOffset.getter();
  v3 = v2;
  sub_1000CE6B8(&qword_101916670);
  result = State.wrappedValue.getter();
  *a1 = v5 < v3;
  return result;
}

uint64_t sub_1000E752C@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v92 = type metadata accessor for EditMode();
  v93 = *(v92 - 8);
  __chkstk_darwin(v92);
  v89 = v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for ContainerBackgroundPlacement();
  v4 = *(v80 - 8);
  __chkstk_darwin(v80);
  v6 = v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000CE6B8(&qword_10190A0E8);
  __chkstk_darwin(v7);
  v9 = v79 - v8;
  v81 = sub_1000CE6B8(&qword_10190A0C8);
  __chkstk_darwin(v81);
  v11 = v79 - v10;
  v82 = sub_1000CE6B8(&qword_10190A090);
  __chkstk_darwin(v82);
  v91 = v79 - v12;
  v85 = sub_1000CE6B8(&qword_10190A088);
  v86 = *(v85 - 8);
  __chkstk_darwin(v85);
  v83 = v79 - v13;
  v87 = sub_1000CE6B8(&qword_10190A080);
  v88 = *(v87 - 8);
  __chkstk_darwin(v87);
  v84 = v79 - v14;
  *v9 = static HorizontalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v15 = sub_1000CE6B8(&qword_10190A138);
  sub_1000E6C2C(&v9[*(v15 + 44)]);
  *&v99 = static Color.clear.getter();
  static ContainerBackgroundPlacement.navigation.getter();
  sub_1000414C8(&qword_10190A0F0, &qword_10190A0E8);
  View.containerBackground<A>(_:for:)();
  (*(v4 + 8))(v6, v80);

  sub_100024F64(v9, &qword_10190A0E8);
  v16 = static SafeAreaRegions.all.getter();
  v17 = static Edge.Set.top.getter();
  v18 = &v11[*(sub_1000CE6B8(&qword_10190A0E0) + 36)];
  *v18 = v16;
  v18[8] = v17;
  v99 = a1[2];
  sub_1000CE6B8(&qword_10190A140);
  State.wrappedValue.getter();
  v19 = v96[0];
  v20 = &v11[*(v81 + 36)];
  sub_1000E8280(a1, v20);
  *(v20 + *(sub_1000CE6B8(&qword_10190A100) + 36)) = v19;
  v99 = a1[5];
  sub_1000CE6B8(&qword_10190A148);
  State.wrappedValue.getter();
  v21 = swift_allocObject();
  v22 = a1[3];
  v21[3] = a1[2];
  v21[4] = v22;
  v23 = a1[5];
  v21[5] = a1[4];
  v21[6] = v23;
  v24 = a1[1];
  v21[1] = *a1;
  v21[2] = v24;
  sub_1000EA8D8(a1, &v99);
  sub_1000EA68C();
  v25 = v91;
  View.actionBar(_:onSelect:)();

  sub_100024F64(v11, &qword_10190A0C8);
  v26 = static Animation.default.getter();
  v102 = a1[1];
  v99 = a1[1];
  v27 = sub_1000CE6B8(&qword_10190A150);
  State.wrappedValue.getter();
  v28 = *&v96[0];
  swift_getKeyPath();
  *&v99 = v28;
  v79[1] = sub_1000EA910(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v29 = OBJC_IVAR____TtC4Maps18UserGuideViewModel__editMode;
  swift_beginAccess();
  v30 = v25;
  v31 = &v25[*(sub_1000CE6B8(&qword_10190A0C0) + 36)];
  v32 = *(sub_1000CE6B8(&qword_10190A110) + 36);
  v33 = *(v93 + 16);
  v80 = v93 + 16;
  v81 = v33;
  v33(v31 + v32, v28 + v29, v92);

  *v31 = v26;
  KeyPath = swift_getKeyPath();
  v35 = &v30[*(sub_1000CE6B8(&qword_10190A0B0) + 36)];
  v36 = *(sub_1000CE6B8(&qword_10190A120) + 28);
  v96[0] = v102;
  v79[2] = v27;
  State.projectedValue.getter();
  v37 = v99;
  v38 = v100;
  swift_getKeyPath();
  v99 = v37;
  v100 = v38;
  sub_1000CE6B8(&qword_10190A160);
  Binding.subscript.getter();

  v39 = sub_1000CE6B8(&qword_10190A168);
  (*(*(v39 - 8) + 56))(v35 + v36, 0, 1, v39);
  *v35 = KeyPath;
  v40 = swift_allocObject();
  v41 = a1[3];
  *(v40 + 3) = a1[2];
  *(v40 + 4) = v41;
  v42 = a1[5];
  *(v40 + 5) = a1[4];
  *(v40 + 6) = v42;
  v43 = a1[1];
  *(v40 + 1) = *a1;
  *(v40 + 2) = v43;
  v44 = v82;
  v45 = v91;
  v46 = &v91[*(v82 + 36)];
  *v46 = sub_1000EA958;
  v46[1] = v40;
  v46[2] = 0;
  v46[3] = 0;
  v96[0] = v102;
  sub_1000EA8D8(a1, &v99);
  State.wrappedValue.getter();
  v47 = v99;
  swift_getKeyPath();
  *&v99 = v47;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v48 = OBJC_IVAR____TtC4Maps18UserGuideViewModel__state;
  swift_beginAccess();
  sub_1000EF8AC(v47 + v48, &v99);

  sub_1000EF908(&v99, v96);
  sub_1000EF964(&v99);
  v49 = v97;
  LOBYTE(v48) = v98;
  sub_1000EF9B8(v96);
  v94 = v49;
  v95 = v48;
  v50 = swift_allocObject();
  v51 = a1[3];
  v50[3] = a1[2];
  v50[4] = v51;
  v52 = a1[5];
  v50[5] = a1[4];
  v50[6] = v52;
  v53 = a1[1];
  v50[1] = *a1;
  v50[2] = v53;
  sub_1000EA8D8(a1, &v99);
  v54 = sub_1000CE6B8(&qword_10190A098);
  v55 = sub_1000EA454();
  v56 = sub_1000EA854();
  v57 = v83;
  View.onChange<A>(of:initial:_:)();

  sub_100024F64(v45, &qword_10190A090);
  v99 = *a1;
  sub_1000CE6B8(&qword_10190A170);
  State.wrappedValue.getter();
  v58 = *(*&v96[0] + 16);

  *&v96[0] = v58;
  v59 = swift_allocObject();
  v60 = a1[3];
  v59[3] = a1[2];
  v59[4] = v60;
  v61 = a1[5];
  v59[5] = a1[4];
  v59[6] = v61;
  v62 = a1[1];
  v59[1] = *a1;
  v59[2] = v62;
  sub_1000EA8D8(a1, &v99);
  *&v99 = v44;
  *(&v99 + 1) = v54;
  v100 = v55;
  v101 = v56;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v64 = v84;
  v65 = v85;
  View.onChange<A>(of:initial:_:)();

  v66 = v57;
  v67 = v65;
  (*(v86 + 8))(v66, v65);
  v99 = v102;
  State.wrappedValue.getter();
  v68 = *&v96[0];
  swift_getKeyPath();
  *&v99 = v68;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v69 = OBJC_IVAR____TtC4Maps18UserGuideViewModel__editMode;
  swift_beginAccess();
  v70 = v68 + v69;
  v71 = v89;
  v72 = v92;
  (v81)(v89, v70, v92);

  v73 = swift_allocObject();
  v74 = a1[3];
  v73[3] = a1[2];
  v73[4] = v74;
  v75 = a1[5];
  v73[5] = a1[4];
  v73[6] = v75;
  v76 = a1[1];
  v73[1] = *a1;
  v73[2] = v76;
  sub_1000EA8D8(a1, &v99);
  *&v99 = v67;
  *(&v99 + 1) = &type metadata for Int;
  v100 = OpaqueTypeConformance2;
  v101 = &protocol witness table for Int;
  swift_getOpaqueTypeConformance2();
  sub_1000EA910(&qword_10190A130, &type metadata accessor for EditMode);
  v77 = v87;
  View.onChange<A>(of:initial:_:)();

  (*(v93 + 8))(v71, v72);
  return (*(v88 + 8))(v64, v77);
}

uint64_t sub_1000E8280@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v3 = type metadata accessor for CardHeaderSize();
  v78 = *(v3 - 8);
  v79 = v3;
  __chkstk_darwin(v3);
  v77 = v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CenteredCardHeaderNavigationViewModel();
  v81 = *(v5 - 8);
  v82 = v5;
  __chkstk_darwin(v5);
  v76 = v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v80 = v63 - v8;
  v9 = type metadata accessor for EditMode();
  v71 = *(v9 - 8);
  v72 = v9;
  __chkstk_darwin(v9);
  v70 = v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v69 = v63 - v12;
  v13 = sub_1000CE6B8(&unk_101910FC0);
  __chkstk_darwin(v13 - 8);
  v66 = v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v64 = v63 - v16;
  __chkstk_darwin(v17);
  v19 = v63 - v18;
  v20 = type metadata accessor for CardHeaderTextViewModel();
  v74 = *(v20 - 8);
  v75 = v20;
  __chkstk_darwin(v20);
  v73 = v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v84 = v63 - v23;
  v65 = a1;
  v89 = a1[1];
  v86[0] = a1[1];
  v24 = sub_1000CE6B8(&qword_10190A150);
  State.wrappedValue.getter();
  v25 = v88[0];
  swift_getKeyPath();
  *&v86[0] = v25;
  v26 = sub_1000EA910(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v27 = OBJC_IVAR____TtC4Maps18UserGuideViewModel__state;
  swift_beginAccess();
  sub_1000EF8AC(v25 + v27, v86);

  sub_1000EF908(v86, v88);
  sub_1000EF964(v86);
  v63[2] = v88[6];
  v63[3] = v88[5];

  sub_1000EF9B8(v88);
  v86[0] = v89;
  v68 = v24;
  State.wrappedValue.getter();
  v28 = *&v87[0];
  swift_getKeyPath();
  *&v86[0] = v28;
  v67 = v26;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v29 = OBJC_IVAR____TtC4Maps18UserGuideViewModel__state;
  swift_beginAccess();
  sub_1000EF8AC(v28 + v29, v86);

  sub_1000EF908(v86, v87);
  sub_1000EF964(v86);
  v63[1] = sub_10039547C();
  sub_1000EF9B8(v87);
  v30 = enum case for MapsDesignAccessibilityString.titleLabel(_:);
  v31 = type metadata accessor for MapsDesignAccessibilityString();
  v32 = *(v31 - 8);
  v33 = *(v32 + 104);
  v33(v19, v30, v31);
  v34 = *(v32 + 56);
  v34(v19, 0, 1, v31);
  v35 = v64;
  v33(v64, enum case for MapsDesignAccessibilityString.subtitleLabel(_:), v31);
  v34(v35, 0, 1, v31);
  v36 = v66;
  v33(v66, enum case for MapsDesignAccessibilityString.tertiaryLabel(_:), v31);
  v34(v36, 0, 1, v31);
  static HorizontalAlignment.center.getter();
  v37 = v65;
  CardHeaderTextViewModel.init(title:titleAXID:subtitle:subtitleAXID:interactiveSubtitle:interactiveSubtitleAXID:alignment:interactiveTitleTapHandler:interactiveSubtitleTapHandler:)();
  if (sub_1000E6A18())
  {
    sub_1000CE6B8(&qword_10191D770);
    type metadata accessor for CardButtonViewModel();
    *(swift_allocObject() + 16) = xmmword_1011E1D30;
    v38 = swift_allocObject();
    v39 = v37[3];
    v38[3] = v37[2];
    v38[4] = v39;
    v40 = v37[5];
    v38[5] = v37[4];
    v38[6] = v40;
    v41 = v37[1];
    v38[1] = *v37;
    v38[2] = v41;
    sub_1000EA8D8(v37, v86);
    static CardButtonViewModel.share(tintColor:enabled:action:)();
  }

  v86[0] = v89;
  State.wrappedValue.getter();
  v42 = v88[0];
  swift_getKeyPath();
  *&v86[0] = v42;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v43 = OBJC_IVAR____TtC4Maps18UserGuideViewModel__editMode;
  swift_beginAccess();
  v45 = v71;
  v44 = v72;
  v46 = v69;
  (*(v71 + 16))(v69, v42 + v43, v72);

  v47 = v70;
  (*(v45 + 104))(v70, enum case for EditMode.active(_:), v44);
  LOBYTE(v43) = static EditMode.== infix(_:_:)();
  v48 = *(v45 + 8);
  v48(v47, v44);
  v48(v46, v44);
  if ((v43 & 1) == 0)
  {
    sub_1000CE6B8(&qword_10191D770);
    type metadata accessor for CardButtonViewModel();
    *(swift_allocObject() + 16) = xmmword_1011E1D30;
    v49 = swift_allocObject();
    v50 = v37[3];
    v49[3] = v37[2];
    v49[4] = v50;
    v51 = v37[5];
    v49[5] = v37[4];
    v49[6] = v51;
    v52 = v37[1];
    v49[1] = *v37;
    v49[2] = v52;
    sub_1000EA8D8(v37, v86);
    static CardButtonViewModel.close(tintColor:enabled:action:)();
  }

  v53 = v74;
  v54 = v75;
  (*(v74 + 16))(v73, v84, v75);
  v86[0] = v37[3];
  v87[0] = v37[3];
  sub_1000CE6B8(&qword_10190A140);
  State.wrappedValue.getter();
  (*(v78 + 104))(v77, enum case for CardHeaderSize.medium(_:), v79);
  v55 = v80;
  CenteredCardHeaderNavigationViewModel.init(textViewModel:visible:leadingButtons:trailingButtons:size:)();
  v57 = v81;
  v56 = v82;
  (*(v81 + 16))(v76, v55, v82);
  v58 = v83;
  CenteredCardHeaderNavigation.init(viewModel:leadingButtonsWidthBinding:trailingButtonsWidthBinding:)();
  v59 = static Animation.linear(duration:)();
  v87[0] = v86[0];
  State.wrappedValue.getter();
  (*(v57 + 8))(v55, v56);
  (*(v53 + 8))(v84, v54);
  v60 = v85;
  result = sub_1000CE6B8(&qword_10190A180);
  v62 = v58 + *(result + 36);
  *v62 = v59;
  *(v62 + 8) = v60;
  return result;
}

uint64_t sub_1000E8D6C()
{
  sub_1000CE6B8(&qword_10190A150);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_1000EA910(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0 = *(v2 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__onShare);
  if (!v0)
  {
  }

  v0(0);

  return sub_1000588AC(v0);
}

uint64_t sub_1000E8E7C()
{
  sub_1000CE6B8(&qword_10190A150);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_1000EA910(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0 = *(v3 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__onClose);
  if (!v0)
  {
  }

  v0(v1);

  return sub_1000588AC(v0);
}

uint64_t sub_1000E8F88(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = type metadata accessor for EditMode();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ActionBarItemType();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of ActionBarItemViewModel.type.getter();
  v13 = (*(v10 + 88))(v12, v9);
  if (v13 == enum case for ActionBarItemType.addToList(_:))
  {
    v28 = a3[1];
    sub_1000CE6B8(&qword_10190A150);
    State.wrappedValue.getter();
    v14 = v27;
    swift_getKeyPath();
    *&v28 = v14;
    sub_1000EA910(&qword_10190A158, type metadata accessor for UserGuideViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v15 = OBJC_IVAR____TtC4Maps18UserGuideViewModel__onAddPlacesToGuide;
    goto LABEL_3;
  }

  if (v13 == enum case for ActionBarItemType.addToGuide(_:))
  {
    v28 = a3[1];
    sub_1000CE6B8(&qword_10190A150);
    State.wrappedValue.getter();
    v19 = v27;
    v28 = *a3;
    sub_1000CE6B8(&qword_10190A170);
    State.wrappedValue.getter();
    v20 = sub_1003F7C68(v27);

    if (v20 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_8:
        swift_getKeyPath();
        *&v28 = v19;
        sub_1000EA910(&qword_10190A158, type metadata accessor for UserGuideViewModel);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v21 = *(v19 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__onAddToGuide);
        if (v21)
        {
          sub_1000CD9D4(*(v19 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__onAddToGuide));
          v22 = sub_1003F90BC(v20);

          v21(v22, a2);

          sub_1000588AC(v21);
        }
      }
    }

    else if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }
  }

  if (v13 == enum case for ActionBarItemType.select(_:))
  {
    goto LABEL_11;
  }

  if (v13 == enum case for ActionBarItemType.sort(_:))
  {
    v28 = a3[1];
    sub_1000CE6B8(&qword_10190A150);
    State.wrappedValue.getter();
    v14 = v27;
    swift_getKeyPath();
    *&v28 = v14;
    sub_1000EA910(&qword_10190A158, type metadata accessor for UserGuideViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v15 = OBJC_IVAR____TtC4Maps18UserGuideViewModel__onSort;
LABEL_3:
    v16 = *(v14 + v15);
    if (v16)
    {

      v16(v17);

      return sub_1000588AC(v16);
    }
  }

  if (v13 == enum case for ActionBarItemType.edit(_:))
  {
LABEL_11:
    v28 = a3[1];
    sub_1000CE6B8(&qword_10190A150);
    State.wrappedValue.getter();
    sub_1003F41A4();
  }

  else
  {
    if (v13 == enum case for ActionBarItemType.delete(_:))
    {
      v28 = a3[1];
      sub_1000CE6B8(&qword_10190A150);
      State.wrappedValue.getter();
      v28 = *a3;
      sub_1000CE6B8(&qword_10190A170);
      State.wrappedValue.getter();
      sub_1003F3904(v27);
    }

    if (v13 == enum case for ActionBarItemType.cancel(_:))
    {
      v28 = a3[1];
      sub_1000CE6B8(&qword_10190A150);
      State.wrappedValue.getter();
      v23 = v27;
      if ((sub_1003F2E04() & 1) == 0 || (swift_getKeyPath(), *&v28 = v23, sub_1000EA910(&qword_10190A158, type metadata accessor for UserGuideViewModel), ObservationRegistrar.access<A, B>(_:keyPath:)(), , *(v23 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__editSession)))
      {
        (*(v6 + 104))(v8, enum case for EditMode.inactive(_:), v5);
        sub_1003F459C(v8);
        if (*(v23 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__editSession))
        {
          KeyPath = swift_getKeyPath();
          __chkstk_darwin(KeyPath);
          *(&v26 - 2) = v23;
          *(&v26 - 1) = 0;
          *&v28 = v23;
          sub_1000EA910(&qword_10190A158, type metadata accessor for UserGuideViewModel);
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        }

        if (*(v23 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__userGuideImage))
        {
          v25 = swift_getKeyPath();
          __chkstk_darwin(v25);
          *(&v26 - 2) = v23;
          *(&v26 - 1) = 0;
          *&v28 = v23;
          sub_1000EA910(&qword_10190A158, type metadata accessor for UserGuideViewModel);
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        }
      }
    }

    else
    {
      if (v13 != enum case for ActionBarItemType.done(_:))
      {
        return (*(v10 + 8))(v12, v9);
      }

      v28 = a3[1];
      sub_1000CE6B8(&qword_10190A150);
      State.wrappedValue.getter();
      sub_1003F3B54(1);
    }
  }
}

uint64_t sub_1000E9808()
{
  v1 = v0;
  v2 = type metadata accessor for ActionBarItemType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v0 + 16);
  v30[0] = *(v0 + 16);
  sub_1000CE6B8(&qword_10190A150);
  State.wrappedValue.getter();
  v6 = v31[0];
  swift_getKeyPath();
  *&v30[0] = v6;
  *&v28 = sub_1000EA910(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = OBJC_IVAR____TtC4Maps18UserGuideViewModel__state;
  swift_beginAccess();
  sub_1000EF8AC(v6 + v7, v30);

  sub_1000EF908(v30, v31);
  sub_1000EF964(v30);
  LODWORD(v7) = v33;
  sub_1000EF9B8(v31);
  sub_1000CE6B8(&qword_101908400);
  v8 = (v3 + 104);
  if (v7 == 1)
  {
    v9 = swift_allocObject();
    v28 = xmmword_1011E47B0;
    *(v9 + 16) = xmmword_1011E47B0;
    v10 = *v8;
    (*v8)(v5, enum case for ActionBarItemType.select(_:), v2);
    type metadata accessor for ActionBarItemViewModel();
    swift_allocObject();
    *(v9 + 32) = ActionBarItemViewModel.init(_:)();
    v11 = swift_allocObject();
    *(v11 + 16) = v28;
    v10(v5, enum case for ActionBarItemType.addToGuide(_:), v2);
    swift_allocObject();
    *(v11 + 32) = ActionBarItemViewModel.init(_:disabled:)();
    v12 = swift_allocObject();
    *(v12 + 16) = v28;
    v10(v5, enum case for ActionBarItemType.done(_:), v2);
    swift_allocObject();
    *(v12 + 32) = ActionBarItemViewModel.init(_:)();
    type metadata accessor for ActionBarViewModel();
    swift_allocObject();
  }

  else
  {
    v27 = v0;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1011E4FD0;
    v14 = *v8;
    (*v8)(v5, enum case for ActionBarItemType.delete(_:), v2);
    type metadata accessor for ActionBarItemViewModel();
    swift_allocObject();
    *(v13 + 32) = ActionBarItemViewModel.init(_:disabled:)();
    v14(v5, enum case for ActionBarItemType.addToGuide(_:), v2);
    swift_allocObject();
    *(v13 + 40) = ActionBarItemViewModel.init(_:disabled:)();
    v15 = swift_allocObject();
    v25 = xmmword_1011E47B0;
    *(v15 + 16) = xmmword_1011E47B0;
    v14(v5, enum case for ActionBarItemType.done(_:), v2);
    swift_allocObject();
    v16 = ActionBarItemViewModel.init(_:)();
    v26 = v15;
    *(v15 + 32) = v16;
    v30[0] = v34;
    State.wrappedValue.getter();
    v17 = v29;
    swift_getKeyPath();
    *&v30[0] = v17;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v18 = OBJC_IVAR____TtC4Maps18UserGuideViewModel__state;
    swift_beginAccess();
    sub_1000EF8AC(v17 + v18, v30);

    sub_1000EF908(v30, v31);
    sub_1000EF964(v30);
    v19 = v31[7];
    v20 = v32;
    sub_1000EF9B8(v31);
    if (v20)
    {
      v1 = v27;
    }

    else
    {
      v1 = v27;
      if (!v19)
      {
        v24 = swift_allocObject();
        *(v24 + 16) = v25;
        v14(v5, enum case for ActionBarItemType.addToList(_:), v2);
        swift_allocObject();
        *(v24 + 32) = ActionBarItemViewModel.init(_:)();
        type metadata accessor for ActionBarViewModel();
        swift_allocObject();
        goto LABEL_7;
      }
    }

    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1011E47C0;
    v14(v5, enum case for ActionBarItemType.addToList(_:), v2);
    swift_allocObject();
    *(v21 + 32) = ActionBarItemViewModel.init(_:)();
    v14(v5, enum case for ActionBarItemType.sort(_:), v2);
    swift_allocObject();
    *(v21 + 40) = ActionBarItemViewModel.init(_:)();
    v14(v5, enum case for ActionBarItemType.edit(_:), v2);
    swift_allocObject();
    *(v21 + 48) = ActionBarItemViewModel.init(_:)();
    type metadata accessor for ActionBarViewModel();
    swift_allocObject();
  }

LABEL_7:
  v22 = ActionBarViewModel.init(leadingItems:centeredItems:trailingItems:leadingEditItems:centeredEditItems:trailingEditItems:forceExpandedSearch:)();
  v30[0] = *(v1 + 80);
  v31[0] = v22;
  sub_1000CE6B8(&qword_10190A148);
  return State.wrappedValue.setter();
}

uint64_t sub_1000E9F40()
{
  sub_1000CE6B8(&qword_10190A148);
  State.wrappedValue.getter();
  sub_1000CE6B8(&qword_10190A178);
  v0 = type metadata accessor for ActionBarItemType();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1011E1D60;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for ActionBarItemType.delete(_:), v0);
  v6(v5 + v2, enum case for ActionBarItemType.addToGuide(_:), v0);
  dispatch thunk of ActionBarViewModel.updateItems(with:disabled:)();
}

uint64_t sub_1000EA0A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for EditMode();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, enum case for EditMode.active(_:), v4, v6);
  v9 = static EditMode.== infix(_:_:)();
  (*(v5 + 8))(v8, v4);
  v14 = *(a3 + 16);
  sub_1000CE6B8(&qword_10190A150);
  State.wrappedValue.getter();
  v10 = v13[1];
  swift_getKeyPath();
  *&v14 = v10;
  sub_1000EA910(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *(v10 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__onEnterOrExitEditMode);
  if (!v11)
  {
  }

  v11(v9 & 1);

  return sub_1000588AC(v11);
}

uint64_t sub_1000EA290()
{
  sub_1000CE6B8(&qword_10190A078);
  sub_1000D6664(&qword_10190A080);
  type metadata accessor for EditMode();
  sub_1000D6664(&qword_10190A088);
  sub_1000D6664(&qword_10190A090);
  sub_1000D6664(&qword_10190A098);
  sub_1000EA454();
  sub_1000EA854();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1000EA910(&qword_10190A130, &type metadata accessor for EditMode);
  swift_getOpaqueTypeConformance2();
  return NavigationStack.init<>(root:)();
}

unint64_t sub_1000EA454()
{
  result = qword_10190A0A0;
  if (!qword_10190A0A0)
  {
    sub_1000D6664(&qword_10190A090);
    sub_1000EA4E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190A0A0);
  }

  return result;
}

unint64_t sub_1000EA4E0()
{
  result = qword_10190A0A8;
  if (!qword_10190A0A8)
  {
    sub_1000D6664(&qword_10190A0B0);
    sub_1000EA598();
    sub_1000414C8(&qword_10190A118, &qword_10190A120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190A0A8);
  }

  return result;
}

unint64_t sub_1000EA598()
{
  result = qword_10190A0B8;
  if (!qword_10190A0B8)
  {
    sub_1000D6664(&qword_10190A0C0);
    sub_1000D6664(&qword_10190A0C8);
    sub_1000EA68C();
    swift_getOpaqueTypeConformance2();
    sub_1000414C8(&qword_10190A108, &qword_10190A110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190A0B8);
  }

  return result;
}

unint64_t sub_1000EA68C()
{
  result = qword_10190A0D0;
  if (!qword_10190A0D0)
  {
    sub_1000D6664(&qword_10190A0C8);
    sub_1000EA744();
    sub_1000414C8(&qword_10190A0F8, &qword_10190A100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190A0D0);
  }

  return result;
}

unint64_t sub_1000EA744()
{
  result = qword_10190A0D8;
  if (!qword_10190A0D8)
  {
    sub_1000D6664(&qword_10190A0E0);
    sub_1000D6664(&qword_10190A0E8);
    sub_1000414C8(&qword_10190A0F0, &qword_10190A0E8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190A0D8);
  }

  return result;
}

unint64_t sub_1000EA854()
{
  result = qword_10190A128;
  if (!qword_10190A128)
  {
    sub_1000D6664(&qword_10190A098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190A128);
  }

  return result;
}

uint64_t sub_1000EA910(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1000EA97C@<D0>(void *a1@<X8>)
{
  result = *&qword_10195FAA0;
  *a1 = qword_10195FAA0;
  return result;
}

double sub_1000EA98C(double *a1, void (*a2)(double *__return_ptr))
{
  a2(&v4);
  result = v4;
  *a1 = v4;
  return result;
}

uint64_t sub_1000EA9D4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000CE6B8(&qword_10190A318);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for UserGuideHeaderView(0);
  sub_1000D2DFC(v1 + *(v10 + 24), v9, &qword_10190A318);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1000F11C4(v9, a1, &qword_10190A450);
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000EABBC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000CE6B8(&qword_10190A318);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for UserGuideHeaderView(0);
  sub_1000D2DFC(v1 + *(v10 + 28), v9, &qword_10190A318);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1000F11C4(v9, a1, &qword_10190A450);
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000EADA4()
{
  v1 = type metadata accessor for EnvironmentValues();
  v64 = *(v1 - 8);
  v65 = v1;
  __chkstk_darwin(v1);
  v63 = &v51[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = type metadata accessor for CardHeaderExpansionState();
  v54 = *(v3 - 8);
  v55 = v3;
  __chkstk_darwin(v3);
  v53 = &v51[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for UserInterfaceSizeClass();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v68 = &v51[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1000CE6B8(&qword_10190A538);
  __chkstk_darwin(v8);
  v62 = &v51[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v51[-v11];
  v13 = sub_1000CE6B8(&qword_10190A450);
  __chkstk_darwin(v13 - 8);
  v56 = &v51[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v61 = &v51[-v16];
  __chkstk_darwin(v17);
  v67 = &v51[-v18];
  __chkstk_darwin(v19);
  v66 = &v51[-v20];
  __chkstk_darwin(v21);
  v23 = &v51[-v22];
  __chkstk_darwin(v24);
  v26 = &v51[-v25];
  v71 = v0;
  sub_1000EA9D4(&v51[-v25]);
  v27 = v6[13];
  v59 = enum case for UserInterfaceSizeClass.compact(_:);
  v58 = v27;
  v27(v23);
  v57 = v6[7];
  v57(v23, 0, 1, v5);
  v60 = v8;
  v28 = *(v8 + 48);
  sub_1000D2DFC(v26, v12, &qword_10190A450);
  sub_1000D2DFC(v23, &v12[v28], &qword_10190A450);
  v70 = v6;
  v29 = v6[6];
  if (v29(v12, 1, v5) == 1)
  {
    v69 = v29;
    sub_100024F64(v23, &qword_10190A450);
    sub_100024F64(v26, &qword_10190A450);
    if (v69(&v12[v28], 1, v5) != 1)
    {
      v30 = v71;
LABEL_14:
      result = sub_100024F64(v12, &qword_10190A538);
      goto LABEL_15;
    }

    sub_100024F64(v12, &qword_10190A450);
    v30 = v71;
  }

  else
  {
    v31 = v66;
    sub_1000D2DFC(v12, v66, &qword_10190A450);
    if (v29(&v12[v28], 1, v5) == 1)
    {
      v30 = v71;
      v32 = v31;
LABEL_13:
      sub_100024F64(v23, &qword_10190A450);
      sub_100024F64(v26, &qword_10190A450);
      (v70[1])(v32, v5);
      goto LABEL_14;
    }

    v69 = v29;
    (v70[4])(v68, &v12[v28], v5);
    sub_1000EA910(&qword_10190A540, &type metadata accessor for UserInterfaceSizeClass);
    v52 = dispatch thunk of static Equatable.== infix(_:_:)();
    v33 = v70[1];
    v33(v68, v5);
    sub_100024F64(v23, &qword_10190A450);
    sub_100024F64(v26, &qword_10190A450);
    v33(v31, v5);
    result = sub_100024F64(v12, &qword_10190A450);
    v30 = v71;
    if ((v52 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v35 = v67;
  sub_1000EABBC(v67);
  v36 = v61;
  v58(v61, v59, v5);
  v57(v36, 0, 1, v5);
  v37 = v36;
  v38 = *(v60 + 48);
  v12 = v62;
  sub_1000D2DFC(v35, v62, &qword_10190A450);
  sub_1000D2DFC(v36, &v12[v38], &qword_10190A450);
  v39 = v69;
  if (v69(v12, 1, v5) == 1)
  {
    sub_100024F64(v36, &qword_10190A450);
    sub_100024F64(v35, &qword_10190A450);
    if (v39(&v12[v38], 1, v5) == 1)
    {
      sub_100024F64(v12, &qword_10190A450);
LABEL_18:
      v49 = v54;
      v48 = v55;
      v50 = v53;
      (*(v54 + 104))(v53, enum case for CardHeaderExpansionState.Expanded(_:), v55);
      CardHeaderExpansionState.rawValue.getter();
      return (*(v49 + 8))(v50, v48);
    }

    goto LABEL_14;
  }

  v32 = v56;
  sub_1000D2DFC(v12, v56, &qword_10190A450);
  if (v39(&v12[v38], 1, v5) == 1)
  {
    v23 = v36;
    v26 = v67;
    goto LABEL_13;
  }

  v43 = v70;
  v44 = &v12[v38];
  v45 = v68;
  (v70[4])(v68, v44, v5);
  sub_1000EA910(&qword_10190A540, &type metadata accessor for UserInterfaceSizeClass);
  v46 = dispatch thunk of static Equatable.== infix(_:_:)();
  v47 = v43[1];
  v47(v45, v5);
  sub_100024F64(v37, &qword_10190A450);
  sub_100024F64(v67, &qword_10190A450);
  v47(v32, v5);
  result = sub_100024F64(v12, &qword_10190A450);
  if (v46)
  {
    goto LABEL_18;
  }

LABEL_15:
  v40 = *(v30 + 24);
  if (*(v30 + 32) != 1)
  {

    static os_log_type_t.fault.getter();
    v41 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v42 = v63;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000A1574(v40, 0);
    return (*(v64 + 8))(v42, v65);
  }

  return result;
}

uint64_t sub_1000EB72C@<X0>(uint64_t a1@<X8>)
{
  v91 = a1;
  v2 = type metadata accessor for UserGuideHeaderView(0);
  v89 = *(v2 - 8);
  v88 = *(v89 + 64);
  __chkstk_darwin(v2 - 8);
  v90 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v87 = &v67 - v5;
  v6 = type metadata accessor for CardHeaderExpansionState();
  v85 = *(v6 - 8);
  v86 = v6;
  __chkstk_darwin(v6);
  v84 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v97 = &v67 - v9;
  v10 = type metadata accessor for CenteredCardHeaderBackgroundImageStyle();
  v82 = *(v10 - 8);
  v83 = v10;
  __chkstk_darwin(v10);
  v81 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CardHeaderSize();
  v79 = *(v12 - 8);
  v80 = v12;
  __chkstk_darwin(v12);
  v78 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000CE6B8(&qword_10190A518);
  __chkstk_darwin(v14 - 8);
  v95 = &v67 - v15;
  v16 = type metadata accessor for CenteredCardHeaderContentViewModel();
  v99 = *(v16 - 8);
  v100 = v16;
  __chkstk_darwin(v16);
  v98 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v96 = &v67 - v19;
  v20 = sub_1000CE6B8(&unk_101910FC0);
  __chkstk_darwin(v20 - 8);
  v76 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v75 = &v67 - v23;
  __chkstk_darwin(v24);
  v68 = &v67 - v25;
  v26 = type metadata accessor for CardHeaderTextViewModel();
  v27 = *(v26 - 8);
  v92 = v26;
  v93 = v27;
  __chkstk_darwin(v26);
  v94 = &v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v1;
  v29 = v1[1];
  v30 = v1[2];
  v102 = *v1;
  v103 = v29;
  v31 = v102;
  v73 = v29;
  v74 = v102;
  v32 = v29;
  v104 = v30;
  v72 = v30;
  v71 = sub_1000CE6B8(&qword_10190A160);
  Binding.wrappedValue.getter();
  v33 = v106;
  swift_getKeyPath();
  v102 = v33;
  sub_1000EA910(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v34 = OBJC_IVAR____TtC4Maps18UserGuideViewModel__state;
  swift_beginAccess();
  sub_1000EF8AC(&v33[v34], &v102);

  sub_1000EF908(&v102, &v106);
  sub_1000EF964(&v102);
  v69 = v110;
  v70 = v109;

  sub_1000EF9B8(&v106);
  v102 = v31;
  v103 = v32;
  v104 = v30;
  Binding.wrappedValue.getter();
  v35 = v101[0];
  swift_getKeyPath();
  v102 = v35;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v36 = OBJC_IVAR____TtC4Maps18UserGuideViewModel__state;
  swift_beginAccess();
  sub_1000EF8AC(&v35[v36], &v102);

  sub_1000EF908(&v102, v101);
  sub_1000EF964(&v102);
  v67 = sub_10039547C();
  sub_1000EF9B8(v101);
  v37 = enum case for MapsDesignAccessibilityString.titleLabel(_:);
  v38 = type metadata accessor for MapsDesignAccessibilityString();
  v39 = *(v38 - 8);
  v40 = *(v39 + 104);
  v41 = v68;
  v40(v68, v37, v38);
  v42 = *(v39 + 56);
  v42(v41, 0, 1, v38);
  v43 = v75;
  v40(v75, enum case for MapsDesignAccessibilityString.subtitleLabel(_:), v38);
  v42(v43, 0, 1, v38);
  v44 = v76;
  v40(v76, enum case for MapsDesignAccessibilityString.tertiaryLabel(_:), v38);
  v42(v44, 0, 1, v38);
  static HorizontalAlignment.center.getter();
  v45 = v94;
  CardHeaderTextViewModel.init(title:titleAXID:subtitle:subtitleAXID:interactiveSubtitle:interactiveSubtitleAXID:alignment:interactiveTitleTapHandler:interactiveSubtitleTapHandler:)();
  v46 = v92;
  v47 = v93;
  v48 = v95;
  (*(v93 + 16))(v95, v45, v92);
  (*(v47 + 56))(v48, 0, 1, v46);
  (*(v79 + 104))(v78, enum case for CardHeaderSize.large(_:), v80);
  v49 = v77;
  sub_1000EC27C(&v102);
  (*(v82 + 104))(v81, enum case for CenteredCardHeaderBackgroundImageStyle.fadedBlurred(_:), v83);
  v51 = v73;
  v50 = v74;
  v106 = v74;
  v107 = v73;
  v52 = v72;
  v108 = v72;
  Binding.wrappedValue.getter();
  sub_1003F2E04();

  v53 = v96;
  CenteredCardHeaderContentViewModel.init(textViewModel:size:backgroundImageProvider:backgroundImageStyle:editing:)();
  (*(v99 + 16))(v98, v53, v100);
  sub_1000EADA4();
  v102 = v50;
  v103 = v51;
  v104 = v52;
  Binding.projectedValue.getter();
  v54 = v106;
  v55 = v107;
  v56 = v108;
  swift_getKeyPath();
  v106 = v54;
  v107 = v55;
  v108 = v56;
  Binding.subscript.getter();

  v95 = v102;
  v82 = v104;
  v83 = v103;
  v81 = v105;

  v57 = v86;
  v58 = *(v85 + 104);
  v58(v97, enum case for CardHeaderExpansionState.Mini(_:), v86);
  v58(v84, enum case for CardHeaderExpansionState.Expanded(_:), v57);
  v59 = v87;
  sub_1000F0A58(v49, v87, type metadata accessor for UserGuideHeaderView);
  v60 = (*(v89 + 80) + 16) & ~*(v89 + 80);
  v61 = swift_allocObject();
  sub_1000F0720(v59, v61 + v60, type metadata accessor for UserGuideHeaderView);
  v62 = v90;
  sub_1000F0A58(v49, v90, type metadata accessor for UserGuideHeaderView);
  v63 = swift_allocObject();
  sub_1000F0720(v62, v63 + v60, type metadata accessor for UserGuideHeaderView);
  sub_1000CE6B8(&qword_10190A520);
  v64 = type metadata accessor for CoverPhotoCardOrnament();
  v65 = sub_1000EA910(&qword_10190A528, &type metadata accessor for CoverPhotoCardOrnament);
  v101[0] = v64;
  v101[1] = v65;
  swift_getOpaqueTypeConformance2();
  CenteredCardHeaderContent.init(viewModel:expansionProgress:editableTitle:leadingButtonsWidthBinding:trailingButtonsWidthBinding:ornamentViewVisibilityRange:submitHandler:ornamentViewBuilder:)();
  (*(v99 + 8))(v96, v100);
  return (*(v93 + 8))(v94, v92);
}

uint64_t sub_1000EC27C@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v10 = v3;
  v11 = v4;
  sub_1000CE6B8(&qword_10190A160);
  Binding.wrappedValue.getter();
  swift_getKeyPath();
  sub_1000EA910(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v12[0] + OBJC_IVAR____TtC4Maps18UserGuideViewModel__userGuideImage);
  v6 = v5;

  if (v5)
  {
    a1[3] = sub_1000F1178();
    result = sub_1000EA910(&qword_10190DE60, sub_1000F1178);
    a1[4] = result;
    *a1 = v6;
  }

  else
  {
    v10 = v3;
    v11 = v4;
    Binding.wrappedValue.getter();
    swift_getKeyPath();
    v9 = v12[0];
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v8 = OBJC_IVAR____TtC4Maps18UserGuideViewModel__state;
    swift_beginAccess();
    sub_1000EF8AC(v12[0] + v8, &v9);

    sub_1000EF908(&v9, v12);
    sub_1000EF964(&v9);
    sub_10005EB40(v12, a1);
    return sub_1000EF9B8(v12);
  }

  return result;
}

uint64_t sub_1000EC480()
{
  sub_1000CE6B8(&qword_10190A160);
  Binding.wrappedValue.getter();
  sub_1003F3B54(1);
}

uint64_t sub_1000EC4E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for UserGuideHeaderView(0);
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  __chkstk_darwin(v3 - 8);
  v22 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for CoverPhotoCardOrnament();
  v23 = *(v24 - 8);
  __chkstk_darwin(v24);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  v26[0] = *a1;
  v26[1] = v7;
  v26[2] = v9;
  sub_1000CE6B8(&qword_10190A160);
  Binding.wrappedValue.getter();
  v10 = v27[0];
  swift_getKeyPath();
  v26[0] = v10;
  sub_1000EA910(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = OBJC_IVAR____TtC4Maps18UserGuideViewModel__state;
  swift_beginAccess();
  sub_1000EF8AC(v10 + v11, v26);

  sub_1000EF908(v26, v27);
  sub_1000EF964(v26);
  LOBYTE(v11) = v28;
  sub_1000EF9B8(v27);
  if (v11)
  {
    sub_1000F1178();
    static MapsDesignConstants.Image.Guides.favorites.getter();
    v12 = static UIImage.mapsDesignImage(_:)();

    v26[3] = sub_1000CE6B8(&unk_101916610);
    v26[4] = sub_1000414C8(&qword_10190A530, &unk_101916610);
    v26[0] = v12;
    type metadata accessor for CoverPhotoCardOrnamentViewModel();
    swift_allocObject();
    CoverPhotoCardOrnamentViewModel.init(imageProvider:placeholderColor:editing:)();

    sub_1000EADA4();
    CoverPhotoCardOrnament.init(viewModel:expansionProgress:)();
    sub_1000EA910(&qword_10190A528, &type metadata accessor for CoverPhotoCardOrnament);
    v13 = v25;
    v14 = v24;
    View.onTapGesture(count:perform:)();
  }

  else
  {
    sub_1000EC27C(v26);
    v15 = [objc_opt_self() secondaryLabelColor];
    v27[0] = v8;
    v27[1] = v7;
    v27[2] = v9;
    Binding.wrappedValue.getter();
    sub_1003F2E04();

    type metadata accessor for CoverPhotoCardOrnamentViewModel();
    swift_allocObject();
    CoverPhotoCardOrnamentViewModel.init(imageProvider:placeholderColor:editing:)();

    sub_1000EADA4();
    CoverPhotoCardOrnament.init(viewModel:expansionProgress:)();
    v16 = v22;
    sub_1000F0A58(a1, v22, type metadata accessor for UserGuideHeaderView);
    v17 = (*(v21 + 80) + 16) & ~*(v21 + 80);
    v18 = swift_allocObject();
    sub_1000F0720(v16, v18 + v17, type metadata accessor for UserGuideHeaderView);
    sub_1000EA910(&qword_10190A528, &type metadata accessor for CoverPhotoCardOrnament);
    v13 = v25;
    v14 = v24;
    View.onTapGesture(count:perform:)();
  }

  (*(v23 + 8))(v6, v14);
  v19 = sub_1000CE6B8(&qword_10190A520);
  return (*(*(v19 - 8) + 56))(v13, 0, 1, v19);
}

uint64_t sub_1000ECA64()
{
  sub_1000CE6B8(&qword_10190A160);
  Binding.wrappedValue.getter();
  v0 = sub_1003F2E04();

  if (v0)
  {
    Binding.wrappedValue.getter();
    swift_getKeyPath();
    sub_1000EA910(&qword_10190A158, type metadata accessor for UserGuideViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v2 = *(v4 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__onChoosePhoto);
    if (v2)
    {

      v2(v3);

      return sub_1000588AC(v2);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1000ECBB8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v214 = a2;
  v213 = sub_1000CE6B8(&qword_10190A2B0);
  __chkstk_darwin(v213);
  v201 = &v156 - v3;
  v4 = type metadata accessor for EnvironmentValues();
  v181 = *(v4 - 8);
  v182 = v4;
  __chkstk_darwin(v4);
  v180 = &v156 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MapsDesignAccessibilityString();
  v195 = *(v6 - 8);
  v196 = v6;
  __chkstk_darwin(v6);
  v194 = (&v156 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1000CE6B8(&qword_10190A2B8);
  v192 = *(v8 - 8);
  v193 = v8;
  __chkstk_darwin(v8);
  v190 = &v156 - v9;
  v198 = sub_1000CE6B8(&qword_10190A2C0);
  __chkstk_darwin(v198);
  v197 = &v156 - v10;
  v199 = sub_1000CE6B8(&qword_10190A2C8);
  __chkstk_darwin(v199);
  v200 = &v156 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v217 = &v156 - v13;
  v14 = sub_1000CE6B8(&qword_10190A2D0);
  v188 = *(v14 - 8);
  v189 = v14;
  __chkstk_darwin(v14);
  v179 = &v156 - v15;
  v16 = type metadata accessor for VerticalSpacing.SpacingType();
  v173 = *(v16 - 8);
  v174 = v16;
  __chkstk_darwin(v16);
  v172 = &v156 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for VerticalSpacing();
  v177 = *(v18 - 8);
  v178 = v18;
  __chkstk_darwin(v18);
  v176 = &v156 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v175 = &v156 - v21;
  v22 = type metadata accessor for UserGuideScrollView(0);
  v168 = *(v22 - 8);
  __chkstk_darwin(v22 - 8);
  v169 = v23;
  v170 = &v156 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = type metadata accessor for UUID();
  v165 = *(v203 - 8);
  __chkstk_darwin(v203);
  v163 = &v156 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for GridButtonViewModel.ButtonProminence();
  v160 = *(v25 - 8);
  v161 = v25;
  __chkstk_darwin(v25);
  v164 = &v156 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for GridButtonViewModel.ButtonMetrics();
  v158 = *(v27 - 8);
  v159 = v27;
  __chkstk_darwin(v27);
  v162 = &v156 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_1000CE6B8(&qword_10190A2D8);
  __chkstk_darwin(v166);
  v167 = &v156 - v29;
  v30 = sub_1000CE6B8(&qword_10190A2E0);
  __chkstk_darwin(v30 - 8);
  v171 = &v156 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v187 = &v156 - v33;
  v34 = sub_1000CE6B8(&qword_10190A2E8);
  __chkstk_darwin(v34 - 8);
  v191 = &v156 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v215 = &v156 - v37;
  v207 = sub_1000CE6B8(&qword_10190A2F0);
  __chkstk_darwin(v207);
  v210 = &v156 - v38;
  v209 = sub_1000CE6B8(&qword_10190A2F8);
  __chkstk_darwin(v209);
  v186 = (&v156 - v39);
  v40 = sub_1000CE6B8(&qword_10191D860);
  v184 = *(v40 - 8);
  v185 = v40;
  __chkstk_darwin(v40);
  v183 = &v156 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v202 = &v156 - v43;
  v44 = sub_1000CE6B8(&qword_10190A300);
  __chkstk_darwin(v44 - 8);
  v212 = &v156 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v211 = &v156 - v47;
  v48 = type metadata accessor for UserGuideHeaderView(0);
  v49 = v48 - 8;
  __chkstk_darwin(v48);
  v51 = &v156 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1000CE6B8(&qword_10190A308);
  v53 = v52 - 8;
  __chkstk_darwin(v52);
  v205 = &v156 - v54;
  v206 = sub_1000CE6B8(&qword_10190A310) - 8;
  __chkstk_darwin(v206);
  v208 = &v156 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v58 = &v156 - v57;
  __chkstk_darwin(v59);
  v218 = &v156 - v60;
  v62 = a1[3];
  v61 = a1[4];
  KeyPath = a1;
  v219 = a1[5];
  *&v228 = v62;
  *(&v228 + 1) = v61;
  *&v229 = v219;
  v220 = sub_1000CE6B8(&qword_10190A160);
  Binding.projectedValue.getter();
  v63 = v224;
  v204 = v225;
  *&v51[*(v49 + 32)] = swift_getKeyPath();
  sub_1000CE6B8(&qword_10190A318);
  v64 = v61;
  swift_storeEnumTagMultiPayload();
  *&v51[*(v49 + 36)] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *v51 = v63;
  *(v51 + 8) = v204;
  *(v51 + 3) = swift_getKeyPath();
  v51[32] = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v65 = v51;
  v66 = v219;
  v67 = v205;
  sub_1000F0720(v65, v205, type metadata accessor for UserGuideHeaderView);
  v68 = (v67 + *(v53 + 44));
  v69 = v231;
  v70 = v233;
  v68[4] = v232;
  v68[5] = v70;
  v68[6] = v234;
  v71 = v229;
  *v68 = v228;
  v68[1] = v71;
  v68[2] = v230;
  v68[3] = v69;
  v72 = static Alignment.center.getter();
  v74 = v73;
  sub_1000F11C4(v67, v58, &qword_10190A308);
  v75 = &v58[*(v206 + 44)];
  *v75 = sub_1000EE6D4;
  v75[1] = 0;
  v75[2] = v72;
  v75[3] = v74;
  sub_1000F11C4(v58, v218, &qword_10190A310);
  v224 = v62;
  *&v225 = v64;
  *(&v225 + 1) = v66;
  Binding.wrappedValue.getter();
  v76 = *v223;
  swift_getKeyPath();
  v224 = v76;
  v77 = sub_1000EA910(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v78 = OBJC_IVAR____TtC4Maps18UserGuideViewModel__state;
  swift_beginAccess();
  sub_1000EF8AC(v76 + v78, &v224);

  v79 = v226;
  v80 = v227;
  sub_1000F0120(v226);
  sub_1000EF964(&v224);
  if (v79)
  {
    v202 = v80;
    *&v204 = v79;
    *v223 = v62;
    v206 = v64;
    *&v223[8] = v64;
    *&v223[16] = v66;
    Binding.wrappedValue.getter();
    v81 = v221[0];
    swift_getKeyPath();
    *v223 = v81;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v82 = OBJC_IVAR____TtC4Maps18UserGuideViewModel__state;
    swift_beginAccess();
    sub_1000EF8AC(v81 + v82, v223);

    sub_1000EF908(v223, v221);
    sub_1000EF964(v223);
    LOBYTE(v82) = v222;
    sub_1000EF9B8(v221);
    v157 = v62;
    v205 = v77;
    if (v82)
    {
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v235._object = 0x800000010121A5C0;
      v83._countAndFlagsBits = 0x50206F7420646441;
      v83._object = 0xED0000736563616CLL;
      v84._object = 0x800000010121A5A0;
      v235._countAndFlagsBits = 0xD000000000000032;
      v84._countAndFlagsBits = 0xD00000000000001BLL;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v84, 0, qword_1019600D8, v83, v235);
      (*(v158 + 104))(v162, enum case for GridButtonViewModel.ButtonMetrics.large(_:), v159);
      (*(v160 + 104))(v164, enum case for GridButtonViewModel.ButtonProminence.primary(_:), v161);
      v85 = v163;
      UUID.init()();
      UUID.uuidString.getter();
      (*(v165 + 8))(v85, v203);
      static Color.blue.getter();
      type metadata accessor for GridButtonViewModel();
      swift_allocObject();
      GridButtonViewModel.init(id:title:subtitle:icon:metrics:style:compact:color:progress:leadingIcon:lineLimit:)();
      v86 = KeyPath;
      v87 = v170;
      sub_1000F0A58(KeyPath, v170, type metadata accessor for UserGuideScrollView);
      v88 = (*(v168 + 80) + 16) & ~*(v168 + 80);
      v89 = swift_allocObject();
      sub_1000F0720(v87, v89 + v88, type metadata accessor for UserGuideScrollView);
      v90 = v167;
      GridButton.init(model:tapHandler:)();
      v91 = static Edge.Set.horizontal.getter();
      static MapsDesignConstants.Spacing.contentHorizontalPadding.getter();
      EdgeInsets.init(_all:)();
      v92 = v90 + *(v166 + 36);
      *v92 = v91;
      *(v92 + 8) = v93;
      *(v92 + 16) = v94;
      *(v92 + 24) = v95;
      *(v92 + 32) = v96;
      *(v92 + 40) = 0;
      strcpy(v223, "AddToLibrary");
      v223[13] = 0;
      *&v223[14] = -5120;
      v97._countAndFlagsBits = 0x6E6F74747542;
      v97._object = 0xE600000000000000;
      String.append(_:)(v97);
      sub_1000F07B4();
      v98 = v187;
      View.accessibilityIdentifier(_:)();

      sub_100024F64(v90, &qword_10190A2D8);
      (*(v173 + 104))(v172, enum case for VerticalSpacing.SpacingType.small(_:), v174);
      v99 = v175;
      VerticalSpacing.init(_:)();
      v100 = v171;
      sub_1000D2DFC(v98, v171, &qword_10190A2E0);
      v102 = v176;
      v101 = v177;
      v103 = *(v177 + 16);
      v104 = v178;
      v103(v176, v99, v178);
      v105 = v179;
      sub_1000D2DFC(v100, v179, &qword_10190A2E0);
      v106 = sub_1000CE6B8(&qword_10190A400);
      v103((v105 + *(v106 + 48)), v102, v104);
      v107 = *(v101 + 8);
      v107(v99, v104);
      sub_100024F64(v187, &qword_10190A2E0);
      v107(v102, v104);
      sub_100024F64(v100, &qword_10190A2E0);
      v108 = v215;
      sub_1000F11C4(v105, v215, &qword_10190A2D0);
      v109 = 0;
    }

    else
    {
      v109 = 1;
      v108 = v215;
      v86 = KeyPath;
    }

    (*(v188 + 56))(v108, v109, 1, v189);
    *v223 = *v86;
    *&v223[8] = *(v86 + 8);
    sub_1000CE6B8(&qword_10190A320);
    v121 = Binding.projectedValue.getter();
    v189 = &v156;
    __chkstk_darwin(v121);
    sub_1000CE6B8(&qword_10190A328);
    sub_1000EA910(&qword_1019156D0, &type metadata accessor for UUID);
    sub_1000F016C();
    v122 = v190;
    List.init(selection:content:)();

    v124 = v194;
    v123 = v195;
    *v194 = 0x6469754772657355;
    v124[1] = 0xEA00000000007365;
    v125 = v196;
    (*(v123 + 104))(v124, enum case for MapsDesignAccessibilityString.list(_:), v196);
    sub_1000414C8(&qword_10190A3A8, &qword_10190A2B8);
    v126 = v197;
    v127 = v193;
    View.mapsDesignAXContainer(withID:)();
    (*(v123 + 8))(v124, v125);
    (*(v192 + 8))(v122, v127);
    v128 = static Animation.default.getter();
    v129 = v157;
    *v223 = v157;
    *&v223[8] = v206;
    *&v223[16] = v219;
    Binding.wrappedValue.getter();
    v130 = v221[0];
    swift_getKeyPath();
    *v223 = v130;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v131 = *(v130 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__generationCountForAnimation);

    v132 = (v126 + *(v198 + 36));
    *v132 = v128;
    v132[1] = v131;
    sub_1000F05F8();
    View.listHasLazyStackBehavior()();
    sub_100024F64(v126, &qword_10190A2C0);
    v133 = KeyPath[6];
    if (*(KeyPath + 56) == 1)
    {
      v134 = KeyPath[6];
    }

    else
    {

      static os_log_type_t.fault.getter();
      v135 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v136 = v180;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000A1574(v133, 0);
      (*(v181 + 8))(v136, v182);
      v134 = *v223;
    }

    v137 = sub_1000CE6B8(&qword_10190A3C8);
    v138 = v217;
    *&v217[*(v137 + 36)] = v134;
    KeyPath = swift_getKeyPath();
    v139 = (v138 + *(v199 + 36));
    v140 = *(sub_1000CE6B8(&qword_10190A120) + 28);
    *v223 = v129;
    *&v223[8] = v206;
    *&v223[16] = v219;
    Binding.projectedValue.getter();
    v141 = v221[0];
    v142 = v221[1];
    v143 = v221[2];
    swift_getKeyPath();
    *v223 = v141;
    *&v223[8] = v142;
    *&v223[16] = v143;
    Binding.subscript.getter();

    v144 = sub_1000CE6B8(&qword_10190A168);
    (*(*(v144 - 8) + 56))(&v139[v140], 0, 1, v144);
    v145 = v215;
    *v139 = KeyPath;
    v146 = v191;
    sub_1000D2DFC(v145, v191, &qword_10190A2E8);
    v147 = v200;
    sub_1000D2DFC(v138, v200, &qword_10190A2C8);
    v148 = v201;
    sub_1000D2DFC(v146, v201, &qword_10190A2E8);
    v149 = sub_1000CE6B8(&qword_10190A3D0);
    sub_1000D2DFC(v147, v148 + *(v149 + 48), &qword_10190A2C8);
    sub_100024F64(v147, &qword_10190A2C8);
    sub_100024F64(v146, &qword_10190A2E8);
    sub_1000D2DFC(v148, v210, &qword_10190A2B0);
    swift_storeEnumTagMultiPayload();
    sub_1000414C8(&qword_10190A3D8, &qword_10190A2F8);
    sub_1000414C8(&qword_10190A3E0, &qword_10190A2B0);
    v120 = v211;
    _ConditionalContent<>.init(storage:)();
    sub_100024F64(v148, &qword_10190A2B0);
    sub_100024F64(v138, &qword_10190A2C8);
    sub_100024F64(v145, &qword_10190A2E8);
  }

  else
  {
    v110 = v202;
    ProgressView<>.init<>()();
    v111 = v183;
    v112 = v184;
    v113 = *(v184 + 16);
    v114 = v185;
    v113(v183, v110, v185);
    v115 = v186;
    *v186 = 0;
    *(v115 + 8) = 1;
    v116 = sub_1000CE6B8(&qword_10190A408);
    v113((v115 + *(v116 + 48)), v111, v114);
    v117 = v115 + *(v116 + 64);
    *v117 = 0;
    *(v117 + 8) = 1;
    v118 = *(v112 + 8);
    v118(v111, v114);
    sub_1000D2DFC(v115, v210, &qword_10190A2F8);
    swift_storeEnumTagMultiPayload();
    sub_1000414C8(&qword_10190A3D8, &qword_10190A2F8);
    sub_1000414C8(&qword_10190A3E0, &qword_10190A2B0);
    v119 = v211;
    _ConditionalContent<>.init(storage:)();
    sub_100024F64(v115, &qword_10190A2F8);
    v118(v202, v114);
    v120 = v119;
  }

  v150 = v218;
  v151 = v208;
  sub_1000D2DFC(v218, v208, &qword_10190A310);
  v152 = v212;
  sub_1000D2DFC(v120, v212, &qword_10190A300);
  v153 = v214;
  sub_1000D2DFC(v151, v214, &qword_10190A310);
  v154 = sub_1000CE6B8(&qword_10190A3E8);
  sub_1000D2DFC(v152, v153 + *(v154 + 48), &qword_10190A300);
  sub_100024F64(v120, &qword_10190A300);
  sub_100024F64(v150, &qword_10190A310);
  sub_100024F64(v152, &qword_10190A300);
  return sub_100024F64(v151, &qword_10190A310);
}

uint64_t sub_1000EE6D4@<X0>(uint64_t *a1@<X8>)
{
  v2 = static Color.clear.getter();
  result = GeometryProxy.size.getter();
  *a1 = v2;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000EE714()
{
  sub_1000CE6B8(&qword_10190A160);
  Binding.wrappedValue.getter();
  sub_1003F4B50();
}

uint64_t sub_1000EE778@<X0>(uint64_t a1@<X0>, unint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v31 = a2;
  v36 = a3;
  v4 = type metadata accessor for UserGuideScrollView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v35 = sub_1000CE6B8(&qword_10190A378);
  v7 = *(v35 - 8);
  __chkstk_darwin(v35);
  v9 = &v27 - v8;
  v33 = sub_1000CE6B8(&qword_10190A410);
  __chkstk_darwin(v33);
  v34 = &v27 - v10;
  v11 = sub_1000CE6B8(&qword_10190A418);
  v29 = *(v11 - 8);
  v30 = v11;
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  v32 = sub_1000CE6B8(&qword_10190A340);
  __chkstk_darwin(v32);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  if (*(a1 + 16))
  {
    *&v41 = a1;
    sub_1000F0A58(v31, &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for UserGuideScrollView);
    v19 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v20 = swift_allocObject();
    sub_1000F0720(&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for UserGuideScrollView);

    sub_1000CE6B8(&qword_10190A420);
    type metadata accessor for UUID();
    sub_1000CE6B8(&qword_10190A388);
    sub_1000414C8(&qword_10190A428, &qword_10190A420);
    sub_1000F0428();
    sub_1000EA910(&qword_10190A430, type metadata accessor for UserGuideItemRowViewModel);
    ForEach<>.init(_:content:)();
    v21 = v35;
    (*(v7 + 16))(v34, v9, v35);
    swift_storeEnumTagMultiPayload();
    sub_1000F01F8();
    sub_1000F03A4();
    _ConditionalContent<>.init(storage:)();
    return (*(v7 + 8))(v9, v21);
  }

  else
  {
    v31 = static HorizontalAlignment.center.getter();
    v45 = 0;
    sub_1000EEE98(&v41);
    v23 = v41;
    v24 = v42[0];
    v28 = BYTE8(v42[1]);
    v27 = *(v42 + 8);
    v44 = v42[0];
    v25 = v45;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *(&v46[6] + 7) = *&v46[21];
    *(&v46[8] + 7) = *&v46[23];
    *(&v46[10] + 7) = *&v46[25];
    *(&v46[12] + 7) = v47;
    *(v46 + 7) = *&v46[15];
    *(&v46[2] + 7) = *&v46[17];
    *(&v46[4] + 7) = *&v46[19];
    v37 = v31;
    v38[0] = v25;
    *&v38[8] = v23;
    v38[24] = v24;
    v39 = v27;
    v40[0] = v28;
    *&v40[65] = *&v46[8];
    *&v40[81] = *&v46[10];
    *&v40[97] = *&v46[12];
    *&v40[112] = *(&v47 + 1);
    *&v40[1] = *v46;
    *&v40[17] = *&v46[2];
    *&v40[33] = *&v46[4];
    *&v40[49] = *&v46[6];
    static VerticalEdge.Set.all.getter();
    sub_1000CE6B8(&qword_10190A348);
    sub_1000F02EC();
    View.listRowSeparator(_:edges:)();
    v42[7] = *&v40[64];
    v42[8] = *&v40[80];
    v42[9] = *&v40[96];
    v43 = *&v40[112];
    v42[3] = *v40;
    v42[4] = *&v40[16];
    v42[5] = *&v40[32];
    v42[6] = *&v40[48];
    v41 = v37;
    v42[0] = *v38;
    v42[1] = *&v38[16];
    v42[2] = v39;
    sub_100024F64(&v41, &qword_10190A348);
    *&v37 = static Color.clear.getter();
    v26 = AnyView.init<A>(_:)();
    (*(v29 + 32))(v15, v13, v30);
    *&v15[*(v32 + 36)] = v26;
    sub_1000A1584(v15, v18);
    sub_1000D2DFC(v18, v34, &qword_10190A340);
    swift_storeEnumTagMultiPayload();
    sub_1000F01F8();
    sub_1000F03A4();
    _ConditionalContent<>.init(storage:)();
    return sub_100024F64(v18, &qword_10190A340);
  }
}

uint64_t sub_1000EEE98@<X0>(uint64_t a1@<X8>)
{
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v22._object = 0x800000010121A670;
  v2._countAndFlagsBits = 0xD00000000000003CLL;
  v2._object = 0x800000010121A600;
  v3._countAndFlagsBits = 0xD00000000000002FLL;
  v3._object = 0x800000010121A640;
  v22._countAndFlagsBits = 0xD000000000000022;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, qword_1019600D8, v3, v22);
  sub_1000E5580();
  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  static Font.body.getter();
  v9 = Text.font(_:)();
  v11 = v10;
  v13 = v12;

  sub_1000F0A40(v4, v6, v8 & 1);

  static HierarchicalShapeStyle.secondary.getter();
  v14 = Text.foregroundStyle<A>(_:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_1000F0A40(v9, v11, v13 & 1);

  result = swift_getKeyPath();
  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v18 & 1;
  *(a1 + 24) = v20;
  *(a1 + 32) = result;
  *(a1 + 40) = 1;
  return result;
}

uint64_t sub_1000EF068()
{
  sub_1000CE6B8(&qword_10190A438);
  type metadata accessor for PlaceCell();
  sub_1000EA910(&qword_10190D640, &type metadata accessor for PlaceCell);
  swift_getOpaqueTypeConformance2();
  return Section<>.init(content:)();
}

uint64_t sub_1000EF140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a2;
  v34 = a3;
  v4 = type metadata accessor for MapsDesignAccessibilityString();
  v32 = *(v4 - 8);
  v33 = v4;
  __chkstk_darwin(v4);
  v6 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for UserGuideScrollView(0);
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for UserGuideItemRowViewModel();
  v27 = *(v9 - 8);
  v10 = *(v27 + 64);
  __chkstk_darwin(v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PlaceCell();
  v13 = *(v12 - 8);
  v30 = v12;
  v31 = v13;
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35[3] = v9;
  v35[4] = sub_1000EA910(&qword_10190A440, type metadata accessor for UserGuideItemRowViewModel);
  v16 = sub_10001A848(v35);
  sub_1000F0A58(a1, v16, type metadata accessor for UserGuideItemRowViewModel);
  sub_1000F0A58(a1, v11, type metadata accessor for UserGuideItemRowViewModel);
  sub_1000F0A58(v29, &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for UserGuideScrollView);
  v17 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v18 = (v10 + *(v28 + 80) + v17) & ~*(v28 + 80);
  v19 = swift_allocObject();
  sub_1000F0720(v11, v19 + v17, type metadata accessor for UserGuideItemRowViewModel);
  sub_1000F0720(&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for UserGuideScrollView);
  PlaceCell.init(model:tapHandler:)();
  if (*(*(a1 + *(v9 + 36)) + OBJC_IVAR____TtC4Maps13UserGuideItem_type + 8))
  {
    v20 = 0xD000000000000016;
  }

  else
  {
    v20 = 0xD000000000000010;
  }

  if (*(*(a1 + *(v9 + 36)) + OBJC_IVAR____TtC4Maps13UserGuideItem_type + 8))
  {
    v21 = "tate in user guide";
  }

  else
  {
    v21 = "UserGuides.TransitLine";
  }

  *v6 = v20;
  v6[1] = v21 | 0x8000000000000000;
  v23 = v32;
  v22 = v33;
  (*(v32 + 104))(v6, enum case for MapsDesignAccessibilityString.cell(_:), v33);
  sub_1000EA910(&qword_10190D640, &type metadata accessor for PlaceCell);
  v24 = v30;
  View.mapsDesignAXContainer(withID:)();
  (*(v23 + 8))(v6, v22);
  return (*(v31 + 8))(v15, v24);
}

uint64_t sub_1000EF5A4(uint64_t a1)
{
  result = type metadata accessor for UserGuideItemRowViewModel();
  v3 = *(a1 + *(result + 36)) + OBJC_IVAR____TtC4Maps13UserGuideItem_type;
  if ((*(v3 + 8) & 1) == 0)
  {
    v4 = *v3;
    v5 = *v3;
    sub_1000CE6B8(&qword_10190A160);
    Binding.wrappedValue.getter();
    swift_getKeyPath();
    sub_1000EA910(&qword_10190A158, type metadata accessor for UserGuideViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v6 = *(v7 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__onSelect);
    if (v6)
    {

      v6(v5);
      sub_1000F0B8C(v4, 0);

      return sub_1000588AC(v6);
    }

    else
    {
      sub_1000F0B8C(v4, 0);
    }
  }

  return result;
}

uint64_t sub_1000EF718()
{
  static Axis.Set.vertical.getter();
  sub_1000CE6B8(&qword_10190A2A0);
  sub_1000414C8(&qword_10190A2A8, &qword_10190A2A0);
  return ScrollView.init(_:showsIndicators:content:)();
}

uint64_t sub_1000EF7D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000EA910(&qword_10190A158, type metadata accessor for UserGuideViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC4Maps18UserGuideViewModel__generationCountForAnimation);
  return result;
}

uint64_t sub_1000EFA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = sub_1000CE6B8(&qword_10190A450);
  __chkstk_darwin(v7 - 8);
  v9 = &v11 - v8;
  sub_1000D2DFC(a1, &v11 - v8, &qword_10190A450);
  return a5(v9);
}

uint64_t sub_1000EFB34(uint64_t a1)
{
  v2 = type metadata accessor for UserGuideScrollView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000EFBA0()
{
  result = qword_10190A1B8;
  if (!qword_10190A1B8)
  {
    sub_1000D6664(&qword_10190A188);
    type metadata accessor for UserGuideScrollView(255);
    sub_1000EA910(&qword_10190A1A8, type metadata accessor for UserGuideScrollView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190A1B8);
  }

  return result;
}

unint64_t sub_1000EFD3C()
{
  result = qword_10190A1C8;
  if (!qword_10190A1C8)
  {
    sub_1000D6664(&qword_10190A190);
    sub_1000D6664(&qword_10190A188);
    sub_1000D6664(&qword_10190A1B0);
    sub_1000EFBA0();
    sub_1000414C8(&qword_10190A1C0, &qword_10190A1B0);
    swift_getOpaqueTypeConformance2();
    sub_1000414C8(&qword_10190A1D0, &qword_10190A1D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190A1C8);
  }

  return result;
}

void sub_1000EFF28()
{
  sub_1000F0D68(319, &qword_10190A248, &qword_10190A1B0, &unk_1011F39B0, &type metadata accessor for Binding);
  if (v0 <= 0x3F)
  {
    sub_1000F0078(319, &qword_10190A250, type metadata accessor for UserGuideViewModel, &type metadata accessor for Binding);
    if (v1 <= 0x3F)
    {
      sub_1000F0D1C(319, &qword_101921F00);
      if (v2 <= 0x3F)
      {
        sub_1000F0078(319, &qword_10190A258, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000F0078(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1000F0120(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1000F016C()
{
  result = qword_10190A330;
  if (!qword_10190A330)
  {
    sub_1000D6664(&qword_10190A328);
    sub_1000F01F8();
    sub_1000F03A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190A330);
  }

  return result;
}

unint64_t sub_1000F01F8()
{
  result = qword_10190A338;
  if (!qword_10190A338)
  {
    sub_1000D6664(&qword_10190A340);
    sub_1000D6664(&qword_10190A348);
    sub_1000F02EC();
    swift_getOpaqueTypeConformance2();
    sub_1000414C8(&unk_10191DB80, &qword_10190A368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190A338);
  }

  return result;
}

unint64_t sub_1000F02EC()
{
  result = qword_10190A350;
  if (!qword_10190A350)
  {
    sub_1000D6664(&qword_10190A348);
    sub_1000414C8(&qword_10190A358, &qword_10190A360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190A350);
  }

  return result;
}

unint64_t sub_1000F03A4()
{
  result = qword_10190A370;
  if (!qword_10190A370)
  {
    sub_1000D6664(&qword_10190A378);
    sub_1000F0428();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190A370);
  }

  return result;
}

unint64_t sub_1000F0428()
{
  result = qword_10190A380;
  if (!qword_10190A380)
  {
    sub_1000D6664(&qword_10190A388);
    sub_1000F04B4();
    sub_1000F05A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190A380);
  }

  return result;
}

unint64_t sub_1000F04B4()
{
  result = qword_10190A390;
  if (!qword_10190A390)
  {
    sub_1000D6664(&qword_10190A398);
    type metadata accessor for PlaceCell();
    sub_1000EA910(&qword_10190D640, &type metadata accessor for PlaceCell);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190A390);
  }

  return result;
}

unint64_t sub_1000F05A4()
{
  result = qword_10190A3A0;
  if (!qword_10190A3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190A3A0);
  }

  return result;
}

unint64_t sub_1000F05F8()
{
  result = qword_10190A3B0;
  if (!qword_10190A3B0)
  {
    sub_1000D6664(&qword_10190A2C0);
    sub_1000D6664(&qword_10190A2B8);
    sub_1000414C8(&qword_10190A3A8, &qword_10190A2B8);
    swift_getOpaqueTypeConformance2();
    sub_1000414C8(&qword_10190A3B8, &qword_10190A3C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190A3B0);
  }

  return result;
}

uint64_t sub_1000F0720(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000F07B4()
{
  result = qword_10190A3F0;
  if (!qword_10190A3F0)
  {
    sub_1000D6664(&qword_10190A2D8);
    sub_1000EA910(&qword_10190A3F8, &type metadata accessor for GridButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190A3F0);
  }

  return result;
}

uint64_t sub_1000F0870()
{
  v1 = (type metadata accessor for UserGuideScrollView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;

  sub_1000A1574(*(v5 + 48), *(v5 + 56));
  v6 = v1[9];
  sub_1000CE6B8(&qword_10190A1A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for ColorScheme();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000F09C0()
{
  type metadata accessor for UserGuideScrollView(0);

  return sub_1000EF068();
}

uint64_t sub_1000F0A40(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000F0A58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000F0AC0()
{
  v1 = *(type metadata accessor for UserGuideItemRowViewModel() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  type metadata accessor for UserGuideScrollView(0);

  return sub_1000EF5A4(v0 + v2);
}

void sub_1000F0B8C(void *a1, char a2)
{
  if (a2)
  {
    swift_unknownObjectRelease();
  }

  else
  {
  }
}

unint64_t sub_1000F0B98()
{
  result = qword_10190A448;
  if (!qword_10190A448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190A448);
  }

  return result;
}

void sub_1000F0C14()
{
  sub_1000F0078(319, &qword_10190A250, type metadata accessor for UserGuideViewModel, &type metadata accessor for Binding);
  if (v0 <= 0x3F)
  {
    sub_1000F0D1C(319, &qword_10190A4C8);
    if (v1 <= 0x3F)
    {
      sub_1000F0D68(319, &unk_10190A4D0, &qword_10190A450, &unk_1011E56D8, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000F0D1C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Environment();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1000F0D68(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1000D6664(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1000F0E14(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_1000F0E90()
{
  v1 = type metadata accessor for UserGuideHeaderView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  sub_1000A1574(*(v5 + 24), *(v5 + 32));
  v6 = *(v1 + 24);
  sub_1000CE6B8(&qword_10190A318);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for UserInterfaceSizeClass();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  v9 = *(v1 + 28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for UserInterfaceSizeClass();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v5 + v9, 1, v10))
    {
      (*(v11 + 8))(v5 + v9, v10);
    }
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000F10DC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UserGuideHeaderView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_1000EC4E8(v4, a1);
}

unint64_t sub_1000F1178()
{
  result = qword_10190AB90;
  if (!qword_10190AB90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10190AB90);
  }

  return result;
}

uint64_t sub_1000F11C4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000CE6B8(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000F12B0@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC4Maps38VisitHistoryCityOverviewViewController_viewModel);
  a1[3] = &type metadata for VisitHistoryCityOverviewView;
  a1[4] = sub_1000F18EC();
  *a1 = v3;
}

uint64_t sub_1000F1378()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "didResignCurrent");
  v1 = *&v0[OBJC_IVAR____TtC4Maps38VisitHistoryCityOverviewViewController_viewModel];
  swift_getKeyPath();
  sub_1000F1B48();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 48))
  {

    Task.cancel()();
  }

  return result;
}

uint64_t sub_1000F1488()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();
  sub_1000F1B48();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_getKeyPath();

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void sub_1000F16F8(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = a1[2];
      v4 = a1[3];
      v6 = a1[4];
      v11[0] = v5;
      v11[1] = v4;
      v11[2] = v6;
      v12 = 0;

      v7 = v6;
      sub_100443BCC(v11);
      swift_unknownObjectRelease();
      sub_1000F1E68(v11);
    }

    v8 = [objc_opt_self() sharedService];
    if (v8)
    {
      v9 = v8;
      v10 = String._bridgeToObjectiveC()();
      [v9 captureUserAction:507 onTarget:147 eventValue:v10];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1000F183C()
{
  sub_1000A09E0(v0 + OBJC_IVAR____TtC4Maps38VisitHistoryCityOverviewViewController_actionDelegate);
}

unint64_t sub_1000F18EC()
{
  result = qword_10190A590;
  if (!qword_10190A590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190A590);
  }

  return result;
}

uint64_t sub_1000F1940@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000F1B48();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1000D8864;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_1000F19FC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1000D882C;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_1000F1B48();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

unint64_t sub_1000F1B48()
{
  result = qword_10190A598;
  if (!qword_10190A598)
  {
    type metadata accessor for VisitHistoryCityOverviewViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190A598);
  }

  return result;
}

uint64_t sub_1000F1BA8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000F1B48();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1000F1DB8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1000CD9D4(v4);
}

uint64_t sub_1000F1C64(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1000F1DB0;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_1000F1B48();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_1000F1DC0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000F1B48();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 48);
}

uint64_t sub_1000F1F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000CE6B8(&qword_10190A5B0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v7 = sub_1000CE6B8(&qword_10190A5E8);
  sub_1000F2118(a1, &v6[*(v7 + 44)]);
  v8 = &v6[*(v4 + 36)];
  sub_1000F2AA8(v8);
  *(v8 + *(sub_1000CE6B8(&qword_10190A5D8) + 36)) = 1;
  sub_1000CE6B8(&qword_10190A5F0);
  type metadata accessor for ToolbarPlacement();
  *(swift_allocObject() + 16) = xmmword_1011E1D30;
  static ToolbarPlacement.navigationBar.getter();
  sub_1000F3108();
  View.toolbarVisibility(_:for:)();

  sub_100024F64(v6, &qword_10190A5B0);
  LOBYTE(v4) = static Edge.Set.bottom.getter();
  v9 = static SafeAreaRegions.all.getter();
  result = sub_1000CE6B8(&qword_10190A5A0);
  v11 = a2 + *(result + 36);
  *v11 = v9;
  *(v11 + 8) = v4;
  return result;
}

uint64_t sub_1000F2118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v34 = sub_1000CE6B8(&qword_10190A600) - 8;
  __chkstk_darwin(v34);
  v35 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v33 = &v32 - v5;
  v6 = type metadata accessor for FilterBarViewModel();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000CE6B8(&qword_10190A608);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v32 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  sub_1000CE6B8(&qword_10190EC90);
  v13 = type metadata accessor for FilterBarOption();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1011E1D30;
  swift_getKeyPath();
  v37 = a1;
  sub_1000F33C8(&qword_10190A598, type metadata accessor for VisitHistoryCityOverviewViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = OBJC_IVAR____TtC4Maps33VisitHistoryCityOverviewViewModel__sortFilterBarOption;
  swift_beginAccess();
  (*(v14 + 16))(v16 + v15, a1 + v17, v13);
  FilterBarViewModel.init(options:accessibilityIdentifier:)();

  FilterBar.init(model:allowGlass:tapHandler:)();
  v18 = &v12[*(v8 + 44)];
  *v18 = 0xD000000000000016;
  *(v18 + 1) = 0x800000010121A900;
  v18[16] = 9;
  sub_1000CE6B8(&qword_10190A610);
  sub_1000F3204();
  v19 = v33;
  List<>.init(content:)();
  LOBYTE(v17) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v20 = v19 + *(v34 + 44);
  *v20 = v17;
  *(v20 + 8) = v21;
  *(v20 + 16) = v22;
  *(v20 + 24) = v23;
  *(v20 + 32) = v24;
  *(v20 + 40) = 0;
  v25 = v32;
  sub_1000D2DFC(v12, v32, &qword_10190A608);
  v26 = v35;
  sub_1000D2DFC(v19, v35, &qword_10190A600);
  v27 = v36;
  sub_1000D2DFC(v25, v36, &qword_10190A608);
  v28 = sub_1000CE6B8(&qword_10190A638);
  v29 = v27 + v28[12];
  *v29 = 0;
  *(v29 + 8) = 1;
  sub_1000D2DFC(v26, v27 + v28[16], &qword_10190A600);
  v30 = v27 + v28[20];
  *v30 = 0;
  *(v30 + 8) = 1;
  sub_100024F64(v19, &qword_10190A600);
  sub_100024F64(v12, &qword_10190A608);
  sub_100024F64(v26, &qword_10190A600);
  return sub_100024F64(v25, &qword_10190A608);
}

void sub_1000F25BC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {

    v6._countAndFlagsBits = a3;
    v6._object = a4;
    v7 = _findStringSwitchCase(cases:string:)(&off_1016001A0, v6);

    if (v7 <= 2)
    {
      sub_1000F46C4(v7);
    }
  }
}

uint64_t sub_1000F2628()
{
  swift_getKeyPath();
  sub_1000F33C8(&qword_10190A598, type metadata accessor for VisitHistoryCityOverviewViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_1000CE6B8(&qword_10190A640);
  sub_1000F337C();
  sub_1000CE6B8(&qword_10190A628);
  sub_1000414C8(&qword_10190A648, &qword_10190A640);
  sub_1000F3288();
  sub_1000F33C8(&qword_10191B660, type metadata accessor for VisitedPlaceCityViewModel);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_1000F27D4(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for DateCell();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v15 = type metadata accessor for VisitedPlaceCityViewModel();
  v16 = sub_1000F33C8(&qword_10190A650, type metadata accessor for VisitedPlaceCityViewModel);
  v13 = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = v8;
  swift_retain_n();

  DateCell.init(model:tapHandler:)();
  v13 = 0x4364657469736956;
  v14 = 0xEB00000000797469;
  v10._countAndFlagsBits = 1819043139;
  v10._object = 0xE400000000000000;
  String.append(_:)(v10);
  sub_1000F33C8(&qword_10190A630, &type metadata accessor for DateCell);
  View.accessibilityIdentifier(_:)();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1000F29DC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1000F33C8(&qword_10190A598, type metadata accessor for VisitHistoryCityOverviewViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(a1 + 32);
  if (v5)
  {

    v5(a2);
    return sub_1000588AC(v5);
  }

  return result;
}

uint64_t sub_1000F2AA8@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = type metadata accessor for CardHeaderSize();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &countAndFlagsBits - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000CE6B8(&unk_101910FC0);
  __chkstk_darwin(v5 - 8);
  v7 = &countAndFlagsBits - v6;
  v8 = type metadata accessor for LeadingCardHeaderViewModel();
  __chkstk_darwin(v8 - 8);
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v9.super.isa = qword_1019600D8;
  v23._object = 0x800000010121A7E0;
  v10._countAndFlagsBits = 0x79746943207942;
  v11._countAndFlagsBits = 0xD00000000000002DLL;
  v11._object = 0x800000010121A7B0;
  v23._countAndFlagsBits = 0xD000000000000058;
  v10._object = 0xE700000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, qword_1019600D8, v10, v23)._countAndFlagsBits;
  v12 = type metadata accessor for MapsDesignAccessibilityString();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  v24._object = 0x800000010121A8A0;
  v13._countAndFlagsBits = 0xD000000000000030;
  v13._object = 0x800000010121A840;
  v14._object = 0x800000010121A880;
  v24._countAndFlagsBits = 0xD00000000000005BLL;
  v14._countAndFlagsBits = 0xD000000000000018;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v9, v14, v24);
  (*(v2 + 104))(v4, enum case for CardHeaderSize.medium(_:), v1);
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  sub_1000CE6B8(&qword_10191D770);
  type metadata accessor for CardButtonViewModel();
  *(swift_allocObject() + 16) = xmmword_1011E1D30;

  static CardButtonViewModel.close(tintColor:enabled:action:)();

  LeadingCardHeaderViewModel.init(title:titleAXID:subtitle:interactiveSubtitle:badgeText:size:leadingImageProvider:leadingImagePlaceholder:trailingButtons:)();
  v15 = v19;
  LeadingCardHeader.init(viewModel:interactiveSubtitleTapHandler:)();
  result = sub_1000CE6B8(&qword_10190A5F8);
  v17 = v15 + *(result + 36);
  *v17 = 0xD000000000000018;
  *(v17 + 8) = 0x800000010121A790;
  *(v17 + 16) = 12;
  return result;
}

uint64_t sub_1000F2EC0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1000F33C8(&qword_10190A598, type metadata accessor for VisitHistoryCityOverviewViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(a2 + 16);
  if (v4)
  {

    v4(a2);
    return sub_1000588AC(v4);
  }

  return result;
}

uint64_t sub_1000F2F88@<X0>(uint64_t a1@<X8>)
{
  sub_1000CE6B8(&qword_10190A5A0);
  sub_1000F3040();
  NavigationStack.init<>(root:)();
  result = sub_1000CE6B8(&qword_10190A5E0);
  v3 = a1 + *(result + 36);
  *v3 = 0xD000000000000018;
  *(v3 + 8) = 0x800000010121A790;
  *(v3 + 16) = 13;
  return result;
}

unint64_t sub_1000F3040()
{
  result = qword_10190A5A8;
  if (!qword_10190A5A8)
  {
    sub_1000D6664(&qword_10190A5A0);
    sub_1000D6664(&qword_10190A5B0);
    sub_1000F3108();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190A5A8);
  }

  return result;
}

unint64_t sub_1000F3108()
{
  result = qword_10190A5B8;
  if (!qword_10190A5B8)
  {
    sub_1000D6664(&qword_10190A5B0);
    sub_1000414C8(&qword_10190A5C0, &qword_10190A5C8);
    sub_1000414C8(&qword_10190A5D0, &qword_10190A5D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190A5B8);
  }

  return result;
}

unint64_t sub_1000F3204()
{
  result = qword_10190A618;
  if (!qword_10190A618)
  {
    sub_1000D6664(&qword_10190A610);
    sub_1000F3288();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190A618);
  }

  return result;
}

unint64_t sub_1000F3288()
{
  result = qword_10190A620;
  if (!qword_10190A620)
  {
    sub_1000D6664(&qword_10190A628);
    sub_1000F33C8(&qword_10190A630, &type metadata accessor for DateCell);
    sub_1000F33C8(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190A620);
  }

  return result;
}

unint64_t sub_1000F337C()
{
  result = qword_101909920;
  if (!qword_101909920)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101909920);
  }

  return result;
}

uint64_t sub_1000F33C8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000F3418()
{
  result = qword_10190A658;
  if (!qword_10190A658)
  {
    sub_1000D6664(&qword_10190A5E0);
    sub_1000414C8(&qword_10190A660, &qword_10190A668);
    sub_1000F34D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190A658);
  }

  return result;
}

unint64_t sub_1000F34D0()
{
  result = qword_10190A670;
  if (!qword_10190A670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10190A670);
  }

  return result;
}

uint64_t sub_1000F3524@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_1000F1B48();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC4Maps33VisitHistoryCityOverviewViewModel__sortFilterBarOption;
  swift_beginAccess();
  v4 = type metadata accessor for FilterBarOption();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_1000F35EC()
{
  swift_getKeyPath();
  sub_1000F1B48();
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1000F3660()
{
  swift_getKeyPath();
  sub_1000F1B48();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_1000F36E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  sub_1000CD9D4(a2);
  return sub_1000588AC(v3);
}

uint64_t sub_1000F3730()
{
  swift_getKeyPath();
  sub_1000F1B48();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 32);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_1000F37B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
  sub_1000CD9D4(a2);
  return sub_1000588AC(v3);
}

uint64_t sub_1000F3800()
{
  swift_getKeyPath();
  sub_1000F1B48();
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1000F3874(uint64_t a1)
{
  if (!*(v1 + 48))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000F1B48();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = static Task.== infix(_:_:)();

  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 48) = a1;
}

uint64_t sub_1000F39CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000F1B48();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 64);
}

uint64_t sub_1000F3A48()
{
  swift_getKeyPath();
  sub_1000F1B48();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1000F3AE4()
{
  swift_getKeyPath();
  sub_1000F1B48();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 72);
}

uint64_t sub_1000F3B54@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v35 = a1;
  v25[1] = a2;
  v2 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v2 - 8);
  v34 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AttributedString();
  __chkstk_darwin(v4 - 8);
  v36 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for FilterBarOption.SubOption();
  v6 = *(v33 - 8);
  __chkstk_darwin(v33);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = _swiftEmptyArrayStorage;
  sub_100511228(0, 3, 0);
  v9 = 0;
  v10 = v37;
  v30 = 0x800000010121A9E0;
  v31 = "_sortFilterBarOption";
  v28 = 0x800000010121AA60;
  v29 = "s alphabetically";
  v26 = 0x800000010121AAD0;
  v27 = "es by most recently visited";
  v32 = v6 + 32;
  do
  {
    v11 = *(&off_101600208 + v9 + 32);
    if (*(&off_101600208 + v9 + 32))
    {
      if (v11 == 1)
      {
        if (qword_101906768 != -1)
        {
          swift_once();
        }

        v38._object = v28;
        v12._object = (v29 | 0x8000000000000000);
        v38._countAndFlagsBits = 0xD00000000000003BLL;
        v12._countAndFlagsBits = 0xD000000000000028;
        v13._countAndFlagsBits = 0x6365522074736F4DLL;
        v13._object = 0xEB00000000746E65;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, qword_1019600D8, v13, v38);
      }

      else
      {
        if (qword_101906768 != -1)
        {
          swift_once();
        }

        v40._object = v30;
        v16._countAndFlagsBits = 0xD000000000000029;
        v16._object = (v31 | 0x8000000000000000);
        v40._countAndFlagsBits = 0xD000000000000040;
        v17._countAndFlagsBits = 0x7465626168706C41;
        v17._object = 0xEC0000006C616369;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v16, 0, qword_1019600D8, v17, v40);
      }
    }

    else
    {
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v39._object = v26;
      v14._object = (v27 | 0x8000000000000000);
      v39._countAndFlagsBits = 0xD000000000000031;
      v14._countAndFlagsBits = 0xD000000000000028;
      v15._countAndFlagsBits = 0x7369562074736F4DLL;
      v15._object = 0xEB00000000737469;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, qword_1019600D8, v15, v39);
    }

    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    if (v35)
    {
      if (v35 == 1)
      {
        v18 = 0x796C746E65636572;
      }

      else
      {
        v18 = 0x65637341656D616ELL;
      }

      if (v35 == 1)
      {
        v19 = 0xEF64657469736956;
      }

      else
      {
        v19 = 0xED0000676E69646ELL;
      }

      if (!v11)
      {
LABEL_30:
        v21 = 0xEB00000000646574;
        if (v18 == 0x6973695674736F6DLL)
        {
          goto LABEL_31;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v18 = 0x6973695674736F6DLL;
      v19 = 0xEB00000000646574;
      if (!v11)
      {
        goto LABEL_30;
      }
    }

    if (v11 == 1)
    {
      v20 = 0x796C746E65636572;
    }

    else
    {
      v20 = 0x65637341656D616ELL;
    }

    if (v11 == 1)
    {
      v21 = 0xEF64657469736956;
    }

    else
    {
      v21 = 0xED0000676E69646ELL;
    }

    if (v18 == v20)
    {
LABEL_31:
      if (v19 == v21)
      {
        goto LABEL_33;
      }
    }

LABEL_32:
    _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_33:

    FilterBarOption.SubOption.init(id:displayImage:displayName:isSelected:)();
    v37 = v10;
    v23 = v10[2];
    v22 = v10[3];
    if (v23 >= v22 >> 1)
    {
      sub_100511228(v22 > 1, v23 + 1, 1);
      v10 = v37;
    }

    ++v9;
    v10[2] = v23 + 1;
    (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v23, v8, v33);
  }

  while (v9 != 3);
  sub_1000F5334(v35);
  return FilterBarOption.init(id:systemImageName:displayName:accessibilityIdentifier:accessibilityLabel:showDropdown:isSelected:subOptions:)();
}

uint64_t sub_1000F4194()
{
  v1 = v0;
  v2 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  swift_getKeyPath();
  v11 = v0;
  sub_1000F1B48();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + 48))
  {

    Task.cancel()();
  }

  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MainActor();

  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = v1;
  v8 = sub_10020AAE4(0, 0, v4, &unk_1011E5B78, v7);
  return sub_1000F3874(v8);
}

uint64_t sub_1000F4334(char a1)
{
  v2 = v1;
  v4 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v4 - 8);
  v6 = &v16[-v5];
  v7 = type metadata accessor for FilterBarOption();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(v2 + 72) = a1;
  swift_getKeyPath();
  v19 = v2;
  sub_1000F1B48();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_1000F3B54(*(v2 + 72), v10);
  swift_getKeyPath();
  v17 = v2;
  v18 = v10;
  v19 = v2;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  (*(v8 + 8))(v10, v7);
  swift_getKeyPath();
  v19 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v2 + 48))
  {

    Task.cancel()();
  }

  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  type metadata accessor for MainActor();

  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v2;
  v14 = sub_10020AAE4(0, 0, v6, &unk_1011E5BF8, v13);
  return sub_1000F3874(v14);
}

uint64_t sub_1000F464C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000F1B48();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 72);
  return result;
}

uint64_t sub_1000F46C4(char a1)
{
  v3 = 0xEB00000000646574;
  v4 = 0x6973695674736F6DLL;
  v5 = 0x796C746E65636572;
  v6 = 0xEF64657469736956;
  if (*(v1 + 72) != 1)
  {
    v5 = 0x65637341656D616ELL;
    v6 = 0xED0000676E69646ELL;
  }

  if (*(v1 + 72))
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6973695674736F6DLL;
  }

  if (*(v1 + 72))
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xEB00000000646574;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x796C746E65636572;
    }

    else
    {
      v4 = 0x65637341656D616ELL;
    }

    if (a1 == 1)
    {
      v3 = 0xEF64657469736956;
    }

    else
    {
      v3 = 0xED0000676E69646ELL;
    }
  }

  if (v7 == v4 && v8 == v3)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_1000F1B48();
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return sub_1000F4334(a1);
}

uint64_t sub_1000F48D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000F1B48();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC4Maps33VisitHistoryCityOverviewViewModel__sortFilterBarOption;
  swift_beginAccess();
  v5 = type metadata accessor for FilterBarOption();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1000F499C(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for FilterBarOption();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  swift_getKeyPath();
  v12 = v9;
  v13 = v8;
  v14 = v9;
  sub_1000F1B48();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1000F4AF4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC4Maps33VisitHistoryCityOverviewViewModel__sortFilterBarOption;
  swift_beginAccess();
  v5 = type metadata accessor for FilterBarOption();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_1000F4B90(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FilterBarOption();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for VisitHistoryHomeDataProvider();
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0;
  v8 = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for MapsSyncStore();
  v9 = static MapsSyncStore.sharedStore.getter();
  type metadata accessor for VisitedPlacesDataOperationsProvider();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v8 + 112) = v10;
  *(v8 + 120) = 2;
  *(v2 + 56) = v8;
  ObservationRegistrar.init()();
  *(v2 + 64) = a1;
  *(v2 + 72) = 0;
  sub_1000F3B54(0, v7);
  (*(v5 + 32))(v2 + OBJC_IVAR____TtC4Maps33VisitHistoryCityOverviewViewModel__sortFilterBarOption, v7, v4);
  return v2;
}

uint64_t sub_1000F4D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[6] = v6;
  v4[7] = v5;

  return _swift_task_switch(sub_1000F4DB8, v6, v5);
}

uint64_t sub_1000F4DB8()
{
  v1 = v0[4];
  swift_getKeyPath();
  v0[8] = OBJC_IVAR____TtC4Maps33VisitHistoryCityOverviewViewModel___observationRegistrar;
  v0[2] = v1;
  v0[9] = sub_1000F1B48();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + 72);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_1000F4EB8;

  return sub_1001F5E94(v2, 0, 1);
}

uint64_t sub_1000F4EB8(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 88) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return _swift_task_switch(sub_1000F4FE0, v4, v3);
}

uint64_t sub_1000F4FE0()
{
  v1 = v0[11];
  v2 = v0[4];

  swift_getKeyPath();
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v0[3] = v2;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000F50D8()
{
  sub_1000588AC(*(v0 + 16));
  sub_1000588AC(*(v0 + 32));

  v1 = OBJC_IVAR____TtC4Maps33VisitHistoryCityOverviewViewModel__sortFilterBarOption;
  v2 = type metadata accessor for FilterBarOption();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC4Maps33VisitHistoryCityOverviewViewModel___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VisitHistoryCityOverviewViewModel()
{
  result = qword_10190A6B0;
  if (!qword_10190A6B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000F5230()
{
  result = type metadata accessor for FilterBarOption();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1000F5334(char a1)
{
  if (!a1)
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v1.super.isa = qword_1019600D8;
    v8 = 0x800000010121AD30;
    v2 = 0xD000000000000030;
    v3 = 0x800000010121ACD0;
    v4 = 0x800000010121AD10;
    v5 = 0xD00000000000006BLL;
    goto LABEL_9;
  }

  if (a1 == 1)
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v1.super.isa = qword_1019600D8;
    v8 = 0x800000010121AC50;
    v2 = 0xD000000000000030;
    v3 = 0x800000010121ABF0;
    v4 = 0x800000010121AC30;
    v5 = 0xD000000000000075;
LABEL_9:
    v6 = 0xD000000000000013;
    return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v2, 0, v1, *(&v4 - 1), *&v5)._countAndFlagsBits;
  }

  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v1.super.isa = qword_1019600D8;
  v8 = 0x800000010121AB70;
  v2 = 0xD000000000000031;
  v3 = 0x800000010121AB10;
  v6 = 0xD000000000000014;
  v4 = 0x800000010121AB50;
  v5 = 0xD000000000000079;
  return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v2, 0, v1, *(&v4 - 1), *&v5)._countAndFlagsBits;
}

uint64_t sub_1000F54FC()
{
  *(*(v0 + 16) + 48) = *(v0 + 24);
}

uint64_t sub_1000F5538(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC40;

  return sub_1000F4D20(a1, v4, v5, v6);
}

uint64_t sub_1000F5604()
{
  *(*(v0 + 16) + 64) = *(v0 + 24);
}

uint64_t sub_1000F5690(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC4C;

  return sub_1000F4D20(a1, v4, v5, v6);
}

uint64_t sub_1000F5774()
{
  if (v0[8])
  {
    v1 = v0[7];
  }

  else
  {
    v1 = sub_1000F57D8(v0);
    v0[7] = v1;
    v0[8] = v2;
  }

  return v1;
}

uint64_t sub_1000F57D8(void *a1)
{
  v2 = [objc_opt_self() currentTraitCollection];
  v3 = [v2 userInterfaceStyle];

  if (*a1 == 1)
  {
    if (v3 == 2)
    {
      return 0xD000000000000011;
    }

    else
    {
      return 0xD000000000000012;
    }
  }

  else if (*a1)
  {
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else if (v3 == 2)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0xD000000000000019;
  }

  return result;
}

id sub_1000F58DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = &v4[OBJC_IVAR____TtC4Maps36LocationAuthenticationViewController_mapsBundleID];
  strcpy(&v4[OBJC_IVAR____TtC4Maps36LocationAuthenticationViewController_mapsBundleID], "com.apple.Maps");
  v9[15] = -18;
  *&v4[OBJC_IVAR____TtC4Maps36LocationAuthenticationViewController_forceDismissTask] = 0;
  v10 = OBJC_IVAR____TtC4Maps36LocationAuthenticationViewController_isPhone;
  v11 = [objc_opt_self() currentDevice];
  v12 = [v11 userInterfaceIdiom];

  v4[v10] = v12 == 0;
  v13 = OBJC_IVAR____TtC4Maps36LocationAuthenticationViewController_videoPlayerView;
  *&v4[v13] = [objc_allocWithZone(MapsVideoPlayerView) init];
  v14 = &v4[OBJC_IVAR____TtC4Maps36LocationAuthenticationViewController_actionHandler];
  *v14 = a3;
  *(v14 + 1) = a4;
  *&v4[OBJC_IVAR____TtC4Maps36LocationAuthenticationViewController_warmingSheetType] = a1;
  *&v4[OBJC_IVAR____TtC4Maps36LocationAuthenticationViewController_action] = a2;

  sub_1000F9968(a1, a2, v23);
  v15 = &v4[OBJC_IVAR____TtC4Maps36LocationAuthenticationViewController_viewModel];
  v16 = v23[1];
  v17 = v23[3];
  *(v15 + 2) = v23[2];
  *(v15 + 3) = v17;
  *(v15 + 8) = v24;
  *v15 = v23[0];
  *(v15 + 1) = v16;

  v18 = String._bridgeToObjectiveC()();

  swift_beginAccess();

  v19 = String._bridgeToObjectiveC()();

  v22.receiver = v4;
  v22.super_class = type metadata accessor for LocationAuthenticationViewController();
  v20 = objc_msgSendSuper2(&v22, "initWithTitle:detailText:icon:contentLayout:", v18, v19, 0, 4);

  return v20;
}

id sub_1000F5B58()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for LocationAuthenticationViewController();
  objc_msgSendSuper2(&v7, "viewDidLoad");
  v1 = [v0 presentationController];
  if (v1)
  {
    v2 = v1;
    [v1 setDelegate:v0];
  }

  result = [v0 view];
  if (result)
  {
    v4 = result;
    v5 = [objc_opt_self() systemBackgroundColor];
    [v4 setBackgroundColor:v5];

    sub_1000F5C98();
    sub_1000CE6B8(&unk_10190CA20);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1011E1D30;
    *(v6 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
    *(v6 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
    UIViewController.registerForTraitChanges(_:action:)();
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000F5C98()
{
  v1 = v0;
  swift_beginAccess();
  sub_1000F5774();
  swift_endAccess();
  sub_1000F68E4();

  v2 = [objc_opt_self() boldButton];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];

  v3 = String._bridgeToObjectiveC()();

  [v2 setTitle:v3 forState:0];

  [v2 addTarget:v1 action:"actionButtonTapped:" forControlEvents:64];
  v4 = [v1 buttonTray];
  [v4 addButton:v2];

  v5 = [v1 contentView];
  v6 = [objc_opt_self() clearColor];
  [v5 setBackgroundColor:v6];

  sub_1000CE6B8(&qword_101908400);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1011E5C00;
  v8 = *&v1[OBJC_IVAR____TtC4Maps36LocationAuthenticationViewController_videoPlayerView];
  v9 = [v8 leadingAnchor];
  v10 = [v1 contentView];
  v11 = [v10 leadingAnchor];

  v12 = [v9 constraintEqualToAnchor:v11];
  *(inited + 32) = v12;
  v13 = [v1 contentView];
  v14 = [v13 trailingAnchor];

  v15 = [v8 trailingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(inited + 40) = v16;
  v17 = [v8 topAnchor];
  v18 = [v1 contentView];
  v19 = [v18 topAnchor];

  v20 = [v17 constraintEqualToAnchor:v19];
  *(inited + 48) = v20;
  v21 = [v1 contentView];
  v22 = [v21 bottomAnchor];

  v23 = [v8 bottomAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];

  *(inited + 56) = v24;
  sub_10003B62C(inited);
  v25 = objc_opt_self();
  sub_100014C84(0, &qword_10190B720);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v25 activateConstraints:isa];

  v27 = [objc_opt_self() linkWithBundleIdentifier:@"com.apple.onboarding.maps"];
  if (v27)
  {
    v28 = v27;
    v29 = [v1 buttonTray];
    [v29 setPrivacyLinkController:v28];
  }
}

uint64_t sub_1000F6180()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v22 = *(v4 - 8);
  v23 = v4;
  __chkstk_darwin(v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTime();
  v21 = v7;
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = &v21 - v13;
  [*&v0[OBJC_IVAR____TtC4Maps36LocationAuthenticationViewController_videoPlayerView] reset];
  sub_100014C84(0, &qword_10190B4F0);
  v15 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v16 = *(v8 + 8);
  v16(v10, v7);
  v17 = swift_allocObject();
  *(v17 + 16) = v0;
  aBlock[4] = sub_1000F9D00;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100039C64;
  aBlock[3] = &unk_1016031D8;
  v18 = _Block_copy(aBlock);
  v19 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000412D0(&qword_1019097D0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000CE6B8(&unk_10190B500);
  sub_1000DB3BC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v18);

  (*(v24 + 8))(v3, v1);
  (*(v22 + 8))(v6, v23);
  return (v16)(v14, v21);
}

id sub_1000F67D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocationAuthenticationViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000F68E4()
{
  v1 = *&v0[OBJC_IVAR____TtC4Maps36LocationAuthenticationViewController_videoPlayerView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6[4] = sub_1000FA68C;
  v6[5] = v2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_100039C64;
  v6[3] = &unk_101603430;
  v3 = _Block_copy(v6);

  [v1 setPlaybackDidEndBlock:v3];
  _Block_release(v3);
  [v1 setAspectFill:1];
  v4 = String._bridgeToObjectiveC()();
  [v1 loadAssetNamed:v4];

  v5 = [v0 contentView];
  [v5 addSubview:v1];
}

void sub_1000F6A58()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1000F6180();
  }
}

uint64_t sub_1000F6AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[16] = a5;
  v6[17] = a6;
  v6[15] = a4;
  v7 = type metadata accessor for CLServiceSession.Diagnostic();
  v6[18] = v7;
  v6[19] = *(v7 - 8);
  v6[20] = swift_task_alloc();
  sub_1000CE6B8(&unk_10190A7E0);
  v6[21] = swift_task_alloc();
  v8 = type metadata accessor for CLServiceSession.Requirement();
  v6[22] = v8;
  v6[23] = *(v8 - 8);
  v6[24] = swift_task_alloc();
  v6[25] = type metadata accessor for MainActor();
  v6[26] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[27] = v10;
  v6[28] = v9;

  return _swift_task_switch(sub_1000F6C3C, v10, v9);
}

uint64_t sub_1000F6C3C()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  type metadata accessor for CLServiceSession();
  v4 = enum case for CLServiceSession.LearnedRoutesRequirement.basic(_:);
  v5 = type metadata accessor for CLServiceSession.LearnedRoutesRequirement();
  (*(*(v5 - 8) + 104))(v1, v4, v5);
  (*(v2 + 104))(v1, enum case for CLServiceSession.Requirement.learnedRoutes(_:), v3);
  v0[29] = CLServiceSession.__allocating_init(requirement:)();
  if (qword_101906740 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v0[30] = sub_100021540(v6, qword_101960060);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Waiting for CLService session updates for Location Intelligence TCC ", v9, 2u);
  }

  v10 = CLServiceSession._locationIntelligenceDiagnostics.getter();
  v13 = v0[10];
  if (v13)
  {
    v14 = sub_10005E838(v0 + 7, v0[10]);
    v15 = *(v13 - 8);
    v16 = swift_task_alloc();
    (*(v15 + 16))(v16, v14, v13);
    v0[5] = swift_getAssociatedTypeWitness();
    v0[6] = swift_getAssociatedConformanceWitness();
    sub_10001A848(v0 + 2);
    dispatch thunk of AsyncSequence.makeAsyncIterator()();

    sub_10004E3D0((v0 + 7));
    swift_beginAccess();
    v17 = static MainActor.shared.getter();
    v0[31] = v17;
    sub_1000FA458((v0 + 2), v0[5]);
    v18 = swift_task_alloc();
    v0[32] = v18;
    *v18 = v0;
    v18[1] = sub_1000F6F90;
    v10 = v0[21];
    v12 = &protocol witness table for MainActor;
    v11 = v17;
  }

  else
  {
    __break(1u);
  }

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v10, v11, v12);
}

uint64_t sub_1000F6F90()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 216);
    v5 = *(v2 + 224);

    return _swift_task_switch(sub_1000F70A4, v4, v5);
  }

  return result;
}

uint64_t sub_1000F70A4()
{
  v1 = 0xD000000000000015;
  v2 = *(v0 + 168);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    goto LABEL_2;
  }

  v8 = *(v0 + 160);
  (*(v4 + 32))(v8, v2, v3);
  sub_10033CB04(v8, 0xD000000000000015, 0x800000010121B370);
  if (CLServiceSession.Diagnostic.authorizationRequestInProgress.getter())
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Cancelling forced task as sessionUpdates.authorizationRequestInProgress is true", v11, 2u);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      v14 = OBJC_IVAR____TtC4Maps36LocationAuthenticationViewController_forceDismissTask;
      if (*(Strong + OBJC_IVAR____TtC4Maps36LocationAuthenticationViewController_forceDismissTask))
      {

        dispatch thunk of DispatchWorkItem.cancel()();
      }

      (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
      *&v13[v14] = 0;
    }

    else
    {
      (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
    }

    goto LABEL_37;
  }

  if ((CLServiceSession.Diagnostic.authorizationDeniedGlobally.getter() & 1) == 0 && (CLServiceSession.Diagnostic.authorizationDenied.getter() & 1) == 0 && (CLServiceSession.Diagnostic.alwaysAuthorizationDenied.getter() & 1) == 0 && (CLServiceSession.Diagnostic.learnedRoutesDeniedGlobally.getter() & 1) == 0 && (CLServiceSession.Diagnostic.learnedRoutesDenied.getter() & 1) == 0 && (CLServiceSession.Diagnostic.learnedRoutesUnsupported.getter() & 1) == 0 && (CLServiceSession.Diagnostic.visitHistoryDeniedGlobally.getter() & 1) == 0 && (CLServiceSession.Diagnostic.visitHistoryDenied.getter() & 1) == 0 && (CLServiceSession.Diagnostic.visitHistoryUnsupported.getter() & 1) == 0 && (CLServiceSession.Diagnostic.authorizationRestricted.getter() & 1) == 0 && (CLServiceSession.Diagnostic.accuracyLimited.getter() & 1) == 0 && (CLServiceSession.Diagnostic.fullAccuracyDenied.getter() & 1) == 0 && (CLServiceSession.Diagnostic.insufficientlyInUse.getter() & 1) == 0 && (CLServiceSession.Diagnostic.authorizationRequestInProgress.getter() & 1) == 0 && (CLServiceSession.Diagnostic.serviceSessionRequired.getter() & 1) == 0)
  {
    v15 = 1;
    goto LABEL_31;
  }

  if (CLServiceSession.Diagnostic.learnedRoutesDenied.getter())
  {
    v15 = 10;
LABEL_31:
    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
    sub_10004E3D0(v0 + 16);
    v16 = sub_10033A8D0(v15);
    v18 = v17;
    if (v16 == sub_10033A8D0(1) && v18 == v19)
    {
    }

    else
    {
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v29 & 1) == 0)
      {
        if (sub_10033A8D0(v15) == 0xD000000000000015 && 0x8000000101216760 == v31)
        {
        }

        else
        {
          v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v32 & 1) == 0)
          {

            goto LABEL_3;
          }
        }

        v26 = [objc_opt_self() sharedService];
        if (v26)
        {
          v33 = v26;

          [v33 captureUserAction:521 onTarget:154 eventValue:0];

          v5 = "TCC Update For LocInt";
          v1 = 0xD000000000000011;
          goto LABEL_4;
        }

        goto LABEL_52;
      }
    }

    v26 = [objc_opt_self() sharedService];
    if (v26)
    {
      v30 = v26;

      [v30 captureUserAction:520 onTarget:154 eventValue:0];

      v5 = "LocInt TCC Denied";
      goto LABEL_4;
    }

    __break(1u);
LABEL_52:
    __break(1u);
    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v26, v28, v27);
  }

  v21 = *(v0 + 152);
  v20 = *(v0 + 160);
  v22 = *(v0 + 144);
  v23 = CLServiceSession.Diagnostic.learnedRoutesUnsupported.getter();
  (*(v21 + 8))(v20, v22);
  if ((v23 & 1) == 0)
  {
LABEL_37:
    v24 = static MainActor.shared.getter();
    *(v0 + 248) = v24;
    sub_1000FA458(v0 + 16, *(v0 + 40));
    v25 = swift_task_alloc();
    *(v0 + 256) = v25;
    *v25 = v0;
    v25[1] = sub_1000F6F90;
    v26 = *(v0 + 168);
    v27 = &protocol witness table for MainActor;
    v28 = v24;

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v26, v28, v27);
  }

LABEL_2:

  sub_10004E3D0(v0 + 16);
LABEL_3:
  v5 = " warming sheet.";
  v1 = 0xD000000000000018;
LABEL_4:
  (*(v0 + 128))(v1, v5 | 0x8000000000000000);

  v6 = *(v0 + 8);

  return v6();
}

void sub_1000F7654(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a1;
  v14[4] = a2;
  v15 = objc_opt_self();

  if ([v15 isMainThread])
  {
    v27 = sub_1000FA4A8;
    v28 = v14;
    aBlock = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_100039C64;
    v26 = &unk_1016032C8;
    v16 = _Block_copy(&aBlock);

    [v3 dismissViewControllerAnimated:1 completion:v16];

    _Block_release(v16);
  }

  else
  {
    sub_100014C84(0, &qword_10190B4F0);
    v17 = static OS_dispatch_queue.main.getter();
    v18 = swift_allocObject();
    v18[2] = v3;
    v18[3] = sub_1000FA4A8;
    v18[4] = v14;
    v27 = sub_1000FA4B4;
    v28 = v18;
    aBlock = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_100039C64;
    v26 = &unk_1016032A0;
    v19 = _Block_copy(&aBlock);

    v20 = v3;

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_1000412D0(&qword_1019097D0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000CE6B8(&unk_10190B500);
    sub_1000DB3BC();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);

    (*(v22 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_1000F7A5C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    if (qword_101906740 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100021540(v7, qword_101960060);
    v8 = v6;

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v11 = 136315394;
      v12 = *&v8[OBJC_IVAR____TtC4Maps36LocationAuthenticationViewController_warmingSheetType];
      if (v12 == 1)
      {
        v13 = 0xEE00736563616C50;
        v14 = 0x2064657469736956;
      }

      else
      {
        if (v12)
        {
          result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
          __break(1u);
          return result;
        }

        v13 = 0x800000010121B3D0;
        v14 = 0xD000000000000015;
      }

      v15 = sub_10004DEB8(v14, v13, &v18);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_10004DEB8(a2, a3, &v18);
      _os_log_impl(&_mh_execute_header, v9, v10, "Maps Warming Sheet: Warming Sheet dismissed for %s. Reason: %s", v11, 0x16u);
      swift_arrayDestroy();
    }

    v16 = *&v8[OBJC_IVAR____TtC4Maps36LocationAuthenticationViewController_actionHandler];

    v16(v17);
  }

  return result;
}

void sub_1000F7CC0(void *a1, uint64_t a2, uint64_t a3)
{
  v5[4] = a2;
  v5[5] = a3;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100039C64;
  v5[3] = &unk_1016032F0;
  v4 = _Block_copy(v5);

  [a1 dismissViewControllerAnimated:1 completion:v4];
  _Block_release(v4);
}

void sub_1000F7D7C()
{
  v1 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - v2;
  if (*(v0 + OBJC_IVAR____TtC4Maps36LocationAuthenticationViewController_action) == 1)
  {
    if (qword_101906740 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100021540(v4, qword_101960060);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Maps Warming Sheet: Go to Settings button tapped for Visited Places", v7, 2u);
    }

    sub_1000F809C();
  }

  else
  {
    GEOConfigSetBOOL();
    if (qword_101906740 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100021540(v8, qword_101960060);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Maps Warming Sheet: Continue button tapped for Visited Places", v11, 2u);
    }

    sub_1000F83C8();
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v14 = static MainActor.shared.getter();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = &protocol witness table for MainActor;
    v15[4] = v13;

    sub_10050D2C8(0, 0, v3, &unk_1011E5CC8, v15);
  }
}

void sub_1000F809C()
{
  v0 = sub_1000CE6B8(&unk_101909B00);
  __chkstk_darwin(v0 - 8);
  v2 = &v16 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F7654(0xD000000000000011, 0x800000010121B430);
  URL.init(string:)();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_1000FA5D4(v2);
    if (qword_101906740 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100021540(v7, qword_101960060);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Maps Warming Sheet: Failed to create URL for Settings app", v10, 2u);
    }
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v11 = [objc_opt_self() sharedApplication];
    URL._bridgeToObjectiveC()(v12);
    v14 = v13;
    sub_1000D0D9C(_swiftEmptyArrayStorage);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_1000412D0(&qword_101908720, type metadata accessor for OpenExternalURLOptionsKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v11 _maps_openURL:v14 options:isa completionHandler:0];

    (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1000F83C8()
{
  v1 = type metadata accessor for DispatchTime();
  v17 = *(v1 - 8);
  v18 = v1;
  __chkstk_darwin(v1);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v16 - v5;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v7);
  v8 = OBJC_IVAR____TtC4Maps36LocationAuthenticationViewController_forceDismissTask;
  if (*(v0 + OBJC_IVAR____TtC4Maps36LocationAuthenticationViewController_forceDismissTask))
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  *(v0 + v8) = 0;

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1000FA4C0;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100039C64;
  aBlock[3] = &unk_101603318;
  _Block_copy(aBlock);
  v19 = _swiftEmptyArrayStorage;
  sub_1000412D0(&qword_1019097D0, &type metadata accessor for DispatchWorkItemFlags);

  sub_1000CE6B8(&unk_10190B500);
  sub_1000DB3BC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for DispatchWorkItem();
  swift_allocObject();
  v10 = DispatchWorkItem.init(flags:block:)();

  *(v0 + v8) = v10;

  sub_100014C84(0, &qword_10190B4F0);
  v11 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v12 = *(v17 + 8);
  v13 = v3;
  v14 = v18;
  v12(v13, v18);
  OS_dispatch_queue.asyncAfter(deadline:execute:)();

  return (v12)(v6, v14);
}

uint64_t sub_1000F8714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[25] = a4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v4[26] = v5;
  v4[27] = *(v5 - 8);
  v4[28] = swift_task_alloc();
  v6 = type metadata accessor for DispatchQoS();
  v4[29] = v6;
  v4[30] = *(v6 - 8);
  v4[31] = swift_task_alloc();
  v7 = type metadata accessor for CLServiceSession.Diagnostic();
  v4[32] = v7;
  v4[33] = *(v7 - 8);
  v4[34] = swift_task_alloc();
  sub_1000CE6B8(&unk_10190A7E0);
  v4[35] = swift_task_alloc();
  v8 = type metadata accessor for CLServiceSession.Requirement();
  v4[36] = v8;
  v4[37] = *(v8 - 8);
  v4[38] = swift_task_alloc();
  v4[39] = type metadata accessor for MainActor();
  v4[40] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[41] = v10;
  v4[42] = v9;

  return _swift_task_switch(sub_1000F8958, v10, v9);
}

uint64_t sub_1000F8958()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[36];
  type metadata accessor for CLServiceSession();
  v4 = enum case for CLServiceSession.VisitHistoryRequirement.basic(_:);
  v5 = type metadata accessor for CLServiceSession.VisitHistoryRequirement();
  (*(*(v5 - 8) + 104))(v1, v4, v5);
  (*(v2 + 104))(v1, enum case for CLServiceSession.Requirement.visitHistory(_:), v3);
  v0[43] = CLServiceSession.__allocating_init(requirement:)();
  if (qword_101906740 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v0[44] = sub_100021540(v6, qword_101960060);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Waiting for CLService session updates for Viist History TCC ", v9, 2u);
  }

  v10 = CLServiceSession._locationIntelligenceDiagnostics.getter();
  v13 = v0[16];
  if (v13)
  {
    v14 = sub_10005E838(v0 + 13, v0[16]);
    v15 = *(v13 - 8);
    v16 = swift_task_alloc();
    (*(v15 + 16))(v16, v14, v13);
    v0[11] = swift_getAssociatedTypeWitness();
    v0[12] = swift_getAssociatedConformanceWitness();
    sub_10001A848(v0 + 8);
    dispatch thunk of AsyncSequence.makeAsyncIterator()();

    sub_10004E3D0((v0 + 13));
    swift_beginAccess();
    v17 = static MainActor.shared.getter();
    v0[45] = v17;
    sub_1000FA458((v0 + 8), v0[11]);
    v18 = swift_task_alloc();
    v0[46] = v18;
    *v18 = v0;
    v18[1] = sub_1000F8CAC;
    v10 = v0[35];
    v12 = &protocol witness table for MainActor;
    v11 = v17;
  }

  else
  {
    __break(1u);
  }

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v10, v11, v12);
}

uint64_t sub_1000F8CAC()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 328);
    v5 = *(v2 + 336);

    return _swift_task_switch(sub_1000F8DC0, v4, v5);
  }

  return result;
}

uint64_t sub_1000F8DC0()
{
  v1 = v0[35];
  v2 = v0[32];
  v3 = v0[33];
  v4 = 1;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = 16;
    goto LABEL_30;
  }

  (*(v3 + 32))(v0[34], v1, v2);
  if (CLServiceSession.Diagnostic.authorizationRequestInProgress.getter())
  {
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Cancelling forced task as sessionUpdates.authorizationRequestInProgress is true", v8, 2u);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v11 = OBJC_IVAR____TtC4Maps36LocationAuthenticationViewController_forceDismissTask;
      if (*(Strong + OBJC_IVAR____TtC4Maps36LocationAuthenticationViewController_forceDismissTask))
      {

        dispatch thunk of DispatchWorkItem.cancel()();
      }

      *&v10[v11] = 0;
    }
  }

  sub_10033CB04(v0[34], 0xD00000000000001CLL, 0x800000010121B4B0);
  if ((CLServiceSession.Diagnostic.authorizationDeniedGlobally.getter() & 1) == 0 && (CLServiceSession.Diagnostic.authorizationDenied.getter() & 1) == 0 && (CLServiceSession.Diagnostic.alwaysAuthorizationDenied.getter() & 1) == 0 && (CLServiceSession.Diagnostic.learnedRoutesDeniedGlobally.getter() & 1) == 0 && (CLServiceSession.Diagnostic.learnedRoutesDenied.getter() & 1) == 0 && (CLServiceSession.Diagnostic.learnedRoutesUnsupported.getter() & 1) == 0 && (CLServiceSession.Diagnostic.visitHistoryDeniedGlobally.getter() & 1) == 0 && (CLServiceSession.Diagnostic.visitHistoryDenied.getter() & 1) == 0 && (CLServiceSession.Diagnostic.visitHistoryUnsupported.getter() & 1) == 0 && (CLServiceSession.Diagnostic.authorizationRestricted.getter() & 1) == 0 && (CLServiceSession.Diagnostic.accuracyLimited.getter() & 1) == 0 && (CLServiceSession.Diagnostic.fullAccuracyDenied.getter() & 1) == 0 && (CLServiceSession.Diagnostic.insufficientlyInUse.getter() & 1) == 0 && (CLServiceSession.Diagnostic.authorizationRequestInProgress.getter() & 1) == 0 && (CLServiceSession.Diagnostic.serviceSessionRequired.getter() & 1) == 0)
  {
    v5 = 1;
    goto LABEL_27;
  }

  if (CLServiceSession.Diagnostic.visitHistoryDenied.getter())
  {
    v5 = 13;
LABEL_27:
    (*(v0[33] + 8))(v0[34], v0[32]);
    v4 = 0;
    goto LABEL_30;
  }

  v13 = v0[33];
  v12 = v0[34];
  v14 = v0[32];
  v15 = CLServiceSession.Diagnostic.visitHistoryUnsupported.getter();
  (*(v13 + 8))(v12, v14);
  if ((v15 & 1) == 0)
  {
    v28 = static MainActor.shared.getter();
    v0[45] = v28;
    sub_1000FA458((v0 + 8), v0[11]);
    v29 = swift_task_alloc();
    v0[46] = v29;
    *v29 = v0;
    v29[1] = sub_1000F8CAC;
    v22 = v0[35];
    v24 = &protocol witness table for MainActor;
    v23 = v28;

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v22, v23, v24);
  }

  v5 = 16;
  v4 = 1;
LABEL_30:
  sub_10004E3D0((v0 + 8));
  swift_beginAccess();
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v17 = v16;
    if (v4)
    {
LABEL_32:

      v18 = "Visit History Denied Globally";
      v19 = 0xD000000000000019;
LABEL_40:
      sub_1000F7654(v19, v18 | 0x8000000000000000);

      goto LABEL_41;
    }

    if (sub_10033A8D0(v5) == 0xD000000000000014 && 0x80000001012167C0 == v20)
    {
    }

    else
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v21 & 1) == 0)
      {
        if (sub_10033A8D0(v5) == 0x7A69726F68747541 && v30 == 0xEA00000000006465)
        {
        }

        else
        {
          v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v31 & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        v22 = [objc_opt_self() sharedService];
        if (v22)
        {
          v32 = v22;
          v33 = v0[31];
          v41 = v0[30];
          v34 = v0[28];
          v42 = v0[29];
          v35 = v0[26];
          v36 = v0[27];

          [v32 captureUserAction:520 onTarget:148 eventValue:0];

          sub_100014C84(0, &qword_10190B4F0);
          v37 = static OS_dispatch_queue.main.getter();
          v38 = swift_allocObject();
          *(v38 + 16) = v17;
          v0[6] = sub_1000FA63C;
          v0[7] = v38;
          v0[2] = _NSConcreteStackBlock;
          v0[3] = 1107296256;
          v0[4] = sub_100039C64;
          v0[5] = &unk_101603390;
          v39 = _Block_copy(v0 + 2);
          v40 = v17;
          static DispatchQoS.unspecified.getter();
          v0[24] = _swiftEmptyArrayStorage;
          sub_1000412D0(&qword_1019097D0, &type metadata accessor for DispatchWorkItemFlags);
          sub_1000CE6B8(&unk_10190B500);
          sub_1000DB3BC();
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();

          _Block_release(v39);

          (*(v36 + 8))(v34, v35);
          (*(v41 + 8))(v33, v42);

          goto LABEL_41;
        }

        goto LABEL_55;
      }
    }

    GEOConfigSetBOOL();
    v22 = [objc_opt_self() sharedService];
    if (v22)
    {
      v25 = v22;

      [v25 captureUserAction:521 onTarget:148 eventValue:0];

      v18 = "Settings.Apps/com.apple.Maps";
      v19 = 0xD000000000000018;
      goto LABEL_40;
    }

    __break(1u);
LABEL_55:
    __break(1u);
    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v22, v23, v24);
  }

LABEL_41:

  v26 = v0[1];

  return v26();
}

void sub_1000F9560(void *a1)
{
  if (qword_101906740 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100021540(v2, qword_101960060);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Maps Warming Sheet: Dismissing Warming Sheet for Visited Places And TCC is Authorized", v5, 2u);
  }

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v9[4] = sub_1000FA644;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100039C64;
  v9[3] = &unk_1016033E0;
  v7 = _Block_copy(v9);
  v8 = a1;

  [v8 dismissViewControllerAnimated:1 completion:v7];
  _Block_release(v7);
}

void sub_1000F96F4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (*(Strong + OBJC_IVAR____TtC4Maps36LocationAuthenticationViewController_forceDismissTask))
    {

      dispatch thunk of DispatchWorkItem.cancel()();
    }

    sub_1000F7654(a1, a2);
  }
}

__n128 sub_1000F9830(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000F9854(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000F989C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1000F98FC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1000F7654(0xD000000000000031, 0x800000010121B3F0);
  }
}

uint64_t sub_1000F9968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 == 1)
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v5.super.isa = qword_1019600D8;
    v30 = 0x800000010121B2B0;
    v6 = 0x6553206F74206F47;
    v10 = 0xEE0073676E697474;
    v8 = 0x800000010121B290;
    v9 = 0xD000000000000035;
    v7 = 0xD00000000000001ELL;
  }

  else
  {
    if (a2 != 2)
    {
      countAndFlagsBits = 0;
      object = 0xE000000000000000;
      if (a1 == 1)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    }

    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v5.super.isa = qword_1019600D8;
    v30 = 0x800000010121B310;
    v6 = 0x65756E69746E6F43;
    v7 = 0xD00000000000001FLL;
    v8 = 0x800000010121B2F0;
    v9 = 0xD00000000000002FLL;
    v10 = 0xE800000000000000;
  }

  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v7, 0, v5, *&v6, *&v9);
  countAndFlagsBits = v11._countAndFlagsBits;
  object = v11._object;
  if (a1 == 1)
  {
LABEL_10:
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v14.super.isa = qword_1019600D8;
    v32._object = 0x800000010121AF40;
    v15._countAndFlagsBits = 0xD000000000000021;
    v15._object = 0x800000010121AEF0;
    v16._countAndFlagsBits = 0x1000000000000017;
    v16._object = 0x800000010121AF20;
    v32._countAndFlagsBits = 0xD000000000000043;
    v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, qword_1019600D8, v16, v32);
    v18 = v17._countAndFlagsBits;
    v19 = v17._object;
    v31 = 0x800000010121B080;
    v20 = 0xD000000000000027;
    v21 = 0x800000010121AF90;
    v22 = 0xD0000000000000BELL;
    v23 = 0x800000010121AFC0;
    v24 = 0xD00000000000004ELL;
LABEL_18:
    v29 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v20, 0, v14, *&v22, *&v24);
    result = v29._countAndFlagsBits;
    *a3 = a1;
    *(a3 + 8) = v18;
    *(a3 + 16) = v19;
    *(a3 + 24) = v29;
    *(a3 + 40) = countAndFlagsBits;
    *(a3 + 56) = 0;
    *(a3 + 64) = 0;
    *(a3 + 48) = object;
    return result;
  }

LABEL_14:
  if (!a1)
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v14.super.isa = qword_1019600D8;
    v33._object = 0x800000010121B120;
    v25._countAndFlagsBits = 0xD000000000000024;
    v25._object = 0x800000010121B0D0;
    v26._object = 0x800000010121B100;
    v33._countAndFlagsBits = 0xD000000000000032;
    v26._countAndFlagsBits = 0x1000000000000013;
    v27 = NSLocalizedString(_:tableName:bundle:value:comment:)(v25, 0, qword_1019600D8, v26, v33);
    v18 = v27._countAndFlagsBits;
    v19 = v27._object;
    v31 = 0x800000010121B250;
    v20 = 0xD000000000000025;
    v21 = 0x800000010121B160;
    v22 = 0xD0000000000000BALL;
    v23 = 0x800000010121B190;
    v24 = 0xD00000000000003BLL;
    goto LABEL_18;
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

void sub_1000F9D1C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for VisitedPlacesDataRetentionViewModel();
  swift_allocObject();
  v4 = sub_1002130CC();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  objc_allocWithZone(type metadata accessor for VisitedPlacesDataRetentionViewController());
  sub_1000CD9D4(a1);
  v16 = sub_1002121DC(v4, sub_1000FA65C, v5);
  v6 = [objc_opt_self() sharedMapsDelegate];
  if (v6 && (v7 = v6, v8 = [v6 chromeViewController], v7, v8))
  {
    if (qword_101906740 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100021540(v9, qword_101960060);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Maps Warming Sheet Alert : Presenting data privacy keeper view", v12, 2u);
    }

    [v8 _maps_topMostPresentViewController:v16 animated:1 completion:0];
  }

  else
  {
    if (qword_101906740 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100021540(v13, qword_101960060);
    v8 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v8, v14, "Maps Warming Sheet Alert : The ChromeViewController is nil, so we did not present the data keeper view", v15, 2u);
    }
  }
}

void sub_1000F9FBC()
{
  v1 = v0;
  v2 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v2 - 8);
  v4 = v21 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + OBJC_IVAR____TtC4Maps36LocationAuthenticationViewController_warmingSheetType);
  if (v9 == 1)
  {
    static Date.now.getter();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v6 + 8))(v8, v5);
    GEOConfigSetDate();

    sub_1000F7D7C();
  }

  else if (v9)
  {
    v21[1] = *(v1 + OBJC_IVAR____TtC4Maps36LocationAuthenticationViewController_warmingSheetType);
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    static Date.now.getter();
    v11 = Date._bridgeToObjectiveC()().super.isa;
    (*(v6 + 8))(v8, v5);
    GEOConfigSetDate();

    if (qword_101906740 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100021540(v12, qword_101960060);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Maps Warming Sheet: Continue button tapped for Location Intelligence", v15, 2u);
    }

    sub_1000F83C8();
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();
    swift_retain_n();

    v19 = static MainActor.shared.getter();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = &protocol witness table for MainActor;
    v20[4] = v18;
    v20[5] = sub_1000FA388;
    v20[6] = v16;

    sub_10050D2C8(0, 0, v4, &unk_1011E5CB0, v20);
  }
}

uint64_t sub_1000FA390(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10003AC40;

  return sub_1000F6AAC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1000FA458(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1000FA4C8(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return _swift_deallocObject(v2, 40, 7);
}

uint64_t sub_1000FA520(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003AC4C;

  return sub_1000F8714(a1, v4, v5, v6);
}

uint64_t sub_1000FA5D4(uint64_t a1)
{
  v2 = sub_1000CE6B8(&unk_101909B00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000FA65C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

void sub_1000FAAD4()
{
  v1 = [objc_allocWithZone(type metadata accessor for NearbyTeachableMomentContaineeViewController()) init];
  v2 = OBJC_IVAR____TtC4Maps20NearbyTransitContext_onboardingViewController;
  v3 = *(v0 + OBJC_IVAR____TtC4Maps20NearbyTransitContext_onboardingViewController);
  *(v0 + OBJC_IVAR____TtC4Maps20NearbyTransitContext_onboardingViewController) = v1;

  v4 = *(v0 + v2);
  if (v4)
  {
    [v4 setContaineeDelegate:v0];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    [Strong setNeedsUpdateComponent:@"cards" animated:1];
  }
}

void sub_1000FAB9C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v33 = a1;
  v32 = a4;
  v6 = sub_1000CE6B8(&qword_10190EBD0);
  __chkstk_darwin(v6 - 8);
  v8 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v31[-v10];
  v12 = sub_1000CE6B8(&unk_10190A800);
  __chkstk_darwin(v12 - 8);
  v14 = &v31[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v31[-v16];
  sub_1000D2DFC(a2, &v31[-v16], &unk_10190A800);
  sub_1000D2DFC(a3, v11, &qword_10190EBD0);
  v18 = type metadata accessor for TransitSchedulesContext();
  v19 = objc_allocWithZone(v18);
  swift_unknownObjectWeakInit();
  *&v19[OBJC_IVAR____TtC4Maps23TransitSchedulesContext_incidentsViewController] = 0;
  sub_1000D2DFC(v17, v14, &unk_10190A800);
  sub_1000D2DFC(v11, v8, &qword_10190EBD0);
  v20 = type metadata accessor for TimeZone();
  v21 = *(v20 - 8);
  isa = 0;
  if ((*(v21 + 48))(v14, 1, v20) != 1)
  {
    isa = TimeZone._bridgeToObjectiveC()().super.isa;
    (*(v21 + 8))(v14, v20);
  }

  v23 = type metadata accessor for Date();
  v24 = *(v23 - 8);
  v25 = 0;
  if ((*(v24 + 48))(v8, 1, v23) != 1)
  {
    v25 = Date._bridgeToObjectiveC()().super.isa;
    (*(v24 + 8))(v8, v23);
  }

  v26 = objc_allocWithZone(TransitSchedulesViewController);
  v27 = [v26 initWithDepartureSequence:v33 timeZone:isa scheduleWindowStartDate:v25 includeAllDirections:v32 & 1];

  *&v19[OBJC_IVAR____TtC4Maps23TransitSchedulesContext_viewController] = v27;
  v34.receiver = v19;
  v34.super_class = v18;
  v28 = objc_msgSendSuper2(&v34, "init");
  sub_100024F64(v11, &qword_10190EBD0);
  sub_100024F64(v17, &unk_10190A800);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v30 = Strong;
    [Strong pushContext:v28 animated:1 completion:0];

    v28 = v30;
  }
}

void sub_1000FAF5C()
{
  v1 = objc_allocWithZone(MapsTransitIncidentsContaineeViewController);
  sub_1000CE6B8(&unk_10190A7F0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v3 = [v1 initWithTransitIncidents:isa];

  v4 = OBJC_IVAR____TtC4Maps20NearbyTransitContext_incidentsViewController;
  v5 = *(v0 + OBJC_IVAR____TtC4Maps20NearbyTransitContext_incidentsViewController);
  *(v0 + OBJC_IVAR____TtC4Maps20NearbyTransitContext_incidentsViewController) = v3;

  v6 = *(v0 + v4);
  if (v6)
  {
    [v6 setContaineeDelegate:v0];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    [Strong setNeedsUpdateComponent:@"cards" animated:1];
  }
}

void sub_1000FB06C(uint64_t a1)
{
  v2 = v1;
  v4 = [v2 iosChromeViewController];
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = [v5 settingsController];
  if (!v6)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = v6;
  v8 = [v6 bestMapViewModeForViewMode:a1];

  v9 = [v5 settingsController];
  if (!v9)
  {
LABEL_9:
    __break(1u);
    return;
  }

  [v9 setMapViewMode:v8 animated:1];
}

void sub_1000FB44C(void *a1)
{
  swift_unknownObjectWeakAssign();
  v2 = *(v1 + OBJC_IVAR____TtC4Maps28SearchResultsLogicController_router);
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v4 = *(v2 + OBJC_IVAR____TtC4Maps26SearchResultsContextRouter_state);
  *(v2 + OBJC_IVAR____TtC4Maps26SearchResultsContextRouter_state) = 1;
  v5 = *(v2 + OBJC_IVAR____TtC4Maps26SearchResultsContextRouter_stateChangeHandler);
  if (v5)
  {

    v5(v4, 1);

    sub_1000588AC(v5);
  }

  else
  {
  }
}

id sub_1000FB560(void *a1, uint8_t a2, void *a3)
{
  v4 = v3;
  v8 = &v4[OBJC_IVAR____TtC4Maps28SearchResultsLogicController_logicControllerUpdateHandler];
  *v8 = 0;
  v8[1] = 0;
  swift_unknownObjectWeakInit();
  if (qword_101906728 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100021540(v9, qword_101960018);
  v10 = static os_log_type_t.info.getter();
  v11 = a1;
  v12 = a3;
  v13 = Logger.logObject.getter();

  if (os_log_type_enabled(v13, v10))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412546;
    *(v14 + 4) = v11;
    *(v14 + 12) = 2112;
    *(v14 + 14) = v12;
    *v15 = v11;
    v15[1] = v12;
    v16 = v11;
    v17 = v12;
    _os_log_impl(&_mh_execute_header, v13, v10, "[SearchResultContext] Initializing context logic controller with %@, %@", v14, 0x16u);
    sub_1000CE6B8(&qword_1019144F0);
    swift_arrayDestroy();
  }

  *&v4[OBJC_IVAR____TtC4Maps28SearchResultsLogicController_searchFieldItem] = v11;
  *&v4[OBJC_IVAR____TtC4Maps28SearchResultsLogicController_recentAutocompleteSearchSessionData] = v12;
  v18 = objc_allocWithZone(SearchSessionManager);
  v19 = v11;
  v20 = v12;
  v21 = [v18 init];
  *&v4[OBJC_IVAR____TtC4Maps28SearchResultsLogicController_searchSessionManager] = v21;
  v4[OBJC_IVAR____TtC4Maps28SearchResultsLogicController_contextType] = a2;
  v22 = objc_allocWithZone(type metadata accessor for SearchResultsContextRouter());
  v23 = sub_1003FA7F4(a2);
  *&v4[OBJC_IVAR____TtC4Maps28SearchResultsLogicController_router] = v23;
  v24 = objc_allocWithZone(type metadata accessor for SearchResultsMapViewController());
  v25 = v23;
  v26 = [v24 init];
  *&v4[OBJC_IVAR____TtC4Maps28SearchResultsLogicController_mapViewController] = v26;
  swift_unknownObjectWeakAssign();
  v30.receiver = v4;
  v30.super_class = type metadata accessor for SearchResultsLogicController();
  v27 = objc_msgSendSuper2(&v30, "init");

  v28 = v27;
  sub_1000FB810(v28);

  return v28;
}

uint64_t sub_1000FB810(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC4Maps28SearchResultsLogicController_router);
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = (v2 + OBJC_IVAR____TtC4Maps26SearchResultsContextRouter_stateChangeHandler);
  v5 = *(v2 + OBJC_IVAR____TtC4Maps26SearchResultsContextRouter_stateChangeHandler);
  *v4 = sub_1000FD4FC;
  v4[1] = v3;

  sub_1000588AC(v5);

  v6 = *(a1 + OBJC_IVAR____TtC4Maps28SearchResultsLogicController_mapViewController);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = (v6 + OBJC_IVAR____TtC4Maps30SearchResultsMapViewController_logicControllerSearchRefreshHandler);
  v9 = *(v6 + OBJC_IVAR____TtC4Maps30SearchResultsMapViewController_logicControllerSearchRefreshHandler);
  *v8 = sub_1000FD504;
  v8[1] = v7;

  sub_1000588AC(v9);

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = (v2 + OBJC_IVAR____TtC4Maps26SearchResultsContextRouter_logicControllerSearchHandler);
  v12 = *(v2 + OBJC_IVAR____TtC4Maps26SearchResultsContextRouter_logicControllerSearchHandler);
  *v11 = sub_1000FD50C;
  v11[1] = v10;

  sub_1000588AC(v12);
}

void sub_1000FB9E8(uint64_t a1, void *a2)
{
  if (qword_101906728 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100021540(v5, qword_101960018);
  v6 = static os_log_type_t.info.getter();
  v7 = v2;

  v8 = Logger.logObject.getter();

  if (os_log_type_enabled(v8, v6))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v28 = a2;
    v30 = swift_slowAlloc();
    v11 = v30;
    *v9 = 138412546;
    v12 = *&v7[OBJC_IVAR____TtC4Maps28SearchResultsLogicController_searchFieldItem];
    *(v9 + 4) = v12;
    *v10 = v12;
    *(v9 + 12) = 2080;
    v13 = v12;
    v14 = Dictionary.description.getter();
    v16 = sub_10004DEB8(v14, v15, &v30);

    *(v9 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v8, v6, "[SearchResultContext] Begin searching for %@, userInfo:%s", v9, 0x16u);
    sub_1000DCD10(v10);

    sub_10004E3D0(v11);
    a2 = v28;
  }

  v17 = static os_log_type_t.debug.getter();
  v18 = a2;
  v19 = Logger.logObject.getter();

  if (os_log_type_enabled(v19, v17))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v18;
    *v21 = a2;
    v22 = v18;
    _os_log_impl(&_mh_execute_header, v19, v17, "-> [SearchResultContext] using refinements: %@", v20, 0xCu);
    sub_1000DCD10(v21);
  }

  v23 = *&v7[OBJC_IVAR____TtC4Maps28SearchResultsLogicController_searchSessionManager];
  [v23 addObserver:v7];
  [v23 setTraitsProvider:v7];
  v24 = *&v7[OBJC_IVAR____TtC4Maps28SearchResultsLogicController_searchFieldItem];
  if (a2)
  {
    v25 = v18;
    v26 = v24;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    [v23 performSearchForSearchItem:v26 withUserInfo:? refinementsQuery:? recentAutocompleteSessionData:?];
  }

  else
  {
    v27 = v24;
    sub_1000FC840(a1);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v23 performSearchForSearchItem:v27 withUserInfo:isa recentAutocompleteSessionData:*&v7[OBJC_IVAR____TtC4Maps28SearchResultsLogicController_recentAutocompleteSearchSessionData]];
  }
}

void sub_1000FBE30()
{
  if (qword_101906728 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100021540(v1, qword_101960018);
  v2 = static os_log_type_t.info.getter();
  v3 = v0;
  v4 = Logger.logObject.getter();

  if (os_log_type_enabled(v4, v2))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = *&v3[OBJC_IVAR____TtC4Maps28SearchResultsLogicController_searchFieldItem];
    *(v5 + 4) = v7;
    *v6 = v7;
    v8 = v7;
    _os_log_impl(&_mh_execute_header, v4, v2, "[SearchResultContext] End search for %@", v5, 0xCu);
    sub_1000DCD10(v6);
  }

  v9 = *&v3[OBJC_IVAR____TtC4Maps28SearchResultsLogicController_searchSessionManager];
  [v9 clearSearchSession];
  [v9 removeObserver:v3];
  sub_1002451E0(0);
}

void sub_1000FBFF4()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC4Maps28SearchResultsLogicController_searchSessionManager];
  v3 = [v2 currentSearchSession];
  v60 = [v3 searchFieldItem];

  if (!v60)
  {
    return;
  }

  v4 = [v2 currentSearchSession];
  v5 = [v4 searchInfo];

  if (v5)
  {
    v6 = sub_1000D0EC4(_swiftEmptyArrayStorage);
    v7 = sub_1000FC840(v6);

    *&v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v62 + 1) = v8;
    AnyHashable.init<A>(_:)();
    v63 = &type metadata for Bool;
    LOBYTE(v62) = 1;
    sub_1000D2BE0(&v62, v61);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10012AC14(v61, v64, isUniquelyReferenced_nonNull_native);
    sub_10005BF8C(v64);
    v10 = v7;
    v11 = [v5 resultRefinementGroup];
    if (v11)
    {

      v12 = [objc_allocWithZone(GEOPDResultRefinementQuery) init];
      if (v12)
      {
        v13 = v12;
        [v12 setResultRefinementOriginType:sub_1003FA714()];
        v14 = [v5 resultRefinementGroup];
        if (!v14)
        {
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        v15 = v14;
        v16 = [v14 refinementSessionState];

        [v13 setRefinementSessionState:v16];
        v17 = [v5 resultRefinementGroup];
        if (!v17)
        {
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        v18 = v17;
        v19 = [v17 resultRefinementBar];

        v20 = [v19 resultRefinements];
        sub_100014C84(0, &qword_10190A8D8);
        v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v59 = v2;
        v58 = v10;
        if (v21 >> 62)
        {
          v22 = _CocoaArrayWrapper.endIndex.getter();
          if (!v22)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v22)
          {
            goto LABEL_24;
          }
        }

        if (v22 < 1)
        {
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        v23 = 0;
        do
        {
          if ((v21 & 0xC000000000000001) != 0)
          {
            v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v24 = *(v21 + 8 * v23 + 32);
          }

          v25 = v24;
          ++v23;
          v26 = [v24 convertToGEOPDResultRefinement];
          [v13 addRefinement:v26];
        }

        while (v22 != v23);
LABEL_24:

        v37 = [v5 resultRefinementGroup];
        if (!v37)
        {
LABEL_46:
          __break(1u);
          return;
        }

        v38 = v37;
        v39 = [v37 resultRefinementView];

        if (v39)
        {
          v40 = [v39 sections];

          sub_100014C84(0, &qword_10190A8E0);
          v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (!(v41 >> 62))
          {
            goto LABEL_27;
          }
        }

        else
        {
          v41 = _swiftEmptyArrayStorage;
          if (!(_swiftEmptyArrayStorage >> 62))
          {
LABEL_27:
            v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v42)
            {
              goto LABEL_36;
            }

LABEL_28:
            if (v42 >= 1)
            {
              v43 = 0;
              do
              {
                if ((v41 & 0xC000000000000001) != 0)
                {
                  v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v44 = *(v41 + 8 * v43 + 32);
                }

                v45 = v44;
                ++v43;
                v46 = [v44 convertToGEOPDResultRefinementSection];
                [v13 addRefinementSection:v46];
              }

              while (v42 != v43);
LABEL_36:

              if (qword_101906728 != -1)
              {
                swift_once();
              }

              v47 = type metadata accessor for Logger();
              sub_100021540(v47, qword_101960018);
              v48 = static os_log_type_t.info.getter();
              v49 = v1;
              v50 = Logger.logObject.getter();

              if (os_log_type_enabled(v50, v48))
              {
                v51 = swift_slowAlloc();
                v52 = swift_slowAlloc();
                *v51 = 138412290;
                v53 = *&v49[OBJC_IVAR____TtC4Maps28SearchResultsLogicController_searchFieldItem];
                *(v51 + 4) = v53;
                *v52 = v53;
                v54 = v53;
                _os_log_impl(&_mh_execute_header, v50, v48, "[SearchResultContext] Refreshing %@ with refinements", v51, 0xCu);
                sub_1000DCD10(v52);
              }

              v55 = *&v49[OBJC_IVAR____TtC4Maps28SearchResultsLogicController_recentAutocompleteSearchSessionData];
              v56 = v13;
              isa = Dictionary._bridgeToObjectiveC()().super.isa;

              [v59 performSearchForSearchItem:v60 withUserInfo:isa refinementsQuery:v56 recentAutocompleteSessionData:v55];

              return;
            }

            goto LABEL_43;
          }
        }

        v42 = _CocoaArrayWrapper.endIndex.getter();
        if (!v42)
        {
          goto LABEL_36;
        }

        goto LABEL_28;
      }
    }

    if (qword_101906728 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100021540(v27, qword_101960018);
    v28 = static os_log_type_t.info.getter();
    v29 = v1;
    v30 = Logger.logObject.getter();

    if (os_log_type_enabled(v30, v28))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      v33 = *&v29[OBJC_IVAR____TtC4Maps28SearchResultsLogicController_searchFieldItem];
      *(v31 + 4) = v33;
      *v32 = v33;
      v34 = v33;
      _os_log_impl(&_mh_execute_header, v30, v28, "[SearchResultContext] Refreshing %@ without refinements", v31, 0xCu);
      sub_1000DCD10(v32);
    }

    v35 = *&v29[OBJC_IVAR____TtC4Maps28SearchResultsLogicController_recentAutocompleteSearchSessionData];
    v36 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v2 performSearchForSearchItem:v60 withUserInfo:v36 refinementsQuery:0 recentAutocompleteSessionData:v35];
  }

  else
  {
  }
}