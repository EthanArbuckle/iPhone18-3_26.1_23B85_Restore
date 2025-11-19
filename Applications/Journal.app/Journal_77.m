uint64_t sub_1008417B4()
{
  v1 = v0[33];
  v2 = v0[22];
  v3 = v0[12];
  v4 = v0[13];
  sub_1000F24EC(&unk_100AE1A40);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100940080;
  (*(v4 + 16))(v6 + v5, v1 + OBJC_IVAR____TtC7Journal5Asset_id, v3);
  v7 = sub_1004960D4(v6);
  v0[43] = v7;
  swift_setDeallocating();
  (*(v4 + 8))(v6 + v5, v3);
  swift_deallocClassInstance();
  v8 = swift_task_alloc();
  v0[44] = v8;
  *v8 = v0;
  v8[1] = sub_100841924;

  return sub_10056824C(v2, &protocol witness table for MainActor, v7);
}

uint64_t sub_100841924()
{
  v1 = *v0;

  v2 = *(v1 + 336);
  v3 = *(v1 + 328);

  return _swift_task_switch(sub_100841A68, v3, v2);
}

uint64_t sub_100841A68()
{

  v1 = *(v0 + 184);
  v2 = *(v0 + 192);

  return _swift_task_switch(sub_100841AD8, v1, v2);
}

uint64_t sub_100841AD8()
{

  v1 = *(*(v0 + 200) + *(v0 + 208));
  if (!v1 || (v2 = v1 + OBJC_IVAR____TtC7Journal14EntryViewModel_slimAsset, v3 = *(v1 + OBJC_IVAR____TtC7Journal14EntryViewModel_slimAsset), (*(v0 + 360) = v3) == 0) || (v4 = *(v2 + 8), v5 = *(v1 + OBJC_IVAR____TtC7Journal14EntryViewModel_multiPinMapAsset), (*(v0 + 368) = v5) == 0))
  {
LABEL_6:
    v16 = *(v0 + 200);
    v15 = *(v0 + 208);
    v18 = *(v0 + 80);
    v17 = *(v0 + 88);
    v19 = *(v0 + 72);
    (*(v18 + 104))(v17, enum case for JournalFeatureFlags.enhancedSync(_:), v19);
    v20 = JournalFeatureFlags.isEnabled.getter();
    (*(v18 + 8))(v17, v19);
    v21 = *(v16 + v15);
    *(v0 + 400) = v21;
    if (v20)
    {
      if (v21)
      {
        v22 = OBJC_IVAR____TtC7Journal14EntryViewModel_multiPinMapAsset;
        v23 = *(v21 + OBJC_IVAR____TtC7Journal14EntryViewModel_multiPinMapAsset);
        *(v0 + 408) = v23;
        if (v23)
        {
          v24 = *(v0 + 176);
          (*(v0 + 224))(*(v0 + 152), *(v0 + 472), *(v0 + 136));

          v25 = v23;

          v26 = swift_task_alloc();
          *(v0 + 416) = v26;
          *v26 = v0;
          v27 = sub_100842804;
LABEL_10:
          v26[1] = v27;
          v28 = *(v0 + 152);

          return sub_1005666C0(v24, &protocol witness table for MainActor, v25, v28);
        }

LABEL_15:
        v30 = *(v21 + v22);
        *(v0 + 424) = v30;
        if (v30)
        {
          v31 = *(v0 + 176);

          v30;
          v32 = swift_task_alloc();
          *(v0 + 432) = v32;
          *v32 = v0;
          v32[1] = sub_100842B2C;

          return sub_10011AA48(v31, &protocol witness table for MainActor, 1);
        }

        v33 = *(*(v0 + 200) + *(v0 + 208));
        *(v0 + 440) = v33;
        if (v33)
        {

          *(v0 + 448) = static MainActor.shared.getter();
          v35 = dispatch thunk of Actor.unownedExecutor.getter();

          return _swift_task_switch(sub_100842ED0, v35, v34);
        }
      }
    }

    else if (v21)
    {
      v22 = OBJC_IVAR____TtC7Journal14EntryViewModel_multiPinMapAsset;
      goto LABEL_15;
    }

    v36 = *(v0 + 216);
    v37 = *(v0 + 200);

    (*(v0 + 240))(*(v0 + 160), *(v0 + 136));

    v38 = *(v0 + 8);

    return v38();
  }

  v52 = v4;
  v7 = *(v0 + 112);
  v6 = *(v0 + 120);
  v9 = *(v0 + 96);
  v8 = *(v0 + 104);
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 16);
  v10(v6, &v3[OBJC_IVAR____TtC7Journal5Asset_id], v9);
  v10(v7, &v5[OBJC_IVAR____TtC7Journal5Asset_id], v9);
  sub_1008461D0(&qword_100AD9220, &type metadata accessor for UUID);
  v11 = v3;
  v12 = v5;
  v13 = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = *(v8 + 8);
  v14(v7, v9);
  v14(v6, v9);
  if (v13)
  {
LABEL_5:

    goto LABEL_6;
  }

  v39 = *(v0 + 80);
  v40 = *(v0 + 88);
  v41 = *(v0 + 72);
  (*(v39 + 104))(v40, enum case for JournalFeatureFlags.enhancedSync(_:), v41);
  v42 = JournalFeatureFlags.isEnabled.getter();
  (*(v39 + 8))(v40, v41);
  if (v42)
  {
    v43 = *(*(v0 + 200) + *(v0 + 208));
    *(v0 + 384) = v43;
    if (v43)
    {
      v44 = *(v0 + 224);
      v24 = *(v0 + 176);
      v45 = *(v0 + 152);
      v46 = *(v0 + 136);
      v25 = v11;

      *v45 = static AssetPlacement.maxGridCount.getter();
      v44(v45, enum case for AssetPlacement.grid(_:), v46);

      v26 = swift_task_alloc();
      *(v0 + 392) = v26;
      *v26 = v0;
      v27 = sub_100842618;
      goto LABEL_10;
    }

    goto LABEL_5;
  }

  v47 = *(v0 + 176);
  v48 = *(v52 + 72);

  v50 = (v48 + *v48);
  v49 = swift_task_alloc();
  *(v0 + 376) = v49;
  *v49 = v0;
  v49[1] = sub_10084218C;

  return v50(v47, &protocol witness table for MainActor, ObjectType, v52);
}

uint64_t sub_10084218C()
{
  v1 = *v0;

  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  return _swift_task_switch(sub_1008422D0, v3, v2);
}

uint64_t sub_1008422D0()
{
  v1 = *(v0 + 360);

  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 72);
  (*(v5 + 104))(v4, enum case for JournalFeatureFlags.enhancedSync(_:), v6);
  v7 = JournalFeatureFlags.isEnabled.getter();
  (*(v5 + 8))(v4, v6);
  v8 = *(v3 + v2);
  *(v0 + 400) = v8;
  if (v7)
  {
    if (!v8)
    {
      goto LABEL_17;
    }

    v9 = OBJC_IVAR____TtC7Journal14EntryViewModel_multiPinMapAsset;
    v10 = *(v8 + OBJC_IVAR____TtC7Journal14EntryViewModel_multiPinMapAsset);
    *(v0 + 408) = v10;
    if (v10)
    {
      v11 = *(v0 + 176);
      (*(v0 + 224))(*(v0 + 152), *(v0 + 472), *(v0 + 136));

      v12 = v10;

      v13 = swift_task_alloc();
      *(v0 + 416) = v13;
      *v13 = v0;
      v13[1] = sub_100842804;
      v14 = *(v0 + 152);

      return sub_1005666C0(v11, &protocol witness table for MainActor, v12, v14);
    }
  }

  else
  {
    if (!v8)
    {
      goto LABEL_17;
    }

    v9 = OBJC_IVAR____TtC7Journal14EntryViewModel_multiPinMapAsset;
  }

  v16 = *(v8 + v9);
  *(v0 + 424) = v16;
  if (v16)
  {
    v17 = *(v0 + 176);

    v16;
    v18 = swift_task_alloc();
    *(v0 + 432) = v18;
    *v18 = v0;
    v18[1] = sub_100842B2C;

    return sub_10011AA48(v17, &protocol witness table for MainActor, 1);
  }

  v19 = *(*(v0 + 200) + *(v0 + 208));
  *(v0 + 440) = v19;
  if (v19)
  {

    *(v0 + 448) = static MainActor.shared.getter();
    v21 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100842ED0, v21, v20);
  }

LABEL_17:
  v22 = *(v0 + 216);
  v23 = *(v0 + 200);

  (*(v0 + 240))(*(v0 + 160), *(v0 + 136));

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100842618()
{
  v1 = *v0;
  v2 = *(*v0 + 360);
  v3 = *(*v0 + 240);
  v4 = *(*v0 + 152);
  v5 = *(*v0 + 136);

  v3(v4, v5);
  v6 = *(v1 + 192);
  v7 = *(v1 + 184);

  return _swift_task_switch(sub_100846B54, v7, v6);
}

uint64_t sub_100842804()
{
  v1 = *v0;
  v2 = *(*v0 + 240);
  v3 = *(*v0 + 152);
  v4 = *(*v0 + 136);

  v2(v3, v4);
  v5 = *(v1 + 192);
  v6 = *(v1 + 184);

  return _swift_task_switch(sub_1008429D0, v6, v5);
}

uint64_t sub_1008429D0()
{
  v1 = *(v0 + 200);
  v2 = *&v1[*(v0 + 208)];
  *(v0 + 440) = v2;
  if (v2)
  {

    *(v0 + 448) = static MainActor.shared.getter();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100842ED0, v4, v3);
  }

  else
  {
    v5 = *(v0 + 216);

    (*(v0 + 240))(*(v0 + 160), *(v0 + 136));

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_100842B2C()
{
  v1 = *(*v0 + 176);

  if (v1)
  {
    swift_getObjectType();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  return _swift_task_switch(sub_100842C68, v2, v4);
}

uint64_t sub_100842C68()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_100ACFFA8 != -1)
  {
    swift_once();
  }

  v2 = v0[53];
  v3 = qword_100B2FB98;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v1 postNotificationName:v3 object:isa];

  v5 = v0[23];
  v6 = v0[24];

  return _swift_task_switch(sub_100842D7C, v5, v6);
}

uint64_t sub_100842D7C()
{
  v1 = *(v0 + 200);
  v2 = *&v1[*(v0 + 208)];
  *(v0 + 440) = v2;
  if (v2)
  {

    *(v0 + 448) = static MainActor.shared.getter();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100842ED0, v4, v3);
  }

  else
  {
    v5 = *(v0 + 216);

    (*(v0 + 240))(*(v0 + 160), *(v0 + 136));

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_100842ED0()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = v0[55];
  if (Strong)
  {
    v3 = *(v2 + 56);
    ObjectType = swift_getObjectType();
    v5 = sub_1004959AC(&off_100A5B388);
    (*(v3 + 8))(v2, v5, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  v6 = v0[23];
  v7 = v0[24];

  return _swift_task_switch(sub_100842FB0, v6, v7);
}

uint64_t sub_100842FB0()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  if (*&v1[v2])
  {

    sub_10003A464();

    v3 = *&v1[v2];
    *(v0 + 456) = v3;
    if (v3)
    {
      v4 = *(v0 + 176);
      (*(*(v0 + 56) + 104))(*(v0 + 64), enum case for MapSize.small(_:), *(v0 + 48));

      v5 = swift_task_alloc();
      *(v0 + 464) = v5;
      *v5 = v0;
      v5[1] = sub_10084316C;
      v6 = *(v0 + 64);

      return sub_100572180(v4, &protocol witness table for MainActor, v6);
    }

    v1 = *(v0 + 200);
  }

  v8 = *(v0 + 216);

  (*(v0 + 240))(*(v0 + 160), *(v0 + 136));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10084316C()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 192);
  v6 = *(v1 + 184);

  return _swift_task_switch(sub_100843330, v6, v5);
}

uint64_t sub_100843330()
{
  v1 = *(v0 + 216);

  (*(v0 + 240))(*(v0 + 160), *(v0 + 136));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100843424(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(char *))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  a5(v11);

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_10084355C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  LOBYTE(a5) = a5(v11);

  (*(v9 + 8))(v11, v8);
  return a5 & 1;
}

uint64_t sub_10084366C(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

unint64_t sub_1008436AC()
{
  result = qword_100AF4440;
  if (!qword_100AF4440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4440);
  }

  return result;
}

unint64_t sub_100843704()
{
  result = qword_100AF4448;
  if (!qword_100AF4448)
  {
    sub_1000F2A18(&qword_100AF4450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4448);
  }

  return result;
}

unint64_t sub_10084376C()
{
  result = qword_100AF4458;
  if (!qword_100AF4458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4458);
  }

  return result;
}

void sub_1008437C0(void *a1, uint64_t a2, int a3)
{
  v49 = a3;
  v48 = a2;
  v5 = type metadata accessor for VisitAssetMetadata();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v9 - 8);
  v47 = &v46 - v10;
  v11 = type metadata accessor for AssetSource();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 presentingViewController];
  if (v16)
  {
    v17 = v16;
    [v16 dismissViewControllerAnimated:1 completion:0];
  }

  v18 = OBJC_IVAR____TtC7Journal25CanvasLocationsController_currentSelectedAnnotation;
  if (*&v3[OBJC_IVAR____TtC7Journal25CanvasLocationsController_currentSelectedAnnotation] || (v31 = OBJC_IVAR____TtC7Journal25CanvasLocationsController_journalEntry, (v32 = *&v3[OBJC_IVAR____TtC7Journal25CanvasLocationsController_journalEntry]) == 0))
  {
    (*(v12 + 104))(v15, enum case for AssetSource.locationPicker(_:), v11);
    (*(v6 + 16))(v8, v48, v5);
    v19 = sub_100579F84(v15, v8);
    v20 = *&v3[v18];
    if (v20)
    {
      v21 = (v20 + OBJC_IVAR____TtC7Journal23StyledMKPointAnnotation_visitAssetID);
      v22 = v21[1];
      if (v22)
      {
        v23 = *v21;
        v24 = type metadata accessor for TaskPriority();
        v25 = v47;
        (*(*(v24 - 8) + 56))(v47, 1, 1, v24);
        type metadata accessor for MainActor();
        v26 = v3;

        v27 = v19;
        v28 = static MainActor.shared.getter();
        v29 = swift_allocObject();
        v29[2] = v28;
        v29[3] = &protocol witness table for MainActor;
        v29[4] = v26;
        v29[5] = v23;
        v29[6] = v22;
        v29[7] = v27;
        sub_1003E9628(0, 0, v25, &unk_10096D828, v29);
      }
    }

    v30 = *&v3[v18];
    *&v3[v18] = 0;
  }

  else
  {
    (*(v12 + 104))(v15, enum case for AssetSource.locationPicker(_:), v11);
    sub_1000F24EC(&qword_100AD64A8);
    v33 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_100940080;
    (*(v6 + 16))(v34 + v33, v48, v5);

    v35 = sub_10011CEC0(v15, v34);
    v36 = *&v3[v31];
    v37 = v32;
    if (v36)
    {
      v38 = *(v36 + OBJC_IVAR____TtC7Journal14EntryViewModel_multiPinMapAsset);
      v39 = v38;
    }

    else
    {
      v38 = 0;
    }

    v40 = type metadata accessor for TaskPriority();
    v41 = v47;
    (*(*(v40 - 8) + 56))(v47, 1, 1, v40);
    type metadata accessor for MainActor();
    v42 = v38;
    v43 = v3;

    v30 = v35;
    v44 = static MainActor.shared.getter();
    v45 = swift_allocObject();
    v45[2] = v44;
    v45[3] = &protocol witness table for MainActor;
    v45[4] = v30;
    v45[5] = v37;
    v45[6] = v38;
    v45[7] = v43;
    sub_1003E9628(0, 0, v41, &unk_10096D840, v45);
  }

  if (v49)
  {
    sub_1008440C8();
  }
}

uint64_t sub_100843CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for AssetPlacement();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[9] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[10] = v10;
  v7[11] = v9;

  return _swift_task_switch(sub_100843DA8, v10, v9);
}

uint64_t sub_100843DA8()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];

  *v1 = static AssetPlacement.maxGridCount.getter();
  (*(v4 + 104))(v1, enum case for AssetPlacement.grid(_:), v3);
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_100843EAC;
  v6 = v0[8];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];

  return sub_10044C1DC(v2, &protocol witness table for MainActor, v9, v7, v8, v6, 1);
}

uint64_t sub_100843EAC()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 88);
  v6 = *(v1 + 80);

  return _swift_task_switch(sub_10084404C, v6, v5);
}

uint64_t sub_10084404C()
{

  sub_100839A20();
  sub_1008396D0();
  sub_10083A1C8();
  sub_100832D54();

  v1 = *(v0 + 8);

  return v1();
}

void sub_1008440C8()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for SettingsKey();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000065A8(0, &qword_100AE1A30);
  v8 = static NSUserDefaults.shared.getter();
  (*(v5 + 104))(v7, enum case for SettingsKey.addCurrentLocation(_:), v4);
  SettingsKey.rawValue.getter();
  (*(v5 + 8))(v7, v4);
  v9 = String._bridgeToObjectiveC()();

  LOBYTE(v4) = [v8 BOOLForKey:v9];

  if ((v4 & 1) == 0)
  {
    v10 = static NSUserDefaults.shared.getter();
    v11 = String._bridgeToObjectiveC()();
    v12 = [v10 BOOLForKey:v11];

    if ((v12 & 1) == 0)
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v13 = String._bridgeToObjectiveC()();

      v14 = String._bridgeToObjectiveC()();

      v15 = [objc_opt_self() alertControllerWithTitle:v13 message:v14 preferredStyle:1];

      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v16 = String._bridgeToObjectiveC()();

      v29 = sub_100844684;
      v30 = 0;
      aBlock = _NSConcreteStackBlock;
      v26 = 1107296256;
      v24[1] = v1;
      v27 = sub_10016B4D8;
      v28 = &unk_100A825D8;
      v17 = _Block_copy(&aBlock);

      v18 = objc_opt_self();
      v19 = [v18 actionWithTitle:v16 style:0 handler:v17];
      _Block_release(v17);

      [v15 addAction:v19];
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v20 = String._bridgeToObjectiveC()();

      v29 = sub_1003BDCA8;
      v30 = 0;
      aBlock = _NSConcreteStackBlock;
      v26 = 1107296256;
      v27 = sub_10016B4D8;
      v28 = &unk_100A82600;
      v21 = _Block_copy(&aBlock);

      v22 = [v18 actionWithTitle:v20 style:1 handler:v21];
      _Block_release(v21);

      [v15 addAction:v22];
      v23 = UIViewController.forPresenting.getter();
      [v23 presentViewController:v15 animated:1 completion:0];
    }
  }
}

void sub_100844684()
{
  v0 = type metadata accessor for SettingsKey();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000065A8(0, &qword_100AE1A30);
  v4 = static NSUserDefaults.shared.getter();
  v5 = String._bridgeToObjectiveC()();
  [v4 setBool:1 forKey:v5];

  v6 = static NSUserDefaults.shared.getter();
  (*(v1 + 104))(v3, enum case for SettingsKey.addCurrentLocation(_:), v0);
  SettingsKey.rawValue.getter();
  (*(v1 + 8))(v3, v0);
  v7 = String._bridgeToObjectiveC()();

  [v6 setBool:1 forKey:v7];
}

void sub_100844828(void *a1)
{
  [a1 dismissViewControllerAnimated:1 completion:0];
  v2 = *(v1 + OBJC_IVAR____TtC7Journal25CanvasLocationsController_locationPickerController);
  *(v1 + OBJC_IVAR____TtC7Journal25CanvasLocationsController_locationPickerController) = 0;
}

void sub_100844870(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC7Journal25CanvasLocationsController_journalEntry))
  {

    sub_10003A464();
  }

  sub_1008396D0();
  sub_100839A20();
  sub_100839880();
  [a1 dismissViewControllerAnimated:1 completion:0];
  v3 = *(v1 + OBJC_IVAR____TtC7Journal25CanvasLocationsController_currentSelectedAnnotation);
  *(v1 + OBJC_IVAR____TtC7Journal25CanvasLocationsController_currentSelectedAnnotation) = 0;
}

double sub_100844948@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1008449D8(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static UIView.Invalidating.subscript.setter();
}

uint64_t sub_100844A4C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100844ACC(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  v5 = v2;
  return static UIViewController.ViewLoading.subscript.setter();
}

BOOL sub_100844B44(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        return a4 == a1;
      }
    }

    else if (a6 == 2 && !(a5 | a4))
    {
      return 1;
    }
  }

  else if (!a6)
  {
    if (a2)
    {
      if (a5)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        if (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          return 1;
        }
      }
    }

    else if (!a5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_100844BF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100032EC8;

  return sub_10083B4B4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100844CCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100032EC8;

  return sub_100843CB0(a1, v4, v5, v6, v7, v9, v8);
}

void sub_100844DA0()
{
  v0 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v0 - 8);
  v2 = &v21 - v1;
  v3 = VisitAssetMetadata.mapItemData.getter();
  if (v4 >> 60 == 15 || (v5 = v3, v6 = v4, sub_1000065A8(0, &qword_100AD5A90), v7 = static NSCoding<>.create(from:)(), sub_10003A5C8(v5, v6), !v7))
  {
    v12 = VisitAssetMetadata.latitude.getter();
    if ((v13 & 1) == 0)
    {
      v14 = v12;
      v15 = VisitAssetMetadata.longitude.getter();
      if ((v16 & 1) == 0)
      {
        v17 = v15;
        v18 = type metadata accessor for TaskPriority();
        (*(*(v18 - 8) + 56))(v2, 1, 1, v18);
        type metadata accessor for MainActor();
        v19 = static MainActor.shared.getter();
        v20 = swift_allocObject();
        v20[2] = v19;
        v20[3] = &protocol witness table for MainActor;
        v20[4] = v14;
        v20[5] = v17;
        sub_1003E9E90(0, 0, v2, &unk_10096DA48, v20);
      }
    }
  }

  else
  {
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
    type metadata accessor for MainActor();
    v9 = v7;
    v10 = static MainActor.shared.getter();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = &protocol witness table for MainActor;
    v11[4] = v9;
    sub_1003E9E90(0, 0, v2, &unk_10096DA58, v11);
  }
}

id sub_100844FFC(void *a1)
{
  v82 = a1;
  v2 = type metadata accessor for UIButton.Configuration.Indicator();
  v70 = *(v2 - 8);
  v71 = v2;
  __chkstk_darwin(v2);
  v69 = v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UIButton.Configuration();
  v73 = *(v4 - 8);
  v74 = v4;
  __chkstk_darwin(v4);
  v72 = v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v68 = v63 - v7;
  v76 = type metadata accessor for VisitAssetMetadata();
  v8 = *(v76 - 8);
  __chkstk_darwin(v76);
  v80 = v9;
  v10 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Locale();
  __chkstk_darwin(v11 - 8);
  v13 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v14 - 8);
  v16 = v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1000065A8(0, &qword_100AD4420);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17 = String.init(localized:table:bundle:locale:comment:)();
  v65 = v18;
  v66 = v17;
  v19 = String._bridgeToObjectiveC()();
  v64 = objc_opt_self();
  v20 = [v64 systemImageNamed:v19];

  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v81 = *(v8 + 16);
  v75 = v10;
  v22 = v76;
  v81(v10, a1, v76);
  v79 = *(v8 + 80);
  v23 = (v79 + 24) & ~v79;
  v24 = swift_allocObject();
  *(v24 + 16) = v21;
  v25 = *(v8 + 32);
  v77 = v8 + 32;
  v78 = v25;
  v25(v24 + v23, v10, v22);
  v65 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  String.LocalizationValue.init(stringLiteral:)();
  v83 = v13;
  static Locale.current.getter();
  v66 = String.init(localized:table:bundle:locale:comment:)();
  v63[1] = v26;
  v27 = String._bridgeToObjectiveC()();
  v28 = v64;
  v29 = [v64 systemImageNamed:v27];

  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = v75;
  v32 = v76;
  v81(v75, v82, v76);
  v33 = swift_allocObject();
  *(v33 + 16) = v30;
  v78(v33 + v23, v31, v32);
  v66 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v67 = v16;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v34 = String._bridgeToObjectiveC()();
  v35 = [v28 systemImageNamed:v34];

  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = v75;
  v81(v75, v82, v32);
  v38 = swift_allocObject();
  *(v38 + 16) = v36;
  v78(v38 + v23, v37, v32);
  v39 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_1000065A8(0, &unk_100AD4D00);
  sub_1000F24EC(&unk_100AD4780);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_100941D50;
  v41 = v65;
  *(v40 + 32) = v65;
  v84 = v41;
  v42._countAndFlagsBits = 0;
  v42._object = 0xE000000000000000;
  v85.value.super.isa = 0;
  v85.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v42, 0, v85, 1, 0xFFFFFFFFFFFFFFFFLL, v40, v61).super.super.isa;
  v44 = v68;
  static UIButton.Configuration.borderless()();
  v45 = String._bridgeToObjectiveC()();
  v46 = [v28 systemImageNamed:v45];

  UIButton.Configuration.image.setter();
  (*(v70 + 104))(v69, enum case for UIButton.Configuration.Indicator.none(_:), v71);
  v47 = v44;
  UIButton.Configuration.indicator.setter();
  v48 = [objc_opt_self() tintColor];
  UIButton.Configuration.baseForegroundColor.setter();
  sub_1000065A8(0, &qword_100ADFC10);
  v49 = v73;
  v50 = v74;
  (*(v73 + 16))(v72, v44, v74);
  v51 = UIButton.init(configuration:primaryAction:)();
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_100941D70;
  v53 = v66;
  *(v52 + 32) = v66;
  *(v52 + 40) = v39;
  *(v52 + 48) = isa;
  v82 = v53;
  v54 = v39;
  v55 = isa;
  v56._countAndFlagsBits = 0;
  v56._object = 0xE000000000000000;
  v86.value.super.isa = 0;
  v86.is_nil = 0;
  v57 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v56, 0, v86, 0, 0xFFFFFFFFFFFFFFFFLL, v52, v62).super.super.isa;
  [v51 setMenu:v57];
  [v51 setShowsMenuAsPrimaryAction:1];
  v58 = v51;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v59 = String._bridgeToObjectiveC()();

  [v58 setAccessibilityLabel:v59];

  (*(v49 + 8))(v47, v50);
  return v58;
}

id sub_1008459EC(uint64_t a1)
{
  sub_1000F24EC(&qword_100AF4438);
  UIViewController.ViewLoading.init()();
  *&v1[OBJC_IVAR____TtC7Journal25CanvasLocationsController_journalEntry] = 0;
  *&v1[OBJC_IVAR____TtC7Journal25CanvasLocationsController_pickerDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC7Journal25CanvasLocationsController_fullScreenDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC7Journal25CanvasLocationsController_mapSectionIsHidden] = 0;
  *&v1[OBJC_IVAR____TtC7Journal25CanvasLocationsController_locationPickerController] = 0;
  *&v1[OBJC_IVAR____TtC7Journal25CanvasLocationsController_currentSelectedAnnotation] = 0;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for CanvasLocationsController();
  return objc_msgSendSuper2(&v4, "initWithCollectionViewLayout:", a1);
}

void sub_100845AC0(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  if (v6 > 1u)
  {
    if (v6 == 2)
    {
      sub_10083BF90(a1);
    }
  }

  else if (!v6)
  {
    if (v5)
    {
      sub_10083BF90(a1);
      v2 = v4;
      v3 = v5;
    }

    else
    {
      sub_10083BE24();
      v2 = v4;
      v3 = 0;
    }

    sub_100845F84(v2, v3, 0);
  }
}

void sub_100845BB4()
{
  v0 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v3 = v11;
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  if (v13 != 255)
  {
    v4 = v11;
    if (v13 == 1)
    {
      v5 = type metadata accessor for TaskPriority();
      (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
      v6 = swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for MainActor();

      v7 = static MainActor.shared.getter();
      if (v4)
      {
        v8 = swift_allocObject();
        v8[2] = v7;
        v8[3] = &protocol witness table for MainActor;
        v8[4] = v6;

        if (v4 == 1)
        {
          v9 = &unk_10096D898;
        }

        else
        {
          v9 = &unk_10096D8B8;
        }
      }

      else
      {
        v8 = swift_allocObject();
        v8[2] = v7;
        v8[3] = &protocol witness table for MainActor;
        v8[4] = v6;

        v9 = &unk_10096D8A8;
      }

      sub_1003E9628(0, 0, v2, v9, v8);
    }

    else
    {
      sub_100845F84(v11, v12, v13);
    }
  }
}

uint64_t sub_100845E30()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  if (v3 == 1)
  {
    return 1;
  }

  if (v3 != 255)
  {
    sub_100845F84(v1, v2, v3);
  }

  return 0;
}

BOOL sub_100845EE0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  if (!v3)
  {
    sub_100845F84(v1, v2, 0);
  }

  return v3 != 255;
}

uint64_t sub_100845F84(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_100845F98(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_100845F98(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_100845FAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_10083FFF0(a1, v4, v5, v6);
}

uint64_t sub_100846060(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_10083F010(a1, v4, v5, v6);
}

uint64_t sub_100846114(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_10083C9B4(a1, v4, v5, v6);
}

uint64_t sub_1008461D0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10084625C()
{
  result = qword_100AF4470;
  if (!qword_100AF4470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4470);
  }

  return result;
}

unint64_t sub_1008462B0()
{
  result = qword_100AF4478;
  if (!qword_100AF4478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4478);
  }

  return result;
}

uint64_t sub_10084631C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000F24EC(&qword_100AF4498);
  sub_1000F24EC(&qword_100AF4490);
  sub_1000F24EC(&qword_100AF4488);

  return sub_100837D20(a1, a2, a3);
}

uint64_t sub_1008464E8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for VisitAssetMetadata() - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(a1, v5, v6);
}

uint64_t sub_100846570(uint64_t a1)
{
  v4 = *(type metadata accessor for VisitAssetMetadata() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032EC8;

  return sub_100838148(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100846668(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100032EC8;

  return sub_10035C654(a1, v4, v5);
}

uint64_t sub_100846728(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_10035C540(a1, v4, v5, v6);
}

uint64_t sub_100846824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = *(type metadata accessor for VisitAssetMetadata() - 8);
  v11 = *(v5 + 16);
  v12 = v5 + ((*(v10 + 80) + 24) & ~*(v10 + 80));

  return a5(a1, a2, a3, a4, v11, v12);
}

uint64_t sub_1008468D4()
{
  v1 = type metadata accessor for VisitAssetMetadata();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1008469A0(uint64_t a1)
{
  v4 = *(type metadata accessor for VisitAssetMetadata() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032ECC;

  return sub_100838148(a1, v6, v7, v8, v1 + v5);
}

unint64_t sub_100846ADC()
{
  result = qword_100AF44B0;
  if (!qword_100AF44B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF44B0);
  }

  return result;
}

id sub_100846B80()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  v2 = [objc_allocWithZone(LPLinkMetadata) init];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v3 = String._bridgeToObjectiveC()();

  [v2 setTitle:v3];

  sub_1001E3F70();
  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  [v2 setSummary:v5];

  return v2;
}

uint64_t sub_100846D08()
{
  v0 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v55 = *(v0 - 8);
  __chkstk_darwin(v0);
  v53 = &v42 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for Date.FormatStyle.DateStyle();
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v51 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = _s23YearAdaptiveFormatStyleVMa();
  __chkstk_darwin(v50);
  v49 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v4 - 8);
  v56 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v42 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v57 = &v42 - v14;
  v15 = sub_1000F24EC(&qword_100AD5B28);
  __chkstk_darwin(v15 - 8);
  v17 = &v42 - v16;
  v18 = type metadata accessor for WorkoutRouteAssetMetadata();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1006AACD4(v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    v22 = &qword_100AD5B28;
    v23 = v17;
LABEL_8:
    sub_100004F84(v23, v22);
    return 0;
  }

  v48 = v0;
  (*(v19 + 32))(v21, v17, v18);
  v24 = v18;
  WorkoutRouteAssetMetadata.startTime.getter();
  v25 = *(v10 + 48);
  if (v25(v8, 1, v9) == 1)
  {
    (*(v19 + 8))(v21, v24);
LABEL_7:
    v22 = &unk_100AD4790;
    v23 = v8;
    goto LABEL_8;
  }

  v46 = v12;
  v47 = v24;
  v26 = v57;
  v45 = *(v10 + 32);
  v45(v57, v8, v9);
  v8 = v56;
  WorkoutRouteAssetMetadata.endTime.getter();
  if (v25(v8, 1, v9) == 1)
  {
    (*(v10 + 8))(v26, v9);
    (*(v19 + 8))(v21, v47);
    goto LABEL_7;
  }

  v43 = v10;
  v28 = v46;
  v45(v46, v8, v9);
  v56 = v9;
  if (qword_100AD04E0 != -1)
  {
    swift_once();
  }

  v44 = *(&xmmword_100B305A0 + 1);
  v45 = xmmword_100B305A0;
  sub_1000F24EC(&unk_100AD5B10);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_100940050;
  v30 = v49;
  static Date.FormatStyle.TimeStyle.shortened.getter();
  static FormatStyleCapitalizationContext.standalone.getter();
  static Locale.autoupdatingCurrent.getter();
  static Calendar.autoupdatingCurrent.getter();
  static TimeZone.autoupdatingCurrent.getter();
  static Date.now.getter();
  sub_100167A30();
  Date.formatted<A>(_:)();
  sub_1000FBBCC(v30);
  v31 = v58;
  v32 = v59;
  *(v29 + 56) = &type metadata for String;
  v33 = sub_100031B20();
  *(v29 + 64) = v33;
  *(v29 + 32) = v31;
  *(v29 + 40) = v32;
  v34 = v51;
  static Date.FormatStyle.DateStyle.omitted.getter();
  v35 = v53;
  static Date.FormatStyle.TimeStyle.shortened.getter();
  v36 = Date.formatted(date:time:)();
  v38 = v37;
  (*(v55 + 8))(v35, v48);
  (*(v52 + 8))(v34, v54);
  *(v29 + 96) = &type metadata for String;
  *(v29 + 104) = v33;
  *(v29 + 72) = v36;
  *(v29 + 80) = v38;
  v39 = static String.localizedStringWithFormat(_:_:)();

  v40 = *(v43 + 8);
  v41 = v56;
  v40(v28, v56);
  v40(v57, v41);
  (*(v19 + 8))(v21, v47);
  return v39;
}

id sub_10084744C(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() traitCollectionWithUserInterfaceStyle:a1];

  return v1;
}

uint64_t sub_100847498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 128) = v19;
  *(v9 + 136) = v8;
  *(v9 + 112) = v18;
  *(v9 + 96) = a7;
  *(v9 + 104) = a8;
  *(v9 + 80) = a5;
  *(v9 + 88) = a6;
  *(v9 + 64) = a3;
  *(v9 + 72) = a4;
  v11 = type metadata accessor for URL.DirectoryHint();
  *(v9 + 144) = v11;
  *(v9 + 152) = *(v11 - 8);
  *(v9 + 160) = swift_task_alloc();
  sub_1000F24EC(&unk_100AD6DD0);
  *(v9 + 168) = swift_task_alloc();
  v12 = type metadata accessor for URL();
  *(v9 + 176) = v12;
  *(v9 + 184) = *(v12 - 8);
  *(v9 + 192) = swift_task_alloc();
  *(v9 + 200) = swift_task_alloc();
  *(v9 + 208) = swift_task_alloc();
  *(v9 + 216) = swift_task_alloc();
  *(v9 + 224) = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v13 = dispatch thunk of Actor.unownedExecutor.getter();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  *(v9 + 232) = v13;
  *(v9 + 240) = v15;

  return _swift_task_switch(sub_1008476A0, v13, v15);
}

uint64_t sub_1008476A0()
{
  v88 = v0;
  v1 = *(*(v0 + 64) + OBJC_IVAR____TtC7Journal13ExportOptions_format);
  if (v1 > 1 || *(*(v0 + 64) + OBJC_IVAR____TtC7Journal13ExportOptions_format))
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v2 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  v4 = *(v0 + 176);
  v3 = *(v0 + 184);
  v5 = *(v0 + 168);
  sub_10008E398(0, 1);
  if ((*(v3 + 48))(v5, 1, v4) == 1)
  {
    sub_100004F84(*(v0 + 168), &unk_100AD6DD0);
    if (v1 > 1)
    {
      goto LABEL_22;
    }

    goto LABEL_14;
  }

  (*(*(v0 + 184) + 32))(*(v0 + 224), *(v0 + 168), *(v0 + 176));
  v6 = URL.pathExtension.getter();
  v8 = sub_100690EDC(v6, v7);

  if ((v8 & 1) == 0)
  {
    (*(*(v0 + 184) + 8))(*(v0 + 224), *(v0 + 176));
LABEL_13:
    if (v1 > 1)
    {
      goto LABEL_22;
    }

    goto LABEL_14;
  }

  v9 = *(v0 + 208);
  v10 = *(v0 + 200);
  v11 = *(v0 + 184);
  v86 = *(v0 + 176);
  v12 = *(v0 + 152);
  v13 = *(v0 + 160);
  v14 = *(v0 + 144);
  sub_10069763C(v10);
  *(v0 + 32) = UUID.uuidString.getter();
  *(v0 + 40) = v15;
  (*(v12 + 104))(v13, enum case for URL.DirectoryHint.inferFromPath(_:), v14);
  sub_1000777B4();
  URL.appending<A>(path:directoryHint:)();
  (*(v12 + 8))(v13, v14);

  v16 = *(v11 + 8);
  v16(v10, v86);
  URL.pathExtension.getter();
  URL.appendingPathExtension(_:)();

  v16(v9, v86);
  v17 = URL.lastPathComponent.getter();
  v19 = v18;
  v20 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v21);
  v23 = v22;
  URL._bridgeToObjectiveC()(v24);
  v26 = v25;
  *(v0 + 56) = 0;
  v27 = [v20 copyItemAtURL:v23 toURL:v25 error:v0 + 56];

  v28 = *(v0 + 56);
  if (!v27)
  {
    v39 = v28;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100AD0B70 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_10000617C(v40, qword_100AF44B8);
    swift_errorRetain();
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      swift_errorRetain();
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 4) = v45;
      *v44 = v45;
      _os_log_impl(&_mh_execute_header, v41, v42, "Asset.createImageHTML error %@", v43, 0xCu);
      sub_100004F84(v44, &unk_100AD4BB0);
    }

    v47 = *(v0 + 216);
    v46 = *(v0 + 224);
    v48 = *(v0 + 176);

    v16(v47, v48);
    v16(v46, v48);
    if (v1 > 1)
    {
      goto LABEL_22;
    }

LABEL_14:
    if (!v1)
    {

      v38 = 7;
LABEL_25:
      *(v0 + 328) = v38;
      *(v0 + 248) = [objc_opt_self() traitCollectionWithUserInterfaceStyle:1];
      if (qword_100ACFB90 != -1)
      {
        swift_once();
      }

      *(v0 + 256) = qword_100B2F628;
      *(v0 + 264) = type metadata accessor for MainActor();
      *(v0 + 272) = static MainActor.shared.getter();
      v50 = dispatch thunk of Actor.unownedExecutor.getter();
      *(v0 + 280) = v50;
      *(v0 + 288) = v51;

      return _swift_task_switch(sub_100848140, v50, v51);
    }

LABEL_22:
    v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v49)
    {
      v38 = 7;
    }

    else
    {
      v38 = 3;
    }

    goto LABEL_25;
  }

  v85 = v16;
  v29 = *(v0 + 80);
  v30 = *(v0 + 64);
  v31 = v28;
  _StringGuts.grow(_:)(41);

  strcpy(&v87, "<img src=../");
  HIWORD(v87) = -4864;
  String.append(_:)(*(v30 + OBJC_IVAR____TtC7Journal13ExportOptions_resourcesDirectoryPath));
  v32._countAndFlagsBits = 47;
  v32._object = 0xE100000000000000;
  String.append(_:)(v32);
  v33._countAndFlagsBits = v17;
  v33._object = v19;
  String.append(_:)(v33);

  v34._countAndFlagsBits = 0xD000000000000017;
  v34._object = 0x80000001008F7BC0;
  String.append(_:)(v34);
  v83 = v87;
  if (v29)
  {
    v35 = *(v0 + 72);
    strcpy(&v87, "style=");
    *(&v87 + 1) = 0xE700000000000000;
    String.append(_:)(v35);
    v36._countAndFlagsBits = 34;
    v36._object = 0xE100000000000000;
    String.append(_:)(v36);
    v37 = 0xE700000000000000;
    v79 = v87;
  }

  else
  {
    v79 = 0;
    v37 = 0xE000000000000000;
  }

  v84 = *(v0 + 224);
  v81 = *(v0 + 176);
  v82 = *(v0 + 216);
  v52 = *(v0 + 128);
  v53 = *(v0 + 112);
  v80 = *(v0 + 120);
  v55 = *(v0 + 96);
  v54 = *(v0 + 104);
  v56 = *(v0 + 88);
  *&v87 = 0;
  *(&v87 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(97);
  v57._countAndFlagsBits = 0x7669643C20202020;
  v57._object = 0xED0000223D646920;
  String.append(_:)(v57);
  v58._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v58);

  v59._countAndFlagsBits = 0xD00000000000001CLL;
  v59._object = 0x80000001008F7BE0;
  String.append(_:)(v59);
  v60._countAndFlagsBits = AssetType.rawValue.getter();
  String.append(_:)(v60);

  v61._countAndFlagsBits = 32;
  v61._object = 0xE100000000000000;
  String.append(_:)(v61);
  if (v55)
  {
    v62 = v56;
  }

  else
  {
    v62 = 0;
  }

  if (v55)
  {
    v63 = v55;
  }

  else
  {
    v63 = 0xE000000000000000;
  }

  v64._countAndFlagsBits = v62;
  v64._object = v63;
  String.append(_:)(v64);

  v65._countAndFlagsBits = 8226;
  v65._object = 0xE200000000000000;
  String.append(_:)(v65);
  v66._countAndFlagsBits = v79;
  v66._object = v37;
  String.append(_:)(v66);

  v67._countAndFlagsBits = 0x2020202020200A3ELL;
  v67._object = 0xEA00000000002020;
  String.append(_:)(v67);
  if (v53)
  {
    v68 = v54;
  }

  else
  {
    v68 = 0;
  }

  if (v53)
  {
    v69 = v53;
  }

  else
  {
    v69 = 0xE000000000000000;
  }

  v70._countAndFlagsBits = v68;
  v70._object = v69;
  String.append(_:)(v70);

  v71._countAndFlagsBits = 0x202020202020200ALL;
  v71._object = 0xE900000000000020;
  String.append(_:)(v71);
  String.append(_:)(v83);

  v72._countAndFlagsBits = 0x202020202020200ALL;
  v72._object = 0xE900000000000020;
  String.append(_:)(v72);
  if (v52)
  {
    v73 = v80;
  }

  else
  {
    v73 = 0;
  }

  if (v52)
  {
    v74 = v52;
  }

  else
  {
    v74 = 0xE000000000000000;
  }

  v75._countAndFlagsBits = v73;
  v75._object = v74;
  String.append(_:)(v75);

  v76._countAndFlagsBits = 0x642F3C202020200ALL;
  v76._object = 0xEB000000003E7669;
  String.append(_:)(v76);
  v85(v82, v81);
  v85(v84, v81);

  v77 = *(v0 + 8);

  return v77(v87, *(&v87 + 1));
}

uint64_t sub_100848140()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 136);
  v8 = *(v0 + 248);
  v3 = static MainActor.shared.getter();
  *(v0 + 296) = v3;
  v4 = swift_task_alloc();
  *(v0 + 304) = v4;
  v4[1].i64[0] = v2;
  v4[1].i8[8] = v1;
  v4[2].i64[0] = 0;
  v4[2].i8[8] = 0;
  v4[3] = vextq_s8(v8, v8, 8uLL);
  v5 = swift_task_alloc();
  *(v0 + 312) = v5;
  v6 = sub_1000F24EC(&qword_100AE4D18);
  *v5 = v0;
  v5[1] = sub_1008482B4;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 48, v3, &protocol witness table for MainActor, 0xD00000000000003BLL, 0x80000001009004A0, sub_1006877A4, v4, v6);
}

uint64_t sub_1008482B4()
{
  v1 = *v0;

  v2 = *(v1 + 288);
  v3 = *(v1 + 280);

  return _swift_task_switch(sub_100848448, v3, v2);
}

uint64_t sub_100848448()
{

  *(v0 + 320) = *(v0 + 48);
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);

  return _swift_task_switch(sub_1008484EC, v1, v2);
}

uint64_t sub_1008484EC()
{
  v118 = v0;
  if (!*(v0 + 320))
  {
    v18 = *(v0 + 208);
    v19 = *(v0 + 176);
    v20 = *(v0 + 184);
    v22 = *(v0 + 88);
    v21 = *(v0 + 96);
    v111 = *(v0 + 80);
    v23 = *(v0 + 64);
    v24 = sub_10025AFE8(v18);
    v26 = v25;
    (*(v20 + 8))(v18, v19);
    if (v21)
    {
      v27 = v22;
    }

    else
    {
      v27 = 0x6361626C6C616620;
    }

    v28 = 0xEF74657373615F6BLL;
    if (v21)
    {
      v28 = v21;
    }

    v115._countAndFlagsBits = v27;
    v115._object = v28;

    _StringGuts.grow(_:)(41);

    strcpy(&v117, "<img src=../");
    HIWORD(v117) = -4864;
    String.append(_:)(*(v23 + OBJC_IVAR____TtC7Journal13ExportOptions_resourcesDirectoryPath));
    v29._countAndFlagsBits = 47;
    v29._object = 0xE100000000000000;
    String.append(_:)(v29);
    v30._countAndFlagsBits = v24;
    v30._object = v26;
    String.append(_:)(v30);

    v31._object = 0x80000001008F7BC0;
    v31._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v31);
    v32 = *(&v117 + 1);
    v113 = v117;
    if (v111)
    {
      v33 = *(v0 + 72);
      strcpy(&v117, "style=");
      *(&v117 + 1) = 0xE700000000000000;
      String.append(_:)(v33);
      v34._countAndFlagsBits = 34;
      v34._object = 0xE100000000000000;
      String.append(_:)(v34);
      v36 = v117;
      v35 = 0xE700000000000000;
    }

    else
    {
      v36 = 0;
      v35 = 0xE000000000000000;
    }

    v59 = *(v0 + 128);
    v60 = *(v0 + 112);
    v112 = *(v0 + 120);
    v61 = *(v0 + 104);
    *&v117 = 0;
    *(&v117 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(97);
    v62._countAndFlagsBits = 0x7669643C20202020;
    v62._object = 0xED0000223D646920;
    String.append(_:)(v62);
    v63._countAndFlagsBits = UUID.uuidString.getter();
    String.append(_:)(v63);

    v64._countAndFlagsBits = 0xD00000000000001CLL;
    v64._object = 0x80000001008F7BE0;
    String.append(_:)(v64);
    v65._countAndFlagsBits = AssetType.rawValue.getter();
    String.append(_:)(v65);

    v66._countAndFlagsBits = 32;
    v66._object = 0xE100000000000000;
    String.append(_:)(v66);
    String.append(_:)(v115);

    v67._countAndFlagsBits = 8226;
    v67._object = 0xE200000000000000;
    String.append(_:)(v67);
    v68._countAndFlagsBits = v36;
    v68._object = v35;
    String.append(_:)(v68);

    v69._countAndFlagsBits = 0x2020202020200A3ELL;
    v69._object = 0xEA00000000002020;
    String.append(_:)(v69);
    if (v60)
    {
      v70 = v61;
    }

    else
    {
      v70 = 0;
    }

    if (v60)
    {
      v71 = v60;
    }

    else
    {
      v71 = 0xE000000000000000;
    }

    v72._countAndFlagsBits = v70;
    v72._object = v71;
    String.append(_:)(v72);

    v73._countAndFlagsBits = 0x202020202020200ALL;
    v73._object = 0xE900000000000020;
    String.append(_:)(v73);
    v74._countAndFlagsBits = v113;
    v74._object = v32;
    String.append(_:)(v74);

    v75._countAndFlagsBits = 0x202020202020200ALL;
    v75._object = 0xE900000000000020;
    String.append(_:)(v75);
    if (v59)
    {
      v76 = v112;
    }

    else
    {
      v76 = 0;
    }

    if (v59)
    {
      v77 = v59;
    }

    else
    {
      v77 = 0xE000000000000000;
    }

    v78._countAndFlagsBits = v76;
    v78._object = v77;
    String.append(_:)(v78);

    v79._countAndFlagsBits = 0x642F3C202020200ALL;
    v79._object = 0xEB000000003E7669;
    String.append(_:)(v79);
    v80 = *(&v117 + 1);
    v81 = v117;
    goto LABEL_54;
  }

  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 184);
  v4 = *(v0 + 176);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);
  v116 = *(v0 + 320);
  v7 = *(v0 + 144);
  sub_10069763C(v2);
  *(v0 + 16) = UUID.uuidString.getter();
  *(v0 + 24) = v8;
  (*(v5 + 104))(v6, enum case for URL.DirectoryHint.inferFromPath(_:), v7);
  sub_1000777B4();
  URL.appending<A>(path:directoryHint:)();
  (*(v5 + 8))(v6, v7);

  v9 = *(v3 + 8);
  v9(v2, v4);
  URL.appendingPathExtension(_:)();
  v9(v1, v4);
  v10 = URL.lastPathComponent.getter();
  v12 = v11;
  v13 = UIImageHEICRepresentation(v116);
  if (v13)
  {
    v14 = v13;
    v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    Data.write(to:options:)();
    v51 = *(v0 + 80);
    v52 = *(v0 + 64);
    _StringGuts.grow(_:)(41);

    strcpy(&v117, "<img src=../");
    HIWORD(v117) = -4864;
    String.append(_:)(*(v52 + OBJC_IVAR____TtC7Journal13ExportOptions_resourcesDirectoryPath));
    v53._countAndFlagsBits = 47;
    v53._object = 0xE100000000000000;
    String.append(_:)(v53);
    v54._countAndFlagsBits = v10;
    v54._object = v12;
    String.append(_:)(v54);

    v55._object = 0x80000001008F7BC0;
    v55._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v55);
    v109 = v117;
    if (v51)
    {
      v56 = *(v0 + 72);
      strcpy(&v117, "style=");
      *(&v117 + 1) = 0xE700000000000000;
      String.append(_:)(v56);
      v57._countAndFlagsBits = 34;
      v57._object = 0xE100000000000000;
      String.append(_:)(v57);
      v58 = 0xE700000000000000;
      v106._countAndFlagsBits = v117;
    }

    else
    {
      v106._countAndFlagsBits = 0;
      v58 = 0xE000000000000000;
    }

    v106._object = v58;
    v114 = *(v0 + 192);
    v110 = *(v0 + 176);
    v82 = *(v0 + 112);
    v107 = *(v0 + 128);
    v108 = *(v0 + 120);
    v83 = *(v0 + 96);
    v104 = *(v0 + 88);
    v105 = *(v0 + 104);
    *&v117 = 0;
    *(&v117 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(97);
    v84._countAndFlagsBits = 0x7669643C20202020;
    v84._object = 0xED0000223D646920;
    String.append(_:)(v84);
    v85._countAndFlagsBits = UUID.uuidString.getter();
    String.append(_:)(v85);

    v86._countAndFlagsBits = 0xD00000000000001CLL;
    v86._object = 0x80000001008F7BE0;
    String.append(_:)(v86);
    v87._countAndFlagsBits = AssetType.rawValue.getter();
    String.append(_:)(v87);

    v88._countAndFlagsBits = 32;
    v88._object = 0xE100000000000000;
    String.append(_:)(v88);
    if (v83)
    {
      v89 = v104;
    }

    else
    {
      v89 = 0;
    }

    if (v83)
    {
      v90 = v83;
    }

    else
    {
      v90 = 0xE000000000000000;
    }

    v91._countAndFlagsBits = v89;
    v91._object = v90;
    String.append(_:)(v91);

    v92._countAndFlagsBits = 8226;
    v92._object = 0xE200000000000000;
    String.append(_:)(v92);
    String.append(_:)(v106);

    v93._countAndFlagsBits = 0x2020202020200A3ELL;
    v93._object = 0xEA00000000002020;
    String.append(_:)(v93);
    if (v82)
    {
      v94 = v105;
    }

    else
    {
      v94 = 0;
    }

    if (v82)
    {
      v95 = v82;
    }

    else
    {
      v95 = 0xE000000000000000;
    }

    v96._countAndFlagsBits = v94;
    v96._object = v95;
    String.append(_:)(v96);

    v97._countAndFlagsBits = 0x202020202020200ALL;
    v97._object = 0xE900000000000020;
    String.append(_:)(v97);
    String.append(_:)(v109);

    v98._countAndFlagsBits = 0x202020202020200ALL;
    v98._object = 0xE900000000000020;
    String.append(_:)(v98);
    if (v107)
    {
      v99 = v108;
    }

    else
    {
      v99 = 0;
    }

    if (v107)
    {
      v100 = v107;
    }

    else
    {
      v100 = 0xE000000000000000;
    }

    v101._countAndFlagsBits = v99;
    v101._object = v100;
    String.append(_:)(v101);

    v102._countAndFlagsBits = 0x642F3C202020200ALL;
    v102._object = 0xEB000000003E7669;
    String.append(_:)(v102);
    sub_1000340DC(v15, v17);

    v80 = *(&v117 + 1);
    v81 = v117;
    v9(v114, v110);
LABEL_54:

    v103 = *(v0 + 8);

    return v103(v81, v80);
  }

  if (qword_100AD0B70 != -1)
  {
    swift_once();
  }

  v37 = *(v0 + 136);
  v38 = type metadata accessor for Logger();
  sub_10000617C(v38, qword_100AF44B8);
  v39 = v37;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = *(v0 + 136);
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v43 = 138412290;
    *(v43 + 4) = v42;
    *v44 = v42;
    v45 = v42;
    _os_log_impl(&_mh_execute_header, v40, v41, "getHTMLAssetGrid can't get image data for %@", v43, 0xCu);
    sub_100004F84(v44, &unk_100AD4BB0);
  }

  v46 = *(v0 + 192);
  v47 = *(v0 + 176);

  sub_1004D12DC();
  swift_allocError();
  *v48 = 3;
  swift_willThrow();

  v9(v46, v47);

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_100848FAC()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AF44B8);
  sub_10000617C(v0, qword_100AF44B8);
  return Logger.init(subsystem:category:)();
}

void sub_100849020()
{
  v1 = v0;
  v2 = *v0;
  if (*v0)
  {
    Hasher._combine(_:)(1u);
    v3 = v2;
    NSObject.hash(into:)();

    if (v1[2])
    {
      goto LABEL_3;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v0[2])
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      if (v1[4])
      {
        goto LABEL_4;
      }

LABEL_10:
      Hasher._combine(_:)(0);
      if (v1[6])
      {
        goto LABEL_5;
      }

LABEL_11:
      Hasher._combine(_:)(0);
      return;
    }
  }

  Hasher._combine(_:)(0);
  if (!v1[4])
  {
    goto LABEL_10;
  }

LABEL_4:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!v1[6])
  {
    goto LABEL_11;
  }

LABEL_5:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

id sub_10084915C()
{
  v1 = *(v0 + 16);
  v6[0] = *v0;
  v6[1] = v1;
  v6[2] = *(v0 + 32);
  v7 = *(v0 + 48);
  v2 = objc_allocWithZone(type metadata accessor for CustomJournalPreviewCellContentView());
  sub_10084AAB4(v6, v5);
  v3 = sub_100849534(v6);
  sub_10084AAEC();
  return v3;
}

uint64_t sub_1008491C8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 6);
  v3 = *v1;
  v4 = v1[1];
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v1[2];
  *(a1 + 48) = v2;
  v5 = v3;

  v6 = v5;
}

Swift::Int sub_100849234()
{
  Hasher.init(_seed:)();
  sub_100849020();
  return Hasher._finalize()();
}

Swift::Int sub_100849278()
{
  Hasher.init(_seed:)();
  sub_100849020();
  return Hasher._finalize()();
}

BOOL sub_1008492B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_10084AB40(v5, v7);
}

void (*sub_100849310(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x128uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 288) = v1;
  v5 = (v1 + OBJC_IVAR____TtC7Journal35CustomJournalPreviewCellContentView_appliedConfiguration);
  v6 = *(v1 + OBJC_IVAR____TtC7Journal35CustomJournalPreviewCellContentView_appliedConfiguration + 32);
  v7 = *(v5 + 5);
  v8 = *(v5 + 6);
  v9 = sub_1005A5B08();
  v10 = swift_allocObject();
  v11 = *v5;
  v12 = v5[1];
  v4[21] = v10;
  v4 += 21;
  v4[3] = &type metadata for CustomJournalPreviewContentConfiguration;
  v4[4] = v9;
  *(v10 + 16) = v11;
  *(v10 + 32) = v12;
  *(v10 + 48) = v6;
  *(v10 + 56) = v7;
  *(v10 + 64) = v8;
  v13 = v11;

  v14 = v13;

  return sub_100849408;
}

void sub_100849408(void **a1, char a2)
{
  v3 = *a1;
  sub_100086C04(*a1 + 168, *a1 + 208);
  if (a2)
  {
    sub_100086C04((v3 + 13), v3 + 248);
    sub_1000F24EC(&qword_100AD3268);
    if (swift_dynamicCast())
    {
      v4 = v3[8];
      *v3 = v3[7];
      v3[1] = v4;
      v3[2] = v3[9];
      *(v3 + 6) = *(v3 + 20);
      sub_100849F2C(v3);
      sub_10084AA84(v3);
    }

    sub_10000BA7C((v3 + 13));
  }

  else
  {
    sub_1000F24EC(&qword_100AD3268);
    if (swift_dynamicCast())
    {
      v5 = v3[8];
      *(v3 + 56) = v3[7];
      *(v3 + 72) = v5;
      *(v3 + 88) = v3[9];
      *(v3 + 13) = *(v3 + 20);
      sub_100849F2C(v3 + 56);
      sub_10084AA84(v3 + 56);
    }
  }

  sub_10000BA7C(v3 + 168);

  free(v3);
}

id sub_100849534(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7Journal35CustomJournalPreviewCellContentView_selectedColorView;
  v4 = [objc_allocWithZone(UIView) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v1[v3] = v4;
  v5 = OBJC_IVAR____TtC7Journal35CustomJournalPreviewCellContentView_selectedSymbolImageView;
  v6 = [objc_allocWithZone(UIImageView) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setContentMode:1];

  *&v1[v5] = v6;
  v7 = OBJC_IVAR____TtC7Journal35CustomJournalPreviewCellContentView_selectedEmojiLabel;
  v8 = [objc_allocWithZone(UILabel) init];
  [v8 setTextAlignment:1];
  [v8 setAdjustsFontSizeToFitWidth:1];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v1[v7] = v8;
  v9 = &v1[OBJC_IVAR____TtC7Journal35CustomJournalPreviewCellContentView_appliedConfiguration];
  v10 = *(a1 + 16);
  *v9 = *a1;
  *(v9 + 1) = v10;
  *(v9 + 2) = *(a1 + 32);
  *(v9 + 6) = *(a1 + 48);
  sub_10084AAB4(a1, v14);
  v13.receiver = v1;
  v13.super_class = type metadata accessor for CustomJournalPreviewCellContentView();
  v11 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1008496F4();
  sub_100849F2C(a1);
  sub_10084AA84(a1);

  return v11;
}

void sub_1008496F4()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v60[2] = v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for String.LocalizationValue();
  *&v4 = __chkstk_darwin(v3 - 8).n128_u64[0];
  v60[1] = v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC7Journal35CustomJournalPreviewCellContentView_selectedColorView;
  [v0 addSubview:{*&v0[OBJC_IVAR____TtC7Journal35CustomJournalPreviewCellContentView_selectedColorView], v4}];
  v7 = OBJC_IVAR____TtC7Journal35CustomJournalPreviewCellContentView_selectedSymbolImageView;
  [v0 addSubview:*&v0[OBJC_IVAR____TtC7Journal35CustomJournalPreviewCellContentView_selectedSymbolImageView]];
  v8 = OBJC_IVAR____TtC7Journal35CustomJournalPreviewCellContentView_selectedEmojiLabel;
  [v0 addSubview:*&v0[OBJC_IVAR____TtC7Journal35CustomJournalPreviewCellContentView_selectedEmojiLabel]];
  v60[0] = objc_opt_self();
  sub_1000F24EC(&unk_100AD4780);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10096DB40;
  v10 = [*&v0[v6] leadingAnchor];
  v11 = [v0 leadingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v9 + 32) = v12;
  v13 = [*&v0[v6] trailingAnchor];
  v14 = [v0 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v9 + 40) = v15;
  v16 = [*&v0[v6] topAnchor];
  v17 = [v0 topAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  *(v9 + 48) = v18;
  v19 = [*&v0[v6] bottomAnchor];
  v20 = [v0 bottomAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  *(v9 + 56) = v21;
  v22 = [*&v0[v7] leadingAnchor];
  v23 = [v0 leadingAnchor];
  v24 = [v22 constraintGreaterThanOrEqualToAnchor:v23];

  *(v9 + 64) = v24;
  v25 = [*&v0[v7] topAnchor];
  v26 = [v0 topAnchor];
  v27 = [v25 constraintGreaterThanOrEqualToAnchor:v26];

  *(v9 + 72) = v27;
  v28 = [*&v0[v7] centerXAnchor];
  v29 = [v0 centerXAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];

  *(v9 + 80) = v30;
  v31 = [*&v0[v7] centerYAnchor];
  v32 = [v0 centerYAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];

  *(v9 + 88) = v33;
  v34 = [*&v0[v7] heightAnchor];
  v35 = [v0 heightAnchor];
  v36 = [v34 constraintEqualToAnchor:v35 multiplier:0.666666667];

  *(v9 + 96) = v36;
  v37 = [*&v0[v7] widthAnchor];
  v38 = [v0 widthAnchor];
  v39 = [v37 constraintEqualToAnchor:v38 multiplier:0.666666667];

  *(v9 + 104) = v39;
  v40 = [*&v0[v8] leadingAnchor];
  v41 = [v0 leadingAnchor];
  v42 = [v40 constraintGreaterThanOrEqualToAnchor:v41];

  *(v9 + 112) = v42;
  v43 = [*&v0[v8] topAnchor];
  v44 = [v0 topAnchor];
  v45 = [v43 constraintGreaterThanOrEqualToAnchor:v44];

  *(v9 + 120) = v45;
  v46 = [*&v0[v8] centerXAnchor];
  v47 = [v0 centerXAnchor];
  v48 = [v46 constraintEqualToAnchor:v47];

  *(v9 + 128) = v48;
  v49 = [*&v0[v8] centerYAnchor];
  v50 = [v0 centerYAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];

  *(v9 + 136) = v51;
  v52 = [*&v0[v8] heightAnchor];
  v53 = [v0 heightAnchor];
  v54 = [v52 constraintEqualToAnchor:v53 multiplier:0.666666667];

  *(v9 + 144) = v54;
  v55 = [*&v0[v8] widthAnchor];
  v56 = [v0 widthAnchor];
  v57 = [v55 constraintEqualToAnchor:v56 multiplier:0.666666667];

  *(v9 + 152) = v57;
  sub_1000065A8(0, &qword_100AD8000);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v60[0] activateConstraints:isa];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v59 = String._bridgeToObjectiveC()();

  [v0 setAccessibilityLabel:v59];
}

uint64_t sub_100849F2C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = *&v1[OBJC_IVAR____TtC7Journal35CustomJournalPreviewCellContentView_selectedColorView];
  v7 = *a1;
  if (*a1)
  {
    v8 = v6;
    v9 = [v7 colorWithAlphaComponent:0.15];
  }

  else
  {
    v10 = v6;
    v9 = 0;
  }

  [v6 setBackgroundColor:v9];

  if (v7)
  {
    if (*(a1 + 48))
    {
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
    }

    else
    {
      v14 = [v7 accessibilityName];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v15;
    }

    v13 = sub_10009BCC8(0, 1, 1, _swiftEmptyArrayStorage);
    v17 = *(v13 + 2);
    v16 = *(v13 + 3);
    if (v17 >= v16 >> 1)
    {
      v13 = sub_10009BCC8((v16 > 1), v17 + 1, 1, v13);
    }

    *(v13 + 2) = v17 + 1;
    v18 = &v13[16 * v17];
    *(v18 + 4) = v11;
    *(v18 + 5) = v12;
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v19 = *(a1 + 16);
  v53 = a1;
  if (v19)
  {
    v52 = *(a1 + 8);
    v20 = OBJC_IVAR____TtC7Journal35CustomJournalPreviewCellContentView_selectedSymbolImageView;
    v21 = *&v2[OBJC_IVAR____TtC7Journal35CustomJournalPreviewCellContentView_selectedSymbolImageView];

    [v21 setHidden:0];
    [*&v2[OBJC_IVAR____TtC7Journal35CustomJournalPreviewCellContentView_selectedEmojiLabel] setHidden:1];
    v22 = *&v2[v20];
    v23 = v2;
    v24 = String._bridgeToObjectiveC()();
    v25 = [objc_opt_self() _systemImageNamed:v24];

    v2 = v23;
    [v22 setImage:v25];

    [*&v23[v20] setTintColor:v7];
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    sub_1000F24EC(&unk_100AD5B10);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_100940080;
    *(v26 + 56) = &type metadata for String;
    *(v26 + 64) = sub_100031B20();
    *(v26 + 32) = v52;
    *(v26 + 40) = v19;
    v27 = static String.localizedStringWithFormat(_:_:)();
    v29 = v28;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_10009BCC8(0, *(v13 + 2) + 1, 1, v13);
    }

    v31 = *(v13 + 2);
    v30 = *(v13 + 3);
    v32 = v31 + 1;
    if (v31 < v30 >> 1)
    {
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  v39 = *(a1 + 32);
  if (!v39)
  {
    goto LABEL_17;
  }

  v40 = *(a1 + 24);
  v41 = *&v2[OBJC_IVAR____TtC7Journal35CustomJournalPreviewCellContentView_selectedSymbolImageView];

  [v41 setHidden:1];
  v42 = OBJC_IVAR____TtC7Journal35CustomJournalPreviewCellContentView_selectedEmojiLabel;
  [*&v2[OBJC_IVAR____TtC7Journal35CustomJournalPreviewCellContentView_selectedEmojiLabel] setHidden:0];
  v43 = *&v2[v42];
  v44 = v40;
  v45 = String._bridgeToObjectiveC()();
  [v43 setText:v45];

  v46 = *&v2[v42];
  v47 = objc_opt_self();
  v48 = v46;
  v49 = [v47 systemFontOfSize:60.0];
  [v48 setFont:v49];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  sub_1000F24EC(&unk_100AD5B10);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_100940080;
  *(v50 + 56) = &type metadata for String;
  *(v50 + 64) = sub_100031B20();
  *(v50 + 32) = v44;
  *(v50 + 40) = v39;
  v27 = static String.localizedStringWithFormat(_:_:)();
  v29 = v51;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_10009BCC8(0, *(v13 + 2) + 1, 1, v13);
  }

  v31 = *(v13 + 2);
  v30 = *(v13 + 3);
  v32 = v31 + 1;
  if (v31 >= v30 >> 1)
  {
LABEL_22:
    v13 = sub_10009BCC8((v30 > 1), v32, 1, v13);
  }

LABEL_16:
  *(v13 + 2) = v32;
  v33 = &v13[16 * v31];
  *(v33 + 4) = v27;
  *(v33 + 5) = v29;
LABEL_17:
  v54 = v13;
  sub_1000F24EC(&qword_100AD60A0);
  sub_10009BDD4();
  BidirectionalCollection<>.joined(separator:)();

  v34 = String._bridgeToObjectiveC()();

  [v2 setAccessibilityValue:v34];

  v35 = &v2[OBJC_IVAR____TtC7Journal35CustomJournalPreviewCellContentView_appliedConfiguration];
  v36 = *&v2[OBJC_IVAR____TtC7Journal35CustomJournalPreviewCellContentView_appliedConfiguration];
  v37 = *(v53 + 16);
  *v35 = *v53;
  *(v35 + 1) = v37;
  *(v35 + 2) = *(v53 + 32);
  *(v35 + 6) = *(v53 + 48);
  sub_10084AAB4(v53, &v54);
}

id sub_10084A6B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CustomJournalPreviewCellContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10084A7AC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10084A808(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_10084A87C()
{
  result = qword_100AF4518;
  if (!qword_100AF4518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4518);
  }

  return result;
}

uint64_t sub_10084A8D0@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC7Journal35CustomJournalPreviewCellContentView_appliedConfiguration);
  v4 = *(v1 + OBJC_IVAR____TtC7Journal35CustomJournalPreviewCellContentView_appliedConfiguration + 32);
  v5 = *(v3 + 5);
  v6 = *(v3 + 6);
  a1[3] = &type metadata for CustomJournalPreviewContentConfiguration;
  a1[4] = sub_1005A5B08();
  v7 = swift_allocObject();
  *a1 = v7;
  v8 = *v3;
  v9 = v3[1];
  *(v7 + 16) = *v3;
  *(v7 + 32) = v9;
  *(v7 + 48) = v4;
  *(v7 + 56) = v5;
  *(v7 + 64) = v6;
  v10 = v8;

  v11 = v10;
}

uint64_t sub_10084A980(uint64_t a1)
{
  sub_100086C04(a1, v7);
  sub_1000F24EC(&qword_100AD3268);
  if (swift_dynamicCast())
  {
    v8[0] = v3;
    v8[1] = v4;
    v8[2] = v5;
    v9 = v6;
    sub_100849F2C(v8);
    sub_10084AA84(v8);
  }

  return sub_10000BA7C(a1);
}

void (*sub_10084AA14(uint64_t **a1))(void *a1)
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
  v2[4] = sub_100849310(v2);
  return sub_100113D90;
}

unint64_t sub_10084AAEC()
{
  result = qword_100AF4520;
  if (!qword_100AF4520)
  {
    type metadata accessor for CustomJournalPreviewCellContentView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4520);
  }

  return result;
}

BOOL sub_10084AB40(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (!v5)
    {
      return 0;
    }

    sub_1000065A8(0, &qword_100AD4C70);
    v6 = v5;
    v7 = v4;
    v8 = static NSObject.== infix(_:_:)();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v9 = *(a1 + 16);
  v10 = *(a2 + 16);
  if (v9)
  {
    if (!v10 || (*(a1 + 8) != *(a2 + 8) || v9 != v10) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v11 = *(a1 + 32);
  v12 = *(a2 + 32);
  if (v11)
  {
    if (!v12 || (*(a1 + 24) != *(a2 + 24) || v11 != v12) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  v13 = *(a1 + 48);
  v14 = *(a2 + 48);
  if (v13)
  {
    return v14 && (*(a1 + 40) == *(a2 + 40) && v13 == v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
  }

  return !v14;
}

void sub_10084AC8C()
{
  v1 = OBJC_IVAR____TtC7Journal35CustomJournalPreviewCellContentView_selectedColorView;
  v2 = [objc_allocWithZone(UIView) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC7Journal35CustomJournalPreviewCellContentView_selectedSymbolImageView;
  v4 = [objc_allocWithZone(UIImageView) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setContentMode:1];

  *(v0 + v3) = v4;
  v5 = OBJC_IVAR____TtC7Journal35CustomJournalPreviewCellContentView_selectedEmojiLabel;
  v6 = [objc_allocWithZone(UILabel) init];
  [v6 setTextAlignment:1];
  [v6 setAdjustsFontSizeToFitWidth:1];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v5) = v6;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10084AE1C()
{
  type metadata accessor for SidebarInsightsBrickViewModel(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for DynamicTypeSize();
    if (v1 <= 0x3F)
    {
      type metadata accessor for SidebarBrickLayoutMetrics();
      if (v2 <= 0x3F)
      {
        sub_1008512C0(319, &qword_100AD9938, type metadata accessor for InsightsDataManager);
        if (v3 <= 0x3F)
        {
          sub_10084AF1C();
          if (v4 <= 0x3F)
          {
            sub_10032209C();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_10084AF1C()
{
  if (!qword_100AF4590)
  {
    sub_1000F2A18(&qword_100AF3268);
    v0 = type metadata accessor for AppStorage();
    if (!v1)
    {
      atomic_store(v0, &qword_100AF4590);
    }
  }
}

void sub_10084B050()
{
  sub_10054457C();
  AttributeDynamicLookup.subscript.getter();
  __break(1u);
}

uint64_t sub_10084B094@<X0>(char *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v87 = a2;
  v89 = a1;
  v72 = a3;
  v66 = type metadata accessor for AttributedSubstring();
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v64 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1000F24EC(&qword_100AE4FC0);
  __chkstk_darwin(v71);
  v81 = &v64 - v5;
  v6 = sub_1000F24EC(&qword_100AE9518);
  v86 = *(v6 - 8);
  __chkstk_darwin(v6);
  v70 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v68 = &v64 - v9;
  __chkstk_darwin(v10);
  v69 = &v64 - v11;
  __chkstk_darwin(v12);
  v14 = &v64 - v13;
  v90 = sub_1000F24EC(&qword_100AE9530);
  v77 = *(v90 - 8);
  __chkstk_darwin(v90);
  v16 = &v64 - v15;
  v17 = sub_1000F24EC(&qword_100AE9528);
  v85 = *(v17 - 8);
  __chkstk_darwin(v17);
  v88 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v64 - v20;
  v76 = type metadata accessor for AttributedString.Runs();
  v22 = *(v76 - 8);
  __chkstk_darwin(v76);
  v24 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1000F24EC(&qword_100AE9520);
  __chkstk_darwin(v25 - 8);
  v75 = &v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v64 - v28;
  __chkstk_darwin(v30);
  v83 = &v64 - v31;
  v32 = sub_1000F24EC(&qword_100AF4838);
  __chkstk_darwin(v32 - 8);
  v84 = &v64 - v33;
  v80 = type metadata accessor for AttributedString.Index();
  v78 = *(v80 - 8);
  __chkstk_darwin(v80);
  v67 = &v64 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for AttributedString();
  v36 = sub_1008518D0(&qword_100AE8C30, &type metadata accessor for AttributedString);
  v82 = v3;
  v79 = v35;
  v73 = v36;
  dispatch thunk of AttributedStringProtocol.runs.getter();
  sub_100544528();
  AttributedString.Runs.subscript.getter();
  (*(v22 + 8))(v24, v76);
  v37 = *(v85 + 16);
  v74 = v21;
  v37(v88, v21, v17);
  sub_10000B58C(&qword_100AE9538, &qword_100AE9528);
  v76 = v17;
  dispatch thunk of Sequence.makeIterator()();
  sub_10000B58C(&qword_100AE9540, &qword_100AE9530);
  v89 = v16;
  dispatch thunk of IteratorProtocol.next()();
  v88 = *(v86 + 48);
  if ((v88)(v29, 1, v6) == 1)
  {
LABEL_2:
    (*(v77 + 8))(v89, v90);
    (*(v85 + 8))(v74, v76);
    v38 = 1;
    v39 = v83;
    goto LABEL_28;
  }

  while (1)
  {
    sub_100021CEC(v29, v14, &qword_100AE9518);
    if (*v14 > 1u)
    {
      if (*v14 != 2)
      {
        goto LABEL_5;
      }

      v42 = 0xE800000000000000;
      v41 = 0x6E617073656D6974;
    }

    else
    {
      v41 = *v14 ? 1953066613 : 0x65756C6176;
      v42 = *v14 ? 0xE400000000000000 : 0xE500000000000000;
    }

    v43 = v6;
    if (!v87)
    {
      break;
    }

    if (v87 == 1)
    {
      v44 = 1953066613;
    }

    else
    {
      v44 = 0x6E617073656D6974;
    }

    if (v87 == 1)
    {
      v45 = 0xE400000000000000;
    }

    else
    {
      v45 = 0xE800000000000000;
    }

    if (v41 == v44)
    {
      goto LABEL_25;
    }

LABEL_4:
    v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = v43;
    if (v40)
    {
      goto LABEL_27;
    }

LABEL_5:
    sub_100004F84(v14, &qword_100AE9518);
    dispatch thunk of IteratorProtocol.next()();
    if ((v88)(v29, 1, v6) == 1)
    {
      goto LABEL_2;
    }
  }

  v45 = 0xE500000000000000;
  if (v41 != 0x65756C6176)
  {
    goto LABEL_4;
  }

LABEL_25:
  if (v42 != v45)
  {
    goto LABEL_4;
  }

  v6 = v43;
LABEL_27:
  (*(v77 + 8))(v89, v90);
  (*(v85 + 8))(v74, v76);
  v39 = v83;
  sub_100021CEC(v14, v83, &qword_100AE9518);
  v38 = 0;
LABEL_28:
  v46 = 1;
  (*(v86 + 56))(v39, v38, 1, v6);
  v47 = v75;
  sub_1000082B4(v39, v75, &qword_100AE9520);
  v48 = (v88)(v47, 1, v6);
  v49 = v80;
  v50 = v78;
  if (v48 != 1)
  {
    v51 = v6;
    v52 = v69;
    sub_100021CEC(v47, v69, &qword_100AE9518);
    v53 = v68;
    sub_1000082B4(v52, v68, &qword_100AE9518);
    v54 = *(v51 + 48);
    v55 = v70;
    v56 = &v70[v54];
    *v70 = *v53;
    sub_100021CEC(&v53[v54], v55 + v54, &qword_100ADA540);
    v57 = sub_1000F24EC(&qword_100ADA540);
    (*(v50 + 16))(v84, &v56[*(v57 + 36)], v49);
    sub_100004F84(v55, &qword_100AE9518);
    v39 = v83;
    sub_100004F84(v52, &qword_100AE9518);
    v46 = 0;
  }

  sub_100004F84(v39, &qword_100AE9520);
  v58 = v84;
  (*(v50 + 56))(v84, v46, 1, v49);
  v59 = (*(v50 + 48))(v58, 1, v49);
  v60 = v81;
  if (v59 == 1)
  {
    sub_100004F84(v58, &qword_100AF4838);
    dispatch thunk of AttributedStringProtocol.startIndex.getter();
    sub_1008518D0(&qword_100AE5010, &type metadata accessor for AttributedString.Index);
    result = dispatch thunk of static Equatable.== infix(_:_:)();
    if (result)
    {
      sub_10000B58C(&qword_100AE5050, &qword_100AE4FC0);
      dispatch thunk of AttributedStringProtocol.subscript.getter();
      return sub_100004F84(v60, &qword_100AE4FC0);
    }

    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {
    v62 = v67;
    (*(v50 + 32))(v67, v58, v49);
    sub_1008518D0(&qword_100AE5010, &type metadata accessor for AttributedString.Index);
    result = dispatch thunk of static Equatable.== infix(_:_:)();
    if ((result & 1) == 0)
    {
      goto LABEL_36;
    }

    (*(v50 + 16))(v60, v62, v49);
    sub_10000B58C(&qword_100AE5050, &qword_100AE4FC0);
    v63 = v64;
    dispatch thunk of AttributedStringProtocol.subscript.getter();
    sub_100004F84(v60, &qword_100AE4FC0);
    sub_10048295C(sub_1005F8490, 0, v72);
    (*(v65 + 8))(v63, v66);
    return (*(v50 + 8))(v62, v49);
  }

  return result;
}

uint64_t sub_10084BD4C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v95 = a1;
  v96 = type metadata accessor for AccessibilityChildBehavior();
  v94 = *(v96 - 8);
  __chkstk_darwin(v96);
  v93 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for InsightsBrickView(0);
  v89 = *(v4 - 8);
  __chkstk_darwin(v4);
  v91 = v5;
  v92 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100AF45D0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v76 - v8;
  v10 = sub_1000F24EC(&qword_100AF45D8);
  __chkstk_darwin(v10);
  v12 = &v76 - v11;
  v79 = sub_1000F24EC(&qword_100AF45E0);
  __chkstk_darwin(v79);
  v14 = &v76 - v13;
  v80 = sub_1000F24EC(&qword_100AF45E8);
  __chkstk_darwin(v80);
  v16 = &v76 - v15;
  v82 = sub_1000F24EC(&qword_100AF45F0);
  __chkstk_darwin(v82);
  v18 = &v76 - v17;
  v81 = sub_1000F24EC(&qword_100AF45F8);
  __chkstk_darwin(v81);
  v83 = &v76 - v19;
  v86 = sub_1000F24EC(&qword_100AF4600);
  __chkstk_darwin(v86);
  v84 = &v76 - v20;
  v88 = sub_1000F24EC(&qword_100AF4608);
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v85 = &v76 - v21;
  *v9 = static HorizontalAlignment.leading.getter();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v22 = sub_1000F24EC(&qword_100AF4610);
  sub_10084C910(v2, &v9[*(v22 + 44)]);
  KeyPath = swift_getKeyPath();
  v24 = &v9[*(sub_1000F24EC(&qword_100AF4618) + 36)];
  *v24 = KeyPath;
  *(v24 + 1) = 2;
  v24[16] = 0;
  v90 = v4;
  v25 = *(v4 + 24);
  v26 = v2;
  v27 = *&v2[v25 + 16];
  v77 = *&v2[v25];
  v76 = v27;
  v28 = static Edge.Set.all.getter();
  v29 = &v9[*(v7 + 44)];
  *v29 = v28;
  *(v29 + 24) = v76;
  *(v29 + 8) = v77;
  v29[40] = 0;
  static Alignment.topLeading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100021CEC(v9, v12, &qword_100AF45D0);
  v30 = &v12[*(v10 + 36)];
  v31 = v106;
  *(v30 + 4) = v105;
  *(v30 + 5) = v31;
  *(v30 + 6) = v107;
  v33 = v102;
  v32 = v103;
  *v30 = v101;
  *(v30 + 1) = v33;
  v34 = v104;
  *(v30 + 2) = v32;
  *(v30 + 3) = v34;
  v35 = swift_getKeyPath();
  v36 = &v14[*(v79 + 36)];
  v37 = *(sub_1000F24EC(&qword_100AD20A8) + 28);
  v38 = enum case for ColorScheme.dark(_:);
  v39 = type metadata accessor for ColorScheme();
  (*(*(v39 - 8) + 104))(v36 + v37, v38, v39);
  *v36 = v35;
  sub_100021CEC(v12, v14, &qword_100AF45D8);
  v40 = swift_getKeyPath();
  v41 = &v16[*(v80 + 36)];
  v42 = *(sub_1000F24EC(&qword_100AD20B0) + 28);
  static Material.thick.getter();
  v43 = type metadata accessor for Material();
  (*(*(v43 - 8) + 56))(v41 + v42, 0, 1, v43);
  *v41 = v40;
  sub_100021CEC(v14, v16, &qword_100AF45E0);
  v44 = static Alignment.center.getter();
  v46 = v45;
  v47 = *v26;
  v78 = v26;
  swift_getKeyPath();
  v108 = v47;
  sub_1008518D0(&qword_100AF3280, type metadata accessor for SidebarInsightsBrickViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  static UnitPoint.top.getter();
  static UnitPoint.bottom.getter();
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v48 = v108;
  sub_100021CEC(v16, v18, &qword_100AF45E8);
  v49 = &v18[*(v82 + 9)];
  *v49 = v48;
  v50 = v109;
  *(v49 + 24) = v110;
  *(v49 + 8) = v50;
  *(v49 + 5) = v44;
  *(v49 + 6) = v46;
  v51 = v83;
  v52 = &v83[*(v81 + 36)];
  v53 = *(type metadata accessor for RoundedRectangle() + 20);
  v54 = enum case for RoundedCornerStyle.continuous(_:);
  v55 = type metadata accessor for RoundedCornerStyle();
  (*(*(v55 - 8) + 104))(&v52[v53], v54, v55);
  __asm { FMOV            V0.2D, #16.0 }

  *v52 = _Q0;
  *&v52[*(sub_1000F24EC(&qword_100AD20A0) + 36)] = 256;
  sub_100021CEC(v18, v51, &qword_100AF45F0);
  v82 = type metadata accessor for InsightsBrickView;
  v61 = v92;
  sub_100851160(v26, v92, type metadata accessor for InsightsBrickView);
  v62 = (*(v89 + 80) + 16) & ~*(v89 + 80);
  v63 = swift_allocObject();
  sub_1008510F8(v61, v63 + v62, type metadata accessor for InsightsBrickView);
  v64 = v86;
  v65 = v84;
  v66 = &v84[*(v86 + 36)];
  type metadata accessor for _TaskModifier();
  static TaskPriority.userInitiated.getter();
  *v66 = &unk_10096DE60;
  *(v66 + 1) = v63;
  sub_100021CEC(v51, v65, &qword_100AF45F8);
  v67 = v78;
  v68 = sub_1000F24EC(&qword_100AF3268);
  AppStorage.wrappedValue.getter();
  sub_100851160(v67, v61, v82);
  v69 = swift_allocObject();
  sub_1008510F8(v61, v69 + v62, type metadata accessor for InsightsBrickView);
  v70 = sub_100850A68();
  v71 = sub_100851000();
  v72 = v85;
  View.onChange<A>(of:initial:_:)();

  sub_100004F84(v65, &qword_100AF4600);
  v73 = v93;
  static AccessibilityChildBehavior.combine.getter();
  v97 = v64;
  v98 = v68;
  v99 = v70;
  v100 = v71;
  swift_getOpaqueTypeConformance2();
  v74 = v88;
  View.accessibilityElement(children:)();
  (*(v94 + 8))(v73, v96);
  return (*(v87 + 8))(v72, v74);
}

uint64_t sub_10084C910@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v53 = a1;
  v51 = a2;
  v2 = sub_1000F24EC(&qword_100AF4690);
  __chkstk_darwin(v2 - 8);
  v52 = v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v47 = (v45 - v5);
  v46 = sub_1000F24EC(&qword_100ADB0A0);
  __chkstk_darwin(v46);
  v7 = v45 - v6;
  v8 = sub_1000F24EC(&qword_100AF4698);
  v49 = *(v8 - 8);
  v50 = v8;
  __chkstk_darwin(v8);
  v48 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v54 = v45 - v11;
  LocalizedStringKey.init(stringLiteral:)();
  v12 = Text.init(_:tableName:bundle:comment:)();
  v14 = v13;
  v16 = v15;
  static Font.headline.getter();
  v17 = Text.font(_:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = v53;

  sub_1000594D0(v12, v14, v16 & 1);

  v55 = v17;
  v56 = v19;
  v25 = v21 & 1;
  v57 = v21 & 1;
  v45[1] = v23;
  v58 = v23;
  v26 = type metadata accessor for InsightsBrickView(0);
  v27 = *(v26 + 20);
  v28 = type metadata accessor for DynamicTypeSize();
  sub_1008518D0(&qword_100ADB0C8, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    (*(*(v28 - 8) + 16))(v7, &v24[v27], v28);
    sub_10000B58C(&qword_100ADB0F0, &qword_100ADB0A0);
    v30 = v19;
    v31 = v54;
    View.dynamicTypeSize<A>(_:)();
    sub_100004F84(v7, &qword_100ADB0A0);
    sub_1000594D0(v17, v30, v25);

    v32 = static VerticalAlignment.lastTextBaseline.getter();
    v33 = *&v24[*(v26 + 24) + 40];
    v34 = v47;
    *v47 = v32;
    *(v34 + 8) = v33;
    *(v34 + 16) = 0;
    v35 = sub_1000F24EC(&qword_100AF46A0);
    sub_10084CDEC(v24, v34 + *(v35 + 44));
    v37 = v48;
    v36 = v49;
    v38 = *(v49 + 16);
    v39 = v50;
    v38(v48, v31, v50);
    v40 = v52;
    sub_1000082B4(v34, v52, &qword_100AF4690);
    v41 = v51;
    v38(v51, v37, v39);
    v42 = sub_1000F24EC(&qword_100AF46A8);
    v43 = &v41[*(v42 + 48)];
    *v43 = 0;
    v43[8] = 0;
    sub_1000082B4(v40, &v41[*(v42 + 64)], &qword_100AF4690);
    sub_100004F84(v34, &qword_100AF4690);
    v44 = *(v36 + 8);
    v44(v54, v39);
    sub_100004F84(v40, &qword_100AF4690);
    return (v44)(v37, v39);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10084CDEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a1;
  v76 = a2;
  v75 = type metadata accessor for InsightsDetailStackView(0);
  v73 = *(v75 - 8);
  __chkstk_darwin(v75);
  v71 = (&v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for EnvironmentValues();
  v65 = *(v4 - 8);
  v66 = v4;
  __chkstk_darwin(v4);
  v64 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100AF46B0);
  __chkstk_darwin(v6 - 8);
  v74 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v72 = &v57 - v9;
  v10 = type metadata accessor for Font.TextStyle();
  v67 = v10;
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for InsightsProminentMetricView(0);
  __chkstk_darwin(v14 - 8);
  v70 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v57 - v17;
  v19 = *a1;
  *(&v57 - v17) = *a1;
  v21 = *(v20 + 28);
  v22 = v20;
  v69 = v20;
  v23 = enum case for DynamicTypeSize.large(_:);
  v24 = type metadata accessor for DynamicTypeSize();
  (*(*(v24 - 8) + 104))(&v18[v21], v23, v24);
  v25 = &v18[*(v22 + 32)];
  __asm { FMOV            V0.2D, #12.0 }

  *v25 = _Q0;
  *(v25 + 1) = _Q0;
  v58 = _Q0;
  v57 = xmmword_100943320;
  *(v25 + 2) = xmmword_100943320;
  *(v25 + 6) = 0x4018000000000000;
  v77 = 0x404E000000000000;
  v31 = enum case for Font.TextStyle.headline(_:);
  v32 = v11 + 104;
  v33 = *(v11 + 104);
  v33(v13, enum case for Font.TextStyle.headline(_:), v10);
  v34 = type metadata accessor for SidebarBrickLayoutMetrics();
  v35 = sub_10015DD78();
  v60 = v19;

  ScaledMetric.init(wrappedValue:relativeTo:)();
  *&v25[v34[9]] = 0xC008000000000000;
  v77 = 0x4041000000000000;
  v62 = v31;
  v36 = v67;
  v63 = v32;
  v61 = v33;
  (v33)(v13, v31);
  v59 = v35;
  ScaledMetric.init(wrappedValue:relativeTo:)();
  *&v25[v34[11]] = static Font.body.getter();
  *&v25[v34[12]] = static Font.headline.getter();
  *&v25[v34[13]] = static Font.footnote.getter();
  v37 = *(v69 + 9);
  *&v18[v37] = swift_getKeyPath();
  sub_1000F24EC(&qword_100AE27B8);
  v69 = v18;
  swift_storeEnumTagMultiPayload();
  v38 = v68 + *(type metadata accessor for InsightsBrickView(0) + 36);
  v39 = *v38;
  if (v38[8] != 1)
  {

    static os_log_type_t.fault.getter();
    v43 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v44 = v64;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000467F0(v39, 0);
    (*(v65 + 8))(v44, v66);
    if (v77)
    {
      goto LABEL_3;
    }

LABEL_5:
    swift_getKeyPath();
    v45 = v60;
    v77 = v60;
    sub_1008518D0(&qword_100AF3280, type metadata accessor for SidebarInsightsBrickViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v46 = v71;
    *v71 = *(v45 + OBJC_IVAR____TtC7Journal29SidebarInsightsBrickViewModel__secondaryMetrics);
    v41 = v75;
    v47 = v46 + *(v75 + 20);
    v48 = v58;
    *v47 = v58;
    *(v47 + 1) = v48;
    *(v47 + 2) = v57;
    *(v47 + 6) = 0x4018000000000000;
    v77 = 0x404E000000000000;
    v49 = v62;
    v50 = v61;
    v61(v13, v62, v36);

    ScaledMetric.init(wrappedValue:relativeTo:)();
    *&v47[v34[9]] = 0xC008000000000000;
    v77 = 0x4041000000000000;
    v50(v13, v49, v36);
    ScaledMetric.init(wrappedValue:relativeTo:)();
    *&v47[v34[11]] = static Font.body.getter();
    *&v47[v34[12]] = static Font.headline.getter();
    *&v47[v34[13]] = static Font.footnote.getter();
    v42 = v72;
    sub_1008510F8(v71, v72, type metadata accessor for InsightsDetailStackView);
    v40 = 0;
    goto LABEL_6;
  }

  if ((v39 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v40 = 1;
  v41 = v75;
  v42 = v72;
LABEL_6:
  (*(v73 + 56))(v42, v40, 1, v41);
  v52 = v69;
  v51 = v70;
  sub_100851160(v69, v70, type metadata accessor for InsightsProminentMetricView);
  v53 = v74;
  sub_1000082B4(v42, v74, &qword_100AF46B0);
  v54 = v76;
  sub_100851160(v51, v76, type metadata accessor for InsightsProminentMetricView);
  v55 = sub_1000F24EC(&qword_100AF46B8);
  sub_1000082B4(v53, v54 + *(v55 + 48), &qword_100AF46B0);
  sub_100004F84(v42, &qword_100AF46B0);
  sub_1008513A8(v52, type metadata accessor for InsightsProminentMetricView);
  sub_100004F84(v53, &qword_100AF46B0);
  return sub_1008513A8(v51, type metadata accessor for InsightsProminentMetricView);
}

uint64_t sub_10084D5B8(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10084D650, v3, v2);
}

uint64_t sub_10084D650()
{

  sub_1007F2A84();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10084D6BC@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v1 = sub_1000F24EC(&qword_100AE8C18);
  v2 = *(v1 - 8);
  v69 = v1;
  v70 = v2;
  __chkstk_darwin(v1);
  v68 = &v53 - v3;
  v63 = sub_1000F24EC(&qword_100ADB5C8);
  v64 = *(v63 - 8);
  __chkstk_darwin(v63);
  v60 = &v53 - v4;
  v58 = sub_1000F24EC(&qword_100AE8C20);
  v74 = *(v58 - 8);
  __chkstk_darwin(v58);
  v6 = &v53 - v5;
  v62 = type metadata accessor for AttributeContainer();
  v75 = *(v62 - 8);
  __chkstk_darwin(v62);
  v57 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v53 - v9;
  v59 = type metadata accessor for AttributedSubstring();
  v61 = *(v59 - 8);
  __chkstk_darwin(v59);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AttributedString();
  v72 = v13;
  v67 = *(v13 - 8);
  v14 = v67;
  __chkstk_darwin(v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v56 = &v53 - v18;
  __chkstk_darwin(v19);
  v73 = &v53 - v20;
  sub_1005B35AC(v16);
  KeyPath = swift_getKeyPath();
  v21 = swift_getKeyPath();
  sub_10084B094(v21, 0, v12);

  v22 = *(v14 + 8);
  v65 = v14 + 8;
  v66 = v22;
  v22(v16, v13);
  v79 = swift_getKeyPath();
  swift_getKeyPath();
  v55 = sub_100544528();
  static AttributeContainer.subscript.getter();

  LOBYTE(v81) = 1;
  v23 = v58;
  AttributeContainer.Builder.callAsFunction(_:)();
  v24 = *(v74 + 8);
  v74 += 8;
  v54 = v24;
  v24(v6, v23);
  v78 = swift_getKeyPath();
  swift_getKeyPath();
  sub_1002825F0();
  v25 = v60;
  static AttributeContainer.subscript.getter();

  v81 = static Color.secondary.getter();
  v26 = v57;
  v27 = v63;
  AttributeContainer.Builder.callAsFunction(_:)();

  (*(v64 + 8))(v25, v27);
  sub_1008518D0(&qword_100AE5020, &type metadata accessor for AttributedSubstring);
  v28 = v56;
  v29 = v59;
  AttributedStringProtocol.replacingAttributes(_:with:)();
  v30 = *(v75 + 8);
  v75 += 8;
  v31 = v62;
  v30(v26, v62);
  v30(v10, v31);
  (*(v61 + 8))(v12, v29);
  v77 = swift_getKeyPath();
  swift_getKeyPath();
  static AttributeContainer.subscript.getter();

  LOBYTE(v81) = 2;
  AttributeContainer.Builder.callAsFunction(_:)();
  v54(v6, v23);
  v76 = swift_getKeyPath();
  swift_getKeyPath();
  sub_10054457C();
  v32 = v68;
  static AttributeContainer.subscript.getter();

  v33 = [objc_opt_self() tertiaryLabelColor];
  v81 = v33;
  v34 = v69;
  AttributeContainer.Builder.callAsFunction(_:)();

  (*(v70 + 8))(v32, v34);
  sub_1008518D0(&qword_100AE8C30, &type metadata accessor for AttributedString);
  v35 = v72;
  v36 = v73;
  AttributedStringProtocol.replacingAttributes(_:with:)();
  v30(v26, v31);
  v30(v10, v31);
  v37 = v66;
  v66(v28, v35);
  (*(v67 + 16))(v28, v36, v35);
  v38 = Text.init(_:)();
  v40 = v39;
  LOBYTE(v28) = v41;
  type metadata accessor for InsightsProminentMetricView(0);
  type metadata accessor for SidebarBrickLayoutMetrics();
  v42 = Text.font(_:)();
  v44 = v43;
  LOBYTE(v12) = v45;
  v47 = v46;
  sub_1000594D0(v38, v40, v28 & 1);

  v37(v73, v72);
  v48 = *(sub_1000F24EC(&qword_100AE8C38) + 36);
  v49 = enum case for BlendMode.plusLighter(_:);
  v50 = type metadata accessor for BlendMode();
  v51 = v71;
  result = (*(*(v50 - 8) + 104))(v71 + v48, v49, v50);
  *v51 = v42;
  *(v51 + 8) = v44;
  *(v51 + 16) = v12 & 1;
  *(v51 + 24) = v47;
  return result;
}

uint64_t sub_10084DFC4@<X0>(uint64_t a1@<X8>)
{
  v85 = a1;
  v2 = sub_1000F24EC(&qword_100AE4FD0);
  __chkstk_darwin(v2 - 8);
  v68 = &v60 - v3;
  v65 = type metadata accessor for AttributedString.CharacterView();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SidebarInsightsBrickViewModel.MetricType(0);
  v87 = *(v5 - 8);
  v88 = v5;
  __chkstk_darwin(v5);
  v61 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for AttributedString();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v63 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&qword_100AF3278);
  __chkstk_darwin(v8 - 8);
  v84 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v69 = &v60 - v11;
  v79 = type metadata accessor for RedactionReasons();
  v81 = *(v79 - 8);
  __chkstk_darwin(v79);
  v78 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v77 = &v60 - v14;
  v76 = type metadata accessor for AccessibilityChildBehavior();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SidebarBrickLayoutMetrics();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16 - 8);
  v72 = sub_1000F24EC(&qword_100AF4768);
  __chkstk_darwin(v72);
  v20 = &v60 - v19;
  v90 = sub_1000F24EC(&qword_100AF4770);
  v73 = *(v90 - 8);
  __chkstk_darwin(v90);
  v22 = &v60 - v21;
  v82 = sub_1000F24EC(&qword_100AF4778);
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v89 = &v60 - v23;
  v83 = sub_1000F24EC(&qword_100AF4780);
  __chkstk_darwin(v83);
  v86 = &v60 - v24;
  *v20 = static HorizontalAlignment.leading.getter();
  *(v20 + 1) = 0;
  v20[16] = 0;
  v25 = sub_1000F24EC(&qword_100AF4788);
  sub_10084ECE4(v1, &v20[*(v25 + 44)]);
  v70 = static Axis.Set.horizontal.getter();
  static Alignment.topLeading.getter();
  v71 = type metadata accessor for InsightsProminentMetricView(0);
  sub_100851160(v1 + *(v71 + 24), &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SidebarBrickLayoutMetrics);
  v26 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v27 = swift_allocObject();
  sub_1008510F8(&v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for SidebarBrickLayoutMetrics);
  v28 = sub_10000B58C(&qword_100AF4790, &qword_100AF4768);
  v29 = v1;
  v30 = v72;
  View.containerRelativeFrame(_:alignment:_:)();

  sub_100004F84(v20, &qword_100AF4768);
  v31 = v74;
  static AccessibilityChildBehavior.ignore.getter();
  v97 = v30;
  v98 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v90;
  View.accessibilityElement(children:)();
  (*(v75 + 8))(v31, v76);
  (*(v73 + 8))(v22, v33);
  v34 = v77;
  sub_1003D89F4(v77);
  sub_1008518D0(&qword_100AD2220, &type metadata accessor for RedactionReasons);
  v35 = v78;
  v36 = v79;
  dispatch thunk of SetAlgebra.init()();
  sub_1008518D0(&qword_100AF4798, &type metadata accessor for RedactionReasons);
  v37 = dispatch thunk of static Equatable.== infix(_:_:)();
  v38 = *(v81 + 8);
  v38(v35, v36);
  v38(v34, v36);
  if (v37)
  {
    v39 = *v29;
    swift_getKeyPath();
    v97 = v39;
    sub_1008518D0(&qword_100AF3280, type metadata accessor for SidebarInsightsBrickViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v40 = OBJC_IVAR____TtC7Journal29SidebarInsightsBrickViewModel__topMetric;
    swift_beginAccess();
    v41 = v39 + v40;
    v42 = v69;
    sub_1000082B4(v41, v69, &qword_100AF3278);
    (*(v87 + 48))(v42, 1, v88);
    sub_100004F84(v42, &qword_100AF3278);
  }

  v97 = v90;
  v98 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v43 = v86;
  v44 = v82;
  v45 = v89;
  View.accessibilityHidden(_:)();
  (*(v80 + 8))(v45, v44);
  v46 = *v29;
  swift_getKeyPath();
  v97 = v46;
  sub_1008518D0(&qword_100AF3280, type metadata accessor for SidebarInsightsBrickViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v47 = OBJC_IVAR____TtC7Journal29SidebarInsightsBrickViewModel__topMetric;
  swift_beginAccess();
  v48 = v46 + v47;
  v49 = v84;
  sub_1000082B4(v48, v84, &qword_100AF3278);
  if ((*(v87 + 48))(v49, 1, v88))
  {
    sub_100004F84(v49, &qword_100AF3278);
    v50 = 0;
    v51 = 0xE000000000000000;
  }

  else
  {
    v52 = v61;
    sub_100851160(v49, v61, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
    sub_100004F84(v49, &qword_100AF3278);
    v53 = v63;
    sub_1005B07B8(v63);
    sub_1008513A8(v52, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
    sub_1008518D0(&qword_100AE8C30, &type metadata accessor for AttributedString);
    v54 = v62;
    v55 = v67;
    dispatch thunk of AttributedStringProtocol.characters.getter();
    sub_1006C6A60(v68);
    v56 = v54;
    v43 = v86;
    (*(v64 + 8))(v56, v65);
    v95 = String.init(_:)();
    v96 = v57;
    v93 = 10;
    v94 = 0xE100000000000000;
    v91 = 32;
    v92 = 0xE100000000000000;
    sub_1000777B4();
    v50 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v51 = v58;
    (*(v66 + 8))(v53, v55);
  }

  v95 = v50;
  v96 = v51;
  sub_1000777B4();
  ModifiedContent<>.accessibilityLabel<A>(_:)();

  return sub_100004F84(v43, &qword_100AF4780);
}

uint64_t sub_10084ECE4@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v3 = type metadata accessor for Font.Leading();
  v94 = *(v3 - 8);
  v95 = v3;
  __chkstk_darwin(v3);
  v93 = v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1000F24EC(&qword_100AF47A0);
  __chkstk_darwin(v96);
  v97 = v74 - v5;
  v6 = sub_1000F24EC(&qword_100AF47A8);
  v98 = *(v6 - 8);
  v99 = v6;
  __chkstk_darwin(v6);
  v8 = v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v83 = v74 - v10;
  v11 = type metadata accessor for ColorResource();
  v91 = *(v11 - 8);
  v92 = v11;
  __chkstk_darwin(v11);
  v90 = v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for Font.TextStyle();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v14 = v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000F24EC(&qword_100ADB0A0);
  __chkstk_darwin(v15);
  v17 = v74 - v16;
  v18 = sub_1000F24EC(&qword_100AF47B0);
  __chkstk_darwin(v18);
  v20 = v74 - v19;
  v88 = sub_1000F24EC(&qword_100AF47B8);
  __chkstk_darwin(v88);
  v82 = v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v74 - v23;
  sub_10084F760(a1, v20);
  v87 = type metadata accessor for InsightsProminentMetricView(0);
  v25 = *(v87 + 20);
  v26 = type metadata accessor for DynamicTypeSize();
  v89 = sub_1008518D0(&qword_100ADB0C8, &type metadata accessor for DynamicTypeSize);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v81 = v8;
    v27 = *(v26 - 8);
    v28 = *(v27 + 16);
    v80 = a1;
    v79 = v25;
    v78 = v26;
    v75 = v28;
    v74[1] = v27 + 16;
    v28(v17, a1 + v25, v26);
    sub_100851408();
    v29 = sub_10000B58C(&qword_100ADB0F0, &qword_100ADB0A0);
    v77 = v15;
    v74[0] = v29;
    View.dynamicTypeSize<A>(_:)();
    v76 = v17;
    sub_100004F84(v17, &qword_100ADB0A0);
    sub_100004F84(v20, &qword_100AF47B0);
    v30 = *(sub_1000F24EC(&qword_100AF47E8) + 36);
    v100 = v24;
    v31 = &v24[v30];
    __asm { FMOV            V0.2D, #12.0 }

    *v31 = _Q0;
    *(v31 + 1) = _Q0;
    *(v31 + 2) = xmmword_100943320;
    *(v31 + 6) = 0x4018000000000000;
    *&v101 = 0x404E000000000000;
    v37 = enum case for Font.TextStyle.headline(_:);
    v38 = *(v85 + 104);
    v39 = v86;
    v38(v14, enum case for Font.TextStyle.headline(_:), v86);
    v40 = type metadata accessor for SidebarBrickLayoutMetrics();
    sub_10015DD78();
    ScaledMetric.init(wrappedValue:relativeTo:)();
    *&v31[v40[9]] = 0xC008000000000000;
    *&v101 = 0x4041000000000000;
    v38(v14, v37, v39);
    ScaledMetric.init(wrappedValue:relativeTo:)();
    *&v31[v40[11]] = static Font.body.getter();
    *&v31[v40[12]] = static Font.headline.getter();
    *&v31[v40[13]] = static Font.footnote.getter();
    v15 = &v31[*(type metadata accessor for InsightsSidebarMetricExtraProminent(0) + 20)];
    sub_1000F24EC(&qword_100AD3CA8);
    v14 = swift_allocObject();
    *(v14 + 1) = xmmword_100940050;
    if (qword_100AD0C48 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v41 = v92;
  v42 = sub_10000617C(v92, qword_100B313E8);
  v43 = v90;
  v44 = *(v91 + 16);
  v44(v90, v42, v41);
  *(v14 + 4) = Color.init(_:)();
  v45 = v96;
  if (qword_100AD0C40 != -1)
  {
    swift_once();
  }

  v46 = sub_10000617C(v41, qword_100B313D0);
  v44(v43, v46, v41);
  *(v14 + 5) = Color.init(_:)();
  static UnitPoint.top.getter();
  static UnitPoint.bottom.getter();
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v47 = v102;
  *v15 = v101;
  *(v15 + 16) = v47;
  *(v15 + 32) = v103;
  KeyPath = swift_getKeyPath();
  v49 = v100;
  v50 = &v100[*(v88 + 36)];
  *v50 = KeyPath;
  *(v50 + 1) = 1;
  v50[16] = 0;
  v51 = v97;
  v52 = v80;
  sub_100850360(v80, v97);
  v54 = v93;
  v53 = v94;
  v55 = v95;
  (*(v94 + 104))(v93, enum case for Font.Leading.tight(_:), v95);
  v56 = Font.leading(_:)();
  (*(v53 + 8))(v54, v55);
  v57 = swift_getKeyPath();
  v58 = (v51 + *(v45 + 36));
  *v58 = v57;
  v58[1] = v56;
  v59 = v79;
  v60 = v78;
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  v63 = v98;
  v62 = v99;
  v64 = v81;
  if (result)
  {
    v65 = v52 + v59;
    v66 = v76;
    v75(v76, v65, v60);
    sub_100851544();
    v67 = v83;
    View.dynamicTypeSize<A>(_:)();
    sub_100004F84(v66, &qword_100ADB0A0);
    sub_100004F84(v51, &qword_100AF47A0);
    v68 = v49;
    v69 = v82;
    sub_1000082B4(v68, v82, &qword_100AF47B8);
    v70 = *(v63 + 16);
    v70(v64, v67, v62);
    v71 = v84;
    sub_1000082B4(v69, v84, &qword_100AF47B8);
    v72 = sub_1000F24EC(&qword_100AF4818);
    v70((v71 + *(v72 + 48)), v64, v62);
    v73 = *(v63 + 8);
    v73(v67, v62);
    sub_100004F84(v100, &qword_100AF47B8);
    v73(v64, v62);
    return sub_100004F84(v69, &qword_100AF47B8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10084F760@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v82 = sub_1000F24EC(&qword_100AF4840);
  __chkstk_darwin(v82);
  v4 = &v60 - v3;
  v72 = type metadata accessor for NumberFormatStyleConfiguration.Notation();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v69 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v65 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1000F24EC(&qword_100AD1ED0);
  v67 = *(v70 - 8);
  __chkstk_darwin(v70);
  v64 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v68 = &v60 - v10;
  v81 = sub_1000F24EC(&qword_100AD2190);
  __chkstk_darwin(v81);
  v73 = &v60 - v11;
  v77 = sub_1000F24EC(&qword_100AF4848);
  __chkstk_darwin(v77);
  v79 = &v60 - v12;
  v80 = sub_1000F24EC(&qword_100AF4828);
  v66 = *(v80 - 8);
  __chkstk_darwin(v80);
  v62 = &v60 - v13;
  v14 = sub_1000F24EC(&qword_100AF3278);
  __chkstk_darwin(v14 - 8);
  v76 = &v60 - v15;
  v16 = type metadata accessor for SidebarInsightsBrickViewModel.MetricType(0);
  v74 = *(v16 - 8);
  v75 = v16;
  __chkstk_darwin(v16);
  v63 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000F24EC(&qword_100AF47E0);
  __chkstk_darwin(v18);
  v78 = &v60 - v19;
  v20 = type metadata accessor for RedactionReasons();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v60 - v25;
  type metadata accessor for InsightsProminentMetricView(0);
  v27 = a1;
  sub_1003D89F4(v26);
  sub_1008518D0(&qword_100AD2220, &type metadata accessor for RedactionReasons);
  dispatch thunk of SetAlgebra.init()();
  sub_1008518D0(&qword_100AF4798, &type metadata accessor for RedactionReasons);
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v28 = *(v21 + 8);
  v28(v23, v20);
  v28(v26, v20);
  if (a1)
  {
    v60 = v18;
    v61 = v4;
    v29 = *v27;
    swift_getKeyPath();
    v84 = v29;
    sub_1008518D0(&qword_100AF3280, type metadata accessor for SidebarInsightsBrickViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v30 = OBJC_IVAR____TtC7Journal29SidebarInsightsBrickViewModel__topMetric;
    swift_beginAccess();
    v31 = v76;
    sub_1000082B4(v29 + v30, v76, &qword_100AF3278);
    if ((*(v74 + 48))(v31, 1, v75) == 1)
    {
      sub_100004F84(v31, &qword_100AF3278);
      LocalizedStringKey.init(stringLiteral:)();
      v32 = Text.init(_:tableName:bundle:comment:)();
      v34 = v33;
      v84 = v32;
      v85 = v33;
      v36 = v35 & 1;
      v86 = v35 & 1;
      v87 = v37;
      static RedactionReasons.placeholder.getter();
      v38 = v62;
      View.redacted(reason:)();
      v28(v26, v20);
      sub_1000594D0(v32, v34, v36);

      v39 = v66;
      v40 = v80;
      v41 = v38;
      (*(v66 + 16))(v79, v38, v80);
      swift_storeEnumTagMultiPayload();
      sub_1000FF090();
      v84 = &type metadata for Text;
      v85 = &protocol witness table for Text;
      swift_getOpaqueTypeConformance2();
      v42 = v78;
      _ConditionalContent<>.init(storage:)();
      (*(v39 + 8))(v41, v40);
    }

    else
    {
      v47 = v63;
      sub_1008510F8(v31, v63, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
      v84 = sub_1007EDCD4();
      static Locale.autoupdatingCurrent.getter();
      sub_1000F6568();
      v48 = v64;
      IntegerFormatStyle.init(locale:)();
      v49 = v69;
      static NumberFormatStyleConfiguration.Notation.compactName.getter();
      v50 = v70;
      IntegerFormatStyle.notation(_:)();
      (*(v71 + 8))(v49, v72);
      (*(v67 + 8))(v48, v50);
      sub_10000B58C(&qword_100AD2250, &qword_100AD1ED0);
      v51 = Text.init<A>(_:format:)();
      v53 = v52;
      v55 = v54;
      v57 = v56;
      v58 = v73;
      v59 = &v73[*(v81 + 36)];
      sub_1000F24EC(&qword_100AD21B0);
      static ContentTransition.numericText(countsDown:)();
      *v59 = swift_getKeyPath();
      *v58 = v51;
      *(v58 + 8) = v53;
      *(v58 + 16) = v55 & 1;
      *(v58 + 24) = v57;
      sub_1000082B4(v58, v79, &qword_100AD2190);
      swift_storeEnumTagMultiPayload();
      sub_1000FF090();
      v84 = &type metadata for Text;
      v85 = &protocol witness table for Text;
      swift_getOpaqueTypeConformance2();
      v42 = v78;
      _ConditionalContent<>.init(storage:)();
      sub_100004F84(v58, &qword_100AD2190);
      sub_1008513A8(v47, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
    }

    sub_1000082B4(v42, v61, &qword_100AF47E0);
    swift_storeEnumTagMultiPayload();
    sub_1008516AC(&qword_100AF47D8, &qword_100AF47E0, &unk_10096E008, sub_1000FF090);
    _ConditionalContent<>.init(storage:)();
    return sub_100004F84(v42, &qword_100AF47E0);
  }

  else
  {
    LocalizedStringKey.init(stringLiteral:)();
    *v4 = Text.init(_:tableName:bundle:comment:)();
    *(v4 + 1) = v43;
    v4[16] = v44 & 1;
    *(v4 + 3) = v45;
    swift_storeEnumTagMultiPayload();
    sub_1008516AC(&qword_100AF47D8, &qword_100AF47E0, &unk_10096E008, sub_1000FF090);
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_100850360@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v38 = sub_1000F24EC(&qword_100AE8C38);
  __chkstk_darwin(v38);
  v34 = &v30 - v3;
  v36 = sub_1000F24EC(&qword_100AF4820);
  __chkstk_darwin(v36);
  v5 = &v30 - v4;
  v6 = type metadata accessor for RedactionReasons();
  v32 = *(v6 - 8);
  v33 = v6;
  __chkstk_darwin(v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1000F24EC(&qword_100AF4828);
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v31 = &v30 - v9;
  v10 = sub_1000F24EC(&qword_100AF3278);
  __chkstk_darwin(v10 - 8);
  v12 = &v30 - v11;
  v13 = type metadata accessor for SidebarInsightsBrickViewModel.MetricType(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  swift_getKeyPath();
  v40 = v17;
  sub_1008518D0(&qword_100AF3280, type metadata accessor for SidebarInsightsBrickViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = OBJC_IVAR____TtC7Journal29SidebarInsightsBrickViewModel__topMetric;
  swift_beginAccess();
  sub_1000082B4(v17 + v18, v12, &qword_100AF3278);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100004F84(v12, &qword_100AF3278);
    LocalizedStringKey.init(stringLiteral:)();
    v19 = Text.init(_:tableName:bundle:comment:)();
    v21 = v20;
    v40 = v19;
    v41 = v20;
    v23 = v22 & 1;
    v42 = v22 & 1;
    v43 = v24;
    static RedactionReasons.placeholder.getter();
    v25 = v31;
    View.redacted(reason:)();
    (*(v32 + 8))(v8, v33);
    sub_1000594D0(v19, v21, v23);

    v26 = v35;
    v27 = v37;
    (*(v35 + 16))(v5, v25, v37);
    swift_storeEnumTagMultiPayload();
    sub_1005447F8();
    v40 = &type metadata for Text;
    v41 = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v26 + 8))(v25, v27);
  }

  else
  {
    sub_1008510F8(v12, v16, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
    v29 = v34;
    sub_10084D6BC(v34);
    sub_1000082B4(v29, v5, &qword_100AE8C38);
    swift_storeEnumTagMultiPayload();
    sub_1005447F8();
    v40 = &type metadata for Text;
    v41 = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    sub_100004F84(v29, &qword_100AE8C38);
    return sub_1008513A8(v16, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
  }
}

uint64_t sub_100850940()
{
  v2 = *(type metadata accessor for InsightsBrickView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100032ECC;

  return sub_10084D5B8(v0 + v3);
}

unint64_t sub_100850A68()
{
  result = qword_100AF4620;
  if (!qword_100AF4620)
  {
    sub_1000F2A18(&qword_100AF4600);
    sub_100850B24();
    sub_1008518D0(&qword_100AD0E50, &type metadata accessor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4620);
  }

  return result;
}

unint64_t sub_100850B24()
{
  result = qword_100AF4628;
  if (!qword_100AF4628)
  {
    sub_1000F2A18(&qword_100AF45F8);
    sub_100850BDC();
    sub_10000B58C(&qword_100AD2100, &qword_100AD20A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4628);
  }

  return result;
}

unint64_t sub_100850BDC()
{
  result = qword_100AF4630;
  if (!qword_100AF4630)
  {
    sub_1000F2A18(&qword_100AF45F0);
    sub_100850C94();
    sub_10000B58C(&qword_100AF4670, &qword_100AF4678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4630);
  }

  return result;
}

unint64_t sub_100850C94()
{
  result = qword_100AF4638;
  if (!qword_100AF4638)
  {
    sub_1000F2A18(&qword_100AF45E8);
    sub_100850D4C();
    sub_10000B58C(&qword_100AD2110, &qword_100AD20B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4638);
  }

  return result;
}

unint64_t sub_100850D4C()
{
  result = qword_100AF4640;
  if (!qword_100AF4640)
  {
    sub_1000F2A18(&qword_100AF45E0);
    sub_100850E04();
    sub_10000B58C(&qword_100AD2108, &qword_100AD20A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4640);
  }

  return result;
}

unint64_t sub_100850E04()
{
  result = qword_100AF4648;
  if (!qword_100AF4648)
  {
    sub_1000F2A18(&qword_100AF45D8);
    sub_100850E90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4648);
  }

  return result;
}

unint64_t sub_100850E90()
{
  result = qword_100AF4650;
  if (!qword_100AF4650)
  {
    sub_1000F2A18(&qword_100AF45D0);
    sub_100850F1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4650);
  }

  return result;
}

unint64_t sub_100850F1C()
{
  result = qword_100AF4658;
  if (!qword_100AF4658)
  {
    sub_1000F2A18(&qword_100AF4618);
    sub_10000B58C(&qword_100AF4660, &qword_100AF4668);
    sub_10000B58C(&qword_100ADB598, &qword_100ADB5A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4658);
  }

  return result;
}

unint64_t sub_100851000()
{
  result = qword_100AF4680;
  if (!qword_100AF4680)
  {
    sub_1000F2A18(&qword_100AF3268);
    sub_100851084();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4680);
  }

  return result;
}

unint64_t sub_100851084()
{
  result = qword_100AF4688;
  if (!qword_100AF4688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4688);
  }

  return result;
}

uint64_t sub_1008510F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100851160(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1008511F0()
{
  type metadata accessor for SidebarInsightsBrickViewModel(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for DynamicTypeSize();
    if (v1 <= 0x3F)
    {
      type metadata accessor for SidebarBrickLayoutMetrics();
      if (v2 <= 0x3F)
      {
        sub_1008512C0(319, &unk_100AF4730, &type metadata accessor for RedactionReasons);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1008512C0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1008513A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100851408()
{
  result = qword_100AF47C0;
  if (!qword_100AF47C0)
  {
    sub_1000F2A18(&qword_100AF47B0);
    sub_10085148C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF47C0);
  }

  return result;
}

unint64_t sub_10085148C()
{
  result = qword_100AF47C8;
  if (!qword_100AF47C8)
  {
    sub_1000F2A18(&qword_100AF47D0);
    sub_1008516AC(&qword_100AF47D8, &qword_100AF47E0, &unk_10096E008, sub_1000FF090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF47C8);
  }

  return result;
}

unint64_t sub_100851544()
{
  result = qword_100AF47F0;
  if (!qword_100AF47F0)
  {
    sub_1000F2A18(&qword_100AF47A0);
    sub_1008515FC();
    sub_10000B58C(&qword_100AD2760, &unk_100AE16A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF47F0);
  }

  return result;
}

unint64_t sub_1008515FC()
{
  result = qword_100AF47F8;
  if (!qword_100AF47F8)
  {
    sub_1000F2A18(&qword_100AF4800);
    sub_1008516AC(&qword_100AF4808, &qword_100AF4810, &unk_10096E068, sub_1005447F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF47F8);
  }

  return result;
}

uint64_t sub_1008516AC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000F2A18(a2);
    a4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100851760()
{
  result = qword_100AF4850;
  if (!qword_100AF4850)
  {
    sub_1000F2A18(&qword_100AF4780);
    sub_1000F2A18(&qword_100AF4770);
    sub_1000F2A18(&qword_100AF4768);
    sub_10000B58C(&qword_100AF4790, &qword_100AF4768);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1008518D0(&qword_100AD2200, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4850);
  }

  return result;
}

uint64_t sub_1008518D0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10085192C()
{
  result = qword_100AF4858;
  if (!qword_100AF4858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4858);
  }

  return result;
}

uint64_t type metadata accessor for InsightsButton()
{
  result = qword_100AF48B8;
  if (!qword_100AF48B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1008519F4()
{
  type metadata accessor for Subview();
  if (v0 <= 0x3F)
  {
    sub_100851BA8(319, &qword_100ADCA30, &type metadata for Bool, &type metadata accessor for State);
    if (v1 <= 0x3F)
    {
      sub_100851B44();
      if (v2 <= 0x3F)
      {
        sub_100851BA8(319, &qword_100ADB020, &type metadata for Bool, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_100851BA8(319, qword_100AE8418, &type metadata for CGFloat, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            sub_1002EEEA4();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100851B44()
{
  if (!qword_100ADB010)
  {
    sub_1000F2A18(&qword_100ADB018);
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100ADB010);
    }
  }
}

void sub_100851BA8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_100851C14@<X0>(uint64_t a1@<X8>)
{
  v201 = a1;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v200 = &v155 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v199 = &v155 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = type metadata accessor for AccessibilityActionKind();
  v197 = *(v198 - 8);
  __chkstk_darwin(v198);
  v196 = &v155 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = type metadata accessor for AccessibilityChildBehavior();
  v194 = *(v195 - 8);
  __chkstk_darwin(v195);
  v193 = &v155 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = type metadata accessor for InsightsButton();
  v187 = *(v211 - 8);
  __chkstk_darwin(v211);
  v189 = &v155 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = v8;
  __chkstk_darwin(v9);
  v209 = &v155 - v10;
  v207 = type metadata accessor for ContainerValues();
  v212 = *(v207 - 8);
  __chkstk_darwin(v207);
  v192 = &v155 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v202 = &v155 - v13;
  v205 = type metadata accessor for EnvironmentValues();
  v204 = *(v205 - 8);
  __chkstk_darwin(v205);
  v203 = &v155 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v208);
  v177 = (&v155 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v176 = &v155 - v17;
  v18 = sub_1000F24EC(&qword_100AF4910);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v21 = &v155 - v20;
  v22 = sub_1000F24EC(&qword_100AF4918);
  v23 = v22 - 8;
  __chkstk_darwin(v22);
  v25 = &v155 - v24;
  v162 = sub_1000F24EC(&qword_100AF4920);
  __chkstk_darwin(v162);
  v27 = &v155 - v26;
  v161 = sub_1000F24EC(&qword_100AF4928);
  v158 = *(v161 - 8);
  __chkstk_darwin(v161);
  v157 = &v155 - v28;
  v29 = sub_1000F24EC(&qword_100AF4930);
  v30 = v29 - 8;
  __chkstk_darwin(v29);
  v156 = &v155 - v31;
  v32 = sub_1000F24EC(&qword_100AF4938);
  v33 = v32 - 8;
  __chkstk_darwin(v32);
  v159 = &v155 - v34;
  v160 = sub_1000F24EC(&qword_100AF4940) - 8;
  __chkstk_darwin(v160);
  v155 = &v155 - v35;
  v163 = sub_1000F24EC(&qword_100AF4948);
  __chkstk_darwin(v163);
  v167 = &v155 - v36;
  v164 = sub_1000F24EC(&qword_100AF4950);
  __chkstk_darwin(v164);
  v169 = &v155 - v37;
  v166 = sub_1000F24EC(&qword_100AF4958);
  __chkstk_darwin(v166);
  v168 = &v155 - v38;
  v165 = sub_1000F24EC(&qword_100AF4960);
  __chkstk_darwin(v165);
  v170 = &v155 - v39;
  v172 = sub_1000F24EC(&qword_100AF4968);
  __chkstk_darwin(v172);
  v171 = &v155 - v40;
  v175 = sub_1000F24EC(&qword_100AF4970);
  v174 = *(v175 - 8);
  __chkstk_darwin(v175);
  v173 = &v155 - v41;
  v181 = sub_1000F24EC(&qword_100AF4978);
  v180 = *(v181 - 8);
  __chkstk_darwin(v181);
  v179 = &v155 - v42;
  v178 = sub_1000F24EC(&qword_100AF4980);
  __chkstk_darwin(v178);
  v206 = &v155 - v43;
  v183 = sub_1000F24EC(&qword_100AF4988);
  __chkstk_darwin(v183);
  v182 = &v155 - v44;
  v186 = sub_1000F24EC(&qword_100AF4990);
  v185 = *(v186 - 8);
  __chkstk_darwin(v186);
  v184 = &v155 - v45;
  v191 = sub_1000F24EC(&qword_100AF4998);
  __chkstk_darwin(v191);
  v188 = &v155 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v190 = &v155 - v48;
  *v21 = static HorizontalAlignment.center.getter();
  *(v21 + 1) = 0;
  v21[16] = 1;
  v49 = sub_1000F24EC(&qword_100AF49A0);
  sub_100853670(v1, &v21[*(v49 + 44)]);
  v50 = v1;
  v51 = sub_100853B18();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v58 = static Edge.Set.all.getter();
  v59 = &v21[*(v19 + 44)];
  *v59 = v58;
  *(v59 + 1) = v51;
  *(v59 + 2) = v53;
  *(v59 + 3) = v55;
  *(v59 + 4) = v57;
  v59[40] = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100021CEC(v21, v25, &qword_100AF4910);
  v60 = &v25[*(v23 + 44)];
  v61 = v221;
  *(v60 + 4) = v220;
  *(v60 + 5) = v61;
  *(v60 + 6) = v222;
  v62 = v217;
  *v60 = v216;
  *(v60 + 1) = v62;
  v63 = v219;
  *(v60 + 2) = v218;
  *(v60 + 3) = v63;
  sub_100021CEC(v25, v27, &qword_100AF4918);
  sub_100854F9C();
  v64 = v157;
  View.invalidatableContent(_:)();
  v65 = v27;
  v66 = v155;
  sub_100004F84(v65, &qword_100AF4920);
  v67 = v156;
  v158[4](v156, v64, v161);
  *&v67[*(v30 + 44)] = 256;
  static Color.black.getter();
  v68 = v211;
  v69 = v1 + *(v211 + 24);
  v70 = *v69;
  v71 = *(v69 + 8);
  LOBYTE(v214) = v70;
  v215 = v71;
  sub_1000F24EC(&qword_100AD2640);
  State.wrappedValue.getter();
  v72 = Color.opacity(_:)();

  LOBYTE(v64) = Edge.Set.init(rawValue:)();
  v73 = v67;
  v74 = v159;
  sub_100021CEC(v73, v159, &qword_100AF4930);
  v75 = v74 + *(v33 + 44);
  *v75 = v72;
  *(v75 + 8) = v64;
  v76 = static Alignment.center.getter();
  v78 = v77;
  v79 = v66 + *(v160 + 44);
  sub_100853E1C(v50);
  v80 = (v79 + *(sub_1000F24EC(&qword_100AF49D0) + 36));
  *v80 = v76;
  v80[1] = v78;
  sub_100021CEC(v74, v66, &qword_100AF4938);
  v81 = *(v68 + 40);
  v213 = v50;
  v82 = v50 + v81;
  v83 = *v82;
  LODWORD(v161) = *(v82 + 8);
  v162 = v83;
  if (v161 == 1)
  {
    v86 = v83;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v84 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v85 = v203;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000467F0(v83, 0);
    (*(v204 + 8))(v85, v205);
    v86 = v214;
  }

  v87 = *(v208 + 20);
  v88 = enum case for RoundedCornerStyle.continuous(_:);
  v89 = type metadata accessor for RoundedCornerStyle();
  v90 = *(v89 - 8);
  v91 = *(v90 + 104);
  v92 = v176;
  LODWORD(v160) = v88;
  v159 = v89;
  v158 = v91;
  v157 = (v90 + 104);
  (v91)(&v176[v87], v88);
  *v92 = v86;
  v92[1] = v86;
  sub_1008551C8(v92, v177, &type metadata accessor for RoundedRectangle);
  sub_100856070(&qword_100AD2658, &type metadata accessor for RoundedRectangle);
  v93 = v167;
  _ContainerRoundedRectangularShapeModifier.init(shape:)();
  sub_10085516C(v92);
  sub_100021CEC(v66, v93, &qword_100AF4940);
  v94 = v202;
  v95 = v213;
  Subview.containerValues.getter();
  sub_100504E54();
  ContainerValues.subscript.getter();
  v177 = *(v212 + 8);
  v212 += 8;
  (v177)(v94, v207);
  v96 = v214;
  KeyPath = swift_getKeyPath();
  v98 = v169;
  sub_100021CEC(v93, v169, &qword_100AF4948);
  v99 = v98 + *(v164 + 36);
  *v99 = KeyPath;
  *(v99 + 8) = v96;
  LOBYTE(KeyPath) = sub_100854534();
  v100 = swift_getKeyPath();
  v101 = v98;
  v102 = v168;
  sub_100021CEC(v101, v168, &qword_100AF4950);
  v103 = v102 + *(v166 + 36);
  *v103 = v100;
  *(v103 + 8) = KeyPath & 1;
  if (sub_100854534())
  {
    v104 = 2.0;
  }

  else
  {
    v104 = 1.0;
  }

  v105 = v102;
  v106 = v170;
  sub_100021CEC(v105, v170, &qword_100AF4958);
  *(v106 + *(v165 + 36)) = v104;
  v107 = v172;
  v108 = v171;
  v109 = &v171[*(v172 + 36)];
  sub_1000F24EC(&qword_100AF49D8);
  static ContentShapeKinds.interaction.getter();
  *v109 = 0;
  sub_100021CEC(v106, v108, &qword_100AF4960);
  v110 = v209;
  sub_1008551C8(v95, v209, type metadata accessor for InsightsButton);
  v111 = *(v187 + 80);
  v112 = (v111 + 16) & ~v111;
  v113 = swift_allocObject();
  sub_100855230(v110, v113 + v112);
  v114 = sub_1008552AC();
  v115 = v173;
  View.onTapGesture(count:perform:)();

  sub_100004F84(v108, &qword_100AF4968);
  v116 = v213;
  sub_1008551C8(v213, v110, type metadata accessor for InsightsButton);
  v117 = swift_allocObject();
  sub_100855230(v110, v117 + v112);
  v118 = v116;
  v119 = v189;
  sub_1008551C8(v118, v189, type metadata accessor for InsightsButton);
  v187 = v111;
  v120 = swift_allocObject();
  v176 = v112;
  sub_100855230(v119, v120 + v112);
  v214 = v107;
  v215 = v114;
  swift_getOpaqueTypeConformance2();
  v121 = v179;
  v122 = v175;
  View.onLongPressGesture(minimumDuration:maximumDistance:pressing:perform:)();
  v123 = v177;

  v124 = v207;

  (*(v174 + 8))(v115, v122);
  v125 = v192;
  Subview.containerValues.getter();
  sub_100520804();
  ContainerValues.subscript.getter();
  v126 = v125;
  v127 = 1;
  v123(v126, v124);
  if ((v214 & 1) == 0)
  {
    v128 = v202;
    Subview.containerValues.getter();
    sub_100280BD0();
    ContainerValues.tag<A>(for:)();
    v123(v128, v124);
    v127 = v214 == 8;
  }

  v129 = swift_getKeyPath();
  v130 = swift_allocObject();
  *(v130 + 16) = v127;
  v131 = v206;
  (*(v180 + 32))(v206, v121, v181);
  v132 = (v131 + *(v178 + 36));
  *v132 = v129;
  v132[1] = sub_1000FF5FC;
  v132[2] = v130;
  v133 = v183;
  v134 = v182;
  v135 = &v182[*(v183 + 36)];
  v136 = sub_1000F24EC(&qword_100AF4A40);
  static ContentShapeKinds.accessibility.getter();
  v137 = v205;
  v138 = v204;
  v139 = v203;
  if (v161)
  {
    v140 = v162;
  }

  else
  {
    v141 = v162;

    static os_log_type_t.fault.getter();
    v142 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000467F0(v141, 0);
    (*(v138 + 8))(v139, v137);
    v140 = v214;
  }

  (v158)(&v135[*(v208 + 20)], v160, v159);
  *v135 = v140;
  *(v135 + 1) = v140;
  v135[*(v136 + 36)] = 0;
  sub_100021CEC(v206, v134, &qword_100AF4980);
  v143 = v193;
  static AccessibilityChildBehavior.contain.getter();
  v144 = sub_100855978();
  v145 = v184;
  View.accessibilityElement(children:)();
  (*(v194 + 8))(v143, v195);
  sub_100004F84(v134, &qword_100AF4988);
  v146 = v196;
  static AccessibilityActionKind.default.getter();
  v147 = v209;
  sub_1008551C8(v213, v209, type metadata accessor for InsightsButton);
  v148 = v176;
  v149 = swift_allocObject();
  sub_100855230(v147, &v148[v149]);
  v214 = v133;
  v215 = v144;
  swift_getOpaqueTypeConformance2();
  v150 = v188;
  v151 = v186;
  View.accessibilityAction(_:_:)();

  (*(v197 + 8))(v146, v198);
  (*(v185 + 8))(v145, v151);
  sub_100854534();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v214 = String.init(localized:table:bundle:locale:comment:)();
  v215 = v152;
  sub_1000777B4();
  v153 = v190;
  ModifiedContent<>.accessibilityHint<A>(_:)();

  sub_100004F84(v150, &qword_100AF4998);
  sub_1000F24EC(&qword_100ADD768);
  AccessibilityFocusState.projectedValue.getter();
  sub_100855BE4();
  View.accessibilityFocused(_:)();

  return sub_100004F84(v153, &qword_100AF4998);
}

uint64_t sub_100853670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v33 = sub_1000F24EC(&qword_100ADB0A0);
  __chkstk_darwin(v33);
  v4 = &v30 - v3;
  v5 = type metadata accessor for EnvironmentValues();
  v32 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&qword_100AF4AD0);
  __chkstk_darwin(v8);
  v10 = &v30 - v9;
  KeyPath = swift_getKeyPath();
  v12 = type metadata accessor for InsightsButton();
  v13 = a1 + *(v12 + 36);
  v14 = *v13;
  if (*(v13 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    v31 = a1;
    v16 = v7;
    v17 = v8;
    v18 = v5;
    v19 = v15;
    os_log(_:dso:log:_:_:)();

    v5 = v18;
    v8 = v17;
    v7 = v16;
    a1 = v31;
    v20 = v32;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000467F0(v14, 0);
    (*(v20 + 8))(v7, v5);
    LOBYTE(v14) = v36;
  }

  v21 = type metadata accessor for Subview();
  (*(*(v21 - 8) + 16))(v10, a1, v21);
  v22 = &v10[*(v8 + 36)];
  *v22 = KeyPath;
  v22[8] = v14 & 1;
  if (sub_100854534())
  {
    goto LABEL_4;
  }

  v24 = a1 + *(v12 + 32);
  v25 = *v24;
  if (*(v24 + 8) == 1)
  {
    if ((v25 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_4:
    v23 = &enum case for DynamicTypeSize.accessibility5(_:);
    goto LABEL_10;
  }

  static os_log_type_t.fault.getter();
  v26 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();
  sub_1000467F0(v25, 0);
  (*(v32 + 8))(v7, v5);
  if (v35 == 1)
  {
    goto LABEL_4;
  }

LABEL_9:
  v23 = &enum case for DynamicTypeSize.xxLarge(_:);
LABEL_10:
  v27 = *v23;
  v28 = type metadata accessor for DynamicTypeSize();
  (*(*(v28 - 8) + 104))(v4, v27, v28);
  sub_100856070(&qword_100ADB0C8, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    sub_1008560B8();
    sub_10000B58C(&qword_100ADB0F0, &qword_100ADB0A0);
    View.dynamicTypeSize<A>(_:)();
    sub_100004F84(v4, &qword_100ADB0A0);
    return sub_100004F84(v10, &qword_100AF4AD0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_100853B18()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for ContainerValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v19[-v10];
  Subview.containerValues.getter();
  sub_100280BD0();
  ContainerValues.tag<A>(for:)();
  v12 = *(v6 + 8);
  v12(v11, v5);
  if (v19[15] != 8 || (v13 = type metadata accessor for InsightsButton(), result = 0.0, (*(v0 + *(v13 + 20)) & 1) == 0))
  {
    Subview.containerValues.getter();
    sub_100504E54();
    ContainerValues.subscript.getter();
    v12(v8, v5);
    v15 = v19[14];
    if (sub_100854534())
    {
      LOBYTE(v16) = 1;
    }

    else
    {
      v17 = v0 + *(type metadata accessor for InsightsButton() + 32);
      v16 = *v17;
      if (*(v17 + 8) != 1)
      {

        static os_log_type_t.fault.getter();
        v18 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_1000467F0(v16, 0);
        (*(v2 + 8))(v4, v1);
        LOBYTE(v16) = v19[13];
      }
    }

    if (v15 > 1)
    {
      if (v15 != 2)
      {
        return 12.0;
      }
    }

    else
    {
      result = 10.0;
      if (v15 || (v16 & 1) == 0)
      {
        return result;
      }
    }

    return 16.0;
  }

  return result;
}

uint64_t sub_100853E1C(uint64_t a1)
{
  v2 = type metadata accessor for ColorResource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100854158(a1, &v26);
  v10 = v26;
  v11 = v27 | (v28 << 16);
  v12 = type metadata accessor for InsightsButton();
  v13 = *(a1 + *(v12 + 20));
  v14 = a1 + *(v12 + 44);
  v15 = *v14;
  if (*(v14 + 8) != 1)
  {
    v24 = v13;

    static os_log_type_t.fault.getter();
    v23 = v6;
    v19 = static Log.runtimeIssuesLog.getter();
    v25 = v11;
    v20 = v10;
    v21 = v19;
    os_log(_:dso:log:_:_:)();

    v10 = v20;
    v11 = v25;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000467F0(v15, 0);
    (*(v7 + 8))(v9, v23);
    v16 = v26;
    if ((v24 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v18 = static Color.clear.getter();
    goto LABEL_8;
  }

  v16 = *v14;
  if (v13)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (qword_100AD0CC8 != -1)
  {
    swift_once();
  }

  v17 = sub_10000617C(v2, qword_100B31568);
  (*(v3 + 16))(v5, v17, v2);
  v18 = Color.init(_:)();
LABEL_8:
  v26 = v10;
  v27 = v11;
  v28 = BYTE2(v11);
  v29 = v18;
  v30 = v16;
  v31 = xmmword_100959CE0;
  sub_1000F24EC(&qword_100AF4A70);
  sub_100855D7C();
  View.accessibilityHidden(_:)();
  sub_100856054(v26, v27 | (v28 << 16));
}

uint64_t sub_100854158@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v26 = a2;
  v3 = type metadata accessor for ColorResource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&qword_100ADE660);
  __chkstk_darwin(v7);
  v9 = (&v25 - v8);
  v10 = type metadata accessor for ContainerValues();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Subview.containerValues.getter();
  sub_100504804();
  ContainerValues.subscript.getter();
  (*(v11 + 8))(v13, v10);
  if (v30)
  {
    v27 = v30;
    v28 = 0;
    v29 = 0;
  }

  else
  {
    result = type metadata accessor for InsightsButton();
    if (*(a1 + *(result + 20)))
    {
      v15 = 0;
      v16 = 16711680;
      goto LABEL_12;
    }

    if (qword_100AD0CC0 != -1)
    {
      swift_once();
    }

    v17 = sub_10000617C(v3, qword_100B31550);
    (*(v4 + 16))(v6, v17, v3);
    v18 = Color.init(_:)();
    v19 = *(v7 + 36);
    v20 = enum case for BlendMode.normal(_:);
    v21 = type metadata accessor for BlendMode();
    v22 = *(*(v21 - 8) + 104);
    v22(v9 + v19, v20, v21);
    v22(v9 + *(v7 + 40), enum case for BlendMode.plusLighter(_:), v21);
    *v9 = v18;
    sub_10000B58C(&unk_100ADE670, &qword_100ADE660);
    v27 = AnyShapeStyle.init<A>(_:)();
    v28 = 256;
    v29 = 1;
  }

  sub_1000F24EC(&qword_100AF4AC8);
  sub_10000B58C(&qword_100AF4AC0, &qword_100AF4AC8);
  result = _ConditionalContent<>.init(storage:)();
  v15 = v30;
  if (v32)
  {
    v23 = 0x10000;
  }

  else
  {
    v23 = 0;
  }

  v16 = v23 | v31;
LABEL_12:
  v24 = v26;
  *v26 = v15;
  *(v24 + 4) = v16;
  *(v24 + 10) = BYTE2(v16);
  return result;
}

uint64_t sub_100854534()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ContainerValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v22 - v10;
  Subview.containerValues.getter();
  sub_100520804();
  ContainerValues.subscript.getter();
  v12 = *(v6 + 8);
  v12(v11, v5);
  if (v25)
  {
    v13 = 1;
  }

  else
  {
    Subview.containerValues.getter();
    v14 = v0 + *(type metadata accessor for InsightsButton() + 28);
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = *(v14 + 16);
    if (*(v14 + 17) == 1)
    {
    }

    else
    {

      static os_log_type_t.fault.getter();
      v22 = v1;
      v23 = v12;
      v18 = v2;
      v19 = static Log.runtimeIssuesLog.getter();
      v12 = v23;
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100280C78(v15, v16, v17, 0);
      (*(v18 + 8))(v4, v22);
      v15 = v25;
      v16 = v26;
      LOBYTE(v17) = v27;
    }

    v25 = v15;
    v26 = v16;
    v27 = v17;
    sub_1000F24EC(&qword_100ADB018);
    Binding.wrappedValue.getter();
    v20 = v24;

    LOBYTE(v25) = v20;
    sub_1000F24EC(&qword_100AD8D88);
    sub_100855CF8();
    v13 = ContainerValues.hasTag<A>(_:)();
    v12(v8, v5);
  }

  return v13 & 1;
}

uint64_t sub_100854848()
{
  sub_100854534();
  type metadata accessor for InsightsButton();
  sub_1000F24EC(&qword_100AD2640);
  return State.wrappedValue.setter();
}

uint64_t sub_1008548C8()
{
  type metadata accessor for InsightsButton();
  sub_1000F24EC(&qword_100AD2640);
  State.wrappedValue.setter();
  static Animation.spring(response:dampingFraction:blendDuration:)();
  withAnimation<A>(_:_:)();
}

uint64_t sub_10085498C()
{
  static Animation.spring(response:dampingFraction:blendDuration:)();
  withAnimation<A>(_:_:)();
}

uint64_t sub_1008549FC()
{
  v0 = sub_100854534();
  sub_100854A78((v0 & 1) == 0);
  type metadata accessor for InsightsButton();
  sub_1000F24EC(&qword_100ADD768);
  return AccessibilityFocusState.wrappedValue.setter();
}

uint64_t sub_100854A78(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ContainerValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v34 - v13;
  if (a1)
  {
    Subview.containerValues.getter();
    sub_100280BD0();
    ContainerValues.tag<A>(for:)();
    (*(v9 + 8))(v14, v8);
    v15 = v40;
    v16 = v2 + *(type metadata accessor for InsightsButton() + 28);
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    if (*(v16 + 17) == 1)
    {
    }

    else
    {

      static os_log_type_t.fault.getter();
      v27 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100280C78(v17, v18, v19, 0);
      (*(v5 + 8))(v7, v4);
      v17 = v40;
      v18 = v41;
      LOBYTE(v19) = v42;
    }

    v40 = v17;
    v41 = v18;
    v42 = v19;
    v39 = v15;
    sub_1000F24EC(&qword_100ADB018);
    Binding.wrappedValue.setter();
LABEL_14:
  }

  Subview.containerValues.getter();
  v20 = v2 + *(type metadata accessor for InsightsButton() + 28);
  v21 = *v20;
  v22 = *(v20 + 8);
  v23 = *(v20 + 16);
  v36 = *(v20 + 17);
  v37 = v23;
  v35 = v4;
  v38 = v5;
  if (v36 == 1)
  {

    v24 = v21;
    v25 = v23;
    v26 = v22;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v28 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100280C78(v21, v22, v23, 0);
    (*(v38 + 8))(v7, v4);
    v24 = v40;
    v26 = v41;
    v25 = v42;
  }

  v40 = v24;
  v41 = v26;
  v42 = v25;
  sub_1000F24EC(&qword_100ADB018);
  Binding.wrappedValue.getter();
  v29 = v39;

  LOBYTE(v40) = v29;
  sub_1000F24EC(&qword_100AD8D88);
  sub_100855CF8();
  v30 = ContainerValues.hasTag<A>(_:)();
  result = (*(v9 + 8))(v11, v8);
  if (v30)
  {
    if (v36)
    {

      v32 = v37;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v33 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100280C78(v21, v22, v37, 0);
      (*(v38 + 8))(v7, v35);
      v21 = v40;
      v22 = v41;
      v32 = v42;
    }

    v40 = v21;
    v41 = v22;
    v42 = v32;
    v39 = 8;
    Binding.wrappedValue.setter();
    goto LABEL_14;
  }

  return result;
}

unint64_t sub_100854F9C()
{
  result = qword_100AF49A8;
  if (!qword_100AF49A8)
  {
    sub_1000F2A18(&qword_100AF4920);
    sub_100855028();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF49A8);
  }

  return result;
}

unint64_t sub_100855028()
{
  result = qword_100AF49B0;
  if (!qword_100AF49B0)
  {
    sub_1000F2A18(&qword_100AF4918);
    sub_1008550B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF49B0);
  }

  return result;
}

unint64_t sub_1008550B4()
{
  result = qword_100AF49B8;
  if (!qword_100AF49B8)
  {
    sub_1000F2A18(&qword_100AF4910);
    sub_10000B58C(&qword_100AF49C0, &qword_100AF49C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF49B8);
  }

  return result;
}

uint64_t sub_10085516C(uint64_t a1)
{
  v2 = type metadata accessor for RoundedRectangle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1008551C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100855230(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InsightsButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1008552AC()
{
  result = qword_100AF49E0;
  if (!qword_100AF49E0)
  {
    sub_1000F2A18(&qword_100AF4968);
    sub_100855364();
    sub_10000B58C(&qword_100AF4A38, &qword_100AF49D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF49E0);
  }

  return result;
}

unint64_t sub_100855364()
{
  result = qword_100AF49E8;
  if (!qword_100AF49E8)
  {
    sub_1000F2A18(&qword_100AF4960);
    sub_10085541C();
    sub_10000B58C(&qword_100ADEE90, &qword_100ADEE98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF49E8);
  }

  return result;
}

unint64_t sub_10085541C()
{
  result = qword_100AF49F0;
  if (!qword_100AF49F0)
  {
    sub_1000F2A18(&qword_100AF4958);
    sub_1008554D4();
    sub_10000B58C(&qword_100ADB128, &qword_100ADB130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF49F0);
  }

  return result;
}

unint64_t sub_1008554D4()
{
  result = qword_100AF49F8;
  if (!qword_100AF49F8)
  {
    sub_1000F2A18(&qword_100AF4950);
    sub_10085558C();
    sub_10000B58C(&qword_100AE5EC0, &qword_100AE5EC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF49F8);
  }

  return result;
}

unint64_t sub_10085558C()
{
  result = qword_100AF4A00;
  if (!qword_100AF4A00)
  {
    sub_1000F2A18(&qword_100AF4948);
    sub_100855644();
    sub_10000B58C(&qword_100AD2630, &qword_100AD2638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4A00);
  }

  return result;
}

unint64_t sub_100855644()
{
  result = qword_100AF4A08;
  if (!qword_100AF4A08)
  {
    sub_1000F2A18(&qword_100AF4940);
    sub_1008556FC();
    sub_10000B58C(&qword_100AF4A30, &qword_100AF49D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4A08);
  }

  return result;
}

unint64_t sub_1008556FC()
{
  result = qword_100AF4A10;
  if (!qword_100AF4A10)
  {
    sub_1000F2A18(&qword_100AF4938);
    sub_1008557B4();
    sub_10000B58C(&qword_100AF4A20, &qword_100AF4A28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4A10);
  }

  return result;
}

unint64_t sub_1008557B4()
{
  result = qword_100AF4A18;
  if (!qword_100AF4A18)
  {
    sub_1000F2A18(&qword_100AF4930);
    sub_1000F2A18(&qword_100AF4920);
    sub_100854F9C();
    swift_getOpaqueTypeConformance2();
    sub_10000B58C(&qword_100AD2610, &qword_100AD2618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4A18);
  }

  return result;
}

uint64_t sub_1008558A8()
{
  type metadata accessor for InsightsButton();

  return sub_100854848();
}

uint64_t sub_100855918()
{
  type metadata accessor for InsightsButton();

  return sub_1008548C8();
}

unint64_t sub_100855978()
{
  result = qword_100AF4A48;
  if (!qword_100AF4A48)
  {
    sub_1000F2A18(&qword_100AF4988);
    sub_100855A30();
    sub_10000B58C(&qword_100AF4A58, &qword_100AF4A40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4A48);
  }

  return result;
}

unint64_t sub_100855A30()
{
  result = qword_100AF4A50;
  if (!qword_100AF4A50)
  {
    sub_1000F2A18(&qword_100AF4980);
    sub_1000F2A18(&qword_100AF4970);
    sub_1000F2A18(&qword_100AF4968);
    sub_1008552AC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10000B58C(&qword_100AD2348, &qword_100AD2350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4A50);
  }

  return result;
}

unint64_t sub_100855BE4()
{
  result = qword_100AF4A60;
  if (!qword_100AF4A60)
  {
    sub_1000F2A18(&qword_100AF4998);
    sub_1000F2A18(&qword_100AF4988);
    sub_100855978();
    swift_getOpaqueTypeConformance2();
    sub_100856070(&qword_100AD2200, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4A60);
  }

  return result;
}

unint64_t sub_100855CF8()
{
  result = qword_100AF4A68;
  if (!qword_100AF4A68)
  {
    sub_1000F2A18(&qword_100AD8D88);
    sub_100280BD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4A68);
  }

  return result;
}

unint64_t sub_100855D7C()
{
  result = qword_100AF4A78;
  if (!qword_100AF4A78)
  {
    sub_1000F2A18(&qword_100AF4A70);
    sub_100855E08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4A78);
  }

  return result;
}

unint64_t sub_100855E08()
{
  result = qword_100AF4A80;
  if (!qword_100AF4A80)
  {
    sub_1000F2A18(&qword_100AF4A88);
    sub_100855E94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4A80);
  }

  return result;
}

unint64_t sub_100855E94()
{
  result = qword_100AF4A90;
  if (!qword_100AF4A90)
  {
    sub_1000F2A18(&qword_100AF4A98);
    sub_100855F18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4A90);
  }

  return result;
}

unint64_t sub_100855F18()
{
  result = qword_100AF4AA0;
  if (!qword_100AF4AA0)
  {
    sub_1000F2A18(&qword_100AF4AA8);
    sub_100855F9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4AA0);
  }

  return result;
}

unint64_t sub_100855F9C()
{
  result = qword_100AF4AB0;
  if (!qword_100AF4AB0)
  {
    sub_1000F2A18(&qword_100AF4AB8);
    sub_10000B58C(&qword_100AF4AC0, &qword_100AF4AC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4AB0);
  }

  return result;
}

uint64_t sub_100856054(uint64_t result, uint64_t a2)
{
  if (BYTE2(a2) != 255)
  {
    return j__swift_release(result, a2, WORD1(a2) & 1);
  }

  return result;
}

uint64_t sub_100856070(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1008560B8()
{
  result = qword_100AF4AD8;
  if (!qword_100AF4AD8)
  {
    sub_1000F2A18(&qword_100AF4AD0);
    sub_10000B58C(&qword_100ADCF88, &qword_100ADCF90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4AD8);
  }

  return result;
}

uint64_t sub_100856188()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AF4AE0);
  v1 = sub_10000617C(v0, qword_100AF4AE0);
  if (qword_100AD0210 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B300D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100856250()
{
  v1 = OBJC_IVAR____TtC7Journal22JournalPrivacyProvider_privacyValidation;
  v2 = type metadata accessor for PrivacyValidation();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_100856314()
{
  result = type metadata accessor for PrivacyValidation();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1008563A4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7Journal22JournalPrivacyProvider_privacyValidation;
  v4 = type metadata accessor for PrivacyValidation();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100856440()
{
  sub_1000F24EC(&qword_100AF4D60);
  v1 = swift_task_alloc();
  v0[2] = v1;
  v0[3] = type metadata accessor for AnalyticsActor();
  v0[4] = static AnalyticsActor.shared.getter();
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_10085652C;

  return static Storefront.current.getter(v1);
}

uint64_t sub_10085652C()
{

  sub_100857128(&qword_100AD9C80, 255, &type metadata accessor for AnalyticsActor);
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10085669C, v1, v0);
}

uint64_t sub_10085669C()
{
  v1 = *(v0 + 16);

  v2 = type metadata accessor for Storefront();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = *(v0 + 16);
  if (v4 == 1)
  {
    sub_100004F84(*(v0 + 16), &qword_100AF4D60);
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  else
  {
    v6 = Storefront.id.getter();
    v7 = v8;
    (*(v3 + 8))(v5, v2);
  }

  v9 = *(v0 + 8);

  return v9(v6, v7);
}

uint64_t sub_1008567CC()
{
  type metadata accessor for AnalyticsManager(0);
  swift_allocObject();
  result = sub_100856C70();
  qword_100B311C0 = result;
  return result;
}

uint64_t sub_10085680C()
{
  v0 = type metadata accessor for UserIDResetFlag();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for UserDataConfiguration();
  sub_100006118(v1, qword_100B311C8);
  sub_10000617C(v1, qword_100B311C8);
  sub_1000F24EC(&qword_100AF4D68);
  v2 = (sub_1000F24EC(&qword_100ADFF98) - 8);
  v3 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100940080;
  v5 = v4 + v3;
  v6 = v2[14];
  v7 = enum case for Session.Kind.userEvents(_:);
  v8 = type metadata accessor for Session.Kind();
  (*(*(v8 - 8) + 104))(v5, v7, v8);
  if (qword_100AD0B90 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for UserIDConfiguration();
  v10 = sub_10000617C(v9, qword_100B311E0);
  (*(*(v9 - 8) + 16))(v5 + v6, v10, v9);
  sub_100364044(v4);
  swift_setDeallocating();
  sub_100004F84(v5, &qword_100ADFF98);
  swift_deallocClassInstance();
  if (static Runtime.isInternalBuild.getter())
  {
    if (qword_100AD0B98 != -1)
    {
      swift_once();
    }

    v11 = qword_100AF4AF8;
    v12 = String._bridgeToObjectiveC()();
    [v11 BOOLForKey:v12];
  }

  static AppInfo.groupIdentifier.getter();
  UserIDResetFlag.init(suiteName:userDataIDsResetKey:)();
  type metadata accessor for StorefrontProvider();
  swift_allocObject();
  sub_100857128(&qword_100AF4D70, v13, type metadata accessor for StorefrontProvider);
  return UserDataConfiguration.init(userIDConfigurationsByKind:startDateStorage:globalSamplingThreshold:userIDResetFlag:storefrontProvider:now:)();
}

uint64_t sub_100856B98()
{
  v0 = type metadata accessor for UserIDConfiguration();
  sub_100006118(v0, qword_100B311E0);
  sub_10000617C(v0, qword_100B311E0);
  v2[3] = type metadata accessor for DefaultUserIDStorage();
  v2[4] = &protocol witness table for DefaultUserIDStorage;
  sub_10001A770(v2);
  DefaultUserIDStorage.init(accessGroup:)();
  return UserIDConfiguration.init(rotationPeriod:storage:)();
}

id sub_100856C34()
{
  result = [objc_opt_self() standardUserDefaults];
  qword_100AF4AF8 = result;
  return result;
}

uint64_t sub_100856C70()
{
  v1 = v0;
  v2 = type metadata accessor for DenylistDescriptor();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 16) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal16AnalyticsManager_denyList) = &off_100A59158;
  v23 = _swiftEmptyArrayStorage;
  v6 = 5;
  sub_10019A19C(0, 5, 0);
  v7 = v23;
  v8 = &off_100A59180;
  do
  {

    DenylistDescriptor.init(value:)();
    v23 = v7;
    v10 = *(v7 + 16);
    v9 = *(v7 + 24);
    if (v10 >= v9 >> 1)
    {
      sub_10019A19C(v9 > 1, v10 + 1, 1);
      v7 = v23;
    }

    *(v7 + 16) = v10 + 1;
    (*(v3 + 32))(v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, v5, v2);
    v8 += 2;
    --v6;
  }

  while (v6);
  v11 = sub_1008911B4(v7);

  v12 = OBJC_IVAR____TtC7Journal16AnalyticsManager_privacyValidation;
  *(v1 + OBJC_IVAR____TtC7Journal16AnalyticsManager_privacyValidation) = v11;
  v13 = enum case for PrivacyValidation.enabled(_:);
  v14 = type metadata accessor for PrivacyValidation();
  (*(*(v14 - 8) + 104))(v1 + v12, v13, v14);
  if (static Runtime.isInternalBuild.getter())
  {
    if (qword_100AD0B98 != -1)
    {
      swift_once();
    }

    v15 = qword_100AF4AF8;
    v16 = String._bridgeToObjectiveC()();
    LODWORD(v15) = [v15 BOOLForKey:v16];

    if (v15)
    {
      if (qword_100AD0B78 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_10000617C(v17, qword_100AF4AE0);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "**SAMPLING DISABLED**", v20, 2u);
      }
    }
  }

  return v1;
}

uint64_t sub_100856FAC()
{
  v1 = OBJC_IVAR____TtC7Journal16AnalyticsManager_privacyValidation;
  v2 = type metadata accessor for PrivacyValidation();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_100857080()
{
  result = type metadata accessor for PrivacyValidation();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100857128(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_100857184()
{
  result = qword_100AF4D78;
  if (!qword_100AF4D78)
  {
    sub_1000F2A18(&qword_100AF4D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4D78);
  }

  return result;
}

Swift::Int sub_1008571E8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1008572F0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1008573E4()
{
  String.hash(into:)();
}

Swift::Int sub_100857504()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100857608()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1008576F8()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

uint64_t sub_100857954()
{
  String.hash(into:)();
}

unint64_t sub_100857A38@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100857B7C(*a1);
  *a2 = result;
  return result;
}

void sub_100857A68(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x636973756DLL;
  v5 = 0xE400000000000000;
  v6 = 1802465122;
  v7 = 0xE200000000000000;
  v8 = 30324;
  if (v2 != 4)
  {
    v8 = 0xD000000000000010;
    v7 = 0x80000001008DC410;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x74736163646F70;
  if (v2 != 1)
  {
    v9 = 0x656C6369747261;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_100857B28()
{
  result = qword_100AF4D88;
  if (!qword_100AF4D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4D88);
  }

  return result;
}

unint64_t sub_100857B7C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100A56260, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100857BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v6 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = sub_1000F24EC(&qword_100AE4280);
  v4[10] = swift_task_alloc();
  v7 = type metadata accessor for WorkoutIconAssetMetadata();
  v4[11] = v7;
  v4[12] = *(v7 - 8);
  v4[13] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v4[14] = v8;
  v4[15] = v10;

  return _swift_task_switch(sub_100857D60, v8, v10);
}

uint64_t sub_100857D60()
{
  v1 = *(*(v0 + 40) + OBJC_IVAR____TtC7Journal5Asset_context);
  *(v0 + 128) = v1;
  if (v1)
  {
    v3 = *(v0 + 56);
    v2 = *(v0 + 64);
    v4 = *(v0 + 48);
    v5 = swift_allocObject();
    *(v0 + 136) = v5;
    swift_unknownObjectWeakInit();
    (*(v3 + 104))(v2, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v4);
    v1;
    v6 = swift_task_alloc();
    *(v0 + 144) = v6;
    *v6 = v0;
    v6[1] = sub_1008581D8;
    v8 = *(v0 + 72);
    v7 = *(v0 + 80);
    v9 = *(v0 + 64);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v7, v9, sub_10085A380, v5, v8);
  }

  else
  {
    (*(*(v0 + 96) + 56))(*(v0 + 80), 1, 1, *(v0 + 88));
    v10 = *(v0 + 88);
    v11 = *(v0 + 96);
    v12 = *(v0 + 80);
    if ((*(v11 + 48))(v12, 1, v10) == 1)
    {
      sub_100004F84(v12, &qword_100AE4280);

      v13 = *(v0 + 8);

      return v13(0, 0xE000000000000000);
    }

    else
    {
      (*(v11 + 32))(*(v0 + 104), v12, v10);
      WorkoutIconAssetMetadata.duration.getter();
      if (v14 & 1) != 0 && (WorkoutIconAssetMetadata.totalGroupWorkoutDuration.getter(), (v15))
      {
        countAndFlagsBits = 0;
        object = 0;
      }

      else
      {
        static Duration.seconds(_:)();
        v16 = Duration.formatted()();
        countAndFlagsBits = v16._countAndFlagsBits;
        object = v16._object;
      }

      v17 = WorkoutIconAssetMetadata.numberOfWorkouts.getter() < 2;
      v19 = v18 | v17;
      if (v19)
      {
        v20 = 0xD000000000000196;
      }

      else
      {
        v20 = 0;
      }

      if (v19)
      {
        v21 = 0x800000010090BC60;
      }

      else
      {
        v21 = 0xE000000000000000;
      }

      v22 = sub_100858968();
      v24 = v23;
      v25 = WorkoutIconAssetMetadata.numberOfWorkouts.getter();
      v27 = v26;
      *(v0 + 208) = v26;
      *(v0 + 152) = v25;
      v28 = sub_100858AE4(v22, v24);
      v30 = v29;

      v31._countAndFlagsBits = v28;
      v31._object = v30;
      String.append(_:)(v31);

      *(v0 + 160) = v21;
      v32 = WorkoutIconAssetMetadata.calories.getter();
      if (!v33)
      {
        v32 = WorkoutIconAssetMetadata.totalGroupWorkoutCaloriesBurntWithUnit.getter();
      }

      v34 = v32;
      v35 = v33;
      if (v27 & 1 | (v25 < 2))
      {
        v36 = 0;
      }

      else
      {
        v36 = 0x800000010090BE00;
      }

      if (v27 & 1 | (v25 < 2))
      {
        v37 = 0;
      }

      else
      {
        v37 = 0xD000000000000011;
      }

      v38 = WorkoutIconAssetMetadata.distance.getter();
      sub_100858B98(v34, v35, v38, v39, countAndFlagsBits, object);
      *(v0 + 168) = v40;

      v41 = swift_task_alloc();
      *(v0 + 176) = v41;
      *v41 = v0;
      v41[1] = sub_100858668;
      v42 = *(v0 + 32);
      v44 = *(v0 + 16);
      v43 = *(v0 + 24);

      return sub_100847498(v44, v43, v42, 0, 0, v37, v36, v20);
    }
  }
}

uint64_t sub_1008581D8()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[16];
    (*(v2[7] + 8))(v2[8], v2[6]);

    v5 = v2[14];
    v6 = v2[15];

    return _swift_task_switch(sub_10085832C, v5, v6);
  }
}

uint64_t sub_10085832C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100004F84(v3, &qword_100AE4280);

    v4 = *(v0 + 8);

    return v4(0, 0xE000000000000000);
  }

  else
  {
    (*(v2 + 32))(*(v0 + 104), v3, v1);
    WorkoutIconAssetMetadata.duration.getter();
    if (v6 & 1) != 0 && (WorkoutIconAssetMetadata.totalGroupWorkoutDuration.getter(), (v7))
    {
      countAndFlagsBits = 0;
      object = 0;
    }

    else
    {
      static Duration.seconds(_:)();
      v8 = Duration.formatted()();
      countAndFlagsBits = v8._countAndFlagsBits;
      object = v8._object;
    }

    v9 = WorkoutIconAssetMetadata.numberOfWorkouts.getter() < 2;
    v11 = v10 | v9;
    if (v11)
    {
      v12 = 0xD000000000000196;
    }

    else
    {
      v12 = 0;
    }

    if (v11)
    {
      v13 = 0x800000010090BC60;
    }

    else
    {
      v13 = 0xE000000000000000;
    }

    v14 = sub_100858968();
    v16 = v15;
    v17 = WorkoutIconAssetMetadata.numberOfWorkouts.getter();
    v19 = v18;
    *(v0 + 208) = v18;
    *(v0 + 152) = v17;
    v20 = sub_100858AE4(v14, v16);
    v22 = v21;

    v23._countAndFlagsBits = v20;
    v23._object = v22;
    String.append(_:)(v23);

    *(v0 + 160) = v13;
    v24 = WorkoutIconAssetMetadata.calories.getter();
    if (!v25)
    {
      v24 = WorkoutIconAssetMetadata.totalGroupWorkoutCaloriesBurntWithUnit.getter();
    }

    v26 = v24;
    v27 = v25;
    if (v19 & 1 | (v17 < 2))
    {
      v28 = 0;
    }

    else
    {
      v28 = 0x800000010090BE00;
    }

    if (v19 & 1 | (v17 < 2))
    {
      v29 = 0;
    }

    else
    {
      v29 = 0xD000000000000011;
    }

    v30 = WorkoutIconAssetMetadata.distance.getter();
    sub_100858B98(v26, v27, v30, v31, countAndFlagsBits, object);
    *(v0 + 168) = v32;

    v33 = swift_task_alloc();
    *(v0 + 176) = v33;
    *v33 = v0;
    v33[1] = sub_100858668;
    v34 = *(v0 + 32);
    v36 = *(v0 + 16);
    v35 = *(v0 + 24);

    return sub_100847498(v36, v35, v34, 0, 0, v29, v28, v12);
  }
}

uint64_t sub_100858668(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 184) = v2;

  if (v2)
  {

    v7 = v6[14];
    v8 = v6[15];
    v9 = sub_1008588CC;
  }

  else
  {
    v6[24] = a2;
    v6[25] = a1;

    v7 = v6[14];
    v8 = v6[15];
    v9 = sub_100858824;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_100858824()
{
  (*(v0[12] + 8))(v0[13], v0[11]);
  v1 = v0[24];
  v2 = v0[25];

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_1008588CC()
{
  (*(v0[12] + 8))(v0[13], v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100858968()
{
  v0 = WorkoutIconAssetMetadata.numberOfWorkouts.getter();
  if ((v1 & 1) != 0 || (v2 = v0, v0 < 2))
  {
    countAndFlagsBits = WorkoutIconAssetMetadata.type.getter();
    if (!v5)
    {
      v6 = [objc_opt_self() mainBundle];
      v10._object = 0x8000000100900C90;
      v7._countAndFlagsBits = 0x74756F6B726F57;
      v7._object = 0xE700000000000000;
      v8._countAndFlagsBits = 0;
      v8._object = 0xE000000000000000;
      v10._countAndFlagsBits = 0xD000000000000018;
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, countAndFlagsBits, v6, v8, v10)._countAndFlagsBits;
    }
  }

  else
  {
    if (qword_100AD04E8 != -1)
    {
      swift_once();
    }

    sub_1000F24EC(&unk_100AD5B10);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_100940080;
    *(v3 + 56) = &type metadata for Int;
    *(v3 + 64) = &protocol witness table for Int;
    *(v3 + 32) = v2;
    countAndFlagsBits = static String.localizedStringWithFormat(_:_:)();
  }

  return countAndFlagsBits;
}

unint64_t sub_100858AE4(uint64_t a1, void *a2)
{
  v4 = 0xE000000000000000;
  _StringGuts.grow(_:)(38);

  if (a2)
  {
    v4 = a2;
  }

  else
  {
    a1 = 0;
  }

  v5._countAndFlagsBits = a1;
  v5._object = v4;
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x3E7669642F3CLL;
  v6._object = 0xE600000000000000;
  String.append(_:)(v6);
  return 0xD00000000000001ELL;
}

unint64_t sub_100858B98(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  if (a4)
  {
    v10 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v10 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      _StringGuts.grow(_:)(47);

      v32 = 0x800000010090BEB0;
      v11 = a3;
      v12 = a4;
      goto LABEL_11;
    }
  }

  if (a2)
  {
    v13 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v13 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      _StringGuts.grow(_:)(47);

      v32 = 0x800000010090BE80;
      v11 = a1;
      v12 = a2;
LABEL_11:
      String.append(_:)(*&v11);
      v16._countAndFlagsBits = 0x3E6E6170732F3CLL;
      v16._object = 0xE700000000000000;
      String.append(_:)(v16);
      v17 = sub_10009BCC8(0, 1, 1, _swiftEmptyArrayStorage);
      v19 = *(v17 + 2);
      v18 = *(v17 + 3);
      if (v19 >= v18 >> 1)
      {
        v17 = sub_10009BCC8((v18 > 1), v19 + 1, 1, v17);
      }

      *(v17 + 2) = v19 + 1;
      v20 = &v17[16 * v19];
      *(v20 + 4) = 0xD000000000000026;
      *(v20 + 5) = v32;
      if (a6)
      {
        goto LABEL_14;
      }

      goto LABEL_20;
    }
  }

  v17 = _swiftEmptyArrayStorage;
  if (a6)
  {
LABEL_14:
    _StringGuts.grow(_:)(47);

    v21._countAndFlagsBits = a5;
    v21._object = a6;
    String.append(_:)(v21);
    v22._countAndFlagsBits = 0x3E6E6170732F3CLL;
    v22._object = 0xE700000000000000;
    String.append(_:)(v22);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_10009BCC8(0, *(v17 + 2) + 1, 1, v17);
    }

    v24 = *(v17 + 2);
    v23 = *(v17 + 3);
    if (v24 >= v23 >> 1)
    {
      v17 = sub_10009BCC8((v23 > 1), v24 + 1, 1, v17);
    }

    *(v17 + 2) = v24 + 1;
    v25 = &v17[16 * v24];
    *(v25 + 4) = 0xD000000000000026;
    *(v25 + 5) = 0x800000010090BE50;
    goto LABEL_21;
  }

LABEL_20:
  if (*(v17 + 2))
  {
LABEL_21:
    _StringGuts.grow(_:)(41);

    sub_1000F24EC(&qword_100AD60A0);
    sub_10009BDD4();
    v26 = BidirectionalCollection<>.joined(separator:)();
    v28 = v27;

    v29._countAndFlagsBits = v26;
    v29._object = v28;
    String.append(_:)(v29);

    v30._countAndFlagsBits = 0x3E7669642F3CLL;
    v30._object = 0xE600000000000000;
    String.append(_:)(v30);
    return 0xD000000000000021;
  }

  return 0;
}

uint64_t sub_100858EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_10031AED0;

  return sub_100857BC8(a1, a2, a3);
}

double sub_100858F78@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&qword_100AE4280);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for WorkoutIconAssetMetadata();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC7Journal16WorkoutIconAsset_metadata))
  {

    sub_10008F5F4(v5);

    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      v11 = *(v7 + 32);
      v11(v10, v5, v6);
      *(a1 + 24) = v6;
      *(a1 + 32) = sub_10085A338(&qword_100ADA898, &type metadata accessor for WorkoutIconAssetMetadata);
      *(a1 + 40) = sub_10085A338(&qword_100AED0A8, &type metadata accessor for WorkoutIconAssetMetadata);
      v12 = sub_10001A770(a1);
      v11(v12, v10, v6);
      return result;
    }
  }

  else
  {
    (*(v7 + 56))(v5, 1, 1, v6, v8);
  }

  sub_100004F84(v5, &qword_100AE4280);
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

uint64_t sub_1008591B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v6 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = sub_1000F24EC(&qword_100AD5B28);
  v4[10] = swift_task_alloc();
  v7 = type metadata accessor for WorkoutRouteAssetMetadata();
  v4[11] = v7;
  v4[12] = *(v7 - 8);
  v4[13] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v4[14] = v8;
  v4[15] = v10;

  return _swift_task_switch(sub_100859350, v8, v10);
}

uint64_t sub_100859350()
{
  v1 = *(v0[5] + OBJC_IVAR____TtC7Journal5Asset_context);
  v0[16] = v1;
  if (v1)
  {
    v3 = v0[7];
    v2 = v0[8];
    v4 = v0[6];
    v5 = swift_allocObject();
    v0[17] = v5;
    swift_unknownObjectWeakInit();
    (*(v3 + 104))(v2, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v4);
    v1;
    v6 = swift_task_alloc();
    v0[18] = v6;
    *v6 = v0;
    v6[1] = sub_1008596EC;
    v8 = v0[9];
    v7 = v0[10];
    v9 = v0[8];

    return NSManagedObjectContext.perform<A>(schedule:_:)(v7, v9, sub_10085B76C, v5, v8);
  }

  else
  {
    (*(v0[12] + 56))(v0[10], 1, 1, v0[11]);
    v10 = v0[11];
    v11 = v0[12];
    v12 = v0[10];
    if ((*(v11 + 48))(v12, 1, v10) == 1)
    {
      sub_100004F84(v12, &qword_100AD5B28);

      v13 = v0[1];

      return v13(0, 0xE000000000000000);
    }

    else
    {
      (*(v11 + 32))(v0[13], v12, v10);
      WorkoutRouteAssetMetadata.duration.getter();
      static Duration.seconds(_:)();
      v14 = Duration.formatted()();
      v15 = WorkoutRouteAssetMetadata.type.getter();
      v17 = sub_100858AE4(v15, v16);
      v19 = v18;

      v20._countAndFlagsBits = v17;
      v20._object = v19;
      String.append(_:)(v20);

      v0[19] = 0x800000010090BC60;
      v21 = WorkoutRouteAssetMetadata.distance.getter();
      sub_100858B98(0, 0, v21, v22, v14._countAndFlagsBits, v14._object);
      v24 = v23;

      v0[20] = v24;

      v25 = swift_task_alloc();
      v0[21] = v25;
      *v25 = v0;
      v25[1] = sub_100467344;
      v26 = v0[4];
      v28 = v0[2];
      v27 = v0[3];

      return sub_100847498(v28, v27, v26, 0, 0, 0, 0, 0xD000000000000196);
    }
  }
}

uint64_t sub_1008596EC()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[16];
    (*(v2[7] + 8))(v2[8], v2[6]);

    v5 = v2[14];
    v6 = v2[15];

    return _swift_task_switch(sub_100859840, v5, v6);
  }
}

uint64_t sub_100859840()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100004F84(v3, &qword_100AD5B28);

    v4 = v0[1];

    return v4(0, 0xE000000000000000);
  }

  else
  {
    (*(v2 + 32))(v0[13], v3, v1);
    WorkoutRouteAssetMetadata.duration.getter();
    static Duration.seconds(_:)();
    v6 = Duration.formatted()();
    v7 = WorkoutRouteAssetMetadata.type.getter();
    v9 = sub_100858AE4(v7, v8);
    v11 = v10;

    v12._countAndFlagsBits = v9;
    v12._object = v11;
    String.append(_:)(v12);

    v0[19] = 0x800000010090BC60;
    v13 = WorkoutRouteAssetMetadata.distance.getter();
    sub_100858B98(0, 0, v13, v14, v6._countAndFlagsBits, v6._object);
    v16 = v15;

    v0[20] = v16;

    v17 = swift_task_alloc();
    v0[21] = v17;
    *v17 = v0;
    v17[1] = sub_100467344;
    v18 = v0[4];
    v20 = v0[2];
    v19 = v0[3];

    return sub_100847498(v20, v19, v18, 0, 0, 0, 0, 0xD000000000000196);
  }
}

uint64_t sub_100859AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_100859B54;

  return sub_1008591B8(a1, a2, a3);
}

uint64_t sub_100859B54(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = v7[1];

    return v8();
  }

  else
  {
    if (v6[2])
    {
      swift_getObjectType();
      v10 = dispatch thunk of Actor.unownedExecutor.getter();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    v6[5] = a2;
    v6[6] = a1;

    return _swift_task_switch(sub_10085C354, v10, v12);
  }
}

double sub_100859CDC@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1000F24EC(&qword_100AD5B28);
  __chkstk_darwin(v3 - 8);
  v5 = &v31 - v4;
  v6 = type metadata accessor for WorkoutRouteAssetMetadata();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC7Journal17WorkoutRouteAsset_metadata))
  {

    sub_10025B758(v5);

    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      (*(v7 + 32))(v10, v5, v6);
      v38 = sub_10085A020();
      v11 = WorkoutRouteAssetMetadata.type.getter();
      v36 = v12;
      v37 = v11;
      v35 = WorkoutRouteAssetMetadata.duration.getter();
      v34 = v13;
      v14 = _s16WorkoutRouteDataVMa(0);
      *(a1 + 24) = v14;
      *(a1 + 32) = sub_10085A338(&qword_100AF4DA0, _s16WorkoutRouteDataVMa);
      *(a1 + 40) = sub_10085A338(&qword_100AF4DA8, _s16WorkoutRouteDataVMa);
      v15 = sub_10001A770(a1);
      WorkoutRouteAssetMetadata.startTime.getter();
      WorkoutRouteAssetMetadata.endTime.getter();
      v33 = WorkoutRouteAssetMetadata.mindfulnessHeartRate.getter();
      v32 = v16;
      v31 = WorkoutRouteAssetMetadata.caloriesBurnt.getter();
      v18 = v17;
      v19 = WorkoutRouteAssetMetadata.calories.getter();
      v21 = v20;
      v22 = WorkoutRouteAssetMetadata.distance.getter();
      v24 = v23;
      (*(v7 + 8))(v10, v6);
      v26 = v36;
      *v15 = v37;
      v15[1] = v26;
      v15[2] = v35;
      *(v15 + 24) = v34 & 1;
      v27 = v15 + v14[8];
      *v27 = v33;
      v27[8] = v32 & 1;
      v28 = v15 + v14[9];
      *v28 = v31;
      v28[8] = v18 & 1;
      v29 = (v15 + v14[10]);
      *v29 = v19;
      v29[1] = v21;
      v30 = (v15 + v14[11]);
      *v30 = v22;
      v30[1] = v24;
      *(v15 + v14[12]) = v38;
      return result;
    }
  }

  else
  {
    (*(v7 + 56))(v5, 1, 1, v6, v8);
  }

  sub_100004F84(v5, &qword_100AD5B28);
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

size_t sub_10085A020()
{
  v0 = _s10RoutePointVMa(0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = WorkoutRouteAssetMetadata.route.getter();
  v5 = _swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  if (!(v4 >> 62))
  {
    v6 = v4;
    v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_14:

    return v5;
  }

  v6 = v4;
  v7 = _CocoaArrayWrapper.endIndex.getter();
  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_4:
  v25 = _swiftEmptyArrayStorage;
  result = sub_100199CB4(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v5 = v25;
    v10 = v6;
    v24 = v6 & 0xC000000000000001;
    v11 = v6;
    do
    {
      v12 = v7;
      if (v24)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v13 = *(v10 + 8 * v9 + 32);
      }

      v14 = v13;
      [v13 coordinate];
      v16 = v15;
      [v14 coordinate];
      v18 = v17;
      v19 = [v14 timestamp];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      [v14 speed];
      v21 = v20;

      *v3 = v16;
      v3[1] = v18;
      *(v3 + *(v0 + 28)) = v21;
      v25 = v5;
      v23 = *(v5 + 2);
      v22 = *(v5 + 3);
      if (v23 >= v22 >> 1)
      {
        sub_100199CB4(v22 > 1, v23 + 1, 1);
        v5 = v25;
      }

      ++v9;
      *(v5 + 2) = v23 + 1;
      sub_10085B7C8(v3, v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v23);
      v7 = v12;
      v10 = v11;
    }

    while (v12 != v9);
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_10085A288(uint64_t a1)
{
  result = sub_10085A338(&qword_100AF4D90, type metadata accessor for WorkoutRouteAsset);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10085A2E0(uint64_t a1)
{
  result = sub_10085A338(&qword_100AF4D98, type metadata accessor for WorkoutIconAsset);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10085A338(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10085A39C(void *a1)
{
  v3 = sub_1000F24EC(&qword_100AF4F50);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000CA14(a1, a1[3]);
  sub_10085BBA8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    _s10RoutePointVMa(0);
    v8[13] = 2;
    type metadata accessor for Date();
    sub_10085A338(&qword_100AE49A8, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v8[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10085A5E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = type metadata accessor for Date();
  v29 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1000F24EC(&qword_100AF4F40);
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v7 = &v24 - v6;
  v8 = _s10RoutePointVMa(0);
  __chkstk_darwin(v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CA14(a1, a1[3]);
  sub_10085BBA8();
  v31 = v7;
  v11 = v32;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v11)
  {
    return sub_10000BA7C(a1);
  }

  v32 = v8;
  v12 = a1;
  v13 = v28;
  v14 = v29;
  v36 = 0;
  KeyedDecodingContainer.decode(_:forKey:)();
  *v10 = v15;
  v35 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v26 = v10;
  *(v10 + 1) = v16;
  v34 = 2;
  sub_10085A338(&qword_100AE4998, &type metadata accessor for Date);
  v17 = v5;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v18 = v32;
  v19 = *(v14 + 32);
  v20 = v26;
  v25 = *(v32 + 24);
  v19(&v26[v25], v17, v3);
  v33 = 3;
  KeyedDecodingContainer.decode(_:forKey:)();
  v22 = v21;
  (*(v13 + 8))(v31, v30);
  *(v20 + *(v18 + 28)) = v22;
  sub_10085BBFC(v20, v27, _s10RoutePointVMa);
  sub_10000BA7C(v12);
  return sub_10085BC64(v20, _s10RoutePointVMa);
}

unint64_t sub_10085A9BC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 1701869940;
    v6 = 0x6D69547472617473;
    if (a1 != 2)
    {
      v6 = 0x656D6954646E65;
    }

    if (a1)
    {
      v5 = 0x6E6F697461727564;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x736569726F6C6163;
    v2 = 0x65636E6174736964;
    if (a1 != 7)
    {
      v2 = 0x73746E696F70;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000014;
    if (a1 != 4)
    {
      v3 = 0x736569726F6C6163;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_10085AAE0(void *a1)
{
  v3 = v1;
  v5 = sub_1000F24EC(&qword_100AF4F28);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_10000CA14(a1, a1[3]);
  sub_10085BAB8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v10 = _s16WorkoutRouteDataVMa(0);
    LOBYTE(v12) = 2;
    type metadata accessor for Date();
    sub_10085A338(&qword_100AE49A8, &type metadata accessor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v12) = 3;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v12) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v12) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v12) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v12) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = *(v3 + *(v10 + 48));
    v11[15] = 8;
    sub_1000F24EC(&qword_100AF4F10);
    sub_10085BB0C(&qword_100AF4F30, &qword_100AF4F38);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10085AE74@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v3 - 8);
  v5 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v48 - v7;
  v9 = sub_1000F24EC(&qword_100AF4F00);
  v52 = *(v9 - 8);
  v53 = v9;
  __chkstk_darwin(v9);
  v11 = v48 - v10;
  v12 = _s16WorkoutRouteDataVMa(0);
  __chkstk_darwin(v12);
  v14 = (v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[3];
  v55 = a1;
  sub_10000CA14(a1, v15);
  sub_10085BAB8();
  v16 = v11;
  v17 = v54;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    return sub_10000BA7C(v55);
  }

  v18 = v5;
  v20 = v52;
  v19 = v53;
  v54 = v12;
  v50 = v14;
  LOBYTE(v57) = 0;
  v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v23 = v50;
  *v50 = v21;
  v23[1] = v24;
  LOBYTE(v57) = 1;
  v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v49 = 0;
  v23[2] = v25;
  *(v23 + 24) = v26 & 1;
  type metadata accessor for Date();
  LOBYTE(v57) = 2;
  v27 = v8;
  v48[1] = sub_10085A338(&qword_100AE4998, &type metadata accessor for Date);
  v28 = v49;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v49 = v28;
  v29 = v54;
  if (v28)
  {
    (*(v20 + 8))(v16, v19);
    v30 = 0;
    v31 = 0;
  }

  else
  {
    sub_1001679C0(v27, v23 + v54[6]);
    LOBYTE(v57) = 3;
    v32 = v49;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v49 = v32;
    if (v32)
    {
      (*(v20 + 8))(v16, v19);
      v31 = 0;
      v30 = 1;
    }

    else
    {
      sub_1001679C0(v18, v23 + v29[7]);
      LOBYTE(v57) = 4;
      v33 = v49;
      v34 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      if (!v33)
      {
        v36 = v23 + v29[8];
        *v36 = v34;
        v36[8] = v35 & 1;
        LOBYTE(v57) = 5;
        v37 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
        v38 = v23 + v29[9];
        *v38 = v37;
        v38[8] = v39 & 1;
        LOBYTE(v57) = 6;
        v40 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
        v41 = (v23 + v29[10]);
        *v41 = v40;
        v41[1] = v42;
        LOBYTE(v57) = 7;
        v43 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
        v44 = (v23 + v29[11]);
        *v44 = v43;
        v44[1] = v45;
        sub_1000F24EC(&qword_100AF4F10);
        v56 = 8;
        sub_10085BB0C(&qword_100AF4F18, &qword_100AF4F20);
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v20 + 8))(v16, v19);
        v47 = v50;
        v46 = v51;
        *(v50 + v54[12]) = v57;
        sub_10085BBFC(v47, v46, _s16WorkoutRouteDataVMa);
        sub_10000BA7C(v55);
        return sub_10085BC64(v47, _s16WorkoutRouteDataVMa);
      }

      v49 = v33;
      (*(v20 + 8))(v16, v19);
      v30 = 1;
      v31 = 1;
    }
  }

  sub_10000BA7C(v55);

  if (v30)
  {
    result = sub_100004F84(v23 + v29[6], &unk_100AD4790);
    if ((v31 & 1) == 0)
    {
      return result;
    }
  }

  else if (!v31)
  {
    return result;
  }

  return sub_100004F84(v23 + v29[7], &unk_100AD4790);
}

uint64_t sub_10085B534()
{
  v1 = 0x656475746974616CLL;
  v2 = 0x6D617473656D6974;
  if (*v0 != 2)
  {
    v2 = 0x6465657073;
  }

  if (*v0)
  {
    v1 = 0x64757469676E6F6CLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10085B5B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10085BEF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10085B5E0(uint64_t a1)
{
  v2 = sub_10085BBA8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10085B61C(uint64_t a1)
{
  v2 = sub_10085BBA8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10085B690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10085C060(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10085B6C4(uint64_t a1)
{
  v2 = sub_10085BAB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10085B700(uint64_t a1)
{
  v2 = sub_10085BAB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10085B7C8(uint64_t a1, uint64_t a2)
{
  v4 = _s10RoutePointVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10085B854()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_10085B8F8()
{
  sub_10000A394(319, &qword_100AD5A70);
  if (v0 <= 0x3F)
  {
    sub_10000A394(319, &qword_100AE04F8);
    if (v1 <= 0x3F)
    {
      sub_10085BA54(319, &qword_100AD59F0, &type metadata accessor for Date, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_10085BA54(319, &unk_100AF4EB0, _s10RoutePointVMa, &type metadata accessor for Array);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10085BA54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_10085BAB8()
{
  result = qword_100AF4F08;
  if (!qword_100AF4F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4F08);
  }

  return result;
}

uint64_t sub_10085BB0C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000F2A18(&qword_100AF4F10);
    sub_10085A338(a2, _s10RoutePointVMa);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10085BBA8()
{
  result = qword_100AF4F48;
  if (!qword_100AF4F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4F48);
  }

  return result;
}

uint64_t sub_10085BBFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10085BC64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10085BCE8()
{
  result = qword_100AF4F58;
  if (!qword_100AF4F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4F58);
  }

  return result;
}

unint64_t sub_10085BD40()
{
  result = qword_100AF4F60;
  if (!qword_100AF4F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4F60);
  }

  return result;
}

unint64_t sub_10085BD98()
{
  result = qword_100AF4F68;
  if (!qword_100AF4F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4F68);
  }

  return result;
}

unint64_t sub_10085BDF0()
{
  result = qword_100AF4F70;
  if (!qword_100AF4F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4F70);
  }

  return result;
}

unint64_t sub_10085BE48()
{
  result = qword_100AF4F78;
  if (!qword_100AF4F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4F78);
  }

  return result;
}

unint64_t sub_10085BEA0()
{
  result = qword_100AF4F80;
  if (!qword_100AF4F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4F80);
  }

  return result;
}

uint64_t sub_10085BEF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6465657073 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_10085C060(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D69547472617473 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D6954646E65 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x800000010090BF00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x736569726F6C6163 && a2 == 0xED0000746E727542 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x736569726F6C6163 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x65636E6174736964 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x73746E696F70 && a2 == 0xE600000000000000)
  {

    return 8;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

id sub_10085C358()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  v3 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v0];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:defaultValue:table:bundle:locale:comment:)();
  v4 = String._bridgeToObjectiveC()();

  [v3 setTitle:v4];

  [v3 setHidesSharedBackground:1];
  swift_unknownObjectWeakAssign();
  v5 = [v3 creatingFixedGroup];

  return v5;
}

id sub_10085C520()
{
  v1 = v0;
  v2 = [objc_allocWithZone(_UINavigationBarPalette) init];
  [v2 setMinimumHeight:0.0];
  [v2 setPreferredHeight:52.0];
  v3 = v2;
  [v3 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraLarge];
  v4 = [objc_allocWithZone(_UIScrollPocketInteraction) initWithStyle:0];
  [v3 addInteraction:v4];

  v5 = [v3 contentView];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [v3 contentView];
  [v6 addSubview:v1];

  v45 = objc_opt_self();
  sub_1000F24EC(&unk_100AD4780);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100957D10;
  v8 = [v3 contentView];
  v9 = [v8 topAnchor];

  v10 = [v3 topAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];

  *(v7 + 32) = v11;
  v12 = [v3 contentView];
  v13 = [v12 leadingAnchor];

  v14 = [v3 leadingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v7 + 40) = v15;
  v16 = [v3 contentView];
  v17 = [v16 bottomAnchor];

  v18 = [v3 bottomAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v7 + 48) = v19;
  v20 = [v3 contentView];
  v21 = [v20 trailingAnchor];

  v22 = [v3 trailingAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];

  *(v7 + 56) = v23;
  v24 = [v1 topAnchor];
  v25 = [v3 contentView];
  v26 = [v25 topAnchor];

  v27 = [v24 constraintEqualToAnchor:v26 constant:18.0];
  *(v7 + 64) = v27;
  v28 = [v1 bottomAnchor];
  v29 = [v3 contentView];
  v30 = [v29 bottomAnchor];

  v31 = [v28 constraintEqualToAnchor:v30];
  type metadata accessor for UILayoutPriority(0);
  sub_1001E80F8();
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  LODWORD(v32) = v46;
  [v31 setPriority:v32];
  *(v7 + 72) = v31;
  v33 = [v1 centerXAnchor];
  v34 = [v3 contentView];
  v35 = [v34 layoutMarginsGuide];

  v36 = [v35 centerXAnchor];
  v37 = [v33 constraintEqualToAnchor:v36];

  *(v7 + 80) = v37;
  v38 = [v1 leadingAnchor];
  v39 = [v3 contentView];
  v40 = [v39 layoutMarginsGuide];

  v41 = [v40 leadingAnchor];
  v42 = [v38 constraintGreaterThanOrEqualToAnchor:v41];

  *(v7 + 88) = v42;
  sub_1001AD130();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v45 activateConstraints:isa];

  return v3;
}

uint64_t sub_10085CB24()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  return v1;
}

id sub_10085CC84(double a1, double a2, double a3, double a4)
{
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for UIView.Invalidations.Configuration();
  __chkstk_darwin(v11);
  v12 = sub_1000F24EC(&qword_100AEE538);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v23 - v14;
  v16 = OBJC_IVAR____TtC7Journal24CanvasDateTitleBarButton__isRolloverActive;
  v25 = 0;
  UIView.Invalidations.Configuration.init()();
  UIView.Invalidating.init(wrappedValue:_:)();
  (*(v13 + 32))(&v4[v16], v15, v12);
  swift_unknownObjectWeakInit();
  v17 = type metadata accessor for CanvasDateTitleBarButton();
  v24.receiver = v4;
  v24.super_class = v17;
  v18 = objc_msgSendSuper2(&v24, "initWithFrame:", a1, a2, a3, a4);
  [v18 setRole:1];
  [v18 setPreferredBehavioralStyle:1];
  v19 = [objc_allocWithZone(UIHoverGestureRecognizer) initWithTarget:v18 action:"updateRolloverActive:"];
  [v18 addGestureRecognizer:v19];

  v20 = v18;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:defaultValue:table:bundle:locale:comment:)();
  v21 = String._bridgeToObjectiveC()();

  [v20 setAccessibilityLabel:v21];

  return v20;
}

uint64_t sub_10085D020(void *a1)
{
  v3 = type metadata accessor for UIView.Invalidations.Configuration();
  __chkstk_darwin(v3);
  v4 = sub_1000F24EC(&qword_100AEE538);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-v6];
  v8 = OBJC_IVAR____TtC7Journal24CanvasDateTitleBarButton__isRolloverActive;
  v10[15] = 0;
  UIView.Invalidations.Configuration.init()();
  UIView.Invalidating.init(wrappedValue:_:)();

  (*(v5 + 32))(v1 + v8, v7, v4);
  swift_unknownObjectWeakInit();
  (*(v5 + 8))(v1 + v8, v4);
  swift_unknownObjectWeakDestroy();
  type metadata accessor for CanvasDateTitleBarButton();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_10085D244()
{
  v1 = v0;
  v2 = type metadata accessor for UIButton.Configuration.Size();
  v40 = *(v2 - 8);
  v41 = v2;
  __chkstk_darwin(v2);
  v39 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000F24EC(&qword_100AF4FD0);
  __chkstk_darwin(v4 - 8);
  v6 = &v39 - v5;
  v7 = sub_1000F24EC(&qword_100AD4E08);
  __chkstk_darwin(v7 - 8);
  v9 = &v39 - v8;
  v10 = sub_1000F24EC(&qword_100AE4250);
  __chkstk_darwin(v10 - 8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v39 - v14;
  v16 = type metadata accessor for UIButton.Configuration();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIButton.Configuration.borderless()();
  UIButton.configuration.getter();
  if (!(*(v17 + 48))(v15, 1, v16))
  {
    UIButton.Configuration.title.getter();
  }

  sub_1001F5544(v15);
  UIButton.Configuration.title.setter();
  v20 = [objc_opt_self() secondaryLabelColor];
  UIButton.Configuration.baseForegroundColor.setter();
  UIButton.Configuration.imagePadding.setter();
  v21 = [v0 traitCollection];
  v22 = [v21 userInterfaceIdiom];

  v23 = String._bridgeToObjectiveC()();
  v24 = [objc_opt_self() systemImageNamed:v23];

  UIButton.Configuration.image.setter();
  if (v22 == 5)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static UIView.Invalidating.subscript.getter();

    v25 = v42;
    v26 = [v1 isEnabled];
    v27 = swift_allocObject();
    *(v27 + 16) = v25;
    *(v27 + 17) = v26;
    UIConfigurationColorTransformer.init(_:)();
    v28 = type metadata accessor for UIConfigurationColorTransformer();
    (*(*(v28 - 8) + 56))(v9, 0, 1, v28);
    UIButton.Configuration.imageColorTransformer.setter();
    v29 = [objc_opt_self() configurationWithPointSize:7 weight:2 scale:15.0];
    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
    UIConfigurationTextAttributesTransformer.init(_:)();
    v30 = type metadata accessor for UIConfigurationTextAttributesTransformer();
    (*(*(v30 - 8) + 56))(v6, 0, 1, v30);
    UIButton.Configuration.titleTextAttributesTransformer.setter();
    UIButton.Configuration.imagePlacement.setter();
  }

  else
  {
    v31 = [objc_opt_self() configurationWithScale:1];
    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
    v32 = [v1 isEnabled];
    *(swift_allocObject() + 16) = v32;
    UIConfigurationColorTransformer.init(_:)();
    v33 = type metadata accessor for UIConfigurationColorTransformer();
    (*(*(v33 - 8) + 56))(v9, 0, 1, v33);
    UIButton.Configuration.imageColorTransformer.setter();
    v34 = [v1 isEnabled];
    *(swift_allocObject() + 16) = v34;
    UIConfigurationTextAttributesTransformer.init(_:)();
    v35 = type metadata accessor for UIConfigurationTextAttributesTransformer();
    (*(*(v35 - 8) + 56))(v6, 0, 1, v35);
    UIButton.Configuration.titleTextAttributesTransformer.setter();
    (*(v40 + 104))(v39, enum case for UIButton.Configuration.Size.small(_:), v41);
    UIButton.Configuration.buttonSize.setter();
  }

  (*(v17 + 16))(v12, v19, v16);
  (*(v17 + 56))(v12, 0, 1, v16);
  UIButton.configuration.setter();
  UIButton.Configuration.title.getter();
  if (v36)
  {
    v37 = String._bridgeToObjectiveC()();
  }

  else
  {
    v37 = 0;
  }

  [v1 setAccessibilityValue:v37];

  return (*(v17 + 8))(v19, v16);
}

id sub_10085D9B4(void *a1, char a2, char a3)
{
  if (a2 & 1) != 0 && (a3)
  {

    return a1;
  }

  else
  {
    v6 = [objc_opt_self() clearColor];

    return v6;
  }
}

uint64_t sub_10085DA0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributeContainer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  sub_100047788(UIFontTextStyleTitle3, &off_100A5B3B0, 0);
  sub_100047D60(&unk_100A5B3D0);
  sub_10005C484();
  AttributeContainer.subscript.setter();
  [objc_opt_self() labelColor];
  sub_10054457C();
  return AttributeContainer.subscript.setter();
}

id sub_10085DB08(void *a1, char a2)
{
  if (a2)
  {

    return a1;
  }

  else
  {
    v5 = [objc_opt_self() secondaryLabelColor];

    return v5;
  }
}

uint64_t sub_10085DB5C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AttributeContainer();
  result = (*(*(v6 - 8) + 16))(a3, a1, v6);
  if ((a2 & 1) == 0)
  {
    [objc_opt_self() secondaryLabelColor];
    sub_10054457C();
    return AttributeContainer.subscript.setter();
  }

  return result;
}

id sub_10085DD08()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanvasDateTitleBarButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10085DDD0@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_10085DE50(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static UIView.Invalidating.subscript.setter();
}

id sub_10085DEDC(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v30 = a1;
  v2 = type metadata accessor for ColorResource();
  v33 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = OBJC_IVAR____TtC7Journal24FollowUpPromptAttachment_stringAttributes;
  sub_1000F24EC(&unk_100AD9200);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100940050;
  *(inited + 32) = NSFontAttributeName;
  sub_1000F24EC(&unk_100ADFBF0);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_100940080;
  *(v6 + 32) = UIFontWeightBold;
  *(v6 + 40) = 0;
  *(v6 + 48) = 3;
  v7 = NSFontAttributeName;
  v8 = sub_100047788(UIFontTextStyleBody, v6, 0);
  swift_setDeallocating();
  sub_100047D60(v6 + 32);
  v9 = sub_1000065A8(0, &qword_100AD2A78);
  *(inited + 40) = v8;
  *(inited + 64) = v9;
  *(inited + 72) = NSForegroundColorAttributeName;
  v10 = sub_1000065A8(0, &qword_100AD4C70);
  v11 = qword_100AD0BE0;
  v12 = NSForegroundColorAttributeName;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = sub_10000617C(v2, qword_100B312B0);
  v14 = *(v33 + 16);
  v14(v4, v13, v2);
  v15 = UIColor.init(resource:)();
  v16 = [v15 colorWithProminence:1];

  *(inited + 104) = v10;
  *(inited + 80) = v16;
  v17 = sub_10007BDBC(inited);
  swift_setDeallocating();
  sub_1000F24EC(&unk_100AD9210);
  swift_arrayDestroy();
  v18 = v32;
  *&v32[v29] = v17;
  v19 = &v18[OBJC_IVAR____TtC7Journal24FollowUpPromptAttachment_prompt];
  v20 = v31;
  *v19 = v30;
  *(v19 + 1) = v20;
  v21 = type metadata accessor for FollowUpPromptAttachment();
  v34.receiver = v18;
  v34.super_class = v21;
  v22 = objc_msgSendSuper2(&v34, "initWithFrame:textContainer:", 0, 0.0, 0.0, 0.0, 0.0);
  v14(v4, v13, v2);
  v23 = v22;
  v24 = UIColor.init(resource:)();
  v25 = [v24 colorWithProminence:2];

  [v23 setTextColor:v25];
  v26 = v23;
  [v26 setUserInteractionEnabled:0];
  [v26 setScrollEnabled:0];

  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v26 setEditable:0];
  [v26 setAdjustsFontForContentSizeCategory:1];

  return v26;
}

uint64_t sub_10085E324(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = objc_allocWithZone(NSAttributedString);
  v7 = String._bridgeToObjectiveC()();
  type metadata accessor for Key(0);
  sub_1000806F8();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v9 = [v6 initWithString:v7 attributes:isa];

  v10 = [objc_allocWithZone(UIView) init];
  v11 = [a3 textInputView];
  [v11 bounds];
  v13 = v12;
  v15 = v14;

  v16 = [a3 textContainer];
  [v16 size];
  v18 = v17;
  v20 = v19;

  [v10 setBounds:{v13, v15, v18, v20}];
  [v9 size];
  [v10 sizeThatFits:?];
  [a4 sizeThatFits:?];
  [a3 frame];
  CGRectGetWidth(v25);
  [a3 textContainerInset];
  [a3 textContainerInset];

  return DebugData.init(name:)(*&v21).name._countAndFlagsBits;
}

void sub_10085E534(char a1)
{
  v3 = objc_allocWithZone(NSAttributedString);
  v4 = String._bridgeToObjectiveC()();
  type metadata accessor for Key(0);
  sub_1000806F8();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v6 = [v3 initWithString:v4 attributes:isa];

  if (a1)
  {
    [v1 _insertAttributedText:v6 withAnimation:2 completion:0];
    [v1 replaceAnimatedTextPlaceholderWith:v6];
    [v1 removeAnimatedTextPlaceholders];
  }

  else
  {
    [v1 insertAttributedText:v6];
  }

  [v1 sizeToFit];
}

id sub_10085E6AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FollowUpPromptAttachment();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10085E754()
{
  v1 = v0;
  v2 = type metadata accessor for ColorResource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC7Journal24FollowUpPromptAttachment_stringAttributes;
  sub_1000F24EC(&unk_100AD9200);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100940050;
  *(inited + 32) = NSFontAttributeName;
  sub_1000F24EC(&unk_100ADFBF0);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_100940080;
  *(v8 + 32) = UIFontWeightBold;
  *(v8 + 40) = 0;
  *(v8 + 48) = 3;
  v9 = NSFontAttributeName;
  v10 = sub_100047788(UIFontTextStyleBody, v8, 0);

  v11 = sub_1000065A8(0, &qword_100AD2A78);
  *(inited + 40) = v10;
  *(inited + 64) = v11;
  *(inited + 72) = NSForegroundColorAttributeName;
  v12 = sub_1000065A8(0, &qword_100AD4C70);
  v13 = qword_100AD0BE0;
  v14 = NSForegroundColorAttributeName;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = sub_10000617C(v2, qword_100B312B0);
  (*(v3 + 16))(v5, v15, v2);
  v16 = UIColor.init(resource:)();
  v17 = [v16 colorWithProminence:1];

  *(inited + 104) = v12;
  *(inited + 80) = v17;
  v18 = sub_10007BDBC(inited);

  *(v1 + v6) = v18;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t type metadata accessor for InsightsCurrentStreakView()
{
  result = qword_100AF5068;
  if (!qword_100AF5068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10085EA74()
{
  sub_10085EE08(319, &unk_100AF5078, type metadata accessor for StreakSummary, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for InsightsSetScheduleAction();
    if (v1 <= 0x3F)
    {
      sub_10085EED0(319, &qword_100AD1FF8, &type metadata for Int, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_10085EED0(319, qword_100AD9860, &type metadata for InsightsLayoutMetrics.Style, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_10085EE6C(319, &qword_100ADB010, &qword_100ADB018, &unk_10094AB70, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            sub_10085EED0(319, &qword_100ADB020, &type metadata for Bool, &type metadata accessor for Environment);
            if (v5 <= 0x3F)
            {
              sub_10085EE08(319, &qword_100AF70F0, &type metadata accessor for Calendar, &type metadata accessor for Environment);
              if (v6 <= 0x3F)
              {
                sub_10085EE08(319, &unk_100AF4730, &type metadata accessor for RedactionReasons, &type metadata accessor for Environment);
                if (v7 <= 0x3F)
                {
                  sub_10085EE08(319, &qword_100AD9938, type metadata accessor for InsightsDataManager, &type metadata accessor for Environment);
                  if (v8 <= 0x3F)
                  {
                    sub_10085EE08(319, &qword_100AE2750, &type metadata accessor for WithCurrentHostingControllerAction, &type metadata accessor for Environment);
                    if (v9 <= 0x3F)
                    {
                      sub_10085EE6C(319, &qword_100AF4590, &qword_100AF3268, &unk_10096AB58, &type metadata accessor for AppStorage);
                      if (v10 <= 0x3F)
                      {
                        sub_1001E6300();
                        if (v11 <= 0x3F)
                        {
                          type metadata accessor for InsightsTipViewModel();
                          if (v12 <= 0x3F)
                          {
                            sub_10085EED0(319, &qword_100AE6910, &type metadata for InsightsLayoutMetrics, &type metadata accessor for Environment);
                            if (v13 <= 0x3F)
                            {
                              swift_cvw_initStructMetadataWithLayoutString();
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_10085EE08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10085EE6C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1000F2A18(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_10085EED0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_10085EF3C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Font.TextStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StreakSummary();
  (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  v7 = type metadata accessor for InsightsCurrentStreakView();
  v8 = v7[5];
  *(a1 + v8) = swift_getKeyPath();
  sub_1000F24EC(&qword_100AE27A0);
  swift_storeEnumTagMultiPayload();
  v9 = v7[6];
  v24[1] = 0;
  State.init(wrappedValue:)();
  *(a1 + v9) = v25;
  v10 = a1 + v7[7];
  *v10 = swift_getKeyPath();
  *(v10 + 8) = 0;
  v11 = a1 + v7[8];
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  v12 = a1 + v7[9];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = v7[10];
  *(a1 + v13) = swift_getKeyPath();
  sub_1000F24EC(&qword_100AD9990);
  swift_storeEnumTagMultiPayload();
  v14 = v7[11];
  *(a1 + v14) = swift_getKeyPath();
  sub_1000F24EC(&qword_100AE27B8);
  swift_storeEnumTagMultiPayload();
  v15 = a1 + v7[12];
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  v16 = a1 + v7[13];
  type metadata accessor for InsightsDataManager(0);
  sub_1000408A0(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
  *v16 = Environment.init<A>(_:)();
  *(v16 + 8) = v17 & 1;
  v18 = v7[14];
  *(a1 + v18) = swift_getKeyPath();
  sub_1000F24EC(&qword_100AE27B0);
  swift_storeEnumTagMultiPayload();
  v19 = v7[15];
  sub_10015DDCC();
  *(a1 + v19) = AppStorage.init<A>(_:store:)();
  *&v25 = 0x4055000000000000;
  (*(v3 + 104))(v5, enum case for Font.TextStyle.subheadline(_:), v2);
  sub_10009BA68();
  ScaledMetric.init(wrappedValue:relativeTo:)();
  *(a1 + v7[17]) = 0x405B800000000000;
  sub_1003D8578((a1 + v7[18]));
  v20 = a1 + v7[19];
  KeyPath = swift_getKeyPath();
  LOBYTE(v25) = 0;
  *v20 = KeyPath;
  *(v20 + 104) = 0;
  v22 = v7[20];
  result = static Font.caption.getter();
  *(a1 + v22) = result;
  return result;
}

uint64_t sub_10085F2E8@<X0>(uint64_t a1@<X8>)
{
  v150 = a1;
  v151 = type metadata accessor for AccessibilityChildBehavior();
  v149 = *(v151 - 8);
  __chkstk_darwin(v151);
  v148 = &v120 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000F24EC(&qword_100AF51C0);
  __chkstk_darwin(v3 - 8);
  v130 = &v120 - v4;
  v129 = sub_1000F24EC(&qword_100AF51C8);
  __chkstk_darwin(v129);
  v132 = &v120 - v5;
  v131 = sub_1000F24EC(&qword_100AF51D0);
  __chkstk_darwin(v131);
  v134 = &v120 - v6;
  v128 = sub_1000F24EC(&qword_100AF51D8);
  __chkstk_darwin(v128);
  v140 = &v120 - v7;
  v133 = sub_1000F24EC(&qword_100AD0DF8);
  __chkstk_darwin(v133);
  v137 = &v120 - v8;
  v9 = sub_1000F24EC(&qword_100AF51E0);
  v141 = *(v9 - 8);
  v142 = v9;
  __chkstk_darwin(v9);
  v138 = &v120 - v10;
  v135 = sub_1000F24EC(&qword_100AF51E8);
  __chkstk_darwin(v135);
  v139 = &v120 - v11;
  v136 = sub_1000F24EC(&qword_100AF51F0);
  __chkstk_darwin(v136);
  v144 = &v120 - v12;
  v143 = sub_1000F24EC(&qword_100AF51F8);
  __chkstk_darwin(v143);
  v145 = &v120 - v13;
  v146 = sub_1000F24EC(&qword_100AF5200);
  __chkstk_darwin(v146);
  v147 = &v120 - v14;
  v15 = type metadata accessor for RedactionReasons();
  v125 = *(v15 - 8);
  v126 = v15;
  __chkstk_darwin(v15);
  v124 = &v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v123 = &v120 - v18;
  v19 = sub_1000F24EC(&qword_100AF3270);
  __chkstk_darwin(v19 - 8);
  v21 = &v120 - v20;
  v22 = type metadata accessor for StreakSummary();
  v155 = *(v22 - 8);
  __chkstk_darwin(v22);
  v122 = &v120 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v158 = &v120 - v25;
  v127 = type metadata accessor for InsightsDataManager.Streaks(0);
  __chkstk_darwin(v127);
  v121 = &v120 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v120 - v28;
  v30 = type metadata accessor for EnvironmentValues();
  v153 = *(v30 - 8);
  v154 = v30;
  __chkstk_darwin(v30);
  v152 = &v120 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for InsightsCurrentStreakView();
  v32 = *(v156 + 52);
  v159 = v1;
  v33 = (v1 + v32);
  v34 = *v33;
  v35 = *(v33 + 8);

  v36 = v34;
  if ((v35 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v37 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v38 = v152;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v153 + 8))(v38, v154);
    v36 = v161[0];
  }

  swift_getKeyPath();
  v161[0] = v36;
  sub_1000408A0(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v39 = OBJC_IVAR____TtC7Journal19InsightsDataManager__streaks;
  swift_beginAccess();
  sub_10086D374(v36 + v39, v29, type metadata accessor for InsightsDataManager.Streaks);

  v40 = v156;
  sub_1000F24EC(&qword_100AF3268);
  AppStorage.wrappedValue.getter();
  v157 = LOBYTE(v161[0]);
  if (LOBYTE(v161[0]) == 2)
  {
    v41 = *(v22 + 28);
    if (*&v29[*(v127 + 20) + v41] >= 2)
    {
      v42 = *&v29[v41];
      sub_10086D688(v29, type metadata accessor for InsightsDataManager.Streaks);
      v157 = v42 < 3;
    }

    else
    {
      sub_10086D688(v29, type metadata accessor for InsightsDataManager.Streaks);
      v157 = 0;
    }
  }

  else
  {
    sub_10086D688(v29, type metadata accessor for InsightsDataManager.Streaks);
  }

  v43 = v155;
  sub_1000082B4(v159, v21, &qword_100AF3270);
  v46 = *(v43 + 48);
  v44 = v43 + 48;
  v45 = v46;
  if (v46(v21, 1, v22) == 1)
  {
    v155 = v44;

    if ((v35 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v47 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v48 = v152;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v153 + 8))(v48, v154);
      v34 = v161[0];
    }

    swift_getKeyPath();
    v161[0] = v34;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v49 = OBJC_IVAR____TtC7Journal19InsightsDataManager__streaks;
    swift_beginAccess();
    v50 = v121;
    sub_10086D374(v34 + v49, v121, type metadata accessor for InsightsDataManager.Streaks);

    v51 = v50;
    if (v157)
    {
      v51 = v50 + *(v127 + 20);
    }

    v52 = v122;
    sub_10086D374(v51, v122, type metadata accessor for StreakSummary);
    sub_10086D688(v50, type metadata accessor for InsightsDataManager.Streaks);
    v53 = v158;
    sub_100041EE4(v52, v158, type metadata accessor for StreakSummary);
    v54 = v45(v21, 1, v22);
    v55 = v130;
    v40 = v156;
    if (v54 != 1)
    {
      sub_100004F84(v21, &qword_100AF3270);
    }
  }

  else
  {
    v53 = v158;
    sub_100041EE4(v21, v158, type metadata accessor for StreakSummary);
    v55 = v130;
  }

  if (*(v53 + *(v22 + 28)) >= 2)
  {
    v60 = 0;
    v56 = v159;
  }

  else
  {
    v56 = v159;
    v57 = v123;
    sub_1003D89F4(v123);
    sub_1000408A0(&qword_100AD2220, &type metadata accessor for RedactionReasons);
    v58 = v124;
    v59 = v126;
    dispatch thunk of SetAlgebra.init()();
    sub_1000408A0(&qword_100AF4798, &type metadata accessor for RedactionReasons);
    v60 = dispatch thunk of static Equatable.== infix(_:_:)();
    v61 = *(v125 + 8);
    v61(v58, v59);
    v61(v57, v59);
    v40 = v156;
  }

  *v55 = static HorizontalAlignment.center.getter();
  *(v55 + 1) = 0;
  v55[16] = 0;
  v62 = sub_1000F24EC(&qword_100AF5208);
  sub_100860774(v56, v60 & 1, v53, v157 & 1, &v55[*(v62 + 44)]);
  v63 = v56 + *(v40 + 32);
  v65 = *v63;
  v64 = *(v63 + 8);
  v66 = *(v63 + 16);
  LODWORD(v130) = *(v63 + 17);
  if (v130 == 1)
  {

    v67 = v65;
    v68 = v66;
    v69 = v64;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v70 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v71 = v152;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100280C78(v65, v64, v66, 0);
    (*(v153 + 8))(v71, v154);
    v67 = v161[0];
    v69 = v161[1];
    v68 = v161[2];
  }

  v161[0] = v67;
  v161[1] = v69;
  LOBYTE(v161[2]) = v68;
  v127 = sub_1000F24EC(&qword_100ADB018);
  Binding.wrappedValue.getter();
  v72 = LOBYTE(v166[0]);

  v156 = v64;
  LODWORD(v155) = v66;
  if (v72)
  {
    sub_1008694EC();
  }

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v73 = v55;
  v74 = v132;
  sub_100021CEC(v73, v132, &qword_100AF51C0);
  v75 = (v74 + *(v129 + 36));
  v76 = v173;
  v75[4] = v172;
  v75[5] = v76;
  v75[6] = v174;
  v77 = v169;
  *v75 = v168;
  v75[1] = v77;
  v78 = v171;
  v75[2] = v170;
  v75[3] = v78;
  KeyPath = swift_getKeyPath();
  v80 = v134;
  sub_100021CEC(v74, v134, &qword_100AF51C8);
  v81 = v80 + *(v131 + 36);
  *v81 = KeyPath;
  *(v81 + 8) = 1;
  v82 = v140;
  v83 = &v140[*(v128 + 36)];
  v84 = enum case for BlendMode.plusDarker(_:);
  v85 = type metadata accessor for BlendMode();
  v86 = *(*(v85 - 8) + 104);
  v86(v83, v84, v85);
  v87 = sub_1000F24EC(&qword_100AF5210);
  v86(&v83[*(v87 + 40)], enum case for BlendMode.plusLighter(_:), v85);
  sub_100021CEC(v80, v82, &qword_100AF51D0);
  v88 = v137;
  v89 = &v137[*(v133 + 36)];
  v90 = *(sub_1000F24EC(&qword_100AD20A8) + 28);
  v91 = enum case for ColorScheme.dark(_:);
  v92 = type metadata accessor for ColorScheme();
  (*(*(v92 - 8) + 104))(v89 + v90, v91, v92);
  *v89 = swift_getKeyPath();
  sub_100021CEC(v82, v88, &qword_100AF51D8);
  v93 = v138;
  sub_100021CEC(v88, v138, &qword_100AD0DF8);
  *(v93 + *(sub_1000F24EC(&qword_100AD0E00) + 36)) = 256;
  v94 = swift_getKeyPath();
  v95 = v139;
  (*(v141 + 32))(v139, v93, v142);
  v96 = &v95[*(v135 + 36)];
  *v96 = v94;
  v96[8] = 2;
  LOBYTE(v94) = sub_1008694EC();
  v97 = swift_getKeyPath();
  v98 = v95;
  v99 = v144;
  sub_100021CEC(v98, v144, &qword_100AF51E8);
  v100 = v99 + *(v136 + 36);
  *v100 = v97;
  *(v100 + 8) = v94 & 1;
  v101 = swift_getKeyPath();
  v102 = static Alignment.center.getter();
  v104 = v103;
  sub_1008697CC(v157 & 1, v158, v56, v161);
  memcpy(v163, v161, sizeof(v163));
  memcpy(v164, v161, sizeof(v164));
  sub_1000082B4(v163, v166, &qword_100AF5218);
  v105 = v158;
  sub_100004F84(v164, &qword_100AF5218);
  memcpy(v167, v163, sizeof(v167));
  v165[0] = v102;
  v165[1] = v104;
  memcpy(&v165[2], v163, 0x148uLL);
  memcpy(v161, v165, sizeof(v161));
  v162 = 256;
  v166[0] = v102;
  v166[1] = v104;
  sub_1000082B4(v165, v160, &qword_100AF5220);
  sub_100004F84(v166, &qword_100AF5220);
  sub_1000F24EC(&qword_100AF5228);
  sub_10086C238();
  v106 = AnyView.init<A>(_:)();
  v107 = v145;
  sub_100021CEC(v99, v145, &qword_100AF51F0);
  v108 = (v107 + *(v143 + 36));
  *v108 = v101;
  v108[1] = v106;
  v109 = static Animation.spring(response:dampingFraction:blendDuration:)();
  v110 = v147;
  v111 = &v147[*(v146 + 36)];
  v112 = sub_1000F24EC(&qword_100AF5240);
  sub_10086D374(v105, v111 + *(v112 + 36), type metadata accessor for StreakSummary);
  *v111 = v109;
  sub_100021CEC(v107, v110, &qword_100AF51F8);
  if (v130)
  {

    v113 = v156;

    v114 = v148;
    v115 = v155;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v116 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v117 = v152;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100280C78(v65, v156, v155, 0);
    (*(v153 + 8))(v117, v154);
    v65 = v161[0];
    v113 = v161[1];
    v115 = v161[2];
    v114 = v148;
  }

  v161[0] = v65;
  v161[1] = v113;
  LOBYTE(v161[2]) = v115;
  Binding.wrappedValue.getter();
  v118 = v160[0];

  if (v118 && (sub_1008694EC() & 1) == 0)
  {
    static AccessibilityChildBehavior.combine.getter();
  }

  else
  {
    static AccessibilityChildBehavior.contain.getter();
  }

  sub_10086C31C();
  View.accessibilityElement(children:)();
  (*(v149 + 8))(v114, v151);
  sub_100004F84(v110, &qword_100AF5200);
  return sub_10086D688(v105, type metadata accessor for StreakSummary);
}

uint64_t sub_100860774@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v170 = a4;
  v187 = a5;
  v188 = a3;
  v186 = sub_1000F24EC(&qword_100AF52C8);
  __chkstk_darwin(v186);
  v175 = &v150[-v7];
  v8 = type metadata accessor for Font.Leading();
  v157 = *(v8 - 8);
  v158 = v8;
  __chkstk_darwin(v8);
  v156 = &v150[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v173 = _s19DurationFormatStyleVMa(0);
  __chkstk_darwin(v173);
  v172 = &v150[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for StreakSummary();
  __chkstk_darwin(v11 - 8);
  v171 = &v150[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v166 = type metadata accessor for AccessibilityChildBehavior();
  v164 = *(v166 - 8);
  __chkstk_darwin(v166);
  v163 = &v150[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1000F24EC(&qword_100AF52D0);
  __chkstk_darwin(v14 - 8);
  v161 = &v150[-v15];
  v160 = sub_1000F24EC(&qword_100AF52D8);
  __chkstk_darwin(v160);
  v159 = &v150[-v16];
  v165 = sub_1000F24EC(&qword_100AF52E0);
  __chkstk_darwin(v165);
  v162 = &v150[-v17];
  v18 = sub_1000F24EC(&qword_100AF52E8);
  v168 = *(v18 - 8);
  v169 = v18;
  __chkstk_darwin(v18);
  v167 = &v150[-v19];
  v20 = sub_1000F24EC(&qword_100AF52F0);
  __chkstk_darwin(v20 - 8);
  v174 = &v150[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v180 = &v150[-v23];
  v24 = type metadata accessor for EnvironmentValues();
  v177 = *(v24 - 8);
  v178 = v24;
  __chkstk_darwin(v24);
  v176 = &v150[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v179 = sub_1000F24EC(&qword_100AF52F8);
  __chkstk_darwin(v179);
  v183 = &v150[-v26];
  v182 = sub_1000F24EC(&qword_100AF5300);
  __chkstk_darwin(v182);
  v28 = &v150[-v27];
  v29 = sub_1000F24EC(&qword_100AF5308);
  __chkstk_darwin(v29 - 8);
  v31 = &v150[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v32);
  v34 = &v150[-v33];
  v35 = sub_1000F24EC(&qword_100AF5310);
  __chkstk_darwin(v35 - 8);
  v185 = &v150[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v37);
  v184 = &v150[-v38];
  v39 = sub_1000F24EC(&qword_100AF5318);
  __chkstk_darwin(v39 - 8);
  v41 = &v150[-v40];
  v42 = sub_1000F24EC(&qword_100AF5320);
  __chkstk_darwin(v42);
  v181 = &v150[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v44);
  v46 = &v150[-v45];
  __chkstk_darwin(v47);
  v190 = &v150[-v48];
  *v41 = static VerticalAlignment.center.getter();
  *(v41 + 1) = 0;
  v41[16] = 1;
  v49 = &v41[*(sub_1000F24EC(&qword_100AF5328) + 44)];
  v189 = a1;
  sub_100861B48(a1, a2, v188, v49);
  if (a2)
  {
    sub_100862F00();
  }

  static Alignment.top.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_100021CEC(v41, v46, &qword_100AF5318);
  v50 = &v46[*(v42 + 36)];
  v51 = v212;
  *v50 = v211;
  v50[1] = v51;
  v50[2] = v213;
  sub_100021CEC(v46, v190, &qword_100AF5320);
  if (a2)
  {
    *v34 = static HorizontalAlignment.center.getter();
    *(v34 + 1) = 0x4018000000000000;
    v34[16] = 0;
    v52 = sub_1000F24EC(&qword_100AF5388);
    sub_100865B48(v189, &v34[*(v52 + 44)]);
    sub_1000082B4(v34, v31, &qword_100AF5308);
    *v28 = 0;
    v28[8] = 0;
    v53 = sub_1000F24EC(&qword_100AF5390);
    sub_1000082B4(v31, &v28[*(v53 + 48)], &qword_100AF5308);
    v54 = &v28[*(v53 + 64)];
    *v54 = 0;
    v54[8] = 0;
    sub_100004F84(v31, &qword_100AF5308);
    sub_1000082B4(v28, v183, &qword_100AF5300);
    swift_storeEnumTagMultiPayload();
    sub_10000B58C(&qword_100AF5370, &qword_100AF5300);
    sub_10000B58C(&qword_100AF5378, &qword_100AF52C8);
    v55 = v184;
    _ConditionalContent<>.init(storage:)();
    sub_100004F84(v28, &qword_100AF5300);
    v56 = v34;
    v57 = &qword_100AF5308;
  }

  else
  {
    v58 = type metadata accessor for InsightsCurrentStreakView();
    v59 = v189;
    v60 = v189 + *(v58 + 32);
    v62 = *v60;
    v61 = *(v60 + 8);
    v63 = *(v60 + 16);
    v64 = *(v60 + 17);

    if (v64 == 1)
    {

      v65 = v62;
      v66 = v63;
      v67 = v61;
    }

    else
    {
      static os_log_type_t.fault.getter();
      v68 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v69 = v176;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100280C78(v62, v61, v63, 0);
      (*(v177 + 8))(v69, v178);
      v67 = *(&v201 + 1);
      v65 = v201;
      v66 = v202;
    }

    *&v201 = v65;
    *(&v201 + 1) = v67;
    LOBYTE(v202) = v66;
    v70 = sub_1000F24EC(&qword_100ADB018);
    Binding.wrappedValue.getter();
    v71 = LOBYTE(v200[0]);

    v72 = 0x4028000000000000;
    if (v71 && (sub_1008694EC() & 1) == 0)
    {
      v72 = 0;
    }

    v155 = v72;

    if (v64)
    {

      v73 = v62;
      v74 = v63;
      v75 = v61;
    }

    else
    {
      static os_log_type_t.fault.getter();
      v76 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v77 = v176;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100280C78(v62, v61, v63, 0);
      (*(v177 + 8))(v77, v178);
      v75 = *(&v201 + 1);
      v73 = v201;
      v74 = v202;
    }

    *&v201 = v73;
    *(&v201 + 1) = v75;
    LOBYTE(v202) = v74;
    Binding.wrappedValue.getter();
    v78 = LOBYTE(v200[0]);

    v79 = 0xC030000000000000;
    v154 = v61;
    v153 = v63;
    v152 = v70;
    v151 = v64;
    if (v78 && (sub_1008694EC() & 1) == 0)
    {
      v79 = 0xC022000000000000;
    }

    v80 = static HorizontalAlignment.center.getter();
    v81 = v161;
    *v161 = v80;
    *(v81 + 8) = v79;
    *(v81 + 16) = 0;
    v82 = sub_1000F24EC(&qword_100AF5330);
    v83 = v170 & 1;
    v84 = (v81 + *(v82 + 44));
    v85 = v59;
    v86 = v188;
    sub_100866FFC(v85, v188, v170 & 1, v84);
    KeyPath = swift_getKeyPath();
    v88 = v159;
    sub_100021CEC(v81, v159, &qword_100AF52D0);
    v89 = &v88[*(v160 + 36)];
    *v89 = KeyPath;
    *(v89 + 1) = 1;
    v89[16] = 0;
    v90 = v162;
    sub_100021CEC(v88, v162, &qword_100AF52D8);
    v91 = v163;
    static AccessibilityChildBehavior.ignore.getter();
    v92 = sub_10086C934();
    v93 = v167;
    v94 = v165;
    View.accessibilityElement(children:)();
    (*(v164 + 8))(v91, v166);
    sub_100004F84(v90, &qword_100AF52E0);
    sub_10086D374(v86, v171, type metadata accessor for StreakSummary);
    v95 = v172;
    static Locale.autoupdatingCurrent.getter();
    v170 = v83;
    *v95 = v83;
    sub_1000408A0(&qword_100AF5350, _s19DurationFormatStyleVMa);
    sub_1000408A0(&qword_100AF5358, type metadata accessor for StreakSummary);
    v96 = Text.init<A>(_:format:)();
    v98 = v97;
    LOBYTE(v83) = v99;
    *&v201 = v94;
    *(&v201 + 1) = v92;
    swift_getOpaqueTypeConformance2();
    v100 = v169;
    View.accessibilityLabel(_:)();
    sub_1000594D0(v96, v98, v83 & 1);

    (*(v168 + 8))(v93, v100);
    if (v151)
    {
      v101 = v154;
      v208 = v62;
      v209 = v154;
      v102 = v153;
      v210 = v153;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v103 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v104 = v176;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100280C78(v62, v154, v153, 0);
      (*(v177 + 8))(v104, v178);
      v62 = v208;
      v101 = v209;
      v102 = v210;
    }

    *&v201 = v62;
    *(&v201 + 1) = v101;
    LOBYTE(v202) = v102;
    Binding.wrappedValue.getter();
    v105 = LOBYTE(v200[0]);

    if (v105 && (sub_1008694EC() & 1) == 0)
    {
      v206 = 0u;
      v207 = 0u;
      v204 = 0u;
      v205 = 0u;
      v202 = 0u;
      v203 = 0u;
      v201 = 0u;
    }

    else
    {
      v189 = sub_1008682A0(v188, v170);
      v107 = v106;
      v109 = v108;
      v111 = v110;
      v112 = static HierarchicalShapeStyle.tertiary.getter();
      static Font.footnote.getter();
      v114 = v156;
      v113 = v157;
      v115 = v158;
      (*(v157 + 104))(v156, enum case for Font.Leading.tight(_:), v158);
      v116 = Font.leading(_:)();

      (*(v113 + 8))(v114, v115);
      v117 = swift_getKeyPath();
      v118 = static Edge.Set.horizontal.getter();
      EdgeInsets.init(_all:)();
      v120 = v119;
      v122 = v121;
      v124 = v123;
      v126 = v125;
      LOBYTE(v201) = 0;
      if (qword_100ACFCE8 != -1)
      {
        swift_once();
      }

      static AnyTransition.offset(x:y:)();
      v127 = AnyTransition.combined(with:)();

      *&v201 = v189;
      *(&v201 + 1) = v107;
      *&v202 = v109;
      *(&v202 + 1) = v111;
      LODWORD(v203) = v112;
      *(&v203 + 1) = v117;
      *&v204 = v116;
      BYTE8(v204) = v118;
      *&v205 = v120;
      *(&v205 + 1) = v122;
      *&v206 = v124;
      *(&v206 + 1) = v126;
      LOBYTE(v207) = 0;
      *(&v207 + 1) = v127;
    }

    v128 = v180;
    v129 = v174;
    sub_1000082B4(v180, v174, &qword_100AF52F0);
    v196 = v205;
    v197 = v206;
    v198 = v207;
    v192 = v201;
    v193 = v202;
    v194 = v203;
    v195 = v204;
    v130 = v175;
    *v175 = v155;
    *(v130 + 8) = 0;
    v131 = sub_1000F24EC(&qword_100AF5360);
    sub_1000082B4(v129, v130 + v131[12], &qword_100AF52F0);
    v132 = v130 + v131[16];
    *v132 = 0x4024000000000000;
    *(v132 + 8) = 0;
    v133 = (v130 + v131[20]);
    v134 = v193;
    v199[0] = v192;
    v199[1] = v193;
    v135 = v194;
    v199[2] = v194;
    v199[3] = v195;
    v199[4] = v196;
    v199[5] = v197;
    v136 = v198;
    v199[6] = v198;
    v200[0] = v192;
    v137 = v193;
    *v133 = v192;
    v133[1] = v137;
    v138 = v196;
    v140 = v196;
    v139 = v197;
    v133[5] = v197;
    v133[6] = v136;
    v142 = v194;
    v141 = v195;
    v143 = v195;
    v133[2] = v135;
    v133[3] = v141;
    v133[4] = v138;
    v200[1] = v134;
    v200[2] = v142;
    v200[5] = v139;
    v200[6] = v198;
    v200[3] = v143;
    v200[4] = v140;
    sub_1000082B4(&v201, v191, &qword_100AF5368);
    sub_1000082B4(v199, v191, &qword_100AF5368);
    sub_100004F84(v200, &qword_100AF5368);
    sub_100004F84(v129, &qword_100AF52F0);
    sub_1000082B4(v130, v183, &qword_100AF52C8);
    swift_storeEnumTagMultiPayload();
    sub_10000B58C(&qword_100AF5370, &qword_100AF5300);
    sub_10000B58C(&qword_100AF5378, &qword_100AF52C8);
    v55 = v184;
    _ConditionalContent<>.init(storage:)();
    sub_100004F84(&v201, &qword_100AF5368);
    sub_100004F84(v130, &qword_100AF52C8);
    v56 = v128;
    v57 = &qword_100AF52F0;
  }

  sub_100004F84(v56, v57);
  v144 = v190;
  v145 = v181;
  sub_1000082B4(v190, v181, &qword_100AF5320);
  v146 = v185;
  sub_1000082B4(v55, v185, &qword_100AF5310);
  v147 = v187;
  sub_1000082B4(v145, v187, &qword_100AF5320);
  v148 = sub_1000F24EC(&qword_100AF5380);
  sub_1000082B4(v146, v147 + *(v148 + 48), &qword_100AF5310);
  sub_100004F84(v55, &qword_100AF5310);
  sub_100004F84(v144, &qword_100AF5320);
  sub_100004F84(v146, &qword_100AF5310);
  return sub_100004F84(v145, &qword_100AF5320);
}

uint64_t sub_100861B48@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v124 = a3;
  LODWORD(v4) = a2;
  v152 = a4;
  v6 = sub_1000F24EC(&qword_100AF5448);
  v164 = *(v6 - 8);
  v165 = v6;
  __chkstk_darwin(v6);
  v147 = (&v116 - v7);
  v146 = type metadata accessor for PopoverAttachmentAnchor();
  v145 = *(v146 - 8);
  __chkstk_darwin(v146);
  v144 = (&v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for InsightsCurrentStreakView();
  v141 = *(v9 - 8);
  __chkstk_darwin(v9);
  v142 = v10;
  v143 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for AccessibilityTraits();
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v128 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_1000F24EC(&qword_100AF5450);
  v122 = *(v123 - 8);
  __chkstk_darwin(v123);
  v121 = &v116 - v12;
  v126 = sub_1000F24EC(&qword_100AF5458);
  __chkstk_darwin(v126);
  v127 = &v116 - v13;
  v14 = sub_1000F24EC(&qword_100AF5460);
  __chkstk_darwin(v14);
  v125 = &v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v116 - v17;
  v139 = sub_1000F24EC(&qword_100AF5468);
  v138 = *(v139 - 8);
  __chkstk_darwin(v139);
  v135 = &v116 - v19;
  v134 = sub_1000F24EC(&qword_100AF5470);
  __chkstk_darwin(v134);
  v140 = &v116 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v132 = &v116 - v22;
  __chkstk_darwin(v23);
  v137 = &v116 - v24;
  v25 = sub_1000F24EC(&qword_100AF5478);
  __chkstk_darwin(v25 - 8);
  v163 = &v116 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v116 - v28;
  v30 = type metadata accessor for Font.Leading();
  v153 = *(v30 - 8);
  __chkstk_darwin(v30);
  v32 = &v116 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for EnvironmentValues();
  v151 = *(v148 - 8);
  __chkstk_darwin(v148);
  v150 = &v116 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_100862F00();
  v149 = v4;
  if (v34)
  {
    v35 = a1 + *(v9 + 36);
    v36 = *v35;
    if (*(v35 + 8) == 1)
    {
      if ((v36 & 1) == 0)
      {
LABEL_4:
        static Alignment.center.getter();
        _FrameLayout.init(width:height:alignment:)();
        v161 = 0;
        v160 = v174;
        v159 = v176;
        v158 = v178;
        v157 = v179;
        v169 = 1;
        v168 = v175;
        v167 = v177;
        v156 = 1;
        v155 = v175;
        v154 = v177;
        v162 = 1;
        v170 = 1;
        LOBYTE(v171) = 0;
        goto LABEL_7;
      }
    }

    else
    {

      static os_log_type_t.fault.getter();
      v37 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v4 = v150;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000467F0(v36, 0);
      v38 = v4;
      LOBYTE(v4) = v149;
      (*(v151 + 8))(v38, v148);
      if ((v174 & 1) == 0)
      {
        goto LABEL_4;
      }
    }
  }

  v156 = 0;
  v160 = 0;
  v155 = 0;
  v159 = 0;
  v154 = 0;
  v158 = 0;
  v157 = 0;
  v162 = 0;
  v161 = 1;
LABEL_7:
  v166 = v29;
  v136 = v18;
  v133 = v14;
  v131 = v9;
  if ((v4 & 1) == 0)
  {
    LocalizedStringKey.init(stringLiteral:)();
    LOWORD(v115) = 2;
    v114 = 26;
    v46 = Text.init(_:tableName:bundle:comment:)();
    v48 = v47;
    v120 = a1;
    v50 = v49;
    LODWORD(v171) = static HierarchicalShapeStyle.secondary.getter();
    v51 = Text.foregroundStyle<A>(_:)();
    v53 = v52;
    v55 = v54;
    sub_1000594D0(v46, v48, v50 & 1);

    static Font.headline.getter();
    v56 = v153;
    (*(v153 + 104))(v32, enum case for Font.Leading.tight(_:), v30);
    Font.leading(_:)();

    (*(v56 + 8))(v32, v30);
    v39 = Text.font(_:)();
    v40 = v57;
    LOBYTE(v56) = v58;
    v60 = v59;

    v61 = v51;
    v42 = v60;
    sub_1000594D0(v61, v53, v55 & 1);

    KeyPath = swift_getKeyPath();
    v41 = v56 & 1;
    v29 = v166;
    a1 = v120;
    sub_1000F24DC(v39, v40, v41);

    v153 = 1;
    v44 = sub_100862F00();
    if ((v44 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_11:
    v116 = v41;
    v117 = KeyPath;
    v118 = v42;
    v119 = v40;
    v120 = v39;
    __chkstk_darwin(v44);
    v62 = v124;
    *(&v116 - 4) = a1;
    *(&v116 - 3) = v62;
    __chkstk_darwin(v63);
    v114 = a1;
    sub_1000F24EC(&qword_100AF5488);
    v64 = a1;
    sub_1000F24EC(&qword_100AF5490);
    sub_10086CFD4();
    sub_10000B58C(&qword_100AF54B0, &qword_100AF5490);
    v65 = v121;
    Menu.init(content:label:)();
    sub_10000B58C(&qword_100AF54B8, &qword_100AF5450);
    sub_10086D0B8();
    v66 = v127;
    v67 = v123;
    View.buttonStyle<A>(_:)();
    (*(v122 + 8))(v65, v67);
    if (qword_100ACFCE8 != -1)
    {
      swift_once();
    }

    static AnyTransition.offset(x:y:)();
    v68 = AnyTransition.combined(with:)();

    *(v66 + *(v126 + 36)) = v68;
    v69 = v128;
    static AccessibilityTraits.isButton.getter();
    sub_10086D10C();
    v70 = v125;
    View.accessibilityRemoveTraits(_:)();
    (*(v129 + 8))(v69, v130);
    sub_100004F84(v66, &qword_100AF5458);
    v71 = v136;
    v72 = v133;
    ModifiedContent<>.accessibilitySortPriority(_:)();
    sub_100004F84(v70, &qword_100AF5460);
    v73 = v131;
    v74 = v64 + *(v131 + 28);
    v75 = *v74;
    v76 = v64;
    v77 = v150;
    if (*(v74 + 8) == 1)
    {
      v40 = v119;
      if (*v74 != 2 && *v74 != 3)
      {
        goto LABEL_22;
      }
    }

    else
    {

      static os_log_type_t.fault.getter();
      v78 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000467F0(v75, 0);
      v79 = v151 + 8;
      v80 = *(v151 + 8);
      v80(v77, v148);
      v40 = v119;
      if (v171 != 2)
      {

        static os_log_type_t.fault.getter();
        v81 = static Log.runtimeIssuesLog.getter();
        v151 = v79;
        v82 = v81;
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_1000467F0(v75, 0);
        v80(v77, v148);
        if (v171 != 3)
        {
          goto LABEL_22;
        }
      }
    }

    v83 = v76 + *(v73 + 72);
    v84 = type metadata accessor for InsightsTipViewModel();
    v85 = v83 + *(v84 + 32);
    v86 = *v85;
    v87 = *(v85 + 8);
    LOBYTE(v171) = v86;
    *(&v171 + 1) = v87;
    sub_1000F24EC(&qword_100AD2640);
    State.wrappedValue.getter();
    if (v170)
    {
      v88 = *(v83 + *(v84 + 28));
      *(&v172 + 1) = &type metadata for InsightsTip;
      v173 = sub_10031F03C();
      LOBYTE(v171) = v88;
LABEL_23:
      v89 = v143;
      sub_10086D374(v76, v143, type metadata accessor for InsightsCurrentStreakView);
      v90 = (*(v141 + 80) + 16) & ~*(v141 + 80);
      v91 = swift_allocObject();
      sub_100041EE4(v89, v91 + v90, type metadata accessor for InsightsCurrentStreakView);
      v92 = static Anchor.Source<A>.bounds.getter();
      v93 = v144;
      *v144 = v92;
      v94 = v145;
      v95 = v146;
      (*(v145 + 104))(v93, enum case for PopoverAttachmentAnchor.rect(_:), v146);
      v96 = sub_10086D2B8();
      v114 = v72;
      v115 = v96;
      v97 = v135;
      View.popoverTip(_:isPresented:attachmentAnchor:arrowEdge:action:)();

      (*(v94 + 8))(v93, v95);
      sub_100004F84(v71, &qword_100AF5460);
      sub_100004F84(&v171, &qword_100AF54D8);
      v98 = swift_getKeyPath();
      v99 = v132;
      (*(v138 + 32))(v132, v97, v139);
      v100 = v99 + *(v134 + 36);
      *v100 = v98;
      *(v100 + 8) = 0;
      v101 = v137;
      sub_100021CEC(v99, v137, &qword_100AF5470);
      v102 = v140;
      sub_1000082B4(v101, v140, &qword_100AF5470);
      v103 = v147;
      *v147 = 0;
      *(v103 + 8) = 1;
      v104 = sub_1000F24EC(&qword_100AF54E0);
      sub_1000082B4(v102, v103 + *(v104 + 48), &qword_100AF5470);
      sub_100004F84(v101, &qword_100AF5470);
      sub_100004F84(v102, &qword_100AF5470);
      v29 = v166;
      sub_100021CEC(v103, v166, &qword_100AF5448);
      v45 = 0;
      v39 = v120;
      v42 = v118;
      KeyPath = v117;
      v41 = v116;
      goto LABEL_24;
    }

LABEL_22:
    v173 = 0;
    v171 = 0u;
    v172 = 0u;
    goto LABEL_23;
  }

  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  KeyPath = 0;
  v153 = 0;
  v44 = sub_100862F00();
  if (v44)
  {
    goto LABEL_11;
  }

LABEL_9:
  v45 = 1;
LABEL_24:
  (*(v164 + 56))(v29, v45, 1, v165);
  v105 = v163;
  sub_1000082B4(v29, v163, &qword_100AF5478);
  v106 = v152;
  v107 = v156;
  *v152 = 0;
  v106[1] = v107;
  v108 = v155;
  v106[2] = v160;
  v106[3] = v108;
  v109 = v154;
  v106[4] = v159;
  v106[5] = v109;
  v110 = v157;
  v106[6] = v158;
  v106[7] = v110;
  v106[8] = 0;
  *(v106 + 72) = v162;
  *(v106 + 73) = v161;
  v106[10] = v39;
  v106[11] = v40;
  v106[12] = v41;
  v106[13] = v42;
  v111 = v153;
  v106[14] = KeyPath;
  v106[15] = v111;
  *(v106 + 128) = 0;
  v112 = sub_1000F24EC(&qword_100AF5480);
  sub_1000082B4(v105, v106 + *(v112 + 64), &qword_100AF5478);
  sub_10086CF20(v39, v40, v41, v42);
  sub_10086CF70(v39, v40, v41, v42);
  sub_100004F84(v166, &qword_100AF5478);
  sub_100004F84(v105, &qword_100AF5478);
  return sub_10086CF70(v39, v40, v41, v42);
}

uint64_t sub_100862F00()
{
  v1 = v0;
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for InsightsCurrentStreakView();
  v7 = v0 + *(v6 + 32);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  if (*(v7 + 17) == 1)
  {
  }

  else
  {

    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100280C78(v8, v9, v10, 0);
    (*(v3 + 8))(v5, v2);
    v8 = v19;
    v9 = v20;
    LOBYTE(v10) = v21;
  }

  v19 = v8;
  v20 = v9;
  v21 = v10;
  sub_1000F24EC(&qword_100ADB018);
  Binding.wrappedValue.getter();
  v12 = v18[7];

  if (v12 && (sub_1008694EC() & 1) == 0)
  {
    v16 = 0;
  }

  else
  {
    v13 = v1 + *(v6 + 48);
    v14 = *v13;
    if (*(v13 + 8) != 1)
    {

      static os_log_type_t.fault.getter();
      v15 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000467F0(v14, 0);
      (*(v3 + 8))(v5, v2);
      LOBYTE(v14) = v19;
    }

    v16 = v14 ^ 1;
  }

  return v16 & 1;
}

uint64_t sub_10086318C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char *a4@<X8>)
{
  v115 = a3;
  v104 = a2;
  v119 = a4;
  v5 = sub_1000F24EC(&qword_100AF54F8);
  __chkstk_darwin(v5 - 8);
  v108 = v93 - v6;
  v107 = sub_1000F24EC(&qword_100AF5500);
  __chkstk_darwin(v107);
  v106 = v93 - v7;
  v117 = sub_1000F24EC(&qword_100AF5508);
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v105 = v93 - v8;
  v9 = sub_1000F24EC(&qword_100AF5510);
  __chkstk_darwin(v9 - 8);
  v133 = v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v134 = v93 - v12;
  v137 = type metadata accessor for Divider();
  v118 = *(v137 - 8);
  __chkstk_darwin(v137);
  v132 = v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v136 = v93 - v15;
  v16 = type metadata accessor for InsightsCurrentStreakView();
  v93[0] = *(v16 - 8);
  __chkstk_darwin(v16);
  v93[1] = v17;
  v94 = v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_1000F24EC(&qword_100AF5518);
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v95 = v93 - v18;
  v101 = type metadata accessor for DateComponents();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v97 = v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for Calendar();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v102 = v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v21 - 8);
  v103 = v93 - v22;
  v111 = type metadata accessor for Date();
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v96 = v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v109 = v93 - v25;
  v26 = sub_1000F24EC(&qword_100AF5520);
  __chkstk_darwin(v26 - 8);
  v131 = v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v130 = v93 - v29;
  v30 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v30 - 8);
  v120 = v93 - v31;
  v121 = type metadata accessor for OpenSensitiveURLAction.Destination();
  __chkstk_darwin(v121);
  v33 = v93 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1000F24EC(&qword_100AF5528);
  v128 = *(v34 - 8);
  v129 = v34;
  __chkstk_darwin(v34);
  v135 = v93 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v123 = v93 - v37;
  v127 = sub_1000F24EC(&qword_100AF5530);
  v126 = *(v127 - 8);
  __chkstk_darwin(v127);
  v125 = v93 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v41 = v93 - v40;
  v112 = v16;
  v122 = a1;
  sub_1000F24EC(&qword_100AF3268);
  AppStorage.projectedValue.getter();
  static Animation.spring(response:dampingFraction:blendDuration:)();
  sub_1000F24EC(&qword_100AF5538);
  Binding.animation(_:)();

  v139 = v142;
  v140 = v143;
  v141 = v144;
  sub_100864E38(&v138);
  sub_1000F24EC(&qword_100AF5540);
  sub_1000F24EC(&qword_100AF5548);
  sub_10000B58C(&qword_100AF5550, &qword_100AF5540);
  sub_10086D4D8();
  v42 = v120;
  sub_10000B58C(&qword_100AF5568, &qword_100AF5548);
  v124 = v41;
  Picker.init(selection:label:content:)();
  swift_storeEnumTagMultiPayload();
  sub_1008B4384(v42);
  sub_10086D688(v33, type metadata accessor for OpenSensitiveURLAction.Destination);
  v43 = type metadata accessor for URL();
  result = (*(*(v43 - 8) + 48))(v42, 1, v43);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  sub_1000F24EC(&qword_100AF5570);
  sub_10000B58C(&qword_100AF5578, &qword_100AF5570);
  v45 = v123;
  Link.init(sensitiveUrl:label:)();
  v46 = v122;
  v138 = *&v122[*(v112 + 24)];
  sub_1000F24EC(&qword_100AD2148);
  State.wrappedValue.getter();
  if (!v142)
  {
    v47 = type metadata accessor for StreakSummary();
    v48 = v103;
    sub_1000082B4(v104 + *(v47 + 24), v103, &unk_100AD4790);
    v49 = v110;
    v50 = v111;
    if ((*(v110 + 48))(v48, 1, v111) != 1)
    {
      (*(v49 + 32))(v109, v48, v50);
      sub_100048878(v102);
      v75 = v96;
      static Date.now.getter();
      sub_1000F24EC(&qword_100AD3BF0);
      v76 = type metadata accessor for Calendar.Component();
      v77 = *(v76 - 8);
      v78 = (*(v77 + 80) + 32) & ~*(v77 + 80);
      v79 = swift_allocObject();
      *(v79 + 16) = xmmword_100940080;
      (*(v77 + 104))(v79 + v78, enum case for Calendar.Component.day(_:), v76);
      sub_10005FF80(v79);
      swift_setDeallocating();
      (*(v77 + 8))(v79 + v78, v76);
      v80 = v110;
      swift_deallocClassInstance();
      v81 = v97;
      v82 = v102;
      Calendar.dateComponents(_:from:to:)();

      v83 = DateComponents.day.getter();
      LOBYTE(v79) = v84;
      v85 = v81;
      v86 = v111;
      (*(v100 + 8))(v85, v101);
      v87 = *(v80 + 8);
      v87(v75, v86);
      (*(v98 + 8))(v82, v99);
      if ((v79 & 1) != 0 || v83)
      {
        v87(v109, v86);
        v51 = 1;
        v52 = v117;
        v53 = v130;
        v54 = v114;
        v55 = v113;
        v46 = v122;
      }

      else
      {
        v46 = v122;
        v88 = v94;
        sub_10086D374(v122, v94, type metadata accessor for InsightsCurrentStreakView);
        v89 = (*(v93[0] + 80) + 16) & ~*(v93[0] + 80);
        v90 = swift_allocObject();
        sub_100041EE4(v88, v90 + v89, type metadata accessor for InsightsCurrentStreakView);
        v91 = v95;
        Button.init(action:label:)();
        v87(v109, v86);
        v55 = v113;
        v53 = v130;
        v92 = v114;
        (*(v113 + 32))(v130, v91, v114);
        v54 = v92;
        v51 = 0;
        v52 = v117;
      }

      goto LABEL_6;
    }

    sub_100004F84(v48, &unk_100AD4790);
  }

  v51 = 1;
  v52 = v117;
  v53 = v130;
  v54 = v114;
  v55 = v113;
LABEL_6:
  v56 = 1;
  (*(v55 + 56))(v53, v51, 1, v54);
  Divider.init()();
  v57 = v116;
  if ((v115 & 1) == 0)
  {
    sub_10086AA84(v46);
    sub_10086554C();
    sub_10000B58C(&qword_100AF5580, &qword_100AF5500);
    v58 = v105;
    ShareLink<>.init<A>(item:subject:message:preview:)();
    (*(v57 + 32))(v134, v58, v52);
    v56 = 0;
  }

  v59 = v134;
  (*(v57 + 56))(v134, v56, 1, v52);
  v60 = *(v126 + 16);
  v61 = v125;
  v62 = v127;
  v60(v125, v124, v127);
  v122 = *(v128 + 16);
  (v122)(v135, v45, v129);
  v63 = v131;
  sub_1000082B4(v53, v131, &qword_100AF5520);
  v64 = v118;
  v121 = *(v118 + 16);
  v121(v132, v136, v137);
  sub_1000082B4(v59, v133, &qword_100AF5510);
  v65 = v119;
  v60(v119, v61, v62);
  v66 = sub_1000F24EC(&qword_100AF5588);
  v67 = v129;
  (v122)(&v65[v66[12]], v135, v129);
  sub_1000082B4(v63, &v65[v66[16]], &qword_100AF5520);
  v68 = v132;
  v69 = v137;
  v121(&v65[v66[20]], v132, v137);
  v70 = v133;
  sub_1000082B4(v133, &v65[v66[24]], &qword_100AF5510);
  sub_100004F84(v134, &qword_100AF5510);
  v71 = *(v64 + 8);
  v71(v136, v69);
  sub_100004F84(v130, &qword_100AF5520);
  v72 = *(v128 + 8);
  v72(v123, v67);
  v73 = *(v126 + 8);
  v74 = v127;
  v73(v124, v127);
  sub_100004F84(v70, &qword_100AF5510);
  v71(v68, v137);
  sub_100004F84(v131, &qword_100AF5520);
  v72(v135, v67);
  return (v73)(v125, v74);
}

uint64_t sub_1008644D0@<X0>(uint64_t a1@<X8>)
{
  v78 = a1;
  v74 = sub_1000F24EC(&qword_100AF5598);
  v77 = *(v74 - 8);
  __chkstk_darwin(v74);
  v76 = &v62 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v75 = &v62 - v3;
  __chkstk_darwin(v4);
  v73 = (&v62 - v5);
  __chkstk_darwin(v6);
  v84 = (&v62 - v7);
  v8 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v8 - 8);
  v81 = sub_1000F24EC(&qword_100AD0E08);
  v64 = *(v81 - 8);
  __chkstk_darwin(v81);
  v63 = &v62 - v9;
  v71 = sub_1000F24EC(&qword_100AF55A0);
  v72 = *(v71 - 8);
  __chkstk_darwin(v71);
  v79 = &v62 - v10;
  v11 = sub_1000F24EC(&qword_100AF55A8);
  __chkstk_darwin(v11 - 8);
  v85 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v80 = &v62 - v14;
  LocalizedStringKey.init(stringLiteral:)();
  v15 = Text.init(_:tableName:bundle:comment:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  LocalizedStringKey.init(stringLiteral:)();
  v82 = Text.init(_:tableName:bundle:comment:)();
  v83 = v22;
  v86 = v15;
  v87 = v17;
  v69 = v15;
  v68 = v17;
  v88 = v19 & 1;
  v67 = v19 & 1;
  v89 = v21;
  v90 = v82;
  v70 = v21;
  v91 = v22;
  v92 = v23 & 1;
  v65 = v23 & 1;
  v93 = v24;
  v66 = v24;
  sub_1000F24EC(&qword_100AD4038);
  sub_10000B58C(&qword_100AD4040, &qword_100AD4038);
  v25 = v63;
  Button.init(action:label:)();
  v26 = v79;
  (*(v64 + 32))(v79, v25, v81);
  *&v26[*(sub_1000F24EC(&qword_100AD0E10) + 36)] = 258;
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v27);
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
  v28._countAndFlagsBits = 8236;
  v28._object = 0xE200000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v28);
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v29);
  LocalizedStringKey.init(stringInterpolation:)();
  v30 = Text.init(_:tableName:bundle:comment:)();
  v32 = v31;
  LOBYTE(v26) = v33;
  v34 = sub_1000F2A18(&qword_100AF3268);
  v35 = sub_10000B58C(&qword_100AF55B0, &qword_100AD0E08);
  v36 = sub_10086D4D8();
  v94 = v81;
  v95 = v34;
  v96 = v35;
  v97 = v36;
  swift_getOpaqueTypeConformance2();
  v37 = v80;
  v38 = v71;
  v39 = v79;
  View.accessibilityLabel(_:)();
  sub_1000594D0(v30, v32, v26 & 1);

  (*(v72 + 8))(v39, v38);
  LocalizedStringKey.init(stringLiteral:)();
  v40 = Text.init(_:tableName:bundle:comment:)();
  v41 = v84;
  *v84 = v40;
  v41[1] = v42;
  *(v41 + 16) = v43 & 1;
  v41[3] = v44;
  *(v41 + 16) = 256;
  LocalizedStringKey.init(stringLiteral:)();
  v45 = Text.init(_:tableName:bundle:comment:)();
  v46 = v73;
  *v73 = v45;
  v46[1] = v47;
  *(v46 + 16) = v48 & 1;
  v46[3] = v49;
  *(v46 + 16) = 257;
  v50 = v85;
  sub_1000082B4(v37, v85, &qword_100AF55A8);
  v51 = v77;
  v52 = *(v77 + 16);
  v53 = v75;
  v54 = v41;
  v55 = v74;
  v52(v75, v54, v74);
  v56 = v76;
  v52(v76, v46, v55);
  v57 = v50;
  v58 = v78;
  sub_1000082B4(v57, v78, &qword_100AF55A8);
  v59 = sub_1000F24EC(&qword_100AF55B8);
  v52((v58 + *(v59 + 48)), v53, v55);
  v52((v58 + *(v59 + 64)), v56, v55);
  sub_1000594D0(v69, v68, v67);

  sub_1000594D0(v82, v83, v65);

  v60 = *(v51 + 8);
  v60(v46, v55);
  v60(v84, v55);
  sub_100004F84(v80, &qword_100AF55A8);
  v60(v56, v55);
  v60(v53, v55);
  return sub_100004F84(v85, &qword_100AF55A8);
}

uint64_t sub_100864E38@<X0>(uint64_t a1@<X8>)
{
  v2 = Image.init(systemName:)();
  LocalizedStringKey.init(stringLiteral:)();
  v3 = Text.init(_:tableName:bundle:comment:)();
  v5 = v4;
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v7 = v6 & 1;
  *(a1 + 24) = v6 & 1;
  *(a1 + 32) = v8;

  sub_1000F24DC(v3, v5, v7);

  sub_1000594D0(v3, v5, v7);
}

uint64_t sub_100864F40@<X0>(uint64_t a1@<X8>)
{
  v2 = Image.init(systemName:)();
  LocalizedStringKey.init(stringLiteral:)();
  v3 = Text.init(_:tableName:bundle:comment:)();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  LocalizedStringKey.init(stringLiteral:)();
  v10 = Text.init(_:tableName:bundle:comment:)();
  v12 = v11;
  v14 = v13 & 1;
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7 & 1;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 48) = v11;
  *(a1 + 56) = v13 & 1;
  *(a1 + 64) = v15;

  sub_1000F24DC(v3, v5, v7 & 1);

  sub_1000F24DC(v10, v12, v14);

  sub_1000594D0(v10, v12, v14);

  sub_1000594D0(v3, v5, v7 & 1);
}

uint64_t sub_1008650F8(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for InsightsCurrentStreakView();
  v11 = *(a1 + *(v10 + 52) + 8);

  if ((v11 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    v21 = v6;
    v13 = v2;
    v14 = a1;
    v15 = v12;
    os_log(_:dso:log:_:_:)();

    a1 = v14;
    v2 = v13;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v21);
  }

  static Date.now.getter();
  sub_1006D9910(v5);

  (*(v3 + 8))(v5, v2);
  v16 = (a1 + *(v10 + 24));
  v18 = *v16;
  v17 = v16[1];
  v25 = *v16;
  v26 = v17;

  sub_1000F24EC(&qword_100AD2148);
  result = State.wrappedValue.getter();
  if (__OFADD__(v27, 1))
  {
    __break(1u);
  }

  else
  {
    v23 = v18;
    v24 = v17;
    v22 = v27 + 1;
    State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_100865388@<X0>(uint64_t a1@<X8>)
{
  v2 = Image.init(systemName:)();
  LocalizedStringKey.init(stringLiteral:)();
  v3 = Text.init(_:tableName:bundle:comment:)();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  LocalizedStringKey.init(stringLiteral:)();
  v10 = Text.init(_:tableName:bundle:comment:)();
  v12 = v11;
  v14 = v13 & 1;
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7 & 1;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 48) = v11;
  *(a1 + 56) = v13 & 1;
  *(a1 + 64) = v15;

  sub_1000F24DC(v3, v5, v7 & 1);

  sub_1000F24DC(v10, v12, v14);

  sub_1000594D0(v10, v12, v14);

  sub_1000594D0(v3, v5, v7 & 1);
}

uint64_t sub_10086554C()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  v2 = [objc_allocWithZone(LPLinkMetadata) init];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v3 = String._bridgeToObjectiveC()();

  [v2 setTitle:v3];

  sub_10086D63C();
  return SharePreview<>.init(metadata:)();
}

uint64_t sub_1008656C0@<X0>(uint64_t a1@<X8>)
{
  sub_1000F24EC(&qword_100AF54E8);
  sub_10000B58C(&qword_100AF54F0, &qword_100AF54E8);
  Label.init(title:icon:)();
  KeyPath = swift_getKeyPath();
  result = sub_1000F24EC(&qword_100AF5488);
  v4 = a1 + *(result + 36);
  *v4 = KeyPath;
  *(v4 + 8) = 1;
  return result;
}

uint64_t sub_1008657E0()
{
  type metadata accessor for InsightsCurrentStreakView();
  sub_1000F24EC(&qword_100AD2148);
  State.wrappedValue.getter();
  sub_1000F24EC(&qword_100AD60A0);
  sub_10000B58C(&qword_100AD38C8, &qword_100AD60A0);
  return PhaseAnimator.init<A, B>(_:trigger:content:animation:)();
}

uint64_t sub_100865918@<X0>(uint64_t *a1@<X8>)
{

  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_10086595C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for InsightsTipViewModel();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = *(type metadata accessor for InsightsCurrentStreakView() + 72);
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  sub_10086D374(a2 + v10, v6, type metadata accessor for InsightsTipViewModel);
  type metadata accessor for MainActor();
  v12 = static MainActor.shared.getter();
  v13 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = &protocol witness table for MainActor;
  sub_100041EE4(v6, v14 + v13, type metadata accessor for InsightsTipViewModel);
  sub_1004EC158(0, 0, v9, &unk_10096F350, v14);
}

uint64_t sub_100865B48@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v126 = a1;
  v136 = a2;
  v119 = type metadata accessor for ColorResource();
  v118 = *(v119 - 8);
  __chkstk_darwin(v119);
  v117 = &v90 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for EnvironmentValues();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for ButtonBorderShape();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for BorderedProminentButtonStyle();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v101 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for InsightsCurrentStreakView();
  v94 = *(v125 - 8);
  __chkstk_darwin(v125);
  v95 = v6;
  v96 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_1000F24EC(&qword_100AEE6D0);
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v98 = &v90 - v7;
  v108 = sub_1000F24EC(&qword_100AF5398);
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v97 = &v90 - v8;
  v104 = sub_1000F24EC(&qword_100AF53A0);
  __chkstk_darwin(v104);
  v106 = &v90 - v9;
  v105 = sub_1000F24EC(&qword_100AF53A8);
  __chkstk_darwin(v105);
  v113 = &v90 - v10;
  v112 = sub_1000F24EC(&qword_100AF53B0);
  __chkstk_darwin(v112);
  v111 = &v90 - v11;
  v137 = sub_1000F24EC(&qword_100AF53B8);
  v134 = *(v137 - 8);
  __chkstk_darwin(v137);
  v109 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v110 = &v90 - v14;
  v15 = sub_1000F24EC(&qword_100AF53C0);
  __chkstk_darwin(v15 - 8);
  v135 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v139 = &v90 - v18;
  v19 = type metadata accessor for Font.Leading();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocalizedStringKey.init(stringLiteral:)();
  v23 = Text.init(_:tableName:bundle:comment:)();
  v25 = v24;
  v27 = v26;
  static Font.headline.getter();
  LODWORD(v130) = enum case for Font.Leading.tight(_:);
  v28 = *(v20 + 104);
  v120 = v20 + 104;
  KeyPath = v28;
  v123 = v19;
  v28(v22);
  Font.leading(_:)();

  v29 = *(v20 + 8);
  v124 = v20 + 8;
  v127 = v29;
  v29(v22, v19);
  v30 = Text.font(_:)();
  v32 = v31;
  v34 = v33;

  sub_1000594D0(v23, v25, v27 & 1);

  LODWORD(v142[0]) = static HierarchicalShapeStyle.secondary.getter();
  v35 = Text.foregroundStyle<A>(_:)();
  v138 = v36;
  v128 = v37;
  v140 = v38;
  v39 = v30;
  v40 = v126;
  sub_1000594D0(v39, v32, v34 & 1);

  v41 = sub_100866B78(v142);
  v133 = v142[0];
  v131 = v142[1];
  v121 = v142[2];
  v132 = v142[3];
  LOBYTE(v19) = v143;
  v42 = v125;
  v43 = v123;
  KeyPath(v22, v130, v123, v41);
  v130 = Font.leading(_:)();
  v127(v22, v43);
  KeyPath = swift_getKeyPath();
  LODWORD(v127) = static HierarchicalShapeStyle.tertiary.getter();
  LOBYTE(v142[0]) = v19;
  if ((sub_100862F00() & 1) == 0)
  {
    v56 = 1;
    v54 = v139;
    v57 = v137;
    goto LABEL_11;
  }

  v44 = v96;
  sub_10086D374(v40, v96, type metadata accessor for InsightsCurrentStreakView);
  v45 = (*(v94 + 80) + 16) & ~*(v94 + 80);
  v46 = swift_allocObject();
  sub_100041EE4(v44, v46 + v45, type metadata accessor for InsightsCurrentStreakView);
  sub_1000F24EC(&qword_100AD3FC0);
  sub_10000B58C(&qword_100AD3FD0, &qword_100AD3FC0);
  v47 = v98;
  Button.init(action:label:)();
  v48 = v101;
  BorderedProminentButtonStyle.init()();
  sub_10000B58C(&qword_100AEE6D8, &qword_100AEE6D0);
  sub_1000408A0(&qword_100ADCFC0, &type metadata accessor for BorderedProminentButtonStyle);
  v49 = v97;
  v50 = v100;
  v51 = v103;
  View.buttonStyle<A>(_:)();
  (*(v102 + 8))(v48, v51);
  (*(v99 + 8))(v47, v50);
  v52 = v40 + *(v42 + 36);
  v53 = *v52;
  if (*(v52 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v58 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v59 = v91;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000467F0(v53, 0);
    (*(v92 + 8))(v59, v93);
    v54 = v139;
    v55 = v114;
    if (v141 != 1)
    {
      goto LABEL_4;
    }

LABEL_7:
    static ButtonBorderShape.automatic.getter();
    goto LABEL_8;
  }

  v54 = v139;
  v55 = v114;
  if (v53)
  {
    goto LABEL_7;
  }

LABEL_4:
  static ButtonBorderShape.capsule.getter();
LABEL_8:
  v60 = swift_getKeyPath();
  v61 = v106;
  v62 = &v106[*(v104 + 36)];
  v63 = sub_1000F24EC(&qword_100ADCCF8);
  (*(v115 + 32))(v62 + *(v63 + 28), v55, v116);
  *v62 = v60;
  (*(v107 + 32))(v61, v49, v108);
  static Font.subheadline.getter();
  v64 = Font.bold()();

  v65 = swift_getKeyPath();
  v66 = v113;
  sub_100021CEC(v61, v113, &qword_100AF53A0);
  v67 = (v66 + *(v105 + 36));
  *v67 = v65;
  v67[1] = v64;
  if (qword_100AD0C80 != -1)
  {
    swift_once();
  }

  v68 = v119;
  v69 = sub_10000617C(v119, qword_100B31490);
  (*(v118 + 16))(v117, v69, v68);
  Color.init(_:)();
  v70 = Color.opacity(_:)();

  v71 = swift_getKeyPath();
  v72 = v66;
  v73 = v111;
  sub_100021CEC(v72, v111, &qword_100AF53A8);
  v74 = (v73 + *(v112 + 36));
  *v74 = v71;
  v74[1] = v70;
  LOBYTE(v71) = static Edge.Set.top.getter();
  v75 = v109;
  sub_100021CEC(v73, v109, &qword_100AF53B0);
  v57 = v137;
  v76 = v75 + *(v137 + 36);
  *v76 = v71;
  *(v76 + 8) = 0u;
  *(v76 + 24) = 0u;
  *(v76 + 40) = 1;
  v77 = v75;
  v78 = v110;
  sub_100021CEC(v77, v110, &qword_100AF53B8);
  sub_100021CEC(v78, v54, &qword_100AF53B8);
  v56 = 0;
LABEL_11:
  (*(v134 + 56))(v54, v56, 1, v57);
  v79 = v142[0];
  LODWORD(v134) = LOBYTE(v142[0]);
  v80 = v135;
  sub_1000082B4(v54, v135, &qword_100AF53C0);
  v81 = v136;
  v82 = v138;
  *v136 = v35;
  v81[1] = v82;
  LODWORD(v137) = v128 & 1;
  *(v81 + 16) = v128 & 1;
  v122 = v35;
  v83 = v132;
  v84 = v133;
  v81[3] = v140;
  v81[4] = v84;
  v86 = v130;
  v85 = v131;
  v87 = v121;
  v81[5] = v131;
  v81[6] = v87;
  v81[7] = v83;
  *(v81 + 64) = v79;
  v81[9] = KeyPath;
  v81[10] = v86;
  *(v81 + 22) = v127;
  v88 = sub_1000F24EC(&qword_100AF53C8);
  sub_1000082B4(v80, v81 + *(v88 + 64), &qword_100AF53C0);
  sub_1000F24DC(v35, v82, v137);

  sub_1001D5260(v84, v85, v87);

  sub_100004F84(v139, &qword_100AF53C0);
  sub_100004F84(v80, &qword_100AF53C0);
  sub_1001D52C0(v84, v85, v87);

  sub_1000594D0(v122, v138, v137);
}

double sub_100866B78@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for InsightsCurrentStreakView();
  sub_1000F24EC(&qword_100AF3268);
  AppStorage.wrappedValue.getter();
  LocalizedStringKey.init(stringLiteral:)();
  Text.init(_:tableName:bundle:comment:)();
  _ConditionalContent<>.init(storage:)();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_100866CE0(uint64_t a1)
{
  v2 = type metadata accessor for InsightsSetScheduleAction();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = *(type metadata accessor for InsightsCurrentStreakView() + 20);
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  sub_10086D374(a1 + v9, v5, type metadata accessor for InsightsSetScheduleAction);
  type metadata accessor for MainActor();
  v11 = static MainActor.shared.getter();
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = &protocol witness table for MainActor;
  sub_100041EE4(v5, v13 + v12, type metadata accessor for InsightsSetScheduleAction);
  sub_1003E9628(0, 0, v8, &unk_10096F268, v13);
}

uint64_t sub_100866F4C@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100866FBC@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_100866FFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  v128 = a4;
  v124 = sub_1000F24EC(&qword_100AF53D0);
  __chkstk_darwin(v124);
  v123 = &v95 - v7;
  v117 = _s19DurationFormatStyleV10AttributedVMa(0);
  __chkstk_darwin(v117);
  v120 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = _s19DurationFormatStyleVMa(0);
  __chkstk_darwin(v115);
  v116 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StreakSummary();
  __chkstk_darwin(v10 - 8);
  v119 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000F24EC(&qword_100AE1670);
  __chkstk_darwin(v12 - 8);
  v14 = &v95 - v13;
  v15 = type metadata accessor for EnvironmentValues();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1000F24EC(&qword_100AF53D8);
  v98 = *(v101 - 8);
  __chkstk_darwin(v101);
  v107 = &v95 - v19;
  v105 = sub_1000F24EC(&qword_100AF53E0);
  __chkstk_darwin(v105);
  v106 = &v95 - v20;
  v104 = sub_1000F24EC(&qword_100AF53E8);
  __chkstk_darwin(v104);
  v109 = &v95 - v21;
  v103 = sub_1000F24EC(&qword_100AF53F0);
  __chkstk_darwin(v103);
  v108 = &v95 - v22;
  v23 = sub_1000F24EC(&qword_100AF53F8);
  v126 = *(v23 - 8);
  v127 = v23;
  __chkstk_darwin(v23);
  v125 = &v95 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v129 = &v95 - v26;
  v118 = a2;
  v110 = a3 & 1;
  sub_100867DBC(a2, v110, &v132);
  v100 = *(&v132 + 1);
  v102 = v132;
  v99 = v133;
  v97 = v134;
  v96 = v135;
  v27 = a1 + *(type metadata accessor for InsightsCurrentStreakView() + 32);
  v28 = *v27;
  v29 = *(v27 + 8);
  v130 = a1;
  v131 = v28;
  v30 = *(v27 + 16);
  v112 = *(v27 + 17);
  v95 = v15;
  v122 = v16;
  v121 = v18;
  v114 = v29;
  v113 = v30;
  if (v112 == 1)
  {
    v33 = v131;
  }

  else
  {
    v31 = v131;

    static os_log_type_t.fault.getter();
    v32 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100280C78(v31, v29, v30, 0);
    (*(v16 + 8))(v18, v15);
    v29 = *(&v132 + 1);
    v33 = v132;
    LOBYTE(v30) = v133;
  }

  *&v132 = v33;
  *(&v132 + 1) = v29;
  LOBYTE(v133) = v30;
  v111 = sub_1000F24EC(&qword_100ADB018);
  Binding.wrappedValue.getter();
  v34 = v138;

  if (v34 && (sub_1008694EC() & 1) == 0)
  {
    sub_1000F24EC(&qword_100AD7DC8);
    ScaledMetric.wrappedValue.getter();
  }

  static Font.Weight.semibold.getter();
  v35 = type metadata accessor for Font.Design();
  (*(*(v35 - 8) + 56))(v14, 1, 1, v35);
  v36 = static Font.system(size:weight:design:)();
  sub_100004F84(v14, &qword_100AE1670);
  KeyPath = swift_getKeyPath();
  v38 = v102;
  v39 = v100;
  *&v132 = v102;
  *(&v132 + 1) = v100;
  v40 = v99;
  v133 = v99;
  v134 = v97;
  v135 = v96;
  v136 = KeyPath;
  v137 = v36;
  sub_1000F24EC(&qword_100AF5400);
  sub_10086CBAC();
  v41 = v107;
  View.tracking(_:)();
  sub_1001D52C0(v38, v39, v40);

  static Color.black.getter();
  v42 = Color.opacity(_:)();

  v43 = v106;
  (*(v98 + 32))(v106, v41, v101);
  v44 = v43 + *(v105 + 36);
  *v44 = v42;
  *(v44 + 8) = xmmword_10096EB20;
  *(v44 + 24) = 0x4000000000000000;
  v45 = static HierarchicalShapeStyle.primary.getter();
  v46 = v109;
  sub_100021CEC(v43, v109, &qword_100AF53E0);
  *(v46 + *(v104 + 36)) = v45;
  v47 = v108;
  v48 = &v108[*(v103 + 36)];
  sub_1000F24EC(&qword_100AD21B0);
  static ContentTransition.numericText(countsDown:)();
  *v48 = swift_getKeyPath();
  sub_100021CEC(v46, v47, &qword_100AF53E8);
  sub_10086CCE8();
  View.unredacted()();
  sub_100004F84(v47, &qword_100AF53F0);
  sub_10086D374(v118, v119, type metadata accessor for StreakSummary);
  v49 = *(v115 + 20);
  v50 = v116;
  static Locale.autoupdatingCurrent.getter();
  v51 = v110;
  *v50 = v110;
  v52 = *(v117 + 20);
  v53 = type metadata accessor for Locale();
  v54 = v120;
  (*(*(v53 - 8) + 32))(&v120[v52], &v50[v49], v53);
  *v54 = v51;
  v55 = v123;
  sub_10086D374(v54, v123, _s19DurationFormatStyleV10AttributedVMa);
  v56 = v124;
  static Locale.autoupdatingCurrent.getter();
  sub_10086D688(v54, _s19DurationFormatStyleV10AttributedVMa);
  *(v55 + *(v56 + 44)) = 1;
  sub_10000B58C(&qword_100AF5438, &qword_100AF53D0);
  sub_1000408A0(&qword_100AF5358, type metadata accessor for StreakSummary);
  v57 = Text.init<A>(_:format:)();
  v59 = v58;
  v61 = v60;
  v62 = v122;
  v63 = v121;
  if (v112)
  {

    v64 = v114;

    v65 = v113;
  }

  else
  {
    v66 = v131;

    static os_log_type_t.fault.getter();
    v67 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100280C78(v66, v114, v113, 0);
    (*(v62 + 8))(v63, v95);
    v64 = *(&v132 + 1);
    v131 = v132;
    v65 = v133;
  }

  *&v132 = v131;
  *(&v132 + 1) = v64;
  LOBYTE(v133) = v65;
  Binding.wrappedValue.getter();
  v68 = v138;

  if (v68 && (sub_1008694EC() & 1) == 0)
  {
    static Font.title2.getter();
  }

  else
  {
    static Font.title.getter();
  }

  v69 = Text.font(_:)();
  v71 = v70;
  v73 = v72;

  sub_1000594D0(v57, v59, v61 & 1);

  v74 = Text.bold()();
  v76 = v75;
  v78 = v77;
  sub_1000594D0(v69, v71, v73 & 1);

  static Color.black.getter();
  Color.opacity(_:)();

  v79 = Text.shadow(color:radius:x:y:)();
  v81 = v80;
  LODWORD(v131) = v82;
  v84 = v83;

  sub_1000594D0(v74, v76, v78 & 1);

  v86 = v125;
  v85 = v126;
  v87 = *(v126 + 16);
  v88 = v129;
  v89 = v127;
  v87(v125, v129, v127);
  v90 = v128;
  v87(v128, v86, v89);
  v91 = &v90[*(sub_1000F24EC(&qword_100AF5440) + 48)];
  *v91 = v79;
  *(v91 + 1) = v81;
  v92 = v131;
  LOBYTE(v74) = v131 & 1;
  v91[16] = v131 & 1;
  *(v91 + 3) = v84;
  sub_1000F24DC(v79, v81, v92 & 1);
  v93 = *(v85 + 8);

  v93(v88, v89);
  sub_1000594D0(v79, v81, v74);

  return (v93)(v86, v89);
}

double sub_100867DBC@<D0>(uint64_t a1@<X1>, int a2@<W2>, _OWORD *a3@<X8>)
{
  v40 = a2;
  v38 = a1;
  v42 = a3;
  v41 = sub_1000F24EC(&qword_100AF53D0);
  __chkstk_darwin(v41);
  v4 = &v36 - v3;
  v37 = _s19DurationFormatStyleV10AttributedVMa(0);
  __chkstk_darwin(v37);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s19DurationFormatStyleVMa(0);
  __chkstk_darwin(v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StreakSummary();
  __chkstk_darwin(v10 - 8);
  v39 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RedactionReasons();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v36 - v17;
  type metadata accessor for InsightsCurrentStreakView();
  sub_1003D89F4(v18);
  sub_1000408A0(&qword_100AD2220, &type metadata accessor for RedactionReasons);
  dispatch thunk of SetAlgebra.init()();
  sub_1000408A0(&qword_100AF4798, &type metadata accessor for RedactionReasons);
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  v20 = *(v13 + 8);
  v20(v15, v12);
  v20(v18, v12);
  if (v19)
  {
    sub_10086D374(v38, v39, type metadata accessor for StreakSummary);
    v21 = *(v7 + 20);
    static Locale.autoupdatingCurrent.getter();
    v22 = v40 & 1;
    *v9 = v40 & 1;
    v23 = *(v37 + 20);
    v24 = type metadata accessor for Locale();
    (*(*(v24 - 8) + 32))(&v6[v23], &v9[v21], v24);
    *v6 = v22;
    sub_10086D374(v6, v4, _s19DurationFormatStyleV10AttributedVMa);
    v25 = v41;
    static Locale.autoupdatingCurrent.getter();
    sub_10086D688(v6, _s19DurationFormatStyleV10AttributedVMa);
    v4[*(v25 + 44)] = 0;
    sub_10000B58C(&qword_100AF5438, &qword_100AF53D0);
    sub_1000408A0(&qword_100AF5358, type metadata accessor for StreakSummary);
    v43 = Text.init<A>(_:format:)();
    v44 = v26;
    v45 = v27 & 1;
    v46 = v28;
    v47 = 0;
  }

  else
  {
    LocalizedStringKey.init(stringLiteral:)();
    v43 = Text.init(_:tableName:bundle:comment:)();
    v44 = v30;
    v45 = v29 & 1;
    v46 = v31;
    v47 = 1;
  }

  _ConditionalContent<>.init(storage:)();
  result = *&v48;
  v33 = v49;
  v34 = v50;
  v35 = v42;
  *v42 = v48;
  v35[1] = v33;
  *(v35 + 32) = v34;
  return result;
}

uint64_t sub_1008682A0(uint64_t a1, int a2)
{
  v146 = a2;
  v151 = a1;
  v2 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  v130 = &v112 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for Date.FormatStyle.Symbol.Year();
  v128 = *(v129 - 8);
  __chkstk_darwin(v129);
  v127 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date.FormatStyle.Symbol.Day();
  v144 = *(v5 - 8);
  v145 = v5;
  __chkstk_darwin(v5);
  v143 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v141 = *(v7 - 8);
  v142 = v7;
  __chkstk_darwin(v7);
  v140 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FormatStyleCapitalizationContext();
  __chkstk_darwin(v9 - 8);
  v139 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TimeZone();
  __chkstk_darwin(v11 - 8);
  v138 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Locale();
  __chkstk_darwin(v13 - 8);
  v137 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000F24EC(&qword_100AD4280);
  __chkstk_darwin(v15 - 8);
  v136 = &v112 - v16;
  v17 = sub_1000F24EC(&qword_100AD4288);
  __chkstk_darwin(v17 - 8);
  v135 = &v112 - v18;
  v19 = type metadata accessor for Calendar.Component();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v112 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for Calendar();
  v23 = *(v133 - 8);
  __chkstk_darwin(v133);
  v25 = &v112 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for Date.FormatStyle();
  v149 = *(v150 - 8);
  __chkstk_darwin(v150);
  v126 = &v112 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v134 = &v112 - v28;
  __chkstk_darwin(v29);
  v148 = &v112 - v30;
  __chkstk_darwin(v31);
  v147 = &v112 - v32;
  v33 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v33 - 8);
  v35 = &v112 - v34;
  v36 = type metadata accessor for Date();
  __chkstk_darwin(v36);
  v38 = &v112 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v41 = &v112 - v40;
  v43 = v42;
  v45 = v44;
  sub_1000082B4(v151, v35, &unk_100AD4790);
  if ((*(v43 + 48))(v35, 1, v45) == 1)
  {
    sub_100004F84(v35, &unk_100AD4790);
    return 0;
  }

  (*(v43 + 32))(v41, v35, v45);
  v120 = *(type metadata accessor for InsightsCurrentStreakView() + 40);
  sub_100048878(v25);
  static Date.now.getter();
  v47 = *(v20 + 104);
  v119 = v20 + 104;
  v118 = v47;
  v47(v22, enum case for Calendar.Component.year(_:), v19);
  v131 = v41;
  v48 = Calendar.compare(_:to:toGranularity:)();
  v49 = *(v20 + 8);
  v123 = v19;
  v122 = v20 + 8;
  v117 = v49;
  v49(v22, v19);
  v114 = v43;
  v50 = *(v43 + 8);
  v115 = v38;
  v132 = v45;
  v125 = v43 + 8;
  v124 = v50;
  v50(v38, v45);
  v51 = *(v23 + 8);
  v52 = v133;
  v121 = v23 + 8;
  v116 = v51;
  v51(v25, v133);
  v53 = type metadata accessor for Date.FormatStyle.DateStyle();
  (*(*(v53 - 8) + 56))(v135, 1, 1, v53);
  v54 = type metadata accessor for Date.FormatStyle.TimeStyle();
  (*(*(v54 - 8) + 56))(v136, 1, 1, v54);
  static Locale.autoupdatingCurrent.getter();
  static Calendar.autoupdatingCurrent.getter();
  static TimeZone.autoupdatingCurrent.getter();
  static FormatStyleCapitalizationContext.unknown.getter();
  v55 = (v149 + 8);
  if (v48)
  {
    v56 = v126;
    Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)();
    v57 = v127;
    static Date.FormatStyle.Symbol.Year.defaultDigits.getter();
    v58 = v134;
    Date.FormatStyle.year(_:)();
    (*(v128 + 8))(v57, v129);
    v59 = *v55;
    v60 = v150;
    (*v55)(v56, v150);
    v61 = v140;
    static Date.FormatStyle.Symbol.Month.abbreviated.getter();
    v62 = v148;
    Date.FormatStyle.month(_:)();
    (*(v141 + 8))(v61, v142);
    v59(v58, v60);
    v63 = v143;
    static Date.FormatStyle.Symbol.Day.defaultDigits.getter();
    v64 = v147;
    Date.FormatStyle.day(_:)();
    (*(v144 + 8))(v63, v145);
    v145 = v59;
    v59(v62, v60);
  }

  else
  {
    v65 = v134;
    Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)();
    v66 = v140;
    static Date.FormatStyle.Symbol.Month.abbreviated.getter();
    v67 = v55;
    v68 = v148;
    Date.FormatStyle.month(_:)();
    (*(v141 + 8))(v66, v142);
    v69 = *v67;
    v70 = v150;
    (*v67)(v65, v150);
    v71 = v143;
    static Date.FormatStyle.Symbol.Day.defaultDigits.getter();
    v64 = v147;
    Date.FormatStyle.day(_:)();
    (*(v144 + 8))(v71, v145);
    v72 = v68;
    v55 = v67;
    v145 = v69;
    v69(v72, v70);
  }

  sub_100048878(v25);
  v73 = v123;
  v118(v22, enum case for Calendar.Component.weekday(_:), v123);
  v74 = v131;
  v75 = Calendar.component(_:from:)();
  v117(v22, v73);
  v116(v25, v52);
  v76 = type metadata accessor for StreakSummary();
  if ((v146 & 1) == 0)
  {
    v93 = v64;
    v94 = *(v151 + *(v76 + 28));
    v95 = v132;
    if (v94 != 2)
    {
      v96 = v149;
      v97 = v115;
      if ((v94 - 6) < 0xFFFFFFFFFFFFFFFDLL)
      {
LABEL_10:
        v113 = v55;
        LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v98._object = 0x800000010090C1D0;
        v98._countAndFlagsBits = 0x1000000000000023;
        LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v98);
        (*(v114 + 16))(v97, v74, v95);
        (*(v96 + 16))(v148, v93, v150);
        sub_1000408A0(&qword_100AD3CE8, &type metadata accessor for Date.FormatStyle);
        sub_1000408A0(&qword_100AD5BF0, &type metadata accessor for Date);
        v99 = Text.init<A>(_:format:)();
        v101 = v100;
        v103 = v102;
        v152 = static HierarchicalShapeStyle.secondary.getter();
        v104 = Text.foregroundStyle<A>(_:)();
        v106 = v105;
        v108 = v107;
        sub_1000594D0(v99, v101, v103 & 1);

        LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
        sub_1000594D0(v104, v106, v108 & 1);

        v109._countAndFlagsBits = 46;
        v109._object = 0xE100000000000000;
        LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v109);
        LocalizedStringKey.init(stringInterpolation:)();
        v90 = Text.init(_:tableName:bundle:comment:)();
        v91 = v93;
        v92 = v150;
        goto LABEL_11;
      }

      if (v75 <= 3)
      {
        if (v75 != 1 && v75 != 2 && v75 != 3)
        {
          goto LABEL_10;
        }
      }

      else if (v75 > 6 && v75 != 7)
      {
        goto LABEL_10;
      }
    }

    LocalizedStringKey.init(stringLiteral:)();
    v90 = Text.init(_:tableName:bundle:comment:)();
    v145(v93, v150);
    v110 = v74;
    v111 = v95;
    goto LABEL_21;
  }

  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v77._countAndFlagsBits = 0x100000000000002ELL;
  v77._object = 0x800000010090C130;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v77);
  (*(v114 + 16))(v115, v74, v132);
  v78 = v150;
  (*(v149 + 16))(v148, v64, v150);
  sub_1000408A0(&qword_100AD3CE8, &type metadata accessor for Date.FormatStyle);
  sub_1000408A0(&qword_100AD5BF0, &type metadata accessor for Date);
  v79 = Text.init<A>(_:format:)();
  v81 = v80;
  v113 = v55;
  v83 = v82;
  v152 = static HierarchicalShapeStyle.secondary.getter();
  v84 = Text.foregroundStyle<A>(_:)();
  v86 = v85;
  v88 = v87;
  sub_1000594D0(v79, v81, v83 & 1);

  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
  sub_1000594D0(v84, v86, v88 & 1);

  v89._countAndFlagsBits = 46;
  v89._object = 0xE100000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v89);
  LocalizedStringKey.init(stringInterpolation:)();
  v90 = Text.init(_:tableName:bundle:comment:)();
  v91 = v147;
  v92 = v78;
LABEL_11:
  v145(v91, v92);
  v110 = v131;
  v111 = v132;
LABEL_21:
  v124(v110, v111);
  return v90;
}

uint64_t sub_1008694EC()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for InsightsCurrentStreakView();
  v6 = v0 + v5[7];
  v7 = *v6;
  if (*(v6 + 8) == 1)
  {
    if (*v6 > 1u)
    {
      goto LABEL_7;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000467F0(v7, 0);
    (*(v2 + 8))(v4, v1);
    if (v19 > 1u)
    {
LABEL_7:
      v11 = 1;
      return v11 & 1;
    }
  }

  v9 = v0 + v5[12];
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    if (v10)
    {
      goto LABEL_7;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000467F0(v10, 0);
    (*(v2 + 8))(v4, v1);
    if (v18)
    {
      goto LABEL_7;
    }
  }

  v13 = *(v0 + v5[13] + 8);

  if ((v13 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
  }

  v15 = sub_1006D9B54();

  v11 = !v15;
  return v11 & 1;
}

uint64_t sub_1008697CC@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v122 = a2;
  v123 = a3;
  LODWORD(v111) = a1;
  v113 = a4;
  v121 = type metadata accessor for ScaleTransition();
  v119 = *(v121 - 8);
  __chkstk_darwin(v121);
  v116 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for OpacityTransition();
  v115 = *(v118 - 8);
  __chkstk_darwin(v118);
  v106 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_1000F24EC(&qword_100AF52A8);
  v117 = *(v120 - 8);
  __chkstk_darwin(v120);
  v112 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v114 = &v96 - v8;
  v9 = type metadata accessor for EnvironmentValues();
  v104 = *(v9 - 8);
  v105 = v9;
  __chkstk_darwin(v9);
  v103 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Image.ResizingMode();
  v101 = *(v11 - 8);
  v102 = v11;
  __chkstk_darwin(v11);
  v100 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RedactionReasons();
  v98 = *(v13 - 8);
  __chkstk_darwin(v13);
  v97 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v96 - v16;
  v18 = type metadata accessor for ImageResource();
  __chkstk_darwin(v18 - 8);
  v99 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ColorResource();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F24EC(&qword_100AD3CA8);
  v24 = swift_allocObject();
  v110 = xmmword_100940050;
  *(v24 + 16) = xmmword_100940050;
  if (qword_100AD0D28 != -1)
  {
    swift_once();
  }

  v25 = sub_10000617C(v20, qword_100B31688);
  v26 = *(v21 + 16);
  v26(v23, v25, v20);
  *(v24 + 32) = Color.init(_:)();
  if (qword_100AD0D18 != -1)
  {
    swift_once();
  }

  v27 = sub_10000617C(v20, qword_100B31658);
  v26(v23, v27, v20);
  *(v24 + 40) = Color.init(_:)();
  static UnitPoint.top.getter();
  static UnitPoint.bottom.getter();
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  if (v111)
  {
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v28 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  if (*(v122 + *(type metadata accessor for StreakSummary() + 28)) < 2)
  {
LABEL_10:
    v111 = 0;
    v109 = 0;
    *&v110 = 0;
    v107 = 0;
    v108 = 0;
    v29 = v123;
    goto LABEL_14;
  }

  v30 = swift_allocObject();
  *(v30 + 16) = v110;
  v26(v23, v25, v20);
  *(v30 + 32) = Color.init(_:)();
  v29 = v123;
  if (qword_100AD0D20 != -1)
  {
    swift_once();
  }

  v31 = sub_10000617C(v20, qword_100B31670);
  v26(v23, v31, v20);
  *(v30 + 40) = Color.init(_:)();
  static UnitPoint.top.getter();
  static UnitPoint.bottom.getter();
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v111 = v176;
  v109 = v178;
  *&v110 = v177;
  v107 = v180;
  v108 = v179;
LABEL_14:
  v32 = type metadata accessor for InsightsCurrentStreakView();
  sub_1003D89F4(v17);
  sub_1000408A0(&qword_100AD2220, &type metadata accessor for RedactionReasons);
  v33 = v97;
  dispatch thunk of SetAlgebra.init()();
  sub_1000408A0(&qword_100AF4798, &type metadata accessor for RedactionReasons);
  v34 = dispatch thunk of static Equatable.== infix(_:_:)();
  v35 = *(v98 + 8);
  v35(v33, v13);
  v35(v17, v13);
  if (v34)
  {
    type metadata accessor for StreakSummary();
  }

  static ImageResource.wingsBackground(value:)();
  Image.init(_:)();
  v36 = v100;
  v37 = v101;
  v38 = v102;
  (*(v101 + 104))(v100, enum case for Image.ResizingMode.stretch(_:), v102);
  v122 = Image.resizable(capInsets:resizingMode:)();

  (*(v37 + 8))(v36, v38);
  v39 = v29 + *(v32 + 32);
  v40 = *v39;
  v41 = *(v39 + 8);
  v42 = *(v39 + 16);
  v43 = *(v39 + 17);

  if (v43 == 1)
  {

    v44 = v40;
    v45 = v42;
    v46 = v41;
  }

  else
  {
    static os_log_type_t.fault.getter();
    v47 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v48 = v103;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100280C78(v40, v41, v42, 0);
    (*(v104 + 8))(v48, v105);
    v46 = *(&v148 + 1);
    v44 = v148;
    v45 = v149;
  }

  *&v148 = v44;
  *(&v148 + 1) = v46;
  LOBYTE(v149) = v45;
  sub_1000F24EC(&qword_100ADB018);
  Binding.wrappedValue.getter();
  v49 = v132;

  if (v49)
  {
    if (sub_1008694EC())
    {
      v50 = 1.0;
    }

    else
    {
      v50 = 1.12;
    }
  }

  else
  {
    v50 = 1.0;
  }

  static UnitPoint.center.getter();
  v52 = v51;
  v54 = v53;
  v172 = 1;

  if (v43)
  {
  }

  else
  {
    static os_log_type_t.fault.getter();
    v55 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v56 = v103;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100280C78(v40, v41, v42, 0);
    (*(v104 + 8))(v56, v105);
    v41 = *(&v148 + 1);
    v40 = v148;
    LOBYTE(v42) = v149;
  }

  *&v148 = v40;
  *(&v148 + 1) = v41;
  LOBYTE(v149) = v42;
  Binding.wrappedValue.getter();
  v57 = v132;

  if (v57)
  {
    if (sub_1008694EC())
    {
      v58 = 20.0;
    }

    else
    {
      v58 = 6.0;
    }
  }

  else
  {
    v58 = 20.0;
  }

  v59 = v106;
  OpacityTransition.init()();
  static UnitPoint.center.getter();
  v60 = v116;
  ScaleTransition.init(_:anchor:)();
  v61 = sub_1000408A0(&qword_100AF52B0, &type metadata accessor for OpacityTransition);
  v62 = sub_1000408A0(&qword_100AF52B8, &type metadata accessor for ScaleTransition);
  v63 = v114;
  v64 = v118;
  v65 = v121;
  Transition.combined<A>(with:)();
  (*(v119 + 8))(v60, v65);
  (*(v115 + 8))(v59, v64);
  v66 = v117;
  v67 = v120;
  (*(v117 + 16))(v112, v63, v120);
  *&v148 = v64;
  *(&v148 + 1) = v65;
  v149 = v61;
  *&v150 = v62;
  swift_getOpaqueTypeConformance2();
  v68 = AnyTransition.init<A>(_:)();
  (*(v66 + 8))(v63, v67);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v69 = static Alignment.center.getter();
  v71 = v70;
  sub_10086A690(v123, &v148);
  v72 = v148;
  v73 = v149;
  v74 = v122;
  v132 = v122;
  LOWORD(v133) = 257;
  *(&v133 + 2) = v170;
  WORD3(v133) = v171;
  *(&v133 + 1) = v50;
  *&v134 = v50;
  *(&v134 + 1) = v52;
  v135 = v54;
  *&v136 = v58;
  v137 = v125;
  v138 = v126;
  v75 = v130;
  v143 = v131;
  v76 = v128;
  v77 = v129;
  v141 = v129;
  v142 = v130;
  v78 = v125;
  v79 = v126;
  v80 = v127;
  v139 = v127;
  v140 = v128;
  *(&v136 + 1) = v68;
  *&v144 = v69;
  *(&v144 + 1) = v71;
  v81 = v113;
  *(v113 + 8) = v174;
  *(v81 + 24) = v175;
  v82 = v133;
  v83 = v135;
  v84 = v136;
  *(v81 + 112) = v134;
  *(v81 + 128) = v83;
  v85 = v131;
  *(v81 + 80) = v132;
  *(v81 + 96) = v82;
  v86 = v137;
  v87 = v139;
  v88 = v140;
  *(v81 + 176) = v138;
  *(v81 + 192) = v87;
  *(v81 + 144) = v84;
  *(v81 + 160) = v86;
  v89 = v141;
  v90 = v143;
  v91 = v144;
  *(v81 + 240) = v142;
  *(v81 + 256) = v90;
  v92 = v150;
  *&v90 = v151;
  v145 = v72;
  v146 = __PAIR128__(*&v150, v73);
  *(v81 + 208) = v88;
  *(v81 + 224) = v89;
  v93 = v146;
  *(v81 + 288) = v145;
  *(v81 + 304) = v93;
  *(v81 + 272) = v91;
  v150 = v50;
  v151 = v50;
  v152 = v52;
  v153 = v54;
  v147 = v90;
  *v81 = v173;
  v94 = v110;
  *(v81 + 40) = v111;
  *(v81 + 48) = v94;
  *(v81 + 56) = v109;
  *(v81 + 64) = v108;
  *(v81 + 72) = v107;
  *(v81 + 320) = v147;
  v148 = v74;
  LOWORD(v149) = 257;
  *(&v149 + 2) = v170;
  HIWORD(v149) = v171;
  v154 = 0;
  v155 = v58;
  v156 = v68;
  v157 = v78;
  v158 = v79;
  v162 = v75;
  v163 = v85;
  v160 = v76;
  v161 = v77;
  v159 = v80;
  v164 = v69;
  v165 = v71;
  v166 = v72;
  v167 = v73;
  v168 = v92;
  v169 = v90;

  sub_1000082B4(&v132, &v124, &qword_100AF52C0);
  sub_100004F84(&v148, &qword_100AF52C0);
}

double sub_10086A690@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v32 = a2;
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F24EC(&qword_100AD2130);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100941FE0;
  static Color.clear.getter();
  *(v7 + 32) = Gradient.Stop.init(color:location:)();
  *(v7 + 40) = v8;
  static Color.black.getter();
  *(v7 + 48) = Gradient.Stop.init(color:location:)();
  *(v7 + 56) = v9;
  v31 = static Color.black.getter();
  v10 = *(type metadata accessor for InsightsCurrentStreakView() + 32);
  v33 = a1;
  v11 = a1 + v10;
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = *(v11 + 16);
  v15 = *(v11 + 17);
  v29 = v4;
  v30 = v3;

  if (v15 == 1)
  {

    v16 = v12;
    v17 = v14;
    v18 = v13;
  }

  else
  {
    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100280C78(v12, v13, v14, 0);
    (*(v4 + 8))(v6, v3);
    v18 = *(&v35 + 1);
    v16 = v35;
    v17 = v36;
  }

  *&v35 = v16;
  *(&v35 + 1) = v18;
  LOBYTE(v36) = v17;
  sub_1000F24EC(&qword_100ADB018);
  Binding.wrappedValue.getter();
  v20 = v34;

  if (v20)
  {
    sub_1008694EC();
  }

  *(v7 + 64) = Gradient.Stop.init(color:location:)();
  *(v7 + 72) = v21;
  static Color.clear.getter();

  if (v15)
  {
  }

  else
  {
    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100280C78(v12, v13, v14, 0);
    (*(v29 + 8))(v6, v30);
    v13 = *(&v35 + 1);
    v12 = v35;
    LOBYTE(v14) = v36;
  }

  *&v35 = v12;
  *(&v35 + 1) = v13;
  LOBYTE(v36) = v14;
  Binding.wrappedValue.getter();
  v23 = v34;

  if (v23)
  {
    sub_1008694EC();
  }

  *(v7 + 80) = Gradient.Stop.init(color:location:)();
  *(v7 + 88) = v24;
  static UnitPoint.top.getter();
  static UnitPoint.bottom.getter();
  Gradient.init(stops:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  result = *&v35;
  v26 = v36;
  v27 = v32;
  *v32 = v35;
  v27[1] = v26;
  *(v27 + 4) = v37;
  return result;
}

uint64_t sub_10086AA84(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100AF3270);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for InsightsCurrentStreakView();
  __chkstk_darwin(v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000082B4(a1, v8, &qword_100AF3270);
  sub_10086AD58(v8, v11);
  v12 = *(a1 + *(v9 + 52) + 8);

  if ((v12 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  type metadata accessor for InsightsDataManager(0);
  sub_1000408A0(&qword_100AF5590, type metadata accessor for InsightsCurrentStreakView);
  sub_1000408A0(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
  View.environment<A>(_:)();

  return sub_10086D688(v11, type metadata accessor for InsightsCurrentStreakView);
}

uint64_t sub_10086AD58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Font.TextStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100021CEC(a1, a2, &qword_100AF3270);
  v8 = type metadata accessor for InsightsCurrentStreakView();
  v9 = v8[5];
  *(a2 + v9) = swift_getKeyPath();
  sub_1000F24EC(&qword_100AE27A0);
  swift_storeEnumTagMultiPayload();
  v10 = v8[6];
  v25[1] = 0;
  State.init(wrappedValue:)();
  *(a2 + v10) = v26;
  v11 = a2 + v8[7];
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  v12 = a2 + v8[8];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  v13 = a2 + v8[9];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  v14 = v8[10];
  *(a2 + v14) = swift_getKeyPath();
  sub_1000F24EC(&qword_100AD9990);
  swift_storeEnumTagMultiPayload();
  v15 = v8[11];
  *(a2 + v15) = swift_getKeyPath();
  sub_1000F24EC(&qword_100AE27B8);
  swift_storeEnumTagMultiPayload();
  v16 = a2 + v8[12];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  v17 = a2 + v8[13];
  type metadata accessor for InsightsDataManager(0);
  sub_1000408A0(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
  *v17 = Environment.init<A>(_:)();
  *(v17 + 8) = v18 & 1;
  v19 = v8[14];
  *(a2 + v19) = swift_getKeyPath();
  sub_1000F24EC(&qword_100AE27B0);
  swift_storeEnumTagMultiPayload();
  v20 = v8[15];
  sub_10015DDCC();
  *(a2 + v20) = AppStorage.init<A>(_:store:)();
  *&v26 = 0x4055000000000000;
  (*(v5 + 104))(v7, enum case for Font.TextStyle.subheadline(_:), v4);
  sub_10009BA68();
  ScaledMetric.init(wrappedValue:relativeTo:)();
  *(a2 + v8[17]) = 0x405B800000000000;
  sub_1003D8578((a2 + v8[18]));
  v21 = a2 + v8[19];
  KeyPath = swift_getKeyPath();
  LOBYTE(v26) = 0;
  *v21 = KeyPath;
  *(v21 + 104) = 0;
  v23 = v8[20];
  result = static Font.caption.getter();
  *(a2 + v23) = result;
  return result;
}

uint64_t sub_10086B0E4@<X0>(_BYTE *a1@<X8>)
{
  sub_10086BFB4();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10086B1A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a1;
  v46 = a2;
  v2 = sub_1000F24EC(&qword_100AF50F0);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v38 - v4;
  v44 = sub_1000F24EC(&qword_100AF50F8) - 8;
  __chkstk_darwin(v44);
  v7 = &v38 - v6;
  v8 = sub_1000F24EC(&qword_100AF5100);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v38 = &v38 - v10;
  v43 = sub_1000F24EC(&qword_100AF5108) - 8;
  __chkstk_darwin(v43);
  v40 = &v38 - v11;
  v12 = sub_1000F24EC(&qword_100AF5110);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v39 = &v38 - v14;
  v42 = sub_1000F24EC(&qword_100AF5118) - 8;
  __chkstk_darwin(v42);
  v41 = &v38 - v15;
  v16 = *(v3 + 44);
  v17 = enum case for BlendMode.plusDarker(_:);
  v18 = type metadata accessor for BlendMode();
  v19 = *(*(v18 - 8) + 104);
  v19(&v5[v16], v17, v18);
  v19(&v5[*(v3 + 48)], enum case for BlendMode.plusLighter(_:), v18);
  *v5 = 2;
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    v20 = 0.65;
  }

  else
  {
    v20 = 1.0;
  }

  sub_100021CEC(v5, v7, &qword_100AF50F0);
  *&v7[*(v44 + 44)] = v20;
  v21 = v38;
  sub_100021CEC(v7, v38, &qword_100AF50F8);
  *(v21 + *(v9 + 64)) = 256;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v22 = v40;
  sub_100021CEC(v21, v40, &qword_100AF5100);
  v23 = (v22 + *(v43 + 44));
  v24 = v49;
  *v23 = v48;
  v23[1] = v24;
  v23[2] = v50;
  v25 = static Alignment.center.getter();
  v27 = v26;
  v28 = v39;
  v29 = &v39[*(v13 + 44)];
  sub_10086B788(v29);
  v30 = (v29 + *(sub_1000F24EC(&qword_100AF5120) + 36));
  *v30 = v25;
  v30[1] = v27;
  sub_100021CEC(v22, v28, &qword_100AF5108);
  v31 = v41;
  v32 = &v41[*(v42 + 44)];
  sub_1000F24EC(&qword_100AF5128);
  static ContentShapeKinds.interaction.getter();
  *v32 = 0xC020000000000000;
  v32[8] = 0;
  sub_100021CEC(v28, v31, &qword_100AF5110);
  sub_1000F24EC(&qword_100AF5130);
  type metadata accessor for ContentShapeKinds();
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_100940050;
  static ContentShapeKinds.hoverEffect.getter();
  static ContentShapeKinds.accessibility.getter();
  v47 = v33;
  v34 = sub_1000F24EC(&qword_100AF5138);
  v35 = v46;
  v36 = (v46 + *(v34 + 36));
  sub_1000F24EC(&qword_100AF5140);
  sub_1000408A0(&qword_100AF5148, &type metadata accessor for ContentShapeKinds);
  sub_1000F24EC(&qword_100AF5150);
  sub_10000B58C(&qword_100AF5158, &qword_100AF5150);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *v36 = 0;
  return sub_100021CEC(v31, v35, &qword_100AF5118);
}

uint64_t sub_10086B788@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v1 = type metadata accessor for SymbolEffectOptions();
  v64 = *(v1 - 8);
  v65 = v1;
  __chkstk_darwin(v1);
  v60 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for AutomaticSymbolEffect();
  v63 = *(v61 - 8);
  __chkstk_darwin(v61);
  v59 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DynamicTypeSize();
  v57 = *(v4 - 8);
  v58 = v4;
  __chkstk_darwin(v4);
  v56 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1000F24EC(&qword_100ADB538) - 8;
  __chkstk_darwin(v48);
  v51 = &v45 - v6;
  v53 = sub_1000F24EC(&qword_100AF5160) - 8;
  __chkstk_darwin(v53);
  v52 = &v45 - v7;
  v46 = type metadata accessor for IconOnlyLabelStyle();
  v47 = *(v46 - 8);
  __chkstk_darwin(v46);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F24EC(&qword_100AF5168);
  __chkstk_darwin(v10);
  v12 = &v45 - v11;
  v13 = sub_1000F24EC(&qword_100AF5170);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v45 - v15;
  v50 = sub_1000F24EC(&qword_100AF5178);
  __chkstk_darwin(v50);
  v18 = &v45 - v17;
  v19 = sub_1000F24EC(&qword_100AF5180);
  v54 = *(v19 - 8);
  v55 = v19;
  __chkstk_darwin(v19);
  v49 = &v45 - v20;
  *v12 = static VerticalAlignment.center.getter();
  *(v12 + 1) = 0;
  v12[16] = 1;
  sub_1000F24EC(&qword_100AF5188);
  ButtonStyleConfiguration.label.getter();
  IconOnlyLabelStyle.init()();
  sub_10000B58C(&qword_100AF5190, &qword_100AF5168);
  sub_1000408A0(&qword_100ADCC50, &type metadata accessor for IconOnlyLabelStyle);
  v45 = v16;
  v21 = v46;
  View.labelStyle<A>(_:)();
  (*(v47 + 8))(v9, v21);
  sub_100004F84(v12, &qword_100AF5168);
  static Font.callout.getter();
  v22 = Font.bold()();

  KeyPath = swift_getKeyPath();
  v24 = &v16[*(v14 + 44)];
  *v24 = KeyPath;
  v24[1] = v22;
  v25 = static HierarchicalShapeStyle.secondary.getter();
  v26 = v48;
  v27 = *(v48 + 44);
  v28 = enum case for BlendMode.plusDarker(_:);
  v29 = type metadata accessor for BlendMode();
  v30 = *(*(v29 - 8) + 104);
  v31 = v51;
  v30(&v51[v27], v28, v29);
  v30(&v31[*(v26 + 48)], enum case for BlendMode.plusLighter(_:), v29);
  *v31 = v25;
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    v32 = 0.75;
  }

  else
  {
    v32 = 1.0;
  }

  v33 = v52;
  sub_100021CEC(v31, v52, &qword_100ADB538);
  *(v33 + *(v53 + 44)) = v32;
  sub_100021CEC(v33, &v18[*(v50 + 36)], &qword_100AF5160);
  sub_100021CEC(v45, v18, &qword_100AF5170);
  v35 = v56;
  v34 = v57;
  v36 = v58;
  (*(v57 + 104))(v56, enum case for DynamicTypeSize.large(_:), v58);
  sub_10086C008();
  v37 = v49;
  View.dynamicTypeSize(_:)();
  (*(v34 + 8))(v35, v36);
  sub_100004F84(v18, &qword_100AF5178);
  v38 = v59;
  AutomaticSymbolEffect.init()();
  v39 = v60;
  static SymbolEffectOptions.default.getter();
  v40 = sub_1000F24EC(&qword_100AF51B8);
  v41 = v62;
  v42 = (v62 + *(v40 + 36));
  sub_1000F24EC(&qword_100AD21B0);
  sub_1000408A0(&qword_100AE2418, &type metadata accessor for AutomaticSymbolEffect);
  v43 = v61;
  static ContentTransition.symbolEffect<A>(_:options:)();
  (*(v64 + 8))(v39, v65);
  (*(v63 + 8))(v38, v43);
  *v42 = swift_getKeyPath();
  return (*(v54 + 32))(v41, v37, v55);
}

unint64_t sub_10086BFB4()
{
  result = qword_100AF50E8;
  if (!qword_100AF50E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF50E8);
  }

  return result;
}

unint64_t sub_10086C008()
{
  result = qword_100AF5198;
  if (!qword_100AF5198)
  {
    sub_1000F2A18(&qword_100AF5178);
    sub_10086C0C0();
    sub_10000B58C(&qword_100AF51A8, &qword_100AF51B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5198);
  }

  return result;
}

unint64_t sub_10086C0C0()
{
  result = qword_100AF51A0;
  if (!qword_100AF51A0)
  {
    sub_1000F2A18(&qword_100AF5170);
    sub_1000F2A18(&qword_100AF5168);
    type metadata accessor for IconOnlyLabelStyle();
    sub_10000B58C(&qword_100AF5190, &qword_100AF5168);
    sub_1000408A0(&qword_100ADCC50, &type metadata accessor for IconOnlyLabelStyle);
    swift_getOpaqueTypeConformance2();
    sub_10000B58C(&qword_100AD2760, &unk_100AE16A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF51A0);
  }

  return result;
}

unint64_t sub_10086C238()
{
  result = qword_100AF5230;
  if (!qword_100AF5230)
  {
    sub_1000F2A18(&qword_100AF5228);
    sub_10000B58C(&qword_100AF5238, &qword_100AF5220);
    sub_10000B58C(&qword_100AD2610, &qword_100AD2618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5230);
  }

  return result;
}

unint64_t sub_10086C31C()
{
  result = qword_100AF5248;
  if (!qword_100AF5248)
  {
    sub_1000F2A18(&qword_100AF5200);
    sub_10086C3D4();
    sub_10000B58C(&qword_100AF52A0, &qword_100AF5240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5248);
  }

  return result;
}

unint64_t sub_10086C3D4()
{
  result = qword_100AF5250;
  if (!qword_100AF5250)
  {
    sub_1000F2A18(&qword_100AF51F8);
    sub_10086C48C();
    sub_10000B58C(&qword_100ADB138, &qword_100ADB140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5250);
  }

  return result;
}

unint64_t sub_10086C48C()
{
  result = qword_100AF5258;
  if (!qword_100AF5258)
  {
    sub_1000F2A18(&qword_100AF51F0);
    sub_10086C544();
    sub_10000B58C(&qword_100ADB128, &qword_100ADB130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5258);
  }

  return result;
}

unint64_t sub_10086C544()
{
  result = qword_100AF5260;
  if (!qword_100AF5260)
  {
    sub_1000F2A18(&qword_100AF51E8);
    sub_1000F2A18(&qword_100AD0DF8);
    sub_10086C654();
    sub_100280BD0();
    swift_getOpaqueTypeConformance2();
    sub_10000B58C(&qword_100AE5EC0, &qword_100AE5EC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5260);
  }

  return result;
}

unint64_t sub_10086C654()
{
  result = qword_100AF5268;
  if (!qword_100AF5268)
  {
    sub_1000F2A18(&qword_100AD0DF8);
    sub_10086C70C();
    sub_10000B58C(&qword_100AD2108, &qword_100AD20A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5268);
  }

  return result;
}

unint64_t sub_10086C70C()
{
  result = qword_100AF5270;
  if (!qword_100AF5270)
  {
    sub_1000F2A18(&qword_100AF51D8);
    sub_10086C7C4();
    sub_10000B58C(&qword_100AF5290, &qword_100AF5298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5270);
  }

  return result;
}

unint64_t sub_10086C7C4()
{
  result = qword_100AF5278;
  if (!qword_100AF5278)
  {
    sub_1000F2A18(&qword_100AF51D0);
    sub_10086C87C();
    sub_10000B58C(&qword_100AD2428, &qword_100AD2430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5278);
  }

  return result;
}

unint64_t sub_10086C87C()
{
  result = qword_100AF5280;
  if (!qword_100AF5280)
  {
    sub_1000F2A18(&qword_100AF51C8);
    sub_10000B58C(&qword_100AF5288, &qword_100AF51C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5280);
  }

  return result;
}

unint64_t sub_10086C934()
{
  result = qword_100AF5338;
  if (!qword_100AF5338)
  {
    sub_1000F2A18(&qword_100AF52E0);
    sub_10086C9C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5338);
  }

  return result;
}

unint64_t sub_10086C9C0()
{
  result = qword_100AF5340;
  if (!qword_100AF5340)
  {
    sub_1000F2A18(&qword_100AF52D8);
    sub_10000B58C(&qword_100AF5348, &qword_100AF52D0);
    sub_10000B58C(&qword_100ADB598, &qword_100ADB5A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5340);
  }

  return result;
}

uint64_t sub_10086CABC(uint64_t a1)
{
  v4 = *(type metadata accessor for InsightsSetScheduleAction() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032ECC;

  return sub_10089414C(a1, v6, v7, v1 + v5);
}

unint64_t sub_10086CBAC()
{
  result = qword_100AF5408;
  if (!qword_100AF5408)
  {
    sub_1000F2A18(&qword_100AF5400);
    sub_10086CC64();
    sub_10000B58C(&qword_100AD2760, &unk_100AE16A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5408);
  }

  return result;
}

unint64_t sub_10086CC64()
{
  result = qword_100AF5410;
  if (!qword_100AF5410)
  {
    sub_1000F2A18(&qword_100AF5418);
    sub_1001D51DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5410);
  }

  return result;
}

unint64_t sub_10086CCE8()
{
  result = qword_100AF5420;
  if (!qword_100AF5420)
  {
    sub_1000F2A18(&qword_100AF53F0);
    sub_10086CDA0();
    sub_10000B58C(&qword_100AD21A8, &qword_100AD21B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5420);
  }

  return result;
}

unint64_t sub_10086CDA0()
{
  result = qword_100AF5428;
  if (!qword_100AF5428)
  {
    sub_1000F2A18(&qword_100AF53E8);
    sub_10086CE58();
    sub_10000B58C(&qword_100AD21E0, &qword_100AD21E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5428);
  }

  return result;
}

unint64_t sub_10086CE58()
{
  result = qword_100AF5430;
  if (!qword_100AF5430)
  {
    sub_1000F2A18(&qword_100AF53E0);
    sub_1000F2A18(&qword_100AF5400);
    sub_10086CBAC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5430);
  }

  return result;
}

uint64_t sub_10086CF20(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1000F24DC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10086CF70(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1000594D0(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_10086CFD4()
{
  result = qword_100AF5498;
  if (!qword_100AF5498)
  {
    sub_1000F2A18(&qword_100AF5488);
    sub_10000B58C(&qword_100AF54A0, &qword_100AF54A8);
    sub_10000B58C(&qword_100AD2428, &qword_100AD2430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5498);
  }

  return result;
}

unint64_t sub_10086D0B8()
{
  result = qword_100AF54C0;
  if (!qword_100AF54C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF54C0);
  }

  return result;
}

unint64_t sub_10086D10C()
{
  result = qword_100AF54C8;
  if (!qword_100AF54C8)
  {
    sub_1000F2A18(&qword_100AF5458);
    sub_1000F2A18(&qword_100AF5450);
    sub_10000B58C(&qword_100AF54B8, &qword_100AF5450);
    sub_10086D0B8();
    swift_getOpaqueTypeConformance2();
    sub_10000B58C(&qword_100ADB248, &qword_100ADB250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF54C8);
  }

  return result;
}

uint64_t sub_10086D248(uint64_t a1)
{
  v3 = *(type metadata accessor for InsightsCurrentStreakView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10086595C(a1, v4);
}

unint64_t sub_10086D2B8()
{
  result = qword_100AF54D0;
  if (!qword_100AF54D0)
  {
    sub_1000F2A18(&qword_100AF5460);
    sub_10086D10C();
    sub_1000408A0(&qword_100AD2200, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF54D0);
  }

  return result;
}

uint64_t sub_10086D374(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10086D3DC(uint64_t a1)
{
  v4 = *(type metadata accessor for InsightsTipViewModel() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032ECC;

  return sub_1003D72F0(a1, v6, v7, v1 + v5);
}

unint64_t sub_10086D4D8()
{
  result = qword_100AF5558;
  if (!qword_100AF5558)
  {
    sub_1000F2A18(&qword_100AF3268);
    sub_10086D55C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5558);
  }

  return result;
}

unint64_t sub_10086D55C()
{
  result = qword_100AF5560;
  if (!qword_100AF5560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5560);
  }

  return result;
}

uint64_t sub_10086D5C8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for InsightsCurrentStreakView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_10086D63C()
{
  result = qword_100AD8670;
  if (!qword_100AD8670)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AD8670);
  }

  return result;
}

uint64_t sub_10086D688(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10086D6E8()
{
  result = qword_100AF55C0;
  if (!qword_100AF55C0)
  {
    sub_1000F2A18(&qword_100AF5138);
    sub_10086D7A0();
    sub_10000B58C(qword_100AF55F8, &qword_100AF5140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF55C0);
  }

  return result;
}

unint64_t sub_10086D7A0()
{
  result = qword_100AF55C8;
  if (!qword_100AF55C8)
  {
    sub_1000F2A18(&qword_100AF5118);
    sub_10086D858();
    sub_10000B58C(&qword_100AF55F0, &qword_100AF5128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF55C8);
  }

  return result;
}

unint64_t sub_10086D858()
{
  result = qword_100AF55D0;
  if (!qword_100AF55D0)
  {
    sub_1000F2A18(&qword_100AF5110);
    sub_10086D910();
    sub_10000B58C(&qword_100AF55E8, &qword_100AF5120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF55D0);
  }

  return result;
}

unint64_t sub_10086D910()
{
  result = qword_100AF55D8;
  if (!qword_100AF55D8)
  {
    sub_1000F2A18(&qword_100AF5108);
    sub_10000B58C(&qword_100AF55E0, &qword_100AF5100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF55D8);
  }

  return result;
}

uint64_t sub_10086D9C8()
{
  v1 = type metadata accessor for VisitAssetMetadata();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MultiPinMapAssetMetadata();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F24EC(&unk_100AD5B30);
  __chkstk_darwin(v9 - 8);
  v11 = &v33 - v10;
  if (!*(v0 + OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata))
  {
    return 0;
  }

  sub_1000768B4(v11);

  if ((*(v6 + 48))(v11, 1, v5))
  {
    sub_1004D1274(v11);
    return 0;
  }

  (*(v6 + 16))(v8, v11, v5);
  sub_1004D1274(v11);
  v13 = MultiPinMapAssetMetadata.visitsData.getter();
  (*(v6 + 8))(v8, v5);
  if (!v13)
  {
    return 0;
  }

  v14 = *(v13 + 16);
  v33 = v13;
  if (v14)
  {
    v17 = *(v2 + 16);
    v15 = v2 + 16;
    v16 = v17;
    v18 = v13 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v36 = *(v15 + 56);
    v19 = (v15 - 8);
    v20 = _swiftEmptyArrayStorage;
    v34 = v17;
    v35 = v15;
    v17(v4, v18, v1);
    while (1)
    {
      v22 = VisitAssetMetadata.latitude.getter();
      if (v23)
      {
        break;
      }

      v24 = v22;
      v25 = VisitAssetMetadata.longitude.getter();
      v21 = *v19;
      if (v26)
      {
        goto LABEL_9;
      }

      v27 = v25;
      v21(v4, v1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_10007AF8C(0, *(v20 + 2) + 1, 1, v20);
      }

      v29 = *(v20 + 2);
      v28 = *(v20 + 3);
      if (v29 >= v28 >> 1)
      {
        v20 = sub_10007AF8C((v28 > 1), v29 + 1, 1, v20);
      }

      *(v20 + 2) = v29 + 1;
      v30 = &v20[16 * v29];
      *(v30 + 4) = v24;
      *(v30 + 5) = v27;
      v16 = v34;
LABEL_10:
      v18 += v36;
      if (!--v14)
      {
        goto LABEL_20;
      }

      v16(v4, v18, v1);
    }

    v21 = *v19;
LABEL_9:
    v21(v4, v1);
    goto LABEL_10;
  }

  v20 = _swiftEmptyArrayStorage;
LABEL_20:

  v31 = sub_1008908D8(v20);

  v32 = *(v31 + 16);

  return v32;
}

uint64_t sub_10086DD58()
{
  v0 = sub_10086DE78();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    v4 = sub_10086E304();
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      if (qword_100AD0500 != -1)
      {
        swift_once();
      }

      sub_1000F24EC(&unk_100AD5B10);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_100940050;
      *(v8 + 56) = &type metadata for String;
      v9 = sub_100031B20();
      *(v8 + 32) = v2;
      *(v8 + 40) = v3;
      *(v8 + 96) = &type metadata for String;
      *(v8 + 104) = v9;
      *(v8 + 64) = v9;
      *(v8 + 72) = v6;
      *(v8 + 80) = v7;
      v10 = static String.localizedStringWithFormat(_:_:)();

      return v10;
    }
  }

  result = sub_10086DE78();
  if (!v12)
  {
    return sub_10086E304();
  }

  return result;
}

uint64_t sub_10086DE78()
{
  v1 = type metadata accessor for VisitAssetMetadata();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v35 - v6;
  v8 = type metadata accessor for MultiPinMapAssetMetadata();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000F24EC(&unk_100AD5B30);
  __chkstk_darwin(v12 - 8);
  v14 = v35 - v13;
  if (!*(v0 + OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata))
  {
    return 0;
  }

  v35[1] = v0;

  sub_1000768B4(v14);

  if ((*(v9 + 48))(v14, 1, v8))
  {
    sub_1004D1274(v14);
    return 0;
  }

  (*(v9 + 16))(v11, v14, v8);
  sub_1004D1274(v14);
  v16 = MultiPinMapAssetMetadata.visitsData.getter();
  (*(v9 + 8))(v11, v8);
  if (!v16)
  {
    return 0;
  }

  v17 = *(v16 + 16);
  if (!v17)
  {
    goto LABEL_16;
  }

  (*(v2 + 16))(v4, v16 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * (v17 - 1), v1);

  (*(v2 + 32))(v7, v4, v1);
  v18 = VisitAssetMetadata.placeName.getter();
  if (!v19)
  {
LABEL_18:
    v29 = VisitAssetMetadata.city.getter();
    v31 = v30;
    (*(v2 + 8))(v7, v1);
    if (!v31)
    {
      return 0;
    }

    v32 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v32 = v29 & 0xFFFFFFFFFFFFLL;
    }

    if (v32)
    {
      return v29;
    }

LABEL_16:

    return 0;
  }

  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {

    goto LABEL_18;
  }

  v21 = v19;
  v22 = v18;
  v23 = sub_10086D9C8();
  if ((v24 & 1) != 0 || (v25 = v23, v23 < 2))
  {
    VisitAssetMetadata.city.getter();
    v34 = v33;
    (*(v2 + 8))(v7, v1);
    if (v34)
    {
    }

    return v22;
  }

  else
  {
    if (qword_100AD04F0 != -1)
    {
      swift_once();
    }

    sub_1000F24EC(&unk_100AD5B10);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_100940050;
    *(v26 + 56) = &type metadata for String;
    v27 = sub_100031B20();
    *(v26 + 32) = v22;
    *(v26 + 40) = v21;
    *(v26 + 96) = &type metadata for Int;
    *(v26 + 104) = &protocol witness table for Int;
    *(v26 + 64) = v27;
    *(v26 + 72) = v25 - 1;
    v28 = static String.localizedStringWithFormat(_:_:)();

    (*(v2 + 8))(v7, v1);
    return v28;
  }
}

uint64_t sub_10086E304()
{
  v1 = type metadata accessor for VisitAssetMetadata();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v31 - v6;
  v8 = type metadata accessor for MultiPinMapAssetMetadata();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000F24EC(&unk_100AD5B30);
  __chkstk_darwin(v12 - 8);
  v14 = v31 - v13;
  if (!*(v0 + OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata))
  {
    return 0;
  }

  v31[1] = v0;

  sub_1000768B4(v14);

  if ((*(v9 + 48))(v14, 1, v8))
  {
    sub_1004D1274(v14);
    return 0;
  }

  (*(v9 + 16))(v11, v14, v8);
  sub_1004D1274(v14);
  v16 = MultiPinMapAssetMetadata.visitsData.getter();
  (*(v9 + 8))(v11, v8);
  if (!v16)
  {
    return 0;
  }

  v17 = *(v16 + 16);
  if (!v17)
  {
    goto LABEL_15;
  }

  (*(v2 + 16))(v4, v16 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * (v17 - 1), v1);

  (*(v2 + 32))(v7, v4, v1);
  v18 = VisitAssetMetadata.placeName.getter();
  if (!v19)
  {
    goto LABEL_14;
  }

  v20 = v18;
  v21 = v19;

  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {
LABEL_14:
    VisitAssetMetadata.city.getter();
    v26 = v25;
    (*(v2 + 8))(v7, v1);
    if (!v26)
    {
      return 0;
    }

    goto LABEL_15;
  }

  v23 = sub_10086D9C8();
  if ((v24 & 1) == 0 && v23 >= 2)
  {
    (*(v2 + 8))(v7, v1);
    return 0;
  }

  v27 = VisitAssetMetadata.city.getter();
  v29 = v28;
  (*(v2 + 8))(v7, v1);
  if (v29)
  {
    v30 = HIBYTE(v29) & 0xF;
    if ((v29 & 0x2000000000000000) == 0)
    {
      v30 = v27 & 0xFFFFFFFFFFFFLL;
    }

    if (v30)
    {
      return v27;
    }

LABEL_15:

    return 0;
  }

  return 0;
}

uint64_t sub_10086E6B4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for VisitAssetMetadata();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for MultiPinMapAssetMetadata();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD5B30);
  v2[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[12] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[13] = v6;
  v2[14] = v5;

  return _swift_task_switch(sub_10086E848, v6, v5);
}

uint64_t sub_10086E848()
{
  if (!*(v0[3] + OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata))
  {
    goto LABEL_8;
  }

  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];

  sub_1000768B4(v1);

  if ((*(v3 + 48))(v1, 1, v2))
  {
    v4 = v0[11];

    sub_1004D1274(v4);
LABEL_9:

    v18 = v0[1];

    return v18(0);
  }

  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[8];
  v8 = v0[9];
  (*(v8 + 16))(v5, v6, v7);
  sub_1004D1274(v6);
  v9 = MultiPinMapAssetMetadata.visitsData.getter();
  (*(v8 + 8))(v5, v7);
  if (!v9)
  {
LABEL_8:

    goto LABEL_9;
  }

  v10 = *(v9 + 16);
  if (!v10)
  {

    goto LABEL_9;
  }

  v12 = v0[6];
  v11 = v0[7];
  v13 = v0[4];
  v14 = v0[5];
  (*(v14 + 16))(v12, v9 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * (v10 - 1), v13);

  (*(v14 + 32))(v11, v12, v13);
  v15 = VisitAssetMetadata.mapItemData.getter();
  if (v16 >> 60 == 15)
  {
    v17 = 0;
  }

  else
  {
    v20 = v15;
    v21 = v16;
    sub_1000065A8(0, &qword_100AD5A90);
    v17 = static NSCoding<>.create(from:)();
    sub_10003A5C8(v20, v21);
  }

  v0[15] = v17;

  return _swift_task_switch(sub_10086EACC, 0, 0);
}

uint64_t sub_10086EACC()
{
  v1 = [*(v0 + 120) _styleAttributes];
  if (!v1)
  {
    v1 = [objc_opt_self() markerStyleAttributes];
  }

  v2 = *(v0 + 120);
  v3 = *(v0 + 16);
  v4 = objc_opt_self();
  [v3 displayScale];
  *(v0 + 128) = [v4 imageForStyle:v1 size:3 forScale:0 format:?];
  v5 = [v2 _styleAttributes];
  [v3 displayScale];
  v6 = [v4 newFillColorForStyleAttributes:v5 forScale:?];

  v7 = v4;
  if (v6)
  {
    v8 = [objc_allocWithZone(UIColor) initWithCGColor:v6];
  }

  else
  {
    if (qword_100AD0360 != -1)
    {
      swift_once();
    }

    v8 = qword_100B30358;
  }

  *(v0 + 136) = v8;

  v9 = *(v0 + 104);
  v10 = *(v0 + 112);

  return _swift_task_switch(sub_10086EC90, v9, v10);
}

uint64_t sub_10086EC90()
{

  v1 = sub_10086D9C8();
  if ((v2 & 1) == 0 && v1 >= 2)
  {
    if (qword_100AD09E0 != -1)
    {
      swift_once();
    }

    v3 = qword_100B30EB8;
    v4 = v0[16];
    v5 = v0[17];
    v6 = v0[7];
    v7 = v0[4];
    v8 = v0[5];
    if (qword_100B30EB8)
    {
      sub_1000F24EC(&unk_100AD4780);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_100941D60;
      *(v9 + 32) = [objc_opt_self() whiteColor];
      *(v9 + 40) = v5;
      sub_1000065A8(0, &qword_100AD4C70);
      v10 = v5;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v12 = [objc_opt_self() configurationWithPaletteColors:isa];

      v3 = [v3 imageWithConfiguration:v12];
      (*(v8 + 8))(v6, v7);
    }

    else
    {
      (*(v8 + 8))(v6, v7);
    }

    goto LABEL_17;
  }

  if (qword_100AD09D8 != -1)
  {
    swift_once();
  }

  v13 = qword_100B30EB0;
  if (!qword_100B30EB0)
  {
    v24 = v0[17];
    (*(v0[5] + 8))(v0[7], v0[4]);

    goto LABEL_15;
  }

  sub_1000F24EC(&unk_100AD4780);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100941D60;
  *(v14 + 32) = [objc_opt_self() whiteColor];
  if (qword_100AD0360 != -1)
  {
    swift_once();
  }

  v15 = v0[16];
  v16 = v0[17];
  v17 = v0[7];
  v18 = v0[4];
  v19 = v0[5];
  v20 = qword_100B30358;
  *(v14 + 40) = qword_100B30358;
  sub_1000065A8(0, &qword_100AD4C70);
  v21 = v20;
  v22 = Array._bridgeToObjectiveC()().super.isa;

  v23 = [objc_opt_self() configurationWithPaletteColors:v22];

  v3 = [v13 imageWithConfiguration:v23];
  (*(v19 + 8))(v17, v18);

  if (v15)
  {

LABEL_15:
    v3 = v0[16];
  }

LABEL_17:

  v25 = v0[1];

  return v25(v3);
}

uint64_t sub_10086F068(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for VisitAssetMetadata();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for MultiPinMapAssetMetadata();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD5B30);
  v2[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[12] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[13] = v6;
  v2[14] = v5;

  return _swift_task_switch(sub_10086F1FC, v6, v5);
}

uint64_t sub_10086F1FC()
{
  if (!*(v0[3] + OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata))
  {
    goto LABEL_8;
  }

  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];

  sub_1000768B4(v1);

  if ((*(v3 + 48))(v1, 1, v2))
  {
    v4 = v0[11];

    sub_1004D1274(v4);
LABEL_9:

    v18 = v0[1];

    return v18(0);
  }

  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[8];
  v8 = v0[9];
  (*(v8 + 16))(v5, v6, v7);
  sub_1004D1274(v6);
  v9 = MultiPinMapAssetMetadata.visitsData.getter();
  (*(v8 + 8))(v5, v7);
  if (!v9)
  {
LABEL_8:

    goto LABEL_9;
  }

  v10 = *(v9 + 16);
  if (!v10)
  {

    goto LABEL_9;
  }

  v12 = v0[6];
  v11 = v0[7];
  v13 = v0[4];
  v14 = v0[5];
  (*(v14 + 16))(v12, v9 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * (v10 - 1), v13);

  (*(v14 + 32))(v11, v12, v13);
  v15 = VisitAssetMetadata.mapItemData.getter();
  if (v16 >> 60 == 15)
  {
    v17 = 0;
  }

  else
  {
    v20 = v15;
    v21 = v16;
    sub_1000065A8(0, &qword_100AD5A90);
    v17 = static NSCoding<>.create(from:)();
    sub_10003A5C8(v20, v21);
  }

  v0[15] = v17;

  return _swift_task_switch(sub_10086F480, 0, 0);
}

uint64_t sub_10086F480()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 16);
  v3 = objc_opt_self();
  v4 = [v1 _styleAttributes];
  [v2 displayScale];
  v5 = [v3 newFillColorForStyleAttributes:v4 forScale:?];

  v6 = v3;
  if (v5)
  {
    v7 = [objc_allocWithZone(UIColor) initWithCGColor:v5];
  }

  else
  {
    if (qword_100AD0360 != -1)
    {
      swift_once();
    }

    v7 = qword_100B30358;
  }

  *(v0 + 128) = v7;

  v8 = *(v0 + 104);
  v9 = *(v0 + 112);

  return _swift_task_switch(sub_10086F5C4, v8, v9);
}

uint64_t sub_10086F5C4()
{
  v1 = v0[16];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];

  v5 = [v1 colorWithAlphaComponent:0.15];

  (*(v4 + 8))(v2, v3);

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_10086F6B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_100198FF0;

  return sub_10086E6B4(a3);
}

uint64_t sub_10086F750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_10086F7E8;

  return sub_10086F068(a3);
}

uint64_t sub_10086F7E8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);

  if (v4)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *(v3 + 40) = a1;

  return _swift_task_switch(sub_10086F934, v5, v7);
}

id sub_10086F938()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  v2 = [objc_allocWithZone(LPLinkMetadata) init];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v3 = String._bridgeToObjectiveC()();

  [v2 setTitle:v3];

  sub_1001E4330();
  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  [v2 setSummary:v5];

  return v2;
}

void sub_10086FAC0(_BYTE *a1, double a2, double a3)
{
  v7 = *(v3 + 32);
  [v7 recordingStartTime];
  v9 = v8;
  [v7 punchInTime];
  v12 = 0.0;
  *a1 = [v7 getAmplitudes:&v12 count:1 startTime:v9 + a2 - v10 + -0.1 endTime:v9 + a3 - v10 + -0.1];
  if (v12 != 0.0)
  {
    [v7 runningAverage];
    powf(1.0 - v11, 3.0);
  }
}

uint64_t sub_10086FC44()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10086FCB4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_10086FDF4(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_100870058()
{
  sub_10086BFB4();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t sub_100870094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = sub_1000F24EC(&qword_100AF5680);
  return sub_1008700F4(v2, *(a1 + 16), a2 + *(v5 + 44));
}

uint64_t sub_1008700F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22[1] = a3;
  v5 = type metadata accessor for DynamicTypeSize();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 - 8);
  __chkstk_darwin(v10);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000F24EC(&qword_100AF5688);
  v14 = __chkstk_darwin(v13);
  v16 = v22 - v15;
  (*(v9 + 16))(v12, a1, a2, v14);
  sub_1000F24EC(&qword_100AF5690);
  sub_1008716B0();
  ForEach.init<A>(subviews:content:)();
  KeyPath = swift_getKeyPath();
  v18 = &v16[*(sub_1000F24EC(&qword_100AF56C0) + 36)];
  *v18 = KeyPath;
  v18[8] = 1;
  v19 = swift_getKeyPath();
  v20 = &v16[*(v13 + 36)];
  sub_1000F24EC(&qword_100AF56C8);
  static Locale.current.getter();
  *v20 = v19;
  (*(v6 + 104))(v8, enum case for DynamicTypeSize.large(_:), v5);
  sub_100871878();
  View.dynamicTypeSize(_:)();
  (*(v6 + 8))(v8, v5);
  return sub_100004F84(v16, &qword_100AF5688);
}

uint64_t sub_1008703D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ContainerValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&qword_100AD2828);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v37 - v10;
  v12 = sub_1000F24EC(&qword_100AD2830);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v37 - v14;
  v16 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = type metadata accessor for Subview();
  (*(*(v25 - 8) + 16))(v11, a1, v25);
  v26 = &v11[*(v9 + 44)];
  *v26 = v16;
  *(v26 + 1) = v18;
  *(v26 + 2) = v20;
  *(v26 + 3) = v22;
  *(v26 + 4) = v24;
  v26[40] = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100021CEC(v11, v15, &qword_100AD2828);
  v27 = &v15[*(v13 + 44)];
  v28 = v43;
  *(v27 + 4) = v42;
  *(v27 + 5) = v28;
  *(v27 + 6) = v44;
  v29 = v39;
  *v27 = v38;
  *(v27 + 1) = v29;
  v30 = v41;
  *(v27 + 2) = v40;
  *(v27 + 3) = v30;
  Subview.containerValues.getter();
  sub_100504804();
  ContainerValues.subscript.getter();
  (*(v5 + 8))(v7, v4);
  v31 = v37;
  v32 = static Alignment.center.getter();
  v34 = v33;
  sub_100021CEC(v15, a2, &qword_100AD2830);
  result = sub_1000F24EC(&qword_100AF5690);
  v36 = (a2 + *(result + 36));
  *v36 = v31;
  v36[1] = v32;
  v36[2] = v34;
  return result;
}

uint64_t sub_1008706EC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ColorRenderingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(a1 - 8);
  __chkstk_darwin(v9);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getWitnessTable();
  type metadata accessor for ImageRenderer();
  (*(v8 + 16))(v11, v2, a1);
  ImageRenderer.__allocating_init(_content:)();
  ImageRenderer._scale.setter();
  ImageRenderer._isOpaque.setter();
  (*(v5 + 104))(v7, enum case for ColorRenderingMode.nonLinear(_:), v4);
  ImageRenderer._colorMode.setter();
  v14[8] = 0;
  v14[0] = 1;
  ImageRenderer._proposedSize.setter();
  v12 = ImageRenderer._uiImage.getter();

  return v12;
}

uint64_t sub_1008708E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a3;
  v5 = sub_1000F24EC(&unk_100AD7C40);
  __chkstk_darwin(v5 - 8);
  v36 = &v29 - v6;
  v37 = type metadata accessor for UTType();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v7 = type metadata accessor for InsightsSocialMediaTransfer();
  WitnessTable = swift_getWitnessTable();
  v40 = v7;
  v8 = type metadata accessor for DataRepresentation();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v34 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v31 = &v29 - v12;
  __chkstk_darwin(v13);
  v15 = &v29 - v14;
  __chkstk_darwin(v16);
  v18 = &v29 - v17;
  v32 = &v29 - v17;
  static UTType.heic.getter();
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v30 = a2;
  DataRepresentation.init(exportedContentType:exporting:)();
  v33 = swift_getWitnessTable();
  v20 = *(v9 + 16);
  v20(v18, v15, v8);
  v29 = v20;
  v21 = *(v9 + 8);
  v21(v15, v8);
  static UTType.jpeg.getter();
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  v23 = v31;
  DataRepresentation.init(exportedContentType:exporting:)();
  v20(v15, v23, v8);
  v21(v23, v8);
  (*(v35 + 56))(v36, 1, 1, v37);
  UTType.init(exportedAs:conformingTo:)();
  v24 = swift_allocObject();
  v25 = v30;
  *(v24 + 16) = a1;
  *(v24 + 24) = v25;
  v26 = v34;
  DataRepresentation.init(exportedContentType:exporting:)();
  v29(v23, v26, v8);
  v21(v26, v8);
  v27 = v32;
  sub_1008714C0(v32, v15, v23, v8, v8, v8, v33, v38);
  v21(v23, v8);
  v21(v15, v8);
  return (v21)(v27, v8);
}

uint64_t sub_100870D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1000F24EC(&unk_100AD6DD0);
  v3[5] = swift_task_alloc();
  v4 = type metadata accessor for CocoaError.Code();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100870E7C, 0, 0);
}

uint64_t sub_100870E7C()
{
  v1 = type metadata accessor for InsightsSocialMediaTransfer();
  v2 = sub_1008706EC(v1);
  if (v2 && (v3 = v2, v4 = UIImageHEICRepresentation(v2), v3, v4))
  {
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = v0[1];

    return v8(v5, v7);
  }

  else
  {
    v11 = v0[7];
    v10 = v0[8];
    v13 = v0[5];
    v12 = v0[6];
    static CocoaError.Code.coderInvalidValue.getter();
    v14 = type metadata accessor for URL();
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
    static CocoaError.error(_:userInfo:url:)();
    sub_100004F84(v13, &unk_100AD6DD0);
    (*(v11 + 8))(v10, v12);
    swift_willThrow();

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_100871038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1000F24EC(&unk_100AD6DD0);
  v3[5] = swift_task_alloc();
  v4 = type metadata accessor for CocoaError.Code();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100871134, 0, 0);
}

uint64_t sub_100871134()
{
  v1 = type metadata accessor for InsightsSocialMediaTransfer();
  v2 = sub_1008706EC(v1);
  if (v2 && (v3 = v2, v4 = UIImageJPEGRepresentation(v2, 0.75), v3, v4))
  {
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = v0[1];

    return v8(v5, v7);
  }

  else
  {
    v11 = v0[7];
    v10 = v0[8];
    v13 = v0[5];
    v12 = v0[6];
    static CocoaError.Code.coderInvalidValue.getter();
    v14 = type metadata accessor for URL();
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
    static CocoaError.error(_:userInfo:url:)();
    sub_100004F84(v13, &unk_100AD6DD0);
    (*(v11 + 8))(v10, v12);
    swift_willThrow();

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_1008712F4()
{
  type metadata accessor for CocoaError.Code();
  v0[2] = swift_task_alloc();
  v1 = type metadata accessor for CocoaError();
  v0[3] = v1;
  v0[4] = *(v1 - 8);
  v0[5] = swift_task_alloc();

  return _swift_task_switch(sub_1008713DC, 0, 0);
}

uint64_t sub_1008713DC()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  static CocoaError.Code.featureUnsupported.getter();
  sub_100871D70(_swiftEmptyArrayStorage);
  sub_100871E80();
  _BridgedStoredNSError.init(_:userInfo:)();
  CocoaError._nsError.getter();
  (*(v2 + 8))(v1, v3);
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1008714C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v22 = a3;
  v23 = a7;
  v24 = a8;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v14 = __chkstk_darwin(TupleTypeMetadata3);
  v16 = &v21 - v15;
  v18 = *(v17 + 48);
  v19 = *(v17 + 64);
  (*(*(a4 - 8) + 16))(&v21 - v15, a1, a4, v14);
  (*(*(a5 - 8) + 16))(&v16[v18], a2, a5);
  (*(*(a6 - 8) + 16))(&v16[v19], v22, a6);
  swift_getAssociatedConformanceWitness();
  return TupleTransferRepresentation.init(_:)();
}

unint64_t sub_1008716B0()
{
  result = qword_100AF5698;
  if (!qword_100AF5698)
  {
    sub_1000F2A18(&qword_100AF5690);
    sub_100871768();
    sub_10000B58C(&qword_100AF56B0, &qword_100AF56B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5698);
  }

  return result;
}

unint64_t sub_100871768()
{
  result = qword_100AF56A0;
  if (!qword_100AF56A0)
  {
    sub_1000F2A18(&qword_100AD2830);
    sub_1008717F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF56A0);
  }

  return result;
}

unint64_t sub_1008717F4()
{
  result = qword_100AF56A8;
  if (!qword_100AF56A8)
  {
    sub_1000F2A18(&qword_100AD2828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF56A8);
  }

  return result;
}

unint64_t sub_100871878()
{
  result = qword_100AF56D0;
  if (!qword_100AF56D0)
  {
    sub_1000F2A18(&qword_100AF5688);
    sub_100871930();
    sub_10000B58C(&qword_100AF56F0, &qword_100AF56C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF56D0);
  }

  return result;
}

unint64_t sub_100871930()
{
  result = qword_100AF56D8;
  if (!qword_100AF56D8)
  {
    sub_1000F2A18(&qword_100AF56C0);
    sub_1008719E8();
    sub_10000B58C(&qword_100ADCF88, &qword_100ADCF90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF56D8);
  }

  return result;
}

unint64_t sub_1008719E8()
{
  result = qword_100AF56E0;
  if (!qword_100AF56E0)
  {
    sub_1000F2A18(&qword_100AF56E8);
    sub_1008716B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF56E0);
  }

  return result;
}

uint64_t sub_100871A6C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100871F58;

  return sub_100870D80(a1, v5, v4);
}

uint64_t sub_100871B14(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100871BBC;

  return sub_100871038(a1, v5, v4);
}

uint64_t sub_100871BBC(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_100871CC8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100871F58;

  return sub_1008712F4();
}

unint64_t sub_100871D70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F24EC(&qword_100ADFEA8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100871ED8(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_100094E98(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10002432C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100871E80()
{
  result = qword_100AF56F8;
  if (!qword_100AF56F8)
  {
    type metadata accessor for CocoaError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF56F8);
  }

  return result;
}

uint64_t sub_100871ED8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100ADFEB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100871F5C()
{
  v0 = _s23YearAdaptiveFormatStyleVMa();
  __chkstk_darwin(v0);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000F24EC(&qword_100AD6F70);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  sub_1006ABC94(v5);
  v9 = type metadata accessor for MusicAssetMetadata();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v5, 1, v9) == 1)
  {
    v11 = &qword_100AD6F70;
    v12 = v5;
LABEL_5:
    sub_100004F84(v12, v11);
    return 0;
  }

  MusicAssetMetadata.startTime.getter();
  (*(v10 + 8))(v5, v9);
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    v11 = &unk_100AD4790;
    v12 = v8;
    goto LABEL_5;
  }

  static Date.FormatStyle.TimeStyle.shortened.getter();
  static FormatStyleCapitalizationContext.standalone.getter();
  static Locale.autoupdatingCurrent.getter();
  static Calendar.autoupdatingCurrent.getter();
  static TimeZone.autoupdatingCurrent.getter();
  static Date.now.getter();
  sub_100167A30();
  Date.formatted<A>(_:)();
  sub_1000FBBCC(v2);
  v16 = v17;
  (*(v14 + 8))(v8, v13);
  return v16;
}

char *sub_10087229C(void *a1, void (*a2)(void), uint64_t *a3, void *a4, double a5, double a6, double a7, double a8)
{
  v106 = a3;
  v107 = a4;
  v15 = type metadata accessor for UIView.Invalidations.Properties();
  __chkstk_darwin(v15);
  v16 = sub_1000F24EC(&unk_100ADA010);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v102 - v18;
  v20 = qword_100B2F598;
  *&v8[v20] = [objc_allocWithZone(UIScrollView) init];
  *&v8[qword_100AD9F38] = 0;
  *&v8[qword_100AD9F40] = 0;
  *&v8[qword_100AD9F48] = 0;
  *&v8[qword_100AD9F50] = 0;
  *&v8[qword_100AD9F58] = 0;
  v21 = qword_100B2F5A0;
  a2(0);
  *&v8[v21] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v22 = qword_100AD9F60;
  v110 = 0;
  v111 = 0;
  v112 = 1;
  UIView.Invalidations.Properties.init()();
  sub_1000F24EC(&qword_100AD9FF0);
  sub_10023A738();
  UIView.Invalidating.init(wrappedValue:_:)();
  (*(v17 + 32))(&v8[v22], v19, v16);
  *&v8[qword_100B2F5A8 + 8] = 0;
  swift_unknownObjectWeakInit();
  v8[qword_100B2F5B0] = 0;
  v23 = *&v8[v21];
  *&v8[v21] = a1;
  v108 = a1;

  v24 = sub_1000F24EC(v106);
  v109.receiver = v8;
  v109.super_class = v24;
  v25 = objc_msgSendSuper2(&v109, "initWithFrame:", a5, a6, a7, a8);
  v26 = objc_allocWithZone(UITapGestureRecognizer);
  v27 = v25;
  v28 = [v26 initWithTarget:v27 action:"onToggleHudGestureRecognized:"];
  v29 = v27;
  v30 = v28;
  [v30 setDelegate:v29];
  [v30 setNumberOfTapsRequired:1];
  v31 = *&v29[qword_100AD9F38];
  *&v29[qword_100AD9F38] = v30;
  v107 = v30;

  v32 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v29 action:"onToggleZoomGestureRecognized:"];
  v33 = v29;
  v34 = v32;
  [v34 setDelegate:v33];
  [v34 setNumberOfTapsRequired:2];
  v35 = *&v33[qword_100AD9F40];
  *&v33[qword_100AD9F40] = v34;
  v106 = v34;

  v36 = qword_100B2F5A0;
  [*&v33[qword_100B2F5A0] addGestureRecognizer:v30];
  [*&v33[v36] addGestureRecognizer:v34];
  v37 = qword_100B2F598;
  [*&v33[qword_100B2F598] setDelegate:v33];
  [*&v33[v37] setMinimumZoomScale:1.0];
  [*&v33[v37] setMaximumZoomScale:6.0];
  [*&v33[v37] setBouncesZoom:1];
  [*&v33[v37] setDecelerationRate:UIScrollViewDecelerationRateFast];
  [*&v33[v37] setShowsHorizontalScrollIndicator:0];
  [*&v33[v37] setShowsVerticalScrollIndicator:0];
  [*&v33[v37] setContentInsetAdjustmentBehavior:2];
  [*&v33[v37] setContentAlignmentPoint:{0.5, 0.5}];
  [*&v33[v37] setClipsToBounds:0];
  [*&v33[v37] setScrollsToTop:0];
  [*&v33[v37] setTranslatesAutoresizingMaskIntoConstraints:0];
  v38 = v33;
  v39 = [v38 contentView];
  [v39 addSubview:*&v33[v37]];

  v40 = OBJC_IVAR____TtC7Journal33FullScreenAssetCollectionViewCell_shadowEffectView;
  [*&v38[OBJC_IVAR____TtC7Journal33FullScreenAssetCollectionViewCell_shadowEffectView] removeFromSuperview];
  [*&v33[v37] addSubview:*&v38[v40]];
  [*&v33[v36] setTranslatesAutoresizingMaskIntoConstraints:0];
  v41 = *&v33[v36];
  v103 = v36;
  [v41 setContentMode:1];
  v104 = OBJC_IVAR____TtC7Journal33FullScreenAssetCollectionViewCell_maskedContentView;
  [*&v38[OBJC_IVAR____TtC7Journal33FullScreenAssetCollectionViewCell_maskedContentView] addSubview:*&v33[v36]];
  v105 = objc_opt_self();
  sub_1000F24EC(&unk_100AD4780);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_10096F650;
  v43 = [*&v33[v37] leadingAnchor];
  v44 = [v38 contentView];
  v45 = [v44 leadingAnchor];

  v46 = [v43 constraintEqualToAnchor:v45];
  *(v42 + 32) = v46;
  v47 = [*&v33[v37] topAnchor];
  v48 = [v38 contentView];
  v49 = [v48 topAnchor];

  v50 = [v47 constraintEqualToAnchor:v49];
  *(v42 + 40) = v50;
  v51 = [*&v33[v37] trailingAnchor];
  v52 = [v38 contentView];
  v53 = [v52 trailingAnchor];

  v54 = [v51 constraintEqualToAnchor:v53];
  *(v42 + 48) = v54;
  v55 = [*&v33[v37] bottomAnchor];
  v56 = [v38 contentView];
  v57 = [v56 bottomAnchor];

  v58 = [v55 constraintEqualToAnchor:v57];
  *(v42 + 56) = v58;
  v59 = [*&v38[v40] topAnchor];
  v60 = [*&v33[v37] contentLayoutGuide];
  v61 = [v60 topAnchor];

  v62 = [v59 constraintEqualToAnchor:v61];
  *(v42 + 64) = v62;
  v63 = [*&v38[v40] leadingAnchor];
  v64 = [*&v33[v37] contentLayoutGuide];
  v65 = [v64 leadingAnchor];

  v66 = [v63 constraintEqualToAnchor:v65];
  *(v42 + 72) = v66;
  v67 = [*&v38[v40] bottomAnchor];
  v68 = [*&v33[v37] contentLayoutGuide];
  v69 = [v68 bottomAnchor];

  v70 = [v67 constraintEqualToAnchor:v69];
  *(v42 + 80) = v70;
  v71 = [*&v38[v40] trailingAnchor];
  v72 = [*&v33[v37] contentLayoutGuide];
  v73 = [v72 trailingAnchor];

  v74 = [v71 constraintEqualToAnchor:v73];
  *(v42 + 88) = v74;
  v75 = [*&v38[v40] widthAnchor];
  v76 = [v38 contentView];
  v77 = [v76 layoutMarginsGuide];

  v78 = [v77 widthAnchor];
  v79 = [v75 constraintLessThanOrEqualToAnchor:v78];

  *(v42 + 96) = v79;
  v80 = [*&v38[v40] heightAnchor];
  v81 = [v38 contentView];

  v82 = [v81 layoutMarginsGuide];
  v83 = [v82 heightAnchor];

  v84 = [v80 constraintLessThanOrEqualToAnchor:v83];
  *(v42 + 104) = v84;
  v85 = v103;
  v86 = [*&v33[v103] topAnchor];
  v87 = v104;
  v88 = [*&v38[v104] topAnchor];
  v89 = [v86 constraintEqualToAnchor:v88];

  *(v42 + 112) = v89;
  v90 = [*&v33[v85] leadingAnchor];
  v91 = [*&v38[v87] leadingAnchor];
  v92 = [v90 constraintEqualToAnchor:v91];

  *(v42 + 120) = v92;
  v93 = [*&v33[v85] bottomAnchor];
  v94 = [*&v38[v87] bottomAnchor];
  v95 = [v93 constraintEqualToAnchor:v94];

  *(v42 + 128) = v95;
  v96 = [*&v33[v85] trailingAnchor];
  v97 = *&v38[v87];

  v98 = [v97 trailingAnchor];
  v99 = [v96 constraintEqualToAnchor:v98];

  *(v42 + 136) = v99;
  sub_1000065A8(0, &qword_100AD8000);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v105 activateConstraints:isa];

  return v38;
}

void sub_100872F68()
{
  v1 = *(v0 + qword_100B2F5A0);
  v2 = *&v1[OBJC_IVAR____TtC7Journal14VideoAssetView_playerView];
  if (v2)
  {
    v7 = v1;
    v3 = v2;
    v4 = [v3 layer];
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (!v5)
    {
    }

    v6 = [v5 player];

    [v6 pause];
  }
}

id sub_100873060(char a1)
{
  v2 = qword_100B2F5B0;
  v3 = v1[qword_100B2F5B0];
  v1[qword_100B2F5B0] = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v1;
  result = static UIView.Invalidating.subscript.setter();
  if (v3 != v1[v2])
  {
    return [*&v4[qword_100B31208] setHidden:?];
  }

  return result;
}

id sub_100873110()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v2 - 8);
  v4 = v35 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MainActor();
  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = &protocol witness table for MainActor;
  sub_1003E9628(0, 0, v4, &unk_10096F7D0, v7);

  v8 = *&v1[qword_100B2F5A0];
  v9 = qword_100B31210;
  v10 = *&v1[qword_100B31210];
  v11 = *&v8[OBJC_IVAR____TtC7Journal14VideoAssetView_videoAsset];
  *&v8[OBJC_IVAR____TtC7Journal14VideoAssetView_videoAsset] = v10;
  v12 = v10;
  v13 = v8;
  sub_100099584(v11);

  v15 = *&v1[v9];
  if (v15)
  {
    v16 = v15;
    sub_100067B84();
    v18 = v17;
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v21 = v15 == 0;
  __chkstk_darwin(v14);
  v22 = type metadata accessor for VideoAssetView();
  v35[-2] = v22;
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  v35[-2] = v22;
  swift_getKeyPath();
  v35[1] = v18;
  v35[2] = v20;
  v36 = v21;
  v24 = v1;
  static UIView.Invalidating.subscript.setter();
  v25 = *&v1[v9];
  if (v25)
  {
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    v27 = qword_100ACFB90;
    v28 = v24;
    v29 = v25;
    if (v27 != -1)
    {
      swift_once();
    }

    v30 = qword_100B2F628;
    v31 = [objc_opt_self() currentTraitCollection];
    sub_100076220(7, 0, 1, v30, v31, sub_100879130, v26);
  }

  v32 = *&v24[qword_100B2F598];
  result = [v32 zoomScale];
  if (v34 > 1.0)
  {
    return [v32 setZoomScale:1 animated:1.0];
  }

  return result;
}

char *sub_1008734B4(double a1, double a2, double a3, double a4)
{
  v9 = type metadata accessor for ColorResource();
  v108 = *(v9 - 1);
  v109 = v9;
  __chkstk_darwin(v9);
  v106 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UIButton.Configuration();
  __chkstk_darwin(v11 - 8);
  v12 = qword_100AF5710;
  if (qword_100AD01D8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = sub_10000617C(v13, qword_100B30028);
  (*(*(v13 - 8) + 16))(v4 + v12, v14, v13);
  UUID.init()();
  *(v4 + qword_100B31200 + 8) = 0;
  swift_unknownObjectWeakInit();
  v15 = qword_100B31208;
  *(v4 + v15) = [objc_allocWithZone(UIStackView) init];
  *(v4 + qword_100B31210) = 0;
  v16 = qword_100AF5720;
  type metadata accessor for VideoSeekSlider();
  *(v4 + v16) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = qword_100AF5728;
  *(v4 + v17) = [objc_allocWithZone(UIView) init];
  v18 = qword_100AF5730;
  *(v4 + v18) = [objc_allocWithZone(UIStackView) init];
  v19 = qword_100AF5738;
  *(v4 + v19) = [objc_allocWithZone(UILabel) init];
  v20 = qword_100AF5740;
  *(v4 + v20) = [objc_allocWithZone(UILabel) init];
  v21 = qword_100AF5748;
  *(v4 + v21) = [objc_allocWithZone(UIStackView) init];
  v22 = qword_100AF5750;
  sub_1000065A8(0, &qword_100ADFC10);
  static UIButton.Configuration.borderless()();
  *(v4 + v22) = UIButton.init(configuration:primaryAction:)();
  v23 = qword_100AF5758;
  static UIButton.Configuration.borderless()();
  *(v4 + v23) = UIButton.init(configuration:primaryAction:)();
  *(v4 + qword_100AF5760) = 0;
  type metadata accessor for VideoAssetView();
  v24 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v25 = sub_10087229C(v24, type metadata accessor for VideoAssetView, &qword_100AF5BC8, &unk_10096F7C0, a1, a2, a3, a4);
  v26 = v25;
  v27 = qword_100B2F5A0;
  v28 = *&v25[qword_100B2F5A0];
  v29 = *(v28 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType);
  *(v28 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType) = 7;
  v30 = OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated;
  if (*(v28 + OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated) != 1)
  {
    v31 = v25;
    v32 = v28;
LABEL_10:
    (*((swift_isaMask & *v28) + 0x100))(v32);
    *(v28 + v30) = 1;

    goto LABEL_11;
  }

  if (v29 <= 3 || v29 <= 6)
  {
    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v34 = v26;
    v35 = v28;

    if (v33)
    {

      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v103 = v25;

LABEL_11:
  *(*&v26[v27] + OBJC_IVAR____TtC7Journal14VideoAssetView_delegate + 8) = &off_100A833D8;
  swift_unknownObjectWeakAssign();
  v36 = qword_100AF5728;
  v37 = qword_100AF5730;
  [*&v26[qword_100AF5728] addSubview:*&v26[qword_100AF5730]];
  v38 = qword_100AF5748;
  [*&v26[v36] addSubview:*&v26[qword_100AF5748]];
  v39 = qword_100AF5720;
  v40 = *&v26[qword_100AF5720];
  sub_100878A54(v40);

  [*&v26[v39] addTarget:v26 action:"timeSliderDidChange:" forControlEvents:4096];
  [*&v26[v39] addTarget:v26 action:"showTimeLabels" forControlEvents:0x10000];
  [*&v26[v39] addTarget:v26 action:"showPlaybackControls" forControlEvents:0x40000];
  v41 = qword_100AF5738;
  v42 = *&v26[qword_100AF5738];
  sub_100878B5C(v42);

  [*&v26[v41] setTextAlignment:0];
  v43 = qword_100AF5740;
  v44 = *&v26[qword_100AF5740];
  sub_100878B5C(v44);

  [*&v26[v43] setTextAlignment:2];
  [*&v26[v37] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v26[v37] setHidden:1];
  [*&v26[v37] setAlignment:3];
  [*&v26[v37] setDistribution:3];
  [*&v26[v37] setSpacing:1.17549435e-38];
  [*&v26[v37] addArrangedSubview:*&v26[v41]];
  v104 = v37;
  [*&v26[v37] addArrangedSubview:*&v26[v43]];
  [*&v26[v38] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v26[v38] setDistribution:3];
  [*&v26[v38] setSpacing:1.17549435e-38];
  v45 = qword_100AF5750;
  [*&v26[v38] addArrangedSubview:*&v26[qword_100AF5750]];
  v105 = v38;
  v46 = qword_100AF5758;
  [*&v26[v38] addArrangedSubview:*&v26[qword_100AF5758]];
  v47 = qword_100B31208;
  [*&v26[qword_100B31208] setAxis:1];
  [*&v26[v47] setLayoutMarginsRelativeArrangement:1];
  [*&v26[v47] setSpacing:10.0];
  v48 = *&v26[v47];
  v107 = v36;
  [v48 addArrangedSubview:*&v26[v36]];
  [*&v26[v47] addArrangedSubview:*&v26[v39]];
  v49 = *&v26[v45];
  sub_100878A54(v49);

  [*&v26[v45] setPreferredBehavioralStyle:1];
  [*&v26[v45] addTarget:v26 action:"togglePlay:" forControlEvents:0x2000];
  v50 = *&v26[v45];
  v51 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v114 = sub_100879120;
  v115 = v51;
  aBlock = _NSConcreteStackBlock;
  v111 = 1107296256;
  v112 = sub_10016B4D8;
  v113 = &unk_100A835C0;
  v52 = _Block_copy(&aBlock);
  v53 = v26;
  v54 = v50;

  [v54 setConfigurationUpdateHandler:v52];
  _Block_release(v52);

  v55 = *&v26[v46];
  sub_100878A54(v55);

  [*&v26[v46] setPreferredBehavioralStyle:1];
  v56 = *&v26[v46];
  [v56 addTarget:v53 action:"toggleMuted" forControlEvents:0x2000];

  v57 = *&v26[v46];
  v58 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v114 = sub_100879128;
  v115 = v58;
  aBlock = _NSConcreteStackBlock;
  v111 = 1107296256;
  v112 = sub_10016B4D8;
  v113 = &unk_100A835E8;
  v59 = _Block_copy(&aBlock);
  v60 = v57;

  [v60 setConfigurationUpdateHandler:v59];
  _Block_release(v59);

  v61 = *&v26[v47];
  sub_1000065A8(0, &qword_100AD4C70);
  v62 = qword_100AD0D58;
  v63 = v61;
  if (v62 != -1)
  {
    swift_once();
  }

  v64 = v109;
  v65 = sub_10000617C(v109, qword_100B31718);
  (*(v108 + 16))(v106, v65, v64);
  v66 = UIColor.init(resource:)();
  [v63 setTintColor:v66];

  v67 = [v53 contentView];
  [v67 addSubview:*&v26[v47]];

  v109 = objc_opt_self();
  sub_1000F24EC(&unk_100AD4780);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_100962E90;
  v69 = v107;
  v70 = [*&v26[v107] heightAnchor];
  v71 = [v70 constraintEqualToConstant:0.0];

  LODWORD(v72) = 1112014848;
  [v71 setPriority:v72];
  *(v68 + 32) = v71;
  v73 = v53;
  v74 = v104;
  v75 = [*&v26[v104] topAnchor];
  v76 = [*&v26[v69] topAnchor];
  v77 = [v75 constraintGreaterThanOrEqualToAnchor:v76];

  *(v68 + 40) = v77;
  v78 = [*&v26[v74] leadingAnchor];
  v79 = [*&v26[v69] leadingAnchor];
  v80 = [v78 constraintEqualToAnchor:v79];

  *(v68 + 48) = v80;
  v81 = [*&v26[v74] bottomAnchor];
  v82 = [*&v26[v69] bottomAnchor];
  v83 = [v81 constraintEqualToAnchor:v82];

  *(v68 + 56) = v83;
  v84 = [*&v26[v74] trailingAnchor];
  v85 = [*&v26[v69] trailingAnchor];
  v86 = [v84 constraintEqualToAnchor:v85];

  *(v68 + 64) = v86;
  v87 = v105;
  v88 = [*&v26[v105] topAnchor];
  v89 = [*&v26[v69] topAnchor];
  v90 = [v88 constraintGreaterThanOrEqualToAnchor:v89];

  *(v68 + 72) = v90;
  v91 = [*&v26[v87] leadingAnchor];
  v92 = [*&v26[v69] leadingAnchor];
  v93 = [v91 constraintEqualToAnchor:v92];

  *(v68 + 80) = v93;
  v94 = [*&v26[v87] bottomAnchor];
  v95 = [*&v26[v69] bottomAnchor];
  v96 = [v94 constraintEqualToAnchor:v95];

  *(v68 + 88) = v96;
  v97 = [*&v26[v87] trailingAnchor];
  v98 = [*&v26[v69] trailingAnchor];
  v99 = [v97 constraintEqualToAnchor:v98];

  *(v68 + 96) = v99;
  sub_1000065A8(0, &qword_100AD8000);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v109 activateConstraints:isa];

  v101 = [objc_opt_self() defaultCenter];
  if (qword_100ACFFC0 != -1)
  {
    swift_once();
  }

  [v101 addObserver:v73 selector:? name:? object:?];

  return v73;
}

uint64_t sub_1008743F4(void *a1)
{
  v2 = sub_1000F24EC(&qword_100AE4250);
  __chkstk_darwin(v2 - 8);
  v4 = &v57 - v3;
  v5 = type metadata accessor for SymbolEffectOptions();
  __chkstk_darwin(v5 - 8);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UIButton.Configuration();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ReplaceSymbolEffect();
  v64 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    v59 = v7;
    v63 = v14;
    ReplaceSymbolEffect.init()();
    v60 = v11;
    static UIButton.Configuration.borderless()();
    v61 = v12;
    v62 = qword_100B2F5A0;
    v17 = *&v16[qword_100B2F5A0];
    v18 = *&v17[OBJC_IVAR____TtC7Journal14VideoAssetView_playerView];
    if (v18)
    {
      v57 = v8;
      v58 = v9;
      v19 = v16;
      v20 = v17;
      v21 = v18;
      v22 = [v21 layer];
      objc_opt_self();
      v23 = swift_dynamicCastObjCClass();
      if (!v23)
      {
      }

      v24 = [v23 player];

      v25 = v4;
      if (v24)
      {
        [v24 timeControlStatus];

        v26 = v57;
        v9 = v58;
        v27 = v60;
        v12 = v61;
        goto LABEL_10;
      }

      v26 = v57;
      v9 = v58;
      v12 = v61;
    }

    else
    {
      v28 = v16;
      v26 = v8;
      v25 = v4;
    }

    v27 = v60;
LABEL_10:
    v29 = String._bridgeToObjectiveC()();
    v30 = [objc_opt_self() systemImageNamed:v29];

    UIButton.Configuration.image.setter();
    if (qword_100AD0410 != -1)
    {
      swift_once();
    }

    v31 = qword_100B30408;
    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
    v32 = UIButton.Configuration.contentInsets.modify();
    *(v33 + 8) = 0;
    v32(v65, 0);
    v34 = UIButton.Configuration.contentInsets.modify();
    *(v35 + 24) = 0;
    v34(v65, 0);
    sub_1000065A8(0, &qword_100AF5BC0);
    v65[3] = v12;
    v65[4] = sub_10004BA20(&qword_100ADCDF0, &type metadata accessor for ReplaceSymbolEffect);
    v36 = sub_10001A770(v65);
    (*(v64 + 16))(v36, v63, v12);
    static SymbolEffectOptions.default.getter();
    UISymbolContentTransition.init(_:options:)();
    UIButton.Configuration.symbolContentTransition.setter();
    (*(v9 + 16))(v25, v27, v26);
    (*(v9 + 56))(v25, 0, 1, v26);
    UIButton.configuration.setter();
    v37 = *&v16[v62];
    v38 = *&v37[OBJC_IVAR____TtC7Journal14VideoAssetView_playerView];
    if (!v38)
    {
      v47 = 0;
LABEL_22:
      [a1 setEnabled:v47];
      v48 = *&v16[v62];

      v49 = *&v48[OBJC_IVAR____TtC7Journal14VideoAssetView_playerView];
      if (!v49)
      {
        goto LABEL_29;
      }

      v50 = v49;
      v51 = [v50 layer];
      objc_opt_self();
      v52 = swift_dynamicCastObjCClass();
      if (!v52)
      {
      }

      v53 = [v52 player];

      if (v53)
      {
        v54 = [v53 timeControlStatus];

        if (v54 == 2)
        {
          v55 = v61;
          if (qword_100AD0868 == -1)
          {
            goto LABEL_31;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_29:
      }

      v55 = v61;
      if (qword_100AD0880 == -1)
      {
LABEL_31:

        v56 = String._bridgeToObjectiveC()();

        [a1 setAccessibilityLabel:v56];

        (*(v9 + 8))(v27, v26);
        return (*(v64 + 8))(v63, v55);
      }

LABEL_33:
      swift_once();
      goto LABEL_31;
    }

    v39 = v26;
    v40 = v37;
    v41 = v38;
    v42 = [v41 layer];
    objc_opt_self();
    v43 = swift_dynamicCastObjCClass();
    if (!v43)
    {
    }

    v44 = [v43 player];

    if (v44)
    {
      v45 = [v44 currentItem];

      if (v45)
      {
        v46 = [v45 status];

        v47 = v46 == 1;
LABEL_21:
        v26 = v39;
        goto LABEL_22;
      }
    }

    else
    {
    }

    v47 = 0;
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_100874B90(void *a1)
{
  v2 = sub_1000F24EC(&qword_100AE4250);
  __chkstk_darwin(v2 - 8);
  v4 = &v57 - v3;
  v5 = type metadata accessor for SymbolEffectOptions();
  __chkstk_darwin(v5 - 8);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UIButton.Configuration();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ReplaceSymbolEffect();
  v64 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    v59 = v7;
    v63 = v14;
    ReplaceSymbolEffect.init()();
    v60 = v11;
    static UIButton.Configuration.borderless()();
    v61 = v12;
    v62 = qword_100B2F5A0;
    v17 = *&v16[qword_100B2F5A0];
    v18 = *&v17[OBJC_IVAR____TtC7Journal14VideoAssetView_playerView];
    if (v18)
    {
      v57 = v8;
      v58 = v9;
      v19 = v16;
      v20 = v17;
      v21 = v18;
      v22 = [v21 layer];
      objc_opt_self();
      v23 = swift_dynamicCastObjCClass();
      if (!v23)
      {
      }

      v24 = [v23 player];

      v25 = v4;
      if (v24)
      {
        [v24 isMuted];

        v26 = v57;
        v9 = v58;
        v27 = v60;
        v12 = v61;
        goto LABEL_10;
      }

      v26 = v57;
      v9 = v58;
      v12 = v61;
    }

    else
    {
      v28 = v16;
      v26 = v8;
      v25 = v4;
    }

    v27 = v60;
LABEL_10:
    v29 = String._bridgeToObjectiveC()();
    v30 = [objc_opt_self() systemImageNamed:v29];

    UIButton.Configuration.image.setter();
    if (qword_100AD0410 != -1)
    {
      swift_once();
    }

    v31 = qword_100B30408;
    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
    v32 = UIButton.Configuration.contentInsets.modify();
    *(v33 + 8) = 0;
    v32(v65, 0);
    v34 = UIButton.Configuration.contentInsets.modify();
    *(v35 + 24) = 0;
    v34(v65, 0);
    sub_1000065A8(0, &qword_100AF5BC0);
    v65[3] = v12;
    v65[4] = sub_10004BA20(&qword_100ADCDF0, &type metadata accessor for ReplaceSymbolEffect);
    v36 = sub_10001A770(v65);
    (*(v64 + 16))(v36, v63, v12);
    static SymbolEffectOptions.default.getter();
    UISymbolContentTransition.init(_:options:)();
    UIButton.Configuration.symbolContentTransition.setter();
    (*(v9 + 16))(v25, v27, v26);
    (*(v9 + 56))(v25, 0, 1, v26);
    UIButton.configuration.setter();
    v37 = *&v16[v62];
    v38 = *&v37[OBJC_IVAR____TtC7Journal14VideoAssetView_playerView];
    if (!v38)
    {
      v47 = 0;
LABEL_22:
      [a1 setEnabled:v47];
      v48 = *&v16[v62];

      v49 = *&v48[OBJC_IVAR____TtC7Journal14VideoAssetView_playerView];
      if (!v49)
      {
        goto LABEL_29;
      }

      v50 = v49;
      v51 = [v50 layer];
      objc_opt_self();
      v52 = swift_dynamicCastObjCClass();
      if (!v52)
      {
      }

      v53 = [v52 player];

      if (v53)
      {
        v54 = [v53 isMuted];

        if (v54)
        {
          v55 = v61;
          if (qword_100AD08B8 == -1)
          {
            goto LABEL_31;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_29:
      }

      v55 = v61;
      if (qword_100AD0860 == -1)
      {
LABEL_31:

        v56 = String._bridgeToObjectiveC()();

        [a1 setAccessibilityLabel:v56];

        (*(v9 + 8))(v27, v26);
        return (*(v64 + 8))(v63, v55);
      }

LABEL_33:
      swift_once();
      goto LABEL_31;
    }

    v39 = v26;
    v40 = v37;
    v41 = v38;
    v42 = [v41 layer];
    objc_opt_self();
    v43 = swift_dynamicCastObjCClass();
    if (!v43)
    {
    }

    v44 = [v43 player];

    if (v44)
    {
      v45 = [v44 currentItem];

      if (v45)
      {
        v46 = [v45 status];

        v47 = v46 == 1;
LABEL_21:
        v26 = v39;
        goto LABEL_22;
      }
    }

    else
    {
    }

    v47 = 0;
    goto LABEL_21;
  }

  return result;
}

void sub_10087534C()
{
  v1 = v0;
  v64 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin(v64);
  v2 = type metadata accessor for FullScreenVideoCollectionViewCell();
  v68.receiver = v0;
  v68.super_class = v2;
  objc_msgSendSuper2(&v68, "layoutSubviews");
  v3 = qword_100B31208;
  v4 = *&v0[qword_100B31208];
  v5 = [v1 traitCollection];
  v6 = [v5 horizontalSizeClass];

  v7 = 20.0;
  if (v6 == 2)
  {
    v8 = 20.0;
  }

  else
  {
    v8 = 10.0;
  }

  if (v6 != 2)
  {
    v7 = 0.0;
  }

  [v4 setLayoutMargins:{10.0, v8, v7, v8}];

  v9 = qword_100B2F5A0;
  v10 = *&v1[qword_100B2F5A0];
  swift_getKeyPath();
  v67 = _swiftEmptyArrayStorage;
  v65 = v10;
  v66 = 1;
  swift_retain_n();
  v11 = v10;
  while (1)
  {
    v12 = sub_100878CE0(&v65);

    if (!v12)
    {

      v13 = v65;
      goto LABEL_12;
    }

    if (v12 == v1)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  v13 = v65;

LABEL_12:

  v14 = v67;
  if ((v67 & 0x8000000000000000) != 0 || (v67 & 0x4000000000000000) != 0)
  {
    goto LABEL_26;
  }

  v15 = *(v67 + 16);
  while (v15)
  {
    while (__OFSUB__(v15--, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v15 = _CocoaArrayWrapper.endIndex.getter();
      if (!v15)
      {
        goto LABEL_27;
      }
    }

    if ((v14 & 0xC000000000000001) != 0)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_20;
    }

    if ((v15 & 0x8000000000000000) != 0)
    {
      goto LABEL_24;
    }

    if (v15 >= *(v14 + 16))
    {
      goto LABEL_25;
    }

    v17 = *(v14 + 32 + 8 * v15);
LABEL_20:
    v18 = v17;
    [v17 layoutIfNeeded];
  }

LABEL_27:

  v19 = [v1 contentView];
  [v19 bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = [v1 contentView];
  [v28 layoutMargins];
  v30 = v29;
  v32 = v31;

  v69.origin.x = sub_10007BDE0(v21, v23, v25, v27, v30, v32);
  x = v69.origin.x;
  y = v69.origin.y;
  width = v69.size.width;
  height = v69.size.height;
  MidX = CGRectGetMidX(v69);
  [*&v1[v9] bounds];
  v38 = MidX - CGRectGetMidX(v70);
  v71.origin.x = x;
  v71.origin.y = y;
  v71.size.width = width;
  v71.size.height = height;
  MidY = CGRectGetMidY(v71);
  [*&v1[v9] bounds];
  v40 = MidY - CGRectGetMidY(v72);
  [*&v1[v9] bounds];
  v41 = CGRectGetWidth(v73);
  [*&v1[v9] bounds];
  v42 = CGRectGetHeight(v74);
  v75.origin.x = x;
  v75.origin.y = y;
  v75.size.width = width;
  v75.size.height = height;
  MaxY = CGRectGetMaxY(v75);
  v76.origin.x = v38;
  v76.origin.y = v40;
  v76.size.width = v41;
  v76.size.height = v42;
  v62 = CGRectGetMaxY(v76);
  v77.origin.x = v38;
  v77.origin.y = v40;
  v77.size.width = v41;
  v77.size.height = v42;
  IsEmpty = CGRectIsEmpty(v77);
  if (IsEmpty)
  {
    v44 = x;
  }

  else
  {
    v44 = v38;
  }

  if (IsEmpty)
  {
    v45 = y;
  }

  else
  {
    v45 = v40;
  }

  v61 = height;
  if (IsEmpty)
  {
    v46 = width;
  }

  else
  {
    v46 = v41;
  }

  if (IsEmpty)
  {
    v47 = height;
  }

  else
  {
    v47 = v42;
  }

  v48 = CGRectGetWidth(*&v44);
  LODWORD(v49) = 1148846080;
  LODWORD(v50) = 1112014848;
  [*&v1[v3] systemLayoutSizeFittingSize:v48 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v49, v50}];
  v52 = v51;
  v78.origin.x = v38;
  v78.origin.y = v40;
  v78.size.width = v41;
  v78.size.height = v42;
  v53 = CGRectIsEmpty(v78);
  v54 = *&v1[v3];
  if (v53 || v52 <= MaxY - v62)
  {
    v82.origin.x = x;
    v82.origin.y = y;
    v82.size.width = width;
    v82.size.height = v61;
    MinX = CGRectGetMinX(v82);
    v83.origin.x = x;
    v83.origin.y = y;
    v83.size.width = width;
    v83.size.height = v61;
    v59 = CGRectGetMaxY(v83) - v52;
    v84.origin.x = x;
    v84.origin.y = y;
    v84.size.width = width;
    v84.size.height = v61;
    [v54 setFrame:{MinX, v59, CGRectGetWidth(v84), v52}];

    v60 = *&v1[v3];
    type metadata accessor for UITraitUserInterfaceStyle();
    v57 = v60;
    UIView.traitOverrides.getter();
    UITraitOverrides.remove(_:)();
  }

  else
  {
    v79.origin.x = v38;
    v79.origin.y = v40;
    v79.size.width = v41;
    v79.size.height = v42;
    v55 = CGRectGetMinX(v79);
    v80.origin.x = v38;
    v80.origin.y = v40;
    v80.size.width = v41;
    v80.size.height = v42;
    v56 = CGRectGetMaxY(v80) - v52;
    v81.origin.x = v38;
    v81.origin.y = v40;
    v81.size.width = v41;
    v81.size.height = v42;
    [v54 setFrame:{v55, v56, CGRectGetWidth(v81), v52}];

    v57 = *&v1[v3];
    UIView.traitOverrides.getter();
    UIMutableTraits.userInterfaceStyle.setter();
  }

  UIView.traitOverrides.setter();
}

void sub_10087591C(void *a1)
{
  v1 = a1;
  sub_10087534C();
}

void sub_100875964()
{
  sub_100875A64(1);
  v1 = *(v0 + qword_100B2F5A0);
  v2 = *&v1[OBJC_IVAR____TtC7Journal14VideoAssetView_playerView];
  if (v2)
  {
    v7 = v1;
    v3 = v2;
    v4 = [v3 layer];
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (!v5)
    {
    }

    v6 = [v5 player];

    [v6 pause];
  }
}

id sub_100875A64(char a1)
{
  v2 = *(v1 + qword_100B2F5A0);
  v3 = *&v2[OBJC_IVAR____TtC7Journal14VideoAssetView_playerView];
  if (v3)
  {
    v5 = v2;
    v6 = v3;
    v7 = [v6 layer];
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (!v8)
    {
    }

    v9 = [v8 player];

    [v9 setMuted:a1 & 1];
  }

  v10 = *(v1 + qword_100AF5758);

  return [v10 setNeedsUpdateConfiguration];
}

void sub_100875B64(void *a1)
{
  v1 = a1;
  sub_100875964();
}

void sub_100875BAC(void *a1)
{
  v2 = objc_opt_self();
  v3 = a1;
  v4 = [v2 defaultCenter];
  if (qword_100ACFFC0 != -1)
  {
    swift_once();
  }

  [v4 removeObserver:v3 name:qword_100B2FBB0 object:0];

  v5.receiver = v3;
  v5.super_class = type metadata accessor for FullScreenVideoCollectionViewCell();
  objc_msgSendSuper2(&v5, "removeFromSuperview");
}

void sub_100875C7C()
{
  v1 = qword_100AF5710;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = qword_100AF5718;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_100038534(v0 + qword_100B31200);

  v5 = *(v0 + qword_100AF5758);
}

id sub_100875DD4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v0 + qword_100AF5710, v5, v7);
  v10 = v0;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v26 = v10;
    v14 = v13;
    v25 = swift_slowAlloc();
    v27 = v25;
    *v14 = 136446210;
    (*(v2 + 16))(v4, v26 + qword_100AF5718, v1);
    sub_10004BA20(&qword_100AE19B0, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v5;
    v17 = v16;
    (*(v2 + 8))(v4, v1);
    v18 = sub_100008458(v15, v17, &v27);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s FullScreenVideoViewController is deinited", v14, 0xCu);
    sub_10000BA7C(v25);

    v10 = v26;

    (*(v6 + 8))(v9, v24);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  v19 = [objc_opt_self() defaultCenter];
  v20 = qword_100ACFFC0;
  v21 = v10;
  if (v20 != -1)
  {
    swift_once();
  }

  [v19 removeObserver:v21 name:qword_100B2FBB0 object:0];

  v22 = type metadata accessor for FullScreenVideoCollectionViewCell();
  v28.receiver = v21;
  v28.super_class = v22;
  return objc_msgSendSuper2(&v28, "dealloc");
}

void sub_100876194(uint64_t a1)
{
  v2 = qword_100AF5710;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  v4 = qword_100AF5718;
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  sub_100038534(a1 + qword_100B31200);

  v6 = *(a1 + qword_100AF5758);
}

void sub_1008762F0(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v19 = v8;
    sub_1000065A8(0, &qword_100AD6210);
    v11 = a1;
    v18 = static OS_dispatch_queue.main.getter();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = v11;
    aBlock[4] = sub_100879138;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006C7C;
    aBlock[3] = &unk_100A83688;
    v14 = _Block_copy(aBlock);
    v15 = v11;

    static DispatchQoS.unspecified.getter();
    v20 = _swiftEmptyArrayStorage;
    sub_10004BA20(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000F24EC(&unk_100AD6220);
    sub_100006610();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v16 = v18;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v14);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v10, v19);
  }
}

uint64_t sub_100876604(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    __chkstk_darwin([a2 size]);
    type metadata accessor for VideoAssetView();
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    swift_getKeyPath();
    return static UIView.Invalidating.subscript.setter();
  }

  return result;
}

void sub_100876724(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100878D68();
}

id sub_100876784()
{
  v1 = *(v0 + qword_100B2F5A0);
  v2 = OBJC_IVAR____TtC7Journal14VideoAssetView_playerView;
  v3 = *&v1[OBJC_IVAR____TtC7Journal14VideoAssetView_playerView];
  if (!v3)
  {
    v12 = v1;
    goto LABEL_12;
  }

  v4 = v1;
  v5 = v3;
  v6 = [v5 layer];
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
  }

  v8 = [v7 player];

  if (v8)
  {
    v9 = [v8 isMuted];

    v10 = v9 ^ 1;
    v11 = *&v1[v2];
    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v10 = 1;
    v11 = *&v1[v2];
    if (!v11)
    {
      goto LABEL_12;
    }
  }

  v13 = v11;
  v14 = [v13 layer];
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15)
  {
  }

  v16 = [v15 player];

  [v16 setMuted:v10];
LABEL_12:

  v17 = *(v0 + qword_100AF5758);

  return [v17 setNeedsUpdateConfiguration];
}

void sub_100876928(void *a1)
{
  v1 = a1;
  sub_100876784();
}

void sub_100876970(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v10 = a1;
  [v4 value];
  v12 = CMTime.init(seconds:preferredTimescale:)(v5, 600);
  value = v12.value;
  v7 = *&v12.timescale;
  epoch = v12.epoch;
  v9 = *&v10[qword_100B2F5A0];
  sub_100816CB4(value, v7, epoch, 0, 0);
}

void sub_100876A34()
{
  v1 = qword_100B2F5B0;
  if ((v0[qword_100B2F5B0] & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_shouldHideNavigationBarAndPageControlForImageryAsset;
      v5 = Strong[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_shouldHideNavigationBarAndPageControlForImageryAsset];
      Strong[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_shouldHideNavigationBarAndPageControlForImageryAsset] = 1;
      if ([Strong isViewLoaded] && v5 != v3[v4])
      {
        sub_10043795C();
      }

      swift_unknownObjectRelease();
    }

    v6 = v0[v1];
    v0[v1] = 1;
    swift_getKeyPath();
    swift_getKeyPath();
    v7 = v0;
    static UIView.Invalidating.subscript.setter();
    if (v6 != v0[v1])
    {
      [*&v7[qword_100B31208] setHidden:?];
    }
  }
}

id sub_100876B54()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isMainThread])
  {
    [*&v0[qword_100AF5750] setNeedsUpdateConfiguration];
    v9 = *&v0[qword_100AF5758];

    return [v9 setNeedsUpdateConfiguration];
  }

  else
  {
    sub_1000065A8(0, &qword_100AD6210);
    v11 = static OS_dispatch_queue.main.getter();
    v12 = swift_allocObject();
    *(v12 + 16) = v0;
    aBlock[4] = sub_100878784;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006C7C;
    aBlock[3] = &unk_100A83570;
    v13 = _Block_copy(aBlock);
    v14 = v0;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10004BA20(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000F24EC(&unk_100AD6220);
    sub_100006610();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v13);

    (*(v2 + 8))(v4, v1);
    return (*(v6 + 8))(v8, v5);
  }
}

void sub_100876E8C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v10 - 8);
  v12 = &v56 - v11;
  if ([objc_opt_self() isMainThread])
  {
    v13 = qword_100B2F5A0;
    v14 = *&v0[qword_100B2F5A0];
    v15 = *&v14[OBJC_IVAR____TtC7Journal14VideoAssetView_playerView];
    if (v15)
    {
      *&v56 = v14;
      v16 = v15;
      v17 = [v16 layer];
      objc_opt_self();
      v18 = swift_dynamicCastObjCClass();
      if (!v18)
      {
      }

      v19 = [v18 player];

      if (v19)
      {
        v20 = [v19 currentItem];

        if (v20)
        {
          v21 = [v20 status];
          v22 = *&v1[qword_100AF5750];
          if (v21 != 1)
          {
            if (v21 == 2)
            {
              [v22 setEnabled:0];
              [*&v1[qword_100AF5720] setEnabled:0];
              [*&v1[qword_100AF5738] setEnabled:0];
              [*&v1[qword_100AF5740] setEnabled:0];
              v23 = [v20 error];
              if (v23)
              {
                v24 = v23;
                swift_getErrorValue();
                v25 = Error.localizedDescription.getter();
                v27 = v26;
              }

              else
              {
                v25 = 0;
                v27 = 0xE000000000000000;
              }

              v44 = [v20 error];
              sub_100877AE4(v25, v27, v44);
            }

            else
            {
              [v22 setEnabled:0];
              [*&v1[qword_100AF5720] setEnabled:0];
              [*&v1[qword_100AF5738] setEnabled:0];
              [*&v1[qword_100AF5740] setEnabled:0];
            }

            goto LABEL_27;
          }

          [v22 setEnabled:1];
          v33 = *&v1[v13];
          v34 = *&v33[OBJC_IVAR____TtC7Journal14VideoAssetView_playerView];
          if (v34)
          {
            v35 = v33;
            v36 = v34;
            v37 = [v36 layer];
            objc_opt_self();
            v38 = swift_dynamicCastObjCClass();
            if (!v38)
            {
            }

            v39 = [v38 player];

            if (v39)
            {
              [v39 currentTime];
              value = aBlock.value;
              *&v42 = *&aBlock.timescale;
              v56 = v42;
              epoch = aBlock.epoch;

LABEL_26:
              v46 = *&v1[qword_100AF5720];
              [v46 setMinimumValue:0.0];
              [v20 duration];
              CMTime.seconds.getter();
              *&v47 = v47;
              [v46 setMaximumValue:v47];
              aBlock.value = value;
              *&aBlock.timescale = v56;
              aBlock.epoch = epoch;
              Seconds = CMTimeGetSeconds(&aBlock);
              *&Seconds = Seconds;
              [v46 setValue:Seconds];
              [v46 setEnabled:1];
              v49 = *&v1[qword_100AF5738];
              [v49 setEnabled:1];
              sub_10043C2DC(value, v56, epoch);
              v50 = String._bridgeToObjectiveC()();

              [v49 setText:v50];

              [*&v1[qword_100AF5740] setEnabled:1];
              v51 = type metadata accessor for TaskPriority();
              (*(*(v51 - 8) + 56))(v12, 1, 1, v51);
              v52 = swift_allocObject();
              swift_unknownObjectWeakInit();
              type metadata accessor for MainActor();
              v53 = v20;

              v54 = static MainActor.shared.getter();
              v55 = swift_allocObject();
              v55[2] = v54;
              v55[3] = &protocol witness table for MainActor;
              v55[4] = v53;
              v55[5] = v52;

              sub_1004EC158(0, 0, v12, &unk_10096F760, v55);

LABEL_27:
              [*&v1[qword_100AF5750] setNeedsUpdateConfiguration];
              [*&v1[qword_100AF5758] setNeedsUpdateConfiguration];

              return;
            }
          }

          else
          {
            v45 = v33;
          }

          value = kCMTimeZero.value;
          *&v40 = *&kCMTimeZero.timescale;
          v56 = v40;
          epoch = kCMTimeZero.epoch;
          goto LABEL_26;
        }
      }

      else
      {
        v32 = v56;
      }
    }
  }

  else
  {
    sub_1000065A8(0, &qword_100AD6210);
    v28 = static OS_dispatch_queue.main.getter();
    v29 = swift_allocObject();
    *(v29 + 16) = v0;
    v59 = sub_1008786A0;
    v60 = v29;
    aBlock.value = _NSConcreteStackBlock;
    *&aBlock.timescale = 1107296256;
    aBlock.epoch = sub_100006C7C;
    v58 = &unk_100A834D0;
    v30 = _Block_copy(&aBlock);
    v31 = v0;

    static DispatchQoS.unspecified.getter();
    aBlock.value = _swiftEmptyArrayStorage;
    sub_10004BA20(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000F24EC(&unk_100AD6220);
    sub_100006610();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v30);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_10087770C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[7] = type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[9] = v7;
  v5[10] = v6;

  return _swift_task_switch(sub_1008777A8, v7, v6);
}

uint64_t sub_1008777A8()
{
  *(v0 + 88) = [*(v0 + 40) asset];
  sub_1000F24EC(&qword_100AE6240);
  v1 = static AVPartialAsyncProperty<A>.duration.getter();
  *(v0 + 96) = v1;
  v2 = static MainActor.shared.getter();
  *(v0 + 104) = v2;
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_1008778B4;

  return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 128, v1, v2, &protocol witness table for MainActor);
}

uint64_t sub_1008778B4()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = v2[9];
    v4 = v2[10];
    v5 = sub_10050EE88;
  }

  else
  {
    v6 = v2[11];

    v3 = v2[9];
    v4 = v2[10];
    v5 = sub_1008779E8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1008779E8()
{

  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[18];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + qword_100AF5740);

    sub_10043C2DC(v2, v1, v3);
    v7 = String._bridgeToObjectiveC()();

    [v6 setText:v7];
  }

  v8 = v0[1];

  return v8();
}

void sub_100877AE4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    swift_errorRetain();
    v5 = v3;

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v8 = 136315650;
      type metadata accessor for UUID();
      sub_10004BA20(&qword_100AE19B0, &type metadata accessor for UUID);
      v10 = dispatch thunk of CustomStringConvertible.description.getter();
      v12 = sub_100008458(v10, v11, &v17);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_100008458(a1, a2, &v17);
      *(v8 + 22) = 2112;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 24) = v13;
      *v9 = v13;
      _os_log_impl(&_mh_execute_header, v6, v7, "%s Error occurred with message: %s, error: %@.", v8, 0x20u);
      sub_10012B714(v9);

      swift_arrayDestroy();
    }

    else
    {
    }
  }

  v16 = UIView.viewControllerForPresenting.getter();
  if (v16)
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      v14 = sub_100511BC0();
      [v16 presentViewController:v14 animated:1 completion:0];

      v16 = v14;
    }
  }
}

void sub_100877D9C()
{
  v1 = qword_100B2F5A0;
  v2 = *(v0 + qword_100B2F5A0);
  v3 = *&v2[OBJC_IVAR____TtC7Journal14VideoAssetView_playerView];
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    v6 = [v5 layer];
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (!v7)
    {
    }

    v8 = [v7 player];

    if (v8)
    {
      [v8 rate];
      v10 = v9;

      v11 = v10 > 0.0;
      goto LABEL_8;
    }
  }

  v11 = 0;
LABEL_8:
  *(v0 + qword_100AF5760) = v11;
  v12 = *(v0 + v1);
  v13 = *&v12[OBJC_IVAR____TtC7Journal14VideoAssetView_playerView];
  if (v13)
  {
    v18 = v12;
    v14 = v13;
    v15 = [v14 layer];
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (!v16)
    {
    }

    v17 = [v16 player];

    [v17 pause];
  }
}

void sub_100877F78(void *a1)
{
  v1 = a1;
  sub_100877D9C();
}

void sub_100877FC0(char *a1)
{
  if (a1[qword_100AF5760] == 1)
  {
    v2 = *&a1[qword_100B2F5A0];
    v4 = a1;
    v3 = v2;
    sub_1008169A4();
  }
}

id sub_100878060(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = objc_opt_self();
  v8 = *(a1 + *a3);
  v9 = *(a1 + *a4);

  return [v7 transitionFromView:v8 toView:v9 duration:5243140 options:0 completion:0.2];
}

Class sub_1008780D8(void *a1)
{
  sub_1000F24EC(&unk_100AD4780);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100941D60;
  v3 = a1;
  v4 = String._bridgeToObjectiveC()();
  v5 = objc_opt_self();
  v6 = [v5 keyCommandWithInput:v4 modifierFlags:0 action:"togglePlay:"];

  *(v2 + 32) = v6;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v5 keyCommandWithInput:v7 modifierFlags:1179648 action:"toggleMuted"];

  *(v2 + 40) = v8;
  sub_1000065A8(0, &qword_100AE4350);
  v9.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v9.super.isa;
}

uint64_t type metadata accessor for FullScreenVideoCollectionViewCell()
{
  result = qword_100AF5790;
  if (!qword_100AF5790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100878274()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

void *sub_100878380()
{
  v1 = *(*v0 + qword_100B31210);
  v2 = v1;
  return v1;
}

id sub_1008783B8()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = qword_100B2F5A0;
  v6 = *(v0 + qword_100B2F5A0);
  v7 = *&v6[OBJC_IVAR____TtC7Journal14VideoAssetView_playerView];
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    v10 = [v9 layer];
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (!v11)
    {
    }

    v12 = [v11 player];

    [v12 setMuted:1];
    v6 = *(v1 + v5);
  }

  v13 = v6;
  sub_1008169A4();

  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  type metadata accessor for MainActor();
  v15 = static MainActor.shared.getter();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = &protocol witness table for MainActor;
  sub_1003E9628(0, 0, v4, &unk_10095A5B0, v16);

  return [*(v1 + qword_100AF5758) setNeedsUpdateConfiguration];
}

void sub_1008785C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + qword_100AF5720);
  if ((*(v4 + OBJC_IVAR____TtC7Journal15VideoSeekSlider_isEditing) & 1) == 0)
  {
    v5 = a1;
    v6 = a2;
    v7 = a3;
    CMTime.seconds.getter();
    *&v8 = v8;
    [v4 setValue:v8];
    a1 = v5;
    a2 = v6;
    a3 = v7;
  }

  v9 = *(v3 + qword_100AF5738);
  sub_10043C2DC(a1, a2, a3);
  v10 = String._bridgeToObjectiveC()();

  [v9 setText:v10];
}

uint64_t sub_1008786C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032ECC;

  return sub_10087770C(a1, v4, v5, v7, v6);
}

void sub_1008787A8()
{
  v1 = v0;
  v2 = type metadata accessor for UIButton.Configuration();
  __chkstk_darwin(v2 - 8);
  v3 = qword_100AF5710;
  if (qword_100AD01D8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  v5 = sub_10000617C(v4, qword_100B30028);
  (*(*(v4 - 8) + 16))(v1 + v3, v5, v4);
  UUID.init()();
  *(v1 + qword_100B31200 + 8) = 0;
  swift_unknownObjectWeakInit();
  v6 = qword_100B31208;
  *(v1 + v6) = [objc_allocWithZone(UIStackView) init];
  *(v1 + qword_100B31210) = 0;
  v7 = qword_100AF5720;
  type metadata accessor for VideoSeekSlider();
  *(v1 + v7) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = qword_100AF5728;
  *(v1 + v8) = [objc_allocWithZone(UIView) init];
  v9 = qword_100AF5730;
  *(v1 + v9) = [objc_allocWithZone(UIStackView) init];
  v10 = qword_100AF5738;
  *(v1 + v10) = [objc_allocWithZone(UILabel) init];
  v11 = qword_100AF5740;
  *(v1 + v11) = [objc_allocWithZone(UILabel) init];
  v12 = qword_100AF5748;
  *(v1 + v12) = [objc_allocWithZone(UIStackView) init];
  v13 = qword_100AF5750;
  sub_1000065A8(0, &qword_100ADFC10);
  static UIButton.Configuration.borderless()();
  *(v1 + v13) = UIButton.init(configuration:primaryAction:)();
  v14 = qword_100AF5758;
  static UIButton.Configuration.borderless()();
  *(v1 + v14) = UIButton.init(configuration:primaryAction:)();
  *(v1 + qword_100AF5760) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100878A54(void *a1)
{
  v2 = [a1 layer];
  LODWORD(v3) = 1045220557;
  [v2 setShadowOpacity:v3];

  v4 = [a1 layer];
  [v4 setShadowRadius:12.0];

  v5 = [a1 layer];
  [v5 shadowOffset];
  [v5 setShadowOffset:?];

  v6 = [a1 layer];
  [v6 setShadowPathIsBounds:1];
}

void sub_100878B5C(void *a1)
{
  v2 = sub_100047788(UIFontTextStyleFootnote, &off_100A5B428, 0);
  sub_100047D60(&unk_100A5B448);
  [a1 setFont:v2];

  v3 = [objc_opt_self() tintColor];
  [a1 setTextColor:v3];

  v4 = [a1 layer];
  LODWORD(v5) = 0.5;
  [v4 setShadowOpacity:v5];

  v6 = [a1 layer];
  [v6 setShadowRadius:14.0];

  v7 = [a1 layer];
  [v7 shadowOffset];
  [v7 setShadowOffset:?];

  v8 = [a1 layer];
  [v8 setShadowPathIsBounds:1];
}

void *sub_100878CE0(uint64_t a1)
{
  v1 = *a1;
  if (*(a1 + 8) == 1)
  {
    *(a1 + 8) = 0;
    v2 = v1;
  }

  else if (v1)
  {
    v4 = v1;
    swift_getAtKeyPath();

    v1 = v7;
    v5 = v7;

    *a1 = v7;
  }

  return v1;
}

void sub_100878D68()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v2 - 8);
  v4 = &v30 - v3;
  v5 = qword_100B2F5A0;
  v6 = *(v0 + qword_100B2F5A0);
  v7 = *&v6[OBJC_IVAR____TtC7Journal14VideoAssetView_playerView];
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    v10 = [v9 layer];
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (!v11)
    {
    }

    v12 = [v11 player];

    if (v12)
    {
      v13 = [v12 timeControlStatus];

      v6 = *(v1 + v5);
      if (v13 == 2)
      {
        v14 = *&v6[OBJC_IVAR____TtC7Journal14VideoAssetView_playerView];
        if (v14)
        {
          v15 = v6;
          v16 = v14;
          v17 = [v16 layer];
          objc_opt_self();
          v18 = swift_dynamicCastObjCClass();
          if (!v18)
          {
          }

          v19 = [v18 player];

          [v19 pause];
        }

        v20 = qword_100AD0880;
        v21 = *(v1 + qword_100AF5750);
        if (v20 != -1)
        {
          swift_once();
        }

        v31 = String._bridgeToObjectiveC()();
        [v21 setAccessibilityLabel:v31];

        v22 = v31;

        return;
      }
    }

    else
    {

      v6 = *(v1 + v5);
    }
  }

  v23 = v6;
  sub_1008169A4();

  v24 = qword_100AD0868;
  v25 = *(v1 + qword_100AF5750);
  if (v24 != -1)
  {
    swift_once();
  }

  v26 = String._bridgeToObjectiveC()();
  [v25 setAccessibilityLabel:v26];

  v27 = type metadata accessor for TaskPriority();
  (*(*(v27 - 8) + 56))(v4, 1, 1, v27);
  type metadata accessor for MainActor();
  v28 = static MainActor.shared.getter();
  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  *(v29 + 24) = &protocol witness table for MainActor;
  sub_1003E9628(0, 0, v4, &unk_10096F768, v29);
}

uint64_t sub_1008791D4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1953066613;
  if (v2 != 1)
  {
    v4 = 0x6E617073656D6974;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x65756C6176;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1953066613;
  if (*a2 != 1)
  {
    v8 = 0x6E617073656D6974;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x65756C6176;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1008792C4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10087935C()
{
  String.hash(into:)();
}

Swift::Int sub_1008793E0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100879474@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1008798A8(*a1);
  *a2 = result;
  return result;
}

void sub_1008794A4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE400000000000000;
  v5 = 1953066613;
  if (v2 != 1)
  {
    v5 = 0x6E617073656D6974;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x65756C6176;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1008796B0()
{
  sub_100280F98();

  return static AttributeScope.decodingConfiguration.getter();
}

uint64_t sub_1008796FC()
{
  sub_100280F98();

  return static AttributeScope.encodingConfiguration.getter();
}

unint64_t sub_10087974C()
{
  result = qword_100AF5BE0;
  if (!qword_100AF5BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5BE0);
  }

  return result;
}

unint64_t sub_1008797A4()
{
  result = qword_100AF5BE8;
  if (!qword_100AF5BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5BE8);
  }

  return result;
}

unint64_t sub_1008797FC()
{
  result = qword_100AF5BF0;
  if (!qword_100AF5BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5BF0);
  }

  return result;
}

unint64_t sub_100879854()
{
  result = qword_100AF5BF8;
  if (!qword_100AF5BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5BF8);
  }

  return result;
}

unint64_t sub_1008798A8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100A5B460, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1008798F4()
{
  result = qword_100AF5C00;
  if (!qword_100AF5C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5C00);
  }

  return result;
}

unint64_t sub_100879948()
{
  result = qword_100AF5C08;
  if (!qword_100AF5C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5C08);
  }

  return result;
}

void sub_1008799A0(uint64_t a1)
{
  v2 = v1;
  v54 = type metadata accessor for UUID();
  v4 = *(v54 - 8);
  __chkstk_darwin(v54);
  v46 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100AD1420);
  v7 = a1;
  __chkstk_darwin(v6 - 8);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v53 = &v42 - v11;
  v48 = v2;
  v50 = v9;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for JournalMO();
    sub_10087D2F4(&qword_100ADAA00, &type metadata accessor for JournalMO);
    Set.Iterator.init(_cocoa:)();
    v7 = v57;
    v12 = v58;
    v13 = v59;
    v14 = v60;
    v15 = v61;
  }

  else
  {
    v16 = -1 << *(a1 + 32);
    v12 = a1 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(a1 + 56);

    v14 = 0;
  }

  v47 = v13;
  v19 = (v13 + 64) >> 6;
  v51 = (v4 + 48);
  v52 = (v4 + 56);
  v44 = (v4 + 8);
  v45 = (v4 + 16);
  v49 = _swiftEmptyArrayStorage;
  v55 = v7;
LABEL_8:
  v20 = v14;
  v21 = v15;
  if (v7 < 0)
  {
    do
    {
      v25 = __CocoaSet.Iterator.next()();
      if (!v25)
      {
        goto LABEL_28;
      }

      v56 = v25;
      type metadata accessor for JournalMO();
      swift_dynamicCast();
      v24 = v62;
      v14 = v20;
      v15 = v21;
      if (!v62)
      {
        goto LABEL_28;
      }

LABEL_17:
      v26 = [v24 id];
      if (v26)
      {
        v27 = v50;
        v28 = v26;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v29 = 0;
      }

      else
      {
        v29 = 1;
        v27 = v50;
      }

      v30 = v54;
      (*v52)(v27, v29, 1, v54);
      v31 = v27;
      v32 = v53;
      sub_100021CEC(v31, v53, &qword_100AD1420);
      if (!(*v51)(v32, 1, v30))
      {
        v33 = v46;
        v34 = v54;
        (*v45)(v46, v32, v54);
        sub_100004F84(v32, &qword_100AD1420);
        v43 = UUID.uuidString.getter();
        v36 = v35;
        (*v44)(v33, v34);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_10009BCC8(0, *(v49 + 2) + 1, 1, v49);
        }

        v38 = *(v49 + 2);
        v37 = *(v49 + 3);
        v7 = v55;
        if (v38 >= v37 >> 1)
        {
          v41 = sub_10009BCC8((v37 > 1), v38 + 1, 1, v49);
          v7 = v55;
          v49 = v41;
        }

        v39 = v49;
        *(v49 + 2) = v38 + 1;
        v40 = &v39[16 * v38];
        *(v40 + 4) = v43;
        *(v40 + 5) = v36;
        goto LABEL_8;
      }

      sub_100004F84(v32, &qword_100AD1420);

      v20 = v14;
      v21 = v15;
      v7 = v55;
    }

    while (v55 < 0);
  }

  v22 = v20;
  v23 = v21;
  v14 = v20;
  if (v21)
  {
LABEL_13:
    v15 = (v23 - 1) & v23;
    v24 = *(*(v7 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v23)))));
    if (v24)
    {
      goto LABEL_17;
    }

LABEL_28:
    sub_100014FF8();
    return;
  }

  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      goto LABEL_28;
    }

    v23 = *(v12 + 8 * v14);
    ++v22;
    if (v23)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_100879E68()
{
  v1 = v0;
  v2 = sub_10022F9E8(v0);
  v4 = v3;
  v5 = [v1 text];
  if (v5)
  {
    v6 = v5;
    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = Data.getAttributedString()();
    sub_1000340DC(v7, v9);
    if (v10)
    {
      v11 = [v10 string];

      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      goto LABEL_6;
    }
  }

  else
  {
    v10 = 0;
  }

  v13 = 0;
LABEL_6:
  if (v4)
  {
    v14 = v2;
  }

  else
  {
    v14 = 0;
  }

  if (v4)
  {
    v15 = v4;
  }

  else
  {
    v15 = 0xE000000000000000;
  }

  v16 = v15;
  String.append(_:)(*&v14);

  v17._countAndFlagsBits = 10;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  if (v13)
  {
    v18 = v10;
  }

  else
  {
    v18 = 0;
  }

  if (v13)
  {
    v19 = v13;
  }

  else
  {
    v19 = 0xE000000000000000;
  }

  v20 = v19;
  String.append(_:)(*&v18);

  return 0;
}

double *sub_100879F9C()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD6908);
  __chkstk_darwin(v2 - 8);
  v65 = v57 - v3;
  v64 = type metadata accessor for AssetType();
  v4 = *(v64 - 8);
  __chkstk_darwin(v64);
  v63 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TokenTypeIdentifier();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v62 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v57 - v10;
  __chkstk_darwin(v12);
  v14 = v57 - v13;
  *&v16 = __chkstk_darwin(v15).n128_u64[0];
  v18 = v57 - v17;
  v19 = _swiftEmptyArrayStorage;
  v70 = _swiftEmptyArrayStorage;
  if (![v1 flagged])
  {
    goto LABEL_4;
  }

  (*(v7 + 104))(v18, enum case for TokenTypeIdentifier.bookmarked(_:), v6);
  v68 = TokenTypeIdentifier.rawValue.getter();
  v21 = v20;
  (*(v7 + 8))(v18, v6);
  v19 = sub_10009BCC8(0, 1, 1, _swiftEmptyArrayStorage);
  v23 = *(v19 + 2);
  v22 = *(v19 + 3);
  v24 = (v23 + 1);
  if (v23 >= v22 >> 1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    *(v19 + 2) = v24;
    v25 = &v19[16 * v23];
    *(v25 + 4) = v68;
    *(v25 + 5) = v21;
    v70 = v19;
LABEL_4:
    v26 = [v1 managedObjectContext];
    if (!v26)
    {
      v26 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:2];
    }

    type metadata accessor for EntryViewModel();
    swift_allocObject();
    v23 = sub_100035ADC(v1, 0, 0, v26);
    v27 = sub_10087CAF8();
    v57[1] = v23;
    if (v27 & 1) != 0 || (sub_10005AAB0(512) & 1) != 0 && (sub_10005AAB0(1))
    {
      (*(v7 + 104))(v14, enum case for TokenTypeIdentifier.textOnly(_:), v6);
      v28 = TokenTypeIdentifier.rawValue.getter();
      v30 = v29;
      (*(v7 + 8))(v14, v6);
    }

    else
    {
      if (sub_10005AAB0(4))
      {
        goto LABEL_17;
      }

      (*(v7 + 104))(v11, enum case for TokenTypeIdentifier.attachmentsOnly(_:), v6);
      v28 = TokenTypeIdentifier.rawValue.getter();
      v30 = v31;
      (*(v7 + 8))(v11, v6);
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_10009BCC8(0, *(v19 + 2) + 1, 1, v19);
    }

    v23 = *(v19 + 2);
    v32 = *(v19 + 3);
    if (v23 >= v32 >> 1)
    {
      v19 = sub_10009BCC8((v32 > 1), (v23 + 1), 1, v19);
    }

    *(v19 + 2) = v23 + 1;
    v33 = &v19[16 * v23];
    *(v33 + 4) = v28;
    *(v33 + 5) = v30;
    v70 = v19;
LABEL_17:
    v34 = sub_10087CBA4();
    v35 = v34;
    v36 = *(v34 + 16);
    v14 = v4;
    if (!v36)
    {
      break;
    }

    v11 = sub_1003E754C(*(v34 + 16), 0);
    v21 = sub_1001C16CC(&v69, &v11[(*(v4 + 80) + 32) & ~*(v4 + 80)], v36, v35);
    sub_100014FF8();
    v37 = v21 == v36;
    v24 = v63;
    v1 = v64;
    v4 = v65;
    if (v37)
    {
      v38 = v7;
      v39 = *(v11 + 2);
      if (v39 != 0.0)
      {
        goto LABEL_21;
      }

LABEL_33:

      v47 = _swiftEmptyArrayStorage;
      goto LABEL_34;
    }

    __break(1u);
LABEL_35:
    v19 = sub_10009BCC8((v22 > 1), v24, 1, v19);
  }

  v38 = v7;

  v11 = _swiftEmptyArrayStorage;
  v24 = v63;
  v1 = v64;
  v4 = v65;
  v39 = _swiftEmptyArrayStorage[2];
  if (v39 == 0.0)
  {
    goto LABEL_33;
  }

LABEL_21:
  v41 = *(v14 + 2);
  v40 = v14 + 16;
  v42 = (v40[64] + 32) & ~v40[64];
  v57[0] = v11;
  v43 = &v11[v42];
  v67 = *(v40 + 7);
  v68 = v41;
  v44 = v38;
  v45 = (v38 + 48);
  v58 = (v44 + 8);
  v59 = (v44 + 32);
  v46 = (v40 - 8);
  v47 = _swiftEmptyArrayStorage;
  v60 = v6;
  v61 = v40;
  v41(v24, v43, v1);
  while (1)
  {
    AssetType.tokenTypeIdentifier.getter();
    if ((*v45)(v4, 1, v6) == 1)
    {
      (*v46)(v24, v1);
      sub_100004F84(v4, &qword_100AD6908);
    }

    else
    {
      v48 = v4;
      v49 = v24;
      v50 = v62;
      (*v59)(v62, v48, v6);
      v66 = TokenTypeIdentifier.rawValue.getter();
      v52 = v51;
      (*v58)(v50, v6);
      (*v46)(v49, v1);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = sub_10009BCC8(0, *(v47 + 2) + 1, 1, v47);
      }

      v54 = *(v47 + 2);
      v53 = *(v47 + 3);
      if (v54 >= v53 >> 1)
      {
        v47 = sub_10009BCC8((v53 > 1), v54 + 1, 1, v47);
      }

      *(v47 + 2) = v54 + 1;
      v55 = &v47[16 * v54];
      v4 = v65;
      *(v55 + 4) = v66;
      *(v55 + 5) = v52;
      v24 = v63;
      v1 = v64;
      v6 = v60;
    }

    v43 += v67;
    --*&v39;
    if (v39 == 0.0)
    {
      break;
    }

    v68(v24, v43, v1);
  }

LABEL_34:
  sub_1006AD7E8(v47);

  return v70;
}

char *sub_10087A6A4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  *&v3 = __chkstk_darwin(v1).n128_u64[0];
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 journals];
  if (!v6 || (v7 = v6, type metadata accessor for JournalMO(), v8 = static JournalMO.visibleNamedJournalsPredicate.getter(), v9 = [v7 filteredSetUsingPredicate:v8], v7, v8, v10 = static Set._unconditionallyBridgeFromObjectiveC(_:)(), v9, sub_100052340(v10), v12 = v11, , !v12))
  {
    if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
    {
      sub_100495E08(_swiftEmptyArrayStorage);
      v12 = v21;
    }

    else
    {

      v12 = &_swiftEmptySetSingleton;
    }
  }

  sub_1008799A0(v12);
  v14 = v13;

  if (!*(v14 + 2))
  {
    type metadata accessor for JournalMO();
    static JournalMO.defaultJournalID.getter();
    v15 = UUID.uuidString.getter();
    v17 = v16;
    (*(v2 + 8))(v5, v1);
    v18 = *(v14 + 2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = v14;
    if (!isUniquelyReferenced_nonNull_native || v18 >= *(v14 + 3) >> 1)
    {
      v14 = sub_10009BCC8(isUniquelyReferenced_nonNull_native, v18 + 1, 1, v14);
      v23 = v14;
    }

    sub_10019BA44(0, 0, 1, v15, v17);
  }

  return v14;
}

double *sub_10087A8F4()
{
  v1 = v0;
  v2 = sub_1000F24EC(&qword_100AD8B30);
  __chkstk_darwin(v2);
  v4 = (&v86 - v3);
  v99 = sub_1000F24EC(&qword_100AD8740);
  v5 = *(v99 - 8);
  __chkstk_darwin(v99);
  v119 = &v86 - v6;
  v116 = type metadata accessor for MotionActivityAssetMetadata();
  v125 = *(v116 - 8);
  __chkstk_darwin(v116);
  v98 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1000F24EC(&qword_100ADA8A0);
  __chkstk_darwin(v102);
  v101 = (&v86 - v8);
  v100 = sub_1000F24EC(&qword_100AD5B28);
  v121 = *(v100 - 8);
  __chkstk_darwin(v100);
  v123 = &v86 - v9;
  v10 = type metadata accessor for WorkoutRouteAssetMetadata();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v113 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1000F24EC(&qword_100ADA888);
  __chkstk_darwin(v105);
  v104 = (&v86 - v13);
  v103 = sub_1000F24EC(&qword_100AE4280);
  v14 = *(v103 - 8);
  __chkstk_darwin(v103);
  v16 = &v86 - v15;
  v17 = type metadata accessor for WorkoutIconAssetMetadata();
  v18 = *(v17 - 8);
  *&v19 = __chkstk_darwin(v17).n128_u64[0];
  v114 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [v1 assets];
  if (v21)
  {
    v97 = v4;
    v22 = v21;
    v23 = [v21 allObjects];

    v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = sub_100584904(v24);

    if (v25)
    {
      v26 = v25 & 0xFFFFFFFFFFFFFF8;
      v124 = v25 & 0xFFFFFFFFFFFFFF8;
      if (v25 >> 62)
      {
LABEL_61:
        v27 = _CocoaArrayWrapper.endIndex.getter();
        v26 = v124;
        if (v27)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v27 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v27)
        {
LABEL_5:
          v91 = v2;
          v2 = 0;
          v122 = v25 & 0xC000000000000001;
          v96 = (v14 + 56);
          v118 = (v18 + 48);
          v110 = (v18 + 8);
          v111 = (v18 + 32);
          v95 = (v18 + 56);
          v93 = (v121 + 56);
          v115 = (v11 + 6);
          v106 = (v11 + 1);
          v107 = (v11 + 4);
          v92 = (v11 + 7);
          v90 = (v5 + 56);
          v112 = (v125 + 48);
          v89 = (v125 + 56);
          v88 = (v125 + 32);
          v11 = _swiftEmptyArrayStorage;
          v87 = (v125 + 8);
          v108 = xmmword_100941EE0;
          v117 = v10;
          v109 = v16;
          v125 = v17;
          v120 = v25;
          v121 = v27;
          while (1)
          {
            v94 = v11;
            v14 = v2;
            while (1)
            {
              if (v122)
              {
                v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v14 >= *(v26 + 16))
                {
                  goto LABEL_60;
                }

                v28 = *(v25 + 8 * v14 + 32);
              }

              v25 = v28;
              v2 = v14 + 1;
              if (__OFADD__(v14, 1))
              {
                __break(1u);
LABEL_60:
                __break(1u);
                goto LABEL_61;
              }

              v18 = v28;
              v11 = sub_100039CE0();
              type metadata accessor for WorkoutIconAsset();
              v29 = swift_dynamicCastClass();
              if (v29)
              {
                v30 = OBJC_IVAR____TtC7Journal16WorkoutIconAsset_metadata;
                if (*(v29 + OBJC_IVAR____TtC7Journal16WorkoutIconAsset_metadata))
                {
                  v31 = v11;
LABEL_22:

                  sub_10008F5F4(v16);

                  v18 = (*v118)(v16, 1, v17);

                  if (v18 != 1)
                  {
                    v18 = v114;
                    (*v111)(v114, v16, v17);
                    v5 = WorkoutIconAssetMetadata.type.getter();
                    v43 = v17;
                    v45 = v44;

                    (*v110)(v18, v43);
                    goto LABEL_36;
                  }
                }

                else
                {
                  v32 = v29;
                  v33 = *(v29 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
                  if (v33)
                  {
                    v34 = v11;
                    v35 = [v33 assetMetaData];
                    if (v35)
                    {
                      v36 = v35;
                      v37 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                      v5 = v38;

                      v39 = v104;
                      *v104 = v37;
                      v39[1] = v5;
                      v17 = v125;
                      swift_storeEnumTagMultiPayload();
                      sub_1000F24EC(&qword_100AE0DD0);
                      v40 = swift_allocObject();
                      (*v96)(v40 + *(*v40 + 104), 1, 1, v103);
                      *(v40 + *(*v40 + 112)) = v108;
                      v41 = v39;
                      v16 = v109;
                      sub_100021CEC(v41, v40 + *(*v40 + 120), &qword_100ADA888);
                      *(v32 + v30) = v40;
                    }
                  }

                  else
                  {
                    v42 = v11;
                  }

                  v18 = *(v32 + v30);
                  v10 = v117;
                  if (v18)
                  {
                    goto LABEL_22;
                  }

                  (*v95)(v16, 1, 1, v17);
                }

                sub_100004F84(v16, &qword_100AE4280);
              }

              type metadata accessor for WorkoutRouteAsset();
              v46 = swift_dynamicCastClass();
              if (!v46)
              {
                goto LABEL_40;
              }

              v47 = OBJC_IVAR____TtC7Journal17WorkoutRouteAsset_metadata;
              if (!*(v46 + OBJC_IVAR____TtC7Journal17WorkoutRouteAsset_metadata))
              {
                break;
              }

              v48 = v11;
LABEL_34:

              v60 = v123;
              sub_10025B758(v123);

              v18 = (*v115)(v60, 1, v10);

              if (v18 == 1)
              {
                goto LABEL_39;
              }

              v61 = v113;
              (*v107)(v113, v123, v10);
              v18 = v61;
              v5 = WorkoutRouteAssetMetadata.type.getter();
              v45 = v62;

              (*v106)(v61, v10);
LABEL_36:

              if (v45)
              {
                goto LABEL_51;
              }

LABEL_9:
              ++v14;
              v25 = v120;
              v26 = v124;
              v17 = v125;
              if (v2 == v121)
              {
                v11 = v94;
                goto LABEL_63;
              }
            }

            v49 = v46;
            v50 = *(v46 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
            if (v50)
            {
              v51 = v11;
              v52 = [v50 assetMetaData];
              if (v52)
              {
                v53 = v52;
                v54 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                v5 = v55;

                v56 = v101;
                *v101 = v54;
                v56[1] = v5;
                swift_storeEnumTagMultiPayload();
                sub_1000F24EC(&qword_100AE0E20);
                v57 = swift_allocObject();
                (*v93)(v57 + *(*v57 + 104), 1, 1, v100);
                *(v57 + *(*v57 + 112)) = v108;
                v58 = v56;
                v16 = v109;
                sub_100021CEC(v58, v57 + *(*v57 + 120), &qword_100ADA8A0);
                *(v49 + v47) = v57;
              }
            }

            else
            {
              v59 = v11;
            }

            v18 = *(v49 + v47);
            v10 = v117;
            if (v18)
            {
              goto LABEL_34;
            }

            (*v92)(v123, 1, 1, v117);

LABEL_39:
            sub_100004F84(v123, &qword_100AD5B28);
LABEL_40:
            type metadata accessor for MotionActivityAsset();
            v63 = swift_dynamicCastClass();
            if (!v63)
            {

              v25 = v11;
              goto LABEL_8;
            }

            v64 = OBJC_IVAR____TtC7Journal19MotionActivityAsset_metadata;
            v18 = *(v63 + OBJC_IVAR____TtC7Journal19MotionActivityAsset_metadata);
            if (!v18)
            {
              v65 = v63;
              v66 = *(v63 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
              if (v66)
              {
                v67 = [v66 assetMetaData];
                if (v67)
                {
                  v68 = v67;
                  v69 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                  v5 = v70;

                  v71 = v97;
                  *v97 = v69;
                  v71[1] = v5;
                  swift_storeEnumTagMultiPayload();
                  sub_1000F24EC(&qword_100AD8B40);
                  v72 = swift_allocObject();
                  (*v90)(v72 + *(*v72 + 104), 1, 1, v99);
                  *(v72 + *(*v72 + 112)) = v108;
                  v73 = v71;
                  v16 = v109;
                  sub_100021CEC(v73, v72 + *(*v72 + 120), &qword_100AD8B30);
                  *(v65 + v64) = v72;
                }
              }

              v18 = *(v65 + v64);
              v10 = v117;
              if (!v18)
              {
                (*v89)(v119, 1, 1, v116);
LABEL_47:

                sub_100004F84(v119, &qword_100AD8740);
LABEL_8:

                goto LABEL_9;
              }
            }

            v74 = v119;
            sub_10025DF64(v119);

            if ((*v112)(v74, 1, v116) == 1)
            {
              goto LABEL_47;
            }

            v75 = v98;
            v76 = v116;
            (*v88)(v98, v119, v116);
            v18 = v75;
            v5 = MotionActivityAssetMetadata.activityType.getter();
            v45 = v77;

            (*v87)(v75, v76);
LABEL_51:
            v25 = v120;
            v78 = v94;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v78 = sub_10009BCC8(0, *(v78 + 2) + 1, 1, v78);
            }

            v80 = *(v78 + 2);
            v79 = *(v78 + 3);
            v81 = v78;
            v26 = v124;
            v82 = v121;
            if (v80 >= v79 >> 1)
            {
              v84 = sub_10009BCC8((v79 > 1), v80 + 1, 1, v78);
              v26 = v124;
              v81 = v84;
              v82 = v121;
            }

            *(v81 + 2) = v80 + 1;
            v83 = &v81[16 * v80];
            v11 = v81;
            *(v83 + 4) = v5;
            *(v83 + 5) = v45;
            v17 = v125;
            if (v2 == v82)
            {
LABEL_63:

              return v11;
            }
          }
        }
      }

      v11 = _swiftEmptyArrayStorage;
      goto LABEL_63;
    }
  }

  return _swiftEmptyArrayStorage;
}

double *sub_10087B720()
{
  v1 = v0;
  v145 = sub_1000F24EC(&qword_100ADA928);
  __chkstk_darwin(v145);
  v3 = (&v131 - v2);
  v144 = sub_1000F24EC(&qword_100ADA938);
  v4 = *(v144 - 8);
  __chkstk_darwin(v144);
  v149 = &v131 - v5;
  v6 = type metadata accessor for GenericMapAssetMetadata();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v143 = sub_1000F24EC(&qword_100ADA948);
  __chkstk_darwin(v143);
  v142 = (&v131 - v10);
  v141 = sub_1000F24EC(&unk_100AEED20);
  v11 = *(v141 - 8);
  __chkstk_darwin(v141);
  v13 = &v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v160 = &v131 - v15;
  v168 = type metadata accessor for VisitAssetMetadata();
  v148 = *(v168 - 8);
  __chkstk_darwin(v168);
  v165 = &v131 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v158 = (&v131 - v18);
  __chkstk_darwin(v19);
  v170 = &v131 - v20;
  __chkstk_darwin(v21);
  v169 = &v131 - v22;
  v140 = sub_1000F24EC(&qword_100AD38D0);
  __chkstk_darwin(v140);
  v139 = (&v131 - v23);
  v138 = sub_1000F24EC(&unk_100AD5B30);
  v24 = *(v138 - 8);
  *&v25 = __chkstk_darwin(v138).n128_u64[0];
  v27 = &v131 - v26;
  v28 = [v1 assets];
  if (!v28)
  {
    return _swiftEmptyArrayStorage;
  }

  v157 = v9;
  v152 = v6;
  v29 = v28;
  v30 = [v28 allObjects];

  v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = sub_100584904(v31);

  if (!v32)
  {
    return _swiftEmptyArrayStorage;
  }

  v177 = _swiftEmptySetSingleton;
  v161 = v32;
  v155 = v32 & 0xFFFFFFFFFFFFFF8;
  if (v32 >> 62)
  {
LABEL_120:
    v33 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v34 = v152;
  if (!v33)
  {

    v126 = _swiftEmptySetSingleton;
    v127 = _swiftEmptySetSingleton[2];
    if (v127)
    {
      goto LABEL_113;
    }

LABEL_116:

    return _swiftEmptyArrayStorage;
  }

  v35 = 0;
  v164 = v161 & 0xC000000000000001;
  v154 = v161 + 32;
  v135 = v24 + 7;
  v172 = v148 + 16;
  v175 = (v148 + 8);
  v134 = (v11 + 56);
  v162 = (v148 + 48);
  v156 = (v148 + 32);
  v132 = (v148 + 56);
  v133 = (v4 + 7);
  v159 = (v7 + 48);
  v151 = (v7 + 32);
  v150 = (v7 + 8);
  v131 = (v7 + 56);
  v153 = xmmword_100941EE0;
  v7 = v149;
  v146 = v13;
  v11 = v165;
  v147 = v27;
  v163 = v33;
  v136 = v3;
  do
  {
    if (v164)
    {
      v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v37 = __OFADD__(v35, 1);
      v38 = v35 + 1;
      if (v37)
      {
        goto LABEL_118;
      }
    }

    else
    {
      if (v35 >= *(v155 + 16))
      {
        goto LABEL_119;
      }

      v36 = *(v154 + 8 * v35);
      v37 = __OFADD__(v35, 1);
      v38 = v35 + 1;
      if (v37)
      {
LABEL_118:
        __break(1u);
LABEL_119:
        __break(1u);
        goto LABEL_120;
      }
    }

    v166 = v36;
    v4 = v36;
    v24 = sub_100039CE0();
    type metadata accessor for MultiPinMapAsset();
    v39 = swift_dynamicCastClass();
    v167 = v38;
    v171 = v24;
    if (v39)
    {
      v40 = OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata;
      v4 = *(v39 + OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata);
      if (v4)
      {
        v41 = v24;
      }

      else
      {
        v42 = v39;
        v43 = *(v39 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
        if (v43)
        {
          v44 = v171;
          v45 = [v43 assetMetaData];
          if (v45)
          {
            v46 = v45;
            v47 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v49 = v48;

            v50 = v139;
            *v139 = v47;
            v50[1] = v49;
            v11 = v165;
            swift_storeEnumTagMultiPayload();
            sub_1000F24EC(&qword_100AD38D8);
            v51 = swift_allocObject();
            (*v135)(v51 + *(*v51 + 104), 1, 1, v138);
            *(v51 + *(*v51 + 112)) = v153;
            v52 = v50;
            v27 = v147;
            sub_100021CEC(v52, v51 + *(*v51 + 120), &qword_100AD38D0);
            *(v42 + v40) = v51;
          }
        }

        else
        {
          v53 = v171;
        }

        v4 = *(v42 + v40);
        v24 = v171;
        if (!v4)
        {

          v82 = type metadata accessor for MultiPinMapAssetMetadata();
          (*(*(v82 - 8) + 56))(v27, 1, 1, v82);
          goto LABEL_54;
        }
      }

      sub_1000768B4(v27);

      v54 = type metadata accessor for MultiPinMapAssetMetadata();
      v55 = *(v54 - 8);
      if ((*(v55 + 48))(v27, 1, v54) == 1)
      {

        v11 = v165;
LABEL_54:
        sub_100004F84(v27, &unk_100AD5B30);
        goto LABEL_57;
      }

      v4 = MultiPinMapAssetMetadata.visitsData.getter();
      (*(v55 + 8))(v27, v54);
      if (v4)
      {
        v56 = v4[2];
        if (v56)
        {
          v57 = (*(v148 + 80) + 32) & ~*(v148 + 80);
          v137 = v4;
          v58 = v4 + v57;
          v59 = *(v148 + 72);
          v173 = *(v148 + 16);
          v174 = v59;
          v60 = v4 + v57;
          v61 = v56;
          v62 = _swiftEmptyArrayStorage;
          v63 = v168;
          do
          {
            v64 = v169;
            v173(v169, v60, v63);
            v65 = VisitAssetMetadata.placeName.getter();
            v67 = v66;
            v68 = *v175;
            (*v175)(v64, v63);
            if (v67)
            {
              v69 = HIBYTE(v67) & 0xF;
              if ((v67 & 0x2000000000000000) == 0)
              {
                v69 = v65 & 0xFFFFFFFFFFFFLL;
              }

              if (v69)
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v62 = sub_10009BCC8(0, *(v62 + 2) + 1, 1, v62);
                }

                v71 = *(v62 + 2);
                v70 = *(v62 + 3);
                if (v71 >= v70 >> 1)
                {
                  v62 = sub_10009BCC8((v70 > 1), v71 + 1, 1, v62);
                }

                *(v62 + 2) = v71 + 1;
                v72 = &v62[16 * v71];
                *(v72 + 4) = v65;
                *(v72 + 5) = v67;
                v63 = v168;
              }

              else
              {
              }
            }

            v60 += v174;
            --v61;
          }

          while (v61);
          sub_100785F40(v62);

          v73 = _swiftEmptyArrayStorage;
          v13 = v146;
          v24 = v171;
          do
          {
            v74 = v170;
            v173(v170, v58, v63);
            v75 = VisitAssetMetadata.city.getter();
            v77 = v76;
            v68(v74, v63);
            if (v77)
            {
              v78 = HIBYTE(v77) & 0xF;
              if ((v77 & 0x2000000000000000) == 0)
              {
                v78 = v75 & 0xFFFFFFFFFFFFLL;
              }

              if (v78)
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v73 = sub_10009BCC8(0, *(v73 + 2) + 1, 1, v73);
                }

                v80 = *(v73 + 2);
                v79 = *(v73 + 3);
                if (v80 >= v79 >> 1)
                {
                  v73 = sub_10009BCC8((v79 > 1), v80 + 1, 1, v73);
                }

                *(v73 + 2) = v80 + 1;
                v81 = &v73[16 * v80];
                *(v81 + 4) = v75;
                *(v81 + 5) = v77;
                v24 = v171;
              }

              else
              {
              }
            }

            v58 += v174;
            --v56;
          }

          while (v56);
          v3 = v136;
          v7 = v149;
          v11 = v165;
          v27 = v147;
        }

        else
        {
          v73 = _swiftEmptyArrayStorage;
          sub_100785F40(_swiftEmptyArrayStorage);

          v11 = v165;
        }

        v4 = &v177;
        sub_100785F40(v73);

        v34 = v152;
      }

      else
      {

        v11 = v165;
      }
    }

LABEL_57:
    type metadata accessor for VisitAsset();
    v83 = swift_dynamicCastClass();
    if (!v83)
    {
      goto LABEL_84;
    }

    v84 = OBJC_IVAR____TtC7Journal10VisitAsset_metadata;
    if (*(v83 + OBJC_IVAR____TtC7Journal10VisitAsset_metadata))
    {
      v85 = v24;
    }

    else
    {
      v86 = v83;
      v87 = *(v83 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
      if (v87)
      {
        v88 = v171;
        v89 = [v87 assetMetaData];
        if (v89)
        {
          v90 = v89;
          v91 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v93 = v92;

          v94 = v142;
          *v142 = v91;
          v94[1] = v93;
          v11 = v165;
          swift_storeEnumTagMultiPayload();
          sub_1000F24EC(&qword_100AE9768);
          v95 = swift_allocObject();
          (*v134)(v95 + *(*v95 + 104), 1, 1, v141);
          *(v95 + *(*v95 + 112)) = v153;
          v96 = v94;
          v13 = v146;
          sub_100021CEC(v96, v95 + *(*v95 + 120), &qword_100ADA948);
          *(v86 + v84) = v95;
        }
      }

      else
      {
        v97 = v171;
      }

      v4 = *(v86 + v84);
      v24 = v171;
      if (!v4)
      {

        v98 = v160;
        (*v132)(v160, 1, 1, v168);
        goto LABEL_73;
      }
    }

    v98 = v160;
    sub_10025D478(v160);

    v4 = v168;
    if ((*v162)(v98, 1, v168) == 1)
    {

LABEL_73:
      sub_100004F84(v98, &unk_100AEED20);
      goto LABEL_84;
    }

    v99 = v158;
    (*v156)(v158, v98, v4);
    v100 = VisitAssetMetadata.placeName.getter();
    if (v101)
    {
      v102 = HIBYTE(v101) & 0xF;
      if ((v101 & 0x2000000000000000) == 0)
      {
        v102 = v100 & 0xFFFFFFFFFFFFLL;
      }

      if (v102)
      {
        sub_100286DEC(&v176, v100, v101);
      }
    }

    v4 = v99;
    v103 = VisitAssetMetadata.city.getter();
    if (!v104)
    {
      (*v175)(v99, v168);
LABEL_82:

      goto LABEL_83;
    }

    v105 = HIBYTE(v104) & 0xF;
    if ((v104 & 0x2000000000000000) == 0)
    {
      v105 = v103 & 0xFFFFFFFFFFFFLL;
    }

    if (!v105)
    {
      (*v175)(v158, v168);

      goto LABEL_82;
    }

    v4 = &v177;
    sub_100286DEC(&v176, v103, v104);

    (*v175)(v158, v168);
LABEL_83:
    v11 = v165;
LABEL_84:
    type metadata accessor for GenericMapAsset();
    v106 = swift_dynamicCastClass();
    if (!v106)
    {

      v35 = v167;
      continue;
    }

    v107 = OBJC_IVAR____TtC7Journal15GenericMapAsset_metadata;
    v4 = *(v106 + OBJC_IVAR____TtC7Journal15GenericMapAsset_metadata);
    if (!v4)
    {
      v108 = v106;
      v109 = *(v106 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
      if (v109)
      {
        v110 = [v109 assetMetaData];
        if (v110)
        {
          v111 = v110;
          v112 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v114 = v113;

          *v3 = v112;
          v3[1] = v114;
          v11 = v165;
          swift_storeEnumTagMultiPayload();
          sub_1000F24EC(&qword_100ADF500);
          v115 = swift_allocObject();
          (*v133)(v115 + *(*v115 + 104), 1, 1, v144);
          *(v115 + *(*v115 + 112)) = v153;
          sub_100021CEC(v3, v115 + *(*v115 + 120), &qword_100ADA928);
          *(v108 + v107) = v115;
        }
      }

      v4 = *(v108 + v107);
      v24 = v171;
      if (!v4)
      {

        (*v131)(v7, 1, 1, v34);
        goto LABEL_100;
      }
    }

    sub_10025B3B4(v7);

    if ((*v159)(v7, 1, v34) == 1)
    {

LABEL_100:
      v35 = v167;
      v118 = v7;
      v119 = &qword_100ADA938;
      goto LABEL_101;
    }

    v4 = v157;
    (*v151)(v157, v7, v34);
    GenericMapAssetMetadata.visitsData.getter();
    v116 = v168;
    v117 = (*v162)(v13, 1, v168);
    v35 = v167;
    if (v117 == 1)
    {
      (*v150)(v4, v34);

      v118 = v13;
      v119 = &unk_100AEED20;
LABEL_101:
      sub_100004F84(v118, v119);
      continue;
    }

    (*v156)(v11, v13, v116);
    v120 = VisitAssetMetadata.placeName.getter();
    if (v121)
    {
      v122 = HIBYTE(v121) & 0xF;
      if ((v121 & 0x2000000000000000) == 0)
      {
        v122 = v120 & 0xFFFFFFFFFFFFLL;
      }

      if (v122)
      {
        sub_100286DEC(&v176, v120, v121);
      }
    }

    v4 = v11;
    v123 = VisitAssetMetadata.city.getter();
    if (v124)
    {
      v125 = HIBYTE(v124) & 0xF;
      if ((v124 & 0x2000000000000000) == 0)
      {
        v125 = v123 & 0xFFFFFFFFFFFFLL;
      }

      if (v125)
      {
        v4 = &v177;
        sub_100286DEC(&v176, v123, v124);
      }

      else
      {
      }

      v11 = v165;
      (*v175)(v165, v168);
    }

    else
    {

      (*v175)(v11, v168);
    }

    (*v150)(v157, v34);
  }

  while (v35 != v163);

  v126 = v177;
  v127 = v177[2];
  if (!v127)
  {
    goto LABEL_116;
  }

LABEL_113:
  v128 = sub_1003E745C(v127, 0);
  v129 = sub_1001C16E4(&v176, v128 + 4, v127, v126);
  result = sub_100014FF8();
  if (v129 == v127)
  {
    return v128;
  }

  __break(1u);
  return result;
}

id sub_10087CAF8()
{
  v1 = [v0 assets];
  if (!v1)
  {
    goto LABEL_5;
  }

  result = [v0 assets];
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = [result count];

  if (v4)
  {
    return 0;
  }

LABEL_5:
  v5 = sub_100879E68();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  return (v8 != 0);
}

uint64_t sub_10087CBA4()
{
  v0 = sub_1000F24EC(&qword_100AE4290);
  __chkstk_darwin(v0 - 8);
  v2 = v45 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v50 = v45 - v4;
  v5 = type metadata accessor for AssetType();
  v6 = *(v5 - 8);
  v7 = v6;
  __chkstk_darwin(v5);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v64 = v45 - v11;
  __chkstk_darwin(v12);
  v49 = v45 - v13;
  sub_1000F24EC(&qword_100ADAD48);
  v14 = *(v6 + 72);
  v15 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100941FF0;
  v46 = v15;
  v56 = v7;
  v17 = *(v7 + 104);
  v17(v16 + v15, enum case for AssetType.link(_:), v5);
  v17(v16 + v15 + v14, enum case for AssetType.genericMap(_:), v5);
  v17(v16 + v15 + 2 * v14, enum case for AssetType.visit(_:), v5);
  v17(v16 + v15 + 3 * v14, enum case for AssetType.placeholder(_:), v5);
  v17(v16 + v15 + 4 * v14, enum case for AssetType.streakEvent(_:), v5);
  v62 = v14;
  v17(v16 + v15 + 5 * v14, enum case for AssetType.unknown(_:), v5);
  v63 = sub_100495AE8(v16);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v18 = JournalEntryMO.assetsArrayUnsorted.getter();
  if (v18 >> 62)
  {
    goto LABEL_31;
  }

  v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v20 = v50;
  v45[1] = v18;
  if (v19)
  {
    v21 = 0;
    v57 = v18 & 0xFFFFFFFFFFFFFF8;
    v58 = v18 & 0xC000000000000001;
    v55 = v18 + 32;
    v22 = (v56 + 6);
    v61 = (v63 + 7);
    v59 = (v56 + 4);
    v60 = (v56 + 2);
    v23 = (v56 + 1);
    v51 = (v56 + 6);
    v52 = _swiftEmptyArrayStorage;
    v56 += 7;
    v47 = v19;
    v48 = v2;
    while (1)
    {
      while (1)
      {
        if (v58)
        {
          v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v21 >= *(v57 + 16))
          {
            goto LABEL_30;
          }

          v18 = *(v55 + 8 * v21);
        }

        v24 = v18;
        if (__OFADD__(v21++, 1))
        {
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          v44 = v18;
          v19 = _CocoaArrayWrapper.endIndex.getter();
          v18 = v44;
          goto LABEL_3;
        }

        JournalEntryAssetMO.type.getter();
        v26 = *v22;
        if ((*v22)(v2, 1, v5) != 1)
        {
          break;
        }

        sub_100004F84(v2, &qword_100AE4290);
        (*v56)(v20, 1, 1, v5);
LABEL_6:
        v18 = sub_100004F84(v20, &qword_100AE4290);
        if (v21 == v19)
        {
          goto LABEL_28;
        }
      }

      v27 = *v59;
      v53 = v26;
      v54 = v27;
      v27(v64, v2, v5);
      if (v63[2] && (v28 = v63, sub_10087D2F4(&qword_100ADFEE0, &type metadata accessor for AssetType), v29 = dispatch thunk of Hashable._rawHashValue(seed:)(), v30 = -1 << *(v28 + 32), v31 = v29 & ~v30, ((*&v61[(v31 >> 3) & 0xFFFFFFFFFFFFFF8] >> v31) & 1) != 0))
      {
        v32 = ~v30;
        v33 = *v60;
        while (1)
        {
          v33(v9, v63[6] + v31 * v62, v5);
          sub_10087D2F4(&qword_100ADC690, &type metadata accessor for AssetType);
          v34 = dispatch thunk of static Equatable.== infix(_:_:)();
          v35 = *v23;
          (*v23)(v9, v5);
          if (v34)
          {
            break;
          }

          v31 = (v31 + 1) & v32;
          if (((*&v61[(v31 >> 3) & 0xFFFFFFFFFFFFFF8] >> v31) & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        v35(v64, v5);
        v37 = 1;
        v20 = v50;
        v36 = v54;
      }

      else
      {
LABEL_17:

        v20 = v50;
        v36 = v54;
        v54(v50, v64, v5);
        v37 = 0;
      }

      (*v56)(v20, v37, 1, v5);
      v22 = v51;
      v38 = v53(v20, 1, v5);
      v19 = v47;
      v2 = v48;
      if (v38 == 1)
      {
        goto LABEL_6;
      }

      v36(v49, v20, v5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_1003E4D90(0, *(v52 + 2) + 1, 1, v52);
      }

      v40 = *(v52 + 2);
      v39 = *(v52 + 3);
      if (v40 >= v39 >> 1)
      {
        v52 = sub_1003E4D90(v39 > 1, v40 + 1, 1, v52);
      }

      v41 = v52;
      *(v52 + 2) = v40 + 1;
      v18 = (v36)(v41 + v46 + v40 * v62, v49, v5);
      v22 = v51;
      if (v21 == v19)
      {
        goto LABEL_28;
      }
    }
  }

  v52 = _swiftEmptyArrayStorage;
LABEL_28:

  v42 = sub_100890950(v52);

  return v42;
}

uint64_t sub_10087D2F4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10087D384()
{
  sub_10087D58C(319, &unk_100AF5078, type metadata accessor for StreakSummary, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_100280704(319, qword_100AD9860);
    if (v1 <= 0x3F)
    {
      sub_100851B44();
      if (v2 <= 0x3F)
      {
        sub_100280704(319, &qword_100ADB020);
        if (v3 <= 0x3F)
        {
          sub_10087D58C(319, &unk_100AF4730, &type metadata accessor for RedactionReasons, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            sub_10087D58C(319, &qword_100AF70F0, &type metadata accessor for Calendar, &type metadata accessor for Environment);
            if (v5 <= 0x3F)
            {
              sub_10087D58C(319, &qword_100AD9938, type metadata accessor for InsightsDataManager, &type metadata accessor for Environment);
              if (v6 <= 0x3F)
              {
                sub_1001E6300();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_10087D58C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10087D638()
{
  result = type metadata accessor for StreakSummary();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_10087D6F0()
{
  sub_1002825F0();
  AttributeDynamicLookup.subscript.getter();
  __break(1u);
}

uint64_t sub_10087D744@<X0>(_BYTE *a1@<X8>)
{
  sub_100520804();
  result = ContainerValues.subscript.getter();
  *a1 = v3;
  return result;
}

void sub_10087D8AC()
{
  sub_100544528();
  AttributeDynamicLookup.subscript.getter();
  __break(1u);
}

uint64_t sub_10087D8D4@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v43 = type metadata accessor for AccessibilityChildBehavior();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000F24EC(&qword_100AD0E18);
  __chkstk_darwin(v3 - 8);
  v5 = &v38 - v4;
  v39 = sub_1000F24EC(&qword_100AF5D58);
  v6 = *(v39 - 8);
  __chkstk_darwin(v39);
  v8 = &v38 - v7;
  v9 = sub_1000F24EC(&qword_100AF5D60);
  __chkstk_darwin(v9);
  v11 = &v38 - v10;
  v38 = sub_1000F24EC(&qword_100AF5D68);
  __chkstk_darwin(v38);
  v13 = &v38 - v12;
  v14 = sub_1000F24EC(&qword_100AF5D70);
  __chkstk_darwin(v14);
  v16 = &v38 - v15;
  *v5 = static HorizontalAlignment.leading.getter();
  *(v5 + 1) = 0x4020000000000000;
  v5[16] = 0;
  v17 = sub_1000F24EC(&qword_100AF5D78);
  sub_10087DDC4(v1, &v5[*(v17 + 44)]);
  if (*v1)
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v18)
    {
      v19 = 1;
    }

    else
    {
      v19 = 2;
    }
  }

  else
  {

    v19 = 1;
  }

  sub_100021CEC(v5, v8, &qword_100AD0E18);
  v20 = &v8[*(sub_1000F24EC(&qword_100AD0E20) + 36)];
  *v20 = v19;
  v20[1] = 1;
  KeyPath = swift_getKeyPath();
  (*(v6 + 32))(v11, v8, v39);
  v22 = &v11[*(v9 + 36)];
  *v22 = KeyPath;
  v22[8] = 1;
  v23 = sub_1008810C4();
  v24 = swift_getKeyPath();
  sub_100021CEC(v11, v13, &qword_100AF5D60);
  v25 = &v13[*(v38 + 36)];
  *v25 = v24;
  v25[8] = v23;
  v26 = swift_getKeyPath();
  v27 = static Alignment.center.getter();
  v29 = v28;
  sub_100881228(&v44);
  v30 = v44;
  v31 = v45;
  v32 = v46;
  v33 = v47;
  v44 = v27;
  v45 = v29;
  v46 = v30;
  v47 = v31;
  v49 = v32;
  v50 = v33;
  v51 = v48;
  v52 = 256;
  sub_1000F24EC(&qword_100AF5D80);
  sub_100884B9C();
  v34 = AnyView.init<A>(_:)();
  sub_100021CEC(v13, v16, &qword_100AF5D68);
  v35 = &v16[*(v14 + 36)];
  *v35 = v26;
  v35[1] = v34;
  v36 = v40;
  static AccessibilityChildBehavior.combine.getter();
  sub_100884C80();
  View.accessibilityElement(children:)();
  (*(v41 + 8))(v36, v43);
  return sub_100004F84(v16, &qword_100AF5D70);
}

uint64_t sub_10087DDC4@<X0>(unsigned __int8 *a1@<X0>, char *a2@<X8>)
{
  v99 = a2;
  v88 = sub_1000F24EC(&qword_100AF5DC0);
  __chkstk_darwin(v88);
  v90 = (&v79 - v3);
  v89 = sub_1000F24EC(&qword_100AF5DC8);
  __chkstk_darwin(v89);
  v84 = (&v79 - v4);
  v5 = sub_1000F24EC(&qword_100AF5DD0);
  __chkstk_darwin(v5 - 8);
  v98 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v97 = &v79 - v8;
  v83 = type metadata accessor for ColorResource();
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v81 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for AttributedString();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F24EC(&qword_100AF5DD8);
  v95 = *(v11 - 8);
  v96 = v11;
  __chkstk_darwin(v11);
  v94 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v101 = &v79 - v14;
  v80 = type metadata accessor for InsightsDataManager.Streaks(0);
  __chkstk_darwin(v80);
  v79 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for EnvironmentValues();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v85 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000F24EC(&qword_100AF3270);
  __chkstk_darwin(v17 - 8);
  v19 = &v79 - v18;
  v20 = type metadata accessor for StreakSummary();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v79 - v25;
  v27 = type metadata accessor for InsightsPreviousStreakView(0);
  sub_1000082B4(&a1[v27[5]], v19, &qword_100AF3270);
  v28 = *(v21 + 48);
  v29 = v28(v19, 1, v20);
  v100 = v26;
  if (v29 == 1)
  {
    v30 = &a1[v27[13]];
    v31 = *v30;
    v32 = v30[8];

    if ((v32 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v33 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v34 = v85;
      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v86 + 8))(v34, v87);
      v31 = v102;
    }

    swift_getKeyPath();
    v102 = v31;
    sub_1000408E8(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v35 = OBJC_IVAR____TtC7Journal19InsightsDataManager__streaks;
    swift_beginAccess();
    v36 = v31 + v35;
    v37 = v79;
    sub_100884F2C(v36, v79, type metadata accessor for InsightsDataManager.Streaks);

    v38 = 32;
    if (*a1)
    {
      v38 = 36;
    }

    sub_100884F2C(v37 + *(v80 + v38), v23, type metadata accessor for StreakSummary);
    sub_1008852C0(v37, type metadata accessor for InsightsDataManager.Streaks);
    v26 = v100;
    sub_1003D86F0(v23, v100);
    if (v28(v19, 1, v20) != 1)
    {
      sub_100004F84(v19, &qword_100AF3270);
    }
  }

  else
  {
    sub_1003D86F0(v19, v26);
  }

  v39 = v91;
  sub_10087EC8C();
  v40 = &a1[v27[11]];
  v41 = *v40;
  if (v40[8] == 1)
  {
    if ((v41 & 1) == 0)
    {
LABEL_11:
      v42 = static Color.accentColor.getter();
      goto LABEL_21;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v43 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v44 = v85;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000467F0(v41, 0);
    (*(v86 + 8))(v44, v87);
    if (v102 != 1)
    {
      goto LABEL_11;
    }
  }

  if (*a1)
  {
    if (qword_100AD0C98 != -1)
    {
      swift_once();
    }

    v45 = qword_100B314D8;
  }

  else
  {
    if (qword_100AD0CA0 != -1)
    {
      swift_once();
    }

    v45 = qword_100B314F0;
  }

  v46 = v83;
  v47 = sub_10000617C(v83, v45);
  (*(v82 + 16))(v81, v47, v46);
  v42 = Color.init(_:)();
LABEL_21:
  __chkstk_darwin(v42);
  *(&v79 - 4) = a1;
  *(&v79 - 3) = v26;
  *(&v79 - 2) = v48;
  __chkstk_darwin(v48);
  *(&v79 - 2) = a1;
  *(&v79 - 1) = v39;
  sub_1000F24EC(&qword_100AF5DE0);
  sub_1000F24EC(&qword_100AF5DE8);
  sub_100884FA8();
  sub_10088502C();
  LabeledContent<>.init(content:label:)();

  (*(v92 + 8))(v39, v93);
  if (sub_10087EF48())
  {
    v49 = static HorizontalAlignment.leading.getter();
    v50 = v84;
    *v84 = v49;
    *(v50 + 8) = 0x4028000000000000;
    *(v50 + 16) = 0;
    v51 = sub_1000F24EC(&qword_100AF5E68);
    sub_10087F178(a1, v26, (v50 + *(v51 + 44)));
    v52 = v97;
    if (qword_100ACFCF8 != -1)
    {
      swift_once();
    }

    *(v50 + *(v89 + 36)) = qword_100B2F880;
    sub_1000082B4(v50, v90, &qword_100AF5DC8);
    swift_storeEnumTagMultiPayload();

    sub_1000F24EC(&qword_100AF5E40);
    sub_100885320();
    sub_10000B58C(&qword_100AF5E60, &qword_100AF5E40);
    _ConditionalContent<>.init(storage:)();
    sub_100004F84(v50, &qword_100AF5DC8);
    v53 = sub_1000F24EC(&qword_100AF5E30);
    (*(*(v53 - 8) + 56))(v52, 0, 1, v53);
    v54 = v52;
  }

  else if (sub_1008809D8())
  {
    sub_100880BE0(&v102);
    v55 = v102;
    v56 = v103;
    v57 = v104;
    v58 = v105;
    v59 = v106;
    v60 = v107;
    LOBYTE(v102) = 0;
    v110 = v104;
    v109 = v108;
    sub_1000F24DC(v55, v103, v104);

    sub_1000F24DC(v55, v56, v57);

    sub_1000594D0(v55, v56, v57);

    v61 = v102;
    v62 = v110;
    v63 = v109;
    v64 = v90;
    *v90 = 0;
    *(v64 + 8) = v61;
    v64[2] = v55;
    v64[3] = v56;
    *(v64 + 32) = v62;
    v64[5] = v58;
    v64[6] = v59;
    v64[7] = v60;
    *(v64 + 64) = v63;
    swift_storeEnumTagMultiPayload();
    sub_1000F24EC(&qword_100AF5E40);
    sub_100885320();
    sub_10000B58C(&qword_100AF5E60, &qword_100AF5E40);
    v54 = v97;
    _ConditionalContent<>.init(storage:)();
    sub_1000594D0(v55, v56, v57);

    v65 = sub_1000F24EC(&qword_100AF5E30);
    (*(*(v65 - 8) + 56))(v54, 0, 1, v65);
  }

  else
  {
    v66 = sub_1000F24EC(&qword_100AF5E30);
    v54 = v97;
    (*(*(v66 - 8) + 56))(v97, 1, 1, v66);
  }

  v68 = v94;
  v67 = v95;
  v69 = *(v95 + 16);
  v70 = v101;
  v71 = v96;
  v69(v94, v101, v96);
  v72 = v54;
  v73 = v54;
  v74 = v98;
  sub_1000082B4(v72, v98, &qword_100AF5DD0);
  v75 = v99;
  v69(v99, v68, v71);
  v76 = sub_1000F24EC(&qword_100AF5E38);
  sub_1000082B4(v74, &v75[*(v76 + 48)], &qword_100AF5DD0);
  sub_100004F84(v73, &qword_100AF5DD0);
  v77 = *(v67 + 8);
  v77(v70, v71);
  sub_100004F84(v74, &qword_100AF5DD0);
  v77(v68, v71);
  return sub_1008852C0(v100, type metadata accessor for StreakSummary);
}

uint64_t sub_10087EC8C()
{
  v0 = type metadata accessor for AttributedString.FormattingOptions();
  __chkstk_darwin(v0);
  v1 = sub_1000F24EC(&qword_100AD1350);
  __chkstk_darwin(v1 - 8);
  v3 = v7 - v2;
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  v5 = type metadata accessor for Locale();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  swift_getKeyPath();
  v7[1] = _swiftEmptyArrayStorage;
  sub_1000408E8(&qword_100AD1358, &type metadata accessor for AttributedString.FormattingOptions);
  sub_1000F24EC(&qword_100AD1360);
  sub_10000B58C(&qword_100AD1368, &qword_100AD1360);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100280F98();
  return AttributedString.init<A>(localized:options:table:bundle:locale:comment:including:)();
}

BOOL sub_10087EF48()
{
  v1 = v0;
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = &v1[*(type metadata accessor for InsightsPreviousStreakView(0) + 32)];
  v7 = *v6;
  v8 = *(v6 + 1);
  v9 = v6[16];
  if (v6[17] == 1)
  {
  }

  else
  {

    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100280C78(v7, v8, v9, 0);
    (*(v3 + 8))(v5, v2);
    v7 = v16;
    v8 = v17;
    LOBYTE(v9) = v18;
  }

  v16 = v7;
  v17 = v8;
  v18 = v9;
  sub_1000F24EC(&qword_100ADB018);
  Binding.wrappedValue.getter();
  v11 = v15[7];

  if ((*v1 & 1) == 0)
  {

LABEL_9:
    if (v11 != 1)
    {
      return sub_1008810C4();
    }

    return 1;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
    goto LABEL_9;
  }

  if (v11 == 2)
  {
    return 1;
  }

  return sub_1008810C4();
}

uint64_t sub_10087F178@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v82 = a2;
  v85 = a3;
  v4 = type metadata accessor for AttributedString();
  v88 = *(v4 - 8);
  v89 = v4;
  __chkstk_darwin(v4);
  v87 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100AF5DD8);
  v90 = *(v6 - 8);
  v91 = v6;
  __chkstk_darwin(v6);
  v96 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v99 = &v76 - v9;
  v78 = type metadata accessor for InsightsDataManager.Streaks(0);
  __chkstk_darwin(v78);
  v77 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F24EC(&qword_100AF3270);
  __chkstk_darwin(v11 - 8);
  v13 = &v76 - v12;
  v92 = type metadata accessor for StreakSummary();
  v83 = *(v92 - 8);
  __chkstk_darwin(v92);
  v76 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v95 = &v76 - v16;
  v81 = sub_1000F24EC(&qword_100AF5E70);
  __chkstk_darwin(v81);
  v94 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v98 = &v76 - v19;
  v20 = type metadata accessor for ColorResource();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for EnvironmentValues();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v25 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1000F24EC(&qword_100AF5E78);
  __chkstk_darwin(v26 - 8);
  v86 = &v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v93 = &v76 - v29;
  __chkstk_darwin(v30);
  v84 = &v76 - v31;
  __chkstk_darwin(v32);
  v97 = &v76 - v33;
  v34 = type metadata accessor for InsightsPreviousStreakView(0);
  v35 = &a1[v34[11]];
  v36 = *v35;
  if (v35[8] == 1)
  {
    v37 = *a1;
    if ((v36 & 1) == 0)
    {
LABEL_3:
      v38 = static Color.accentColor.getter();
      if (v37)
      {
        v39 = 28;
      }

      else
      {
        v39 = 24;
      }

      v40 = v13;
      goto LABEL_15;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v41 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000467F0(v36, 0);
    (*(v79 + 8))(v25, v80);
    v37 = *a1;
    if (v100 != 1)
    {
      goto LABEL_3;
    }
  }

  if (v37)
  {
    v40 = v13;
    if (qword_100AD0C98 != -1)
    {
      swift_once();
    }

    v42 = sub_10000617C(v20, qword_100B314D8);
    (*(v21 + 16))(v23, v42, v20);
    v38 = Color.init(_:)();
    v39 = 28;
  }

  else
  {
    v40 = v13;
    if (qword_100AD0CA0 != -1)
    {
      swift_once();
    }

    v43 = sub_10000617C(v20, qword_100B314F0);
    (*(v21 + 16))(v23, v43, v20);
    v38 = Color.init(_:)();
    v39 = 24;
  }

LABEL_15:
  sub_10087FE70(v82, v38, v97);

  v44 = v98;
  Divider.init()();
  KeyPath = swift_getKeyPath();
  v46 = (v44 + *(v81 + 36));
  v47 = *(sub_1000F24EC(&qword_100AD20B0) + 28);
  static Material.ultraThin.getter();
  v48 = type metadata accessor for Material();
  (*(*(v48 - 8) + 56))(v46 + v47, 0, 1, v48);
  *v46 = KeyPath;
  sub_1000082B4(&a1[v34[6]], v40, &qword_100AF3270);
  v49 = *(v83 + 48);
  if (v49(v40, 1, v92) == 1)
  {
    v50 = &a1[v34[13]];
    v51 = *v50;
    v52 = v50[8];

    if ((v52 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v53 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v79 + 8))(v25, v80);
      v51 = v100;
    }

    swift_getKeyPath();
    v100 = v51;
    sub_1000408E8(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v54 = OBJC_IVAR____TtC7Journal19InsightsDataManager__streaks;
    swift_beginAccess();
    v55 = v77;
    sub_100884F2C(v51 + v54, v77, type metadata accessor for InsightsDataManager.Streaks);

    v56 = v76;
    sub_100884F2C(v55 + *(v78 + v39), v76, type metadata accessor for StreakSummary);
    sub_1008852C0(v55, type metadata accessor for InsightsDataManager.Streaks);
    v57 = v56;
    v58 = v95;
    sub_1003D86F0(v57, v95);
    if (v49(v40, 1, v92) != 1)
    {
      sub_100004F84(v40, &qword_100AF3270);
    }
  }

  else
  {
    v58 = v95;
    sub_1003D86F0(v40, v95);
  }

  v59 = v87;
  sub_1008802DC(v87);
  v60 = static Color.gray.getter();
  __chkstk_darwin(v60);
  *(&v76 - 4) = a1;
  *(&v76 - 3) = v58;
  *(&v76 - 2) = v61;
  __chkstk_darwin(v61);
  *(&v76 - 2) = a1;
  *(&v76 - 1) = v59;
  sub_1000F24EC(&qword_100AF5DE0);
  sub_1000F24EC(&qword_100AF5DE8);
  sub_100884FA8();
  sub_10088502C();
  LabeledContent<>.init(content:label:)();

  (*(v88 + 8))(v59, v89);
  v62 = static Color.gray.getter();
  v63 = v84;
  sub_10087FE70(v58, v62, v84);

  v64 = v93;
  sub_1000082B4(v97, v93, &qword_100AF5E78);
  v65 = v94;
  sub_1000082B4(v98, v94, &qword_100AF5E70);
  v67 = v90;
  v66 = v91;
  v68 = *(v90 + 16);
  v68(v96, v99, v91);
  v69 = v86;
  sub_1000082B4(v63, v86, &qword_100AF5E78);
  v70 = v85;
  *v85 = 0;
  *(v70 + 8) = 0;
  v71 = sub_1000F24EC(&qword_100AF5E80);
  sub_1000082B4(v64, v70 + v71[12], &qword_100AF5E78);
  sub_1000082B4(v65, v70 + v71[16], &qword_100AF5E70);
  v72 = v96;
  v68(v70 + v71[20], v96, v66);
  v73 = v70 + v71[24];
  *v73 = 0;
  v73[8] = 0;
  sub_1000082B4(v69, v70 + v71[28], &qword_100AF5E78);
  sub_100004F84(v63, &qword_100AF5E78);
  v74 = *(v67 + 8);
  v74(v99, v66);
  sub_100004F84(v98, &qword_100AF5E70);
  sub_100004F84(v97, &qword_100AF5E78);
  sub_1008852C0(v95, type metadata accessor for StreakSummary);
  sub_100004F84(v69, &qword_100AF5E78);
  v74(v72, v66);
  sub_100004F84(v94, &qword_100AF5E70);
  return sub_100004F84(v93, &qword_100AF5E78);
}

uint64_t sub_10087FE70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a2;
  v28 = a1;
  v5 = sub_1000F24EC(&qword_100AF5E88);
  __chkstk_darwin(v5);
  v7 = v25 - v6;
  v29 = type metadata accessor for InsightsPreviousStreakView.DurationChart(0);
  __chkstk_darwin(v29);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!sub_10087EF48())
  {
    goto LABEL_9;
  }

  v14 = v3 + *(type metadata accessor for InsightsPreviousStreakView(0) + 28);
  v15 = *v14;
  if (*(v14 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    v26 = a3;
    v17 = v16;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000467F0(v15, 0);
    v18 = *(v11 + 8);
    v18(v13, v10);
    if (v30 != 2)
    {

      v25[3] = static os_log_type_t.fault.getter();
      v19 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000467F0(v15, 0);
      v18(v13, v10);
      if (v30 != 3)
      {
        goto LABEL_9;
      }
    }

LABEL_8:
    sub_100884F2C(v28, v9, type metadata accessor for StreakSummary);
    *&v9[*(v29 + 20)] = v27;
    sub_100884F2C(v9, v7, type metadata accessor for InsightsPreviousStreakView.DurationChart);
    swift_storeEnumTagMultiPayload();

    sub_1000F24EC(&qword_100ADB590);
    sub_1000408E8(&qword_100AF5E90, type metadata accessor for InsightsPreviousStreakView.DurationChart);
    sub_100282538();
    _ConditionalContent<>.init(storage:)();
    return sub_1008852C0(v9, type metadata accessor for InsightsPreviousStreakView.DurationChart);
  }

  if (*v14 == 2 || *v14 == 3)
  {
    goto LABEL_8;
  }

LABEL_9:
  sub_100880BE0(&v30);
  v21 = v31;
  v22 = v33;
  v23 = v34;
  v24 = v32;
  *v7 = v30;
  v7[16] = v21;
  *(v7 + 24) = v24;
  *(v7 + 5) = v22;
  v7[48] = v23;
  swift_storeEnumTagMultiPayload();
  sub_1000F24EC(&qword_100ADB590);
  sub_1000408E8(&qword_100AF5E90, type metadata accessor for InsightsPreviousStreakView.DurationChart);
  sub_100282538();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_1008802DC@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v35 = type metadata accessor for AttributedString.FormattingOptions();
  __chkstk_darwin(v35);
  v38 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000F24EC(&qword_100AD1350);
  __chkstk_darwin(v3 - 8);
  v37 = &v31 - v4;
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v36 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for InsightsDataManager.Streaks(0);
  __chkstk_darwin(v33);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EnvironmentValues();
  v31 = *(v9 - 8);
  v32 = v9;
  __chkstk_darwin(v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StreakSummary();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v34 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v31 - v16;
  v18 = sub_1000F24EC(&qword_100AF3270);
  __chkstk_darwin(v18 - 8);
  v20 = &v31 - v19;
  v21 = type metadata accessor for InsightsPreviousStreakView(0);
  sub_1000082B4(&v1[*(v21 + 24)], v20, &qword_100AF3270);
  LODWORD(v13) = (*(v13 + 48))(v20, 1, v12);
  sub_100004F84(v20, &qword_100AF3270);
  if (v13 == 1)
  {
    v22 = &v1[*(v21 + 52)];
    v23 = *v22;
    v24 = v22[8];

    if ((v24 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v25 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v31 + 8))(v11, v32);
      v23 = v41;
    }

    swift_getKeyPath();
    v41 = v23;
    sub_1000408E8(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v26 = OBJC_IVAR____TtC7Journal19InsightsDataManager__streaks;
    swift_beginAccess();
    sub_100884F2C(v23 + v26, v8, type metadata accessor for InsightsDataManager.Streaks);

    v27 = v8;
    if (*v1 == 1)
    {
      v27 = &v8[*(v33 + 20)];
    }

    v28 = v34;
    sub_100884F2C(v27, v34, type metadata accessor for StreakSummary);
    sub_1008852C0(v8, type metadata accessor for InsightsDataManager.Streaks);
    sub_1003D86F0(v28, v17);
    sub_1008852C0(v17, type metadata accessor for StreakSummary);
  }

  String.LocalizationValue.init(stringLiteral:)();
  v29 = type metadata accessor for Locale();
  (*(*(v29 - 8) + 56))(v37, 1, 1, v29);
  swift_getKeyPath();
  v40 = _swiftEmptyArrayStorage;
  sub_1000408E8(&qword_100AD1358, &type metadata accessor for AttributedString.FormattingOptions);
  sub_1000F24EC(&qword_100AD1360);
  sub_10000B58C(&qword_100AD1368, &qword_100AD1360);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100280F98();
  return AttributedString.init<A>(localized:options:table:bundle:locale:comment:including:)();
}

BOOL sub_1008809D8()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for InsightsPreviousStreakView(0) + 28);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    v7 = *v5;
    if (v6 == 2)
    {
      return 1;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000467F0(v6, 0);
    v9 = *(v2 + 8);
    v9(v4, v1);
    if (v12[15] == 2)
    {
      return 1;
    }

    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000467F0(v6, 0);
    v9(v4, v1);
    v7 = v12[14];
  }

  return v7 == 3;
}

uint64_t sub_100880BE0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin(v3);
  v42 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date.IntervalFormatStyle();
  __chkstk_darwin(v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&qword_100AF5E98);
  __chkstk_darwin(v8 - 8);
  v10 = &v41 - v9;
  v11 = sub_1000F24EC(&qword_100AE0D70);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v41 - v16;
  sub_100889138(v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100004F84(v10, &qword_100AF5E98);
    v18 = 0;
    v19 = _swiftEmptyArrayStorage;
    v20 = 0xE100000000000000;
    v21 = 10;
  }

  else
  {
    sub_10072D9D8(v10, v17);
    sub_1000082B4(v17, v14, &qword_100AE0D70);
    sub_1008844EC(v17, v7);
    sub_1000408E8(&qword_100AE51B0, &type metadata accessor for Date.IntervalFormatStyle);
    sub_10000B58C(&qword_100AF5EA0, &qword_100AE0D70);
    v21 = Text.init<A>(_:format:)();
    v20 = v22;
    v18 = v23;
    v19 = v24;
    sub_100004F84(v17, &qword_100AE0D70);
  }

  v51 = static HierarchicalShapeStyle.secondary.getter();
  v49 = v19;
  v25 = Text.foregroundStyle<A>(_:)();
  v27 = v26;
  v29 = v28;
  static Font.caption.getter();
  v30 = Text.font(_:)();
  v46 = v31;
  v47 = v30;
  v45 = v32;
  v48 = v33;

  sub_1000594D0(v25, v27, v29 & 1);

  v34 = v1 + *(type metadata accessor for InsightsPreviousStreakView(0) + 36);
  v35 = *v34;
  if (*(v34 + 8) == 1)
  {
    sub_1000594D0(v21, v20, v18 & 1);
  }

  else
  {

    static os_log_type_t.fault.getter();
    v36 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v37 = v42;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000467F0(v35, 0);
    (*(v43 + 8))(v37, v44);
    sub_1000594D0(v21, v20, v18 & 1);

    LOBYTE(v35) = v50;
  }

  if (v35)
  {
    v38 = 0;
  }

  else
  {
    v38 = 4;
  }

  result = swift_getKeyPath();
  v40 = v46;
  *a1 = v47;
  *(a1 + 8) = v40;
  *(a1 + 16) = v45 & 1;
  *(a1 + 24) = v48;
  *(a1 + 32) = result;
  *(a1 + 40) = v38;
  *(a1 + 48) = v35 & 1;
  return result;
}

BOOL sub_1008810C4()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for InsightsPreviousStreakView(0) + 28);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    v7 = *v5;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000467F0(v6, 0);
    (*(v2 + 8))(v4, v1);
    v7 = v10[15];
  }

  return v7 == 3;
}

uint64_t sub_100881228@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ColorResource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100ADE660);
  __chkstk_darwin(v6);
  v8 = (&v16 - v7);
  if (qword_100AD0CC0 != -1)
  {
    swift_once();
  }

  v9 = sub_10000617C(v2, qword_100B31550);
  (*(v3 + 16))(v5, v9, v2);
  v10 = Color.init(_:)();
  v11 = *(v6 + 36);
  v12 = enum case for BlendMode.normal(_:);
  v13 = type metadata accessor for BlendMode();
  v14 = *(*(v13 - 8) + 104);
  v14(v8 + v11, v12, v13);
  v14(v8 + *(v6 + 40), enum case for BlendMode.plusLighter(_:), v13);
  *v8 = v10;
  sub_10000B58C(&unk_100ADE670, &qword_100ADE660);
  result = AnyShapeStyle.init<A>(_:)();
  *a1 = 0x403E000000000000;
  *(a1 + 8) = 1;
  *(a1 + 16) = result;
  *(a1 + 24) = 256;
  return result;
}

uint64_t sub_100881478@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v17 = a1;
  v15 = type metadata accessor for AccessibilityChildBehavior();
  v3 = *(v15 - 8);
  __chkstk_darwin(v15);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000F24EC(&qword_100AF5ED8);
  v6 = *(v16 - 8);
  __chkstk_darwin(v16);
  v8 = &v14 - v7;
  v9 = static HorizontalAlignment.center.getter();
  v21 = 0;
  sub_1008817A4(v2, v24);
  memcpy(v22, v24, 0x13CuLL);
  memcpy(v23, v24, 0x13CuLL);
  sub_1000082B4(v22, v19, &qword_100AF5EE0);
  sub_100004F84(v23, &qword_100AF5EE0);
  memcpy(&v20[7], v22, 0x13CuLL);
  v19[0] = v9;
  v19[1] = 0x4020000000000000;
  LOBYTE(v19[2]) = v21;
  memcpy(&v19[2] + 1, v20, 0x143uLL);
  static AccessibilityChildBehavior.ignore.getter();
  v10 = sub_1000F24EC(&qword_100AF5EE8);
  v11 = sub_10000B58C(&qword_100AF5EF0, &qword_100AF5EE8);
  View.accessibilityElement(children:)();
  (*(v3 + 8))(v5, v15);
  memcpy(v24, v19, 0x154uLL);
  sub_100004F84(v24, &qword_100AF5EE8);
  v18 = v14;
  sub_1000F24EC(&qword_100ADDAD0);
  v19[0] = v10;
  v19[1] = v11;
  swift_getOpaqueTypeConformance2();
  sub_1002F4F18();
  v12 = v16;
  View.accessibilityLabel<A>(content:)();
  return (*(v6 + 8))(v8, v12);
}

uint64_t sub_1008817A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v21 = a2;
  *&v20 = type metadata accessor for Font.Leading();
  v3 = *(v20 - 8);
  __chkstk_darwin(v20);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ColorResource();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a1 + *(type metadata accessor for StreakSummary() + 28));
  sub_1000F24EC(&qword_100AD3CA8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100940050;
  if (qword_100AD0C08 != -1)
  {
    swift_once();
  }

  v11 = sub_10000617C(v6, qword_100B31328);
  (*(v7 + 16))(v9, v11, v6);
  *(v10 + 32) = Color.init(_:)();
  *(v10 + 40) = *(a1 + *(type metadata accessor for InsightsPreviousStreakView.DurationChart(0) + 20));

  static UnitPoint.leading.getter();
  static UnitPoint.trailing.getter();
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v12 = static VerticalAlignment.firstTextBaseline.getter();
  LOBYTE(v23) = 1;
  sub_100881DF4(a1, &v52);
  v43 = *&v53[112];
  v44 = *&v53[128];
  v45 = *&v53[144];
  v46 = *&v53[160];
  v39 = *&v53[48];
  v40 = *&v53[64];
  v41 = *&v53[80];
  v42 = *&v53[96];
  v35 = v52;
  v36 = *v53;
  v37 = *&v53[16];
  v38 = *&v53[32];
  v47[8] = *&v53[112];
  v47[9] = *&v53[128];
  v47[10] = *&v53[144];
  v47[11] = *&v53[160];
  v47[4] = *&v53[48];
  v47[5] = *&v53[64];
  v47[6] = *&v53[80];
  v47[7] = *&v53[96];
  v47[0] = v52;
  v47[1] = *v53;
  v47[2] = *&v53[16];
  v47[3] = *&v53[32];
  sub_1000082B4(&v35, v50, &qword_100AF5EF8);
  sub_100004F84(v47, &qword_100AF5EF8);
  *&v31[135] = v43;
  *&v31[151] = v44;
  *&v31[167] = v45;
  *&v31[183] = v46;
  *&v31[71] = v39;
  *&v31[87] = v40;
  *&v31[103] = v41;
  *&v31[119] = v42;
  *&v31[7] = v35;
  *&v31[23] = v36;
  *&v31[39] = v37;
  *&v31[55] = v38;
  v13 = v23;
  static Font.footnote.getter();
  v14 = v20;
  (*(v3 + 104))(v5, enum case for Font.Leading.tight(_:), v20);
  v15 = Font.leading(_:)();

  (*(v3 + 8))(v5, v14);
  KeyPath = swift_getKeyPath();
  v17 = static HierarchicalShapeStyle.secondary.getter();
  v20 = xmmword_100948670;
  *(v48 + 8) = xmmword_100948670;
  v18 = v22;
  *&v48[0] = v22;
  *(&v48[1] + 1) = 0x4000000000000000;
  *&v49[1] = v34;
  v49[0] = v33;
  v48[2] = v32;
  WORD4(v49[1]) = 256;
  v30[2] = v32;
  v30[3] = v33;
  v30[0] = v48[0];
  v30[1] = v48[1];
  *(&v30[3] + 10) = *(v49 + 10);
  v50[0] = v12;
  v50[1] = 0;
  LOBYTE(v51[0]) = v13;
  *(v51 + 1) = *v31;
  *(&v51[4] + 1) = *&v31[64];
  *(&v51[3] + 1) = *&v31[48];
  *(&v51[2] + 1) = *&v31[32];
  *(&v51[1] + 1) = *&v31[16];
  *(&v51[8] + 1) = *&v31[128];
  *(&v51[7] + 1) = *&v31[112];
  *(&v51[6] + 1) = *&v31[96];
  *(&v51[5] + 1) = *&v31[80];
  *&v51[12] = *&v31[191];
  *(&v51[11] + 1) = *&v31[176];
  *(&v51[10] + 1) = *&v31[160];
  *(&v51[9] + 1) = *&v31[144];
  *(&v51[12] + 1) = KeyPath;
  *&v51[13] = v15;
  DWORD2(v51[13]) = v17;
  *(&v30[18] + 12) = *(&v51[12] + 12);
  v30[13] = v51[7];
  v30[14] = v51[8];
  v30[15] = v51[9];
  v30[16] = v51[10];
  v30[9] = v51[3];
  v30[10] = v51[4];
  v30[11] = v51[5];
  v30[12] = v51[6];
  v30[5] = v12;
  v30[6] = v51[0];
  v30[7] = v51[1];
  v30[8] = v51[2];
  v30[17] = v51[11];
  v30[18] = v51[12];
  memcpy(v21, v30, 0x13CuLL);
  *&v53[145] = *&v31[144];
  *&v53[161] = *&v31[160];
  *v54 = *&v31[176];
  *&v53[81] = *&v31[80];
  *&v53[97] = *&v31[96];
  *&v53[113] = *&v31[112];
  *&v53[129] = *&v31[128];
  *&v53[17] = *&v31[16];
  *&v53[33] = *&v31[32];
  *&v53[49] = *&v31[48];
  *&v53[65] = *&v31[64];
  v52 = v12;
  v53[0] = v13;
  *&v53[1] = *v31;
  *&v54[15] = *&v31[191];
  v55 = KeyPath;
  v56 = v15;
  v57 = v17;
  sub_1000082B4(v48, &v23, &qword_100AF5F00);
  sub_1000082B4(v50, &v23, &qword_100AF5F08);
  sub_100004F84(&v52, &qword_100AF5F08);
  v23 = v18;
  v24 = v20;
  v25 = 0x4000000000000000;
  v26 = v32;
  v27 = v33;
  v28 = v34;
  v29 = 256;
  return sub_100004F84(&v23, &qword_100AF5F00);
}

uint64_t sub_100881DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v4 - 8);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v48 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v52 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v48 - v14;
  v53 = a1;
  sub_1000082B4(a1, v9, &unk_100AD4790);
  v16 = *(v11 + 48);
  if (v16(v9, 1, v10) == 1)
  {
    sub_100004F84(v9, &unk_100AD4790);
    v62 = 0;
    v63 = 0;
    v57 = 0;
    v58 = 0;
    v55 = 0;
    v56 = 0;
    v54 = 0;
    v60 = 0;
    v61 = 0;
    v59 = 0;
  }

  else
  {
    (*(v11 + 32))(v15, v9, v10);
    v63 = static HorizontalAlignment.leading.getter();
    LOBYTE(v78[0]) = 1;
    sub_1008822D0(v15, &v79);
    v57 = v80;
    v58 = v79;
    v55 = v82;
    v56 = v81;
    v54 = v83;
    v61 = v85;
    v62 = v84;
    v59 = LOBYTE(v78[0]);
    v60 = v86;
    (*(v11 + 8))(v15, v10);
  }

  v17 = type metadata accessor for StreakSummary();
  sub_1000082B4(v53 + *(v17 + 20), v6, &unk_100AD4790);
  if (v16(v6, 1, v10) == 1)
  {
    sub_100004F84(v6, &unk_100AD4790);
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
  }

  else
  {
    v28 = v52;
    (*(v11 + 32))(v52, v6, v10);
    v53 = static HorizontalAlignment.trailing.getter();
    LOBYTE(v78[0]) = 1;
    sub_1008822D0(v28, &v79);
    v50 = v80;
    v51 = v79;
    v29 = v82;
    v49 = v81;
    v30 = v11;
    v32 = v83;
    v31 = v84;
    v33 = v85;
    v26 = v86;
    v27 = LOBYTE(v78[0]);
    (*(v30 + 8))(v28, v10);
    v25 = v33;
    v24 = v31;
    v23 = v32;
    v22 = v29;
    v21 = v49;
    v20 = v50;
    v19 = v51;
    v18 = v53;
  }

  v66[0] = v63;
  v66[1] = 0;
  v34 = v58;
  *&v67 = v59;
  *(&v67 + 1) = v58;
  v36 = v56;
  v35 = v57;
  *&v68 = v57;
  *(&v68 + 1) = v56;
  v37 = v54;
  v38 = v55;
  *&v69 = v55;
  *(&v69 + 1) = v54;
  *&v70 = v62;
  *(&v70 + 1) = v61;
  v71 = v60;
  v72[0] = v18;
  v65 = 1;
  v72[1] = 0;
  *&v73 = v27;
  *(&v73 + 1) = v19;
  *&v74 = v20;
  *(&v74 + 1) = v21;
  *&v75 = v22;
  *(&v75 + 1) = v23;
  *&v76 = v24;
  *(&v76 + 1) = v25;
  v77 = v26;
  *(&v64[1] + 7) = v73;
  *(v64 + 7) = v18;
  *(&v64[2] + 7) = v74;
  *(&v64[5] + 7) = v26;
  *(&v64[3] + 7) = v75;
  *(&v64[4] + 7) = v76;
  v39 = v67;
  *a2 = v63;
  *(a2 + 16) = v39;
  v40 = v68;
  v41 = v70;
  v42 = v71;
  *(a2 + 48) = v69;
  *(a2 + 64) = v41;
  *(a2 + 32) = v40;
  *(a2 + 80) = v42;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  v43 = v64[0];
  *(a2 + 113) = v64[1];
  *(a2 + 97) = v43;
  v44 = v64[2];
  v45 = v64[3];
  v46 = v64[4];
  *(a2 + 176) = *(&v64[4] + 15);
  *(a2 + 161) = v46;
  *(a2 + 145) = v45;
  *(a2 + 129) = v44;
  v78[0] = v18;
  v78[1] = 0;
  v78[2] = v27;
  v78[3] = v19;
  v78[4] = v20;
  v78[5] = v21;
  v78[6] = v22;
  v78[7] = v23;
  v78[8] = v24;
  v78[9] = v25;
  v78[10] = v26;
  sub_1000082B4(v66, &v79, &qword_100AF5F10);
  sub_1000082B4(v72, &v79, &qword_100AF5F10);
  sub_100004F84(v78, &qword_100AF5F10);
  v79 = v63;
  v80 = 0;
  v81 = v59;
  v82 = v34;
  v83 = v35;
  v84 = v36;
  v85 = v38;
  v86 = v37;
  v87 = v62;
  v88 = v61;
  v89 = v60;
  return sub_100004F84(&v79, &qword_100AF5F10);
}

uint64_t sub_1008822D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v52 = a1;
  v50 = a2;
  v2 = type metadata accessor for Date.FormatStyle.Symbol.Year();
  v48 = *(v2 - 8);
  v49 = v2;
  __chkstk_darwin(v2);
  v47 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Date.FormatStyle.Symbol.Day();
  v45 = *(v4 - 8);
  v46 = v4;
  __chkstk_darwin(v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for Date.FormatStyle();
  v11 = *(v51 - 8);
  __chkstk_darwin(v51);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v40 - v15;
  __chkstk_darwin(v17);
  v44 = type metadata accessor for Date();
  v18 = *(v44 - 8);
  v19 = __chkstk_darwin(v44);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(v18 + 16);
  v43(v21, v52, v19);
  static FormatStyle<>.dateTime.getter();
  static Date.FormatStyle.Symbol.Month.wide.getter();
  Date.FormatStyle.month(_:)();
  (*(v8 + 8))(v10, v7);
  v23 = v11 + 8;
  v22 = *(v11 + 8);
  v24 = v51;
  v22(v13, v51);
  v41 = v22;
  v42 = v23;
  static Date.FormatStyle.Symbol.Day.defaultDigits.getter();
  Date.FormatStyle.day(_:)();
  (*(v45 + 8))(v6, v46);
  v22(v16, v24);
  sub_1000408E8(&qword_100AD3CE8, &type metadata accessor for Date.FormatStyle);
  sub_1000408E8(&qword_100AD5BF0, &type metadata accessor for Date);
  v25 = Text.init<A>(_:format:)();
  v27 = v26;
  LODWORD(v46) = v28;
  v30 = v29;
  (v43)(v21, v52, v44);
  static FormatStyle<>.dateTime.getter();
  v31 = v47;
  static Date.FormatStyle.Symbol.Year.defaultDigits.getter();
  Date.FormatStyle.year(_:)();
  (*(v48 + 8))(v31, v49);
  v41(v16, v51);
  v32 = Text.init<A>(_:format:)();
  v34 = v33;
  v35 = v46 & 1;
  v53 = v46 & 1;
  v55 = v46 & 1;
  LOBYTE(v24) = v36 & 1;
  v54 = v36 & 1;
  v37 = v50;
  *v50 = v25;
  v37[1] = v27;
  *(v37 + 16) = v35;
  v37[3] = v30;
  v37[4] = v32;
  v37[5] = v33;
  *(v37 + 48) = v36 & 1;
  v37[7] = v38;
  sub_1000F24DC(v25, v27, v35);

  sub_1000F24DC(v32, v34, v24);

  sub_1000594D0(v32, v34, v24);

  sub_1000594D0(v25, v27, v53);
}

uint64_t sub_100882830@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Date.IntervalFormatStyle();
  __chkstk_darwin(v2);
  v3 = sub_1000F24EC(&qword_100AF5E98);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  v6 = sub_1000F24EC(&qword_100AE0D70);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  sub_100889138(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    result = sub_100004F84(v5, &qword_100AF5E98);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  else
  {
    sub_10072D9D8(v5, v12);
    sub_1000082B4(v12, v9, &qword_100AE0D70);
    static FormatStyle<>.interval.getter();
    sub_1000408E8(&qword_100AE51B0, &type metadata accessor for Date.IntervalFormatStyle);
    sub_10000B58C(&qword_100AF5EA0, &qword_100AE0D70);
    v14 = Text.init<A>(_:format:)();
    v15 = v18;
    v20 = v19;
    v17 = v21;
    result = sub_100004F84(v12, &qword_100AE0D70);
    v16 = v20 & 1;
  }

  *a1 = v14;
  a1[1] = v15;
  a1[2] = v16;
  a1[3] = v17;
  return result;
}

void sub_100882B08(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>, double a7@<D4>, double a8@<D5>, double a9@<D6>)
{
  v10 = a1 - 2;
  if (__OFSUB__(a1, 2))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  v17 = v10 & ~(v10 >> 63);
  if (v10 < 1)
  {
    v22 = 1;
  }

  else
  {
    v18 = (a1 - 1) * a9;
    v19 = v10 & ~(v10 >> 63);
    while (1)
    {
      v20 = v18 + v19 * a8 + a7 + a7;
      v28.origin.x = a3;
      v28.origin.y = a4;
      v28.size.width = a5;
      v28.size.height = a6;
      Width = CGRectGetWidth(v28);
      v22 = Width < v20;
      if (Width >= v20)
      {
        break;
      }

      v17 = v19 >> 1;
      v23 = v19 > 1;
      v19 >>= 1;
      if (!v23)
      {
        goto LABEL_9;
      }
    }

    v17 = v19;
  }

LABEL_9:
  v29.origin.x = a3;
  v29.origin.y = a4;
  v29.size.width = a5;
  v29.size.height = a6;
  CGRectGetWidth(v29);
  if (__OFADD__(v17, 1))
  {
    goto LABEL_15;
  }

  Path.init()();
  v30.origin.x = a3;
  v30.origin.y = a4;
  v30.size.width = a5;
  v30.size.height = a6;
  CGRectGetMinX(v30);
  v31.origin.x = a3;
  v31.origin.y = a4;
  v31.size.width = a5;
  v31.size.height = a6;
  CGRectGetMidY(v31);
  v32.origin.x = a3;
  v32.origin.y = a4;
  v32.size.width = a5;
  v32.size.height = a6;
  CGRectGetWidth(v32);
  Path.addRect(_:transform:)();
  v33.origin.x = a3;
  v33.origin.y = a4;
  v33.size.width = a5;
  v33.size.height = a6;
  CGRectGetMinX(v33);
  v34.origin.x = a3;
  v34.origin.y = a4;
  v34.size.width = a5;
  v34.size.height = a6;
  CGRectGetMidY(v34);
  Path.addEllipse(in:transform:)();
  if (!v22)
  {
    v24 = 0;
    do
    {
      v35.origin.x = a3;
      v35.origin.y = a4;
      v35.size.width = a5;
      v35.size.height = a6;
      CGRectGetMinX(v35);
      v36.origin.x = a3;
      v36.origin.y = a4;
      v36.size.width = a5;
      v36.size.height = a6;
      CGRectGetMidY(v36);
      Path.addEllipse(in:transform:)();
      ++v24;
    }

    while (v17 != v24);
  }

  v37.origin.x = a3;
  v37.origin.y = a4;
  v37.size.width = a5;
  v37.size.height = a6;
  CGRectGetMaxX(v37);
  v38.origin.x = a3;
  v38.origin.y = a4;
  v38.size.width = a5;
  v38.size.height = a6;
  CGRectGetMidY(v38);
  Path.addEllipse(in:transform:)();
  *a2 = v25;
  *(a2 + 16) = v26;
  *(a2 + 32) = v27;
}

double sub_100882E04@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_100882B08(*v5, v9, a2, a3, a4, a5, *(v5 + 8), *(v5 + 16), *(v5 + 24));
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v10;
  return result;
}

double sub_100882E5C(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 10.0;
  }

  return result;
}

void (*sub_100882E74(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return sub_100113D90;
}

uint64_t sub_100882F00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100885510();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100882F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100885510();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100882FC8(uint64_t a1)
{
  v2 = sub_100885510();

  return Shape.body.getter(a1, v2);
}

uint64_t sub_100883014@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a4;
  v35 = _s19DurationFormatStyleVMa(0);
  __chkstk_darwin(v35);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StreakSummary();
  __chkstk_darwin(v9 - 8);
  v32 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AccessibilityChildBehavior();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000F24EC(&qword_100AF5E00);
  __chkstk_darwin(v15);
  v17 = &v32 - v16;
  v18 = sub_1000F24EC(&qword_100AF5EB8);
  v19 = *(v18 - 8);
  v33 = v18;
  v34 = v19;
  __chkstk_darwin(v18);
  v21 = &v32 - v20;
  *v17 = static HorizontalAlignment.trailing.getter();
  *(v17 + 1) = 0x4008000000000000;
  v17[16] = 0;
  v22 = sub_1000F24EC(&qword_100AF5EC0);
  sub_100883464(a1, a2, &v17[*(v22 + 44)]);
  *&v17[*(sub_1000F24EC(&qword_100AF5E18) + 36)] = a3;
  KeyPath = swift_getKeyPath();
  v24 = &v17[*(v15 + 36)];
  *v24 = KeyPath;
  *(v24 + 1) = 1;
  v24[16] = 0;

  static AccessibilityChildBehavior.ignore.getter();
  v25 = sub_100885124();
  View.accessibilityElement(children:)();
  (*(v12 + 8))(v14, v11);
  sub_100004F84(v17, &qword_100AF5E00);
  sub_100884F2C(a2, v32, type metadata accessor for StreakSummary);
  LOBYTE(v11) = *a1;
  static Locale.autoupdatingCurrent.getter();
  *v8 = v11;
  sub_1000408E8(&qword_100AF5350, _s19DurationFormatStyleVMa);
  sub_1000408E8(&qword_100AF5358, type metadata accessor for StreakSummary);
  v26 = Text.init<A>(_:format:)();
  v28 = v27;
  LOBYTE(v8) = v29;
  v37 = v15;
  v38 = v25;
  swift_getOpaqueTypeConformance2();
  v30 = v33;
  View.accessibilityLabel(_:)();
  sub_1000594D0(v26, v28, v8 & 1);

  return (*(v34 + 8))(v21, v30);
}

uint64_t sub_100883464@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v95 = a3;
  v92 = type metadata accessor for ContentTransition();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v89 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100AE1670);
  __chkstk_darwin(v6 - 8);
  v8 = &v84 - v7;
  v90 = sub_1000F24EC(&qword_100AF5EC8);
  __chkstk_darwin(v90);
  v94 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v93 = &v84 - v11;
  v102 = sub_1000F24EC(&qword_100AF53D0);
  __chkstk_darwin(v102);
  v101 = &v84 - v12;
  v98 = _s19DurationFormatStyleV10AttributedVMa(0);
  __chkstk_darwin(v98);
  v100 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = _s19DurationFormatStyleVMa(0);
  __chkstk_darwin(v96);
  v97 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for StreakSummary();
  __chkstk_darwin(v15 - 8);
  v99 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for RedactionReasons();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v84 - v22;
  type metadata accessor for InsightsPreviousStreakView(0);
  v24 = a1;
  sub_1003D89F4(v23);
  sub_1000408E8(&qword_100AD2220, &type metadata accessor for RedactionReasons);
  dispatch thunk of SetAlgebra.init()();
  sub_1000408E8(&qword_100AF4798, &type metadata accessor for RedactionReasons);
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v25 = *(v18 + 8);
  v25(v20, v17);
  v25(v23, v17);
  v84 = a2;
  if (a1)
  {
    sub_100884F2C(a2, v99, type metadata accessor for StreakSummary);
    v26 = *v24;
    v27 = v97;
    v28 = *(v96 + 20);
    static Locale.autoupdatingCurrent.getter();
    *v27 = v26;
    v29 = *(v98 + 20);
    v30 = type metadata accessor for Locale();
    v31 = v100;
    (*(*(v30 - 8) + 32))(&v100[v29], &v27[v28], v30);
    *v31 = v26;
    v32 = v101;
    sub_100884F2C(v31, v101, _s19DurationFormatStyleV10AttributedVMa);
    v33 = v102;
    static Locale.autoupdatingCurrent.getter();
    sub_1008852C0(v31, _s19DurationFormatStyleV10AttributedVMa);
    *(v32 + *(v33 + 44)) = 0;
    sub_10000B58C(&qword_100AF5438, &qword_100AF53D0);
    sub_1000408E8(&qword_100AF5358, type metadata accessor for StreakSummary);
    v34 = Text.init<A>(_:format:)();
  }

  else
  {
    LocalizedStringKey.init(stringLiteral:)();
    v34 = Text.init(_:tableName:bundle:comment:)();
  }

  v85 = v36;
  v86 = v35;
  v87 = v34;
  v88 = v37;
  sub_1000F24EC(&qword_100AD7DC8);
  ScaledMetric.wrappedValue.getter();
  static Font.Weight.bold.getter();
  v38 = type metadata accessor for Font.Design();
  (*(*(v38 - 8) + 56))(v8, 1, 1, v38);
  static Font.system(size:weight:design:)();
  sub_100004F84(v8, &qword_100AE1670);
  v39 = Text.font(_:)();
  v41 = v40;
  v43 = v42;

  v44 = Text.tracking(_:)();
  v46 = v45;
  v48 = v47;
  sub_1000594D0(v39, v41, v43 & 1);

  v49 = v89;
  static ContentTransition.numericText(countsDown:)();
  v50 = Text.contentTransition(_:)();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  sub_1000594D0(v44, v46, v48 & 1);

  (*(v91 + 8))(v49, v92);
  v103 = v50;
  v104 = v52;
  v54 &= 1u;
  v105 = v54;
  v106 = v56;
  v57 = v93;
  View.unredacted()();
  sub_1000594D0(v50, v52, v54);

  LOBYTE(v44) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v58 = v57 + *(v90 + 36);
  *v58 = v44;
  *(v58 + 8) = v59;
  *(v58 + 16) = v60;
  *(v58 + 24) = v61;
  *(v58 + 32) = v62;
  *(v58 + 40) = 0;
  sub_100884F2C(v84, v99, type metadata accessor for StreakSummary);
  LOBYTE(v44) = *v24;
  v63 = v97;
  v64 = *(v96 + 20);
  static Locale.autoupdatingCurrent.getter();
  *v63 = v44;
  v65 = *(v98 + 20);
  v66 = type metadata accessor for Locale();
  v67 = v100;
  (*(*(v66 - 8) + 32))(&v100[v65], &v63[v64], v66);
  *v67 = v44;
  v68 = v101;
  sub_100884F2C(v67, v101, _s19DurationFormatStyleV10AttributedVMa);
  v69 = v102;
  static Locale.autoupdatingCurrent.getter();
  sub_1008852C0(v67, _s19DurationFormatStyleV10AttributedVMa);
  *(v68 + *(v69 + 44)) = 1;
  sub_10000B58C(&qword_100AF5438, &qword_100AF53D0);
  sub_1000408E8(&qword_100AF5358, type metadata accessor for StreakSummary);
  v70 = Text.init<A>(_:format:)();
  v72 = v71;
  LOBYTE(v63) = v73;
  static Font.footnote.getter();
  Font.bold()();

  v74 = Text.font(_:)();
  v76 = v75;
  LOBYTE(v46) = v77;
  v79 = v78;

  sub_1000594D0(v70, v72, v63 & 1);

  v80 = v94;
  sub_1000082B4(v57, v94, &qword_100AF5EC8);
  LOBYTE(v103) = v46 & 1;
  v81 = v95;
  sub_1000082B4(v80, v95, &qword_100AF5EC8);
  v82 = v81 + *(sub_1000F24EC(&qword_100AF5ED0) + 48);
  sub_1000F24DC(v74, v76, v46 & 1);

  sub_1000F24DC(v74, v76, v46 & 1);

  sub_1000594D0(v87, v86, v85 & 1);

  sub_1000594D0(v74, v76, v46 & 1);

  *v82 = v74;
  *(v82 + 8) = v76;
  *(v82 + 16) = v46 & 1;
  *(v82 + 24) = v79;
  sub_100004F84(v57, &qword_100AF5EC8);
  sub_1000594D0(v74, v76, v103);

  return sub_100004F84(v80, &qword_100AF5EC8);
}

uint64_t sub_100883F74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v42 = a2;
  v39[1] = a1;
  v47 = a3;
  v46 = type metadata accessor for Font.Leading();
  v41 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for AttributedString();
  __chkstk_darwin(v40);
  v4 = sub_1000F24EC(&qword_100ADB5C8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v39 - v6;
  v8 = sub_1000F24EC(&qword_100AE8C20);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v39 - v10;
  v12 = type metadata accessor for AttributeContainer();
  v43 = *(v12 - 8);
  v44 = v12;
  __chkstk_darwin(v12);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v39 - v16;
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_100544528();
  static AttributeContainer.subscript.getter();

  LOBYTE(v50) = !sub_10087EF48();
  AttributeContainer.Builder.callAsFunction(_:)();
  (*(v9 + 8))(v11, v8);
  v48 = swift_getKeyPath();
  swift_getKeyPath();
  sub_1002825F0();
  static AttributeContainer.subscript.getter();

  v50 = static Color.primary.getter();
  v39[0] = v14;
  AttributeContainer.Builder.callAsFunction(_:)();

  (*(v5 + 8))(v7, v4);
  sub_1000408E8(&qword_100AE8C30, &type metadata accessor for AttributedString);
  AttributedStringProtocol.replacingAttributes(_:with:)();
  v18 = Text.init(_:)();
  v20 = v19;
  LOBYTE(v5) = v21;
  LODWORD(v50) = static HierarchicalShapeStyle.tertiary.getter();
  v22 = Text.foregroundStyle<A>(_:)();
  v24 = v23;
  LOBYTE(v4) = v25;
  sub_1000594D0(v18, v20, v5 & 1);

  static Font.headline.getter();
  v26 = v41;
  v28 = v45;
  v27 = v46;
  (*(v41 + 104))(v45, enum case for Font.Leading.tight(_:), v46);
  Font.leading(_:)();

  (*(v26 + 8))(v28, v27);
  v29 = Text.font(_:)();
  v31 = v30;
  LOBYTE(v28) = v32;
  v34 = v33;

  sub_1000594D0(v22, v24, v4 & 1);

  v35 = v44;
  v36 = *(v43 + 8);
  v36(v39[0], v44);
  result = v36(v17, v35);
  v38 = v47;
  *v47 = v29;
  v38[1] = v31;
  *(v38 + 16) = v28 & 1;
  v38[3] = v34;
  *(v38 + 16) = 256;
  return result;
}

uint64_t sub_1008844EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a1;
  v62 = a2;
  v2 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v60 = *(v2 - 8);
  v61 = v2;
  __chkstk_darwin(v2);
  v59 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TimeZone();
  __chkstk_darwin(v4 - 8);
  v53 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v52 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&qword_100AD4280);
  __chkstk_darwin(v8 - 8);
  v51 = &v49 - v9;
  v10 = sub_1000F24EC(&qword_100AD4288);
  __chkstk_darwin(v10 - 8);
  v50 = &v49 - v11;
  v12 = type metadata accessor for Date.IntervalFormatStyle();
  v57 = *(v12 - 8);
  v58 = v12;
  __chkstk_darwin(v12);
  v49 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v55 = &v49 - v15;
  __chkstk_darwin(v16);
  v56 = &v49 - v17;
  v18 = type metadata accessor for Calendar.Component();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Date();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Calendar();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v49 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InsightsPreviousStreakView(0);
  sub_100048878(v29);
  static Date.now.getter();
  (*(v19 + 104))(v21, enum case for Calendar.Component.year(_:), v18);
  v30 = Calendar.compare(_:to:toGranularity:)();
  v31 = v21;
  v32 = v18;
  v34 = v50;
  v33 = v51;
  (*(v19 + 8))(v31, v32);
  (*(v23 + 8))(v25, v22);
  (*(v27 + 8))(v29, v26);
  v35 = type metadata accessor for Date.FormatStyle.DateStyle();
  (*(*(v35 - 8) + 56))(v34, 1, 1, v35);
  v36 = type metadata accessor for Date.FormatStyle.TimeStyle();
  (*(*(v36 - 8) + 56))(v33, 1, 1, v36);
  static Locale.autoupdatingCurrent.getter();
  static Calendar.autoupdatingCurrent.getter();
  static TimeZone.autoupdatingCurrent.getter();
  if (v30)
  {
    v37 = v49;
    Date.IntervalFormatStyle.init(date:time:locale:calendar:timeZone:)();
    v38 = v55;
    Date.IntervalFormatStyle.year()();
    v39 = v58;
    v40 = *(v57 + 8);
    v40(v37, v58);
    v41 = v59;
    static Date.FormatStyle.Symbol.Month.abbreviated.getter();
    v42 = v56;
    Date.IntervalFormatStyle.month(_:)();
    (*(v60 + 8))(v41, v61);
    v40(v38, v39);
    Date.IntervalFormatStyle.day()();
    return (v40)(v42, v39);
  }

  else
  {
    v44 = v55;
    Date.IntervalFormatStyle.init(date:time:locale:calendar:timeZone:)();
    v45 = v59;
    static Date.FormatStyle.Symbol.Month.abbreviated.getter();
    v46 = v56;
    Date.IntervalFormatStyle.month(_:)();
    (*(v60 + 8))(v45, v61);
    v47 = v58;
    v48 = *(v57 + 8);
    v48(v44, v58);
    Date.IntervalFormatStyle.day()();
    return (v48)(v46, v47);
  }
}

unint64_t sub_100884B9C()
{
  result = qword_100AF5D88;
  if (!qword_100AF5D88)
  {
    sub_1000F2A18(&qword_100AF5D80);
    sub_10000B58C(&qword_100AF5D90, &qword_100AF5D98);
    sub_10000B58C(&qword_100AD2610, &qword_100AD2618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5D88);
  }

  return result;
}

unint64_t sub_100884C80()
{
  result = qword_100AF5DA0;
  if (!qword_100AF5DA0)
  {
    sub_1000F2A18(&qword_100AF5D70);
    sub_100884D38();
    sub_10000B58C(&qword_100ADB138, &qword_100ADB140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5DA0);
  }

  return result;
}

unint64_t sub_100884D38()
{
  result = qword_100AF5DA8;
  if (!qword_100AF5DA8)
  {
    sub_1000F2A18(&qword_100AF5D68);
    sub_100884DF0();
    sub_10000B58C(&qword_100ADB128, &qword_100ADB130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5DA8);
  }

  return result;
}

unint64_t sub_100884DF0()
{
  result = qword_100AF5DB0;
  if (!qword_100AF5DB0)
  {
    sub_1000F2A18(&qword_100AF5D60);
    sub_1000F2A18(&qword_100AD0E18);
    sub_10000B58C(&qword_100AF5DB8, &qword_100AD0E18);
    sub_100280BD0();
    swift_getOpaqueTypeConformance2();
    sub_10000B58C(&qword_100AE5EC0, &qword_100AE5EC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5DB0);
  }

  return result;
}

uint64_t sub_100884F2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100884FA8()
{
  result = qword_100AF5DF0;
  if (!qword_100AF5DF0)
  {
    sub_1000F2A18(&qword_100AF5DE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5DF0);
  }

  return result;
}

unint64_t sub_10088502C()
{
  result = qword_100AF5DF8;
  if (!qword_100AF5DF8)
  {
    sub_1000F2A18(&qword_100AF5DE8);
    sub_1000F2A18(&qword_100AF5E00);
    sub_100885124();
    swift_getOpaqueTypeConformance2();
    sub_1000408E8(&qword_100AD2200, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5DF8);
  }

  return result;
}

unint64_t sub_100885124()
{
  result = qword_100AF5E08;
  if (!qword_100AF5E08)
  {
    sub_1000F2A18(&qword_100AF5E00);
    sub_1008851DC();
    sub_10000B58C(&qword_100ADB598, &qword_100ADB5A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5E08);
  }

  return result;
}

unint64_t sub_1008851DC()
{
  result = qword_100AF5E10;
  if (!qword_100AF5E10)
  {
    sub_1000F2A18(&qword_100AF5E18);
    sub_10000B58C(&qword_100AF5E20, &qword_100AF5E28);
    sub_10000B58C(&qword_100ADD970, &unk_100AE16B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5E10);
  }

  return result;
}

uint64_t sub_1008852C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100885320()
{
  result = qword_100AF5E48;
  if (!qword_100AF5E48)
  {
    sub_1000F2A18(&qword_100AF5DC8);
    sub_10000B58C(&qword_100AF5E50, &qword_100AF5E58);
    sub_10000B58C(&qword_100ADB248, &qword_100ADB250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5E48);
  }

  return result;
}

unint64_t sub_100885464()
{
  result = qword_100AF5F28;
  if (!qword_100AF5F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5F28);
  }

  return result;
}

unint64_t sub_1008854BC()
{
  result = qword_100AF5F30;
  if (!qword_100AF5F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5F30);
  }

  return result;
}

unint64_t sub_100885510()
{
  result = qword_100AF5F38;
  if (!qword_100AF5F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF5F38);
  }

  return result;
}

void sub_100885620()
{
  sub_10005C484();
  AttributeDynamicLookup.subscript.getter();
  __break(1u);
}

void sub_100885664(char a1)
{
  v2 = sub_1000F24EC(&qword_100AF4FD0);
  __chkstk_darwin(v2 - 8);
  v4 = &v27 - v3;
  v5 = type metadata accessor for UIButton.Configuration.Size();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v10 = __chkstk_darwin(v9);
  (*(v12 + 104))(&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for UIButton.Configuration.CornerStyle.capsule(_:), v10);
  UIButton.Configuration.cornerStyle.setter();
  v13 = objc_opt_self();
  if (a1)
  {
    v14 = [v13 preferredFontForTextStyle:UIFontTextStyleHeadline];
    (*(v6 + 104))(v8, enum case for UIButton.Configuration.Size.medium(_:), v5);
    UIButton.Configuration.buttonSize.setter();
    v15 = [objc_opt_self() configurationWithFont:v14 scale:2];
    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
    *(swift_allocObject() + 16) = v14;
    v16 = v14;
    UIConfigurationTextAttributesTransformer.init(_:)();
    v17 = type metadata accessor for UIConfigurationTextAttributesTransformer();
    (*(*(v17 - 8) + 56))(v4, 0, 1, v17);
    UIButton.Configuration.titleTextAttributesTransformer.setter();
  }

  else
  {
    v18 = v13;
    v19 = [v13 preferredFontForTextStyle:UIFontTextStyleCallout];
    v20 = [v19 fontDescriptor];
    v21 = [v19 fontDescriptor];
    v22 = [v21 symbolicTraits];

    v23 = [v20 fontDescriptorWithSymbolicTraits:v22 | 2];
    if (v23)
    {
      v24 = [v18 fontWithDescriptor:v23 size:0.0];

      v19 = v24;
    }

    (*(v6 + 104))(v8, enum case for UIButton.Configuration.Size.small(_:), v5);
    UIButton.Configuration.buttonSize.setter();
    v25 = [objc_opt_self() configurationWithFont:v19 scale:2];
    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
    *(swift_allocObject() + 16) = v19;
    v16 = v19;
    UIConfigurationTextAttributesTransformer.init(_:)();
    v26 = type metadata accessor for UIConfigurationTextAttributesTransformer();
    (*(*(v26 - 8) + 56))(v4, 0, 1, v26);
    UIButton.Configuration.titleTextAttributesTransformer.setter();
  }

  UIButton.Configuration.contentInsets.setter();
}

uint64_t sub_100885AF0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000F24EC(&qword_100AEABE0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v8 - v5;
  v8[0] = swift_getKeyPath();
  swift_getKeyPath();
  sub_10005C484();
  AttributeContainer.subscript.getter();

  v8[1] = a2;
  AttributeContainer.Builder.callAsFunction(_:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100885C48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  type metadata accessor for MainActor();
  swift_unknownObjectRetain();
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = v3;
  sub_1003E9628(0, 0, v8, &unk_100970168, v11);
}

uint64_t sub_100885DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = type metadata accessor for MainActor();
  v6[3] = static MainActor.shared.getter();
  v11 = (*(a6 + 96) + **(a6 + 96));
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_100885EF4;

  return v11(a5, a6);
}

uint64_t sub_100885EF4()
{
  *(*v1 + 40) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_100886050;
  }

  else
  {
    v4 = sub_1001F0E40;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100886050()
{

  if (qword_100AD0268 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000617C(v1, qword_100B301D8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Error stopping recording: %@", v4, 0xCu);
    sub_10012B714(v5);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1008861EC(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032ECC;

  return sub_100885DB4(a1, v6, v7, v8, v4, v5);
}

uint64_t sub_1008862B4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x796C6B656577;
  }

  else
  {
    v3 = 0x796C696164;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x796C6B656577;
  }

  else
  {
    v5 = 0x796C696164;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100886354()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1008863D0()
{
  String.hash(into:)();
}

Swift::Int sub_100886438()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1008864B0@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100A5B4C8, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_100886510(uint64_t *a1@<X8>)
{
  v2 = 0x796C696164;
  if (*v1)
  {
    v2 = 0x796C6B656577;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void sub_100886710()
{
  v1 = objc_opt_self();
  v2 = [v1 tertiarySystemBackgroundColor];
  [v0 setBackgroundColor:v2];

  v3 = *&v0[OBJC_IVAR____TtC7Journal17IndexingAlertView_bodyLabel];
  v4 = [objc_opt_self() mainBundle];
  v25._object = 0x800000010090CB00;
  v5._countAndFlagsBits = 0xD000000000000068;
  v5._object = 0x80000001008FA560;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v25._countAndFlagsBits = 0xD00000000000001BLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v25);

  v7 = String._bridgeToObjectiveC()();

  [v3 setText:v7];

  if (qword_100AD03E0 != -1)
  {
    swift_once();
  }

  [v3 setFont:qword_100B303D8];
  v8 = [v1 secondaryLabelColor];
  [v3 setTextColor:v8];

  [v3 setTextAlignment:1];
  [v3 setNumberOfLines:0];
  [v3 setAdjustsFontForContentSizeCategory:1];
  [v0 addSubview:v3];
  v9 = [v3 superview];
  if (v9)
  {
    v10 = v9;
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [v3 leadingAnchor];
    v12 = [v10 leadingAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];

    [v13 setConstant:20.0];
    [v13 setActive:1];
  }

  v14 = [v3 superview];
  if (v14)
  {
    v15 = v14;
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = [v3 trailingAnchor];
    v17 = [v15 trailingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];

    [v18 setConstant:-20.0];
    [v18 setActive:1];
  }

  v19 = [v3 superview];
  if (v19)
  {
    v23 = v19;
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = [v3 topAnchor];
    v21 = [v23 topAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];

    [v22 setConstant:16.0];
    [v22 setActive:1];
  }
}

id sub_100886B94()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IndexingAlertView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100886C0C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 traitCollection];
  v5 = [v4 userInterfaceIdiom];

  v6 = [a1 traitCollection];
  v7 = [v6 horizontalSizeClass];

  result = swift_unknownObjectRelease();
  if (v5 == 5)
  {
    v9 = xmmword_100970290;
    v10 = xmmword_1009702A0;
    v11 = 12.0;
  }

  else
  {
    if (v7 == 1)
    {
      v12 = 50.0;
    }

    else
    {
      v12 = 130.0;
    }

    v13 = vdup_n_s32(v7 == 1);
    v14.i64[0] = v13.u32[0];
    v14.i64[1] = v13.u32[1];
    __asm { FMOV            V3.2D, #10.0 }

    v20 = &qword_10094BDC8;
    v10 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v14, 0x3FuLL)), _Q3, xmmword_1009702B0);
    v9 = vld1q_dup_f64(v20);
    v9.f64[0] = v12;
    v11 = 0.0;
  }

  *a2 = v11;
  *(a2 + 8) = xmmword_100940700;
  *(a2 + 24) = 0;
  *(a2 + 32) = v10;
  *(a2 + 48) = v9;
  return result;
}

double sub_100886D2C@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_100886DAC(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static UIView.Invalidating.subscript.setter();
}

id sub_100886E4C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_fullScreenMapCellDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_multiPinMapAsset] = 0;
  *&v4[OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_journalEntry] = 0;
  v4[OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_entryIsDeletable] = 0;
  v10 = OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_mapView;
  type metadata accessor for MapAssetView();
  *&v5[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v5[OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_currentSelectedAnnotation] = 0;
  v11 = OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_locationList;
  v12 = objc_allocWithZone(type metadata accessor for LocationListCollectionView());
  *&v5[v11] = sub_100357518(1);
  v5[OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_isCompactLayout] = 1;
  v5[OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_prefersMapFocused] = 0;
  v15.receiver = v5;
  v15.super_class = type metadata accessor for FullScreenMultiPinMapCollectionViewCell();
  v13 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  sub_100886FB4();

  return v13;
}

void sub_100886FB4()
{
  v1 = type metadata accessor for _Glass._GlassVariant();
  __chkstk_darwin(v1 - 8);
  v2 = *&v0[OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_mapView];
  *&v2[OBJC_IVAR____TtC7Journal12MapAssetView_delegate + 8] = &off_100A83A08;
  swift_unknownObjectWeakAssign();
  v3 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"handleMapTap"];
  [v2 addGestureRecognizer:v3];

  v4 = *&v0[OBJC_IVAR____TtC7Journal33FullScreenAssetCollectionViewCell_maskedContentView];
  [v4 addSubview:v2];
  v5 = *&v0[OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_locationList];
  static _Glass._GlassVariant.regular.getter();
  v8[3] = type metadata accessor for _Glass();
  v8[4] = &protocol witness table for _Glass;
  sub_10001A770(v8);
  _Glass.init(_:smoothness:)();
  UIView._background.setter();
  [v5 setClipsToBounds:1];
  [v4 addSubview:v5];
  v6 = [v0 traitCollection];
  v7 = [v6 horizontalSizeClass];

  if (v7 == 1)
  {
    sub_100887180();
  }

  else
  {
    sub_1008874E8();
  }
}

void sub_100887180()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_locationList);
  v3 = [v2 layer];
  [v3 setCornerRadius:8.0];

  sub_100013178(0.0);

  v4 = [v2 superview];
  v5 = &selRef_setSuggestedName_;
  if (v4)
  {
    v6 = v4;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [v2 leadingAnchor];
    v8 = [v6 leadingAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];

    v5 = &selRef_setSuggestedName_;
    [v9 setConstant:10.0];
    [v9 setActive:1];
  }

  v10 = [v2 superview];
  if (v10)
  {
    v11 = v10;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [v2 trailingAnchor];
    v13 = [v11 trailingAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];

    [v14 setConstant:-10.0];
    [v14 v5[263]];
  }

  v15 = [v2 heightAnchor];
  v16 = [v15 constraintGreaterThanOrEqualToConstant:1.0];

  [v16 v5[263]];
  v17 = [v2 superview];
  if (v17)
  {
    v18 = v17;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = [v2 topAnchor];
    v20 = [v18 topAnchor];
    v21 = [v19 constraintGreaterThanOrEqualToAnchor:v20];

    [v21 setConstant:16.0];
    [v21 v5[263]];
  }

  *(v1 + OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_isCompactLayout) = 1;
}

void sub_1008874E8()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_locationList);
  v3 = [v2 layer];
  if (qword_100AD0A18 != -1)
  {
    swift_once();
  }

  v25[0] = xmmword_100B30F28;
  v25[1] = *&qword_100B30F38;
  v25[2] = xmmword_100B30F48;
  v25[3] = *&qword_100B30F58;
  [v3 setCornerRadii:v25];

  sub_100013178(0.0);

  v4 = [v2 superview];
  if (v4)
  {
    v5 = v4;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [v2 leadingAnchor];
    v7 = [v5 leadingAnchor];
    v8 = [v6 constraintEqualToAnchor:v7];

    [v8 setConstant:16.0];
    if (v8)
    {
      [v8 setActive:1];

      LODWORD(v9) = 1132068864;
      [v8 setPriority:v9];
      v5 = v8;
    }
  }

  v10 = [v2 superview];
  if (v10)
  {
    v11 = v10;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [v2 trailingAnchor];
    v13 = [v11 trailingAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];

    [v14 setConstant:-16.0];
    [v14 setActive:1];
  }

  v15 = [v2 heightAnchor];
  v16 = [v15 constraintGreaterThanOrEqualToConstant:1.0];

  [v16 setActive:1];
  v17 = [v2 superview];
  if (v17)
  {
    v18 = v17;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = [v2 topAnchor];
    v20 = [v18 topAnchor];
    v21 = [v19 constraintGreaterThanOrEqualToAnchor:v20];

    [v21 setConstant:0.0];
    [v21 setActive:1];
  }

  v22 = [v2 widthAnchor];
  v23 = [*(v1 + OBJC_IVAR____TtC7Journal33FullScreenAssetCollectionViewCell_maskedContentView) widthAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 multiplier:0.5];

  [v24 setActive:1];
  *(v1 + OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_isCompactLayout) = 0;
}

id sub_100887908()
{
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  if (v2 == 2)
  {
    v3 = 3.0;
  }

  else
  {
    v3 = 7.0;
  }

  if (v2 == 2)
  {
    v4 = 4.0;
  }

  else
  {
    v4 = 11.0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v12 = v3;
  v13 = v4;
  v5 = v0;
  static UIView.Invalidating.subscript.setter();
  if ([*&v5[OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_mapView] isDescendantOfView:v5])
  {
    v6 = [v5 traitCollection];
    v7 = [v6 horizontalSizeClass];

    if (v7 == 1 && (v5[OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_isCompactLayout] & 1) == 0)
    {
      sub_1000746FC();
      sub_1000746FC();
      sub_100887180();
    }

    else
    {
      v8 = [v5 traitCollection];
      v9 = [v8 horizontalSizeClass];

      if (v9 != 1 && v5[OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_isCompactLayout] == 1)
      {
        sub_1000746FC();
        sub_1000746FC();
        sub_1008874E8();
      }
    }
  }

  v11.receiver = v5;
  v11.super_class = type metadata accessor for FullScreenMultiPinMapCollectionViewCell();
  return objc_msgSendSuper2(&v11, "updateConstraints");
}

void sub_100887B18()
{
  v1 = type metadata accessor for IndexPath();
  v33 = *(v1 - 8);
  *&v2 = __chkstk_darwin(v1).n128_u64[0];
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(v0 + OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_mapView) + OBJC_IVAR____TtC7Journal12MapAssetView_mapView);
  if (!v5)
  {
LABEL_14:
    v17 = *(v0 + OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_locationList);
    v18 = [v17 indexPathsForSelectedItems];
    if (v18)
    {
      v19 = v18;
      v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v21 = v20;
      v22 = *(v20 + 16);
      if (v22)
      {
        v23 = OBJC_IVAR____TtC7Journal26LocationListCollectionView_currentSelectedAnnotation;
        v24 = v33 + 16;
        v33 = *(v33 + 16);
        v25 = *(v24 + 64);
        v31 = v21;
        v26 = v21 + ((v25 + 32) & ~v25);
        v27 = *(v24 + 56);
        do
        {
          (v33)(v4, v26, v1);
          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          (*(v24 - 8))(v4, v1);
          [v17 deselectItemAtIndexPath:isa animated:0];

          v29 = *&v17[v23];
          *&v17[v23] = 0;

          v26 += v27;
          --v22;
        }

        while (v22);
      }

      else
      {
      }
    }

    return;
  }

  v6 = *(v0 + OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_mapView);
  v7 = OBJC_IVAR____TtC7Journal12MapAssetView_mapView;
  v31 = v1;
  v8 = [v5 selectedAnnotations];
  sub_1000F24EC(&unk_100AD91C0);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v32 = v4;
  if (v9 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (v10)
    {
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
LABEL_13:

    v1 = v31;
    v4 = v32;
    goto LABEL_14;
  }

LABEL_4:
  if (v10 >= 1)
  {
    v11 = 0;
    v12 = OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_currentSelectedAnnotation;
    while ((v9 & 0xC000000000000001) == 0)
    {
      v14 = *(v9 + 8 * v11 + 32);
      swift_unknownObjectRetain();
      v15 = *(v6 + v7);
      if (v15)
      {
        goto LABEL_11;
      }

LABEL_6:
      ++v11;
      swift_unknownObjectRelease();
      v13 = *(v0 + v12);
      *(v0 + v12) = 0;

      if (v10 == v11)
      {
        goto LABEL_13;
      }
    }

    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v15 = *(v6 + v7);
    if (!v15)
    {
      goto LABEL_6;
    }

LABEL_11:
    v16 = v15;
    [v16 deselectAnnotation:v14 animated:0];

    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_100888028(void *a1)
{
  if (([a1 focusHeading] & 0xFFFFFFFFFFFFFEEFLL) != 0 || !objc_msgSend(a1, "previouslyFocusedItem"))
  {
    return 1;
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v3;
  if (![v3 isDescendantOfView:v1])
  {
    goto LABEL_9;
  }

  if ([a1 nextFocusedItem])
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    v6 = v5;
    if (v5)
    {
      if ([v5 isDescendantOfView:v1])
      {
        swift_unknownObjectRelease();
LABEL_9:
        swift_unknownObjectRelease();
        return 1;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v6 = 0;
  }

  v8 = OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_prefersMapFocused;
  if ((v4 == v1) == v1[OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_prefersMapFocused])
  {
    swift_unknownObjectRelease();

    v1[v8] = 0;
    return 1;
  }

  v1[OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_prefersMapFocused] = v4 == v1;
  [v1 setNeedsFocusUpdate];
  swift_unknownObjectRelease();

  return 0;
}

void sub_1008881F8()
{
  sub_10035FB00(v0 + OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_fullScreenMapCellDelegate);

  v1 = *(v0 + OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_locationList);
}

id sub_100888278()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FullScreenMultiPinMapCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FullScreenMultiPinMapCollectionViewCell()
{
  result = qword_100AF5FC0;
  if (!qword_100AF5FC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_100888400()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_mapView);
  v2 = v1;
  return v1;
}

void *sub_100888434()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_multiPinMapAsset);
  v2 = v1;
  return v1;
}

void sub_100888468(void *a1)
{
  v3 = type metadata accessor for MultiPinMapAssetMetadata();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&unk_100AD5B30);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = *(v1 + OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_multiPinMapAsset);
  if (v10 && *(v10 + OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata))
  {
    v11 = v1;

    sub_1000768B4(v9);

    if ((*(v4 + 48))(v9, 1, v3))
    {
      sub_1004D1274(v9);
    }

    else
    {
      (*(v4 + 16))(v6, v9, v3);
      sub_1004D1274(v9);
      v12 = MultiPinMapAssetMetadata.visitsData.getter();
      (*(v4 + 8))(v6, v3);
      if (v12)
      {
        if (*(v12 + 16))
        {
          sub_10032C2F4(a1, v12);
          v14 = v13;
          v16 = v15;
          v18 = v17;
          v20 = v19;

          v21 = *(*(v11 + OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_mapView) + OBJC_IVAR____TtC7Journal12MapAssetView_mapView);
          if (v21)
          {
            [v21 setRegion:1 animated:{v14, v16, v18, v20}];
          }
        }

        else
        {
        }
      }
    }
  }
}

void sub_1008886C0(void *a1)
{
  if ([a1 annotation])
  {
    type metadata accessor for StyledMKPointAnnotation();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = *(v1 + OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_currentSelectedAnnotation);
      *(v1 + OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_currentSelectedAnnotation) = v3;
      v5 = v3;
      swift_unknownObjectRetain_n();

      v6 = *(v1 + OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_locationList);
      v8 = *(v6 + OBJC_IVAR____TtC7Journal26LocationListCollectionView_currentSelectedAnnotation);
      *(v6 + OBJC_IVAR____TtC7Journal26LocationListCollectionView_currentSelectedAnnotation) = v5;
      swift_unknownObjectRetain();
      sub_100357110(v8);
      swift_unknownObjectRelease_n();

      return;
    }

    swift_unknownObjectRelease();
  }

  if ([a1 annotation])
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      sub_100888468(v7);
    }

    swift_unknownObjectRelease();
  }
}

id sub_10088881C()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = __chkstk_darwin(v5).n128_u64[0];
  v8 = &v14 - v7;
  v9 = *(v0 + OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_locationList);
  result = [v9 indexPathsForSelectedItems];
  if (result)
  {
    v11 = result;
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v12 + 16))
    {
      (*(v2 + 16))(v4, v12 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v1);

      (*(v2 + 32))(v8, v4, v1);
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v9 deselectItemAtIndexPath:isa animated:1];

      return (*(v2 + 8))(v8, v1);
    }

    else
    {
    }
  }

  return result;
}

void sub_1008889F4()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_fullScreenMapCellDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_multiPinMapAsset) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_journalEntry) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_entryIsDeletable) = 0;
  v2 = OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_mapView;
  type metadata accessor for MapAssetView();
  *(v1 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_currentSelectedAnnotation) = 0;
  v3 = OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_locationList;
  v4 = objc_allocWithZone(type metadata accessor for LocationListCollectionView());
  *(v1 + v3) = sub_100357518(1);
  *(v1 + OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_isCompactLayout) = 1;
  *(v1 + OBJC_IVAR____TtC7Journal39FullScreenMultiPinMapCollectionViewCell_prefersMapFocused) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t _s14HostControllerCMa_0()
{
  result = qword_100AF5FD0;
  if (!qword_100AF5FD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100888B98()
{
  _s14HostControllerCMa_0();
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_100888BD8()
{
  v2.receiver = v0;
  v2.super_class = _s14HostControllerCMa_0();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100888C40(uint64_t a1)
{
  v2 = v1;
  v43 = a1;
  v41 = sub_1000F24EC(&qword_100AD2680);
  v3 = __chkstk_darwin(v41);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v40 = &v35 - v6;
  v39 = sub_1000F24EC(&qword_100AE0D70);
  __chkstk_darwin(v39);
  v42 = &v35 - v7;
  v8 = sub_1000F24EC(&unk_100AD4790);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v35 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v44 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v35 - v18;
  sub_1000082B4(v2, v13, &unk_100AD4790);
  v20 = *(v15 + 48);
  if (v20(v13, 1, v14) == 1)
  {
    v21 = v13;
LABEL_5:
    sub_100004F84(v21, &unk_100AD4790);
    v25 = 0;
    return v25 & 1;
  }

  v22 = v13;
  v23 = *(v15 + 32);
  v23(v19, v22, v14);
  v24 = type metadata accessor for StreakSummary();
  sub_1000082B4(v2 + *(v24 + 24), v11, &unk_100AD4790);
  if (v20(v11, 1, v14) == 1)
  {
    (*(v15 + 8))(v19, v14);
    v21 = v11;
    goto LABEL_5;
  }

  v26 = v44;
  v23(v44, v11, v14);
  v27 = sub_100041A68(&qword_100AD2698);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v37 = v23;
    v38 = v27;
    v29 = *(v15 + 16);
    v30 = v40;
    v29(v40, v19, v14);
    v31 = v41;
    v29((v30 + *(v41 + 48)), v26, v14);
    sub_1000082B4(v30, v5, &qword_100AD2680);
    v36 = *(v31 + 48);
    v32 = v42;
    v33 = v37;
    v37(v42, v5, v14);
    v34 = *(v15 + 8);
    v34(&v5[v36], v14);
    sub_100497098(v30, v5);
    v33(v32 + *(v39 + 36), &v5[*(v31 + 48)], v14);
    v34(v5, v14);
    if (dispatch thunk of static Comparable.<= infix(_:_:)())
    {
      v25 = dispatch thunk of static Comparable.< infix(_:_:)();
    }

    else
    {
      v25 = 0;
    }

    sub_100004F84(v32, &qword_100AE0D70);
    v34(v44, v14);
    v34(v19, v14);
    return v25 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100889138@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v35 = sub_1000F24EC(&qword_100AD2680);
  __chkstk_darwin(v35);
  v36 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v34 = &v34 - v5;
  v6 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v6 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v34 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v34 - v17;
  sub_1000082B4(v2, v11, &unk_100AD4790);
  v19 = *(v13 + 48);
  if (v19(v11, 1, v12) == 1)
  {
    v8 = v11;
LABEL_5:
    sub_100004F84(v8, &unk_100AD4790);
    v23 = sub_1000F24EC(&qword_100AE0D70);
    return (*(*(v23 - 8) + 56))(v37, 1, 1, v23);
  }

  v20 = v11;
  v21 = *(v13 + 32);
  v21(v18, v20, v12);
  v22 = type metadata accessor for StreakSummary();
  sub_1000082B4(v2 + *(v22 + 20), v8, &unk_100AD4790);
  if (v19(v8, 1, v12) == 1)
  {
    (*(v13 + 8))(v18, v12);
    goto LABEL_5;
  }

  v21(v15, v8, v12);
  sub_100041A68(&qword_100AD2698);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v25 = v21;
    v26 = v34;
    v25(v34, v18, v12);
    v27 = v35;
    v25((v26 + *(v35 + 48)), v15, v12);
    v28 = v36;
    sub_1000082B4(v26, v36, &qword_100AD2680);
    v29 = *(v27 + 48);
    v30 = v37;
    v25(v37, v28, v12);
    v31 = *(v13 + 8);
    v31(v28 + v29, v12);
    sub_100497098(v26, v28);
    v32 = *(v27 + 48);
    v33 = sub_1000F24EC(&qword_100AE0D70);
    v25(&v30[*(v33 + 36)], (v28 + v32), v12);
    v31(v28, v12);
    return (*(*(v33 - 8) + 56))(v30, 0, 1, v33);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1008895B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100889E08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1008895E0(uint64_t a1)
{
  v2 = sub_10004193C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10088961C(uint64_t a1)
{
  v2 = sub_10004193C();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL sub_100889658(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v55 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&unk_100AD4790);
  v8 = __chkstk_darwin(v7 - 8);
  v51 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v53 = &v51 - v11;
  __chkstk_darwin(v10);
  v13 = &v51 - v12;
  v14 = sub_1000F24EC(&unk_100AD5BE0);
  v15 = __chkstk_darwin(v14);
  v52 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v51 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v51 - v21;
  v56 = v20;
  v57 = a1;
  v23 = *(v20 + 48);
  sub_1000082B4(a1, &v51 - v21, &unk_100AD4790);
  sub_1000082B4(a2, &v22[v23], &unk_100AD4790);
  v58 = v5;
  v24 = *(v5 + 48);
  if (v24(v22, 1, v4) == 1)
  {
    if (v24(&v22[v23], 1, v4) == 1)
    {
      v54 = a2;
      sub_100004F84(v22, &unk_100AD4790);
      goto LABEL_8;
    }

LABEL_6:
    v25 = v22;
LABEL_20:
    sub_100004F84(v25, &unk_100AD5BE0);
    return 0;
  }

  sub_1000082B4(v22, v13, &unk_100AD4790);
  if (v24(&v22[v23], 1, v4) == 1)
  {
    (*(v58 + 8))(v13, v4);
    goto LABEL_6;
  }

  v54 = a2;
  v26 = v58;
  v27 = v55;
  (*(v58 + 32))(v55, &v22[v23], v4);
  sub_100041A68(&qword_100AD5BF0);
  v28 = dispatch thunk of static Equatable.== infix(_:_:)();
  v29 = *(v26 + 8);
  v29(v27, v4);
  v29(v13, v4);
  sub_100004F84(v22, &unk_100AD4790);
  if ((v28 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v30 = type metadata accessor for StreakSummary();
  v31 = v30[5];
  v32 = *(v56 + 48);
  sub_1000082B4(v57 + v31, v19, &unk_100AD4790);
  v33 = v54 + v31;
  v34 = v54;
  sub_1000082B4(v33, &v19[v32], &unk_100AD4790);
  if (v24(v19, 1, v4) != 1)
  {
    v35 = v53;
    sub_1000082B4(v19, v53, &unk_100AD4790);
    if (v24(&v19[v32], 1, v4) != 1)
    {
      v54 = v34;
      v36 = v58;
      v37 = v55;
      (*(v58 + 32))(v55, &v19[v32], v4);
      sub_100041A68(&qword_100AD5BF0);
      v38 = v35;
      v39 = dispatch thunk of static Equatable.== infix(_:_:)();
      v40 = *(v36 + 8);
      v40(v37, v4);
      v40(v38, v4);
      sub_100004F84(v19, &unk_100AD4790);
      if ((v39 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_14;
    }

    (*(v58 + 8))(v35, v4);
LABEL_19:
    v25 = v19;
    goto LABEL_20;
  }

  if (v24(&v19[v32], 1, v4) != 1)
  {
    goto LABEL_19;
  }

  v54 = v34;
  sub_100004F84(v19, &unk_100AD4790);
LABEL_14:
  v41 = v30[6];
  v42 = *(v56 + 48);
  v19 = v52;
  sub_1000082B4(v57 + v41, v52, &unk_100AD4790);
  v43 = v54 + v41;
  v44 = v54;
  sub_1000082B4(v43, &v19[v42], &unk_100AD4790);
  if (v24(v19, 1, v4) == 1)
  {
    if (v24(&v19[v42], 1, v4) == 1)
    {
      sub_100004F84(v19, &unk_100AD4790);
      return *(v57 + v30[7]) == *(v44 + v30[7]);
    }

    goto LABEL_19;
  }

  v45 = v51;
  sub_1000082B4(v19, v51, &unk_100AD4790);
  if (v24(&v19[v42], 1, v4) == 1)
  {
    (*(v58 + 8))(v45, v4);
    goto LABEL_19;
  }

  v47 = v58;
  v48 = v55;
  (*(v58 + 32))(v55, &v19[v42], v4);
  sub_100041A68(&qword_100AD5BF0);
  v49 = dispatch thunk of static Equatable.== infix(_:_:)();
  v50 = *(v47 + 8);
  v50(v48, v4);
  v50(v45, v4);
  sub_100004F84(v19, &unk_100AD4790);
  if (v49)
  {
    return *(v57 + v30[7]) == *(v44 + v30[7]);
  }

  return 0;
}

unint64_t sub_100889DB4()
{
  result = qword_100AF60D0;
  if (!qword_100AF60D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF60D0);
  }

  return result;
}

uint64_t sub_100889E08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7473726966 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1953718636 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E4F676E69646E65 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_100889F68(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 112))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 65);
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

uint64_t sub_100889FB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 65) = -a2;
    }
  }

  return result;
}

void sub_10088A064()
{
  sub_1004C6AA8();
  AttributeDynamicLookup.subscript.getter();
  __break(1u);
}

void sub_10088A0D0()
{
  sub_1004C6AFC();
  AttributeDynamicLookup.subscript.getter();
  __break(1u);
}

uint64_t sub_10088A114@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v36 = type metadata accessor for AccessibilityChildBehavior();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ColorResource();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F24EC(&qword_100AD0E28);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v33 - v11;
  v33 = sub_1000F24EC(&qword_100AF60E8);
  __chkstk_darwin(v33);
  v14 = &v33 - v13;
  *v12 = static HorizontalAlignment.center.getter();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v15 = sub_1000F24EC(&qword_100AF60F0);
  sub_10088A664(v2, &v12[*(v15 + 44)]);
  KeyPath = swift_getKeyPath();
  v17 = &v12[*(sub_1000F24EC(&qword_100AF60F8) + 36)];
  *v17 = KeyPath;
  v17[8] = 1;
  v18 = swift_getKeyPath();
  v19 = &v12[*(v10 + 44)];
  v20 = *(sub_1000F24EC(&qword_100AD20A8) + 28);
  v21 = enum case for ColorScheme.dark(_:);
  v22 = type metadata accessor for ColorScheme();
  (*(*(v22 - 8) + 104))(v19 + v20, v21, v22);
  *v19 = v18;
  sub_100021CEC(v12, v14, &qword_100AD0E28);
  *&v14[*(sub_1000F24EC(&qword_100AD0E30) + 36)] = 262;
  v23 = swift_getKeyPath();
  v24 = &v14[*(sub_1000F24EC(&qword_100AF6100) + 36)];
  *v24 = v23;
  v24[8] = 0;
  sub_1000F24EC(&qword_100AD3CA8);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100940050;
  if (qword_100AD0CA8 != -1)
  {
    swift_once();
  }

  v26 = sub_10000617C(v5, qword_100B31508);
  v27 = *(v6 + 16);
  v27(v8, v26, v5);
  *(v25 + 32) = Color.init(_:)();
  if (qword_100AD0CA0 != -1)
  {
    swift_once();
  }

  v28 = sub_10000617C(v5, qword_100B314F0);
  v27(v8, v28, v5);
  *(v25 + 40) = Color.init(_:)();
  static UnitPoint.top.getter();
  static UnitPoint.bottom.getter();
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v29 = swift_getKeyPath();
  v37 = v41;
  v38 = v42;
  v39 = v43;
  v40 = 256;
  sub_1000F24EC(&qword_100ADB100);
  sub_10000B58C(&qword_100ADB108, &qword_100ADB100);
  v30 = AnyView.init<A>(_:)();
  v31 = &v14[*(v33 + 36)];
  *v31 = v29;
  v31[1] = v30;
  static AccessibilityChildBehavior.combine.getter();
  sub_10088DD1C();
  View.accessibilityElement(children:)();
  (*(v34 + 8))(v4, v36);
  return sub_1000E3C9C(v14);
}

uint64_t sub_10088A664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = sub_1000F24EC(&qword_100AF6138);
  v59 = *(v3 - 8);
  v60 = v3;
  __chkstk_darwin(v3);
  v55 = (&KeyPath - v4);
  v53 = sub_1000F24EC(&qword_100AF6140);
  __chkstk_darwin(v53);
  v54 = &KeyPath - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &KeyPath - v7;
  v9 = type metadata accessor for EnvironmentValues();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &KeyPath - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000F24EC(&qword_100AF6148);
  __chkstk_darwin(v13 - 8);
  v58 = &KeyPath - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &KeyPath - v16;
  v18 = sub_1000F24EC(&qword_100AE5EF8);
  __chkstk_darwin(v18 - 8);
  v57 = &KeyPath - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v56 = &KeyPath - v21;
  sub_10088AE58(&KeyPath - v21);
  v69 = *(a1 + 64);
  v68 = *(a1 + 48);
  v22 = v68;
  if (HIBYTE(v69) == 1)
  {
    v23 = v69;
    v24 = *(&v68 + 1);
  }

  else
  {

    static os_log_type_t.fault.getter();
    v25 = v17;
    v26 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v17 = v25;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100004F84(&v68, &qword_100AE5ED8);
    (*(v10 + 8))(v12, v9);
    v22 = v67[0];
    v24 = v67[1];
    v23 = v67[2];
  }

  v67[0] = v22;
  v67[1] = v24;
  LOBYTE(v67[2]) = v23;
  sub_1000F24EC(&qword_100ADB018);
  Binding.wrappedValue.getter();
  v27 = v66[0];

  v28 = v61;
  if (v27 == 6)
  {
    v52 = v17;
    v51 = static VerticalAlignment.firstTextBaseline.getter();
    v65 = 0;
    sub_10088BCB8(v63);
    memcpy(v66, v63, sizeof(v66));
    memcpy(v67, v63, sizeof(v67));
    sub_1000082B4(v66, &v62, &qword_100AF6158);
    sub_100004F84(v67, &qword_100AF6158);
    memcpy(&v64[7], v66, 0x120uLL);
    v49 = v65;
    v50 = static Font.footnote.getter();
    KeyPath = swift_getKeyPath();
    v29 = static HierarchicalShapeStyle.secondary.getter();
    v30 = &v8[*(sub_1000F24EC(&qword_100AF6160) + 36)];
    v31 = sub_1000F24EC(&qword_100ADB538);
    v32 = *(v31 + 36);
    v33 = enum case for BlendMode.plusDarker(_:);
    v34 = type metadata accessor for BlendMode();
    v35 = *(*(v34 - 8) + 104);
    v35(&v30[v32], v33, v34);
    v35(&v30[*(v31 + 40)], enum case for BlendMode.plusLighter(_:), v34);
    *v30 = v29;
    *v8 = v51;
    *(v8 + 1) = 0;
    v8[16] = v49;
    memcpy(v8 + 17, v64, 0x127uLL);
    v36 = v50;
    *(v8 + 39) = KeyPath;
    *(v8 + 40) = v36;
    v37 = swift_getKeyPath();
    v38 = &v8[*(sub_1000F24EC(&qword_100AF6168) + 36)];
    *v38 = v37;
    v38[1] = 0x3FE3333333333333;
    v39 = &v8[*(sub_1000F24EC(&qword_100AF6170) + 36)];
    sub_1000F24EC(&qword_100AD21B0);
    static ContentTransition.numericText(countsDown:)();
    *v39 = swift_getKeyPath();
    if (qword_100ACFCF0 != -1)
    {
      swift_once();
    }

    v40 = v54;
    *&v8[*(v53 + 36)] = qword_100B2F878;
    sub_1000082B4(v8, v40, &qword_100AF6140);
    v41 = v55;
    *v55 = 0;
    *(v41 + 8) = 1;
    v42 = sub_1000F24EC(&qword_100AF6178);
    sub_1000082B4(v40, v41 + *(v42 + 48), &qword_100AF6140);

    sub_100004F84(v8, &qword_100AF6140);
    sub_100004F84(v40, &qword_100AF6140);
    v17 = v52;
    sub_100021CEC(v41, v52, &qword_100AF6138);
    (*(v59 + 56))(v17, 0, 1, v60);
    v28 = v61;
  }

  else
  {
    (*(v59 + 56))(v17, 1, 1, v60);
  }

  v44 = v56;
  v43 = v57;
  sub_1000082B4(v56, v57, &qword_100AE5EF8);
  v45 = v58;
  sub_1000082B4(v17, v58, &qword_100AF6148);
  sub_1000082B4(v43, v28, &qword_100AE5EF8);
  v46 = sub_1000F24EC(&qword_100AF6150);
  sub_1000082B4(v45, v28 + *(v46 + 48), &qword_100AF6148);
  sub_100004F84(v17, &qword_100AF6148);
  sub_100004F84(v44, &qword_100AE5EF8);
  sub_100004F84(v45, &qword_100AF6148);
  return sub_100004F84(v43, &qword_100AE5EF8);
}

uint64_t sub_10088AE58@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v94 = type metadata accessor for Font.TextStyle();
  v92 = *(v94 - 8);
  __chkstk_darwin(v94);
  v93 = &v73[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v88 = type metadata accessor for AttributedString.FormattingOptions();
  __chkstk_darwin(v88);
  v89 = &v73[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1000F24EC(&qword_100AD1350);
  __chkstk_darwin(v6 - 8);
  v87 = &v73[-v7];
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v86 = &v73[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v83 = type metadata accessor for NumberFormatStyleConfiguration.Notation();
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v11 = &v73[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v85 = type metadata accessor for Locale();
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v79 = &v73[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1000F24EC(&qword_100AD1ED0);
  v81 = *(v13 - 8);
  __chkstk_darwin(v13);
  v99 = &v73[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v80 = &v73[-v16];
  v17 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v17 - 8);
  v18 = type metadata accessor for AttributedString();
  v90 = *(v18 - 8);
  __chkstk_darwin(v18);
  v101 = &v73[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v100 = &v73[-v21];
  v22 = type metadata accessor for EnvironmentValues();
  v95 = *(v22 - 8);
  v96 = v22;
  __chkstk_darwin(v22);
  v24 = &v73[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = *(v2 + 8) == 1;
  v76 = v11;
  if (v25)
  {
    v111 = *(v2 + 96);
    v26 = *(v2 + 88);
    v110 = v26;
    v27 = v111;

    if ((v27 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v28 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100004F84(&v110, &qword_100AE5F48);
      (*(v95 + 8))(v24, v96);
      v26 = v108;
    }

    swift_getKeyPath();
    *&v108 = v26;
    sub_100040810(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v98 = *(v26 + OBJC_IVAR____TtC7Journal19InsightsDataManager__wordCount);
  }

  else
  {
    v98 = *v2;
  }

  v91 = v18;
  v109 = *(v2 + 64);
  v97 = v2;
  v108 = *(v2 + 48);
  v30 = *(&v108 + 1);
  v29 = v108;
  v31 = v109;
  v78 = HIBYTE(v109);
  v74 = v109;
  if (HIBYTE(v109) == 1)
  {

    v34 = v29;
    v35 = v31;
    v33 = v30;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v32 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100004F84(&v108, &qword_100AE5ED8);
    (*(v95 + 8))(v24, v96);
    v34 = v103;
    v33 = v104;
    v35 = v105;
  }

  v103 = v34;
  v104 = v33;
  v105 = v35;
  v77 = sub_1000F24EC(&qword_100ADB018);
  Binding.wrappedValue.getter();
  v36 = v106;

  v75 = v30;
  if (v36 == 6)
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v37._countAndFlagsBits = 0x206E657474697257;
    v37._object = 0xEA00000000002A2ALL;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v37);
    v103 = v98;
    static Locale.autoupdatingCurrent.getter();
    sub_1000F6568();
    IntegerFormatStyle.init(locale:)();
    v38 = v76;
  }

  else
  {
    v107 = *(v97 + 80);
    v39 = *(v97 + 72);
    v106 = v39;
    if (v107 == 1)
    {
      v40 = v39;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v41 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100004F84(&v106, &qword_100AE5ED0);
      (*(v95 + 8))(v24, v96);
      v40 = v103;
    }

    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v42._countAndFlagsBits = 0x206E657474697257;
    v42._object = 0xEA00000000002A2ALL;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v42);
    v103 = v98;
    static Locale.autoupdatingCurrent.getter();
    sub_1000F6568();
    IntegerFormatStyle.init(locale:)();
    v25 = v40 == 3;
    v38 = v76;
    if (!v25)
    {
      static NumberFormatStyleConfiguration.Notation.compactName.getter();
      goto LABEL_17;
    }
  }

  static NumberFormatStyleConfiguration.Notation.automatic.getter();
LABEL_17:
  v43 = v80;
  v44 = v99;
  IntegerFormatStyle.notation(_:)();
  (*(v82 + 8))(v38, v83);
  v45 = *(v81 + 8);
  v45(v44, v13);
  sub_10000B58C(&qword_100AD2250, &qword_100AD1ED0);
  sub_1000777B4();
  String.LocalizationValue.StringInterpolation.appendInterpolation<A, B>(_:format:)();
  v45(v43, v13);
  v46._countAndFlagsBits = 673196586;
  v46._object = 0xE400000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v46);
  v103 = v98;
  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v47._countAndFlagsBits = 0x7364726F572029;
  v47._object = 0xE700000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v47);
  String.LocalizationValue.init(stringInterpolation:)();
  (*(v84 + 56))(v87, 1, 1, v85);
  v103 = _swiftEmptyArrayStorage;
  sub_100040810(&qword_100AD1358, &type metadata accessor for AttributedString.FormattingOptions);
  sub_1000F24EC(&qword_100AD1360);
  sub_10000B58C(&qword_100AD1368, &qword_100AD1360);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v48 = v100;
  AttributedString.init(localized:options:table:bundle:locale:comment:)();
  v49 = v90;
  v50 = *(v90 + 16);
  v51 = v91;
  v50(v101, v48, v91);
  if (v78)
  {

    v52 = v75;

    v53 = v74;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v54 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100004F84(&v108, &qword_100AE5ED8);
    (*(v95 + 8))(v24, v96);
    v29 = v103;
    v52 = v104;
    v53 = v105;
  }

  v103 = v29;
  v104 = v52;
  v105 = v53;
  Binding.wrappedValue.getter();
  v55 = v102;

  v56 = v55 == 6;
  v57 = Namespace.wrappedValue.getter();
  v58 = v101;
  v50(a1, v101, v51);
  static UnitPoint.center.getter();
  v60 = v59;
  v62 = v61;
  v63 = sub_1000F24EC(&qword_100AE5EF8);
  a1[v63[9]] = v56;
  *&a1[v63[10]] = v57;
  v64 = &a1[v63[11]];
  *v64 = v60;
  v64[1] = v62;
  v65 = &a1[v63[12]];
  *v65 = sub_100482F2C;
  v65[1] = 0;
  v66 = &a1[v63[13]];
  *v66 = swift_getKeyPath();
  v66[8] = 0;
  v67 = &a1[v63[14]];
  *v67 = swift_getKeyPath();
  v67[8] = 0;
  *&a1[v63[15]] = 0;
  v68 = v63[16];
  *&a1[v68] = static Font.subheadline.getter();
  v103 = 0x4046000000000000;
  (*(v92 + 104))(v93, enum case for Font.TextStyle.subheadline(_:), v94);
  sub_10009BA68();
  ScaledMetric.init(wrappedValue:relativeTo:)();
  *&a1[v63[18]] = 0xBFF8000000000000;
  *&a1[v63[19]] = 0x404A000000000000;
  v69 = v63[20];
  v70 = static Font.subheadline.getter();
  v71 = *(v49 + 8);
  v71(v58, v51);
  result = (v71)(v100, v51);
  *&a1[v69] = v70;
  *&a1[v63[21]] = 0x4054000000000000;
  *&a1[v63[22]] = 0xC002666666666666;
  return result;
}

uint64_t sub_10088BCB8@<X0>(void *a1@<X8>)
{
  v2 = sub_10088C074();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v9 = v6 & 1;
  v72 = v6 & 1;
  v10 = sub_10088CEA4();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v14 &= 1u;
  v71 = v14;
  *&v33 = v2;
  *(&v33 + 1) = v4;
  LOBYTE(v34) = v9;
  *(&v34 + 1) = v8;
  v39 = v30;
  v40 = v31;
  v41 = v32;
  v35 = v26;
  v36 = v27;
  v38 = v29;
  v37 = v28;
  __src[0] = v33;
  __src[1] = v34;
  __src[2] = v26;
  __src[3] = v27;
  __src[6] = v30;
  __src[7] = v31;
  __src[4] = v28;
  __src[5] = v29;
  *&v42 = v10;
  *(&v42 + 1) = v12;
  LOBYTE(v43) = v14;
  *(&v43 + 1) = v16;
  v48 = v23;
  v49 = v24;
  v50 = v25;
  v44 = v19;
  v45 = v20;
  v47 = v22;
  v46 = v21;
  __src[16] = v24;
  __src[17] = v25;
  __src[14] = v22;
  __src[15] = v23;
  __src[12] = v20;
  __src[13] = v21;
  __src[8] = v32;
  __src[9] = v42;
  __src[10] = v43;
  __src[11] = v19;
  memcpy(a1, __src, 0x120uLL);
  v51[0] = v10;
  v51[1] = v12;
  v52 = v14;
  v53 = v16;
  v58 = v23;
  v59 = v24;
  v60 = v25;
  v54 = v19;
  v55 = v20;
  v57 = v22;
  v56 = v21;
  sub_1000082B4(&v33, v61, &qword_100AD3BC8);
  sub_1000082B4(&v42, v61, &qword_100AD3BC8);
  sub_100004F84(v51, &qword_100AD3BC8);
  v61[0] = v2;
  v61[1] = v4;
  v62 = v9;
  v63 = v8;
  v68 = v30;
  v69 = v31;
  v70 = v32;
  v64 = v26;
  v65 = v27;
  v67 = v29;
  v66 = v28;
  return sub_100004F84(v61, &qword_100AD3BC8);
}

uint64_t sub_10088C074()
{
  v1 = sub_1000F24EC(&qword_100AE5F38);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v102 = &v70 - v3;
  v4 = type metadata accessor for Font.Leading();
  v98 = *(v4 - 8);
  v99 = v4;
  __chkstk_darwin(v4);
  v94 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100AE5F40);
  v96 = *(v6 - 8);
  v97 = v6;
  __chkstk_darwin(v6);
  v92 = &v70 - v7;
  v8 = sub_1000F24EC(&unk_100AD91E0);
  v89 = *(v8 - 8);
  v90 = v8;
  __chkstk_darwin(v8);
  v88 = &v70 - v9;
  v10 = type metadata accessor for AttributeContainer();
  v100 = *(v10 - 8);
  v101 = v10;
  __chkstk_darwin(v10);
  v91 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v95 = &v70 - v13;
  __chkstk_darwin(v14);
  v93 = &v70 - v15;
  v82 = type metadata accessor for AttributedString.FormattingOptions();
  __chkstk_darwin(v82);
  v83 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000F24EC(&qword_100AD1350);
  __chkstk_darwin(v17 - 8);
  v81 = &v70 - v18;
  v19 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v19 - 8);
  v80 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for NumberFormatStyleConfiguration.Notation();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v75 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for Locale();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v73 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000F24EC(&qword_100AD1ED0);
  v74 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v70 - v27;
  v29 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v29 - 8);
  v30 = type metadata accessor for AttributedString();
  v86 = *(v30 - 8);
  v87 = v30;
  __chkstk_darwin(v30);
  v84 = &v70 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v85 = &v70 - v33;
  v34 = type metadata accessor for EnvironmentValues();
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v37 = &v70 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 24) == 1)
  {
    v72 = v2;
    v105 = *(v0 + 96);
    v38 = *(v0 + 88);
    v104 = v38;
    v39 = v105;

    if ((v39 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v40 = static Log.runtimeIssuesLog.getter();
      v71 = v1;
      v41 = v40;
      os_log(_:dso:log:_:_:)();

      v1 = v71;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100004F84(&v104, &qword_100AE5F48);
      (*(v35 + 8))(v37, v34);
      v38 = v103;
    }

    swift_getKeyPath();
    v103 = v38;
    sub_100040810(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v42 = *(v38 + OBJC_IVAR____TtC7Journal19InsightsDataManager__wordCount + 8);

    v2 = v72;
  }

  else
  {
    v42 = *(v0 + 16);
  }

  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v43._countAndFlagsBits = 10794;
  v43._object = 0xE200000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v43);
  v103 = v42;
  static Locale.autoupdatingCurrent.getter();
  sub_1000F6568();
  IntegerFormatStyle.init(locale:)();
  v44 = v75;
  static NumberFormatStyleConfiguration.Notation.compactName.getter();
  IntegerFormatStyle.notation(_:)();
  (*(v76 + 8))(v44, v77);
  v45 = *(v74 + 8);
  v45(v25, v23);
  sub_10000B58C(&qword_100AD2250, &qword_100AD1ED0);
  sub_1000777B4();
  String.LocalizationValue.StringInterpolation.appendInterpolation<A, B>(_:format:)();
  v45(v28, v23);
  v46._countAndFlagsBits = 0x20736968540A2A2ALL;
  v46._object = 0xED000068746E6F4DLL;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v46);
  String.LocalizationValue.init(stringInterpolation:)();
  (*(v78 + 56))(v81, 1, 1, v79);
  v103 = _swiftEmptyArrayStorage;
  sub_100040810(&qword_100AD1358, &type metadata accessor for AttributedString.FormattingOptions);
  sub_1000F24EC(&qword_100AD1360);
  sub_10000B58C(&qword_100AD1368, &qword_100AD1360);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v47 = v85;
  AttributedString.init(localized:options:table:bundle:locale:comment:)();
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  swift_getKeyPath();
  sub_100221DFC();
  v49 = v88;
  static AttributeContainer.subscript.getter();

  v103 = 2;
  v50 = v93;
  v51 = v90;
  AttributeContainer.Builder.callAsFunction(_:)();
  (*(v89 + 8))(v49, v51);
  v52 = swift_getKeyPath();
  __chkstk_darwin(v52);
  swift_getKeyPath();
  sub_1004C6AA8();
  v53 = v92;
  static AttributeContainer.subscript.getter();

  static Font.title.getter();
  Font.bold()();

  v55 = v98;
  v54 = v99;
  v56 = v94;
  (*(v98 + 104))(v94, enum case for Font.Leading.tight(_:), v99);
  v57 = Font.leading(_:)();

  (*(v55 + 8))(v56, v54);
  v103 = v57;
  v58 = v91;
  v59 = v97;
  AttributeContainer.Builder.callAsFunction(_:)();

  (*(v96 + 8))(v53, v59);
  v60 = swift_getKeyPath();
  __chkstk_darwin(v60);
  swift_getKeyPath();
  sub_1004C6AFC();
  v61 = v102;
  AttributeContainer.subscript.getter();

  v62 = *(v100 + 8);
  v63 = v58;
  v64 = v101;
  v62(v63, v101);
  v103 = 0xBFF0000000000000;
  v65 = v95;
  AttributeContainer.Builder.callAsFunction(_:)();
  (*(v2 + 8))(v61, v1);
  AttributedString.replaceAttributes(_:with:)();
  v62(v65, v64);
  v62(v50, v64);
  v67 = v86;
  v66 = v87;
  (*(v86 + 16))(v84, v47, v87);
  v68 = Text.init(_:)();
  (*(v67 + 8))(v47, v66);
  return v68;
}

uint64_t sub_10088CEA4()
{
  v1 = sub_1000F24EC(&qword_100AE5F38);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v102 = &v70 - v3;
  v4 = type metadata accessor for Font.Leading();
  v98 = *(v4 - 8);
  v99 = v4;
  __chkstk_darwin(v4);
  v94 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100AE5F40);
  v96 = *(v6 - 8);
  v97 = v6;
  __chkstk_darwin(v6);
  v92 = &v70 - v7;
  v8 = sub_1000F24EC(&unk_100AD91E0);
  v89 = *(v8 - 8);
  v90 = v8;
  __chkstk_darwin(v8);
  v88 = &v70 - v9;
  v10 = type metadata accessor for AttributeContainer();
  v100 = *(v10 - 8);
  v101 = v10;
  __chkstk_darwin(v10);
  v91 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v95 = &v70 - v13;
  __chkstk_darwin(v14);
  v93 = &v70 - v15;
  v82 = type metadata accessor for AttributedString.FormattingOptions();
  __chkstk_darwin(v82);
  v83 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000F24EC(&qword_100AD1350);
  __chkstk_darwin(v17 - 8);
  v81 = &v70 - v18;
  v19 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v19 - 8);
  v80 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for NumberFormatStyleConfiguration.Notation();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v75 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for Locale();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v73 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000F24EC(&qword_100AD1ED0);
  v74 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v70 - v27;
  v29 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v29 - 8);
  v30 = type metadata accessor for AttributedString();
  v86 = *(v30 - 8);
  v87 = v30;
  __chkstk_darwin(v30);
  v84 = &v70 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v85 = &v70 - v33;
  v34 = type metadata accessor for EnvironmentValues();
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v37 = &v70 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 40) == 1)
  {
    v72 = v2;
    v105 = *(v0 + 96);
    v38 = *(v0 + 88);
    v104 = v38;
    v39 = v105;

    if ((v39 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v40 = static Log.runtimeIssuesLog.getter();
      v71 = v1;
      v41 = v40;
      os_log(_:dso:log:_:_:)();

      v1 = v71;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100004F84(&v104, &qword_100AE5F48);
      (*(v35 + 8))(v37, v34);
      v38 = v103;
    }

    swift_getKeyPath();
    v103 = v38;
    sub_100040810(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v42 = *(v38 + OBJC_IVAR____TtC7Journal19InsightsDataManager__wordCount + 16);

    v2 = v72;
  }

  else
  {
    v42 = *(v0 + 32);
  }

  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v43._countAndFlagsBits = 10794;
  v43._object = 0xE200000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v43);
  v103 = v42;
  static Locale.autoupdatingCurrent.getter();
  sub_1000F6568();
  IntegerFormatStyle.init(locale:)();
  v44 = v75;
  static NumberFormatStyleConfiguration.Notation.compactName.getter();
  IntegerFormatStyle.notation(_:)();
  (*(v76 + 8))(v44, v77);
  v45 = *(v74 + 8);
  v45(v25, v23);
  sub_10000B58C(&qword_100AD2250, &qword_100AD1ED0);
  sub_1000777B4();
  String.LocalizationValue.StringInterpolation.appendInterpolation<A, B>(_:format:)();
  v45(v28, v23);
  v46._countAndFlagsBits = 0x20736968540A2A2ALL;
  v46._object = 0xEC00000072616559;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v46);
  String.LocalizationValue.init(stringInterpolation:)();
  (*(v78 + 56))(v81, 1, 1, v79);
  v103 = _swiftEmptyArrayStorage;
  sub_100040810(&qword_100AD1358, &type metadata accessor for AttributedString.FormattingOptions);
  sub_1000F24EC(&qword_100AD1360);
  sub_10000B58C(&qword_100AD1368, &qword_100AD1360);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v47 = v85;
  AttributedString.init(localized:options:table:bundle:locale:comment:)();
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  swift_getKeyPath();
  sub_100221DFC();
  v49 = v88;
  static AttributeContainer.subscript.getter();

  v103 = 2;
  v50 = v93;
  v51 = v90;
  AttributeContainer.Builder.callAsFunction(_:)();
  (*(v89 + 8))(v49, v51);
  v52 = swift_getKeyPath();
  __chkstk_darwin(v52);
  swift_getKeyPath();
  sub_1004C6AA8();
  v53 = v92;
  static AttributeContainer.subscript.getter();

  static Font.title.getter();
  Font.bold()();

  v55 = v98;
  v54 = v99;
  v56 = v94;
  (*(v98 + 104))(v94, enum case for Font.Leading.tight(_:), v99);
  v57 = Font.leading(_:)();

  (*(v55 + 8))(v56, v54);
  v103 = v57;
  v58 = v91;
  v59 = v97;
  AttributeContainer.Builder.callAsFunction(_:)();

  (*(v96 + 8))(v53, v59);
  v60 = swift_getKeyPath();
  __chkstk_darwin(v60);
  swift_getKeyPath();
  sub_1004C6AFC();
  v61 = v102;
  AttributeContainer.subscript.getter();

  v62 = *(v100 + 8);
  v63 = v58;
  v64 = v101;
  v62(v63, v101);
  v103 = 0xBFF0000000000000;
  v65 = v95;
  AttributeContainer.Builder.callAsFunction(_:)();
  (*(v2 + 8))(v61, v1);
  AttributedString.replaceAttributes(_:with:)();
  v62(v65, v64);
  v62(v50, v64);
  v67 = v86;
  v66 = v87;
  (*(v86 + 16))(v84, v47, v87);
  v68 = Text.init(_:)();
  (*(v67 + 8))(v47, v66);
  return v68;
}

unint64_t sub_10088DD1C()
{
  result = qword_100AF6108;
  if (!qword_100AF6108)
  {
    sub_1000F2A18(&qword_100AF60E8);
    sub_10088DDD4();
    sub_10000B58C(&qword_100ADB138, &qword_100ADB140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6108);
  }

  return result;
}

unint64_t sub_10088DDD4()
{
  result = qword_100AF6110;
  if (!qword_100AF6110)
  {
    sub_1000F2A18(&qword_100AF6100);
    sub_1000F2A18(&qword_100AD0E28);
    sub_10088DEE4();
    sub_100280BD0();
    swift_getOpaqueTypeConformance2();
    sub_10000B58C(&qword_100AE5EC0, &qword_100AE5EC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6110);
  }

  return result;
}

unint64_t sub_10088DEE4()
{
  result = qword_100AF6118;
  if (!qword_100AF6118)
  {
    sub_1000F2A18(&qword_100AD0E28);
    sub_10088DF9C();
    sub_10000B58C(&qword_100AD2108, &qword_100AD20A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6118);
  }

  return result;
}

unint64_t sub_10088DF9C()
{
  result = qword_100AF6120;
  if (!qword_100AF6120)
  {
    sub_1000F2A18(&qword_100AF60F8);
    sub_10000B58C(&qword_100AF6128, &qword_100AF6130);
    sub_10000B58C(&qword_100AD2428, &qword_100AD2430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6120);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CenteredHFlowLayout(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CenteredHFlowLayout(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 17) = v3;
  return result;
}

void sub_10088E0DC(uint64_t a1, char a2, unint64_t a3, char a4, void (**a5)(void), uint64_t a6, void (**a7)(char *), _BOOL4 a8, double a9)
{
  v95 = a7;
  v86 = a5;
  v92 = type metadata accessor for CenteredHFlowLayout.Item();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v94 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v79 = &v76 - v18;
  __chkstk_darwin(v19);
  v78 = &v76 - v20;
  __chkstk_darwin(v21);
  v97 = &v76 - v22;
  v96 = type metadata accessor for LayoutSubview();
  v23 = *(v96 - 8);
  __chkstk_darwin(v96);
  v25 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v90 = &v76 - v27;
  v28 = sub_1000F24EC(&qword_100AF6198);
  __chkstk_darwin(v28);
  v31 = &v76 - v30;
  if (a2)
  {
    v32 = 10.0;
  }

  else
  {
    v32 = *&a1;
  }

  if (a4)
  {
    v93 = 1;
    v33 = *&a3;
  }

  else
  {
    v34 = (a3 >> 52) & 0x7FF;
    if (v34 == 2047 || !(v34 | a3 & 0xFFFFFFFFFFFFFLL))
    {
      v33 = 0.0;
      v93 = 1;
    }

    else
    {
      v93 = 0;
      v33 = *&a3;
    }
  }

  v35 = a6;
  v36 = (a3 & 0x7FFFFFFFFFFFFFFFLL) != 0;
  v37 = (a3 & 0x7FFFFFFFFFFFFFFFLL) == 0;
  if (a4)
  {
    v37 = v95;
  }

  v80 = v37;
  if (a4)
  {
    v36 = a8;
  }

  v83 = v36;
  if (v32 != *a6)
  {
    goto LABEL_27;
  }

  v38 = *(a6 + 16);
  if (v93)
  {
    if (!*(a6 + 16))
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (*(a6 + 8) != v33)
    {
      v38 = 1;
    }

    if (v38)
    {
      goto LABEL_27;
    }
  }

  v39 = *(a6 + 32);
  if (v83)
  {
    if (*(a6 + 32))
    {
      return;
    }

    goto LABEL_27;
  }

  if (v80 != *(a6 + 24))
  {
    v39 = 1;
  }

  if (v39)
  {
LABEL_27:
    v84 = v23;
    v88 = v25;
    v101 = v93;
    v100 = 1;
    v40 = *(a6 + 48);
    v102[2] = *(a6 + 32);
    v102[3] = v40;
    v103 = *(a6 + 64);
    v41 = *(a6 + 16);
    v102[0] = *a6;
    v102[1] = v41;
    v42 = v29;
    sub_10088F150(v102);
    *a6 = v32;
    *(a6 + 8) = v33;
    *(a6 + 16) = v101;
    *(a6 + 24) = 0;
    *(a6 + 32) = v100;
    *(a6 + 40) = _swiftEmptyArrayStorage;
    *(a6 + 48) = 0;
    *(a6 + 56) = 0;
    *(a6 + 64) = _swiftEmptyArrayStorage;
    v43 = swift_allocObject();
    v43[2] = _swiftEmptyArrayStorage;
    v44 = type metadata accessor for LayoutSubviews();
    v43[3] = 0;
    v89 = (v43 + 3);
    v43[4] = 0;
    (*(*(v44 - 8) + 16))(v31, v86, v44);
    v45 = *(v42 + 36);
    v46 = sub_10088F180();
    dispatch thunk of Collection.startIndex.getter();
    v81 = (v43 + 2);
    swift_beginAccess();
    dispatch thunk of Collection.endIndex.getter();
    if (*&v31[v45] != v99[0])
    {
      v95 = (v84 + 2);
      v86 = (v84 + 4);
      v85 = v32;
      v77 = v33;
      ++v84;
      v82 = v35;
      v87 = v46;
      do
      {
        v48 = dispatch thunk of Collection.subscript.read();
        v49 = *v95;
        (*v95)(v90);
        v48(v99, 0);
        v50 = v45;
        v51 = v44;
        dispatch thunk of Collection.formIndex(after:)();
        v52 = v88;
        (*v86)();
        LayoutSubview.priority.getter();
        v54 = v53;
        if (v53 > 0.0)
        {
          sub_10088F23C(v43, v35, a9);
        }

        LOBYTE(v99[0]) = 0;
        v98 = 1;
        LayoutSubview.sizeThatFits(_:)();
        v56 = v55;
        v57 = *v89;
        if (v32 < *v89 + v58)
        {
          sub_10088F23C(v43, v35, a9);
          v57 = *(v43 + 3);
        }

        v59 = v32 - v57;
        v60 = *(v43 + 4);
        LOBYTE(v99[0]) = 0;
        v98 = v60 == 0.0;
        LayoutSubview.sizeThatFits(_:)();
        v63 = v62;
        if (v32 - v57 >= v61)
        {
          v59 = v61;
        }

        v64 = v97;
        (v49)(v97, v52, v96);
        v65 = (v64 + *(v92 + 20));
        *v65 = v59;
        v65[1] = v63;
        v44 = v51;
        if ((v93 & 1) != 0 || *(*(v35 + 40) + 16) < 2uLL || v56 + *(v35 + 56) <= v77)
        {
          v45 = v50;
          if (v83 || *(*(v35 + 40) + 16) < v80)
          {
            sub_10088F090(v97, v94);
            v69 = *v81;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v69 = sub_1003E740C(0, v69[2] + 1, 1, v69);
            }

            v71 = v69[2];
            v70 = v69[3];
            if (v71 >= v70 >> 1)
            {
              v69 = sub_1003E740C(v70 > 1, v71 + 1, 1, v69);
            }

            v69[2] = v71 + 1;
            sub_10088F1D8(v94, v69 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v71);
            v43[2] = v69;
            if (v63 > v60)
            {
              v72 = v63;
            }

            else
            {
              v72 = v60;
            }

            *(v43 + 3) = v57 + v59 + a9;
            *(v43 + 4) = v72;
            v35 = v82;
            if (v54 > 0.0)
            {
              sub_10088F23C(v43, v82, a9);
            }

            sub_10088F0F4(v97);
            (*v84)(v52, v96);
          }

          else
          {
            sub_10088F090(v97, v79);
            v73 = *(v35 + 64);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v73 = sub_1003E740C(0, v73[2] + 1, 1, v73);
            }

            v75 = v73[2];
            v74 = v73[3];
            if (v75 >= v74 >> 1)
            {
              v73 = sub_1003E740C(v74 > 1, v75 + 1, 1, v73);
            }

            sub_10088F0F4(v97);
            (*v84)(v52, v96);
            v73[2] = v75 + 1;
            sub_10088F1D8(v79, v73 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v75);
            v35 = v82;
            *(v82 + 64) = v73;
          }
        }

        else
        {
          sub_10088F090(v97, v78);
          v66 = *(v35 + 64);
          v45 = v50;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v66 = sub_1003E740C(0, v66[2] + 1, 1, v66);
          }

          v68 = v66[2];
          v67 = v66[3];
          if (v68 >= v67 >> 1)
          {
            v66 = sub_1003E740C(v67 > 1, v68 + 1, 1, v66);
          }

          sub_10088F0F4(v97);
          (*v84)(v52, v96);
          v66[2] = v68 + 1;
          sub_10088F1D8(v78, v66 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v68);
          *(v35 + 64) = v66;
        }

        dispatch thunk of Collection.endIndex.getter();
      }

      while (*&v31[v45] != v99[0]);
    }

    sub_10088F3C8(v31);
    sub_10088F23C(v43, v35, a9);
    v47 = *(*(v35 + 40) + 16);

    if (v47)
    {
      *(v35 + 56) = *(v35 + 56) - a9;
    }
  }
}

void sub_10088EB58(uint64_t a1, char a2, unint64_t a3, char a4, void (**a5)(void), uint64_t a6, void (**a7)(char *), char a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12, double a13)
{
  v26 = type metadata accessor for CenteredHFlowLayout.Item();
  v27 = *(v26 - 8);
  v59 = v26;
  v60 = v27;
  __chkstk_darwin(v26);
  v29 = &v57 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v57 - v31;
  v67 = a2 & 1;
  v66 = a4 & 1;
  sub_10088E0DC(a1, a2 & 1, a3, a4 & 1, a5, a6, a7, a8 & 1, a13);
  v57 = a6;
  v33 = *(a6 + 40);
  v34 = *(v33 + 16);
  if (v34)
  {
    v35 = 0;
    v61 = v33 + 32;
    v36 = a10;
    v58 = a10;
    while (v35 < *(v33 + 16))
    {
      v37 = (v61 + 24 * v35);
      v38 = *v37;
      v39 = v37[1];
      v40 = v37[2];

      v68.origin.x = a9;
      v68.origin.y = a10;
      v68.size.width = a11;
      v68.size.height = a12;
      MidX = CGRectGetMidX(v68);
      v42 = v40 * 0.5;
      v43 = v36 + v42;
      v44 = *(*&v38 + 16);
      if (v44)
      {
        v45 = a9;
        v46 = a11;
        v47 = a12;
        v48 = MidX + v39 * -0.5;
        v49 = &v32[*(v59 + 20)];
        v50 = *&v38 + ((*(v60 + 80) + 32) & ~*(v60 + 80));
        v51 = *(v60 + 72);
        do
        {
          sub_10088F090(v50, v32);
          static UnitPoint.leading.getter();
          v52 = *v49;
          v65 = 0;
          v64 = 0;
          LayoutSubview.place(at:anchor:proposal:)();
          sub_10088F0F4(v32);
          v48 = v48 + v52 + a13;
          v50 += v51;
          --v44;
        }

        while (v44);

        a12 = v47;
        a11 = v46;
        a9 = v45;
        a10 = v58;
      }

      else
      {
      }

      ++v35;
      v36 = v43 + v42 + a13;
      if (v35 == v34)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    v53 = *(v57 + 64);
    v54 = *(v53 + 16);
    if (v54)
    {
      v55 = v53 + ((*(v60 + 80) + 32) & ~*(v60 + 80));
      v56 = *(v60 + 72);
      do
      {
        sub_10088F090(v55, v29);
        v69.origin.x = a9;
        v69.origin.y = a10;
        v69.size.width = a11;
        v69.size.height = a12;
        CGRectGetMinX(v69);
        static UnitPoint.topLeading.getter();
        v63 = 0;
        v62 = 0;
        LayoutSubview.place(at:anchor:proposal:)();
        sub_10088F0F4(v29);
        v55 += v56;
        --v54;
      }

      while (v54);
    }
  }
}

void sub_10088EEB0(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = &_swiftEmptyArrayStorage;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = &_swiftEmptyArrayStorage;
}

void (*sub_10088EF64(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return sub_100113D90;
}

unint64_t sub_10088EFF0()
{
  result = qword_100AF6190;
  if (!qword_100AF6190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6190);
  }

  return result;
}

uint64_t type metadata accessor for CenteredHFlowLayout.Item()
{
  result = qword_100AF61F8;
  if (!qword_100AF61F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10088F090(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CenteredHFlowLayout.Item();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10088F0F4(uint64_t a1)
{
  v2 = type metadata accessor for CenteredHFlowLayout.Item();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10088F180()
{
  result = qword_100AEB870;
  if (!qword_100AEB870)
  {
    type metadata accessor for LayoutSubviews();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEB870);
  }

  return result;
}

uint64_t sub_10088F1D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CenteredHFlowLayout.Item();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10088F23C(uint64_t a1, uint64_t a2, double a3)
{
  result = swift_beginAccess();
  v7 = *(a1 + 16);
  if (*(v7 + 16))
  {
    swift_beginAccess();
    v8 = *(a1 + 24) - a3;
    *(a1 + 24) = v8;
    swift_beginAccess();
    v9 = *(a1 + 32);
    v10 = *(a2 + 40);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 40) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_1003E72EC(0, *(v10 + 2) + 1, 1, v10);
      *(a2 + 40) = v10;
    }

    v13 = *(v10 + 2);
    v12 = *(v10 + 3);
    if (v13 >= v12 >> 1)
    {
      v10 = sub_1003E72EC((v12 > 1), v13 + 1, 1, v10);
      *(a2 + 40) = v10;
    }

    *(v10 + 2) = v13 + 1;
    v14 = &v10[3 * v13];
    *(v14 + 4) = v7;
    v14[5] = v8;
    *(v14 + 6) = v9;
    v15 = *(a1 + 24);
    v16 = *(a2 + 56);
    if (v15 <= *(a2 + 48))
    {
      v15 = *(a2 + 48);
    }

    *(a2 + 48) = v15;
    *(a2 + 56) = v16 + *(a1 + 32) + a3;
    swift_beginAccess();
    *(a1 + 16) = _swiftEmptyArrayStorage;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t sub_10088F3C8(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AF6198);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10088F468()
{
  type metadata accessor for LayoutSubview();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10088F4EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10088F534(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_10088F594(uint64_t a1)
{
  v2 = type metadata accessor for TokenTypeIdentifier();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v23 - v8;
  __chkstk_darwin(v7);
  v11 = v23 - v10;
  sub_10089104C(&qword_100AE0030, &type metadata accessor for TokenTypeIdentifier);
  result = Set.init(minimumCapacity:)();
  v13 = 0;
  v24 = a1;
  v25 = result;
  v16 = *(a1 + 64);
  v15 = a1 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[2] = v3 + 32;
  v23[3] = v3 + 16;
  v23[1] = v3 + 8;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v11, *(v24 + 48) + *(v3 + 72) * (v22 | (v21 << 6)), v2);
      (*(v3 + 32))(v6, v11, v2);
      sub_1002888C4(v9, v6);
      result = (*(v3 + 8))(v9, v2);
    }

    while (v19);
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v20)
    {

      return v25;
    }

    v19 = *(v15 + 8 * v21);
    ++v13;
    if (v19)
    {
      v13 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10088F7F4(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v23 - v8;
  __chkstk_darwin(v7);
  v11 = v23 - v10;
  sub_10089104C(&qword_100AD4B40, &type metadata accessor for UUID);
  result = Set.init(minimumCapacity:)();
  v13 = 0;
  v24 = a1;
  v25 = result;
  v16 = *(a1 + 64);
  v15 = a1 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[2] = v3 + 32;
  v23[3] = v3 + 16;
  v23[1] = v3 + 8;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v11, *(v24 + 48) + *(v3 + 72) * (v22 | (v21 << 6)), v2);
      (*(v3 + 32))(v6, v11, v2);
      sub_100286F3C(v9, v6);
      result = (*(v3 + 8))(v9, v2);
    }

    while (v19);
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v20)
    {

      return v25;
    }

    v19 = *(v15 + 8 * v21);
    ++v13;
    if (v19)
    {
      v13 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10088FA54(uint64_t a1)
{
  result = Set.init(minimumCapacity:)();
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_100286DEC(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10088FB70@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v22 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v20 - v13;
  v21 = *(v3 + 104);
  v21(v5, enum case for Calendar.Component.day(_:), v2);
  v24 = v1;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v15 = *(v3 + 8);
  v23 = v2;
  v15(v5, v2);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100004F84(v8, &unk_100AD4790);
    return (*(v10 + 56))(v25, 1, 1, v9);
  }

  else
  {
    (*(v10 + 32))(v14, v8, v9);
    v17 = v22;
    Calendar.startOfDay(for:)();
    v18 = v23;
    v21(v5, enum case for Calendar.Component.second(_:), v23);
    Calendar.date(byAdding:value:to:wrappingComponents:)();
    v15(v5, v18);
    v19 = *(v10 + 8);
    v19(v17, v9);
    return (v19)(v14, v9);
  }
}

BOOL sub_10088FE98(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v33 = *(v2 - 8);
  v34 = v2;
  __chkstk_darwin(v2);
  v32 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v4 - 8);
  v6 = &v29 - v5;
  v7 = type metadata accessor for Date();
  v36 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v31 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v29 - v10;
  v12 = sub_1000F24EC(&unk_100AD9850);
  __chkstk_darwin(v12 - 8);
  v14 = &v29 - v13;
  v15 = type metadata accessor for DateComponents();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000082B4(a1, v14, &unk_100AD9850);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v19 = &unk_100AD9850;
    v20 = v14;
LABEL_5:
    sub_100004F84(v20, v19);
    return 0;
  }

  (*(v16 + 32))(v18, v14, v15);
  Calendar.date(from:)();
  if ((*(v36 + 48))(v6, 1, v7) == 1)
  {
    (*(v16 + 8))(v18, v15);
    v19 = &unk_100AD4790;
    v20 = v6;
    goto LABEL_5;
  }

  v22 = v36;
  v23 = *(v36 + 32);
  v30 = v11;
  v23(v11, v6, v7);
  v24 = v31;
  static Date.now.getter();
  v26 = v32;
  v25 = v33;
  v27 = v34;
  (*(v33 + 104))(v32, enum case for Calendar.Component.day(_:), v34);
  v35 = Calendar.compare(_:to:toGranularity:)();
  (*(v25 + 8))(v26, v27);
  v28 = *(v22 + 8);
  v28(v24, v7);
  v28(v30, v7);
  (*(v16 + 8))(v18, v15);
  return v35 == 1;
}

uint64_t sub_1008902D8(uint64_t a1)
{
  v2 = Calendar.firstWeekday.getter();
  v3 = v2 - 1;
  if (__OFSUB__(v2, 1))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v3 > 7)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = v2 - 1;
  v18[0] = 7;
  if (v3 < 0)
  {
LABEL_27:
    __break(1u);

    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v18[1] = 0;
  v18[2] = v2 - 1;
  v8 = _swiftEmptyArrayStorage;
  for (i = 1; (i & 1) == 0 && v4 != v5; i = 0)
  {
LABEL_15:
    if (v5 < v6)
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (v4 < v6)
    {
      goto LABEL_23;
    }

    if (v4 >= v5)
    {
      goto LABEL_24;
    }

    v15 = v4;
    if (sub_100890474(&v15, a1))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100199BD4(0, *(v8 + 2) + 1, 1);
        v8 = v16;
      }

      v11 = *(v8 + 2);
      v10 = *(v8 + 3);
      if (v11 >= v10 >> 1)
      {
        sub_100199BD4((v10 > 1), v11 + 1, 1);
        v8 = v16;
      }

      *(v8 + 2) = v11 + 1;
      *&v8[v11 + 4] = v4;
    }

    ++v4;
  }

  v12 = &v18[2 * v7];
  while (v7 != 2)
  {
    ++v7;
    v4 = *(v12 - 1);
    v5 = *v12;
    v12 += 2;
    if (v4 != v5)
    {
      v6 = v4;
      goto LABEL_15;
    }
  }

  return v8;
}

BOOL sub_100890474(uint64_t *a1, uint64_t a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = *a1;
  v4 = static Hasher._hash(seed:_:)();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_10089053C()
{
  sub_1000F24EC(&qword_100AD3BF0);
  v0 = type metadata accessor for Calendar.Component();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100941FE0;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for Calendar.Component.era(_:), v0);
  v6(v5 + v2, enum case for Calendar.Component.year(_:), v0);
  v6(v5 + 2 * v2, enum case for Calendar.Component.month(_:), v0);
  v6(v5 + 3 * v2, enum case for Calendar.Component.day(_:), v0);
  v7 = sub_10089070C(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100B31270 = v7;
  return result;
}

uint64_t sub_10089070C(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_10089104C(&qword_100ADB710, &type metadata accessor for Calendar.Component);
  result = Set.init(minimumCapacity:)();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_1002878C4(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_1008908D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10089112C();
  result = Set.init(minimumCapacity:)();
  v6 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      sub_100287C04(v5, *(v4 - 1), *v4);
      v4 += 2;
      --v2;
    }

    while (v2);
    return v6;
  }

  return result;
}

uint64_t sub_100890950(uint64_t a1)
{
  v2 = type metadata accessor for AssetType();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_10089104C(&qword_100ADFEE0, &type metadata accessor for AssetType);
  result = Set.init(minimumCapacity:)();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_100287D3C(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_100890B5C(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(uint64_t), void (*a5)(char *, char *))
{
  v9 = sub_1000F24EC(a2);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v21 - v15;
  v17 = *(a1 + 16);
  a4(v14);
  result = Set.init(minimumCapacity:)();
  v22 = result;
  if (v17)
  {
    v19 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v20 = *(v10 + 72);
    do
    {
      sub_1000082B4(v19, v13, a2);
      a5(v16, v13);
      sub_100004F84(v16, a2);
      v19 += v20;
      --v17;
    }

    while (v17);
    return v22;
  }

  return result;
}

uint64_t sub_100890CD0(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100891B90();
  result = Set.init(minimumCapacity:)();
  v11 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      v5 = *(v4 + 48);
      v12[2] = *(v4 + 32);
      v12[3] = v5;
      v12[4] = *(v4 + 64);
      v13 = *(v4 + 80);
      v6 = *(v4 + 16);
      v12[0] = *v4;
      v12[1] = v6;
      sub_1001A9170(v12, v9);
      sub_100288704(v7, v12);
      v9[3] = v7[3];
      v9[4] = v7[4];
      v10 = v8;
      v9[0] = v7[0];
      v9[1] = v7[1];
      v9[2] = v7[2];
      sub_1001A911C(v9);
      v4 += 88;
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_100890DB0(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for MKPointOfInterestCategory(0);
  sub_10089104C(&qword_100AD1C98, type metadata accessor for MKPointOfInterestCategory);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_100289480(&v6, v5);

      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_100890EE4(unint64_t a1, void (*a2)(void), unint64_t *a3, void (*a4)(uint64_t), void (*a5)(id *, void (*)(void)))
{
  v9 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  a2(0);
  while (1)
  {
    sub_10089104C(a3, a4);
    result = Set.init(minimumCapacity:)();
    v16 = result;
    if (v9)
    {
      break;
    }

    a3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!a3)
    {
      return result;
    }

LABEL_7:
    v11 = 0;
    v9 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v12 = *(a1 + 8 * v11 + 32);
      }

      a2 = v12;
      v13 = (v11 + 1);
      if (__OFADD__(v11, 1))
      {
        break;
      }

      a4 = &v16;
      a5(&v15, v12);

      ++v11;
      if (v13 == a3)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v14 = a2;
    _CocoaArrayWrapper.endIndex.getter();
    v14(0);
  }

  a4 = result;
  a3 = _CocoaArrayWrapper.endIndex.getter();
  result = a4;
  if (a3)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10089104C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100891094(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100286DEC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_10089112C()
{
  result = qword_100AF6230;
  if (!qword_100AF6230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6230);
  }

  return result;
}

uint64_t sub_1008911B4(uint64_t a1)
{
  v2 = type metadata accessor for DenylistDescriptor();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_10089104C(&qword_100ADB800, &type metadata accessor for DenylistDescriptor);
  result = Set.init(minimumCapacity:)();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v5, v14, v2);
      sub_10028A474(v8, v5);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_100891384(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_10089104C(&qword_100AD4B40, &type metadata accessor for UUID);
  result = Set.init(minimumCapacity:)();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v5, v14, v2);
      sub_100286F3C(v8, v5);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_100891520(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for NLTag(0);
  sub_10089104C(&qword_100AD1BA8, type metadata accessor for NLTag);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_10028AC04(&v6, v5);

      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1008915DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_10028ADE8(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_100891674()
{
  result = qword_100AF6238;
  if (!qword_100AF6238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6238);
  }

  return result;
}

unint64_t sub_1008916C8()
{
  result = qword_100AF6240;
  if (!qword_100AF6240)
  {
    sub_1000F2A18(&qword_100AE4290);
    sub_10089104C(&qword_100ADFEE0, &type metadata accessor for AssetType);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6240);
  }

  return result;
}

uint64_t sub_10089177C(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_10089104C(&qword_100ADB7E8, &type metadata accessor for URL);
  result = Set.init(minimumCapacity:)();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_10028AF38(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_100891990(unint64_t a1, unint64_t *i, uint64_t a3, unint64_t *a4, void (*a5)(id *, id))
{
  v9 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_1000065A8(0, i);
    sub_10000A908(a4, i);
    result = Set.init(minimumCapacity:)();
    v14 = result;
    if (v9)
    {
      break;
    }

    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; i = (i + 1))
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v12 = *(a1 + 8 * i + 32);
      }

      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      a4 = &v14;
      a5(&v13, v12);

      if (v9 == v11)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    _CocoaArrayWrapper.endIndex.getter();
  }

  a4 = result;
  v11 = _CocoaArrayWrapper.endIndex.getter();
  result = a4;
  if (v11)
  {
    goto LABEL_6;
  }

  return result;
}

unint64_t sub_100891AE8()
{
  result = qword_100AF6248;
  if (!qword_100AF6248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6248);
  }

  return result;
}

unint64_t sub_100891B3C()
{
  result = qword_100AF6250;
  if (!qword_100AF6250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6250);
  }

  return result;
}

unint64_t sub_100891B90()
{
  result = qword_100AF6258;
  if (!qword_100AF6258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6258);
  }

  return result;
}

unint64_t sub_100891BE4()
{
  result = qword_100AF6268;
  if (!qword_100AF6268)
  {
    sub_1000F2A18(&unk_100AEED30);
    sub_10089104C(&qword_100ADB830, &type metadata accessor for AssetSource);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6268);
  }

  return result;
}

uint64_t sub_100891CF8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for Locale();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_100891DB0(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for Locale();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100891E70()
{
  result = type metadata accessor for Locale();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100891EEC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AttributedString.FormattingOptions();
  __chkstk_darwin(v4);
  v5 = sub_1000F24EC(&qword_100AD1350);
  __chkstk_darwin(v5 - 8);
  v7 = &v18 - v6;
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v9 - 8);
  if (*v1)
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v10._countAndFlagsBits = 23390;
    v10._object = 0xE200000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v10);
    v19 = *(a1 + *(type metadata accessor for StreakSummary() + 28));
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v11 = 0xD00000000000002DLL;
    v12 = 0x800000010090CD20;
  }

  else
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v16._countAndFlagsBits = 23390;
    v16._object = 0xE200000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v16);
    v19 = *(a1 + *(type metadata accessor for StreakSummary() + 28));
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v12 = 0x800000010090CD90;
    v11 = 0xD00000000000002CLL;
  }

  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v11);
  String.LocalizationValue.init(stringInterpolation:)();
  v13 = *(_s19DurationFormatStyleV10AttributedVMa(0) + 20);
  v14 = type metadata accessor for Locale();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v7, &v2[v13], v14);
  (*(v15 + 56))(v7, 0, 1, v14);
  swift_getKeyPath();
  v19 = _swiftEmptyArrayStorage;
  sub_1008936D4(&qword_100AD1358, &type metadata accessor for AttributedString.FormattingOptions);
  sub_1000F24EC(&qword_100AD1360);
  sub_1005B63F8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_100280F98();
  return AttributedString.init<A>(localized:options:table:bundle:locale:comment:including:)();
}

uint64_t sub_10089241C(void *a1)
{
  v3 = v1;
  v5 = sub_1000F24EC(&qword_100AF63E8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000CA14(a1, a1[3]);
  sub_1008938CC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = *v3;
  v10[14] = 0;
  sub_100893974();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    _s19DurationFormatStyleV10AttributedVMa(0);
    v10[13] = 1;
    type metadata accessor for Locale();
    sub_1008936D4(&qword_100AEB028, &type metadata accessor for Locale);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1008925EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = type metadata accessor for Locale();
  v23 = *(v4 - 8);
  v24 = v4;
  __chkstk_darwin(v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&qword_100AF63D0);
  v21 = *(v7 - 8);
  v22 = v7;
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  v10 = _s19DurationFormatStyleV10AttributedVMa(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 28);
  static Locale.autoupdatingCurrent.getter();
  sub_10000CA14(a1, a1[3]);
  sub_1008938CC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v15 = v24;
    sub_10000BA7C(a1);
    return (*(v23 + 8))(&v12[v14], v15);
  }

  else
  {
    v16 = v21;
    v26 = 0;
    sub_100893920();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *v12 = v27;
    v25 = 1;
    sub_1008936D4(&qword_100AEB018, &type metadata accessor for Locale);
    v17 = v24;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v16 + 8))(v9, v22);
    (*(v23 + 40))(&v12[v14], v6, v17);
    sub_100893A1C(v12, v20, _s19DurationFormatStyleV10AttributedVMa);
    sub_10000BA7C(a1);
    return sub_100893A84(v12, _s19DurationFormatStyleV10AttributedVMa);
  }
}

uint64_t sub_10089294C(void *a1)
{
  v3 = v1;
  v5 = sub_1000F24EC(&qword_100AF6408);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000CA14(a1, a1[3]);
  sub_1008939C8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = *v3;
  v10[14] = 0;
  sub_100893974();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    _s19DurationFormatStyleVMa(0);
    v10[13] = 1;
    type metadata accessor for Locale();
    sub_1008936D4(&qword_100AEB028, &type metadata accessor for Locale);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100892B1C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = type metadata accessor for Locale();
  v23 = *(v4 - 8);
  v24 = v4;
  __chkstk_darwin(v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&qword_100AF63F8);
  v21 = *(v7 - 8);
  v22 = v7;
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  v10 = _s19DurationFormatStyleVMa(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 28);
  static Locale.autoupdatingCurrent.getter();
  sub_10000CA14(a1, a1[3]);
  sub_1008939C8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v15 = v24;
    sub_10000BA7C(a1);
    return (*(v23 + 8))(&v12[v14], v15);
  }

  else
  {
    v16 = v21;
    v26 = 0;
    sub_100893920();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *v12 = v27;
    v25 = 1;
    sub_1008936D4(&qword_100AEB018, &type metadata accessor for Locale);
    v17 = v24;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v16 + 8))(v9, v22);
    (*(v23 + 40))(&v12[v14], v6, v17);
    sub_100893A1C(v12, v20, _s19DurationFormatStyleVMa);
    sub_10000BA7C(a1);
    return sub_100893A84(v12, _s19DurationFormatStyleVMa);
  }
}

uint64_t sub_100892E7C(uint64_t a1)
{
  v2 = sub_1008938CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100892EB8(uint64_t a1)
{
  v2 = sub_1008938CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100892F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x636E657571657266 && a2 == 0xE900000000000079;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100893038(uint64_t a1)
{
  v2 = sub_1008939C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100893074(uint64_t a1)
{
  v2 = sub_1008939C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1008930B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v21 = a1;
  v22 = a3;
  v5 = type metadata accessor for AttributedString.CharacterView();
  __chkstk_darwin(v5);
  v6 = _s19DurationFormatStyleV10AttributedVMa(0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AttributedString();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  v15 = *(a2 + 20);
  v16 = *(v7 + 28);
  v17 = type metadata accessor for Locale();
  (*(*(v17 - 8) + 16))(&v9[v16], &v3[v15], v17);
  *v9 = v14;
  sub_100891EEC(v21);
  sub_100893A84(v9, _s19DurationFormatStyleV10AttributedVMa);
  AttributedString.characters.getter();
  (*(v11 + 8))(v13, v10);
  sub_1008936D4(&unk_100AD1370, &type metadata accessor for AttributedString.CharacterView);
  result = String.init<A>(_:)();
  v19 = v22;
  *v22 = result;
  v19[1] = v20;
  return result;
}

uint64_t sub_1008932F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = *v3;
  v7 = *(a2 + 20);
  v8 = type metadata accessor for Locale();
  result = (*(*(v8 - 8) + 16))(&a3[v7], a1, v8);
  *a3 = v6;
  return result;
}

Swift::Int sub_100893394()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  type metadata accessor for Locale();
  sub_1008936D4(qword_100AEB030, &type metadata accessor for Locale);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100893474()
{
  String.hash(into:)();

  type metadata accessor for Locale();
  sub_1008936D4(qword_100AEB030, &type metadata accessor for Locale);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_100893538()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  type metadata accessor for Locale();
  sub_1008936D4(qword_100AEB030, &type metadata accessor for Locale);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1008936D4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1008938CC()
{
  result = qword_100AF63D8;
  if (!qword_100AF63D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF63D8);
  }

  return result;
}

unint64_t sub_100893920()
{
  result = qword_100AF63E0;
  if (!qword_100AF63E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF63E0);
  }

  return result;
}

unint64_t sub_100893974()
{
  result = qword_100AF63F0;
  if (!qword_100AF63F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF63F0);
  }

  return result;
}

unint64_t sub_1008939C8()
{
  result = qword_100AF6400;
  if (!qword_100AF6400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6400);
  }

  return result;
}

uint64_t sub_100893A1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100893A84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100893AE4(_BYTE *a1, _BYTE *a2, void (*a3)(void))
{
  v4 = *a1 == 0;
  if (*a1)
  {
    v5 = 0x796C6B656577;
  }

  else
  {
    v5 = 0x796C696164;
  }

  if (v4)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (*a2)
  {
    v7 = 0x796C6B656577;
  }

  else
  {
    v7 = 0x796C696164;
  }

  if (*a2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  if (v5 == v7 && v6 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  a3(0);

  return static Locale.== infix(_:_:)();
}

unint64_t sub_100893C04()
{
  result = qword_100AF6410;
  if (!qword_100AF6410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6410);
  }

  return result;
}

unint64_t sub_100893C5C()
{
  result = qword_100AF6418;
  if (!qword_100AF6418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6418);
  }

  return result;
}

unint64_t sub_100893CB4()
{
  result = qword_100AF6420;
  if (!qword_100AF6420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6420);
  }

  return result;
}

unint64_t sub_100893D0C()
{
  result = qword_100AF6428;
  if (!qword_100AF6428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6428);
  }

  return result;
}

unint64_t sub_100893D64()
{
  result = qword_100AF6430;
  if (!qword_100AF6430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6430);
  }

  return result;
}

unint64_t sub_100893DBC()
{
  result = qword_100AF6438;
  if (!qword_100AF6438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6438);
  }

  return result;
}

uint64_t type metadata accessor for InsightsSetScheduleAction()
{
  result = qword_100AF6498;
  if (!qword_100AF6498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100893EA0()
{
  sub_100893F0C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100893F0C()
{
  if (!qword_100AE2748)
  {
    type metadata accessor for OpenURLAction();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100AE2748);
    }
  }
}

uint64_t sub_100893F64@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&qword_100AE27A0);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_1008948B0(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for OpenURLAction();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_10089414C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1000F24EC(&unk_100AD6DD0);
  v4[3] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v4[7] = type metadata accessor for OpenSensitiveURLAction.Destination();
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for OpenURLAction();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[12] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[13] = v8;
  v4[14] = v7;

  return _swift_task_switch(sub_100894304, v8, v7);
}

uint64_t sub_100894304()
{
  if (qword_100ACFD20 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v0[15] = qword_100B2F898;

  if (v1)
  {
    swift_getObjectType();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  v0[16] = v2;
  v0[17] = v4;

  return _swift_task_switch(sub_1008943D8, v2, v4);
}

uint64_t sub_1008943D8()
{
  v1 = [*(v0[15] + OBJC_IVAR____TtC7Journal27JournalNotificationsManager_notificationCenter) notificationSettings];
  v2 = [v1 authorizationStatus];

  v3 = v0[12];
  if (v2)
  {

    v4 = v0[13];
    v5 = v0[14];

    return _swift_task_switch(sub_100894714, v4, v5);
  }

  else
  {
    v6 = swift_task_alloc();
    v0[18] = v6;
    *v6 = v0;
    v6[1] = sub_100894504;

    return sub_1003C1F2C(v3, &protocol witness table for MainActor, 1);
  }
}

uint64_t sub_100894504()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_1008946A4;
  }

  else
  {
    v5 = sub_100894640;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100894640()
{

  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return _swift_task_switch(sub_100894714, v1, v2);
}

uint64_t sub_1008946A4()
{

  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return _swift_task_switch(sub_100894714, v1, v2);
}

uint64_t sub_100894714()
{
  v1 = v0[11];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];

  sub_100893F64(v1);
  swift_storeEnumTagMultiPayload();
  sub_1008B4384(v4);
  v5 = (*(v3 + 48))(v4, 1, v2);
  v7 = v0[10];
  v6 = v0[11];
  v9 = v0[8];
  v8 = v0[9];
  if (v5 == 1)
  {
    v10 = v0[3];
    sub_1001295EC(v0[8]);
    (*(v7 + 8))(v6, v8);
    sub_1001616C0(v10);
  }

  else
  {
    v12 = v0[5];
    v11 = v0[6];
    v13 = v0[4];
    (*(v12 + 32))(v11, v0[3], v13);
    OpenURLAction.callAsFunction(_:)();
    (*(v12 + 8))(v11, v13);
    sub_1001295EC(v9);
    (*(v7 + 8))(v6, v8);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1008948B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AE27A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_100894920(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v32 = a1;
  v33 = type metadata accessor for Date();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v6 - 8);
  v8 = &v31 - v7;
  v31 = sub_1000F24EC(&qword_100ADA628);
  __chkstk_darwin(v31);
  v10 = &v31 - v9;
  v11 = type metadata accessor for UUID();
  __chkstk_darwin(v11 - 8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AssetSource();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AssetType();
  __chkstk_darwin(v18);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtC7Journal16StreakEventAsset_metadata) = 0;
  (*(v21 + 104))(v20, enum case for AssetType.streakEvent(_:));
  (*(v15 + 104))(v17, enum case for AssetSource.unknown(_:), v14);
  UUID.init()();
  v22 = sub_100285908(v13, v20, v17);
  v23 = v32;
  sub_1001EDCD8(v32, v8);
  v25 = v33;
  v24 = v34;
  (*(v3 + 16))(v5, v34, v33);
  v26 = v22;
  StreakEvent.init(entryID:date:)();
  (*(v3 + 8))(v24, v25);
  sub_10029D1EC(v23);
  swift_storeEnumTagMultiPayload();
  sub_1000F24EC(&qword_100ADA638);
  v27 = swift_allocObject();
  v28 = *(*v27 + 104);
  v29 = sub_1000F24EC(&qword_100ADA630);
  (*(*(v29 - 8) + 56))(v27 + v28, 1, 1, v29);
  *(v27 + *(*v27 + 112)) = xmmword_100941EE0;
  sub_100894F48(v10, v27 + *(*v27 + 120));
  *&v26[OBJC_IVAR____TtC7Journal16StreakEventAsset_metadata] = v27;

  return v26;
}

id sub_100894D94()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StreakEventAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for StreakEventAsset()
{
  result = qword_100AF64F8;
  if (!qword_100AF64F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100894EDC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StreakEvent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100894F48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100ADA628);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100894FB8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10089500C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

Swift::Int sub_100895068(uint64_t a1)
{
  Hasher.init(_seed:)();
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v2 = 2;
      goto LABEL_11;
    }

    if (a1 == 3)
    {
      v2 = 3;
      goto LABEL_11;
    }
  }

  else
  {
    if (!a1)
    {
      v2 = 0;
      goto LABEL_11;
    }

    if (a1 == 1)
    {
      v2 = 1;
LABEL_11:
      Hasher._combine(_:)(v2);
      return Hasher._finalize()();
    }
  }

  Hasher._combine(_:)(4uLL);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_100895138()
{
  v1 = *v0;
  if (*v0 > 1)
  {
    if (v1 == 2)
    {
      v2 = 2;
      goto LABEL_13;
    }

    if (v1 == 3)
    {
      v2 = 3;
      goto LABEL_13;
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 0;
      goto LABEL_13;
    }

    if (v1 == 1)
    {
      v2 = 1;
LABEL_13:
      Hasher._combine(_:)(v2);
      return;
    }
  }

  Hasher._combine(_:)(4uLL);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1008951FC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 2;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = 3;
      goto LABEL_11;
    }
  }

  else
  {
    if (!v1)
    {
      v2 = 0;
      goto LABEL_11;
    }

    if (v1 == 1)
    {
      v2 = 1;
LABEL_11:
      Hasher._combine(_:)(v2);
      return Hasher._finalize()();
    }
  }

  Hasher._combine(_:)(4uLL);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1008952D0()
{
  result = qword_100AF6548;
  if (!qword_100AF6548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6548);
  }

  return result;
}

uint64_t sub_100895324()
{
  sub_1000F24EC(&qword_100AF6550);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100971280;
  v1 = MKPointOfInterestCategoryAnimalService;
  *(inited + 32) = MKPointOfInterestCategoryAnimalService;
  *(inited + 40) = MKPointOfInterestCategoryAirport;
  *(inited + 48) = MKPointOfInterestCategoryAmusementPark;
  *(inited + 56) = MKPointOfInterestCategoryAquarium;
  *(inited + 64) = MKPointOfInterestCategoryATM;
  v2 = MKPointOfInterestCategoryAutomotiveRepair;
  *(inited + 72) = MKPointOfInterestCategoryAutomotiveRepair;
  *(inited + 80) = MKPointOfInterestCategoryBakery;
  v3 = MKPointOfInterestCategoryBaseball;
  v91 = MKPointOfInterestCategoryBaseball;
  *(inited + 88) = MKPointOfInterestCategoryBank;
  *(inited + 96) = v3;
  v4 = MKPointOfInterestCategoryBasketball;
  *(inited + 104) = MKPointOfInterestCategoryBasketball;
  *(inited + 112) = MKPointOfInterestCategoryBeach;
  v90 = MKPointOfInterestCategoryBeauty;
  v5 = MKPointOfInterestCategoryBowling;
  v94 = MKPointOfInterestCategoryBowling;
  *(inited + 120) = MKPointOfInterestCategoryBeauty;
  *(inited + 128) = v5;
  *(inited + 136) = MKPointOfInterestCategoryBrewery;
  *(inited + 144) = MKPointOfInterestCategoryCafe;
  *(inited + 152) = MKPointOfInterestCategoryCampground;
  *(inited + 160) = MKPointOfInterestCategoryCarRental;
  v92 = MKPointOfInterestCategoryCastle;
  v6 = MKPointOfInterestCategoryConventionCenter;
  v97 = MKPointOfInterestCategoryConventionCenter;
  *(inited + 168) = MKPointOfInterestCategoryCastle;
  *(inited + 176) = v6;
  v95 = MKPointOfInterestCategoryDistillery;
  *(inited + 184) = MKPointOfInterestCategoryDistillery;
  *(inited + 192) = MKPointOfInterestCategoryEVCharger;
  v93 = MKPointOfInterestCategoryFairground;
  *(inited + 200) = MKPointOfInterestCategoryFairground;
  *(inited + 208) = MKPointOfInterestCategoryFireStation;
  v96 = MKPointOfInterestCategoryFishing;
  *(inited + 216) = MKPointOfInterestCategoryFishing;
  *(inited + 224) = MKPointOfInterestCategoryFitnessCenter;
  v7 = MKPointOfInterestCategoryFortress;
  v101 = MKPointOfInterestCategoryFortress;
  *(inited + 232) = MKPointOfInterestCategoryFoodMarket;
  *(inited + 240) = v7;
  v8 = MKPointOfInterestCategoryGolf;
  v100 = MKPointOfInterestCategoryGolf;
  *(inited + 248) = MKPointOfInterestCategoryGasStation;
  *(inited + 256) = v8;
  v98 = MKPointOfInterestCategoryGoKart;
  v9 = MKPointOfInterestCategoryHiking;
  v103 = MKPointOfInterestCategoryHiking;
  *(inited + 264) = MKPointOfInterestCategoryGoKart;
  *(inited + 272) = v9;
  *(inited + 280) = MKPointOfInterestCategoryHospital;
  *(inited + 288) = MKPointOfInterestCategoryHotel;
  v99 = MKPointOfInterestCategoryKayaking;
  v10 = MKPointOfInterestCategoryLandmark;
  v105 = MKPointOfInterestCategoryLandmark;
  *(inited + 296) = MKPointOfInterestCategoryKayaking;
  *(inited + 304) = v10;
  *(inited + 312) = MKPointOfInterestCategoryLaundry;
  *(inited + 320) = MKPointOfInterestCategoryLibrary;
  v104 = MKPointOfInterestCategoryMailbox;
  *(inited + 328) = MKPointOfInterestCategoryMailbox;
  *(inited + 336) = MKPointOfInterestCategoryMarina;
  v102 = MKPointOfInterestCategoryMiniGolf;
  *(inited + 344) = MKPointOfInterestCategoryMiniGolf;
  *(inited + 352) = MKPointOfInterestCategoryMovieTheater;
  v11 = MKPointOfInterestCategoryMusicVenue;
  v107 = MKPointOfInterestCategoryMusicVenue;
  *(inited + 360) = MKPointOfInterestCategoryMuseum;
  *(inited + 368) = v11;
  v106 = MKPointOfInterestCategoryNationalMonument;
  *(inited + 376) = MKPointOfInterestCategoryNationalMonument;
  *(inited + 384) = MKPointOfInterestCategoryNationalPark;
  *(inited + 392) = MKPointOfInterestCategoryNightlife;
  *(inited + 400) = MKPointOfInterestCategoryPark;
  *(inited + 408) = MKPointOfInterestCategoryParking;
  *(inited + 416) = MKPointOfInterestCategoryPharmacy;
  v108 = MKPointOfInterestCategoryPlanetarium;
  *(inited + 424) = MKPointOfInterestCategoryPlanetarium;
  *(inited + 432) = MKPointOfInterestCategoryPolice;
  *(inited + 440) = MKPointOfInterestCategoryPostOffice;
  *(inited + 448) = MKPointOfInterestCategoryPublicTransport;
  *(inited + 456) = MKPointOfInterestCategoryRestaurant;
  *(inited + 464) = MKPointOfInterestCategoryRestroom;
  v109 = MKPointOfInterestCategoryRockClimbing;
  v12 = MKPointOfInterestCategoryRVPark;
  v112 = MKPointOfInterestCategoryRVPark;
  *(inited + 472) = MKPointOfInterestCategoryRockClimbing;
  *(inited + 480) = v12;
  v13 = MKPointOfInterestCategorySkatePark;
  v111 = MKPointOfInterestCategorySkatePark;
  *(inited + 488) = MKPointOfInterestCategorySchool;
  *(inited + 496) = v13;
  v110 = MKPointOfInterestCategorySkating;
  v14 = MKPointOfInterestCategorySkiing;
  v113 = MKPointOfInterestCategorySkiing;
  *(inited + 504) = MKPointOfInterestCategorySkating;
  *(inited + 512) = v14;
  v114 = MKPointOfInterestCategorySoccer;
  *(inited + 520) = MKPointOfInterestCategorySoccer;
  v115 = MKPointOfInterestCategorySpa;
  *(inited + 528) = MKPointOfInterestCategorySpa;
  *(inited + 536) = MKPointOfInterestCategoryStadium;
  *(inited + 544) = MKPointOfInterestCategoryStore;
  v116 = MKPointOfInterestCategorySurfing;
  *(inited + 552) = MKPointOfInterestCategorySurfing;
  v117 = MKPointOfInterestCategorySwimming;
  *(inited + 560) = MKPointOfInterestCategorySwimming;
  v118 = MKPointOfInterestCategoryTennis;
  *(inited + 568) = MKPointOfInterestCategoryTennis;
  *(inited + 576) = MKPointOfInterestCategoryTheater;
  *(inited + 584) = MKPointOfInterestCategoryUniversity;
  v119 = MKPointOfInterestCategoryVolleyball;
  *(inited + 592) = MKPointOfInterestCategoryVolleyball;
  *(inited + 600) = MKPointOfInterestCategoryWinery;
  *(inited + 608) = MKPointOfInterestCategoryZoo;
  v15 = v1;
  v16 = MKPointOfInterestCategoryAirport;
  v17 = MKPointOfInterestCategoryAmusementPark;
  v18 = MKPointOfInterestCategoryAquarium;
  v19 = MKPointOfInterestCategoryATM;
  v20 = v2;
  v21 = MKPointOfInterestCategoryBakery;
  v22 = MKPointOfInterestCategoryBank;
  v23 = v91;
  v24 = v4;
  v25 = MKPointOfInterestCategoryBeach;
  v26 = v90;
  v27 = v94;
  v28 = MKPointOfInterestCategoryBrewery;
  v29 = MKPointOfInterestCategoryCafe;
  v30 = MKPointOfInterestCategoryCampground;
  v31 = MKPointOfInterestCategoryCarRental;
  v32 = v92;
  v33 = v97;
  v34 = v95;
  v35 = MKPointOfInterestCategoryEVCharger;
  v36 = v93;
  v37 = MKPointOfInterestCategoryFireStation;
  v38 = v96;
  v39 = MKPointOfInterestCategoryFitnessCenter;
  v40 = MKPointOfInterestCategoryFoodMarket;
  v41 = v101;
  v42 = MKPointOfInterestCategoryGasStation;
  v43 = v100;
  v44 = v98;
  v45 = v103;
  v46 = MKPointOfInterestCategoryHospital;
  v47 = MKPointOfInterestCategoryHotel;
  v48 = v99;
  v49 = v105;
  v50 = MKPointOfInterestCategoryLaundry;
  v51 = MKPointOfInterestCategoryLibrary;
  v52 = v104;
  v53 = MKPointOfInterestCategoryMarina;
  v54 = v102;
  v55 = MKPointOfInterestCategoryMovieTheater;
  v56 = MKPointOfInterestCategoryMuseum;
  v57 = v107;
  v58 = v106;
  v59 = MKPointOfInterestCategoryNationalPark;
  v60 = MKPointOfInterestCategoryNightlife;
  v61 = MKPointOfInterestCategoryPark;
  v62 = MKPointOfInterestCategoryParking;
  v63 = MKPointOfInterestCategoryPharmacy;
  v64 = v108;
  v65 = MKPointOfInterestCategoryPolice;
  v66 = MKPointOfInterestCategoryPostOffice;
  v67 = MKPointOfInterestCategoryPublicTransport;
  v68 = MKPointOfInterestCategoryRestaurant;
  v69 = MKPointOfInterestCategoryRestroom;
  v70 = v109;
  v71 = v112;
  v72 = MKPointOfInterestCategorySchool;
  v73 = v111;
  v74 = v110;
  v75 = v113;
  v76 = v114;
  v77 = v115;
  v78 = MKPointOfInterestCategoryStadium;
  v79 = MKPointOfInterestCategoryStore;
  v80 = v116;
  v81 = v117;
  v82 = v118;
  v83 = MKPointOfInterestCategoryTheater;
  v84 = MKPointOfInterestCategoryUniversity;
  v85 = v119;
  v86 = MKPointOfInterestCategoryWinery;
  v87 = MKPointOfInterestCategoryZoo;
  v88 = sub_100890DB0(inited);
  swift_setDeallocating();
  type metadata accessor for MKPointOfInterestCategory(0);
  result = swift_arrayDestroy();
  qword_100AF6540 = v88;
  return result;
}

BOOL sub_100895B04(uint64_t a1, unint64_t a2)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      if (a2 != 2)
      {
        return 0;
      }
    }

    else
    {
      if (a1 != 3)
      {
        goto LABEL_10;
      }

      if (a2 != 3)
      {
        return 0;
      }
    }

    return 1;
  }

  if (!a1)
  {
    return !a2;
  }

  if (a1 == 1)
  {
    return a2 == 1;
  }

LABEL_10:
  if (a2 < 4)
  {
    return 0;
  }

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v7 & 1;
  }
}

__n128 sub_100895BFC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_100895C28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_100895C70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100895D08(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t sub_100895DD0@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.displayScale.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_100895E24@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ColorResource();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&qword_100AD0E38);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = v30 - v10;
  *v11 = static HorizontalAlignment.center.getter();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v12 = sub_1000F24EC(&qword_100AF6558);
  sub_100896278(v2, &v11[*(v12 + 44)]);
  KeyPath = swift_getKeyPath();
  v14 = &v11[*(sub_1000F24EC(&qword_100AF6560) + 36)];
  *v14 = KeyPath;
  v14[8] = 1;
  v15 = swift_getKeyPath();
  v16 = &v11[*(v9 + 44)];
  v17 = *(sub_1000F24EC(&qword_100AD20A8) + 28);
  v18 = enum case for ColorScheme.dark(_:);
  v19 = type metadata accessor for ColorScheme();
  (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
  *v16 = v15;
  sub_100021CEC(v11, a1, &qword_100AD0E38);
  *(a1 + *(sub_1000F24EC(&qword_100AD0E40) + 36)) = 261;
  v20 = swift_getKeyPath();
  v21 = a1 + *(sub_1000F24EC(&qword_100AF6568) + 36);
  *v21 = v20;
  *(v21 + 8) = 0;
  sub_1000F24EC(&qword_100AD3CA8);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100940050;
  if (qword_100AD0C98 != -1)
  {
    swift_once();
  }

  v23 = sub_10000617C(v4, qword_100B314D8);
  v24 = *(v5 + 16);
  v24(v7, v23, v4);
  *(v22 + 32) = Color.init(_:)();
  if (qword_100AD0C90 != -1)
  {
    swift_once();
  }

  v25 = sub_10000617C(v4, qword_100B314C0);
  v24(v7, v25, v4);
  *(v22 + 40) = Color.init(_:)();
  static UnitPoint.top.getter();
  static UnitPoint.bottom.getter();
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v26 = swift_getKeyPath();
  v30[0] = v33;
  v30[1] = v34;
  v31 = v35;
  v32 = 256;
  sub_1000F24EC(&qword_100ADB100);
  sub_10000B58C(&qword_100ADB108, &qword_100ADB100);
  v27 = AnyView.init<A>(_:)();
  result = sub_1000F24EC(&qword_100AF6570);
  v29 = (a1 + *(result + 36));
  *v29 = v26;
  v29[1] = v27;
  return result;
}

uint64_t sub_100896278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v171 = a2;
  v3 = type metadata accessor for IdentityTransition();
  v143 = *(v3 - 8);
  v144 = v3;
  __chkstk_darwin(v3);
  v141 = v140 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v142 = v140 - v6;
  v170 = sub_1000F24EC(&qword_100AF6578);
  __chkstk_darwin(v170);
  v145 = v140 - v7;
  v168 = sub_1000F24EC(&qword_100AF6580);
  __chkstk_darwin(v168);
  v9 = v140 - v8;
  v169 = sub_1000F24EC(&qword_100AF6588);
  __chkstk_darwin(v169);
  v158 = v140 - v10;
  v155 = sub_1000F24EC(&qword_100ADB0A0);
  __chkstk_darwin(v155);
  v167 = v140 - v11;
  v162 = sub_1000F24EC(&qword_100AF6590);
  __chkstk_darwin(v162);
  v163 = (v140 - v12);
  v13 = sub_1000F24EC(&qword_100AF6598);
  __chkstk_darwin(v13);
  v164 = v140 - v14;
  v154 = sub_1000F24EC(&qword_100AF65A0);
  v151 = *(v154 - 8);
  __chkstk_darwin(v154);
  v166 = v140 - v15;
  v153 = sub_1000F24EC(&qword_100AF65A8);
  v149 = *(v153 - 8);
  __chkstk_darwin(v153);
  v148 = v140 - v16;
  v146 = sub_1000F24EC(&qword_100AF65B0);
  __chkstk_darwin(v146);
  v152 = v140 - v17;
  v150 = sub_1000F24EC(&qword_100AF65B8);
  __chkstk_darwin(v150);
  v156 = v140 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v147 = v140 - v20;
  __chkstk_darwin(v21);
  v157 = v140 - v22;
  v23 = sub_1000F24EC(&qword_100ADB538);
  __chkstk_darwin(v23);
  v159 = v140 - v24;
  v25 = type metadata accessor for EnvironmentValues();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = v140 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = *(a1 + 40);
  v178 = a1;
  v205 = *(a1 + 24);
  v29 = v205;
  v30 = v206;
  v173 = HIBYTE(v206);
  v176 = v31;
  v177 = v205;
  v174 = v28;
  v175 = v26;
  v165 = v13;
  v161 = *(&v205 + 1);
  v160 = v206;
  if (HIBYTE(v206) == 1)
  {

    v33 = *(&v29 + 1);
    v32 = v29;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v34 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100004F84(&v205, &qword_100AE5ED8);
    (*(v26 + 8))(v28, v25);
    v33 = *(&v187 + 1);
    v32 = v187;
    v30 = v188;
  }

  *&v187 = v32;
  *(&v187 + 1) = v33;
  LOBYTE(v188) = v30;
  v172 = sub_1000F24EC(&qword_100ADB018);
  Binding.wrappedValue.getter();
  v35 = v193;

  if (v35 == 5 || sub_10089781C())
  {
    v140[0] = v9;
    LocalizedStringKey.init(stringLiteral:)();
    v36 = Text.init(_:tableName:bundle:comment:)();
    v141 = v37;
    v142 = v36;
    v39 = v38;
    v140[1] = v40;
    v41 = static HierarchicalShapeStyle.secondary.getter();
    v42 = v23;
    v43 = *(v23 + 36);
    v44 = enum case for BlendMode.plusDarker(_:);
    v45 = type metadata accessor for BlendMode();
    v46 = *(*(v45 - 8) + 104);
    v47 = v159;
    v46(&v159[v43], v44, v45);
    v46(&v47[*(v42 + 40)], enum case for BlendMode.plusLighter(_:), v45);
    *v47 = v41;
    sub_10000B58C(&qword_100ADB5B8, &qword_100ADB538);
    v49 = v141;
    v48 = v142;
    v50 = Text.foregroundStyle<A>(_:)();
    v143 = v51;
    v144 = v50;
    v53 = v52;
    v145 = v54;
    sub_1000594D0(v48, v49, v39 & 1);

    sub_100004F84(v47, &qword_100ADB538);
    if (v173)
    {
      v55 = v177;

      v56 = v161;

      v57 = v160;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v58 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v59 = v174;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100004F84(&v205, &qword_100AE5ED8);
      (*(v175 + 8))(v59, v176);
      v56 = *(&v187 + 1);
      v55 = v187;
      v57 = v188;
    }

    *&v187 = v55;
    *(&v187 + 1) = v56;
    LOBYTE(v188) = v57;
    Binding.wrappedValue.getter();
    v60 = v193;

    if (v60 == 5)
    {
      static Font.headline.getter();
      v61 = v178;
    }

    else
    {
      v61 = v178;
    }

    v62 = v53;
    v63 = v143;
    v64 = v144;
    v178 = Text.font(_:)();
    v66 = v65;
    v68 = v67;
    v70 = v69;

    sub_1000594D0(v64, v63, v62 & 1);

    v159 = *(v61 + 96);
    v71 = Namespace.wrappedValue.getter();
    v72 = static MatchedGeometryProperties.position.getter();
    static UnitPoint.leading.getter();
    v75 = v68 & 1;
    v199 = v75;
    if (qword_100ACFCE8 != -1)
    {
      v138 = v73;
      v139 = v74;
      swift_once();
      v74 = v139;
      v73 = v138;
    }

    *&v193 = v178;
    *(&v193 + 1) = v66;
    LOBYTE(v194) = v75;
    *(&v194 + 1) = v70;
    LOBYTE(v195) = 0;
    *(&v195 + 1) = v71;
    LODWORD(v196) = v72;
    *(&v196 + 1) = v73;
    *&v197 = v74;
    BYTE8(v197) = 1;
    *(&v197 + 9) = *v200;
    HIDWORD(v197) = *&v200[3];
    v198 = qword_100B2F870;
    v76 = *(v61 + 48);
    v204 = *(v61 + 56);
    v203 = v76;
    v77 = v204;
    v178 = qword_100B2F870;

    v79 = v174;
    v78 = v175;
    if (v77 == 1)
    {
      v80 = v76;
      v81 = v176;
    }

    else
    {
      sub_1000082B4(&v203, &v187, &qword_100AE5ED0);
      static os_log_type_t.fault.getter();
      v82 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100004F84(&v203, &qword_100AE5ED0);
      v81 = v176;
      (*(v78 + 8))(v79, v176);
      v80 = v187;
    }

    v83 = v163;
    v84 = v80 == 0;
    v85 = !v84;
    *v163 = 0x4010000000000000;
    *(v83 + 8) = 2 * v85;
    *(v83 + 16) = v84;
    if (*v61)
    {
      v86 = *v61;
    }

    else
    {
      v202 = *(v61 + 88);
      v87 = *(v61 + 80);
      v201 = v87;
      v88 = v202;

      if ((v88 & 1) == 0)
      {
        static os_log_type_t.fault.getter();
        v89 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_100004F84(&v201, &qword_100AE5F48);
        (*(v78 + 8))(v79, v81);
        v87 = v187;
      }

      swift_getKeyPath();
      *&v187 = v87;
      sub_10089BB54(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v86 = *(v87 + OBJC_IVAR____TtC7Journal19InsightsDataManager__places);
    }

    *&v185[0] = v86;
    v90 = swift_allocObject();
    v91 = *(v61 + 80);
    *(v90 + 80) = *(v61 + 64);
    *(v90 + 96) = v91;
    *(v90 + 112) = *(v61 + 96);
    *(v90 + 128) = *(v61 + 112);
    v92 = *(v61 + 16);
    *(v90 + 16) = *v61;
    *(v90 + 32) = v92;
    v93 = *(v61 + 48);
    *(v90 + 48) = *(v61 + 32);
    *(v90 + 64) = v93;
    sub_10089ABB4(v61, &v187);

    sub_1000F24EC(&qword_100AF65E8);
    sub_1000F24EC(&qword_100AF65F0);
    sub_10000B58C(&qword_100AF65F8, &qword_100AF65E8);
    sub_10000B58C(&qword_100AF6600, &qword_100AF65F0);
    sub_10089ABEC();
    ForEach<>.init(_:content:)();
    if (v173)
    {
      v94 = v177;

      v95 = v161;

      v96 = v166;
      v97 = v160;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v98 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v99 = v174;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100004F84(&v205, &qword_100AE5ED8);
      (*(v175 + 8))(v99, v176);
      v95 = *(&v187 + 1);
      v94 = v187;
      v97 = v188;
      v96 = v166;
    }

    *&v187 = v94;
    *(&v187 + 1) = v95;
    LOBYTE(v188) = v97;
    Binding.wrappedValue.getter();
    v100 = LOBYTE(v185[0]);

    v101 = v100 == 5;
    v102 = v164;
    sub_100021CEC(v83, v164, &qword_100AF6590);
    v103 = v165;
    *(v102 + *(v165 + 52)) = v101;
    *&v187 = static Font.body.getter();
    v104 = sub_10000B58C(&qword_100AF6610, &qword_100AF6598);
    v105 = sub_10089AC40();
    View.buttonStyle<A>(_:)();

    sub_100004F84(v102, &qword_100AF6598);
    v106 = enum case for DynamicTypeSize.xxxLarge(_:);
    v107 = type metadata accessor for DynamicTypeSize();
    v108 = v167;
    (*(*(v107 - 8) + 104))(v167, v106, v107);
    sub_10089BB54(&qword_100ADB0C8, &type metadata accessor for DynamicTypeSize);
    result = dispatch thunk of static Equatable.== infix(_:_:)();
    if (result)
    {
      *&v187 = v103;
      *(&v187 + 1) = &type metadata for InsightsVisitedPlacesView.ButtonStyle;
      *&v188 = v104;
      *(&v188 + 1) = v105;
      swift_getOpaqueTypeConformance2();
      sub_10000B58C(&qword_100ADB0F0, &qword_100ADB0A0);
      v110 = v148;
      v111 = v154;
      View.dynamicTypeSize<A>(_:)();
      sub_100004F84(v108, &qword_100ADB0A0);
      (*(v151 + 8))(v96, v111);
      v112 = Namespace.wrappedValue.getter();
      v113 = static MatchedGeometryProperties.position.getter();
      static UnitPoint.center.getter();
      v115 = v114;
      v117 = v116;
      v118 = v152;
      (*(v149 + 32))(v152, v110, v153);
      v119 = &v118[*(v146 + 36)];
      *v119 = 1;
      *(v119 + 1) = v112;
      *(v119 + 4) = v113;
      *(v119 + 3) = v115;
      *(v119 + 4) = v117;
      v119[40] = 1;
      static UnitPoint.center.getter();
      static AnyTransition.scale(scale:anchor:)();
      v120 = AnyTransition.combined(with:)();

      v121 = v118;
      v122 = v147;
      sub_100021CEC(v121, v147, &qword_100AF65B0);
      *(v122 + *(v150 + 36)) = v120;
      v123 = v157;
      sub_100021CEC(v122, v157, &qword_100AF65B8);
      v181 = v195;
      v182 = v196;
      v183 = v197;
      v184 = v198;
      v179 = v193;
      v180 = v194;
      v124 = v156;
      sub_1000082B4(v123, v156, &qword_100AF65B8);
      v125 = v182;
      v185[2] = v181;
      v185[3] = v182;
      v126 = v183;
      v185[4] = v183;
      v127 = v184;
      v186 = v184;
      v128 = v179;
      v129 = v180;
      v185[0] = v179;
      v185[1] = v180;
      v130 = v158;
      *(v158 + 2) = v181;
      *(v130 + 48) = v125;
      *(v130 + 64) = v126;
      *v130 = v128;
      *(v130 + 16) = v129;
      *(v130 + 80) = v127;
      *(v130 + 88) = 0x4010000000000000;
      *(v130 + 96) = 0;
      v131 = sub_1000F24EC(&qword_100AF6620);
      sub_1000082B4(v124, v130 + *(v131 + 64), &qword_100AF65B8);
      v132 = v130 + *(v131 + 80);
      *v132 = 0x4010000000000000;
      *(v132 + 8) = 0;
      sub_1000082B4(&v193, &v187, &qword_100AF6628);
      sub_1000082B4(v185, &v187, &qword_100AF6628);
      sub_100004F84(v124, &qword_100AF65B8);
      v189 = v181;
      v190 = v182;
      v191 = v183;
      v192 = v184;
      v187 = v179;
      v188 = v180;
      sub_100004F84(&v187, &qword_100AF6628);
      sub_1000082B4(v130, v140[0], &qword_100AF6588);
      swift_storeEnumTagMultiPayload();
      sub_10000B58C(&qword_100AF65C8, &qword_100AF6588);
      sub_10089AAC8();
      _ConditionalContent<>.init(storage:)();
      sub_100004F84(&v193, &qword_100AF6628);
      sub_100004F84(v130, &qword_100AF6588);
      return sub_100004F84(v123, &qword_100AF65B8);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v133 = v145;
    sub_100898528(v145);
    v134 = v142;
    IdentityTransition.init()();
    v136 = v143;
    v135 = v144;
    (*(v143 + 16))(v141, v134, v144);
    sub_10089BB54(&qword_100AF65C0, &type metadata accessor for IdentityTransition);
    v137 = AnyTransition.init<A>(_:)();
    (*(v136 + 8))(v134, v135);
    *(v133 + *(v170 + 36)) = v137;
    sub_1000082B4(v133, v9, &qword_100AF6578);
    swift_storeEnumTagMultiPayload();
    sub_10000B58C(&qword_100AF65C8, &qword_100AF6588);
    sub_10089AAC8();
    _ConditionalContent<>.init(storage:)();
    return sub_100004F84(v133, &qword_100AF6578);
  }

  return result;
}

BOOL sub_10089781C()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v0 + 56);
  v5 = *(v0 + 48);
  v27 = v5;
  if (v28 != 1)
  {

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100004F84(&v27, &qword_100AE5ED0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v25;
  }

  if (v5 < 2u)
  {
    return 0;
  }

  if (v5 != 2)
  {
    return 1;
  }

  v26 = *(v0 + 40);
  v25 = *(v0 + 24);
  v9 = *(&v25 + 1);
  v8 = v25;
  v10 = v26;
  v11 = HIBYTE(v26);
  v20 = v26;
  if (HIBYTE(v26) == 1)
  {

    v12 = v8;
    v13 = v10;
    v14 = v9;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100004F84(&v25, &qword_100AE5ED8);
    (*(v2 + 8))(v4, v1);
    v12 = v22;
    v14 = v23;
    v13 = v24;
  }

  v22 = v12;
  v23 = v14;
  v24 = v13;
  sub_1000F24EC(&qword_100ADB018);
  Binding.wrappedValue.getter();
  v16 = v21;

  if (v16 == 4)
  {
    return 0;
  }

  if (v11)
  {

    v17 = v20;
  }

  else
  {
    static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100004F84(&v25, &qword_100AE5ED8);
    (*(v2 + 8))(v4, v1);
    v8 = v22;
    v9 = v23;
    v17 = v24;
  }

  v22 = v8;
  v23 = v9;
  v24 = v17;
  Binding.wrappedValue.getter();
  v19 = v21;

  return v19 != 6;
}

uint64_t sub_100897BB8(__int128 *a1, uint64_t a2)
{
  v4 = a1[1];
  v15 = *a1;
  v16 = v4;
  v17 = *(a1 + 4);
  v5 = v17;
  v18 = v15;
  v19 = *(&v4 + 1);
  v6 = swift_allocObject();
  v7 = *(a2 + 80);
  *(v6 + 80) = *(a2 + 64);
  *(v6 + 96) = v7;
  *(v6 + 112) = *(a2 + 96);
  *(v6 + 128) = *(a2 + 112);
  v8 = *(a2 + 16);
  *(v6 + 16) = *a2;
  *(v6 + 32) = v8;
  v9 = *(a2 + 48);
  *(v6 + 48) = *(a2 + 32);
  *(v6 + 64) = v9;
  v10 = *a1;
  v11 = a1[1];
  *(v6 + 168) = *(a1 + 4);
  *(v6 + 152) = v11;
  *(v6 + 136) = v10;
  sub_10089ABB4(a2, v14);
  sub_10089ACCC(&v18, v14);
  sub_1000082B4(&v19, v14, &qword_100AD3760);
  v12 = v5;
  sub_1000F24EC(&qword_100AF6630);
  sub_10000B58C(&qword_100AF6638, &qword_100AF6630);
  return Button.init(action:label:)();
}

uint64_t sub_100897D30()
{
  sub_1000F24EC(&qword_100AD4038);
  sub_1000F24EC(&qword_100AF6640);
  sub_10000B58C(&qword_100AD4040, &qword_100AD4038);
  sub_10000B58C(&qword_100AF6648, &qword_100AF6640);
  return Label.init(title:icon:)();
}

uint64_t sub_100897E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NumberFormatStyleConfiguration.Notation();
  v36 = *(v4 - 8);
  v37 = v4;
  __chkstk_darwin(v4);
  v6 = &v33[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1000F24EC(&qword_100AD1ED0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v33[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v35 = &v33[-v12];
  v13 = type metadata accessor for Locale();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v14 - 8);
  v15 = sub_1000A0F34(*a1);
  if (!v16)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v15 = String.init(localized:table:bundle:locale:comment:)();
  }

  v40 = v15;
  v41 = v16;
  sub_1000777B4();
  v17 = Text.init<A>(_:)();
  v19 = v18;
  v34 = v20;
  v22 = v21;
  if (*(a1 + 16) == 1)
  {
    v23 = *(a1 + 24);
    if ((v23 & 0xC000000000000001) != 0)
    {
      v24 = __CocoaSet.count.getter();
    }

    else
    {
      v24 = *(v23 + 16);
    }
  }

  else
  {
    v24 = *(a1 + 8);
  }

  v40 = v24;
  static Locale.autoupdatingCurrent.getter();
  sub_1000F6568();
  IntegerFormatStyle.init(locale:)();
  static NumberFormatStyleConfiguration.Notation.compactName.getter();
  IntegerFormatStyle.notation(_:)();
  (*(v36 + 8))(v6, v37);
  (*(v8 + 8))(v10, v7);
  sub_10000B58C(&qword_100AD2250, &qword_100AD1ED0);
  v25 = Text.init<A>(_:format:)();
  v27 = v26;
  v28 = v34 & 1;
  v38 = v34 & 1;
  LOBYTE(v40) = v34 & 1;
  v30 = v29 & 1;
  v39 = v29 & 1;
  *a2 = v17;
  *(a2 + 8) = v19;
  *(a2 + 16) = v28;
  *(a2 + 24) = v22;
  *(a2 + 32) = v25;
  *(a2 + 40) = v26;
  *(a2 + 48) = v29 & 1;
  *(a2 + 56) = v31;
  sub_1000F24DC(v17, v19, v28);

  sub_1000F24DC(v25, v27, v30);

  sub_1000594D0(v25, v27, v30);

  sub_1000594D0(v17, v19, v38);
}

uint64_t sub_100898254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1000F24EC(&qword_100AF6650);
  __chkstk_darwin(v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v21 - v10;
  v12 = *(a1 + 32);
  v13 = *(a2 + 112);
  *a3 = v12;
  a3[1] = v13;
  a3[2] = sub_100898414;
  a3[3] = 0;
  v14 = sub_1000F24EC(&qword_100AF6640);
  v15 = enum case for AsyncImagePhase.empty(_:);
  v16 = type metadata accessor for AsyncImagePhase();
  (*(*(v16 - 8) + 104))(v11, v15, v16);
  *&v11[*(v6 + 36)] = 0;
  v17 = &v11[*(v6 + 40)];
  *v17 = 0;
  v17[8] = 1;
  sub_1000082B4(v11, v8, &qword_100AF6650);
  v18 = v12;
  State.init(wrappedValue:)();
  sub_100004F84(v11, &qword_100AF6650);
  v19 = a3 + *(v14 + 48);
  result = swift_getKeyPath();
  *v19 = result;
  v19[8] = 0;
  return result;
}

uint64_t sub_100898414@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v2, v4);
  v7 = Image.resizable(capInsets:resizingMode:)();
  result = (*(v3 + 8))(v6, v2);
  *a1 = v7;
  return result;
}

uint64_t sub_100898528@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v118 = a1;
  v122 = type metadata accessor for Font.TextStyle();
  v125 = *(v122 - 8);
  __chkstk_darwin(v122);
  v126 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for AttributedString.FormattingOptions();
  __chkstk_darwin(v105);
  v120 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&qword_100AD1350);
  __chkstk_darwin(v5 - 8);
  v119 = &v94 - v6;
  v112 = type metadata accessor for NumberFormatStyleConfiguration.Notation();
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v109 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_1000F24EC(&qword_100AD1ED0);
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v108 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v110 = &v94 - v10;
  v11 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v11 - 8);
  v129 = type metadata accessor for AttributedString();
  v123 = *(v129 - 8);
  __chkstk_darwin(v129);
  v121 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1000F24EC(&qword_100AF6650);
  __chkstk_darwin(v102);
  v100 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v94 - v15;
  v99 = sub_1000F24EC(&qword_100AF6640);
  __chkstk_darwin(v99);
  v18 = (&v94 - v17);
  v103 = sub_1000F24EC(&qword_100AF6658);
  v115 = *(v103 - 8);
  __chkstk_darwin(v103);
  v117 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = v19;
  __chkstk_darwin(v20);
  v128 = &v94 - v21;
  v107 = type metadata accessor for Locale();
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v127 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v23 - 8);
  v25 = (&v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = type metadata accessor for EnvironmentValues();
  v101 = *(v26 - 8);
  __chkstk_darwin(v26);
  v96 = &v94 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v1)
  {
    v28 = *v1;
  }

  else
  {
    v138 = *(v1 + 88);
    v29 = v1[10];
    v137 = v29;
    v30 = v138;

    if ((v30 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v31 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v32 = v96;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100004F84(&v137, &qword_100AE5F48);
      v101[1](v32, v26);
      v29 = v135;
    }

    swift_getKeyPath();
    v135 = v29;
    sub_10089BB54(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v28 = *(v29 + OBJC_IVAR____TtC7Journal19InsightsDataManager__places);
  }

  v95 = v26;
  if (*(v28 + 16))
  {
    v34 = *(v28 + 32);
    v33 = *(v28 + 40);
    v131 = *(v28 + 48);
    v132 = v33;
    v36 = *(v28 + 56);
    v35 = *(v28 + 64);

    sub_10025A7B0(v34);
    v133 = v36;

    v37 = v35;

    sub_10025A7B0(v34);
    v130 = v34;
  }

  else
  {

    v130 = 0;
    v131 = 0;
    v132 = 0;
    v133 = 0;
    v37 = 0;
    v34 = 4;
  }

  v38 = sub_1008AD8BC(v34);
  v40 = v39;
  sub_1003A98C8(v34);
  if (v40)
  {
    v97 = v40;
    v41 = v133;
    if (!v133)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v38 = String.init(localized:table:bundle:locale:comment:)();
  v97 = v62;
  v41 = v133;
  if (v133)
  {
LABEL_11:
    v42 = v130;
    sub_10089AE6C(v130, v132, v131, v41, v37);
    v43 = v37;
    sub_10025A7E8(v42);

    v41 = v37;
  }

LABEL_12:
  v136 = *(v2 + 72);
  v44 = v2[8];
  v135 = v44;
  v124 = v2;
  v98 = v38;
  if (v136 != 1)
  {

    static os_log_type_t.fault.getter();
    v45 = v37;
    v46 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v37 = v45;
    v47 = v96;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100004F84(&v135, &qword_100AD2650);
    v101[1](v47, v95);
    LOBYTE(v44) = v134;
  }

  v101 = v25;
  v48 = 3;
  if (v44)
  {
    v48 = 4;
  }

  *v18 = v41;
  v18[1] = v48;
  v18[2] = sub_10052F930;
  v18[3] = 0;
  v49 = v99;
  v50 = enum case for AsyncImagePhase.empty(_:);
  v51 = type metadata accessor for AsyncImagePhase();
  (*(*(v51 - 8) + 104))(v16, v50, v51);
  v52 = v102;
  *&v16[*(v102 + 36)] = 0;
  v53 = &v16[*(v52 + 40)];
  *v53 = 0;
  v53[8] = 1;
  sub_1000082B4(v16, v100, &qword_100AF6650);
  State.init(wrappedValue:)();
  sub_100004F84(v16, &qword_100AF6650);
  v54 = v18 + *(v49 + 48);
  *v54 = swift_getKeyPath();
  v54[8] = 0;
  if (qword_100ACFCE8 != -1)
  {
    swift_once();
  }

  static UnitPoint.center.getter();
  static AnyTransition.scale(scale:anchor:)();
  v55 = AnyTransition.combined(with:)();

  v56 = v128;
  sub_100021CEC(v18, v128, &qword_100AF6640);
  *(v56 + *(v103 + 36)) = v55;
  v57 = v133;
  v58 = v98;
  v104 = v37;
  if (v133)
  {

    v59 = v37;
    v60 = v130;
    sub_10025A7B0(v130);
    sub_10025A7E8(v60);

    v61 = v132;
    if (v131)
    {
      if ((v57 & 0xC000000000000001) != 0)
      {
        v61 = __CocoaSet.count.getter();
      }

      else
      {
        v61 = *(v57 + 16);
      }
    }
  }

  else
  {
    v61 = 0;
  }

  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v63._countAndFlagsBits = 0x2064657469736956;
  v63._object = 0xEA00000000002A2ALL;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v63);
  v64._countAndFlagsBits = v58;
  v64._object = v97;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v64);

  v65._countAndFlagsBits = 2107946;
  v65._object = 0xE300000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v65);
  v134 = v61;
  static Locale.autoupdatingCurrent.getter();
  sub_1000F6568();
  v66 = v108;
  IntegerFormatStyle.init(locale:)();
  v67 = v109;
  static NumberFormatStyleConfiguration.Notation.compactName.getter();
  v68 = v110;
  v69 = v114;
  IntegerFormatStyle.notation(_:)();
  (*(v111 + 8))(v67, v112);
  v133 = v57;
  v70 = *(v113 + 8);
  v70(v66, v69);
  sub_10000B58C(&qword_100AD2250, &qword_100AD1ED0);
  sub_1000777B4();
  String.LocalizationValue.StringInterpolation.appendInterpolation<A, B>(_:format:)();
  v70(v68, v69);
  v71._countAndFlagsBits = 10272;
  v71._object = 0xE200000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v71);
  v134 = v61;
  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v72._countAndFlagsBits = 0x73656D69742029;
  v72._object = 0xE700000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v72);
  String.LocalizationValue.init(stringInterpolation:)();
  (*(v106 + 56))(v119, 1, 1, v107);
  v134 = _swiftEmptyArrayStorage;
  sub_10089BB54(&qword_100AD1358, &type metadata accessor for AttributedString.FormattingOptions);
  sub_1000F24EC(&qword_100AD1360);
  sub_10000B58C(&qword_100AD1368, &qword_100AD1360);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v73 = v121;
  AttributedString.init(localized:options:table:bundle:locale:comment:)();
  v74 = v123;
  v75 = v118;
  (*(v123 + 16))(v118, v73, v129);
  v76 = Namespace.wrappedValue.getter();
  static UnitPoint.leading.getter();
  v78 = v77;
  v80 = v79;
  v81 = v128;
  v82 = v117;
  sub_1000082B4(v128, v117, &qword_100AF6658);
  v83 = (*(v115 + 80) + 16) & ~*(v115 + 80);
  v84 = swift_allocObject();
  sub_100021CEC(v82, v84 + v83, &qword_100AF6658);
  v85 = sub_1000F24EC(&qword_100AF65E0);
  *(v75 + v85[9]) = 0;
  *(v75 + v85[10]) = v76;
  v86 = (v75 + v85[11]);
  *v86 = v78;
  v86[1] = v80;
  v87 = (v75 + v85[12]);
  *v87 = sub_10089AD9C;
  v87[1] = v84;
  v88 = v75 + v85[13];
  *v88 = swift_getKeyPath();
  *(v88 + 8) = 0;
  v89 = v75 + v85[14];
  *v89 = swift_getKeyPath();
  *(v89 + 8) = 0;
  *(v75 + v85[15]) = 0;
  v90 = v85[16];
  *(v75 + v90) = static Font.subheadline.getter();
  v134 = 0x4046000000000000;
  (*(v125 + 104))(v126, enum case for Font.TextStyle.subheadline(_:), v122);
  sub_10009BA68();
  ScaledMetric.init(wrappedValue:relativeTo:)();
  *(v75 + v85[18]) = 0xBFF8000000000000;
  *(v75 + v85[19]) = 0x404A000000000000;
  v91 = v85[20];
  v92 = static Font.subheadline.getter();
  sub_10089AE24(v130, v132, v131, v133, v104);
  (*(v74 + 8))(v73, v129);
  result = sub_100004F84(v81, &qword_100AF6658);
  *(v75 + v91) = v92;
  *(v75 + v85[21]) = 0x4054000000000000;
  *(v75 + v85[22]) = 0xC002666666666666;
  return result;
}

uint64_t sub_1008996AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v105 = a3;
  v97 = sub_1000F24EC(&qword_100ADB0A0);
  __chkstk_darwin(v97);
  v115 = &v87[-v5];
  v114 = type metadata accessor for InsightsVisitedPlacesView.LabelStyle();
  __chkstk_darwin(v114);
  v112 = &v87[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for ColorResource();
  v108 = *(v7 - 8);
  v109 = v7;
  __chkstk_darwin(v7);
  v107 = &v87[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1000F24EC(&qword_100AF6668);
  __chkstk_darwin(v9);
  v11 = &v87[-v10];
  v94 = sub_1000F24EC(&qword_100AF6670);
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v111 = &v87[-v12];
  v95 = sub_1000F24EC(&qword_100AF6678);
  __chkstk_darwin(v95);
  v99 = &v87[-v13];
  v98 = sub_1000F24EC(&qword_100AF6680);
  __chkstk_darwin(v98);
  v100 = &v87[-v14];
  v96 = sub_1000F24EC(&qword_100AF6688);
  __chkstk_darwin(v96);
  v103 = &v87[-v15];
  v101 = sub_1000F24EC(&qword_100AF6690);
  __chkstk_darwin(v101);
  v102 = &v87[-v16];
  v104 = a1;
  ButtonStyleConfiguration.label.getter();
  KeyPath = swift_getKeyPath();
  v18 = &v11[*(sub_1000F24EC(&qword_100AF6698) + 36)];
  *v18 = KeyPath;
  *(v18 + 1) = 1;
  v18[16] = 0;
  v19 = swift_getKeyPath();
  v20 = &v11[*(sub_1000F24EC(&qword_100AF66A0) + 36)];
  *v20 = v19;
  v20[1] = a2;

  v106 = static HierarchicalShapeStyle.primary.getter();
  v21 = static HierarchicalShapeStyle.secondary.getter();
  v113 = v9;
  v22 = *(v9 + 36);
  v110 = v11;
  v23 = &v11[v22];
  v24 = sub_1000F24EC(&qword_100AF66A8);
  v25 = v23 + *(v24 + 68);
  v26 = sub_1000F24EC(&qword_100ADB538);
  v27 = *(v26 + 36);
  v28 = enum case for BlendMode.plusDarker(_:);
  v29 = type metadata accessor for BlendMode();
  v30 = *(v29 - 8);
  v31 = *(v30 + 104);
  v32 = v30 + 104;
  v92 = v28;
  v31(&v25[v27], v28, v29);
  v33 = &v25[*(v26 + 40)];
  v88 = enum case for BlendMode.plusLighter(_:);
  v89 = v29;
  v91 = v31;
  v90 = v32;
  (v31)(v33);
  *v25 = v21;
  if (qword_100AD0C70 != -1)
  {
    swift_once();
  }

  v34 = v109;
  v35 = sub_10000617C(v109, qword_100B31460);
  (*(v108 + 16))(v107, v35, v34);
  v36 = Color.init(_:)();
  *v23 = v106;
  *(v23 + *(v24 + 72)) = v36;
  v116 = 0x403E000000000000;
  sub_10009BA68();
  v37 = v112;
  ScaledMetric.init(wrappedValue:)();
  v38 = sub_10089AF0C();
  v39 = sub_10089BB54(&qword_100AF66D8, type metadata accessor for InsightsVisitedPlacesView.LabelStyle);
  v40 = v110;
  v41 = v111;
  v43 = v113;
  v42 = v114;
  View.labelStyle<A>(_:)();
  sub_10089B164(v37);
  sub_100004F84(v40, &qword_100AF6668);
  v44 = enum case for DynamicTypeSize.xxxLarge(_:);
  v45 = type metadata accessor for DynamicTypeSize();
  v46 = v115;
  (*(*(v45 - 8) + 104))(v115, v44, v45);
  sub_10089BB54(&qword_100ADB0C8, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v116 = v43;
    v117 = v42;
    v118 = v38;
    v119 = v39;
    swift_getOpaqueTypeConformance2();
    sub_10000B58C(&qword_100ADB0F0, &qword_100ADB0A0);
    v48 = v41;
    v49 = v99;
    v50 = v94;
    View.dynamicTypeSize<A>(_:)();
    sub_100004F84(v46, &qword_100ADB0A0);
    (*(v93 + 8))(v48, v50);
    v51 = static Edge.Set.leading.getter();
    EdgeInsets.init(_all:)();
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v60 = v49 + *(sub_1000F24EC(&qword_100AF66E0) + 36);
    *v60 = v51;
    *(v60 + 8) = v53;
    *(v60 + 16) = v55;
    *(v60 + 24) = v57;
    *(v60 + 32) = v59;
    *(v60 + 40) = 0;
    v61 = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v69 = v68;
    v70 = v49 + *(sub_1000F24EC(&qword_100AF66E8) + 36);
    *v70 = v61;
    *(v70 + 8) = v63;
    *(v70 + 16) = v65;
    *(v70 + 24) = v67;
    *(v70 + 32) = v69;
    *(v70 + 40) = 0;
    v71 = (v49 + *(v95 + 36));
    v72 = sub_1000F24EC(&qword_100AF50F0);
    v73 = v89;
    v74 = v91;
    v91(&v71[*(v72 + 36)], v92, v89);
    v74(&v71[*(v72 + 40)], v88, v73);
    *v71 = 3;
    v75 = sub_1000F24EC(&qword_100AF66F0);
    v76 = *(v75 + 52);
    v77 = enum case for RoundedCornerStyle.continuous(_:);
    LODWORD(v114) = enum case for RoundedCornerStyle.continuous(_:);
    v113 = type metadata accessor for RoundedCornerStyle();
    v78 = *(v113 - 8);
    v112 = *(v78 + 104);
    v115 = (v78 + 104);
    v112(&v71[v76], v77, v113);
    *&v71[*(v75 + 56)] = 256;
    if (ButtonStyleConfiguration.isPressed.getter())
    {
      v79 = 0.75;
    }

    else
    {
      v79 = 1.0;
    }

    v80 = v100;
    sub_100021CEC(v49, v100, &qword_100AF6678);
    *&v80[*(v98 + 36)] = v79;
    v81 = v103;
    v82 = &v103[*(v96 + 36)];
    sub_1000F24EC(&qword_100AF49D8);
    static ContentShapeKinds.interaction.getter();
    *v82 = 0;
    sub_100021CEC(v80, v81, &qword_100AF6680);
    sub_1000F24EC(&qword_100AF5130);
    type metadata accessor for ContentShapeKinds();
    v83 = swift_allocObject();
    *(v83 + 16) = xmmword_100940050;
    static ContentShapeKinds.hoverEffect.getter();
    static ContentShapeKinds.accessibility.getter();
    v116 = v83;
    v84 = v102;
    v85 = &v102[*(v101 + 36)];
    v86 = sub_1000F24EC(&qword_100AF66F8);
    sub_10089BB54(&qword_100AF5148, &type metadata accessor for ContentShapeKinds);
    sub_1000F24EC(&qword_100AF5150);
    sub_10000B58C(&qword_100AF5158, &qword_100AF5150);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v112(v85, v114, v113);
    v85[*(v86 + 36)] = 0;
    sub_100021CEC(v81, v84, &qword_100AF6688);
    return sub_100021CEC(v84, v105, &qword_100AF6690);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10089A2D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a1;
  v29 = a2;
  v27 = type metadata accessor for LabelStyleConfiguration.Title();
  __chkstk_darwin(v27);
  v2 = sub_1000F24EC(&qword_100AF6818);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v28 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v26 - v6;
  v8 = sub_1000F24EC(&qword_100AF6820);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v26 - v13;
  LabelStyleConfiguration.icon.getter();
  sub_1000F24EC(&qword_100AD7DC8);
  ScaledMetric.wrappedValue.getter();
  ScaledMetric.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v15 = &v14[*(sub_1000F24EC(&qword_100AF6828) + 36)];
  v16 = v31;
  *v15 = v30;
  *(v15 + 1) = v16;
  *(v15 + 2) = v32;
  *&v14[*(v9 + 44)] = static HierarchicalShapeStyle.secondary.getter();
  *v7 = static VerticalAlignment.firstTextBaseline.getter();
  *(v7 + 1) = 0x4018000000000000;
  v7[16] = 0;
  sub_1000F24EC(&qword_100AF6830);
  LabelStyleConfiguration.title.getter();
  sub_1000F24EC(&qword_100AF6838);
  sub_10089BB54(&qword_100AF6840, &type metadata accessor for LabelStyleConfiguration.Title);
  sub_10000B58C(&qword_100AF6848, &qword_100AF6838);
  Group.init<A, B>(subviews:transform:)();
  LOBYTE(v9) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v17 = &v7[*(v3 + 44)];
  *v17 = v9;
  *(v17 + 1) = v18;
  *(v17 + 2) = v19;
  *(v17 + 3) = v20;
  *(v17 + 4) = v21;
  v17[40] = 0;
  sub_1000082B4(v14, v11, &qword_100AF6820);
  v22 = v28;
  sub_1000082B4(v7, v28, &qword_100AF6818);
  v23 = v29;
  sub_1000082B4(v11, v29, &qword_100AF6820);
  v24 = sub_1000F24EC(&qword_100AF6850);
  sub_1000082B4(v22, v23 + *(v24 + 48), &qword_100AF6818);
  sub_100004F84(v7, &qword_100AF6818);
  sub_100004F84(v14, &qword_100AF6820);
  sub_100004F84(v22, &qword_100AF6818);
  return sub_100004F84(v11, &qword_100AF6820);
}

uint64_t sub_10089A6DC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v32 = a2;
  v3 = type metadata accessor for SubviewsCollection();
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v28 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&qword_100AF6858);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v29 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v11 = sub_1000F24EC(&qword_100AD2730);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  v14 = sub_1000F24EC(&qword_100AF6860);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v27 - v19;
  sub_100603AAC(v13);
  sub_10089BB9C();
  View.bold(_:)();
  sub_100004F84(v13, &qword_100AD2730);
  (*(v30 + 16))(v28, a1, v31);
  sub_1007A7208(1);
  *&v10[*(v6 + 44)] = static HierarchicalShapeStyle.tertiary.getter();
  v21 = *(v15 + 16);
  v21(v17, v20, v14);
  v22 = v29;
  sub_1000082B4(v10, v29, &qword_100AF6858);
  v23 = v32;
  v21(v32, v17, v14);
  v24 = sub_1000F24EC(&qword_100AF6870);
  sub_1000082B4(v22, &v23[*(v24 + 48)], &qword_100AF6858);
  sub_100004F84(v10, &qword_100AF6858);
  v25 = *(v15 + 8);
  v25(v20, v14);
  sub_100004F84(v22, &qword_100AF6858);
  return (v25)(v17, v14);
}

uint64_t sub_10089AA68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_1000F24EC(&qword_100AF6810);
  return sub_10089A2D4(a1, a2 + *(v4 + 44));
}

unint64_t sub_10089AAC8()
{
  result = qword_100AF65D0;
  if (!qword_100AF65D0)
  {
    sub_1000F2A18(&qword_100AF6578);
    sub_10000B58C(&qword_100AF65D8, &qword_100AF65E0);
    sub_10000B58C(&qword_100ADB248, &qword_100ADB250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF65D0);
  }

  return result;
}

unint64_t sub_10089ABEC()
{
  result = qword_100AF6608;
  if (!qword_100AF6608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6608);
  }

  return result;
}

unint64_t sub_10089AC40()
{
  result = qword_100AF6618;
  if (!qword_100AF6618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6618);
  }

  return result;
}

uint64_t sub_10089AD38@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

void *sub_10089AE24(void *result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a4)
  {
    sub_10025A7E8(result);
  }

  return result;
}

id sub_10089AE6C(id result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a4)
  {
    sub_10025A7B0(result);

    return a5;
  }

  return result;
}

uint64_t type metadata accessor for InsightsVisitedPlacesView.LabelStyle()
{
  result = qword_100AF6758;
  if (!qword_100AF6758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10089AF0C()
{
  result = qword_100AF66B0;
  if (!qword_100AF66B0)
  {
    sub_1000F2A18(&qword_100AF6668);
    sub_10089AFC4();
    sub_10000B58C(&qword_100AF66D0, &qword_100AF66A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF66B0);
  }

  return result;
}

unint64_t sub_10089AFC4()
{
  result = qword_100AF66B8;
  if (!qword_100AF66B8)
  {
    sub_1000F2A18(&qword_100AF66A0);
    sub_10089B07C();
    sub_10000B58C(&qword_100AD2760, &unk_100AE16A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF66B8);
  }

  return result;
}

unint64_t sub_10089B07C()
{
  result = qword_100AF66C0;
  if (!qword_100AF66C0)
  {
    sub_1000F2A18(&qword_100AF6698);
    sub_10089BB54(&qword_100AF66C8, &type metadata accessor for ButtonStyleConfiguration.Label);
    sub_10000B58C(&qword_100ADB598, &qword_100ADB5A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF66C0);
  }

  return result;
}

uint64_t sub_10089B164(uint64_t a1)
{
  v2 = type metadata accessor for InsightsVisitedPlacesView.LabelStyle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10089B1E8()
{
  sub_1001E6300();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_10089B254()
{
  result = qword_100AF6790;
  if (!qword_100AF6790)
  {
    sub_1000F2A18(&qword_100AF6570);
    sub_10089B30C();
    sub_10000B58C(&qword_100ADB138, &qword_100ADB140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6790);
  }

  return result;
}

unint64_t sub_10089B30C()
{
  result = qword_100AF6798;
  if (!qword_100AF6798)
  {
    sub_1000F2A18(&qword_100AF6568);
    sub_1000F2A18(&qword_100AD0E38);
    sub_10089B41C();
    sub_100280BD0();
    swift_getOpaqueTypeConformance2();
    sub_10000B58C(&qword_100AE5EC0, &qword_100AE5EC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6798);
  }

  return result;
}

unint64_t sub_10089B41C()
{
  result = qword_100AF67A0;
  if (!qword_100AF67A0)
  {
    sub_1000F2A18(&qword_100AD0E38);
    sub_10089B4D4();
    sub_10000B58C(&qword_100AD2108, &qword_100AD20A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF67A0);
  }

  return result;
}

unint64_t sub_10089B4D4()
{
  result = qword_100AF67A8;
  if (!qword_100AF67A8)
  {
    sub_1000F2A18(&qword_100AF6560);
    sub_10000B58C(&qword_100AF67B0, &qword_100AF67B8);
    sub_10000B58C(&qword_100AD2428, &qword_100AD2430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF67A8);
  }

  return result;
}

unint64_t sub_10089B5B8()
{
  result = qword_100AF67C0;
  if (!qword_100AF67C0)
  {
    sub_1000F2A18(&qword_100AF67C8);
    sub_10089B644();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF67C0);
  }

  return result;
}

unint64_t sub_10089B644()
{
  result = qword_100AF67D0;
  if (!qword_100AF67D0)
  {
    sub_1000F2A18(&qword_100AF6690);
    sub_10089B6FC();
    sub_10000B58C(&qword_100AF6808, &qword_100AF66F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF67D0);
  }

  return result;
}

unint64_t sub_10089B6FC()
{
  result = qword_100AF67D8;
  if (!qword_100AF67D8)
  {
    sub_1000F2A18(&qword_100AF6688);
    sub_10089B7B4();
    sub_10000B58C(&qword_100AF4A38, &qword_100AF49D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF67D8);
  }

  return result;
}

unint64_t sub_10089B7B4()
{
  result = qword_100AF67E0;
  if (!qword_100AF67E0)
  {
    sub_1000F2A18(&qword_100AF6680);
    sub_10089B840();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF67E0);
  }

  return result;
}

unint64_t sub_10089B840()
{
  result = qword_100AF67E8;
  if (!qword_100AF67E8)
  {
    sub_1000F2A18(&qword_100AF6678);
    sub_10089B8F8();
    sub_10000B58C(&qword_100AF6800, &qword_100AF66F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF67E8);
  }

  return result;
}

unint64_t sub_10089B8F8()
{
  result = qword_100AF67F0;
  if (!qword_100AF67F0)
  {
    sub_1000F2A18(&qword_100AF66E8);
    sub_10089B984();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF67F0);
  }

  return result;
}

unint64_t sub_10089B984()
{
  result = qword_100AF67F8;
  if (!qword_100AF67F8)
  {
    sub_1000F2A18(&qword_100AF66E0);
    sub_1000F2A18(&qword_100AF6670);
    sub_1000F2A18(&qword_100ADB0A0);
    sub_1000F2A18(&qword_100AF6668);
    type metadata accessor for InsightsVisitedPlacesView.LabelStyle();
    sub_10089AF0C();
    sub_10089BB54(&qword_100AF66D8, type metadata accessor for InsightsVisitedPlacesView.LabelStyle);
    swift_getOpaqueTypeConformance2();
    sub_10000B58C(&qword_100ADB0F0, &qword_100ADB0A0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF67F8);
  }

  return result;
}

uint64_t sub_10089BB54(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10089BB9C()
{
  result = qword_100AF6868;
  if (!qword_100AF6868)
  {
    sub_1000F2A18(&qword_100AD2730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6868);
  }

  return result;
}

uint64_t type metadata accessor for SettingsWeekdayToggles()
{
  result = qword_100AF68E0;
  if (!qword_100AF68E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10089BC8C()
{
  sub_10089BD10();
  if (v0 <= 0x3F)
  {
    sub_10089BD74();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10089BD10()
{
  if (!qword_100AF68F0)
  {
    sub_1000F2A18(&qword_100AD31E0);
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &qword_100AF68F0);
    }
  }
}

void sub_10089BD74()
{
  if (!qword_100AF70F0)
  {
    type metadata accessor for Calendar();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100AF70F0);
    }
  }
}

uint64_t sub_10089BDE8(uint64_t a1)
{
  v2 = type metadata accessor for SettingsWeekdayToggles();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = type metadata accessor for Calendar();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100048878(v8);
  v9 = sub_1008902D8(0);
  (*(v6 + 8))(v8, v5);
  v13[1] = v9;
  swift_getKeyPath();
  sub_10089C890(a1, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_10089C8F4(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  sub_1000F24EC(&qword_100ADB9B8);
  sub_1000F24EC(&qword_100AD4070);
  sub_10000B58C(&qword_100AF6938, &qword_100ADB9B8);
  sub_10089C780();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_10089C054@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a3;
  v5 = type metadata accessor for Calendar();
  v6 = *(v5 - 8);
  v43 = v5;
  v44 = v6;
  __chkstk_darwin(v5);
  v42 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&qword_100AD4068);
  v37 = *(v8 - 8);
  v38 = v8;
  __chkstk_darwin(v8);
  v41 = &v36 - v9;
  v10 = type metadata accessor for SettingsWeekdayToggles();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  sub_10089C890(a2, v13);
  type metadata accessor for MainActor();
  v15 = static MainActor.shared.getter();
  v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v17 = (v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  *(v18 + 24) = &protocol witness table for MainActor;
  sub_10089C8F4(v13, v18 + v16);
  *(v18 + v17) = v14;
  sub_10089C890(a2, v13);
  v19 = static MainActor.shared.getter();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = &protocol witness table for MainActor;
  sub_10089C8F4(v13, v20 + v16);
  *(v20 + v17) = v14;
  Binding.init(get:set:)();
  v21 = a2;
  v22 = v42;
  v40 = v21;
  sub_100048878(v42);
  v23 = Calendar.veryShortWeekdaySymbols.getter();
  v24 = *(v44 + 8);
  v44 += 8;
  result = v24(v22, v43);
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v14 >= *(v23 + 16))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v26 = v23 + 16 * v14;
  v28 = *(v26 + 32);
  v27 = *(v26 + 40);

  v45 = v28;
  v46 = v27;
  sub_1000777B4();

  v29 = v41;
  Toggle<>.init<A>(_:isOn:)();
  sub_100048878(v22);
  v30 = Calendar.weekdaySymbols.getter();
  result = v24(v22, v43);
  if (v14 < *(v30 + 16))
  {
    v31 = v30 + 16 * v14;
    v32 = v29;
    v33 = *(v31 + 32);
    v34 = *(v31 + 40);

    v45 = v33;
    v46 = v34;
    sub_10000B58C(&qword_100AD4078, &qword_100AD4068);
    v35 = v38;
    View.accessibilityLabel<A>(_:)();

    return (*(v37 + 8))(v32, v35);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_10089C4B4@<X0>(uint64_t a1@<X3>, _BYTE *a2@<X8>)
{
  sub_1000F24EC(&qword_100AF6940);
  Binding.wrappedValue.getter();
  LOBYTE(a1) = sub_10009E99C(a1, v5);

  *a2 = a1 & 1;
  return result;
}

uint64_t sub_10089C53C(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a1 == 1)
  {

    sub_1000F24EC(&qword_100AF6940);
    Binding.wrappedValue.getter();
    sub_10028B798(&v7, a5);
  }

  else
  {

    sub_1000F24EC(&qword_100AF6940);
    Binding.wrappedValue.getter();
    sub_10044B0F8(a5);
  }

  Binding.wrappedValue.setter();
}

uint64_t sub_10089C684()
{
  sub_1000F24EC(&qword_100AF6920);
  sub_10089C6FC();
  return ControlGroup.init(content:)();
}

unint64_t sub_10089C6FC()
{
  result = qword_100AF6928;
  if (!qword_100AF6928)
  {
    sub_1000F2A18(&qword_100AF6920);
    sub_10089C780();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6928);
  }

  return result;
}

unint64_t sub_10089C780()
{
  result = qword_100AF6930;
  if (!qword_100AF6930)
  {
    sub_1000F2A18(&qword_100AD4070);
    sub_10000B58C(&qword_100AD4078, &qword_100AD4068);
    sub_10089C838();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6930);
  }

  return result;
}

unint64_t sub_10089C838()
{
  result = qword_100AD2200;
  if (!qword_100AD2200)
  {
    type metadata accessor for AccessibilityAttachmentModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD2200);
  }

  return result;
}

uint64_t sub_10089C890(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsWeekdayToggles();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10089C8F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsWeekdayToggles();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10089C958@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SettingsWeekdayToggles() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10089C054(a1, v6, a2);
}

uint64_t sub_10089C9D8@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for SettingsWeekdayToggles() - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10089C4B4(v4, a1);
}

uint64_t sub_10089CA78()
{
  v1 = (type metadata accessor for SettingsWeekdayToggles() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v1[7];
  sub_1000F24EC(&qword_100AD9990);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for Calendar();
    (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10089CBB8(_BYTE *a1)
{
  v3 = *(type metadata accessor for SettingsWeekdayToggles() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  return sub_10089C53C(a1, v6, v7, v1 + v4, v5);
}

void sub_10089CC58(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_1000F24EC(&qword_100AD57F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v9 - 8);
  v11 = &v27 - v10;
  v12 = _s14descr100A531E1V32SuggestionSheetPresentationStateOMa();
  __chkstk_darwin(v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for JournalFeatureFlags();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 104))(v18, enum case for JournalFeatureFlags.suggestionsAPI(_:), v15);
  v19 = JournalFeatureFlags.isEnabled.getter();
  (*(v16 + 8))(v18, v15);
  if (v19)
  {
    sub_1000082B4(a1, v8, &qword_100AD1420);
    v20 = type metadata accessor for CanvasContentInputType();
    swift_storeEnumTagMultiPayload();
    (*(*(v20 - 8) + 56))(v8, 0, 1, v20);
    sub_10089D0BC(0, v8, a2 & 1);
    sub_100004F84(v8, &qword_100AD57F0);
  }

  else
  {
    sub_1000082B4(a1, v14, &qword_100AD1420);
    v21 = sub_1000F24EC(&qword_100AE3EF0);
    (*(*(v21 - 8) + 56))(v14, 0, 1, v21);
    v22 = OBJC_IVAR____TtC7Journal29JournalTimelineViewController_suggestionSheetPresentationState;
    swift_beginAccess();
    sub_1008A24A4(v14, v3 + v22);
    swift_endAccess();
    if (qword_100ACFD50 != -1)
    {
      swift_once();
    }

    *(qword_100B2F8C0 + OBJC_IVAR____TtC7Journal22SuggestionAngelManager_delegate + 8) = &off_100A840E8;
    swift_unknownObjectWeakAssign();
    sub_1000082B4(a1, v11, &qword_100AD1420);
    v23 = type metadata accessor for UUID();
    v24 = *(v23 - 8);
    isa = 0;
    if ((*(v24 + 48))(v11, 1, v23) != 1)
    {
      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v24 + 8))(v11, v23);
    }

    v26 = [objc_allocWithZone(MOSuggestionSheetOptions) initWithShowCancelButton:1 showBlankEntryButton:1 peekDetentRatio:1 presentFullScreen:a2 & 1 presentationIsAnimated:1 selectedTabIsRecommended:isa selectedSuggestionId:0.0];

    sub_1003ECB98(v26);
  }
}

uint64_t sub_10089D0BC(uint64_t a1, uint64_t a2, int a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v11 - 8);
  v13 = &v43 - v12;
  v14 = sub_1000F24EC(&unk_100ADE5F0);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v43 - v18;
  type metadata accessor for EntrySource();
  v20 = __chkstk_darwin(a1);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v20)
  {
    v25 = v20;
  }

  else
  {
    v50 = a2;
    v51 = v8;
    v44 = v10;
    v47 = 0;
    v49 = a3;
    v45 = v22;
    v46 = v21;
    (*(v22 + 104))(v24, enum case for EntrySource.blankEntry(_:), v21);
    v48 = v3;
    v26 = *(v3 + OBJC_IVAR____TtC7Journal29JournalTimelineViewController_model);
    v27 = OBJC_IVAR____TtC7Journal18EntryListViewModel_listType;
    swift_beginAccess();
    sub_1008A26F8(v26 + v27, v19, type metadata accessor for EntryListType);
    v28 = type metadata accessor for EntryListType();
    v29 = *(v28 - 8);
    (*(v29 + 56))(v19, 0, 1, v28);
    v30 = v24;
    if (qword_100ACFE28 != -1)
    {
      swift_once();
    }

    v31 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
    UUID.init()();
    v32 = *(v51 + 56);
    v43 = v7;
    v32(v13, 0, 1, v7);
    type metadata accessor for JournalEntryMO();
    v33 = static JournalEntryMO.create(type:context:uuid:)();
    type metadata accessor for EntryViewModel();
    swift_allocObject();
    v34 = v31;
    v35 = v33;
    v25 = sub_100035ADC(v35, 1, 1, v34);
    sub_1000082B4(v19, v17, &unk_100ADE5F0);
    if ((*(v29 + 48))(v17, 1, v28) == 1)
    {

      sub_100004F84(v13, &qword_100AD1420);
      sub_100004F84(v19, &unk_100ADE5F0);
      (*(v45 + 8))(v30, v46);
      sub_100004F84(v17, &unk_100ADE5F0);
      a2 = v50;
      LOBYTE(a3) = v49;
    }

    else
    {
      v36 = sub_1000F24EC(&qword_100AD47A0);
      v37 = (*(*(v36 - 8) + 48))(v17, 2, v36);
      LOBYTE(a3) = v49;
      if (v37)
      {

        sub_100004F84(v13, &qword_100AD1420);
        sub_100004F84(v19, &unk_100ADE5F0);
        (*(v45 + 8))(v30, v46);
        sub_1008A28E0(v17, type metadata accessor for EntryListType);
      }

      else
      {
        v38 = v51;
        v39 = v44;
        v40 = v17;
        v41 = v43;
        (*(v51 + 32))(v44, v40, v43);

        sub_1007788F0(v39);

        (*(v38 + 8))(v44, v41);
        sub_100004F84(v13, &qword_100AD1420);
        sub_100004F84(v19, &unk_100ADE5F0);
        (*(v45 + 8))(v30, v46);
      }

      a2 = v50;
    }
  }

  sub_1003054F0(v25, a2, a3 & 1);
}

void sub_10089D6E8(unsigned __int8 a1)
{
  v2 = v1;
  v4 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  if (a1 > 3u)
  {
    if (a1 == 4)
    {
      v15 = objc_allocWithZone(type metadata accessor for LockJournalOnboardingViewController());
      v21 = sub_1005FC7B0();
      [v21 setModalInPresentation:1];
      v16 = [v2 traitCollection];
      v17 = [v16 userInterfaceIdiom] != 0;

      [v21 setModalPresentationStyle:2 * v17];
      goto LABEL_13;
    }

    if (a1 == 5)
    {
      v8 = objc_allocWithZone(type metadata accessor for SyncOnboardingViewController());
      v21 = sub_100193B04();
      [v21 setModalInPresentation:1];
      [v21 setModalPresentationStyle:5];
      goto LABEL_13;
    }
  }

  else
  {
    if (a1 == 2)
    {
      type metadata accessor for OnboardingViewController();
      v12 = sub_10029D7F0();
      v13 = &v12[OBJC_IVAR____TtC7Journal24OnboardingViewController_delegate];
      *v13 = v2;
      *(v13 + 1) = &off_100A84100;
      v14 = v2;
      swift_unknownObjectRelease();
      v21 = v12;
      [v21 setModalInPresentation:1];
      goto LABEL_13;
    }

    if (a1 == 3)
    {
      v7 = objc_allocWithZone(type metadata accessor for WhatsNewViewController());
      v21 = sub_100577E2C();
      goto LABEL_13;
    }
  }

  if (a1)
  {
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    type metadata accessor for MainActor();
    v10 = static MainActor.shared.getter();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = &protocol witness table for MainActor;
    sub_1003E9628(0, 0, v6, &unk_100971C30, v11);

    return;
  }

  v18 = objc_allocWithZone(type metadata accessor for NotificationsOnboardingViewController());
  v21 = sub_1006F6098();
  [v21 setModalInPresentation:1];
  [v21 setModalPresentationStyle:2];
LABEL_13:
  [v2 presentViewController:v21 animated:1 completion:0];

  v19 = v21;
}

void sub_10089DA00()
{
  v1 = v0;
  v2 = _s14descr100A531E1V32SuggestionSheetPresentationStateOMa();
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for JournalFeatureFlags();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, enum case for JournalFeatureFlags.suggestionsAPI(_:), v5, v7);
  v10 = JournalFeatureFlags.isEnabled.getter();
  (*(v6 + 8))(v9, v5);
  if ((v10 & 1) == 0)
  {
    v11 = sub_1000F24EC(&qword_100AE3EF0);
    (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
    v12 = OBJC_IVAR____TtC7Journal29JournalTimelineViewController_suggestionSheetPresentationState;
    swift_beginAccess();
    sub_1008A24A4(v4, v1 + v12);
    swift_endAccess();
    if (qword_100ACFD50 != -1)
    {
      swift_once();
    }

    sub_1003ED2C8(0, 1);
  }
}

void sub_10089DC04()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = [v2 userInterfaceIdiom];

  if (!v3)
  {
    v4 = [v1 presentedViewController];
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    if (v4)
    {
      sub_1000065A8(0, &qword_100AD4C80);
      v5 = static NSObject.== infix(_:_:)();

      if (v5)
      {
        [v1 dismissViewControllerAnimated:1 completion:0];
      }
    }

    else
    {
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  [v6 setActive:0];

  sub_100016804(1);
}

uint64_t sub_10089DD98()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10089DE2C, v2, v1);
}

uint64_t sub_10089DE2C()
{

  v1 = *(v0 + 8);

  return v1(7);
}

uint64_t sub_10089DE90()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AF6958);
  sub_10000617C(v0, qword_100AF6958);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10089DF10(void *a1)
{
  v2 = sub_1000F24EC(&qword_100AF6A40);
  v25 = *(v2 - 8);
  v26 = v2;
  __chkstk_darwin(v2);
  v24 = &v21 - v3;
  v4 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_1000F24EC(&qword_100AF6A48);
  v22 = *(v7 - 8);
  v23 = v7;
  __chkstk_darwin(v7);
  v9 = &v21 - v8;
  v10 = _s14descr100A531E1V32SuggestionSheetPresentationStateOMa();
  __chkstk_darwin(v10 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000F24EC(&qword_100AF6A50);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v21 - v15;
  sub_10000CA14(a1, a1[3]);
  sub_1008A2940();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1008A26F8(v27, v12, _s14descr100A531E1V32SuggestionSheetPresentationStateOMa);
  v17 = sub_1000F24EC(&qword_100AE3EF0);
  if ((*(*(v17 - 8) + 48))(v12, 1, v17) == 1)
  {
    v28 = 0;
    sub_1008A2A4C();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v22 + 8))(v9, v23);
  }

  else
  {
    sub_100024EC0(v12, v6);
    v29 = 1;
    sub_1008A2994();
    v19 = v24;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    type metadata accessor for UUID();
    sub_1008A2B64(&qword_100AD8280, &type metadata accessor for UUID);
    v20 = v26;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    (*(v25 + 8))(v19, v20);
    sub_100004F84(v6, &qword_100AD1420);
  }

  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_10089E368@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_1000F24EC(&qword_100AF6A10);
  v4 = *(v3 - 8);
  v45 = v3;
  v46 = v4;
  __chkstk_darwin(v3);
  v47 = &v40 - v5;
  v6 = sub_1000F24EC(&qword_100AF6A18);
  v7 = *(v6 - 8);
  v43 = v6;
  v44 = v7;
  __chkstk_darwin(v6);
  v9 = &v40 - v8;
  v10 = sub_1000F24EC(&qword_100AF6A20);
  v49 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v40 - v11;
  v13 = _s14descr100A531E1V32SuggestionSheetPresentationStateOMa();
  __chkstk_darwin(v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v40 - v17;
  v19 = a1[3];
  v51 = a1;
  sub_10000CA14(a1, v19);
  sub_1008A2940();
  v20 = v50;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v20)
  {
    v50 = v13;
    v41 = v15;
    v42 = v18;
    v22 = v47;
    v21 = v48;
    v23 = KeyedDecodingContainer.allKeys.getter();
    v24 = (2 * *(v23 + 16)) | 1;
    v52 = v23;
    v53 = v23 + 32;
    v54 = 0;
    v55 = v24;
    v25 = sub_1007FDC80();
    v26 = v10;
    if (v25 == 2 || v54 != v55 >> 1)
    {
      v34 = type metadata accessor for DecodingError();
      swift_allocError();
      v36 = v35;
      sub_1000F24EC(&qword_100AD8100);
      *v36 = v50;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v34 - 8) + 104))(v36, enum case for DecodingError.typeMismatch(_:), v34);
      swift_willThrow();
      (*(v49 + 8))(v12, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v25)
      {
        v56 = 1;
        sub_1008A2994();
        v27 = v22;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v28 = v49;
        v29 = v21;
        type metadata accessor for UUID();
        sub_1008A2B64(&qword_100AD81F0, &type metadata accessor for UUID);
        v30 = v41;
        v31 = v45;
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        (*(v46 + 8))(v27, v31);
        (*(v28 + 8))(v12, v26);
        swift_unknownObjectRelease();
        v32 = sub_1000F24EC(&qword_100AE3EF0);
        (*(*(v32 - 8) + 56))(v30, 0, 1, v32);
        v33 = v42;
        sub_1008A29E8(v30, v42);
      }

      else
      {
        v56 = 0;
        sub_1008A2A4C();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v38 = v49;
        v29 = v21;
        (*(v44 + 8))(v9, v43);
        (*(v38 + 8))(v12, v26);
        swift_unknownObjectRelease();
        v39 = sub_1000F24EC(&qword_100AE3EF0);
        v33 = v42;
        (*(*(v39 - 8) + 56))(v42, 1, 1, v39);
      }

      sub_1008A29E8(v33, v29);
    }
  }

  return sub_10000BA7C(v51);
}

uint64_t sub_10089E988()
{
  if (*v0)
  {
    return 0x65746E6573657270;
  }

  else
  {
    return 0x657373696D736964;
  }
}

uint64_t sub_10089E9C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x657373696D736964 && a2 == 0xE900000000000064;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65746E6573657270 && a2 == 0xE900000000000064)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10089EAA4(uint64_t a1)
{
  v2 = sub_1008A2940();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10089EAE0(uint64_t a1)
{
  v2 = sub_1008A2940();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10089EB1C(uint64_t a1)
{
  v2 = sub_1008A2A4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10089EB58(uint64_t a1)
{
  v2 = sub_1008A2A4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10089EB94(uint64_t a1)
{
  v2 = sub_1008A2994();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10089EBD0(uint64_t a1)
{
  v2 = sub_1008A2994();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10089EC3C(void *a1, int a2, void *a3)
{
  v50 = a3;
  v53 = a2;
  ObjectType = swift_getObjectType();
  v4 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v4 - 8);
  v51 = &v46 - v5;
  v6 = type metadata accessor for SettingsKey();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v10 - 8);
  v12 = &v46 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v54 = UUID.uuidString.getter();
  v48 = v17;
  v18 = *(v14 + 8);
  v18(v16, v13);
  if (a1)
  {
    v19 = [a1 suggestionIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v47 = UUID.uuidString.getter();
    v21 = v20;
    v18(v16, v13);
  }

  else
  {
    v47 = 0;
    v21 = 0;
  }

  sub_1000065A8(0, &qword_100AE1A30);
  v22 = static NSUserDefaults.shared.getter();
  (*(v7 + 104))(v9, enum case for SettingsKey.alwaysUseMomentDate(_:), v6);
  SettingsKey.rawValue.getter();
  (*(v7 + 8))(v9, v6);
  v23 = String._bridgeToObjectiveC()();

  v24 = [v22 BOOLForKey:v23];

  v25 = 1;
  v26 = v48;
  if (a1)
  {
    v27 = v53;
    v28 = v54;
    if (v24)
    {
      v29 = [a1 startDate];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = 0;
    }
  }

  else
  {
    v27 = v53;
    v28 = v54;
  }

  v30 = type metadata accessor for Date();
  (*(*(v30 - 8) + 56))(v12, v25, 1, v30);
  sub_100004F84(v12, &unk_100AD4790);
  if (qword_100AD0BB8 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_10000617C(v31, qword_100AF6958);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v34 = 136315650;
    *(v34 + 4) = sub_100008458(v28, v26, &v55);
    *(v34 + 12) = 2080;
    if (v21)
    {
      v35 = v47;
    }

    else
    {
      v35 = 7104878;
    }

    if (v21)
    {
      v36 = v21;
    }

    else
    {
      v36 = 0xE300000000000000;
    }

    v37 = sub_100008458(v35, v36, &v55);
    v28 = v54;

    *(v34 + 14) = v37;
    *(v34 + 22) = 1024;
    *(v34 + 24) = v27 & 1;
    _os_log_impl(&_mh_execute_header, v32, v33, "onSuggestionSelected[%s] START w/ suggestionId=%s, showCanvas=%{BOOL}d", v34, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {
  }

  v38 = type metadata accessor for TaskPriority();
  v39 = v51;
  (*(*(v38 - 8) + 56))(v51, 1, 1, v38);
  type metadata accessor for MainActor();
  v40 = a1;
  v41 = v49;
  v42 = v50;
  v43 = static MainActor.shared.getter();
  v44 = swift_allocObject();
  *(v44 + 16) = v43;
  *(v44 + 24) = &protocol witness table for MainActor;
  *(v44 + 32) = v41;
  *(v44 + 40) = v27 & 1;
  *(v44 + 48) = v28;
  *(v44 + 56) = v26;
  *(v44 + 64) = v42;
  *(v44 + 72) = a1;
  *(v44 + 80) = ObjectType;
  sub_1003E9628(0, 0, v39, &unk_100971B90, v44);
}

uint64_t sub_10089F264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v17;
  *(v8 + 80) = v18;
  *(v8 + 56) = a7;
  *(v8 + 64) = a8;
  *(v8 + 344) = a5;
  *(v8 + 40) = a4;
  *(v8 + 48) = a6;
  v9 = type metadata accessor for Date();
  *(v8 + 88) = v9;
  *(v8 + 96) = *(v9 - 8);
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 112) = type metadata accessor for UserEngagement.StateSnapshot();
  *(v8 + 120) = swift_task_alloc();
  sub_1000F24EC(&qword_100AD57F0);
  *(v8 + 128) = swift_task_alloc();
  v10 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  *(v8 + 136) = v10;
  *(v8 + 144) = *(v10 - 8);
  *(v8 + 152) = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  *(v8 + 160) = v11;
  *(v8 + 168) = *(v11 - 8);
  *(v8 + 176) = swift_task_alloc();
  sub_1000F24EC(&qword_100AD1420);
  *(v8 + 184) = swift_task_alloc();
  sub_1000F24EC(&unk_100ADE5F0);
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  v12 = type metadata accessor for EntrySource();
  *(v8 + 208) = v12;
  *(v8 + 216) = *(v12 - 8);
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = type metadata accessor for MainActor();
  *(v8 + 240) = static MainActor.shared.getter();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 248) = v14;
  *(v8 + 256) = v13;

  return _swift_task_switch(sub_10089F568, v14, v13);
}

uint64_t sub_10089F568()
{
  v1 = v0[25];
  v2 = v0[5];
  (*(v0[27] + 104))(v0[28], enum case for EntrySource.blankEntry(_:), v0[26]);
  v3 = *(v2 + OBJC_IVAR____TtC7Journal29JournalTimelineViewController_model);
  v4 = OBJC_IVAR____TtC7Journal18EntryListViewModel_listType;
  swift_beginAccess();
  sub_1008A26F8(v3 + v4, v1, type metadata accessor for EntryListType);
  v5 = type metadata accessor for EntryListType();
  v6 = *(v5 - 8);
  (*(v6 + 56))(v1, 0, 1, v5);
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v7 = v0[24];
  v8 = v0[25];
  v9 = v0[23];
  v10 = v0[20];
  v11 = v0[21];
  v12 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
  UUID.init()();
  (*(v11 + 56))(v9, 0, 1, v10);
  type metadata accessor for JournalEntryMO();
  v13 = static JournalEntryMO.create(type:context:uuid:)();
  type metadata accessor for EntryViewModel();
  swift_allocObject();
  v14 = v12;
  v15 = v13;
  v0[33] = sub_100035ADC(v15, 1, 1, v14);
  sub_1000082B4(v8, v7, &unk_100ADE5F0);
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    v17 = v0[27];
    v16 = v0[28];
    v19 = v0[25];
    v18 = v0[26];
    v21 = v0[23];
    v20 = v0[24];

    sub_100004F84(v21, &qword_100AD1420);
    sub_100004F84(v19, &unk_100ADE5F0);
    (*(v17 + 8))(v16, v18);
    sub_100004F84(v20, &unk_100ADE5F0);
  }

  else
  {
    v22 = v0[24];
    v23 = sub_1000F24EC(&qword_100AD47A0);
    v24 = (*(*(v23 - 8) + 48))(v22, 2, v23);
    v26 = v0[27];
    v25 = v0[28];
    v27 = v0[25];
    v28 = v0[26];
    v29 = v0[23];
    if (v24)
    {

      sub_100004F84(v29, &qword_100AD1420);
      sub_100004F84(v27, &unk_100ADE5F0);
      (*(v26 + 8))(v25, v28);
      sub_1008A28E0(v22, type metadata accessor for EntryListType);
    }

    else
    {
      v39 = v0[28];
      v40 = v0[26];
      v30 = v0[21];
      v31 = v0[22];
      v32 = v22;
      v33 = v0[20];
      (*(v30 + 32))(v31, v32);

      sub_1007788F0(v31);

      (*(v30 + 8))(v31, v33);
      sub_100004F84(v29, &qword_100AD1420);
      sub_100004F84(v27, &unk_100ADE5F0);
      (*(v26 + 8))(v39, v40);
    }
  }

  v34 = v0[30];

  if (v34)
  {
    swift_getObjectType();
    v35 = dispatch thunk of Actor.unownedExecutor.getter();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0;
  }

  v0[34] = v35;
  v0[35] = v37;

  return _swift_task_switch(sub_10089FA0C, v35, v37);
}

uint64_t sub_10089FA0C()
{
  v1 = *(v0 + 264);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 136);
  v5 = *(v0 + 344);
  v6 = swift_allocObject();
  *(v0 + 288) = v6;
  *(v6 + 16) = v1;
  *(v6 + 24) = v5;
  (*(v3 + 104))(v2, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v4);

  v7 = swift_task_alloc();
  *(v0 + 296) = v7;
  *v7 = v0;
  v7[1] = sub_10089FB44;
  v8 = *(v0 + 152);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v7, v8, sub_100673C5C, v6, &type metadata for () + 8);
}

uint64_t sub_10089FB44()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[18] + 8))(v2[19], v2[17]);

    v4 = v2[34];
    v5 = v2[35];

    return _swift_task_switch(sub_10089FC98, v4, v5);
  }
}

uint64_t sub_10089FC98()
{

  v1 = *(v0 + 248);
  v2 = *(v0 + 256);

  return _swift_task_switch(sub_10089FCFC, v1, v2);
}

uint64_t sub_10089FCFC()
{
  v31 = v0;
  v1 = *(v0 + 264);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 48);
  v7 = *(v0 + 344);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;
  *(v8 + 32) = v4;
  *(v8 + 40) = v5;
  *(v8 + 48) = v1;
  *(v8 + 56) = v2;
  v9 = swift_allocObject();
  *(v0 + 304) = v9;
  *(v9 + 16) = &unk_100971BA0;
  *(v9 + 24) = v8;
  if (v3)
  {
    v10 = v9;
    v11 = *(v0 + 240);
    type metadata accessor for AssetProcessingUtil();
    v12 = swift_allocObject();
    v12[2] = v6;
    v12[3] = v4;
    v12[4] = &unk_100952210;
    v12[5] = v10;
    v12[6] = v2;
    v13 = swift_allocObject();
    *(v0 + 312) = v13;
    *(v13 + 16) = &unk_100971BB8;
    *(v13 + 24) = v12;
    swift_bridgeObjectRetain_n();

    v14 = v5;
    v15 = v3;

    v16 = swift_task_alloc();
    *(v0 + 320) = v16;
    *v16 = v0;
    v16[1] = sub_1008A00AC;
    v17 = *(v0 + 264);

    return sub_1004456D0(v11, &protocol witness table for MainActor, v15, v17, &unk_100971BC0, v13, &unk_100971BC8, 0);
  }

  else
  {
    v19 = qword_100AD0BB8;

    v20 = v5;
    if (v19 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    *(v0 + 328) = sub_10000617C(v21, qword_100AF6958);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v25 = *(v0 + 48);
      v24 = *(v0 + 56);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v30 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_100008458(v25, v24, &v30);
      _os_log_impl(&_mh_execute_header, v22, v23, "onSuggestionSelected[%s] No suggestion to process.", v26, 0xCu);
      sub_10000BA7C(v27);
    }

    *(v0 + 336) = static MainActor.shared.getter();
    v29 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1008A04EC, v29, v28);
  }
}

uint64_t sub_1008A00AC()
{
  v1 = *v0;

  v2 = *(v1 + 256);
  v3 = *(v1 + 248);

  return _swift_task_switch(sub_1008A020C, v3, v2);
}

uint64_t sub_1008A020C()
{
  v27 = v0;

  if (qword_100AD0BB8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000617C(v1, qword_100AF6958);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 72);
  if (v4)
  {
    v7 = *(v0 + 48);
    v6 = *(v0 + 56);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100008458(v7, v6, &v26);
    _os_log_impl(&_mh_execute_header, v2, v3, "onSuggestionSelected[%s] Suggestion processing complete (w/ assets)!", v8, 0xCu);
    sub_10000BA7C(v9);
  }

  else
  {
  }

  v10 = *(v0 + 264);
  if (*(v0 + 344))
  {
  }

  else
  {
    v12 = *(v0 + 112);
    v11 = *(v0 + 120);
    v14 = *(v0 + 96);
    v13 = *(v0 + 104);
    v25 = *(v0 + 88);
    static Date.now.getter();
    v15 = sub_100081D68();
    if (v16)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0;
    }

    v24 = v17;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = 0xE000000000000000;
    }

    v19 = sub_1001D7928(v10);
    v20 = *(v10 + 40);
    (*(v14 + 32))(v11, v13, v25);
    v21 = (v11 + v12[5]);
    *v21 = v24;
    v21[1] = v18;
    *(v11 + v12[6]) = v19;
    *(v11 + v12[7]) = v20;
    sub_1001D6F90(v11, v11, 1);

    sub_1008A28E0(v11, type metadata accessor for UserEngagement.StateSnapshot);
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1008A04EC()
{
  v16 = v0;
  v1 = *(v0 + 344);

  if (v1 == 1)
  {

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v5 = *(v0 + 48);
      v4 = *(v0 + 56);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v15 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_100008458(v5, v4, &v15);
      _os_log_impl(&_mh_execute_header, v2, v3, "onSuggestionSelected[%s] Requesting canvas presentation.", v6, 0xCu);
      sub_10000BA7C(v7);
    }

    v8 = *(v0 + 264);
    v9 = *(v0 + 128);
    v10 = type metadata accessor for CanvasContentInputType();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    sub_1003054F0(v8, v9, 0);
    sub_100004F84(v9, &qword_100AD57F0);
  }

  if (*(v0 + 240))
  {
    swift_getObjectType();
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  return _swift_task_switch(sub_1008A06F8, v11, v13);
}

uint64_t sub_1008A06F8()
{

  v1 = *(v0 + 248);
  v2 = *(v0 + 256);

  return _swift_task_switch(sub_1008A075C, v1, v2);
}

uint64_t sub_1008A075C()
{

  v1 = *(v0 + 264);
  if (*(v0 + 344))
  {
  }

  else
  {
    v3 = *(v0 + 112);
    v2 = *(v0 + 120);
    v5 = *(v0 + 96);
    v4 = *(v0 + 104);
    v16 = *(v0 + 88);
    static Date.now.getter();
    v6 = sub_100081D68();
    if (v7)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    v15 = v8;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0xE000000000000000;
    }

    v10 = sub_1001D7928(v1);
    v11 = *(v1 + 40);
    (*(v5 + 32))(v2, v4, v16);
    v12 = (v2 + v3[5]);
    *v12 = v15;
    v12[1] = v9;
    *(v2 + v3[6]) = v10;
    *(v2 + v3[7]) = v11;
    sub_1001D6F90(v2, v2, 1);

    sub_1008A28E0(v2, type metadata accessor for UserEngagement.StateSnapshot);
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1008A0914(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  *(v5 + 64) = a1;
  sub_1000F24EC(&qword_100AD57F0);
  *(v5 + 48) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 56) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1008A09EC, v7, v6);
}

uint64_t sub_1008A09EC()
{
  v15 = v0;
  v1 = *(v0 + 64);

  if (v1 == 1)
  {
    if (qword_100AD0BB8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000617C(v2, qword_100AF6958);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = *(v0 + 16);
      v5 = *(v0 + 24);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v14 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_100008458(v6, v5, &v14);
      _os_log_impl(&_mh_execute_header, v3, v4, "onSuggestionSelected[%s] Requesting canvas presentation.", v7, 0xCu);
      sub_10000BA7C(v8);
    }

    v10 = *(v0 + 40);
    v9 = *(v0 + 48);
    v11 = type metadata accessor for CanvasContentInputType();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    sub_1003054F0(v10, v9, 0);
    sub_100004F84(v9, &qword_100AD57F0);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1008A0C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_1008A0CA8, v6, v5);
}

uint64_t sub_1008A0CA8()
{
  v14 = v0;
  if (qword_100AD0BB8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000617C(v1, qword_100AF6958);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_100008458(v5, v4, &v13);
    _os_log_impl(&_mh_execute_header, v2, v3, "onSuggestionSelected[%s] Entry updated (w/o assets).", v6, 0xCu);
    sub_10000BA7C(v7);
  }

  v8 = v0[6];
  v9 = v0[4];

  v12 = (v9 + *v9);
  v10 = swift_task_alloc();
  v0[9] = v10;
  *v10 = v0;
  v10[1] = sub_1008A0ED8;

  return v12(v8, &protocol witness table for MainActor);
}

uint64_t sub_1008A0ED8()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_1002CB1C0, v3, v2);
}

void sub_1008A101C(void *a1)
{
  v2 = [a1 traitCollection];
  v3 = [v2 userInterfaceIdiom];

  if (!v3)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    [a1 presentViewController:v4 animated:1 completion:0];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  [v4 setActive:1];
}

uint64_t sub_1008A1144()
{
  type metadata accessor for MainActor();
  v0[2] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[3] = v2;
  v0[4] = v1;

  return _swift_task_switch(sub_1008A11D8, v2, v1);
}

uint64_t sub_1008A11D8()
{
  if (qword_100ACFD20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);

  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1008A12C4;

  return sub_1003C1F2C(v1, &protocol witness table for MainActor, 1);
}

uint64_t sub_1008A12C4()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 24);
    v4 = *(v2 + 32);
    v5 = sub_1005BB8F4;
  }

  else
  {

    v3 = *(v2 + 24);
    v4 = *(v2 + 32);
    v5 = sub_1001F15C0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1008A1408()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v47 = *(v2 - 8);
  v48 = v2;
  __chkstk_darwin(v2);
  v46 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v44 = *(v4 - 8);
  v45 = v4;
  __chkstk_darwin(v4);
  v43 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for DispatchTime();
  v6 = *(v42 - 8);
  __chkstk_darwin(v42);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v41 - v10;
  v12 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v12 - 8);
  v14 = &v41 - v13;
  v15 = sub_1000F24EC(&qword_100AD57F0);
  __chkstk_darwin(v15 - 8);
  v17 = &v41 - v16;
  v18 = type metadata accessor for JournalFeatureFlags();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 104))(v22, enum case for JournalFeatureFlags.suggestionsAPI(_:), v18, v20);
  v23 = JournalFeatureFlags.isEnabled.getter();
  (*(v19 + 8))(v22, v18);
  if ((v23 & 1) == 0)
  {
    v25 = sub_1006D1378();
    if (v25 == 5)
    {
      v29 = type metadata accessor for UUID();
      (*(*(v29 - 8) + 56))(v14, 1, 1, v29);
      sub_10089CC58(v14, 1);
      v30 = &qword_100AD1420;
      v31 = v14;
    }

    else
    {
      if (v25 == 2)
      {
        v26 = objc_allocWithZone(type metadata accessor for MOOnboardingNavigationController());
        v27 = v1;
        v28 = MOOnboardingNavigationController.init(onboardingDelegate:)();
        [v28 setModalInPresentation:1];
        [v28 setModalPresentationStyle:2];
        [v27 presentViewController:v28 animated:1 completion:0];

        goto LABEL_9;
      }

      v32 = type metadata accessor for CanvasContentInputType();
      (*(*(v32 - 8) + 56))(v17, 1, 1, v32);
      sub_10089D0BC(0, v17, 1);
      v30 = &qword_100AD57F0;
      v31 = v17;
    }

    sub_100004F84(v31, v30);
    goto LABEL_9;
  }

  v24 = type metadata accessor for CanvasContentInputType();
  (*(*(v24 - 8) + 56))(v17, 1, 1, v24);
  sub_10089D0BC(0, v17, 1);
  sub_100004F84(v17, &qword_100AD57F0);
LABEL_9:
  sub_1000065A8(0, &qword_100AD6210);
  v33 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v41 = *(v6 + 8);
  v34 = v42;
  v41(v8, v42);
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1008A2B5C;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A84278;
  v36 = _Block_copy(aBlock);

  v37 = v43;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1008A2B64(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F24EC(&unk_100AD6220);
  sub_100006610();
  v38 = v46;
  v39 = v48;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v36);

  (*(v47 + 8))(v38, v39);
  (*(v44 + 8))(v37, v45);
  return (v41)(v11, v34);
}

void sub_1008A1B04()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10041C5C8(0);
  }
}

void sub_1008A1BA4()
{
  v1 = objc_allocWithZone(type metadata accessor for PrintEntriesViewController(0));
  v5 = sub_100701A08();
  [v0 presentViewController:? animated:? completion:?];
  v2 = *&v0[OBJC_IVAR____TtC7Journal29JournalTimelineViewController_entryCollectionViewController] + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_multipleSelectionDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 96))(ObjectType, v3);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_1008A1CD8(char a1)
{
  v8 = [v1 presentedViewController];
  if (v8)
  {
    type metadata accessor for OnboardingViewController();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = [v3 isBeingDismissed];

      if ((v4 & 1) == 0)
      {
        v5 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v6 = swift_allocObject();
        *(v6 + 16) = a1 & 1;
        *(v6 + 24) = v5;
        aBlock[4] = sub_1008A2C58;
        aBlock[5] = v6;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100006C7C;
        aBlock[3] = &unk_100A842F0;
        v7 = _Block_copy(aBlock);

        [v1 dismissViewControllerAnimated:1 completion:v7];
        _Block_release(v7);
      }
    }

    else
    {
    }
  }
}

void sub_1008A1E54(char a1)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      v3 = objc_allocWithZone(type metadata accessor for SyncOnboardingViewController());
      v4 = sub_100193B04();
      [v4 setModalInPresentation:1];
      [v4 setModalPresentationStyle:5];
      [v2 presentViewController:v4 animated:1 completion:0];
    }
  }
}

uint64_t sub_1008A1F08(void *a1, char a2)
{
  v5 = _s14descr100A531E1V32SuggestionSheetPresentationStateOMa();
  __chkstk_darwin(v5 - 8);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v15[-v9];
  v11 = OBJC_IVAR____TtC7Journal29JournalTimelineViewController_suggestionSheetPresentationState;
  swift_beginAccess();
  sub_1008A26F8(v2 + v11, v10, _s14descr100A531E1V32SuggestionSheetPresentationStateOMa);
  v12 = sub_1000F24EC(&qword_100AE3EF0);
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    return sub_1008A28E0(v10, _s14descr100A531E1V32SuggestionSheetPresentationStateOMa);
  }

  sub_100004F84(v10, &qword_100AD1420);
  if (a1 != 1)
  {
    return sub_10089EC3C(a1, a2 & 1, v2);
  }

  if (qword_100ACFD50 != -1)
  {
    swift_once();
  }

  sub_1003ED2C8(0, 1);
  (*(v13 + 56))(v7, 1, 1, v12);
  swift_beginAccess();
  sub_1008A24A4(v7, v2 + v11);
  return swift_endAccess();
}

uint64_t sub_1008A2140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a4;
  type metadata accessor for MainActor();
  *(v4 + 72) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1008A21D8, v6, v5);
}

uint64_t sub_1008A21D8()
{
  v1 = v0[8];

  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[6] = sub_1008A2B54;
  v0[7] = v2;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100006C7C;
  v0[5] = &unk_100A84250;
  v3 = _Block_copy(v0 + 2);

  [v1 dismissViewControllerAnimated:1 completion:v3];
  _Block_release(v3);
  v4 = v0[1];

  return v4();
}

void sub_1008A22F0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong composeButtonSelected];
  }
}

uint64_t sub_1008A24A4(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr100A531E1V32SuggestionSheetPresentationStateOMa();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008A2508@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1008A2588(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  v5 = v2;
  return static UIViewController.ViewLoading.subscript.setter();
}

uint64_t sub_1008A2600(uint64_t a1)
{
  v4 = *(v1 + 24);
  v12 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100032EC8;

  return sub_10089F264(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1008A26F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1008A2760()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100032EC8;

  return sub_1008A0914(v2, v3, v4, v5, v6);
}

uint64_t sub_1008A2824()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100032EC8;

  return sub_1008A0C0C(v2, v3, v4, v5);
}

uint64_t sub_1008A28E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1008A2940()
{
  result = qword_100AF6A28;
  if (!qword_100AF6A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6A28);
  }

  return result;
}

unint64_t sub_1008A2994()
{
  result = qword_100AF6A30;
  if (!qword_100AF6A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6A30);
  }

  return result;
}

uint64_t sub_1008A29E8(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr100A531E1V32SuggestionSheetPresentationStateOMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1008A2A4C()
{
  result = qword_100AF6A38;
  if (!qword_100AF6A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6A38);
  }

  return result;
}

uint64_t sub_1008A2AA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_1008A2140(a1, v4, v5, v6);
}

uint64_t sub_1008A2B64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1008A2BAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100032ECC;

  return sub_1008A1144();
}

unint64_t sub_1008A2C98()
{
  result = qword_100AF6A58;
  if (!qword_100AF6A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6A58);
  }

  return result;
}

unint64_t sub_1008A2CF0()
{
  result = qword_100AF6A60;
  if (!qword_100AF6A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6A60);
  }

  return result;
}

unint64_t sub_1008A2D48()
{
  result = qword_100AF6A68;
  if (!qword_100AF6A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6A68);
  }

  return result;
}

unint64_t sub_1008A2DA0()
{
  result = qword_100AF6A70;
  if (!qword_100AF6A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6A70);
  }

  return result;
}

unint64_t sub_1008A2DF8()
{
  result = qword_100AF6A78;
  if (!qword_100AF6A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6A78);
  }

  return result;
}

unint64_t sub_1008A2E50()
{
  result = qword_100AF6A80;
  if (!qword_100AF6A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6A80);
  }

  return result;
}

unint64_t sub_1008A2EA8()
{
  result = qword_100AF6A88;
  if (!qword_100AF6A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6A88);
  }

  return result;
}

unint64_t sub_1008A2F00()
{
  result = qword_100AF6A90;
  if (!qword_100AF6A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6A90);
  }

  return result;
}

id sub_1008A2F64()
{
  v1 = OBJC_IVAR____TtC7Journal15LPLinkAssetView____lazy_storage___linkView;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal15LPLinkAssetView____lazy_storage___linkView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Journal15LPLinkAssetView____lazy_storage___linkView);
  }

  else
  {
    v4 = sub_1008A3180();
    v5 = [objc_allocWithZone(LPLinkView) initWithMetadata:v4];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void *sub_1008A303C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal15LPLinkAssetView_asset);
  v2 = v1;
  return v1;
}

void sub_1008A309C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal15LPLinkAssetView____lazy_storage___linkView);
}

id sub_1008A30DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LPLinkAssetView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1008A3180()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  v2 = [objc_allocWithZone(LPLinkMetadata) init];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v3 = String._bridgeToObjectiveC()();

  [v2 setTitle:v3];

  return v2;
}

uint64_t sub_1008A32C0(void *a1)
{
  v3 = type metadata accessor for LinkAssetMetadata();
  v71 = *(v3 - 8);
  v72 = v3;
  __chkstk_darwin(v3);
  v70 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&qword_100AD50C8);
  __chkstk_darwin(v5 - 8);
  v7 = &v68 - v6;
  v8 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v8 - 8);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v73 = &v68 - v12;
  __chkstk_darwin(v13);
  v15 = &v68 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v69 = &v68 - v21;
  __chkstk_darwin(v22);
  v24 = &v68 - v23;
  *&v1[OBJC_IVAR____TtC7Journal15LPLinkAssetView____lazy_storage___linkView] = 0;
  *&v1[OBJC_IVAR____TtC7Journal15LPLinkAssetView_asset] = a1;
  v25 = type metadata accessor for LPLinkAssetView();
  v77.receiver = v1;
  v77.super_class = v25;
  v26 = a1;
  v27 = objc_msgSendSuper2(&v77, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  type metadata accessor for LinkAsset();
  v28 = swift_dynamicCastClass();
  if (v28)
  {
    v29 = v28;
    v30 = *(v28 + OBJC_IVAR____TtC7Journal5Asset_attachments);
    if (v30 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_4;
      }
    }

    else if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      if ((v30 & 0xC000000000000001) != 0)
      {
        v56 = v27;

        specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_7:
        sub_1000A7D30(v15);

        if ((*(v17 + 48))(v15, 1, v16) != 1)
        {
          (*(v17 + 32))(v24, v15, v16);
          if (URL.isFileURL.getter())
          {
LABEL_9:
            v32 = objc_allocWithZone(LPLinkView);
            URL._bridgeToObjectiveC()(v33);
            v35 = v34;
            v36 = [v32 initWithMetadataLoadedFromURL:v34];

            (*(v17 + 8))(v24, v16);
            v37 = *&v27[OBJC_IVAR____TtC7Journal15LPLinkAssetView____lazy_storage___linkView];
            *&v27[OBJC_IVAR____TtC7Journal15LPLinkAssetView____lazy_storage___linkView] = v36;

LABEL_38:
            v58 = sub_1008A2F64();
            [v58 _setDisablePreviewGesture:1];

            v59 = OBJC_IVAR____TtC7Journal15LPLinkAssetView____lazy_storage___linkView;
            [v27 addSubview:*&v27[OBJC_IVAR____TtC7Journal15LPLinkAssetView____lazy_storage___linkView]];
            v60 = *&v27[v59];
            sub_100013178(0.0);

            v61 = *&v27[v59];
            type metadata accessor for UILayoutPriority(0);
            v74 = 1065353216;
            v75 = 1144750080;
            sub_1001E80F8();
            v62 = v61;
            static _UIKitNumericRawRepresentable.+ infix(_:_:)();
            LODWORD(v63) = v76;
            [v62 setContentHuggingPriority:0 forAxis:v63];

            v64 = *&v27[v59];
            v74 = 1065353216;
            v75 = 1144750080;
            v65 = v64;
            static _UIKitNumericRawRepresentable.+ infix(_:_:)();
            LODWORD(v66) = v76;
            [v65 setContentHuggingPriority:1 forAxis:v66];

            v27[OBJC_IVAR____TtC7Journal16JournalAssetView_isAssetFinishedLoading] = 1;
            return v27;
          }

          (*(v17 + 8))(v24, v16);
LABEL_23:
          v47 = sub_1001D863C();
          if (v47)
          {
            v48 = v47;
            v49 = [objc_allocWithZone(LPLinkView) initWithMetadata:v47];

            v50 = *&v27[OBJC_IVAR____TtC7Journal15LPLinkAssetView____lazy_storage___linkView];
            *&v27[OBJC_IVAR____TtC7Journal15LPLinkAssetView____lazy_storage___linkView] = v49;

            goto LABEL_38;
          }

          if (*(v29 + OBJC_IVAR____TtC7Journal9LinkAsset_metadata))
          {

            sub_10025E308(v7);

            v52 = v71;
            v51 = v72;
            if (!(*(v71 + 48))(v7, 1, v72))
            {
              v55 = v70;
              (*(v52 + 16))(v70, v7, v51);
              sub_100004F84(v7, &qword_100AD50C8);
              v53 = v73;
              LinkAssetMetadata.url.getter();
              (*(v52 + 8))(v55, v51);
              if ((*(v17 + 48))(v53, 1, v16) != 1)
              {
                v24 = v69;
                (*(v17 + 32))(v69, v53, v16);
                goto LABEL_9;
              }

              goto LABEL_29;
            }

            sub_100004F84(v7, &qword_100AD50C8);
          }

          v53 = v73;
          (*(v17 + 56))(v73, 1, 1, v16);
LABEL_29:
          v54 = v53;
LABEL_37:
          sub_100004F84(v54, &unk_100AD6DD0);
          goto LABEL_38;
        }

LABEL_22:
        sub_100004F84(v15, &unk_100AD6DD0);
        goto LABEL_23;
      }

      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v31 = v27;

        goto LABEL_7;
      }

      __break(1u);
LABEL_34:
      result = _CocoaArrayWrapper.endIndex.getter();
      if (!result)
      {
        goto LABEL_35;
      }

      goto LABEL_12;
    }

    (*(v17 + 56))(v15, 1, 1, v16);
    v46 = v27;
    goto LABEL_22;
  }

  v30 = *&v26[OBJC_IVAR____TtC7Journal5Asset_attachments];
  if (v30 >> 62)
  {
    goto LABEL_34;
  }

  result = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_35:
    (*(v17 + 56))(v10, 1, 1, v16);
    v57 = v27;
LABEL_36:
    v54 = v10;
    goto LABEL_37;
  }

LABEL_12:
  if ((v30 & 0xC000000000000001) != 0)
  {
    v67 = v27;

    specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_15:
    sub_1000A7D30(v10);

    if ((*(v17 + 48))(v10, 1, v16) != 1)
    {
      (*(v17 + 32))(v19, v10, v16);
      if (URL.isFileURL.getter())
      {
        v40 = objc_allocWithZone(LPLinkView);
        URL._bridgeToObjectiveC()(v41);
        v43 = v42;
        v44 = [v40 initWithMetadataLoadedFromURL:v42];

        (*(v17 + 8))(v19, v16);
        v45 = *&v27[OBJC_IVAR____TtC7Journal15LPLinkAssetView____lazy_storage___linkView];
        *&v27[OBJC_IVAR____TtC7Journal15LPLinkAssetView____lazy_storage___linkView] = v44;
      }

      else
      {
        (*(v17 + 8))(v19, v16);
      }

      goto LABEL_38;
    }

    goto LABEL_36;
  }

  if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v39 = v27;

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

void sub_1008A3CD8()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal32FullScreenLinkCollectionViewCell_asset);
}

id sub_1008A3D18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FullScreenLinkCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FullScreenLinkCollectionViewCell()
{
  result = qword_100AF6B00;
  if (!qword_100AF6B00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1008A3E34()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7Journal32FullScreenLinkCollectionViewCell_linkView);
  v2 = v1;
  return v1;
}

void *sub_1008A3E68()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7Journal32FullScreenLinkCollectionViewCell_asset);
  v2 = v1;
  return v1;
}

uint64_t sub_1008A3E9C()
{
  v1 = sub_1000F24EC(&qword_100AD50C0);
  __chkstk_darwin(v1 - 8);
  v3 = &v15[-v2];
  v4 = type metadata accessor for ThirdPartyMediaAssetMetadata();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v0 + OBJC_IVAR____TtC7Journal20ThirdPartyMediaAsset_metadata))
  {

    sub_10025C98C(v3);

    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      (*(v5 + 32))(v7, v3, v4);
      sub_1000F24EC(&qword_100AD38F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100942000;
      *(inited + 32) = ThirdPartyMediaAssetMetadata.song.getter();
      *(inited + 40) = v9;
      *(inited + 48) = ThirdPartyMediaAssetMetadata.albumName.getter();
      *(inited + 56) = v10;
      *(inited + 64) = ThirdPartyMediaAssetMetadata.artistName.getter();
      *(inited + 72) = v11;
      sub_10009BB20(8236, 0xE200000000000000, inited);
      v13 = v12;
      swift_setDeallocating();
      sub_1000F24EC(&unk_100AE4870);
      swift_arrayDestroy();
      (*(v5 + 8))(v7, v4);
      return v13;
    }
  }

  else
  {
    (*(v5 + 56))(v3, 1, 1, v4);
  }

  sub_100004F84(v3, &qword_100AD50C0);
  return 0;
}

id sub_1008A4114()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ThirdPartyMediaAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1008A41B0()
{
  v1 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v1 - 8);
  v73 = &v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v65 - v4;
  v6 = type metadata accessor for MediaViewType();
  v71 = *(v6 - 8);
  v72 = v6;
  __chkstk_darwin(v6);
  v70 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v8 - 8);
  v10 = &v65 - v9;
  v11 = type metadata accessor for UTType();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000F24EC(&qword_100AD50C0);
  __chkstk_darwin(v15 - 8);
  v17 = &v65 - v16;
  v18 = type metadata accessor for ThirdPartyMediaAssetMetadata();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v0;
  sub_1006ACA14(v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_100004F84(v17, &qword_100AD50C0);
    return 0;
  }

  else
  {
    (*(v19 + 32))(v21, v17, v18);
    static UTType.audio.getter();
    v23 = objc_allocWithZone(CSSearchableItemAttributeSet);
    isa = UTType._bridgeToObjectiveC()().super.isa;
    v22 = [v23 initWithContentType:isa];

    (*(v12 + 8))(v14, v11);
    ThirdPartyMediaAssetMetadata.song.getter();
    v67 = v18;
    v68 = v5;
    if (v25 || (ThirdPartyMediaAssetMetadata.albumName.getter(), v26))
    {
      v27 = String._bridgeToObjectiveC()();
    }

    else
    {
      v27 = 0;
    }

    [v22 setDisplayName:v27];

    v75 = ThirdPartyMediaAssetMetadata.albumName.getter();
    v76[0] = v28;
    v29 = 0;
    v76[1] = ThirdPartyMediaAssetMetadata.artistName.getter();
    v76[2] = v30;
    v31 = _swiftEmptyArrayStorage;
    v66 = v19;
LABEL_7:
    v32 = &v76[2 * v29];
    while (++v29 != 3)
    {
      v33 = v32 + 2;
      v34 = *v32;
      v32 += 2;
      if (v34)
      {
        v35 = *(v33 - 3);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_10009BCC8(0, *(v31 + 2) + 1, 1, v31);
        }

        v37 = *(v31 + 2);
        v36 = *(v31 + 3);
        if (v37 >= v36 >> 1)
        {
          v31 = sub_10009BCC8((v36 > 1), v37 + 1, 1, v31);
        }

        *(v31 + 2) = v37 + 1;
        v38 = &v31[16 * v37];
        *(v38 + 4) = v35;
        *(v38 + 5) = v34;
        goto LABEL_7;
      }
    }

    sub_1000F24EC(&unk_100AE4870);
    swift_arrayDestroy();
    v74 = v31;
    sub_1000F24EC(&qword_100AD60A0);
    sub_10009BDD4();
    BidirectionalCollection<>.joined(separator:)();

    v39 = String._bridgeToObjectiveC()();

    [v22 setContentDescription:v39];

    ThirdPartyMediaAssetMetadata.mediaURL.getter();
    v40 = type metadata accessor for URL();
    v41 = *(v40 - 8);
    v43 = 0;
    if ((*(v41 + 48))(v10, 1, v40) != 1)
    {
      URL._bridgeToObjectiveC()(v42);
      v43 = v44;
      (*(v41 + 8))(v10, v40);
    }

    [v22 setThumbnailURL:v43];

    v45 = v70;
    ThirdPartyMediaAssetMetadata.mediaType.getter();
    v46 = sub_10054D5EC();
    v48 = v47;
    (*(v71 + 8))(v45, v72);
    v49 = v73;
    ThirdPartyMediaAssetMetadata.startTime.getter();
    v50 = v49;
    v51 = type metadata accessor for Date();
    v52 = *(v51 - 8);
    v53 = *(v52 + 48);
    if (v53(v49, 1, v51) == 1)
    {
      v54 = *(v69 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
      if (v54)
      {
        v55 = [v54 entry];
        if (v55)
        {
          v56 = v55;
          v57 = v68;
          JournalEntryMO.displayDate.getter();

          v58 = 0;
        }

        else
        {
          v58 = 1;
          v57 = v68;
        }

        v50 = v73;
      }

      else
      {
        v58 = 1;
        v57 = v68;
      }

      (*(v52 + 56))(v57, v58, 1, v51);
      if (v53(v50, 1, v51) != 1)
      {
        sub_100004F84(v50, &unk_100AD4790);
      }
    }

    else
    {
      v57 = v68;
      (*(v52 + 32))(v68, v50, v51);
      (*(v52 + 56))(v57, 0, 1, v51);
    }

    sub_1000F24EC(&unk_100AD9A60);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_100940080;
    v60 = sub_10012C00C(v46, v48, v57);
    v62 = v61;

    *(v59 + 32) = v60;
    *(v59 + 40) = v62;
    v63 = Array._bridgeToObjectiveC()().super.isa;

    [v22 setAlternateNames:v63];

    sub_100004F84(v57, &unk_100AD4790);
    (*(v66 + 8))(v21, v67);
  }

  return v22;
}

uint64_t sub_1008A4A84(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ThirdPartyMediaAssetMetadata();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s23YearAdaptiveFormatStyleVMa()
{
  result = qword_100AF6BE0;
  if (!qword_100AF6BE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1008A4B3C()
{
  result = type metadata accessor for Date.FormatStyle.TimeStyle();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Locale();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Calendar();
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for TimeZone();
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for FormatStyleCapitalizationContext();
          if (v5 <= 0x3F)
          {
            result = type metadata accessor for Date();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1008A4C20(uint64_t a1)
{
  v2 = v1;
  v81 = a1;
  v3 = type metadata accessor for Date.FormatStyle.Symbol.Day();
  v63 = *(v3 - 8);
  v64 = v3;
  __chkstk_darwin(v3);
  v62 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v59 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for Date.FormatStyle.Symbol.Weekday();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FormatStyleCapitalizationContext();
  v78 = *(v7 - 8);
  v79 = v7;
  __chkstk_darwin(v7);
  v80 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TimeZone();
  v75 = *(v9 - 8);
  v76 = v9;
  __chkstk_darwin(v9);
  v77 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Calendar();
  v68 = *(v11 - 8);
  v69 = v11;
  __chkstk_darwin(v11);
  v74 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Locale();
  v65 = *(v13 - 8);
  v66 = v13;
  __chkstk_darwin(v13);
  v70 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000F24EC(&qword_100AD4280);
  __chkstk_darwin(v15 - 8);
  v17 = &v55 - v16;
  v18 = sub_1000F24EC(&qword_100AD4288);
  __chkstk_darwin(v18 - 8);
  v67 = &v55 - v19;
  v20 = type metadata accessor for Date.FormatStyle();
  v72 = *(v20 - 8);
  v73 = v20;
  __chkstk_darwin(v20);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v55 - v24;
  __chkstk_darwin(v26);
  v55 = &v55 - v27;
  __chkstk_darwin(v28);
  v71 = &v55 - v29;
  v30 = type metadata accessor for Calendar.Component();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v55 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = _s23YearAdaptiveFormatStyleVMa();
  v35 = v34[6];
  (*(v31 + 104))(v33, enum case for Calendar.Component.year(_:), v30);
  v36 = Calendar.isDate(_:equalTo:toGranularity:)();
  (*(v31 + 8))(v33, v30);
  if (v36)
  {
    v37 = type metadata accessor for Date.FormatStyle.DateStyle();
    (*(*(v37 - 8) + 56))(v67, 1, 1, v37);
    v38 = type metadata accessor for Date.FormatStyle.TimeStyle();
    v39 = *(v38 - 8);
    (*(v39 + 16))(v17, v2, v38);
    (*(v39 + 56))(v17, 0, 1, v38);
    (*(v65 + 16))(v70, v2 + v34[5], v66);
    (*(v68 + 16))(v74, v2 + v35, v69);
    (*(v75 + 16))(v77, v2 + v34[7], v76);
    (*(v78 + 16))(v80, v2 + v34[8], v79);
    Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)();
    v40 = v56;
    static Date.FormatStyle.Symbol.Weekday.wide.getter();
    Date.FormatStyle.weekday(_:)();
    (*(v57 + 8))(v40, v58);
    v42 = v72;
    v41 = v73;
    v43 = *(v72 + 8);
    v43(v22, v73);
    v44 = v59;
    static Date.FormatStyle.Symbol.Month.wide.getter();
    v45 = v55;
    Date.FormatStyle.month(_:)();
    (*(v60 + 8))(v44, v61);
    v43(v25, v41);
    v46 = v62;
    static Date.FormatStyle.Symbol.Day.defaultDigits.getter();
    v47 = v71;
    Date.FormatStyle.day(_:)();
    (*(v63 + 8))(v46, v64);
    v43(v45, v41);
    v48 = v42;
  }

  else
  {
    v49 = v67;
    static Date.FormatStyle.DateStyle.complete.getter();
    v50 = type metadata accessor for Date.FormatStyle.DateStyle();
    (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
    v51 = type metadata accessor for Date.FormatStyle.TimeStyle();
    v52 = *(v51 - 8);
    (*(v52 + 16))(v17, v2, v51);
    (*(v52 + 56))(v17, 0, 1, v51);
    (*(v65 + 16))(v70, v2 + v34[5], v66);
    (*(v68 + 16))(v74, v2 + v35, v69);
    (*(v75 + 16))(v77, v2 + v34[7], v76);
    (*(v78 + 16))(v80, v2 + v34[8], v79);
    v47 = v71;
    Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)();
    v48 = v72;
    v41 = v73;
  }

  v53 = Date.FormatStyle.format(_:)();
  (*(v48 + 8))(v47, v41);
  return v53;
}

uint64_t sub_1008A5654(void *a1)
{
  v3 = sub_1000F24EC(&qword_100AF6C78);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000CA14(a1, a1[3]);
  sub_1008A6E44();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for Date.FormatStyle.TimeStyle();
  sub_1008A6E98(&qword_100AF6C80, &type metadata accessor for Date.FormatStyle.TimeStyle);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    _s23YearAdaptiveFormatStyleVMa();
    v8[14] = 1;
    type metadata accessor for Locale();
    sub_1008A6E98(&qword_100AEB028, &type metadata accessor for Locale);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v8[13] = 2;
    type metadata accessor for Calendar();
    sub_1008A6E98(&qword_100AF6C88, &type metadata accessor for Calendar);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v8[12] = 3;
    type metadata accessor for TimeZone();
    sub_1008A6E98(&qword_100AF6C90, &type metadata accessor for TimeZone);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v8[11] = 4;
    type metadata accessor for FormatStyleCapitalizationContext();
    sub_1008A6E98(&qword_100AF6C98, &type metadata accessor for FormatStyleCapitalizationContext);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v8[10] = 5;
    type metadata accessor for Date();
    sub_1008A6E98(&qword_100AE49A8, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1008A5A28@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = type metadata accessor for Date();
  v56 = *(v3 - 8);
  v57 = v3;
  __chkstk_darwin(v3);
  v40 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FormatStyleCapitalizationContext();
  v54 = *(v5 - 8);
  v55 = v5;
  __chkstk_darwin(v5);
  v41 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for TimeZone();
  v59 = *(v53 - 8);
  __chkstk_darwin(v53);
  v42 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for Calendar();
  v61 = *(v64 - 8);
  __chkstk_darwin(v64);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for Locale();
  v63 = *(v51 - 8);
  __chkstk_darwin(v51);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v44 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1000F24EC(&qword_100AF6C48);
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v15 = &v38 - v14;
  v16 = _s23YearAdaptiveFormatStyleVMa();
  v17 = (v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v17[7];
  static Locale.autoupdatingCurrent.getter();
  v60 = v17[8];
  static Calendar.autoupdatingCurrent.getter();
  v58 = v17[9];
  static TimeZone.autoupdatingCurrent.getter();
  v49 = v17[10];
  static FormatStyleCapitalizationContext.unknown.getter();
  v50 = v17[11];
  static Date.now.getter();
  v20 = a1[3];
  v52 = a1;
  sub_10000CA14(a1, v20);
  sub_1008A6E44();
  v46 = v15;
  v21 = v48;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    v22 = v57;
    v23 = v55;
    v26 = v51;
    v27 = v49;
    sub_10000BA7C(v52);
    v29 = v53;
    v28 = v54;
    (*(v63 + 8))(&v19[v62], v26);
    (*(v61 + 8))(&v19[v60], v64);
    (*(v59 + 8))(&v19[v58], v29);
    (*(v28 + 8))(&v19[v27], v23);
    return (*(v56 + 8))(&v19[v50], v22);
  }

  else
  {
    v70 = 0;
    sub_1008A6E98(&qword_100AF6C58, &type metadata accessor for Date.FormatStyle.TimeStyle);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v24 = v57;
    v25 = v55;
    v31 = *(v44 + 32);
    v48 = v11;
    v31(v19, v13, v11);
    v69 = 1;
    sub_1008A6E98(&qword_100AEB018, &type metadata accessor for Locale);
    v32 = v10;
    v33 = v51;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v34 = v49;
    (*(v63 + 40))(&v19[v62], v32, v33);
    v68 = 2;
    sub_1008A6E98(&qword_100AF6C60, &type metadata accessor for Calendar);
    v35 = v64;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v36 = v54;
    (*(v61 + 40))(&v19[v60], v43, v35);
    v67 = 3;
    sub_1008A6E98(&qword_100AF6C68, &type metadata accessor for TimeZone);
    v37 = v53;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v59 + 40))(&v19[v58], v42, v37);
    v66 = 4;
    sub_1008A6E98(&qword_100AF6C70, &type metadata accessor for FormatStyleCapitalizationContext);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v36 + 40))(&v19[v34], v41, v25);
    v65 = 5;
    sub_1008A6E98(&qword_100AE4998, &type metadata accessor for Date);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v45 + 8))(v46, v47);
    (*(v56 + 40))(&v19[v50], v40, v24);
    sub_1008A6DE0(v19, v39);
    sub_10000BA7C(v52);
    return sub_1000FBBCC(v19);
  }
}

uint64_t sub_1008A63A4()
{
  v1 = *v0;
  v2 = 0x6C797453656D6974;
  v3 = 0x656E6F5A656D6974;
  v4 = 0xD000000000000015;
  if (v1 != 4)
  {
    v4 = 0x636E657265666572;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C61636F6CLL;
  if (v1 != 1)
  {
    v5 = 0x7261646E656C6163;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1008A6460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1008A70B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1008A6488(uint64_t a1)
{
  v2 = sub_1008A6E44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008A64C4(uint64_t a1)
{
  v2 = sub_1008A6E44();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1008A6500@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1008A4C20(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1008A6528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1008A6DE0(v3, a3);
  v7 = *(a2 + 20);
  v8 = type metadata accessor for Locale();
  v9 = *(*(v8 - 8) + 24);

  return v9(a3 + v7, a1, v8);
}

Swift::Int sub_1008A65E0()
{
  Hasher.init(_seed:)();
  type metadata accessor for Date.FormatStyle.TimeStyle();
  sub_1008A6E98(&qword_100AF6CA0, &type metadata accessor for Date.FormatStyle.TimeStyle);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Locale();
  sub_1008A6E98(qword_100AEB030, &type metadata accessor for Locale);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Calendar();
  sub_1008A6E98(&qword_100AF6CA8, &type metadata accessor for Calendar);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for TimeZone();
  sub_1008A6E98(&qword_100AF6CB0, &type metadata accessor for TimeZone);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for FormatStyleCapitalizationContext();
  sub_1008A6E98(&qword_100AF6CB8, &type metadata accessor for FormatStyleCapitalizationContext);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Date();
  sub_1008A6E98(&unk_100AEE080, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1008A6830()
{
  type metadata accessor for Date.FormatStyle.TimeStyle();
  sub_1008A6E98(&qword_100AF6CA0, &type metadata accessor for Date.FormatStyle.TimeStyle);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Locale();
  sub_1008A6E98(qword_100AEB030, &type metadata accessor for Locale);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Calendar();
  sub_1008A6E98(&qword_100AF6CA8, &type metadata accessor for Calendar);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for TimeZone();
  sub_1008A6E98(&qword_100AF6CB0, &type metadata accessor for TimeZone);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for FormatStyleCapitalizationContext();
  sub_1008A6E98(&qword_100AF6CB8, &type metadata accessor for FormatStyleCapitalizationContext);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Date();
  sub_1008A6E98(&unk_100AEE080, &type metadata accessor for Date);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1008A6A70()
{
  Hasher.init(_seed:)();
  type metadata accessor for Date.FormatStyle.TimeStyle();
  sub_1008A6E98(&qword_100AF6CA0, &type metadata accessor for Date.FormatStyle.TimeStyle);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Locale();
  sub_1008A6E98(qword_100AEB030, &type metadata accessor for Locale);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Calendar();
  sub_1008A6E98(&qword_100AF6CA8, &type metadata accessor for Calendar);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for TimeZone();
  sub_1008A6E98(&qword_100AF6CB0, &type metadata accessor for TimeZone);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for FormatStyleCapitalizationContext();
  sub_1008A6E98(&qword_100AF6CB8, &type metadata accessor for FormatStyleCapitalizationContext);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for Date();
  sub_1008A6E98(&unk_100AEE080, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1008A6DE0(uint64_t a1, uint64_t a2)
{
  v4 = _s23YearAdaptiveFormatStyleVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1008A6E44()
{
  result = qword_100AF6C50;
  if (!qword_100AF6C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6C50);
  }

  return result;
}

uint64_t sub_1008A6E98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1008A6EE0()
{
  if ((static Date.FormatStyle.TimeStyle.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  _s23YearAdaptiveFormatStyleVMa();
  if ((static Locale.== infix(_:_:)() & 1) == 0 || (static Calendar.== infix(_:_:)() & 1) == 0 || (static TimeZone.== infix(_:_:)() & 1) == 0 || (static FormatStyleCapitalizationContext.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static Date.== infix(_:_:)();
}

unint64_t sub_1008A6FB4()
{
  result = qword_100AF6CC0;
  if (!qword_100AF6CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6CC0);
  }

  return result;
}

unint64_t sub_1008A700C()
{
  result = qword_100AF6CC8;
  if (!qword_100AF6CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6CC8);
  }

  return result;
}

unint64_t sub_1008A7064()
{
  result = qword_100AF6CD0;
  if (!qword_100AF6CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6CD0);
  }

  return result;
}

uint64_t sub_1008A70B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C797453656D6974 && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7261646E656C6163 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010090CF70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x636E657265666572 && a2 == 0xE900000000000065)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1008A72C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1008A743C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1008A72F0(uint64_t a1)
{
  v2 = sub_100040F50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1008A732C(uint64_t a1)
{
  v2 = sub_100040F50();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1008A7368(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AF6CE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1008A73E8()
{
  result = qword_100AF6DB8;
  if (!qword_100AF6DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6DB8);
  }

  return result;
}

uint64_t sub_1008A743C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6144657669746361 && a2 == 0xEA00000000007379;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6557657669746361 && a2 == 0xEB00000000736B65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E756F4364726F77 && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E756F43796164 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5473656972746E65 && a2 == 0xEF72616559736968)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1008A766C(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  type metadata accessor for JournalEntryCollectionViewController(0);
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    v5 = a1;
    v6 = [v5 childViewControllers];
    sub_1000065A8(0, &qword_100AD4C80);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v7 >> 62)
    {
LABEL_20:
      v8 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = 0; v8 != i; ++i)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v10 = *(v7 + 8 * i + 32);
      }

      v11 = v10;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v3 = sub_1008A766C(v10);

      if (v3)
      {

        return v3;
      }
    }

    return 0;
  }

  v3 = v2;
  v4 = a1;
  return v3;
}

id sub_1008A77D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Application();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1008A7890()
{
  *(v0 + 16) = *(v0 + 120);
  sub_1000F24EC(&qword_100AD5BC0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1008A791C(void *a1, unint64_t a2)
{
  v44 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v42 = *(v7 - 8);
  v43 = v7;
  __chkstk_darwin(v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100AD0170 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000617C(v10, qword_100B2FEF0);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    aBlock[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_100008458(v44, a2, aBlock);
    _os_log_impl(&_mh_execute_header, v11, v12, "Running test: %s", v13, 0xCu);
    sub_10000BA7C(v14);
  }

  v15 = [objc_opt_self() sharedApplication];
  v16 = sub_100510628();

  if (!v16)
  {
    return 0;
  }

  v41 = v4;
  v17 = [*&v16[OBJC_IVAR____TtC7Journal13SceneDelegate_window] rootViewController];
  v18 = sub_1008A766C(v17);

  if (!v18)
  {

    return 0;
  }

  v19 = *&v18[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView];
  if (!v19)
  {

    return 0;
  }

  v40 = v3;
  v20 = v19;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Will trigger test run", v23, 2u);
  }

  v24 = objc_allocWithZone(RPTScrollViewTestParameters);

  v25 = v20;
  v26 = String._bridgeToObjectiveC()();

  v27 = [v24 initWithTestName:v26 scrollView:v25 completionHandler:0];

  v44 = v25;
  sub_1000065A8(0, &qword_100AD6210);
  v38 = static OS_dispatch_queue.main.getter();
  v28 = swift_allocObject();
  v29 = v45;
  *(v28 + 16) = v27;
  *(v28 + 24) = v29;
  aBlock[4] = sub_1008A8154;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A845C8;
  v30 = _Block_copy(aBlock);
  v39 = v27;
  v31 = v29;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100006C34(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F24EC(&unk_100AD6220);
  sub_100006610();
  v32 = v40;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v33 = v38;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v30);

  (*(v41 + 8))(v6, v32);
  (*(v42 + 8))(v9, v43);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "Triggered test run", v36, 2u);
  }

  return 1;
}

void sub_1008A7FF8()
{
  if (qword_100AD0170 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000617C(v0, qword_100B2FEF0);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    *v2 = 138412290;
    swift_errorRetain();
    v4 = _swift_stdlib_bridgeErrorToNSError();
    *(v2 + 4) = v4;
    *v3 = v4;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Failed running test with error: %@", v2, 0xCu);
    sub_100004F84(v3, &unk_100AD4BB0);
  }
}

id sub_1008A8154()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = objc_opt_self();

  return [v3 runTestWithParameters:v1 delegate:v2];
}

uint64_t sub_1008A81A0()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  VisitAssetMetadata.placeName.getter();
  if (v3)
  {

    v4 = VisitAssetMetadata.placeName.getter();
    if (!v5)
    {
      goto LABEL_9;
    }

    if (v4 || v5 != 0xE000000000000000)
    {
      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v6 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  VisitAssetMetadata.latitude.getter();
  if ((v7 & 1) == 0)
  {
    VisitAssetMetadata.longitude.getter();
    if ((v8 & 1) == 0)
    {
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v19);
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v20._countAndFlagsBits = 0x202C4E20B0C2;
      v20._object = 0xA600000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v20);
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v21._countAndFlagsBits = 1461760194;
      v21._object = 0xA400000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v21);
      String.LocalizationValue.init(stringInterpolation:)();
      static Locale.current.getter();
      return String.init(localized:defaultValue:table:bundle:locale:comment:)();
    }
  }

LABEL_9:
  v9 = VisitAssetMetadata.typeOfPlace.getter();
  if (v10)
  {
    v11 = v10;
    v12 = v9;
    v13 = VisitAssetMetadata.placeName.getter();
    if (v14)
    {
      v15 = v14;
      v16 = v13;
      v17 = VisitAssetMetadata.city.getter();
      if (v18)
      {
        if (v16 == v17 && v15 == v18)
        {
        }

        else
        {
          v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v23 & 1) == 0 && (v12 || v11 != 0xE000000000000000))
          {
            v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v39 & 1) == 0 && (v16 || v15 != 0xE000000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              return v16;
            }

            goto LABEL_18;
          }
        }
      }
    }

LABEL_18:
  }

  v24 = VisitAssetMetadata.placeName.getter();
  if (v25)
  {
    v26 = v24;
    v27 = VisitAssetMetadata.typeOfPlace.getter();
    if (v28)
    {
      if (v27 || v28 != 0xE000000000000000)
      {
        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v29 & 1) == 0)
        {
          return v26;
        }
      }

      else
      {
      }
    }
  }

  v30 = VisitAssetMetadata.placeName.getter();
  if (!v31)
  {
    return VisitAssetMetadata.placeName.getter();
  }

  v32 = v31;
  v33 = v30;
  v34 = VisitAssetMetadata.city.getter();
  if (!v35)
  {
LABEL_39:

    return VisitAssetMetadata.placeName.getter();
  }

  v36 = v34;
  v37 = v35;
  if (!v34 && v35 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v33 == v36 && v32 == v37)
  {

    goto LABEL_39;
  }

  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v38)
  {
    goto LABEL_39;
  }

  return v33;
}

uint64_t sub_1008A8634()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  VisitAssetMetadata.placeName.getter();
  if (v3)
  {

    v4 = VisitAssetMetadata.placeName.getter();
    if (!v5)
    {
      goto LABEL_9;
    }

    if (v4 || v5 != 0xE000000000000000)
    {
      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v6 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  VisitAssetMetadata.latitude.getter();
  if ((v7 & 1) == 0)
  {
    VisitAssetMetadata.longitude.getter();
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_9:
  v9 = VisitAssetMetadata.typeOfPlace.getter();
  if (!v10)
  {
LABEL_22:
    VisitAssetMetadata.placeName.getter();
    if (v21)
    {

      v22 = VisitAssetMetadata.typeOfPlace.getter();
      if (v23)
      {
        if (v22 || v23 != 0xE000000000000000)
        {
          v24 = v22;
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            return v24;
          }
        }
      }
    }

    v25 = VisitAssetMetadata.placeName.getter();
    if (!v26)
    {
      return 0;
    }

    v27 = v26;
    v28 = v25;
    v29 = VisitAssetMetadata.city.getter();
    if (!v30)
    {
      goto LABEL_37;
    }

    if (v29 || v30 != 0xE000000000000000)
    {
      v32 = v29;
      v33 = v30;
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {

LABEL_37:

        return 0;
      }

      if (v28 != v32 || v27 != v33)
      {
        v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v34 & 1) == 0)
        {
          return v32;
        }

        goto LABEL_37;
      }
    }

    goto LABEL_37;
  }

  v11 = v10;
  v12 = v9;
  v13 = VisitAssetMetadata.placeName.getter();
  if (!v14)
  {
LABEL_21:

    goto LABEL_22;
  }

  v15 = v13;
  v16 = v14;
  v17 = VisitAssetMetadata.city.getter();
  if (!v18)
  {
LABEL_20:

    goto LABEL_21;
  }

  v19 = v17;
  v20 = v18;
  if (v15 == v17 && v16 == v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || !v12 && v11 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || !v15 && v16 == 0xE000000000000000)
  {

    goto LABEL_20;
  }

  v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v35)
  {
    goto LABEL_20;
  }

  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v36);
  v37._countAndFlagsBits = v12;
  v37._object = v11;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v37);

  v38._countAndFlagsBits = 548913696;
  v38._object = 0xA400000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v38);
  v39._countAndFlagsBits = v19;
  v39._object = v20;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v39);

  v40._countAndFlagsBits = 0;
  v40._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v40);
  String.LocalizationValue.init(stringInterpolation:)();
  static Locale.current.getter();
  return String.init(localized:defaultValue:table:bundle:locale:comment:)();
}

uint64_t sub_1008A8A90()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  VisitAssetMetadata.placeName.getter();
  if (v3)
  {

    v4 = VisitAssetMetadata.placeName.getter();
    if (!v5)
    {
      goto LABEL_9;
    }

    if (v4 || v5 != 0xE000000000000000)
    {
      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v6 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  VisitAssetMetadata.latitude.getter();
  if ((v7 & 1) == 0)
  {
    VisitAssetMetadata.longitude.getter();
    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_9:
  v9 = VisitAssetMetadata.typeOfPlace.getter();
  if (!v10)
  {
    return sub_1008A8634();
  }

  v11 = v10;
  v33 = v9;
  v12 = VisitAssetMetadata.placeName.getter();
  if (!v13)
  {
LABEL_23:

    return sub_1008A8634();
  }

  v14 = v13;
  v15 = v12;
  v16 = VisitAssetMetadata.mapItemData.getter();
  if (v17 >> 60 == 15 || (v18 = v16, v19 = v17, sub_10011D468(), v20 = static NSCoding<>.create(from:)(), sub_10003A5C8(v18, v19), !v20) || (v21 = [v20 address], v20, !v21) || (v22 = objc_msgSend(v21, "shortAddress"), v21, !v22))
  {
LABEL_22:

    goto LABEL_23;
  }

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  if (v15 == v23 && v14 == v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || !v33 && v11 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    goto LABEL_22;
  }

  if (!v15 && v14 == 0xE000000000000000)
  {

    goto LABEL_23;
  }

  v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v27 & 1) != 0 || !v23 && v25 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    goto LABEL_22;
  }

  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v28);
  v29._countAndFlagsBits = v33;
  v29._object = v11;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v29);

  v30._countAndFlagsBits = 2592;
  v30._object = 0xE200000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v30);
  v31._countAndFlagsBits = v23;
  v31._object = v25;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v31);

  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v32);
  String.LocalizationValue.init(stringInterpolation:)();
  static Locale.current.getter();
  return String.init(localized:defaultValue:table:bundle:locale:comment:)();
}

uint64_t sub_1008A8EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v41 = a1;
  v52 = a5;
  v53 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v50 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for Locale();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v11 - 8);
  v48 = sub_1000F24EC(&qword_100AF6EB0);
  v45 = *(v48 - 8);
  __chkstk_darwin(v48);
  v13 = &v40 - v12;
  v49 = sub_1000F24EC(&qword_100AF6EB8);
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v46 = &v40 - v14;
  v43 = a3;
  v44 = a4;
  v60 = a3;
  v61 = a4;

  sub_1000F24EC(&qword_100AD2148);
  State.projectedValue.getter();
  v15 = v54;
  v16 = v55;
  v17 = v56;
  v18 = static SafeAreaRegions.all.getter();
  v19 = static Edge.Set.all.getter();
  v42 = a2;
  v54 = a2;
  v55 = v15;
  v56 = v16;
  v57 = v17;
  v58 = v18;
  v59 = v19;
  v20 = sub_1000A0F34(v41);
  if (!v21)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v20 = String.init(localized:table:bundle:locale:comment:)();
  }

  v60 = v20;
  v61 = v21;
  v22 = sub_1000F24EC(&qword_100AF6EC0);
  v23 = sub_1008AA18C();
  v24 = sub_1000777B4();
  View.navigationTitle<A>(_:)();

  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v25);
  v54 = v43;
  v55 = v44;
  State.wrappedValue.getter();
  LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v26._countAndFlagsBits = 0x73656972746E4520;
  v26._object = 0xE800000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v26);
  LocalizedStringKey.init(stringInterpolation:)();
  v27 = Text.init(_:tableName:bundle:comment:)();
  v29 = v28;
  v31 = v30;
  v54 = v22;
  v55 = &type metadata for String;
  v56 = v23;
  v57 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v46;
  v34 = v48;
  View.navigationSubtitle(_:)();
  sub_1000594D0(v27, v29, v31 & 1);

  (*(v45 + 8))(v13, v34);
  v36 = v50;
  v35 = v51;
  v37 = v53;
  (*(v51 + 104))(v50, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v53);
  v54 = v34;
  v55 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v38 = v49;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v35 + 8))(v36, v37);
  return (*(v47 + 8))(v33, v38);
}

uint64_t sub_1008A949C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(sub_1008A96F8() + OBJC_IVAR____TtC7Journal18EntryListViewModel_assetIDs) = a3;

  sub_100119574();

  sub_1000F24EC(&qword_100AF6ED8);
  Binding.projectedValue.getter();
  v4 = (a1 + OBJC_IVAR____TtCV7Journal24InsightsPlacesDetailViewP33_BC4CB8389BB89297FDB9E0EF07F5280A21ContentViewController_entryCount);
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;
}

id sub_1008A957C()
{
  v0 = objc_allocWithZone(type metadata accessor for InsightsPlacesDetailView.ContentViewController());
  *&v0[OBJC_IVAR____TtCV7Journal24InsightsPlacesDetailViewP33_BC4CB8389BB89297FDB9E0EF07F5280A21ContentViewController____lazy_storage___model] = 0;
  v1 = &v0[OBJC_IVAR____TtCV7Journal24InsightsPlacesDetailViewP33_BC4CB8389BB89297FDB9E0EF07F5280A21ContentViewController_entryCount];
  static Binding.constant(_:)();
  *v1 = v3;
  *(v1 + 2) = v4;
  return sub_100013708(0, 0);
}

uint64_t sub_1008A9608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1008AA2E8();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1008A966C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1008AA2E8();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1008A96D0()
{
  sub_1008AA2E8();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_1008A96F8()
{
  v1 = v0;
  v2 = type metadata accessor for EntryListType();
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtCV7Journal24InsightsPlacesDetailViewP33_BC4CB8389BB89297FDB9E0EF07F5280A21ContentViewController____lazy_storage___model;
  if (*(v1 + OBJC_IVAR____TtCV7Journal24InsightsPlacesDetailViewP33_BC4CB8389BB89297FDB9E0EF07F5280A21ContentViewController____lazy_storage___model))
  {
    v6 = *(v1 + OBJC_IVAR____TtCV7Journal24InsightsPlacesDetailViewP33_BC4CB8389BB89297FDB9E0EF07F5280A21ContentViewController____lazy_storage___model);
  }

  else
  {
    if (qword_100ACFE28 != -1)
    {
      swift_once();
    }

    v7 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_contextMain);
    v8 = sub_1000F24EC(&qword_100AD47A0);
    (*(*(v8 - 8) + 56))(v4, 2, 2, v8);
    type metadata accessor for EntryListViewModel(0);
    swift_allocObject();
    v6 = sub_100010AF4(v4, v7);
    *(v1 + v5) = v6;
  }

  return v6;
}

uint64_t sub_1008A98E8(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for UIBackgroundConfiguration();
  __chkstk_darwin(v4 - 8);
  if (a1)
  {
    type metadata accessor for UIContentUnavailableConfiguration();
    v5 = swift_allocBox();
    static UIContentUnavailableConfiguration.empty()();
    if (qword_100AD0778 != -1)
    {
      swift_once();
    }

    UIContentUnavailableConfiguration.text.setter();
    v6 = UIContentUnavailableConfiguration.directionalLayoutMargins.modify();
    *(v7 + 8) = 0x4034000000000000;
    v6(&aBlock, 0);
    v8 = UIContentUnavailableConfiguration.directionalLayoutMargins.modify();
    *(v9 + 24) = 0x4034000000000000;
    v8(&aBlock, 0);
    static UIBackgroundConfiguration.clear()();
    UIContentUnavailableConfiguration.background.setter();
    v10 = objc_opt_self();
    v11 = swift_allocObject();
    *(v11 + 16) = v2;
    *(v11 + 24) = v5;
    v20 = sub_10079A47C;
    v21 = v11;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v19 = sub_100006C7C;
    *(&v19 + 1) = &unk_100A84718;
    v12 = _Block_copy(&aBlock);
    v13 = v2;

    [v10 animateWithDuration:0 delay:v12 options:0 animations:0.44 completion:0.0];
    _Block_release(v12);
  }

  else
  {
    v20 = 0;
    aBlock = 0u;
    v19 = 0u;
    UIViewController.contentUnavailableConfiguration.setter();
  }

  sub_1008A96F8();
  v14 = sub_100087B3C();

  v15 = *&v2[OBJC_IVAR____TtCV7Journal24InsightsPlacesDetailViewP33_BC4CB8389BB89297FDB9E0EF07F5280A21ContentViewController_entryCount + 16];
  aBlock = *&v2[OBJC_IVAR____TtCV7Journal24InsightsPlacesDetailViewP33_BC4CB8389BB89297FDB9E0EF07F5280A21ContentViewController_entryCount];
  *&v19 = v15;
  sub_1000F24EC(&qword_100AF6ED8);
  Binding.wrappedValue.getter();
  v16 = 0;
  if (v22 && !v14)
  {
    v16 = static Animation.default.getter();
  }

  __chkstk_darwin(v16);
  *(&aBlock - 2) = v2;
  *(&aBlock - 1) = v14;
  withAnimation<A>(_:_:)();
}

uint64_t sub_1008A9C68(unint64_t a1)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  sub_1000F24EC(&unk_100AD4780);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100941D50;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v5 = String._bridgeToObjectiveC()();
  v6 = [objc_opt_self() systemImageNamed:v5];

  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  sub_1008AA26C();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;

  *(v4 + 32) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v9 = sub_1005F9B54(a1, v4);

  return v9;
}

id sub_1008A9F08(void *a1)
{
  *&v1[OBJC_IVAR____TtCV7Journal24InsightsPlacesDetailViewP33_BC4CB8389BB89297FDB9E0EF07F5280A21ContentViewController____lazy_storage___model] = 0;
  v3 = &v1[OBJC_IVAR____TtCV7Journal24InsightsPlacesDetailViewP33_BC4CB8389BB89297FDB9E0EF07F5280A21ContentViewController_entryCount];
  v8 = 0;
  static Binding.constant(_:)();
  v4 = v10;
  *v3 = v9;
  *(v3 + 2) = v4;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for InsightsPlacesDetailView.ContentViewController();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

uint64_t sub_1008A9FDC()
{
}

id sub_1008AA030()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InsightsPlacesDetailView.ContentViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InsightsPlacesDetailView.ContentViewController()
{
  result = qword_100AF6EA0;
  if (!qword_100AF6EA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1008AA18C()
{
  result = qword_100AF6EC8;
  if (!qword_100AF6EC8)
  {
    sub_1000F2A18(&qword_100AF6EC0);
    sub_1008AA218();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6EC8);
  }

  return result;
}

unint64_t sub_1008AA218()
{
  result = qword_100AF6ED0;
  if (!qword_100AF6ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6ED0);
  }

  return result;
}

unint64_t sub_1008AA26C()
{
  result = qword_100AD4420;
  if (!qword_100AD4420)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AD4420);
  }

  return result;
}

unint64_t sub_1008AA2E8()
{
  result = qword_100AF6EE0;
  if (!qword_100AF6EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6EE0);
  }

  return result;
}

uint64_t sub_1008AA33C(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    for (i = (result + 40); ; i += 2)
    {
      v6 = *i;
      v7[0] = *(i - 1);
      v7[1] = v6;

      sub_1008AAB08(v7, a2);
      if (v2)
      {
        break;
      }

      if (!--v3)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1008AA3CC()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AF6EE8);
  v1 = sub_10000617C(v0, qword_100AF6EE8);
  if (qword_100AD0268 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B301D8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_1008AA498()
{
  result = qword_100AF6F00;
  if (!qword_100AF6F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6F00);
  }

  return result;
}

uint64_t sub_1008AA4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  swift_beginAccess();
  v14 = *(a8 + 16);
  if (v14 == 1)
  {

    sub_1000F24EC(&qword_100AD1EF0);
    sub_10000B58C(&qword_100AD1EF8, &qword_100AD1EF0);
    sub_1000777B4();
    v18 = _NSRange.init<A, B>(_:in:)();
    v20 = v19;
    swift_beginAccess();
    *(a12 + 16) = v18;
    *(a12 + 24) = v20;
    *(a12 + 32) = 0;
    *a7 = 1;
  }

  else if (!v14)
  {

    sub_1000F24EC(&qword_100AD1EF0);
    sub_10000B58C(&qword_100AD1EF8, &qword_100AD1EF0);
    sub_1000777B4();
    v15 = _NSRange.init<A, B>(_:in:)();
    v17 = v16;
    swift_beginAccess();
    *(a9 + 16) = v15;
    *(a9 + 24) = v17;
    *(a9 + 32) = 0;
  }

  result = swift_beginAccess();
  v22 = *(a8 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a8 + 16) = v24;
  }

  return result;
}

uint64_t sub_1008AA6F4(uint64_t a1, uint64_t a2, uint64_t a3, char **a4)
{
  String.subscript.getter();
  v5 = static String._fromSubstring(_:)();
  v7 = v6;

  v8 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_10009BCC8(0, *(v8 + 2) + 1, 1, v8);
    *a4 = v8;
  }

  v11 = *(v8 + 2);
  v10 = *(v8 + 3);
  if (v11 >= v10 >> 1)
  {
    v8 = sub_10009BCC8((v10 > 1), v11 + 1, 1, v8);
    *a4 = v8;
  }

  *(v8 + 2) = v11 + 1;
  v12 = &v8[16 * v11];
  *(v12 + 4) = v5;
  *(v12 + 5) = v7;
  return 1;
}

unint64_t sub_1008AA7C4@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = a2;
  v3 = type metadata accessor for CharacterSet();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v7 = a1[1];
  if ((v7 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v7) & 0xF;
  }

  else
  {
    v9 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  v10 = 7;
  if (((v7 >> 60) & ((v8 & 0x800000000000000) == 0)) != 0)
  {
    v10 = 11;
  }

  v11 = v10 | (v9 << 16);

  v44 = v11;
  if (v9)
  {
    v11 = v44;
    do
    {
      String.index(before:)();
      String.subscript.getter();
      v13 = Character.isWhitespace.getter();

      if ((v13 & 1) == 0)
      {
        break;
      }

      result = String.index(before:)();
      v11 = result;
    }

    while (result >= 0x4000);
  }

  if (4 * v9 < v11 >> 14)
  {
    __break(1u);
  }

  else
  {
    v36 = v8;
    v37 = v7;
    static CharacterSet.whitespacesAndNewlines.getter();
    sub_1000777B4();
    v14 = StringProtocol.trimmingCharacters(in:)();
    v16 = v15;
    (*(v4 + 8))(v6, v3);
    v42 = v14;
    v43 = v16;

    sub_1000961EC(v14, v16);
    v18 = v17;

    if (!v18 || (v19 = Character.isPunctuation.getter(), , (v19 & 1) == 0))
    {
      v20._countAndFlagsBits = 46;
      v20._object = 0xE100000000000000;
      String.append(_:)(v20);
    }

    v21 = v42;
    v22 = v43;

    sub_1007634AC(1);

    v23 = Substring.uppercased()();
    countAndFlagsBits = v23._countAndFlagsBits;

    v24 = sub_1000B5F78(1uLL, v21, v22);
    v26 = v25;
    v28 = v27;
    v30 = v29;

    v40 = countAndFlagsBits;
    object = v23._object;
    v36 = v24;
    v37 = v26;
    v38 = v28;
    v39 = v30;
    sub_10074C6AC();
    String.append<A>(contentsOf:)();

    v36 = v44;
    v37 = v11;
    v38 = v8;
    v39 = v7;
    sub_1000F24EC(&qword_100AF6F28);
    sub_10000B58C(&unk_100AF6F30, &qword_100AF6F28);
    String.append<A>(contentsOf:)();

    v31 = object;
    v32 = v35;
    *v35 = v40;
    v32[1] = v31;
  }

  return result;
}

uint64_t sub_1008AAB08(uint64_t *a1, uint64_t a2)
{
  v26 = a2;
  v35 = type metadata accessor for CharacterSet();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[1];
  v33 = *a1;
  v34 = v6;
  v31 = 8238;
  v32 = 0xE200000000000000;
  v30 = sub_1000777B4();
  result = StringProtocol.components<A>(separatedBy:)();
  v8 = result;
  v9 = *(result + 16);
  if (v9)
  {
    v10 = 0;
    v28 = *(result + 16);
    v29 = (v3 + 8);
    v11 = result + 40;
    v24 = v9 - 1;
    v27 = _swiftEmptyArrayStorage;
    v25 = result + 40;
    do
    {
      v12 = (v11 + 16 * v10);
      v13 = v10;
      while (1)
      {
        if (v13 >= *(v8 + 16))
        {
          __break(1u);
          return result;
        }

        v15 = *(v12 - 1);
        v14 = *v12;
        v10 = v13 + 1;
        v33 = v15;
        v34 = v14;

        static CharacterSet.whitespaces.getter();
        v16 = StringProtocol.trimmingCharacters(in:)();
        v18 = v17;
        (*v29)(v5, v35);

        v19 = HIBYTE(v18) & 0xF;
        if ((v18 & 0x2000000000000000) == 0)
        {
          v19 = v16 & 0xFFFFFFFFFFFFLL;
        }

        if (v19)
        {
          break;
        }

        v12 += 2;
        ++v13;
        if (v28 == v10)
        {
          goto LABEL_17;
        }
      }

      v20 = v27;
      result = swift_isUniquelyReferenced_nonNull_native();
      v31 = v20;
      if ((result & 1) == 0)
      {
        result = sub_1001999C0(0, v20[2] + 1, 1);
        v20 = v31;
      }

      v22 = v20[2];
      v21 = v20[3];
      if (v22 >= v21 >> 1)
      {
        result = sub_1001999C0((v21 > 1), v22 + 1, 1);
        v20 = v31;
      }

      v20[2] = v22 + 1;
      v27 = v20;
      v23 = &v20[2 * v22];
      v23[4] = v15;
      v23[5] = v14;
      v11 = v25;
    }

    while (v24 != v13);
  }

  else
  {
    v27 = _swiftEmptyArrayStorage;
  }

LABEL_17:

  return sub_1006AD7E8(v27);
}

uint64_t sub_1008AAD8C(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptViewModelSegment();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = 0;
  v27 = 0xE000000000000000;
  v6 = *(a1 + 16);
  if (v6)
  {
    v8 = *(v3 + 16);
    v7 = v3 + 16;
    v9 = a1 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
    v22 = *(v7 + 56);
    v23 = v8;
    v28 = (v7 - 8);
    do
    {
      v23(v5, v9, v2);
      if (static Task<>.isCancelled.getter())
      {
        goto LABEL_14;
      }

      v10 = TranscriptViewModelSegment.text.getter();
      v12 = sub_1005764B4(v10, v11);

      v13 = TranscriptViewModelSegment.text.getter();
      v15 = v13;
      v16 = v14;
      if ((v12 & 1) == 0)
      {
        v24 = v13;
        v25 = v14;

        v17._countAndFlagsBits = 32;
        v17._object = 0xE100000000000000;
        String.append(_:)(v17);

        v15 = v24;
        v16 = v25;
      }

      if (static Task<>.isCancelled.getter())
      {

LABEL_14:

        sub_1008AD84C();
        swift_allocError();
        *v19 = 1;
        swift_willThrow();
        (*v28)(v5, v2);
        return v7;
      }

      v18._countAndFlagsBits = v15;
      v18._object = v16;
      String.append(_:)(v18);

      (*v28)(v5, v2);
      v9 += v22;
      --v6;
    }

    while (v6);
    v7 = v26;
    if ((static Task<>.isCancelled.getter() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v7 = 0;
    if ((static Task<>.isCancelled.getter() & 1) == 0)
    {
LABEL_11:
      sub_1003C1CF8(1);

      v7 = static String._fromSubstring(_:)();
    }
  }

  return v7;
}

uint64_t sub_1008AB024()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    goto LABEL_14;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v5 & 1) == 0)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
    if (v7 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v9 != v10)
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v12)
      {
        return 1;
      }

      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
      if (v13 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v15 != v16)
      {
        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v18)
        {
          return 1;
        }

        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;
        if (v19 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v21 != v22)
        {
          v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v23)
          {
            return 1;
          }

          v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v26 = v25;
          if (v24 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v26 != v27)
          {
            v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v28)
            {
              return 1;
            }

            v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v31 = v30;
            if (v29 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v31 != v32)
            {
              v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v33)
              {
                return 1;
              }

              v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v36 = v35;
              if (v34 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v36 == v37)
              {
                goto LABEL_29;
              }

              v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v38)
              {
                return 0;
              }

              v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v41 = v40;
              if (v39 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v41 != v42)
              {
                v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v43)
                {
                  return 0;
                }

                v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v46 = v45;
                if (v44 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v46 != v47)
                {
                  _stringCompareWithSmolCheck(_:_:expecting:)();
                }
              }

LABEL_29:
              v6 = 0;
              goto LABEL_15;
            }
          }
        }
      }
    }

LABEL_14:
    v6 = 1;
LABEL_15:

    return v6;
  }

  return 1;
}

uint64_t sub_1008AB3E4(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

void *sub_1008AB480(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v14 = _swiftEmptyArrayStorage;
    sub_1001999C0(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 40);
    do
    {
      v5 = *v4;
      v12[0] = *(v4 - 1);
      v12[1] = v5;
      sub_1008AA7C4(v12, v13);
      v6 = v13[0];
      v7 = v13[1];
      v14 = v2;
      v9 = v2[2];
      v8 = v2[3];
      if (v9 >= v8 >> 1)
      {
        sub_1001999C0((v8 > 1), v9 + 1, 1);
        v2 = v14;
      }

      v2[2] = v9 + 1;
      v10 = &v2[2 * v9];
      v10[4] = v6;
      v10[5] = v7;
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_1008AB560(uint64_t a1, void (**a2)(char *, uint64_t), char *a3)
{
  v207 = a2;
  v208 = a3;
  v4 = sub_1000F24EC(&qword_100AF6F10);
  __chkstk_darwin(v4);
  v6 = &v188 - v5;
  v7 = sub_1000F24EC(&qword_100AF6F18);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v188 - v9;
  v213 = type metadata accessor for CharacterSet();
  v211 = *(v213 - 8);
  __chkstk_darwin(v213);
  v212 = &v188 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = type metadata accessor for TranscriptViewModelSegment();
  v12 = *(v218 - 8);
  v13 = __chkstk_darwin(v218);
  v14 = __chkstk_darwin(v13);
  __chkstk_darwin(v14);
  v19 = &v188 - v18;
  v20 = *(v17 + 16);
  if (v20)
  {
    v198 = v4;
    v201 = v6;
    v204 = v16;
    v197 = v15;
    v199 = v10;
    v200 = v8;
    v202 = v7;
    v210 = v3;
    v219._countAndFlagsBits = _swiftEmptyArrayStorage;
    v21 = v17;
    sub_1001999C0(0, v20, 0);
    countAndFlagsBits = v219._countAndFlagsBits;
    v196 = v12;
    v24 = *(v12 + 16);
    v23 = v12 + 16;
    v216 = v24;
    v203 = (*(v23 + 64) + 32) & ~*(v23 + 64);
    v209 = v21;
    v25 = v21 + v203;
    v26 = *(v23 + 56);
    v217 = v23;
    v214 = (v23 - 8);
    v215 = v26;
    v205 = v20;
    v206 = v21 + v203;
    v27 = v20;
    do
    {
      v28 = v218;
      v216(v19, v25, v218);
      v29 = TranscriptViewModelSegment.text.getter();
      v31 = v30;
      v32 = *v214;
      (*v214)(v19, v28);
      v219._countAndFlagsBits = countAndFlagsBits;
      v34 = *(countAndFlagsBits + 16);
      v33 = *(countAndFlagsBits + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1001999C0((v33 > 1), v34 + 1, 1);
        countAndFlagsBits = v219._countAndFlagsBits;
      }

      *(countAndFlagsBits + 16) = v34 + 1;
      v35 = countAndFlagsBits + 16 * v34;
      *(v35 + 32) = v29;
      *(v35 + 40) = v31;
      v25 += v215;
      --v27;
    }

    while (v27);
    v36 = v210;
    v37 = sub_1008AAD8C(v209);
    if (v36)
    {
      goto LABEL_7;
    }

    v43 = v38;
    v195 = v32;
    v44 = v37;
    if (static Task<>.isCancelled.getter())
    {

      if (qword_100AD0BC0 == -1)
      {
LABEL_14:
        v45 = type metadata accessor for Logger();
        sub_10000617C(v45, qword_100AF6EE8);
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          _os_log_impl(&_mh_execute_header, v46, v47, "Cancelled after step 1. Aborting.", v48, 2u);
        }

        sub_1008AD84C();
        swift_allocError();
        *v49 = 1;
LABEL_32:
        swift_willThrow();
        return v25;
      }

LABEL_136:
      swift_once();
      goto LABEL_14;
    }

    v50 = v208;
    if ((sub_1008AB024() & 1) == 0)
    {

      if (qword_100AD0BC0 != -1)
      {
        swift_once();
      }

      v69 = type metadata accessor for Logger();
      sub_10000617C(v69, qword_100AF6EE8);
      v25 = v50;
      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v219._countAndFlagsBits = v73;
        *v72 = 136315138;
        v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v75;
        v76 = sub_100008458(v74, v75, &v219._countAndFlagsBits);

        *(v72 + 4) = v76;
        _os_log_impl(&_mh_execute_header, v70, v71, "Language %s is not supported by the formatter, skipping.", v72, 0xCu);
        sub_10000BA7C(v73);
      }

      sub_1008AD84C();
      swift_allocError();
      *v77 = 0;
      goto LABEL_32;
    }

    v210 = 0;
    v194 = String.count.getter();
    v219._countAndFlagsBits = _swiftEmptyArrayStorage;
    v51 = String._bridgeToObjectiveC()();
    v52 = v207;
    [v207 setString:v51];

    __chkstk_darwin([v52 setLanguage:v50]);
    *(&v188 - 4) = &v219;
    *(&v188 - 3) = v44;
    *(&v188 - 2) = v43;
    v53 = v52;
    NLTokenizer.enumerateTokens(in:using:)();

    v54 = v219._countAndFlagsBits;
    v209 = *(v219._countAndFlagsBits + 16);
    if (v209)
    {
      v55 = 0;
      v207 = (v211 + 8);
      v56 = (v219._countAndFlagsBits + 40);
      v57 = _swiftEmptyArrayStorage;
      v208 = v219._countAndFlagsBits;
      while (v55 < *(v54 + 16))
      {
        v43 = *v56;
        v219._countAndFlagsBits = *(v56 - 1);
        v219._object = v43;

        v58 = v212;
        static CharacterSet.whitespacesAndNewlines.getter();
        sub_1000777B4();
        v59 = StringProtocol.trimmingCharacters(in:)();
        v61 = v60;
        (*v207)(v58, v213);
        v219._countAndFlagsBits = v59;
        v219._object = v61;

        v62._countAndFlagsBits = 2570;
        v62._object = 0xE200000000000000;
        String.append(_:)(v62);

        v63 = v219._countAndFlagsBits;
        object = v219._object;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = sub_10009BCC8(0, *(v57 + 2) + 1, 1, v57);
        }

        v65 = v57;
        v66 = *(v57 + 2);
        v50 = v65;
        v67 = *(v65 + 3);
        v53 = (v66 + 1);
        if (v66 >= v67 >> 1)
        {
          v50 = sub_10009BCC8((v67 > 1), v66 + 1, 1, v50);
        }

        ++v55;

        *(v50 + 2) = v53;
        v68 = &v50[16 * v66];
        v57 = v50;
        *(v68 + 4) = v63;
        *(v68 + 5) = object;
        v56 += 2;
        v54 = v208;
        if (v209 == v55)
        {
          goto LABEL_35;
        }
      }

      __break(1u);
LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

    v57 = _swiftEmptyArrayStorage;
LABEL_35:

    v79 = *(v57 + 2);
    if (v79)
    {
      v50 = (v79 - 1);

      sub_1008AB3E4(v194);

      v43 = static String._fromSubstring(_:)();
      v53 = v80;

      v194 = v57;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_37;
      }
    }

    else
    {
      __break(1u);
    }

    v194 = sub_100692980(v194);
LABEL_37:
    v25 = v210;
    v81 = v194;
    if (v79 > *(v194 + 16))
    {
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

    v82 = v194 + 16 * v50;
    *(v82 + 32) = v43;
    *(v82 + 40) = v53;

    if (static Task<>.isCancelled.getter())
    {

      if (qword_100AD0BC0 == -1)
      {
LABEL_40:
        v83 = type metadata accessor for Logger();
        sub_10000617C(v83, qword_100AF6EE8);
        v84 = Logger.logObject.getter();
        v85 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v84, v85))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&_mh_execute_header, v84, v85, "Cancelled after step 2. Aborting.", v25, 2u);
        }

        sub_1008AD84C();
        swift_allocError();
        *v86 = 1;
        swift_willThrow();
        goto LABEL_7;
      }

LABEL_143:
      swift_once();
      goto LABEL_40;
    }

    v221 = _swiftEmptyArrayStorage;
    sub_1008AA33C(v81, &v221);
    v87 = v221;
    v88 = sub_1008AB480(v221);
    if (static Task<>.isCancelled.getter())
    {

      if (qword_100AD0BC0 != -1)
      {
        swift_once();
      }

      v89 = type metadata accessor for Logger();
      sub_10000617C(v89, qword_100AF6EE8);
      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v90, v91))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v90, v91, "Cancelled after step 3. Aborting.", v25, 2u);
      }

LABEL_48:

      sub_1008AD84C();
      swift_allocError();
      *v92 = 1;
      swift_willThrow();

LABEL_7:

      return v25;
    }

    v192 = v87;
    v210 = v25;
    v219._countAndFlagsBits = v88;
    v93 = sub_1000F24EC(&qword_100AD60A0);
    v94 = sub_10000B58C(&qword_100AD2BE0, &qword_100AD60A0);
    v193 = v93;
    v191 = v94;
    v95 = BidirectionalCollection<>.joined(separator:)();
    v97 = v96;

    v219._countAndFlagsBits = v95;
    v219._object = v97;
    v98 = v212;
    static CharacterSet.whitespaces.getter();
    v209 = sub_1000777B4();
    v99 = StringProtocol.components(separatedBy:)();
    v100 = *(v211 + 8);
    v211 += 8;
    v208 = v100;
    (v100)(v98, v213);

    v101 = 0;
    v102 = *(v99 + 16);
    v207 = _swiftEmptyArrayStorage;
LABEL_50:
    v103 = (v99 + 40 + 16 * v101);
    while (v102 != v101)
    {
      if (v101 >= *(v99 + 16))
      {
        goto LABEL_132;
      }

      ++v101;
      v105 = *(v103 - 1);
      v104 = *v103;
      v103 += 2;
      v106 = HIBYTE(v104) & 0xF;
      if ((v104 & 0x2000000000000000) == 0)
      {
        v106 = v105 & 0xFFFFFFFFFFFFLL;
      }

      if (v106)
      {

        v107 = v207;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v219._countAndFlagsBits = v107;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1001999C0(0, v107[2] + 1, 1);
          v107 = v219._countAndFlagsBits;
        }

        v110 = v107[2];
        v109 = v107[3];
        v111 = (v110 + 1);
        if (v110 >= v109 >> 1)
        {
          v207 = (v110 + 1);
          sub_1001999C0((v109 > 1), v110 + 1, 1);
          v111 = v207;
          v107 = v219._countAndFlagsBits;
        }

        v107[2] = v111;
        v207 = v107;
        v112 = &v107[2 * v110];
        v112[4] = v105;
        v112[5] = v104;
        goto LABEL_50;
      }
    }

    v25 = v207;
    v113 = *(countAndFlagsBits + 16);
    if (v207[2] == v113)
    {

      v114 = v210;
LABEL_63:
      v210 = v114;
      v213 = *(v25 + 16);
      if (v213)
      {
        v115 = 0;
        v116 = (v196 + 32);
        v117 = v25;
        v118 = v25 + 40;
        v25 = _swiftEmptyArrayStorage;
        v119 = v197;
        while (v115 < *(v117 + 16))
        {
          if (v205 == v115)
          {
            goto LABEL_135;
          }

          TranscriptViewModelSegment.timestamp.getter();
          TranscriptViewModelSegment.duration.getter();
          v120 = v204;
          TranscriptViewModelSegment.init(text:timestamp:duration:)();
          v216(v119, v120, v218);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_1003E4DF4(0, *(v25 + 16) + 1, 1, v25);
          }

          v122 = *(v25 + 16);
          v121 = *(v25 + 24);
          if (v122 >= v121 >> 1)
          {
            v25 = sub_1003E4DF4(v121 > 1, v122 + 1, 1, v25);
          }

          ++v115;
          v123 = v120;
          v124 = v218;
          v195(v123, v218);
          *(v25 + 16) = v122 + 1;
          v125 = v215;
          (*v116)(v25 + v203 + v122 * v215, v119, v124);
          v206 += v125;
          v118 += 16;
          if (v213 == v115)
          {
            goto LABEL_84;
          }
        }

        __break(1u);
LABEL_135:
        __break(1u);
        goto LABEL_136;
      }

      v25 = _swiftEmptyArrayStorage;
LABEL_84:

      if ((static Task<>.isCancelled.getter() & 1) == 0)
      {

        return v25;
      }

      if (qword_100AD0BC0 != -1)
      {
        swift_once();
      }

      v142 = type metadata accessor for Logger();
      sub_10000617C(v142, qword_100AF6EE8);
      v90 = Logger.logObject.getter();
      v143 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v90, v143))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v90, v143, "Cancelled after step 4. Aborting.", v25, 2u);
      }

      goto LABEL_48;
    }

    if (qword_100AD0BC0 != -1)
    {
      swift_once();
    }

    v126 = type metadata accessor for Logger();
    v188 = sub_10000617C(v126, qword_100AF6EE8);
    v127 = Logger.logObject.getter();
    v128 = static os_log_type_t.error.getter();
    v129 = os_log_type_enabled(v127, v128);
    v130 = v201;
    if (v129)
    {
      v131 = swift_slowAlloc();
      *v131 = 0;
      _os_log_impl(&_mh_execute_header, v127, v128, "There was a difference in word count between the initial and post-processed strings. Ideally this shouldn't happen, but sometimes it is unavoidable. Trying to reconcile this with a diff.", v131, 2u);
      v25 = v207;
    }

    v132 = *(v25 + 16);
    if (v132)
    {
      v189 = v113;
      v220 = _swiftEmptyArrayStorage;
      sub_1001999C0(0, v132, 0);
      v133 = v220;
      v134 = v25 + 40;
      v135 = v212;
      do
      {
        v219 = String.lowercased()();

        static CharacterSet.whitespacesAndNewlines.getter();
        v136 = StringProtocol.trimmingCharacters(in:)();
        v138 = v137;

        (v208)(v135, v213);

        v220 = v133;
        v140 = v133[2];
        v139 = v133[3];
        if (v140 >= v139 >> 1)
        {
          sub_1001999C0((v139 > 1), v140 + 1, 1);
          v133 = v220;
        }

        v133[2] = v140 + 1;
        v141 = &v133[2 * v140];
        v141[4] = v136;
        v141[5] = v138;
        v134 += 16;
        --v132;
      }

      while (v132);
      v190 = v133;
      v130 = v201;
      v25 = v207;
      v113 = v189;
    }

    else
    {
      v190 = _swiftEmptyArrayStorage;
    }

    if (v113)
    {
      v220 = _swiftEmptyArrayStorage;
      sub_1001999C0(0, v113, 0);
      v144 = v220;
      v145 = countAndFlagsBits + 40;
      v146 = v212;
      do
      {
        v147 = v113;
        v219 = String.lowercased()();

        static CharacterSet.whitespacesAndNewlines.getter();
        v148 = StringProtocol.trimmingCharacters(in:)();
        v150 = v149;

        (v208)(v146, v213);

        v220 = v144;
        v152 = v144[2];
        v151 = v144[3];
        if (v152 >= v151 >> 1)
        {
          sub_1001999C0((v151 > 1), v152 + 1, 1);
          v144 = v220;
        }

        v144[2] = v152 + 1;
        v153 = &v144[2 * v152];
        v153[4] = v148;
        v153[5] = v150;
        v145 += 16;
        v113 = v147 - 1;
      }

      while (v147 != 1);

      v130 = v201;
      v25 = v207;
    }

    else
    {

      v144 = _swiftEmptyArrayStorage;
    }

    v189 = v144;
    v219._countAndFlagsBits = v144;
    v220 = v190;
    v154 = v199;
    BidirectionalCollection<>.difference<A>(from:)();

    v155 = v202;
    (*(v200 + 16))(v130, v154, v202);
    v156 = *(v198 + 36);
    sub_10000B58C(&qword_100AF6F20, &qword_100AF6F18);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    if (*(v130 + v156) != v219._countAndFlagsBits)
    {
      v193 = v156;
      do
      {
        v163 = v25;
        v164 = dispatch thunk of Collection.subscript.read();
        v166 = *v165;
        v167 = v165[2];
        v168 = v165[3];
        v25 = *(v165 + 33);
        v207 = v165[1];
        v201 = v167;
        v198 = v168;
        sub_1008AD8AC();
        v164(&v219, 0);
        dispatch thunk of Collection.formIndex(after:)();
        if (v25)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v163 = sub_100692980(v163);
          }

          v169 = *(v163 + 2);
          if (v166 >= v169)
          {
            goto LABEL_140;
          }

          v170 = v169 - 1;
          memmove(&v163[16 * v166 + 32], &v163[16 * v166 + 48], 16 * (v169 - 1 - v166));
          *(v163 + 2) = v170;
          sub_1008AD8B4();

          v25 = v163;
          v155 = v202;
        }

        else
        {
          v171 = *(v163 + 2);
          if (v171 < v166)
          {
            goto LABEL_141;
          }

          v155 = v202;
          if ((v166 & 0x8000000000000000) != 0)
          {
            goto LABEL_142;
          }

          v25 = v163;
          v172 = swift_isUniquelyReferenced_nonNull_native();
          if (!v172 || v171 >= *(v163 + 3) >> 1)
          {
            v25 = sub_10009BCC8(v172, v171 + 1, 1, v163);
          }

          v161 = (v25 + 16 * v166);
          swift_arrayDestroy();
          memmove(v161 + 6, v161 + 4, 16 * (*(v25 + 16) - v166));
          ++*(v25 + 16);
          v162 = v201;
          v161[4] = v207;
          v161[5] = v162;
        }

        dispatch thunk of Collection.endIndex.getter();
      }

      while (*(v130 + v193) != v219._countAndFlagsBits);
    }

    sub_100004F84(v130, &qword_100AF6F10);
    if (static Task<>.isCancelled.getter())
    {

      v157 = Logger.logObject.getter();
      v158 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v157, v158))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v157, v158, "Cancelled after step 4a. Aborting.", v25, 2u);
      }

      sub_1008AD84C();
      swift_allocError();
      v160 = 1;
    }

    else
    {
      v173 = *(v25 + 16);
      v174 = _swiftEmptyArrayStorage;
      if (v173)
      {
        v220 = _swiftEmptyArrayStorage;
        sub_1001999C0(0, v173, 0);
        v174 = v220;
        v175 = v25;
        v176 = v25 + 40;
        do
        {
          v219 = String.lowercased()();

          v177 = v212;
          static CharacterSet.whitespacesAndNewlines.getter();
          v178 = StringProtocol.trimmingCharacters(in:)();
          v180 = v179;

          (v208)(v177, v213);

          v220 = v174;
          v182 = v174[2];
          v181 = v174[3];
          if (v182 >= v181 >> 1)
          {
            sub_1001999C0((v181 > 1), v182 + 1, 1);
            v174 = v220;
          }

          v174[2] = v182 + 1;
          v183 = &v174[2 * v182];
          v183[4] = v178;
          v183[5] = v180;
          v176 += 16;
          --v173;
        }

        while (v173);
        v114 = v210;
        v25 = v175;
      }

      else
      {
        v114 = v210;
      }

      v184 = sub_1007ED2D4(v174, v189);

      if (v184)
      {
        (*(v200 + 8))(v199, v202);
        goto LABEL_63;
      }

      v185 = Logger.logObject.getter();
      v186 = static os_log_type_t.fault.getter();
      v187 = os_log_type_enabled(v185, v186);
      v155 = v202;
      if (v187)
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&_mh_execute_header, v185, v186, "The post-processor encountered a discrepancy where diffing was necessary and attempted to diff, however, the attempt was unsuccessful. This is unexpected.", v25, 2u);
      }

      sub_1008AD84C();
      swift_allocError();
      v160 = 2;
    }

    *v159 = v160;
    swift_willThrow();
    (*(v200 + 8))(v199, v155);

    goto LABEL_7;
  }

  if (qword_100AD0BC0 != -1)
  {
LABEL_133:
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  sub_10000617C(v39, qword_100AF6EE8);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "No segments to process", v42, 2u);
  }

  return _swiftEmptyArrayStorage;
}

void sub_1008ACFB8(id a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  v5 = type metadata accessor for TranscriptViewModelSegment();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v47 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = &v39 - v10;
  if (a2)
  {
    [a1 beginEditing];
    v12 = *(a2 + 16);
    v13 = &selRef_setSuggestedName_;
    if (v12)
    {
      v40 = 0;
      v48 = a1;
      v49 = 0;
      v15 = *(v6 + 16);
      v14 = v6 + 16;
      v16 = (a2 + ((*(v14 + 64) + 32) & ~*(v14 + 64)));
      v17 = *(v14 + 56);
      v44 = (v14 + 16);
      v45 = v15;
      v46 = v14;
      v41 = v17;
      v42 = (v14 - 8);
      v43 = v5;
      while (1)
      {
        v25 = v45;
        v45(v11, v16, v5);
        v26 = v47;
        v25(v47, v11, v5);
        type metadata accessor for TranscriptMetadata(0);
        v27 = swift_allocObject();
        UUID.init()();
        (*v44)(v27 + OBJC_IVAR____TtC7Journal18TranscriptMetadata_segment, v26, v5);
        v28 = TranscriptViewModelSegment.text.getter();
        LOBYTE(v26) = sub_1005764B4(v28, v29);

        v30 = TranscriptViewModelSegment.text.getter();
        if ((v26 & 1) == 0)
        {
          *&v54[0] = v30;
          *(&v54[0] + 1) = v31;

          v32._countAndFlagsBits = 32;
          v32._object = 0xE100000000000000;
          String.append(_:)(v32);
        }

        a1 = v48;
        v33 = [v48 length];
        v34 = v33 - v49;
        if (v33 < v49)
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
        }

        if (__OFSUB__(v33, v49))
        {
          goto LABEL_35;
        }

        v50 = v49;
        v51 = v33 - v49;
        if (!v34)
        {
          goto LABEL_5;
        }

        if (qword_100ACFB50 != -1)
        {
          swift_once();
        }

        if ([a1 attribute:qword_100B2F600 atIndex:? effectiveRange:?])
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v52 = 0u;
          v53 = 0u;
        }

        v54[0] = v52;
        v54[1] = v53;
        if (!*(&v53 + 1))
        {
          break;
        }

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_5;
        }

        v35 = static UUID.== infix(_:_:)();

        if ((v35 & 1) == 0)
        {
          goto LABEL_5;
        }

        v5 = v43;
        (*v42)(v11, v43);
        if (__OFADD__(v50, v51))
        {
          goto LABEL_36;
        }

        v49 = &v50[v51];
        v13 = &selRef_setSuggestedName_;
LABEL_8:
        v16 += v41;
        if (!--v12)
        {
          goto LABEL_25;
        }
      }

      sub_100004F84(v54, &qword_100AD13D0);
LABEL_5:
      v18 = objc_allocWithZone(NSMutableAttributedString);
      v19 = String._bridgeToObjectiveC()();

      v20 = [v18 initWithString:v19];

      type metadata accessor for Key(0);
      sub_1000806F8();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v22 = v20;
      v13 = &selRef_setSuggestedName_;
      [v22 addAttributes:isa range:{0, objc_msgSend(v22, "length")}];

      if (qword_100ACFB50 != -1)
      {
        swift_once();
      }

      v23 = qword_100B2F600;

      v24 = [v22 length];

      [v22 addAttribute:v23 value:v27 range:{0, v24}];

      a1 = v48;
      [v48 replaceCharactersInRange:v49 withAttributedString:{v34, v22}];
      v49 = [a1 length];

      v5 = v43;
      (*v42)(v11, v43);
      v40 = 1;
      goto LABEL_8;
    }

    v40 = 0;
    v49 = 0;
LABEL_25:
    v36 = [a1 v13[233]];
    if (v49 != v36)
    {
      v37 = [a1 v13[233]];
      if (v37 < v49)
      {
        goto LABEL_37;
      }

      if (__OFSUB__(v37, v49))
      {
        goto LABEL_39;
      }

      [a1 deleteCharactersInRange:?];
    }

    if (v40)
    {
      v38 = [a1 v13[233]];
      if (__OFSUB__(v38, 1))
      {
        goto LABEL_38;
      }

      [a1 deleteCharactersInRange:{v38 - 1, 1}];
    }

    [a1 endEditing];
  }
}

uint64_t sub_1008AD5C0@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  v5 = 1;
  if (v4)
  {
    v7 = result;
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    v9 = swift_allocObject();
    *(v9 + 24) = 0;
    *(v9 + 16) = 0;
    *(v9 + 32) = 1;
    v10 = swift_allocObject();
    *(v10 + 24) = 0;
    *(v10 + 16) = 0;
    *(v10 + 32) = 1;
    v11 = swift_allocObject();
    v11[2] = v8;
    v11[3] = v10;
    v11[4] = v7;
    v11[5] = a2;
    v11[6] = v9;

    sub_1000F24EC(&qword_100AD1EF0);
    sub_1000777B4();
    sub_10000B58C(&qword_100AD1EF8, &qword_100AD1EF0);
    StringProtocol.enumerateSubstrings<A>(in:options:_:)();

    swift_beginAccess();
    v16 = *(v9 + 16);
    v5 = *(v9 + 32);
    swift_beginAccess();
    v15 = *(v10 + 16);
    v12 = *(v10 + 32);

    v14 = v15;
    v13 = v16;
  }

  else
  {
    v14 = 0uLL;
    v12 = 1;
    v13 = 0uLL;
  }

  *a3 = v13;
  *(a3 + 16) = v5;
  *(a3 + 24) = v14;
  *(a3 + 40) = v12;
  return result;
}

unint64_t sub_1008AD84C()
{
  result = qword_100AF6F08;
  if (!qword_100AF6F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF6F08);
  }

  return result;
}

uint64_t sub_1008AD8BC(uint64_t a1)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  if (a1 <= 1)
  {
    if (a1 <= 1)
    {
      goto LABEL_244;
    }
  }

  else
  {
    if (a1 == 2 || a1 == 3)
    {
      goto LABEL_244;
    }

    if (a1 == 4)
    {
      return 0;
    }
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {

    goto LABEL_244;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v10 & 1) == 0)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
    if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
    {
      goto LABEL_31;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {
      goto LABEL_244;
    }

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
    if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
    {
      goto LABEL_31;
    }

    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v20)
    {
      goto LABEL_244;
    }

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
    if (v21 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v23 == v24)
    {
      goto LABEL_31;
    }

    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v25)
    {
      goto LABEL_244;
    }

    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;
    if (v26 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v28 == v29)
    {
      goto LABEL_31;
    }

    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v30)
    {
      goto LABEL_244;
    }

    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;
    if (v31 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v33 == v34)
    {
      goto LABEL_31;
    }

    v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v35)
    {
      goto LABEL_244;
    }

    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;
    if (v36 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v38 == v39)
    {
      goto LABEL_31;
    }

    v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v40)
    {
      goto LABEL_244;
    }

    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;
    if (v41 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v43 == v44)
    {
      goto LABEL_31;
    }

    v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v45)
    {
      goto LABEL_244;
    }

    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;
    if (v46 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v48 == v49)
    {
      goto LABEL_31;
    }

    v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v50)
    {
      goto LABEL_244;
    }

    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;
    if (v51 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v53 == v54)
    {
      goto LABEL_31;
    }

    v55 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v55)
    {
      goto LABEL_244;
    }

    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;
    if (v56 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v58 == v59)
    {
      goto LABEL_31;
    }

    v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v60)
    {
      goto LABEL_244;
    }

    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v62;
    if (v61 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v63 == v64)
    {
      goto LABEL_31;
    }

    v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v65)
    {
      goto LABEL_244;
    }

    v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v68 = v67;
    if (v66 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v68 == v69)
    {
      goto LABEL_31;
    }

    v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v70)
    {
      goto LABEL_244;
    }

    v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v72;
    if (v71 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v73 == v74)
    {
      goto LABEL_31;
    }

    v75 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v75)
    {
      goto LABEL_244;
    }

    v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v78 = v77;
    if (v76 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v78 == v79)
    {
      goto LABEL_31;
    }

    v80 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v80)
    {
      goto LABEL_244;
    }

    v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v83 = v82;
    if (v81 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v83 == v84)
    {
      goto LABEL_31;
    }

    v85 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v85)
    {
      goto LABEL_244;
    }

    v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v88 = v87;
    if (v86 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v88 == v89)
    {
      goto LABEL_31;
    }

    v90 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v90)
    {
      goto LABEL_244;
    }

    v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v93 = v92;
    if (v91 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v93 == v94)
    {
      goto LABEL_31;
    }

    v95 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v95)
    {
      goto LABEL_244;
    }

    v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v98 = v97;
    if (v96 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v98 == v99)
    {
      goto LABEL_31;
    }

    v100 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v100)
    {
      goto LABEL_244;
    }

    v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v103 = v102;
    if (v101 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v103 == v104)
    {
      goto LABEL_31;
    }

    v105 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v105)
    {
      goto LABEL_244;
    }

    v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v108 = v107;
    if (v106 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v108 == v109)
    {
      goto LABEL_31;
    }

    v110 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v110)
    {
      goto LABEL_244;
    }

    v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v113 = v112;
    if (v111 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v113 == v114)
    {
      goto LABEL_31;
    }

    v115 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v115)
    {
      goto LABEL_244;
    }

    v116 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v118 = v117;
    if (v116 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v118 == v119)
    {
      goto LABEL_31;
    }

    v120 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v120)
    {
      goto LABEL_244;
    }

    v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v123 = v122;
    if (v121 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v123 == v124)
    {
      goto LABEL_31;
    }

    v125 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v125)
    {
      goto LABEL_244;
    }

    v126 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v128 = v127;
    if (v126 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v128 == v129)
    {
      goto LABEL_31;
    }

    v130 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v130)
    {
      goto LABEL_244;
    }

    v131 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v133 = v132;
    if (v131 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v133 == v134)
    {
      goto LABEL_31;
    }

    v135 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v135)
    {
      goto LABEL_244;
    }

    v136 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v138 = v137;
    if (v136 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v138 == v139)
    {
      goto LABEL_31;
    }

    v140 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v140)
    {
      goto LABEL_244;
    }

    v141 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v143 = v142;
    if (v141 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v143 == v144)
    {
      goto LABEL_31;
    }

    v145 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v145)
    {
      goto LABEL_244;
    }

    v146 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v148 = v147;
    if (v146 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v148 == v149)
    {
      goto LABEL_31;
    }

    v150 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v150)
    {
      goto LABEL_244;
    }

    v151 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v153 = v152;
    if (v151 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v153 == v154)
    {
      goto LABEL_31;
    }

    v155 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v155)
    {
      goto LABEL_244;
    }

    v156 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v158 = v157;
    if (v156 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v158 == v159)
    {
      goto LABEL_31;
    }

    v160 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v160)
    {
      goto LABEL_244;
    }

    v161 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v163 = v162;
    if (v161 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v163 == v164)
    {
      goto LABEL_31;
    }

    v165 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v165)
    {
      goto LABEL_244;
    }

    v166 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v168 = v167;
    if (v166 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v168 == v169)
    {
      goto LABEL_31;
    }

    v170 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v170)
    {
      goto LABEL_244;
    }

    v171 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v173 = v172;
    if (v171 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v173 == v174)
    {
      goto LABEL_31;
    }

    v175 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v175)
    {
      goto LABEL_244;
    }

    v176 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v178 = v177;
    if (v176 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v178 == v179)
    {
      goto LABEL_31;
    }

    v180 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v180)
    {
      goto LABEL_244;
    }

    v181 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v183 = v182;
    if (v181 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v183 == v184)
    {
      goto LABEL_31;
    }

    v185 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v185)
    {
      goto LABEL_244;
    }

    v186 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v188 = v187;
    if (v186 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v188 == v189)
    {
      goto LABEL_31;
    }

    v190 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v190)
    {
      goto LABEL_244;
    }

    v191 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v193 = v192;
    if (v191 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v193 == v194)
    {
      goto LABEL_31;
    }

    v195 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v195)
    {
      goto LABEL_244;
    }

    v196 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v198 = v197;
    if (v196 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v198 == v199)
    {
      goto LABEL_31;
    }

    v200 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v200)
    {
      goto LABEL_244;
    }

    v201 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v203 = v202;
    if (v201 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v203 == v204)
    {
      goto LABEL_31;
    }

    v205 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v205)
    {
      goto LABEL_244;
    }

    v206 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v208 = v207;
    if (v206 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v208 == v209)
    {
      goto LABEL_31;
    }

    v210 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v210)
    {
      goto LABEL_244;
    }

    v211 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v213 = v212;
    if (v211 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v213 == v214)
    {
      goto LABEL_31;
    }

    v215 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v215)
    {
      goto LABEL_244;
    }

    v216 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v218 = v217;
    if (v216 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v218 == v219)
    {
      goto LABEL_31;
    }

    v220 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v220)
    {
      goto LABEL_244;
    }

    v221 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v223 = v222;
    if (v221 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v223 == v224)
    {
      goto LABEL_31;
    }

    v225 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v225)
    {
      goto LABEL_244;
    }

    v226 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v228 = v227;
    if (v226 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v228 == v229)
    {
      goto LABEL_31;
    }

    v230 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v230)
    {
      goto LABEL_244;
    }

    v231 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v233 = v232;
    if (v231 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v233 == v234)
    {
      goto LABEL_31;
    }

    v235 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v235)
    {
      goto LABEL_244;
    }

    v236 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v238 = v237;
    if (v236 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v238 == v239)
    {
      goto LABEL_31;
    }

    v240 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v240)
    {
      goto LABEL_244;
    }

    v241 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v243 = v242;
    if (v241 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v243 == v244)
    {
      goto LABEL_31;
    }

    v245 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v245)
    {
      goto LABEL_244;
    }

    v246 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v248 = v247;
    if (v246 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v248 == v249)
    {
      goto LABEL_31;
    }

    v250 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v250)
    {
      goto LABEL_244;
    }

    v251 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v253 = v252;
    if (v251 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v253 == v254)
    {
      goto LABEL_31;
    }

    v255 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v255)
    {
      goto LABEL_244;
    }

    v256 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v258 = v257;
    if (v256 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v258 == v259)
    {
      goto LABEL_31;
    }

    v260 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v260)
    {
      goto LABEL_244;
    }

    v261 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v263 = v262;
    if (v261 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v263 == v264)
    {
      goto LABEL_31;
    }

    v265 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v265)
    {
      goto LABEL_244;
    }

    v266 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v268 = v267;
    if (v266 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v268 == v269)
    {
      goto LABEL_31;
    }

    v270 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v270)
    {
      goto LABEL_244;
    }

    v271 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v273 = v272;
    if (v271 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v273 == v274)
    {
      goto LABEL_31;
    }

    v275 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v275)
    {
      goto LABEL_244;
    }

    v276 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v278 = v277;
    if (v276 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v278 == v279)
    {
      goto LABEL_31;
    }

    v280 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v280)
    {
      goto LABEL_244;
    }

    v281 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v283 = v282;
    if (v281 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v283 == v284)
    {
      goto LABEL_31;
    }

    v285 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v285)
    {
      goto LABEL_244;
    }

    v286 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v288 = v287;
    if (v286 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v288 == v289)
    {
      goto LABEL_31;
    }

    v290 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v290)
    {
      goto LABEL_244;
    }

    v291 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v293 = v292;
    if (v291 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v293 == v294)
    {
      goto LABEL_31;
    }

    v295 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v295)
    {
      goto LABEL_244;
    }

    v296 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v298 = v297;
    if (v296 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v298 == v299)
    {
      goto LABEL_31;
    }

    v300 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v300)
    {
      goto LABEL_244;
    }

    v301 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v303 = v302;
    if (v301 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v303 == v304)
    {
      goto LABEL_31;
    }

    v305 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v305)
    {
      goto LABEL_244;
    }

    v306 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v308 = v307;
    if (v306 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v308 == v309)
    {
      goto LABEL_31;
    }

    v310 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v310)
    {
      goto LABEL_244;
    }

    v311 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v313 = v312;
    if (v311 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v313 == v314)
    {
      goto LABEL_31;
    }

    v315 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v315)
    {
      goto LABEL_244;
    }

    v316 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v318 = v317;
    if (v316 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v318 == v319)
    {
      goto LABEL_31;
    }

    v320 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v320)
    {
      goto LABEL_244;
    }

    v321 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v323 = v322;
    if (v321 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v323 == v324)
    {
      goto LABEL_31;
    }

    v325 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v325)
    {
      goto LABEL_244;
    }

    v326 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v328 = v327;
    if (v326 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v328 == v329)
    {
      goto LABEL_31;
    }

    v330 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v330)
    {
      goto LABEL_244;
    }

    v331 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v333 = v332;
    if (v331 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v333 == v334)
    {
      goto LABEL_31;
    }

    v335 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v335)
    {
      goto LABEL_244;
    }

    v336 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v338 = v337;
    if (v336 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v338 == v339)
    {
      goto LABEL_31;
    }

    v340 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v340)
    {
      goto LABEL_244;
    }

    v341 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v343 = v342;
    if (v341 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v343 == v344)
    {
      goto LABEL_31;
    }

    v345 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v345)
    {
      goto LABEL_244;
    }

    v346 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v348 = v347;
    if (v346 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v348 == v349)
    {
      goto LABEL_31;
    }

    v350 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v350)
    {
      goto LABEL_244;
    }

    v351 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v353 = v352;
    if (v351 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v353 == v354)
    {
      goto LABEL_31;
    }

    v355 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v355)
    {
      goto LABEL_244;
    }

    v356 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v358 = v357;
    if (v356 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v358 == v359)
    {
      goto LABEL_31;
    }

    v360 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v360)
    {
      goto LABEL_244;
    }

    v361 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v363 = v362;
    if (v361 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v363 == v364)
    {
      goto LABEL_31;
    }

    v365 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v365)
    {
      goto LABEL_244;
    }

    v366 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v368 = v367;
    if (v366 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v368 == v369)
    {
LABEL_31:
    }

    else
    {
      v370 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v370 & 1) == 0)
      {
        return 0;
      }
    }
  }

LABEL_244:
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  return String.init(localized:defaultValue:table:bundle:locale:comment:)();
}

void sub_1008B13E0()
{
  sub_1000F24EC(&unk_100AF7150);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100940080;
  *(inited + 32) = UIPageViewControllerOptionInterPageSpacingKey;
  *(inited + 64) = &type metadata for Int;
  *(inited + 40) = 0;
  v1 = UIPageViewControllerOptionInterPageSpacingKey;
  sub_100364660(inited);
  swift_setDeallocating();
  sub_100004F84(inited + 32, &qword_100ADFF10);
  v2 = objc_allocWithZone(type metadata accessor for InsightsCalendarDetailTabView.ViewControllerType());
  type metadata accessor for OptionsKey(0);
  sub_1008B3D7C(&qword_100AF7160, type metadata accessor for OptionsKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v4 = [v2 initWithTransitionStyle:1 navigationOrientation:0 options:isa];

  v5 = v4;
  sub_1000F24EC(&qword_100AF7138);
  UIViewControllerRepresentableContext.coordinator.getter();
  [v5 setDataSource:v9];

  UIViewControllerRepresentableContext.coordinator.getter();
  [v5 setDelegate:v9];

  v6 = v5;
  _UISolariumEnabled();
  [v6 additionalSafeAreaInsets];
  [v6 setAdditionalSafeAreaInsets:?];
  v7 = [v6 view];

  if (v7)
  {
    v8 = [objc_opt_self() systemBackgroundColor];
    [v7 setBackgroundColor:v8];
  }

  else
  {
    __break(1u);
  }
}

void sub_1008B1650(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000F24EC(&qword_100AD57F0);
  __chkstk_darwin(v6 - 8);
  v87 = &v86 - v7;
  v101 = sub_1000F24EC(&qword_100AD99C0);
  __chkstk_darwin(v101);
  v9 = &v86 - v8;
  v10 = sub_1000F24EC(&unk_100AD9850);
  __chkstk_darwin(v10 - 8);
  v94 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v90 = &v86 - v13;
  __chkstk_darwin(v14);
  v16 = &v86 - v15;
  __chkstk_darwin(v17);
  v100 = &v86 - v18;
  v19 = type metadata accessor for DateComponents();
  v102 = *(v19 - 8);
  __chkstk_darwin(v19);
  v88 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v86 - v22;
  v24 = type metadata accessor for InsightsCalendarDetailTabView(0);
  v25 = v24 - 8;
  __chkstk_darwin(v24);
  v27 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1000F24EC(&qword_100AF7138);
  v96 = a2;
  UIViewControllerRepresentableContext.coordinator.getter();
  v28 = v104;
  sub_1008B3CBC(v3, v27);
  v29 = OBJC_IVAR____TtCV7Journal29InsightsCalendarDetailTabView11Coordinator_configuration;
  swift_beginAccess();
  sub_1008B3DC4(v27, v28 + v29);
  swift_endAccess();

  sub_1000F24EC(&unk_100AF7060);
  v103 = v23;
  Binding.wrappedValue.getter();
  v30 = v3 + *(v25 + 28);
  v31 = *v30;
  v32 = *(v30 + 16);
  aBlock = v31;
  v106 = v32;
  sub_1000F24EC(&qword_100AF7130);
  Binding.wrappedValue.getter();
  v99 = v104;
  v97 = a1;
  v33 = [a1 viewControllers];
  if (!v33)
  {
    goto LABEL_12;
  }

  v34 = v33;
  sub_1004B7AE8();
  v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v35 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }

LABEL_11:

    goto LABEL_12;
  }

  if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_4:
  if ((v35 & 0xC000000000000001) != 0)
  {
    v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v36 = *(v35 + 32);
  }

  v37 = v36;

  type metadata accessor for InsightsEntriesViewController();
  v38 = swift_dynamicCastClass();
  if (v38)
  {
    v39 = OBJC_IVAR____TtC7Journal29InsightsEntriesViewController_currentDate;
    v40 = v38;
    swift_beginAccess();
    v98 = v40;
    v41 = v100;
    sub_1000082B4(v40 + v39, v100, &unk_100AD9850);
    v89 = 0;
    v42 = v102;
    goto LABEL_13;
  }

LABEL_12:
  v42 = v102;
  v43 = *(v102 + 56);
  v89 = 1;
  v41 = v100;
  v43(v100, 1, 1, v19);
  v98 = 0;
LABEL_13:
  v92 = v42[2];
  v93 = v42 + 2;
  v92(v16, v103, v19);
  v91 = v42[7];
  v91(v16, 0, 1, v19);
  v44 = *(v101 + 48);
  sub_1000082B4(v41, v9, &unk_100AD9850);
  sub_1000082B4(v16, &v9[v44], &unk_100AD9850);
  v45 = v42[6];
  v46 = v45(v9, 1, v19);
  v101 = v19;
  if (v46 == 1)
  {
    sub_100004F84(v16, &unk_100AD9850);
    sub_100004F84(v41, &unk_100AD9850);
    if (v45(&v9[v44], 1, v19) == 1)
    {
      sub_100004F84(v9, &unk_100AD9850);
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v47 = v90;
  sub_1000082B4(v9, v90, &unk_100AD9850);
  if (v45(&v9[v44], 1, v19) == 1)
  {
    sub_100004F84(v16, &unk_100AD9850);
    sub_100004F84(v100, &unk_100AD9850);
    (*(v102 + 8))(v47, v19);
LABEL_18:
    sub_100004F84(v9, &qword_100AD99C0);
LABEL_19:
    v48 = objc_allocWithZone(type metadata accessor for InsightsEntriesViewController());
    *&v48[OBJC_IVAR____TtC7Journal29InsightsEntriesViewController____lazy_storage___model] = 0;
    v49 = v101;
    v50 = v91;
    v91(&v48[OBJC_IVAR____TtC7Journal29InsightsEntriesViewController_currentDate], 1, 1, v101);
    v51 = sub_100013708(0, 0);
    v52 = v94;
    v92(v94, v103, v49);
    v50(v52, 0, 1, v49);
    v53 = OBJC_IVAR____TtC7Journal29InsightsEntriesViewController_currentDate;
    swift_beginAccess();
    sub_10013E988(v52, v51 + v53);
    swift_endAccess();
    sub_10016448C();
    sub_100004F84(v52, &unk_100AD9850);
    v54 = v51;
    UIViewControllerRepresentableContext.coordinator.getter();
    v55 = aBlock;
    *&v54[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_delegate + 8] = &off_100A848C8;
    swift_unknownObjectWeakAssign();

    sub_1000F24EC(&unk_100AD4780);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_100941D50;
    *(v56 + 32) = v54;
    sub_1004B7AE8();
    v57 = v54;
    v58.super.isa = Array._bridgeToObjectiveC()().super.isa;

    UIViewControllerRepresentableContext.transaction.getter();
    sub_1008B3E28();
    Transaction.subscript.getter();

    v59 = aBlock;
    UIViewControllerRepresentableContext.transaction.getter();
    v60 = Transaction.animation.getter();

    if (v60)
    {

      UIViewControllerRepresentableContext.transaction.getter();
      v61 = Transaction.disablesAnimations.getter();

      v62 = v61 ^ 1;
    }

    else
    {
      v62 = 0;
    }

    v67 = v102;
    v68 = v97;
    v69 = swift_allocObject();
    *(v69 + 16) = v68;
    *(v69 + 24) = v57;
    v108 = sub_1008B3E7C;
    v109 = v69;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v106 = sub_10003264C;
    v107 = &unk_100A84950;
    v70 = _Block_copy(&aBlock);
    v71 = v57;
    v72 = v68;

    [v72 setViewControllers:v58.super.isa direction:v59 animated:v62 & 1 completion:v70];
    _Block_release(v70);

    (*(v67 + 8))(v103, v101);
    return;
  }

  v63 = v102;
  v64 = v88;
  (*(v102 + 32))(v88, &v9[v44], v19);
  sub_1008B3D7C(&qword_100AD99B0, &type metadata accessor for DateComponents);
  v65 = dispatch thunk of static Equatable.== infix(_:_:)();
  v66 = *(v63 + 8);
  v66(v64, v19);
  sub_100004F84(v16, &unk_100AD9850);
  sub_100004F84(v100, &unk_100AD9850);
  v66(v47, v19);
  sub_100004F84(v9, &unk_100AD9850);
  if ((v65 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_22:
  if (v89)
  {
    (*(v102 + 8))(v103, v101);

    return;
  }

  v73 = v101;
  v74 = v102;
  v75 = v99;
  if (v99)
  {
    v76 = v98;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v78 = Strong;
      v79 = v76;
      v80 = [v78 isBeingDismissed];

      if ((v80 & 1) != 0 || (v81 = swift_unknownObjectWeakLoadStrong()) == 0)
      {
      }

      else
      {
        v82 = v81;
        v83 = [v81 isMovingFromParentViewController];

        if ((v83 & 1) == 0)
        {
          (*(v74 + 8))(v103, v73);

          return;
        }
      }
    }

    v84 = type metadata accessor for CanvasContentInputType();
    v85 = v87;
    (*(*(v84 - 8) + 56))(v87, 1, 1, v84);
    sub_1003054F0(v75, v85, 1);

    sub_100004F84(v85, &qword_100AD57F0);
    (*(v74 + 8))(v103, v73);
  }

  else
  {
    (*(v102 + 8))(v103, v101);
  }
}

void sub_1008B2328(uint64_t a1, uint64_t a2)
{
  v9.receiver = v2;
  v9.super_class = type metadata accessor for InsightsCalendarDetailTabView.ViewControllerType();
  objc_msgSendSuper2(&v9, "setContentScrollView:forEdge:", a1, a2);
  if (a2)
  {
    v5 = [v2 parentViewController];
    if (v5)
    {
      v6 = v5;
      [v5 setContentScrollView:a1 forEdge:1];
    }
  }

  if ((a2 & 4) != 0)
  {
    v7 = [v2 parentViewController];
    if (v7)
    {
      v8 = v7;
      [v7 setContentScrollView:a1 forEdge:4];
    }
  }
}

void (*sub_1008B2618(void *a1, uint64_t a2))(void, void)
{
  v36 = a2;
  v3 = type metadata accessor for Calendar();
  v38 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for InsightsCalendarDetailTabView(0);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&unk_100AD9850);
  __chkstk_darwin(v8 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  v14 = type metadata accessor for DateComponents();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for InsightsEntriesViewController();
  v18 = swift_dynamicCastClass();
  if (!v18)
  {
    return 0;
  }

  v19 = v18;
  v34 = v3;
  v20 = OBJC_IVAR____TtC7Journal29InsightsEntriesViewController_currentDate;
  swift_beginAccess();
  sub_1000082B4(v19 + v20, v13, &unk_100AD9850);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_100004F84(v13, &unk_100AD9850);
    return 0;
  }

  v21 = v39;
  (*(v15 + 32))(v17, v13, v14);
  v22 = a1;
  result = DateComponents.day.modify();
  v25 = *(v24 + 8);
  v33 = v22;
  if (v25)
  {
    result(v40, 0);
LABEL_8:
    v26 = OBJC_IVAR____TtCV7Journal29InsightsCalendarDetailTabView11Coordinator_configuration;
    swift_beginAccess();
    sub_1008B3CBC(v21 + v26, v7);
    sub_100048878(v5);
    sub_1008B3D20(v7);
    v27 = *(v15 + 16);
    v27(v10, v17, v14);
    v28 = *(v15 + 56);
    v28(v10, 0, 1, v14);
    LOBYTE(v26) = sub_10088FE98(v10);
    sub_100004F84(v10, &unk_100AD9850);
    (*(v38 + 8))(v5, v34);
    if ((v26 & 1) == 0)
    {
      v30 = objc_allocWithZone(v35);
      *&v30[OBJC_IVAR____TtC7Journal29InsightsEntriesViewController____lazy_storage___model] = 0;
      v28(&v30[OBJC_IVAR____TtC7Journal29InsightsEntriesViewController_currentDate], 1, 1, v14);
      v29 = sub_100013708(0, 0);
      v27(v10, v17, v14);
      v28(v10, 0, 1, v14);
      v31 = OBJC_IVAR____TtC7Journal29InsightsEntriesViewController_currentDate;
      swift_beginAccess();
      sub_10013E988(v10, v29 + v31);
      swift_endAccess();
      sub_10016448C();

      sub_100004F84(v10, &unk_100AD9850);
      (*(v15 + 8))(v17, v14);
      return v29;
    }

    (*(v15 + 8))(v17, v14);

    return 0;
  }

  if (!__OFADD__(*v24, v36))
  {
    *v24 += v36;
    result(v40, 0);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

id sub_1008B2CB8(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1008B2D28()
{
  result = type metadata accessor for InsightsCalendarDetailTabView(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1008B2E00()
{
  sub_1008B2F60(319, &qword_100AF70D8, &type metadata accessor for DateComponents, &type metadata accessor for Binding);
  if (v0 <= 0x3F)
  {
    sub_1008B2EFC();
    if (v1 <= 0x3F)
    {
      sub_1008B2F60(319, &qword_100AF70F0, &type metadata accessor for Calendar, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1008B2EFC()
{
  if (!qword_100AF70E0)
  {
    sub_1000F2A18(&qword_100AD3748);
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &qword_100AF70E0);
    }
  }
}

void sub_1008B2F60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1008B2FF0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  __chkstk_darwin(a1 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1008B3CBC(v2, v5);
  v6 = type metadata accessor for InsightsCalendarDetailTabView.Coordinator(0);
  v7 = objc_allocWithZone(v6);
  sub_1008B3CBC(v5, v7 + OBJC_IVAR____TtCV7Journal29InsightsCalendarDetailTabView11Coordinator_configuration);
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, "init");
  result = sub_1008B3D20(v5);
  *a2 = v8;
  return result;
}

uint64_t sub_1008B30B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1008B3D7C(&qword_100AF7168, type metadata accessor for InsightsCalendarDetailTabView);

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1008B3148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1008B3D7C(&qword_100AF7168, type metadata accessor for InsightsCalendarDetailTabView);

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1008B31DC()
{
  sub_1008B3D7C(&qword_100AF7168, type metadata accessor for InsightsCalendarDetailTabView);
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_1008B327C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1008B3D7C(&unk_100AF7170, type metadata accessor for NavigationDirection);

  return static TransactionKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_1008B3310(uint64_t a1)
{
  v38 = a1;
  v2 = type metadata accessor for UUID();
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v34 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v4 - 8);
  v35 = &v34 - v5;
  v6 = sub_1000F24EC(&unk_100AEEE20);
  __chkstk_darwin(v6);
  v8 = &v34 - v7;
  v9 = type metadata accessor for InsightsCalendarDetailTabView(0);
  __chkstk_darwin(v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v34 - v13;
  v15 = OBJC_IVAR____TtCV7Journal29InsightsCalendarDetailTabView11Coordinator_configuration;
  swift_beginAccess();
  sub_1008B3CBC(v1 + v15, v14);
  v16 = &v14[*(v9 + 20)];
  v17 = *v16;
  v18 = *(v16 + 2);
  v40 = v17;
  v41 = v18;
  sub_1000F24EC(&qword_100AF7130);
  Binding.wrappedValue.getter();
  v19 = v39;
  sub_1008B3D20(v14);
  if (!v19)
  {
    sub_1008B3CBC(v1 + v15, v11);
    v26 = &v11[*(v9 + 20)];
    v27 = *(v26 + 1);
    v28 = *(v26 + 2);
    *&v40 = *v26;
    *(&v40 + 1) = v27;
    v41 = v28;
    v39 = v38;

    Binding.wrappedValue.setter();
    sub_1008B3D20(v11);

LABEL_9:
    v25 = 0;
    return v25 & 1;
  }

  v20 = OBJC_IVAR____TtC7Journal14EntryViewModel_uuid;
  v21 = *(v6 + 48);
  sub_1000082B4(v19 + OBJC_IVAR____TtC7Journal14EntryViewModel_uuid, v8, &qword_100AD1420);
  sub_1000082B4(v38 + v20, &v8[v21], &qword_100AD1420);
  v23 = v36;
  v22 = v37;
  v24 = *(v36 + 48);
  if (v24(v8, 1, v37) != 1)
  {
    v29 = v35;
    sub_1000082B4(v8, v35, &qword_100AD1420);
    if (v24(&v8[v21], 1, v22) != 1)
    {
      v31 = &v8[v21];
      v32 = v34;
      (*(v23 + 32))(v34, v31, v22);
      sub_1008B3D7C(&qword_100AD9220, &type metadata accessor for UUID);
      v25 = dispatch thunk of static Equatable.== infix(_:_:)();

      v33 = *(v23 + 8);
      v33(v32, v22);
      v33(v29, v22);
      sub_100004F84(v8, &qword_100AD1420);
      return v25 & 1;
    }

    (*(v23 + 8))(v29, v22);
    goto LABEL_8;
  }

  if (v24(&v8[v21], 1, v22) != 1)
  {
LABEL_8:
    sub_100004F84(v8, &unk_100AEEE20);
    goto LABEL_9;
  }

  sub_100004F84(v8, &qword_100AD1420);
  v25 = 1;
  return v25 & 1;
}

uint64_t sub_1008B37DC(uint64_t a1)
{
  v48 = a1;
  v2 = type metadata accessor for Calendar();
  v49 = *(v2 - 8);
  __chkstk_darwin(v2);
  v46 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DateComponents();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v47 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v41 - v8;
  v10 = type metadata accessor for Date();
  v44 = *(v10 - 8);
  v45 = v10;
  __chkstk_darwin(v10);
  v43 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for InsightsCalendarDetailTabView(0);
  __chkstk_darwin(v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v41 - v16;
  v18 = OBJC_IVAR____TtCV7Journal29InsightsCalendarDetailTabView11Coordinator_configuration;
  swift_beginAccess();
  v50 = v1;
  sub_1008B3CBC(v1 + v18, v17);
  v19 = &v17[*(v12 + 20)];
  v20 = *v19;
  v21 = *(v19 + 2);
  v52 = v20;
  v53 = v21;
  sub_1000F24EC(&qword_100AF7130);
  Binding.wrappedValue.getter();
  v22 = v51;
  result = sub_1008B3D20(v17);
  if (v22)
  {

    sub_1008B3CBC(v50 + v18, v14);
    v24 = &v14[*(v12 + 20)];
    v25 = *v24;
    v26 = *(v24 + 1);
    v41 = v2;
    v42 = v9;
    v27 = v5;
    v28 = v4;
    v29 = *(v24 + 2);
    *&v52 = v25;
    *(&v52 + 1) = v26;
    v53 = v29;
    v51 = 0;

    Binding.wrappedValue.setter();
    sub_1008B3D20(v14);
    v30 = v28;
    v31 = v27;
    v32 = v49;
    v33 = v42;

    v34 = *(v48 + OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry);
    result = NSManagedObjectContext.performAndWait<A>(_:)();
    if ((v52 & 1) == 0)
    {
      sub_1008B3CBC(v50 + v18, v14);
      v35 = OBJC_IVAR____TtC7Journal14EntryViewModel_date;
      swift_beginAccess();
      v37 = v43;
      v36 = v44;
      v38 = v34 + v35;
      v39 = v45;
      (*(v44 + 16))(v43, v38, v45);
      v40 = v46;
      static Calendar.current.getter();
      if (qword_100AD0BA8 != -1)
      {
        swift_once();
      }

      Calendar.dateComponents(_:from:)();
      (*(v32 + 8))(v40, v41);
      (*(v36 + 8))(v37, v39);
      (*(v31 + 16))(v47, v33, v30);
      sub_1000F24EC(&unk_100AF7060);
      Binding.wrappedValue.setter();
      (*(v31 + 8))(v33, v30);
      return sub_1008B3D20(v14);
    }
  }

  return result;
}

uint64_t sub_1008B3CBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InsightsCalendarDetailTabView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008B3D20(uint64_t a1)
{
  v2 = type metadata accessor for InsightsCalendarDetailTabView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1008B3D7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1008B3DC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InsightsCalendarDetailTabView(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1008B3E28()
{
  result = qword_100AF7140;
  if (!qword_100AF7140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF7140);
  }

  return result;
}

void sub_1008B3EA0(void *a1, int a2)
{
  v37 = a2;
  v4 = type metadata accessor for InsightsCalendarDetailTabView(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&unk_100AD9850);
  __chkstk_darwin(v7 - 8);
  v9 = &v34 - v8;
  v10 = type metadata accessor for DateComponents();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v34 - v15;
  *&v18 = __chkstk_darwin(v17).n128_u64[0];
  v20 = &v34 - v19;
  v21 = [a1 viewControllers];
  if (!v21)
  {
    return;
  }

  v22 = v21;
  v34 = v2;
  v35 = v11;
  sub_1004B7AE8();
  v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v23 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }

LABEL_17:

    return;
  }

  if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_17;
  }

LABEL_4:
  if ((v23 & 0xC000000000000001) != 0)
  {
    v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v24 = *(v23 + 32);
  }

  v36 = v24;

  type metadata accessor for InsightsEntriesViewController();
  v25 = swift_dynamicCastClass();
  if (v25 && (v26 = v25, [a1 setContentScrollView:*(v25 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView) forEdge:5], (v37 & 1) != 0))
  {
    v27 = OBJC_IVAR____TtC7Journal29InsightsEntriesViewController_currentDate;
    swift_beginAccess();
    sub_1000082B4(v26 + v27, v9, &unk_100AD9850);
    v28 = v35;
    if ((*(v35 + 48))(v9, 1, v10) == 1)
    {

      sub_100004F84(v9, &unk_100AD9850);
    }

    else
    {
      (*(v28 + 32))(v20, v9, v10);
      v30 = OBJC_IVAR____TtCV7Journal29InsightsCalendarDetailTabView11Coordinator_configuration;
      v31 = v34;
      swift_beginAccess();
      sub_1008B3CBC(v31 + v30, v6);
      v32 = *(v28 + 16);
      v32(v16, v20, v10);
      v32(v13, v16, v10);
      sub_1000F24EC(&unk_100AF7060);
      Binding.wrappedValue.setter();

      v33 = *(v28 + 8);
      v33(v16, v10);
      sub_1008B3D20(v6);
      v33(v20, v10);
    }
  }

  else
  {
    v29 = v36;
  }
}

id sub_1008B432C()
{
  type metadata accessor for ForModuleLookup();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_100B31298 = result;
  return result;
}

uint64_t sub_1008B4384@<X0>(uint64_t a1@<X8>)
{
  v74 = a1;
  v1 = type metadata accessor for Date.ISO8601FormatStyle.TimeZoneSeparator();
  v70 = *(v1 - 8);
  v71 = v1;
  __chkstk_darwin(v1);
  v69 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Date.ISO8601FormatStyle.TimeSeparator();
  v66 = *(v3 - 8);
  v67 = v3;
  __chkstk_darwin(v3);
  v68 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date.ISO8601FormatStyle.DateTimeSeparator();
  v61 = *(v5 - 8);
  v62 = v5;
  __chkstk_darwin(v5);
  v64 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for Date.ISO8601FormatStyle.DateSeparator();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v60 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TimeZone();
  __chkstk_darwin(v8 - 8);
  v58 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for Date.ISO8601FormatStyle();
  v63 = *(v65 - 8);
  v10 = __chkstk_darwin(v65);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v56 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v56 - v17;
  __chkstk_darwin(v16);
  v59 = &v56 - v19;
  v72 = type metadata accessor for Date();
  v20 = *(v72 - 8);
  v21 = __chkstk_darwin(v72);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v56 - v24;
  v26 = sub_1000F24EC(&unk_100AD6DD0);
  v27 = __chkstk_darwin(v26 - 8);
  v29 = &v56 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = &v56 - v30;
  v32 = type metadata accessor for OpenSensitiveURLAction.Destination();
  __chkstk_darwin(v32);
  v34 = &v56 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10069D4F8(v73, v34);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8 && EnumCaseMultiPayload == 9)
    {
      v49 = [objc_allocWithZone(HealthAppAuthorizationManagementLinkBuilder) init];
      static AppInfo.bundleIdentifier.getter();
      v50 = String._bridgeToObjectiveC()();

      v51 = [v49 URLForAuthorizationManagementFromLocation:2 bundleIdentifier:v50];

      if (v51)
      {
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v52 = 0;
      }

      else
      {
        v52 = 1;
      }

      v55 = type metadata accessor for URL();
      (*(*(v55 - 8) + 56))(v31, v52, 1, v55);
      v54 = v31;
      return sub_1001E4364(v54, v74);
    }

    return URL.init(string:)();
  }

  if (EnumCaseMultiPayload > 2)
  {
    return URL.init(string:)();
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v36 = v20;
      v37 = v23;
      (*(v20 + 32))(v23, v34, v72);
      v76 = 0;
      v77 = 0xE000000000000000;
      _StringGuts.grow(_:)(24);

      v76 = 0xD000000000000016;
      v77 = 0x800000010090D850;
      static TimeZone.current.getter();
      (*(v56 + 104))(v60, enum case for Date.ISO8601FormatStyle.DateSeparator.dash(_:), v57);
      (*(v61 + 104))(v64, enum case for Date.ISO8601FormatStyle.DateTimeSeparator.standard(_:), v62);
      (*(v66 + 104))(v68, enum case for Date.ISO8601FormatStyle.TimeSeparator.colon(_:), v67);
      (*(v70 + 104))(v69, enum case for Date.ISO8601FormatStyle.TimeZoneSeparator.omitted(_:), v71);
      Date.ISO8601FormatStyle.init(dateSeparator:dateTimeSeparator:timeSeparator:timeZoneSeparator:includingFractionalSeconds:timeZone:)();
      Date.ISO8601FormatStyle.year()();
      v38 = *(v63 + 8);
      v39 = v65;
      v38(v12, v65);
      Date.ISO8601FormatStyle.month()();
      v38(v15, v39);
      v40 = v59;
      Date.ISO8601FormatStyle.day()();
      v38(v18, v39);
      sub_1008B4DA8();
      Date.formatted<A>(_:)();
      v38(v40, v39);
      String.append(_:)(v75);

      URL.init(string:)();

      return (*(v36 + 8))(v37, v72);
    }

    return URL.init(string:)();
  }

  v42 = v20;
  v43 = v72;
  (*(v20 + 32))(v25, v34, v72);
  v44 = [objc_allocWithZone(HealthAppDataTypeDetailLinkBuilder) init];
  v45 = [objc_opt_self() stateOfMindType];
  isa = Date._bridgeToObjectiveC()().super.isa;
  v47 = [v44 URLForDataTypeDetailWithObjectType:v45 date:isa];

  if (v47)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v48 = 0;
  }

  else
  {
    v48 = 1;
  }

  (*(v42 + 8))(v25, v43);
  v53 = type metadata accessor for URL();
  (*(*(v53 - 8) + 56))(v29, v48, 1, v53);
  v54 = v29;
  return sub_1001E4364(v54, v74);
}

unint64_t sub_1008B4DA8()
{
  result = qword_100ADA640;
  if (!qword_100ADA640)
  {
    type metadata accessor for Date.ISO8601FormatStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADA640);
  }

  return result;
}

uint64_t sub_1008B4E00(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_10000CA14((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1000F24EC(&qword_100AD5BC0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return _swift_continuation_throwingResume(v5);
  }
}

void sub_1008B4EFC(uint64_t a1, void *a2, void *a3, char a4)
{
  v8 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v11 = [objc_opt_self() defaultWorkspace];
  if (v11)
  {
    v12 = v11;
    sub_1000082B4(a1, v10, &unk_100AD6DD0);
    v13 = type metadata accessor for URL();
    v14 = *(v13 - 8);
    v16 = 0;
    if ((*(v14 + 48))(v10, 1, v13) != 1)
    {
      URL._bridgeToObjectiveC()(v15);
      v16 = v17;
      (*(v14 + 8))(v10, v13);
    }

    v18 = sub_1008B5094(a2, a3, a4 & 1);
    [v12 openURL:v16 configuration:v18 completionHandler:0];
  }

  else
  {
    __break(1u);
  }
}

id sub_1008B5094(void *a1, void *a2, char a3)
{
  v6 = [objc_allocWithZone(_LSOpenConfiguration) init];
  [v6 setSensitive:1];
  v7 = sub_1008B5764(a1, a2);
  if (v7)
  {
    v8 = v7;
    v9 = [v7 _currentOpenApplicationEndpoint];
  }

  else
  {
    v9 = 0;
  }

  [v6 setTargetConnectionEndpoint:v9];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v18 = &type metadata for Bool;
  LOBYTE(v17) = a3 & 1;
  sub_10002432C(&v17, v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10020218C(v16, v10, v12, isUniquelyReferenced_nonNull_native);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v6 setFrontBoardOptions:isa];

  return v6;
}

uint64_t sub_1008B5208(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 240) = a4;
  *(v4 + 160) = a2;
  *(v4 + 168) = a3;
  *(v4 + 152) = a1;
  sub_1000F24EC(&unk_100AD6DD0);
  *(v4 + 176) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v4 + 184) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 192) = v6;
  *(v4 + 200) = v5;

  return _swift_task_switch(sub_1008B52E0, v6, v5);
}

uint64_t sub_1008B52E0()
{
  v1 = [objc_opt_self() defaultWorkspace];
  *(v0 + 208) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 176);
    sub_1000082B4(*(v0 + 152), v3, &unk_100AD6DD0);
    v4 = type metadata accessor for URL();
    v5 = *(v4 - 8);
    v6 = (*(v5 + 48))(v3, 1, v4);
    v8 = 0;
    if (v6 != 1)
    {
      v9 = *(v0 + 176);
      URL._bridgeToObjectiveC()(v7);
      v8 = v10;
      (*(v5 + 8))(v9, v4);
    }

    *(v0 + 216) = v8;
    v11 = sub_1008B5094(*(v0 + 160), *(v0 + 168), *(v0 + 240));
    *(v0 + 224) = v11;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_1008B54F4;
    v12 = swift_continuation_init();
    *(v0 + 136) = sub_1000F24EC(&qword_100AE9DE8);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1008B4E00;
    *(v0 + 104) = &unk_100A84998;
    *(v0 + 112) = v12;
    [v2 openURL:v8 configuration:v11 completionHandler:v0 + 80];
    v1 = (v0 + 16);
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(v1);
}

uint64_t sub_1008B54F4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  v3 = *(v1 + 200);
  v4 = *(v1 + 192);
  if (v2)
  {
    v5 = sub_1008B56C4;
  }

  else
  {
    v5 = sub_1008B5624;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1008B5624()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];

  v4 = v0[18];

  if (v4)
  {
  }

  v5 = v0[1];

  return v5(v4 != 0);
}

uint64_t sub_1008B56C4()
{
  v1 = v0[28];
  v3 = v0[26];
  v2 = v0[27];

  swift_willThrow();

  v4 = v0[1];

  return v4(0);
}

id sub_1008B5764(void *a1, id a2)
{
  v3 = a1;
  if (!a1)
  {
    if (a2)
    {
      if ([a2 sender])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v9 = 0u;
        v10 = 0u;
      }

      v11 = v9;
      v12 = v10;
      if (*(&v10 + 1))
      {
        sub_1000082B4(&v11, &v9, &qword_100AD13D0);
        sub_1000065A8(0, &qword_100AE4620);
        if (swift_dynamicCast())
        {
          v3 = v8;
LABEL_18:
          sub_10000BA7C(&v9);
          sub_100004F84(&v11, &qword_100AD13D0);
          goto LABEL_19;
        }

        sub_1000065A8(0, &unk_100AE3160);
        if (swift_dynamicCast())
        {
          v3 = [v8 windowScene];

          goto LABEL_18;
        }

        sub_1000065A8(0, &qword_100ADC670);
        if (swift_dynamicCast())
        {
          v4 = [v8 window];
          if (v4)
          {
            v5 = v4;
            v3 = [v4 windowScene];
          }

          else
          {

            v3 = 0;
          }

          goto LABEL_18;
        }

        sub_10000BA7C(&v9);
      }
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    sub_100004F84(&v11, &qword_100AD13D0);
    v3 = 0;
  }

LABEL_19:
  v6 = a1;
  return v3;
}

uint64_t sub_1008B598C(void *a1)
{
  v2 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - v3;
  v5 = a1;
  sub_1008B4384(v4);
  sub_1008B4EFC(v4, 0, a1, 0);

  return sub_100004F84(v4, &unk_100AD6DD0);
}

uint64_t type metadata accessor for MapModePicker()
{
  result = qword_100AF72E0;
  if (!qword_100AF72E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1008B5AF8()
{
  type metadata accessor for MapModePicker();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_1008B5B38(char *a1)
{
  v1 = *&a1[qword_100AF72D8];
  v3 = a1;

  v1(v2);
}

void sub_1008B5BA0(void *a1, uint64_t a2, uint64_t a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for MapModePicker();
  v4 = v7.receiver;
  objc_msgSendSuper2(&v7, "viewDidDisappear:", a3);
  v5 = *&v4[qword_100AF72D8];

  v5(v6);
}

void sub_1008B5C2C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = a1;
  sub_1008B64BC(a4);

  swift_unknownObjectRelease();
}

uint64_t sub_1008B5D0C()
{
}

id sub_1008B5D50()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapModePicker();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1008B5D88(uint64_t a1)
{
}

void sub_1008B5DE0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v60 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  v59 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MapStyle.StandardEmphasis();
  v57 = *(v11 - 8);
  v58 = v11;
  __chkstk_darwin(v11);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PointOfInterestCategories();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for MapStyle.Elevation();
  v61 = *(v55 - 8);
  __chkstk_darwin(v55);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for MapStyle();
  v50 = *(v20 - 8);
  v51 = v20;
  __chkstk_darwin(v20);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for MapStylePicker();
  v52 = *(v23 - 8);
  v53 = v23;
  __chkstk_darwin(v23);
  v56 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v49 = &v45 - v26;
  v54 = v3;
  v27 = (v3 + qword_100AF72D8);
  *v27 = a2;
  v27[1] = a3;
  *(v3 + qword_100AF72D0) = a1;
  sub_1000F24EC(&unk_100AF7330);
  v28 = *(type metadata accessor for MapStylePicker.Option() - 8);
  v47 = *(v28 + 72);
  v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v30 = swift_allocObject();
  v48 = v30;
  *(v30 + 16) = xmmword_100940050;
  v45 = v30 + v29;

  v46 = a1;
  static MapStyle.Elevation.realistic.getter();
  static PointOfInterestCategories.excludingAll.getter();
  static MapStyle.StandardEmphasis.automatic.getter();
  static MapStyle.standard(elevation:emphasis:pointsOfInterest:showsTraffic:)();
  (*(v57 + 8))(v13, v58);
  v31 = *(v15 + 8);
  v58 = v15 + 8;
  v31(v17, v14);
  v32 = *(v61 + 8);
  v61 += 8;
  v33 = v55;
  v32(v19, v55);
  static MapStylePicker.Option.standard(style:showTrafficToggle:)();
  v34 = v51;
  v35 = *(v50 + 8);
  v35(v22, v51);
  static MapStyle.Elevation.realistic.getter();
  static PointOfInterestCategories.excludingAll.getter();
  static MapStyle.hybrid(elevation:pointsOfInterest:showsTraffic:)();
  v31(v17, v14);
  v36 = v49;
  v32(v19, v33);
  v38 = v52;
  v37 = v53;
  static MapStylePicker.Option.satellite(style:showTrafficToggle:showLabelsToggle:)();
  v35(v22, v34);
  v39 = v46;
  MapStylePicker.init(options:mapView:)();
  (*(v38 + 16))(v56, v36, v37);
  v40 = UIHostingController.init(rootView:)();
  v41 = [v40 navigationItem];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v42 = String._bridgeToObjectiveC()();

  [v41 setTitle:v42];

  v43 = [v40 view];
  if (v43)
  {
    v44 = [objc_opt_self() clearColor];
    [v43 setBackgroundColor:v44];

    (*(v38 + 8))(v36, v37);
  }

  else
  {
    __break(1u);
  }
}

void sub_1008B64BC(uint64_t a1)
{
  v5 = [v1 navigationItem];
  if (a1 == 2)
  {
    v3 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v1 action:"dismissPresentedMapModePicker"];
    [v5 setRightBarButtonItem:v3];

    v4 = v3;
  }

  else
  {
    [v5 setRightBarButtonItem:0];
    v4 = v5;
  }
}

uint64_t sub_1008B65AC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  if (a2)
  {
    v3 = a3 - result;
    if (a3 - result >= (a2 - 1))
    {
      v3 = a2 - 1;
    }

    if (v3 >= (result ^ 0x7FFFFFFFFFFFFFFFuLL))
    {
      v3 = result ^ 0x7FFFFFFFFFFFFFFFLL;
    }

    v4 = v3 + 1;
    if (v4 >= 5)
    {
      v7 = v4 & 3;
      if ((v4 & 3) == 0)
      {
        v7 = 4;
      }

      v5 = v4 - v7;
      v8 = 0uLL;
      v9 = result;
      v10 = vdupq_n_s64(1uLL);
      v11 = v5;
      do
      {
        v8 = vaddq_s64(v8, v10);
        v9 = vaddq_s64(v9, v10);
        v11 -= 4;
      }

      while (v11);
      v6 = vaddvq_s64(vpaddq_s64(v9, v8));
    }

    else
    {
      v5 = 0;
      v6 = result;
    }

    v12 = v5 + result - 0x7FFFFFFFFFFFFFFFLL;
    v13 = v5 + result - a3;
    v14 = a2 - v5;
    result = v6;
    while (1)
    {
      if (!v13)
      {
        return 0;
      }

      if (!v12)
      {
        break;
      }

      ++result;
      ++v12;
      ++v13;
      if (!--v14)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  return result;
}

void sub_1008B667C()
{
  v1 = v0;
  v2 = type metadata accessor for UniformDateBins(0);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100AD6FA0);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = *(v3 + 32);
  v10 = *(v1 + v9);
  if (v10 < 0)
  {
    __break(1u);
    return;
  }

  if (v10)
  {
    v11 = sub_1003E7470(*(v1 + v9), 0);
    v12 = *(sub_1000F24EC(&qword_100AD2688) - 8);
    v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    sub_1008B7160(v1, v5);
    v14 = sub_1001C092C(v8, v11 + v13, v10);
    sub_1000ABD88(v1, type metadata accessor for UniformDateBins);
    sub_100004F84(v8, &qword_100AD6FA0);
    if (v14 == v10)
    {
      return;
    }

    __break(1u);
  }

  sub_1000ABD88(v1, type metadata accessor for UniformDateBins);
}

uint64_t sub_1008B6838(uint64_t a1)
{
  v2 = v1;
  v41 = a1;
  v38 = sub_1000F24EC(&qword_100AD2688);
  v3 = __chkstk_darwin(v38);
  v31 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v30 = &v28 - v5;
  v40 = type metadata accessor for DateComponents();
  v42 = *(v40 - 8);
  __chkstk_darwin(v40);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CalendarBinningUnit(0);
  v39 = *(v8 + 24);
  v9 = sub_1000F24EC(&qword_100AD3BF0);
  v10 = type metadata accessor for Calendar.Component();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v36 = *(v11 + 72);
  v37 = v9;
  v13 = swift_allocObject();
  v34 = xmmword_100940080;
  *(v13 + 16) = xmmword_100940080;
  v35 = *(v11 + 16);
  v35(v13 + v12, v2, v10);
  sub_10005FF80(v13);
  swift_setDeallocating();
  v33 = *(v11 + 8);
  v33(v13 + v12, v10);
  swift_deallocClassInstance();
  v32 = *(v8 + 20);
  Calendar.dateComponents(_:from:to:)();

  v29 = DateComponents.value(for:)();
  LOBYTE(v9) = v14;
  v15 = *(v42 + 8);
  v42 += 8;
  result = v15(v7, v40);
  if (v9)
  {
    goto LABEL_14;
  }

  v17 = *(v38 + 36);
  v18 = swift_allocObject();
  *(v18 + 16) = v34;
  v35(v18 + v12, v2, v10);
  sub_10005FF80(v18);
  swift_setDeallocating();
  v33(v18 + v12, v10);
  swift_deallocClassInstance();
  v37 = v17;
  Calendar.dateComponents(_:from:to:)();

  v19 = DateComponents.value(for:)();
  LOBYTE(v18) = v20;
  result = v15(v7, v40);
  if ((v18 & 1) == 0)
  {
    v21 = v29;
    v22 = v30;
    sub_1000AB968(v29, v30);
    v23 = v31;
    result = sub_1000AB968(v19, v31);
    v24 = v19 - v21;
    if (__OFSUB__(v19, v21))
    {
      __break(1u);
    }

    else
    {
      v25 = v24 + 1;
      if (!__OFADD__(v24, 1))
      {
        result = static Date.== infix(_:_:)();
        if ((result & 1) == 0 || (v26 = __OFSUB__(v25, 1), --v25, !v26))
        {
          v27 = static Date.== infix(_:_:)();
          sub_100004F84(v23, &qword_100AD2688);
          result = sub_100004F84(v22, &qword_100AD2688);
          if ((v27 & 1) == 0)
          {
            return v25;
          }

          v26 = __OFSUB__(v25--, 1);
          if (!v26)
          {
            return v25;
          }

          goto LABEL_13;
        }

LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

LABEL_15:
  __break(1u);
  return result;
}

void (*sub_1008B6CA0(uint64_t *a1, char **a2))(uint64_t *a1)
{
  v4 = *(*(sub_1000F24EC(&qword_100AD2688) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(v4);
  }

  *a1 = v5;
  sub_10003F084(*a2, v5);
  return sub_1008B6D40;
}

void sub_1008B6D40(uint64_t *a1)
{
  v1 = *a1;
  sub_100004F84(*a1, &qword_100AD2688);

  free(v1);
}

uint64_t *sub_1008B6D8C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + *(a2 + 24));
  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = *result;
  if (*result < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = result[1];
  if (v5 >= v7)
  {
    v8 = sub_1000F24EC(&qword_100AF74A0);
    result = sub_1008B7160(v3, a3 + *(v8 + 40));
    *a3 = v6;
    a3[1] = v7;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1008B6E08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1008B7160(v2, a2);
  result = sub_1000F24EC(&qword_100AF7490);
  *(a2 + *(result + 36)) = 0;
  *(a2 + *(result + 40)) = *(v2 + *(a1 + 24));
  return result;
}

uint64_t *sub_1008B6E80@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *result;
    if (!a2)
    {
LABEL_5:
      *a3 = v3;
      return result;
    }

    if ((v3 ^ 0x7FFFFFFFFFFFFFFFuLL) > a2 - 1)
    {
      v3 += a2;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1008B6EB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1008B65AC(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1008B6EE8(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v5 = __OFSUB__(*a2, *a1);
  result = *a2 - *a1;
  if (result < 0 != v5)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = __OFSUB__(v2, v3);
  v6 = v2 - v3;
  if (!v6)
  {
    return 0;
  }

  if (v6 < 0 == v5)
  {
    goto LABEL_9;
  }

  if (v6 < 0x8000000000000001)
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

void *sub_1008B6F28@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_1008B6F40(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

uint64_t sub_1008B6F58@<X0>(uint64_t a1@<X8>)
{
  sub_1000B8D44(v1, a1, type metadata accessor for UniformDateBins);
  result = sub_1000F24EC(&qword_100AD6FA0);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1008B6FB4(uint64_t a1)
{
  result = *(v1 + *(a1 + 24));
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1008B6FD0()
{
  if ((static Calendar.Component.== infix(_:_:)() & 1) == 0 || (static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static Calendar.== infix(_:_:)();
}

uint64_t sub_1008B7160(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UniformDateBins(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_1008B71C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalendarBinningUnit(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&qword_100AD6F90);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_1000F24EC(&qword_100AF74A8);
  __chkstk_darwin(v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_1000082B4(a1, &v21 - v12, &qword_100AD6F90);
  sub_1000082B4(a2, &v13[v15], &qword_100AD6F90);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1000082B4(v13, v10, &qword_100AD6F90);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_1000B8D44(&v13[v15], v7, type metadata accessor for CalendarBinningUnit);
      if (static Calendar.Component.== infix(_:_:)() & 1) != 0 && (static Date.== infix(_:_:)())
      {
        v20 = static Calendar.== infix(_:_:)();
        sub_1000ABD88(v7, type metadata accessor for CalendarBinningUnit);
        sub_1000ABD88(v10, type metadata accessor for CalendarBinningUnit);
        sub_100004F84(v13, &qword_100AD6F90);
        if ((v20 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_4;
      }

      sub_1000ABD88(v7, type metadata accessor for CalendarBinningUnit);
      sub_1000ABD88(v10, type metadata accessor for CalendarBinningUnit);
      v19 = &qword_100AD6F90;
LABEL_14:
      sub_100004F84(v13, v19);
      return 0;
    }

    sub_1000ABD88(v10, type metadata accessor for CalendarBinningUnit);
LABEL_8:
    v19 = &qword_100AF74A8;
    goto LABEL_14;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_100004F84(v13, &qword_100AD6F90);
LABEL_4:
  v17 = type metadata accessor for UniformDateBins(0);
  if (*(a1 + *(v17 + 20)) == *(a2 + *(v17 + 20)))
  {
    return *(a1 + *(v17 + 24)) == *(a2 + *(v17 + 24));
  }

  return 0;
}

uint64_t sub_1008B753C()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AF74B0);
  v1 = sub_10000617C(v0, qword_100AF74B0);
  if (qword_100AD01A8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B2FF98);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1008B7604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a2;
  v15 = (*(a6 + 8) + **(a6 + 8));
  v13 = swift_task_alloc();
  v6[4] = v13;
  *v13 = v6;
  v13[1] = sub_1008B7750;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1008B7750(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);

  if (v4)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *(v3 + 40) = a1 & 1;

  return _swift_task_switch(sub_1008BAA90, v5, v7);
}

uint64_t sub_1008B78A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[8] = a3;
  v7 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v5[14] = v8;
  v5[15] = v10;

  return _swift_task_switch(sub_1008B79A0, v8, v10);
}

uint64_t sub_1008B79A0()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 72);
  v6 = [*(v0 + 64) recordName];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *(v0 + 128) = v7;
  *(v0 + 136) = v9;
  v10 = swift_allocObject();
  *(v0 + 144) = v10;
  v10[2] = v4;
  v10[3] = v7;
  v10[4] = v9;
  v10[5] = v5;
  (*(v2 + 104))(v1, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v3);

  v11 = v5;
  v12 = swift_task_alloc();
  *(v0 + 152) = v12;
  *v12 = v0;
  v12[1] = sub_1008B7B10;
  v13 = *(v0 + 104);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 160, v13, sub_1008BAA28, v10, &type metadata for Bool);
}

uint64_t sub_1008B7B10()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[12] + 8))(v2[13], v2[11]);

    v4 = v2[14];
    v5 = v2[15];

    return _swift_task_switch(sub_1008B7C64, v4, v5);
  }
}

uint64_t sub_1008B7C64()
{
  v7 = v0;
  v1 = *(v0 + 160);
  if (v1 == 1)
  {
    if (qword_100ACFCA8 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 128);
    v2 = *(v0 + 136);
    swift_beginAccess();

    sub_100286DEC(&v6, v3, v2);
    swift_endAccess();

    swift_beginAccess();
    sub_100286DEC(&v6, v3, v2);
    swift_endAccess();
  }

  v4 = *(v0 + 8);

  return v4(v1);
}

void sub_1008B7DA0(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, char *a5@<X8>)
{
  v76 = a1;
  v59 = a5;
  v70 = type metadata accessor for DispatchWorkItemFlags();
  v62 = *(v70 - 8);
  __chkstk_darwin(v70);
  v71 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for DispatchQoS();
  v61 = *(v72 - 8);
  __chkstk_darwin(v72);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v73 = *(v11 - 8);
  v12 = *(v73 + 64);
  __chkstk_darwin(v11);
  __chkstk_darwin(v13);
  v15 = &v56 - v14;
  type metadata accessor for JournalEntryMO();
  sub_1008BAA48(&unk_100AE9050, &type metadata accessor for JournalEntryMO);
  v75 = a2;
  v16 = a3;
  v17 = v77;
  v18 = static Identifiable<>.fetchObjectForID(_:context:includeUnsavedObjects:)();
  v58 = v17;
  if (v17)
  {
    if (qword_100AD0BD0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000617C(v19, qword_100AF74B0);

    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock[0] = v24;
      *v22 = 136315394;
      *(v22 + 4) = sub_100008458(v75, v16, aBlock);
      *(v22 + 12) = 2112;
      swift_errorRetain();
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 14) = v25;
      *v23 = v25;
      _os_log_impl(&_mh_execute_header, v20, v21, "Error fetching JournalEntryMO with id %s for deletion: %@", v22, 0x16u);
      sub_10012B714(v23);

      sub_10000BA7C(v24);
    }

    else
    {
    }

    v54 = 0;
    v55 = v59;
    goto LABEL_34;
  }

  v26 = v62;
  v68 = v12;
  v69 = v15;
  v67 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v11;
  v57 = a4;
  if (!v18)
  {
    v54 = 0;
LABEL_33:
    v55 = v59;
LABEL_34:
    *v55 = v54;
    return;
  }

  v27 = v18;
  v28 = JournalEntryMO.assetsArray.getter();
  v29 = v28;
  if (v28 >> 62)
  {
    v30 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v31 = v57;
  v32 = v77;
  if (!v30)
  {

LABEL_32:
    sub_1006EFE94();
    v54 = 1;
    [v27 setIsUploadedToCloud:1];
    [v31 deleteObject:v27];

    goto LABEL_33;
  }

  v56 = v27;
  if (v30 >= 1)
  {
    v33 = 0;
    v74 = v29 & 0xC000000000000001;
    v64 = v73 + 32;
    v65 = v73 + 16;
    v63 = v80;
    v62 = v26 + 1;
    ++v61;
    v60 = v73 + 8;
    v34 = v72;
    v66 = v29;
    v75 = v30;
    do
    {
      if (v74)
      {
        v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v36 = *(v29 + 8 * v33 + 32);
      }

      v35 = v36;
      v37 = [v36 id];
      if (v37)
      {
        v38 = v37;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        if (qword_100ACFCB0 != -1)
        {
          swift_once();
        }

        v39 = v67;
        if (qword_100ACFCB8 != -1)
        {
          swift_once();
        }

        v76 = qword_100B2F858;
        v40 = v73;
        v41 = v69;
        (*(v73 + 16))(v39, v69, v32);
        v42 = (*(v40 + 80) + 16) & ~*(v40 + 80);
        v43 = swift_allocObject();
        (*(v40 + 32))(v43 + v42, v39, v77);
        v80[2] = sub_100356C88;
        v80[3] = v43;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        v80[0] = sub_100006C7C;
        v80[1] = &unk_100A84B98;
        v44 = _Block_copy(aBlock);
        static DispatchQoS.unspecified.getter();
        v78 = _swiftEmptyArrayStorage;
        sub_1008BAA48(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
        sub_1000F24EC(&unk_100AD6220);
        sub_100006610();
        v45 = v71;
        v46 = v70;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        v47 = v44;
        v32 = v77;
        _Block_release(v47);
        (*v62)(v45, v46);
        v34 = v72;
        (*v61)(v10, v72);

        (*(v40 + 8))(v41, v32);
        v29 = v66;
      }

      else
      {
        v48 = v10;
        v49 = v34;
        if (qword_100AD0AF8 != -1)
        {
          swift_once();
        }

        v50 = type metadata accessor for Logger();
        sub_10000617C(v50, qword_100AF2420);
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          *v53 = 0;
          _os_log_impl(&_mh_execute_header, v51, v52, "(purgeCache) unable to get assetId from an asset", v53, 2u);
          v32 = v77;
        }

        v35 = v51;
        v34 = v49;
        v10 = v48;
      }

      ++v33;
    }

    while (v75 != v33);

    v31 = v57;
    v27 = v56;
    goto LABEL_32;
  }

  __break(1u);
}

uint64_t sub_1008B86A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v9 = swift_task_alloc();
  v4[4] = v9;
  *v9 = v4;
  v9[1] = sub_1008B7750;

  return sub_1008B78A0(a1, a2, a3, a4);
}

uint64_t sub_1008B8760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v11 = swift_task_alloc();
  v5[4] = v11;
  *v11 = v5;
  v11[1] = sub_1008B7750;

  return sub_1008B7604(a1, a2, a3, a4, a5, &off_100A849C0);
}

uint64_t sub_1008B8830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v9 = swift_task_alloc();
  v4[4] = v9;
  *v9 = v4;
  v9[1] = sub_1008B8900;

  return (sub_1008B9414)(a1, a2, a3, a4);
}

uint64_t sub_1008B8900(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);

  if (v4)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *(v3 + 40) = a1 & 1;

  return _swift_task_switch(sub_1008B8A50, v5, v7);
}

uint64_t sub_1008B8A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v11 = swift_task_alloc();
  v5[4] = v11;
  *v11 = v5;
  v11[1] = sub_1008B7750;

  return sub_1008B7604(a1, a2, a3, a4, a5, &off_100A849E0);
}

uint64_t sub_1008B8B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v9 = swift_task_alloc();
  v4[4] = v9;
  *v9 = v4;
  v9[1] = sub_1008B7750;

  return (sub_1008B9F1C)(a1, a2, a3, a4);
}

uint64_t sub_1008B8C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v11 = swift_task_alloc();
  v5[4] = v11;
  *v11 = v5;
  v11[1] = sub_1008B7750;

  return sub_1008B7604(a1, a2, a3, a4, a5, &off_100A84A00);
}

void sub_1008B8CD8(void *a1@<X0>, char *a2@<X8>)
{
  v5 = [a1 recordName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1008BAA48(&qword_100AD4C68, &type metadata accessor for JournalMO);
  v6 = static Identifiable<>.fetch(id:context:)();
  if (v2)
  {

    if (qword_100AD0BD0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000617C(v7, qword_100AF74B0);
    v8 = a1;
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      log = v9;
      v12 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = v22;
      *v11 = 136315650;
      v13 = _typeName(_:qualified:)();
      v15 = a2;
      v16 = sub_100008458(v13, v14, &v23);

      *(v11 + 4) = v16;
      a2 = v15;
      *(v11 + 12) = 2112;
      *(v11 + 14) = v8;
      *v12 = v8;
      *(v11 + 22) = 2112;
      v17 = v8;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 24) = v18;
      v12[1] = v18;
      _os_log_impl(&_mh_execute_header, log, v10, "%s Failed to handle sent record zone for record %@: %@", v11, 0x20u);
      sub_1000F24EC(&unk_100AD4BB0);
      swift_arrayDestroy();

      sub_10000BA7C(v22);
    }

    else
    {
    }

    v19 = 0;
  }

  else
  {
    v20 = v6;

    if (v20)
    {
      static JournalMO.deleteObject(_:context:)();

      v19 = 1;
    }

    else
    {
      v19 = 0;
    }
  }

  *a2 = v19;
}

uint64_t sub_1008B8FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[3] = a4;
  v5[4] = v4;
  v5[2] = a3;
  v7 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v5[5] = v7;
  v5[6] = *(v7 - 8);
  v5[7] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v5[8] = v8;
  v5[9] = v10;

  return _swift_task_switch(sub_1008B90EC, v8, v10);
}

uint64_t sub_1008B90EC()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = (v0 + 32);
  v5 = vld1q_dup_f64(v4);
  v12 = v5;
  v13 = *(v0 + 16);
  v6 = swift_allocObject();
  *(v0 + 80) = v6;
  *(v6 + 16) = v13;
  *(v6 + 32) = v12;
  (*(v2 + 104))(v1, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v3);
  v7 = v13;
  v8 = *(&v13 + 1);
  v9 = swift_task_alloc();
  *(v0 + 88) = v9;
  *v9 = v0;
  v9[1] = sub_1008B9238;
  v10 = *(v0 + 56);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 96, v10, sub_1008B93F4, v6, &type metadata for Bool);
}

uint64_t sub_1008B9238()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[6] + 8))(v2[7], v2[5]);

    v4 = v2[8];
    v5 = v2[9];

    return _swift_task_switch(sub_1008B938C, v4, v5);
  }
}

uint64_t sub_1008B938C()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1008B9414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v6 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v4[17] = v7;
  v4[18] = v9;

  return _swift_task_switch(sub_1008B9524, v7, v9);
}

uint64_t sub_1008B9524()
{
  v1 = [*(v0 + 80) recordName];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  *(v0 + 152) = v2;
  *(v0 + 160) = v4;
  if (qword_100ACFCA8 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 128);
  v6 = *(v0 + 104);
  v7 = *(v0 + 88);
  v8 = swift_allocObject();
  *(v0 + 168) = v8;
  v8[2] = v2;
  v8[3] = v4;
  v8[4] = v7;
  *(v0 + 304) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v9 = *(v6 + 104);
  *(v0 + 176) = v9;
  *(v0 + 184) = (v6 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v9(v5);

  v10 = v7;
  v11 = swift_task_alloc();
  *(v0 + 192) = v11;
  v12 = sub_1000F24EC(&qword_100ADF608);
  *(v0 + 200) = v12;
  *v11 = v0;
  v11[1] = sub_1008B96E4;
  v13 = *(v0 + 128);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 64, v13, sub_1003444F0, v8, v12);
}

uint64_t sub_1008B96E4()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[16];
    v5 = v2[12];
    v6 = v2[13];
    v7 = *(v6 + 8);
    v2[26] = v7;
    v2[27] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v5);

    v8 = v2[17];
    v9 = v2[18];

    return _swift_task_switch(sub_1008B9834, v8, v9);
  }
}

uint64_t sub_1008B9834()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 304);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = *(v0 + 120);
  v6 = *(v0 + 88);
  v7 = *(v0 + 96);
  v8 = qword_100B2F840;
  *(v0 + 224) = *(v0 + 64);
  *(v0 + 232) = v8;
  v9 = *(v8 + 16);
  *(v0 + 240) = v9;
  v10 = v9;
  v11 = swift_allocObject();
  *(v0 + 248) = v11;
  v11[2] = v10;
  v11[3] = v4;
  v11[4] = v3;
  v11[5] = v6;
  v1(v5, v2, v7);

  v12 = v6;
  v13 = v10;
  v14 = swift_task_alloc();
  *(v0 + 256) = v14;
  *v14 = v0;
  v14[1] = sub_1008B9994;
  v15 = *(v0 + 200);
  v16 = *(v0 + 120);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 72, v16, sub_100710AE8, v11, v15);
}

uint64_t sub_1008B9994()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2 + 208))(*(v2 + 120), *(v2 + 96));

    v4 = *(v2 + 136);
    v5 = *(v2 + 144);

    return _swift_task_switch(sub_1008B9AE0, v4, v5);
  }
}

uint64_t sub_1008B9AE0()
{
  v1 = *(v0 + 224);

  v2 = *(v0 + 72);
  *(v0 + 264) = v2;
  if (v1)
  {
    v3 = *(v0 + 224);
    v4 = v3;
LABEL_5:
    *(v0 + 272) = v3;
    *(v0 + 280) = v4;
    v5 = *(v0 + 176);
    v6 = *(v0 + 304);
    v7 = *(v0 + 112);
    v9 = *(v0 + 88);
    v8 = *(v0 + 96);
    v10 = swift_allocObject();
    *(v0 + 288) = v10;
    *(v10 + 16) = v4;
    *(v10 + 24) = v9;
    v5(v7, v6, v8);
    v11 = v9;
    v12 = v3;
    v13 = v4;
    v14 = swift_task_alloc();
    *(v0 + 296) = v14;
    *v14 = v0;
    v14[1] = sub_1008B9CAC;
    v15 = *(v0 + 112);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v14, v15, sub_1008BA9C4, v10, &type metadata for () + 8);
  }

  if (v2)
  {
    v4 = v2;
    v3 = 0;
    goto LABEL_5;
  }

  v16 = *(v0 + 8);

  return v16(0);
}

uint64_t sub_1008B9CAC()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2 + 208))(*(v2 + 112), *(v2 + 96));

    v4 = *(v2 + 136);
    v5 = *(v2 + 144);

    return _swift_task_switch(sub_1008B9DF8, v4, v5);
  }
}

uint64_t sub_1008B9DF8()
{
  v9 = v0;
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];
  v5 = v0[19];
  v4 = v0[20];
  swift_beginAccess();

  sub_100286DEC(&v8, v5, v4);
  swift_endAccess();

  swift_beginAccess();
  sub_100286DEC(&v8, v5, v4);
  swift_endAccess();

  v6 = v0[1];

  return v6(1);
}

uint64_t sub_1008B9F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v6 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v4[11] = v7;
  v4[12] = v9;

  return _swift_task_switch(sub_1008BA02C, v7, v9);
}

uint64_t sub_1008BA02C()
{
  v1 = [*(v0 + 32) recordName];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  *(v0 + 104) = v2;
  *(v0 + 112) = v4;
  if (qword_100ACFCA8 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 80);
  v6 = *(v0 + 56);
  v7 = *(v0 + 40);
  v8 = swift_allocObject();
  *(v0 + 120) = v8;
  v8[2] = v2;
  v8[3] = v4;
  v8[4] = v7;
  *(v0 + 240) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v9 = *(v6 + 104);
  *(v0 + 128) = v9;
  *(v0 + 136) = (v6 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v9(v5);

  v10 = v7;
  v11 = swift_task_alloc();
  *(v0 + 144) = v11;
  v12 = sub_1000F24EC(&qword_100AE5110);
  *(v0 + 152) = v12;
  *v11 = v0;
  v11[1] = sub_1008BA1EC;
  v13 = *(v0 + 80);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 16, v13, sub_10048EF30, v8, v12);
}

uint64_t sub_1008BA1EC()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[10];
    v5 = v2[6];
    v6 = v2[7];
    v7 = *(v6 + 8);
    v2[20] = v7;
    v2[21] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v5);

    v8 = v2[11];
    v9 = v2[12];

    return _swift_task_switch(sub_1008BA33C, v8, v9);
  }
}

uint64_t sub_1008BA33C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 240);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v5 = *(v0 + 72);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);
  *(v0 + 176) = *(v0 + 16);
  v8 = swift_allocObject();
  *(v0 + 184) = v8;
  v8[2] = v7;
  v8[3] = v4;
  v8[4] = v3;
  v1(v5, v2, v6);

  v9 = v7;
  v10 = swift_task_alloc();
  *(v0 + 192) = v10;
  *v10 = v0;
  v10[1] = sub_1008BA478;
  v11 = *(v0 + 152);
  v12 = *(v0 + 72);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 24, v12, sub_100710A98, v8, v11);
}

uint64_t sub_1008BA478()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[20];
    v5 = v2[9];
    v6 = v2[6];

    v4(v5, v6);
    v7 = v2[11];
    v8 = v2[12];

    return _swift_task_switch(sub_1008BA5DC, v7, v8);
  }
}

uint64_t sub_1008BA5DC()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 24);
  *(v0 + 200) = v2;
  if (v1)
  {
    v3 = v1;
LABEL_5:
    *(v0 + 208) = v1;
    *(v0 + 216) = v3;
    v4 = *(v0 + 128);
    v5 = *(v0 + 240);
    v6 = *(v0 + 64);
    v8 = *(v0 + 40);
    v7 = *(v0 + 48);
    v9 = swift_allocObject();
    *(v0 + 224) = v9;
    *(v9 + 16) = v3;
    *(v9 + 24) = v8;
    v4(v6, v5, v7);
    v10 = v8;
    v11 = v1;
    v12 = v3;
    v13 = swift_task_alloc();
    *(v0 + 232) = v13;
    *v13 = v0;
    v13[1] = sub_1008BA794;
    v14 = *(v0 + 64);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v13, v14, sub_1008BA96C, v9, &type metadata for () + 8);
  }

  if (v2)
  {
    v3 = v2;
    v1 = 0;
    goto LABEL_5;
  }

  v15 = *(v0 + 8);

  return v15(0);
}

uint64_t sub_1008BA794()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2 + 160))(*(v2 + 64), *(v2 + 48));

    v4 = *(v2 + 88);
    v5 = *(v2 + 96);

    return _swift_task_switch(sub_1008BA8E0, v4, v5);
  }
}

uint64_t sub_1008BA8E0()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 200);

  v3 = *(v0 + 8);

  return v3(1);
}

id sub_1008BA96C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  [v2 setIsUploadedToCloud:1];
  return [v1 deleteObject:v2];
}

id sub_1008BA9C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1007D7788();
  sub_1006EF5D4();
  [v1 setIsUploadedToCloud:1];
  return [v2 deleteObject:v1];
}

uint64_t sub_1008BAA48(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1008BAA94()
{
  v1 = *&v0[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView];
  if (v1 && (v2 = [v1 indexPathsForSelectedItems]) != 0)
  {
    v3 = v2;
    type metadata accessor for IndexPath();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = v4;
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v6 = v5[2];

  if (v6)
  {
    v7 = v0;
    v8 = sub_10030B1AC();
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = objc_allocWithZone(type metadata accessor for JournalMembershipListViewController());
    v11 = sub_10012D520(v8, sub_1008BAC84, v9);
    [v7 presentViewController:v11 animated:1 completion:0];
  }
}

void sub_1008BABD8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_multipleSelectionDelegate;
    v2 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();
    v4 = *(v1 + 8);

    if (v3)
    {
      ObjectType = swift_getObjectType();
      (*(v4 + 88))(1, ObjectType, v4);
      swift_unknownObjectRelease();
    }
  }
}

unint64_t sub_1008BACA0()
{
  result = type metadata accessor for Binding();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = sub_100087C9C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1008BAD4C(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v4 + 80);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = v6;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = ((v10 + 16) & ~v10) + *(*(*(a3 + 16) - 8) + 64) + v11;
  if (v12 >= a2)
  {
    goto LABEL_30;
  }

  v14 = ((((*(*(v7 - 8) + 64) + (v13 & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v15 = a2 - v12;
  v16 = v14 & 0xFFFFFFF8;
  if ((v14 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = v15 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v14);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v20 = *(a1 + v14);
      if (!v20)
      {
        goto LABEL_30;
      }
    }
  }

  else if (!v19 || (v20 = *(a1 + v14)) == 0)
  {
LABEL_30:
    if (v6 < v9)
    {
      return (*(v8 + 48))((a1 + v13) & ~v11, v9, v7);
    }

    v24 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((v24 + v10 + 8) & ~v10);
    }

    v25 = *v24;
    if (v25 >= 0xFFFFFFFF)
    {
      LODWORD(v25) = -1;
    }

    return (v25 + 1);
  }

  v22 = v20 - 1;
  if (v16)
  {
    v22 = 0;
    v23 = *a1;
  }

  else
  {
    v23 = 0;
  }

  return v12 + (v23 | v22) + 1;
}

void sub_1008BAF40(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(a4 + 24);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v5 + 80);
  v12 = *(v9 + 80);
  if (v10 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = *(v9 + 84);
  }

  v14 = ((v11 + 16) & ~v11) + *(*(*(a4 + 16) - 8) + 64);
  v15 = ((((*(*(v8 - 8) + 64) + ((v14 + v12) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v13 >= a3)
  {
    v19 = 0;
    v20 = a2 - v13;
    if (a2 <= v13)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v16 = a3 - v13;
    if (((((*(*(v8 - 8) + 64) + ((v14 + v12) & ~v12) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = a2 - v13;
    if (a2 <= v13)
    {
LABEL_20:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *&a1[v15] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *&a1[v15] = 0;
      }

      else if (v19)
      {
        a1[v15] = 0;
        if (!a2)
        {
          return;
        }

LABEL_36:
        if (v7 >= v10)
        {
          if (v7 >= a2)
          {
            v30 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
            if ((v6 & 0x80000000) != 0)
            {
              v32 = *(v5 + 56);

              v32((v30 + v11 + 8) & ~v11);
            }

            else
            {
              if ((a2 & 0x80000000) != 0)
              {
                v31 = a2 & 0x7FFFFFFF;
              }

              else
              {
                v31 = a2 - 1;
              }

              *v30 = v31;
            }
          }

          else
          {
            if (v14 <= 3)
            {
              v26 = ~(-1 << (8 * v14));
            }

            else
            {
              v26 = -1;
            }

            if (v14)
            {
              v27 = v26 & (~v7 + a2);
              if (v14 <= 3)
              {
                v28 = v14;
              }

              else
              {
                v28 = 4;
              }

              v29 = a1;
              bzero(a1, v14);
              if (v28 > 2)
              {
                if (v28 == 3)
                {
                  *v29 = v27;
                  v29[2] = BYTE2(v27);
                }

                else
                {
                  *v29 = v27;
                }
              }

              else if (v28 == 1)
              {
                *v29 = v27;
              }

              else
              {
                *v29 = v27;
              }
            }
          }
        }

        else
        {
          v24 = *(v9 + 56);
          v25 = &a1[v14 + v12] & ~v12;

          v24(v25);
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }
  }

  if (((((*(*(v8 - 8) + 64) + ((v14 + v12) & ~v12) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v21 = v20;
  }

  else
  {
    v21 = 1;
  }

  if (((((*(*(v8 - 8) + 64) + ((v14 + v12) & ~v12) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v22 = ~v13 + a2;
    v23 = a1;
    bzero(a1, v15);
    a1 = v23;
    *v23 = v22;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      *&a1[v15] = v21;
    }

    else
    {
      *&a1[v15] = v21;
    }
  }

  else if (v19)
  {
    a1[v15] = v21;
  }
}

uint64_t sub_1008BB288@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v66 = type metadata accessor for AccessibilityChildBehavior();
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v64 = v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for ScrollBounceBehavior();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v61 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for ScrollIndicatorVisibility();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v68 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F2A18(&qword_100AF7548);
  v57 = a1[2];
  v56 = a1[3];
  v55 = a1[4];
  v54 = a1[5];
  v77 = v57;
  v78 = v56;
  v79 = v55;
  v80 = v54;
  v7 = type metadata accessor for InsightsCapsulePicker.ButtonStyle();
  v8 = sub_10000B58C(&qword_100AF7550, &qword_100AF7548);
  WitnessTable = swift_getWitnessTable();
  v77 = v6;
  v78 = v7;
  v79 = v8;
  v80 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_1000F2A18(&qword_100AD2828);
  v10 = type metadata accessor for _ConditionalContent();
  v77 = v6;
  v78 = v7;
  v79 = v8;
  v80 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v12 = sub_1008717F4();
  v82 = OpaqueTypeConformance2;
  v83 = v12;
  v13 = swift_getWitnessTable();
  v14 = type metadata accessor for ForEachSubviewCollection();
  v15 = type metadata accessor for Subview.ID();
  v16 = swift_getWitnessTable();
  v17 = sub_1008BF78C(qword_100AF7558, &type metadata accessor for Subview.ID);
  v77 = v14;
  v78 = v15;
  v79 = v10;
  v80 = v16;
  v81 = v17;
  type metadata accessor for ForEach();
  v76 = v13;
  swift_getWitnessTable();
  type metadata accessor for LazyHStack();
  type metadata accessor for ModifiedContent();
  v74 = swift_getWitnessTable();
  v75 = &protocol witness table for _FixedSizeLayout;
  swift_getWitnessTable();
  v18 = type metadata accessor for ScrollView();
  v50 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = v46 - v19;
  v21 = swift_getWitnessTable();
  v77 = v18;
  v78 = v21;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v53 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v52 = v46 - v23;
  v77 = v18;
  v78 = v21;
  v46[0] = v21;
  v24 = swift_getOpaqueTypeConformance2();
  v77 = OpaqueTypeMetadata2;
  v78 = v24;
  v25 = swift_getOpaqueTypeMetadata2();
  v51 = *(v25 - 8);
  __chkstk_darwin(v25);
  v48 = v46 - v26;
  v77 = OpaqueTypeMetadata2;
  v78 = v24;
  v46[1] = v24;
  v27 = swift_getOpaqueTypeConformance2();
  v77 = v25;
  v78 = v27;
  v47 = v27;
  v28 = swift_getOpaqueTypeMetadata2();
  v49 = *(v28 - 8);
  __chkstk_darwin(v28);
  v30 = v46 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = v46 - v32;
  static Axis.Set.horizontal.getter();
  v69 = v57;
  v70 = v56;
  v71 = v55;
  v72 = v54;
  v73 = v58;
  v58 = v20;
  ScrollView.init(_:showsIndicators:content:)();
  static ScrollIndicatorVisibility.hidden.getter();
  sub_1000F24EC(&qword_100ADB1D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100940050;
  LOBYTE(v20) = static Axis.Set.vertical.getter();
  *(inited + 32) = v20;
  v35 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v35;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v20)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v35)
  {
    Axis.Set.init(rawValue:)();
  }

  v36 = v52;
  v37 = v68;
  v38 = v58;
  View.scrollIndicators(_:axes:)();
  (*(v59 + 8))(v37, v60);
  (*(v50 + 8))(v38, v18);
  v39 = v61;
  static ScrollBounceBehavior.basedOnSize.getter();
  LOBYTE(v38) = static Axis.Set.vertical.getter();
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v38)
  {
    Axis.Set.init(rawValue:)();
  }

  v40 = v48;
  View.scrollBounceBehavior(_:axes:)();
  (*(v62 + 8))(v39, v63);
  (*(v53 + 8))(v36, OpaqueTypeMetadata2);
  v41 = v64;
  static AccessibilityChildBehavior.contain.getter();
  v42 = v47;
  View.accessibilityElement(children:)();
  (*(v65 + 8))(v41, v66);
  (*(v51 + 8))(v40, v25);
  v77 = v25;
  v78 = v42;
  v43 = swift_getOpaqueTypeConformance2();
  sub_10053057C(v30, v28, v43);
  v44 = *(v49 + 8);
  v44(v30, v28);
  sub_10053057C(v33, v28, v43);
  return (v44)(v33, v28);
}

uint64_t sub_1008BBD28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v26 = a4;
  v27 = a5;
  v25 = a3;
  v28 = a1;
  v29 = a6;
  v7 = type metadata accessor for PinnedScrollableViews();
  __chkstk_darwin(v7 - 8);
  sub_1000F2A18(&qword_100AF7548);
  type metadata accessor for InsightsCapsulePicker.ButtonStyle();
  sub_10000B58C(&qword_100AF7550, &qword_100AF7548);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1000F2A18(&qword_100AD2828);
  v8 = type metadata accessor for _ConditionalContent();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = sub_1008717F4();
  WitnessTable = swift_getWitnessTable();
  v38 = type metadata accessor for ForEachSubviewCollection();
  v39 = type metadata accessor for Subview.ID();
  v40 = v8;
  v41 = swift_getWitnessTable();
  v42 = sub_1008BF78C(qword_100AF7558, &type metadata accessor for Subview.ID);
  type metadata accessor for ForEach();
  v37 = WitnessTable;
  swift_getWitnessTable();
  v10 = type metadata accessor for LazyHStack();
  v24 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v24 - v11;
  v13 = type metadata accessor for ModifiedContent();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v24 - v18;
  v30 = a2;
  v31 = v25;
  v32 = v26;
  v33 = v27;
  v34 = v28;
  static VerticalAlignment.center.getter();
  sub_1008BD354();
  LazyHStack.init(alignment:spacing:pinnedViews:content:)();
  v20 = swift_getWitnessTable();
  View.fixedSize(horizontal:vertical:)();
  (*(v24 + 8))(v12, v10);
  v35 = v20;
  v36 = &protocol witness table for _FixedSizeLayout;
  v21 = swift_getWitnessTable();
  sub_10053057C(v16, v13, v21);
  v22 = *(v14 + 8);
  v22(v16, v13);
  sub_10053057C(v19, v13, v21);
  return (v22)(v19, v13);
}

uint64_t sub_1008BC21C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v51 = a1;
  v52 = a6;
  v55 = a2;
  v56 = a3;
  v46 = a5;
  v47 = a2;
  v57 = a4;
  v58 = a5;
  v53 = type metadata accessor for InsightsCapsulePicker();
  v49 = *(v53 - 8);
  v50 = *(v49 + 64);
  __chkstk_darwin(v53);
  v48 = &v41 - v10;
  v45 = *(a3 - 8);
  __chkstk_darwin(v11);
  v44 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000F2A18(&qword_100AF7548);
  v55 = a2;
  v56 = a3;
  v57 = a4;
  v58 = a5;
  v14 = type metadata accessor for InsightsCapsulePicker.ButtonStyle();
  v15 = sub_10000B58C(&qword_100AF7550, &qword_100AF7548);
  WitnessTable = swift_getWitnessTable();
  v55 = v13;
  v56 = v14;
  v57 = v15;
  v58 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_1000F2A18(&qword_100AD2828);
  v17 = type metadata accessor for _ConditionalContent();
  v55 = v13;
  v56 = v14;
  v57 = v15;
  v58 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = sub_1008717F4();
  v60 = OpaqueTypeConformance2;
  v61 = v19;
  v43 = swift_getWitnessTable();
  v41 = v17;
  v20 = type metadata accessor for ForEachSubviewCollection();
  v21 = type metadata accessor for Subview.ID();
  v22 = swift_getWitnessTable();
  v23 = sub_1008BF78C(qword_100AF7558, &type metadata accessor for Subview.ID);
  v55 = v20;
  v56 = v21;
  v57 = v17;
  v58 = v22;
  v59 = v23;
  v24 = type metadata accessor for ForEach();
  v42 = *(v24 - 8);
  __chkstk_darwin(v24);
  v26 = &v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v27);
  v30 = &v41 - v29;
  v31 = v53;
  v32 = v51;
  (*(v45 + 16))(v44, v51 + *(v53 + 52), a3, v28);
  v33 = v48;
  v34 = v49;
  (*(v49 + 16))(v48, v32, v31);
  v35 = (*(v34 + 80) + 48) & ~*(v34 + 80);
  v36 = swift_allocObject();
  *(v36 + 2) = v47;
  *(v36 + 3) = a3;
  *(v36 + 4) = a4;
  *(v36 + 5) = v46;
  (*(v34 + 32))(&v36[v35], v33, v53);
  v37 = v43;
  ForEach.init<A>(subviews:content:)();
  v54 = v37;
  v38 = swift_getWitnessTable();
  sub_10053057C(v26, v24, v38);
  v39 = *(v42 + 8);
  v39(v26, v24);
  sub_10053057C(v30, v24, v38);
  return (v39)(v30, v24);
}

uint64_t sub_1008BC71C@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v98 = a2;
  v110 = a1;
  v106 = a7;
  v112 = a3;
  v113 = a4;
  v114 = a5;
  v115 = a6;
  v107 = a5;
  v91 = type metadata accessor for InsightsCapsulePicker();
  v88 = *(v91 - 8);
  v86 = *(v88 + 64);
  __chkstk_darwin(v91);
  v87 = &v83 - v11;
  v12 = sub_1000F24EC(&qword_100AF7548);
  v96 = *(v12 - 8);
  __chkstk_darwin(v12);
  v95 = &v83 - v13;
  v112 = a3;
  v113 = a4;
  v89 = a4;
  v114 = a5;
  v115 = a6;
  v90 = a6;
  v14 = type metadata accessor for InsightsCapsulePicker.ButtonStyle();
  v15 = sub_10000B58C(&qword_100AF7550, &qword_100AF7548);
  WitnessTable = swift_getWitnessTable();
  v105 = v12;
  v112 = v12;
  v113 = v14;
  v109 = v14;
  v104 = v15;
  v114 = v15;
  v115 = WitnessTable;
  v103 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v94 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v93 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v92 = &v83 - v20;
  v21 = sub_1000F24EC(&qword_100AD2828);
  __chkstk_darwin(v21);
  v85 = &v83 - v22;
  v23 = type metadata accessor for ContainerValues();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for Optional();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v28 = &v83 - v27;
  v29 = *(a3 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v31);
  v32 = &v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v108 = &v83 - v34;
  v102 = OpaqueTypeMetadata2;
  v101 = v21;
  v35 = a3;
  v99 = type metadata accessor for _ConditionalContent();
  v100 = *(v99 - 8);
  __chkstk_darwin(v99);
  v111 = &v83 - v36;
  Subview.containerValues.getter();
  ContainerValues.tag<A>(for:)();
  (*(v24 + 8))(v26, v23);
  v37 = v29;
  if ((*(v29 + 48))(v28, 1, a3) == 1)
  {
    (*(v83 + 8))(v28, v84);
    v38 = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v47 = type metadata accessor for Subview();
    v48 = v85;
    (*(*(v47 - 8) + 16))(v85, v110, v47);
    v49 = v101;
    v50 = v48 + *(v101 + 36);
    *v50 = v38;
    *(v50 + 8) = v40;
    *(v50 + 16) = v42;
    *(v50 + 24) = v44;
    *(v50 + 32) = v46;
    *(v50 + 40) = 0;
    v51 = v105;
    v52 = v109;
    v112 = v105;
    v113 = v109;
    v53 = v104;
    v54 = v103;
    v114 = v104;
    v115 = v103;
    swift_getOpaqueTypeConformance2();
    sub_1008717F4();
    sub_10047EFEC(v48, v102, v49);
    sub_100004F84(v48, &qword_100AD2828);
  }

  else
  {
    v85 = *(v29 + 32);
    v55 = v108;
    (v85)(v108, v28, a3);
    v56 = v88;
    v57 = v87;
    v58 = v91;
    (*(v88 + 16))(v87, v98, v91);
    v97 = v37;
    (*(v37 + 16))(v32, v55, v35);
    v59 = (*(v56 + 80) + 48) & ~*(v56 + 80);
    v60 = (v86 + *(v37 + 80) + v59) & ~*(v37 + 80);
    v61 = swift_allocObject();
    v62 = v89;
    *(v61 + 16) = v35;
    *(v61 + 24) = v62;
    v63 = v90;
    *(v61 + 32) = v107;
    *(v61 + 40) = v63;
    (*(v56 + 32))(v61 + v59, v57, v58);
    v64 = (v85)(v61 + v60, v32, v35);
    __chkstk_darwin(v64);
    *(&v83 - 2) = v110;
    type metadata accessor for Subview();
    v65 = v95;
    Button.init(action:label:)();
    v66 = *(v98 + *(v58 + 56));
    type metadata accessor for Binding();
    Binding.wrappedValue.getter();
    LOBYTE(v61) = v66(v32, v108);
    v67 = *(v97 + 8);
    v97 += 8;
    v110 = v67;
    v67(v32, v35);
    v68 = Namespace.wrappedValue.getter();
    KeyPath = swift_getKeyPath();
    v70 = swift_getKeyPath();
    v125 = 0;
    v123 = 0;
    v129 = v70;
    v130 = 0;
    v127 = KeyPath;
    v128 = 0;
    LOBYTE(v112) = v61 & 1;
    *(&v112 + 1) = *v126;
    HIDWORD(v112) = *&v126[3];
    v113 = v68;
    v114 = KeyPath;
    LOBYTE(v115) = 0;
    *(&v115 + 1) = *v124;
    HIDWORD(v115) = *&v124[3];
    v116 = v70;
    v117 = 0;
    *v118 = *v122;
    *&v118[3] = *&v122[3];
    v119 = 0x4040000000000000;
    v71 = swift_checkMetadataState();
    v72 = v93;
    v51 = v105;
    v53 = v104;
    v54 = v103;
    View.buttonStyle<A>(_:)();
    sub_100004F84(&v127, &qword_100AD2650);
    sub_100004F84(&v129, &qword_100AD2650);
    (*(v96 + 8))(v65, v51);
    v112 = v51;
    v113 = v71;
    v114 = v53;
    v115 = v54;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v74 = v92;
    v75 = v102;
    sub_10053057C(v72, v102, OpaqueTypeConformance2);
    v76 = *(v94 + 8);
    v76(v72, v75);
    sub_10053057C(v74, v75, OpaqueTypeConformance2);
    sub_1008717F4();
    sub_10047EEF4(v72, v75);
    v76(v72, v75);
    v76(v74, v75);
    v52 = v109;
    v110(v108, v35);
  }

  v112 = v51;
  v113 = v52;
  v114 = v53;
  v115 = v54;
  v77 = swift_getOpaqueTypeConformance2();
  v78 = sub_1008717F4();
  v120 = v77;
  v121 = v78;
  v79 = v99;
  v80 = swift_getWitnessTable();
  v81 = v111;
  sub_10053057C(v111, v79, v80);
  return (*(v100 + 8))(v81, v79);
}

uint64_t sub_1008BD354()
{
  type metadata accessor for PinnedScrollableViews();
  sub_1008BF78C(&qword_100AE6A20, &type metadata accessor for PinnedScrollableViews);
  return dispatch thunk of OptionSet.init(rawValue:)();
}

uint64_t sub_1008BD3D4()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v0 + 24);
  v5 = *(v0 + 16);
  v9 = v5;
  if (v10 != 1)
  {

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100004F84(&v9, &qword_100AD2650);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_1008BD534()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v0 + 40);
  v5 = *(v0 + 32);
  v9 = v5;
  if (v10 != 1)
  {

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100004F84(&v9, &qword_100AD2650);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_1008BD694@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v127 = a2;
  v125 = a3;
  v126 = type metadata accessor for AccessibilityTraits();
  v124 = *(v126 - 8);
  __chkstk_darwin(v126);
  v123 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_1000F24EC(&qword_100ADB538);
  __chkstk_darwin(v110);
  v100 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v98 - v7;
  v116 = sub_1000F24EC(&qword_100AF5160);
  __chkstk_darwin(v116);
  v10 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v99 = &v98 - v12;
  v13 = type metadata accessor for Text.LineStyle.Pattern();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000F24EC(&qword_100AF75E0);
  __chkstk_darwin(v17);
  v19 = &v98 - v18;
  v109 = sub_1000F24EC(&qword_100AF75E8);
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v21 = &v98 - v20;
  v104 = sub_1000F24EC(&qword_100AF75F0);
  __chkstk_darwin(v104);
  v102 = &v98 - v22;
  v103 = sub_1000F24EC(&qword_100AF75F8);
  __chkstk_darwin(v103);
  v107 = &v98 - v23;
  v105 = sub_1000F24EC(&qword_100AF7600);
  __chkstk_darwin(v105);
  v113 = &v98 - v24;
  v111 = sub_1000F24EC(&qword_100AF7608);
  __chkstk_darwin(v111);
  v119 = &v98 - v25;
  v112 = sub_1000F24EC(&qword_100AF7610);
  __chkstk_darwin(v112);
  v118 = &v98 - v26;
  v117 = sub_1000F24EC(&qword_100AF7618);
  __chkstk_darwin(v117);
  v120 = &v98 - v27;
  v115 = sub_1000F24EC(&qword_100AF7620);
  __chkstk_darwin(v115);
  v121 = &v98 - v28;
  v129 = sub_1000F24EC(&qword_100AF7628);
  __chkstk_darwin(v129);
  v122 = &v98 - v29;
  v114 = a1;
  ButtonStyleConfiguration.label.getter();
  static Font.footnote.getter();
  v30 = Font.bold()();

  KeyPath = swift_getKeyPath();
  v32 = &v19[*(v17 + 36)];
  *v32 = KeyPath;
  v32[1] = v30;
  v33 = v101;
  v128 = *v101;
  v106 = v21;
  if (v128)
  {
    static Text.LineStyle.Pattern.solid.getter();
    sub_1008BF0A8();
    View.underline(_:pattern:color:)();
    (*(v14 + 8))(v16, v13);
    sub_100004F84(v19, &qword_100AF75E0);
    v34 = static HierarchicalShapeStyle.secondary.getter();
    v35 = v33;
    v36 = v110;
    v37 = *(v110 + 36);
    v38 = enum case for BlendMode.plusDarker(_:);
    v39 = type metadata accessor for BlendMode();
    v40 = *(*(v39 - 8) + 104);
    v40(&v8[v37], v38, v39);
    v40(&v8[*(v36 + 40)], enum case for BlendMode.plusLighter(_:), v39);
    *v8 = v34;
    if (ButtonStyleConfiguration.isPressed.getter())
    {
      v41 = 0.75;
    }

    else
    {
      v41 = 1.0;
    }

    v42 = v8;
    v10 = v99;
  }

  else
  {
    sub_1008BD3D4();
    static Text.LineStyle.Pattern.solid.getter();
    sub_1008BF0A8();
    View.underline(_:pattern:color:)();
    (*(v14 + 8))(v16, v13);
    sub_100004F84(v19, &qword_100AF75E0);
    v43 = static HierarchicalShapeStyle.tertiary.getter();
    v35 = v33;
    v44 = v110;
    v45 = *(v110 + 36);
    v46 = enum case for BlendMode.plusDarker(_:);
    v47 = type metadata accessor for BlendMode();
    v48 = *(*(v47 - 8) + 104);
    v49 = v100;
    v48(&v100[v45], v46, v47);
    v48(&v49[*(v44 + 40)], enum case for BlendMode.plusLighter(_:), v47);
    *v49 = v43;
    if (ButtonStyleConfiguration.isPressed.getter())
    {
      v41 = 0.4;
    }

    else
    {
      v41 = 1.0;
    }

    v42 = v49;
  }

  sub_100021CEC(v42, v10, &qword_100ADB538);
  *&v10[*(v116 + 36)] = v41;
  sub_10000B58C(&qword_100AF7638, &qword_100AF5160);
  v50 = AnyShapeStyle.init<A>(_:)();
  v51 = v102;
  (*(v108 + 32))(v102, v106, v109);
  *&v51[*(v104 + 36)] = v50;
  LOBYTE(v50) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v60 = v51;
  v61 = v107;
  sub_100021CEC(v60, v107, &qword_100AF75F0);
  v62 = v61 + *(v103 + 36);
  *v62 = v50;
  *(v62 + 8) = v53;
  *(v62 + 16) = v55;
  *(v62 + 24) = v57;
  *(v62 + 32) = v59;
  *(v62 + 40) = 0;
  LOBYTE(v50) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v71 = v113;
  sub_100021CEC(v61, v113, &qword_100AF75F8);
  v72 = v71 + *(v105 + 36);
  *v72 = v50;
  *(v72 + 8) = v64;
  *(v72 + 16) = v66;
  *(v72 + 24) = v68;
  *(v72 + 32) = v70;
  *(v72 + 40) = 0;
  static Alignment.center.getter();
  v73 = v122;
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v74 = v119;
  sub_100021CEC(v71, v119, &qword_100AF7600);
  v75 = (v74 + *(v111 + 36));
  v76 = v136;
  v75[4] = v135;
  v75[5] = v76;
  v75[6] = v137;
  v77 = v132;
  *v75 = v131;
  v75[1] = v77;
  v78 = v134;
  v75[2] = v133;
  v75[3] = v78;
  v79 = static Alignment.center.getter();
  v81 = v80;
  v82 = v118;
  v83 = &v118[*(v112 + 36)];
  sub_1008BE654(v35, v127[2], v127[3], v127[4], v127[5], v83);
  v84 = (v83 + *(sub_1000F24EC(&qword_100AF7640) + 36));
  *v84 = v79;
  v84[1] = v81;
  sub_100021CEC(v74, v82, &qword_100AF7608);
  v85 = static Animation.spring(response:dampingFraction:blendDuration:)();
  v86 = v120;
  sub_100021CEC(v82, v120, &qword_100AF7610);
  v87 = v86 + *(v117 + 36);
  *v87 = v85;
  *(v87 + 8) = v128;
  v88 = v121;
  v89 = &v121[*(v115 + 36)];
  sub_1000F24EC(&qword_100AF49D8);
  static ContentShapeKinds.interaction.getter();
  *v89 = 0;
  sub_100021CEC(v86, v88, &qword_100AF7618);
  sub_1000F24EC(&qword_100AF5130);
  type metadata accessor for ContentShapeKinds();
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_100940050;
  static ContentShapeKinds.hoverEffect.getter();
  static ContentShapeKinds.accessibility.getter();
  v130 = v90;
  v91 = v73 + *(v129 + 36);
  v92 = sub_1000F24EC(&qword_100AF66F8);
  sub_1008BF78C(&qword_100AF5148, &type metadata accessor for ContentShapeKinds);
  sub_1000F24EC(&qword_100AF5150);
  sub_10000B58C(&qword_100AF5158, &qword_100AF5150);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v93 = enum case for RoundedCornerStyle.continuous(_:);
  v94 = type metadata accessor for RoundedCornerStyle();
  (*(*(v94 - 8) + 104))(v91, v93, v94);
  *(v91 + *(v92 + 36)) = 0;
  sub_100021CEC(v88, v73, &qword_100AF7620);
  if (v128)
  {
    v95 = v123;
    static AccessibilityTraits.isSelected.getter();
    v96 = v126;
  }

  else
  {
    v130 = _swiftEmptyArrayStorage;
    sub_1008BF78C(&qword_100AF7648, &type metadata accessor for AccessibilityTraits);
    sub_1000F24EC(&qword_100AF7650);
    sub_10000B58C(&qword_100AF7658, &qword_100AF7650);
    v95 = v123;
    v96 = v126;
    dispatch thunk of SetAlgebra.init<A>(_:)();
  }

  sub_1008BF190();
  View.accessibilityAddTraits(_:)();
  (*(v124 + 8))(v95, v96);
  return sub_1000E6084(v73);
}

uint64_t sub_1008BE654@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a4;
  v37 = a5;
  v34 = a2;
  v35 = a3;
  v8 = sub_1000F24EC(&qword_100AF76A8);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v34 - v10;
  v12 = sub_1000F24EC(&qword_100AF76B0);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v34 - v14;
  v16 = enum case for RoundedCornerStyle.continuous(_:);
  v17 = type metadata accessor for RoundedCornerStyle();
  (*(*(v17 - 8) + 104))(v11, v16, v17);
  static Color.black.getter();
  v18 = Color.opacity(_:)();

  v19 = &v11[*(v9 + 60)];
  v20 = *(sub_1000F24EC(&qword_100AF76B8) + 36);
  v21 = enum case for BlendMode.plusDarker(_:);
  v22 = type metadata accessor for BlendMode();
  (*(*(v22 - 8) + 104))(v19 + v20, v21, v22);
  *v19 = v18;
  *&v11[*(v9 + 64)] = 256;
  v23 = *a1;
  if (*a1)
  {
    v24 = 1.0;
  }

  else
  {
    v24 = 0.0;
  }

  sub_100021CEC(v11, v15, &qword_100AF76A8);
  *&v15[*(v13 + 44)] = v24;
  if (v23)
  {
    v38 = v34;
    v39 = v35;
    v40 = v36;
    v41 = v37;
    type metadata accessor for InsightsCapsulePicker.ButtonStyle();
    v25 = sub_1008BD534() ^ 1;
  }

  else
  {
    v25 = 0;
  }

  v26 = *(a1 + 1);
  v27 = static MatchedGeometryProperties.frame.getter();
  static UnitPoint.center.getter();
  v29 = v28;
  v31 = v30;
  sub_100021CEC(v15, a6, &qword_100AF76B0);
  result = sub_1000F24EC(&qword_100AF76C0);
  v33 = a6 + *(result + 36);
  *v33 = 0x6F697463656C6573;
  *(v33 + 8) = 0xE90000000000006ELL;
  *(v33 + 16) = v26;
  *(v33 + 24) = v27;
  *(v33 + 32) = v29;
  *(v33 + 40) = v31;
  *(v33 + 48) = v25 & 1;
  return result;
}

uint64_t sub_1008BE9C0@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for InsightsCapsulePicker() - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_1008BC71C(a1, v10, v5, v6, v7, v8, a2);
}

uint64_t sub_1008BEA7C()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for InsightsCapsulePicker() - 8);
  v3 = (((*(v2 + 80) + 48) & ~*(v2 + 80)) + *(v2 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80);
  v4 = type metadata accessor for InsightsCapsulePicker();
  return sub_1008BEEAC(v0 + v3, v4);
}

uint64_t sub_1008BEB70@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = type metadata accessor for Subview();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v3, v4);
}

BOOL sub_1008BEBDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a4;
  v27 = a3;
  v6 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v24 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v24 - v17;
  sub_100088AC8(a1, v11);
  v19 = v13[6];
  if (v19(v11, 1, v12) == 1)
  {
    v8 = v11;
  }

  else
  {
    v25 = a1;
    v24 = v13[4];
    v24(v18, v11, v12);
    sub_100088AC8(a2, v8);
    if (v19(v8, 1, v12) != 1)
    {
      v24(v15, v8, v12);
      v22 = Calendar.compare(_:to:toGranularity:)();
      v23 = v13[1];
      v23(v15, v12);
      v23(v18, v12);
      return v22 == 0;
    }

    (v13[1])(v18, v12);
    a1 = v25;
  }

  sub_100004F84(v8, &unk_100AD4790);
  if (v19(a1, 1, v12) != 1)
  {
    return 0;
  }

  return v19(a2, 1, v12) == 1;
}

uint64_t sub_1008BEEAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = __chkstk_darwin(a1);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v2, v3);
  type metadata accessor for Binding();
  return Binding.wrappedValue.setter();
}

uint64_t sub_1008BEF7C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1008BEFB8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[56])
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

uint64_t sub_1008BF00C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1008BF0A8()
{
  result = qword_100AF7630;
  if (!qword_100AF7630)
  {
    sub_1000F2A18(&qword_100AF75E0);
    sub_1008BF78C(&qword_100AF66C8, &type metadata accessor for ButtonStyleConfiguration.Label);
    sub_10000B58C(&qword_100AD2760, &unk_100AE16A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF7630);
  }

  return result;
}

unint64_t sub_1008BF190()
{
  result = qword_100AF7660;
  if (!qword_100AF7660)
  {
    sub_1000F2A18(&qword_100AF7628);
    sub_1008BF248();
    sub_10000B58C(&qword_100AF6808, &qword_100AF66F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF7660);
  }

  return result;
}

unint64_t sub_1008BF248()
{
  result = qword_100AF7668;
  if (!qword_100AF7668)
  {
    sub_1000F2A18(&qword_100AF7620);
    sub_1008BF300();
    sub_10000B58C(&qword_100AF4A38, &qword_100AF49D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF7668);
  }

  return result;
}

unint64_t sub_1008BF300()
{
  result = qword_100AF7670;
  if (!qword_100AF7670)
  {
    sub_1000F2A18(&qword_100AF7618);
    sub_1008BF3B8();
    sub_10000B58C(&qword_100ADD8A8, &qword_100ADD8B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF7670);
  }

  return result;
}

unint64_t sub_1008BF3B8()
{
  result = qword_100AF7678;
  if (!qword_100AF7678)
  {
    sub_1000F2A18(&qword_100AF7610);
    sub_1008BF470();
    sub_10000B58C(&qword_100AF76A0, &qword_100AF7640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF7678);
  }

  return result;
}

unint64_t sub_1008BF470()
{
  result = qword_100AF7680;
  if (!qword_100AF7680)
  {
    sub_1000F2A18(&qword_100AF7608);
    sub_1008BF558(&qword_100AF7688, &qword_100AF7600, &unk_100973028, sub_1008BF528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF7680);
  }

  return result;
}

uint64_t sub_1008BF558(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000F2A18(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1008BF5DC()
{
  result = qword_100AF7698;
  if (!qword_100AF7698)
  {
    sub_1000F2A18(&qword_100AF75F0);
    sub_1000F2A18(&qword_100AF75E0);
    sub_1008BF0A8();
    swift_getOpaqueTypeConformance2();
    sub_10000B58C(&qword_100ADDFE8, &qword_100ADDFF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF7698);
  }

  return result;
}

unint64_t sub_1008BF6D0()
{
  result = qword_100AF76C8;
  if (!qword_100AF76C8)
  {
    sub_1000F2A18(&qword_100AF76D0);
    sub_1008BF190();
    sub_1008BF78C(&qword_100AD2200, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF76C8);
  }

  return result;
}

uint64_t sub_1008BF78C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1008BF8A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JournalPrintPageRenderer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1008BF8FC()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  v2 = [objc_allocWithZone(LPLinkMetadata) init];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v3 = String._bridgeToObjectiveC()();

  [v2 setTitle:v3];

  v4 = sub_1006F82E0();
  if (v5)
  {
    v6 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v6 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      v7 = String._bridgeToObjectiveC()();
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  [v2 setSummary:v7];

  return v2;
}

uint64_t sub_1008BFAB4()
{
  v0 = type metadata accessor for ColorResource();
  sub_100006118(v0, qword_100B312C8);
  sub_10000617C(v0, qword_100B312C8);
  if (qword_100AD0BD8 != -1)
  {
    swift_once();
  }

  v1 = qword_100AF7700;
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_1008BFB5C()
{
  v0 = type metadata accessor for ColorResource();
  sub_100006118(v0, qword_100B31310);
  sub_10000617C(v0, qword_100B31310);
  if (qword_100AD0BD8 != -1)
  {
    swift_once();
  }

  v1 = qword_100AF7700;
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_1008BFC04()
{
  v0 = type metadata accessor for ColorResource();
  sub_100006118(v0, qword_100B31328);
  sub_10000617C(v0, qword_100B31328);
  if (qword_100AD0BD8 != -1)
  {
    swift_once();
  }

  v1 = qword_100AF7700;
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_1008BFCAC()
{
  v0 = type metadata accessor for ColorResource();
  sub_100006118(v0, qword_100B31340);
  sub_10000617C(v0, qword_100B31340);
  if (qword_100AD0BD8 != -1)
  {
    swift_once();
  }

  v1 = qword_100AF7700;
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_1008BFD54()
{
  v0 = type metadata accessor for ColorResource();
  sub_100006118(v0, qword_100B31358);
  sub_10000617C(v0, qword_100B31358);
  if (qword_100AD0BD8 != -1)
  {
    swift_once();
  }

  v1 = qword_100AF7700;
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_1008BFDFC()
{
  v0 = type metadata accessor for ColorResource();
  sub_100006118(v0, qword_100B31370);
  sub_10000617C(v0, qword_100B31370);
  if (qword_100AD0BD8 != -1)
  {
    swift_once();
  }

  v1 = qword_100AF7700;
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_1008BFEA4()
{
  v0 = type metadata accessor for ColorResource();
  sub_100006118(v0, qword_100B31388);
  sub_10000617C(v0, qword_100B31388);
  if (qword_100AD0BD8 != -1)
  {
    swift_once();
  }

  v1 = qword_100AF7700;
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_1008BFF4C()
{
  v0 = type metadata accessor for ColorResource();
  sub_100006118(v0, qword_100B313A0);
  sub_10000617C(v0, qword_100B313A0);
  if (qword_100AD0BD8 != -1)
  {
    swift_once();
  }

  v1 = qword_100AF7700;
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_1008BFFF4()
{
  v0 = type metadata accessor for ColorResource();
  sub_100006118(v0, qword_100B313B8);
  sub_10000617C(v0, qword_100B313B8);
  if (qword_100AD0BD8 != -1)
  {
    swift_once();
  }

  v1 = qword_100AF7700;
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_1008C009C()
{
  v0 = type metadata accessor for ColorResource();
  sub_100006118(v0, qword_100B313D0);
  sub_10000617C(v0, qword_100B313D0);
  if (qword_100AD0BD8 != -1)
  {
    swift_once();
  }

  v1 = qword_100AF7700;
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_1008C0144()
{
  v0 = type metadata accessor for ColorResource();
  sub_100006118(v0, qword_100B313E8);
  sub_10000617C(v0, qword_100B313E8);
  if (qword_100AD0BD8 != -1)
  {
    swift_once();
  }

  v1 = qword_100AF7700;
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_1008C01EC()
{
  v0 = type metadata accessor for ColorResource();
  sub_100006118(v0, qword_100B31400);
  sub_10000617C(v0, qword_100B31400);
  if (qword_100AD0BD8 != -1)
  {
    swift_once();
  }

  v1 = qword_100AF7700;
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_1008C0294()
{
  v0 = type metadata accessor for ColorResource();
  sub_100006118(v0, qword_100B31418);
  sub_10000617C(v0, qword_100B31418);
  if (qword_100AD0BD8 != -1)
  {
    swift_once();
  }

  v1 = qword_100AF7700;
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_1008C033C()
{
  v0 = type metadata accessor for ColorResource();
  sub_100006118(v0, qword_100B31430);
  sub_10000617C(v0, qword_100B31430);
  if (qword_100AD0BD8 != -1)
  {
    swift_once();
  }

  v1 = qword_100AF7700;
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_1008C03E4()
{
  v0 = type metadata accessor for ColorResource();
  sub_100006118(v0, qword_100B31448);
  sub_10000617C(v0, qword_100B31448);
  if (qword_100AD0BD8 != -1)
  {
    swift_once();
  }

  v1 = qword_100AF7700;
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_1008C048C()
{
  v0 = type metadata accessor for ColorResource();
  sub_100006118(v0, qword_100B31460);
  sub_10000617C(v0, qword_100B31460);
  if (qword_100AD0BD8 != -1)
  {
    swift_once();
  }

  v1 = qword_100AF7700;
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_1008C0534()
{
  v0 = type metadata accessor for ColorResource();
  sub_100006118(v0, qword_100B31478);
  sub_10000617C(v0, qword_100B31478);
  if (qword_100AD0BD8 != -1)
  {
    swift_once();
  }

  v1 = qword_100AF7700;
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_1008C06AC()
{
  v0 = type metadata accessor for ColorResource();
  sub_100006118(v0, qword_100B31520);
  sub_10000617C(v0, qword_100B31520);
  if (qword_100AD0BD8 != -1)
  {
    swift_once();
  }

  v1 = qword_100AF7700;
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_1008C0754()
{
  v0 = type metadata accessor for ColorResource();
  sub_100006118(v0, qword_100B31538);
  sub_10000617C(v0, qword_100B31538);
  if (qword_100AD0BD8 != -1)
  {
    swift_once();
  }

  v1 = qword_100AF7700;
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_1008C07FC()
{
  v0 = type metadata accessor for ColorResource();
  sub_100006118(v0, qword_100B31580);
  sub_10000617C(v0, qword_100B31580);
  if (qword_100AD0BD8 != -1)
  {
    swift_once();
  }

  v1 = qword_100AF7700;
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_1008C08A4()
{
  v0 = type metadata accessor for ColorResource();
  sub_100006118(v0, qword_100B31598);
  sub_10000617C(v0, qword_100B31598);
  if (qword_100AD0BD8 != -1)
  {
    swift_once();
  }

  v1 = qword_100AF7700;
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_1008C094C()
{
  v0 = type metadata accessor for ColorResource();
  sub_100006118(v0, qword_100B315B0);
  sub_10000617C(v0, qword_100B315B0);
  if (qword_100AD0BD8 != -1)
  {
    swift_once();
  }

  v1 = qword_100AF7700;
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_1008C09F4()
{
  v0 = type metadata accessor for ColorResource();
  sub_100006118(v0, qword_100B315C8);
  sub_10000617C(v0, qword_100B315C8);
  if (qword_100AD0BD8 != -1)
  {
    swift_once();
  }

  v1 = qword_100AF7700;
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_1008C0A9C()
{
  v0 = type metadata accessor for ColorResource();
  sub_100006118(v0, qword_100B315E0);
  sub_10000617C(v0, qword_100B315E0);
  if (qword_100AD0BD8 != -1)
  {
    swift_once();
  }

  v1 = qword_100AF7700;
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_1008C0B44()
{
  v0 = type metadata accessor for ColorResource();
  sub_100006118(v0, qword_100B315F8);
  sub_10000617C(v0, qword_100B315F8);
  if (qword_100AD0BD8 != -1)
  {
    swift_once();
  }

  v1 = qword_100AF7700;
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_1008C0BEC()
{
  v0 = type metadata accessor for ColorResource();
  sub_100006118(v0, qword_100B31610);
  sub_10000617C(v0, qword_100B31610);
  if (qword_100AD0BD8 != -1)
  {
    swift_once();
  }

  v1 = qword_100AF7700;
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_1008C0C94()
{
  v0 = type metadata accessor for ColorResource();
  sub_100006118(v0, qword_100B31628);
  sub_10000617C(v0, qword_100B31628);
  if (qword_100AD0BD8 != -1)
  {
    swift_once();
  }

  v1 = qword_100AF7700;
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_1008C0D3C()
{
  v0 = type metadata accessor for ColorResource();
  sub_100006118(v0, qword_100B31640);
  sub_10000617C(v0, qword_100B31640);
  if (qword_100AD0BD8 != -1)
  {
    swift_once();
  }

  v1 = qword_100AF7700;
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_1008C0DE4()
{
  v0 = type metadata accessor for ColorResource();
  sub_100006118(v0, qword_100B31658);
  sub_10000617C(v0, qword_100B31658);
  if (qword_100AD0BD8 != -1)
  {
    swift_once();
  }

  v1 = qword_100AF7700;
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_1008C0E8C()
{
  v0 = type metadata accessor for ColorResource();
  sub_100006118(v0, qword_100B31670);
  sub_10000617C(v0, qword_100B31670);
  if (qword_100AD0BD8 != -1)
  {
    swift_once();
  }

  v1 = qword_100AF7700;
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_1008C0F34()
{
  v0 = type metadata accessor for ColorResource();
  sub_100006118(v0, qword_100B31688);
  sub_10000617C(v0, qword_100B31688);
  if (qword_100AD0BD8 != -1)
  {
    swift_once();
  }

  v1 = qword_100AF7700;
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_1008C0FDC()
{
  v0 = type metadata accessor for ColorResource();
  sub_100006118(v0, qword_100B316A0);
  sub_10000617C(v0, qword_100B316A0);
  if (qword_100AD0BD8 != -1)
  {
    swift_once();
  }

  v1 = qword_100AF7700;
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_1008C1084()
{
  v0 = type metadata accessor for ColorResource();
  sub_100006118(v0, qword_100B316B8);
  sub_10000617C(v0, qword_100B316B8);
  if (qword_100AD0BD8 != -1)
  {
    swift_once();
  }

  v1 = qword_100AF7700;
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_1008C112C()
{
  v0 = type metadata accessor for ColorResource();
  sub_100006118(v0, qword_100B31718);
  sub_10000617C(v0, qword_100B31718);
  if (qword_100AD0BD8 != -1)
  {
    swift_once();
  }

  v1 = qword_100AF7700;
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_1008C123C()
{
  v0 = type metadata accessor for ImageResource();
  sub_100006118(v0, qword_100B31778);
  sub_10000617C(v0, qword_100B31778);
  if (qword_100AD0BD8 != -1)
  {
    swift_once();
  }

  v1 = qword_100AF7700;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_1008C12E4()
{
  v0 = type metadata accessor for ImageResource();
  sub_100006118(v0, qword_100B31790);
  sub_10000617C(v0, qword_100B31790);
  if (qword_100AD0BD8 != -1)
  {
    swift_once();
  }

  v1 = qword_100AF7700;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_1008C138C()
{
  v0 = type metadata accessor for ImageResource();
  sub_100006118(v0, qword_100B317A8);
  sub_10000617C(v0, qword_100B317A8);
  if (qword_100AD0BD8 != -1)
  {
    swift_once();
  }

  v1 = qword_100AF7700;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_1008C1434()
{
  v0 = type metadata accessor for ImageResource();
  sub_100006118(v0, qword_100B317C0);
  sub_10000617C(v0, qword_100B317C0);
  if (qword_100AD0BD8 != -1)
  {
    swift_once();
  }

  v1 = qword_100AF7700;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_1008C14DC()
{
  v0 = type metadata accessor for ImageResource();
  sub_100006118(v0, qword_100B317D8);
  sub_10000617C(v0, qword_100B317D8);
  if (qword_100AD0BD8 != -1)
  {
    swift_once();
  }

  v1 = qword_100AF7700;
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_1008C158C(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_100B2F2D0 == -1)
  {
    if (qword_100B2F2D8)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_1008C1D70();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_100B2F2D8)
    {
      return _availability_version_check();
    }
  }

  if (qword_100B2F2C8 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_1008C1D88();
    a3 = v10;
    a4 = v9;
    v8 = dword_100B2F2B8 < v11;
    if (dword_100B2F2B8 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_100B2F2BC > a3)
      {
        return 1;
      }

      if (dword_100B2F2BC >= a3)
      {
        return dword_100B2F2C0 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_100B2F2B8 < a2;
  if (dword_100B2F2B8 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_1008C1720(uint64_t result)
{
  v1 = qword_100B2F2D8;
  if (qword_100B2F2D8)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_100B2F2D8 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_100B2F2B8, &dword_100B2F2BC, &dword_100B2F2C0);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1008C1A68(os_log_t log)
{
  v1 = 136315138;
  v2 = "[RCActivityWaveformProcessor processAudioBuffer:]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s -- Processing buffer is too full", &v1, 0xCu);
}

void sub_1008C1C74(os_log_t log)
{
  v1 = 136315138;
  v2 = "[RCPlatterWaveformView removeSliceWithType:]";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s -- Unexpected slice type", &v1, 0xCu);
}

uint64_t EntityProperty<>.init()()
{
  return EntityProperty<>.init()();
}

{
  return EntityProperty<>.init()();
}

{
  return EntityProperty<>.init()();
}

{
  return EntityProperty<>.init()();
}

{
  return EntityProperty<>.init()();
}

uint64_t IntentParameter<>.init(description:default:requestValueDialog:inputConnectionBehavior:)()
{
  return IntentParameter<>.init(description:default:requestValueDialog:inputConnectionBehavior:)();
}

{
  return IntentParameter<>.init(description:default:requestValueDialog:inputConnectionBehavior:)();
}

uint64_t _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)()
{
  return _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
}

{
  return _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
}

uint64_t SortDescriptor.init<A>(_:order:)()
{
  return SortDescriptor.init<A>(_:order:)();
}

{
  return SortDescriptor.init<A>(_:order:)();
}

uint64_t AttributedString.Runs.subscript.getter()
{
  return AttributedString.Runs.subscript.getter();
}

{
  return AttributedString.Runs.subscript.getter();
}

uint64_t AttributedString.subscript.getter()
{
  return AttributedString.subscript.getter();
}

{
  return AttributedString.subscript.getter();
}

uint64_t AttributedString.init(_:)()
{
  return AttributedString.init(_:)();
}

{
  return AttributedString.init(_:)();
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t static PredicateExpressions.build_Arg<A>(_:)()
{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

uint64_t AttributeDynamicLookup.subscript.getter()
{
  return AttributeDynamicLookup.subscript.getter();
}

{
  return AttributeDynamicLookup.subscript.getter();
}

{
  return AttributeDynamicLookup.subscript.getter();
}

{
  return AttributeDynamicLookup.subscript.getter();
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.path(percentEncoded:)(percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall URL.formatted()()
{
  v0 = URL.formatted()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

NSAttributedString_optional __swiftcall Data.getAttributedString()()
{
  v0 = Data.getAttributedString()();
  result.value.super.isa = v0;
  result.is_nil = v1;
  return result;
}

Swift::String __swiftcall Date.formatted()()
{
  v0 = Date.formatted()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::tuple_inserted_Bool_memberAfterInsert_Int __swiftcall IndexSet.insert(_:)(Swift::Int a1)
{
  v1 = IndexSet.insert(_:)(a1);
  result.memberAfterInsert = v2;
  result.inserted = v1;
  return result;
}

Swift::tuple_OpaquePointer_OpaquePointer __swiftcall AudioIntensityProcessor.process(buffer:)(AVAudioPCMBuffer buffer)
{
  v1 = AudioIntensityProcessor.process(buffer:)(buffer.super.super.isa, buffer.super._impl);
  result._1._rawValue = v2;
  result._0._rawValue = v1;
  return result;
}

uint64_t dispatch thunk of UIMutableTraits.subscript.setter()
{
  return dispatch thunk of UIMutableTraits.subscript.setter();
}

{
  return dispatch thunk of UIMutableTraits.subscript.setter();
}

uint64_t static Tips.GroupBuilder.buildPartialBlock(accumulated:next:)()
{
  return static Tips.GroupBuilder.buildPartialBlock(accumulated:next:)();
}

{
  return static Tips.GroupBuilder.buildPartialBlock(accumulated:next:)();
}

uint64_t Tips.Rule.init<A>(_:_:)()
{
  return Tips.Rule.init<A>(_:_:)();
}

{
  return Tips.Rule.init<A>(_:_:)();
}

uint64_t AppStorage.init<A>(wrappedValue:_:store:)()
{
  return AppStorage.init<A>(wrappedValue:_:store:)();
}

{
  return AppStorage.init<A>(wrappedValue:_:store:)();
}

{
  return AppStorage.init<A>(wrappedValue:_:store:)();
}

{
  return AppStorage.init<A>(wrappedValue:_:store:)();
}

uint64_t DatePicker.init(selection:in:displayedComponents:label:)()
{
  return DatePicker.init(selection:in:displayedComponents:label:)();
}

{
  return DatePicker.init(selection:in:displayedComponents:label:)();
}

{
  return DatePicker.init(selection:in:displayedComponents:label:)();
}

uint64_t EnvironmentValues.subscript.getter()
{
  return EnvironmentValues.subscript.getter();
}

{
  return EnvironmentValues.subscript.getter();
}

uint64_t EnvironmentValues.subscript.setter()
{
  return EnvironmentValues.subscript.setter();
}

{
  return EnvironmentValues.subscript.setter();
}

uint64_t LocalizedStringKey.StringInterpolation.appendInterpolation(_:)()
{
  return LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
}

{
  return LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
}

{
  return LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
}

uint64_t Text.init(_:)()
{
  return Text.init(_:)();
}

{
  return Text.init(_:)();
}

uint64_t View.buttonStyle<A>(_:)()
{
  return View.buttonStyle<A>(_:)();
}

{
  return View.buttonStyle<A>(_:)();
}

uint64_t View.contentMargins(_:_:for:)()
{
  return View.contentMargins(_:_:for:)();
}

{
  return View.contentMargins(_:_:for:)();
}

uint64_t View.navigationTitle(_:)()
{
  return View.navigationTitle(_:)();
}

{
  return View.navigationTitle(_:)();
}

uint64_t View.onChange<A>(of:initial:_:)()
{
  return View.onChange<A>(of:initial:_:)();
}

{
  return View.onChange<A>(of:initial:_:)();
}

uint64_t Binding.init(get:set:)()
{
  return Binding.init(get:set:)();
}

{
  return Binding.init(get:set:)();
}

uint64_t + infix(_:_:)()
{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}

uint64_t PaperMarkup.append(contentsOf:)()
{
  return PaperMarkup.append(contentsOf:)();
}

{
  return PaperMarkup.append(contentsOf:)();
}

Swift::String __swiftcall BinaryFloatingPoint.formatted()()
{
  v0 = BinaryFloatingPoint.formatted()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t Dictionary.subscript.getter()
{
  return Dictionary.subscript.getter();
}

{
  return Dictionary.subscript.getter();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = String.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

uint64_t String.init<A>(_:)()
{
  return String.init<A>(_:)();
}

{
  return String.init<A>(_:)();
}

uint64_t RawRepresentable<>.encode(to:)()
{
  return RawRepresentable<>.encode(to:)();
}

{
  return RawRepresentable<>.encode(to:)();
}

uint64_t RawRepresentable<>.init(from:)()
{
  return RawRepresentable<>.init(from:)();
}

{
  return RawRepresentable<>.init(from:)();
}

CAFrameRateRange __swiftcall CAFrameRateRange.init(minimum:maximum:preferred:)(Swift::Float minimum, Swift::Float maximum, Swift::Float_optional *preferred)
{
  CAFrameRateRange.init(minimum:maximum:preferred:)(preferred, minimum, maximum);
  result.preferred = v5;
  result.maximum = v4;
  result.minimum = v3;
  return result;
}

uint64_t static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)()
{
  return static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
}

{
  return static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
}

uint64_t UITraitCollection.subscript.getter()
{
  return UITraitCollection.subscript.getter();
}

{
  return UITraitCollection.subscript.getter();
}

__C::CMTime __swiftcall CMTime.init(value:timescale:)(Swift::Int64 value, Swift::Int32 timescale)
{
  v2 = CMTime.init(value:timescale:)(value, *&timescale);
  result.epoch = v4;
  result.timescale = v3;
  result.flags = *(&v3 + 4);
  result.value = v2;
  return result;
}

__C::CMTime __swiftcall CMTime.init(seconds:preferredTimescale:)(Swift::Double seconds, Swift::Int32 preferredTimescale)
{
  v2 = CMTime.init(seconds:preferredTimescale:)(*&preferredTimescale, seconds);
  result.epoch = v4;
  result.timescale = v3;
  result.flags = *(&v3 + 4);
  result.value = v2;
  return result;
}

Swift::String __swiftcall Substring.uppercased()()
{
  v0 = Substring.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall BinaryInteger.formatted()()
{
  v0 = BinaryInteger.formatted()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t BinaryInteger.formatted<A>(_:)()
{
  return BinaryInteger.formatted<A>(_:)();
}

{
  return BinaryInteger.formatted<A>(_:)();
}

uint64_t static Identifiable<>.fetch(id:context:)()
{
  return static Identifiable<>.fetch(id:context:)();
}

{
  return static Identifiable<>.fetch(id:context:)();
}

uint64_t static Identifiable<>.fetch(ids:context:)()
{
  return static Identifiable<>.fetch(ids:context:)();
}

{
  return static Identifiable<>.fetch(ids:context:)();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

Swift::String __swiftcall Duration.formatted()()
{
  v0 = Duration.formatted()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

CGSize CGSizeApplyAffineTransform(CGSize size, CGAffineTransform *t)
{
  v4 = _CGSizeApplyAffineTransform(size, t);
  height = v4.height;
  width = v4.width;
  result.height = height;
  result.width = width;
  return result;
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  v4 = _CLLocationCoordinate2DMake(latitude, longitude);
  v3 = v4.longitude;
  v2 = v4.latitude;
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

CLLocationCoordinate2D MKCoordinateForMapPoint(MKMapPoint mapPoint)
{
  v3 = _MKCoordinateForMapPoint(mapPoint);
  longitude = v3.longitude;
  latitude = v3.latitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

MKMapPoint MKMapPointForCoordinate(CLLocationCoordinate2D coordinate)
{
  v3 = _MKMapPointForCoordinate(coordinate);
  y = v3.y;
  x = v3.x;
  result.y = y;
  result.x = x;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v4 = _NSIntersectionRange(range1, range2);
  length = v4.length;
  location = v4.location;
  result.length = length;
  result.location = location;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v4 = _NSUnionRange(range1, range2);
  length = v4.length;
  location = v4.location;
  result.length = length;
  result.location = location;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}