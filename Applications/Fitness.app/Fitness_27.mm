uint64_t sub_100346644()
{
  v1 = v0[56];
  v2 = v0[52];
  v3 = v0[48];
  v4 = v0[49];

  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100346840(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for Date();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for ImpressionMetrics();
  v2[8] = v4;
  v5 = *(v4 - 8);
  v2[9] = v5;
  v2[10] = *(v5 + 64);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v6 = type metadata accessor for IndexSet();
  v2[13] = v6;
  v2[14] = *(v6 - 8);
  v2[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[16] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[17] = v8;
  v2[18] = v7;

  return _swift_task_switch(sub_100346A00, v8, v7);
}

uint64_t sub_100346A00()
{
  v1 = [*(v0 + 32) collectionView];
  if (!v1)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = v1;
  v7 = [v1 collectionViewLayout];
  *(v0 + 152) = v7;

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v10 = *(v0 + 112);
    v9 = *(v0 + 120);
    v11 = *(v0 + 104);
    v12 = [v8 _orthogonalScrollingSections];
    static IndexSet._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = IndexPath.section.getter();
    v14 = IndexSet.contains(_:)(v13);
    (*(v10 + 8))(v9, v11);
    if (v14)
    {
      v16 = *(v0 + 48);
      v15 = *(v0 + 56);
      v18 = *(v0 + 32);
      v17 = *(v0 + 40);
      sub_100347064(*(v0 + 96));
      Date.init()();
      BasicImpressionsTracker.elementDidEnterView(_:on:)();
      (*(v16 + 8))(v15, v17);
      v1 = [v18 collectionView];
      if (v1)
      {
        v19 = v1;
        v20 = *(v0 + 88);
        v21 = *(v0 + 96);
        v22 = *(v0 + 72);
        v23 = *(v0 + 64);
        v24 = [v1 visibleCells];

        sub_100348F74();
        v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        *(v0 + 160) = v25;

        *(v0 + 16) = v25;
        v26 = swift_allocObject();
        swift_unknownObjectWeakInit();
        (*(v22 + 16))(v20, v21, v23);
        v27 = (*(v22 + 80) + 24) & ~*(v22 + 80);
        v28 = swift_allocObject();
        *(v0 + 168) = v28;
        *(v28 + 16) = v26;
        (*(v22 + 32))(v28 + v27, v20, v23);
        v29 = swift_task_alloc();
        *(v0 + 176) = v29;
        v30 = sub_100140278(&qword_1008E9A20);
        v5 = sub_1003490A0();
        *v29 = v0;
        v29[1] = sub_100346D8C;
        v2 = &unk_1006EA4F8;
        v1 = 5;
        v3 = v28;
        v4 = v30;

        return Collection<>.parallelForEach(parallelism:block:)(v1, v2, v3, v4, v5);
      }

LABEL_14:
      __break(1u);
      return Collection<>.parallelForEach(parallelism:block:)(v1, v2, v3, v4, v5);
    }
  }

  else
  {
  }

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_100346D8C()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_100346F9C;
  }

  else
  {
    v5 = sub_100346EE0;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100346EE0()
{
  v1 = v0[19];
  v2 = v0[12];
  v3 = v0[8];
  v4 = v0[9];

  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100346F9C()
{
  v1 = v0[19];
  v2 = v0[12];
  v3 = v0[8];
  v4 = v0[9];

  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100347064@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v1 = type metadata accessor for ScalarDictionary();
  __chkstk_darwin(v1 - 8);
  v21 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for MetricClickElement();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ImpressionMetrics.ID();
  v19 = *(v20 - 8);
  __chkstk_darwin(v20);
  v18 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  ImpressionMetrics.ID.init(parent:element:index:)();
  sub_100140278(&qword_1008DD8E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D6950;
  *(inited + 32) = 1701667182;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 0xD000000000000011;
  *(inited + 56) = 0x8000000100756870;
  *(inited + 72) = &type metadata for String;
  strcpy((inited + 80), "impressionType");
  *(inited + 95) = -18;
  (*(v4 + 104))(v6, enum case for MetricClickElement.shelf(_:), v3);
  v12 = MetricClickElement.rawValue.getter();
  v14 = v13;
  (*(v4 + 8))(v6, v3);
  *(inited + 96) = v12;
  *(inited + 104) = v14;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0x6973736572706D69;
  *(inited + 136) = 0xEF7865646E496E6FLL;
  *(inited + 144) = 0;
  *(inited + 168) = &type metadata for Int;
  *(inited + 176) = 0x657079546469;
  *(inited + 216) = &type metadata for String;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = 0x64695F737469;
  *(inited + 200) = 0xE600000000000000;
  sub_1002FC244(inited);
  swift_setDeallocating();
  sub_100140278(&qword_1008DD8E8);
  swift_arrayDestroy();
  v15 = v19;
  v16 = v20;
  (*(v19 + 16))(v18, v10, v20);
  ScalarDictionary.init()();
  sub_1002FC244(_swiftEmptyArrayStorage);
  sub_1002FC244(_swiftEmptyArrayStorage);
  ImpressionMetrics.init(id:fields:custom:commonFields:clickLocationFields:)();
  return (*(v15 + 8))(v10, v16);
}

uint64_t sub_100347448(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v5 = type metadata accessor for Date();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v6 = type metadata accessor for ImpressionMetrics.ID();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();
  sub_100140278(&qword_1008E9A30);
  v3[19] = swift_task_alloc();
  v7 = type metadata accessor for ImpressionMetrics();
  v3[20] = v7;
  v3[21] = *(v7 - 8);
  v3[22] = swift_task_alloc();
  sub_100140278(&qword_1008DE740);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v8 = type metadata accessor for IndexPath();
  v3[25] = v8;
  v3[26] = *(v8 - 8);
  v9 = swift_task_alloc();
  v10 = *a1;
  v3[27] = v9;
  v3[28] = v10;

  return _swift_task_switch(sub_1003476A0, 0, 0);
}

uint64_t sub_1003476A0()
{
  type metadata accessor for SeymourWorkoutRecommendationCollectionViewCell();
  v1 = swift_dynamicCastClass();
  v0[29] = v1;
  if (v1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v0[30] = Strong;
    if (Strong)
    {
      v3 = v0[28];
      v0[31] = type metadata accessor for MainActor();
      v4 = v3;
      v0[32] = static MainActor.shared.getter();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();

      return _swift_task_switch(sub_100347854, v6, v5);
    }

    (*(v0[26] + 56))(v0[24], 1, 1, v0[25]);
    sub_10000EA04(v0[24], &qword_1008DE740);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_100347854()
{
  v1 = *(v0 + 240);

  *(v0 + 264) = [v1 collectionView];

  return _swift_task_switch(sub_1003478E0, 0, 0);
}

uint64_t sub_1003478E0(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  if (*(v3 + 264))
  {
    *(v3 + 272) = static MainActor.shared.getter();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
    a1 = sub_100347978;
    a2 = v4;
    a3 = v6;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_100347978()
{
  v1 = v0[33];
  v2 = v0[28];

  v0[35] = [v1 indexPathForCell:v2];

  return _swift_task_switch(sub_100347A08, 0, 0);
}

uint64_t sub_100347A08()
{
  v1 = *(v0 + 280);
  if (v1)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = *(v0 + 200);
  v4 = *(v0 + 208);
  v6 = *(v0 + 184);
  v5 = *(v0 + 192);
  (*(v4 + 56))(v6, v2, 1, v3);
  sub_100349104(v6, v5);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {

    sub_10000EA04(*(v0 + 192), &qword_1008DE740);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v10 = *(v0 + 136);
    v9 = *(v0 + 144);
    v11 = *(v0 + 128);
    (*(*(v0 + 208) + 32))(*(v0 + 216), *(v0 + 192), *(v0 + 200));
    ImpressionMetrics.id.getter();
    v12 = ImpressionMetrics.ID.element.getter();
    v14 = v13;
    *(v0 + 288) = v13;
    (*(v10 + 8))(v9, v11);
    v15 = swift_task_alloc();
    *(v0 + 296) = v15;
    *v15 = v0;
    v15[1] = sub_100347C34;
    v16 = *(v0 + 216);
    v17 = *(v0 + 152);

    return sub_1003F5BC8(v17, v12, v14, v16);
  }
}

uint64_t sub_100347C34()
{

  if (v0)
  {

    v1 = sub_100348E5C;
  }

  else
  {

    v1 = sub_100347D7C;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100347D7C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 152);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 224);
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));

    sub_10000EA04(*(v0 + 152), &qword_1008E9A30);
LABEL_8:

    v14 = *(v0 + 8);

    return v14();
  }

  (*(v2 + 32))(*(v0 + 176), v3, v1);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 304) = Strong;
  if (!Strong)
  {
    v8 = *(v0 + 216);
    v9 = *(v0 + 200);
    v10 = *(v0 + 208);
    v12 = *(v0 + 168);
    v11 = *(v0 + 176);
    v13 = *(v0 + 160);

    (*(v12 + 8))(v11, v13);
    (*(v10 + 8))(v8, v9);
    goto LABEL_8;
  }

  *(v0 + 312) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100347F8C, v7, v6);
}

uint64_t sub_100347F8C()
{
  v1 = *(v0 + 304);

  *(v0 + 320) = [v1 view];

  return _swift_task_switch(sub_100348014, 0, 0);
}

uint64_t sub_100348014(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  if (*(v3 + 320))
  {
    *(v3 + 328) = static MainActor.shared.getter();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
    a1 = sub_1003480AC;
    a2 = v4;
    a3 = v6;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_1003480AC()
{
  v1 = *(v0 + 320);

  *(v0 + 336) = [v1 window];

  return _swift_task_switch(sub_100348134, 0, 0);
}

uint64_t sub_100348134()
{
  if (*(v0 + 336))
  {
    v1 = *(v0 + 224);
    *(v0 + 344) = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1003482A8, v3, v2);
  }

  else
  {
    v4 = *(v0 + 216);
    v5 = *(v0 + 200);
    v6 = *(v0 + 208);
    v8 = *(v0 + 168);
    v7 = *(v0 + 176);
    v9 = *(v0 + 160);

    (*(v8 + 8))(v7, v9);
    (*(v6 + 8))(v4, v5);

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1003482A8()
{
  v1 = *(v0 + 232);

  *(v0 + 352) = [v1 superview];

  return _swift_task_switch(sub_100348330, 0, 0);
}

uint64_t sub_100348330()
{
  v1 = v0[42];
  if (v0[44])
  {
    v2 = v1;
    v0[45] = static MainActor.shared.getter();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1003484B8, v4, v3);
  }

  else
  {
    v5 = v0[27];
    v6 = v0[28];
    v7 = v0[25];
    v8 = v0[26];
    v10 = v0[21];
    v9 = v0[22];
    v11 = v0[20];

    (*(v10 + 8))(v9, v11);
    (*(v8 + 8))(v5, v7);

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1003484B8()
{
  v1 = v0[29];

  [v1 frame];
  v0[46] = v2;
  v0[47] = v3;
  v0[48] = v4;
  v0[49] = v5;

  return _swift_task_switch(sub_10034853C, 0, 0);
}

uint64_t sub_10034853C()
{
  v1 = *(v0 + 352);
  *(v0 + 400) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003485D0, v3, v2);
}

uint64_t sub_1003485D0()
{
  v2 = v0[48];
  v1 = v0[49];
  v4 = v0[46];
  v3 = v0[47];
  v5 = *(v0 + 44);
  v6 = *(v0 + 42);

  [v6 convertRect:v5 fromCoordinateSpace:{v4, v3, v2, v1}];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  *(v0 + 51) = v8;
  *(v0 + 52) = v10;
  *(v0 + 53) = v12;
  *(v0 + 54) = v14;

  return _swift_task_switch(sub_100348698, 0, 0);
}

uint64_t sub_100348698()
{
  *(v0 + 440) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100348724, v2, v1);
}

uint64_t sub_100348724()
{
  v1 = v0[42];

  [v1 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v0[56] = v3;
  v0[57] = v5;
  v0[58] = v7;
  v0[59] = v9;

  return _swift_task_switch(sub_1003487CC, 0, 0);
}

uint64_t sub_1003487CC()
{
  v9 = CGRectIntersection(*(v0 + 408), *(v0 + 448));
  x = v9.origin.x;
  y = v9.origin.y;
  width = v9.size.width;
  height = v9.size.height;
  *(v0 + 480) = CGRectGetWidth(v9);
  v10.origin.x = x;
  v10.origin.y = y;
  v10.size.width = width;
  v10.size.height = height;
  *(v0 + 488) = CGRectGetHeight(v10);
  *(v0 + 496) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003488AC, v6, v5);
}

uint64_t sub_1003488AC()
{
  v1 = v0[29];

  [v1 frame];
  v0[63] = v2;
  v0[64] = v3;
  v0[65] = v4;
  v0[66] = v5;

  return _swift_task_switch(sub_100348934, 0, 0);
}

uint64_t sub_100348934()
{
  *(v0 + 536) = CGRectGetWidth(*(v0 + 504));
  *(v0 + 544) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003489D4, v2, v1);
}

uint64_t sub_1003489D4()
{
  v1 = v0[28];
  v2 = v0[29];

  [v2 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v0[69] = v4;
  v0[70] = v6;
  v0[71] = v8;
  v0[72] = v10;

  return _swift_task_switch(sub_100348A84, 0, 0);
}

uint64_t sub_100348A84()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 488) * *(v0 + 480);
  if (v2 / (v1 * CGRectGetHeight(*(v0 + 552))) >= 0.5 && (swift_beginAccess(), Strong = swift_unknownObjectWeakLoadStrong(), (*(v0 + 584) = Strong) != 0))
  {
    *(v0 + 592) = OBJC_IVAR____TtC10FitnessApp37AddToYourRingCollectionViewController_impressionsTracker;
    *(v0 + 600) = static MainActor.shared.getter();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100348C7C, v5, v4);
  }

  else
  {
    v6 = *(v0 + 352);
    v7 = *(v0 + 216);
    v8 = *(v0 + 224);
    v9 = *(v0 + 200);
    v10 = *(v0 + 208);
    v12 = *(v0 + 168);
    v11 = *(v0 + 176);
    v13 = *(v0 + 160);

    (*(v12 + 8))(v11, v13);
    (*(v10 + 8))(v7, v9);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_100348C7C()
{
  v1 = v0[74];
  v2 = v0[73];

  v0[76] = *&v2[v1];

  return _swift_task_switch(sub_100348CFC, 0, 0);
}

uint64_t sub_100348CFC()
{
  v1 = v0[44];
  v2 = v0[42];
  v3 = v0[26];
  v13 = v0[25];
  v14 = v0[27];
  v5 = v0[21];
  v4 = v0[22];
  v11 = v0[28];
  v12 = v0[20];
  v6 = v0[14];
  v7 = v0[15];
  v8 = v0[13];
  Date.init()();
  BasicImpressionsTracker.elementDidEnterView(_:on:)();

  (*(v6 + 8))(v7, v8);
  (*(v5 + 8))(v4, v12);
  (*(v3 + 8))(v14, v13);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100348E5C()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  v4 = *(v0 + 160);
  v5 = *(v0 + 168);
  v6 = *(v0 + 152);

  (*(v3 + 8))(v1, v2);
  (*(v5 + 56))(v6, 1, 1, v4);
  sub_10000EA04(*(v0 + 152), &qword_1008E9A30);

  v7 = *(v0 + 8);

  return v7();
}

unint64_t sub_100348F74()
{
  result = qword_1008E7F90;
  if (!qword_1008E7F90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1008E7F90);
  }

  return result;
}

uint64_t sub_100348FC0(uint64_t *a1)
{
  v4 = *(type metadata accessor for ImpressionMetrics() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BACC;

  return sub_100347448(a1, v6, v1 + v5);
}

unint64_t sub_1003490A0()
{
  result = qword_1008E9A28;
  if (!qword_1008E9A28)
  {
    sub_100141EEC(&qword_1008E9A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E9A28);
  }

  return result;
}

uint64_t sub_100349104(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008DE740);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100349174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1003492BC();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1003491D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1003492BC();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10034923C()
{
  sub_1003492BC();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_100349268()
{
  result = qword_1008E9A38;
  if (!qword_1008E9A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E9A38);
  }

  return result;
}

unint64_t sub_1003492BC()
{
  result = qword_1008E9A40;
  if (!qword_1008E9A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E9A40);
  }

  return result;
}

void sub_100349310(unint64_t a1)
{
  if (a1 < 2)
  {
    v4 = [objc_opt_self() energyColors];
    if (!v4)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v5 = v4;
    v6 = [v4 nonGradientTextColor];

    if (v6)
    {
      goto LABEL_14;
    }

    __break(1u);
LABEL_12:
    v7 = [objc_opt_self() briskColors];
    if (!v7)
    {
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v8 = v7;
    v9 = [v7 nonGradientTextColor];

    if (!v9)
    {
LABEL_24:
      __break(1u);
      return;
    }

LABEL_14:

    Color.init(uiColor:)();
    return;
  }

  if (a1 == 2)
  {
    goto LABEL_12;
  }

  if (a1 == 3)
  {
    v1 = [objc_opt_self() sedentaryColors];
    if (v1)
    {
      v2 = v1;
      v3 = [v1 nonGradientTextColor];

      if (v3)
      {

        Color.init(_:)();
        return;
      }

      goto LABEL_23;
    }

    goto LABEL_21;
  }

  static Color.red.getter();
}

void sub_100349480(void *a1, void *a2, void *a3)
{
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC10FitnessApp38MindfulnessSessionDetailViewController_dataSource] = 0;
  *&v3[OBJC_IVAR____TtC10FitnessApp38MindfulnessSessionDetailViewController_sharingImage] = 0;
  v11 = OBJC_IVAR____TtC10FitnessApp38MindfulnessSessionDetailViewController_trainer;
  v12 = type metadata accessor for Trainer();
  (*(*(v12 - 8) + 56))(&v3[v11], 1, 1, v12);
  *&v3[OBJC_IVAR____TtC10FitnessApp38MindfulnessSessionDetailViewController_mindfulnessSessionViewModel] = a1;
  *&v3[OBJC_IVAR____TtC10FitnessApp38MindfulnessSessionDetailViewController_fitnessAppContext] = a2;
  *&v3[OBJC_IVAR____TtC10FitnessApp38MindfulnessSessionDetailViewController_mindfulnessSessionFormattingManager] = a3;
  v13 = type metadata accessor for MindfulnessSessionDetailViewController();
  v45.receiver = v3;
  v45.super_class = v13;
  v14 = a1;
  v43 = a2;
  v15 = a3;
  v16 = objc_msgSendSuper2(&v45, "initWithNibName:bundle:", 0, 0);
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 detailViewDateFormatter];
  MindfulnessSessionViewModel.startDate.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v8 + 8))(v10, v7);
  v21 = [v19 stringFromDate:isa];

  if (!v21)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = String._bridgeToObjectiveC()();
  }

  [v18 setTitle:v21];
  v22 = [v18 navigationItem];
  [v22 setLargeTitleDisplayMode:2];

  v23 = [v18 navigationItem];
  v24 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:9 target:v18 action:"didTapShareButton"];

  [v23 setRightBarButtonItem:v24];
  v25 = v18;
  v26 = [v25 tableView];
  if (!v26)
  {
    __break(1u);
    goto LABEL_9;
  }

  v27 = v26;
  [v26 setSeparatorStyle:0];

  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = [v25 tableView];
  if (!v29)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v30 = v29;
  v31 = objc_allocWithZone(UITableViewDiffableDataSource);
  aBlock[4] = sub_10034B934;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100410D80;
  aBlock[3] = &unk_100853AE8;
  v32 = _Block_copy(aBlock);

  v33 = [v31 initWithTableView:v30 cellProvider:v32];

  _Block_release(v32);

  v34 = *&v25[OBJC_IVAR____TtC10FitnessApp38MindfulnessSessionDetailViewController_dataSource];
  *&v25[OBJC_IVAR____TtC10FitnessApp38MindfulnessSessionDetailViewController_dataSource] = v33;

  v35 = [v25 tableView];
  if (!v35)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v36 = v35;
  type metadata accessor for MindfulnessSessionDetailHeaderCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v38 = String._bridgeToObjectiveC()();
  [v36 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v38];

  v39 = [v25 tableView];
  if (v39)
  {
    type metadata accessor for MindfulnessSessionDetailSideBySideItemsCell();
    v40 = swift_getObjCClassFromMetadata();
    v41 = String._bridgeToObjectiveC()();
    [v39 registerClass:v40 forCellReuseIdentifier:v41];

    sub_100349A74();

    return;
  }

LABEL_11:
  __break(1u);
}

void sub_100349A74()
{
  swift_getObjectType();
  v1 = static os_log_type_t.default.getter();
  v2 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v1))
  {
    v3 = v2;
    v4 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v4 = 136315394;
    v5 = _typeName(_:qualified:)();
    v7 = sub_10000AFDC(v5, v6, &v12);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    *(v4 + 14) = sub_10000AFDC(0xD000000000000012, 0x8000000100749A00, &v12);
    _os_log_impl(&_mh_execute_header, v3, v1, "%s::%s", v4, 0x16u);
    swift_arrayDestroy();
  }

  v8 = sub_100349C18();
  v9 = *(v0 + OBJC_IVAR____TtC10FitnessApp38MindfulnessSessionDetailViewController_dataSource);
  if (v9)
  {
    v11 = v8;
    v10 = v9;
    [v10 applySnapshot:v11 animatingDifferences:1];

    v8 = v11;
  }
}

id sub_100349C18()
{
  swift_getObjectType();
  v0 = [objc_allocWithZone(NSDiffableDataSourceSnapshot) init];
  sub_100140278(&qword_1008E7590);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1006D46C0;
  *(v1 + 56) = &type metadata for String;
  *(v1 + 32) = 0xD000000000000011;
  *(v1 + 40) = 0x8000000100752950;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v0 appendSectionsWithIdentifiers:isa];

  sub_10019F3D0(&off_100841B78);
  swift_arrayDestroy();
  v3 = Array._bridgeToObjectiveC()().super.isa;

  [v0 appendItemsWithIdentifiers:v3];

  v4 = static os_log_type_t.default.getter();
  v5 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v4))
  {
    v6 = v5;
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v7 = 136315650;
    v9 = _typeName(_:qualified:)();
    v11 = sub_10000AFDC(v9, v10, &v14);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_10000AFDC(0x70616E53656B616DLL, 0xEE002928746F6873, &v14);
    *(v7 + 22) = 2112;
    *(v7 + 24) = v0;
    *v8 = v0;
    v12 = v0;
    _os_log_impl(&_mh_execute_header, v6, v4, "%s::%s snapshot %@", v7, 0x20u);
    sub_10000EA04(v8, &unk_1008DB8B0);

    swift_arrayDestroy();
  }

  return v0;
}

id sub_100349EC4(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = Strong;
  if (IndexPath.row.getter())
  {
    v4 = String._bridgeToObjectiveC()();
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v6 = [a1 dequeueReusableCellWithIdentifier:v4 forIndexPath:isa];

    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = a1;
    v8 = a1;
    v9 = v6;
    sub_10034A600(sub_10034B93C, v7);
  }

  else
  {
    v10 = String._bridgeToObjectiveC()();
    v11 = IndexPath._bridgeToObjectiveC()().super.isa;
    v9 = [a1 dequeueReusableCellWithIdentifier:v10 forIndexPath:v11];

    type metadata accessor for MindfulnessSessionDetailHeaderCell();
    if (swift_dynamicCastClass())
    {
      v12 = *&v3[OBJC_IVAR____TtC10FitnessApp38MindfulnessSessionDetailViewController_mindfulnessSessionViewModel];
      v13 = *&v3[OBJC_IVAR____TtC10FitnessApp38MindfulnessSessionDetailViewController_fitnessAppContext];
      v14 = *&v3[OBJC_IVAR____TtC10FitnessApp38MindfulnessSessionDetailViewController_mindfulnessSessionFormattingManager];
      v15 = swift_allocObject();
      *(v15 + 16) = a1;
      v9 = v9;
      v16 = v12;
      v17 = v13;
      v18 = v14;
      v19 = a1;
      sub_100638590(v16, v17, v18, sub_10034B944, v15);

      return v9;
    }
  }

  return v9;
}

uint64_t sub_10034A10C(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000078CC();
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  aBlock[4] = sub_10029FDCC;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_100853B88;
  v12 = _Block_copy(aBlock);
  v13 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000261C4();
  sub_100140278(&unk_1008E7F50);
  sub_10002621C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

id sub_10034A390(char *a1, uint64_t a2, void *a3)
{
  type metadata accessor for MindfulnessSessionDetailSideBySideItemsCell();
  if (swift_dynamicCastClass())
  {
    v6 = a1;

    sub_10034B94C(&v6);
    sub_1003F7190(v6);
  }

  [a3 beginUpdates];

  return [a3 endUpdates];
}

uint64_t sub_10034A600(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v29 = a1;
  v30 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v31 = *(v7 - 8);
  v32 = v7;
  __chkstk_darwin(v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + OBJC_IVAR____TtC10FitnessApp38MindfulnessSessionDetailViewController_mindfulnessSessionFormattingManager);
  v11 = *(v3 + OBJC_IVAR____TtC10FitnessApp38MindfulnessSessionDetailViewController_mindfulnessSessionViewModel);
  v12 = sub_100556CA4();
  v13 = swift_allocObject();
  sub_100140278(&qword_1008DE410);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1006D46C0;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  *(v13 + 16) = v14;
  v28 = v12;
  v15 = dispatch_group_create();
  dispatch_group_enter(v15);
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *(v16 + 24) = v15;
  v17 = swift_allocObject();
  v17[2] = v10;
  v17[3] = sub_10034C5C8;
  v17[4] = v16;

  v18 = v15;
  v19 = v10;

  static MindfulnessSessionDataCalculator.endingHeartRate(for:healthStore:completion:)();

  dispatch_group_enter(v18);
  v20 = swift_allocObject();
  *(v20 + 16) = v13;
  *(v20 + 24) = v18;

  v21 = v18;
  sub_100557060(v11, sub_10034C5F8, v20);

  sub_1000078CC();
  v22 = static OS_dispatch_queue.main.getter();
  v23 = swift_allocObject();
  v24 = v30;
  v23[2] = v29;
  v23[3] = v24;
  v23[4] = v13;
  aBlock[4] = sub_10034C618;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_100853C78;
  v25 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v34 = _swiftEmptyArrayStorage;
  sub_1000261C4();
  sub_100140278(&unk_1008E7F50);
  sub_10002621C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v25);

  (*(v33 + 8))(v6, v4);
  (*(v31 + 8))(v9, v32);
}

void sub_10034AA40(void *a1, uint64_t a2, dispatch_group_t group, char a4)
{
  if (a1)
  {
    swift_beginAccess();
    v8 = *(a2 + 16);
    v9 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1001A2EFC(0, *(v8 + 2) + 1, 1, v8);
      *(a2 + 16) = v8;
    }

    v12 = *(v8 + 2);
    v11 = *(v8 + 3);
    if (v12 >= v11 >> 1)
    {
      v8 = sub_1001A2EFC((v11 > 1), v12 + 1, 1, v8);
    }

    *(v8 + 2) = v12 + 1;
    v13 = &v8[16 * v12];
    *(v13 + 4) = a1;
    v13[40] = a4;
    *(a2 + 16) = v8;
    swift_endAccess();
  }

  dispatch_group_leave(group);
}

uint64_t sub_10034AB34(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a3 + 16);
  swift_bridgeObjectRetain_n();
  sub_10034B94C(&v6);

  a1(v6);
}

void sub_10034ABD8()
{
  v1 = v0;
  v2 = sub_100140278(&unk_1008E9B20);
  __chkstk_darwin(v2 - 8);
  v4 = v34 - v3;
  v5 = *(v0 + OBJC_IVAR____TtC10FitnessApp38MindfulnessSessionDetailViewController_mindfulnessSessionViewModel);
  v6 = dispatch thunk of MindfulnessSessionViewModel.sessionType.getter();
  if ((v7 & 1) != 0 || v6 != 3)
  {
    goto LABEL_17;
  }

  v8 = MindfulnessSessionViewModel.mindfulnessSessions.getter();
  if (v8 >> 62)
  {
    v23 = v8;
    v24 = _CocoaArrayWrapper.endIndex.getter();
    v8 = v23;
    if (v24)
    {
      goto LABEL_5;
    }

LABEL_16:

    goto LABEL_17;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

LABEL_5:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v9 = *(v8 + 32);
  }

  v10 = v9;

  v11 = [v10 metadata];
  if (v11)
  {
    v12 = v11;
    v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v13 + 16))
    {
      v16 = sub_100066F20(v14, v15);
      v18 = v17;

      if (v18)
      {
        sub_10000B1B4(*(v13 + 56) + 32 * v16, v34);

        sub_1001AA76C(v34, v35);
        *&v34[0] = 0;
        *(&v34[0] + 1) = 0xE000000000000000;
        _print_unlocked<A, B>(_:_:)();
        v19 = v34[0];
        v20 = *(*(v1 + OBJC_IVAR____TtC10FitnessApp38MindfulnessSessionDetailViewController_fitnessAppContext) + OBJC_IVAR___CHFitnessAppContext_seymourCatalogItemDataProvider);
        v21 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v22 = v20;
        sub_100428310(v19, *(&v19 + 1), v22, v21);

        sub_100005A40(v35);

        return;
      }
    }

    else
    {
    }
  }

LABEL_17:
  v25 = *(v1 + OBJC_IVAR____TtC10FitnessApp38MindfulnessSessionDetailViewController_mindfulnessSessionFormattingManager);
  v26 = type metadata accessor for Trainer();
  (*(*(v26 - 8) + 56))(v4, 1, 1, v26);
  v27 = MindfulnessSessionViewModel.sourceRevision.getter();
  v28 = [v27 source];

  v29 = [v28 _hasFirstPartyBundleID];
  if (v29)
  {
    v30 = sub_10034C554;
  }

  else
  {
    v30 = sub_10034C550;
  }

  if (v29)
  {
    v31 = 200.0;
  }

  else
  {
    v31 = 68.0;
  }

  v36.width = 270.0;
  v36.height = v31;
  UIGraphicsBeginImageContextWithOptions(v36, 0, 0.0);
  (v30)(v5, v4, v25, 0.0, 0.0, 270.0, v31);
  v32 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  sub_10000EA04(v4, &unk_1008E9B20);
  v33 = *(v1 + OBJC_IVAR____TtC10FitnessApp38MindfulnessSessionDetailViewController_sharingImage);
  *(v1 + OBJC_IVAR____TtC10FitnessApp38MindfulnessSessionDetailViewController_sharingImage) = v32;

  sub_10034B418();
}

uint64_t sub_10034AFE8(uint64_t a1)
{
  v2 = sub_100140278(&unk_1008E9B20);
  __chkstk_darwin(v2 - 8);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v30 - v6;
  __chkstk_darwin(v8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for Trainer();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    sub_10034C4E0(a1, v10);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {

      return sub_10000EA04(v10, &unk_1008E9B20);
    }

    else
    {
      (*(v12 + 32))(v14, v10, v11);
      v17 = *(v12 + 16);
      v17(v7, v14, v11);
      v18 = *(v12 + 56);
      v18(v7, 0, 1, v11);
      v31 = v4;
      v19 = OBJC_IVAR____TtC10FitnessApp38MindfulnessSessionDetailViewController_trainer;
      swift_beginAccess();
      sub_10034C558(v7, &v16[v19]);
      swift_endAccess();
      v30 = *&v16[OBJC_IVAR____TtC10FitnessApp38MindfulnessSessionDetailViewController_mindfulnessSessionFormattingManager];
      v20 = *&v16[OBJC_IVAR____TtC10FitnessApp38MindfulnessSessionDetailViewController_mindfulnessSessionViewModel];
      v21 = v31;
      v17(v31, v14, v11);
      v18(v21, 0, 1, v11);
      v22 = MindfulnessSessionViewModel.sourceRevision.getter();
      v23 = [v22 source];

      v24 = [v23 _hasFirstPartyBundleID];
      if (v24)
      {
        v25 = sub_10034C62C;
      }

      else
      {
        v25 = sub_10034C628;
      }

      if (v24)
      {
        v26 = 200.0;
      }

      else
      {
        v26 = 68.0;
      }

      v32.width = 270.0;
      v32.height = v26;
      UIGraphicsBeginImageContextWithOptions(v32, 0, 0.0);
      v27 = v31;
      (v25)(v20, v31, v30, 0.0, 0.0, 270.0, v26);
      v28 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
      sub_10000EA04(v27, &unk_1008E9B20);
      v29 = *&v16[OBJC_IVAR____TtC10FitnessApp38MindfulnessSessionDetailViewController_sharingImage];
      *&v16[OBJC_IVAR____TtC10FitnessApp38MindfulnessSessionDetailViewController_sharingImage] = v28;

      sub_10034B418();
      return (*(v12 + 8))(v14, v11);
    }
  }

  return result;
}

void sub_10034B418()
{
  sub_100140278(&qword_1008E7590);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1006D1F70;
  v2 = *&v0[OBJC_IVAR____TtC10FitnessApp38MindfulnessSessionDetailViewController_sharingImage];
  *(v1 + 56) = sub_100140278(&qword_1008E9B30);
  *(v1 + 32) = v2;
  *(v1 + 88) = type metadata accessor for MindfulnessSessionDetailViewController();
  *(v1 + 64) = v0;
  v3 = objc_allocWithZone(UIActivityViewController);
  v4 = v2;
  v5 = v0;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = [v3 initWithActivityItems:isa applicationActivities:0];

  v7 = sub_1000B882C();
  if (!v7)
  {
    type metadata accessor for ActivityType(0);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = Array._bridgeToObjectiveC()().super.isa;
  }

  [v8 setExcludedActivityTypes:v7];

  [v5 presentViewController:v8 animated:1 completion:0];
}

id sub_10034B6B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MindfulnessSessionDetailViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MindfulnessSessionDetailViewController()
{
  result = qword_1008E9AA8;
  if (!qword_1008E9AA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10034B7D0()
{
  sub_10034B880();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10034B880()
{
  if (!qword_1008E9AB8)
  {
    type metadata accessor for Trainer();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1008E9AB8);
    }
  }
}

Swift::Int sub_10034B94C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1001AA514(v2);
  }

  v3 = *(v2 + 2);
  v4 = v2 + 32;
  v19[0] = (v2 + 32);
  v19[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v4;
        do
        {
          v15 = v12[24];
          if (v12[24])
          {
            if (v15 != 1 || v12[8] == 0)
            {
              break;
            }
          }

          v13 = *(v12 + 2);
          *(v12 + 1) = *v12;
          *v12 = v13;
          v12[8] = v15;
          v12 -= 16;
        }

        while (!__CFADD__(v11++, 1));
        v4 += 16;
        --v9;
      }
    }
  }

  else
  {
    v6 = result;
    v7 = v3 >> 1;
    if (v3 >= 2)
    {
      v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v8[2] = v7;
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
    }

    v17[0] = v8 + 4;
    v17[1] = v7;
    sub_10034BA9C(v17, v18, v19, v6);
    v8[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_10034BA9C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v90 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_108:
    v5 = *v90;
    if (!*v90)
    {
      goto LABEL_148;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_142;
    }

    goto LABEL_110;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v89 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *a3 + 16 * v9;
      if (*(*a3 + 16 * v7 + 8))
      {
        v12 = *(*a3 + 16 * v7 + 8) == 1 && *(v10 + 8) != 0;
      }

      else
      {
        v12 = 1;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v13 = (v10 + 40);
        v14 = (v10 + 40);
        do
        {
          v16 = *v14;
          v14 += 16;
          v15 = v16;
          if (!v16 || *(v13 - 16) && v15 == 1)
          {
            if (!v12)
            {
              goto LABEL_36;
            }
          }

          else if (v12)
          {
            goto LABEL_24;
          }

          ++v7;
          v13 = v14;
        }

        while (v6 != v7);
        v7 = v6;
      }

      if (v12)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_141;
        }

        if (v9 < v7)
        {
          v17 = 16 * v7 - 16;
          v18 = 16 * v9;
          v19 = v7;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v22 = *a3;
              if (!*a3)
              {
                goto LABEL_145;
              }

              v23 = (v22 + v18);
              v24 = (v22 + v17);
              v25 = *(v22 + v18);
              v26 = *(v22 + v18 + 8);
              if (v18 != v17 || v23 >= v24 + 1)
              {
                *v23 = *v24;
              }

              v21 = v22 + v17;
              *v21 = v25;
              *(v21 + 8) = v26;
            }

            ++v20;
            v17 -= 16;
            v18 += 16;
          }

          while (v20 < v19);
          v6 = a3[1];
        }
      }
    }

LABEL_36:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_138;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_139;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          result = sub_1001A99A4(v8);
          v8 = result;
LABEL_110:
          v82 = v8 + 2;
          v83 = v8[2];
          if (v83 >= 2)
          {
            while (*a3)
            {
              v84 = &v8[2 * v83];
              v85 = *v84;
              v86 = &v82[2 * v83];
              v87 = v86[1];
              sub_10034C060((*a3 + 16 * *v84), (*a3 + 16 * *v86), (*a3 + 16 * v87), v5);
              if (v4)
              {
              }

              if (v87 < v85)
              {
                goto LABEL_134;
              }

              if (v83 - 2 >= *v82)
              {
                goto LABEL_135;
              }

              *v84 = v85;
              v84[1] = v87;
              v88 = *v82 - v83;
              if (*v82 < v83)
              {
                goto LABEL_136;
              }

              v83 = *v82 - 1;
              result = memmove(v86, v86 + 2, 16 * v88);
              *v82 = v83;
              if (v83 <= 1)
              {
              }
            }

            goto LABEL_146;
          }
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_57:
    if (v7 < v9)
    {
      goto LABEL_137;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1001A1D54(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v36 = v8[3];
    v37 = v5 + 1;
    if (v5 >= v36 >> 1)
    {
      result = sub_1001A1D54((v36 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v37;
    v38 = v8 + 4;
    v39 = &v8[2 * v5 + 4];
    *v39 = v9;
    v39[1] = v7;
    v91 = *v90;
    if (!*v90)
    {
      goto LABEL_147;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v40 = v8[4];
          v41 = v8[5];
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_77:
          if (v43)
          {
            goto LABEL_124;
          }

          v56 = &v8[2 * v37];
          v58 = *v56;
          v57 = v56[1];
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_126;
          }

          v62 = &v38[2 * v5];
          v64 = *v62;
          v63 = v62[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_129;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_131;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v5 = v37 - 2;
            }

            goto LABEL_99;
          }

          goto LABEL_92;
        }

        if (v37 < 2)
        {
          goto LABEL_132;
        }

        v66 = &v8[2 * v37];
        v68 = *v66;
        v67 = v66[1];
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_92:
        if (v61)
        {
          goto LABEL_128;
        }

        v69 = &v38[2 * v5];
        v71 = *v69;
        v70 = v69[1];
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_130;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_99:
        if (v5 - 1 >= v37)
        {
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        if (!*a3)
        {
          goto LABEL_144;
        }

        v77 = &v38[2 * v5 - 2];
        v78 = *v77;
        v79 = &v38[2 * v5];
        v80 = v79[1];
        sub_10034C060((*a3 + 16 * *v77), (*a3 + 16 * *v79), (*a3 + 16 * v80), v91);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_119;
        }

        if (v5 > v8[2])
        {
          goto LABEL_120;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = v8[2];
        if (v5 >= v81)
        {
          goto LABEL_121;
        }

        v37 = v81 - 1;
        result = memmove(&v38[2 * v5], v79 + 2, 16 * (v81 - 1 - v5));
        v8[2] = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_3;
        }
      }

      v44 = &v38[2 * v37];
      v45 = *(v44 - 8);
      v46 = *(v44 - 7);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_122;
      }

      v49 = *(v44 - 6);
      v48 = *(v44 - 5);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_123;
      }

      v51 = &v8[2 * v37];
      v53 = *v51;
      v52 = v51[1];
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_125;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_127;
      }

      if (v55 >= v47)
      {
        v73 = &v38[2 * v5];
        v75 = *v73;
        v74 = v73[1];
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_133;
        }

        if (v42 < v76)
        {
          v5 = v37 - 2;
        }

        goto LABEL_99;
      }

      goto LABEL_77;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v89;
    if (v7 >= v6)
    {
      goto LABEL_108;
    }
  }

  v27 = *a3;
  v28 = *a3 + 16 * v7;
  v29 = v9 - v7;
LABEL_46:
  v30 = v29;
  v31 = v28;
  while (1)
  {
    v32 = *(v31 + 8);
    if (*(v31 + 8))
    {
      if (v32 != 1 || *(v31 - 8) == 0)
      {
LABEL_45:
        ++v7;
        v28 += 16;
        --v29;
        if (v7 != v6)
        {
          goto LABEL_46;
        }

        v7 = v6;
        goto LABEL_57;
      }
    }

    if (!v27)
    {
      break;
    }

    v34 = *v31;
    *v31 = *(v31 - 16);
    *(v31 - 16) = v34;
    *(v31 - 8) = v32;
    v31 -= 16;
    if (__CFADD__(v30++, 1))
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
  return result;
}

uint64_t sub_10034C060(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v13)
  {
    v14 = 16 * v10;
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, v14);
    }

    v15 = &v4[v14];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_45;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v6[8])
      {
        v17 = v6[8] != 1 || v4[8] == 0;
        if (v17)
        {
          break;
        }
      }

      v16 = v6;
      v17 = v7 == v6;
      v6 += 16;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v4;
    v17 = v7 == v4;
    v4 += 16;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v16;
    goto LABEL_13;
  }

  v18 = 16 * v13;
  if (a4 != __src || &__src[v18] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v15 = &v4[v18];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_29:
    v5 -= 16;
    do
    {
      v19 = v5 + 16;
      if (!*(v15 - 8) || (*(v15 - 8) == 1 ? (v20 = *(v6 - 8) == 0) : (v20 = 1), !v20))
      {
        v22 = v6 - 16;
        if (v19 != v6)
        {
          *v5 = *v22;
        }

        if (v15 <= v4 || (v6 -= 16, v22 <= v7))
        {
          v6 = v22;
          goto LABEL_45;
        }

        goto LABEL_29;
      }

      v21 = v15 - 16;
      if (v19 != v15)
      {
        *v5 = *v21;
      }

      v5 -= 16;
      v15 -= 16;
    }

    while (v21 > v4);
    v15 = v21;
  }

LABEL_45:
  v23 = (v15 - v4 + (v15 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0;
  if (v6 != v4 || v6 >= &v4[v23])
  {
    memmove(v6, v4, v23);
  }

  return 1;
}

id sub_10034C26C()
{
  v1 = sub_100140278(&unk_1008E9B20);
  __chkstk_darwin(v1 - 8);
  v3 = &v23 - v2;
  v4 = [objc_allocWithZone(LPLinkMetadata) init];
  v5 = OBJC_IVAR____TtC10FitnessApp38MindfulnessSessionDetailViewController_sharingImage;
  v6 = *(v0 + OBJC_IVAR____TtC10FitnessApp38MindfulnessSessionDetailViewController_sharingImage);
  if (v6)
  {
    v7 = UIImagePNGRepresentation(v6);
    if (v7)
    {
      v8 = v7;
      v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12 = [objc_allocWithZone(LPFileMetadata) init];
      v13 = *(v0 + OBJC_IVAR____TtC10FitnessApp38MindfulnessSessionDetailViewController_mindfulnessSessionViewModel);
      v14 = OBJC_IVAR____TtC10FitnessApp38MindfulnessSessionDetailViewController_trainer;
      swift_beginAccess();
      sub_10034C4E0(v0 + v14, v3);
      v15 = sub_1005577DC(v13, v3);
      sub_10000EA04(v3, &unk_1008E9B20);
      v16 = [v15 string];

      if (!v16)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = String._bridgeToObjectiveC()();
      }

      [v12 setName:v16];

      v17 = objc_allocWithZone(LPImage);
      sub_100215414(v9, v11);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v19 = String._bridgeToObjectiveC()();
      v20 = [v17 initWithData:isa MIMEType:v19];

      sub_10000AF88(v9, v11);
      [v12 setThumbnail:v20];

      [v4 setSpecialization:v12];
      sub_10000AF88(v9, v11);
    }
  }

  v21 = *(v0 + v5);
  *(v0 + v5) = 0;

  return v4;
}

uint64_t sub_10034C4E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&unk_1008E9B20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10034C558(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&unk_1008E9B20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10034C648()
{
  result = qword_1008E9B38;
  if (!qword_1008E9B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E9B38);
  }

  return result;
}

uint64_t sub_10034C69C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v69 = sub_100140278(&qword_1008E04C8);
  __chkstk_darwin(v69);
  v68 = v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v66 = v61 - v5;
  v67 = sub_100140278(&qword_1008E04A8);
  __chkstk_darwin(v67);
  v65 = v61 - v6;
  v70 = type metadata accessor for DayIndex();
  v64 = *(v70 - 8);
  __chkstk_darwin(v70);
  v75 = v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v74 = v61 - v9;
  v10 = type metadata accessor for Calendar.Component();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for Calendar.Identifier();
  v14 = *(v72 - 8);
  __chkstk_darwin(v72);
  v16 = v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for Calendar();
  v79 = *(v76 - 8);
  __chkstk_darwin(v76);
  v73 = v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v61 - v19;
  v21 = type metadata accessor for Date();
  v77 = *(v21 - 8);
  v78 = v21;
  __chkstk_darwin(v21);
  v23 = (v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v26 = (v61 - v25);
  __chkstk_darwin(v27);
  v80 = (v61 - v28);
  Date.init()();
  if (!a1)
  {
    type metadata accessor for TrainingLoadViewModelProvider();
    static Date.now.getter();
    v58 = v72;
    (*(v14 + 13))(v16, enum case for Calendar.Identifier.gregorian(_:), v72);
    Calendar.init(identifier:)();
    (*(v14 + 1))(v16, v58);
    static TrainingLoadViewModelProvider.createDayRange(now:days:gregorianCalendar:)();
    v57 = v20;
    v55 = *(v79 + 8);
    v56 = v76;
    goto LABEL_5;
  }

  v63 = v14;
  (*(v11 + 104))(v13, enum case for Calendar.Component.month(_:), v10);
  static Calendar.current.getter();
  v29 = v26;
  Date.bySubtracting(component:value:calendar:)();
  v30 = v79;
  v31 = *(v79 + 8);
  v32 = v76;
  v61[1] = v79 + 8;
  v62 = v31;
  v31(v20, v76);
  (*(v11 + 8))(v13, v10);
  v33 = v63;
  v34 = v72;
  (v63[13])(v16, enum case for Calendar.Identifier.gregorian(_:), v72);
  Calendar.init(identifier:)();
  v33[1](v16, v34);
  v35 = v78;
  v36 = *(v77 + 16);
  v63 = v29;
  v36(v23, v29, v78);
  v37 = *(v30 + 16);
  v38 = v73;
  v37(v73, v20, v32);
  v39 = v74;
  DayIndex.init(date:calendar:)();
  v36(v23, v80, v35);
  v72 = v20;
  v79 = v30 + 16;
  v37(v38, v20, v32);
  v40 = v75;
  DayIndex.init(date:calendar:)();
  sub_10034D310();
  v41 = v70;
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v43 = v64;
    v44 = *(v64 + 16);
    v45 = v66;
    v44(v66, v39, v41);
    v46 = v69;
    v44((v45 + *(v69 + 48)), v40, v41);
    v61[0] = v37;
    v47 = v41;
    v48 = v68;
    sub_10034D368(v45, v68);
    v49 = *(v46 + 48);
    v50 = *(v43 + 32);
    v51 = v65;
    v50(v65, v48, v47);
    v52 = *(v43 + 8);
    v52(v48 + v49, v47);
    sub_10034D3D8(v45, v48);
    v50(&v51[*(v67 + 36)], v48 + *(v46 + 48), v47);
    v52(v48, v47);
    v53 = v72;
    v54 = v76;
    (v61[0])(v73, v72, v76);
    GregorianDayRange.init(dayIndexRange:gregorianCalendar:)();
    v52(v75, v47);
    v55 = v62;
    v52(v74, v47);
    v23 = v63;
    v56 = v54;
    v57 = v53;
LABEL_5:
    v55(v57, v56);
    v59 = v78;
    v60 = *(v77 + 8);
    v60(v23, v78);
    return (v60)(v80, v59);
  }

  __break(1u);
  return result;
}

uint64_t sub_10034CE98(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E6F4D6565726874;
  v4 = 0xEB00000000736874;
  if (v2 != 1)
  {
    v3 = 0x68746E6F4D786973;
    v4 = 0xE900000000000073;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x68746E6F6DLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0x6E6F4D6565726874;
  v8 = 0xEB00000000736874;
  if (*a2 != 1)
  {
    v7 = 0x68746E6F4D786973;
    v8 = 0xE900000000000073;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x68746E6F6DLL;
  }

  if (*a2)
  {
    v10 = v8;
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

Swift::Int sub_10034CFB0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10034D05C()
{
  String.hash(into:)();
}

Swift::Int sub_10034D0F4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10034D19C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10034D448(*a1);
  *a2 = result;
  return result;
}

void sub_10034D1CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xEB00000000736874;
  v5 = 0x6E6F4D6565726874;
  if (v2 != 1)
  {
    v5 = 0x68746E6F4D786973;
    v4 = 0xE900000000000073;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x68746E6F6DLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_10034D254()
{
  result = qword_1008E9B40;
  if (!qword_1008E9B40)
  {
    sub_100141EEC(&qword_1008E9B48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E9B40);
  }

  return result;
}

unint64_t sub_10034D2BC()
{
  result = qword_1008E9B50;
  if (!qword_1008E9B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E9B50);
  }

  return result;
}

unint64_t sub_10034D310()
{
  result = qword_1008E04C0;
  if (!qword_1008E04C0)
  {
    type metadata accessor for DayIndex();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E04C0);
  }

  return result;
}

uint64_t sub_10034D368(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E04C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10034D3D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E04C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10034D448(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100845358, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t type metadata accessor for ActivitySharingFriendListItemView()
{
  result = qword_1008E9BB0;
  if (!qword_1008E9BB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10034D508()
{
  type metadata accessor for ActivitySharingFriendListItem();
  if (v0 <= 0x3F)
  {
    sub_1002FC5C0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10034D5A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v67 = a1;
  v3 = type metadata accessor for AccessibilityActionKind();
  v65 = *(v3 - 8);
  v66 = v3;
  __chkstk_darwin(v3);
  v64 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ActivitySharingFriendListItemView();
  v63 = *(v5 - 8);
  v62 = *(v63 + 64);
  __chkstk_darwin(v5 - 8);
  v61 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AccessibilityTraits();
  v59 = *(v7 - 8);
  v60 = v7;
  __chkstk_darwin(v7);
  v58 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for AccessibilityChildBehavior();
  v53 = *(v57 - 8);
  __chkstk_darwin(v57);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100140278(&qword_1008E9BE8);
  __chkstk_darwin(v11);
  v13 = &v50 - v12;
  v51 = sub_100140278(&qword_1008E9BF0);
  __chkstk_darwin(v51);
  v15 = &v50 - v14;
  v52 = sub_100140278(&qword_1008E9BF8);
  v55 = *(v52 - 8);
  __chkstk_darwin(v52);
  v17 = &v50 - v16;
  v56 = sub_100140278(&qword_1008E9C00);
  __chkstk_darwin(v56);
  v68 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v54 = &v50 - v20;
  *v13 = static VerticalAlignment.center.getter();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v21 = sub_100140278(&qword_1008E9C08);
  sub_10034DD7C(v2, &v13[*(v21 + 44)]);
  LOBYTE(v2) = static Edge.Set.all.getter();
  v22 = &v13[*(sub_100140278(&qword_1008E9C10) + 36)];
  *v22 = v2;
  *(v22 + 8) = xmmword_1006E8240;
  *(v22 + 24) = xmmword_1006EA870;
  v22[40] = 0;
  v23 = sub_100046170();
  v24 = Color.init(uiColor:)();
  v25 = sub_10013A904();
  v26 = &v13[*(sub_100140278(&qword_1008E9C18) + 36)];
  v27 = (v26 + *(sub_100140278(&qword_1008E7B48) + 36));
  v28 = *(type metadata accessor for RoundedRectangle() + 20);
  v29 = enum case for RoundedCornerStyle.continuous(_:);
  v30 = type metadata accessor for RoundedCornerStyle();
  (*(*(v30 - 8) + 104))(v27 + v28, v29, v30);
  *v27 = v25;
  v27[1] = v25;
  *(v27 + *(sub_100140278(&qword_1008DE1E0) + 36)) = 256;
  *v26 = v24;
  v31 = static Alignment.center.getter();
  v33 = v32;
  v34 = (v26 + *(sub_100140278(&qword_1008E7B50) + 36));
  *v34 = v31;
  v34[1] = v33;
  v35 = static Edge.Set.all.getter();
  v36 = &v13[*(v11 + 36)];
  *v36 = v35;
  *(v36 + 1) = 0;
  *(v36 + 2) = 0;
  *(v36 + 24) = xmmword_1006D4690;
  v36[40] = 0;
  type metadata accessor for ActivitySharingFriendListItem();
  v37 = v50;
  sub_10034EC04();
  View.accessibilityIdentifier(_:)();
  sub_10000EA04(v13, &qword_1008E9BE8);
  static AccessibilityChildBehavior.combine.getter();
  v38 = sub_10034EE00();
  v39 = v51;
  View.accessibilityElement(children:)();
  (*(v53 + 8))(v10, v57);
  sub_10000EA04(v15, &qword_1008E9BF0);
  v40 = v58;
  static AccessibilityTraits.isButton.getter();
  v69 = v39;
  v70 = v38;
  swift_getOpaqueTypeConformance2();
  v41 = v52;
  View.accessibilityAddTraits(_:)();
  (*(v59 + 8))(v40, v60);
  (*(v55 + 8))(v17, v41);
  v42 = v61;
  sub_10034EF04(v37, v61);
  v43 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v44 = swift_allocObject();
  sub_10034EF68(v42, v44 + v43);
  v45 = v64;
  static AccessibilityActionKind.default.getter();
  v46 = v54;
  v47 = v68;
  ModifiedContent<>.accessibilityAction(_:_:)();

  (*(v65 + 8))(v45, v66);
  sub_1000910E0(v47);
  sub_10034EF04(v37, v42);
  v48 = swift_allocObject();
  sub_10034EF68(v42, v48 + v43);
  sub_10034F024();
  View.onTapGesture(count:perform:)();

  return sub_1000910E0(v46);
}

uint64_t sub_10034DD7C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100140278(&qword_1008E9C58);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v25 - v8;
  *v9 = static HorizontalAlignment.leading.getter();
  *(v9 + 1) = 0xC014000000000000;
  v9[16] = 0;
  v10 = sub_100140278(&qword_1008E9C60);
  sub_10034E088(a1, &v9[*(v10 + 44)]);
  v11 = type metadata accessor for ActivitySharingFriendListItem();
  v12 = *(a1 + *(v11 + 36));
  v13 = *(a1 + *(v11 + 40));
  v14 = *a1;
  v15 = v12;
  v16 = [v14 currentCacheIndex];
  LOBYTE(v14) = [v14 estimatedIsStandaloneForSnapshotIndex:v16];

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_10001B104(v9, v6, &qword_1008E9C58);
  sub_10001B104(v6, a2, &qword_1008E9C58);
  v17 = sub_100140278(&qword_1008E9C68);
  v18 = a2 + *(v17 + 48);
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = (a2 + *(v17 + 64));
  *&v29[0] = v12;
  BYTE8(v29[0]) = v13;
  *(v29 + 12) = 0x41000000428A0000;
  DWORD1(v29[1]) = 0x40000000;
  BYTE8(v29[1]) = v14;
  *(&v29[1] + 9) = 0;
  v30 = 0uLL;
  v31 = v26;
  v32 = v27;
  v33 = v28;
  v20 = v29[1];
  *v19 = v29[0];
  v19[1] = v20;
  v21 = v30;
  v22 = v31;
  v23 = v33;
  v19[4] = v32;
  v19[5] = v23;
  v19[2] = v21;
  v19[3] = v22;
  sub_10001B104(v29, &v34, &qword_1008E9C70);
  sub_10000EA04(v9, &qword_1008E9C58);
  v34 = v12;
  v35 = v13;
  v36 = 0x41000000428A0000;
  v37 = 0x40000000;
  v38 = v14;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = v26;
  v43 = v27;
  v44 = v28;
  sub_10000EA04(&v34, &qword_1008E9C70);
  return sub_10000EA04(v6, &qword_1008E9C58);
}

uint64_t sub_10034E088@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = sub_100140278(&unk_1008EE8E0);
  __chkstk_darwin(v3 - 8);
  v61 = &v60 - v4;
  v5 = type metadata accessor for AttributedString();
  v62 = *(v5 - 8);
  __chkstk_darwin(v5);
  v66 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v60 - v8;
  v10 = sub_100140278(&qword_1008E9C78);
  __chkstk_darwin(v10 - 8);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v60 - v14;
  v16 = sub_100140278(&qword_1008E9C80);
  __chkstk_darwin(v16 - 8);
  v69 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v60 - v19;
  *v20 = static VerticalAlignment.center.getter();
  *(v20 + 1) = 0x4024000000000000;
  v20[16] = 0;
  v21 = &v20[*(sub_100140278(&qword_1008E9C88) + 44)];
  type metadata accessor for ActivitySharingAvatarProvider();
  sub_100549740(*a1, 32.0);
  v22 = Image.init(uiImage:)();
  *v15 = static VerticalAlignment.center.getter();
  *(v15 + 8) = 0x4010000000000000;
  *(v15 + 16) = 0;
  v23 = sub_100140278(&qword_1008E9C90);
  sub_10034E804(a1, v15 + *(v23 + 44));
  sub_10001B104(v15, v12, &qword_1008E9C78);
  *v21 = v22;
  v24 = v21 + *(sub_100140278(&qword_1008E9C98) + 48);
  v25 = v61;
  sub_10001B104(v12, v24, &qword_1008E9C78);

  sub_10000EA04(v15, &qword_1008E9C78);
  v26 = v12;
  v27 = v62;
  sub_10000EA04(v26, &qword_1008E9C78);

  v28 = type metadata accessor for ActivitySharingFriendListItem();
  (*(v27 + 16))(v9, a1 + *(v28 + 28), v5);
  v65 = Text.init(_:)();
  v64 = v29;
  LOBYTE(v15) = v30;
  v32 = v31;
  v63 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v68 = v15 & 1;
  LOBYTE(v74[0]) = v15 & 1;
  LOBYTE(v70) = 0;
  sub_10001B104(a1 + *(v28 + 32), v25, &unk_1008EE8E0);
  v41 = *(v27 + 48);
  if (v41(v25, 1, v5) == 1)
  {
    AttributedString.init(stringLiteral:)();
    if (v41(v25, 1, v5) != 1)
    {
      sub_10000EA04(v25, &unk_1008EE8E0);
    }
  }

  else
  {
    (*(v27 + 32))(v66, v25, v5);
  }

  v42 = Text.init(_:)();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = v69;
  sub_10001B104(v20, v69, &qword_1008E9C80);
  v50 = v67;
  sub_10001B104(v49, v67, &qword_1008E9C80);
  v51 = sub_100140278(&qword_1008E9CA0);
  v52 = (v50 + *(v51 + 48));
  v53 = v65;
  *&v70 = v65;
  v66 = v20;
  v54 = v64;
  *(&v70 + 1) = v64;
  LOBYTE(v71) = v68;
  *(&v71 + 1) = v86[0];
  DWORD1(v71) = *(v86 + 3);
  *(&v71 + 1) = v32;
  LOBYTE(v49) = v63;
  LOBYTE(v72) = v63;
  *(&v72 + 1) = *v85;
  DWORD1(v72) = *&v85[3];
  *(&v72 + 1) = v34;
  *v73 = v36;
  *&v73[8] = v38;
  *&v73[16] = v40;
  v73[24] = 0;
  v55 = v70;
  v56 = v71;
  *(v52 + 57) = *&v73[9];
  v57 = *v73;
  v52[2] = v72;
  v52[3] = v57;
  *v52 = v55;
  v52[1] = v56;
  v58 = v50 + *(v51 + 64);
  *v58 = v42;
  *(v58 + 8) = v44;
  v46 &= 1u;
  *(v58 + 16) = v46;
  *(v58 + 24) = v48;
  sub_10001B104(&v70, v74, &qword_1008DC4C0);
  sub_10006965C(v42, v44, v46);

  sub_10000EA04(v66, &qword_1008E9C80);
  sub_10004642C(v42, v44, v46);

  v74[0] = v53;
  v74[1] = v54;
  v75 = v68;
  *v76 = v86[0];
  *&v76[3] = *(v86 + 3);
  v77 = v32;
  v78 = v49;
  *v79 = *v85;
  *&v79[3] = *&v85[3];
  v80 = v34;
  v81 = v36;
  v82 = v38;
  v83 = v40;
  v84 = 0;
  sub_10000EA04(v74, &qword_1008DC4C0);
  return sub_10000EA04(v69, &qword_1008E9C80);
}

uint64_t sub_10034E744(void **a1)
{
  if (*(a1 + *(type metadata accessor for ActivitySharingFriendListItemView() + 20)))
  {
    v2 = *a1;

    sub_100315688(v2, 1);
  }

  else
  {
    type metadata accessor for ActivitySharingNavigationCoordinator();
    sub_10034EEBC(&qword_1008DC018, type metadata accessor for ActivitySharingNavigationCoordinator);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10034E804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributedString();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100140278(&qword_1008E9CA8);
  v48 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = (&v43 - v9);
  v11 = sub_100140278(&qword_1008E9CB0);
  __chkstk_darwin(v11 - 8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v43 - v15;
  v17 = *(a1 + 8);
  if (v17)
  {
    v47 = a1;

    v45 = Image.init(systemName:)();
    v18 = *(sub_100140278(&qword_1008E9840) + 36);
    v46 = a2;
    v19 = (v10 + v18);
    v20 = sub_100140278(&qword_1008E97F8);
    v44 = v8;
    v21 = v13;
    v22 = v7;
    v23 = v5;
    v24 = v4;
    v25 = *(v20 + 28);
    v26 = enum case for Image.Scale.small(_:);
    v27 = type metadata accessor for Image.Scale();
    v28 = v19 + v25;
    v4 = v24;
    v5 = v23;
    v7 = v22;
    v13 = v21;
    v29 = v26;
    a1 = v47;
    (*(*(v27 - 8) + 104))(v28, v29, v27);
    *v19 = swift_getKeyPath();
    a2 = v46;
    *v10 = v45;
    KeyPath = swift_getKeyPath();
    v31 = v44;
    v32 = (v10 + *(v44 + 36));
    *v32 = KeyPath;
    v32[1] = v17;
    sub_10034F11C(v10, v16);
    (*(v48 + 56))(v16, 0, 1, v31);
  }

  else
  {
    (*(v48 + 56))(&v43 - v15, 1, 1, v8);
  }

  v33 = type metadata accessor for ActivitySharingFriendListItem();
  (*(v5 + 16))(v7, a1 + *(v33 + 24), v4);
  v34 = Text.init(_:)();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_10001B104(v16, v13, &qword_1008E9CB0);
  sub_10001B104(v13, a2, &qword_1008E9CB0);
  v41 = a2 + *(sub_100140278(&qword_1008E9CB8) + 48);
  *v41 = v34;
  *(v41 + 8) = v36;
  v38 &= 1u;
  *(v41 + 16) = v38;
  *(v41 + 24) = v40;
  sub_10006965C(v34, v36, v38);

  sub_10000EA04(v16, &qword_1008E9CB0);
  sub_10004642C(v34, v36, v38);

  return sub_10000EA04(v13, &qword_1008E9CB0);
}

unint64_t sub_10034EC04()
{
  result = qword_1008E9C20;
  if (!qword_1008E9C20)
  {
    sub_100141EEC(&qword_1008E9BE8);
    sub_10034EC90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E9C20);
  }

  return result;
}

unint64_t sub_10034EC90()
{
  result = qword_1008E9C28;
  if (!qword_1008E9C28)
  {
    sub_100141EEC(&qword_1008E9C18);
    sub_10034ED48();
    sub_10014A6B0(&qword_1008E7B88, &qword_1008E7B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E9C28);
  }

  return result;
}

unint64_t sub_10034ED48()
{
  result = qword_1008E9C30;
  if (!qword_1008E9C30)
  {
    sub_100141EEC(&qword_1008E9C10);
    sub_10014A6B0(&qword_1008E9C38, &qword_1008E9C40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E9C30);
  }

  return result;
}

unint64_t sub_10034EE00()
{
  result = qword_1008E9C48;
  if (!qword_1008E9C48)
  {
    sub_100141EEC(&qword_1008E9BF0);
    sub_10034EC04();
    sub_10034EEBC(&qword_1008DCEF8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E9C48);
  }

  return result;
}

uint64_t sub_10034EEBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10034EF04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivitySharingFriendListItemView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10034EF68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivitySharingFriendListItemView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10034F024()
{
  result = qword_1008E9C50;
  if (!qword_1008E9C50)
  {
    sub_100141EEC(&qword_1008E9C00);
    sub_100141EEC(&qword_1008E9BF0);
    sub_10034EE00();
    swift_getOpaqueTypeConformance2();
    sub_10034EEBC(&qword_1008DCEF8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E9C50);
  }

  return result;
}

uint64_t sub_10034F11C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E9CA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10034F1CC(SEL *a1)
{
  v2 = [v1 *a1];
  v3 = [v2 unitString];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

uint64_t sub_10034F270(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [v3 *a3];
  v5 = [v4 unitString];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v6;
}

uint64_t sub_10034F310@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v62 = a2;
  v60 = type metadata accessor for MenuPickerStyle();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_100140278(&qword_1008E9CD0);
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v55 = v51 - v4;
  v65 = sub_100140278(&qword_1008E9CD8);
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v54 = v51 - v5;
  v6 = sub_100140278(&qword_1008E9CE0);
  __chkstk_darwin(v6 - 8);
  v61 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v64 = v51 - v9;
  v53 = a1;
  v10 = *(a1 + 8);
  aBlock = sub_100463378();
  v71 = v11;
  sub_10000FCBC();
  v12 = Text.init<A>(_:)();
  v14 = v13;
  v16 = v15;
  static Font.title2.getter();
  v17 = Text.font(_:)();
  v19 = v18;
  v21 = v20;

  sub_10004642C(v12, v14, v16 & 1);

  v22 = Text.bold()();
  v24 = v23;
  LOBYTE(v12) = v25;
  sub_10004642C(v17, v19, v21 & 1);

  static Color.white.getter();
  v26 = Text.foregroundColor(_:)();
  v28 = v27;
  LODWORD(v30) = v29;
  v32 = v31;

  sub_10004642C(v22, v24, v12 & 1);

  v33 = 1;
  if (v10 == 2)
  {
    v52 = v30;
    v34 = v53;
    v35 = *v53;
    v36 = swift_allocObject();
    *(v36 + 16) = _swiftEmptyArrayStorage;
    v74 = sub_10034FD60;
    v75 = v36;
    aBlock = _NSConcreteStackBlock;
    v71 = 1107296256;
    v72 = sub_10045A694;
    v73 = &unk_100853E30;
    v37 = _Block_copy(&aBlock);

    [v35 enumerateValidDisplayModesForFilter:0 usingBlock:v37];
    _Block_release(v37);
    swift_beginAccess();

    v51[2] = LocalizedStringKey.init(stringLiteral:)();
    v51[1] = v38;
    v51[0] = v39;
    v68 = *(v34 + 1);
    v69 = v34[4];
    sub_100140278(&qword_1008E31A0);
    v40 = Binding.projectedValue.getter();
    v68 = v66;
    v69 = v67;
    __chkstk_darwin(v40);
    type metadata accessor for ASFriendListDisplayMode(0);
    sub_100140278(&qword_1008E9CF0);
    sub_10034FE54(&qword_1008E9CF8);
    sub_10034FD70();
    v30 = v55;
    Picker<>.init(_:selection:content:)();

    v41 = v58;
    MenuPickerStyle.init()();
    sub_10014A6B0(&qword_1008E9D08, &qword_1008E9CD0);
    v42 = v54;
    v43 = v57;
    v44 = v60;
    View.pickerStyle<A>(_:)();
    (*(v59 + 8))(v41, v44);
    v45 = v30;
    LOBYTE(v30) = v52;
    (*(v56 + 8))(v45, v43);
    (*(v63 + 32))(v64, v42, v65);
    v33 = 0;
  }

  v46 = v64;
  (*(v63 + 56))(v64, v33, 1, v65);
  v47 = v61;
  sub_1000911C8(v46, v61);
  v48 = v62;
  *v62 = v26;
  v48[1] = v28;
  *(v48 + 16) = v30 & 1;
  v48[3] = v32;
  v48[4] = 0;
  *(v48 + 40) = 1;
  v49 = sub_100140278(&qword_1008E9CE8);
  sub_1000911C8(v47, v48 + *(v49 + 64));
  sub_10006965C(v26, v28, v30 & 1);

  sub_100091238(v46);
  sub_100091238(v47);
  sub_10004642C(v26, v28, v30 & 1);
}

uint64_t sub_10034FA70()
{

  sub_100140278(&qword_1008E9D10);
  sub_100140278(&qword_1008E9D18);
  sub_10014A6B0(&qword_1008E9D20, &qword_1008E9D10);
  type metadata accessor for ASFriendListDisplayMode(255);
  sub_10034FE54(&qword_1008E9CF8);
  swift_getOpaqueTypeConformance2();
  sub_10034FE54(&qword_1008E9D28);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_10034FBDC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = ASDisplayModeToString();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10000FCBC();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v8;
  *(a2 + 32) = v3;
  *(a2 + 40) = 1;
  return result;
}

uint64_t sub_10034FC70@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v9[0] = *v1;
  v9[1] = v3;
  v10 = *(v1 + 32);
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = sub_100140278(&qword_1008E9CC0);
  sub_10034F310(v9, (a1 + *(v4 + 44)));
  v5 = (a1 + *(sub_100140278(&qword_1008E9CC8) + 36));
  v6 = *(sub_100140278(&qword_1008DDAE0) + 28);
  v7 = type metadata accessor for Text.Case();
  (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  result = swift_getKeyPath();
  *v5 = result;
  return result;
}

unint64_t sub_10034FD70()
{
  result = qword_1008E9D00;
  if (!qword_1008E9D00)
  {
    sub_100141EEC(&qword_1008E9CF0);
    type metadata accessor for ASFriendListDisplayMode(255);
    sub_10034FE54(&qword_1008E9CF8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E9D00);
  }

  return result;
}

uint64_t sub_10034FE54(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ASFriendListDisplayMode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10034FE98()
{
  result = qword_1008E9D30;
  if (!qword_1008E9D30)
  {
    sub_100141EEC(&qword_1008E9CC8);
    sub_10014A6B0(&qword_1008E9D38, &qword_1008E9D40);
    sub_10014A6B0(&qword_1008E9D48, &qword_1008DDAE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E9D30);
  }

  return result;
}

id sub_10034FF8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR___CHWorkoutDetailHeartRateTableViewCell_heartRateController] = 0;
  if (a3)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v15.receiver = v3;
  v15.super_class = type metadata accessor for WorkoutDetailHeartRateTableViewCell();
  v6 = objc_msgSendSuper2(&v15, "initWithStyle:reuseIdentifier:", a1, v5);

  v7 = objc_opt_self();
  sub_100140278(&unk_1008E4E20);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1006D4E70;
  v9 = v6;
  v10 = [v9 contentView];
  v11 = [v10 heightAnchor];

  v12 = [v11 constraintGreaterThanOrEqualToConstant:132.0];
  *(v8 + 32) = v12;
  sub_1000059F8(0, &qword_1008DC980);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v7 activateConstraints:isa];

  return v9;
}

void sub_1003501D0(void *a1, void *a2, void *a3, void *a4, unint64_t a5, void *a6, void *a7)
{
  v146 = a7;
  v165 = a5;
  v166 = a6;
  v161 = a4;
  v160 = a3;
  v147 = type metadata accessor for WorkoutDetailChartView();
  __chkstk_darwin(v147);
  v148 = &v145 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v150 = &v145 - v11;
  v12 = sub_100140278(&qword_1008DD250);
  __chkstk_darwin(v12 - 8);
  v167 = &v145 - v13;
  v14 = type metadata accessor for WorkoutChartViewModel(0);
  v163 = *(v14 - 8);
  v164 = v14;
  __chkstk_darwin(v14);
  v151 = &v145 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_100140278(&unk_1008F73D0);
  v158 = *(v173 - 8);
  __chkstk_darwin(v173);
  v157 = &v145 - v16;
  v17 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v17 - 8);
  v159 = &v145 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v145 - v20;
  __chkstk_darwin(v22);
  v154 = &v145 - v23;
  __chkstk_darwin(v24);
  v26 = &v145 - v25;
  v27 = type metadata accessor for Date();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v155 = &v145 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v156 = &v145 - v31;
  __chkstk_darwin(v32);
  v172 = &v145 - v33;
  __chkstk_darwin(v34);
  __chkstk_darwin(v35);
  v37 = &v145 - v36;
  v39 = __chkstk_darwin(v38);
  v41 = &v145 - v40;
  v169 = &v145 - v40;
  v170 = v42;
  v162 = a2;
  v168 = a1;
  v171 = v37;
  if (a2)
  {
    v43 = [a2 startDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v44 = v37;
    v45 = v28[4];
    v45(v26, v44, v27);
    v46 = 1;
    v174 = v28[7];
    v174(v26, 0, 1, v27);
    v45(v41, v26, v27);
    v47 = [a2 endDate];
    if (v47)
    {
      v48 = v47;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v46 = 0;
    }

    v49 = v154;
    v174(v21, v46, 1, v27);
    sub_1002239C4(v21, v49);
    v50 = v28;
    v51 = v28[6];
    if (v51(v49, 1, v27) != 1)
    {
      v53 = v170;
      v45(v170, v49, v27);
      goto LABEL_12;
    }
  }

  else
  {
    v174 = v28[7];
    (v174)(v26, 1, 1, v27, v39);
    v52 = [a1 startDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v50 = v28;
    v51 = v28[6];
    if (v51(v26, 1, v27) != 1)
    {
      sub_10000EA04(v26, &unk_1008F73A0);
    }

    v49 = v154;
    v174(v154, 1, 1, v27);
  }

  v53 = v170;
  v54 = [v168 endDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  if (v51(v49, 1, v27) != 1)
  {
    sub_10000EA04(v49, &unk_1008F73A0);
  }

LABEL_12:
  v55 = v50[2];
  v56 = v171;
  v55(v171, v169, v27);
  v55(v172, v53, v27);
  v57 = v55;
  v58 = [objc_opt_self() mainScreen];
  [v58 bounds];
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v66 = v65;

  v179.origin.x = v60;
  v179.origin.y = v62;
  v179.size.width = v64;
  v179.size.height = v66;
  Width = CGRectGetWidth(v179);
  v68 = sub_1000B7B88();
  v69 = Width - (v68 + v68 + 32.0);
  type metadata accessor for WorkoutChartProperties();
  v70 = swift_allocObject();
  *(v70 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_onScreenBuckets) = 0x404E000000000000;
  *(v70 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_bucketDuration) = 0x404E000000000000;
  v71 = v70 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_viewWidth;
  v153 = (v70 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_viewWidth);
  *v71 = 0;
  *(v71 + 8) = 1;
  v72 = OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties__touchPoint;
  v177 = 0;
  v178 = 1;
  v152 = sub_100140278(&unk_1008F73E0);
  v73 = v157;
  Published.init(initialValue:)();
  v74 = v158;
  (*(v158 + 32))(v70 + v72, v73, v173);
  *(v70 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v157 = OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_selectedDate;
  v154 = (v50 + 7);
  v174((v70 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_selectedDate), 1, 1, v27);
  *(v70 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_offsetAmount) = 0;
  v75 = v70 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_offsetFrom;
  *v75 = 0;
  *(v75 + 8) = 1;
  v76 = v156;
  v77 = v57;
  v57(v156, v56, v27);
  v78 = v27;
  swift_beginAccess();
  v77(v155, v76, v27);
  Published.init(initialValue:)();
  v79 = v50[1];
  v79(v76, v78);
  swift_endAccess();
  v80 = v171;
  v77((v70 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_onScreenBucketStartDate), v171, v78);
  swift_beginAccess();
  (*(v74 + 8))(v70 + v72, v173);
  v175 = 0;
  v176 = 1;
  Published.init(initialValue:)();
  swift_endAccess();
  v81 = v153;
  *v153 = v69;
  *(v81 + 8) = 0;
  v77((v70 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_workoutStartDate), v80, v78);
  v82 = v172;
  v77((v70 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_workoutEndDate), v172, v78);
  v83 = v79;
  Date.timeIntervalSince(_:)();
  *(v70 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_workoutDuration) = v84;
  sub_1002E552C(1, 10.0, 90.0);
  v79(v82, v78);
  v79(v80, v78);
  v85 = v159;
  v174(v159, 1, 1, v78);
  v86 = v157;
  swift_beginAccess();
  sub_100169198(v85, &v86[v70]);
  swift_endAccess();
  type metadata accessor for WorkoutDetailHeartRateDataStore();
  swift_allocObject();
  v87 = v162;
  v88 = v162;
  v89 = v160;
  v90 = v161;
  sub_100168BDC(v168, v87, v89, v90);

  sub_100163874(v165, v166);
  swift_getKeyPath();
  swift_getKeyPath();

  v91 = v167;
  static Published.subscript.getter();

  if ((*(v163 + 48))(v91, 1, v164) == 1)
  {

    v83(v170, v78);
    v83(v169, v78);
    sub_10000EA04(v91, &qword_1008DD250);
    return;
  }

  v172 = v83;
  v173 = v78;
  v174 = (v50 + 1);
  v92 = v151;
  sub_10017A92C(v91, v151);
  v93 = v150;
  sub_10017A990(v92, v150, type metadata accessor for WorkoutChartViewModel);
  *(v93 + *(v147 + 20)) = v70;
  v94 = OBJC_IVAR___CHWorkoutDetailHeartRateTableViewCell_heartRateController;
  v95 = v149;
  v96 = *&v149[OBJC_IVAR___CHWorkoutDetailHeartRateTableViewCell_heartRateController];
  if (v96)
  {
    sub_10017A990(v93, v148, type metadata accessor for WorkoutDetailChartView);
    v97 = v96;
    dispatch thunk of UIHostingController.rootView.setter();
    v98 = [v97 view];
    v99 = v170;
    if (v98)
    {
      v100 = v98;
LABEL_26:
      v141 = v169;
      [v100 layoutIfNeeded];

      sub_1003515A0(v93, type metadata accessor for WorkoutDetailChartView);
      sub_1003515A0(v92, type metadata accessor for WorkoutChartViewModel);
      v142 = v99;
      v144 = v172;
      v143 = v173;
      (v172)(v142, v173);
      v144(v141, v143);
      return;
    }

    __break(1u);
    goto LABEL_28;
  }

  sub_10017A990(v93, v148, type metadata accessor for WorkoutDetailChartView);
  v101 = objc_allocWithZone(sub_100140278(&qword_1008E9D80));
  v102 = UIHostingController.init(rootView:)();
  v103 = *&v95[v94];
  *&v95[v94] = v102;
  v104 = v102;

  v97 = v104;
  v105 = [v97 view];
  if (!v105)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v106 = v105;
  [v105 setTranslatesAutoresizingMaskIntoConstraints:0];

  v107 = [v97 view];
  if (!v107)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v108 = v107;
  v109 = [objc_opt_self() clearColor];
  [v108 setBackgroundColor:v109];

  v110 = [v95 contentView];
  v111 = [v97 view];
  if (!v111)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v112 = v111;
  [v110 addSubview:v111];

  [v146 addChildViewController:v97];
  sub_100140278(&unk_1008E4E20);
  v113 = swift_allocObject();
  *(v113 + 16) = xmmword_1006D5300;
  v114 = [v97 view];
  if (!v114)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v115 = v114;
  v116 = [v114 topAnchor];

  v117 = [v95 contentView];
  v118 = [v117 topAnchor];

  v119 = [v116 constraintEqualToAnchor:v118 constant:12.0];
  *(v113 + 32) = v119;
  v120 = [v97 view];
  if (!v120)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v121 = v120;
  v122 = [v120 leadingAnchor];

  v123 = [v95 contentView];
  v124 = [v123 leadingAnchor];

  v125 = [v122 constraintEqualToAnchor:v124 constant:sub_1000B7B88()];
  *(v113 + 40) = v125;
  v126 = [v97 view];
  if (!v126)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v127 = v126;
  v128 = [v126 trailingAnchor];

  v129 = [v95 contentView];
  v130 = [v129 trailingAnchor];

  v131 = [v128 constraintEqualToAnchor:v130 constant:-sub_1000B7B88()];
  *(v113 + 48) = v131;
  v132 = [v97 view];
  if (!v132)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v133 = v95;
  v134 = v132;
  v135 = objc_opt_self();
  v136 = [v134 bottomAnchor];

  v137 = [v133 contentView];
  v138 = [v137 bottomAnchor];

  v139 = [v136 constraintEqualToAnchor:v138 constant:-12.0];
  *(v113 + 56) = v139;
  sub_1000059F8(0, &qword_1008DC980);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v135 activateConstraints:isa];

  [v97 didMoveToParentViewController:v146];
  v100 = [v97 view];

  if (v100)
  {
    v92 = v151;
    v99 = v170;
    goto LABEL_26;
  }

LABEL_35:
  __break(1u);
}

id sub_100351538()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutDetailHeartRateTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003515A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100351600(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v138 = v4;
  v6 = v5;
  v137 = v7;
  v9 = v8;
  v10 = v1;
  v139 = *v1;
  v141 = v11;
  v12 = *v1;
  v13 = v1[1];
  v14 = [objc_opt_self() sharedConnection];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 isHealthDataSubmissionAllowed];

    if (v16)
    {
      sub_1006110F8(v12, v13, v3 & 1);
      v17 = String._bridgeToObjectiveC()();
      sub_1000059F8(0, &qword_1008DB898);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      AnalyticsSendEvent();
    }
  }

  v142 = v3;
  v143 = v13;
  v19 = *(v9 + OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_statisticsByTrendType90);
  sub_100011DA0(&v170);
  v167 = v180;
  v168 = v181;
  v169 = v182;
  v163 = v176;
  v164 = v177;
  v165 = v178;
  v166 = v179;
  v159 = v172;
  v160 = v173;
  v161 = v174;
  v162 = v175;
  v157 = v170;
  v158 = v171;
  v20 = *(v19 + 24);
  v21 = swift_allocObject();
  *(v21 + 16) = &v157;
  *(v21 + 24) = v19;
  v144 = v12;
  *(v21 + 32) = v12;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_10028E41C;
  *(v22 + 24) = v21;
  *&aBlock[2] = sub_10007BD60;
  *(&aBlock[2] + 1) = v22;
  *&aBlock[0] = _NSConcreteStackBlock;
  *(&aBlock[0] + 1) = 1107296256;
  *&aBlock[1] = sub_1003579C0;
  *(&aBlock[1] + 1) = &unk_100853EA8;
  v23 = _Block_copy(aBlock);
  swift_retain_n();

  dispatch_sync(v20, v23);

  _Block_release(v23);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
    __break(1u);
    goto LABEL_63;
  }

  v183[10] = v167;
  v183[11] = v168;
  v183[6] = v163;
  v183[7] = v164;
  v183[8] = v165;
  v183[9] = v166;
  v183[2] = v159;
  v183[3] = v160;
  v183[4] = v161;
  v183[5] = v162;
  v183[0] = v157;
  v183[1] = v158;
  *&v189[96] = v167;
  *&v189[112] = v168;
  *&v189[32] = v163;
  *&v189[48] = v164;
  *&v189[64] = v165;
  *&v189[80] = v166;
  v187 = v159;
  v188 = v160;
  *v189 = v161;
  *&v189[16] = v162;
  v184 = v169;
  v190 = v169;
  v185 = v157;
  v186 = v158;
  if (sub_100013184(&v185) == 1)
  {
    return 0;
  }

  aBlock[9] = v179;
  aBlock[10] = v180;
  aBlock[11] = v181;
  aBlock[5] = v175;
  aBlock[6] = v176;
  aBlock[7] = v177;
  aBlock[8] = v178;
  aBlock[1] = v171;
  aBlock[2] = v172;
  aBlock[3] = v173;
  aBlock[4] = v174;
  v25 = *(v9 + OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_statisticsByTrendType365);
  LOBYTE(aBlock[12]) = v182;
  aBlock[0] = v170;
  v26 = *(v25 + 24);
  v27 = swift_allocObject();
  *(v27 + 16) = aBlock;
  *(v27 + 24) = v25;
  *(v27 + 32) = v144;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_10028E444;
  *(v28 + 24) = v27;
  *&__dst[2] = sub_1002831F4;
  *(&__dst[2] + 1) = v28;
  *&__dst[0] = _NSConcreteStackBlock;
  *(&__dst[0] + 1) = 1107296256;
  *&__dst[1] = sub_1003579C0;
  *(&__dst[1] + 1) = &unk_100853F20;
  v29 = _Block_copy(__dst);
  swift_retain_n();

  dispatch_sync(v26, v29);

  _Block_release(v29);
  LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

  if (v25)
  {
LABEL_63:
    __break(1u);
    return result;
  }

  v149[9] = aBlock[9];
  v149[10] = aBlock[10];
  v149[11] = aBlock[11];
  v150 = aBlock[12];
  v149[5] = aBlock[5];
  v149[6] = aBlock[6];
  v149[7] = aBlock[7];
  v149[8] = aBlock[8];
  v149[1] = aBlock[1];
  v149[2] = aBlock[2];
  v149[3] = aBlock[3];
  v149[4] = aBlock[4];
  v149[0] = aBlock[0];
  *&v155[80] = aBlock[9];
  *&v155[96] = aBlock[10];
  *&v155[112] = aBlock[11];
  v156 = aBlock[12];
  *&v155[16] = aBlock[5];
  *&v155[32] = aBlock[6];
  *&v155[48] = aBlock[7];
  *&v155[64] = aBlock[8];
  v152 = aBlock[1];
  v153 = aBlock[2];
  v154 = aBlock[3];
  *v155 = aBlock[4];
  v151 = aBlock[0];
  if (sub_100013184(&v151) == 1)
  {
    v30 = v183;
LABEL_21:
    sub_10035273C(v30);
    return 0;
  }

  v31 = v13;
  if (v13 == 1)
  {
    v127 = 0;
    v128 = 0;
    v123 = 0;
    v124 = 0;
    v121 = 0;
    v132 = 0;
    v133 = 0;
    v125 = 0;
    v119 = 0u;
    v120 = 0u;
    v135 = 1;
    v136 = 1;
    v122 = 1;
    v130 = 0u;
    v131 = 0u;
    v118 = 1;
    v129 = 1;
    v32 = v144;
    v33 = v139;
    goto LABEL_11;
  }

  v32 = v144;
  sub_100357B7C(v144, v191);
  v130 = v191[1];
  v131 = v191[0];
  v84 = v192;
  v129 = v193;

  v85 = sub_100357D14(v144);
  v132 = v86;
  v133 = v85;
  v88 = v87;

  if (v193 & 1) != 0 || (v88)
  {
    sub_10035273C(v183);
    v30 = v149;
    goto LABEL_21;
  }

  v94 = sub_100357D14(v144);
  v123 = v95;
  v124 = v94;
  v122 = v96;

  sub_100357B7C(v144, v194);
  v119 = v194[1];
  v120 = v194[0];
  v121 = v195;
  v97 = v196;

  memcpy(aBlock, (v9 + OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_statisticsCompilation365), 0x728uLL);
  if (sub_100013184(aBlock) == 1)
  {
    v128 = 0;
    v136 = 1;
    v33 = v139;
    goto LABEL_52;
  }

  v33 = v139;
  if (v144 > 8)
  {
    goto LABEL_50;
  }

  v136 = 1;
  if (((1 << v144) & 0x1DC) != 0)
  {
    v128 = 0;
    goto LABEL_52;
  }

  if (v144 != 1)
  {
    if (v144 == 5)
    {
      v136 = 0;
      v114 = *&aBlock[113];
      goto LABEL_51;
    }

LABEL_50:
    v136 = 0;
    v114 = *(&aBlock[113] + 1);
    goto LABEL_51;
  }

  v136 = 0;
  v114 = *(&aBlock[112] + 1);
LABEL_51:
  v128 = v114;
LABEL_52:
  memcpy(__dst, (v9 + OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_statisticsCompilation90), 0x728uLL);
  v125 = v84;
  v118 = v97;
  if (sub_100013184(__dst) == 1)
  {
LABEL_55:
    v127 = 0;
    v135 = 1;
    goto LABEL_11;
  }

  if (v144 > 8)
  {
    goto LABEL_60;
  }

  if (((1 << v144) & 0x1DC) != 0)
  {
    goto LABEL_55;
  }

  if (v144 != 1)
  {
    if (v144 == 5)
    {
      v135 = 0;
      v115 = *&__dst[113];
      goto LABEL_61;
    }

LABEL_60:
    v135 = 0;
    v115 = *(&__dst[113] + 1);
    goto LABEL_61;
  }

  v135 = 0;
  v115 = *(&__dst[112] + 1);
LABEL_61:
  v127 = v115;
LABEL_11:
  v140 = *(v9 + OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_pairedWatchManager);
  v34 = &v10[*(type metadata accessor for TrendListMetric() + 32)];
  v35 = *(v34 + 1);
  v116 = *v34;
  v126 = type metadata accessor for TrendDetailViewController();
  v36 = objc_allocWithZone(v126);
  v37 = OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_stackView;
  sub_1000059F8(0, &qword_1008E6F30);
  v117 = v35;

  *&v36[v37] = sub_10065AF60();
  v38 = OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_summaryView;
  type metadata accessor for TrendDetailSummaryView();
  *&v36[v38] = sub_10065AF60();
  v39 = OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_explanationView;
  type metadata accessor for TrendExplanationView();
  *&v36[v39] = sub_10065AF60();
  v36[OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_trendType] = v32;
  v40 = OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_direction;
  v36[OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_direction] = v31;
  v41 = v33;
  v42 = sub_1003D2500(byte_1006EACB2[v33]);
  v43 = *&v185;
  v44 = objc_opt_self();
  v45 = [v44 quantityWithUnit:v42 doubleValue:v43];

  v46 = 0;
  *&v36[OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_valueQuantity] = v45;
  if (v36[v40] == 2)
  {
    v47 = *&v151 - v43;
    v48 = sub_1003D2500(byte_1006EACB2[v41]);
    v46 = [v44 quantityWithUnit:v48 doubleValue:v47];
  }

  *&v36[OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_differenceQuantity] = v46;
  v49 = &v36[OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_statistics90];
  *v49 = v185;
  v50 = v186;
  v51 = v187;
  v52 = *v189;
  *(v49 + 3) = v188;
  *(v49 + 4) = v52;
  *(v49 + 1) = v50;
  *(v49 + 2) = v51;
  v53 = *&v189[16];
  v54 = *&v189[32];
  v55 = *&v189[64];
  *(v49 + 7) = *&v189[48];
  *(v49 + 8) = v55;
  *(v49 + 5) = v53;
  *(v49 + 6) = v54;
  v56 = *&v189[80];
  v57 = *&v189[96];
  v58 = *&v189[112];
  v49[192] = v190;
  *(v49 + 10) = v57;
  *(v49 + 11) = v58;
  *(v49 + 9) = v56;
  v59 = &v36[OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_statistics365];
  *v59 = v151;
  v60 = v152;
  v61 = v153;
  v62 = *v155;
  *(v59 + 3) = v154;
  *(v59 + 4) = v62;
  *(v59 + 1) = v60;
  *(v59 + 2) = v61;
  v63 = *&v155[16];
  v64 = *&v155[32];
  v65 = *&v155[64];
  *(v59 + 7) = *&v155[48];
  *(v59 + 8) = v65;
  *(v59 + 5) = v63;
  *(v59 + 6) = v64;
  v66 = *&v155[80];
  v67 = *&v155[96];
  v68 = *&v155[112];
  v59[192] = v156;
  *(v59 + 10) = v67;
  *(v59 + 11) = v68;
  *(v59 + 9) = v66;
  v69 = &v36[OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_mannKendall90];
  *v69 = v131;
  *(v69 + 1) = v130;
  *(v69 + 4) = v125;
  v69[40] = v129;
  v70 = &v36[OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_mannKendall365];
  *v70 = v120;
  *(v70 + 1) = v119;
  *(v70 + 4) = v121;
  v70[40] = v118;
  v71 = &v36[OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_fit90];
  *v71 = v133;
  *(v71 + 1) = v132;
  v71[16] = v143 == 1;
  v72 = &v36[OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_fit365];
  *v72 = v124;
  *(v72 + 1) = v123;
  v72[16] = v122 & 1;
  *&v36[OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_formattingManager] = v141;
  *&v36[OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_pairedWatchManager] = v140;
  v73 = &v36[OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_daysRingsClosed365];
  *v73 = v128;
  v73[8] = v136;
  v74 = &v36[OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_daysRingsClosed90];
  *v74 = v127;
  v74[8] = v135;
  v75 = &v36[OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_coachingString];
  *v75 = v116;
  v75[1] = v117;
  v36[OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_isWheelchairUser] = v142 & 1;
  v134 = v36[v40];
  v198[0] = v186;
  v198[1] = v187;
  v198[2] = v188;
  v199 = *v189;
  v76 = *&v151;
  v200[0] = v152;
  v200[1] = v153;
  v200[2] = v154;
  v201 = *v155;
  objc_allocWithZone(type metadata accessor for TrendDetailChartView());
  v77 = v141;
  sub_1003527A4(v183, aBlock);
  v78 = v149;
  sub_1003527A4(v149, aBlock);

  v79 = v144;
  *&v36[OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_chartView] = sub_100667924(v144, v134, v198, v200, v77, v43, v76);
  __dst[4] = *&v189[72];
  __dst[5] = *&v189[88];
  __dst[6] = *&v189[104];
  *&__dst[7] = *&v189[120];
  __dst[0] = *&v189[8];
  __dst[1] = *&v189[24];
  __dst[2] = *&v189[40];
  __dst[3] = *&v189[56];
  if (!*(*&v189[8] + 16))
  {
    v80 = v183;
LABEL_25:
    sub_10035273C(v80);
    sub_10035273C(v78);
    v83 = 0;
    goto LABEL_26;
  }

  *&aBlock[7] = *&v155[120];
  aBlock[4] = *&v155[72];
  aBlock[5] = *&v155[88];
  aBlock[6] = *&v155[104];
  aBlock[0] = *&v155[8];
  aBlock[1] = *&v155[24];
  aBlock[2] = *&v155[40];
  aBlock[3] = *&v155[56];
  v78 = v183;
  v80 = v149;
  if (!*(*&v155[8] + 16) || v143 == 1 || v144 == 4)
  {
    goto LABEL_25;
  }

  v81 = objc_allocWithZone(type metadata accessor for TrendDetailDailyAverageView());
  v82 = v77;
  sub_100352814(&v189[8], v146);
  sub_100352814(&v155[8], v146);
  v83 = sub_100239DC8(v144, __dst, aBlock, v82);
  sub_10035273C(v149);
  sub_10035273C(v183);
LABEL_26:
  *&v36[OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_dailyChart] = v83;
  if ((v135 | v136))
  {
    *&v36[OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_ringClosureSummary] = 0;
  }

  else
  {
    type metadata accessor for TrendDetailRingClosureView();
    v89 = sub_10065AF60();
    *&v36[OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_ringClosureSummary] = v89;
    v90 = *&v89[OBJC_IVAR____TtC10FitnessApp26TrendDetailRingClosureView_titleLabel];
    v91 = v89;
    sub_100583290(v142 & 1, v144);
    if (v92)
    {
      v93 = String._bridgeToObjectiveC()();
    }

    else
    {
      v93 = 0;
    }

    [v90 setText:v93];

    v98 = OBJC_IVAR____TtC10FitnessApp26TrendDetailRingClosureView_valueLabel90;
    v99 = *&v91[OBJC_IVAR____TtC10FitnessApp26TrendDetailRingClosureView_valueLabel90];
    v100 = sub_100582888(v144);
    v101 = *&v100[OBJC_IVAR____TtC10FitnessApp12MetricColors_text];

    [v99 setTextColor:v101];
    v102 = *&v91[v98];
    v103 = sub_100604BFC(v127, 90);
    [v102 setAttributedText:v103];

    v104 = OBJC_IVAR____TtC10FitnessApp26TrendDetailRingClosureView_valueLabel365;
    v105 = *&v91[OBJC_IVAR____TtC10FitnessApp26TrendDetailRingClosureView_valueLabel365];
    v106 = [objc_opt_self() secondaryLabelColor];
    v79 = v144;
    [v105 setTextColor:v106];

    v107 = *&v91[v104];
    v108 = sub_100604BFC(v128, 365);
    [v107 setAttributedText:v108];
  }

  if (v79 == 4 && (v138 & 1) == 0)
  {
    v109 = sub_100414F58(v137, v6);
    if (v109)
    {
      v111 = v109;
      v112 = v110;
      sub_1004143BC(v109, v110, v197, v43);
      if (v197[48] != 6)
      {
        sub_1004143BC(v111, v112, v146, v76);
      }
    }
  }

  *&v36[OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_vO2MaxChart] = 0;
  v145.receiver = v36;
  v145.super_class = v126;
  result = objc_msgSendSuper2(&v145, "initWithNibName:bundle:", 0, 0);
  if (*(result + OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_dailyChart))
  {
    v113 = result;
    [*(result + OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_dailyChart) setTranslatesAutoresizingMaskIntoConstraints:0];
    return v113;
  }

  return result;
}

uint64_t sub_10035273C(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008E5710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003527A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E5710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for WorkoutItemEffortLabelView()
{
  result = qword_1008E9DE8;
  if (!qword_1008E9DE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003528EC()
{
  result = type metadata accessor for WorkoutEffort();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100352974@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100140278(&qword_1008E9E38);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v33 - v4);
  v6 = sub_100140278(&qword_1008E9E40);
  __chkstk_darwin(v6 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v33 - v10;
  WorkoutEffort.effortSymbolSystemName.getter();
  if (v12)
  {
    v13 = Image.init(_internalSystemName:)();
    v35 = a1;
    v14 = v13;
    v15 = *(sub_100140278(&qword_1008E9840) + 36);
    v36 = v8;
    v16 = (v5 + v15);
    v17 = sub_100140278(&qword_1008E97F8);
    v34 = v2;
    v18 = *(v17 + 28);
    v19 = enum case for Image.Scale.small(_:);
    v20 = type metadata accessor for Image.Scale();
    (*(*(v20 - 8) + 104))(v16 + v18, v19, v20);
    *v16 = swift_getKeyPath();
    *v5 = v14;
    LOBYTE(v14) = WorkoutEffort.allSubWorkoutsAreSkipped.getter();
    v21 = sub_100140278(&qword_1008E9E58);
    v22 = v14 & 1;
    v23 = v34;
    a1 = v35;
    *(v5 + *(v21 + 36)) = v22;
    v24 = (v5 + *(v23 + 36));
    v25 = *(sub_100140278(&qword_1008E9848) + 28);
    WorkoutEffort.effortSymbolRenderingMode.getter();
    v26 = type metadata accessor for SymbolRenderingMode();
    (*(*(v26 - 8) + 56))(v24 + v25, 0, 1, v26);
    *v24 = swift_getKeyPath();
    v8 = v36;
    sub_100352F9C(v5, v11);
    (*(v3 + 56))(v11, 0, 1, v23);
  }

  else
  {
    (*(v3 + 56))(v11, 1, 1, v2);
  }

  v27 = static Axis.Set.horizontal.getter();
  sub_100352D88(v38);
  *&v37[7] = v38[0];
  *&v37[23] = v38[1];
  *&v37[39] = v38[2];
  *&v37[55] = v38[3];
  sub_10001B104(v11, v8, &qword_1008E9E40);
  sub_10001B104(v8, a1, &qword_1008E9E40);
  v28 = a1 + *(sub_100140278(&qword_1008E9E48) + 48);
  v39[0] = v27;
  *&v39[1] = *v37;
  *&v39[17] = *&v37[16];
  *&v39[33] = *&v37[32];
  *&v39[49] = *&v37[48];
  v29 = *&v37[63];
  *&v39[64] = *&v37[63];
  v30 = *&v39[48];
  *(v28 + 32) = *&v39[32];
  *(v28 + 48) = v30;
  *(v28 + 64) = v29;
  v31 = *&v39[16];
  *v28 = *v39;
  *(v28 + 16) = v31;
  sub_10001B104(v39, &v40, &qword_1008E9E50);
  sub_10000EA04(v11, &qword_1008E9E40);
  v40 = v27;
  v42 = *&v37[16];
  v43 = *&v37[32];
  *v44 = *&v37[48];
  *&v44[15] = *&v37[63];
  v41 = *v37;
  sub_10000EA04(&v40, &qword_1008E9E50);
  return sub_10000EA04(v8, &qword_1008E9E40);
}

uint64_t sub_100352D88@<X0>(uint64_t a1@<X8>)
{
  WorkoutEffort.effortDescription.getter();
  sub_10000FCBC();
  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if (WorkoutEffort.needsToAddEffort.getter())
  {
    WorkoutEffort.addEffortDescriptionShortened.getter();
    v9 = Text.init<A>(_:)();
    v11 = v10;
    v13 = v12;
    v15 = v14 & 1;
    sub_10006965C(v9, v10, v14 & 1);
  }

  else
  {
    v9 = 0;
    v11 = 0;
    v15 = 0;
    v13 = 0;
  }

  v16 = v6 & 1;
  sub_10006965C(v2, v4, v16);

  sub_1001E53F8(v9, v11, v15, v13);
  sub_1001E543C(v9, v11, v15, v13);
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v16;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v11;
  *(a1 + 48) = v15;
  *(a1 + 56) = v13;
  sub_1001E543C(v9, v11, v15, v13);
  sub_10004642C(v2, v4, v16);
}

uint64_t sub_100352EE8@<X0>(uint64_t a1@<X8>)
{
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0x4000000000000000;
  *(a1 + 16) = 0;
  v2 = sub_100140278(&qword_1008E9E20);
  sub_100352974(a1 + *(v2 + 44));
  WorkoutEffort.effortTextColor.getter();
  v3 = Color.init(_:)();
  *(a1 + *(sub_100140278(&qword_1008E9E28) + 36)) = v3;
  KeyPath = swift_getKeyPath();
  result = sub_100140278(&qword_1008E9E30);
  v6 = a1 + *(result + 36);
  *v6 = KeyPath;
  *(v6 + 8) = 1;
  *(v6 + 16) = 0;
  return result;
}

uint64_t sub_100352F9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E9E38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10035300C()
{
  result = qword_1008E9E60;
  if (!qword_1008E9E60)
  {
    sub_100141EEC(&qword_1008E9E30);
    sub_1003530C4();
    sub_10014A6B0(&qword_1008DCB40, &qword_1008DCB48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E9E60);
  }

  return result;
}

unint64_t sub_1003530C4()
{
  result = qword_1008E9E68;
  if (!qword_1008E9E68)
  {
    sub_100141EEC(&qword_1008E9E28);
    sub_10014A6B0(&qword_1008E9E70, &qword_1008E9E78);
    sub_10014A6B0(&qword_1008E0740, &qword_1008E0748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E9E68);
  }

  return result;
}

uint64_t sub_1003531A8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

id sub_10035323C(id *a1)
{
  v1 = *a1;
  if ([*a1 isMe])
  {
    return 0;
  }

  result = [v1 isFriendshipCurrentlyActive];
  if (result)
  {
    return [v1 isActivityDataCurrentlyVisibleToMe];
  }

  return result;
}

uint64_t sub_1003532A4()
{
  v1 = OBJC_IVAR____TtC10FitnessApp36ActivitySharingHighlightDataProvider__state;
  v2 = sub_100140278(&qword_1008E9FE8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

void sub_100353350()
{
  sub_100353408();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100353408()
{
  if (!qword_1008E9ED8)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1008E9ED8);
    }
  }
}

uint64_t sub_100353458(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003534A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1003534FC(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100353524@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ActivitySharingHighlightDataProvider();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100353564(int64_t *a1, uint64_t a2, int64_t a3, unint64_t a4)
{
  v5 = v4;
  v100 = a1;
  v8 = type metadata accessor for ActivitySharingHighlight();
  v108 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v102 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v111 = &v97 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v97 - v14;
  result = __chkstk_darwin(v13);
  v18 = &v97 - v17;
  v110 = a3;
  v19 = *(a3 + 8);
  if (v19 < 1)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_95:
    a3 = *v100;
    if (!*v100)
    {
      goto LABEL_134;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_128:
      result = sub_1001A99A4(a4);
    }

    v113 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v110)
      {
        v93 = *(result + 16 * a4);
        v94 = result;
        v95 = *(result + 16 * (a4 - 1) + 40);
        sub_100354778(*v110 + *(v108 + 72) * v93, *v110 + *(v108 + 72) * *(result + 16 * (a4 - 1) + 32), *v110 + *(v108 + 72) * v95, a3);
        if (v5)
        {
        }

        if (v95 < v93)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_1001A99A4(v94);
        }

        if (a4 - 2 >= *(v94 + 2))
        {
          goto LABEL_122;
        }

        v96 = &v94[16 * a4];
        *v96 = v93;
        *(v96 + 1) = v95;
        v113 = v94;
        sub_1001A9918(a4 - 1);
        result = v113;
        a4 = *(v113 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v20 = 0;
  v21 = _swiftEmptyArrayStorage;
  v99 = a4;
  v112 = v8;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v103 = v21;
    if (v23 >= v19)
    {
      v19 = v23;
    }

    else
    {
      v24 = *v110;
      v25 = *(v108 + 72);
      a3 = *v110 + v25 * v23;
      sub_10002E710(a3, v18);
      sub_10002E710(v24 + v25 * v22, v15);
      v26 = Date.isAfter(date:)();
      sub_10002E870(v15);
      result = sub_10002E870(v18);
      v98 = v22;
      v27 = v22 + 2;
      v109 = v25;
      v28 = v24 + v25 * v27;
      v29 = v26;
      while (v19 != v27)
      {
        sub_10002E710(v28, v18);
        sub_10002E710(a3, v15);
        v30 = Date.isAfter(date:)() & 1;
        sub_10002E870(v15);
        result = sub_10002E870(v18);
        ++v27;
        v28 += v109;
        a3 += v109;
        if ((v29 & 1) != v30)
        {
          v19 = v27 - 1;
          break;
        }
      }

      v22 = v98;
      a4 = v99;
      if (v29)
      {
        if (v19 < v98)
        {
          goto LABEL_125;
        }

        if (v98 < v19)
        {
          v97 = v5;
          v31 = v109 * (v19 - 1);
          a3 = v19 * v109;
          v107 = v19;
          v32 = v19;
          v33 = v98;
          v34 = v98 * v109;
          do
          {
            if (v33 != --v32)
            {
              v35 = *v110;
              if (!*v110)
              {
                goto LABEL_131;
              }

              sub_100042910(v35 + v34, v102);
              if (v34 < v31 || v35 + v34 >= (v35 + a3))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v34 != v31)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_100042910(v102, v35 + v31);
            }

            ++v33;
            v31 -= v109;
            a3 -= v109;
            v34 += v109;
          }

          while (v33 < v32);
          v5 = v97;
          v22 = v98;
          a4 = v99;
          v19 = v107;
        }
      }
    }

    v36 = v110[1];
    if (v19 < v36)
    {
      if (__OFSUB__(v19, v22))
      {
        goto LABEL_124;
      }

      if (v19 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_126;
        }

        if ((v22 + a4) >= v36)
        {
          a3 = v110[1];
        }

        else
        {
          a3 = v22 + a4;
        }

        if (a3 < v22)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v19 != a3)
        {
          break;
        }
      }
    }

    a3 = v19;
    if (v19 < v22)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v103;
    }

    else
    {
      result = sub_1001A1D54(0, *(v103 + 2) + 1, 1, v103);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v37 = *(v21 + 3);
    v38 = a4 + 1;
    if (a4 >= v37 >> 1)
    {
      result = sub_1001A1D54((v37 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v38;
    v39 = &v21[16 * a4];
    *(v39 + 4) = v22;
    *(v39 + 5) = a3;
    v40 = *v100;
    if (!*v100)
    {
      goto LABEL_133;
    }

    v104 = a3;
    if (a4)
    {
      while (1)
      {
        a3 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v41 = *(v21 + 4);
          v42 = *(v21 + 5);
          v51 = __OFSUB__(v42, v41);
          v43 = v42 - v41;
          v44 = v51;
LABEL_52:
          if (v44)
          {
            goto LABEL_112;
          }

          v57 = &v21[16 * v38];
          v59 = *v57;
          v58 = *(v57 + 1);
          v60 = __OFSUB__(v58, v59);
          v61 = v58 - v59;
          v62 = v60;
          if (v60)
          {
            goto LABEL_115;
          }

          v63 = &v21[16 * a3 + 32];
          v65 = *v63;
          v64 = *(v63 + 1);
          v51 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v51)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v61, v66))
          {
            goto LABEL_119;
          }

          if (v61 + v66 >= v43)
          {
            if (v43 < v66)
            {
              a3 = v38 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v67 = &v21[16 * v38];
        v69 = *v67;
        v68 = *(v67 + 1);
        v51 = __OFSUB__(v68, v69);
        v61 = v68 - v69;
        v62 = v51;
LABEL_66:
        if (v62)
        {
          goto LABEL_114;
        }

        v70 = &v21[16 * a3];
        v72 = *(v70 + 4);
        v71 = *(v70 + 5);
        v51 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v51)
        {
          goto LABEL_117;
        }

        if (v73 < v61)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = a3 - 1;
        if (a3 - 1 >= v38)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v110)
        {
          goto LABEL_130;
        }

        v78 = v21;
        v79 = *&v21[16 * a4 + 32];
        v80 = *&v21[16 * a3 + 40];
        sub_100354778(*v110 + *(v108 + 72) * v79, *v110 + *(v108 + 72) * *&v21[16 * a3 + 32], *v110 + *(v108 + 72) * v80, v40);
        if (v5)
        {
        }

        if (v80 < v79)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v78 = sub_1001A99A4(v78);
        }

        if (a4 >= *(v78 + 2))
        {
          goto LABEL_109;
        }

        v81 = &v78[16 * a4];
        *(v81 + 4) = v79;
        *(v81 + 5) = v80;
        v113 = v78;
        result = sub_1001A9918(a3);
        v21 = v113;
        v38 = *(v113 + 16);
        if (v38 <= 1)
        {
          goto LABEL_3;
        }
      }

      v45 = &v21[16 * v38 + 32];
      v46 = *(v45 - 64);
      v47 = *(v45 - 56);
      v51 = __OFSUB__(v47, v46);
      v48 = v47 - v46;
      if (v51)
      {
        goto LABEL_110;
      }

      v50 = *(v45 - 48);
      v49 = *(v45 - 40);
      v51 = __OFSUB__(v49, v50);
      v43 = v49 - v50;
      v44 = v51;
      if (v51)
      {
        goto LABEL_111;
      }

      v52 = &v21[16 * v38];
      v54 = *v52;
      v53 = *(v52 + 1);
      v51 = __OFSUB__(v53, v54);
      v55 = v53 - v54;
      if (v51)
      {
        goto LABEL_113;
      }

      v51 = __OFADD__(v43, v55);
      v56 = v43 + v55;
      if (v51)
      {
        goto LABEL_116;
      }

      if (v56 >= v48)
      {
        v74 = &v21[16 * a3 + 32];
        v76 = *v74;
        v75 = *(v74 + 1);
        v51 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v51)
        {
          goto LABEL_120;
        }

        if (v43 < v77)
        {
          a3 = v38 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = v110[1];
    v20 = v104;
    a4 = v99;
    if (v104 >= v19)
    {
      goto LABEL_95;
    }
  }

  v82 = v22;
  v83 = *v110;
  v84 = *(v108 + 72);
  v85 = *v110 + v84 * (v19 - 1);
  v86 = v19;
  v87 = -v84;
  v97 = v5;
  v98 = v82;
  v88 = v82 - v86;
  v107 = v86;
  v101 = v84;
  v89 = v83 + v86 * v84;
  v104 = a3;
LABEL_85:
  v105 = v89;
  v106 = v88;
  v90 = v89;
  v109 = v85;
  v91 = v85;
  while (1)
  {
    sub_10002E710(v90, v18);
    sub_10002E710(v91, v15);
    a4 = Date.isAfter(date:)();
    sub_10002E870(v15);
    result = sub_10002E870(v18);
    if ((a4 & 1) == 0)
    {
LABEL_84:
      v85 = v109 + v101;
      v88 = v106 - 1;
      a3 = v104;
      v89 = v105 + v101;
      if (++v107 != v104)
      {
        goto LABEL_85;
      }

      v5 = v97;
      v22 = v98;
      if (v104 < v98)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v83)
    {
      break;
    }

    a4 = v111;
    sub_100042910(v90, v111);
    swift_arrayInitWithTakeFrontToBack();
    sub_100042910(a4, v91);
    v91 += v87;
    v90 += v87;
    if (__CFADD__(v88++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

void sub_100353DC0(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v141 = a4;
  v142 = a1;
  v154 = type metadata accessor for Date();
  v8 = __chkstk_darwin(v154);
  v151 = &v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v136 - v11;
  v13 = __chkstk_darwin(v10);
  v146 = &v136 - v14;
  v15 = __chkstk_darwin(v13);
  v147 = &v136 - v16;
  v17 = __chkstk_darwin(v15);
  v139 = &v136 - v18;
  __chkstk_darwin(v17);
  v149 = a3;
  v21 = a3[1];
  if (v21 >= 1)
  {
    v138 = &v136 - v20;
    v22 = 0;
    v153 = (v19 + 8);
    v23 = &_swiftEmptyArrayStorage;
    p_ivars = 0x1008B4000;
    v155 = v12;
    while (1)
    {
      if (v22 + 1 >= v21)
      {
        v39 = v22 + 1;
        v53 = v141;
      }

      else
      {
        v150 = v21;
        v140 = v23;
        v25 = *v149;
        v26 = *(*v149 + 16 * (v22 + 1));
        v143 = v22;
        v145 = 16 * v22;
        v27 = *(v25 + 16 * v22);
        v28 = v26;
        v29 = v27;
        v30 = [v28 *(p_ivars + 3408)];
        if (!v30)
        {
          goto LABEL_137;
        }

        v31 = v30;
        v156 = v28;
        v32 = v138;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v33 = [v29 *(p_ivars + 3408)];
        if (!v33)
        {
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        v34 = v33;
        v35 = v139;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        LODWORD(v152) = static Date.> infix(_:_:)();
        v36 = v154;
        v37 = *v153;
        (*v153)(v35, v154);
        v148 = v37;
        v37(v32, v36);

        v38 = v143 + 2;
        v5 = v25 + v145 + 32;
        while (1)
        {
          v39 = v150;
          if (v150 == v38)
          {
            break;
          }

          v40 = *(v5 - 16);
          v41 = *v5;
          v42 = v40;
          v43 = [v41 completedDate];
          if (!v43)
          {
            goto LABEL_132;
          }

          v44 = v43;
          v45 = v147;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v46 = [v42 completedDate];
          if (!v46)
          {
            goto LABEL_131;
          }

          v47 = v46;
          v48 = v146;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          LOBYTE(v156) = static Date.> infix(_:_:)() & 1;
          LODWORD(v156) = v156;
          v49 = v48;
          v50 = v45;
          v51 = v154;
          v52 = v148;
          v148(v49, v154);
          v52(v50, v51);

          ++v38;
          v5 += 16;
          v12 = v155;
          if ((v152 & 1) != v156)
          {
            v39 = v38 - 1;
            break;
          }
        }

        p_ivars = 0x1008B4000;
        v23 = v140;
        v53 = v141;
        v22 = v143;
        v54 = v145;
        if (v152)
        {
          if (v39 < v143)
          {
            goto LABEL_124;
          }

          if (v143 < v39)
          {
            v55 = 0;
            v56 = 16 * v39;
            v57 = v143;
            do
            {
              if (v57 != v39 + v55 - 1)
              {
                v58 = *v149;
                if (!*v149)
                {
                  goto LABEL_134;
                }

                v59 = (v58 + v54);
                v60 = v58 + v56;
                v61 = *v59;
                v62 = v59[1];
                *v59 = *(v60 - 16);
                *(v60 - 16) = v61;
                *(v60 - 8) = v62;
              }

              ++v57;
              --v55;
              v56 -= 16;
              v54 += 16;
            }

            while (v57 < v39 + v55);
          }
        }
      }

      v63 = v149[1];
      if (v39 < v63)
      {
        if (__OFSUB__(v39, v22))
        {
          goto LABEL_123;
        }

        if (v39 - v22 < v53)
        {
          if (__OFADD__(v22, v53))
          {
            goto LABEL_125;
          }

          if (v22 + v53 < v63)
          {
            v63 = v22 + v53;
          }

          if (v63 < v22)
          {
LABEL_126:
            __break(1u);
            goto LABEL_127;
          }

          if (v39 != v63)
          {
            v143 = v22;
            v144 = v63;
            v140 = v23;
            v137 = v6;
            v152 = *v149;
            v64 = v152 + 16 * v39 - 16;
            v65 = v22 - v39;
            do
            {
              v150 = v39;
              v66 = *(v152 + 16 * v39);
              v145 = v65;
              v67 = v65;
              v148 = v64;
              while (1)
              {
                v68 = *v64;
                v69 = v66;
                v70 = v68;
                v71 = [v69 *(p_ivars + 3408)];
                if (!v71)
                {
                  goto LABEL_129;
                }

                v72 = v71;
                static Date._unconditionallyBridgeFromObjectiveC(_:)();

                v73 = [v70 *(p_ivars + 3408)];
                if (!v73)
                {
                  __break(1u);
LABEL_129:
                  __break(1u);
LABEL_130:
                  __break(1u);
LABEL_131:
                  __break(1u);
LABEL_132:
                  __break(1u);
LABEL_133:
                  __break(1u);
LABEL_134:
                  __break(1u);
LABEL_135:
                  __break(1u);
LABEL_136:
                  __break(1u);
LABEL_137:
                  __break(1u);
                  goto LABEL_138;
                }

                v74 = v73;
                v156 = v69;
                v5 = v67;
                v75 = v151;
                static Date._unconditionallyBridgeFromObjectiveC(_:)();

                LOBYTE(v74) = static Date.> infix(_:_:)();
                v76 = v12;
                v77 = *v153;
                v78 = v75;
                v79 = v154;
                (*v153)(v78, v154);
                v77(v76, v79);

                if ((v74 & 1) == 0)
                {
                  break;
                }

                if (!v152)
                {
                  goto LABEL_130;
                }

                v66 = *(v64 + 16);
                v80 = *(v64 + 24);
                *(v64 + 16) = *v64;
                *v64 = v66;
                *(v64 + 8) = v80;
                v64 -= 16;
                ++v67;
                v12 = v155;
                p_ivars = 0x1008B4000;
                if (v5 == -1)
                {
                  goto LABEL_32;
                }
              }

              v12 = v155;
              p_ivars = &ResourceBundleClass.ivars;
LABEL_32:
              v39 = v150 + 1;
              v64 = v148 + 16;
              v65 = v145 - 1;
            }

            while (v150 + 1 != v144);
            v6 = v137;
            v23 = v140;
            v22 = v143;
            v39 = v144;
          }
        }
      }

      if (v39 < v22)
      {
        goto LABEL_122;
      }

      v144 = v39;
      v81 = v23;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v23 = v81;
      }

      else
      {
        v23 = sub_1001A1D54(0, *(v81 + 2) + 1, 1, v81);
      }

      v83 = *(v23 + 2);
      v82 = *(v23 + 3);
      v84 = v83 + 1;
      if (v83 >= v82 >> 1)
      {
        v23 = sub_1001A1D54((v82 > 1), v83 + 1, 1, v23);
      }

      *(v23 + 2) = v84;
      v85 = &v23[16 * v83];
      v86 = v144;
      *(v85 + 4) = v22;
      *(v85 + 5) = v86;
      v87 = *v142;
      if (!*v142)
      {
        goto LABEL_136;
      }

      if (v83)
      {
        while (1)
        {
          v5 = v84 - 1;
          if (v84 >= 4)
          {
            break;
          }

          if (v84 == 3)
          {
            v88 = *(v23 + 4);
            v89 = *(v23 + 5);
            v98 = __OFSUB__(v89, v88);
            v90 = v89 - v88;
            v91 = v98;
LABEL_61:
            if (v91)
            {
              goto LABEL_111;
            }

            v104 = &v23[16 * v84];
            v106 = *v104;
            v105 = *(v104 + 1);
            v107 = __OFSUB__(v105, v106);
            v108 = v105 - v106;
            v109 = v107;
            if (v107)
            {
              goto LABEL_114;
            }

            v110 = &v23[16 * v5 + 32];
            v112 = *v110;
            v111 = *(v110 + 1);
            v98 = __OFSUB__(v111, v112);
            v113 = v111 - v112;
            if (v98)
            {
              goto LABEL_117;
            }

            if (__OFADD__(v108, v113))
            {
              goto LABEL_118;
            }

            if (v108 + v113 >= v90)
            {
              if (v90 < v113)
              {
                v5 = v84 - 2;
              }

              goto LABEL_82;
            }

            goto LABEL_75;
          }

          v114 = &v23[16 * v84];
          v116 = *v114;
          v115 = *(v114 + 1);
          v98 = __OFSUB__(v115, v116);
          v108 = v115 - v116;
          v109 = v98;
LABEL_75:
          if (v109)
          {
            goto LABEL_113;
          }

          v117 = &v23[16 * v5];
          v119 = *(v117 + 4);
          v118 = *(v117 + 5);
          v98 = __OFSUB__(v118, v119);
          v120 = v118 - v119;
          if (v98)
          {
            goto LABEL_116;
          }

          if (v120 < v108)
          {
            goto LABEL_3;
          }

LABEL_82:
          v125 = v5 - 1;
          if (v5 - 1 >= v84)
          {
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
            goto LABEL_126;
          }

          if (!*v149)
          {
            goto LABEL_133;
          }

          v126 = v23;
          v127 = *&v23[16 * v125 + 32];
          v128 = *&v23[16 * v5 + 40];
          sub_100354C3C((*v149 + 16 * v127), (*v149 + 16 * *&v23[16 * v5 + 32]), (*v149 + 16 * v128), v87);
          if (v6)
          {
            goto LABEL_105;
          }

          if (v128 < v127)
          {
            goto LABEL_107;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v129 = v126;
          }

          else
          {
            v129 = sub_1001A99A4(v126);
          }

          v12 = v155;
          if (v125 >= *(v129 + 2))
          {
            goto LABEL_108;
          }

          v130 = &v129[16 * v125];
          *(v130 + 4) = v127;
          *(v130 + 5) = v128;
          v157 = v129;
          sub_1001A9918(v5);
          v23 = v157;
          v84 = *(v157 + 2);
          if (v84 <= 1)
          {
            goto LABEL_3;
          }
        }

        v92 = &v23[16 * v84 + 32];
        v93 = *(v92 - 64);
        v94 = *(v92 - 56);
        v98 = __OFSUB__(v94, v93);
        v95 = v94 - v93;
        if (v98)
        {
          goto LABEL_109;
        }

        v97 = *(v92 - 48);
        v96 = *(v92 - 40);
        v98 = __OFSUB__(v96, v97);
        v90 = v96 - v97;
        v91 = v98;
        if (v98)
        {
          goto LABEL_110;
        }

        v99 = &v23[16 * v84];
        v101 = *v99;
        v100 = *(v99 + 1);
        v98 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v98)
        {
          goto LABEL_112;
        }

        v98 = __OFADD__(v90, v102);
        v103 = v90 + v102;
        if (v98)
        {
          goto LABEL_115;
        }

        if (v103 >= v95)
        {
          v121 = &v23[16 * v5 + 32];
          v123 = *v121;
          v122 = *(v121 + 1);
          v98 = __OFSUB__(v122, v123);
          v124 = v122 - v123;
          if (v98)
          {
            goto LABEL_119;
          }

          if (v90 < v124)
          {
            v5 = v84 - 2;
          }

          goto LABEL_82;
        }

        goto LABEL_61;
      }

LABEL_3:
      v21 = v149[1];
      v22 = v144;
      if (v144 >= v21)
      {
        goto LABEL_94;
      }
    }
  }

  v23 = &_swiftEmptyArrayStorage;
LABEL_94:
  v5 = *v142;
  if (*v142)
  {
    p_ivars = v23;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v131 = p_ivars;
    }

    else
    {
LABEL_127:
      v131 = sub_1001A99A4(p_ivars);
    }

    v157 = v131;
    p_ivars = *(v131 + 2);
    if (p_ivars >= 2)
    {
      while (*v149)
      {
        v132 = *&v131[16 * p_ivars];
        v133 = v131;
        v134 = *&v131[16 * p_ivars + 24];
        sub_100354C3C((*v149 + 16 * v132), (*v149 + 16 * *&v131[16 * p_ivars + 16]), (*v149 + 16 * v134), v5);
        if (v6)
        {
          goto LABEL_105;
        }

        if (v134 < v132)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v133 = sub_1001A99A4(v133);
        }

        if (p_ivars - 2 >= *(v133 + 2))
        {
          goto LABEL_121;
        }

        v135 = &v133[16 * p_ivars];
        *v135 = v132;
        *(v135 + 1) = v134;
        v157 = v133;
        sub_1001A9918(p_ivars - 1);
        v131 = v157;
        p_ivars = *(v157 + 2);
        if (p_ivars <= 1)
        {
          goto LABEL_105;
        }
      }

      goto LABEL_135;
    }

LABEL_105:
  }

  else
  {
LABEL_139:
    __break(1u);
  }
}

uint64_t sub_100354778(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v46 = type metadata accessor for ActivitySharingHighlight();
  v8 = __chkstk_darwin(v46);
  v45 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v44 = &v38 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v49 = a1;
  v48 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = a4 + v17;
    if (v17 >= 1)
    {
      v25 = -v13;
      v26 = v24;
      v41 = a1;
      v42 = a4;
      v40 = -v13;
      do
      {
        v38 = v24;
        v27 = a2;
        v28 = a2 + v25;
        v43 = v27;
        while (1)
        {
          if (v27 <= a1)
          {
            v49 = v27;
            v47 = v38;
            goto LABEL_59;
          }

          v30 = a3;
          v39 = v24;
          v31 = a3 + v25;
          v32 = v26 + v25;
          v33 = v44;
          sub_10002E710(v32, v44);
          v34 = v28;
          v35 = v28;
          v36 = v45;
          sub_10002E710(v35, v45);
          v37 = Date.isAfter(date:)();
          sub_10002E870(v36);
          sub_10002E870(v33);
          if (v37)
          {
            break;
          }

          v24 = v32;
          a3 = v31;
          if (v30 < v26 || v31 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
            v28 = v34;
          }

          else
          {
            v28 = v34;
            if (v30 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v26 = v32;
          a1 = v41;
          v29 = v32 > v42;
          v25 = v40;
          v27 = v43;
          if (!v29)
          {
            a2 = v43;
            goto LABEL_58;
          }
        }

        a3 = v31;
        if (v30 < v43 || v31 >= v43)
        {
          a2 = v34;
          swift_arrayInitWithTakeFrontToBack();
          v24 = v39;
          v25 = v40;
        }

        else
        {
          a2 = v34;
          v24 = v39;
          v25 = v40;
          if (v30 != v43)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v41;
      }

      while (v26 > v42);
    }

LABEL_58:
    v49 = a2;
    v47 = v24;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v43 = a4 + v16;
    v47 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        v19 = a1;
        v20 = v44;
        sub_10002E710(a2, v44);
        v21 = v45;
        sub_10002E710(a4, v45);
        v22 = Date.isAfter(date:)();
        sub_10002E870(v21);
        sub_10002E870(v20);
        if (v22)
        {
          v23 = v19;
          if (v19 < a2 || v19 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v13;
          }

          else
          {
            if (v19 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v13;
          }
        }

        else
        {
          v23 = v19;
          if (v19 < a4 || v19 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v48 = a4 + v13;
          a4 += v13;
        }

        a1 = v23 + v13;
        v49 = a1;
      }

      while (a4 < v43 && a2 < a3);
    }
  }

LABEL_59:
  sub_1004AB9F4(&v49, &v48, &v47);
  return 1;
}

uint64_t sub_100354C3C(void **a1, void **a2, char *a3, void **a4)
{
  v63 = type metadata accessor for Date();
  v8 = *(v63 - 8);
  v9 = __chkstk_darwin(v63);
  v59 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v61 = (&v56 - v12);
  v13 = __chkstk_darwin(v11);
  v58 = &v56 - v14;
  __chkstk_darwin(v13);
  v60 = (&v56 - v15);
  v16 = a2 - a1 + 15;
  if (a2 - a1 >= 0)
  {
    v16 = a2 - a1;
  }

  v17 = v16 >> 4;
  v18 = a3 - a2 + 15;
  if (a3 - a2 >= 0)
  {
    v18 = a3 - a2;
  }

  v19 = v18 >> 4;
  if (v17 >= v18 >> 4)
  {
    if (a4 != a2 || &a2[2 * v19] <= a4)
    {
      memmove(a4, a2, 16 * v19);
    }

    v65 = &a4[2 * v19];
    if (a3 - a2 >= 16 && a2 > a1)
    {
      v58 = (v8 + 8);
      p_ivars = (&ResourceBundleClass + 48);
      v57 = a1;
LABEL_28:
      v62 = a2;
      v38 = a2 - 2;
      v39 = (a3 - 16);
      v40 = v65;
      v60 = a2 - 2;
      while (1)
      {
        v64 = v39;
        v41 = *(v40 - 2);
        v40 -= 2;
        v42 = *v38;
        v43 = v41;
        v44 = v42;
        result = [v43 p_ivars[426]];
        if (!result)
        {
          goto LABEL_47;
        }

        v45 = result;
        v46 = a4;
        v47 = v61;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        result = [v44 p_ivars[426]];
        if (!result)
        {
          goto LABEL_48;
        }

        v48 = result;
        v49 = v59;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v48) = static Date.> infix(_:_:)();
        v50 = *v58;
        v51 = v49;
        v52 = v63;
        (*v58)(v51, v63);
        v50(v47, v52);

        if (v48)
        {
          a3 = v64;
          a4 = v46;
          v54 = v57;
          v55 = v60;
          if (v64 + 2 != v62)
          {
            *v64 = *v60;
          }

          p_ivars = (&ResourceBundleClass + 48);
          if (v65 <= v46 || (a2 = v55, v55 <= v54))
          {
            a2 = v55;
            break;
          }

          goto LABEL_28;
        }

        v53 = v64;
        a4 = v46;
        v38 = v60;
        if (v64 + 2 != v65)
        {
          *v64 = *v40;
        }

        v39 = v53 - 2;
        v65 = v40;
        p_ivars = &ResourceBundleClass.ivars;
        if (v40 <= v46)
        {
          v65 = v40;
          a2 = v62;
          break;
        }
      }
    }

LABEL_41:
    if (a2 != a4 || a2 >= (a4 + ((v65 - a4 + (v65 - a4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0)))
    {
      memmove(a2, a4, 16 * ((v65 - a4) / 16));
    }

    return 1;
  }

  if (a4 != a1 || &a1[2 * v17] <= a4)
  {
    memmove(a4, a1, 16 * v17);
  }

  v65 = &a4[2 * v17];
  if (a2 - a1 < 16 || (v20 = a2, a2 >= a3))
  {
LABEL_21:
    a2 = a1;
    goto LABEL_41;
  }

  v59 = (v8 + 8);
  v21 = &ResourceBundleClass.ivars;
  v64 = a3;
  while (1)
  {
    v61 = a4;
    v62 = v20;
    v22 = *a4;
    v23 = *v20;
    v24 = v22;
    result = [v23 v21[426]];
    if (!result)
    {
      break;
    }

    v26 = result;
    v27 = a1;
    v28 = v60;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = v21;
    result = [v24 v21[426]];
    if (!result)
    {
      goto LABEL_46;
    }

    v30 = result;
    v31 = v58;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v30) = static Date.> infix(_:_:)();
    v32 = *v59;
    v33 = v31;
    v34 = v63;
    (*v59)(v33, v63);
    v32(v28, v34);

    if (v30)
    {
      a4 = v61;
      v35 = v62;
      v36 = v62;
      v20 = v62 + 2;
    }

    else
    {
      v35 = v61;
      v20 = v62;
      v36 = v61;
      a4 = v61 + 2;
    }

    if (v27 != v35)
    {
      *v27 = *v36;
    }

    a1 = v27 + 2;
    if (a4 < v65)
    {
      v21 = v29;
      if (v20 < v64)
      {
        continue;
      }
    }

    goto LABEL_21;
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_10035513C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BBC0;

  return sub_10035321C(a1, v4, v5, v6);
}

void sub_1003551F0()
{
  v1 = *(v0 + OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_isWheelchair);
  v2 = objc_opt_self();
  v3 = &selRef_wheelchairSpriteSheet;
  if (!v1)
  {
    v3 = &selRef_defaultSpriteSheet;
  }

  v8 = [v2 *v3];
  v4 = *(v0 + OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_isPaused);
  v5 = *(v0 + OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_ringsView);
  v6 = [v5 ringGroup];
  v7 = v6;
  if (v4 == 1)
  {
    [v6 setSpriteSheet:0];
  }

  else
  {
    [v6 setSpriteSheet:v8];

    v7 = [v5 ringGroup];
    [v7 playSpriteAnimation];
  }
}

void sub_1003552F8()
{
  v0 = [objc_allocWithZone(NSDateFormatter) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setLocalizedDateFormatFromTemplate:v1];

  qword_1008EA000 = v0;
}

char *sub_100355368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *&v3[OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_activitySummary] = 0;
  *&v3[OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_pauseRingsCoordinator] = 0;
  v3[OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_isPaused] = 0;
  *&v3[OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_layoutConstraints] = _swiftEmptyArrayStorage;
  v5 = OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_pauseRingsLabelsView;
  v6 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v7 = UIView.forAutoLayout()();

  *&v4[v5] = v7;
  v8 = OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_pauseRingsDescriptionLabel;
  v9 = [objc_allocWithZone(UILabel) init];
  v10 = objc_opt_self();
  v11 = [v10 labelColor];
  v12 = UILabel.withTextColor(_:)();

  [v12 setLineBreakMode:0];
  [v12 setNumberOfLines:0];
  sub_1000059F8(0, &qword_1008F73C0);
  v40 = 1;
  v13 = static UIFont.preferredFont(forTextStyle:design:symbolicTraits:weight:compatibleWith:)();
  v14 = UILabel.withFont(_:)();

  [v14 setTextAlignment:1];
  v15 = v14;
  [v15 setHidden:1];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  *&v4[v8] = v15;
  v16 = OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_pauseRingsResumeDateLabel;
  v17 = [objc_allocWithZone(UILabel) init];
  v18 = [v10 secondaryLabelColor];
  v19 = UILabel.withTextColor(_:)();

  [v19 setLineBreakMode:0];
  [v19 setNumberOfLines:0];
  v20 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
  v21 = UILabel.withFont(_:)();

  [v21 setTextAlignment:1];
  v22 = v21;
  [v22 setHidden:1];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];

  *&v4[v16] = v22;
  *&v4[OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_diameterScreenRatio] = 0x3FE596DE8CA11BFDLL;
  *&v4[OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_margin] = 0x402E000000000000;
  v4[OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_isWheelchair] = 0;
  v23 = [objc_opt_self() activityRingGroupForRingType:3];
  v24 = [v23 forCompanion];

  v25 = [objc_allocWithZone(ARUIRingsView) initWithRingGroup:v24];
  v26 = OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_ringsView;
  *&v4[OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_ringsView] = v25;
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
  v27 = *&v4[v26];
  v28 = [v10 systemBackgroundColor];
  [v27 setBackgroundColor:v28];

  if (a3)
  {
    v29 = String._bridgeToObjectiveC()();
  }

  else
  {
    v29 = 0;
  }

  v39.receiver = v4;
  v39.super_class = type metadata accessor for DayViewActivityRingsTableViewCell();
  v30 = objc_msgSendSuper2(&v39, "initWithStyle:reuseIdentifier:", a1, v29);

  v31 = v30;
  v32 = [v10 systemBackgroundColor];
  [v31 setBackgroundColor:v32];

  [v31 setSeparatorStyle:0];
  v33 = [v31 contentView];
  [v33 addSubview:*&v31[OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_ringsView]];

  v34 = OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_pauseRingsLabelsView;
  [*&v31[OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_pauseRingsLabelsView] addSubview:*&v31[OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_pauseRingsDescriptionLabel]];
  [*&v31[v34] addSubview:*&v31[OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_pauseRingsResumeDateLabel]];
  v35 = [v31 contentView];

  [v35 addSubview:*&v31[v34]];
  sub_1003558FC();

  return v31;
}

void sub_1003558FC()
{
  v1 = v0;
  v2 = [objc_opt_self() mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v47.origin.x = v4;
  v47.origin.y = v6;
  v47.size.width = v8;
  v47.size.height = v10;
  CGRectGetWidth(v47);
  UIRoundToViewScale();
  v12 = v11;
  v13 = *&v0[OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_ringsView];
  v14 = ARUIRingsView.withRingGroupDiameter(_:)();
  v15 = objc_opt_self();
  [v15 preferredActivityRingThicknessForDiameter:v12];
  v16 = ARUIRingsView.withRingGroupThickness(_:)();

  [v15 preferredActivityRingInterspacingForDiameter:v12];
  v17 = [v13 centerXAnchor];
  v18 = [v1 contentView];
  v19 = [v18 centerXAnchor];

  v44 = [v17 constraintEqualToAnchor:v19];
  v20 = [v13 heightAnchor];
  v21 = [v20 constraintEqualToConstant:v12 + 2.0];

  LODWORD(v22) = 1148829696;
  [v21 setPriority:v22];
  v23 = [v13 widthAnchor];
  v24 = [v13 heightAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  v26 = [v13 topAnchor];
  v27 = [v1 contentView];
  v28 = [v27 topAnchor];

  v29 = [v26 constraintEqualToAnchor:v28 constant:18.0];
  v30 = [v13 bottomAnchor];
  v31 = [v1 contentView];
  v32 = [v31 bottomAnchor];

  v33 = [v30 constraintEqualToAnchor:v32 constant:-15.0];
  v43 = objc_opt_self();
  v34 = OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_layoutConstraints;
  v35 = v1;
  sub_1000059F8(0, &qword_1008DC980);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v43 deactivateConstraints:isa];

  sub_100140278(&unk_1008E4E20);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1006D9810;
  *(v37 + 32) = v44;
  *(v37 + 40) = v29;
  *(v37 + 48) = v33;
  *(v37 + 56) = v21;
  *(v37 + 64) = v25;
  *&v35[v34] = v37;
  v38 = v44;
  v39 = v29;
  v40 = v33;
  v41 = v21;
  v42 = v25;

  v45 = Array._bridgeToObjectiveC()().super.isa;

  [v43 activateConstraints:v45];
}

void sub_100355D90()
{
  v1 = v0;
  v2 = [objc_opt_self() mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v107.origin.x = v4;
  v107.origin.y = v6;
  v107.size.width = v8;
  v107.size.height = v10;
  CGRectGetWidth(v107);
  UIRoundToViewScale();
  v12 = v11;
  v13 = *&v0[OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_ringsView];
  v14 = ARUIRingsView.withRingGroupDiameter(_:)();
  v15 = objc_opt_self();
  [v15 preferredActivityRingThicknessForDiameter:v12];
  v16 = ARUIRingsView.withRingGroupThickness(_:)();

  [v15 preferredActivityRingInterspacingForDiameter:v12];
  v17 = [v13 centerXAnchor];
  v18 = [v1 contentView];
  v19 = [v18 centerXAnchor];

  v94 = [v17 constraintEqualToAnchor:v19];
  v20 = [v13 centerYAnchor];
  v21 = [v1 contentView];
  v22 = [v21 centerYAnchor];

  v92 = [v20 constraintEqualToAnchor:v22];
  v23 = [v13 heightAnchor];
  v90 = [v23 constraintGreaterThanOrEqualToConstant:v12 + 2.0];

  LODWORD(v24) = 1148829696;
  [v90 setPriority:v24];
  v25 = [v13 widthAnchor];
  v26 = [v13 heightAnchor];
  v88 = [v25 constraintEqualToAnchor:v26];

  v27 = [v13 topAnchor];
  v28 = [v1 contentView];
  v29 = [v28 topAnchor];

  v86 = [v27 constraintEqualToAnchor:v29 constant:20.0];
  v30 = [v13 bottomAnchor];
  v31 = [v1 contentView];
  v32 = [v31 bottomAnchor];

  v84 = [v30 constraintLessThanOrEqualToAnchor:v32 constant:-20.0];
  v33 = *&v1[OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_pauseRingsLabelsView];
  v34 = [v33 centerXAnchor];
  v35 = [v1 contentView];
  v36 = [v35 centerXAnchor];

  v82 = [v34 constraintEqualToAnchor:v36];
  v37 = [v33 centerYAnchor];
  v38 = [v1 contentView];
  v39 = [v38 centerYAnchor];

  v80 = [v37 constraintEqualToAnchor:v39];
  v40 = [v33 widthAnchor];
  v41 = [v1 contentView];
  v42 = [v41 widthAnchor];

  v79 = [v40 constraintEqualToAnchor:v42 multiplier:0.5];
  v43 = [v33 bottomAnchor];
  v44 = [v1 contentView];
  v45 = [v44 topAnchor];

  v78 = [v43 constraintGreaterThanOrEqualToAnchor:v45 constant:20.0];
  v46 = [v33 bottomAnchor];
  v47 = [v1 contentView];
  v48 = [v47 bottomAnchor];

  v104 = [v46 constraintLessThanOrEqualToAnchor:v48 constant:-20.0];
  v49 = *&v1[OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_pauseRingsDescriptionLabel];
  v50 = [v49 topAnchor];
  v51 = [v33 topAnchor];
  v103 = [v50 constraintEqualToAnchor:v51];

  v52 = [v49 leadingAnchor];
  v53 = [v33 leadingAnchor];
  v102 = [v52 constraintEqualToAnchor:v53];

  v54 = [v49 trailingAnchor];
  v55 = [v33 trailingAnchor];
  v101 = [v54 constraintEqualToAnchor:v55];

  v56 = *&v1[OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_pauseRingsResumeDateLabel];
  v57 = [v56 topAnchor];
  v58 = [v49 bottomAnchor];
  v100 = [v57 constraintEqualToAnchor:v58 constant:6.0];

  v59 = [v56 leadingAnchor];
  v60 = [v33 leadingAnchor];
  v99 = [v59 constraintEqualToAnchor:v60];

  v61 = [v56 trailingAnchor];
  v62 = [v33 trailingAnchor];
  v98 = [v61 constraintEqualToAnchor:v62];

  v63 = [v56 bottomAnchor];
  v64 = [v33 bottomAnchor];
  v97 = [v63 constraintEqualToAnchor:v64];

  v77 = objc_opt_self();
  v96 = OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_layoutConstraints;
  sub_1000059F8(0, &qword_1008DC980);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v77 deactivateConstraints:isa];

  sub_100140278(&unk_1008E4E20);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1006EAFA0;
  *(v66 + 32) = v94;
  *(v66 + 40) = v92;
  *(v66 + 48) = v86;
  *(v66 + 56) = v90;
  *(v66 + 64) = v88;
  *(v66 + 72) = v84;
  *(v66 + 80) = v82;
  *(v66 + 88) = v80;
  *(v66 + 96) = v79;
  *(v66 + 104) = v78;
  *(v66 + 112) = v104;
  *(v66 + 120) = v103;
  *(v66 + 128) = v102;
  *(v66 + 136) = v101;
  *(v66 + 144) = v100;
  *(v66 + 152) = v99;
  *(v66 + 160) = v98;
  *(v66 + 168) = v97;
  *&v1[v96] = v66;
  v76 = v94;
  v93 = v92;
  v95 = v86;
  v87 = v90;
  v75 = v88;
  v91 = v84;
  v89 = v82;
  v85 = v80;
  v83 = v79;
  v67 = v78;
  v81 = v104;
  v68 = v103;
  v69 = v102;
  v70 = v101;
  v71 = v100;
  v72 = v99;
  v73 = v98;
  v74 = v97;

  v105.super.isa = Array._bridgeToObjectiveC()().super.isa;

  [v77 activateConstraints:v105.super.isa];
}

void sub_10035689C(uint64_t a1, void *a2, void *a3, uint64_t a4, char a5)
{
  v6 = v5;
  v55 = type metadata accessor for Date();
  v52 = *(v55 - 8);
  __chkstk_darwin(v55);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v54 = &v48 - v14;
  v15 = OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_activitySummary;
  v16 = *(v5 + OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_activitySummary);
  *(v5 + OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_activitySummary) = a2;
  v17 = a2;

  v18 = *(v6 + OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_pauseRingsCoordinator);
  *(v6 + OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_pauseRingsCoordinator) = a3;
  v19 = a3;

  if (a2)
  {
    v20 = [v19 isPausedForActivitySummary:v17];
    *(v6 + OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_isPaused) = v20;
    v21 = v17;
    if (v20)
    {
      goto LABEL_3;
    }

LABEL_11:
    [*(v6 + OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_pauseRingsDescriptionLabel) setHidden:1];
    [*(v6 + OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_pauseRingsResumeDateLabel) setHidden:1];
    sub_1003558FC();
    v42 = OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_isPaused;
    if (!a2)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v41 = [v19 isPausedForActivitySummaryCacheIndex:a1];
  *(v6 + OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_isPaused) = v41;
  v21 = v17;
  if ((v41 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  v51 = v21;
  v53 = v15;
  v22 = *(v6 + OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_pauseRingsDescriptionLabel);
  [v22 setHidden:0];
  if ((a5 & 1) == 0)
  {
    [*(v6 + OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_pauseRingsResumeDateLabel) setHidden:1];
    v43 = [objc_opt_self() mainBundle];
    v44 = String._bridgeToObjectiveC()();

    v45 = [v43 localizedStringForKey:v44 value:0 table:0];

    if (!v45)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = String._bridgeToObjectiveC()();
    }

    [v22 setText:v45];
    goto LABEL_16;
  }

  v50 = objc_opt_self();
  v23 = [v50 mainBundle];
  v24 = String._bridgeToObjectiveC()();

  v25 = [v23 localizedStringForKey:v24 value:0 table:0];

  if (!v25)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = String._bridgeToObjectiveC()();
  }

  [v22 setText:v25];
  v26 = [v19 resumeDate];
  v15 = v53;
  v27 = v55;
  if (v26)
  {
    v28 = v26;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = v52;
    (*(v52 + 32))(v54, v12, v27);
    if (qword_1008DA950 != -1)
    {
      swift_once();
    }

    v30 = qword_1008EA000;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v32 = [v30 stringFromDate:isa];

    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35 = *(v6 + OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_pauseRingsResumeDateLabel);
    [v35 setHidden:0];
    v36 = [v50 mainBundle];
    v37 = String._bridgeToObjectiveC()();
    v38 = [v36 localizedStringForKey:v37 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100140278(&unk_1008E4E50);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1006D46C0;
    *(v39 + 56) = &type metadata for String;
    *(v39 + 64) = sub_10000A788();
    *(v39 + 32) = v49;
    *(v39 + 40) = v34;
    String.init(format:_:)();

    v40 = String._bridgeToObjectiveC()();

    [v35 setText:v40];

    (*(v29 + 8))(v54, v55);
LABEL_16:
    v15 = v53;
  }

  sub_100355D90();
  v21 = v51;
  v42 = OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_isPaused;
  if (a2)
  {
LABEL_18:
    [v21 setDeprecatedPauseForInternalSwiftClient:*(v6 + v42)];
  }

LABEL_19:
  v46 = *(v6 + OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_ringsView);
  [v46 hk_configureWithActivitySummary:*(v6 + v15) animated:1];
  v47 = [v46 ringGroup];
  [v47 setIsPaused:*(v6 + v42)];
}

uint64_t sub_100356F00(void *a1)
{
  v2 = v1;
  v24 = OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_activitySummary;
  *(v1 + OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_activitySummary) = 0;
  v25 = OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_pauseRingsCoordinator;
  *(v1 + OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_pauseRingsCoordinator) = 0;
  *(v1 + OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_isPaused) = 0;
  *(v1 + OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_layoutConstraints) = _swiftEmptyArrayStorage;
  v3 = OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_pauseRingsLabelsView;
  v22 = OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_pauseRingsLabelsView;
  v4 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = UIView.forAutoLayout()();

  *(v2 + v3) = v5;
  v6 = OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_pauseRingsDescriptionLabel;
  v7 = [objc_allocWithZone(UILabel) init];
  v8 = objc_opt_self();
  v9 = [v8 labelColor];
  v10 = UILabel.withTextColor(_:)();

  [v10 setLineBreakMode:0];
  [v10 setNumberOfLines:0];
  sub_1000059F8(0, &qword_1008F73C0);
  v11 = static UIFont.preferredFont(forTextStyle:design:symbolicTraits:weight:compatibleWith:)();
  v12 = UILabel.withFont(_:)();

  [v12 setTextAlignment:1];
  v13 = v12;
  [v13 setHidden:1];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

  *(v2 + v6) = v13;
  v14 = OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_pauseRingsResumeDateLabel;
  v15 = [objc_allocWithZone(UILabel) init];
  v16 = [v8 secondaryLabelColor];
  v17 = UILabel.withTextColor(_:)();

  [v17 setLineBreakMode:0];
  [v17 setNumberOfLines:0];
  v18 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
  v19 = UILabel.withFont(_:)();

  [v19 setTextAlignment:1];
  v20 = v19;
  [v20 setHidden:1];
  [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

  *(v2 + v14) = v20;
  *(v2 + OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_diameterScreenRatio) = 0x3FE596DE8CA11BFDLL;
  *(v2 + OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_margin) = 0x402E000000000000;
  *(v2 + OBJC_IVAR____TtC10FitnessApp33DayViewActivityRingsTableViewCell_isWheelchair) = 0;

  type metadata accessor for DayViewActivityRingsTableViewCell();
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_1003572CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DayViewActivityRingsTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003573D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepingSampleSingleMetricChartPoint();
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v10 = *(v5 + 72);
    do
    {
      sub_1002326E4(v9, v7);
      if ((static Date.== infix(_:_:)() & 1) != 0 && *&v7[*(v4 + 20)] == *(a1 + *(v4 + 20)))
      {
        v11 = static Color.== infix(_:_:)();
        sub_100232748(v7);
        if (v11)
        {
          return 1;
        }
      }

      else
      {
        sub_100232748(v7);
      }

      v9 += v10;
      --v8;
    }

    while (v8);
  }

  return 0;
}

BOOL sub_100357560(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xE900000000000065;
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  v5 = a1;
  do
  {
    v27 = v3;
    v7 = v3 - 1;
    if (!v3)
    {
      break;
    }

    v8 = *v4;
    if (v8 <= 4)
    {
      v11 = 0xE90000000000006ELL;
      if (v8 == 3)
      {
        v12 = 0x65636E65646163;
      }

      else
      {
        v12 = 0x7265776F70;
      }

      if (v8 == 3)
      {
        v13 = 0xE700000000000000;
      }

      else
      {
        v13 = 0xE500000000000000;
      }

      if (v8 == 2)
      {
        v12 = 0x6F69746176656C65;
      }

      else
      {
        v11 = v13;
      }

      if (*v4)
      {
        v14 = 1701011824;
      }

      else
      {
        v14 = 0x7461527472616568;
      }

      if (*v4)
      {
        v15 = 0xE400000000000000;
      }

      else
      {
        v15 = 0xE900000000000065;
      }

      if (*v4 <= 1u)
      {
        v9 = v14;
      }

      else
      {
        v9 = v12;
      }

      if (*v4 <= 1u)
      {
        v10 = v15;
      }

      else
      {
        v10 = v11;
      }
    }

    else if (*v4 > 7u)
    {
      if (v8 == 8)
      {
        v10 = 0xE500000000000000;
        v9 = 0x6465657073;
      }

      else if (v8 == 9)
      {
        v9 = 0x53676E696C637963;
        v10 = 0xEC00000064656570;
      }

      else
      {
        v9 = 0x43676E696C637963;
        v10 = 0xEE0065636E656461;
      }
    }

    else if (v8 == 5)
    {
      v9 = 0xD000000000000011;
      v10 = 0x80000001007474C0;
    }

    else if (v8 == 6)
    {
      v9 = 0x654C656469727473;
      v10 = 0xEC0000006874676ELL;
    }

    else
    {
      v9 = 0xD000000000000013;
      v10 = 0x80000001007474E0;
    }

    v16 = 0x53676E696C637963;
    if (v5 != 9)
    {
      v16 = 0x43676E696C637963;
    }

    v17 = 0xEE0065636E656461;
    if (v5 == 9)
    {
      v17 = 0xEC00000064656570;
    }

    if (v5 == 8)
    {
      v16 = 0x6465657073;
      v17 = 0xE500000000000000;
    }

    v18 = 0xD000000000000013;
    if (v5 == 6)
    {
      v18 = 0x654C656469727473;
    }

    v19 = 0xEC0000006874676ELL;
    if (v5 != 6)
    {
      v19 = 0x80000001007474E0;
    }

    if (v5 == 5)
    {
      v18 = 0xD000000000000011;
      v19 = 0x80000001007474C0;
    }

    if (v5 <= 7)
    {
      v16 = v18;
      v17 = v19;
    }

    v20 = 0xE90000000000006ELL;
    if (v5 == 3)
    {
      v21 = 0x65636E65646163;
    }

    else
    {
      v21 = 0x7265776F70;
    }

    if (v5 == 3)
    {
      v22 = 0xE700000000000000;
    }

    else
    {
      v22 = 0xE500000000000000;
    }

    if (v5 == 2)
    {
      v21 = 0x6F69746176656C65;
    }

    else
    {
      v20 = v22;
    }

    if (v5)
    {
      v23 = 1701011824;
    }

    else
    {
      v23 = 0x7461527472616568;
    }

    if (v5)
    {
      v2 = 0xE400000000000000;
    }

    if (v5 <= 1)
    {
      v21 = v23;
      v20 = v2;
    }

    if (v5 <= 4)
    {
      v24 = v21;
    }

    else
    {
      v24 = v16;
    }

    if (v5 <= 4)
    {
      v25 = v20;
    }

    else
    {
      v25 = v17;
    }

    if (v9 == v24 && v10 == v25)
    {

      return v27 != 0;
    }

    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v3 = v7;
    v2 = 0xE900000000000065;
    ++v4;
  }

  while ((v6 & 1) == 0);
  return v27 != 0;
}

uint64_t sub_1003578B0(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = (a3 + 40);
    v5 = (a3 + 40);
    do
    {
      v7 = *v5;
      v5 += 8;
      v6 = v7;
      v8 = v7 >> 8;
      if (v7 >> 8 <= 3)
      {
        if (v8 == 2)
        {
          if ((a2 & 0xFF00) == 0x200)
          {
            return 1;
          }

          goto LABEL_4;
        }

        if (v8 == 3)
        {
          if ((a2 & 0xFF00) == 0x300)
          {
            return 1;
          }

          goto LABEL_4;
        }
      }

      else
      {
        switch(v8)
        {
          case 4u:
            if ((a2 & 0xFF00) == 0x400)
            {
              return 1;
            }

            goto LABEL_4;
          case 5u:
            if ((a2 & 0xFF00) == 0x500)
            {
              return 1;
            }

            goto LABEL_4;
          case 6u:
            if ((a2 & 0xFF00) == 0x600)
            {
              return 1;
            }

            goto LABEL_4;
        }
      }

      if (BYTE1(a2) - 7 > 0xFFFFFFFA || *(v4 - 1) != a1)
      {
        goto LABEL_4;
      }

      if (v6 == 2)
      {
        if (a2 != 2)
        {
          goto LABEL_4;
        }
      }

      else if (a2 == 2 || ((v6 ^ a2) & 1) != 0)
      {
        goto LABEL_4;
      }

      if ((((a2 & 0xFF00 ^ v6) >> 8) & 1) == 0)
      {
        return 1;
      }

LABEL_4:
      v4 = v5;
      --v3;
    }

    while (v3);
  }

  return 0;
}

void *sub_1003579E8(unsigned __int8 a1, char a2, char a3)
{
  v7 = a1;
  v8 = *v3;
  v9 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_orderedValidUpTrends;
  swift_beginAccess();
  v10 = *(v8 + v9);
  v11 = *(v10 + 16);
  v12 = (v10 + 32);
  do
  {
    if (!v11)
    {
      v14 = OBJC_IVAR____TtC10FitnessApp18TrendsDataProvider_orderedValidDownTrends;
      swift_beginAccess();
      v15 = *(v8 + v14);
      v16 = *(v15 + 16);
      v17 = (v15 + 32);
      while (v16)
      {
        v18 = *v17++;
        --v16;
        if (v18 == v7)
        {
          goto LABEL_8;
        }
      }

      v20 = a3 & 1;
      goto LABEL_12;
    }

    v13 = *v12++;
    --v11;
  }

  while (v13 != v7);
LABEL_8:
  sub_100140278(&qword_1008DE578);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D46C0;
  *(inited + 32) = v7;
  v20 = a3 & 1;
  v21 = sub_10007CE0C(inited, a2 & 1, v20);
  if (!v4)
  {
    v22 = v21;
    goto LABEL_13;
  }

  swift_setDeallocating();
LABEL_12:
  sub_100140278(&qword_1008DE578);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_1006D46C0;
  *(v23 + 32) = v7;
  v22 = sub_10007C660(v23, a2 & 1, v20);
LABEL_13:
  swift_setDeallocating();
  return v22;
}

uint64_t sub_100357B7C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v18 = 1;
  v6 = *(v2 + 24);
  v7 = swift_allocObject();
  *(v7 + 16) = &v15;
  *(v7 + 24) = v3;
  *(v7 + 32) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_10035824C;
  *(v8 + 24) = v7;
  v14[4] = sub_10035826C;
  v14[5] = v8;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_1003579C0;
  v14[3] = &unk_100854288;
  v9 = _Block_copy(v14);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else
  {
    v11 = v17;
    v12 = v18;
    v13 = v16;
    *a2 = v15;
    *(a2 + 16) = v13;
    *(a2 + 32) = v11;
    *(a2 + 40) = v12;
  }

  return result;
}

uint64_t sub_100357D14(char a1)
{
  v2 = v1;
  v10[0] = 0;
  v10[1] = 0;
  v11 = 1;
  v4 = *(v1 + 24);
  v5 = swift_allocObject();
  *(v5 + 16) = v10;
  *(v5 + 24) = v2;
  *(v5 + 32) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100358258;
  *(v6 + 24) = v5;
  aBlock[4] = sub_10035826C;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003579C0;
  aBlock[3] = &unk_100854300;
  v7 = _Block_copy(aBlock);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if ((v4 & 1) == 0)
  {
    return v10[0];
  }

  __break(1u);
  return result;
}

uint64_t sub_100357E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_beginAccess();
  v7 = *(a2 + 16);
  v8 = 0uLL;
  if (*(v7 + 16))
  {
    result = sub_1004CD4B0(a3);
    if (v9)
    {
      v10 = 0;
      v8 = *(*(v7 + 56) + 16 * result);
    }

    else
    {
      v10 = 1;
      v8 = 0uLL;
    }
  }

  else
  {
    v10 = 1;
  }

  *a1 = v8;
  *(a1 + 16) = v10;
  return result;
}

uint64_t sub_100357F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_beginAccess();
  v7 = *(a2 + 16);
  v8 = 0uLL;
  if (*(v7 + 16))
  {
    result = sub_1004CD4B0(a3);
    if (v9)
    {
      v10 = 0;
      v11 = *(v7 + 56) + 40 * result;
      v8 = *v11;
      v12 = *(v11 + 16);
      v13 = *(v11 + 32);
    }

    else
    {
      v13 = 0;
      v10 = 1;
      v12 = 0uLL;
      v8 = 0uLL;
    }
  }

  else
  {
    v13 = 0;
    v10 = 1;
    v12 = 0uLL;
  }

  *a1 = v8;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  *(a1 + 40) = v10;
  return result;
}

uint64_t sub_100357FC8(__int128 *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a2 + 16);
  if (*(v6 + 16) && (v7 = sub_1004CD4B0(a3), (v8 & 1) != 0))
  {
    v9 = (*(v6 + 56) + 200 * v7);
    v32[0] = *v9;
    v10 = v9[3];
    v11 = v9[4];
    v12 = v9[2];
    v32[1] = v9[1];
    v32[2] = v12;
    v32[3] = v10;
    v32[4] = v11;
    v13 = v9[5];
    v14 = v9[6];
    v15 = v9[8];
    v32[7] = v9[7];
    v32[8] = v15;
    v32[5] = v13;
    v32[6] = v14;
    v16 = v9[9];
    v17 = v9[10];
    v18 = v9[11];
    v33 = *(v9 + 192);
    v32[10] = v17;
    v32[11] = v18;
    v32[9] = v16;
    memmove(&__dst, v9, 0xC1uLL);
    ASFriendListDisplayMode.id.getter(&__dst);
    sub_10003E4F0(v32, &v47);
    v57 = v44;
    v58 = v45;
    v59 = v46;
    v53 = v40;
    v54 = v41;
    v55 = v42;
    v56 = v43;
    v49 = v36;
    v50 = v37;
    v51 = v38;
    v52 = v39;
    v47 = __dst;
    v48 = v35;
  }

  else
  {
    sub_100011DA0(&v47);
  }

  v19 = a1[11];
  v44 = a1[10];
  v45 = v19;
  v46 = *(a1 + 192);
  v20 = a1[7];
  v40 = a1[6];
  v41 = v20;
  v21 = a1[9];
  v42 = a1[8];
  v43 = v21;
  v22 = a1[3];
  v36 = a1[2];
  v37 = v22;
  v23 = a1[5];
  v38 = a1[4];
  v39 = v23;
  v24 = a1[1];
  __dst = *a1;
  v35 = v24;
  v25 = v58;
  a1[10] = v57;
  a1[11] = v25;
  *(a1 + 192) = v59;
  v26 = v54;
  a1[6] = v53;
  a1[7] = v26;
  v27 = v56;
  a1[8] = v55;
  a1[9] = v27;
  v28 = v50;
  a1[2] = v49;
  a1[3] = v28;
  v29 = v52;
  a1[4] = v51;
  a1[5] = v29;
  v30 = v48;
  *a1 = v47;
  a1[1] = v30;
  return sub_10000EA04(&__dst, &qword_1008E5710);
}

void *sub_100358164(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1003581D8@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_100358208@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_100358284()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1003582C0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100358334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  sub_100140278(&qword_1008EA110);
  State.wrappedValue.getter();
  v14 = swift_allocObject();
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = a1;
  v14[5] = a2;
  v14[6] = a3;
  v14[7] = a4;
  v15 = (a7 + *(sub_100140278(&qword_1008EA118) + 36));
  type metadata accessor for _TaskModifier();

  sub_10000B210(a3);
  result = static TaskPriority.userInitiated.getter();
  *v15 = &unk_1006EB168;
  v15[1] = v14;
  *a7 = v17;
  return result;
}

uint64_t sub_100358444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  v8 = type metadata accessor for Optional();
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = *(a5 - 8);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[17] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[18] = v10;
  v6[19] = v9;

  return _swift_task_switch(sub_1003585A4, v10, v9);
}

uint64_t sub_1003585A4()
{
  v1 = v0[7];
  if (v1)
  {

    v6 = (v1 + *v1);
    v2 = swift_task_alloc();
    v0[20] = v2;
    *v2 = v0;
    v2[1] = sub_100358704;
    v3 = v0[13];

    return v6(v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_100358704()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return _swift_task_switch(sub_100358824, v3, v2);
}

uint64_t sub_100358824()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[9];

  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v5 = v0[12];
    v4 = v0[13];
    v6 = v0[11];
    sub_1000245E0(v0[7]);
    (*(v5 + 8))(v4, v6);
  }

  else
  {
    v8 = v0[15];
    v7 = v0[16];
    v9 = v0[14];
    v10 = v0[9];
    v11 = v0[7];
    v13 = v0[5];
    v12 = v0[6];
    (*(v9 + 32))(v7, v0[13], v10);
    (*(v9 + 16))(v8, v7, v10);
    v0[4] = AnyView.init<A>(_:)();
    v0[2] = v13;
    v0[3] = v12;

    sub_100140278(&qword_1008EA110);
    State.wrappedValue.setter();
    sub_1000245E0(v11);

    (*(v9 + 8))(v7, v10);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_100358A1C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10002BACC;

  return sub_100358444(v4, v5, v7, v6, v2, v3);
}

unint64_t sub_100358ADC()
{
  result = qword_1008EA120;
  if (!qword_1008EA120)
  {
    sub_100141EEC(&qword_1008EA118);
    sub_100358B68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EA120);
  }

  return result;
}

unint64_t sub_100358B68()
{
  result = qword_1008DB010;
  if (!qword_1008DB010)
  {
    type metadata accessor for _TaskModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DB010);
  }

  return result;
}

uint64_t sub_100358BC0(uint64_t a1)
{
  v35 = a1;
  v34 = sub_100140278(&qword_1008EA3D0);
  v1 = *(v34 - 8);
  __chkstk_darwin(v34);
  v3 = &v26 - v2;
  v4 = sub_100140278(&qword_1008EA3E0);
  __chkstk_darwin(v4);
  sub_1002C1C70();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0x206F642074616857;
  v5._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  v33 = sub_10036FEAC();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6._object = 0x80000001007584C0;
  v6._countAndFlagsBits = 0xD000000000000010;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v30 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v8 = v1 + 8;
  v7 = *(v1 + 8);
  v9 = v34;
  v7(v3, v34);
  v31 = v8;
  v32 = v7;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0x206F642074616857;
  v10._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 0xD000000000000019;
  v11._object = 0x80000001007584E0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v29 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v7(v3, v9);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._countAndFlagsBits = 0x6469642074616857;
  v12._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 0xD000000000000014;
  v13._object = 0x8000000100758500;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v28 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v32(v3, v34);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0x6469642074616857;
  v14._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 0xD000000000000015;
  v15._object = 0x8000000100758520;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v27 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v16 = v34;
  v17 = v32;
  v32(v3, v34);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._countAndFlagsBits = 0x6469642074616857;
  v18._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._countAndFlagsBits = 0xD000000000000018;
  v19._object = 0x8000000100758540;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v20 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v17(v3, v16);
  sub_100140278(&qword_1008EA3D8);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1006D6BC0;
  v22 = v29;
  *(v21 + 32) = v30;
  *(v21 + 40) = v22;
  v23 = v27;
  *(v21 + 48) = v28;
  *(v21 + 56) = v23;
  *(v21 + 64) = v20;
  v24 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v24;
}

uint64_t sub_1003591DC(uint64_t a1)
{
  v2 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_10001B104(a1, &v9 - v6, &unk_1008F73A0);
  sub_10001B104(v7, v4, &unk_1008F73A0);
  IntentParameter.wrappedValue.setter();
  return sub_10000EA04(v7, &unk_1008F73A0);
}

uint64_t sub_100359318(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008EA3D0);
  v3 = *(v2 - 8);
  v45 = v2;
  v46 = v3;
  __chkstk_darwin(v2);
  v5 = &v35 - v4;
  v6 = sub_100140278(&qword_1008EA3E0);
  __chkstk_darwin(v6);
  sub_1002C1C70();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 0xD000000000000011;
  v7._object = 0x80000001007583C0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  v8 = sub_10036FEAC();
  v43 = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v41 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10 = v45;
  v44 = *(v46 + 8);
  v46 += 8;
  v44(v5, v45);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0xD000000000000017;
  v11._object = 0x80000001007583E0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v40 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v44(v5, v10);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 0xD000000000000012;
  v13._object = 0x8000000100758400;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  v42 = v8;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v39 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v44(v5, v45);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._countAndFlagsBits = 0xD00000000000001BLL;
  v15._object = 0x8000000100758420;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v38 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v17 = v44;
  v44(v5, v45);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._object = 0x8000000100758440;
  v18._countAndFlagsBits = 0xD000000000000018;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v37 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v17(v5, v45);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._countAndFlagsBits = 0xD000000000000014;
  v20._object = 0x8000000100758460;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v36 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v22 = v45;
  v44(v5, v45);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v23._countAndFlagsBits = 0xD000000000000015;
  v23._object = 0x8000000100758480;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v35 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v25 = v44;
  v44(v5, v22);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v26._object = 0x80000001007584A0;
  v26._countAndFlagsBits = 0xD000000000000018;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v26);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v27);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v28 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v25(v5, v22);
  sub_100140278(&qword_1008EA3D8);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1006D4140;
  v30 = v40;
  *(v29 + 32) = v41;
  *(v29 + 40) = v30;
  v31 = v38;
  *(v29 + 48) = v39;
  *(v29 + 56) = v31;
  v32 = v36;
  *(v29 + 64) = v37;
  *(v29 + 72) = v32;
  *(v29 + 80) = v35;
  *(v29 + 88) = v28;
  v33 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v33;
}

uint64_t sub_100359BCC()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_100140278(&qword_1008DF070);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1006D64F0;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v4;
}

uint64_t sub_100359C94(uint64_t a1)
{
  v53 = sub_100140278(&qword_1008EA3D0);
  v50 = *(v53 - 8);
  __chkstk_darwin(v53);
  v3 = &v41 - v2;
  v4 = sub_100140278(&qword_1008EA3E0);
  __chkstk_darwin(v4);
  sub_1002C1C70();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0xD000000000000015;
  v5._object = 0x8000000100758280;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  v54 = sub_10036FEAC();
  v52 = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v7 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v8 = *(v50 + 8);
  v49 = v7;
  v50 += 8;
  v51 = v8;
  v9 = v53;
  v8(v3, v53);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0xD000000000000018;
  v10._object = 0x80000001007582A0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v48 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v12 = v51;
  v51(v3, v9);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 0xD000000000000019;
  v13._object = 0x80000001007582C0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v47 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v12(v3, v53);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._countAndFlagsBits = 0xD00000000000001CLL;
  v15._object = 0x80000001007582E0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v46 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v17 = v53;
  v18 = v51;
  v51(v3, v53);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v19._countAndFlagsBits = 0xD00000000000001ELL;
  v19._object = 0x8000000100758300;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v45 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v18(v3, v17);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v21._object = 0x8000000100758320;
  v21._countAndFlagsBits = 0xD00000000000001BLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v44 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v51(v3, v53);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v23._object = 0x8000000100758340;
  v23._countAndFlagsBits = 0xD00000000000001BLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v43 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v51(v3, v53);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v25._countAndFlagsBits = 0xD000000000000017;
  v25._object = 0x8000000100758360;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v25);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v26);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v42 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v27 = v53;
  v28 = v51;
  v51(v3, v53);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v29._countAndFlagsBits = 0xD00000000000001CLL;
  v29._object = 0x8000000100758380;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v29);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v30);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v41 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v28(v3, v27);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v31._object = 0x80000001007583A0;
  v31._countAndFlagsBits = 0xD00000000000001BLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v31);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v32);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v33 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v28(v3, v27);
  sub_100140278(&qword_1008EA3D8);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1006EB180;
  v35 = v48;
  *(v34 + 32) = v49;
  *(v34 + 40) = v35;
  v36 = v46;
  *(v34 + 48) = v47;
  *(v34 + 56) = v36;
  v37 = v44;
  *(v34 + 64) = v45;
  *(v34 + 72) = v37;
  v38 = v42;
  *(v34 + 80) = v43;
  *(v34 + 88) = v38;
  *(v34 + 96) = v41;
  *(v34 + 104) = v33;
  v39 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v39;
}

uint64_t sub_10035A6E4()
{
  v0 = sub_100140278(&qword_1008EA3D0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - v2;
  sub_1002C1C70();
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v22 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4 = *(v1 + 8);
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v21 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v20 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v19 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v18 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v17 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v16 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v5 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v6 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v7 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v8 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v4(v3, v0);
  sub_100140278(&qword_1008EA3D8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1006EB190;
  v10 = v21;
  *(v9 + 32) = v22;
  *(v9 + 40) = v10;
  v11 = v19;
  *(v9 + 48) = v20;
  *(v9 + 56) = v11;
  v12 = v17;
  *(v9 + 64) = v18;
  *(v9 + 72) = v12;
  *(v9 + 80) = v16;
  *(v9 + 88) = v5;
  *(v9 + 96) = v6;
  *(v9 + 104) = v7;
  *(v9 + 112) = v8;
  v13 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v13;
}

uint64_t sub_10035AB84(uint64_t a1)
{
  v37 = a1;
  v1 = sub_100140278(&qword_1008EA3B8);
  v2 = *(v1 - 8);
  v39 = v1;
  v40 = v2;
  __chkstk_darwin(v1);
  v4 = &v31 - v3;
  v5 = sub_100140278(&qword_1008EA3C0);
  __chkstk_darwin(v5);
  sub_1002A82B4();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._countAndFlagsBits = 0x20796D20746553;
  v6._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  swift_getKeyPath();
  v38 = sub_1002A5BD4();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v7._countAndFlagsBits = 0x73676E697220;
  v7._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v8 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v9 = v39;
  v11 = v40 + 8;
  v10 = *(v40 + 8);
  v35 = v8;
  v36 = v10;
  v10(v4, v39);
  v40 = v11;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._countAndFlagsBits = 0x20796D20746553;
  v12._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 0x73676E697220;
  v13._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v34 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v14 = v36;
  v36(v4, v9);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._countAndFlagsBits = 0x6D207473756A6441;
  v15._object = 0xEA00000000002079;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 0x6F6720676E697220;
  v16._object = 0xEB00000000736C61;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v33 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v14(v4, v39);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 0x20796D20746553;
  v17._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18._countAndFlagsBits = 0x617420676E697220;
  v18._object = 0xED00007374656772;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v32 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v19 = v36;
  v36(v4, v39);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._countAndFlagsBits = 0x6D20657461647055;
  v20._object = 0xEA00000000002079;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v21._countAndFlagsBits = 0x616220676E697220;
  v21._object = 0xEF73656E696C6573;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v31 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v22 = v39;
  v19(v4, v39);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v23._countAndFlagsBits = 0x6D2065676E616843;
  v23._object = 0xEA00000000002079;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v24._countAndFlagsBits = 0x73676E697220;
  v24._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v25 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v19(v4, v22);
  sub_100140278(&qword_1008EA3C8);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1006E87A0;
  v27 = v34;
  *(v26 + 32) = v35;
  *(v26 + 40) = v27;
  v28 = v32;
  *(v26 + 48) = v33;
  *(v26 + 56) = v28;
  *(v26 + 64) = v31;
  *(v26 + 72) = v25;
  v29 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v29;
}

uint64_t sub_10035B29C()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_100140278(&qword_1008DF070);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1006D64F0;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v4;
}

uint64_t sub_10035B35C(uint64_t a1)
{
  v38 = a1;
  v1 = sub_100140278(&qword_1008EA3B8);
  v2 = *(v1 - 8);
  v39 = v1;
  v40 = v2;
  __chkstk_darwin(v1);
  v4 = &v31 - v3;
  v5 = sub_100140278(&qword_1008EA3C0);
  __chkstk_darwin(v5);
  sub_1002A82B4();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._countAndFlagsBits = 0x20796D20746553;
  v6._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  swift_getKeyPath();
  v37 = sub_1002A5BD4();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v7._countAndFlagsBits = 0x6C616F6720;
  v7._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v8 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v9 = v39;
  v11 = v40 + 8;
  v10 = *(v40 + 8);
  v35 = v8;
  v36 = v10;
  v10(v4, v39);
  v40 = v11;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._countAndFlagsBits = 0x20796D20746553;
  v12._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 0x676E697220;
  v13._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v34 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v14 = v36;
  v36(v4, v9);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._countAndFlagsBits = 0x6D207473756A6441;
  v15._object = 0xEA00000000002079;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 0x6F6720676E697220;
  v16._object = 0xEA00000000006C61;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v33 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v14(v4, v39);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 0x20796D20746553;
  v17._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18._countAndFlagsBits = 0x617420676E697220;
  v18._object = 0xEC00000074656772;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v32 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v19 = v36;
  v36(v4, v39);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._countAndFlagsBits = 0x6D20657461647055;
  v20._object = 0xEA00000000002079;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v21._countAndFlagsBits = 0x6E696C6573616220;
  v21._object = 0xE900000000000065;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v31 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v22 = v39;
  v19(v4, v39);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v23._countAndFlagsBits = 0x6D2065676E616843;
  v23._object = 0xEA00000000002079;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v24._countAndFlagsBits = 0x676E697220;
  v24._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v25 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v19(v4, v22);
  sub_100140278(&qword_1008EA3C8);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1006E87A0;
  v27 = v34;
  *(v26 + 32) = v35;
  *(v26 + 40) = v27;
  v28 = v32;
  *(v26 + 48) = v33;
  *(v26 + 56) = v28;
  *(v26 + 64) = v31;
  *(v26 + 72) = v25;
  v29 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v29;
}

uint64_t sub_10035BA64()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v6 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_100140278(&qword_1008DF070);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1006E76B0;
  *(v7 + 32) = v0;
  *(v7 + 40) = v1;
  *(v7 + 48) = v2;
  *(v7 + 56) = v3;
  *(v7 + 64) = v4;
  *(v7 + 72) = v5;
  *(v7 + 80) = v6;
  v8 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_10035BB88(uint64_t a1)
{
  v51 = sub_100140278(&qword_1008EA3B8);
  v48 = *(v51 - 8);
  __chkstk_darwin(v51);
  v3 = &v38 - v2;
  v4 = sub_100140278(&qword_1008EA3C0);
  __chkstk_darwin(v4);
  v5 = sub_1002A82B4();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._countAndFlagsBits = 0x20796D20746553;
  v6._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  swift_getKeyPath();
  v50 = sub_1002A5BD4();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v7._object = 0xE900000000000020;
  v44 = 0xE900000000000020;
  v7._countAndFlagsBits = 0x6F74206C616F6720;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  v47 = sub_10036FC8C(&qword_1008DECF0, &qword_1008DECE8, &unk_1006D8790, sub_10019C1A0);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 0x6569726F6C616320;
  v8._object = 0xE900000000000073;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  v46 = v3;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v43 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v9 = *(v48 + 8);
  v48 += 8;
  v49 = v9;
  v10 = v51;
  v9(v3, v51);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0x20796D20746553;
  v11._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  v45 = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 0x6F7420676E697220;
  v12._object = v44;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 0x6569726F6C616320;
  v13._object = 0xE900000000000073;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  v14 = v46;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v38 = v5;
  v42 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v15 = v49;
  v49(v14, v10);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._countAndFlagsBits = 0x6D207473756A6441;
  v16._object = 0xEA00000000002079;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v17._countAndFlagsBits = 0x6F6720676E697220;
  v17._object = 0xEE00206F74206C61;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18._countAndFlagsBits = 0x6569726F6C616320;
  v18._object = 0xE900000000000073;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  v19 = v46;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v41 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v20 = v51;
  v15(v19, v51);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v21._countAndFlagsBits = 0x20796D20746553;
  v21._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v22._object = 0x80000001007580A0;
  v22._countAndFlagsBits = 0xD000000000000010;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  v24 = v46;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v40 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v49(v24, v20);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v25._countAndFlagsBits = 0x6D20657461647055;
  v25._object = 0xEA00000000002079;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v25);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v26._countAndFlagsBits = 0x6E696C6573616220;
  v26._object = 0xED0000206F742065;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v26);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v27);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v39 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v28 = v49;
  v49(v24, v51);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v29._countAndFlagsBits = 0x6D2065676E616843;
  v29._object = 0xEA00000000002079;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v29);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v30._countAndFlagsBits = 0x6F7420676E697220;
  v30._object = v44;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v30);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v31._countAndFlagsBits = 0x6569726F6C616320;
  v31._object = 0xE900000000000073;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v31);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v32 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v28(v24, v51);
  sub_100140278(&qword_1008EA3C8);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1006E87A0;
  v34 = v42;
  *(v33 + 32) = v43;
  *(v33 + 40) = v34;
  v35 = v40;
  *(v33 + 48) = v41;
  *(v33 + 56) = v35;
  *(v33 + 64) = v39;
  *(v33 + 72) = v32;
  v36 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v36;
}

uint64_t sub_10035C574(uint64_t a1)
{
  v46 = sub_100140278(&qword_1008EA3B8);
  v48 = *(v46 - 8);
  __chkstk_darwin(v46);
  v3 = &v37 - v2;
  v4 = sub_100140278(&qword_1008EA3C0);
  __chkstk_darwin(v4);
  sub_1002A82B4();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0x20796D20746553;
  v5._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  v47 = sub_1002A5BD4();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6._countAndFlagsBits = 0x6F74206C616F6720;
  v6._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  swift_getKeyPath();
  v45 = sub_10036FC8C(&qword_1008DECF0, &qword_1008DECE8, &unk_1006D8790, sub_10019C1A0);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v7._countAndFlagsBits = 0x756F6A6F6C696B20;
  v7._object = 0xEB0000000073656CLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v41 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v44 = *(v48 + 8);
  v48 += 8;
  v8 = v46;
  v44(v3, v46);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0x20796D20746553;
  v9._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 0x6F7420676E697220;
  v10._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 0x756F6A6F6C696B20;
  v11._object = 0xEB0000000073656CLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  v42 = v3;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v40 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v12 = v44;
  v44(v3, v8);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 0x6D207473756A6441;
  v13._object = 0xEA00000000002079;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  v43 = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 0x6F6720676E697220;
  v14._object = 0xEE00206F74206C61;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  v16 = v42;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v39 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v17 = v46;
  v12(v16, v46);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._countAndFlagsBits = 0x20796D20746553;
  v18._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._object = 0x80000001007580A0;
  v19._countAndFlagsBits = 0xD000000000000010;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v20._countAndFlagsBits = 0x756F6A6F6C696B20;
  v20._object = 0xEB0000000073656CLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  v21 = v42;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v38 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v22 = v17;
  v23 = v44;
  v44(v21, v22);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v24._countAndFlagsBits = 0x6D20657461647055;
  v24._object = 0xEA00000000002079;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v25._countAndFlagsBits = 0x6E696C6573616220;
  v25._object = 0xED0000206F742065;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v25);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v26);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v37 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v27 = v46;
  v23(v21, v46);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v28._countAndFlagsBits = 0x6D2065676E616843;
  v28._object = 0xEA00000000002079;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v28);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v29._countAndFlagsBits = 0x6F7420676E697220;
  v29._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v29);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v30._countAndFlagsBits = 0x756F6A6F6C696B20;
  v30._object = 0xEB0000000073656CLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v30);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v31 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v44(v21, v27);
  sub_100140278(&qword_1008EA3C8);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1006E87A0;
  v33 = v40;
  *(v32 + 32) = v41;
  *(v32 + 40) = v33;
  v34 = v38;
  *(v32 + 48) = v39;
  *(v32 + 56) = v34;
  *(v32 + 64) = v37;
  *(v32 + 72) = v31;
  v35 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v35;
}

uint64_t sub_10035CF74()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v6 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_100140278(&qword_1008DF070);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1006E76B0;
  *(v7 + 32) = v0;
  *(v7 + 40) = v1;
  *(v7 + 48) = v2;
  *(v7 + 56) = v3;
  *(v7 + 64) = v4;
  *(v7 + 72) = v5;
  *(v7 + 80) = v6;
  v8 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_10035D0C4(uint64_t a1)
{
  v46 = sub_100140278(&qword_1008EA3B8);
  v48 = *(v46 - 8);
  __chkstk_darwin(v46);
  v3 = &v37 - v2;
  v4 = sub_100140278(&qword_1008EA3C0);
  __chkstk_darwin(v4);
  sub_1002A82B4();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0x20796D20746553;
  v5._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  v47 = sub_1002A5BD4();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6._countAndFlagsBits = 0x6F74206C616F6720;
  v6._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  swift_getKeyPath();
  v45 = sub_10036FC8C(&qword_1008DECF0, &qword_1008DECE8, &unk_1006D8790, sub_10019C1A0);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v7._countAndFlagsBits = 0x736574756E696D20;
  v7._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v41 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v44 = *(v48 + 8);
  v48 += 8;
  v8 = v46;
  v44(v3, v46);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0x20796D20746553;
  v9._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 0x6F7420676E697220;
  v10._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 0x736574756E696D20;
  v11._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  v42 = v3;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v40 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v12 = v44;
  v44(v3, v8);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 0x6D207473756A6441;
  v13._object = 0xEA00000000002079;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  v43 = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 0x6F6720676E697220;
  v14._object = 0xEE00206F74206C61;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  v16 = v42;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v39 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v17 = v46;
  v12(v16, v46);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._countAndFlagsBits = 0x20796D20746553;
  v18._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._object = 0x80000001007580A0;
  v19._countAndFlagsBits = 0xD000000000000010;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  v21 = v42;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v38 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v22 = v17;
  v23 = v44;
  v44(v21, v22);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v24._countAndFlagsBits = 0x6D20657461647055;
  v24._object = 0xEA00000000002079;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v25._countAndFlagsBits = 0x6E696C6573616220;
  v25._object = 0xED0000206F742065;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v25);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v26._countAndFlagsBits = 0x736574756E696D20;
  v26._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v26);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v37 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v27 = v46;
  v23(v21, v46);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v28._countAndFlagsBits = 0x6D2065676E616843;
  v28._object = 0xEA00000000002079;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v28);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v29._countAndFlagsBits = 0x6F7420676E697220;
  v29._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v29);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v30._countAndFlagsBits = 0x736574756E696D20;
  v30._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v30);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v31 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v44(v21, v27);
  sub_100140278(&qword_1008EA3C8);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1006E87A0;
  v33 = v40;
  *(v32 + 32) = v41;
  *(v32 + 40) = v33;
  v34 = v38;
  *(v32 + 48) = v39;
  *(v32 + 56) = v34;
  *(v32 + 64) = v37;
  *(v32 + 72) = v31;
  v35 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v35;
}

uint64_t sub_10035DA70()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v6 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v7 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v8 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_100140278(&qword_1008DF070);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1006E44D0;
  *(v9 + 32) = v0;
  *(v9 + 40) = v1;
  *(v9 + 48) = v2;
  *(v9 + 56) = v3;
  *(v9 + 64) = v4;
  *(v9 + 72) = v5;
  *(v9 + 80) = v6;
  *(v9 + 88) = v7;
  *(v9 + 96) = v8;
  v10 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v10;
}

uint64_t sub_10035DC14(uint64_t a1)
{
  v40 = sub_100140278(&qword_1008EA3B8);
  v42 = *(v40 - 8);
  __chkstk_darwin(v40);
  v3 = &v31 - v2;
  v4 = sub_100140278(&qword_1008EA3C0);
  __chkstk_darwin(v4);
  sub_1002A82B4();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0x20796D20746553;
  v5._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  v39 = sub_1002A5BD4();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v6._countAndFlagsBits = 0x6F74206C616F6720;
  v6._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  swift_getKeyPath();
  v41 = sub_10036FC8C(&qword_1008DECF0, &qword_1008DECE8, &unk_1006D8790, sub_10019C1A0);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v7._countAndFlagsBits = 0x736574756E696D20;
  v7._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v36 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v8 = *(v42 + 8);
  v42 += 8;
  v9 = v40;
  v8(v3, v40);
  v38 = v8;
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0x6D207473756A6441;
  v10._object = 0xEA00000000002079;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  swift_getKeyPath();
  v37 = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v11._countAndFlagsBits = 0x6F6720676E697220;
  v11._object = 0xEE00206F74206C61;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  v32 = v3;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v35 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v8(v3, v9);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 0x20796D20746553;
  v13._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._object = 0x80000001007580A0;
  v14._countAndFlagsBits = 0xD000000000000010;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  v16 = v32;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v34 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v38(v16, v40);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 0x6D20657461647055;
  v17._object = 0xEA00000000002079;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18._countAndFlagsBits = 0x6E696C6573616220;
  v18._object = 0xED0000206F742065;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._countAndFlagsBits = 0x736574756E696D20;
  v19._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v33 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v20 = v40;
  v21 = v38;
  v38(v16, v40);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22._countAndFlagsBits = 0x6D2065676E616843;
  v22._object = 0xEA00000000002079;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v23._countAndFlagsBits = 0x6F7420676E697220;
  v23._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v24._countAndFlagsBits = 0x736574756E696D20;
  v24._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v25 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v21(v16, v20);
  sub_100140278(&qword_1008EA3C8);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1006D6BC0;
  v27 = v35;
  *(v26 + 32) = v36;
  *(v26 + 40) = v27;
  v28 = v33;
  *(v26 + 48) = v34;
  *(v26 + 56) = v28;
  *(v26 + 64) = v25;
  v29 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v29;
}

uint64_t sub_10035E4A4()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v5 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_100140278(&qword_1008DF070);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1006E87A0;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  v7 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v7;
}

uint64_t sub_10035E5D4(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v44 = sub_100140278(&qword_1008EA3B8);
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v3 = &v33 - v2;
  v4 = sub_100140278(&qword_1008EA3C0);
  __chkstk_darwin(v4);
  v5 = sub_1002A82B4();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._countAndFlagsBits = 0x20796D20746553;
  v6._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v6);
  swift_getKeyPath();
  v40 = sub_1002A5BD4();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v7._countAndFlagsBits = 0x6F74206C616F6720;
  v7._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  v43 = sub_10036FC8C(&qword_1008DECF0, &qword_1008DECE8, &unk_1006D8790, sub_10019C1A0);
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 0x7372756F6820;
  v8._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v9 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v10 = *(v42 + 8);
  v38 = v9;
  v39 = v10;
  v42 += 8;
  v11 = v44;
  v10(v3, v44);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._countAndFlagsBits = 0x6D207473756A6441;
  v12._object = 0xEA00000000002079;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v13._countAndFlagsBits = 0x6F6720676E697220;
  v13._object = 0xEE00206F74206C61;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  v34 = v3;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v33 = v5;
  v37 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v15 = v39;
  v39(v3, v11);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._countAndFlagsBits = 0x20796D20746553;
  v16._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v17._object = 0x80000001007580A0;
  v17._countAndFlagsBits = 0xD000000000000010;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  v19 = v34;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v36 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v15(v19, v44);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._countAndFlagsBits = 0x6D20657461647055;
  v20._object = 0xEA00000000002079;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v21._countAndFlagsBits = 0x6E696C6573616220;
  v21._object = 0xED0000206F742065;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v22._countAndFlagsBits = 0x7372756F6820;
  v22._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v35 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v23 = v39;
  v39(v19, v44);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v24._countAndFlagsBits = 0x6D2065676E616843;
  v24._object = 0xEA00000000002079;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v25._countAndFlagsBits = 0x6F7420676E697220;
  v25._object = 0xE900000000000020;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v25);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v26._countAndFlagsBits = 0x7372756F6820;
  v26._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v26);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v27 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v23(v19, v44);
  sub_100140278(&qword_1008EA3C8);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1006D6BC0;
  v29 = v37;
  *(v28 + 32) = v38;
  *(v28 + 40) = v29;
  v30 = v35;
  *(v28 + 48) = v36;
  *(v28 + 56) = v30;
  *(v28 + 64) = v27;
  v31 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v31;
}