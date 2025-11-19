uint64_t sub_100ABA564()
{
  v1 = v0[34];
  v2 = v0[33];

  v0[36] = *(v2 + v1);

  return _swift_task_switch(sub_100ABA60C, 0, 0);
}

uint64_t sub_100ABA60C()
{
  v1 = *(*(v0 + 288) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardActor);
  *(v0 + 296) = v1;

  return _swift_task_switch(sub_100ABA6C4, v1, 0);
}

uint64_t sub_100ABA6C4()
{
  v1 = *(v0 + 296);
  type metadata accessor for CRLImmutableBoard(0);
  v2 = *(v1 + OBJC_IVAR____TtC8Freeform13CRLBoardActor_store);
  v3 = OBJC_IVAR____TtC8Freeform13CRLBoardActor_boardIdentifier;
  v4 = swift_task_alloc();
  *(v0 + 304) = v4;
  *v4 = v0;
  v4[1] = sub_100ABA7C0;

  return sub_100797820(v2, v1 + v3, 1);
}

uint64_t sub_100ABA7C0(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 312) = a1;

  v4 = *(v3 + 296);
  if (v1)
  {

    v5 = sub_100ABB1F8;
    v6 = v4;
  }

  else
  {

    v5 = sub_100ABA958;
    v6 = 0;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100ABA958()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 248);
  v3 = swift_task_alloc();
  *(v0 + 320) = v3;
  *(v3 + 16) = *(v0 + 256);
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 328) = v4;
  *v4 = v0;
  v4[1] = sub_100ABAA7C;

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_100ABAA7C()
{

  return _swift_task_switch(sub_100ABABC0, 0, 0);
}

uint64_t sub_100ABABC0()
{
  v1 = v0;
  v2 = v0[32];
  swift_beginAccess();
  v3 = *(v2 + 16);
  v4 = *(v3 + 16);
  if (!v4)
  {
    goto LABEL_16;
  }

  v56 = v1 + 2;
  v57 = v1 + 6;
  v5 = v1[28];

  sub_100034080(0, v4, 0);
  v6 = *(v5 + 16);
  v5 += 16;
  v7 = v3 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
  v58 = *(v5 + 56);
  v59 = v6;
  v8 = (v5 - 8);
  do
  {
    v9 = v1[29];
    v10 = v1;
    v11 = v1[27];
    v59(v9, v7, v11);
    v12 = URL.path.getter();
    v14 = v13;
    (*v8)(v9, v11);
    v16 = _swiftEmptyArrayStorage[2];
    v15 = _swiftEmptyArrayStorage[3];
    if (v16 >= v15 >> 1)
    {
      sub_100034080((v15 > 1), v16 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v16 + 1;
    v17 = &_swiftEmptyArrayStorage[2 * v16];
    v17[4] = v12;
    v17[5] = v14;
    v7 += v58;
    --v4;
    v1 = v10;
  }

  while (v4);
  v18 = v10[30];
  v19 = v10[20];
  v20 = v10[21];

  v10[14] = _swiftEmptyArrayStorage;
  sub_1005B981C(&unk_1019F4D80);
  sub_10001A2F8(&qword_1019F61E0, &unk_1019F4D80);
  BidirectionalCollection<>.joined(separator:)();

  v21 = *(v20 + 48);
  if (v21(v18, 1, v19))
  {

    v1 = v10;
  }

  else
  {
    v23 = URLComponents.queryItems.modify();
    v1 = v10;
    if (*v22)
    {
      v24 = v22;
      URLQueryItem.init(name:value:)();

      v25 = *v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v24 = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = sub_100B388A8(0, v25[2] + 1, 1, v25);
        *v24 = v25;
      }

      v28 = v25[2];
      v27 = v25[3];
      if (v28 >= v27 >> 1)
      {
        v25 = sub_100B388A8(v27 > 1, v28 + 1, 1, v25);
        *v24 = v25;
      }

      v29 = v1[26];
      v30 = v1[23];
      v31 = v1[24];
      v25[2] = v28 + 1;
      (*(v31 + 32))(v25 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v28, v29, v30);
      v23();
    }

    else
    {

      (v23)(v57, 0);
    }
  }

  if (!v21(v1[30], 1, v1[20]))
  {
    v35 = URLComponents.queryItems.modify();
    if (*v34)
    {
      v36 = v34;
      URLQueryItem.init(name:value:)();
      v37 = *v36;
      v38 = swift_isUniquelyReferenced_nonNull_native();
      *v36 = v37;
      if ((v38 & 1) == 0)
      {
        v37 = sub_100B388A8(0, v37[2] + 1, 1, v37);
        *v36 = v37;
      }

      v40 = v37[2];
      v39 = v37[3];
      if (v40 >= v39 >> 1)
      {
        v37 = sub_100B388A8(v39 > 1, v40 + 1, 1, v37);
        *v36 = v37;
      }

      v41 = v1[39];
      v42 = v1[31];
      v44 = v1[24];
      v43 = v1[25];
      v45 = v1[23];
      v46 = v1[19];
      v37[2] = v40 + 1;
      (*(v44 + 32))(v37 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v40, v43, v45);
      v35(v56, 0);
    }

    else
    {
      v47 = v1[39];
      v48 = v1[31];
      v49 = v1[19];
      v35(v56, 0);
    }
  }

  else
  {
LABEL_16:
    v32 = v1[31];
    v33 = v1[19];
  }

  v50 = v1[30];
  v51 = v1[20];
  v52 = v1[21];
  if ((*(v52 + 48))(v50, 1, v51))
  {
    (*(v1[28] + 56))(v1[15], 1, 1, v1[27]);
  }

  else
  {
    v53 = v1[22];
    (*(v52 + 16))(v53, v50, v51);
    URLComponents.url.getter();
    (*(v52 + 8))(v53, v51);
  }

  sub_10000CAAC(v1[30], &qword_101A00288);

  v54 = v1[1];

  return v54();
}

uint64_t sub_100ABB1F8()
{

  return _swift_task_switch(sub_100ABB28C, 0, 0);
}

uint64_t sub_100ABB28C()
{
  v1 = *(v0 + 152);

  v2 = *(v0 + 240);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  if ((*(v4 + 48))(v2, 1, v3))
  {
    (*(*(v0 + 224) + 56))(*(v0 + 120), 1, 1, *(v0 + 216));
  }

  else
  {
    v5 = *(v0 + 176);
    (*(v4 + 16))(v5, v2, v3);
    URLComponents.url.getter();
    (*(v4 + 8))(v5, v3);
  }

  sub_10000CAAC(*(v0 + 240), &qword_101A00288);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100ABB420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  sub_1005B981C(&unk_1019F33C0);
  v14 = swift_task_alloc();
  v8[2] = v14;
  v15 = type metadata accessor for URL();
  v8[3] = v15;
  v8[4] = *(v15 - 8);
  v8[5] = swift_task_alloc();
  v16 = swift_task_alloc();
  v8[6] = v16;
  *v16 = v8;
  v16[1] = sub_100ABB584;

  return sub_100AB9F70(v14, a4, a5, a6, a7, a8);
}

uint64_t sub_100ABB584()
{

  return _swift_task_switch(sub_100ABB680, 0, 0);
}

uint64_t sub_100ABB680()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000CAAC(v3, &unk_1019F33C0);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v2 + 32))(v0[5], v3, v1);
    v0[7] = objc_opt_self();
    v0[8] = type metadata accessor for MainActor();
    v0[9] = static MainActor.shared.getter();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100ABB7DC, v7, v6);
  }
}

uint64_t sub_100ABB7DC()
{
  v1 = *(v0 + 56);

  *(v0 + 80) = [v1 sharedApplication];

  return _swift_task_switch(sub_100ABB864, 0, 0);
}

uint64_t sub_100ABB864@<X0>(NSURL *a1@<X8>)
{
  URL._bridgeToObjectiveC()(a1);
  v1[11].super.isa = v2;
  sub_100BD72C0(_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_100006568(&qword_1019F3CF0, type metadata accessor for OpenExternalURLOptionsKey);
  v1[12].super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v1[13].super.isa = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100ABB97C, v4, v3);
}

uint64_t sub_100ABB97C()
{
  v1 = v0[12];
  v3 = v0[10];
  v2 = v0[11];

  [v3 openURL:v2 options:v1 completionHandler:0];

  return _swift_task_switch(sub_100ABBA18, 0, 0);
}

uint64_t sub_100ABBA18()
{
  (*(v0[4] + 8))(v0[5], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100ABBA9C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char a7, uint64_t a8)
{
  v14 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v14 - 8);
  v16 = &v22 - v15;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = a2;
  *(v18 + 40) = a3;
  *(v18 + 48) = a4;
  *(v18 + 56) = a7;
  *(v18 + 64) = a5;

  v19 = a5;
  v20 = a2;
  sub_10064191C(0, 0, v16, a8, v18);
}

uint64_t sub_100ABBBD0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for URLQueryItem();
  v9 = *(v8 - 8);
  v34 = v8;
  v35 = v9;
  __chkstk_darwin(v8);
  v33 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&qword_101A00288);
  __chkstk_darwin(v11 - 8);
  v13 = &v30 - v12;
  URLComponents.init(string:)();
  v14 = type metadata accessor for URLComponents();
  v15 = *(*(v14 - 8) + 48);
  if (!v15(v13, 1, v14))
  {
    sub_1005B981C(&qword_101A01C18);
    v31 = a1;
    v16 = swift_allocObject();
    v32 = a4;
    v30 = v16;
    *(v16 + 16) = xmmword_101478A90;
    URLQueryItem.init(name:value:)();
    URLQueryItem.init(name:value:)();
    v36[0] = 1452296;
    dispatch thunk of CustomStringConvertible.description.getter();
    URLQueryItem.init(name:value:)();

    URLQueryItem.init(name:value:)();
    URLQueryItem.init(name:value:)();
    a1 = v31;
    URLQueryItem.init(name:value:)();
    a4 = v32;
    URLComponents.queryItems.setter();
  }

  v37 = 0;
  v38 = 0xE000000000000000;
  if (a1)
  {
    v17 = a1;
    v18._countAndFlagsBits = sub_100ABDAD0(v17);
    String.append(_:)(v18);
  }

  if (a3)
  {
    v19._countAndFlagsBits = a2;
    v19._object = a3;
    String.append(_:)(v19);
  }

  v20 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v20 = v37 & 0xFFFFFFFFFFFFLL;
  }

  if (v20 && !v15(v13, 1, v14))
  {
    v22 = URLComponents.queryItems.modify();
    if (*v21)
    {
      v23 = v21;
      v24 = v33;
      URLQueryItem.init(name:value:)();
      v25 = *v23;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v23 = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = sub_100B388A8(0, v25[2] + 1, 1, v25);
        *v23 = v25;
      }

      v28 = v25[2];
      v27 = v25[3];
      if (v28 >= v27 >> 1)
      {
        v25 = sub_100B388A8(v27 > 1, v28 + 1, 1, v25);
        *v23 = v25;
      }

      v25[2] = v28 + 1;
      (*(v35 + 32))(v25 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v28, v24, v34);
      v22(v36, 0);
    }

    else
    {
      v22(v36, 0);
    }
  }

  sub_10000BE14(v13, a4, &qword_101A00288);
  return sub_10000CAAC(v13, &qword_101A00288);
}

uint64_t sub_100ABC13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  sub_1005B981C(&qword_1019FB750);
  v6[7] = swift_task_alloc();

  return _swift_task_switch(sub_100ABC1E0, 0, 0);
}

uint64_t sub_100ABC1E0()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  v6 = type metadata accessor for TaskPriority();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v5;
  v8[5] = v3;
  v8[6] = v4;
  v8[7] = v2;

  v9 = v3;
  v10 = v4;
  v11 = v2;
  sub_100ABC7A8(v1, &unk_101492B80, v8);
  sub_10000CAAC(v1, &qword_1019FB750);
  v7(v1, 1, 1, v6);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v5;
  v12[5] = v9;
  v12[6] = v10;
  v12[7] = v11;

  v13 = v9;
  v14 = v10;
  v15 = v11;
  sub_100ABC7A8(v1, &unk_101492B90, v12);
  sub_10000CAAC(v1, &qword_1019FB750);
  v7(v1, 1, 1, v6);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v5;
  v16[5] = v13;
  v16[6] = v15;

  v17 = v13;
  v18 = v15;
  sub_100ABC7A8(v1, &unk_101492BA0, v16);
  sub_10000CAAC(v1, &qword_1019FB750);

  v19 = v0[1];

  return v19();
}

uint64_t sub_100ABC450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v8 = type metadata accessor for URL();
  v7[9] = v8;
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();
  sub_1005B981C(&unk_1019F33C0);
  v7[12] = swift_task_alloc();

  return _swift_task_switch(sub_100ABC54C, 0, 0);
}

uint64_t sub_100ABC54C()
{
  v1 = [*(v0 + 64) URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_100ABC610;
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 56);

  return sub_100ACEDBC(v3, v5, v4);
}

uint64_t sub_100ABC610()
{
  v2 = *v1;

  v3 = v2[11];
  v4 = v2[10];
  v5 = v2[9];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_100ABDDD0;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_100ABDDCC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100ABC7A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v8 - 8);
  v10 = v20 - v9;
  sub_10000BE14(a1, v20 - v9, &qword_1019FB750);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10000CAAC(v10, &qword_1019FB750);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = dispatch thunk of Actor.unownedExecutor.getter();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = (v15 | v13);
  if (v15 | v13)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v13;
    v21[3] = v15;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v16;
  swift_task_create();
}

uint64_t sub_100ABC9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v8 = type metadata accessor for URL();
  v7[9] = v8;
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();
  sub_1005B981C(&unk_1019F33C0);
  v7[12] = swift_task_alloc();

  return _swift_task_switch(sub_100ABCABC, 0, 0);
}

uint64_t sub_100ABCABC()
{
  v1 = [*(v0 + 64) URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_100ABCB80;
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 56);

  return sub_100ACF6A4(v3, v5, v4);
}

uint64_t sub_100ABCB80()
{
  v2 = *v1;

  v3 = v2[11];
  v4 = v2[10];
  v5 = v2[9];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_100ABCDF0;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_100ABCD18;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100ABCD18()
{
  v1 = v0[12];
  (*(v0[10] + 56))(v1, 0, 1, v0[9]);
  swift_beginAccess();
  sub_100AB8514(v1);
  swift_endAccess();
  sub_10000CAAC(v1, &unk_1019F33C0);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100ABCDF0()
{
  v1 = v0[12];
  (*(v0[10] + 56))(v1, 1, 1, v0[9]);
  swift_beginAccess();
  sub_100AB8514(v1);
  swift_endAccess();
  sub_10000CAAC(v1, &unk_1019F33C0);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100ABCEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = type metadata accessor for URL();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  sub_1005B981C(&unk_1019F33C0);
  v6[11] = swift_task_alloc();

  return _swift_task_switch(sub_100ABCFC4, 0, 0);
}

uint64_t sub_100ABCFC4()
{
  v1 = [*(v0 + 56) URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_100ABD088;
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);

  return sub_100ACFA68(v3, v4);
}

uint64_t sub_100ABD088()
{
  v2 = *v1;

  v3 = v2[10];
  v4 = v2[9];
  v5 = v2[8];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_100ABD2F8;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_100ABD220;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100ABD220()
{
  v1 = v0[11];
  (*(v0[9] + 56))(v1, 0, 1, v0[8]);
  swift_beginAccess();
  sub_100AB8514(v1);
  swift_endAccess();
  sub_10000CAAC(v1, &unk_1019F33C0);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100ABD2F8()
{
  v1 = v0[11];
  (*(v0[9] + 56))(v1, 1, 1, v0[8]);
  swift_beginAccess();
  sub_100AB8514(v1);
  swift_endAccess();
  sub_10000CAAC(v1, &unk_1019F33C0);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100ABD3D0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100ABDDC8;

  return v6(a1);
}

uint64_t sub_100ABD508()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100ABD5A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002D4C8;

  return sub_100ABB420(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100ABD688(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_10002D3D4;

  return sub_100ABC13C(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_100ABD750(uint64_t a1)
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
  v10[1] = sub_10002D4C8;

  return sub_100ABC450(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100ABD824()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100ABD87C(uint64_t a1)
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
  v10[1] = sub_10002D4C8;

  return sub_100ABC9C0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100ABD950(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_100ABCEC8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100ABDA18(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002D3D4;

  return sub_100ABD3D0(a1, v4);
}

uint64_t sub_100ABDAD0(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0x203A6472616F42;
  v24 = 0xE700000000000000;
  v11 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v12 = *(a1 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v13 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_1005E2B78(v12 + v13, v10);
  sub_1005B981C(&qword_101A1A020);
  CRRegister.wrappedValue.getter();
  sub_10003D45C(v10, type metadata accessor for CRLBoardCRDTData);
  String.append(_:)(v22);

  v14._countAndFlagsBits = 2108704;
  v14._object = 0xE300000000000000;
  String.append(_:)(v14);
  v15 = *(a1 + v11);
  v16 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_1005E2B78(v15 + v16, v10);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10003D45C(v10, type metadata accessor for CRLBoardCRDTData);
  v17 = (*(a1 + v11) + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v18 = *v17;
  v19 = v17[1];

  sub_10084BD4C(v4, v18, v19, v7);
  v20._countAndFlagsBits = sub_10084B8C8();
  String.append(_:)(v20);

  sub_10003D45C(v7, type metadata accessor for CRLBoardIdentifier);
  return v23;
}

uint64_t sub_100ABDD6C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100ABDDF8(float a1)
{
  v3 = [objc_opt_self() mainBundle];
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1005B981C(&qword_1019F54E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10146C6B0;
  *(v7 + 56) = &type metadata for Float;
  *(v7 + 64) = &protocol witness table for Float;
  *(v7 + 32) = a1;
  static String.localizedStringWithFormat(_:_:)();

  LODWORD(v5) = UIAccessibilityAnnouncementNotification;
  v8 = String._bridgeToObjectiveC()();

  UIAccessibilityPostNotification(v5, v8);

  v9 = *(v1 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = 0;
  v16[4] = sub_100612814;
  v16[5] = v10;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = *"";
  v16[2] = sub_10066C70C;
  v16[3] = &unk_101894058;
  v11 = _Block_copy(v16);

  [v9 enumerateEditorsOnStackUsingBlock:v11];
  _Block_release(v11);
  swift_beginAccess();
  v12 = *(v10 + 16);
  v13 = *(v10 + 24);
  swift_unknownObjectRetain();

  if (v12)
  {
    ObjectType = swift_getObjectType();
    (*(v13 + 32))(ObjectType, v13, a1);
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_100ABE09C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLMiniFormatterTextDataProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100ABE13C()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_100ABE298();
    if (v1 <= 0x3F)
    {
      sub_100ABE2E8(319, &qword_101A0F4F0, &type metadata accessor for AttributedString, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_100ABE2E8(319, &qword_101A046F0, &type metadata accessor for URL, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_100ABE2E8(319, &unk_101A0F4F8, &type metadata accessor for UTType, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100ABE298()
{
  if (!qword_1019F5D48)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1019F5D48);
    }
  }
}

void sub_100ABE2E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100ABE394()
{
  sub_100ABE2E8(319, &qword_1019F44E0, &type metadata accessor for UUID, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_100ABE298();
    if (v1 <= 0x3F)
    {
      sub_100ABE2E8(319, &unk_101A0F5A0, type metadata accessor for CRLSEManifestItem, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100ABE498(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A0F628);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_100020E58(a1, a1[3]);
  sub_100ABF91C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  type metadata accessor for UUID();
  sub_100ABF970(&qword_1019F43C0, &type metadata accessor for UUID);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for CRLSEImportManifest(0);
    v14 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v13 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = *(v3 + *(v9 + 28));
    v11[15] = 3;
    sub_1005B981C(&qword_101A0F5E8);
    sub_100ABFA0C(&qword_101A0F630, &qword_101A0F638);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100ABE718@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  v7 = sub_1005B981C(&qword_101A0F5D8);
  v25 = *(v7 - 8);
  v26 = v7;
  __chkstk_darwin(v7);
  v9 = &v23 - v8;
  v27 = type metadata accessor for CRLSEImportManifest(0);
  __chkstk_darwin(v27);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_100020E58(a1, a1[3]);
  sub_100ABF91C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100005070(a1);
    sub_10000CAAC(v11, &qword_1019F6990);
  }

  else
  {
    v13 = v25;
    v32 = 0;
    sub_100ABF970(&qword_1019F43A8, &type metadata accessor for UUID);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_10002C638(v6, v11, &qword_1019F6990);
    v31 = 1;
    v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v15 = v27;
    v16 = &v11[*(v27 + 20)];
    *v16 = v14;
    v16[1] = v17;
    v30 = 2;
    v18 = KeyedDecodingContainer.decode(_:forKey:)();
    v19 = &v11[*(v15 + 24)];
    *v19 = v18;
    v19[1] = v20;
    sub_1005B981C(&qword_101A0F5E8);
    v29 = 3;
    sub_100ABFA0C(&qword_101A0F5F0, &qword_101A0F5F8);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v21 = *(v15 + 28);
    (*(v13 + 8))(v9, v26);
    *&v11[v21] = v28;
    sub_100054154(v11, v24, type metadata accessor for CRLSEImportManifest);
    sub_100005070(a1);
    return sub_100055968(v11, type metadata accessor for CRLSEImportManifest);
  }
}

uint64_t sub_100ABEBA4()
{
  v1 = 0x4955556472616F62;
  v2 = 0x656C746974;
  if (*v0 != 2)
  {
    v2 = 0x736D657469;
  }

  if (*v0)
  {
    v1 = 0x6D614E72656E776FLL;
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

uint64_t sub_100ABEC1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100ABFCD8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100ABEC44(uint64_t a1)
{
  v2 = sub_100ABF91C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100ABEC80(uint64_t a1)
{
  v2 = sub_100ABF91C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100ABECEC(void *a1)
{
  v3 = sub_1005B981C(&qword_101A0F618);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100020E58(a1, a1[3]);
  sub_100ABF9B8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for UUID();
  sub_100ABF970(&qword_1019F43C0, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for CRLSEManifestItem(0);
    v8[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[13] = 2;
    type metadata accessor for AttributedString();
    sub_100ABF970(&qword_101A04700, &type metadata accessor for AttributedString);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v8[12] = 3;
    type metadata accessor for URL();
    sub_100ABF970(&qword_101A0D988, &type metadata accessor for URL);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v8[11] = 4;
    type metadata accessor for UTType();
    sub_100ABF970(&qword_101A0F620, &type metadata accessor for UTType);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100ABF008@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_1005B981C(&unk_1019F8DB0);
  __chkstk_darwin(v3 - 8);
  v42 = v40 - v4;
  v5 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v5 - 8);
  v43 = v40 - v6;
  v7 = sub_1005B981C(&qword_1019FC880);
  __chkstk_darwin(v7 - 8);
  v45 = v40 - v8;
  v46 = type metadata accessor for UUID();
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v48 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1005B981C(&qword_101A0F600);
  v47 = *(v50 - 8);
  __chkstk_darwin(v50);
  v11 = v40 - v10;
  v12 = type metadata accessor for CRLSEManifestItem(0);
  __chkstk_darwin(v12);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 24);
  v17 = type metadata accessor for AttributedString();
  v18 = *(*(v17 - 8) + 56);
  v55 = v16;
  v18(&v14[v16], 1, 1, v17);
  v19 = v12[7];
  v20 = type metadata accessor for URL();
  v21 = *(*(v20 - 8) + 56);
  v53 = v19;
  v21(&v14[v19], 1, 1, v20);
  v22 = v12[8];
  v23 = type metadata accessor for UTType();
  v24 = *(*(v23 - 8) + 56);
  v54 = v22;
  v51 = v14;
  v24(&v14[v22], 1, 1, v23);
  sub_100020E58(a1, a1[3]);
  sub_100ABF9B8();
  v49 = v11;
  v25 = v52;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v25)
  {
    sub_100005070(a1);
    v29 = v53;
    v30 = v51;
    sub_10000CAAC(&v51[v55], &qword_1019FC880);
    sub_10000CAAC(&v30[v29], &unk_1019F33C0);
    return sub_10000CAAC(&v30[v54], &unk_1019F8DB0);
  }

  else
  {
    v40[1] = v23;
    v40[2] = v20;
    v26 = v44;
    v27 = v45;
    v52 = a1;
    v60 = 0;
    sub_100ABF970(&qword_1019F43A8, &type metadata accessor for UUID);
    v28 = v46;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v31 = v51;
    (*(v26 + 32))(v51, v48, v28);
    v59 = 1;
    v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v33 = (v31 + v12[5]);
    *v33 = v32;
    v33[1] = v34;
    v48 = v34;
    v58 = 2;
    sub_100ABF970(&qword_101A046F8, &type metadata accessor for AttributedString);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_10002C638(v27, v31 + v55, &qword_1019FC880);
    v57 = 3;
    sub_100ABF970(&qword_101A0D958, &type metadata accessor for URL);
    v35 = v43;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v36 = v31;
    v37 = v47;
    sub_10002C638(v35, v36 + v53, &unk_1019F33C0);
    v56 = 4;
    sub_100ABF970(&qword_101A0F610, &type metadata accessor for UTType);
    v38 = v42;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v37 + 8))(v49, v50);
    sub_10002C638(v38, v36 + v54, &unk_1019F8DB0);
    sub_100054154(v36, v41, type metadata accessor for CRLSEManifestItem);
    sub_100005070(v52);
    return sub_100055968(v36, type metadata accessor for CRLSEManifestItem);
  }
}

uint64_t sub_100ABF7B0()
{
  v1 = *v0;
  v2 = 0x444955556D657469;
  v3 = 0x7475626972747461;
  v4 = 7107189;
  if (v1 != 3)
  {
    v4 = 0x495455616964656DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656C746974;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100ABF84C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100ABFE40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100ABF874(uint64_t a1)
{
  v2 = sub_100ABF9B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100ABF8B0(uint64_t a1)
{
  v2 = sub_100ABF9B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100ABF91C()
{
  result = qword_101A0F5E0;
  if (!qword_101A0F5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0F5E0);
  }

  return result;
}

uint64_t sub_100ABF970(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100ABF9B8()
{
  result = qword_101A0F608;
  if (!qword_101A0F608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0F608);
  }

  return result;
}

uint64_t sub_100ABFA0C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1005C4E5C(&qword_101A0F5E8);
    sub_100ABF970(a2, type metadata accessor for CRLSEManifestItem);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100ABFACC()
{
  result = qword_101A0F640;
  if (!qword_101A0F640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0F640);
  }

  return result;
}

unint64_t sub_100ABFB24()
{
  result = qword_101A0F648;
  if (!qword_101A0F648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0F648);
  }

  return result;
}

unint64_t sub_100ABFB7C()
{
  result = qword_101A0F650;
  if (!qword_101A0F650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0F650);
  }

  return result;
}

unint64_t sub_100ABFBD4()
{
  result = qword_101A0F658;
  if (!qword_101A0F658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0F658);
  }

  return result;
}

unint64_t sub_100ABFC2C()
{
  result = qword_101A0F660;
  if (!qword_101A0F660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0F660);
  }

  return result;
}

unint64_t sub_100ABFC84()
{
  result = qword_101A0F668;
  if (!qword_101A0F668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0F668);
  }

  return result;
}

uint64_t sub_100ABFCD8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4955556472616F62 && a2 == 0xE900000000000044;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D614E72656E776FLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
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

uint64_t sub_100ABFE40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444955556D657469 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEE00747865546465 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x495455616964656DLL && a2 == 0xE800000000000000)
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

uint64_t sub_100ABFFF4()
{
  v1 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  if (type metadata accessor for CRLURLEditor())
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v10 = [v8 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];
  if (swift_dynamicCastClass())
  {
    sub_10092534C(v3);
    swift_unknownObjectRelease();
    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      (*(v5 + 32))(v7, v3, v4);
      sub_100AC0370();
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      (*(v5 + 8))(v7, v4);
      return v11;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v5 + 56))(v3, 1, 1, v4);
  }

  sub_10000CAAC(v3, &unk_1019F33C0);
  return 0;
}

uint64_t sub_100AC0228()
{
  v1 = *&v0[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController];
  if (type metadata accessor for CRLURLEditor())
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  [v1 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];
  if (swift_dynamicCastClass())
  {
    v5[3] = type metadata accessor for CRLMiniFormatterURLDataProvider();
    v5[0] = v0;
    v3 = v0;
    sub_10092281C();
    swift_unknownObjectRelease();
    return sub_10000CAAC(v5, &unk_1019F4D00);
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

id sub_100AC0318()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLMiniFormatterURLDataProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100AC0370()
{
  result = qword_101A15B10;
  if (!qword_101A15B10)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A15B10);
  }

  return result;
}

uint64_t sub_100AC03C8()
{
  v0 = sub_1005B981C(&qword_1019F6270);
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
  sub_10061655C(v10, qword_101AD7178);
  sub_1005EB3DC(v10, qword_101AD7178);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v9 + 56))(v2, 1, 1, v8);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_100AC06B8()
{
  v0 = sub_1005B981C(&qword_1019F8B00);
  __chkstk_darwin(v0 - 8);
  v63 = &v37 - v1;
  v2 = sub_1005B981C(&qword_1019F6270);
  __chkstk_darwin(v2 - 8);
  v62 = &v37 - v3;
  v38 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v38 - 8);
  __chkstk_darwin(v38);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for LocalizedStringResource();
  v59 = v9;
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v50 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A0F708);
  v12 = sub_1005B981C(&qword_101A0F710);
  v60 = v12;
  v13 = *(v12 - 8);
  v44 = *(v13 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v45 = 2 * v44;
  v15 = swift_allocObject();
  v53 = xmmword_10146C4D0;
  v46 = v15;
  *(v15 + 16) = xmmword_10146C4D0;
  v51 = v15 + v14;
  v43 = *(v12 + 48);
  *(v15 + v14) = 0;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v4 + 104);
  v48 = v4 + 104;
  v61 = v17;
  v18 = v38;
  v17(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v38);
  v19 = v6;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v58 = *(v10 + 56);
  v58(v62, 1, 1, v9);
  v56 = type metadata accessor for DisplayRepresentation.Image();
  v20 = *(v56 - 8);
  v55 = *(v20 + 56);
  v57 = v20 + 56;
  v55(v63, 1, 1, v56);
  v42 = sub_1005B981C(&qword_101A08C08);
  v54 = v10 + 56;
  v21 = *(v10 + 72);
  v41 = *(v10 + 80);
  v39 = (v41 + 32) & ~v41;
  v49 = v21;
  v52 = 2 * v21;
  v40 = 3 * v21;
  v37 = swift_allocObject();
  *(v37 + 16) = v53;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v22 = v16;
  v23 = v16;
  v24 = v61;
  v61(v6, v23, v18);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v47 = v22;
  v24(v6, v22, v18);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v25 = v24;
  v24(v19, v22, v18);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v26 = v51;
  v28 = v62;
  v27 = v63;
  DisplayRepresentation.init(title:subtitle:image:synonyms:)();
  v43 = (v26 + v44);
  v44 = *(v60 + 48);
  *v43 = 1;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v29 = v47;
  v25(v19, v47, v18);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v58(v28, 1, 1, v59);
  v55(v27, 1, 1, v56);
  *(swift_allocObject() + 16) = v53;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v30 = v18;
  v31 = v18;
  v32 = v61;
  v61(v19, v29, v31);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v32(v19, v29, v30);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v32(v19, v29, v30);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v34 = v62;
  v33 = v63;
  DisplayRepresentation.init(title:subtitle:image:synonyms:)();
  *&v53 = *(v60 + 48);
  *(v51 + v45) = 2;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v61(v19, v47, v30);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v58(v34, 1, 1, v59);
  v55(v33, 1, 1, v56);
  DisplayRepresentation.init(title:subtitle:image:)();
  v35 = sub_100BD82F4(v46);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_101AD7190 = v35;
  return result;
}

uint64_t sub_100AC1154(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x69726F7661666E75;
  v4 = 0xEA00000000006574;
  if (v2 != 1)
  {
    v3 = 0x656C67676F74;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x657469726F766166;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x69726F7661666E75;
  v8 = 0xEA00000000006574;
  if (*a2 != 1)
  {
    v7 = 0x656C67676F74;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x657469726F766166;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
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

unint64_t sub_100AC125C()
{
  result = qword_101A0F698;
  if (!qword_101A0F698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0F698);
  }

  return result;
}

Swift::Int sub_100AC12B0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100AC1354()
{
  String.hash(into:)();
}

Swift::Int sub_100AC13E4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100AC1484@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100AC1B44(*a1);
  *a2 = result;
  return result;
}

void sub_100AC14B4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEA00000000006574;
  v5 = 0x69726F7661666E75;
  if (v2 != 1)
  {
    v5 = 0x656C67676F74;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x657469726F766166;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_100AC1518()
{
  result = qword_101A0F6A0;
  if (!qword_101A0F6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0F6A0);
  }

  return result;
}

unint64_t sub_100AC1570()
{
  result = qword_101A0F6A8;
  if (!qword_101A0F6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0F6A8);
  }

  return result;
}

unint64_t sub_100AC15C8()
{
  result = qword_101A0F6B0;
  if (!qword_101A0F6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0F6B0);
  }

  return result;
}

unint64_t sub_100AC1620()
{
  result = qword_101A0F6B8;
  if (!qword_101A0F6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0F6B8);
  }

  return result;
}

unint64_t sub_100AC1674()
{
  result = qword_101A0F6C0;
  if (!qword_101A0F6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0F6C0);
  }

  return result;
}

unint64_t sub_100AC16C8()
{
  result = qword_101A0F6C8;
  if (!qword_101A0F6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0F6C8);
  }

  return result;
}

unint64_t sub_100AC1720()
{
  result = qword_101A0F6D0;
  if (!qword_101A0F6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0F6D0);
  }

  return result;
}

uint64_t sub_100AC1774@<X0>(uint64_t a1@<X8>)
{
  if (qword_1019F1BA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_1005EB3DC(v2, qword_101AD7178);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100AC186C()
{
  result = qword_101A0F6D8;
  if (!qword_101A0F6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0F6D8);
  }

  return result;
}

uint64_t sub_100AC18C0(uint64_t a1)
{
  v2 = sub_100AC186C();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100AC1910()
{
  result = qword_101A0F6E0;
  if (!qword_101A0F6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0F6E0);
  }

  return result;
}

unint64_t sub_100AC1968()
{
  result = qword_101A0F6E8;
  if (!qword_101A0F6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0F6E8);
  }

  return result;
}

unint64_t sub_100AC19C0()
{
  result = qword_101A0F6F0;
  if (!qword_101A0F6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0F6F0);
  }

  return result;
}

uint64_t sub_100AC1A14()
{
  if (qword_1019F1BB0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100AC1A70(uint64_t a1)
{
  v2 = sub_100AC1720();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100AC1AC0()
{
  result = qword_101A0F6F8;
  if (!qword_101A0F6F8)
  {
    sub_1005C4E5C(&qword_101A0F700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0F6F8);
  }

  return result;
}

unint64_t sub_100AC1B44(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1018750E0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100AC1B98(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A0F718);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id CRLiOSParticipantContactViewController.init(contact:doneAction:)(void *a1, void *a2)
{
  v3 = v2;
  *&v3[OBJC_IVAR____TtC8Freeform38CRLiOSParticipantContactViewController_contact] = a1;
  v6 = objc_opt_self();
  v7 = a1;
  v8 = [v6 viewControllerForContact:v7];
  v9 = [objc_allocWithZone(CNContactStore) init];
  [v8 setContactStore:v9];

  [v8 setAllowsEditing:0];
  v10 = [v8 navigationItem];
  sub_100AC1DE0();
  v11 = a2;
  v17.value.super.super.isa = a2;
  v17.is_nil = 0;
  isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemDone, v17, v18).super.super.isa;
  [v10 setRightBarButtonItem:isa];

  *&v3[OBJC_IVAR____TtC8Freeform38CRLiOSParticipantContactViewController_contactViewController] = v8;
  v16.receiver = v3;
  v16.super_class = type metadata accessor for CRLiOSParticipantContactViewController();
  v13 = v8;
  v14 = objc_msgSendSuper2(&v16, "initWithRootViewController:", v13);
  [v14 setModalInPresentation:{0, v16.receiver, v16.super_class}];

  return v14;
}

unint64_t sub_100AC1DE0()
{
  result = qword_1019F6BF0;
  if (!qword_1019F6BF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1019F6BF0);
  }

  return result;
}

Swift::Void __swiftcall CRLiOSParticipantContactViewController.viewDidLayoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for CRLiOSParticipantContactViewController();
  objc_msgSendSuper2(&v1, "viewDidLayoutSubviews");
  [v0 setPreferredContentSize:{500.0, 700.0}];
}

id CRLiOSParticipantContactViewController.__allocating_init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = 0;
  if (a2)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v5 = objc_allocWithZone(v2);

  return [v5 initWithNavigationBarClass:ObjCClassFromMetadata toolbarClass:v3];
}

id CRLiOSParticipantContactViewController.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController:a1];

  return v3;
}

id CRLiOSParticipantContactViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLiOSParticipantContactViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100AC21EC()
{
  v0 = sub_1005B981C(&unk_101A287C0);
  sub_10061655C(v0, qword_101AD7198);
  sub_1005EB3DC(v0, qword_101AD7198);
  return Tips.Event.init<>(id:)();
}

uint64_t sub_100AC225C()
{
  v0 = sub_1005B981C(&unk_1019F6CF0);
  sub_10061655C(v0, qword_101AD71B0);
  sub_1005EB3DC(v0, qword_101AD71B0);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_100AC230C()
{
  v0 = sub_1005B981C(&unk_1019F6CF0);
  sub_10061655C(v0, qword_101AD71C8);
  sub_1005EB3DC(v0, qword_101AD71C8);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_100AC23C4()
{
  v0 = sub_1005B981C(&unk_1019F6CF0);
  sub_10061655C(v0, qword_101AD71E0);
  sub_1005EB3DC(v0, qword_101AD71E0);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_100AC2474()
{
  v0 = sub_1005B981C(&unk_1019F6CF0);
  sub_10061655C(v0, qword_101AD71F8);
  sub_1005EB3DC(v0, qword_101AD71F8);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_100AC2524()
{
  v0 = sub_1005B981C(&unk_1019F6CF0);
  sub_10061655C(v0, qword_101AD7210);
  sub_1005EB3DC(v0, qword_101AD7210);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_100AC25D4@<X0>(int a1@<W1>, uint64_t *a2@<X8>)
{
  v13 = a1;
  v3 = sub_1005B981C(&qword_1019FE720);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - v5;
  v7 = sub_1005B981C(&qword_1019FE728);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  sub_10001A2F8(&qword_1019FE730, &qword_1019FE728);
  static PredicateExpressions.build_Arg<A>(_:)();
  v14 = v13;
  static PredicateExpressions.build_Arg<A>(_:)();
  a2[3] = sub_1005B981C(&qword_1019FE738);
  a2[4] = sub_100758DC4();
  sub_10002C58C(a2);
  sub_10001A2F8(&qword_1019FE758, &qword_1019FE720);
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100AC283C@<X0>(uint64_t *a1@<X8>)
{
  v32 = a1;
  v1 = type metadata accessor for PredicateExpressions.ComparisonOperator();
  v30 = *(v1 - 8);
  v31 = v1;
  __chkstk_darwin(v1);
  v29 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1005B981C(&qword_1019FE6A0);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  __chkstk_darwin(v3);
  v28 = &v26 - v5;
  v6 = sub_1005B981C(&qword_1019FE6A8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - v8;
  v10 = sub_1005B981C(&qword_1019FE6B0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - v12;
  v27 = sub_1005B981C(&qword_101A0F770);
  v14 = *(v27 - 8);
  __chkstk_darwin(v27);
  v16 = &v26 - v15;
  sub_10001A2F8(&qword_1019FE6C8, &qword_1019FE6A8);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v7 + 8))(v9, v6);
  swift_getKeyPath();
  sub_10001A2F8(&qword_101A0F778, &qword_1019FE6B0);
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v11 + 8))(v13, v10);
  v35 = 1;
  v17 = v28;
  static PredicateExpressions.build_Arg<A>(_:)();
  v19 = v29;
  v18 = v30;
  v20 = v31;
  (*(v30 + 104))(v29, enum case for PredicateExpressions.ComparisonOperator.lessThan(_:), v31);
  v21 = sub_1005B981C(&qword_101A0F780);
  v22 = v32;
  v32[3] = v21;
  v22[4] = sub_100AC3A3C();
  sub_10002C58C(v22);
  sub_10001A2F8(&qword_101A0F798, &qword_101A0F770);
  sub_10001A2F8(&qword_1019FE718, &qword_1019FE6A0);
  v23 = v27;
  v24 = v33;
  static PredicateExpressions.build_Comparison<A, B>(lhs:rhs:op:)();
  (*(v18 + 8))(v19, v20);
  (*(v34 + 8))(v17, v24);
  return (*(v14 + 8))(v16, v23);
}

uint64_t sub_100AC2D94()
{
  v0 = sub_1005B981C(&qword_101A0F760);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - v2;
  v4 = type metadata accessor for Tips.IgnoresDisplayFrequency();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&qword_101A0F768);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - v10;
  Tips.IgnoresDisplayFrequency.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();
  (*(v5 + 8))(v7, v4);
  v15 = v4;
  v16 = &protocol witness table for Tips.IgnoresDisplayFrequency;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  static Tips.OptionsBuilder.buildPartialBlock<A>(first:)();
  v15 = v8;
  v16 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v13 = static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  (*(v1 + 8))(v3, v0);
  (*(v9 + 8))(v11, v8);
  return v13;
}

uint64_t sub_100AC3038@<X0>(uint64_t *a1@<X8>)
{
  sub_10067E1BC();
  result = Tip.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100AC307C()
{
  result = qword_101A0F758;
  if (!qword_101A0F758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0F758);
  }

  return result;
}

uint64_t sub_100AC30D0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100017CD8();
  return Text.init<A>(_:)();
}

uint64_t sub_100AC31C8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100017CD8();
  return Text.init<A>(_:)();
}

uint64_t sub_100AC32B4()
{
  v0 = sub_1005B981C(&unk_101A287C0);
  v26 = *(v0 - 8);
  v27 = v0;
  __chkstk_darwin(v0);
  v28 = v25 - v1;
  v2 = sub_1005B981C(&unk_1019F6CF0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v25 - v4;
  v6 = type metadata accessor for Tips.Rule();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1019F1BE0 != -1)
  {
    swift_once();
  }

  v10 = sub_1005EB3DC(v2, qword_101AD7210);
  swift_beginAccess();
  v11 = *(v3 + 16);
  v11(v5, v10, v2);
  Tips.Rule.init<A>(_:_:)();
  v25[2] = static Tips.RuleBuilder.buildExpression(_:)();
  v12 = *(v7 + 8);
  v12(v9, v6);
  v13 = v6;
  if (qword_1019F1BC0 != -1)
  {
    swift_once();
  }

  v14 = sub_1005EB3DC(v2, qword_101AD71B0);
  swift_beginAccess();
  v11(v5, v14, v2);
  Tips.Rule.init<A>(_:_:)();
  v25[1] = static Tips.RuleBuilder.buildExpression(_:)();
  v12(v9, v13);
  v15 = v12;
  if (qword_1019F1BC8 != -1)
  {
    swift_once();
  }

  v16 = sub_1005EB3DC(v2, qword_101AD71C8);
  swift_beginAccess();
  v11(v5, v16, v2);
  Tips.Rule.init<A>(_:_:)();
  v25[0] = static Tips.RuleBuilder.buildExpression(_:)();
  v15(v9, v13);
  if (qword_1019F1BD0 != -1)
  {
    swift_once();
  }

  v17 = sub_1005EB3DC(v2, qword_101AD71E0);
  swift_beginAccess();
  v11(v5, v17, v2);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  v15(v9, v13);
  v18 = v15;
  v19 = v13;
  if (qword_1019F1BD8 != -1)
  {
    swift_once();
  }

  v20 = sub_1005EB3DC(v2, qword_101AD71F8);
  swift_beginAccess();
  v11(v5, v20, v2);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  v18(v9, v19);
  if (qword_1019F1BB8 != -1)
  {
    swift_once();
  }

  v21 = v27;
  v22 = sub_1005EB3DC(v27, qword_101AD7198);
  (*(v26 + 16))(v28, v22, v21);
  type metadata accessor for Tips.EmptyDonation();
  sub_100758B68(&qword_1019FE690);
  sub_100758B68(&qword_1019FE698);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  v18(v9, v19);
  static Tips.RuleBuilder.buildPartialBlock(first:)();

  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  v23 = static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  return v23;
}

unint64_t sub_100AC3A3C()
{
  result = qword_101A0F788;
  if (!qword_101A0F788)
  {
    sub_1005C4E5C(&qword_101A0F780);
    sub_100AC3AF4();
    sub_10001A2F8(&qword_1019FE708, &qword_1019FE6A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0F788);
  }

  return result;
}

unint64_t sub_100AC3AF4()
{
  result = qword_101A0F790;
  if (!qword_101A0F790)
  {
    sub_1005C4E5C(&qword_101A0F770);
    sub_100758BAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0F790);
  }

  return result;
}

id sub_100AC3C28()
{
  v1 = v0;
  v2 = objc_opt_self();
  [v2 begin];
  [v2 setDisableActions:1];
  v3 = &v0[OBJC_IVAR____TtCC8Freeform28CRLSceneCaptureSnapshotLayer35CRLSceneCaptureContentClippingLayer_clippingRect];
  if (CGRectIsEmpty(*&v0[OBJC_IVAR____TtCC8Freeform28CRLSceneCaptureSnapshotLayer35CRLSceneCaptureContentClippingLayer_clippingRect]) || CGRectIsNull(*v3) || CGRectIsInfinite(*v3))
  {
    [v0 setMask:0];
  }

  else
  {
    Mutable = CGPathCreateMutable();
    if (v1[OBJC_IVAR____TtCC8Freeform28CRLSceneCaptureSnapshotLayer35CRLSceneCaptureContentClippingLayer_invertClipping] == 1)
    {
      CGMutablePathRef.addRect(_:transform:)();
      v6 = &kCAFillRuleEvenOdd;
    }

    else
    {
      v6 = &kCAFillRuleNonZero;
    }

    v7 = *&v1[OBJC_IVAR____TtCC8Freeform28CRLSceneCaptureSnapshotLayer35CRLSceneCaptureContentClippingLayer_maskLayer];
    [v7 setFillRule:*v6];
    CGMutablePathRef.addRect(_:transform:)();
    [v7 setPath:{Mutable, 0x3FF0000000000000, 0, 0, 0x3FF0000000000000, 0, 0}];
    v8 = [objc_opt_self() blackColor];
    v9 = [v8 CGColor];

    [v7 setFillColor:v9];
    [v1 setMask:v7];
  }

  return [v2 commit];
}

id sub_100AC3FA4(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtCC8Freeform28CRLSceneCaptureSnapshotLayer35CRLSceneCaptureContentClippingLayer_clippingRect];
  *v3 = 0u;
  v3[1] = 0u;
  v1[OBJC_IVAR____TtCC8Freeform28CRLSceneCaptureSnapshotLayer35CRLSceneCaptureContentClippingLayer_invertClipping] = 0;
  v4 = &v1[OBJC_IVAR____TtCC8Freeform28CRLSceneCaptureSnapshotLayer35CRLSceneCaptureContentClippingLayer_renderRect];
  *v4 = 0u;
  v4[1] = 0u;
  v5 = OBJC_IVAR____TtCC8Freeform28CRLSceneCaptureSnapshotLayer35CRLSceneCaptureContentClippingLayer_maskLayer;
  *&v1[v5] = [objc_allocWithZone(CAShapeLayer) init];
  v8.receiver = v1;
  v8.super_class = type metadata accessor for CRLSceneCaptureSnapshotLayer.CRLSceneCaptureContentClippingLayer();
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

id sub_100AC4150(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100AC422C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR____TtC8Freeform24CRLPasteboardReadChannel_pasteboardDataManaging];
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0;
  *&v3[OBJC_IVAR____TtC8Freeform24CRLPasteboardReadChannel_chunkSizes] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC8Freeform24CRLPasteboardReadChannel_dataCache] = _swiftEmptyDictionarySingleton;
  v3[OBJC_IVAR____TtC8Freeform24CRLPasteboardReadChannel_hasReachedLastChunk] = 0;
  sub_10000630C(a1, v13);
  swift_beginAccess();
  sub_100AC4738(v13, v8);
  swift_endAccess();
  v9 = &v3[OBJC_IVAR____TtC8Freeform24CRLPasteboardReadChannel_pasteboardType];
  *v9 = a2;
  v9[1] = a3;
  v12.receiver = v3;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, "init");
  sub_100005070(a1);
  return v10;
}

uint64_t sub_100AC432C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8Freeform24CRLPasteboardReadChannel_pasteboardType);
  if (a1 < 1)
  {
  }

  else
  {

    v3._countAndFlagsBits = 46;
    v3._object = 0xE100000000000000;
    String.append(_:)(v3);
    v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v4);
  }

  return v2;
}

void sub_100AC4608(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  _Block_copy(v4);
  v5 = a1;
  sub_100AC47A8(0, 0x7FFFFFFFFFFFFFFFLL, v5, v4);
  _Block_release(v4);

  _Block_release(v4);
}

uint64_t sub_100AC4738(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A0F8E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100AC47A8(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v130 = a4;
  v135 = a1;
  v6 = type metadata accessor for DispatchData();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC8Freeform24CRLPasteboardReadChannel_pasteboardDataManaging;
  swift_beginAccess();
  sub_100AC54B8(a3 + v10, &v137);
  if (!v138)
  {
    sub_100AC5528(&v137);
LABEL_40:
    static DispatchData.empty.getter();
    v42 = DispatchData._bridgeToObjectiveC()();
    (*(v7 + 8))(v9, v6);
    goto LABEL_52;
  }

  sub_100050F74(&v137, v139);
  v133 = a2;
  if (a2 <= 0)
  {
    sub_100005070(v139);
    goto LABEL_40;
  }

  v122 = v9;
  v123 = v7;
  v124 = v6;
  v11 = 0;
  LOBYTE(v12) = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = OBJC_IVAR____TtC8Freeform24CRLPasteboardReadChannel_chunkSizes;
  v17 = OBJC_IVAR____TtC8Freeform24CRLPasteboardReadChannel_hasReachedLastChunk;
  v128 = (a3 + OBJC_IVAR____TtC8Freeform24CRLPasteboardReadChannel_pasteboardType);
  v18 = 0xF000000000000000;
  v19 = v135;
  v134 = OBJC_IVAR____TtC8Freeform24CRLPasteboardReadChannel_chunkSizes;
  v125 = OBJC_IVAR____TtC8Freeform24CRLPasteboardReadChannel_hasReachedLastChunk;
  while (1)
  {
    if ((v12 & 1) != 0 || v14 > v19)
    {
      v39 = v14 + v13;
      v40 = __OFADD__(v14, v13);
LABEL_44:
      if (v40)
      {
        goto LABEL_108;
      }

      if (v39 <= v19)
      {
        sub_100025870(v15, v18);
      }

      else
      {
        v127 = a3;
        v43 = v15;
        v44 = v18;
        v45 = v15;
        if (v18 >> 60 != 15)
        {
LABEL_56:
          v132 = v44;
          v60 = OBJC_IVAR____TtC8Freeform24CRLPasteboardReadChannel_dataCache;
          v61 = v127;
          swift_beginAccess();
          sub_100024E84(v45, v18);
          v62 = v132;
          sub_100024E98(v43, v132);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v136 = *(v61 + v60);
          *(v61 + v60) = 0x8000000000000000;
          sub_100A9FFD0(v43, v62, v11, isUniquelyReferenced_nonNull_native);
          *(v61 + v60) = v136;
          swift_endAccess();
          v55 = v43;
          v64 = v43;
          v54 = v132;
          sub_10002640C(v64, v132);
          goto LABEL_57;
        }

        v132 = v18;
        v46 = v15;
        v47 = OBJC_IVAR____TtC8Freeform24CRLPasteboardReadChannel_dataCache;
        v48 = v127;
        swift_beginAccess();
        v49 = *(v48 + v47);
        if (*(v49 + 16))
        {
          v50 = sub_1007C7EC0(v11);
          if (v51)
          {
            v52 = (*(v49 + 56) + 16 * v50);
            v53 = *v52;
            v54 = v52[1];
            swift_endAccess();
            v55 = v53;
            sub_100024E98(v53, v54);
LABEL_57:
            v41 = __OFSUB__(v19, v14);
            v65 = v19 - v14;
            v66 = v133;
            if (v41)
            {
              goto LABEL_98;
            }

            v67 = v55;
            v126 = v130 + 16;
            while (1)
            {
              if (__OFSUB__(v13, v65))
              {
                goto LABEL_99;
              }

              if (v13 - v65 >= v66)
              {
                v69 = v66;
              }

              else
              {
                v69 = v13 - v65;
              }

              if (__OFADD__(v65, v69))
              {
                goto LABEL_100;
              }

              if (v65 + v69 < v65)
              {
                goto LABEL_101;
              }

              v131 = v67;
              v70 = Data.subdata(in:)();
              v72 = v71;
              isa = Data._bridgeToObjectiveC()().super.isa;
              sub_10002640C(v70, v72);
              v74 = [(objc_class *)isa crl_dispatchData];

              (*(v130 + 2))(v130, 0, v74, 0);
              v41 = __OFADD__(v135, v69);
              v135 += v69;
              if (v41)
              {
                goto LABEL_102;
              }

              v41 = __OFSUB__(v66, v69);
              v75 = v66 - v69;
              if (v41)
              {
                goto LABEL_103;
              }

              if (v75 < 1)
              {

                sub_10002640C(v131, v54);
LABEL_95:
                sub_100005070(v139);
                v96 = v122;
                static DispatchData.empty.getter();
                v42 = DispatchData._bridgeToObjectiveC()();
                (*(v123 + 8))(v96, v124);
                (*(v130 + 2))(v130, 1, v42, 0);
                goto LABEL_53;
              }

              v132 = v54;
              v133 = v75;
              v76 = v11 + 1;
              if (__OFADD__(v11, 1))
              {
                goto LABEL_104;
              }

              v41 = __OFADD__(v14, v13);
              v14 += v13;
              if (v41)
              {
                goto LABEL_105;
              }

              v77 = v140;
              v78 = v141;
              sub_100020E58(v139, v140);
              v79 = *v128;
              v80 = v128[1];
              if (v76 <= 0)
              {
              }

              else
              {
                *&v137 = *v128;
                *(&v137 + 1) = v80;

                v81._countAndFlagsBits = 46;
                v81._object = 0xE100000000000000;
                String.append(_:)(v81);
                v136 = v11 + 1;
                v82._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                String.append(_:)(v82);

                v80 = *(&v137 + 1);
                v79 = v137;
              }

              v67 = (*(v78 + 8))(v79, v80, v77, v78);
              v84 = v83;

              if (v84 >> 60 == 15)
              {

                sub_10002640C(v131, v132);
                *(v127 + v125) = 1;
                goto LABEL_95;
              }

              v85 = v84 >> 62;
              v129 = v74;
              if ((v84 >> 62) > 1)
              {
                break;
              }

              if (v85)
              {
                if (__OFSUB__(HIDWORD(v67), v67))
                {
                  goto LABEL_107;
                }

                v86 = HIDWORD(v67) - v67;
LABEL_85:
                sub_100024E98(v67, v84);
                goto LABEL_87;
              }

              v86 = BYTE6(v84);
LABEL_87:
              v89 = v127;
              v90 = v134;
              v91 = *(v127 + v134);
              v92 = *(v91 + 2);
              if (v76 == v92)
              {
                v93 = swift_isUniquelyReferenced_nonNull_native();
                *(v89 + v90) = v91;
                if ((v93 & 1) == 0)
                {
                  v91 = sub_100B36684(0, v11 + 2, 1, v91);
                  *(v127 + v134) = v91;
                }

                v13 = v86;
                v95 = *(v91 + 2);
                v94 = *(v91 + 3);
                v68 = v129;
                if (v95 >= v94 >> 1)
                {
                  v91 = sub_100B36684((v94 > 1), v95 + 1, 1, v91);
                }

                *(v91 + 2) = v95 + 1;
                *&v91[8 * v95 + 32] = v13;
                *(v127 + v134) = v91;
              }

              else
              {
                v13 = v86;
                v68 = v129;
                if (v76 >= v92)
                {
                  goto LABEL_111;
                }
              }

              sub_100025870(v67, v84);
              sub_10002640C(v131, v132);
              ++v11;
              v54 = v84;
              v65 = v135 - v14;
              v66 = v133;
              if (__OFSUB__(v135, v14))
              {
                goto LABEL_98;
              }
            }

            if (v85 != 2)
            {
              v86 = 0;
              goto LABEL_87;
            }

            v88 = *(v67 + 16);
            v87 = *(v67 + 24);
            v86 = v87 - v88;
            if (__OFSUB__(v87, v88))
            {
              goto LABEL_106;
            }

            goto LABEL_85;
          }
        }

        swift_endAccess();
        v57 = v141;
        sub_100020E58(v139, v140);
        v58 = sub_100AC432C(v11);
        v43 = (*(v57 + 8))(v58);
        v44 = v59;

        if (v44 >> 60 != 15)
        {
          sub_100024E98(v43, v44);
          v19 = v135;
          v45 = v46;
          v18 = v132;
          goto LABEL_56;
        }
      }

      sub_100005070(v139);
      v56 = v122;
      static DispatchData.empty.getter();
      v42 = DispatchData._bridgeToObjectiveC()();
      (*(v123 + 8))(v56, v124);
LABEL_52:
      (*(v130 + 2))(v130, 1, v42, 0);
LABEL_53:

      return;
    }

    v20 = *(a3 + v16);
    if (v11 < *(v20 + 16))
    {
      LOBYTE(v12) = 0;
      v13 = *(v20 + 8 * v11 + 32);
      goto LABEL_30;
    }

    v12 = *(a3 + v17);
    if (v12 != 1)
    {
      v132 = v18;
      v21 = v15;
      v22 = v140;
      v23 = v141;
      sub_100020E58(v139, v140);
      v24 = *v128;
      v25 = v128[1];
      if (v11)
      {
        *&v137 = *v128;
        *(&v137 + 1) = v25;

        v26._countAndFlagsBits = 46;
        v26._object = 0xE100000000000000;
        String.append(_:)(v26);
        v136 = v11;
        v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v27);

        v25 = *(&v137 + 1);
        v24 = v137;
      }

      else
      {
      }

      v15 = (*(v23 + 8))(v24, v25, v22, v23);
      v29 = v28;
      sub_100025870(v21, v132);

      if (v29 >> 60 == 15)
      {
        v13 = 0;
        LOBYTE(v12) = 1;
        v17 = v125;
        *(a3 + v125) = 1;
        v18 = v29;
        v16 = v134;
        v19 = v135;
        goto LABEL_30;
      }

      v30 = v29 >> 62;
      if ((v29 >> 62) > 1)
      {
        if (v30 != 2)
        {
          v13 = 0;
          goto LABEL_25;
        }

        v32 = *(v15 + 16);
        v31 = *(v15 + 24);
        v13 = v31 - v32;
        if (__OFSUB__(v31, v32))
        {
          goto LABEL_110;
        }
      }

      else
      {
        if (!v30)
        {
          v13 = BYTE6(v29);
LABEL_25:
          v33 = v134;
          v34 = *(a3 + v134);
          v35 = swift_isUniquelyReferenced_nonNull_native();
          *(a3 + v33) = v34;
          if ((v35 & 1) == 0)
          {
            v34 = sub_100B36684(0, *(v34 + 2) + 1, 1, v34);
            *(a3 + v134) = v34;
          }

          v37 = *(v34 + 2);
          v36 = *(v34 + 3);
          if (v37 >= v36 >> 1)
          {
            v34 = sub_100B36684((v36 > 1), v37 + 1, 1, v34);
          }

          *(v34 + 2) = v37 + 1;
          *&v34[8 * v37 + 32] = v13;
          v38 = v134;
          *(a3 + v134) = v34;
          sub_100025870(v15, v29);
          LOBYTE(v12) = 0;
          v18 = v29;
          v16 = v38;
          v19 = v135;
          v17 = v125;
          goto LABEL_30;
        }

        if (__OFSUB__(HIDWORD(v15), v15))
        {
          goto LABEL_109;
        }

        v13 = HIDWORD(v15) - v15;
      }

      sub_100024E98(v15, v29);
      goto LABEL_25;
    }

LABEL_30:
    v39 = v14 + v13;
    v40 = __OFADD__(v14, v13);
    if (__OFADD__(v14, v13))
    {
      break;
    }

    if (v39 > v19)
    {
      goto LABEL_44;
    }

    v14 += v13;
    v41 = __OFADD__(v11++, 1);
    if (v41)
    {
      goto LABEL_97;
    }
  }

  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
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
  v97 = objc_opt_self();
  v98 = [v97 _atomicIncrementAssertCount];
  *&v137 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v137);
  StaticString.description.getter();
  v99 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v100 = String._bridgeToObjectiveC()();

  v101 = [v100 lastPathComponent];

  v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v104 = v103;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v105 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v98;
  v107 = sub_1005CF000();
  *(inited + 96) = v107;
  v108 = sub_1005CF04C();
  *(inited + 104) = v108;
  *(inited + 72) = v99;
  *(inited + 136) = &type metadata for String;
  v109 = sub_1000053B0();
  *(inited + 112) = v102;
  *(inited + 120) = v104;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v109;
  *(inited + 152) = 126;
  v110 = v137;
  *(inited + 216) = v107;
  *(inited + 224) = v108;
  *(inited + 192) = v110;
  v111 = v99;
  v112 = v110;
  v113 = static os_log_type_t.error.getter();
  sub_100005404(v105, &_mh_execute_header, v113, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v114 = static os_log_type_t.error.getter();
  sub_100005404(v105, &_mh_execute_header, v114, "Code is wrong, we should have calculated the chunk sizes.", 57, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Code is wrong, we should have calculated the chunk sizes.");
  type metadata accessor for __VaListBuilder();
  v115 = swift_allocObject();
  v115[2] = 8;
  v115[3] = 0;
  v115[4] = 0;
  v115[5] = 0;
  v116 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v117 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v118 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v119 = String._bridgeToObjectiveC()();

  [v97 handleFailureInFunction:v117 file:v118 lineNumber:126 isFatal:1 format:v119 args:v116];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v120, v121);
  _Block_release(v130);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100AC54B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A0F8E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100AC5528(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A0F8E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t UUID.aas_hashSHA256(with:)@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v20 = sub_1005B981C(&qword_101A0F8E8) - 8;
  __chkstk_darwin(v20);
  v2 = v17 - v1;
  v3 = type metadata accessor for SHA256();
  v19 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for SHA256Digest();
  v22 = *(v23 - 8);
  __chkstk_darwin(v23);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  __chkstk_darwin(v8 - 8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.uuid.getter();
  UUID.uuid.getter();
  UUID.init(uuid:)();
  v11 = sub_100AC6BA8(v10);
  v13 = v12;
  sub_100060E78(&qword_1019F4570, &type metadata accessor for SHA256);
  dispatch thunk of HashFunction.init()();
  sub_100024E98(v11, v13);
  sub_100061910(v11, v13);
  sub_10002640C(v11, v13);
  dispatch thunk of HashFunction.finalize()();
  (*(v19 + 8))(v5, v3);
  v14 = *(v22 + 16);
  v21 = v7;
  v14(v2, v7, v23);
  *&v2[*(v20 + 44)] = 16;
  v15 = sub_100AC5A90(v2);
  sub_10000CAAC(v2, &qword_101A0F8E8);
  if (*(v15 + 16) >= 0x10uLL)
  {
    LODWORD(v20) = *(v15 + 39);
    LODWORD(v19) = *(v15 + 38);
    v17[1] = *(v15 + 37);

    UUID.init(uuid:)();
  }

  else
  {

    sub_100AC6DA8();
    swift_allocError();
    swift_willThrow();
  }

  sub_10002640C(v11, v13);
  return (*(v22 + 8))(v21, v23);
}

uint64_t UUID.aas_xor(_:)()
{
  UUID.uuid.getter();
  UUID.uuid.getter();
  return UUID.init(uuid:)();
}

uint64_t sub_100AC5A90(uint64_t a1)
{
  v2 = type metadata accessor for SHA256Digest();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v3);
  sub_100060E78(&qword_1019F4578, &type metadata accessor for SHA256Digest);
  dispatch thunk of Sequence.makeIterator()();
  result = sub_1005B981C(&qword_101A0F8E8);
  v7 = *(a1 + *(result + 36));
  v8 = v27[0];
  v9 = _swiftEmptyArrayStorage;
  v10 = 0;
  if (v7)
  {
    v11 = v27[1];
    v12 = &_swiftEmptyArrayStorage[4];
    do
    {
      v13 = *(v8 + 16);
      if (v11 == v13)
      {
        break;
      }

      if (v11 >= v13)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v14 = *(v8 + v11 + 32);
      if (!v10)
      {
        v15 = *(v9 + 3);
        if (((v15 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v16 = v15 & 0xFFFFFFFFFFFFFFFELL;
        if (v16 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        sub_1005B981C(&qword_101A045A0);
        v18 = swift_allocObject();
        v19 = 2 * j__malloc_size_1(v18) - 64;
        *(v18 + 2) = v17;
        *(v18 + 3) = v19;
        v20 = v18 + 32;
        v21 = *(v9 + 3) >> 1;
        if (*(v9 + 2))
        {
          v22 = v9 + 32;
          if (v18 != v9 || v20 >= &v22[v21])
          {
            memmove(v18 + 32, v22, v21);
          }

          *(v9 + 2) = 0;
        }

        v12 = &v20[v21];
        v10 = (v19 >> 1) - v21;

        v9 = v18;
      }

      v23 = __OFSUB__(v10--, 1);
      if (v23)
      {
        goto LABEL_23;
      }

      *v12++ = v14;
      ++v11;
      --v7;
    }

    while (v7);
  }

  v24 = *(v9 + 3);
  if (v24 < 2)
  {
    return v9;
  }

  v25 = v24 >> 1;
  v23 = __OFSUB__(v25, v10);
  v26 = v25 - v10;
  if (!v23)
  {
    *(v9 + 2) = v26;
    return v9;
  }

LABEL_25:
  __break(1u);
  return result;
}

size_t sub_100AC5CF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v70 = *(v4 - 8);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v74 = &v63 - v8;
  v9 = sub_1005B981C(&qword_1019F6DC0);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v67 = &v63 - v15;
  __chkstk_darwin(v14);
  v72 = v10;
  v73 = &v63 - v16;
  v71 = a1;
  v17 = *(a1 + 16);
  v78 = a2;
  v18 = *(a2 + 16);
  if (v18 >= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = *(a2 + 16);
  }

  v68 = v18;
  v69 = v17;
  v77 = v19;
  if (v19)
  {
    sub_1005B981C(&qword_101A0F900);
    v20 = *(v10 + 72);
    v21 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v66 = *(v10 + 80);
    v64 = swift_allocObject();
    result = j__malloc_size_1(v64);
    v76 = v20;
    if (!v20)
    {
      goto LABEL_55;
    }

    if (result - v21 == 0x8000000000000000 && v76 == -1)
    {
      goto LABEL_57;
    }

    v24 = 0;
    v25 = (result - v21) / v76;
    v26 = v64;
    *(v64 + 2) = v77;
    v26[3] = 2 * v25;
    v63 = v25 & 0x7FFFFFFFFFFFFFFFLL;
    v65 = v21;
    v27 = v26 + v21;
    v28 = v71 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
    v75 = *(v70 + 72);
    do
    {
      v29 = v24 + 1;
      sub_10075ABD8(v28, v7);
      v30 = type metadata accessor for Date();
      v31 = *(v30 - 8);
      v32 = v78 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v24;
      v33 = *(v9 + 48);
      sub_100AC6E64(v7, v13);
      (*(v31 + 16))(&v13[v33], v32, v30);
      result = sub_100AC6EC8(v13, v27);
      v27 += v76;
      v28 += v75;
      v24 = v29;
    }

    while (v77 != v29);
    v34 = v63 - v29;
    v18 = v68;
    v17 = v69;
    v35 = v64;
  }

  else
  {
    v36 = *(v10 + 80);
    v35 = _swiftEmptyArrayStorage;
    v37 = _swiftEmptyArrayStorage[3];

    v34 = v37 >> 1;
    v65 = (v36 + 32) & ~v36;
    v66 = v36;
    v27 = _swiftEmptyArrayStorage + v65;
  }

  v38 = v77;
  if (v17 <= v18)
  {
LABEL_44:
    v39 = v35;
LABEL_45:
    v60 = v39[3];
    if (v60 >= 2)
    {
      v61 = v60 >> 1;
      v40 = __OFSUB__(v61, v34);
      v62 = v61 - v34;
      if (v40)
      {
        goto LABEL_56;
      }

      v39[2] = v62;
    }

    return v39;
  }

  v76 = v9;
  while (v38 < v17)
  {
    result = sub_10075ABD8(v71 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v38, v74);
    v41 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      goto LABEL_50;
    }

    if (v18 == v38)
    {
      goto LABEL_43;
    }

    if (v38 >= v18)
    {
      goto LABEL_51;
    }

    v42 = type metadata accessor for Date();
    v43 = *(v42 - 8);
    v44 = v78 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v38;
    v45 = *(v76 + 48);
    v46 = v67;
    sub_100AC6E64(v74, v67);
    (*(v43 + 16))(v46 + v45, v44, v42);
    result = sub_100AC6EC8(v46, v73);
    if (v34)
    {
      v39 = v35;
      v18 = v68;
      v17 = v69;
      v40 = __OFSUB__(v34--, 1);
      if (v40)
      {
        goto LABEL_42;
      }

      goto LABEL_17;
    }

    v47 = v35[3];
    if (((v47 >> 1) + 0x4000000000000000) < 0)
    {
      goto LABEL_52;
    }

    v48 = v47 & 0xFFFFFFFFFFFFFFFELL;
    if (v48 <= 1)
    {
      v49 = 1;
    }

    else
    {
      v49 = v48;
    }

    sub_1005B981C(&qword_101A0F900);
    v50 = *(v72 + 72);
    v51 = v65;
    v39 = swift_allocObject();
    result = j__malloc_size_1(v39);
    if (!v50)
    {
      goto LABEL_53;
    }

    v52 = result - v51;
    if (result - v51 == 0x8000000000000000 && v50 == -1)
    {
      goto LABEL_54;
    }

    v54 = v52 / v50;
    v39[2] = v49;
    v39[3] = 2 * (v52 / v50);
    v55 = v39 + v51;
    v56 = v35;
    v57 = v35[3] >> 1;
    v58 = v57 * v50;
    v18 = v68;
    if (v35[2])
    {
      if (v39 < v35 || v55 >= v35 + v51 + v58)
      {
        swift_arrayInitWithTakeFrontToBack();
LABEL_38:
        v56 = v35;
      }

      else if (v39 != v35)
      {
        swift_arrayInitWithTakeBackToFront();
        goto LABEL_38;
      }

      v56[2] = 0;
    }

    v27 = &v55[v58];
    v59 = (v54 & 0x7FFFFFFFFFFFFFFFLL) - v57;

    v17 = v69;
    v40 = __OFSUB__(v59, 1);
    v34 = v59 - 1;
    if (v40)
    {
LABEL_42:
      __break(1u);
LABEL_43:
      result = sub_100AC6F38(v74);
      goto LABEL_44;
    }

LABEL_17:
    result = sub_100AC6EC8(v73, v27);
    v27 += *(v72 + 72);
    ++v38;
    v35 = v39;
    if (v41 == v17)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

void sub_100AC6300(uint64_t a1)
{
  v71 = type metadata accessor for IndexSet.Index();
  v60 = *(v71 - 8);
  __chkstk_darwin(v71);
  v70 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for IndexSet();
  v3 = *(v73 - 8);
  __chkstk_darwin(v73);
  v5 = (&v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1005B981C(&qword_1019FF500);
  __chkstk_darwin(v6);
  v8 = &v59 - v7;
  v61 = sub_1005B981C(&qword_101A0F908);
  __chkstk_darwin(v61);
  v64 = (&v59 - v9);
  v10 = *a1;
  v11 = *a1 >> 62;
  v75 = v5;
  if (!v11)
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_3;
  }

  while (1)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
LABEL_3:
    sub_100060E78(&unk_101A11A60, &type metadata accessor for IndexSet);
    v13 = dispatch thunk of Sequence.underestimatedCount.getter();
    if (v13 >= v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = v13;
    }

    if (v14)
    {
      if (v14 <= 0)
      {
        v15 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1005B981C(&qword_101A0F920);
        v15 = swift_allocObject();
        v16 = j__malloc_size_1(v15);
        v17 = v16 - 32;
        if (v16 < 32)
        {
          v17 = v16 - 17;
        }

        v15[2] = v14;
        v15[3] = (2 * (v17 >> 4));
      }

      v18 = v73;
    }

    else
    {
      v15 = _swiftEmptyArrayStorage;
      v18 = v73;
    }

    v19 = v15[3];

    sub_100AC6F94(a1, v8);
    a1 = *v8;
    v20 = v64;
    *v64 = *v8;
    v20[1] = 0;
    v21 = v3[4];
    v3 += 4;
    v22 = v8 + *(v6 + 52);
    v8 = v75;
    (v21)(v75, v22, v18);
    v6 = v20 + *(v61 + 52);
    dispatch thunk of Sequence.makeIterator()();
    if (v14 < 0)
    {
      __break(1u);
LABEL_76:
      v68 = a1 & 0xFFFFFFFFFFFFFF8;
      v67 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_18;
    }

    v3 = v15 + 4;
    v23 = v19 >> 1;
    v24 = a1 >> 62;
    v69 = a1;
    v62 = a1 >> 62;
    v63 = v15;
    if (!v14)
    {
      break;
    }

    v59 = v19 >> 1;
    if (v24)
    {
      goto LABEL_76;
    }

    v68 = a1 & 0xFFFFFFFFFFFFFF8;
    v67 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_18:
    v72 = a1 & 0xC000000000000001;
    v25 = 0;
    v26 = *(sub_1005B981C(&qword_101A0F910) + 36);
    v65 = (v60 + 8);
    v66 = v26;
    v59 -= v14;
    v27 = v70;
    while (v25 < v14)
    {
      v19 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_67;
      }

      if (v67 == v25)
      {
        goto LABEL_68;
      }

      v75 = v3;
      if (v72)
      {
        v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v25 >= *(v68 + 16))
        {
          goto LABEL_72;
        }

        v28 = *(a1 + 8 * v25 + 32);
      }

      v74 = v28;
      sub_100060E78(&qword_101A0F918, &type metadata accessor for IndexSet);
      dispatch thunk of Collection.endIndex.getter();
      sub_100060E78(&qword_101A11A70, &type metadata accessor for IndexSet.Index);
      v29 = v71;
      v30 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v65)(v27, v29);
      if (v30)
      {
        goto LABEL_78;
      }

      v31 = dispatch thunk of Collection.subscript.read();
      v8 = *v32;
      v31(v76, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v33 = v75;
      *v75 = v74;
      v33[1] = v8;
      v3 = (v33 + 2);
      ++v25;
      a1 = v69;
      if (v19 == v14)
      {
        v64[1] = v14;
        v24 = v62;
        v34 = v68;
        v23 = v59;
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
  }

  v34 = a1 & 0xFFFFFFFFFFFFFF8;
  v72 = a1 & 0xC000000000000001;
LABEL_30:
  if (a1 < 0)
  {
    v35 = a1;
  }

  else
  {
    v35 = v34;
  }

  v67 = v35;
  v68 = v34;
  v74 = (v60 + 8);
  if (v24)
  {
    while (v14 != _CocoaArrayWrapper.endIndex.getter())
    {
LABEL_37:
      if (v72)
      {
        v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v37 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_60;
        }
      }

      else
      {
        if (v14 < 0)
        {
          goto LABEL_69;
        }

        if (v14 >= *(v34 + 16))
        {
          goto LABEL_70;
        }

        v36 = *(a1 + 8 * v14 + 32);
        v37 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_60:
          __break(1u);
LABEL_61:

          break;
        }
      }

      v75 = v36;
      v38 = v14;
      v64[1] = v37;
      sub_1005B981C(&qword_101A0F910);
      sub_100060E78(&qword_101A0F918, &type metadata accessor for IndexSet);
      v8 = v70;
      a1 = v73;
      dispatch thunk of Collection.endIndex.getter();
      sub_100060E78(&qword_101A11A70, &type metadata accessor for IndexSet.Index);
      v19 = v71;
      v39 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v74)(v8, v19);
      if (v39)
      {
        goto LABEL_61;
      }

      v40 = dispatch thunk of Collection.subscript.read();
      v19 = *v41;
      v40(v76, 0);
      dispatch thunk of Collection.formIndex(after:)();
      if (!v23)
      {
        v42 = v63[3];
        if (((v42 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_73;
        }

        v43 = v42 & 0xFFFFFFFFFFFFFFFELL;
        if (v43 <= 1)
        {
          v44 = 1;
        }

        else
        {
          v44 = v43;
        }

        sub_1005B981C(&qword_101A0F920);
        v45 = swift_allocObject();
        v46 = j__malloc_size_1(v45);
        v47 = v46 - 32;
        if (v46 < 32)
        {
          v47 = v46 - 17;
        }

        v48 = v47 >> 4;
        v45[2] = v44;
        v45[3] = (2 * (v47 >> 4));
        v49 = v63;
        v50 = (v45 + 4);
        v8 = v63[3] >> 1;
        if (v63[2])
        {
          v51 = v63 + 4;
          if (v45 != v63 || v50 >= v51 + 16 * v8)
          {
            memmove(v45 + 4, v51, 16 * v8);
          }

          v49[2] = 0;
        }

        v3 = (v50 + 16 * v8);
        v23 = (v48 & 0x7FFFFFFFFFFFFFFFLL) - v8;

        v63 = v45;
      }

      v52 = v38;
      v53 = v62;
      v34 = v68;
      a1 = v69;
      v54 = __OFSUB__(v23--, 1);
      if (v54)
      {
        goto LABEL_71;
      }

      *v3 = v75;
      v3[1] = v19;
      v3 += 2;
      v14 = v52 + 1;
      if (!v53)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
LABEL_34:
    if (v14 != *(v34 + 16))
    {
      goto LABEL_37;
    }
  }

  v55 = v64;
  *(v64 + *(v61 + 56)) = 1;
  sub_10000CAAC(v55, &qword_101A0F908);
  v56 = v63[3];
  if (v56 >= 2)
  {
    v57 = v56 >> 1;
    v54 = __OFSUB__(v57, v23);
    v58 = v57 - v23;
    if (v54)
    {
      __break(1u);
LABEL_78:

      v64[1] = v19;
      __break(1u);
    }

    else
    {
      v63[2] = v58;
    }
  }
}

uint64_t sub_100AC6BA8(uint64_t a1)
{
  type metadata accessor for __DataStorage();
  swift_allocObject();
  __DataStorage.init(length:)();
  UUID.uuid.getter();
  Data._Representation.subscript.setter();
  Data._Representation.subscript.setter();
  Data._Representation.subscript.setter();
  Data._Representation.subscript.setter();
  Data._Representation.subscript.setter();
  Data._Representation.subscript.setter();
  Data._Representation.subscript.setter();
  Data._Representation.subscript.setter();
  Data._Representation.subscript.setter();
  Data._Representation.subscript.setter();
  Data._Representation.subscript.setter();
  Data._Representation.subscript.setter();
  Data._Representation.subscript.setter();
  Data._Representation.subscript.setter();
  Data._Representation.subscript.setter();
  Data._Representation.subscript.setter();
  v1 = type metadata accessor for UUID();
  (*(*(v1 - 8) + 8))(a1, v1);
  return 0x1000000000;
}

unint64_t sub_100AC6DA8()
{
  result = qword_101A0F8F0;
  if (!qword_101A0F8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0F8F0);
  }

  return result;
}

unint64_t sub_100AC6E00()
{
  result = qword_101A0F8F8;
  if (!qword_101A0F8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0F8F8);
  }

  return result;
}

uint64_t sub_100AC6E64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100AC6EC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019F6DC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100AC6F38(uint64_t a1)
{
  v2 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100AC6F94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019FF500);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100AC70A4(void *a1)
{
  if (!a1)
  {
    return 2;
  }

  v9 = a1;
  sub_100AC7190();
  v2 = a1;
  sub_1005B981C(&qword_101A0F950);
  if (swift_dynamicCast())
  {
    sub_100050F74(v7, v10);
    v3 = v11;
    v4 = v12;
    sub_100020E58(v10, v11);
    v5 = (*(v4 + 8))(v3, v4) & 1;
    sub_100005070(v10);
    return v5;
  }

  else
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    sub_100AC71DC(v7);
    return 2;
  }
}

unint64_t sub_100AC7190()
{
  result = qword_101A10AB0;
  if (!qword_101A10AB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101A10AB0);
  }

  return result;
}

uint64_t sub_100AC71DC(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A0F958);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_100AC7244(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v6[OBJC_IVAR____TtC8Freeform32CRLIndeterminateRoundSpinnerView_wantsLinkViewSublayerTransformAdjustedHitTestFrame] = 0;
  *&v6[OBJC_IVAR____TtC8Freeform32CRLIndeterminateRoundSpinnerView_backgroundLayer] = 0;
  *&v6[OBJC_IVAR____TtC8Freeform32CRLIndeterminateRoundSpinnerView_spinnerLayer] = 0;
  *&v6[OBJC_IVAR____TtC8Freeform32CRLIndeterminateRoundSpinnerView_lineWidth] = 0x4000000000000000;
  v26.receiver = v6;
  v26.super_class = type metadata accessor for CRLIndeterminateRoundSpinnerView();
  v13 = objc_msgSendSuper2(&v26, "initWithFrame:", a3, a4, a5, a6);
  v14 = [v13 layer];
  v15 = [objc_opt_self() clearColor];
  v16 = [v15 CGColor];

  [v14 setBackgroundColor:v16];
  v17 = sub_100AC8204();
  v18 = *&v13[OBJC_IVAR____TtC8Freeform32CRLIndeterminateRoundSpinnerView_backgroundLayer];
  *&v13[OBJC_IVAR____TtC8Freeform32CRLIndeterminateRoundSpinnerView_backgroundLayer] = v17;

  v19 = sub_100AC7DE0();
  v20 = *&v13[OBJC_IVAR____TtC8Freeform32CRLIndeterminateRoundSpinnerView_spinnerLayer];
  *&v13[OBJC_IVAR____TtC8Freeform32CRLIndeterminateRoundSpinnerView_spinnerLayer] = v19;

  v25[3] = swift_getObjectType();
  v25[0] = a1;
  v21 = objc_allocWithZone(UITapGestureRecognizer);
  swift_unknownObjectRetain();
  v22 = _bridgeAnythingToObjectiveC<A>(_:)();
  sub_100005070(v25);
  v23 = [v21 initWithTarget:v22 action:{a2, v25[0]}];
  swift_unknownObjectRelease();
  [v13 addGestureRecognizer:v23];

  swift_unknownObjectRelease();
  return v13;
}

id sub_100AC74CC(uint64_t a1, CGFloat a2, CGFloat a3)
{
  if (*(v3 + OBJC_IVAR____TtC8Freeform32CRLIndeterminateRoundSpinnerView_wantsLinkViewSublayerTransformAdjustedHitTestFrame) == 1)
  {
    if (![v3 isHidden])
    {
      v12.origin.x = sub_100AC761C();
      v11.x = a2;
      v11.y = a3;
      if (CGRectContainsPoint(v12, v11))
      {
        return v3;
      }
    }

    v9.receiver = v3;
    v9.super_class = type metadata accessor for CRLIndeterminateRoundSpinnerView();
    v8 = objc_msgSendSuper2(&v9, "hitTest:withEvent:", a1, a2, a3);
  }

  else
  {
    v10.receiver = v3;
    v10.super_class = type metadata accessor for CRLIndeterminateRoundSpinnerView();
    v8 = objc_msgSendSuper2(&v10, "hitTest:withEvent:", a1, a2, a3);
  }

  return v8;
}

double sub_100AC761C()
{
  v1 = v0;
  if ((*(v0 + OBJC_IVAR____TtC8Freeform32CRLIndeterminateRoundSpinnerView_wantsLinkViewSublayerTransformAdjustedHitTestFrame) & 1) == 0)
  {
    v2 = objc_opt_self();
    v3 = [v2 _atomicIncrementAssertCount];
    v54[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v54);
    StaticString.description.getter();
    v4 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v5 = String._bridgeToObjectiveC()();

    v6 = [v5 lastPathComponent];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v3;
    v12 = sub_1005CF000();
    *(inited + 96) = v12;
    v13 = sub_1005CF04C();
    *(inited + 104) = v13;
    *(inited + 72) = v4;
    *(inited + 136) = &type metadata for String;
    v14 = sub_1000053B0();
    *(inited + 112) = v7;
    *(inited + 120) = v9;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v14;
    *(inited + 152) = 77;
    v15 = v54[0];
    *(inited + 216) = v12;
    *(inited + 224) = v13;
    *(inited + 192) = v15;
    v16 = v4;
    v17 = v15;
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v19 = static os_log_type_t.error.getter();

    type metadata accessor for __VaListBuilder();
    v20 = swift_allocObject();
    v20[2] = 8;
    v20[3] = 0;
    v20[4] = 0;
    v20[5] = 0;
    v21 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    [v2 handleFailureInFunction:v22 file:v23 lineNumber:77 isFatal:0 format:v24 args:v21];
  }

  v25 = [v1 superview];
  if (v25)
  {
    v26 = v25;
    [v25 frame];
    v27 = CGRectGetWidth(v55) * 0.5;
    [v1 frame];
    v28 = v27 - CGRectGetWidth(v56) * 0.5;
    [v26 frame];
    CGRectGetHeight(v57);
    [v1 frame];
    CGRectGetHeight(v58);
    [v1 frame];
    CGRectGetWidth(v59);
    [v1 frame];
    CGRectGetHeight(v60);
  }

  else
  {
    v29 = objc_opt_self();
    v30 = [v29 _atomicIncrementAssertCount];
    v54[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v54);
    StaticString.description.getter();
    v31 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v32 = String._bridgeToObjectiveC()();

    v33 = [v32 lastPathComponent];

    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v37 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v38 = swift_initStackObject();
    *(v38 + 16) = xmmword_10146CA70;
    *(v38 + 56) = &type metadata for Int32;
    *(v38 + 64) = &protocol witness table for Int32;
    *(v38 + 32) = v30;
    v39 = sub_1005CF000();
    *(v38 + 96) = v39;
    v40 = sub_1005CF04C();
    *(v38 + 104) = v40;
    *(v38 + 72) = v31;
    *(v38 + 136) = &type metadata for String;
    v41 = sub_1000053B0();
    *(v38 + 112) = v34;
    *(v38 + 120) = v36;
    *(v38 + 176) = &type metadata for UInt;
    *(v38 + 184) = &protocol witness table for UInt;
    *(v38 + 144) = v41;
    *(v38 + 152) = 78;
    v42 = v54[0];
    *(v38 + 216) = v39;
    *(v38 + 224) = v40;
    *(v38 + 192) = v42;
    v43 = v31;
    v44 = v42;
    v45 = static os_log_type_t.error.getter();
    sub_100005404(v37, &_mh_execute_header, v45, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v38);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v46 = static os_log_type_t.error.getter();
    sub_100005404(v37, &_mh_execute_header, v46, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v47 = swift_allocObject();
    v47[2] = 8;
    v47[3] = 0;
    v47[4] = 0;
    v47[5] = 0;
    v48 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v49 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v50 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v51 = String._bridgeToObjectiveC()();

    [v29 handleFailureInFunction:v49 file:v50 lineNumber:78 isFatal:0 format:v51 args:v48];

    [v1 frame];
    return v52;
  }

  return v28;
}

id sub_100AC7DE0()
{
  v1 = [v0 layer];
  if (v1)
  {
    v2 = v1;
    sub_100AC888C();
    v5 = sub_100AC871C(v3, v4);
    v6 = *&v0[OBJC_IVAR____TtC8Freeform32CRLIndeterminateRoundSpinnerView_backgroundLayer];
    if (v6)
    {
      [v6 addSublayer:v5];
    }

    v7 = v5;
    [v7 setAnchorPoint:{0.5, 0.5}];
    [v2 bounds];
    [v7 setPosition:{sub_100120414(v8, v9, v10, v11)}];
  }

  else
  {
    v12 = objc_opt_self();
    v13 = [v12 _atomicIncrementAssertCount];
    v36 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v36);
    StaticString.description.getter();
    v14 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v15 = String._bridgeToObjectiveC()();

    v16 = [v15 lastPathComponent];

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v20 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v13;
    v22 = sub_1005CF000();
    *(inited + 96) = v22;
    v23 = sub_1005CF04C();
    *(inited + 104) = v23;
    *(inited + 72) = v14;
    *(inited + 136) = &type metadata for String;
    v24 = sub_1000053B0();
    *(inited + 112) = v17;
    *(inited + 120) = v19;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v24;
    *(inited + 152) = 91;
    v25 = v36;
    *(inited + 216) = v22;
    *(inited + 224) = v23;
    *(inited + 192) = v25;
    v26 = v14;
    v27 = v25;
    v28 = static os_log_type_t.error.getter();
    sub_100005404(v20, &_mh_execute_header, v28, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v29 = static os_log_type_t.error.getter();
    sub_100005404(v20, &_mh_execute_header, v29, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v30 = swift_allocObject();
    v30[2] = 8;
    v30[3] = 0;
    v30[4] = 0;
    v30[5] = 0;
    v31 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v32 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v33 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v34 = String._bridgeToObjectiveC()();

    [v12 handleFailureInFunction:v32 file:v33 lineNumber:91 isFatal:0 format:v34 args:v31];

    return 0;
  }

  return v7;
}

id sub_100AC8204()
{
  [v0 bounds];
  v3 = sub_100AC8D78(v1, v2);
  v4 = [v0 layer];
  if (v4)
  {
    v5 = v4;
    [v4 addSublayer:v3];
  }

  else
  {
    v6 = objc_opt_self();
    v7 = [v6 _atomicIncrementAssertCount];
    v30 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v30);
    StaticString.description.getter();
    v8 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v9 = String._bridgeToObjectiveC()();

    v10 = [v9 lastPathComponent];

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v14 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v7;
    v16 = sub_1005CF000();
    *(inited + 96) = v16;
    v17 = sub_1005CF04C();
    *(inited + 104) = v17;
    *(inited + 72) = v8;
    *(inited + 136) = &type metadata for String;
    v18 = sub_1000053B0();
    *(inited + 112) = v11;
    *(inited + 120) = v13;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v18;
    *(inited + 152) = 106;
    v19 = v30;
    *(inited + 216) = v16;
    *(inited + 224) = v17;
    *(inited + 192) = v19;
    v20 = v8;
    v21 = v19;
    v22 = static os_log_type_t.error.getter();
    sub_100005404(v14, &_mh_execute_header, v22, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v23 = static os_log_type_t.error.getter();
    sub_100005404(v14, &_mh_execute_header, v23, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v24 = swift_allocObject();
    v24[2] = 8;
    v24[3] = 0;
    v24[4] = 0;
    v24[5] = 0;
    v25 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v27 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v28 = String._bridgeToObjectiveC()();

    [v6 handleFailureInFunction:v26 file:v27 lineNumber:106 isFatal:0 format:v28 args:v25];
  }

  return v3;
}

void sub_100AC85E4()
{
  v1 = OBJC_IVAR____TtC8Freeform32CRLIndeterminateRoundSpinnerView_spinnerLayer;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform32CRLIndeterminateRoundSpinnerView_spinnerLayer);
  if (v2 || (v3 = sub_100AC7DE0(), v4 = *(v0 + v1), *(v0 + v1) = v3, v4, (v2 = *(v0 + v1)) != 0))
  {
    [v2 removeAllAnimations];
    v5 = *(v0 + v1);
    if (v5)
    {
      v6 = v5;
      v7 = sub_100AC8ED0();
      v8 = String._bridgeToObjectiveC()();
      [v6 addAnimation:v7 forKey:v8];
    }
  }
}

void sub_100AC86B8()
{
  v1 = OBJC_IVAR____TtC8Freeform32CRLIndeterminateRoundSpinnerView_spinnerLayer;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform32CRLIndeterminateRoundSpinnerView_spinnerLayer);
  if (v2)
  {
    [v2 removeAllAnimations];
    v2 = *(v0 + v1);
    if (v2)
    {
      [v2 removeFromSuperlayer];
      v2 = *(v0 + v1);
    }
  }

  *(v0 + v1) = 0;
}

id sub_100AC871C(double a1, double a2)
{
  v3 = v2;
  v6 = [objc_allocWithZone(CAShapeLayer) init];
  [v6 setFrame:{0.0, 0.0, a1, a2}];
  Mutable = CGPathCreateMutable();
  v8 = sub_10011ECB4();
  sub_100120414(v8, v9, v10, v11);
  CGMutablePathRef.addArc(center:radius:startAngle:endAngle:clockwise:transform:)();
  [v6 setPath:{Mutable, 0x3FF0000000000000, 0, 0, 0x3FF0000000000000, 0, 0}];

  [v6 setLineWidth:*(v3 + OBJC_IVAR____TtC8Freeform32CRLIndeterminateRoundSpinnerView_lineWidth)];
  v12 = [objc_allocWithZone(CRLColor) initWithWhite:0.3 alpha:1.0];
  v13 = [v12 CGColor];

  [v6 setStrokeColor:v13];
  [v6 setFillColor:0];
  return v6;
}

void sub_100AC888C()
{
  v1 = v0;
  [v0 bounds];
  if (CGRectGetWidth(v26) <= 15.0 || ([v0 bounds], CGRectGetHeight(v27) <= 15.0))
  {
    v2 = objc_opt_self();
    v3 = [v2 _atomicIncrementAssertCount];
    v25 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v25);
    StaticString.description.getter();
    v4 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v5 = String._bridgeToObjectiveC()();

    v6 = [v5 lastPathComponent];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v3;
    v12 = sub_1005CF000();
    *(inited + 96) = v12;
    v13 = sub_1005CF04C();
    *(inited + 104) = v13;
    *(inited + 72) = v4;
    *(inited + 136) = &type metadata for String;
    v14 = sub_1000053B0();
    *(inited + 112) = v7;
    *(inited + 120) = v9;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v14;
    *(inited + 152) = 183;
    v15 = v25;
    *(inited + 216) = v12;
    *(inited + 224) = v13;
    *(inited + 192) = v15;
    v16 = v4;
    v17 = v15;
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v19, "Spinner is too small!", 21, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v20 = swift_allocObject();
    v20[2] = 8;
    v20[3] = 0;
    v20[4] = 0;
    v20[5] = 0;
    v21 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    [v2 handleFailureInFunction:v22 file:v23 lineNumber:183 isFatal:0 format:v24 args:v21];

    [v1 bounds];
  }

  else
  {
    [v0 bounds];
    CGRectGetWidth(v28);
    [v0 bounds];
    CGRectGetHeight(v29);
  }
}

id sub_100AC8CD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLIndeterminateRoundSpinnerView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100AC8D78(double a1, double a2)
{
  v4 = [objc_allocWithZone(CAShapeLayer) init];
  [v4 setFrame:{0.0, 0.0, a1, a2}];
  Mutable = CGPathCreateMutable();
  v6 = sub_10011ECB4();
  sub_100120414(v6, v7, v8, v9);
  CGMutablePathRef.addArc(center:radius:startAngle:endAngle:clockwise:transform:)();
  [v4 setPath:{Mutable, 0x3FF0000000000000, 0, 0, 0x3FF0000000000000, 0, 0}];

  [v4 setLineWidth:0.0];
  [v4 setStrokeColor:0];
  v10 = [objc_allocWithZone(CRLColor) initWithWhite:1.0 alpha:0.75];
  v11 = [v10 CGColor];

  [v4 setFillColor:v11];
  return v4;
}

id sub_100AC8ED0()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() animationWithKeyPath:v0];

  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 functionWithName:kCAValueFunctionRotateZ];
  [v3 setValueFunction:v4];

  v5 = v3;
  [v5 setDuration:2.0];
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  [v5 setFromValue:isa];

  v7 = Double._bridgeToObjectiveC()().super.super.isa;
  [v5 setToValue:v7];

  LODWORD(v8) = 2139095040;
  [v5 setRepeatCount:v8];
  v9 = CACurrentMediaTime();
  v10 = sub_1004C321C(v9 * 0.5);
  [v5 setTimeOffset:v10 + v10];

  return v5;
}

uint64_t sub_100AC9048(uint64_t a1, uint64_t a2)
{
  v3[37] = a2;
  v3[38] = v2;
  v3[36] = a1;
  v4 = type metadata accessor for DispatchQoS.QoSClass();
  v3[39] = v4;
  v3[40] = *(v4 - 8);
  v3[41] = swift_task_alloc();

  return _swift_task_switch(sub_100AC910C, 0, 0);
}

uint64_t sub_100AC910C()
{
  v1 = *(v0 + 304);
  if (v1[5])
  {
    v2 = 7;
  }

  else
  {
    v2 = 3;
  }

  v3 = v1[2];
  *(v0 + 336) = v3;
  v4 = v1[3];
  *(v0 + 344) = v4;
  v5 = v1[4];
  *(v0 + 352) = v5;
  *(v0 + 272) = type metadata accessor for CRLFileWriteAssistant.WriteCoordinatorChannelProvider();
  *(v0 + 280) = &off_101894308;
  *(v0 + 248) = v3;
  type metadata accessor for CRLSerializableObjectWriteCoordinator();
  v11 = *(v0 + 288);
  inited = swift_initStackObject();
  *(v0 + 360) = inited;
  *(inited + 96) = 0;
  *(inited + 16) = v11;
  sub_100050F74((v0 + 248), inited + 32);
  *(inited + 72) = v4;
  *(inited + 80) = v5;
  *(inited + 88) = v2;
  v7 = v4;
  v8 = v5;

  swift_unknownObjectRetain();
  v9 = swift_task_alloc();
  *(v0 + 368) = v9;
  *v9 = v0;
  v9[1] = sub_100AC9260;

  return sub_100AD1538();
}

uint64_t sub_100AC9260()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_100AC96D4;
  }

  else
  {
    v2 = sub_100AC9374;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100AC9374()
{
  v1 = v0[41];
  v2 = v0[39];
  v3 = v0[40];
  v4 = *(v0[42] + 16);
  v0[48] = v4;
  sub_100618868();
  (*(v3 + 104))(v1, enum case for DispatchQoS.QoSClass.default(_:), v2);
  v5 = v4;
  v6 = static OS_dispatch_queue.global(qos:)();
  v0[49] = v6;
  (*(v3 + 8))(v1, v2);
  v0[2] = v0;
  v0[3] = sub_100AC950C;
  v7 = swift_continuation_init();
  v0[30] = sub_1005B981C(&qword_101A0FBA0);
  v0[23] = _NSConcreteStackBlock;
  v0[24] = *"";
  v0[25] = sub_100AC97D0;
  v0[26] = &unk_101894328;
  v0[27] = v7;
  [v5 closeWithQueue:v6 completion:v0 + 23];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100AC950C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 400) = v1;
  if (v1)
  {
    v2 = sub_100AC9744;
  }

  else
  {
    v2 = sub_100AC961C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100AC961C()
{
  v2 = v0[48];
  v1 = v0[49];
  v4 = v0[44];
  v3 = v0[45];
  v5 = v0[43];
  swift_unknownObjectRelease();
  swift_setDeallocating();
  sub_100005070(v3 + 32);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100AC96D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100AC9744()
{
  v1 = v0[49];
  v2 = v0[48];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_100AC97D0(uint64_t a1, void *a2)
{
  v3 = sub_100020E58((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_1005B981C(&unk_1019F6B40);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

id sub_100AC987C()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  v6 = String._bridgeToObjectiveC()();
  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v2 + 8))(v4, v1);
  [v5 beginEntryWithName:v6 force32BitSize:0 lastModificationDate:isa size:0 CRC:0 forceCalculatingSizeAndCRCForPreservingLastModificationDate:0];

  result = [objc_allocWithZone(CRLZipFileWriteChannel) initWithArchiveWriter:v5];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_100AC99C4()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  v6 = String._bridgeToObjectiveC()();
  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v2 + 8))(v4, v1);
  [v5 beginEntryWithName:v6 force32BitSize:0 lastModificationDate:isa size:0 CRC:0 forceCalculatingSizeAndCRCForPreservingLastModificationDate:0];

  result = [objc_allocWithZone(CRLZipFileWriteChannel) initWithArchiveWriter:v5];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_100AC9B0C()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = String._bridgeToObjectiveC()();
  v6 = String._bridgeToObjectiveC()();
  v7 = [v6 pathExtension];

  if (!v7)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = String._bridgeToObjectiveC()();
  }

  v8 = [v5 stringByAppendingPathComponent:v7];

  if (!v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = String._bridgeToObjectiveC()();
  }

  v9 = *(v0 + 16);
  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v2 + 8))(v4, v1);
  [v9 beginEntryWithName:v8 force32BitSize:0 lastModificationDate:isa size:0 CRC:0 forceCalculatingSizeAndCRCForPreservingLastModificationDate:0];

  result = [objc_allocWithZone(CRLZipFileWriteChannel) initWithArchiveWriter:v9];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100AC9D70()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100AC9E00(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_1005B981C(&unk_1019F33C0);
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_100AC9EF8, 0, 0);
}

uint64_t sub_100AC9EF8()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  v6 = *(v2 + 16);
  v6(v1, v5 + OBJC_IVAR____TtC8Freeform26CRLBoardFileWriteAssistant_url, v4);
  v7 = *(v5 + OBJC_IVAR____TtC8Freeform26CRLBoardFileWriteAssistant_store);
  v8 = *(v5 + OBJC_IVAR____TtC8Freeform26CRLBoardFileWriteAssistant_context);
  v18 = *(v5 + OBJC_IVAR____TtC8Freeform26CRLBoardFileWriteAssistant_options);
  type metadata accessor for CRLFileWriteAssistant();
  v9 = swift_allocObject();
  v0[8] = v9;
  v6(v3, v1, v4);
  (*(v2 + 56))(v3, 0, 1, v4);
  v10 = objc_allocWithZone(CRLZipFileWriter);
  v11 = v7;
  v12 = v8;
  v13 = sub_100ACAA98(v3);
  (*(v2 + 8))(v1, v4);
  type metadata accessor for CRLFileWriteAssistant.WriteCoordinatorChannelProvider();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = 0x6472616F62;
  v14[4] = 0xE500000000000000;
  v14[5] = 0x617461646174656DLL;
  v14[6] = 0xE800000000000000;
  v9[2] = v14;
  v9[3] = v11;
  v9[4] = v12;
  v9[5] = v18;
  v15 = swift_task_alloc();
  v0[9] = v15;
  *v15 = v0;
  v15[1] = sub_100ACA180;
  v16 = v0[2];

  return sub_100AC9048(v16, &off_1018A7590);
}

uint64_t sub_100ACA180()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100ACA30C;
  }

  else
  {
    v2 = sub_100ACA294;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100ACA294()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100ACA30C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100ACA50C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_100ACA5D0;

  return sub_100AC9E00(v6);
}

uint64_t sub_100ACA5D0()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 32);
  if (v2)
  {
    v9 = _convertErrorToNSError(_:)();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t type metadata accessor for CRLBoardFileWriteAssistant()
{
  result = qword_101A0FB70;
  if (!qword_101A0FB70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100ACA87C()
{
  result = type metadata accessor for URL();
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

unint64_t sub_100ACA93C()
{
  result = qword_101A0FB80;
  if (!qword_101A0FB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0FB80);
  }

  return result;
}

unint64_t sub_100ACA994()
{
  result = qword_101A0FB88;
  if (!qword_101A0FB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0FB88);
  }

  return result;
}

unint64_t sub_100ACA9EC()
{
  result = qword_101A0FB90;
  if (!qword_101A0FB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0FB90);
  }

  return result;
}

unint64_t sub_100ACAA44()
{
  result = qword_101A0FB98;
  if (!qword_101A0FB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0FB98);
  }

  return result;
}

id sub_100ACAA98(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v7 = 0;
  if ((*(v5 + 48))(a1, 1, v4) != 1)
  {
    URL._bridgeToObjectiveC()(v6);
    v7 = v8;
    (*(v5 + 8))(a1, v4);
  }

  v13 = 0;
  v9 = [v2 initWithURL:v7 error:&v13];

  if (v9)
  {
    v10 = v13;
  }

  else
  {
    v11 = v13;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v9;
}

uint64_t sub_100ACABF8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10002D3D4;

  return sub_100ACA50C(v2, v3, v4);
}

unint64_t sub_100ACACAC()
{
  v1 = *v0;
  v2 = 0x6564496472616F62;
  v3 = 0xD000000000000025;
  if (v1 != 3)
  {
    v3 = 0x436C616974726170;
  }

  if (v1 == 2)
  {
    v3 = 0xD00000000000002BLL;
  }

  if (*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100ACAD6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100ACBA18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100ACAD94(uint64_t a1)
{
  v2 = sub_100ACB864();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100ACADD0(uint64_t a1)
{
  v2 = sub_100ACB864();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100ACAE0C()
{
  sub_1005C5BE0(v0 + OBJC_IVAR____TtC8Freeform28CRLBoardRealTimeChangeRecord_boardIdentifier);
  sub_100025870(*(v0 + OBJC_IVAR____TtC8Freeform28CRLBoardRealTimeChangeRecord_partialCRDTData), *(v0 + OBJC_IVAR____TtC8Freeform28CRLBoardRealTimeChangeRecord_partialCRDTData + 8));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CRLBoardRealTimeChangeRecord()
{
  result = qword_101A0FBE0;
  if (!qword_101A0FBE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100ACAED8()
{
  result = type metadata accessor for CRLBoardIdentifierStorage(319);
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

uint64_t sub_100ACAF8C(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A0FCA8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_100020E58(a1, a1[3]);
  sub_100ACB864();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  type metadata accessor for CRLGloballyScopedBoardIdentifier(0);
  sub_100ACB8B8(&qword_1019F43B8, type metadata accessor for CRLGloballyScopedBoardIdentifier);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v12) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v9 = *(v3 + OBJC_IVAR____TtC8Freeform28CRLBoardRealTimeChangeRecord_partialCRDTData + 8);
    v12 = *(v3 + OBJC_IVAR____TtC8Freeform28CRLBoardRealTimeChangeRecord_partialCRDTData);
    v13 = v9;
    v11[15] = 4;
    sub_100024E84(v12, v9);
    sub_1006D63D4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100025870(v12, v13);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100ACB23C(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for CRLGloballyScopedBoardIdentifier(0);
  __chkstk_darwin(v5);
  v21 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1005B981C(&qword_101A0FC98);
  v20 = *(v23 - 8);
  __chkstk_darwin(v23);
  v8 = &v20 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100ACB864();
  v22 = v8;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = v20;
    LOBYTE(v24) = 0;
    sub_100ACB8B8(&qword_1019F43A0, type metadata accessor for CRLGloballyScopedBoardIdentifier);
    v11 = v21;
    v10 = v22;
    v12 = v23;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1005C5B7C(v11, v3 + OBJC_IVAR____TtC8Freeform28CRLBoardRealTimeChangeRecord_boardIdentifier);
    LOBYTE(v24) = 1;
    *(v3 + OBJC_IVAR____TtC8Freeform28CRLBoardRealTimeChangeRecord_minRequiredVersion) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v24) = 2;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v14 = v3 + OBJC_IVAR____TtC8Freeform28CRLBoardRealTimeChangeRecord_raw_minRequiredVersionForGoodEnoughFidelity;
    *v14 = v13;
    *(v14 + 8) = v15 & 1;
    LOBYTE(v24) = 3;
    v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v18 = v3 + OBJC_IVAR____TtC8Freeform28CRLBoardRealTimeChangeRecord_raw_minRequiredVersionForFullFidelity;
    *v18 = v16;
    *(v18 + 8) = v19 & 1;
    v25 = 4;
    sub_1006D6258();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v9 + 8))(v10, v12);
    *(v3 + OBJC_IVAR____TtC8Freeform28CRLBoardRealTimeChangeRecord_partialCRDTData) = v24;
  }

  sub_100005070(a1);
  return v3;
}

uint64_t sub_100ACB5F0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_100ACB23C(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_100ACB66C(uint64_t a1)
{
  *(a1 + 8) = sub_100ACB8B8(&qword_101A0FC90, type metadata accessor for CRLBoardRealTimeChangeRecord);
  result = sub_100ACB8B8(&qword_1019FF170, type metadata accessor for CRLBoardRealTimeChangeRecord);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100ACB6F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 + OBJC_IVAR____TtC8Freeform28CRLBoardRealTimeChangeRecord_boardIdentifier;
  v5 = a2 + OBJC_IVAR____TtC8Freeform28CRLBoardRealTimeChangeRecord_boardIdentifier;
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20);
  v7 = *(v4 + v6);
  v8 = *(v4 + v6 + 8);
  v9 = (v5 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v12 = *(a1 + OBJC_IVAR____TtC8Freeform28CRLBoardRealTimeChangeRecord_partialCRDTData);
  v11 = *(a1 + OBJC_IVAR____TtC8Freeform28CRLBoardRealTimeChangeRecord_partialCRDTData + 8);
  v14 = *(a2 + OBJC_IVAR____TtC8Freeform28CRLBoardRealTimeChangeRecord_partialCRDTData);
  v13 = *(a2 + OBJC_IVAR____TtC8Freeform28CRLBoardRealTimeChangeRecord_partialCRDTData + 8);
  if (v11 >> 60 == 15)
  {
    if (v13 >> 60 == 15)
    {
      sub_100024E84(v12, v11);
      sub_100024E84(v14, v13);
      sub_100025870(v12, v11);
      return 1;
    }

    goto LABEL_11;
  }

  if (v13 >> 60 == 15)
  {
LABEL_11:
    sub_100024E84(v12, v11);
    sub_100024E84(v14, v13);
    sub_100025870(v12, v11);
    sub_100025870(v14, v13);
    return 0;
  }

  sub_100024E84(v12, v11);
  sub_100024E84(v14, v13);
  v16 = sub_1009F9488(v12, v11, v14, v13);
  sub_100025870(v14, v13);
  sub_100025870(v12, v11);
  return v16 & 1;
}

unint64_t sub_100ACB864()
{
  result = qword_101A0FCA0;
  if (!qword_101A0FCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0FCA0);
  }

  return result;
}

uint64_t sub_100ACB8B8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100ACB914()
{
  result = qword_101A0FCB0;
  if (!qword_101A0FCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0FCB0);
  }

  return result;
}

unint64_t sub_100ACB96C()
{
  result = qword_101A0FCB8;
  if (!qword_101A0FCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0FCB8);
  }

  return result;
}

unint64_t sub_100ACB9C4()
{
  result = qword_101A0FCC0;
  if (!qword_101A0FCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0FCC0);
  }

  return result;
}

uint64_t sub_100ACBA18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6564496472616F62 && a2 == 0xEF7265696669746ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000101559DA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000002BLL && 0x8000000101587660 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000025 && 0x8000000101587690 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x436C616974726170 && a2 == 0xEF61746144544452)
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

uint64_t sub_100ACBBE0()
{
  result = _UISolariumEnabled();
  qword_101A0FCC8 = 0x4046000000000000;
  return result;
}

uint64_t sub_100ACBC04()
{
  result = _UISolariumEnabled();
  if (qword_1019F1BE8 != -1)
  {
    v2 = result;
    swift_once();
    result = v2;
  }

  v1 = 44.0;
  if (result)
  {
    v1 = 52.0;
  }

  qword_101A0FCD0 = *&v1;
  qword_101A0FCD8 = qword_101A0FCC8;
  return result;
}

uint64_t sub_100ACBC8C()
{
  result = _UISolariumEnabled();
  v1 = 0.0;
  if (result)
  {
    v1 = 2.0;
  }

  qword_101A0FCE0 = *&v1;
  return result;
}

uint64_t sub_100ACBCBC()
{
  result = _UISolariumEnabled();
  v1 = 10.0;
  if (result)
  {
    v1 = 22.0;
  }

  qword_101A0FCE8 = *&v1;
  return result;
}

id sub_100ACBCEC()
{
  v0 = _UISolariumEnabled();
  v1 = objc_opt_self();
  v2 = &selRef_clearColor;
  if (!v0)
  {
    v2 = &selRef_systemBackgroundColor;
  }

  result = [v1 *v2];
  qword_101A0FCF0 = result;
  return result;
}

void sub_100ACBD4C()
{
  if (_UISolariumEnabled())
  {
    v0 = [objc_opt_self() labelColor];
LABEL_4:
    qword_101A0FCF8 = v0;
    return;
  }

  v1 = String._bridgeToObjectiveC()();
  v0 = [objc_opt_self() colorNamed:v1];

  if (v0)
  {
    goto LABEL_4;
  }

  __break(1u);
}

id sub_100ACBDF8()
{
  result = [objc_opt_self() tertiaryLabelColor];
  qword_101A0FD00 = result;
  return result;
}

uint64_t sub_100ACBE34()
{
  result = _UISolariumEnabled();
  v1 = 16.0;
  if (result)
  {
    v1 = 17.0;
  }

  qword_101A0FD08 = *&v1;
  return result;
}

UIFontWeight sub_100ACBE64()
{
  v0 = _UISolariumEnabled();
  v1 = &UIFontWeightRegular;
  if (v0)
  {
    v1 = &UIFontWeightMedium;
  }

  result = *v1;
  qword_101A0FD10 = *v1;
  return result;
}

uint64_t sub_100ACBEA0()
{
  result = _UISolariumEnabled();
  v1 = 2;
  if (result)
  {
    v1 = 3;
  }

  qword_101A0FD18 = v1;
  return result;
}

id sub_100ACBECC()
{
  v1 = OBJC_IVAR____TtC8Freeform45CRLiOSFloatingBoardViewControlsViewController____lazy_storage___stackView;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform45CRLiOSFloatingBoardViewControlsViewController____lazy_storage___stackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Freeform45CRLiOSFloatingBoardViewControlsViewController____lazy_storage___stackView);
  }

  else
  {
    v4 = sub_100ACCD08();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100ACBF4C()
{
  v0 = type metadata accessor for UIButton.Configuration();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v27 - v5;
  static UIButton.Configuration.plain()();
  sub_100006370(0, &qword_1019F6190);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v8 = [objc_opt_self() clearColor];
  v9 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.backgroundColor.setter();
  v9(v29, 0);
  sub_100006370(0, &qword_1019F6E10);
  v10 = *(v1 + 16);
  v28 = v0;
  v10(v4, v6, v0);
  v27 = v7;
  v11 = UIButton.init(configuration:primaryAction:)();
  [v11 setPointerInteractionEnabled:1];
  v12 = v11;
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = objc_opt_self();
  sub_1005B981C(&unk_1019F4D60);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10146CE00;
  v15 = [v12 heightAnchor];
  if (qword_1019F1BF0 != -1)
  {
    swift_once();
  }

  v16 = [v15 constraintEqualToConstant:*&qword_101A0FCD8];

  *(v14 + 32) = v16;
  v17 = [v12 widthAnchor];

  v18 = [v17 constraintEqualToConstant:*&qword_101A0FCD0];
  *(v14 + 40) = v18;
  sub_100006370(0, &qword_1019F4D70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v13 activateConstraints:isa];

  v20 = [objc_opt_self() mainBundle];
  v21 = String._bridgeToObjectiveC()();
  v22 = String._bridgeToObjectiveC()();
  v23 = [v20 localizedStringForKey:v21 value:v22 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong isCanvasDotGridEnabled];
    swift_unknownObjectRelease();
  }

  sub_100ACEBC4(v12);

  v25 = v12;
  sub_100ACD8C0(v12);

  (*(v1 + 8))(v6, v28);
  return v25;
}

id sub_100ACC420(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_100ACC484()
{
  v0 = type metadata accessor for UIButton.Configuration();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v27 - v5;
  static UIButton.Configuration.plain()();
  sub_100006370(0, &qword_1019F6190);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v8 = [objc_opt_self() clearColor];
  v9 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.backgroundColor.setter();
  v9(v29, 0);
  sub_100006370(0, &qword_1019F6E10);
  v10 = *(v1 + 16);
  v28 = v0;
  v10(v4, v6, v0);
  v27 = v7;
  v11 = UIButton.init(configuration:primaryAction:)();
  [v11 setPointerInteractionEnabled:1];
  v12 = v11;
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = objc_opt_self();
  sub_1005B981C(&unk_1019F4D60);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10146CE00;
  v15 = [v12 heightAnchor];
  if (qword_1019F1BF0 != -1)
  {
    swift_once();
  }

  v16 = [v15 constraintEqualToConstant:*&qword_101A0FCD8];

  *(v14 + 32) = v16;
  v17 = [v12 widthAnchor];

  v18 = [v17 constraintEqualToConstant:*&qword_101A0FCD0];
  *(v14 + 40) = v18;
  sub_100006370(0, &qword_1019F4D70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v13 activateConstraints:isa];

  v20 = [objc_opt_self() mainBundle];
  v21 = String._bridgeToObjectiveC()();
  v22 = String._bridgeToObjectiveC()();
  v23 = [v20 localizedStringForKey:v21 value:v22 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong isConnectorModeEnabled];
    swift_unknownObjectRelease();
  }

  sub_100ACEBC4(v12);

  v25 = v12;
  sub_100ACE1DC(v12);

  (*(v1 + 8))(v6, v28);
  return v25;
}

void sub_100ACC948(uint64_t a1, uint64_t a2, SEL *a3, SEL *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = [v8 *a3];
      swift_unknownObjectRelease();
      v10 = v9 ^ 1;
    }

    else
    {
      v10 = 1;
    }

    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      [v11 *a4];
      swift_unknownObjectRelease();
    }
  }
}

id sub_100ACCA0C()
{
  v1 = OBJC_IVAR____TtC8Freeform45CRLiOSFloatingBoardViewControlsViewController____lazy_storage___separator;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform45CRLiOSFloatingBoardViewControlsViewController____lazy_storage___separator);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Freeform45CRLiOSFloatingBoardViewControlsViewController____lazy_storage___separator);
  }

  else
  {
    v4 = sub_100ACCA6C();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100ACCA6C()
{
  v0 = [objc_allocWithZone(UIView) init];
  v1 = [objc_opt_self() tertiarySystemFillColor];
  [v0 setBackgroundColor:v1];

  v2 = [v0 layer];
  [v2 setMasksToBounds:1];

  v3 = [v0 layer];
  [v3 setCornerRadius:1.0];

  v4 = [v0 layer];
  [v4 setCornerCurve:kCACornerCurveContinuous];

  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = objc_opt_self();
  sub_1005B981C(&unk_1019F4D60);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10146CE00;
  v7 = [v0 heightAnchor];
  if (qword_1019F1BE8 != -1)
  {
    swift_once();
  }

  v8 = [v7 constraintEqualToConstant:*&qword_101A0FCC8];

  *(v6 + 32) = v8;
  v9 = [v0 widthAnchor];
  v10 = [v9 constraintEqualToConstant:1.0];

  *(v6 + 40) = v10;
  sub_100006370(0, &qword_1019F4D70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 activateConstraints:isa];

  return v0;
}

id sub_100ACCD08()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if ([Strong documentIsSharedReadOnly])
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v2 = [v1 isInFollowingMode];
      swift_unknownObjectRelease();
      if ((v2 & 1) == 0)
      {
        sub_100ACC400();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        if ((_UISolariumEnabled() & 1) == 0)
        {
          sub_100ACCA0C();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }
      }
    }
  }

  sub_100ACBF2C();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v3 = _swiftEmptyArrayStorage >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v3)
    {
      break;
    }

    v4 = 0;
    while (1)
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v5 = _swiftEmptyArrayStorage[v4 + 4];
      }

      v7 = v5;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      LODWORD(v6) = 1144750080;
      [v5 setContentHuggingPriority:1 forAxis:v6];

      ++v4;
      if (v8 == v3)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

LABEL_23:

  v9 = objc_allocWithZone(UIStackView);
  sub_100006370(0, &qword_1019F6D00);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11 = [v9 initWithArrangedSubviews:isa];

  [v11 setDistribution:3];
  [v11 setAlignment:0];
  v12 = v11;
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v12 setInsetsLayoutMarginsFromSafeArea:0];
  [v12 setLayoutMarginsRelativeArrangement:1];
  if (qword_1019F1BF8 != -1)
  {
    swift_once();
  }

  [v12 setDirectionalLayoutMargins:{0.0, *&qword_101A0FCE0, 0.0, *&qword_101A0FCE0}];

  return v12;
}

void sub_100ACD0A8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v2 = Strong;
  if ([Strong documentIsSharedReadOnly])
  {
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  v3 = [v2 isInFollowingMode];
  swift_unknownObjectRelease();
  if (v3)
  {
LABEL_5:
    v4 = sub_100ACBECC();
    v5 = [v4 arrangedSubviews];

    sub_100006370(0, &qword_1019F6D00);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v6 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v7 >= 2)
    {
      v8 = OBJC_IVAR____TtC8Freeform45CRLiOSFloatingBoardViewControlsViewController____lazy_storage___stackView;
      v9 = *(v0 + OBJC_IVAR____TtC8Freeform45CRLiOSFloatingBoardViewControlsViewController____lazy_storage___stackView);
      v10 = sub_100ACC400();
      [v9 removeArrangedSubview:v10];

      [*(v0 + OBJC_IVAR____TtC8Freeform45CRLiOSFloatingBoardViewControlsViewController____lazy_storage___connectorButton) removeFromSuperview];
      v11 = *(v0 + v8);
      v12 = sub_100ACCA0C();
      [v11 removeArrangedSubview:v12];

      v13 = *(v0 + OBJC_IVAR____TtC8Freeform45CRLiOSFloatingBoardViewControlsViewController____lazy_storage___separator);

      [v13 removeFromSuperview];
    }

    return;
  }

  v14 = sub_100ACBECC();
  v15 = [v14 arrangedSubviews];

  sub_100006370(0, &qword_1019F6D00);
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v16 >> 62)
  {
    v17 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v17 == 1)
  {
    v18 = OBJC_IVAR____TtC8Freeform45CRLiOSFloatingBoardViewControlsViewController____lazy_storage___stackView;
    v19 = *(v0 + OBJC_IVAR____TtC8Freeform45CRLiOSFloatingBoardViewControlsViewController____lazy_storage___stackView);
    v20 = sub_100ACC400();
    [v19 insertArrangedSubview:v20 atIndex:0];

    v21 = *(v0 + v18);
    v22 = sub_100ACCA0C();
    [v21 insertArrangedSubview:v22 atIndex:1];
  }
}

void sub_100ACD404()
{
  v1 = v0;
  v2 = type metadata accessor for _Glass._GlassVariant();
  __chkstk_darwin(v2 - 8);
  v30.receiver = v0;
  v30.super_class = type metadata accessor for CRLiOSFloatingBoardViewControlsViewController();
  objc_msgSendSuper2(&v30, "viewDidLoad");
  v3 = sub_100ACBECC();
  v4 = [v3 heightAnchor];

  if (qword_1019F1BE8 != -1)
  {
    swift_once();
  }

  v5 = [v4 constraintEqualToConstant:*&qword_101A0FCC8];

  v6 = OBJC_IVAR____TtC8Freeform45CRLiOSFloatingBoardViewControlsViewController_stackViewHeightConstraint;
  v7 = *&v1[OBJC_IVAR____TtC8Freeform45CRLiOSFloatingBoardViewControlsViewController_stackViewHeightConstraint];
  *&v1[OBJC_IVAR____TtC8Freeform45CRLiOSFloatingBoardViewControlsViewController_stackViewHeightConstraint] = v5;

  v8 = OBJC_IVAR____TtC8Freeform45CRLiOSFloatingBoardViewControlsViewController____lazy_storage___stackView;
  v9 = qword_1019F1C08;
  v10 = *&v1[OBJC_IVAR____TtC8Freeform45CRLiOSFloatingBoardViewControlsViewController____lazy_storage___stackView];
  if (v9 != -1)
  {
    swift_once();
  }

  [v10 setBackgroundColor:qword_101A0FCF0];

  if (_UISolariumEnabled())
  {
    v11 = *&v1[v8];
    static _Glass._GlassVariant.regular.getter();
    v29[3] = type metadata accessor for _Glass();
    v29[4] = &protocol witness table for _Glass;
    sub_10002C58C(v29);
    _Glass.init(_:smoothness:)();
    UIView._background.setter();
  }

  v12 = [*&v1[v8] layer];
  if (qword_1019F1C00 != -1)
  {
    swift_once();
  }

  [v12 setCornerRadius:*&qword_101A0FCE8];

  v13 = [*&v1[v8] layer];
  [v13 setCornerCurve:kCACornerCurveContinuous];

  if ((_UISolariumEnabled() & 1) == 0)
  {
    v14 = [*&v1[v8] layer];
    [v14 setShadowOffset:{0.0, 3.0}];

    v15 = [*&v1[v8] layer];
    LODWORD(v16) = 1034147594;
    [v15 setShadowOpacity:v16];

    v17 = [*&v1[v8] layer];
    [v17 setShadowRadius:7.0];

    v18 = [*&v1[v8] layer];
    [v18 setBorderWidth:0.5];

    v19 = [*&v1[v8] layer];
    v20 = [objc_opt_self() blackColor];
    v21 = [v20 colorWithAlphaComponent:0.08];

    v22 = [v21 CGColor];
    [v19 setBorderColor:v22];
  }

  sub_1005B981C(&unk_1019F4D60);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_101465920;
  v24 = *&v1[v6];
  if (v24)
  {
    v25 = v23;
    v26 = objc_opt_self();
    *(v25 + 32) = v24;
    sub_100006370(0, &qword_1019F4D70);
    v27 = v24;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v26 activateConstraints:isa];
  }

  else
  {
    __break(1u);
  }
}

void sub_100ACD8C0(void *a1)
{
  if (a1)
  {
    v63 = a1;
  }

  else
  {
    v63 = sub_100ACBF2C();
  }

  v2 = qword_1019F1C20;
  v61 = a1;
  if (v2 != -1)
  {
    swift_once();
  }

  v3 = *&qword_101A0FD08;
  if (qword_1019F1C28 != -1)
  {
    swift_once();
  }

  v4 = *&qword_101A0FD10;
  if (qword_1019F1C30 != -1)
  {
    swift_once();
  }

  if (qword_1019F1C10 != -1)
  {
    swift_once();
  }

  v5 = qword_101A0FCF8;
  if (qword_1019F1C18 != -1)
  {
    swift_once();
  }

  v6 = qword_101A0FD00;
  Strong = swift_unknownObjectWeakLoadStrong();
  v62 = a1;
  if (Strong)
  {
    v8 = [Strong isCanvasDotGridEnabled];
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0;
  }

  v9 = objc_opt_self();
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 imageNamed:v10];

  if (v11)
  {
    v12 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleBody];
    v59 = [objc_opt_self() systemFontOfSize:v3 weight:v4];

    v13 = UIImageSymbolWeightForFontWeight(v4);
    v14 = objc_opt_self();
    v15 = [v14 configurationWithPointSize:v13 weight:v3];
    v16 = v15;
    if (v8)
    {
      sub_1005B981C(&unk_1019F4D60);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_101465920;
      *(v17 + 32) = v5;
      sub_100006370(0, &qword_101A11110);
      v18 = v6;
      v19 = v16;
      v20 = v5;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v22 = [v14 configurationWithPaletteColors:isa];

      v6 = v18;
    }

    else
    {
      v45 = v15;
      v22 = [v14 configurationWithHierarchicalColor:v5];
    }

    v46 = [v16 configurationByApplyingConfiguration:v22];

    v47 = [v11 imageByApplyingSymbolConfiguration:v46];
    [v63 setImage:v47 forState:0];

    if (v8)
    {
      sub_1005B981C(&unk_1019F4D60);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_101465920;
      *(v48 + 32) = v6;
      sub_100006370(0, &qword_101A11110);
      v49 = v6;
      v50 = v6;
      v51 = Array._bridgeToObjectiveC()().super.isa;

      v52 = [v14 configurationWithPaletteColors:v51];
    }

    else
    {
      v52 = [v14 configurationWithHierarchicalColor:v6];
      v49 = v6;
    }

    v53 = [v46 configurationByApplyingConfiguration:v52];

    v54 = [v11 imageByApplyingSymbolConfiguration:v53];
    [v63 setImage:v54 forState:2];
  }

  else
  {
    v60 = objc_opt_self();
    v23 = [v60 _atomicIncrementAssertCount];
    v64 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v64);
    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    v26 = [v25 lastPathComponent];

    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v30 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v23;
    v32 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v32;
    v33 = sub_1005CF04C();
    *(inited + 104) = v33;
    *(inited + 72) = v24;
    *(inited + 136) = &type metadata for String;
    v34 = sub_1000053B0();
    *(inited + 112) = v27;
    *(inited + 120) = v29;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v34;
    *(inited + 152) = 140;
    v35 = v64;
    *(inited + 216) = v32;
    *(inited + 224) = v33;
    *(inited + 192) = v35;
    v36 = v24;
    v37 = v35;
    v38 = static os_log_type_t.error.getter();
    sub_100005404(v30, &_mh_execute_header, v38, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v39 = static os_log_type_t.error.getter();
    sub_100005404(v30, &_mh_execute_header, v39, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v40 = swift_allocObject();
    v40[2] = 8;
    v40[3] = 0;
    v40[4] = 0;
    v40[5] = 0;
    v41 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v42 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v43 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v44 = String._bridgeToObjectiveC()();

    [v60 handleFailureInFunction:v42 file:v43 lineNumber:140 isFatal:0 format:v44 args:v41];
  }

  v55 = v61;
  if (!v62)
  {
    v55 = sub_100ACBF2C();
  }

  v56 = swift_unknownObjectWeakLoadStrong();
  v57 = v61;
  if (v56)
  {
    [v56 isCanvasDotGridEnabled];
    swift_unknownObjectRelease();
  }

  sub_100B2E7DC();
  v58 = String._bridgeToObjectiveC()();

  [v55 setAccessibilityValue:v58];
}

void sub_100ACE1DC(void *a1)
{
  if (a1)
  {
    v55 = a1;
  }

  else
  {
    v55 = sub_100ACC400();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v56 = a1;
  if (Strong)
  {
    [Strong isConnectorModeEnabled];
    swift_unknownObjectRelease();
  }

  if (qword_1019F1C20 != -1)
  {
    swift_once();
  }

  v3 = *&qword_101A0FD08;
  if (qword_1019F1C28 != -1)
  {
    swift_once();
  }

  v4 = *&qword_101A0FD10;
  if (qword_1019F1C30 != -1)
  {
    swift_once();
  }

  v57 = a1;
  if (qword_1019F1C10 != -1)
  {
    swift_once();
  }

  v5 = qword_101A0FCF8;
  if (qword_1019F1C18 != -1)
  {
    swift_once();
  }

  v6 = qword_101A0FD00;
  v7 = objc_opt_self();
  v8 = String._bridgeToObjectiveC()();

  v9 = [v7 imageNamed:v8];

  if (v9)
  {
    v10 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleBody];
    v54 = [objc_opt_self() systemFontOfSize:v3 weight:v4];

    v11 = UIImageSymbolWeightForFontWeight(v4);
    v12 = objc_opt_self();
    v13 = [v12 configurationWithPointSize:v11 weight:v3];
    sub_1005B981C(&unk_1019F4D60);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_101465920;
    *(v14 + 32) = v5;
    sub_100006370(0, &qword_101A11110);
    v15 = v13;
    v16 = v5;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v18 = [v12 configurationWithPaletteColors:isa];

    v19 = [v15 configurationByApplyingConfiguration:v18];
    v20 = [v9 imageByApplyingSymbolConfiguration:v19];
    [v55 setImage:v20 forState:0];

    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_101465920;
    *(v21 + 32) = v6;
    v22 = v6;
    v23 = Array._bridgeToObjectiveC()().super.isa;

    v24 = [v12 configurationWithPaletteColors:v23];

    v25 = [v19 configurationByApplyingConfiguration:v24];
    v26 = [v9 imageByApplyingSymbolConfiguration:v25];
    [v55 setImage:v26 forState:2];
  }

  else
  {
    v27 = objc_opt_self();
    v28 = [v27 _atomicIncrementAssertCount];
    v58 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v58);
    StaticString.description.getter();
    v29 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v30 = String._bridgeToObjectiveC()();

    v31 = [v30 lastPathComponent];

    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v35 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v28;
    v37 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v37;
    v38 = sub_1005CF04C();
    *(inited + 104) = v38;
    *(inited + 72) = v29;
    *(inited + 136) = &type metadata for String;
    v39 = sub_1000053B0();
    *(inited + 112) = v32;
    *(inited + 120) = v34;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v39;
    *(inited + 152) = 140;
    v40 = v58;
    *(inited + 216) = v37;
    *(inited + 224) = v38;
    *(inited + 192) = v40;
    v41 = v29;
    v42 = v40;
    v43 = static os_log_type_t.error.getter();
    sub_100005404(v35, &_mh_execute_header, v43, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v44 = static os_log_type_t.error.getter();
    sub_100005404(v35, &_mh_execute_header, v44, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v45 = swift_allocObject();
    v45[2] = 8;
    v45[3] = 0;
    v45[4] = 0;
    v45[5] = 0;
    v46 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v47 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v48 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v49 = String._bridgeToObjectiveC()();

    [v27 handleFailureInFunction:v47 file:v48 lineNumber:140 isFatal:0 format:v49 args:v46];
  }

  v50 = v56;
  if (!v57)
  {
    v50 = sub_100ACC400();
  }

  v51 = swift_unknownObjectWeakLoadStrong();
  v52 = v56;
  if (v51)
  {
    [v51 isConnectorModeEnabled];
    swift_unknownObjectRelease();
  }

  sub_100B2E7DC();
  v53 = String._bridgeToObjectiveC()();

  [v50 setAccessibilityValue:v53];
}

id sub_100ACEAB4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLiOSFloatingBoardViewControlsViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100ACEBC4(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  [a1 setAccessibilityLabel:v2];

  v3 = String._bridgeToObjectiveC()();
  [a1 setLargeContentTitle:v3];

  sub_100B2E7DC();
  v4 = String._bridgeToObjectiveC()();

  [a1 setAccessibilityValue:v4];

  [a1 setShowsLargeContentViewer:1];
  v5 = [objc_allocWithZone(UILargeContentViewerInteraction) init];
  [a1 addInteraction:v5];
}

void sub_100ACED10()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8Freeform45CRLiOSFloatingBoardViewControlsViewController____lazy_storage___stackView) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform45CRLiOSFloatingBoardViewControlsViewController_stackViewHeightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform45CRLiOSFloatingBoardViewControlsViewController____lazy_storage___gridButton) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform45CRLiOSFloatingBoardViewControlsViewController____lazy_storage___connectorButton) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform45CRLiOSFloatingBoardViewControlsViewController____lazy_storage___separator) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100ACEDBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  v6 = type metadata accessor for URL();
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = type metadata accessor for CRLBoardCRDTData(0);
  v4[22] = swift_task_alloc();
  v4[23] = type metadata accessor for MainActor();
  v4[24] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v4[25] = v7;
  *v7 = v4;
  v7[1] = sub_100ACEF0C;

  return sub_101012638(a2);
}

uint64_t sub_100ACEF0C()
{
  v1 = *v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v1 + 208) = v3;
  *(v1 + 216) = v2;

  return _swift_task_switch(sub_100ACF050, v3, v2);
}

uint64_t sub_100ACF050()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  v4 = *(v0 + 144);
  v25 = *(v0 + 160);
  v26 = *(v0 + 120);
  v5 = *(v0 + 112);
  type metadata accessor for CRContext();
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  v27 = static CRContext.newTransientContext(uniqueAssetManager:encryptionDelegate:)();
  *(v0 + 224) = v27;
  sub_10000CAAC(v0 + 16, &qword_101A07B90);
  v6 = *(*(*(v3 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard) + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v7 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FD94(v6 + v7, v1, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&qword_101A1A020);
  CRRegister.wrappedValue.getter();
  sub_10003D57C(v1, type metadata accessor for CRLBoardCRDTData);
  v8 = String._bridgeToObjectiveC()();

  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 crl_filenameFromDisplayNameWithExtension:v9 characterLimit:64];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  URL.appendingPathComponent(_:)();

  v11 = *(v2 + 16);
  v11(v25, v5, v4);
  v12 = *(v26 + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
  if (qword_1019F2778 != -1)
  {
    swift_once();
  }

  v14 = *(v0 + 152);
  v13 = *(v0 + 160);
  v15 = *(v0 + 144);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v16 = (*(v0 + 272) & 1) == 0;
  v17 = type metadata accessor for CRLBoardFileWriteAssistant();
  v18 = objc_allocWithZone(v17);
  v11(&v18[OBJC_IVAR____TtC8Freeform26CRLBoardFileWriteAssistant_url], v13, v15);
  *&v18[OBJC_IVAR____TtC8Freeform26CRLBoardFileWriteAssistant_store] = v12;
  *&v18[OBJC_IVAR____TtC8Freeform26CRLBoardFileWriteAssistant_context] = v27;
  *&v18[OBJC_IVAR____TtC8Freeform26CRLBoardFileWriteAssistant_options] = v16;
  *(v0 + 96) = v18;
  *(v0 + 104) = v17;
  v19 = v27;
  v20 = v12;
  *(v0 + 232) = objc_msgSendSuper2((v0 + 96), "init");
  v21 = *(v14 + 8);
  *(v0 + 240) = v21;
  *(v0 + 248) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v13, v15);
  v22 = swift_task_alloc();
  *(v0 + 256) = v22;
  *v22 = v0;
  v22[1] = sub_100ACF418;
  v23 = *(v0 + 120);

  return sub_100AC9E00(v23);
}

uint64_t sub_100ACF418()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 216);
  v4 = *(v2 + 208);
  if (v0)
  {
    v5 = sub_100ACF5E8;
  }

  else
  {
    v5 = sub_100ACF554;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100ACF554()
{
  v1 = *(v0 + 232);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100ACF5E8()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v3 = *(v0 + 144);
  v4 = *(v0 + 112);

  v1(v4, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100ACF6A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v4[11] = type metadata accessor for CRLBoardCRDTData(0);
  v4[12] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[16] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100ACF7CC, v7, v6);
}

uint64_t sub_100ACF7CC()
{
  v1 = v0[12];
  v2 = v0[10];

  v3 = *(*(*(v2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard) + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v4 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FD94(v3 + v4, v1, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&qword_101A1A020);
  CRRegister.wrappedValue.getter();
  sub_10003D57C(v1, type metadata accessor for CRLBoardCRDTData);
  v5 = String._bridgeToObjectiveC()();

  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 crl_filenameFromDisplayNameWithExtension:v6 characterLimit:64];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  URL.appendingPathComponent(_:)();

  v8 = sub_100EB7474();
  v10 = v9;
  Data.write(to:options:)();
  (*(v0[14] + 32))(v0[7], v0[15], v0[13]);
  sub_10002640C(v8, v10);

  v12 = v0[1];

  return v12();
}

uint64_t sub_100ACFA68(uint64_t a1, uint64_t a2)
{
  v3[55] = a2;
  v3[56] = v2;
  v3[54] = a1;
  v3[57] = type metadata accessor for CRLBoardCRDTData(0);
  v3[58] = swift_task_alloc();
  sub_1005B981C(&qword_101A01C10);
  v3[59] = swift_task_alloc();
  v4 = type metadata accessor for PKDrawing();
  v3[60] = v4;
  v3[61] = *(v4 - 8);
  v3[62] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[63] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[64] = v6;
  v3[65] = v5;

  return _swift_task_switch(sub_100ACFBCC, v6, v5);
}

uint64_t sub_100ACFBCC()
{
  v54 = v0;
  v1 = v0[56];
  sub_10098EABC(&_mh_execute_header, "qa_writeHandwritingDebugToFile(in:)", 35, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/CRLBoardViewController.swift", 98, 2, 86);
  v2 = *(v1 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController);
  v3 = [v2 board];
  if (v3)
  {
    v4 = *&v3[OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer];
    v52 = v0;
    v0[66] = v4;
    v5 = v3;
    v6 = v4;

    v7 = [objc_opt_self() allDrawingItemsDescendedFromContainer:v6];
    type metadata accessor for CRLFreehandDrawingItem();
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v53 = _swiftEmptyArrayStorage;
    if (v8 >> 62)
    {
LABEL_27:
      v9 = _CocoaArrayWrapper.endIndex.getter();
      if (!v9)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v9)
      {
        goto LABEL_28;
      }
    }

    v10 = 0;
    while (1)
    {
      v11 = v10;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v11 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_26;
          }

          v12 = *(v8 + 8 * v11 + 32);
        }

        v13 = v12;
        v10 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        v14 = [v2 layoutForInfo:v12];

        if (v14)
        {
          break;
        }

LABEL_7:
        ++v11;
        if (v10 == v9)
        {
          goto LABEL_28;
        }
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        break;
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      if (v10 == v9)
      {
LABEL_28:
        v42 = v52[61];
        v41 = v52[62];
        v44 = v52[59];
        v43 = v52[60];
        sub_100B434D0(v8);

        (*(v42 + 16))(v44, v41, v43);
        (*(v42 + 56))(v44, 0, 1, v43);
        sub_100006370(0, &qword_101A03810);
        v45.super.isa = Array._bridgeToObjectiveC()().super.isa;

        isa = 0;
        if ((*(v42 + 48))(v44, 1, v43) != 1)
        {
          v47 = v52[60];
          v48 = v52[61];
          v49 = v52[59];
          isa = PKDrawing._bridgeToObjectiveC()().super.isa;
          (*(v48 + 8))(v49, v47);
        }

        v50 = [objc_allocWithZone(CRLHandwritingRecognitionStatusHelper) initWithFreehandDrawingLayouts:v45.super.isa andConsolidatedDrawing:isa];
        v52[67] = v50;

        v52[2] = v52;
        v52[7] = v52 + 50;
        v52[3] = sub_100AD0428;
        v51 = swift_continuation_init();
        v52[46] = sub_1005B981C(&qword_101A0FD80);
        v52[39] = _NSConcreteStackBlock;
        v52[40] = *"";
        v52[41] = sub_100AD08F8;
        v52[42] = &unk_101894510;
        v52[43] = v51;
        [v50 debugDataAfterWaitingForRecognitionWithCompletion:v52 + 39];

        return _swift_continuation_await(v52 + 2);
      }
    }

    goto LABEL_7;
  }

  v15 = v0;
  v16 = objc_opt_self();
  v17 = [v16 _atomicIncrementAssertCount];
  v53 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v53);
  StaticString.description.getter();
  v18 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v19 = String._bridgeToObjectiveC()();

  v20 = [v19 lastPathComponent];

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v24 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v17;
  v26 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v26;
  v27 = sub_1005CF04C();
  *(inited + 104) = v27;
  *(inited + 72) = v18;
  *(inited + 136) = &type metadata for String;
  v28 = sub_1000053B0();
  *(inited + 112) = v21;
  *(inited + 120) = v23;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v28;
  *(inited + 152) = 89;
  v29 = v53;
  *(inited + 216) = v26;
  *(inited + 224) = v27;
  *(inited + 192) = v29;
  v30 = v18;
  v31 = v29;
  v32 = static os_log_type_t.error.getter();
  sub_100005404(v24, &_mh_execute_header, v32, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v33 = static os_log_type_t.error.getter();
  sub_100005404(v24, &_mh_execute_header, v33, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v34 = swift_allocObject();
  v34[2] = 8;
  v34[3] = 0;
  v34[4] = 0;
  v34[5] = 0;
  v35 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v36 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v37 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v38 = String._bridgeToObjectiveC()();

  [v16 handleFailureInFunction:v36 file:v37 lineNumber:89 isFatal:0 format:v38 args:v35];

  sub_100AD147C();
  swift_allocError();
  swift_willThrow();

  v39 = v15[1];

  return v39();
}

uint64_t sub_100AD0428()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 544) = v2;
  v3 = *(v1 + 520);
  v4 = *(v1 + 512);
  if (v2)
  {
    v5 = sub_100AD082C;
  }

  else
  {
    v5 = sub_100AD0558;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100AD0558()
{
  v1 = v0[58];
  v2 = v0[56];

  v3 = *(v2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator);
  v5 = v0[50];
  v4 = v0[51];
  v6 = *(*(v3 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard) + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v7 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FD94(v6 + v7, v1, type metadata accessor for CRLBoardCRDTData);
  sub_1005B981C(&qword_101A1A020);
  CRRegister.wrappedValue.getter();
  sub_10003D57C(v1, type metadata accessor for CRLBoardCRDTData);
  v8 = String._bridgeToObjectiveC()();

  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 crl_filenameFromDisplayNameWithExtension:v9 characterLimit:64];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  URL.appendingPathComponent(_:)();

  Data.write(to:options:)();
  v11 = v0[67];
  v12 = v0[66];
  v14 = v0[61];
  v13 = v0[62];
  v15 = v0[60];
  sub_10002640C(v5, v4);

  (*(v14 + 8))(v13, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_100AD082C()
{
  v1 = v0[67];
  v2 = v0[66];
  v3 = v0[62];
  v4 = v0[60];
  v5 = v0[61];

  swift_willThrow();

  (*(v5 + 8))(v3, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100AD08F8(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_100020E58((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1005B981C(&unk_1019F6B40);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    v9 = a2;
    v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = *(*(v5 + 64) + 40);
    *v13 = v10;
    v13[1] = v12;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_100AD09E0(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  sub_1005B981C(&qword_1019F67F8);
  v2[7] = swift_task_alloc();
  type metadata accessor for CRLBoardCRDTData(0);
  v2[8] = swift_task_alloc();
  type metadata accessor for UUID();
  v2[9] = swift_task_alloc();
  type metadata accessor for CRLBoardIdentifier(0);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  sub_1005B981C(&qword_1019F6268);
  v2[12] = swift_task_alloc();
  v3 = type metadata accessor for CRLBoardEntity();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[16] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[17] = v5;
  v2[18] = v4;

  return _swift_task_switch(sub_100AD0BD4, v5, v4);
}

uint64_t sub_100AD0BD4()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = *(*(v0[6] + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  v5 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v6 = *&v4[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v7 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_10004FD94(v6 + v7, v2, type metadata accessor for CRLBoardCRDTData);
  v8 = v4;
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10003D57C(v2, type metadata accessor for CRLBoardCRDTData);
  v9 = (*&v4[v5] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v10 = *v9;
  v11 = v9[1];

  sub_10084BD4C(v3, v10, v11, v1);

  v12 = swift_task_alloc();
  v0[19] = v12;
  *v12 = v0;
  v12[1] = sub_100AD0D8C;
  v14 = v0[11];
  v13 = v0[12];

  return sub_1010940DC(v13, v14);
}

uint64_t sub_100AD0D8C()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 88);
  if (v0)
  {

    sub_10003D57C(v4, type metadata accessor for CRLBoardIdentifier);
    v5 = *(v3 + 136);
    v6 = *(v3 + 144);
    v7 = sub_100AD110C;
  }

  else
  {
    sub_10003D57C(v4, type metadata accessor for CRLBoardIdentifier);
    v5 = *(v3 + 136);
    v6 = *(v3 + 144);
    v7 = sub_100AD0EF8;
  }

  return _swift_task_switch(v7, v5, v6);
}

id sub_100AD0EF8()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000CAAC(*(v0 + 96), &qword_1019F6268);
  }

  else
  {
    v4 = *(v0 + 48);
    sub_100688FA0(*(v0 + 96), *(v0 + 120));
    if ([v4 isViewLoaded])
    {
      result = [*(v0 + 48) view];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v6 = result;
      v7 = *(v0 + 120);
      v8 = *(v0 + 56);
      sub_10004FD94(v7, *(v0 + 80), type metadata accessor for CRLBoardIdentifier);
      sub_100635C6C();
      EntityIdentifier.init<A>(for:identifier:)();
      v9 = type metadata accessor for EntityIdentifier();
      (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
      UIView.appEntityIdentifier.setter();

      v10 = v7;
    }

    else
    {
      v10 = *(v0 + 120);
    }

    sub_10003D57C(v10, type metadata accessor for CRLBoardEntity);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100AD110C()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];

  (*(v2 + 56))(v3, 1, 1, v1);
  sub_10000CAAC(v0[12], &qword_1019F6268);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100AD1200(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002D3D4;

  return sub_100AD09E0(a1);
}

id sub_100AD1298()
{
  v1 = type metadata accessor for AppEntityVisualState();
  v2 = *(v1 - 8);
  *&v3 = __chkstk_darwin(v1).n128_u64[0];
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  result = [v6 isViewLoaded];
  if (result)
  {
    result = [v6 view];
    if (result)
    {
      v8 = result;
      AppEntityVisualState.init(isSelected:isHighlighted:isFocused:isDisabled:isEditing:isPrimary:)();
      UIView.updateAppEntityAnnotation(with:)();

      return (*(v2 + 8))(v5, v1);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100AD13D4@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

unint64_t sub_100AD147C()
{
  result = qword_101A0FD78;
  if (!qword_101A0FD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0FD78);
  }

  return result;
}

unint64_t sub_100AD14E4()
{
  result = qword_101A0FD88;
  if (!qword_101A0FD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0FD88);
  }

  return result;
}

uint64_t sub_100AD1538()
{
  v1[57] = v0;
  v2 = type metadata accessor for URL();
  v1[58] = v2;
  v1[59] = *(v2 - 8);
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  sub_1005B981C(&qword_1019F67C0);
  v1[62] = swift_task_alloc();
  v3 = type metadata accessor for CRLProto_Data(0);
  v1[63] = v3;
  v1[64] = *(v3 - 8);
  v1[65] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v1[66] = v4;
  v1[67] = *(v4 - 8);
  v1[68] = swift_task_alloc();
  v5 = type metadata accessor for CRLProto_ObjectMetadata.AssetInfo(0);
  v1[69] = v5;
  v1[70] = *(v5 - 8);
  v1[71] = swift_task_alloc();
  v1[72] = type metadata accessor for CRLArchivedObjectMetadataRepresentation();
  v1[73] = swift_task_alloc();

  return _swift_task_switch(sub_100AD17AC, 0, 0);
}

uint64_t sub_100AD17AC()
{
  v47 = v0;
  v1 = v0[57];
  v2 = v1[7];
  v3 = v1[8];
  sub_100020E58(v1 + 4, v2);
  v4 = (*(v3 + 16))(v2, v3);
  v0[74] = v4;
  v5 = v4;
  v6 = v0[57];
  v45 = *(v6 + 16);
  v7 = *(v6 + 72);
  v8 = *(v6 + 80);
  v9 = *(v6 + 88);
  v0[75] = v9;
  type metadata accessor for CRLSerializableObjectWriter();
  inited = swift_initStackObject();
  v0[76] = inited;
  *(inited + 64) = 0x1000000000000;
  *(inited + 72) = _swiftEmptySetSingleton;
  *(inited + 80) = _swiftEmptySetSingleton;
  type metadata accessor for CRLRootContainerItem(0);
  if (swift_dynamicCastClass())
  {
    v44 = v9;
    v11 = objc_opt_self();
    swift_unknownObjectRetain();
    v43 = v7;
    v12 = v7;
    v42 = v8;
    v13 = v8;
    swift_unknownObjectRetain();
    v41 = v11;
    v14 = [v11 _atomicIncrementAssertCount];
    v46 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v46);
    StaticString.description.getter();
    v40 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v15 = String._bridgeToObjectiveC()();

    v16 = [v15 lastPathComponent];

    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v19 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v20 = swift_initStackObject();
    *(v20 + 16) = xmmword_10146CA70;
    *(v20 + 56) = &type metadata for Int32;
    *(v20 + 64) = &protocol witness table for Int32;
    *(v20 + 32) = v14;
    v21 = sub_1005CF000();
    *(v20 + 96) = v21;
    v22 = sub_100AD56BC(&qword_1019F52E0, sub_1005CF000);
    *(v20 + 104) = v22;
    *(v20 + 72) = v40;
    *(v20 + 136) = &type metadata for String;
    v23 = sub_1000053B0();
    *(v20 + 112) = v39;
    *(v20 + 120) = v18;
    *(v20 + 176) = &type metadata for UInt;
    *(v20 + 184) = &protocol witness table for UInt;
    *(v20 + 144) = v23;
    *(v20 + 152) = 40;
    v24 = v46;
    *(v20 + 216) = v21;
    *(v20 + 224) = v22;
    *(v20 + 192) = v24;
    v25 = v40;
    v26 = v24;
    v27 = static os_log_type_t.error.getter();
    sub_100005404(v19, &_mh_execute_header, v27, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v20);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v28 = static os_log_type_t.error.getter();
    sub_100005404(v19, &_mh_execute_header, v28, "You should not provide a CRLRootContainerItem. Pass a CRLBoard instead.", 71, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v29 = swift_allocObject();
    v29[2] = 8;
    v29[3] = 0;
    v29[4] = 0;
    v29[5] = 0;
    v30 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v31 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v32 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v33 = String._bridgeToObjectiveC()();

    [v41 handleFailureInFunction:v31 file:v32 lineNumber:40 isFatal:0 format:v33 args:v30];

    v7 = v43;
    v9 = v44;
    v8 = v42;
  }

  else
  {
    swift_unknownObjectRetain();
    v34 = v7;
    v35 = v8;
    swift_unknownObjectRetain();
  }

  *(inited + 16) = v45;
  *(inited + 32) = v7;
  *(inited + 40) = v8;
  *(inited + 48) = v5;
  *(inited + 56) = v9;
  v36 = swift_task_alloc();
  v0[77] = v36;
  *v36 = v0;
  v36[1] = sub_100AD1DC0;
  v37 = v0[73];

  return sub_1006375E0(v37);
}

uint64_t sub_100AD1DC0()
{
  *(*v1 + 624) = v0;

  if (v0)
  {
    v2 = sub_100AD43F8;
  }

  else
  {
    v2 = sub_100AD1F00;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100AD1F00()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 624);
  if (v1)
  {
    v59 = *(v0 + 456);
    v60 = v59[7];
    v61 = v59[8];
    sub_100020E58(v59 + 4, v60);
    v62 = (*(v61 + 8))(v60, v61);
    *(v0 + 632) = v62;
    if (!v2)
    {
      v68 = v62;
      v69 = swift_task_alloc();
      *(v0 + 640) = v69;
      *v69 = v0;
      v69[1] = sub_100AD2B24;

      return sub_100AD4C90(v68);
    }

    v63 = *(v0 + 608);
    v64 = *(v0 + 592);
    v65 = *(v0 + 584);
    swift_setDeallocating();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    sub_100AD565C(v65, type metadata accessor for CRLArchivedObjectMetadataRepresentation);
    [v64 close];
LABEL_41:
    swift_unknownObjectRelease();

    v66 = *(v0 + 8);
LABEL_43:

    return v66();
  }

  v3 = *(v0 + 456);
  v4 = *(*(v0 + 584) + *(*(v0 + 576) + 20));
  *(v0 + 656) = v4;
  *(v3 + 96) = v4;

  if ((v1 & 2) == 0 || (v5 = *(*(v0 + 584) + 8), *(v0 + 664) = v5, v6 = *(v5 + 16), (*(v0 + 672) = v6) == 0))
  {
LABEL_42:

    v67 = *(v0 + 592);
    sub_100AD565C(*(v0 + 584), type metadata accessor for CRLArchivedObjectMetadataRepresentation);
    [v67 close];
    swift_unknownObjectRelease();

    v66 = *(v0 + 8);
    goto LABEL_43;
  }

  *(v0 + 720) = *(*(v0 + 560) + 80);
  *(v0 + 680) = 0;
  if (!*(v5 + 16))
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
  }

  v7 = 0;
  while (1)
  {
    v8 = *(v0 + 568);
    v9 = *(v0 + 552);
    v10 = *(v0 + 504);
    v11 = *(v0 + 512);
    v12 = *(v0 + 496);
    sub_100AD55F8(v5 + ((*(v0 + 720) + 32) & ~*(v0 + 720)) + *(*(v0 + 560) + 72) * v7, v8);
    sub_10084DD24(v8 + *(v9 + 28), v12);
    v13 = *(v11 + 48);
    v14 = v13(v12, 1, v10);
    v15 = *(v0 + 520);
    if (v14 == 1)
    {
      v16 = *(v0 + 496);
      v17 = *(v0 + 504);
      *v15 = xmmword_10146F370;
      UnknownStorage.init()();
      if (v13(v16, 1, v17) != 1)
      {
        sub_1009DCE5C(*(v0 + 496));
      }
    }

    else
    {
      sub_100683F6C(*(v0 + 496), v15);
    }

    v18 = *(v0 + 520);
    v19 = *v18;
    v20 = v18[1];
    sub_100024E98(*v18, v20);
    sub_100AD565C(v18, type metadata accessor for CRLProto_Data);
    v23 = v20 >> 62;
    if ((v20 >> 62) > 1)
    {
      if (v23 != 2)
      {
        goto LABEL_49;
      }

      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      v27 = __OFSUB__(v25, v26);
      v24 = v25 - v26;
      if (v27)
      {
        goto LABEL_59;
      }
    }

    else if (v23)
    {
      LODWORD(v24) = HIDWORD(v19) - v19;
      if (__OFSUB__(HIDWORD(v19), v19))
      {
        goto LABEL_58;
      }

      v24 = v24;
    }

    else
    {
      v24 = BYTE6(v20);
    }

    if (v24 != 16)
    {
LABEL_49:
      v70 = *(v0 + 608);
      v71 = *(v0 + 592);
      v72 = *(v0 + 584);
      v73 = *(v0 + 568);
      sub_10070A7DC();
      swift_allocError();
      swift_willThrow();
      sub_10002640C(v19, v20);
      swift_setDeallocating();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();

      sub_100AD565C(v73, type metadata accessor for CRLProto_ObjectMetadata.AssetInfo);
      sub_100AD565C(v72, type metadata accessor for CRLArchivedObjectMetadataRepresentation);
      [v71 close];
      goto LABEL_41;
    }

    if (v23 == 2)
    {
      v33 = *(v19 + 16);
      v34 = __DataStorage._bytes.getter();
      if (!v34)
      {
        __DataStorage._length.getter();
LABEL_64:
        __break(1u);
LABEL_65:
        result = __DataStorage._length.getter();
        __break(1u);
LABEL_66:
        __break(1u);
        return result;
      }

      v35 = v34;
      v36 = __DataStorage._offset.getter();
      if (__OFSUB__(v33, v36))
      {
        goto LABEL_61;
      }

      v31 = (v33 - v36 + v35);
      __DataStorage._length.getter();
      if (!v31)
      {
        goto LABEL_64;
      }
    }

    else
    {
      if (v23 != 1)
      {
        v38 = v20 >> 8;
        v39 = v20 >> 16;
        v40 = v20 >> 24;
        v41 = HIDWORD(v20);
        v37 = v20;
        v42 = v20 >> 40;
        goto LABEL_32;
      }

      if (v19 > v19 >> 32)
      {
        goto LABEL_60;
      }

      v28 = __DataStorage._bytes.getter();
      if (!v28)
      {
        goto LABEL_65;
      }

      v29 = v28;
      v30 = __DataStorage._offset.getter();
      if (__OFSUB__(v19, v30))
      {
        goto LABEL_62;
      }

      v31 = (v19 - v30 + v29);
      result = __DataStorage._length.getter();
      if (!v31)
      {
        goto LABEL_66;
      }
    }

    v37 = v31[8];
    LOBYTE(v38) = v31[9];
    LOBYTE(v39) = v31[10];
    LOBYTE(v40) = v31[11];
    LOBYTE(v41) = v31[12];
    LOBYTE(v42) = v31[13];
    v21 = v31[14];
    v22 = v31[15];
LABEL_32:
    v43 = *(v0 + 656);
    HIBYTE(v106) = v22;
    BYTE6(v106) = v21;
    BYTE5(v106) = v42;
    BYTE4(v106) = v41;
    BYTE3(v106) = v40;
    BYTE2(v106) = v39;
    BYTE1(v106) = v38;
    LOBYTE(v106) = v37;
    UUID.init(uuid:)();
    sub_10002640C(v19, v20);
    if (*(v43 + 16))
    {
      v44 = sub_10003E994(*(v0 + 544));
      if (v45)
      {
        break;
      }
    }

    if (qword_1019F20E8 != -1)
    {
      swift_once();
    }

    v46 = *(v0 + 568);
    v47 = static OS_os_log.crlSerializableObject;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    v49 = UUID.uuidString.getter();
    v51 = v50;
    *(inited + 56) = &type metadata for String;
    v52 = sub_1000053B0();
    *(inited + 64) = v52;
    *(inited + 32) = v49;
    *(inited + 40) = v51;
    v54 = *v46;
    v53 = v46[1];
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v52;
    *(inited + 72) = v54;
    *(inited + 80) = v53;

    v55 = static os_log_type_t.default.getter();
    sub_100005404(v47, &_mh_execute_header, v55, "Skipping writing asset without backing file URL. assetID=%@, assetFilename=%@", 77, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v56 = *(v0 + 672);
    v57 = *(v0 + 568);
    v58 = *(v0 + 680) + 1;
    (*(*(v0 + 536) + 8))(*(v0 + 544), *(v0 + 528));
    sub_100AD565C(v57, type metadata accessor for CRLProto_ObjectMetadata.AssetInfo);
    if (v58 == v56)
    {
      goto LABEL_42;
    }

    v7 = *(v0 + 680) + 1;
    *(v0 + 680) = v7;
    v5 = *(v0 + 664);
    if (v7 >= *(v5 + 16))
    {
      goto LABEL_57;
    }
  }

  v75 = *(v0 + 480);
  v74 = *(v0 + 488);
  v76 = *(v0 + 464);
  v77 = *(v0 + 472);
  v78 = *(v0 + 456);
  (*(v77 + 16))(v75, *(*(v0 + 656) + 56) + *(v77 + 72) * v44, v76);
  (*(v77 + 32))(v74, v75, v76);
  v79 = v78[8];
  sub_100020E58(v78 + 4, v78[7]);
  v80 = UUID.uuidString.getter();
  v81 = (*(v79 + 24))(v80);
  *(v0 + 688) = v81;
  if (v2)
  {
    v82 = *(v0 + 608);
    v83 = *(v0 + 592);
    v114 = *(v0 + 584);
    v110 = *(v0 + 544);
    v112 = *(v0 + 568);
    v84 = *(v0 + 536);
    v85 = *(v0 + 528);
    v86 = *(v0 + 488);
    v87 = *(v0 + 464);
    v88 = *(v0 + 472);
    swift_setDeallocating();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    (*(v88 + 8))(v86, v87);
    (*(v84 + 8))(v110, v85);
    sub_100AD565C(v112, type metadata accessor for CRLProto_ObjectMetadata.AssetInfo);
    sub_100AD565C(v114, type metadata accessor for CRLArchivedObjectMetadataRepresentation);
    [v83 close];
    goto LABEL_41;
  }

  v89 = v81;

  v90 = objc_allocWithZone(CRLFileIOChannel);
  URL._bridgeToObjectiveC()(v91);
  v93 = v92;
  *(v0 + 448) = 0;
  v94 = [v90 initForReadingURL:v92 error:{v0 + 448, v106}];
  *(v0 + 696) = v94;

  v95 = *(v0 + 448);
  if (!v94)
  {
    v100 = *(v0 + 608);
    v101 = *(v0 + 592);
    v115 = *(v0 + 584);
    v111 = *(v0 + 544);
    v113 = *(v0 + 568);
    v102 = *(v0 + 536);
    v108 = *(v0 + 488);
    v109 = *(v0 + 528);
    v103 = *(v0 + 464);
    v104 = *(v0 + 472);
    v105 = v95;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    [v89 close];
    swift_setDeallocating();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    (*(v104 + 8))(v108, v103);
    (*(v102 + 8))(v111, v109);
    sub_100AD565C(v113, type metadata accessor for CRLProto_ObjectMetadata.AssetInfo);
    sub_100AD565C(v115, type metadata accessor for CRLArchivedObjectMetadataRepresentation);
    [v101 close];
    goto LABEL_41;
  }

  ObjectType = swift_getObjectType();
  v97 = v95;
  v98 = v94;
  v99 = swift_task_alloc();
  *(v0 + 704) = v99;
  *v99 = v0;
  v99[1] = sub_100AD3774;

  return sub_1008735A4(v98, ObjectType);
}

uint64_t sub_100AD2B24()
{
  *(*v1 + 648) = v0;

  if (v0)
  {
    v2 = sub_100AD453C;
  }

  else
  {
    v2 = sub_100AD2C64;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100AD2C64()
{
  v1 = &selRef_canCreateItemsOfClass_;
  [*(v0 + 632) close];
  swift_unknownObjectRelease();
  v2 = *(v0 + 648);
  v3 = *(v0 + 600);
  v4 = *(v0 + 456);
  v5 = *(*(v0 + 584) + *(*(v0 + 576) + 20));
  *(v0 + 656) = v5;
  *(v4 + 96) = v5;

  if ((v3 & 2) == 0 || (v6 = *(*(v0 + 584) + 8), *(v0 + 664) = v6, v7 = *(v6 + 16), (*(v0 + 672) = v7) == 0))
  {

LABEL_39:
    v60 = *(v0 + 592);
    sub_100AD565C(*(v0 + 584), type metadata accessor for CRLArchivedObjectMetadataRepresentation);
    [v60 v1[338]];
    swift_unknownObjectRelease();

    v61 = *(v0 + 8);
LABEL_40:

    return v61();
  }

  v102 = v2;
  *(v0 + 720) = *(*(v0 + 560) + 80);
  *(v0 + 680) = 0;
  if (!*(v6 + 16))
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __DataStorage._length.getter();
LABEL_60:
    __break(1u);
LABEL_61:
    result = __DataStorage._length.getter();
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v8 = 0;
  while (1)
  {
    v9 = *(v0 + 568);
    v10 = *(v0 + 552);
    v11 = *(v0 + 504);
    v12 = *(v0 + 512);
    v13 = *(v0 + 496);
    sub_100AD55F8(v6 + ((*(v0 + 720) + 32) & ~*(v0 + 720)) + *(*(v0 + 560) + 72) * v8, v9);
    sub_10084DD24(v9 + *(v10 + 28), v13);
    v14 = *(v12 + 48);
    v15 = v14(v13, 1, v11);
    v16 = *(v0 + 520);
    if (v15 == 1)
    {
      v17 = *(v0 + 496);
      v18 = *(v0 + 504);
      *v16 = xmmword_10146F370;
      UnknownStorage.init()();
      if (v14(v17, 1, v18) != 1)
      {
        sub_1009DCE5C(*(v0 + 496));
      }
    }

    else
    {
      sub_100683F6C(*(v0 + 496), v16);
    }

    v19 = *(v0 + 520);
    v20 = *v19;
    v21 = v19[1];
    sub_100024E98(*v19, v21);
    sub_100AD565C(v19, type metadata accessor for CRLProto_Data);
    v24 = v21 >> 62;
    if ((v21 >> 62) > 1)
    {
      if (v24 != 2)
      {
        goto LABEL_43;
      }

      v26 = *(v20 + 16);
      v25 = *(v20 + 24);
      v27 = __OFSUB__(v25, v26);
      v28 = v25 - v26;
      if (v27)
      {
        goto LABEL_55;
      }

      if (v28 != 16)
      {
        goto LABEL_43;
      }
    }

    else if (v24)
    {
      if (__OFSUB__(HIDWORD(v20), v20))
      {
        goto LABEL_54;
      }

      if (HIDWORD(v20) - v20 != 16)
      {
LABEL_43:
        v62 = *(v0 + 608);
        v63 = *(v0 + 592);
        v64 = *(v0 + 584);
        v65 = *(v0 + 568);
        sub_10070A7DC();
        swift_allocError();
        swift_willThrow();
        sub_10002640C(v20, v21);
        swift_setDeallocating();
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();

        sub_100AD565C(v65, type metadata accessor for CRLProto_ObjectMetadata.AssetInfo);
        sub_100AD565C(v64, type metadata accessor for CRLArchivedObjectMetadataRepresentation);
        [v63 close];
LABEL_47:
        swift_unknownObjectRelease();

        v61 = *(v0 + 8);
        goto LABEL_40;
      }
    }

    else if (BYTE6(v21) != 16)
    {
      goto LABEL_43;
    }

    if (v24 == 2)
    {
      v34 = *(v20 + 16);
      v35 = __DataStorage._bytes.getter();
      if (!v35)
      {
        goto LABEL_59;
      }

      v36 = v35;
      v37 = __DataStorage._offset.getter();
      if (__OFSUB__(v34, v37))
      {
        goto LABEL_57;
      }

      v32 = (v34 - v37 + v36);
      __DataStorage._length.getter();
      if (!v32)
      {
        goto LABEL_60;
      }
    }

    else
    {
      if (v24 != 1)
      {
        v39 = v21 >> 8;
        v40 = v21 >> 16;
        v41 = v21 >> 24;
        v42 = HIDWORD(v21);
        v38 = v21;
        v43 = v21 >> 40;
        goto LABEL_31;
      }

      if (v20 > v20 >> 32)
      {
        goto LABEL_56;
      }

      v29 = __DataStorage._bytes.getter();
      if (!v29)
      {
        goto LABEL_61;
      }

      v30 = v29;
      v31 = __DataStorage._offset.getter();
      if (__OFSUB__(v20, v31))
      {
        goto LABEL_58;
      }

      v32 = (v20 - v31 + v30);
      result = __DataStorage._length.getter();
      if (!v32)
      {
        goto LABEL_62;
      }
    }

    v38 = v32[8];
    LOBYTE(v39) = v32[9];
    LOBYTE(v40) = v32[10];
    LOBYTE(v41) = v32[11];
    LOBYTE(v42) = v32[12];
    LOBYTE(v43) = v32[13];
    v22 = v32[14];
    v23 = v32[15];
LABEL_31:
    v44 = *(v0 + 656);
    HIBYTE(v98) = v23;
    BYTE6(v98) = v22;
    BYTE5(v98) = v43;
    BYTE4(v98) = v42;
    BYTE3(v98) = v41;
    BYTE2(v98) = v40;
    BYTE1(v98) = v39;
    LOBYTE(v98) = v38;
    UUID.init(uuid:)();
    sub_10002640C(v20, v21);
    if (*(v44 + 16))
    {
      v45 = sub_10003E994(*(v0 + 544));
      if (v46)
      {
        break;
      }
    }

    if (qword_1019F20E8 != -1)
    {
      swift_once();
    }

    v47 = *(v0 + 568);
    v48 = static OS_os_log.crlSerializableObject;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    v50 = UUID.uuidString.getter();
    v52 = v51;
    *(inited + 56) = &type metadata for String;
    v53 = sub_1000053B0();
    *(inited + 64) = v53;
    *(inited + 32) = v50;
    *(inited + 40) = v52;
    v55 = *v47;
    v54 = v47[1];
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v53;
    *(inited + 72) = v55;
    *(inited + 80) = v54;

    v56 = static os_log_type_t.default.getter();
    sub_100005404(v48, &_mh_execute_header, v56, "Skipping writing asset without backing file URL. assetID=%@, assetFilename=%@", 77, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v57 = *(v0 + 672);
    v58 = *(v0 + 568);
    v59 = *(v0 + 680) + 1;
    (*(*(v0 + 536) + 8))(*(v0 + 544), *(v0 + 528));
    sub_100AD565C(v58, type metadata accessor for CRLProto_ObjectMetadata.AssetInfo);
    if (v59 == v57)
    {

      v1 = &selRef_canCreateItemsOfClass_;
      goto LABEL_39;
    }

    v8 = *(v0 + 680) + 1;
    *(v0 + 680) = v8;
    v6 = *(v0 + 664);
    if (v8 >= *(v6 + 16))
    {
      goto LABEL_53;
    }
  }

  v67 = *(v0 + 480);
  v66 = *(v0 + 488);
  v68 = *(v0 + 464);
  v69 = *(v0 + 472);
  v70 = *(v0 + 456);
  (*(v69 + 16))(v67, *(*(v0 + 656) + 56) + *(v69 + 72) * v45, v68);
  (*(v69 + 32))(v66, v67, v68);
  v71 = v70[8];
  sub_100020E58(v70 + 4, v70[7]);
  v72 = UUID.uuidString.getter();
  v73 = (*(v71 + 24))(v72);
  *(v0 + 688) = v73;
  if (v102)
  {
    v74 = *(v0 + 608);
    v75 = *(v0 + 592);
    v107 = *(v0 + 584);
    v103 = *(v0 + 544);
    v105 = *(v0 + 568);
    v76 = *(v0 + 536);
    v77 = *(v0 + 528);
    v78 = *(v0 + 488);
    v79 = *(v0 + 464);
    v80 = *(v0 + 472);
    swift_setDeallocating();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    (*(v80 + 8))(v78, v79);
    (*(v76 + 8))(v103, v77);
    sub_100AD565C(v105, type metadata accessor for CRLProto_ObjectMetadata.AssetInfo);
    sub_100AD565C(v107, type metadata accessor for CRLArchivedObjectMetadataRepresentation);
    [v75 close];
    goto LABEL_47;
  }

  v81 = v73;

  v82 = objc_allocWithZone(CRLFileIOChannel);
  URL._bridgeToObjectiveC()(v83);
  v85 = v84;
  *(v0 + 448) = 0;
  v86 = [v82 initForReadingURL:v84 error:{v0 + 448, v98}];
  *(v0 + 696) = v86;

  v87 = *(v0 + 448);
  if (!v86)
  {
    v92 = *(v0 + 608);
    v93 = *(v0 + 592);
    v108 = *(v0 + 584);
    v104 = *(v0 + 544);
    v106 = *(v0 + 568);
    v94 = *(v0 + 536);
    v100 = *(v0 + 488);
    v101 = *(v0 + 528);
    v95 = *(v0 + 464);
    v96 = *(v0 + 472);
    v97 = v87;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    [v81 close];
    swift_setDeallocating();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    (*(v96 + 8))(v100, v95);
    (*(v94 + 8))(v104, v101);
    sub_100AD565C(v106, type metadata accessor for CRLProto_ObjectMetadata.AssetInfo);
    sub_100AD565C(v108, type metadata accessor for CRLArchivedObjectMetadataRepresentation);
    [v93 close];
    goto LABEL_47;
  }

  ObjectType = swift_getObjectType();
  v89 = v87;
  v90 = v86;
  v91 = swift_task_alloc();
  *(v0 + 704) = v91;
  *v91 = v0;
  v91[1] = sub_100AD3774;

  return sub_1008735A4(v90, ObjectType);
}

uint64_t sub_100AD3774()
{
  v2 = *v1;
  *(*v1 + 712) = v0;

  if (v0)
  {
    v3 = sub_100AD46B8;
  }

  else
  {
    v3 = sub_100AD38D4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100AD38D4()
{
  v1 = *(v0 + 696);
  v2 = *(v0 + 688);
  v3 = *(v0 + 488);
  v4 = *(v0 + 464);
  v5 = *(v0 + 472);
  [v1 close];

  [v2 close];
  swift_unknownObjectRelease();
  (*(v5 + 8))(v3, v4);
  v104 = *(v0 + 712);
  v6 = *(v0 + 672);
  v7 = *(v0 + 568);
  v8 = *(v0 + 680) + 1;
  (*(*(v0 + 536) + 8))(*(v0 + 544), *(v0 + 528));
  sub_100AD565C(v7, type metadata accessor for CRLProto_ObjectMetadata.AssetInfo);
  if (v8 == v6)
  {
LABEL_2:

    v9 = *(v0 + 592);
    sub_100AD565C(*(v0 + 584), type metadata accessor for CRLArchivedObjectMetadataRepresentation);
    [v9 close];
    swift_unknownObjectRelease();

    v10 = *(v0 + 8);
LABEL_40:

    return v10();
  }

  while (1)
  {
    v11 = *(v0 + 680) + 1;
    *(v0 + 680) = v11;
    v12 = *(v0 + 664);
    if (v11 >= *(v12 + 16))
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __DataStorage._length.getter();
LABEL_55:
      __break(1u);
LABEL_56:
      __DataStorage._length.getter();
      __break(1u);
LABEL_57:
      __break(1u);
    }

    v13 = *(v0 + 568);
    v14 = *(v0 + 552);
    v15 = *(v0 + 504);
    v16 = *(v0 + 512);
    v17 = *(v0 + 496);
    sub_100AD55F8(v12 + ((*(v0 + 720) + 32) & ~*(v0 + 720)) + *(*(v0 + 560) + 72) * v11, v13);
    sub_10084DD24(v13 + *(v14 + 28), v17);
    v18 = *(v16 + 48);
    v19 = v18(v17, 1, v15);
    v20 = *(v0 + 520);
    if (v19 == 1)
    {
      v21 = *(v0 + 496);
      v22 = *(v0 + 504);
      *v20 = xmmword_10146F370;
      UnknownStorage.init()();
      if (v18(v21, 1, v22) != 1)
      {
        sub_1009DCE5C(*(v0 + 496));
      }
    }

    else
    {
      sub_100683F6C(*(v0 + 496), v20);
    }

    v23 = *(v0 + 520);
    v24 = *v23;
    v25 = v23[1];
    sub_100024E98(*v23, v25);
    sub_100AD565C(v23, type metadata accessor for CRLProto_Data);
    v28 = v25 >> 62;
    if ((v25 >> 62) > 1)
    {
      if (v28 != 2)
      {
        goto LABEL_36;
      }

      v30 = *(v24 + 16);
      v29 = *(v24 + 24);
      v31 = __OFSUB__(v29, v30);
      v32 = v29 - v30;
      if (v31)
      {
        goto LABEL_49;
      }

      if (v32 != 16)
      {
        goto LABEL_36;
      }
    }

    else if (v28)
    {
      if (__OFSUB__(HIDWORD(v24), v24))
      {
        goto LABEL_50;
      }

      if (HIDWORD(v24) - v24 != 16)
      {
LABEL_36:
        v63 = *(v0 + 608);
        v64 = *(v0 + 592);
        v65 = *(v0 + 584);
        v66 = *(v0 + 568);
        sub_10070A7DC();
        swift_allocError();
        swift_willThrow();
        sub_10002640C(v24, v25);
        swift_setDeallocating();
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();

        sub_100AD565C(v66, type metadata accessor for CRLProto_ObjectMetadata.AssetInfo);
        sub_100AD565C(v65, type metadata accessor for CRLArchivedObjectMetadataRepresentation);
        [v64 close];
LABEL_39:
        swift_unknownObjectRelease();

        v10 = *(v0 + 8);
        goto LABEL_40;
      }
    }

    else if (BYTE6(v25) != 16)
    {
      goto LABEL_36;
    }

    if (v28 == 2)
    {
      v37 = *(v24 + 16);
      v38 = __DataStorage._bytes.getter();
      if (!v38)
      {
        goto LABEL_54;
      }

      v39 = v38;
      v40 = __DataStorage._offset.getter();
      if (__OFSUB__(v37, v40))
      {
        goto LABEL_52;
      }

      v36 = (v37 - v40 + v39);
      __DataStorage._length.getter();
      if (!v36)
      {
        goto LABEL_55;
      }
    }

    else
    {
      if (v28 != 1)
      {
        v42 = v25 >> 8;
        v43 = v25 >> 16;
        v44 = v25 >> 24;
        v45 = HIDWORD(v25);
        v41 = v25;
        v46 = v25 >> 40;
        goto LABEL_30;
      }

      if (v24 > v24 >> 32)
      {
        goto LABEL_51;
      }

      v33 = __DataStorage._bytes.getter();
      if (!v33)
      {
        goto LABEL_56;
      }

      v34 = v33;
      v35 = __DataStorage._offset.getter();
      if (__OFSUB__(v24, v35))
      {
        goto LABEL_53;
      }

      v36 = (v24 - v35 + v34);
      __DataStorage._length.getter();
      if (!v36)
      {
        goto LABEL_57;
      }
    }

    v41 = v36[8];
    LOBYTE(v42) = v36[9];
    LOBYTE(v43) = v36[10];
    LOBYTE(v44) = v36[11];
    LOBYTE(v45) = v36[12];
    LOBYTE(v46) = v36[13];
    v26 = v36[14];
    v27 = v36[15];
LABEL_30:
    v47 = *(v0 + 656);
    HIBYTE(v100) = v27;
    BYTE6(v100) = v26;
    BYTE5(v100) = v46;
    BYTE4(v100) = v45;
    BYTE3(v100) = v44;
    BYTE2(v100) = v43;
    BYTE1(v100) = v42;
    LOBYTE(v100) = v41;
    UUID.init(uuid:)();
    sub_10002640C(v24, v25);
    if (*(v47 + 16))
    {
      v48 = sub_10003E994(*(v0 + 544));
      if (v49)
      {
        break;
      }
    }

    if (qword_1019F20E8 != -1)
    {
      swift_once();
    }

    v50 = *(v0 + 568);
    v51 = static OS_os_log.crlSerializableObject;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    v53 = UUID.uuidString.getter();
    v55 = v54;
    *(inited + 56) = &type metadata for String;
    v56 = sub_1000053B0();
    *(inited + 64) = v56;
    *(inited + 32) = v53;
    *(inited + 40) = v55;
    v58 = *v50;
    v57 = v50[1];
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v56;
    *(inited + 72) = v58;
    *(inited + 80) = v57;

    v59 = static os_log_type_t.default.getter();
    sub_100005404(v51, &_mh_execute_header, v59, "Skipping writing asset without backing file URL. assetID=%@, assetFilename=%@", 77, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v60 = *(v0 + 672);
    v61 = *(v0 + 568);
    v62 = *(v0 + 680) + 1;
    (*(*(v0 + 536) + 8))(*(v0 + 544), *(v0 + 528));
    sub_100AD565C(v61, type metadata accessor for CRLProto_ObjectMetadata.AssetInfo);
    if (v62 == v60)
    {
      goto LABEL_2;
    }
  }

  v68 = *(v0 + 480);
  v67 = *(v0 + 488);
  v69 = *(v0 + 464);
  v70 = *(v0 + 472);
  v71 = *(v0 + 456);
  (*(v70 + 16))(v68, *(*(v0 + 656) + 56) + *(v70 + 72) * v48, v69);
  (*(v70 + 32))(v67, v68, v69);
  v72 = v71[8];
  sub_100020E58(v71 + 4, v71[7]);
  v73 = UUID.uuidString.getter();
  v74 = (*(v72 + 24))(v73);
  *(v0 + 688) = v74;
  if (v104)
  {
    v75 = *(v0 + 608);
    v76 = *(v0 + 592);
    v109 = *(v0 + 584);
    v105 = *(v0 + 544);
    v107 = *(v0 + 568);
    v77 = *(v0 + 536);
    v78 = *(v0 + 528);
    v79 = *(v0 + 488);
    v80 = *(v0 + 464);
    v81 = *(v0 + 472);
    swift_setDeallocating();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    (*(v81 + 8))(v79, v80);
    (*(v77 + 8))(v105, v78);
    sub_100AD565C(v107, type metadata accessor for CRLProto_ObjectMetadata.AssetInfo);
    sub_100AD565C(v109, type metadata accessor for CRLArchivedObjectMetadataRepresentation);
    [v76 close];
    goto LABEL_39;
  }

  v83 = v74;

  v84 = objc_allocWithZone(CRLFileIOChannel);
  URL._bridgeToObjectiveC()(v85);
  v87 = v86;
  *(v0 + 448) = 0;
  v88 = [v84 initForReadingURL:v86 error:{v0 + 448, v100}];
  *(v0 + 696) = v88;

  v89 = *(v0 + 448);
  if (!v88)
  {
    v94 = *(v0 + 608);
    v95 = *(v0 + 592);
    v110 = *(v0 + 584);
    v106 = *(v0 + 544);
    v108 = *(v0 + 568);
    v96 = *(v0 + 536);
    v102 = *(v0 + 488);
    v103 = *(v0 + 528);
    v97 = *(v0 + 464);
    v98 = *(v0 + 472);
    v99 = v89;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    [v83 close];
    swift_setDeallocating();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    (*(v98 + 8))(v102, v97);
    (*(v96 + 8))(v106, v103);
    sub_100AD565C(v108, type metadata accessor for CRLProto_ObjectMetadata.AssetInfo);
    sub_100AD565C(v110, type metadata accessor for CRLArchivedObjectMetadataRepresentation);
    [v95 close];
    goto LABEL_39;
  }

  ObjectType = swift_getObjectType();
  v91 = v89;
  v92 = v88;
  v93 = swift_task_alloc();
  *(v0 + 704) = v93;
  *v93 = v0;
  v93[1] = sub_100AD3774;

  return sub_1008735A4(v92, ObjectType);
}

uint64_t sub_100AD43F8()
{
  v1 = v0[76];
  v2 = v0[74];
  swift_setDeallocating();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  [v2 close];
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

uint64_t sub_100AD453C()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 592);
  v3 = *(v0 + 584);
  [*(v0 + 632) close];
  swift_unknownObjectRelease();
  swift_setDeallocating();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  sub_100AD565C(v3, type metadata accessor for CRLArchivedObjectMetadataRepresentation);
  [v2 close];
  swift_unknownObjectRelease();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100AD46B8()
{
  v1 = v0[87];
  v2 = v0[86];
  v3 = v0[76];
  v4 = v0[74];
  v13 = v0[71];
  v14 = v0[73];
  v5 = v0[67];
  v11 = v0[66];
  v12 = v0[68];
  v6 = v0[61];
  v8 = v0[58];
  v7 = v0[59];
  [v1 close];

  [v2 close];
  swift_setDeallocating();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v12, v11);
  sub_100AD565C(v13, type metadata accessor for CRLProto_ObjectMetadata.AssetInfo);
  sub_100AD565C(v14, type metadata accessor for CRLArchivedObjectMetadataRepresentation);
  [v4 close];
  swift_unknownObjectRelease();

  v9 = v0[1];

  return v9();
}

void *sub_100AD48B8()
{
  if (*(v0 + 96))
  {
    v1 = *(v0 + 96);
  }

  else
  {
    v2 = objc_opt_self();
    v3 = [v2 _atomicIncrementAssertCount];
    v26 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v26);
    StaticString.description.getter();
    v4 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v5 = String._bridgeToObjectiveC()();

    v6 = [v5 lastPathComponent];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v3;
    v12 = sub_1005CF000();
    *(inited + 96) = v12;
    v13 = sub_100AD56BC(&qword_1019F52E0, sub_1005CF000);
    *(inited + 104) = v13;
    *(inited + 72) = v4;
    *(inited + 136) = &type metadata for String;
    v14 = sub_1000053B0();
    *(inited + 112) = v7;
    *(inited + 120) = v9;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v14;
    *(inited + 152) = 38;
    v15 = v26;
    *(inited + 216) = v12;
    *(inited + 224) = v13;
    *(inited + 192) = v15;
    v16 = v4;
    v17 = v15;
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v19, "Reading asset file URL map before writing the object.", 53, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v20 = swift_allocObject();
    v20[2] = 8;
    v20[3] = 0;
    v20[4] = 0;
    v20[5] = 0;
    v21 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    [v2 handleFailureInFunction:v22 file:v23 lineNumber:38 isFatal:0 format:v24 args:v21];

    v1 = _swiftEmptyDictionarySingleton;
  }

  return v1;
}

uint64_t sub_100AD4C90(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;

  return _swift_task_switch(sub_100AD4D20, 0, 0);
}

uint64_t sub_100AD4D20()
{
  type metadata accessor for CRLProto_ObjectMetadata(0);
  sub_100AD56BC(&qword_101A0FE58, type metadata accessor for CRLProto_ObjectMetadata);
  v1 = Message.serializedData(partial:)();
  v0[5] = v1;
  v0[6] = v2;
  v3 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (!v3)
    {
      v4 = BYTE6(v2);
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (v3 != 2)
  {
    goto LABEL_12;
  }

  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = __OFSUB__(v5, v6);
  v4 = v5 - v6;
  if (v7)
  {
    __break(1u);
LABEL_8:
    LODWORD(v4) = HIDWORD(v1) - v1;
    if (__OFSUB__(HIDWORD(v1), v1))
    {
      __break(1u);
    }

    v4 = v4;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    goto LABEL_13;
  }

  __break(1u);
LABEL_12:
  v4 = 0;
LABEL_13:
  v0[2] = v4;
  v8 = sub_100AE5050((v0 + 2), (v0 + 3));
  v10 = v9;
  v0[7] = v8;
  v0[8] = v9;
  ObjectType = swift_getObjectType();
  v0[9] = ObjectType;
  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_100AD4F30;

  return sub_100872530(v8, v10, ObjectType);
}

uint64_t sub_100AD4F30()
{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100AD52E0, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[12] = v3;
    *v3 = v2;
    v3[1] = sub_100AD50F8;
    v4 = v2[9];
    v5 = v2[6];
    v6 = v2[5];

    return sub_100872530(v6, v5, v4);
  }
}

uint64_t sub_100AD50F8()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_100AD5388;
  }

  else
  {
    v2 = sub_100AD5238;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100AD5238()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_10002640C(v0[7], v0[8]);
  sub_10002640C(v1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_100AD52E0()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_10002640C(v0[7], v0[8]);
  sub_10002640C(v1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_100AD5388()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_10002640C(v0[7], v0[8]);
  sub_10002640C(v1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_100AD5430()
{
  swift_unknownObjectRelease();
  sub_100005070(v0 + 32);

  return swift_deallocClassInstance();
}

id sub_100AD54AC(uint64_t a1)
{
  v2 = v1;
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v5 = v4;
  v14 = 0;
  v6 = [v2 initForReadingURL:v4 error:&v14];

  v7 = v14;
  if (v6)
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

uint64_t sub_100AD55F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLProto_ObjectMetadata.AssetInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100AD565C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100AD56BC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100AD5804(void *a1, uint64_t a2, char a3)
{
  v5 = v3;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v9 = [a1 getBoardItemForUUID:isa];

  if (v9)
  {
    type metadata accessor for CRLWPStickyNoteItem();
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      v11 = v10;
      v12 = v9;
      sub_1012E0400(v11, &off_10188FE10);

      if (v4)
      {
LABEL_10:

        return;
      }

      v14 = *(v5 + OBJC_IVAR____TtC8Freeform25CRLCommandSetStickyPreset_preset);
      if ((sub_1011255D0(v13) & 1) == 0)
      {
LABEL_9:
        v12 = v12;
        sub_1012CF6CC(v11, &off_10188FE10, a3);

        goto LABEL_10;
      }

      v15 = sub_10124E6CC(v14);
      if ((sub_1011255D0(v15) & 1) == 0)
      {

        goto LABEL_9;
      }

      v9 = *(v11 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
      v48 = *v9;
      v16 = swift_conformsToProtocol2();
      if (v16)
      {
        v17 = v16;

        v45 = v15;
        v18 = sub_101247234(v45, v47);
        v19 = (*(v17 + 32))(v46, v48, v17, v18);
        sub_1005B981C(&unk_101A10690);
        CRRegister.wrappedValue.setter();
        v19(v46, 0);

        goto LABEL_9;
      }

      __break(1u);
    }
  }

  v20 = objc_opt_self();
  v21 = [v20 _atomicIncrementAssertCount];
  v47[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v47);
  StaticString.description.getter();
  v22 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v23 = String._bridgeToObjectiveC()();

  v24 = [v23 lastPathComponent];

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v28 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v21;
  v30 = sub_1005CF000();
  *(inited + 96) = v30;
  v31 = sub_1005CF04C();
  *(inited + 104) = v31;
  *(inited + 72) = v22;
  *(inited + 136) = &type metadata for String;
  v32 = sub_1000053B0();
  *(inited + 112) = v25;
  *(inited + 120) = v27;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v32;
  *(inited + 152) = 26;
  v33 = v47[0];
  *(inited + 216) = v30;
  *(inited + 224) = v31;
  *(inited + 192) = v33;
  v34 = v22;
  v35 = v33;
  v36 = static os_log_type_t.error.getter();
  sub_100005404(v28, &_mh_execute_header, v36, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v37 = static os_log_type_t.error.getter();
  sub_100005404(v28, &_mh_execute_header, v37, "Unable to retrieve sticky note board item.", 42, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Unable to retrieve sticky note board item.");
  type metadata accessor for __VaListBuilder();
  v38 = swift_allocObject();
  v38[2] = 8;
  v38[3] = 0;
  v38[4] = 0;
  v38[5] = 0;
  v39 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v40 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v41 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v42 = String._bridgeToObjectiveC()();

  [v20 handleFailureInFunction:v40 file:v41 lineNumber:26 isFatal:1 format:v42 args:v39];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v43, v44);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100AD5DF4()
{
  v1 = OBJC_IVAR____TtC8Freeform25CRLCommandSetStickyPreset_id;
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_100AD5E5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCommandSetStickyPreset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLCommandSetStickyPreset()
{
  result = qword_101A0FE88;
  if (!qword_101A0FE88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100AD5F54()
{
  result = type metadata accessor for UUID();
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

uint64_t sub_100AD5FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
  }

  v4 = objc_opt_self();

  v5 = [v4 mainBundle];
  v6 = String._bridgeToObjectiveC()();
  v7 = String._bridgeToObjectiveC()();

  v8 = String._bridgeToObjectiveC()();
  v9 = [v5 localizedStringForKey:v6 value:v7 table:v8];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v10;
}

uint64_t *sub_100AD6138(char a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&qword_101A102C0);
  v53 = *(v4 - 8);
  __chkstk_darwin(v4);
  v54 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v55 = &v45 - v7;
  v8 = type metadata accessor for CRLContainerItemCRDTData(0);
  __chkstk_darwin(v8);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v45 - v11;
  __chkstk_darwin(v13);
  v15 = &v45 - v14;
  v16 = sub_1005B981C(&unk_101A226A0);
  __chkstk_darwin(v16);
  v47 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v48 = &v45 - v19;
  __chkstk_darwin(v20);
  v50 = &v45 - v21;
  __chkstk_darwin(v22);
  v24 = &v45 - v23;
  v25 = *(*v2 + 736);
  v51 = v15;
  v52 = &v45 - v23;
  swift_beginAccess();
  if (a1)
  {
    v46 = v8;
    v26 = v50;
    sub_10000BE14(v2 + v25, v50, &unk_101A226A0);
    sub_10001A2F8(&qword_101A09E00, &unk_101A226A0);
    CRType.copy(renamingReferences:)();
    sub_10000CAAC(v26, &unk_101A226A0);
    v27 = qword_101AD8098;
    swift_beginAccess();
    sub_100AD8D58(v2 + v27, v12);
    sub_100AD8E38(&qword_101A09E50, type metadata accessor for CRLContainerItemCRDTData);
    CRType.copy(renamingReferences:)();
    sub_100AD8DBC(v12, type metadata accessor for CRLContainerItemCRDTData);
    v28 = qword_101AD7250;
    swift_beginAccess();
    v29 = v53;
    v30 = *(v53 + 16);
    v31 = v2 + v28;
    v32 = v54;
    v30(v54, v31, v4);
    Capsule.copy()();
    v33 = v4;
    (*(v29 + 8))(v32, v4);
  }

  else
  {
    sub_10000BE14(v2 + v25, v24, &unk_101A226A0);
    v34 = qword_101AD8098;
    swift_beginAccess();
    sub_100AD8D58(v2 + v34, v15);
    v35 = qword_101AD7250;
    swift_beginAccess();
    v30 = *(v53 + 16);
    v33 = v4;
    v30(v55, v2 + v35, v4);
  }

  v36 = v50;
  sub_10000BE14(v52, v50, &unk_101A226A0);
  sub_100AD8D58(v51, v12);
  v37 = v54;
  v30(v54, v55, v33);
  v38 = *(v2 + 40);
  v56[0] = *(v2 + 24);
  v56[1] = v38;
  v57 = *(v2 + 56);
  v46 = *(v2 + 16);
  type metadata accessor for CRLSurfaceItemData();
  v39 = swift_allocObject();
  v30((v39 + qword_101AD7250), v37, v33);
  v40 = v48;
  sub_10000BE14(v36, v48, &unk_101A226A0);
  v41 = v49;
  sub_100AD8D58(v12, v49);
  sub_100AD8D58(v41, v39 + qword_101AD8098);
  v42 = v47;
  sub_10000BE14(v40, v47, &unk_101A226A0);
  sub_10000BE14(v42, v39 + *(*v39 + 736), &unk_101A226A0);
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_10000CAAC(v42, &unk_101A226A0);
  sub_100AD8DBC(v41, type metadata accessor for CRLContainerItemCRDTData);
  sub_10000CAAC(v40, &unk_101A226A0);
  v43 = *(v53 + 8);
  v43(v54, v33);
  sub_100AD8DBC(v12, type metadata accessor for CRLContainerItemCRDTData);
  sub_10000CAAC(v36, &unk_101A226A0);
  v43(v55, v33);
  sub_100AD8DBC(v51, type metadata accessor for CRLContainerItemCRDTData);
  sub_10000CAAC(v52, &unk_101A226A0);
  return sub_100747AF0(v56, v46);
}