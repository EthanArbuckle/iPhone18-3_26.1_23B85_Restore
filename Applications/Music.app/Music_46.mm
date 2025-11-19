uint64_t sub_10053CB9C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10117F830 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v1, qword_101194068))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    v3 = _s11ArtworkInfoVMa(0);
    v4 = swift_dynamicCast();
    return (*(*(v3 - 8) + 56))(a1, v4 ^ 1u, 1, v3);
  }

  else
  {
    sub_1000095E8(v9, &unk_101183F30);
    v6 = _s11ArtworkInfoVMa(0);
    return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  }
}

uint64_t sub_10053CD14()
{
  result = swift_slowAlloc();
  qword_101194068 = result;
  return result;
}

uint64_t sub_10053CD3C(uint64_t a1)
{
  v3 = _s11ArtworkInfoVMa(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&qword_10118DFA8);
  __chkstk_darwin(v7 - 8);
  v9 = &v13 - v8;
  if (qword_10117F830 != -1)
  {
    swift_once();
  }

  v10 = qword_101194068;
  sub_1000089F8(a1, v9, &qword_10118DFA8);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    v11 = 0;
  }

  else
  {
    sub_10053DB50(v9, v6, _s11ArtworkInfoVMa);
    v11 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    sub_10053DA10(v9, _s11ArtworkInfoVMa);
  }

  objc_setAssociatedObject(v1, v10, v11, 0x303);
  swift_unknownObjectRelease();
  return sub_1000095E8(a1, &qword_10118DFA8);
}

void sub_10053CF38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = _s11ArtworkInfoV10PropertiesVMa(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_100009F78(0, &qword_101182960);
    sub_10053DB50(a4, &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), _s11ArtworkInfoV10PropertiesVMa);
    v11 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    sub_10053D0CC(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
    *(v12 + ((v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
    v13 = a1;
    v14 = v10;
    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_10053DA70, v12);
  }
}

uint64_t sub_10053D0CC(uint64_t a1, uint64_t a2)
{
  v4 = _s11ArtworkInfoV10PropertiesVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10053D130(void *a1, uint64_t a2)
{
  v5 = *(_s11ArtworkInfoV10PropertiesVMa(0) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  sub_10053CF38(a1, a2, v6, v7);
}

uint64_t sub_10053D1B4(void *a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10010FC20(&qword_10118DFA8);
  __chkstk_darwin(v14 - 8);
  v16 = aBlock - v15;
  sub_10053DB50(a2, aBlock - v15, _s11ArtworkInfoV10PropertiesVMa);
  v17 = _s11ArtworkInfoVMa(0);
  *&v16[*(v17 + 20)] = a3;
  (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
  v18 = a3;
  sub_10053CD3C(v16);
  sub_100009F78(0, &qword_101182960);
  v19 = static OS_dispatch_queue.main.getter();
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  aBlock[4] = sub_10053DB00;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010B14D0;
  v21 = _Block_copy(aBlock);
  v22 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10053DB08(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags);
  sub_10010FC20(&qword_101182970);
  sub_10002489C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v7 + 8))(v9, v6);
  return (*(v11 + 8))(v13, v10);
}

void sub_10053D544(void *a1)
{
  v2 = [a1 tabBarController];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 sidebar];

    [v4 reconfigureItemForTab:a1];
  }
}

uint64_t sub_10053D5DC(uint64_t a1, uint64_t a2)
{
  if (sub_10053D680(a1, a2))
  {
    v4 = *(_s11ArtworkInfoVMa(0) + 20);
    v5 = *(a1 + v4);
    v6 = *(a2 + v4);
    if (v5)
    {
      if (v6)
      {
        sub_100009F78(0, &qword_101183B40);
        v7 = v6;
        v8 = v5;
        v9 = static NSObject.== infix(_:_:)();

        if (v9)
        {
          return 1;
        }
      }
    }

    else if (!v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_10053D680(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v8 - 8);
  v10 = &v32 - v9;
  v11 = sub_10010FC20(&unk_101191420);
  __chkstk_darwin(v11 - 8);
  v13 = &v32 - v12;
  v15 = *(v14 + 56);
  sub_1000089F8(a1, &v32 - v12, &unk_101188920);
  sub_1000089F8(a2, &v13[v15], &unk_101188920);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1000095E8(v13, &unk_101188920);
      goto LABEL_8;
    }
  }

  else
  {
    sub_1000089F8(v13, v10, &unk_101188920);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_10053DB08(&unk_10118D3D0, &type metadata accessor for Artwork);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1000095E8(v13, &unk_101188920);
      if ((v18 & 1) == 0)
      {
LABEL_12:
        v17 = 0;
        return v17 & 1;
      }

LABEL_8:
      v20 = _s11ArtworkInfoV10PropertiesVMa(0);
      v21 = *(v20 + 20);
      v22 = *(a1 + v21);
      v23 = *(a1 + v21 + 8);
      v24 = (a2 + v21);
      if (v22 != *v24 || v23 != v24[1])
      {
        goto LABEL_12;
      }

      v27 = *(v20 + 24);
      v28 = (a1 + v27);
      v29 = *(a1 + v27 + 8);
      v30 = (a2 + v27);
      v31 = *(a2 + v27 + 8);
      if (v29)
      {
        if (!v31)
        {
          goto LABEL_12;
        }
      }

      else
      {
        if (*v28 != *v30)
        {
          LOBYTE(v31) = 1;
        }

        if (v31)
        {
          goto LABEL_12;
        }
      }

      v17 = static UIView.Corner.== infix(_:_:)();
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
  }

  sub_1000095E8(v13, &unk_101191420);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_10053DA10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10053DA70()
{
  v1 = *(_s11ArtworkInfoV10PropertiesVMa(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10053D1B4(v3, v0 + v2, v4);
}

uint64_t sub_10053DB08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10053DB50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_10053DBE0()
{
  _s11ArtworkInfoV10PropertiesVMa(319);
  if (v0 <= 0x3F)
  {
    sub_10025929C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10053DC8C()
{
  sub_10053DD40();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      sub_10053DD98();
      if (v2 <= 0x3F)
      {
        type metadata accessor for UIView.Corner();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10053DD40()
{
  if (!qword_1011A4570)
  {
    type metadata accessor for Artwork();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1011A4570);
    }
  }
}

void sub_10053DD98()
{
  if (!qword_101194178)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_101194178);
    }
  }
}

void sub_10053DDF8(uint64_t a1)
{
  sub_10045EC58(*v1);
  String.hash(into:)();

  type metadata accessor for MusicLibrary();
  sub_10053E2D4(&qword_101180378, &type metadata accessor for MusicLibrary);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + 16) & 1);
  String.hash(into:)();
  v3 = *(v1 + 41);
  String.hash(into:)();

  Hasher._combine(_:)(v3 & 1);
  String.hash(into:)();
  sub_10010B570(a1, *(v1 + 64));
  sub_10010B100(a1, *(v1 + 72));
  String.hash(into:)();
  sub_10010B4B0(a1, *(v1 + 96));
}

void sub_10053E040()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  type metadata accessor for TitledSection();
  type metadata accessor for Composer();
  sub_10053E2D4(&qword_101181C78, &type metadata accessor for Composer);
  MusicLibrarySectionedRequest.init()();

  sub_10010FC20(&unk_10118CF80);
  MusicLibrarySectionedRequest.library.setter();
  MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
  v3._countAndFlagsBits = v1;
  v3._object = v2;
  MusicLibrarySectionedRequest.filterItems(text:)(v3);
}

Swift::Int sub_10053E138()
{
  Hasher.init(_seed:)();
  sub_10053DDF8(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10053E17C()
{
  Hasher.init(_seed:)();
  sub_10053DDF8(v1);
  return Hasher._finalize()();
}

unint64_t sub_10053E1BC()
{
  result = qword_1011941B0;
  if (!qword_1011941B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011941B0);
  }

  return result;
}

unint64_t sub_10053E258(uint64_t a1)
{
  result = sub_10053E280();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10053E280()
{
  result = qword_101194290;
  if (!qword_101194290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101194290);
  }

  return result;
}

uint64_t sub_10053E2D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10053E394(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_10010FC20(&unk_10118D180);
    return a2;
  }

  return result;
}

uint64_t sub_10053E434()
{
  v1 = *(v0 + 16);
  if (*(v0 + 16) > 2u)
  {
    v3 = 4;
    if (v1 != 4)
    {
      v3 = 5;
    }

    if (v1 == 3)
    {
      v1 = 3;
    }

    else
    {
      v1 = v3;
    }

    goto LABEL_10;
  }

  if (*(v0 + 16))
  {
    if (v1 == 1)
    {
      v2 = 5;
      goto LABEL_32;
    }

LABEL_10:
    if (qword_10117F840 != -1)
    {
      goto LABEL_56;
    }

    goto LABEL_11;
  }

  v2 = 4;
LABEL_32:
  if (qword_10117F838 != -1)
  {
    swift_once();
  }

  v39 = qword_101194298;
  v40 = String._bridgeToObjectiveC()();
  if (v0[8])
  {
    v41 = String._bridgeToObjectiveC()();
  }

  else
  {
    v41 = 0;
  }

  v42 = String._bridgeToObjectiveC()();
  v43 = [v39 reportsForType:v2 contentID:v40 aucType:v41 commentText:v42];

  sub_100009F78(0, &qword_101194558);
  v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v44 >> 62)
  {
    v45 = _CocoaArrayWrapper.endIndex.getter();
    if (v45)
    {
LABEL_39:
      v1 = 0;
      v80 = v44 & 0xC000000000000001;
      v76 = v44 & 0xFFFFFFFFFFFFFF8;
      v0 = _swiftEmptyArrayStorage;
      v78 = v44;
      while (1)
      {
        if (v80)
        {
          v46 = sub_1007E9BD8(v1, v44);
        }

        else
        {
          if (v1 >= *(v76 + 16))
          {
            goto LABEL_55;
          }

          v46 = *(v44 + 8 * v1 + 32);
        }

        v47 = v46;
        v48 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        v49 = [v46 concernItemType];
        v50 = v49 - 4;
        if ((v49 - 4) >= 3)
        {
LABEL_62:
          result = _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return result;
        }

        v51 = [v47 userID];
        v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v96 = v52;

        v53 = [v47 contentID];
        v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v92 = v55;
        v94 = v54;

        v56 = [v47 commentText];
        v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v88 = v58;
        v90 = v57;

        v59 = [v47 aucType];
        v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v84 = v61;
        v86 = v60;

        v62 = [v47 concernTypeID];
        v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v82 = v64;

        v65 = [v47 displayText];
        v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v68 = v67;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v0 = sub_10049A8A4(0, v0[2] + 1, 1, v0);
        }

        v70 = v0[2];
        v69 = v0[3];
        if (v70 >= v69 >> 1)
        {
          v0 = sub_10049A8A4((v69 > 1), v70 + 1, 1, v0);
        }

        v0[2] = v70 + 1;
        v71 = &v0[17 * v70];
        v71[4] = v98;
        v71[5] = v96;
        v71[6] = v94;
        v71[7] = v92;
        *(v71 + 64) = v50;
        *(v71 + 65) = *v100;
        *(v71 + 17) = *&v100[3];
        v71[9] = v90;
        v71[10] = v88;
        v71[11] = v86;
        v71[12] = v84;
        v71[13] = v63;
        v71[14] = v82;
        *(v71 + 15) = 0u;
        *(v71 + 17) = 0u;
        v71[19] = v66;
        v71[20] = v68;
        ++v1;
        v44 = v78;
        if (v48 == v45)
        {
          goto LABEL_61;
        }
      }

      while (1)
      {
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        swift_once();
LABEL_11:
        v4 = qword_1011942A0;
        v5 = String._bridgeToObjectiveC()();
        v6 = String._bridgeToObjectiveC()();
        v7 = v0[3];
        v75 = v0[4];
        if (v75)
        {
          v8 = String._bridgeToObjectiveC()();
          v10 = v0[5];
          v9 = v0[6];
          if (v9)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v8 = 0;
          v10 = v0[5];
          v9 = v0[6];
          if (v9)
          {
LABEL_13:
            v0 = String._bridgeToObjectiveC()();
            goto LABEL_16;
          }
        }

        v0 = 0;
LABEL_16:
        v11 = [v4 reportsForType:v1 contentID:v5 commentText:v6 concernParentItemID:v8 concernParentItemType:v0];

        sub_100009F78(0, &qword_101194560);
        v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v12 >> 62)
        {
          v13 = _CocoaArrayWrapper.endIndex.getter();
          v1 = v75;
          if (!v13)
          {
            break;
          }
        }

        else
        {
          v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v1 = v75;
          if (!v13)
          {
            break;
          }
        }

        v14 = 0;
        v73 = v12 & 0xFFFFFFFFFFFFFF8;
        v74 = v12 & 0xC000000000000001;
        v97 = _swiftEmptyArrayStorage;
        v95 = v9;
        v77 = v12;
        while (1)
        {
          if (v74)
          {
            v15 = sub_1007E9BC4(v14, v12);
          }

          else
          {
            if (v14 >= *(v73 + 16))
            {
              goto LABEL_53;
            }

            v15 = *(v12 + 8 * v14 + 32);
          }

          v16 = v15;
          v0 = (v14 + 1);
          if (__OFADD__(v14, 1))
          {
            break;
          }

          v17 = v7;
          v18 = [v15 concernItemType];
          if (v18 >= 6)
          {
            goto LABEL_62;
          }

          v19 = v18;
          v20 = [v16 userID];
          v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v91 = v22;
          v93 = v21;

          v23 = [v16 concernItemID];
          v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v87 = v25;
          v89 = v24;

          v26 = [v16 commentText];
          v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v83 = v28;
          v85 = v27;

          v29 = [v16 concernTypeID];
          v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v79 = v31;
          v81 = v30;

          v32 = [v16 displayText];
          v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v35 = v34;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v97 = sub_10049A8A4(0, *(v97 + 2) + 1, 1, v97);
          }

          v37 = *(v97 + 2);
          v36 = *(v97 + 3);
          if (v37 >= v36 >> 1)
          {
            v97 = sub_10049A8A4((v36 > 1), v37 + 1, 1, v97);
          }

          *(v97 + 2) = v37 + 1;
          v38 = &v97[136 * v37];
          *(v38 + 4) = v93;
          *(v38 + 5) = v91;
          *(v38 + 6) = v89;
          *(v38 + 7) = v87;
          v38[64] = v19;
          *(v38 + 65) = *v99;
          *(v38 + 17) = *&v99[3];
          *(v38 + 9) = v85;
          *(v38 + 10) = v83;
          *(v38 + 11) = 0;
          *(v38 + 12) = 0;
          *(v38 + 13) = v81;
          *(v38 + 14) = v79;
          v7 = v17;
          v1 = v75;
          *(v38 + 15) = v17;
          *(v38 + 16) = v75;
          *(v38 + 17) = v10;
          *(v38 + 18) = v95;
          *(v38 + 19) = v33;
          *(v38 + 20) = v35;
          ++v14;
          v12 = v77;
          if (v0 == v13)
          {
            v0 = v97;
            goto LABEL_61;
          }
        }

        __break(1u);
LABEL_53:
        __break(1u);
      }
    }
  }

  else
  {
    v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v45)
    {
      goto LABEL_39;
    }
  }

  v0 = _swiftEmptyArrayStorage;
LABEL_61:

  return v0;
}

uint64_t sub_10053EC10(uint64_t a1)
{
  *(v2 + 1208) = v1;
  *(v2 + 1200) = a1;

  return _swift_task_switch(sub_10053ECA4, 0, 0);
}

uint64_t sub_10053ECA4()
{
  v1 = *(v0[150].super.isa + 32);
  if ((v1 - 2) >= 4)
  {
    v19 = sub_10053FF2C();
    v0[152].super.isa = v19;
    if (v19)
    {
      v3 = v19;
      if (qword_10117F838 != -1)
      {
        swift_once();
      }

      v20 = v0 + 2;
      v21 = v0 + 112;
      v22 = qword_101194298;
      v0[2].super.isa = v0;
      v0[3].super.isa = sub_10053F8AC;
      v23 = swift_continuation_init();
      v0[119].super.isa = sub_10010FC20(&qword_101194548);
      v0[116].super.isa = v23;
      v0[112].super.isa = _NSConcreteStackBlock;
      v0[113].super.isa = 1107296256;
      v0[114].super.isa = sub_1005400C8;
      v0[115].super.isa = &unk_1010B1800;
      goto LABEL_19;
    }
  }

  else
  {
    v2 = sub_1005400FC();
    v0[153].super.isa = v2;
    if (v2)
    {
      v3 = v2;
      if (v1 == 2)
      {
        v71 = v0 + 144;
        isa = v0[151].super.isa;
        sub_10010FC20(&unk_1011972C0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100EBE260;
        *(inited + 32) = 1684957547;
        *(inited + 40) = 0xE400000000000000;
        *(inited + 48) = 0x73636972796CLL;
        *(inited + 56) = 0xE600000000000000;
        *(inited + 72) = &type metadata for String;
        *(inited + 80) = 0x6E6F73616572;
        *(inited + 88) = 0xE600000000000000;
        v28 = [(objc_class *)v3 concernTypeID];
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;

        *(inited + 96) = v29;
        *(inited + 104) = v31;
        *(inited + 120) = &type metadata for String;
        *(inited + 128) = 0x73746E656D6D6F63;
        *(inited + 136) = 0xE800000000000000;
        v32 = [(objc_class *)v3 commentText];
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;

        *(inited + 168) = &type metadata for String;
        *(inited + 144) = v33;
        *(inited + 152) = v35;
        v36 = sub_10010BC60(inited);
        swift_setDeallocating();
        sub_10010FC20(&unk_1011927D0);
        swift_arrayDestroy();
        v37 = swift_initStackObject();
        *(v37 + 16) = xmmword_100EBE260;
        *(v37 + 32) = 0x6E7265636E6F63;
        *(v37 + 40) = 0xE700000000000000;
        v38 = sub_10010FC20(&qword_101197BD0);
        *(v37 + 48) = v36;
        *(v37 + 72) = v38;
        *(v37 + 80) = 1836216166;
        *(v37 + 88) = 0xE400000000000000;
        v39 = *(isa + 9);
        *(v37 + 120) = v38;
        if (v39)
        {
          v40 = v39;
        }

        else
        {
          v40 = sub_10010BC60(_swiftEmptyArrayStorage);
        }

        p_isa = &v0[148].super.isa;
        v58 = v0[151].super.isa;
        *(v37 + 96) = v40;
        *(v37 + 128) = 0x73746E65746E6F63;
        *(v37 + 136) = 0xE800000000000000;
        sub_10010FC20(&qword_1011858B0);
        v59 = swift_allocObject();
        *(v59 + 16) = xmmword_100EBC6B0;
        sub_10010FC20(&qword_101190BE0);
        v60 = swift_initStackObject();
        *(v60 + 16) = xmmword_100EBDC20;
        *(v60 + 32) = 25705;
        *(v60 + 40) = 0xE200000000000000;
        *&v71->super.isa = *v58;
        *(v60 + 48) = *v58;
        *(v60 + 64) = 1701869940;
        *(v60 + 72) = 0xE400000000000000;
        *(v60 + 80) = 0x73676E6F73;
        *(v60 + 88) = 0xE500000000000000;
        sub_100118E9C(v71, &v0[146]);

        v61 = sub_10010C578(v60);
        swift_setDeallocating();
        sub_10010FC20(&qword_101183AA0);
        swift_arrayDestroy();
        *(v59 + 32) = v61;
        *(v37 + 168) = sub_10010FC20(&qword_101194550);
        *(v37 + 144) = v59;
        sub_10010BC60(v37);
        swift_setDeallocating();
        swift_arrayDestroy();
        if (qword_10117F840 != -1)
        {
          swift_once();
        }

        v44 = qword_1011942A0;
        v62 = objc_opt_self();
        v63 = Dictionary._bridgeToObjectiveC()().super.isa;

        *p_isa = 0;
        v64 = [v62 dataWithJSONObject:v63 options:0 error:&v0[148]];

        v65 = *p_isa;
        if (v64)
        {
          v66 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v68 = v67;

          v52.super.isa = Data._bridgeToObjectiveC()().super.isa;
          sub_10002C064(v66, v68);
        }

        else
        {
          v69 = v65;
          _convertNSErrorToError(_:)();

          swift_willThrow();

          v52.super.isa = 0;
        }

        v54 = v0 + 128;
        v55 = v0 + 18;
        v0[155].super.isa = v52.super.isa;
        v0[18].super.isa = v0;
        v0[19].super.isa = sub_10053FBEC;
        v70 = swift_continuation_init();
        v0[135].super.isa = sub_10010FC20(&qword_101194548);
        v0[132].super.isa = v70;
        v0[128].super.isa = _NSConcreteStackBlock;
        v0[129].super.isa = 1107296256;
        v0[130].super.isa = sub_1005400C8;
        v0[131].super.isa = &unk_1010B1850;
        goto LABEL_34;
      }

      if (v1 == 5)
      {
        v4 = v0[151].super.isa;
        sub_10010FC20(&unk_1011972C0);
        v5 = swift_initStackObject();
        *(v5 + 16) = xmmword_100EBE260;
        *(v5 + 32) = 1684957547;
        *(v5 + 40) = 0xE400000000000000;
        strcpy((v5 + 48), "query-context");
        *(v5 + 62) = -4864;
        *(v5 + 72) = &type metadata for String;
        *(v5 + 80) = 0x6E6F73616572;
        *(v5 + 88) = 0xE600000000000000;
        v6 = [(objc_class *)v3 concernTypeID];
        v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v9 = v8;

        *(v5 + 96) = v7;
        *(v5 + 104) = v9;
        *(v5 + 120) = &type metadata for String;
        *(v5 + 128) = 0x73746E656D6D6F63;
        *(v5 + 136) = 0xE800000000000000;
        v10 = [(objc_class *)v3 commentText];
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;

        *(v5 + 168) = &type metadata for String;
        *(v5 + 144) = v11;
        *(v5 + 152) = v13;
        v14 = sub_10010BC60(v5);
        swift_setDeallocating();
        sub_10010FC20(&unk_1011927D0);
        swift_arrayDestroy();
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_100EBDC20;
        *(v15 + 32) = 0x6E7265636E6F63;
        *(v15 + 40) = 0xE700000000000000;
        v16 = sub_10010FC20(&qword_101197BD0);
        *(v15 + 48) = v14;
        *(v15 + 72) = v16;
        *(v15 + 80) = 1836216166;
        *(v15 + 88) = 0xE400000000000000;
        v17 = *(v4 + 9);
        *(v15 + 120) = v16;
        if (v17)
        {
          v18 = v17;
        }

        else
        {
          v18 = sub_10010BC60(_swiftEmptyArrayStorage);
        }

        v43 = &v0[149].super.isa;
        *(v15 + 96) = v18;

        sub_10010BC60(v15);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        if (qword_10117F840 != -1)
        {
          swift_once();
        }

        v44 = qword_1011942A0;
        v45 = objc_opt_self();
        v46 = Dictionary._bridgeToObjectiveC()().super.isa;

        *v43 = 0;
        v47 = [v45 dataWithJSONObject:v46 options:0 error:&v0[149]];

        v48 = *v43;
        if (v47)
        {
          v49 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v51 = v50;

          v52.super.isa = Data._bridgeToObjectiveC()().super.isa;
          sub_10002C064(v49, v51);
        }

        else
        {
          v53 = v48;
          _convertNSErrorToError(_:)();

          swift_willThrow();

          v52.super.isa = 0;
        }

        v54 = v0 + 136;
        v55 = v0 + 26;
        v0[154].super.isa = v52.super.isa;
        v0[26].super.isa = v0;
        v0[27].super.isa = sub_10053FA48;
        v56 = swift_continuation_init();
        v0[143].super.isa = sub_10010FC20(&qword_101194548);
        v0[140].super.isa = v56;
        v0[136].super.isa = _NSConcreteStackBlock;
        v0[137].super.isa = 1107296256;
        v0[138].super.isa = sub_1005400C8;
        v0[139].super.isa = &unk_1010B1878;
LABEL_34:
        [v44 submitReport:v3 body:v52.super.isa completion:v54];
        v42 = v55;
        goto LABEL_35;
      }

      if (qword_10117F840 != -1)
      {
        swift_once();
      }

      v21 = v0 + 120;
      v20 = v0 + 10;
      v22 = qword_1011942A0;
      v0[10].super.isa = v0;
      v0[11].super.isa = sub_10053FD90;
      v41 = swift_continuation_init();
      v0[127].super.isa = sub_10010FC20(&qword_101194548);
      v0[124].super.isa = v41;
      v0[120].super.isa = _NSConcreteStackBlock;
      v0[121].super.isa = 1107296256;
      v0[122].super.isa = sub_1005400C8;
      v0[123].super.isa = &unk_1010B1828;
LABEL_19:
      [v22 submitReport:v3 completion:v21];
      v42 = v20;
LABEL_35:

      return _swift_continuation_await(v42);
    }
  }

  v24 = v0[1].super.isa;

  return v24();
}

uint64_t sub_10053F8AC()
{

  return _swift_task_switch(sub_10053F9B8, 0, 0);
}

uint64_t sub_10053F9B8()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10053FA48()
{

  return _swift_task_switch(sub_10053FB54, 0, 0);
}

uint64_t sub_10053FB54()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10053FBEC()
{

  return _swift_task_switch(sub_10053FCF8, 0, 0);
}

uint64_t sub_10053FCF8()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10053FD90()
{

  return _swift_task_switch(sub_10053FE9C, 0, 0);
}

uint64_t sub_10053FE9C()
{
  v1 = *(v0 + 8);

  return v1();
}

id sub_10053FF2C()
{
  if (*(v0 + 32) > 2u)
  {
    return 0;
  }

  v1 = 5;
  if (*(v0 + 32) != 1)
  {
    v1 = 6;
  }

  if (*(v0 + 32))
  {
    v2 = v1;
  }

  else
  {
    v2 = 4;
  }

  v3 = [objc_allocWithZone(MPStoreContentReport) init];
  v4 = String._bridgeToObjectiveC()();
  [v3 setUserID:v4];

  v5 = String._bridgeToObjectiveC()();
  [v3 setContentID:v5];

  v6 = String._bridgeToObjectiveC()();

  [v3 setCommentText:v6];

  [v3 setConcernItemType:v2];
  v7 = String._bridgeToObjectiveC()();
  [v3 setConcernTypeID:v7];

  v8 = String._bridgeToObjectiveC()();

  [v3 setAucType:v8];

  return v3;
}

uint64_t sub_1005400C8(uint64_t a1)
{
  sub_10000954C((a1 + 32), *(a1 + 56));

  return swift_continuation_resume();
}

id sub_1005400FC()
{
  v1 = *(v0 + 32);
  v2 = [objc_allocWithZone(MPMediaKitContentReport) init];
  v3 = String._bridgeToObjectiveC()();
  [v2 setUserID:v3];

  v4 = String._bridgeToObjectiveC()();
  [v2 setConcernItemID:v4];

  v5 = String._bridgeToObjectiveC()();

  [v2 setCommentText:v5];

  [v2 setConcernItemType:v1];
  v6 = String._bridgeToObjectiveC()();
  [v2 setConcernTypeID:v6];

  if (*(v0 + 96))
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  [v2 setParentContentID:v7];

  if (*(v0 + 112))
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  [v2 setParentConcernType:v8];

  return v2;
}

id sub_1005402AC(uint64_t a1, uint64_t a2, void *a3)
{
  result = [objc_opt_self() sharedReporter];
  *a3 = result;
  return result;
}

uint64_t sub_1005402EC()
{
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(*(v0 + 32));
  if (*(v0 + 48))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (*(v0 + 64))
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_6;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (*(v0 + 64))
    {
      goto LABEL_3;
    }
  }

  Hasher._combine(_:)(0);
LABEL_6:
  String.hash(into:)();
  if (*(v0 + 96))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (*(v0 + 112))
    {
LABEL_8:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_11;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (*(v0 + 112))
    {
      goto LABEL_8;
    }
  }

  Hasher._combine(_:)(0);
LABEL_11:

  return String.hash(into:)();
}

Swift::Int sub_100540420()
{
  Hasher.init(_seed:)();
  sub_1005402EC();
  return Hasher._finalize()();
}

Swift::Int sub_100540464()
{
  Hasher.init(_seed:)();
  sub_1005402EC();
  return Hasher._finalize()();
}

uint64_t sub_1005404A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v12 = *(a1 + 128);
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *(a2 + 112);
  v13[6] = *(a2 + 96);
  v13[7] = v6;
  v14 = *(a2 + 128);
  v7 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v7;
  v8 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v8;
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  return sub_100543D84(v11, v13) & 1;
}

void sub_100540524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v6 - 8);
  v8 = &v50 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v50 = a3;
    v51 = a4;
    v10 = Strong;
    v52 = UIViewController.noticePresenter.getter();
    v11 = qword_1011942B0;
    v12 = *&v10[qword_1011942B0];
    swift_getKeyPath();
    *&v73 = v12;
    sub_100543B78();

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v13 = *(v12 + 112);
    v64 = *(v12 + 96);
    v65 = v13;
    v66 = *(v12 + 128);
    v67 = *(v12 + 144);
    v14 = *(v12 + 48);
    v60 = *(v12 + 32);
    v61 = v14;
    v15 = *(v12 + 80);
    v62 = *(v12 + 64);
    v63 = v15;
    v59 = *(v12 + 16);
    sub_1000089F8(&v59, &v73, &qword_10117FF40);

    v70 = v65;
    v71 = v66;
    v72 = v67;
    v68[2] = v61;
    v68[3] = v62;
    *v69 = v63;
    *&v69[16] = v64;
    v68[0] = v59;
    v68[1] = v60;
    if (sub_100543BE4(v68) != 1)
    {
      v16 = *&v10[qword_1011942A8 + 48];
      v83 = *&v10[qword_1011942A8 + 32];
      v84 = v16;
      v85 = *&v10[qword_1011942A8 + 64];
      v17 = *&v10[qword_1011942A8 + 16];
      v81 = *&v10[qword_1011942A8];
      v82 = v17;
      v18 = *&v10[v11];
      swift_getKeyPath();
      *&v73 = v18;

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v19 = sub_10053E434();

      v20 = *(v19 + 16) + 1;
      v21 = 32;
      while (--v20)
      {
        v73 = *(v19 + v21);
        v22 = *(v19 + v21 + 16);
        v23 = *(v19 + v21 + 32);
        v24 = *(v19 + v21 + 64);
        v76 = *(v19 + v21 + 48);
        *v77 = v24;
        v74 = v22;
        v75 = v23;
        v25 = *(v19 + v21 + 80);
        v26 = *(v19 + v21 + 96);
        v27 = *(v19 + v21 + 112);
        v80 = *(v19 + v21 + 128);
        v78 = v26;
        v79 = v27;
        *&v77[16] = v25;
        if (*&v77[8] != *&v69[8])
        {
          v21 += 136;
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            continue;
          }
        }

        sub_100543BFC(&v73, &v53);

        sub_1000095E8(&v59, &qword_10117FF40);
        v28 = type metadata accessor for TaskPriority();
        (*(*(v28 - 8) + 56))(v8, 1, 1, v28);
        type metadata accessor for MainActor();
        v29 = v52;

        v30 = v51;

        v31 = v10;
        v32 = static MainActor.shared.getter();
        v33 = swift_allocObject();
        v34 = *v77;
        *(v33 + 120) = *&v77[16];
        v35 = v79;
        *(v33 + 136) = v78;
        *(v33 + 152) = v35;
        v36 = v73;
        *(v33 + 56) = v74;
        v37 = v76;
        *(v33 + 72) = v75;
        *(v33 + 88) = v37;
        *(v33 + 104) = v34;
        *(v33 + 16) = v32;
        *(v33 + 24) = &protocol witness table for MainActor;
        *(v33 + 32) = v31;
        v38 = v80;
        *(v33 + 40) = v36;
        *(v33 + 168) = v38;
        *(v33 + 176) = v29;
        *(v33 + 184) = v50;
        *(v33 + 192) = v30;
        sub_10086E3AC(0, 0, v8, &unk_100ED2060, v33);

        goto LABEL_9;
      }

      sub_1000095E8(&v59, &qword_10117FF40);
    }

LABEL_9:
    v39 = [v10 navigationController];
    if (v39)
    {
      v40 = v39;
      v41 = [v39 topViewController];
      if (v41)
      {
        v42 = v41;
        sub_100009F78(0, &qword_101183D40);
        v43 = v10;
        v44 = static NSObject.== infix(_:_:)();

        if (v44)
        {
          v45 = [v43 parentViewController];

          if (v45)
          {
            v57 = UIScreen.Dimensions.size.getter;
            v58 = 0;
            v53 = _NSConcreteStackBlock;
            v54 = 1107296256;
            v55 = sub_10002BC98;
            v56 = &unk_1010B17B0;
            v46 = _Block_copy(&v53);
            [v45 dismissViewControllerAnimated:1 completion:v46];
            _Block_release(v46);
          }

          v47 = [v40 popViewControllerAnimated:1];

LABEL_19:

          return;
        }
      }
    }

    v48 = [v10 parentViewController];

    if (v48)
    {
      v57 = UIScreen.Dimensions.size.getter;
      v58 = 0;
      v53 = _NSConcreteStackBlock;
      v54 = 1107296256;
      v55 = sub_10002BC98;
      v56 = &unk_1010B1788;
      v49 = _Block_copy(&v53);
      [v48 dismissViewControllerAnimated:1 completion:v49];

      _Block_release(v49);

      return;
    }

    goto LABEL_19;
  }
}

uint64_t sub_100540B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a7;
  v8[16] = a8;
  v8[13] = a5;
  v8[14] = a6;
  v8[12] = a4;
  type metadata accessor for Locale();
  v8[17] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v8[18] = swift_task_alloc();
  type metadata accessor for Notice(0);
  v8[19] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[20] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[21] = v10;
  v8[22] = v9;

  return _swift_task_switch(sub_100540C88, v10, v9);
}

uint64_t sub_100540C88()
{
  v1 = (*(v0 + 96) + qword_1011942A8);
  *(v0 + 16) = *v1;
  v2 = v1[4];
  v4 = v1[1];
  v3 = v1[2];
  *(v0 + 64) = v1[3];
  *(v0 + 80) = v2;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  v5 = swift_task_alloc();
  *(v0 + 184) = v5;
  *v5 = v0;
  v5[1] = sub_100540D48;
  v6 = *(v0 + 104);

  return sub_10053EC10(v6);
}

uint64_t sub_100540D48()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 176);
  v4 = *(v2 + 168);
  if (v0)
  {
    v5 = sub_100541060;
  }

  else
  {
    v5 = sub_100540E84;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100540E84()
{
  v13 = v0;
  v1 = v0[14];

  if (v1)
  {
    v2 = v0[19];
    v3 = v0[16];
    v4 = v0[14];
    v5 = v0[15];
    _StringGuts.grow(_:)(16);

    strcpy(v12, "ReportConcern.");
    HIBYTE(v12[1]) = -18;
    v6._countAndFlagsBits = v5;
    v6._object = v3;
    String.append(_:)(v6);
    v7 = Image.init(systemName:)();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v8 = String.init(localized:table:bundle:locale:comment:)();
    Notice.init(id:image:message:headnote:link:hapticFeedback:)(v12[0], v12[1], v7, v8, v9, 0, 0, 0, v2, 0, 0, 0);
    (*(*v4 + 200))(v2, 0);
    sub_100543D10(v2);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_100541060()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1005410E8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong parentViewController];

    if (v2)
    {
      aBlock[4] = UIScreen.Dimensions.size.getter;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10002BC98;
      aBlock[3] = &unk_1010B1760;
      v3 = _Block_copy(aBlock);
      [v2 dismissViewControllerAnimated:1 completion:v3];
      _Block_release(v3);
    }
  }
}

void sub_1005411DC(uint64_t a1)
{
  v2 = qword_1011942B0;
  type metadata accessor for ReportConcern.ViewModel(0);
  v3 = swift_allocObject();
  sub_100543B5C(v9);
  v4 = v9[7];
  *(v3 + 112) = v9[6];
  *(v3 + 128) = v4;
  v5 = v10;
  v6 = v9[3];
  *(v3 + 48) = v9[2];
  *(v3 + 64) = v6;
  v7 = v9[5];
  *(v3 + 80) = v9[4];
  *(v3 + 96) = v7;
  v8 = v9[1];
  *(v3 + 16) = v9[0];
  *(v3 + 32) = v8;
  *(v3 + 144) = v5;
  *(v3 + 152) = 0;
  *(v3 + 160) = 0xE000000000000000;
  *(v3 + 168) = _swiftEmptyArrayStorage;
  ObservationRegistrar.init()();
  *(a1 + v2) = v3;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1005412C8()
{
}

id sub_100541350()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReportConcern.ViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100541388()
{
}

__n128 sub_10054141C@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  *&v12 = v1;
  sub_100543B78();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v1 + 128);
  v18 = *(v1 + 112);
  v19 = v3;
  v20 = *(v1 + 144);
  v4 = *(v1 + 64);
  v14 = *(v1 + 48);
  v15 = v4;
  v5 = *(v1 + 96);
  v16 = *(v1 + 80);
  v17 = v5;
  v6 = *(v1 + 32);
  v12 = *(v1 + 16);
  v13 = v6;
  sub_1000089F8(&v12, v11, &qword_10117FF40);
  v7 = v19;
  *(a1 + 96) = v18;
  *(a1 + 112) = v7;
  *(a1 + 128) = v20;
  v8 = v15;
  *(a1 + 32) = v14;
  *(a1 + 48) = v8;
  v9 = v17;
  *(a1 + 64) = v16;
  *(a1 + 80) = v9;
  result = v13;
  *a1 = v12;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100541504@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  *&v16[0] = v3;
  sub_100543B78();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 96);
  v5 = *(v3 + 112);
  v6 = *(v3 + 128);
  v17 = *(v3 + 144);
  v16[6] = v5;
  v16[7] = v6;
  v7 = *(v3 + 32);
  v8 = *(v3 + 48);
  v9 = *(v3 + 80);
  v16[3] = *(v3 + 64);
  v16[4] = v9;
  v16[1] = v7;
  v16[2] = v8;
  v16[5] = v4;
  v16[0] = *(v3 + 16);
  v10 = *(v3 + 128);
  *(a2 + 96) = *(v3 + 112);
  *(a2 + 112) = v10;
  *(a2 + 128) = *(v3 + 144);
  v11 = *(v3 + 64);
  *(a2 + 32) = *(v3 + 48);
  *(a2 + 48) = v11;
  v12 = *(v3 + 96);
  *(a2 + 64) = *(v3 + 80);
  *(a2 + 80) = v12;
  v13 = *(v3 + 32);
  *a2 = *(v3 + 16);
  *(a2 + 16) = v13;
  return sub_1000089F8(v16, v15, &qword_10117FF40);
}

uint64_t sub_1005415F4(uint64_t a1)
{
  v3 = *(v1 + 128);
  v20[6] = *(v1 + 112);
  v20[7] = v3;
  v21 = *(v1 + 144);
  v4 = *(v1 + 64);
  v20[2] = *(v1 + 48);
  v20[3] = v4;
  v5 = *(v1 + 96);
  v20[4] = *(v1 + 80);
  v20[5] = v5;
  v6 = *(v1 + 32);
  v20[0] = *(v1 + 16);
  v20[1] = v6;
  sub_1000089F8(v20, v18, &qword_10117FF40);
  v7 = sub_100544408(v20, a1);
  sub_1000095E8(v20, &qword_10117FF40);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *&v18[0] = v1;
    sub_100543B78();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    sub_1000095E8(a1, &qword_10117FF40);
  }

  else
  {
    v10 = *(v1 + 128);
    v18[6] = *(v1 + 112);
    v18[7] = v10;
    v19 = *(v1 + 144);
    v11 = *(v1 + 64);
    v18[2] = *(v1 + 48);
    v18[3] = v11;
    v12 = *(v1 + 96);
    v18[4] = *(v1 + 80);
    v18[5] = v12;
    v13 = *(v1 + 32);
    v18[0] = *(v1 + 16);
    v18[1] = v13;
    v14 = *(a1 + 80);
    *(v1 + 80) = *(a1 + 64);
    *(v1 + 96) = v14;
    v15 = *(a1 + 112);
    *(v1 + 112) = *(a1 + 96);
    *(v1 + 128) = v15;
    *(v1 + 144) = *(a1 + 128);
    v16 = *(a1 + 48);
    *(v1 + 48) = *(a1 + 32);
    *(v1 + 64) = v16;
    v17 = *(a1 + 16);
    *(v1 + 16) = *a1;
    *(v1 + 32) = v17;
    return sub_1000095E8(v18, &qword_10117FF40);
  }
}

uint64_t sub_1005417C0()
{
  swift_getKeyPath();
  sub_100543B78();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 152);

  return v1;
}

uint64_t sub_100541840@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100543B78();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 160);
  *a2 = *(v3 + 152);
  a2[1] = v4;
}

uint64_t sub_1005418BC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 152) == a1 && *(v2 + 160) == a2;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *(v2 + 152) = a1;
    *(v2 + 160) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100543B78();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1005419EC()
{
  swift_getKeyPath();
  sub_100543B78();
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100541A60@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100543B78();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 168);
}

uint64_t sub_100541ADC(uint64_t a1)
{
  if (sub_10047D4BC(*(v1 + 168), a1))
  {
    *(v1 + 168) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100543B78();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100541BF0()
{
  v1 = *(v0 + 128);
  v8[6] = *(v0 + 112);
  v8[7] = v1;
  v9 = *(v0 + 144);
  v2 = *(v0 + 64);
  v8[2] = *(v0 + 48);
  v8[3] = v2;
  v3 = *(v0 + 96);
  v8[4] = *(v0 + 80);
  v8[5] = v3;
  v4 = *(v0 + 32);
  v8[0] = *(v0 + 16);
  v8[1] = v4;
  sub_1000095E8(v8, &qword_10117FF40);

  v5 = OBJC_IVAR____TtCO5Music13ReportConcern9ViewModel___observationRegistrar;
  v6 = type metadata accessor for ObservationRegistrar();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return swift_deallocClassInstance();
}

uint64_t sub_100541D00()
{
  result = type metadata accessor for ObservationRegistrar();
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

void sub_100541E0C()
{
  sub_100541E78();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100541E78()
{
  if (!qword_101194508)
  {
    type metadata accessor for ReportConcern.ViewModel(255);
    v0 = type metadata accessor for Bindable();
    if (!v1)
    {
      atomic_store(v0, &qword_101194508);
    }
  }
}

__n128 sub_100541EE0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_100541F14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_100541F5C(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100541FD0()
{
  result = qword_101194538;
  if (!qword_101194538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101194538);
  }

  return result;
}

uint64_t sub_100542040@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v103 = a2;
  v3 = type metadata accessor for ReportConcern.ContentView(0);
  v82 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v83 = v4;
  v84 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_10010FC20(&qword_101194578);
  v88 = *(v90 - 8);
  __chkstk_darwin(v90);
  v86 = &v79 - v5;
  v91 = sub_10010FC20(&qword_101194580);
  v89 = *(v91 - 8);
  __chkstk_darwin(v91);
  v87 = &v79 - v6;
  v7 = sub_10010FC20(&qword_101194588);
  v106 = *(v7 - 8);
  v107 = v7;
  __chkstk_darwin(v7);
  v85 = &v79 - v8;
  v9 = sub_10010FC20(&qword_101194590);
  __chkstk_darwin(v9 - 8);
  v102 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v105 = &v79 - v12;
  v13 = type metadata accessor for InlinePickerStyle();
  v14 = *(v13 - 8);
  v97 = v13;
  v98 = v14;
  __chkstk_darwin(v13);
  v96 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_10010FC20(&qword_101184C60);
  __chkstk_darwin(v93);
  v17 = &v79 - v16;
  v18 = sub_10010FC20(&qword_101194498);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v79 - v20;
  v22 = sub_10010FC20(&qword_101194598);
  v23 = *(v22 - 8);
  v94 = v22;
  v95 = v23;
  __chkstk_darwin(v22);
  v25 = &v79 - v24;
  v26 = sub_10010FC20(&qword_1011945A0);
  v100 = *(v26 - 8);
  v101 = v26;
  __chkstk_darwin(v26);
  v99 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v108 = &v79 - v29;
  v92 = a1;
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v30 = *(v19 + 8);
  v80 = v21;
  v81 = v19 + 8;
  v79 = v30;
  v30(v21, v18);
  v120 = v130;
  v121 = v131;
  v122 = v132;
  v123 = v133;
  v116 = v126;
  v117 = v127;
  v118 = v128;
  v119 = v129;
  v114 = v124;
  v115 = v125;
  v109 = a1;
  LocalizedStringKey.init(stringLiteral:)();
  v31 = Text.init(_:tableName:bundle:comment:)();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = &v17[*(sub_10010FC20(&qword_101184C58) + 36)];
  v39 = *(sub_10010FC20(&qword_101184CD8) + 28);
  v40 = type metadata accessor for Text.Case();
  v41 = *(*(v40 - 8) + 56);
  v104 = 1;
  v41(v38 + v39, 1, 1, v40);
  *v38 = swift_getKeyPath();
  v42 = v18;
  *v17 = v31;
  *(v17 + 1) = v33;
  v17[16] = v35 & 1;
  *(v17 + 3) = v37;
  v43 = static Font.body.getter();
  KeyPath = swift_getKeyPath();
  v45 = &v17[*(v93 + 36)];
  *v45 = KeyPath;
  v45[1] = v43;
  sub_10010FC20(&qword_10117FF40);
  sub_10010FC20(&qword_1011945A8);
  sub_10021CEE8();
  sub_100543F60();
  sub_100544038();
  Picker.init(selection:label:content:)();
  v46 = v96;
  InlinePickerStyle.init()();
  sub_100020674(&qword_1011945C8, &qword_101194598);
  v47 = v94;
  v48 = v97;
  View.pickerStyle<A>(_:)();
  (*(v98 + 8))(v46, v48);
  (*(v95 + 8))(v25, v47);
  v49 = v92;
  Bindable.wrappedValue.getter();
  v50 = v124;
  swift_getKeyPath();
  *&v124 = v50;
  v51 = sub_100543B78();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v52 = *(v50 + 112);
  v119 = *(v50 + 96);
  v120 = v52;
  v121 = *(v50 + 128);
  *&v122 = *(v50 + 144);
  v53 = *(v50 + 48);
  v115 = *(v50 + 32);
  v116 = v53;
  v54 = *(v50 + 80);
  v117 = *(v50 + 64);
  v118 = v54;
  v114 = *(v50 + 16);
  sub_1000089F8(&v114, &v124, &qword_10117FF40);

  v130 = v120;
  v131 = v121;
  *&v132 = v122;
  v126 = v116;
  v127 = v117;
  v128 = v118;
  v129 = v119;
  v124 = v114;
  v125 = v115;
  if (sub_100543BE4(&v124) != 1)
  {
    sub_1000095E8(&v114, &qword_10117FF40);
    LocalizedStringKey.init(stringLiteral:)();
    v98 = v51;
    v55 = v80;
    Bindable.projectedValue.getter();
    swift_getKeyPath();
    Bindable<A>.subscript.getter();

    v79(v55, v42);
    v56 = v86;
    TextField<>.init(_:text:axis:)();
    Bindable.wrappedValue.getter();
    v57 = v110;
    swift_getKeyPath();
    v110 = v57;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v58 = *(v57 + 152);
    v59 = *(v57 + 160);

    v110 = v58;
    v111 = v59;
    v60 = v84;
    sub_1005441A8(v49, v84);
    v61 = (*(v82 + 80) + 16) & ~*(v82 + 80);
    v62 = swift_allocObject();
    sub_10054420C(v60, v62 + v61);
    v63 = sub_100020674(&qword_1011945D8, &qword_101194578);
    v64 = v87;
    v65 = v90;
    View.onChange<A>(of:initial:_:)();

    (*(v88 + 8))(v56, v65);
    v110 = v65;
    v111 = &type metadata for String;
    v112 = v63;
    v113 = &protocol witness table for String;
    swift_getOpaqueTypeConformance2();
    v66 = v85;
    v67 = v91;
    View.lineLimit(_:)();
    (*(v89 + 8))(v64, v67);
    (*(v106 + 32))(v105, v66, v107);
    v104 = 0;
  }

  v68 = v105;
  (*(v106 + 56))(v105, v104, 1, v107);
  v70 = v99;
  v69 = v100;
  v71 = *(v100 + 16);
  v72 = v108;
  v73 = v101;
  v71(v99, v108, v101);
  v74 = v102;
  sub_10008FD0C(v68, v102);
  v75 = v103;
  v71(v103, v70, v73);
  v76 = sub_10010FC20(&qword_1011945D0);
  sub_10008FD0C(v74, &v75[*(v76 + 48)]);
  sub_10008FD7C(v68);
  v77 = *(v69 + 8);
  v77(v72, v73);
  sub_10008FD7C(v74);
  return (v77)(v70, v73);
}

uint64_t sub_100542CBC()
{
  sub_10010FC20(&qword_101194498);
  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  sub_100543B78();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10010FC20(&qword_1011945E0);
  sub_10010FC20(&qword_1011945E8);
  sub_100020674(&qword_1011945F0, &qword_1011945E0);
  sub_1001109D0(&qword_10117FF50);
  sub_1001109D0(&qword_10117FF40);
  sub_100544124();
  sub_100543F60();
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_100542E8C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[7];
  v43 = a1[6];
  v44 = v3;
  v45 = *(a1 + 16);
  v4 = a1[3];
  v39 = a1[2];
  v40 = v4;
  v5 = a1[5];
  v41 = a1[4];
  v42 = v5;
  v6 = a1[1];
  v37 = *a1;
  v38 = v6;
  sub_100009838();

  v7 = Text.init<A>(_:)();
  v9 = v8;
  v11 = v10;
  static Font.body.getter();
  v12 = Text.font(_:)();
  v14 = v13;
  v16 = v15;
  v35 = v17;

  sub_10011895C(v7, v9, v11 & 1);

  LOBYTE(v7) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v36[160] = v16 & 1;
  v36[152] = 0;
  v52 = v43;
  v53 = v44;
  v54 = v45;
  v48 = v39;
  v49 = v40;
  v50 = v41;
  v51 = v42;
  v46 = v37;
  v47 = v38;
  UIScreen.Dimensions.size.getter(*&v38);
  v58 = v45;
  v27 = v42;
  v57[6] = v43;
  v26 = v43;
  v57[7] = v44;
  v28 = v38;
  v57[2] = v39;
  v29 = v39;
  v57[3] = v40;
  v30 = v40;
  v57[4] = v41;
  v31 = v41;
  v57[5] = v42;
  v57[0] = v37;
  v32 = v37;
  v57[1] = v38;
  v33 = v44;
  v55[6] = v43;
  *v56 = v44;
  *&v56[16] = v45;
  v55[2] = v39;
  v55[3] = v40;
  v55[4] = v41;
  v55[5] = v42;
  v55[0] = v37;
  v55[1] = v38;
  v56[24] = 1;
  *a2 = v12;
  *(a2 + 8) = v14;
  *(a2 + 16) = v16 & 1;
  *(a2 + 24) = v35;
  *(a2 + 32) = v7;
  *(a2 + 40) = v19;
  *(a2 + 48) = v21;
  *(a2 + 56) = v23;
  *(a2 + 64) = v25;
  *(a2 + 72) = 0;
  *(a2 + 176) = v26;
  *(a2 + 192) = v33;
  *(a2 + 112) = v29;
  *(a2 + 128) = v30;
  *(a2 + 144) = v31;
  *(a2 + 160) = v27;
  *(a2 + 80) = v32;
  *(a2 + 96) = v28;
  *(a2 + 201) = *&v56[9];
  v59 = 1;
  sub_100543BFC(&v37, v36);
  sub_1000089F8(v55, v36, &qword_10117FF48);
  return sub_1000095E8(v57, &qword_10117FF48);
}

uint64_t sub_1005430D8()
{
  sub_10010FC20(&qword_101194498);
  Bindable.wrappedValue.getter();

  sub_1005442F0(400);

  v0 = static String._fromSubstring(_:)();
  v2 = v1;

  sub_1005418BC(v0, v2);
}

uint64_t sub_10054319C()
{
  sub_10010FC20(&qword_101194568);
  sub_100020674(&qword_101194570, &qword_101194568);
  return Form.init(content:)();
}

uint64_t sub_100543240(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 128) = a4;
  *(v5 + 136) = a5;
  *(v5 + 152) = a3;
  *(v5 + 112) = a1;
  *(v5 + 120) = a2;
  sub_10010FC20(&unk_101181520);
  *(v5 + 144) = swift_task_alloc();

  return _swift_task_switch(sub_1005432E4, 0, 0);
}

uint64_t sub_1005432E4()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 152);
  v6 = *(v0 + 112);
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  sub_10012B7A8(v2, v0 + 16);
  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = &protocol witness table for MainActor;
  *(v9 + 32) = v6;
  *(v9 + 40) = v4;
  *(v9 + 48) = v5;
  *(v9 + 56) = v3;
  sub_10012B828(v0 + 16, v9 + 64);
  sub_1001F4CB8(0, 0, v1, &unk_100ED2000, v9);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100543448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 256) = a7;
  *(v8 + 264) = a8;
  *(v8 + 304) = a6;
  *(v8 + 240) = a4;
  *(v8 + 248) = a5;
  type metadata accessor for Locale();
  *(v8 + 272) = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  *(v8 + 280) = swift_task_alloc();
  type metadata accessor for ReportConcern.ContentView(0);
  *(v8 + 288) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v8 + 296) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10054356C, v10, v9);
}

uint64_t sub_10054356C()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 304);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);

  v5 = objc_allocWithZone(type metadata accessor for ReportConcern.ViewController(0));
  v6 = qword_1011942B0;
  type metadata accessor for ReportConcern.ViewModel(0);
  v7 = swift_allocObject();
  sub_100543B5C(v0 + 16);
  v8 = *(v0 + 128);
  *(v7 + 112) = *(v0 + 112);
  *(v7 + 128) = v8;
  v9 = *(v0 + 144);
  v10 = *(v0 + 64);
  *(v7 + 48) = *(v0 + 48);
  *(v7 + 64) = v10;
  v11 = *(v0 + 96);
  *(v7 + 80) = *(v0 + 80);
  *(v7 + 96) = v11;
  v12 = *(v0 + 32);
  *(v7 + 16) = *(v0 + 16);
  *(v7 + 32) = v12;
  *(v7 + 144) = v9;
  *(v7 + 152) = 0;
  *(v7 + 160) = 0xE000000000000000;
  *(v7 + 168) = _swiftEmptyArrayStorage;
  ObservationRegistrar.init()();
  *&v5[v6] = v7;
  v13 = &v5[qword_1011942A8];
  *v13 = v4;
  *(v13 + 1) = v3;
  v13[16] = v2;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 9) = v1;
  sub_100543B78();

  Bindable<A>.init(wrappedValue:)();
  v14 = UIHostingController.init(rootView:)();
  v15 = *&v14[qword_1011942B0];
  v16 = &v14[qword_1011942A8];
  *(v0 + 152) = *&v14[qword_1011942A8];
  v17 = *(v16 + 3);
  v18 = *(v16 + 4);
  v19 = *(v16 + 2);
  *(v0 + 168) = *(v16 + 1);
  *(v0 + 216) = v18;
  *(v0 + 200) = v17;
  *(v0 + 184) = v19;
  swift_getKeyPath();
  *(v0 + 232) = v15;
  v20 = v14;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v21 = sub_10053E434();

  sub_100541ADC(v21);

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v22 = String._bridgeToObjectiveC()();

  [v20 setTitle:v22];

  v23 = v20;
  v24 = [v23 navigationItem];
  sub_100009F78(0, &qword_101181580);
  sub_100009F78(0, &qword_1011839A0);
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = swift_allocObject();
  v26[2] = v25;
  v26[3] = v4;
  v26[4] = v3;

  v36.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v36.is_nil = 0;
  isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemDone, v36, v38).super.super.isa;
  [v24 setRightBarButtonItem:{isa, 0, 0, 0, sub_100543BD0, v26}];

  v28 = [v23 navigationItem];
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v34 = v29;
  v37.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v37.is_nil = 0;
  v30 = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemCancel, v37, v39).super.super.isa;
  [v28 setLeftBarButtonItem:{v30, 0, 0, 0, sub_100543BDC, v34}];

  v31 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v23];
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v31, 1, 1, 0, 0);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_100543A80(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 48);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002F3F4;

  return sub_100543448(a1, v4, v5, v6, v7, v9, v8, v1 + 64);
}

double sub_100543B5C(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t sub_100543B78()
{
  result = qword_101194540;
  if (!qword_101194540)
  {
    type metadata accessor for ReportConcern.ViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101194540);
  }

  return result;
}

uint64_t sub_100543BE4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100543C34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[22];
  v8 = v1[23];
  v9 = v1[24];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002F3F4;

  return sub_100540B64(a1, v4, v5, v6, (v1 + 5), v7, v8, v9);
}

uint64_t sub_100543D10(uint64_t a1)
{
  v2 = type metadata accessor for Notice(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100543D84(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v6 = *(a1 + 48);
  v7 = *(a2 + 48);
  if (v6)
  {
    if (!v7 || (*(a1 + 40) != *(a2 + 40) || v6 != v7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = *(a1 + 64);
  v9 = *(a2 + 64);
  if (v8)
  {
    if (!v9 || (*(a1 + 56) != *(a2 + 56) || v8 != v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if ((*(a1 + 72) != *(a2 + 72) || *(a1 + 80) != *(a2 + 80)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v10 = *(a1 + 96);
  v11 = *(a2 + 96);
  if (v10)
  {
    if (!v11 || (*(a1 + 88) != *(a2 + 88) || v10 != v11) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v12 = *(a1 + 112);
  v13 = *(a2 + 112);
  if (v12)
  {
    if (v13 && (*(a1 + 104) == *(a2 + 104) && v12 == v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_41;
    }

    return 0;
  }

  if (v13)
  {
    return 0;
  }

LABEL_41:
  if (*(a1 + 120) == *(a2 + 120) && *(a1 + 128) == *(a2 + 128))
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

unint64_t sub_100543F60()
{
  result = qword_1011945B0;
  if (!qword_1011945B0)
  {
    sub_1001109D0(&qword_10117FF40);
    sub_100543FE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011945B0);
  }

  return result;
}

unint64_t sub_100543FE4()
{
  result = qword_1011945B8;
  if (!qword_1011945B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011945B8);
  }

  return result;
}

unint64_t sub_100544038()
{
  result = qword_1011945C0;
  if (!qword_1011945C0)
  {
    sub_1001109D0(&qword_1011945A8);
    sub_1001109D0(&qword_10117FF50);
    sub_1001109D0(&qword_10117FF40);
    sub_100544124();
    sub_100543F60();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011945C0);
  }

  return result;
}

unint64_t sub_100544124()
{
  result = qword_1011A1630;
  if (!qword_1011A1630)
  {
    sub_1001109D0(&qword_10117FF50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A1630);
  }

  return result;
}

uint64_t sub_1005441A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportConcern.ContentView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10054420C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportConcern.ContentView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100544270()
{
  type metadata accessor for ReportConcern.ContentView(0);

  return sub_1005430D8();
}

uint64_t sub_1005442F0(uint64_t result)
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

uint64_t sub_10054438C()
{
  *(*(v0 + 16) + 168) = *(v0 + 24);
}

uint64_t sub_1005443C8()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 152) = v0[3];
  *(v1 + 160) = v2;
}

uint64_t sub_100544408(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 80);
  v5 = *(a1 + 112);
  __src[6] = *(a1 + 96);
  __src[7] = v5;
  v6 = *(a1 + 16);
  v7 = *(a1 + 48);
  __src[2] = *(a1 + 32);
  __src[3] = v7;
  v8 = *(a1 + 48);
  v9 = *(a1 + 80);
  __src[4] = *(a1 + 64);
  __src[5] = v9;
  v10 = *(a1 + 16);
  __src[0] = *a1;
  __src[1] = v10;
  v11 = *(a2 + 64);
  *(&__src[13] + 8) = *(a2 + 80);
  v12 = *(a2 + 112);
  *(&__src[14] + 8) = *(a2 + 96);
  *(&__src[15] + 8) = v12;
  v13 = *a2;
  *(&__src[9] + 8) = *(a2 + 16);
  v14 = *(a2 + 48);
  *(&__src[10] + 8) = *(a2 + 32);
  *(&__src[11] + 8) = v14;
  *(&__src[12] + 8) = v11;
  *(&__src[8] + 8) = v13;
  v15 = *(a1 + 112);
  v37[6] = __src[6];
  v37[7] = v15;
  v37[2] = __src[2];
  v37[3] = v8;
  v37[4] = __src[4];
  v37[5] = v4;
  v16 = *(a2 + 128);
  *&__src[8] = *(a1 + 128);
  *(&__src[16] + 1) = v16;
  v38 = *(a1 + 128);
  v37[0] = __src[0];
  v37[1] = v6;
  if (sub_100543BE4(v37) != 1)
  {
    v24[6] = *(&__src[14] + 8);
    v24[7] = *(&__src[15] + 8);
    v25 = *(&__src[16] + 1);
    v24[2] = *(&__src[10] + 8);
    v24[3] = *(&__src[11] + 8);
    v24[4] = *(&__src[12] + 8);
    v24[5] = *(&__src[13] + 8);
    v24[0] = *(&__src[8] + 8);
    v24[1] = *(&__src[9] + 8);
    if (sub_100543BE4(v24) != 1)
    {
      v20[6] = *(&__src[14] + 8);
      v20[7] = *(&__src[15] + 8);
      v21 = *(&__src[16] + 1);
      v20[2] = *(&__src[10] + 8);
      v20[3] = *(&__src[11] + 8);
      v20[4] = *(&__src[12] + 8);
      v20[5] = *(&__src[13] + 8);
      v20[0] = *(&__src[8] + 8);
      v20[1] = *(&__src[9] + 8);
      __dst[6] = *(&__src[14] + 8);
      __dst[7] = *(&__src[15] + 8);
      *&__dst[8] = *(&__src[16] + 1);
      __dst[2] = *(&__src[10] + 8);
      __dst[3] = *(&__src[11] + 8);
      __dst[4] = *(&__src[12] + 8);
      __dst[5] = *(&__src[13] + 8);
      __dst[0] = *(&__src[8] + 8);
      __dst[1] = *(&__src[9] + 8);
      v34 = __src[6];
      v35 = __src[7];
      v36 = *&__src[8];
      v30 = __src[2];
      v31 = __src[3];
      v33 = __src[5];
      v32 = __src[4];
      v28 = __src[0];
      v29 = __src[1];
      v18 = sub_100543D84(&v28, __dst);
      sub_1000089F8(a1, v22, &qword_10117FF40);
      sub_1000089F8(a2, v22, &qword_10117FF40);
      sub_1000095E8(v20, &qword_10117FF40);
      v22[6] = __src[6];
      v22[7] = __src[7];
      v23 = *&__src[8];
      v22[2] = __src[2];
      v22[3] = __src[3];
      v22[4] = __src[4];
      v22[5] = __src[5];
      v22[0] = __src[0];
      v22[1] = __src[1];
      sub_1000095E8(v22, &qword_10117FF40);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    goto LABEL_5;
  }

  __dst[6] = *(&__src[14] + 8);
  __dst[7] = *(&__src[15] + 8);
  *&__dst[8] = *(&__src[16] + 1);
  __dst[2] = *(&__src[10] + 8);
  __dst[3] = *(&__src[11] + 8);
  __dst[4] = *(&__src[12] + 8);
  __dst[5] = *(&__src[13] + 8);
  __dst[0] = *(&__src[8] + 8);
  __dst[1] = *(&__src[9] + 8);
  if (sub_100543BE4(__dst) != 1)
  {
LABEL_5:
    memcpy(__dst, __src, sizeof(__dst));
    sub_1000089F8(a1, &v28, &qword_10117FF40);
    sub_1000089F8(a2, &v28, &qword_10117FF40);
    sub_1000095E8(__dst, &qword_1011945F8);
    v17 = 1;
    return v17 & 1;
  }

  v34 = __src[6];
  v35 = __src[7];
  v36 = *&__src[8];
  v30 = __src[2];
  v31 = __src[3];
  v33 = __src[5];
  v32 = __src[4];
  v28 = __src[0];
  v29 = __src[1];
  sub_1000089F8(a1, v24, &qword_10117FF40);
  sub_1000089F8(a2, v24, &qword_10117FF40);
  sub_1000095E8(&v28, &qword_10117FF40);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_100544794()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 112);
  v14[5] = *(v2 + 96);
  v14[6] = v3;
  v14[7] = *(v2 + 128);
  v15 = *(v2 + 144);
  v4 = *(v2 + 48);
  v14[1] = *(v2 + 32);
  v14[2] = v4;
  v5 = *(v2 + 80);
  v14[3] = *(v2 + 64);
  v14[4] = v5;
  v14[0] = *(v2 + 16);
  v6 = *(v1 + 128);
  v7 = *(v1 + 80);
  v8 = *(v1 + 112);
  *(v2 + 112) = *(v1 + 96);
  *(v2 + 128) = v8;
  *(v2 + 96) = v7;
  v10 = *(v1 + 48);
  v9 = *(v1 + 64);
  v11 = *(v1 + 32);
  *(v2 + 32) = *(v1 + 16);
  *(v2 + 48) = v11;
  *(v2 + 64) = v10;
  *(v2 + 80) = v9;
  *(v2 + 16) = *v1;
  *(v2 + 144) = v6;
  sub_1000089F8(v1, v13, &qword_10117FF40);
  return sub_1000095E8(v14, &qword_10117FF40);
}

unint64_t sub_100544874()
{
  result = qword_101194610;
  if (!qword_101194610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101194610);
  }

  return result;
}

id sub_10054492C(unint64_t a1)
{
  v2 = v1;
  v4 = [v1 isReversed];
  v5 = &UITransitionContextToViewKey;
  if (v4)
  {
    v5 = &UITransitionContextFromViewKey;
  }

  result = [a1 viewForKey:*v5];
  if (result)
  {
    v7 = result;
    v95 = OBJC_IVAR____TtC5Music38PalettePresentationAnimationController_interaction;
    v8 = *(v1 + OBJC_IVAR____TtC5Music38PalettePresentationAnimationController_interaction);
    v9 = OBJC_IVAR____TtC5Music30PalettePresentationInteraction_viewProvider;
    swift_beginAccess();
    sub_100546E34(v8 + v9, &aBlock);
    if (v102)
    {
      sub_100059A8C(&aBlock, v110);
      v10 = *(*sub_10000954C(v110, v110[3]) + OBJC_IVAR____TtC5Music16TabBarController_bottomPlayerViewController);
      if (v10 && (v11 = [v10 view]) != 0)
      {
        v84 = v11;
        v86 = v7;
        v12 = _swiftEmptyArrayStorage;
        v109 = _swiftEmptyArrayStorage;
        v13 = &selRef_setPhotosHeaderMetadata_;
        v14 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
        if (v14)
        {
          v15 = v14;
          swift_getObjectType();
          v16 = swift_conformsToProtocol2();
          if (v16)
          {
            ObjectType = v16;
            v12 = sub_100056354(0, 1, 1, _swiftEmptyArrayStorage);
            v19 = v12[2];
            v18 = v12[3];
            v20 = (v19 + 1);
            if (v19 >= v18 >> 1)
            {
              goto LABEL_62;
            }

            goto LABEL_10;
          }
        }

LABEL_14:
        v22 = [a1 v13[154]];
        if (v22)
        {
          v23 = v22;
          swift_getObjectType();
          v24 = swift_conformsToProtocol2();
          if (v24)
          {
            v25 = v24;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v12 = sub_100056354(0, v12[2] + 1, 1, v12);
            }

            v27 = v12[2];
            v26 = v12[3];
            if (v27 >= v26 >> 1)
            {
              v12 = sub_100056354((v26 > 1), v27 + 1, 1, v12);
            }

            v12[2] = v27 + 1;
            v28 = &v12[2 * v27];
            v28[4] = v23;
            v28[5] = v25;
            v109 = v12;
          }

          else
          {
          }
        }

        v29 = *(v2 + v95);
        v30 = &v29[OBJC_IVAR____TtC5Music30PalettePresentationInteraction_transitioningDelegate];
        Strong = swift_unknownObjectWeakLoadStrong();
        v88 = a1;
        if (Strong)
        {
          v32 = *(v30 + 1);
          v33 = Strong;
          ObjectType = swift_getObjectType();
          v13 = (v32 + 16);
          v20 = *(v32 + 16);
          swift_unknownObjectRetain();
          v19 = v29;
          v12 = v33;
          v15 = v20();

          v93 = v15[2];
          if (v93)
          {
            a1 = 0;
            v91 = v15 + 4;
            v34 = _swiftEmptyArrayStorage;
            v89 = v15;
            while (1)
            {
              v18 = v15[2];
              if (a1 >= v18)
              {
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
                v12 = sub_100056354((v18 > 1), v20, 1, v12);
LABEL_10:
                v12[2] = v20;
                v21 = &v12[2 * v19];
                v21[4] = v15;
                v21[5] = ObjectType;
                v109 = v12;
                goto LABEL_14;
              }

              v97 = *&v91[2 * a1];
              v35 = v91[2 * a1];
              swift_getObjectType();
              v20 = v2;
              v36 = *(v2 + v95);
              v13 = *(&v97 + 1);
              v37 = *(*(&v97 + 1) + 16);
              v38 = v35;
              v39 = v36;
              v19 = v37();

              v12 = v38;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v34 = sub_100056354(0, v34[2] + 1, 1, v34);
              }

              v41 = v34[2];
              v40 = v34[3];
              ObjectType = v41 + 1;
              v2 = v20;
              if (v41 >= v40 >> 1)
              {
                v34 = sub_100056354((v40 > 1), v41 + 1, 1, v34);
              }

              v34[2] = ObjectType;
              v18 = &v34[2 * v41];
              *(v18 + 32) = v97;
              v15 = *(v19 + 16);
              v42 = v15 + ObjectType;
              if (__OFADD__(ObjectType, v15))
              {
                goto LABEL_58;
              }

              v43 = v34[3] >> 1;
              if (v43 < v42)
              {
                if (ObjectType <= v42)
                {
                  v46 = v15 + ObjectType;
                }

                else
                {
                  v46 = ObjectType;
                }

                v34 = sub_100056354(1, v46, 1, v34);
                ObjectType = v34[2];
                v43 = v34[3] >> 1;
                if (*(v19 + 16))
                {
LABEL_35:
                  v18 = v43 - ObjectType;
                  if (v18 < v15)
                  {
                    goto LABEL_60;
                  }

                  v13 = &v34[2 * ObjectType];
                  sub_10010FC20(&unk_1011815B0);
                  swift_arrayInitWithCopy();

                  if (v15)
                  {
                    v44 = v34[2];
                    v45 = __OFADD__(v44, v15);
                    v18 = v15 + v44;
                    if (v45)
                    {
                      goto LABEL_61;
                    }

                    v34[2] = v18;
                  }

                  goto LABEL_26;
                }
              }

              else if (v15)
              {
                goto LABEL_35;
              }

              if (v15)
              {
                goto LABEL_59;
              }

LABEL_26:
              ++a1;

              v15 = v89;
              if (v93 == a1)
              {
                goto LABEL_46;
              }
            }
          }

          v34 = _swiftEmptyArrayStorage;
LABEL_46:

          swift_unknownObjectRelease_n();
          a1 = v88;
        }

        else
        {
          v34 = _swiftEmptyArrayStorage;
        }

        sub_1001258E8(v34);

        v48 = sub_10018E23C(v47);
        v92 = sub_10028D0DC(v48, [v2 isReversed]);

        v96 = swift_allocObject();
        *(v96 + 16) = 0;
        v82 = (v96 + 16);
        v87 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_100008FE4(v110, v108);
        sub_100008FE4(v108, v107);
        v49 = swift_allocObject();
        v49[2] = v87;
        v49[3] = v84;
        v49[4] = v86;
        sub_100059A8C(v108, (v49 + 5));
        v49[10] = v96;
        v94 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_100008FE4(v110, v106);
        sub_100008FE4(v106, v105);
        v50 = swift_allocObject();
        v50[2] = v94;
        v50[3] = v47;
        v98 = v47;
        v50[4] = a1;
        v50[5] = v92;
        v50[6] = v86;
        v50[7] = v84;
        sub_100059A8C(v106, (v50 + 8));
        v51 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v52 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v53 = swift_allocObject();
        v53[2] = v51;
        v53[3] = v52;
        v53[4] = v84;
        v53[5] = v96;
        v53[6] = sub_100546F0C;
        v53[7] = v49;
        v53[8] = sub_100546F74;
        v53[9] = v50;
        v53[10] = v47;
        v53[11] = v92;
        v53[12] = v86;
        v103 = sub_100546FEC;
        v104 = v53;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v101 = sub_10002BC98;
        v102 = &unk_1010B1A48;
        v54 = _Block_copy(&aBlock);
        v55 = v84;
        v56 = v86;
        v57 = v55;
        v58 = v56;
        swift_retain_n();
        swift_bridgeObjectRetain_n();

        v90 = v57;
        v59 = v58;

        swift_unknownObjectRetain();

        [v2 addNoninteractiveAnimations:v54];
        _Block_release(v54);
        v60 = swift_allocObject();
        *(v60 + 16) = v59;
        *(v60 + 24) = v92;
        v103 = sub_10054702C;
        v104 = v60;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        v101 = sub_1005C3688;
        v102 = &unk_1010B1A98;
        v61 = _Block_copy(&aBlock);
        v62 = v59;

        v63 = v88;

        [v2 addNoninteractiveCompletion:v61];
        _Block_release(v61);
        v99.receiver = v2;
        v99.super_class = type metadata accessor for PalettePresentationAnimationController();
        v64 = objc_msgSendSuper2(&v99, "interruptibleAnimatorForTransition:", v88);
        swift_unknownObjectRelease();
        if ([v2 isReversed])
        {
          sub_10000959C(v107);
        }

        else
        {
          v65 = *sub_10000954C(v107, v107[3]);
          v102 = type metadata accessor for TabBarController();
          v103 = &off_1010BAC08;
          *&aBlock = v65;
          swift_beginAccess();
          v66 = swift_unknownObjectWeakLoadStrong();
          v67 = v65;
          if (v66)
          {
            [v90 setTranslatesAutoresizingMaskIntoConstraints:0];
            [v62 addSubview:v90];
            sub_10000954C(&aBlock, v102);
            sub_1006BE154();
            v85 = objc_opt_self();
            sub_10010FC20(&qword_101183990);
            v68 = swift_allocObject();
            *(v68 + 16) = xmmword_100EBDC10;
            v83 = v66;
            v69 = [v90 leadingAnchor];
            v70 = [v62 leadingAnchor];
            v71 = [v69 constraintEqualToAnchor:v70];

            *(v68 + 32) = v71;
            v72 = [v90 trailingAnchor];
            v73 = [v62 trailingAnchor];
            v74 = [v72 constraintEqualToAnchor:v73];

            *(v68 + 40) = v74;
            v75 = [v90 topAnchor];
            v76 = [v62 topAnchor];
            v77 = [v75 constraintEqualToAnchor:v76];

            *(v68 + 48) = v77;
            v63 = v88;
            v78 = [v90 heightAnchor];
            [v90 frame];
            v79 = [v78 constraintEqualToConstant:CGRectGetHeight(v111)];

            *(v68 + 56) = v79;
            sub_100294F58();
            isa = Array._bridgeToObjectiveC()().super.isa;

            [v85 activateConstraints:isa];

            swift_beginAccess();
            *v82 = 1;
          }

          sub_10000959C(&aBlock);

          sub_10000959C(v107);
        }

        if ([v63 isInteractive])
        {
          sub_10000959C(v105);
        }

        else
        {
          v81 = sub_10000954C(v105, v105[3]);
          sub_10054665C(v94, v98, v63, v92, v62, v90, *v81);

          sub_10000959C(v105);
        }
      }

      else
      {
      }

      return sub_10000959C(v110);
    }

    else
    {

      return sub_100546EA4(&aBlock);
    }
  }

  return result;
}

void sub_10054563C(void *a1, double a2)
{
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v8[4] = sub_100547124;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10002BC98;
  v8[3] = &unk_1010B1BD8;
  v6 = _Block_copy(v8);
  v7 = a1;

  [v4 animateKeyframesWithDuration:0 delay:v6 options:0 animations:a2 completion:0.0];
  _Block_release(v6);
}

void sub_100545740(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v6[4] = sub_1001D2724;
  v6[5] = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_10002BC98;
  v6[3] = &unk_1010B1C28;
  v4 = _Block_copy(v6);
  v5 = a1;

  [v2 addKeyframeWithRelativeStartTime:v4 relativeDuration:0.0 animations:0.5];
  _Block_release(v4);
}

void sub_100545830(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, void *a11)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v18 = Strong;
  swift_beginAccess();
  v19 = swift_unknownObjectWeakLoadStrong();
  if (!v19)
  {

    return;
  }

  v20 = v19;
  v21 = a4 + 16;
  [a3 frame];
  v22 = objc_opt_self();
  v23 = swift_allocObject();
  v23[2] = v21;
  v23[3] = a5;
  v23[4] = a6;
  v23[5] = v18;
  v23[6] = a7;
  v23[7] = a8;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_10054712C;
  *(v24 + 24) = v23;
  aBlock[4] = sub_100029B94;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010B1CA0;
  v25 = _Block_copy(aBlock);

  v26 = v18;

  [v22 performWithoutAnimation:v25];
  _Block_release(v25);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_37;
  }

  v18 = a10;
  v28 = *(a9 + 16);
  if (v28)
  {
    v29 = (a9 + 40);
    do
    {
      v30 = *(v29 - 1);
      v31 = *v29;
      ObjectType = swift_getObjectType();
      v33 = *(v31 + 32);
      v34 = v30;
      v33(v20, a10, v26, ObjectType, v31);

      v29 += 2;
      --v28;
    }

    while (v28);
  }

  [objc_opt_self() setFrameStallSkipRequest:1];
  [*&v26[OBJC_IVAR____TtC5Music38PalettePresentationAnimationController_basicAnimator] startAnimation];
  [*&v26[OBJC_IVAR____TtC5Music38PalettePresentationAnimationController_easingAnimator] startAnimation];
  if (a10 >> 62)
  {
LABEL_37:
    v35 = _CocoaArrayWrapper.endIndex.getter();
    if (v35)
    {
      goto LABEL_9;
    }

LABEL_38:

    swift_unknownObjectRelease();
    return;
  }

  v35 = *((a10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v35)
  {
    goto LABEL_38;
  }

LABEL_9:
  if (v35 >= 1)
  {
    v36 = 0;
    v37 = v18 & 0xC000000000000001;
    v83 = v20;
    v85 = v35;
    while (1)
    {
      if (v37)
      {
        v38 = sub_1007E9A10(v36, v18);
        v39 = *(v38 + 40);
        if (v39)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v38 = *(v18 + 8 * v36 + 32);

        v39 = *(v38 + 40);
        if (v39)
        {
LABEL_17:
          v40 = *(v39 + 40);
          if (v40)
          {
            sub_100030444(*(v39 + 40));

            v41 = v40(v38);
            v43 = v42;
            v45 = v44;
            v47 = v46;
            sub_100020438(v40);
            v48 = *(v39 + 88);
            if (v48)
            {

              v48(v38);
              sub_100020438(v48);
            }

            (*(*v38 + 256))(v39);
            if (*(v38 + 48))
            {
              v87.origin.x = v41;
              v87.origin.y = v43;
              v87.size.width = v45;
              v87.size.height = v47;
              MaxX = CGRectGetMaxX(v87);
              v50 = v26;
              [v50 sourceFrame];
              if (CGRectGetMaxX(v88) >= MaxX)
              {
              }

              else
              {
                [a11 frame];
                Width = CGRectGetWidth(v89);
                [v50 sourceFrame];
                v52 = v51;
                v54 = v53;
                v56 = v55;
                v58 = v57;

                v90.origin.x = v52;
                v90.origin.y = v54;
                v90.size.width = v56;
                v90.size.height = v58;
                v41 = v41 - (Width - CGRectGetWidth(v90));
              }

              v35 = v85;
              v73 = *(v38 + 32);
              [v73 setFrame:{v41, v43, v45, v47}];
            }

            else
            {
              v59 = *(v39 + 32);
              v60 = [v20 containerView];
              [v59 convertRect:v60 toCoordinateSpace:{v41, v43, v45, v47}];
              v62 = v61;
              v64 = v63;
              v66 = v65;
              v68 = v67;

              v69 = v26;
              if ([v69 isReversed])
              {
                [a11 frame];
                MinY = CGRectGetMinY(v91);
                [v69 sourceFrame];
                if (MinY != CGRectGetMinY(v92))
                {
                  [v69 sourceFrame];
                  v71 = CGRectGetMinY(v93);
                  [a11 frame];
                  v64 = v64 + v71 - CGRectGetMinY(v94);
                }

                [a11 frame];
                MinX = CGRectGetMinX(v95);
                [v69 sourceFrame];
                if (MinX == CGRectGetMinX(v96))
                {
                }

                else
                {
                  [v69 sourceFrame];
                  v75 = v74;
                  v77 = v76;
                  v79 = v78;
                  v81 = v80;

                  v97.origin.x = v75;
                  v97.origin.y = v77;
                  v97.size.width = v79;
                  v97.size.height = v81;
                  v82 = CGRectGetMinX(v97);
                  [a11 frame];
                  v62 = v62 + v82 - CGRectGetMinX(v98);
                }

                v20 = v83;
              }

              else
              {
              }

              v73 = *(v38 + 32);
              [v73 setFrame:{v62, v64, v66, v68}];
              v35 = v85;
            }

            v37 = v18 & 0xC000000000000001;
          }

          else
          {
            v35 = v85;
          }
        }
      }

      ++v36;

      if (v35 == v36)
      {
        goto LABEL_38;
      }
    }
  }

  __break(1u);
}

id sub_100545EE8(int a1, id a2, unint64_t a3)
{
  result = [a2 setUserInteractionEnabled:1];
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v5 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }
  }

  if (v5 >= 1)
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = sub_1007E9A10(v6, a3);
        v8 = v7[5];
        if (!v8)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v7 = *(a3 + 8 * v6 + 32);

        v8 = v7[5];
        if (!v8)
        {
          goto LABEL_5;
        }
      }

      v9 = *(v8 + 56);

      if (v9)
      {
        sub_100030444(v9);
        v9(v7);
        sub_100020438(v9);
      }

      (*(*v7 + 264))(v8, 1);
      v10 = *(v8 + 104);
      if (v10)
      {

        v10(1, v7);

        result = sub_100020438(v10);
        goto LABEL_6;
      }

LABEL_5:

LABEL_6:
      if (v5 == ++v6)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

id sub_1005460C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PalettePresentationAnimationController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10054622C(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC5Music38PalettePresentationAnimationController_completionBlocks;
  swift_beginAccess();
  v5 = *&v2[v4];
  v6 = *(v5 + 16);
  if (v6)
  {

    v7 = v5 + 40;
    do
    {
      v8 = *(v7 - 8);
      v10 = a1 & 1;

      v8(&v10);

      v7 += 16;
      --v6;
    }

    while (v6);
  }

  *&v2[v4] = _swiftEmptyArrayStorage;

  [v2 setNoninteractiveAnimations:0];
  return [v2 setNoninteractiveCompletion:0];
}

uint64_t sub_100546374(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v29 = type metadata accessor for TabBarController();
  v30 = &off_1010BAC08;
  v28[0] = a4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = a4;
    [a2 setTranslatesAutoresizingMaskIntoConstraints:0];
    [a3 addSubview:a2];
    sub_10000954C(v28, v29);
    sub_1006BE154();
    v12 = objc_opt_self();
    sub_10010FC20(&qword_101183990);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100EBDC10;
    v14 = [a2 leadingAnchor];
    v15 = [a3 leadingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];

    *(v13 + 32) = v16;
    v17 = [a2 trailingAnchor];
    v18 = [a3 trailingAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];

    *(v13 + 40) = v19;
    v20 = [a2 topAnchor];
    v21 = [a3 topAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];

    *(v13 + 48) = v22;
    v23 = [a2 heightAnchor];
    [a2 frame];
    v24 = [v23 constraintEqualToConstant:CGRectGetHeight(v31)];

    *(v13 + 56) = v24;
    sub_100294F58();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v12 activateConstraints:isa];

    swift_beginAccess();
    *(a5 + 16) = 1;
  }

  else
  {
    v26 = a4;
  }

  return sub_10000959C(v28);
}

uint64_t sub_10054665C(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, void *a5, void *a6, void *a7)
{
  v78[3] = swift_getObjectType();
  v78[4] = &off_1010BAC08;
  v78[0] = a7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v16 = a7;
    return sub_10000959C(v78);
  }

  v14 = Strong;
  if (*(Strong + OBJC_IVAR____TtC5Music38PalettePresentationAnimationController_isPrepared))
  {
    v15 = a7;
LABEL_40:

    return sub_10000959C(v78);
  }

  v75 = a5;
  v76 = a6;
  v73 = OBJC_IVAR____TtC5Music38PalettePresentationAnimationController_isPrepared;
  v17 = *(a2 + 16);
  if (v17)
  {
    v18 = a7;
    v19 = (a2 + 40);
    do
    {
      v20 = *(v19 - 1);
      v21 = *v19;
      ObjectType = swift_getObjectType();
      v23 = *(v21 + 24);
      v24 = v20;
      v23(a3, a4, v14, ObjectType, v21);

      v19 += 2;
      --v17;
    }

    while (v17);
  }

  else
  {
    v25 = a7;
  }

  [v75 setUserInteractionEnabled:{0, v73}];
  if ([v14 isReversed])
  {
    v26 = v76;
    [v76 setAlpha:0.0];
    v27 = swift_allocObject();
    *(v27 + 16) = v76;
    v28 = *&v14[OBJC_IVAR____TtC5Music38PalettePresentationAnimationController_basicAnimator];
    v29 = swift_allocObject();
    v29[2] = sub_1001D2178;
    v29[3] = v27;
    v29[4] = v28;
    v30 = v28;
    v31 = v76;

    v32 = sub_1005471C4;
  }

  else
  {
    v33 = swift_allocObject();
    v26 = v76;
    *(v33 + 16) = v76;
    v34 = *&v14[OBJC_IVAR____TtC5Music38PalettePresentationAnimationController_basicAnimator];
    v29 = swift_allocObject();
    v29[2] = sub_100547034;
    v29[3] = v33;
    v29[4] = v34;
    v35 = v34;
    v36 = v76;
    v30 = v35;

    v32 = sub_10054703C;
  }

  UIViewPropertyAnimator.addModifiedAnimations(with:animations:)(0, v32, v29);

  sub_100008FE4(v78, v77);
  v37 = swift_allocObject();
  sub_100059A8C(v77, v37 + 16);
  *(v37 + 56) = v26;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_100547040;
  *(v38 + 24) = v37;
  v39 = OBJC_IVAR____TtC5Music38PalettePresentationAnimationController_completionBlocks;
  swift_beginAccess();
  v40 = *&v14[v39];
  v41 = v26;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v14[v39] = v40;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v40 = sub_10049974C(0, v40[2] + 1, 1, v40);
    *&v14[v39] = v40;
  }

  v44 = v40[2];
  v43 = v40[3];
  if (v44 >= v43 >> 1)
  {
    v40 = sub_10049974C((v43 > 1), v44 + 1, 1, v40);
  }

  v40[2] = v44 + 1;
  v45 = &v40[2 * v44];
  v45[4] = sub_100547098;
  v45[5] = v38;
  *&v14[v39] = v40;
  swift_endAccess();

  if (!(a4 >> 62))
  {
    v47 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v47)
    {
      goto LABEL_19;
    }

LABEL_39:
    v14[v74] = 1;
    goto LABEL_40;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v47 = result;
  if (!result)
  {
    goto LABEL_39;
  }

LABEL_19:
  if (v47 >= 1)
  {
    v48 = 0;
    while (1)
    {
      if ((a4 & 0xC000000000000001) != 0)
      {
        v53 = sub_1007E9A10(v48, a4);
      }

      else
      {
        v53 = *(a4 + 8 * v48 + 32);
      }

      if (*(v53 + 48) == 1)
      {
        v49 = *(v53 + 56);
        if (!v49)
        {
          [*(v53 + 32) frame];
          v56 = v55;
          v58 = v57;
          v60 = v59;
          v62 = v61;
          [*(v53 + 32) setTranslatesAutoresizingMaskIntoConstraints:1];
          [*(v53 + 32) setFrame:{v56, v58, v60, v62}];
LABEL_37:

          goto LABEL_25;
        }

        v50 = [a3 containerView];
        v51 = v53;
        v52 = 1;
      }

      else
      {
        v54 = *(v53 + 40);
        if (v54)
        {
          v49 = *(v54 + 72);
          if (v49)
          {

            v49(v53);
            goto LABEL_24;
          }
        }

        v49 = *(v53 + 56);
        if (!v49)
        {
          v63 = [a3 containerView];
          [*(v53 + 32) bounds];
          [v63 convertRect:*(v53 + 32) fromCoordinateSpace:?];
          v65 = v64;
          v67 = v66;
          v69 = v68;
          v71 = v70;

          [*(v53 + 32) setTranslatesAutoresizingMaskIntoConstraints:1];
          [*(v53 + 32) setFrame:{v65, v67, v69, v71}];
          v72 = [a3 containerView];
          [v72 addSubview:*(v53 + 32)];

          goto LABEL_37;
        }

        v50 = [a3 containerView];
        v51 = v53;
        v52 = 0;
      }

      (v49)(v51, v52, v50);

LABEL_24:

      sub_100020438(v49);
LABEL_25:
      if (v47 == ++v48)
      {
        goto LABEL_39;
      }
    }
  }

  __break(1u);
  return result;
}

id sub_100546CA0(void *a1)
{
  *&v1[OBJC_IVAR____TtC5Music38PalettePresentationAnimationController_completionBlocks] = _swiftEmptyArrayStorage;
  v1[OBJC_IVAR____TtC5Music38PalettePresentationAnimationController_isPrepared] = 0;
  *&v1[OBJC_IVAR____TtC5Music38PalettePresentationAnimationController_interaction] = a1;
  v3 = objc_allocWithZone(UICubicTimingParameters);
  v4 = a1;
  v5 = [v3 init];
  v6 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v5 timingParameters:0.5];

  *&v1[OBJC_IVAR____TtC5Music38PalettePresentationAnimationController_basicAnimator] = v6;
  v7 = [objc_allocWithZone(MPCubicSpringTimingParameters) initWithMass:3.0 stiffness:500.0 damping:1000.0 initialVelocity:{0.0, 0.0}];
  v8 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.187800005 controlPoint2:{0.00230000005, 0.539900005, 0.962899983}];
  [v7 setSpringCubicTimingParameters:v8];

  v9 = [objc_allocWithZone(MPCubicSpringAnimator) initWithDuration:v7 timingParameters:0.0];
  *&v1[OBJC_IVAR____TtC5Music38PalettePresentationAnimationController_easingAnimator] = v9;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for PalettePresentationAnimationController();
  return objc_msgSendSuper2(&v11, "init");
}

uint64_t sub_100546E34(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101194670);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100546EA4(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101194670);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100546F0C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[10];
  v5 = *sub_10000954C(v0 + 5, v0[8]);

  return sub_100546374(v1, v2, v3, v5, v4);
}

uint64_t sub_100546F74()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = *sub_10000954C(v0 + 8, v0[11]);

  return sub_10054665C(v1, v2, v3, v4, v5, v6, v7);
}

id sub_100547040()
{
  v1 = v0[7];
  sub_10000954C(v0 + 2, v0[5]);
  sub_1006BE37C(v1);

  return [v1 setAlpha:1.0];
}

uint64_t sub_1005470A0()
{

  return swift_deallocObject();
}

uint64_t sub_10054712C()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[5];
  v3 = v0[6];
  result = swift_beginAccess();
  if ((*v1 & 1) == 0)
  {
    result = v2(result);
  }

  if ((*(v4 + OBJC_IVAR____TtC5Music38PalettePresentationAnimationController_isPrepared) & 1) == 0)
  {
    return v3(result);
  }

  return result;
}

uint64_t sub_1005471D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_100547220(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10054727C()
{
  result = qword_101194678;
  if (!qword_101194678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101194678);
  }

  return result;
}

unint64_t sub_1005472D0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  if (qword_10117F898 != -1)
  {
    swift_once();
  }

  v6 = qword_101219020;
  v7 = objc_allocWithZone(type metadata accessor for WaveformPlayIndicator());
  v8 = WaveformPlayIndicator.init(settings:)(v6);
  WaveformPlayIndicator.colorPalette.setter(v2, v3, v4, v5);
  if (v1)
  {
    v9 = 1;
  }

  else
  {
    v9 = 3;
  }

  WaveformPlayIndicator.mode.setter(v9);
  return v8;
}

void sub_1005473A8()
{
  v1 = *v0;
  WaveformPlayIndicator.colorPalette.setter(v0[1], v0[2], v0[3], v0[4]);
  if (v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 3;
  }

  WaveformPlayIndicator.mode.setter(v2);
}

uint64_t sub_100547428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100547518();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10054748C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100547518();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1005474F0()
{
  sub_100547518();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_100547518()
{
  result = qword_101194680;
  if (!qword_101194680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101194680);
  }

  return result;
}

unint64_t sub_100547580()
{
  result = qword_101194688;
  if (!qword_101194688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101194688);
  }

  return result;
}

void sub_10054761C()
{
  type metadata accessor for MusicLibrary();
  if (v0 <= 0x3F)
  {
    sub_10005BAFC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100547710()
{
  result = type metadata accessor for DragDropToFolder.Origin(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1005477AC()
{
  result = type metadata accessor for Playlist.Folder.Item();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

Swift::Int sub_100547818()
{
  Hasher.init(_seed:)();
  Playlist.Folder.Item.id.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100547874()
{
  Playlist.Folder.Item.id.getter();
  String.hash(into:)();
}

Swift::Int sub_1005478C4()
{
  Hasher.init(_seed:)();
  Playlist.Folder.Item.id.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10054791C()
{
  v0 = Playlist.Folder.Item.id.getter();
  v2 = v1;
  if (v0 == Playlist.Folder.Item.id.getter() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v4 & 1;
}

uint64_t sub_1005479F0(uint64_t a1)
{
  result = sub_100547A48(&qword_101194850, type metadata accessor for DragDropToFolder.Origin);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100547A48(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_100547A90(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MusicAuthorization.Status();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v21 - v9;
  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  v11 = static MusicLibrary.== infix(_:_:)();

  if ((v11 & 1) == 0)
  {
    return 0;
  }

  static MusicAuthorization.currentStatus.getter();
  (*(v5 + 104))(v7, enum case for MusicAuthorization.Status.authorized(_:), v4);
  sub_100547A48(&unk_1011948E0, &type metadata accessor for MusicAuthorization.Status);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v21[4] == v21[2] && v21[5] == v21[3])
  {
    v12 = *(v5 + 8);
    v12(v7, v4);
    v12(v10, v4);

    goto LABEL_6;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v14 = *(v5 + 8);
  v14(v7, v4);
  v14(v10, v4);

  if ((v13 & 1) == 0)
  {
    return 0;
  }

LABEL_6:
  v15 = 0;
  v16 = *(a1 + 16);
  do
  {
    v17 = v16 == v15;
    if (v16 == v15)
    {
      break;
    }

    v18 = *(type metadata accessor for DragDropToFolder(0) - 8);
    v19 = sub_100547D74(a1 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v15++, v2);
  }

  while ((v19 & 1) != 0);
  return v17;
}

uint64_t sub_100547D74(uint64_t a1, char *a2)
{
  v93 = a1;
  v94 = a2;
  v2 = type metadata accessor for Playlist.Folder();
  v92 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&unk_10118F670);
  __chkstk_darwin(v5 - 8);
  v7 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v79 = &v79 - v9;
  v81 = type metadata accessor for MusicLibrary.AddAction.UnsupportedReason();
  v83 = *(v81 - 8);
  __chkstk_darwin(v81);
  v80 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v82 = &v79 - v12;
  v13 = type metadata accessor for MusicLibrary.AddAction();
  v84 = *(v13 - 8);
  v85 = v13;
  __chkstk_darwin(v13);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10010FC20(&unk_101193E20);
  v17 = *(v16 - 8);
  v86 = v16;
  v87 = v17;
  __chkstk_darwin(v16);
  v19 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v91 = &v79 - v21;
  v22 = type metadata accessor for Playlist();
  v88 = *(v22 - 8);
  v89 = v22;
  __chkstk_darwin(v22);
  v90 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Playlist.Folder.Item();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DragDropToFolder.Origin(0);
  __chkstk_darwin(v28 - 8);
  v30 = &v79 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10054AEC4(v93, v30, type metadata accessor for DragDropToFolder.Origin);
  (*(v25 + 32))(v27, v30, v24);
  v31 = (*(v25 + 88))(v27, v24);
  if (v31 == enum case for Playlist.Folder.Item.folder(_:))
  {
    (*(v25 + 96))(v27, v24);
    v32 = v92;
    (*(v92 + 32))(v4, v27, v2);
    v33 = Playlist.Folder.id.getter();
    v35 = v34;
    v36 = type metadata accessor for DragDropToFolder.Destination(0);
    sub_1000089F8(&v94[*(v36 + 20)], v7, &unk_10118F670);
    if ((*(v32 + 48))(v7, 1, v2) == 1)
    {
      sub_1000095E8(v7, &unk_10118F670);

      v37 = 1;
      (*(v32 + 8))(v4, v2);
    }

    else
    {
      v94 = v4;
      v55 = Playlist.Folder.id.getter();
      v57 = v56;
      v58 = *(v32 + 8);
      v58(v7, v2);
      if (v33 == v55 && v35 == v57)
      {

        v37 = 0;
      }

      else
      {
        v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v37 = v59 ^ 1;
      }

      v58(v94, v2);
    }

    return v37 & 1;
  }

  v38 = v94;
  v93 = v2;
  if (v31 != enum case for Playlist.Folder.Item.playlist(_:))
  {
    (*(v25 + 8))(v27, v24);
LABEL_21:
    v37 = 0;
    return v37 & 1;
  }

  (*(v25 + 96))(v27, v24);
  v39 = v88;
  v40 = v89;
  v41 = v90;
  (*(v88 + 32))(v90, v27, v89);
  static MusicLibraryAction<>.add.getter();
  v42 = v91;
  v43 = v85;
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v84 + 8))(v15, v43);
  v44 = v86;
  v45 = v87;
  (*(v87 + 16))(v19, v42, v86);
  v46 = (*(v45 + 88))(v19, v44);
  if (v46 != enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    v60 = v46;
    v61 = v44;
    v62 = enum case for MusicLibrary.SupportedStatus.supported<A>(_:);
    (*(v39 + 8))(v41, v40);
    v63 = *(v45 + 8);
    if (v60 != v62)
    {
      v63(v19, v61);
    }

    v63(v91, v61);
    goto LABEL_21;
  }

  (*(v45 + 96))(v19, v44);
  v48 = v82;
  v47 = v83;
  v49 = v19;
  v50 = v81;
  (*(v83 + 32))(v82, v49, v81);
  v51 = v80;
  (*(v47 + 16))(v80, v48, v50);
  v52 = (*(v47 + 88))(v51, v50);
  if (v52 == enum case for MusicLibrary.AddAction.UnsupportedReason.unaddable(_:))
  {
    v53 = v44;
    (*(v88 + 8))(v90, v89);
    v54 = *(v47 + 8);
    v54(v51, v50);
LABEL_20:
    v54(v48, v50);
    (*(v45 + 8))(v91, v53);
    goto LABEL_21;
  }

  if (v52 == enum case for MusicLibrary.AddAction.UnsupportedReason.unsupportedType(_:))
  {
    v53 = v44;
    (*(v88 + 8))(v90, v89);
    v54 = *(v47 + 8);
    goto LABEL_20;
  }

  if (v52 != enum case for MusicLibrary.AddAction.UnsupportedReason.alreadyAdded(_:) && v52 != enum case for MusicLibrary.AddAction.UnsupportedReason.networkRequired(_:))
  {
    (*(v88 + 8))(v90, v89);
    v65 = *(v47 + 8);
    v65(v51, v50);
    v65(v48, v50);
    (*(v45 + 8))(v91, v44);
    goto LABEL_21;
  }

  v66 = v44;
  v67 = Playlist.id.getter();
  v69 = v68;
  v70 = type metadata accessor for DragDropToFolder.Destination(0);
  v71 = v79;
  sub_1000089F8(&v38[*(v70 + 20)], v79, &unk_10118F670);
  v73 = v92;
  v72 = v93;
  if ((*(v92 + 48))(v71, 1, v93) == 1)
  {
    sub_1000095E8(v71, &unk_10118F670);

    v37 = 1;
  }

  else
  {
    v74 = Playlist.Folder.id.getter();
    v76 = v75;
    (*(v73 + 8))(v71, v72);
    if (v67 == v74 && v69 == v76)
    {

      v37 = 0;
    }

    else
    {
      v77 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v37 = v77 ^ 1;
    }

    v45 = v87;
  }

  v78 = v82;
  (*(v88 + 8))(v90, v89);
  (*(v83 + 8))(v78, v50);
  (*(v45 + 8))(v91, v66);
  return v37 & 1;
}

uint64_t sub_100548830(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v4 = type metadata accessor for Playlist.Folder();
  v3[17] = v4;
  v5 = *(v4 - 8);
  v3[18] = v5;
  v3[19] = *(v5 + 64);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = type metadata accessor for Notice.Variant(0);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v6 = type metadata accessor for Notice(0);
  v3[26] = v6;
  v3[27] = *(v6 - 8);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v7 = type metadata accessor for Playlist.Folder.Item();
  v3[30] = v7;
  v3[31] = *(v7 - 8);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = *(sub_10010FC20(&qword_1011831B0) - 8);
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = sub_10010FC20(&unk_10118F670);
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v8 = type metadata accessor for DragDropToFolder.Destination(0);
  v3[46] = v8;
  v9 = *(v8 - 8);
  v3[47] = v9;
  v3[48] = *(v9 + 64);
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();

  return _swift_task_switch(sub_100548B90, 0, 0);
}

uint64_t sub_100548B90()
{
  v26 = v0;
  if (qword_10117F268 != -1)
  {
    swift_once();
  }

  v1 = v0[50];
  v2 = v0[16];
  v3 = type metadata accessor for Logger();
  sub_1000060E4(v3, qword_1012186C8);
  sub_10054AEC4(v2, v1, type metadata accessor for DragDropToFolder.Destination);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[50];
  if (v6)
  {
    v8 = v0[45];
    v9 = v0[46];
    v10 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v10 = 136446466;
    type metadata accessor for DragDropToFolder(0);
    v11 = Array.description.getter();
    v13 = sub_1000105AC(v11, v12, &v25);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2082;
    sub_1000089F8(v7 + *(v9 + 20), v8, &unk_10118F670);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    sub_10054ADFC(v7, type metadata accessor for DragDropToFolder.Destination);
    v17 = sub_1000105AC(v14, v16, &v25);

    *(v10 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "Received intents=%{public}s for drop to folder=%{public}s", v10, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10054ADFC(v7, type metadata accessor for DragDropToFolder.Destination);
  }

  v18 = v0[49];
  v19 = v0[47];
  sub_10054AEC4(v0[16], v18, type metadata accessor for DragDropToFolder.Destination);
  v20 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v21 = swift_allocObject();
  v0[51] = v21;
  sub_10054AE5C(v18, v21 + v20, type metadata accessor for DragDropToFolder.Destination);
  v22 = swift_task_alloc();
  v0[52] = v22;
  *v22 = v0;
  v22[1] = sub_100548EF0;
  v23 = v0[15];

  return sub_1007191B4(&unk_100ED2580, v21, v23);
}

uint64_t sub_100548EF0(uint64_t a1)
{
  *(*v2 + 424) = a1;

  if (v1)
  {
  }

  else
  {

    return _swift_task_switch(sub_100549030, 0, 0);
  }
}

uint64_t sub_100549030()
{
  v1 = v0;
  v2 = v0[53];
  v3 = *(v2 + 16);
  if (!v3)
  {

    v9 = _swiftEmptyArrayStorage;
    v22 = _swiftEmptyArrayStorage[2];
    if (v22)
    {
      goto LABEL_12;
    }

LABEL_26:

LABEL_27:
    (*(v1[27] + 56))(v1[14], 1, 1, v1[26]);
LABEL_42:

    v89 = v1[1];

    return v89();
  }

  v4 = v0[37];
  v5 = v0[31];
  v6 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v7 = *(v4 + 72);
  v8 = (v5 + 48);
  v112 = v5;
  v113 = (v5 + 32);
  v9 = _swiftEmptyArrayStorage;
  v10 = &qword_1011831B0;
  do
  {
    v11 = v9;
    v13 = v1[38];
    v12 = v1[39];
    v14 = v115[30];
    sub_1000089F8(v6, v12, v10);
    sub_10054AD8C(v12, v13);
    v15 = v14;
    v1 = v115;
    if ((*v8)(v13, 1, v15) == 1)
    {
      sub_1000095E8(v115[38], v10);
      v9 = v11;
    }

    else
    {
      v16 = v10;
      v17 = *v113;
      (*v113)(v115[35], v115[38], v115[30]);
      v9 = v11;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_100498F10(0, v11[2] + 1, 1, v11);
      }

      v19 = v9[2];
      v18 = v9[3];
      if (v19 >= v18 >> 1)
      {
        v9 = sub_100498F10(v18 > 1, v19 + 1, 1, v9);
      }

      v20 = v115[35];
      v21 = v115[30];
      v9[2] = v19 + 1;
      v17(v9 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v19, v20, v21);
      v10 = v16;
    }

    v6 += v7;
    --v3;
  }

  while (v3);

  v22 = v9[2];
  if (!v22)
  {
    goto LABEL_26;
  }

LABEL_12:
  v114 = 0;
  v23 = v1[31];
  v24 = *(v23 + 16);
  v23 += 16;
  v25 = v9 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
  v107 = *(v23 + 56);
  v110 = (v23 + 16);
  v111 = v24;
  v109 = (v23 + 72);
  v106 = enum case for Playlist.Folder.Item.playlist(_:);
  v108 = (v23 - 8);
  v26 = v25;
  v27 = v22;
  while (1)
  {
    v28 = v115[36];
    v29 = v115[33];
    v30 = v115[30];
    v111(v28, v26, v30);
    v31 = *v110;
    (*v110)(v29, v28, v30);
    v32 = *v109;
    v33 = (*v109)(v29, v30) == v106;
    v34 = *v108;
    v35 = (*v108)(v29, v30);
    v38 = __OFADD__(v114, v33);
    v114 += v33;
    if (v38)
    {
      break;
    }

    v26 += v107;
    if (!--v22)
    {
      v39 = enum case for Playlist.Folder.Item.folder(_:);
      do
      {
        v40 = v115[34];
        v41 = v115[32];
        v42 = v115[30];
        v111(v40, v25, v42);
        v31(v41, v40, v42);
        v43 = v32(v41, v42) == v39;
        v35 = v34(v41, v42);
        v38 = __OFADD__(v22, v43);
        v22 += v43;
        if (v38)
        {
          goto LABEL_52;
        }

        v25 += v107;
        --v27;
      }

      while (v27);

      if (v114)
      {
        if (v22)
        {
          v44 = 1;
        }

        else
        {
          v44 = v114 < 2;
        }

        v1 = v115;
        if (!v44)
        {
          v45 = v115[43];
          v46 = v115[17];
          v47 = v115[18];
          sub_1000089F8(v115[16] + *(v115[46] + 20), v45, &unk_10118F670);
          v48 = *(v47 + 48);
          v49 = v48(v45, 1, v46);
          v50 = v115[43];
          if (v49 == 1)
          {
            sub_1000095E8(v115[43], &unk_10118F670);
            v51 = 0;
            v52 = 0;
          }

          else
          {
            v72 = v115[17];
            v73 = v115[18];
            v51 = Playlist.Folder.name.getter();
            v52 = v74;
            (*(v73 + 8))(v50, v72);
          }

          v71 = v115 + 24;
          v75 = v115[24];
          *v75 = v114;
          v75[1] = v51;
          v75[2] = v52;
LABEL_40:
          swift_storeEnumTagMultiPayload();
          v80 = *v71;
          v81 = v1[46];
          v82 = v1[41];
          v84 = v1[16];
          v83 = v1[17];
          static Notice.variant(_:)(v80, v1[29]);
          sub_10054ADFC(v80, type metadata accessor for Notice.Variant);
          sub_1000089F8(v84 + *(v81 + 20), v82, &unk_10118F670);
          if (v48(v82, 1, v83) == 1)
          {
            v85 = v1[29];
            v86 = v1[26];
            v87 = v1[27];
            v88 = v1[14];
            sub_1000095E8(v1[41], &unk_10118F670);
            sub_10054AE5C(v85, v88, type metadata accessor for Notice);
            (*(v87 + 56))(v88, 0, 1, v86);
            goto LABEL_42;
          }

          v91 = v1[46];
          v92 = v1[41];
          v93 = v1[28];
          v94 = v1[29];
          v95 = v1[21];
          v96 = v1[17];
          v97 = v1[18];
          v98 = v1[16];
          v99 = *(v97 + 32);
          v1[54] = v99;
          v1[55] = (v97 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
          v99(v95, v92, v96);
          sub_10054AEC4(v94, v93, type metadata accessor for Notice);
          sub_10012B7A8(v98 + *(v91 + 24), (v1 + 2));
          Strong = swift_unknownObjectWeakLoadStrong();
          v1[56] = Strong;
          sub_10012BA6C((v1 + 2));
          if (Strong)
          {
            type metadata accessor for MainActor();
            v1[57] = static MainActor.shared.getter();
            v101 = dispatch thunk of Actor.unownedExecutor.getter();
            v103 = v102;
            v104 = sub_1005499EC;
          }

          else
          {
            v1[59] = 0;
            type metadata accessor for MainActor();
            v1[60] = static MainActor.shared.getter();
            v101 = dispatch thunk of Actor.unownedExecutor.getter();
            v103 = v105;
            v104 = sub_100549AFC;
          }

          v35 = v104;
          v36 = v101;
          v37 = v103;

          return _swift_task_switch(v35, v36, v37);
        }
      }

      else
      {
        v1 = v115;
        if (!v22)
        {
          goto LABEL_27;
        }

        if (v22 >= 2)
        {
          v53 = v115[44];
          v54 = v115[17];
          v55 = v115[18];
          sub_1000089F8(v115[16] + *(v115[46] + 20), v53, &unk_10118F670);
          v48 = *(v55 + 48);
          v56 = v48(v53, 1, v54);
          v57 = v115[44];
          if (v56 == 1)
          {
            sub_1000095E8(v115[44], &unk_10118F670);
            v58 = 0;
            v59 = 0;
          }

          else
          {
            v76 = v115[17];
            v77 = v115[18];
            v58 = Playlist.Folder.name.getter();
            v59 = v78;
            (*(v77 + 8))(v57, v76);
          }

          v71 = v115 + 25;
          v79 = v115[25];
          *v79 = v22;
          v79[1] = v58;
          v79[2] = v59;
          goto LABEL_40;
        }
      }

      v60 = v1[42];
      v61 = v1[17];
      v62 = v1[18];
      sub_1000089F8(v1[16] + *(v1[46] + 20), v60, &unk_10118F670);
      v48 = *(v62 + 48);
      v63 = v48(v60, 1, v61);
      v64 = v1[42];
      if (v63 == 1)
      {
        sub_1000095E8(v1[42], &unk_10118F670);
        v65 = 0;
        v66 = 0;
      }

      else
      {
        v67 = v1[17];
        v68 = v1[18];
        v65 = Playlist.Folder.name.getter();
        v66 = v69;
        (*(v68 + 8))(v64, v67);
      }

      v71 = v1 + 23;
      v70 = v1[23];
      *v70 = v65;
      v70[1] = v66;
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
  return _swift_task_switch(v35, v36, v37);
}

uint64_t sub_1005499EC()
{
  v1 = *(v0 + 448);

  *(v0 + 464) = sub_10003169C();

  return _swift_task_switch(sub_100549A60, 0, 0);
}

uint64_t sub_100549A60()
{
  v0[59] = v0[58];
  type metadata accessor for MainActor();
  v0[60] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100549AFC, v2, v1);
}

uint64_t sub_100549AFC()
{
  v1 = v0[59];
  v2 = v0[54];
  v13 = v0[28];
  v14 = v0[26];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[18];
  v6 = v0[19];
  v7 = v0[17];
  v8 = v0[14];

  (*(v5 + 16))(v4, v3, v7);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  v2(v10 + v9, v4, v7);
  *(v10 + ((v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;
  sub_10054AE5C(v13, v8, type metadata accessor for Notice);
  v11 = (v8 + *(v14 + 32));
  sub_100020438(*v11);
  *v11 = sub_10035B02C;
  v11[1] = v10;

  return _swift_task_switch(sub_100549C4C, 0, 0);
}

uint64_t sub_100549C4C()
{
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  v4 = v0[14];
  (*(v0[18] + 8))(v0[21], v0[17]);
  sub_10054ADFC(v1, type metadata accessor for Notice);
  (*(v3 + 56))(v4, 0, 1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100549E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  v3[22] = sub_10010FC20(&unk_10118F670);
  v3[23] = swift_task_alloc();
  v3[24] = type metadata accessor for DragDropToFolder.Destination(0);
  v3[25] = swift_task_alloc();
  type metadata accessor for DragDropToFolder.Origin(0);
  v3[26] = swift_task_alloc();
  v4 = type metadata accessor for Playlist.Folder.Item();
  v3[27] = v4;
  v3[28] = *(v4 - 8);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();

  return _swift_task_switch(sub_100549F7C, 0, 0);
}

uint64_t sub_100549F7C()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v4 = *(v0 + 208);
  v5 = *(v0 + 192);
  v6 = *(v0 + 168);
  sub_10054AEC4(*(v0 + 160), v4, type metadata accessor for DragDropToFolder.Origin);
  v7 = *(v3 + 32);
  *(v0 + 248) = v7;
  *(v0 + 256) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v7(v1, v4, v2);
  v8 = *(v5 + 20);
  *(v0 + 280) = v8;
  v9 = swift_task_alloc();
  *(v0 + 264) = v9;
  *v9 = v0;
  v9[1] = sub_10054A084;

  return sub_100354500(v6 + v8);
}

uint64_t sub_10054A084(char a1)
{
  *(*v1 + 284) = a1;

  return _swift_task_switch(sub_10054A184, 0, 0);
}

uint64_t sub_10054A184()
{
  v36 = v0;
  if (*(v0 + 284) == 1)
  {
    v1 = *(v0 + 280);
    v2 = *(v0 + 168);
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
    *(v0 + 16) = 0u;
    *(v0 + 80) = 1;
    *(v0 + 88) = 0;
    *(v0 + 96) = 0;
    *(v0 + 104) = 0;
    v3 = swift_task_alloc();
    *(v0 + 272) = v3;
    *v3 = v0;
    v3[1] = sub_10054A5C4;

    return sub_1003566B8(v2 + v1, v0 + 16);
  }

  else
  {
    if (qword_10117F268 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 232);
    v6 = *(v0 + 240);
    v7 = *(v0 + 216);
    v8 = *(v0 + 224);
    v9 = *(v0 + 200);
    v10 = *(v0 + 168);
    v11 = type metadata accessor for Logger();
    sub_1000060E4(v11, qword_1012186C8);
    (*(v8 + 16))(v5, v6, v7);
    sub_10054AEC4(v10, v9, type metadata accessor for DragDropToFolder.Destination);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 232);
    v16 = *(v0 + 240);
    v17 = *(v0 + 216);
    v18 = *(v0 + 224);
    v19 = *(v0 + 200);
    if (v14)
    {
      v32 = *(v0 + 192);
      v33 = *(v0 + 184);
      v34 = *(v0 + 240);
      v20 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v20 = 136446466;
      sub_10048D214((v0 + 112));
      sub_10010FC20(&unk_10118AB50);
      v21 = String.init<A>(describing:)();
      v23 = v22;
      v24 = *(v18 + 8);
      v24(v15, v17);
      v25 = sub_1000105AC(v21, v23, &v35);

      *(v20 + 4) = v25;
      *(v20 + 12) = 2082;
      sub_1000089F8(v19 + *(v32 + 20), v33, &unk_10118F670);
      v26 = String.init<A>(describing:)();
      v28 = v27;
      sub_10054ADFC(v19, type metadata accessor for DragDropToFolder.Destination);
      v29 = sub_1000105AC(v26, v28, &v35);

      *(v20 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v12, v13, "Cannot move item=%{public}s to folder=%{public}s", v20, 0x16u);
      swift_arrayDestroy();

      v24(v34, v17);
    }

    else
    {

      sub_10054ADFC(v19, type metadata accessor for DragDropToFolder.Destination);
      v30 = *(v18 + 8);
      v30(v15, v17);
      v30(v16, v17);
    }

    (*(*(v0 + 224) + 56))(*(v0 + 152), 1, 1, *(v0 + 216));

    v31 = *(v0 + 8);

    return v31();
  }
}

uint64_t sub_10054A5C4(char a1)
{
  v2 = *v1;
  *(v2 + 285) = a1;

  sub_1000095E8(v2 + 16, &unk_1011845E0);

  return _swift_task_switch(sub_10054A6DC, 0, 0);
}

uint64_t sub_10054A6DC()
{
  if (*(v0 + 285) == 1)
  {
    (*(v0 + 248))(*(v0 + 152), *(v0 + 240), *(v0 + 216));
    v1 = 0;
  }

  else
  {
    (*(*(v0 + 224) + 8))(*(v0 + 240), *(v0 + 216));
    v1 = 1;
  }

  (*(*(v0 + 224) + 56))(*(v0 + 152), v1, 1, *(v0 + 216));

  v2 = *(v0 + 8);

  return v2();
}

void sub_10054A7DC()
{
  v1 = sub_10010FC20(&unk_10118F670);
  __chkstk_darwin(v1 - 8);
  v3 = v7 - v2;
  v7[1] = *v0;
  type metadata accessor for MusicLibrary();
  sub_100547A48(&qword_101180378, &type metadata accessor for MusicLibrary);
  dispatch thunk of Hashable.hash(into:)();
  v4 = type metadata accessor for DragDropToFolder.Destination(0);
  sub_1000089F8(v0 + *(v4 + 20), v3, &unk_10118F670);
  v5 = type metadata accessor for Playlist.Folder();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_1000095E8(v3, &unk_10118F670);
    Hasher._combine(_:)(0);
  }

  else
  {
    Playlist.Folder.id.getter();
    (*(v6 + 8))(v3, v5);
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }
}

id sub_10054A9C0()
{
  v0 = objc_allocWithZone(UICollectionViewDropProposal);

  return [v0 initWithDropOperation:3 intent:2];
}

uint64_t sub_10054AA04(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002F3F4;

  return sub_100548830(a1, a2);
}

Swift::Int sub_10054AAAC()
{
  Hasher.init(_seed:)();
  sub_10054A7DC();
  return Hasher._finalize()();
}

Swift::Int sub_10054AAF0()
{
  Hasher.init(_seed:)();
  sub_10054A7DC();
  return Hasher._finalize()();
}

uint64_t sub_10054ABC0(uint64_t a1)
{
  result = sub_100547A48(&qword_101194898, type metadata accessor for DragDropToFolder.Destination);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10054ACA8(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for DragDropToFolder.Destination(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10002F3F4;

  return sub_100549E14(a1, a2, v2 + v7);
}

uint64_t sub_10054AD8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011831B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10054ADFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10054AE5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10054AEC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10054AF2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Playlist.Folder();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_10118F670);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - v9;
  v11 = sub_10010FC20(&qword_1011831A8);
  __chkstk_darwin(v11);
  v13 = &v22 - v12;
  type metadata accessor for MusicLibrary();
  if ((static MusicLibrary.== infix(_:_:)() & 1) == 0)
  {
    v18 = 0;
    return v18 & 1;
  }

  v23 = v7;
  v14 = v5;
  v15 = *(type metadata accessor for DragDropToFolder.Destination(0) + 20);
  v16 = *(v11 + 48);
  sub_1000089F8(a1 + v15, v13, &unk_10118F670);
  sub_1000089F8(a2 + v15, &v13[v16], &unk_10118F670);
  v17 = *(v14 + 48);
  if (v17(v13, 1, v4) != 1)
  {
    sub_1000089F8(v13, v10, &unk_10118F670);
    if (v17(&v13[v16], 1, v4) != 1)
    {
      v19 = v23;
      (*(v14 + 32))(v23, &v13[v16], v4);
      sub_100547A48(&unk_1011828D0, &type metadata accessor for Playlist.Folder);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v20 = *(v14 + 8);
      v20(v19, v4);
      v20(v10, v4);
      sub_1000095E8(v13, &unk_10118F670);
      return v18 & 1;
    }

    (*(v14 + 8))(v10, v4);
    goto LABEL_8;
  }

  if (v17(&v13[v16], 1, v4) != 1)
  {
LABEL_8:
    sub_1000095E8(v13, &qword_1011831A8);
    v18 = 0;
    return v18 & 1;
  }

  sub_1000095E8(v13, &unk_10118F670);
  v18 = 1;
  return v18 & 1;
}

void *sub_10054B328()
{
  v1 = v0;
  v2 = type metadata accessor for URLQueryItem();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&qword_101194980);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v9 = type metadata accessor for URLComponents();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 mediaContainer];
  if (result)
  {
    v15 = result;
    v16 = [result identifier];

    if (!v16)
    {
      return 0;
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    URLComponents.init(string:)();

    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_10054CD5C(v8);
      return 0;
    }

    (*(v10 + 32))(v13, v8, v9);
    result = URLComponents.queryItems.getter();
    if (!result)
    {
      (*(v10 + 8))(v13, v9);
      return 0;
    }

    v17 = result;
    v32 = result[2];
    if (!v32)
    {
      (*(v10 + 8))(v13, v9);

      return 0;
    }

    v28 = v13;
    v29 = v10;
    v18 = 0;
    v19 = result + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v30 = v9;
    v31 = v19;
    v20 = (v3 + 8);
    while (1)
    {
      if (v18 >= v17[2])
      {
        __break(1u);
        return result;
      }

      (*(v3 + 16))(v5, &v31[*(v3 + 72) * v18], v2);
      if (URLQueryItem.name.getter() == 0xD000000000000014 && 0x8000000100E4F0B0 == v21)
      {
      }

      else
      {
        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v22 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      v23 = URLQueryItem.value.getter();
      if (!v24)
      {
LABEL_8:
        result = (*v20)(v5, v2);
        goto LABEL_9;
      }

      if (v23 == 1702195828 && v24 == 0xE400000000000000)
      {

        (*v20)(v5, v2);
LABEL_26:
        v26 = 1;
LABEL_27:

        (*(v29 + 8))(v28, v30);
        return v26;
      }

      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      result = (*v20)(v5, v2);
      if (v25)
      {
        goto LABEL_26;
      }

LABEL_9:
      if (v32 == ++v18)
      {
        v26 = 0;
        goto LABEL_27;
      }
    }
  }

  return result;
}

void sub_10054B770(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, void (*a5)(void), uint64_t a6)
{
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 == 15)
  {
    v16 = Logger.siriIntents.unsafeMutableAddressor();
    (*(v13 + 16))(v15, v16, v12);
    v17 = a4;
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *&v45 = v40;
      *v20 = 136446466;
      v21 = v17;
      v22 = [v21 description];
      v42 = a5;
      v23 = v22;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = a6;
      v25 = v24;
      v39 = v12;
      v27 = v26;

      v28 = sub_1000105AC(v25, v27, &v45);

      *(v20 + 4) = v28;
      *(v20 + 12) = 2082;
      *&v44[0] = a3;
      swift_errorRetain();
      sub_10010FC20(&qword_101194978);
      v29 = String.init<A>(describing:)();
      v31 = sub_1000105AC(v29, v30, &v45);
      a5 = v42;

      *(v20 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v18, v19, "Failed to get playback queue for intent=%{public}s error=%{public}s", v20, 0x16u);
      swift_arrayDestroy();

      (*(v13 + 8))(v15, v39);
    }

    else
    {

      (*(v13 + 8))(v15, v12);
    }

    v36 = [objc_allocWithZone(INPlayMediaIntentResponse) initWithCode:6 userActivity:0];
    a5();
    goto LABEL_8;
  }

  if (kMRMediaRemoteOptionSystemAppPlaybackQueueData)
  {
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;
    v46 = &type metadata for Data;
    *&v45 = a1;
    *(&v45 + 1) = a2;
    sub_100016270(&v45, v44);
    sub_10002D6A4(a1, a2);
    sub_10002BC44(a1, a2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = _swiftEmptyDictionarySingleton;
    sub_1006C5E68(v44, v32, v34, isUniquelyReferenced_nonNull_native);

    v36 = [objc_allocWithZone(INPlayMediaIntentResponse) initWithCode:1 userActivity:0];
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v36 setNowPlayingInfo:isa];

    (a5)(v36);
    sub_100029CA4(a1, a2);
LABEL_8:

    return;
  }

  __break(1u);
}

uint64_t sub_10054BB74(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_100029CA4(v4, v8);
}

id sub_10054BCE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaIntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10054BD40(void *a1, void *a2, uint64_t a3)
{
  v65 = a2;
  v5 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v5 - 8);
  v69 = &v58 - v6;
  v63 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v63);
  v64 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for PlaybackIntentDescriptor(0);
  v67 = *(v66 - 8);
  __chkstk_darwin(v66);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v8;
  __chkstk_darwin(v10);
  v12 = &v58 - v11;
  v13 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v75 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v74 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v58 - v20;
  v22 = Logger.siriIntents.unsafeMutableAddressor();
  v76 = v17;
  v23 = *(v17 + 16);
  v71 = v22;
  v72 = v17 + 16;
  v70 = v23;
  v23(v21);
  v24 = a1;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  LODWORD(v73) = v26;
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v62 = v13;
    v28 = v27;
    v58 = v27;
    v59 = swift_slowAlloc();
    *&v78[0] = v59;
    *v28 = 136446210;
    v29 = v24;
    v61 = v14;
    v30 = v29;
    v31 = [v29 description];
    v32 = v24;
    v33 = v9;
    v34 = v12;
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = a3;
    v37 = v36;

    v14 = v61;
    v38 = v35;
    v12 = v34;
    v9 = v33;
    v24 = v32;
    v39 = sub_1000105AC(v38, v37, v78);
    a3 = v60;

    v40 = v58;
    *(v58 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v25, v73, "Will handle intent=%{public}s", v40, 0xCu);
    sub_10000959C(v59);

    v13 = v62;
  }

  v73 = *(v76 + 8);
  v73(v21, v16);
  v41 = v24;
  v42 = v75;
  MusicPlaybackIntentDescriptor.init(from:)();
  v43 = [objc_allocWithZone(INPlayMediaIntentResponse) initWithCode:4 userActivity:0];
  (*(a3 + 16))(a3, v43);

  v44 = v64;
  (*(v14 + 16))(v64, v42, v13);
  swift_storeEnumTagMultiPayload();
  v79 = 0;
  memset(v78, 0, sizeof(v78));
  v77[0] = v65;
  v45 = v65;
  v46 = String.init<A>(reflecting:)();
  v77[3] = &type metadata for Player.CommandIssuerIdentity;
  v77[4] = &protocol witness table for Player.CommandIssuerIdentity;
  v77[0] = v46;
  v77[1] = v47;
  PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v44, v78, 3, 0, 0, 1, 0, 1, v12, 0, v77);
  v48 = MPCPlaybackIntent.PlayActivityInformation.init(featureName:recommendationData:)(0x6E6F642D69726973, 0xEE00736E6F697461, 0, 0xF000000000000000);
  PlaybackIntentDescriptor.playActivityInformation.setter(v48, v49, v50, v51);
  v12[*(v66 + 40)] = 1;
  v52 = type metadata accessor for TaskPriority();
  v53 = v69;
  (*(*(v52 - 8) + 56))(v69, 1, 1, v52);
  sub_1001DFCE4(v12, v9);
  type metadata accessor for MainActor();
  v54 = static MainActor.shared.getter();
  v55 = (*(v67 + 80) + 32) & ~*(v67 + 80);
  v56 = swift_allocObject();
  *(v56 + 16) = v54;
  *(v56 + 24) = &protocol witness table for MainActor;
  sub_1001DFD58(v9, v56 + v55);
  sub_1001F4F78(0, 0, v53, &unk_100ECA700, v56);

  sub_100188CDC(v12);
  return (*(v14 + 8))(v42, v13);
}

uint64_t sub_10054C5B8(void *a1, void (**a2)(void, void))
{
  v4 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v43 = *(v4 - 8);
  v44 = v4;
  __chkstk_darwin(v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  __chkstk_darwin(v9);
  v11 = &v39 - v10;
  v51 = swift_allocObject();
  *(v51 + 16) = a2;
  _Block_copy(a2);
  v12 = Logger.siriIntents.unsafeMutableAddressor();
  v13 = *(v8 + 16);
  v47 = v12;
  v48 = v8 + 16;
  v46 = v13;
  v13(v11);
  v14 = a1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  LODWORD(v45) = v16;
  v50 = v15;
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v40 = v17;
    v41 = swift_slowAlloc();
    aBlock[0] = v41;
    *v17 = 136446210;
    v18 = v14;
    v19 = [v18 description];
    v42 = v14;
    v20 = v8;
    v21 = v7;
    v22 = v19;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = a2;
    v24 = v23;
    v26 = v25;

    v7 = v21;
    v8 = v20;
    v14 = v42;
    v27 = v24;
    a2 = v49;
    v28 = sub_1000105AC(v27, v26, aBlock);

    v29 = v40;
    *(v40 + 1) = v28;
    v30 = v50;
    _os_log_impl(&_mh_execute_header, v50, v45, "Will confirm intent=%{public}s", v29, 0xCu);
    sub_10000959C(v41);
  }

  else
  {
  }

  v50 = *(v8 + 8);
  (v50)(v11, v7);
  v31 = v14;
  MusicPlaybackIntentDescriptor.init(from:)();
  v32 = v6;
  if (sub_10054B328())
  {
    v33 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    v34 = swift_allocObject();
    v34[2] = v31;
    v34[3] = sub_10054CD3C;
    v34[4] = v51;
    aBlock[4] = sub_10054CD50;
    aBlock[5] = v34;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10054BB74;
    aBlock[3] = &unk_1010B1E88;
    v35 = _Block_copy(aBlock);
    v36 = v31;

    [v33 getRemotePlaybackQueueDataWithCompletion:v35];
    _Block_release(v35);
  }

  else
  {
    v37 = [objc_allocWithZone(INPlayMediaIntentResponse) initWithCode:1 userActivity:0];
    (a2)[2](a2, v37);
  }

  (*(v43 + 8))(v32, v44);
}

uint64_t sub_10054CD5C(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101194980);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10054CDC4()
{
  v0 = *(**CloudLibrary.StatusObserver.shared.unsafeMutableAddressor() + 168);

  v0(1);
}

uint64_t sub_10054CE38(uint64_t a1)
{
  v2 = v1;
  v4 = _s16ActionButtonViewV5ModelVMa(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LibraryImport.ViewModel(0);
  __chkstk_darwin(v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10054EFD0(v2, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_10054F034(v9, v6, _s16ActionButtonViewV5ModelVMa);
      Hasher._combine(_:)(1uLL);
      sub_10062CB80(a1);
      return sub_10003CCD8(v6, _s16ActionButtonViewV5ModelVMa);
    }

    else
    {
      Hasher._combine(_:)(2uLL);
    }
  }

  v12 = *(v9 + 1);
  v13 = *(v9 + 3);
  v14 = *(v9 + 4);
  Hasher._combine(_:)(0);
  if (!v12)
  {
    Hasher._combine(_:)(0);
    if (v13)
    {
      goto LABEL_6;
    }

LABEL_9:
    Hasher._combine(_:)(0);
    goto LABEL_10;
  }

  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!v13)
  {
    goto LABEL_9;
  }

LABEL_6:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
LABEL_10:
  v15 = 0.0;
  if (v14 != 0.0)
  {
    v15 = v14;
  }

  Hasher._combine(_:)(*&v15);
}

Swift::Int sub_10054D014()
{
  Hasher.init(_seed:)();
  sub_10054CE38(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10054D058()
{
  Hasher.init(_seed:)();
  sub_10054CE38(v1);
  return Hasher._finalize()();
}

uint64_t sub_10054D094(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10010FC20(&qword_10118EB30);
  __chkstk_darwin(v6 - 8);
  v8 = &v38 - v7;
  v9 = sub_10010FC20(&unk_1011A4B90);
  v41 = *(v9 - 8);
  v42 = v9;
  v10 = __chkstk_darwin(v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v38 - v14;
  __chkstk_darwin(v13);
  v17 = &v38 - v16;
  v18 = sub_10010FC20(&qword_101194B88);
  __chkstk_darwin(v18);
  v20 = &v38 - v19;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    v32 = &unk_1011A4B90;
    v33 = a1;
    return sub_1000095E8(v33, v32);
  }

  v39 = v8;
  v40 = v3;
  v43 = a1;
  v21 = *(v3 + 8);
  ObjectType = swift_getObjectType();
  v23 = *(v21 + 8);
  v38 = ObjectType;
  v24 = v23(ObjectType, v21);
  v25 = a2;
  v26 = sub_1005192B8(a2, v24);

  if (v26)
  {
    v27 = *(v18 + 48);
    *v20 = v25;
    sub_10003272C(v43, &v20[v27]);
    v28 = type metadata accessor for LibraryImport.ViewModel(0);
    v29 = (*(*(v28 - 8) + 48))(&v20[v27], 1, v28);
    v30 = v25;
    if (v25)
    {
      if (v25 == 1)
      {
        if (v29 != 1)
        {
          sub_10003272C(&v20[v27], v15);
          if (swift_getEnumCaseMultiPayload() == 2)
          {
            sub_1000095E8(v43, &unk_1011A4B90);
            swift_unknownObjectRelease();
            v31 = v15;
LABEL_18:
            sub_10003CCD8(v31, type metadata accessor for LibraryImport.ViewModel);
            v33 = &v20[v27];
            v32 = &unk_1011A4B90;
            return sub_1000095E8(v33, v32);
          }

          v12 = v15;
          goto LABEL_21;
        }
      }

      else if (v29 != 1)
      {
        sub_10003272C(&v20[v27], v12);
        if (swift_getEnumCaseMultiPayload() <= 1)
        {
          sub_1000095E8(v43, &unk_1011A4B90);
          swift_unknownObjectRelease();
          v31 = v12;
          goto LABEL_18;
        }

        goto LABEL_21;
      }

LABEL_22:
      v35 = v43;
      v36 = v39;
      sub_10003272C(v43, v39);
      (*(v41 + 56))(v36, 0, 1, v42);
      v37 = v40;
      sub_100407A84(v36, v30);
      (*(v21 + 16))(v37, v38, v21);
      swift_unknownObjectRelease();
      sub_1000095E8(v35, &unk_1011A4B90);
      v32 = &qword_101194B88;
      v33 = v20;
      return sub_1000095E8(v33, v32);
    }

    if (v29 == 1)
    {
      goto LABEL_22;
    }

    sub_10003272C(&v20[v27], v17);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v12 = v17;
LABEL_21:
      sub_10003CCD8(v12, type metadata accessor for LibraryImport.ViewModel);
      goto LABEL_22;
    }

    sub_1000095E8(v43, &unk_1011A4B90);
    swift_unknownObjectRelease();
    sub_10003CCD8(v17, type metadata accessor for LibraryImport.ViewModel);
    v33 = &v20[v27];
    v32 = &unk_1011A4B90;
    return sub_1000095E8(v33, v32);
  }

  sub_1000095E8(v43, &unk_1011A4B90);

  return swift_unknownObjectRelease();
}

uint64_t sub_10054D5A8(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_1011A4B90);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v13 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;

    v10 = sub_100366EA8();

    if (v10)
    {
      sub_10003272C(a1, v7);
    }

    else
    {
      v11 = type metadata accessor for LibraryImport.ViewModel(0);
      (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    }

    v12 = OBJC_IVAR____TtCO5Music13LibraryImport8Observer_mliViewModel;
    swift_beginAccess();
    sub_10003272C(v9 + v12, v5);
    swift_beginAccess();
    sub_10054EB04(v7, v9 + v12);
    swift_endAccess();
    sub_10054D8F4(v5, &OBJC_IVAR____TtCO5Music13LibraryImport8Observer_mliViewModel, 1u);

    sub_1000095E8(v5, &unk_1011A4B90);
    return sub_1000095E8(v7, &unk_1011A4B90);
  }

  return result;
}

uint64_t sub_10054D790()
{
  v1 = *(**(v0 + OBJC_IVAR____TtCO5Music13LibraryImport8Observer_cloudLibraryStatusObserver) + 224);

  v1(v0, &off_1010B2008);

  sub_10054F178(v0 + 16);
  sub_1000095E8(v0 + OBJC_IVAR____TtCO5Music13LibraryImport8Observer_cloudLibraryViewModel, &unk_1011A4B90);
  sub_1000095E8(v0 + OBJC_IVAR____TtCO5Music13LibraryImport8Observer_mliViewModel, &unk_1011A4B90);
  sub_1000095E8(v0 + OBJC_IVAR____TtCO5Music13LibraryImport8Observer_inlineBubbleTipViewModel, &unk_1011A4B90);

  return swift_deallocClassInstance();
}

uint64_t sub_10054D8F4(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v26 = a3;
  v6 = type metadata accessor for LibraryImport.ViewModel(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_10010FC20(&unk_1011A4B90);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v25[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v25[-v14];
  v16 = sub_10010FC20(&qword_10118CA98);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v19 = &v25[-v18];
  v20 = *a2;
  swift_beginAccess();
  v21 = *(v17 + 56);
  sub_10003272C(a1, v19);
  sub_10003272C(v3 + v20, &v19[v21]);
  v22 = *(v7 + 48);
  if (v22(v19, 1, v6) == 1)
  {
    if (v22(&v19[v21], 1, v6) == 1)
    {
      return sub_1000095E8(v19, &unk_1011A4B90);
    }

    goto LABEL_6;
  }

  sub_10003272C(v19, v15);
  if (v22(&v19[v21], 1, v6) == 1)
  {
    sub_10003CCD8(v15, type metadata accessor for LibraryImport.ViewModel);
LABEL_6:
    sub_1000095E8(v19, &qword_10118CA98);
LABEL_7:
    sub_10003272C(v3 + v20, v13);
    swift_beginAccess();
    sub_10054D094(v13, v26);
    return swift_endAccess();
  }

  sub_10054F034(&v19[v21], v9, type metadata accessor for LibraryImport.ViewModel);
  v24 = sub_10054EB74(v15, v9);
  sub_10003CCD8(v9, type metadata accessor for LibraryImport.ViewModel);
  sub_10003CCD8(v15, type metadata accessor for LibraryImport.ViewModel);
  result = sub_1000095E8(v19, &unk_1011A4B90);
  if ((v24 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10054DC14@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10010FC20(&qword_101199B50);
  __chkstk_darwin(v4 - 8);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v37 - v8;
  if ((CloudLibrary.Status.shouldDisplayBanner.getter(a1) & 1) == 0)
  {
    goto LABEL_11;
  }

  if (CloudLibrary.Status.shouldShowActionButton.getter(a1))
  {
    v10 = CloudLibrary.Status.message.getter(a1);
    v39 = v11;
    v40 = v10;
    v12 = CloudLibrary.Status.actionTitle.getter(a1);
    v14 = v13;
    v15 = CloudLibrary.Status.action.getter(a1);
    v38 = v16;
    v17 = _s12ClickMetricsVMa(0);
    v18 = *(*(v17 - 8) + 56);
    v18(v9, 1, 1, v17);
    v18(v6, 1, 1, v17);
    v19 = v39;
    *a2 = v40;
    *(a2 + 8) = v19;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = v12;
    *(a2 + 40) = v14;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    if (v15)
    {
      v20 = swift_allocObject();
      v21 = v38;
      *(v20 + 16) = v15;
      *(v20 + 24) = v21;
      v22 = sub_100029B6C;
    }

    else
    {
      v22 = 0;
      v20 = 0;
    }

    v34 = a1 >> 30 != 1 && (a1 >> 30 != 2 || a1 != 2147483652);
    *(a2 + 64) = v22;
    *(a2 + 72) = v20;
    *(a2 + 80) = sub_10054CDC4;
    *(a2 + 88) = 0u;
    *(a2 + 104) = 0u;
    *(a2 + 120) = 0u;
    *(a2 + 136) = 0;
    *(a2 + 144) = v34;
    v35 = _s16ActionButtonViewV5ModelVMa(0);
    sub_10054F09C(v9, a2 + *(v35 + 48));
    sub_10054F09C(v6, a2 + *(v35 + 52));
    v36 = type metadata accessor for LibraryImport.ViewModel(0);
    swift_storeEnumTagMultiPayload();
    return (*(*(v36 - 8) + 56))(a2, 0, 1, v36);
  }

  v23 = a1 >> 30;
  if (a1 >> 30 == 1 || v23 == 2 && a1 == 2147483652)
  {
    v24 = CloudLibrary.Status.message.getter(a1);
    v25 = *(&a1 + 1);
    *a2 = v24;
    *(a2 + 8) = v26;
    if (v23 != 1)
    {
      v25 = 0.0;
    }

    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = v25;
    v27 = type metadata accessor for LibraryImport.ViewModel(0);
    swift_storeEnumTagMultiPayload();
    v28 = *(*(v27 - 8) + 56);
    v29 = a2;
    v30 = 0;
    v31 = v27;
  }

  else
  {
LABEL_11:
    v32 = type metadata accessor for LibraryImport.ViewModel(0);
    v28 = *(*(v32 - 8) + 56);
    v31 = v32;
    v29 = a2;
    v30 = 1;
  }

  return v28(v29, v30, 1, v31);
}

uint64_t sub_10054DFAC(unint64_t a1)
{
  v3 = sub_10010FC20(&unk_1011A4B90);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = *(v1 + OBJC_IVAR____TtCO5Music13LibraryImport8Observer_cloudLibraryStatus);
  v10 = ~*(v1 + OBJC_IVAR____TtCO5Music13LibraryImport8Observer_cloudLibraryStatus);
  *(v1 + OBJC_IVAR____TtCO5Music13LibraryImport8Observer_cloudLibraryStatus) = a1;
  if ((v10 & 0xFFFFFFF8) == 0 || (result = static CloudLibrary.Status.__derived_enum_equals(_:_:)(v9, a1), (result & 1) == 0))
  {
    sub_10054DC14(a1, v8);
    v12 = OBJC_IVAR____TtCO5Music13LibraryImport8Observer_cloudLibraryViewModel;
    swift_beginAccess();
    sub_10003272C(v1 + v12, v5);
    swift_beginAccess();
    sub_10054EB04(v8, v1 + v12);
    swift_endAccess();
    sub_10054D8F4(v5, &OBJC_IVAR____TtCO5Music13LibraryImport8Observer_cloudLibraryViewModel, 0);
    sub_1000095E8(v5, &unk_1011A4B90);
    return sub_1000095E8(v8, &unk_1011A4B90);
  }

  return result;
}

void sub_10054E11C()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_101194B90);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  if (*(v0 + OBJC_IVAR____TtCO5Music13LibraryImport8Observer_inlineBubbleTipProvider))
  {

    dispatch thunk of InlineBubbleTipProvider.$placement.getter();

    swift_allocObject();
    swift_weakInit();
    sub_10054F114();
    v6 = Publisher<>.sink(receiveValue:)();

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v0 + OBJC_IVAR____TtCO5Music13LibraryImport8Observer_inlineBubbleTipObserver);
  *(v1 + OBJC_IVAR____TtCO5Music13LibraryImport8Observer_inlineBubbleTipObserver) = v6;
  if (v7)
  {

    AnyCancellable.cancel()();
  }
}

uint64_t sub_10054E2AC(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_1011A4B90);
  __chkstk_darwin(v2 - 8);
  v4 = &v28[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = (&v28[-1] - v6);
  v8 = type metadata accessor for InlineBubbleTipProvider.Placement();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v28[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    (*(v9 + 16))(v11, a1, v8);
    if ((*(v9 + 88))(v11, v8) == enum case for InlineBubbleTipProvider.Placement.inlineBubbleTip(_:))
    {
      (*(v9 + 96))(v11, v8);
      v14 = *v11;
      *v7 = *v11;
      v15 = type metadata accessor for LibraryImport.ViewModel(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
      v16 = OBJC_IVAR____TtCO5Music13LibraryImport8Observer_inlineBubbleTipViewModel;
      swift_beginAccess();
      sub_10003272C(v13 + v16, v4);
      swift_beginAccess();

      sub_10054EB04(v7, v13 + v16);
      swift_endAccess();
      sub_10054D8F4(v4, &OBJC_IVAR____TtCO5Music13LibraryImport8Observer_inlineBubbleTipViewModel, 2u);
      sub_1000095E8(v4, &unk_1011A4B90);
      sub_1000095E8(v7, &unk_1011A4B90);
      if (qword_10117F750 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_1000060E4(v17, static Logger.libraryView);

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v27 = v14;
        v28[0] = v21;
        *v20 = 136315138;
        type metadata accessor for InlineBubbleTipProvider.InlineBubbleTip();

        v22 = String.init<A>(describing:)();
        v24 = sub_1000105AC(v22, v23, v28);

        *(v20 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v18, v19, "🫧 Inline bubble tip did change – inlineBubbleTip: %s", v20, 0xCu);
        sub_10000959C(v21);
      }

      else
      {
      }
    }

    else
    {
      v25 = type metadata accessor for LibraryImport.ViewModel(0);
      (*(*(v25 - 8) + 56))(v7, 1, 1, v25);
      v26 = OBJC_IVAR____TtCO5Music13LibraryImport8Observer_inlineBubbleTipViewModel;
      swift_beginAccess();
      sub_10003272C(v13 + v26, v4);
      swift_beginAccess();
      sub_10054EB04(v7, v13 + v26);
      swift_endAccess();
      sub_10054D8F4(v4, &OBJC_IVAR____TtCO5Music13LibraryImport8Observer_inlineBubbleTipViewModel, 2u);

      sub_1000095E8(v4, &unk_1011A4B90);
      sub_1000095E8(v7, &unk_1011A4B90);
      return (*(v9 + 8))(v11, v8);
    }
  }

  return result;
}

void sub_10054E894()
{
  sub_100030554();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10054E96C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10054E9B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 8) = 1;
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10054EA64(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10054EAB0()
{
  result = qword_101194B78;
  if (!qword_101194B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101194B78);
  }

  return result;
}

uint64_t sub_10054EB04(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_1011A4B90);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10054EB74(uint64_t a1, uint64_t a2)
{
  v4 = _s16ActionButtonViewV5ModelVMa(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LibraryImport.ViewModel(0);
  v8 = __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v35 - v12;
  __chkstk_darwin(v11);
  v15 = &v35 - v14;
  v16 = sub_10010FC20(&qword_101194B80);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v35 - v18;
  v20 = &v35 + *(v17 + 56) - v18;
  sub_10054EFD0(a1, &v35 - v18);
  sub_10054EFD0(a2, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_10054EFD0(v19, v15);
    v24 = *v15;
    v23 = *(v15 + 1);
    v26 = *(v15 + 2);
    v25 = *(v15 + 3);
    v27 = *(v15 + 4);
    if (swift_getEnumCaseMultiPayload())
    {

LABEL_12:
      sub_1000095E8(v19, &qword_101194B80);
LABEL_13:
      v22 = 0;
      return v22 & 1;
    }

    v29 = *(v20 + 1);
    v30 = *(v20 + 2);
    v31 = *(v20 + 3);
    v32 = *(v20 + 4);
    if (v23)
    {
      if (!v29)
      {
        goto LABEL_36;
      }

      v33 = v24 == *v20 && v23 == v29;
      if (!v33 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {

LABEL_36:

LABEL_37:

LABEL_38:
        sub_10003CCD8(v19, type metadata accessor for LibraryImport.ViewModel);
        goto LABEL_13;
      }
    }

    else if (v29)
    {
      goto LABEL_36;
    }

    if (v25)
    {
      if (!v31)
      {
        goto LABEL_36;
      }

      v34 = v26 == v30 && v25 == v31;
      if (!v34 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {

        goto LABEL_37;
      }
    }

    else if (v31)
    {
      goto LABEL_36;
    }

    if (v27 == v32)
    {
      sub_10003CCD8(v19, type metadata accessor for LibraryImport.ViewModel);
      v22 = 1;
      return v22 & 1;
    }

    goto LABEL_38;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_10054EFD0(v19, v10);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      type metadata accessor for InlineBubbleTipProvider.InlineBubbleTip();
      v22 = static InlineBubbleTipProvider.InlineBubbleTip.== infix(_:_:)();

      goto LABEL_9;
    }

    goto LABEL_12;
  }

  sub_10054EFD0(v19, v13);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10003CCD8(v13, _s16ActionButtonViewV5ModelVMa);
    goto LABEL_12;
  }

  sub_10054F034(v20, v6, _s16ActionButtonViewV5ModelVMa);
  v22 = sub_10062CB7C(v13, v6);
  sub_10003CCD8(v6, _s16ActionButtonViewV5ModelVMa);
  sub_10003CCD8(v13, _s16ActionButtonViewV5ModelVMa);
LABEL_9:
  sub_10003CCD8(v19, type metadata accessor for LibraryImport.ViewModel);
  return v22 & 1;
}

uint64_t sub_10054EFD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibraryImport.ViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10054F034(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10054F09C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101199B50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10054F114()
{
  result = qword_101194B98;
  if (!qword_101194B98)
  {
    sub_1001109D0(&qword_101194B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101194B98);
  }

  return result;
}

uint64_t sub_10054F1A8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10000954C(a1, a1[3]);
  result = dispatch thunk of SongFilter.id.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t Song.contentIdentifier.getter()
{
  result = 0x72743A656C707061;
  sub_100551C88(0x72743A656C707061, 0xEC0000003A6B6361, &Song.catalogID.getter, &Song.id.getter);
  return result;
}

uint64_t sub_10054F238()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_101194BA0);
  sub_1000060E4(v0, qword_101194BA0);
  return static Logger.music(_:)();
}

id sub_10054F29C(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC5Music23ShareModelStoryActivity_model;
  *&v3[OBJC_IVAR____TtC5Music23ShareModelStoryActivity_model] = 0;
  v8 = &v3[OBJC_IVAR____TtC5Music23ShareModelStoryActivity_musicItem];
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0;
  v9 = OBJC_IVAR____TtC5Music23ShareModelStoryActivity_effectiveStorePlatformDictionary;
  *&v3[v9] = sub_100060CB0(_swiftEmptyArrayStorage);
  v10 = OBJC_IVAR____TtC5Music23ShareModelStoryActivity_jsModel;
  *&v3[OBJC_IVAR____TtC5Music23ShareModelStoryActivity_jsModel] = 0;
  v11 = &v3[OBJC_IVAR____TtC5Music23ShareModelStoryActivity_metricsReporter];
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0;
  if (sub_10044BC7C(a1))
  {
    v3[OBJC_IVAR____TtC5Music23ShareModelStoryActivity_socialNetwork] = a1;
    sub_100008FE4(a2, v15);
    swift_beginAccess();
    sub_100552B14(v15, v8);
    swift_endAccess();
    sub_10012B7A8(a3, &v3[OBJC_IVAR____TtC5Music23ShareModelStoryActivity_presentationSource]);
    v14.receiver = v3;
    v14.super_class = type metadata accessor for ShareModelStoryActivity();
    v12 = objc_msgSendSuper2(&v14, "init");
    sub_10012BA6C(a3);
    sub_10000959C(a2);
    return v12;
  }

  else
  {
    sub_10012BA6C(a3);
    sub_10000959C(a2);

    sub_1000095E8(v8, &unk_1011814F0);

    sub_1000095E8(v11, &qword_101194C18);
    type metadata accessor for ShareModelStoryActivity();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

id sub_10054F66C()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    result = [v0 title];
    if (!result)
    {
      return result;
    }

LABEL_9:
    v3 = result;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v4;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    result = [v2 title];
    if (result)
    {
      goto LABEL_9;
    }
  }

  else
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      result = [result name];
      if (result)
      {
        goto LABEL_9;
      }
    }
  }

  return result;
}

id sub_10054F758()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    result = [v0 artist];
    if (!result)
    {
      return result;
    }

LABEL_6:
    v3 = result;
    v4 = [result name];

    if (v4)
    {
LABEL_7:
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v5;
    }

    return 0;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    result = [v2 artist];
    if (!result)
    {
      return result;
    }

    goto LABEL_6;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    result = [result curator];
    if (result)
    {
      v6 = result;
      v4 = [result name];

      if (v4)
      {
        goto LABEL_7;
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_10054F8B0()
{
  result = MPModelObject.bestIdentifier(for:)(3, 2u);
  if (v1)
  {
    v2 = v1;
    v3 = result;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v4 = 0x72743A656C707061;
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v4 = 0x6C613A656C707061;
      }

      else
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {

          return 0;
        }

        _StringGuts.grow(_:)(17);

        v4 = 0x6C703A656C707061;
      }
    }

    v6 = v4;
    v5._countAndFlagsBits = v3;
    v5._object = v2;
    String.append(_:)(v5);

    return v6;
  }

  return result;
}

uint64_t sub_10054F9F8@<X0>(uint64_t a1@<X8>)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if ((v2 || (objc_opt_self(), (v2 = swift_dynamicCastObjCClass()) != 0) || (objc_opt_self(), (v2 = swift_dynamicCastObjCClass()) != 0)) && [v2 artworkCatalog])
  {
    Artwork.init(_:)();
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = type metadata accessor for Artwork();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, v3, 1, v4);
}

uint64_t sub_10054FAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v10 - 8);
  v12 = &v26 - v11;
  sub_1000089F8(a3, &v26, &unk_1011814F0);
  if (v27)
  {
    sub_100059A8C(&v26, v28);
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100008FE4(v28, &v26);
    type metadata accessor for MainActor();

    v15 = static MainActor.shared.getter();
    v16 = swift_allocObject();
    v16[2] = v15;
    v16[3] = &protocol witness table for MainActor;
    sub_100059A8C(&v26, (v16 + 4));
    v16[9] = v14;
    v16[10] = a1;
    v16[11] = a2;

    sub_1001F4CB8(0, 0, v12, &unk_100ED2938, v16);

    return sub_10000959C(v28);
  }

  else
  {
    sub_1000095E8(&v26, &unk_1011814F0);
    v18 = a6;

    JSShareRequest.RequestContent.init(contentDictionary:contentType:jsModel:)(v19, 1, a6, v28);
    v20 = objc_allocWithZone(type metadata accessor for JSShareRequest());
    v21 = JSShareRequest.init(requestContent:activityType:)(v28, UIActivityTypeCopyToPasteboard);
    type metadata accessor for JSShareRequestCoordinator();
    swift_allocObject();
    v22 = JSShareRequestCoordinator.init()();
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = swift_allocObject();
    v24[2] = v23;
    v24[3] = a1;
    v24[4] = a2;
    v25 = *(*v22 + 152);

    v25(v21, sub_100553734, v24);
  }
}

uint64_t sub_10054FDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  sub_10010FC20(&qword_101194C20);
  v7[9] = swift_task_alloc();
  sub_10010FC20(&qword_101183A20);
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v7[13] = v8;
  v7[14] = *(v8 - 8);
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[17] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[18] = v10;
  v7[19] = v9;

  return _swift_task_switch(sub_10054FF80, v10, v9);
}

uint64_t sub_10054FF80()
{
  v1 = v0[5];
  v2 = v1[3];
  v3 = v1[4];
  sub_10000954C(v1, v2);
  v4 = *(v3 + 8);
  v8 = (*(v4 + 24) + **(v4 + 24));
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_1005500B0;
  v6 = v0[12];

  return v8(v6, v2, v4);
}

uint64_t sub_1005500B0()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return _swift_task_switch(sub_1005501D0, v3, v2);
}

uint64_t sub_1005501D0()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {

LABEL_8:
    sub_1000095E8(v3, &qword_101183A20);
    v14 = v0[9];
    v15 = v0[7];
    v16 = type metadata accessor for StorySharingController.ShareData(0);
    (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
    v15(v14);
    sub_1000095E8(v14, &qword_101194C20);

    v17 = v0[1];

    return v17();
  }

  v5 = *(v2 + 32);
  v5(v0[16], v3, v1);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v10 = v0[16];
    v11 = v0[13];
    v12 = v0[14];
    v13 = v0[11];

    (*(v12 + 8))(v10, v11);
    (*(v12 + 56))(v13, 1, 1, v11);
    goto LABEL_7;
  }

  v7 = Strong;
  v8 = v0[13];
  v9 = v0[11];
  sub_100551530(v9);

  if (v4(v9, 1, v8) == 1)
  {
    (*(v0[14] + 8))(v0[16], v0[13]);

LABEL_7:
    v3 = v0[11];
    goto LABEL_8;
  }

  v19 = v0[5];
  v5(v0[15], v0[11], v0[13]);
  v20 = v19[3];
  v21 = v19[4];
  sub_10000954C(v19, v20);
  v24 = (*(v21 + 48) + **(v21 + 48));
  v22 = swift_task_alloc();
  v0[21] = v22;
  *v22 = v0;
  v22[1] = sub_10055054C;
  v23 = v0[10];

  return v24(v23, v20, v21);
}

uint64_t sub_10055054C()
{
  v1 = *v0;

  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return _swift_task_switch(sub_10055066C, v3, v2);
}

uint64_t sub_10055066C()
{
  v11 = v0[16];
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[7];

  (*(v1 + 16))(v5, v2, v3);
  v7 = type metadata accessor for StorySharingController.ShareData(0);
  sub_1000089F8(v4, v5 + *(v7 + 20), &qword_101183A20);
  (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
  v6(v5);
  sub_1000095E8(v5, &qword_101194C20);
  sub_1000095E8(v4, &qword_101183A20);
  v8 = *(v1 + 8);
  v8(v2, v3);
  v8(v11, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100550824(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v9 = sub_10010FC20(&qword_101194C20);
  __chkstk_darwin(v9 - 8);
  v11 = &v35 - v10;
  v12 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v12 - 8);
  v41 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v35 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v22 = __chkstk_darwin(v19);
  if (a1)
  {
    v23 = &v35 - v20;
    v38 = v21;
    v39 = a3;
    v40 = a5;
    (*((swift_isaMask & *a1) + 0x110))(v22);
    v24 = *(v18 + 48);
    if (v24(v16, 1, v17) != 1)
    {
      v36 = a4;
      v37 = v23;
      v35 = *(v18 + 32);
      v35(v23, v16, v17);
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v26 = Strong;
        v27 = v41;
        v28 = v37;
        sub_100551530(v41);

        if (v24(v27, 1, v17) != 1)
        {
          v31 = v38;
          v35(v38, v27, v17);
          (*(v18 + 16))(v11, v31, v17);
          v32 = *((swift_isaMask & *a1) + 0xE0);
          v33 = type metadata accessor for StorySharingController.ShareData(0);
          v32();
          (*(*(v33 - 8) + 56))(v11, 0, 1, v33);
          v36(v11);
          sub_1000095E8(v11, &qword_101194C20);
          v34 = *(v18 + 8);
          v34(v31, v17);
          return (v34)(v37, v17);
        }

        (*(v18 + 8))(v28, v17);
        v16 = v27;
      }

      else
      {
        (*(v18 + 8))(v37, v17);
        v16 = v41;
        (*(v18 + 56))(v41, 1, 1, v17);
      }

      a4 = v36;
    }
  }

  else
  {
    (*(v18 + 56))(v16, 1, 1, v17, v22);
  }

  sub_1000095E8(v16, &qword_101183A20);
  v29 = type metadata accessor for StorySharingController.ShareData(0);
  (*(*(v29 - 8) + 56))(v11, 1, 1, v29);
  a4(v11);
  return sub_1000095E8(v11, &qword_101194C20);
}

uint64_t sub_100550D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 48) = a6;
  *(v6 + 112) = a5;
  sub_10010FC20(&unk_1011838F0);
  *(v6 + 56) = swift_task_alloc();
  sub_10010FC20(&qword_101183A20);
  *(v6 + 64) = swift_task_alloc();
  type metadata accessor for MetricsEvent.Click(0);
  *(v6 + 72) = swift_task_alloc();
  *(v6 + 80) = type metadata accessor for MainActor();
  *(v6 + 88) = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  *(v6 + 96) = v7;
  *v7 = v6;
  v7[1] = sub_100550E50;

  return sub_10072E678();
}

uint64_t sub_100550E50()
{
  *(*v1 + 104) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_100551288;
  }

  else
  {
    v4 = sub_100550FAC;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100550FAC()
{
  v1 = *(v0 + 112);

  v2 = MetricsReportingController.shared.unsafeMutableAddressor();
  v3 = 0xE800000000000000;
  v4 = *v2;
  v5 = 0x6B6F6F6265636166;
  v6 = 0xE800000000000000;
  v7 = 0x7461686370616E73;
  if (v1 != 2)
  {
    v7 = 0x6B6F546B6974;
    v6 = 0xE600000000000000;
  }

  if (!v1)
  {
    v5 = 0x6172676174736E69;
    v3 = 0xE90000000000006DLL;
  }

  v8 = v1 <= 1;
  if (v1 <= 1)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  if (v8)
  {
    v10 = v3;
  }

  else
  {
    v10 = v6;
  }

  v11 = *(v0 + 64);
  v12 = *(v0 + 72);
  v13 = *(v0 + 56);
  v14 = type metadata accessor for URL();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = type metadata accessor for MetricsEvent.Page(0);
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  v16 = v4;
  MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:page:snapshotImpressions:)(v9, v10, 2, 48, v11, 0, 0, 2, v12, 0, 0, 0xFF00u, v13, 0);
  v17 = sub_10053771C();
  v19 = v18;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 72);
  v21 = *(v0 + 48);
  v22 = qword_101218AD0;
  v23 = GroupActivitiesManager.hasJoined.getter();
  v24 = GroupActivitiesManager.participantsCount.getter();
  v25 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v16) + 0xB8))(v20, v17, v19, v23 & 1, v24, *(v22 + v25));

  sub_1003CD02C(v20);
  [v21 activityDidFinish:1];

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_100551288()
{
  v13 = v0;

  if (qword_10117F848 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_101194BA0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 104);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    *(v0 + 40) = v4;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v7 = String.init<A>(describing:)();
    v9 = sub_1000105AC(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to share story: %s", v5, 0xCu);
    sub_10000959C(v6);
  }

  [*(v0 + 48) activityDidFinish:0];

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100551530@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URLQueryItem();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v48 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v47 = &v44 - v6;
  __chkstk_darwin(v7);
  v9 = &v44 - v8;
  __chkstk_darwin(v10);
  v12 = &v44 - v11;
  v13 = sub_10010FC20(&qword_101194980);
  __chkstk_darwin(v13 - 8);
  v15 = &v44 - v14;
  v16 = type metadata accessor for URLComponents();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1000095E8(v15, &qword_101194980);
    v20 = type metadata accessor for URL();
    return (*(*(v20 - 8) + 56))(a1, 1, 1, v20);
  }

  else
  {
    v49 = v2;
    v46 = a1;
    (*(v17 + 32))(v19, v15, v16);
    v22 = v12;
    URLQueryItem.init(name:value:)();
    v23 = OBJC_IVAR____TtC5Music23ShareModelStoryActivity_socialNetwork;
    v24 = v50;
    URLQueryItem.init(name:value:)();

    v25 = URLComponents.queryItems.getter();
    if (v25)
    {
      v26 = v25;
    }

    else
    {
      v26 = _swiftEmptyArrayStorage;
    }

    v51 = v26;
    v27 = *(v24 + v23);
    v44 = v16;
    v45 = v9;
    if (v27 > 2)
    {
    }

    else
    {
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v28 & 1) == 0)
      {
        v29 = v47;
        URLQueryItem.init(name:value:)();
        v30 = v48;
        (*(v3 + 16))(v48, v29, v49);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_10049A5A8(0, v26[2] + 1, 1, v26);
        }

        v32 = v26[2];
        v31 = v26[3];
        if (v32 >= v31 >> 1)
        {
          v26 = sub_10049A5A8(v31 > 1, v32 + 1, 1, v26);
        }

        v33 = v29;
        v34 = v49;
        (*(v3 + 8))(v33, v49);
        v26[2] = v32 + 1;
        (*(v3 + 32))(v26 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v32, v30, v34);
        v51 = v26;
      }
    }

    sub_10010FC20(&unk_101197BC0);
    v35 = *(v3 + 72);
    v36 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_100EBDC20;
    v38 = v37 + v36;
    v39 = *(v3 + 16);
    v40 = v49;
    v39(v38, v22, v49);
    v41 = v38 + v35;
    v42 = v45;
    v39(v41, v45, v40);
    sub_1001259EC(v37);
    URLComponents.queryItems.setter();
    URLComponents.url.getter();
    v43 = *(v3 + 8);
    v43(v42, v40);
    v43(v22, v40);
    return (*(v17 + 8))(v19, v44);
  }
}

id sub_100551B5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShareModelStoryActivity();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t Album.contentIdentifier.getter()
{
  result = 0x6C613A656C707061;
  sub_100551C88(0x6C613A656C707061, 0xEC0000003A6D7562, &Album.catalogID.getter, &Album.id.getter);
  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_100551C88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t))
{
  v5 = a3();
  if (!v6)
  {
    v5 = a4(v5);
  }

  String.append(_:)(*&v5);
}

uint64_t Composer.url.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t Playlist.contentIdentifier.getter()
{
  _StringGuts.grow(_:)(17);

  v0 = Playlist.catalogID.getter();
  if (!v1)
  {
    v0 = Playlist.id.getter();
  }

  String.append(_:)(*&v0);

  return 0x6C703A656C707061;
}

uint64_t Song.previewURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_10010FC20(&qword_10118D1A0);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_10010FC20(&unk_101183960);
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for PreviewAsset();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_10010FC20(&unk_10118A320);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v6 = sub_10010FC20(&unk_10118A310);
  v2[16] = v6;
  v2[17] = *(v6 - 8);
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_100552074, 0, 0);
}

uint64_t sub_100552074()
{
  v1 = Song.catalogID.getter();
  v0[19] = v1;
  v0[20] = v2;
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    swift_getKeyPath();
    v0[2] = v3;
    v0[3] = v4;
    v0[21] = type metadata accessor for Song();
    sub_100552B84(&unk_1011929D0, &type metadata accessor for Song);

    MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
    v5 = swift_task_alloc();
    v0[22] = v5;
    *v5 = v0;
    v5[1] = sub_100552278;
    v6 = v0[15];
    v7 = v0[16];

    return MusicCatalogResourceRequest.response()(v6, v7);
  }

  else
  {
    v8 = v0[4];
    v9 = type metadata accessor for URL();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_100552278()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1005526B4;
  }

  else
  {

    v2 = sub_100552394;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100552394()
{
  v1 = v0[21];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  MusicCatalogResourceResponse.items.getter();
  sub_10034DD6C(v2);
  (*(v5 + 8))(v3, v4);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v8 = v0[17];
    v7 = v0[18];
    v9 = v0[16];
    v10 = v0[9];
    (*(v0[14] + 8))(v0[15], v0[13]);
    (*(v8 + 8))(v7, v9);
    sub_1000095E8(v10, &unk_101183960);
  }

  else
  {
    v11 = v0[21];
    v12 = v0[9];
    v13 = Song.previewAssets.getter();
    (*(v6 + 8))(v12, v11);
    if (v13)
    {
      v15 = v0[17];
      v14 = v0[18];
      v16 = v0[15];
      v17 = v0[16];
      v19 = v0[13];
      v18 = v0[14];
      if (*(v13 + 16))
      {
        v30 = v0[18];
        v31 = v0[16];
        v20 = v0[11];
        v21 = v0[12];
        v22 = v0[10];
        (*(v20 + 16))(v21, v13 + ((*(v20 + 80) + 32) & ~*(v20 + 80)), v22);

        PreviewAsset.url.getter();
        (*(v20 + 8))(v21, v22);
        (*(v18 + 8))(v16, v19);
        (*(v15 + 8))(v30, v31);
        goto LABEL_9;
      }

      (*(v18 + 8))(v16, v19);
      (*(v15 + 8))(v14, v17);
    }

    else
    {
      v24 = v0[17];
      v23 = v0[18];
      v25 = v0[16];
      (*(v0[14] + 8))(v0[15], v0[13]);
      (*(v24 + 8))(v23, v25);
    }
  }

  v26 = v0[4];
  v27 = type metadata accessor for URL();
  (*(*(v27 - 8) + 56))(v26, 1, 1, v27);
LABEL_9:

  v28 = v0[1];

  return v28();
}

uint64_t sub_1005526B4()
{
  v23 = v0;
  if (qword_10117F848 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_101194BA0);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v19 = v0[17];
    v20 = v0[16];
    v21 = v0[18];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v4 = 136315394;
    v7 = MusicItemID.description.getter();
    v9 = v8;

    v10 = sub_1000105AC(v7, v9, &v22);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get preview URL for song with catalogID: %s: %@", v4, 0x16u);
    sub_1000095E8(v5, &unk_101183D70);

    sub_10000959C(v6);

    (*(v19 + 8))(v21, v20);
  }

  else
  {
    v13 = v0[17];
    v12 = v0[18];
    v14 = v0[16];

    (*(v13 + 8))(v12, v14);
  }

  v15 = v0[4];
  v16 = type metadata accessor for URL();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);

  v17 = v0[1];

  return v17();
}

uint64_t sub_100552A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(uint64_t))
{
  v7 = a5();
  if (!v8)
  {
    v7 = a6(v7);
  }

  String.append(_:)(*&v7);

  return a3;
}

uint64_t sub_100552A58(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002F3F4;

  return Song.previewURL.getter(a1);
}

uint64_t sub_100552B14(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_1011814F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100552B84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100552BCC()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() sharedApplication];
  v7 = OBJC_IVAR____TtC5Music23ShareModelStoryActivity_socialNetwork;
  sub_10044B664(*(v1 + OBJC_IVAR____TtC5Music23ShareModelStoryActivity_socialNetwork), v5);
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  (*(v3 + 8))(v5, v2);
  LODWORD(v5) = [v6 canOpenURL:v10];

  if (v5)
  {
    v11 = sub_10044BC7C(*(v1 + v7));
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_100552D10()
{
  v1 = v0;
  v2 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v2 - 8);
  v72 = &v69 - v3;
  v4 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v4 - 8);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v73 = &v69 - v8;
  v74 = v0[OBJC_IVAR____TtC5Music23ShareModelStoryActivity_socialNetwork];
  v9 = *&v0[OBJC_IVAR____TtC5Music23ShareModelStoryActivity_model];
  v10 = OBJC_IVAR____TtC5Music23ShareModelStoryActivity_musicItem;
  swift_beginAccess();
  sub_1000089F8(&v0[v10], v80, &unk_1011814F0);
  v11 = *&v0[OBJC_IVAR____TtC5Music23ShareModelStoryActivity_jsModel];
  v12 = *&v0[OBJC_IVAR____TtC5Music23ShareModelStoryActivity_effectiveStorePlatformDictionary];
  sub_1000089F8(v80, v77, &unk_1011814F0);
  v13 = v78;
  v71 = v11;
  v70 = v12;
  if (v78)
  {
    v14 = v79;
    sub_10000954C(v77, v78);
    v15 = *(v14 + 16);
    v16 = v11;

    v17 = v9;
    v18 = v15(v13, v14);
    v20 = v19;
    sub_10000959C(v77);
    if (v20)
    {
      goto LABEL_9;
    }

    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v21 = v11;

    v22 = v9;
    sub_1000095E8(v77, &unk_1011814F0);
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  v23 = sub_10054F66C();
  if (v24)
  {
    v18 = v23;
    v20 = v24;

    goto LABEL_9;
  }

LABEL_8:
  swift_bridgeObjectRelease_n();
  v18 = 0;
  v20 = 0xE000000000000000;
LABEL_9:
  sub_1000089F8(v80, v77, &unk_1011814F0);
  v25 = v78;
  if (v78)
  {
    v26 = v79;
    sub_10000954C(v77, v78);
    v27 = (*(v26 + 24))(v25, v26);
    v29 = v28;
    sub_10000959C(v77);
    if (v29)
    {
      goto LABEL_17;
    }

    if (!v9)
    {
      goto LABEL_16;
    }
  }

  else
  {
    sub_1000095E8(v77, &unk_1011814F0);
    if (!v9)
    {
      goto LABEL_16;
    }
  }

  v30 = sub_10054F758();
  if (v31)
  {
    v27 = v30;
    v29 = v31;

    goto LABEL_17;
  }

LABEL_16:
  swift_bridgeObjectRelease_n();
  v27 = 0;
  v29 = 0xE000000000000000;
LABEL_17:
  sub_1000089F8(v80, v77, &unk_1011814F0);
  v32 = v78;
  if (v78)
  {
    v33 = v79;
    sub_10000954C(v77, v78);
    v34 = (*(v33 + 40))(v32, v33);
    v36 = v35;
    sub_10000959C(v77);
  }

  else
  {
    sub_1000095E8(v77, &unk_1011814F0);
    if (v9 && (v37 = sub_10054F8B0(), v38))
    {
      v34 = v37;
      v36 = v38;
    }

    else
    {

      v34 = 0;
      v36 = 0xE000000000000000;
    }
  }

  type metadata accessor for ShareModelStoryRenderer();
  v39 = swift_allocObject();
  *(v39 + 16) = v74;
  *(v39 + 24) = v18;
  *(v39 + 32) = v20;
  *(v39 + 40) = v27;
  *(v39 + 48) = v29;
  *(v39 + 56) = v34;
  *(v39 + 64) = v36;
  sub_1000089F8(v80, v77, &unk_1011814F0);
  v40 = v78;
  if (v78)
  {
    v41 = v79;
    sub_10000954C(v77, v78);
    (*(v41 + 32))(v40, v41);
    sub_10000959C(v77);
    v42 = type metadata accessor for Artwork();
    v43 = *(v42 - 8);
    v44 = (*(v43 + 48))(v6, 1, v42);
    v45 = v70;
    if (v44 != 1)
    {
      v46 = v73;
      (*(v43 + 32))(v73, v6, v42);
      (*(v43 + 56))(v46, 0, 1, v42);
      goto LABEL_32;
    }
  }

  else
  {
    sub_1000095E8(v77, &unk_1011814F0);
    v47 = type metadata accessor for Artwork();
    (*(*(v47 - 8) + 56))(v6, 1, 1, v47);
    v45 = v70;
  }

  if (v9)
  {
    v48 = v9;
    sub_10054F9F8(v73);
  }

  else
  {
    v49 = type metadata accessor for Artwork();
    (*(*(v49 - 8) + 56))(v73, 1, 1, v49);
  }

  v50 = type metadata accessor for Artwork();
  if ((*(*(v50 - 8) + 48))(v6, 1, v50) != 1)
  {
    sub_1000095E8(v6, &unk_101188920);
  }

LABEL_32:
  sub_10012B7A8(v1 + OBJC_IVAR____TtC5Music23ShareModelStoryActivity_presentationSource, v77);
  sub_1000089F8(v80, v75, &unk_1011814F0);
  v51 = swift_allocObject();
  v52 = v75[1];
  *(v51 + 16) = v75[0];
  *(v51 + 32) = v52;
  *(v51 + 48) = v76;
  *(v51 + 56) = v1;
  v53 = v71;
  *(v51 + 64) = v45;
  *(v51 + 72) = v53;
  type metadata accessor for StorySharingController(0);
  v54 = swift_allocObject();
  v55 = (v54 + OBJC_IVAR____TtC5Music22StorySharingController_openURL);
  v56 = objc_opt_self();
  v57 = v53;
  v58 = v1;

  v59 = [v56 sharedApplication];
  v60 = swift_allocObject();
  *(v60 + 16) = v59;
  *v55 = sub_1005535F0;
  v55[1] = v60;
  LOBYTE(v55) = v74;
  *(v54 + 16) = v74;
  sub_1005535F8(v73, v54 + OBJC_IVAR____TtC5Music22StorySharingController_artwork);
  sub_10012B828(v77, v54 + OBJC_IVAR____TtC5Music22StorySharingController_presentationSource);
  v61 = (v54 + OBJC_IVAR____TtC5Music22StorySharingController_renderer);
  *v61 = v39;
  v61[1] = &off_1010BEEA0;
  *(v54 + OBJC_IVAR____TtC5Music22StorySharingController_artworkSize) = vdupq_n_s64(0x406B400000000000uLL);
  v62 = (v54 + OBJC_IVAR____TtC5Music22StorySharingController_shareDataBuilder);
  *v62 = sub_1005535E0;
  v62[1] = v51;
  v63 = type metadata accessor for TaskPriority();
  v64 = v72;
  (*(*(v63 - 8) + 56))(v72, 1, 1, v63);
  type metadata accessor for MainActor();
  v65 = v58;

  v66 = static MainActor.shared.getter();
  v67 = swift_allocObject();
  *(v67 + 16) = v66;
  *(v67 + 24) = &protocol witness table for MainActor;
  *(v67 + 32) = v54;
  *(v67 + 40) = v55;
  *(v67 + 48) = v65;
  sub_1001F4CB8(0, 0, v64, &unk_100ED2920, v67);

  sub_1000095E8(v80, &unk_1011814F0);
  return 1;
}

uint64_t sub_1005535F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_101188920);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100553668(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 40);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_100550D00(a1, v4, v5, v6, v8, v7);
}

uint64_t sub_100553740(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_10054FDF4(a1, v4, v5, (v1 + 4), v6, v7, v8);
}

double sub_1005538AC()
{
  if (qword_10117F850 != -1)
  {
    swift_once();
  }

  v0 = *&qword_101218F38;
  if (qword_10117F860 != -1)
  {
    swift_once();
  }

  result = v0 + *&qword_101218F48;
  *&qword_101218F58 = v0 + *&qword_101218F48;
  return result;
}

void sub_100553944()
{
  v1 = *&v0[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_title + 8];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_title];
    v3 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titleLabel;
    v4 = *&v0[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titleLabel];

    v5 = [v4 attributedText];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 string];

      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      if (v2 == v8 && v1 == v10)
      {

LABEL_17:

        return;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v12)
      {
        goto LABEL_17;
      }
    }

    v14 = [objc_allocWithZone(NSMutableParagraphStyle) init];
    if (qword_10117F870 != -1)
    {
      swift_once();
    }

    [v14 setFirstLineHeadIndent:*&qword_101218F58];
    v15 = [v0 traitCollection];
    v16 = [v15 layoutDirection];

    [v14 setBaseWritingDirection:v16 == 1];
    sub_10010FC20(&qword_10119FB30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBE260;
    *(inited + 32) = NSParagraphStyleAttributeName;
    v18 = sub_100009F78(0, &qword_101194D60);
    *(inited + 40) = v14;
    *(inited + 64) = v18;
    *(inited + 72) = NSFontAttributeName;
    v19 = objc_opt_self();
    v20 = NSParagraphStyleAttributeName;
    v21 = v14;
    v22 = NSFontAttributeName;
    v23 = [v19 _preferredFontForTextStyle:UIFontTextStyleBody variant:256];
    if (v23)
    {
      v24 = v23;
      v25 = sub_100009F78(0, &qword_101183A00);
      *(inited + 80) = v24;
      *(inited + 104) = v25;
      *(inited + 112) = NSForegroundColorAttributeName;
      v26 = objc_opt_self();
      v27 = NSForegroundColorAttributeName;
      v28 = [v26 labelColor];
      *(inited + 144) = sub_100009F78(0, &qword_101180C98);
      *(inited + 120) = v28;
      sub_10010BA14(inited);
      swift_setDeallocating();
      sub_10010FC20(&qword_101180420);
      swift_arrayDestroy();
      v29 = objc_allocWithZone(NSAttributedString);
      v30 = String._bridgeToObjectiveC()();

      type metadata accessor for Key(0);
      sub_100557AB0(&qword_10118AC30, type metadata accessor for Key);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v32 = [v29 initWithString:v30 attributes:isa];

      [*&v0[v3] setAttributedText:v32];
      [*&v0[v3] setHidden:0];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v13 = *&v0[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titleLabel];

    [v13 setHidden:1];
  }
}

void sub_100553DD0()
{
  v1 = type metadata accessor for Artwork(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v11[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = *(v0 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artworkContainerView);
  v5 = *(v0 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artwork);
  v6 = *&v4[OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_artwork];
  *&v4[OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_artwork] = v5;
  v7 = v5;
  v8 = v4;

  v9 = *&v8[OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_artworkView];
  v12 = v8;
  v10 = v9;
  static Artwork.with(_:)(sub_100557B5C, v3);
  Artwork.View.typedConfiguration.setter(v3);
}

id sub_100553ECC(id result)
{
  if (v1[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_isExplicit] == (result & 1))
  {
    return result;
  }

  v2 = *&v1[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_explicitBadgeLabel];
  if (v1[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_isExplicit])
  {
    result = [v2 setHidden:0];
    v3 = *&v1[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackViewTrailingConstraint];
    if (v3)
    {
      v4 = *&v1[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_cachedExplicitBadgeLabelWidth];
      v5 = qword_10117F868;
      v6 = v3;
      if (v5 != -1)
      {
        swift_once();
      }

      [v6 setConstant:-(v4 + *&qword_101218F50)];

      goto LABEL_10;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  [v2 setHidden:1];
  result = *&v1[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackViewTrailingConstraint];
  if (!result)
  {
    goto LABEL_14;
  }

  [result setConstant:0.0];
LABEL_10:

  return [v1 setNeedsLayout];
}

void sub_10055400C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_title];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_subtitle;
  v12 = type metadata accessor for AttributedString();
  (*(*(v12 - 8) + 56))(&v4[v11], 1, 1, v12);
  *&v4[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artwork] = 0;
  *&v4[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_badgeArtworkCatalog] = 0;
  v4[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_isExplicit] = 0;
  v4[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_isDisabled] = 0;
  *&v4[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artworkCachingReference] = 0;
  *&v4[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_cachedExplicitBadgeLabelWidth] = 0;
  v13 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artworkContainerView;
  type metadata accessor for NowPlayingQueueCell.ArtworkContainerView();
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = UIView.forAutolayout.getter();

  v16._countAndFlagsBits = 0xD00000000000001DLL;
  v16._object = 0x8000000100E4F5E0;
  v17 = AccessibilityIdentifier.init(name:)(v16);
  v18 = UIView.withAccessibilityIdentifier(_:)(v17, *(&v17 + 1));

  *&v5[v13] = v18;
  v19 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackView;
  v20 = [objc_allocWithZone(UIStackView) init];
  v21 = UIView.forAutolayout.getter();

  *&v5[v19] = v21;
  type metadata accessor for NowPlayingQueueCell.TextView();
  v22 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initReadonlyAndUnselectableWithFrame:0 textContainer:{0.0, 0.0, 0.0, 0.0}];
  if (v22)
  {
    v23 = v22;
    v24 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titleLabel;
    v25 = UIView.forAutolayout.getter();

    v26._object = 0x8000000100E4F600;
    v26._countAndFlagsBits = 0xD00000000000001BLL;
    v27 = AccessibilityIdentifier.init(name:)(v26);
    v28 = UIView.withAccessibilityIdentifier(_:)(v27, *(&v27 + 1));

    *&v5[v24] = v28;
    v29 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_subtitleLabel;
    v30 = [objc_allocWithZone(UILabel) init];
    v31 = UIView.forAutolayout.getter();

    v32._countAndFlagsBits = 0xD00000000000001ELL;
    v32._object = 0x8000000100E4F620;
    v33 = AccessibilityIdentifier.init(name:)(v32);
    v34 = UIView.withAccessibilityIdentifier(_:)(v33, *(&v33 + 1));

    *&v5[v29] = v34;
    v35 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_explicitBadgeLabel;
    v36 = [objc_allocWithZone(UILabel) init];
    v37 = UIView.forAutolayout.getter();

    v38._countAndFlagsBits = 0xD000000000000023;
    v38._object = 0x8000000100E4F640;
    v39 = AccessibilityIdentifier.init(name:)(v38);
    v40 = UIView.withAccessibilityIdentifier(_:)(v39, *(&v39 + 1));

    *&v5[v35] = v40;
    v41 = &v5[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_lastSeenTitleLabelBounds];
    *v41 = 0u;
    *(v41 + 1) = 0u;
    *&v5[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_lastSeenTitleText] = 0;
    *&v5[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artworkContainerViewTopConstraint] = 0;
    *&v5[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artworkContainerViewCenterYConstraint] = 0;
    *&v5[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackViewTopConstraint] = 0;
    *&v5[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackViewCenterYConstraint] = 0;
    *&v5[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackViewTrailingConstraint] = 0;
    v143.receiver = v5;
    v143.super_class = type metadata accessor for NowPlayingQueueCell();
    v42 = objc_msgSendSuper2(&v143, "initWithFrame:", a1, a2, a3, a4);
    v43 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titleLabel;
    v44 = *&v42[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titleLabel];
    v45 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v46 = &v44[OBJC_IVAR____TtCC5Music19NowPlayingQueueCell8TextView_didLayoutSubviews];
    v47 = *&v44[OBJC_IVAR____TtCC5Music19NowPlayingQueueCell8TextView_didLayoutSubviews];
    *v46 = sub_1005579E0;
    v46[1] = v45;
    v48 = v42;
    v49 = v44;

    sub_100020438(v47);

    v50 = v48;
    v51 = [v50 layer];
    [v51 setAllowsGroupOpacity:0];

    v52 = [v50 contentView];
    v53 = [v52 layer];

    [v53 setAllowsGroupBlending:0];
    v54 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackView;
    v55 = [*&v50[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackView] layer];
    [v55 setAllowsGroupBlending:0];

    [*&v42[v43] setScrollEnabled:0];
    [*&v42[v43] setTranslatesAutoresizingMaskIntoConstraints:0];
    [*&v42[v43] setTextContainerInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
    [*&v42[v43] setAdjustsFontForContentSizeCategory:1];
    v56 = [*&v42[v43] textContainer];
    [v56 setLineFragmentPadding:0.0];

    v57 = [*&v42[v43] textContainer];
    [v57 setLineBreakMode:4];

    v58 = *&v42[v43];
    v59 = objc_opt_self();
    v60 = v58;
    v61 = [v59 clearColor];
    [v60 setBackgroundColor:v61];

    v62 = [*&v42[v43] textLayoutManager];
    [v62 setUsesHyphenation:1];

    [*&v42[v43] setUserInteractionEnabled:0];
    v63 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_explicitBadgeLabel;
    v64 = *&v50[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_explicitBadgeLabel];
    ExplicitRestrictionsController.shared.unsafeMutableAddressor();
    swift_beginAccess();

    v65 = String._bridgeToObjectiveC()();

    [v64 setText:v65];

    v66 = *&v50[v63];
    v67 = objc_opt_self();
    v68 = v66;
    v69 = [v67 preferredFontForTextStyle:UIFontTextStyleBody];
    [v68 setFont:v69];

    v70 = *&v50[v63];
    v71 = [v59 secondaryLabelColor];
    [v70 setTextColor:v71];

    [*&v50[v63] setHidden:1];
    [*&v50[v63] sizeThatFits:{INFINITY, INFINITY}];
    *&v50[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_cachedExplicitBadgeLabelWidth] = v72;
    [*&v50[v54] setAxis:1];
    [*&v50[v54] addArrangedSubview:*&v42[v43]];
    v73 = v54;
    v142 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_subtitleLabel;
    [*&v50[v54] addArrangedSubview:*&v50[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_subtitleLabel]];
    v74 = [v50 contentView];
    v75 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artworkContainerView;
    [v74 addSubview:*&v50[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artworkContainerView]];

    v76 = [v50 contentView];
    [v76 addSubview:*&v50[v73]];

    v77 = [v50 contentView];
    v141 = v63;
    v78 = *&v50[v63];
    v79 = v73;
    [v77 addSubview:v78];

    v80 = [*&v50[v75] topAnchor];
    v81 = [v50 contentView];
    v82 = [v81 topAnchor];

    v83 = [v80 constraintEqualToAnchor:v82 constant:10.0];
    v84 = *&v50[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artworkContainerViewTopConstraint];
    *&v50[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artworkContainerViewTopConstraint] = v83;

    v85 = [*&v50[v75] centerYAnchor];
    v86 = [v50 contentView];
    v87 = [v86 centerYAnchor];

    v88 = [v85 constraintEqualToAnchor:v87];
    v89 = *&v50[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artworkContainerViewCenterYConstraint];
    *&v50[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artworkContainerViewCenterYConstraint] = v88;

    LODWORD(v90) = 1148846080;
    [*&v50[v142] setContentCompressionResistancePriority:1 forAxis:v90];
    v140 = v42;
    LODWORD(v91) = 1148846080;
    [*&v42[v43] setContentHuggingPriority:1 forAxis:v91];
    LODWORD(v92) = 1148846080;
    [*&v50[v73] setContentHuggingPriority:1 forAxis:v92];
    v93 = [*&v50[v73] firstBaselineAnchor];
    v94 = [*&v50[v75] bottomAnchor];
    v95 = [v93 constraintEqualToAnchor:v94 constant:-3.0];

    v96 = *&v50[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackViewTopConstraint];
    *&v50[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackViewTopConstraint] = v95;

    v97 = [*&v50[v73] centerYAnchor];
    v98 = [v50 contentView];
    v99 = [v98 centerYAnchor];

    v100 = [v97 constraintEqualToAnchor:v99];
    v101 = *&v50[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackViewCenterYConstraint];
    *&v50[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackViewCenterYConstraint] = v100;

    v102 = [*&v50[v73] trailingAnchor];
    v103 = [v50 contentView];
    v104 = [v103 layoutMarginsGuide];

    v105 = [v104 trailingAnchor];
    v106 = [v102 constraintEqualToAnchor:v105];

    v107 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackViewTrailingConstraint;
    v108 = *&v50[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackViewTrailingConstraint];
    *&v50[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackViewTrailingConstraint] = v106;

    sub_10010FC20(&qword_101183990);
    v109 = swift_allocObject();
    *(v109 + 16) = xmmword_100EBEEA0;
    v110 = [*&v50[v75] heightAnchor];
    v111 = [*&v50[v75] widthAnchor];
    v112 = [v110 constraintEqualToAnchor:v111];

    *(v109 + 32) = v112;
    v113 = [*&v50[v75] widthAnchor];
    if (qword_10117F850 != -1)
    {
      swift_once();
    }

    v114 = [v113 constraintEqualToConstant:*&qword_101218F38];

    *(v109 + 40) = v114;
    v115 = [*&v50[v75] leadingAnchor];
    v116 = [v50 layoutMarginsGuide];

    v117 = [v116 leadingAnchor];
    v118 = [v115 constraintEqualToAnchor:v117];

    *(v109 + 48) = v118;
    v119 = [*&v50[v79] leadingAnchor];
    v120 = [*&v50[v75] leadingAnchor];
    v121 = [v119 constraintEqualToAnchor:v120];

    *(v109 + 56) = v121;
    v122 = [*&v50[v79] bottomAnchor];
    v123 = [v50 contentView];

    v124 = [v123 bottomAnchor];
    v125 = [v122 constraintLessThanOrEqualToAnchor:v124 constant:-4.0];

    *(v109 + 64) = v125;
    v126 = *&v50[v107];
    if (v126)
    {
      v127 = objc_opt_self();
      *(v109 + 72) = v126;
      v128 = *&v50[v141];
      v129 = v126;
      v130 = [v128 topAnchor];
      v131 = [*&v42[v43] topAnchor];
      v132 = [v130 constraintEqualToAnchor:v131];

      *(v109 + 80) = v132;
      v133 = [*&v50[v141] leadingAnchor];
      v134 = [*&v140[v43] leadingAnchor];
      v135 = [v133 constraintEqualToAnchor:v134];

      *(v109 + 88) = v135;
      sub_100009F78(0, &qword_1011838A0);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v127 activateConstraints:isa];

      sub_100555134();
      sub_10010FC20(&unk_101182D80);
      v137 = swift_allocObject();
      *(v137 + 16) = xmmword_100EBC6B0;
      *(v137 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
      *(v137 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
      UIView.registerForTraitChanges<A>(_:handler:)();
      swift_unknownObjectRelease();

      v138 = swift_allocObject();
      *(v138 + 16) = xmmword_100EBC6B0;
      v139 = sub_100050078();
      *(v138 + 32) = &type metadata for HasAnimatedBackgroundTrait;
      *(v138 + 40) = v139;
      UIView.registerForTraitChanges<A>(_:handler:)();

      swift_unknownObjectRelease();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100555030()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100555504();
  }
}

void sub_100555134()
{
  v32 = [v0 traitCollection];
  v1 = [v32 preferredContentSizeCategory];
  v2 = UIContentSizeCategory.isAccessibilityCategory.getter();

  v3 = [*&v0[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titleLabel] textContainer];
  v4 = v3;
  if (v2)
  {
    v5 = 3;
  }

  else
  {
    v5 = 1;
  }

  [v3 setMaximumNumberOfLines:v5];

  [*&v0[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_subtitleLabel] setNumberOfLines:v5];
  v6 = *&v0[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackView];
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 defaultMetrics];
  [v9 scaledValueForValue:v32 compatibleWithTraitCollection:2.0];
  v11 = v10;

  [v8 setSpacing:v11];
  [*&v0[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_explicitBadgeLabel] sizeThatFits:{INFINITY, INFINITY}];
  *&v0[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_cachedExplicitBadgeLabelWidth] = v12;
  sub_100555BBC(v2 & 1);
  sub_10010FC20(&qword_101183990);
  v13 = swift_allocObject();
  v14 = v13;
  *(v13 + 16) = xmmword_100EBC6D0;
  if ((v2 & 1) == 0)
  {
LABEL_10:
    v24 = *&v0[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artworkContainerViewTopConstraint];
    if (v24)
    {
      *(v14 + 32) = v24;
      v25 = *&v0[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackViewTopConstraint];
      if (v25)
      {
        v17 = objc_opt_self();
        *(v14 + 40) = v25;
        sub_100009F78(0, &qword_1011838A0);
        v26 = v25;
        v27 = v24;
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v17 deactivateConstraints:isa];

        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_100EBC6D0;
        v22 = *&v0[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artworkContainerViewCenterYConstraint];
        if (v22)
        {
          *(v21 + 32) = v22;
          v23 = *&v0[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackViewCenterYConstraint];
          if (v23)
          {
            goto LABEL_14;
          }

LABEL_23:
          __break(1u);
          return;
        }

LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v15 = *&v0[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artworkContainerViewCenterYConstraint];
  if (!v15)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *(v13 + 32) = v15;
  v16 = *&v0[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackViewCenterYConstraint];
  if (!v16)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = objc_opt_self();
  *(v14 + 40) = v16;
  sub_100009F78(0, &qword_1011838A0);
  v18 = v16;
  v19 = v15;
  v20 = Array._bridgeToObjectiveC()().super.isa;

  [v17 deactivateConstraints:v20];

  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100EBC6D0;
  v22 = *&v0[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artworkContainerViewTopConstraint];
  if (!v22)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  *(v21 + 32) = v22;
  v23 = *&v0[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackViewTopConstraint];
  if (!v23)
  {
    __break(1u);
    goto LABEL_10;
  }

LABEL_14:
  *(v21 + 40) = v23;
  v29 = v22;
  v30 = v23;
  v31 = Array._bridgeToObjectiveC()().super.isa;

  [v17 activateConstraints:v31];
}

void sub_100555504()
{
  if (*(v0 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_isExplicit) == 1)
  {
    v1 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titleLabel;
    v2 = [*(v0 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titleLabel) attributedText];
    v3 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_lastSeenTitleText;
    v4 = *(v0 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_lastSeenTitleText);
    if (v2)
    {
      v5 = v2;
      if (v4)
      {
        sub_100009F78(0, &unk_101189D70);
        v6 = v4;
        v7 = static NSObject.== infix(_:_:)();

        if (v7)
        {
          goto LABEL_7;
        }
      }

      else
      {
      }
    }

    else if (!v4)
    {
LABEL_7:
      v8 = 0;
      goto LABEL_10;
    }

    v9 = [*(v0 + v1) attributedText];
    v10 = *(v0 + v3);
    *(v0 + v3) = v9;

    v8 = 1;
LABEL_10:
    v11 = (v0 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_lastSeenTitleLabelBounds);
    v12 = *(v0 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_lastSeenTitleLabelBounds);
    v13 = *(v0 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_lastSeenTitleLabelBounds + 8);
    v14 = *(v0 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_lastSeenTitleLabelBounds + 16);
    v15 = *(v0 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_lastSeenTitleLabelBounds + 24);
    [*(v0 + v1) bounds];
    v51.origin.x = v16;
    v51.origin.y = v17;
    v51.size.width = v18;
    v51.size.height = v19;
    v47.origin.x = v12;
    v47.origin.y = v13;
    v47.size.width = v14;
    v47.size.height = v15;
    if (CGRectEqualToRect(v47, v51))
    {
      if (!v8)
      {
        return;
      }
    }

    else
    {
      [*(v0 + v1) bounds];
      *v11 = v20;
      v11[1] = v21;
      v11[2] = v22;
      v11[3] = v23;
    }

    v44 = 0u;
    v45 = 0u;
    v46 = 1;
    v43 = 0;
    v24 = [*(v0 + v1) textLayoutManager];
    if (!v24)
    {
      goto LABEL_26;
    }

    v25 = v24;
    v26 = swift_allocObject();
    *(v26 + 16) = &v43;
    *(v26 + 24) = &v44;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_1005579AC;
    *(v27 + 24) = v26;
    *&aBlock.tx = sub_1005579B4;
    *&aBlock.ty = v27;
    *&aBlock.a = _NSConcreteStackBlock;
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_100555B78;
    *&aBlock.d = &unk_1010B2278;
    v28 = _Block_copy(&aBlock);

    v29 = [v25 enumerateTextLayoutFragmentsFromLocation:0 options:0 usingBlock:v28];

    swift_unknownObjectRelease();
    _Block_release(v28);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      if (v46)
      {
LABEL_25:
        v24 = sub_1005579AC;
LABEL_26:
        sub_100020438(v24);
        return;
      }

      v12 = *(&v45 + 1);
      v13 = *&v45;
      v14 = *(&v44 + 1);
      v15 = *&v44;
      v27 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_explicitBadgeLabel;
      isEscapingClosureAtFileLocation = *(v0 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_explicitBadgeLabel);
      v48.origin.x = v15;
      v48.origin.y = v14;
      v48.size.width = v13;
      v48.size.height = v12;
      MaxX = CGRectGetMaxX(v48);
      if (qword_10117F868 == -1)
      {
LABEL_18:
        v32 = *&qword_101218F50;
        v33 = 0.0;
        if ((v43 & 1) == 0)
        {
          if (qword_10117F850 != -1)
          {
            v40 = MaxX;
            swift_once();
            MaxX = v40;
          }

          v34 = *&qword_101218F38;
          if (qword_10117F860 != -1)
          {
            v39 = qword_101218F38;
            v41 = MaxX;
            swift_once();
            v34 = *&v39;
            MaxX = v41;
          }

          v33 = v34 + *&qword_101218F48;
        }

        v35 = MaxX + v32 + v33;
        v49.origin.x = v15;
        v49.origin.y = v14;
        v49.size.width = v13;
        v49.size.height = v12;
        MaxY = CGRectGetMaxY(v49);
        [*(v0 + v27) frame];
        Height = CGRectGetHeight(v50);
        CGAffineTransformMakeTranslation(&aBlock, v35, MaxY - Height);
        [isEscapingClosureAtFileLocation setTransform:&aBlock];

        goto LABEL_25;
      }
    }

    v38 = MaxX;
    swift_once();
    MaxX = v38;
    goto LABEL_18;
  }
}

unint64_t sub_1005559AC(void *a1, BOOL *a2, uint64_t a3)
{
  v6 = [a1 textLineFragments];
  sub_100009F78(0, &qword_101194D68);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v7 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *a2 = v8 > 1;
  v9 = [a1 textLineFragments];
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_5;
    }

LABEL_13:

    v19 = 0uLL;
    v20 = 0uLL;
    goto LABEL_14;
  }

  v11 = _CocoaArrayWrapper.endIndex.getter();
  if (!v11)
  {
    goto LABEL_13;
  }

LABEL_5:
  result = v11 - 1;
  if (__OFSUB__(v11, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  if ((v10 & 0xC000000000000001) != 0)
  {
LABEL_16:
    v13 = sub_1007E9BEC(result, v10);
    goto LABEL_10;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v10 + 8 * result + 32);
LABEL_10:
    v14 = v13;

    [v14 typographicBounds];
    v22 = v15;
    v23 = v16;
    v21 = v17;
    v24 = v18;

    *&v20 = v21;
    *&v19 = v22;
    *(&v19 + 1) = v23;
    *(&v20 + 1) = v24;
LABEL_14:
    *a3 = v19;
    *(a3 + 16) = v20;
    *(a3 + 32) = v11 == 0;
    return 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100555B78(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

id sub_100555BBC(char a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&qword_101180C90);
  __chkstk_darwin(v4 - 8);
  v6 = &v41 - v5;
  v7 = type metadata accessor for AttributedString();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v41 - v12;
  v14 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_subtitle;
  swift_beginAccess();
  sub_1005578D4(&v2[v14], v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100557944(v6);
    v15 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_subtitleLabel;
    [*&v2[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_subtitleLabel] setText:0];
    return [*&v2[v15] setHidden:1];
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    v17 = [v2 traitCollection];
    sub_100050078();
    v18 = UITraitCollection.subscript.getter();

    v43 = v18;
    if (v18)
    {
      v19 = [objc_allocWithZone(UIColor) initWithWhite:0.45 alpha:1.0];
    }

    else
    {
      v19 = [objc_opt_self() secondaryLabelColor];
    }

    v42 = v19;
    v20 = [objc_allocWithZone(NSMutableParagraphStyle) init];
    v21 = 0.0;
    if ((a1 & 1) == 0)
    {
      if (qword_10117F870 != -1)
      {
        swift_once();
      }

      v21 = *&qword_101218F58;
    }

    [v20 setFirstLineHeadIndent:v21];
    [v20 setLineBreakMode:4];
    v22 = [v2 traitCollection];
    v23 = [v22 layoutDirection];

    [v20 setBaseWritingDirection:v23 == 1];
    sub_100009F78(0, &qword_101194D58);
    v24 = *(v8 + 16);
    v44 = v13;
    v24(v11, v13, v7);
    v41 = NSAttributedString.init(_:)();
    sub_10010FC20(&qword_10119FB30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBE260;
    *(inited + 32) = NSParagraphStyleAttributeName;
    v26 = sub_100009F78(0, &qword_101194D60);
    *(inited + 40) = v20;
    *(inited + 64) = v26;
    *(inited + 72) = NSFontAttributeName;
    v27 = objc_opt_self();
    v28 = NSParagraphStyleAttributeName;
    v45 = v20;
    v29 = NSFontAttributeName;
    result = [v27 _preferredFontForTextStyle:UIFontTextStyleFootnote variant:256];
    if (result)
    {
      v30 = result;
      v31 = sub_100009F78(0, &qword_101183A00);
      *(inited + 80) = v30;
      *(inited + 104) = v31;
      *(inited + 112) = NSForegroundColorAttributeName;
      *(inited + 144) = sub_100009F78(0, &qword_101180C98);
      v32 = v42;
      *(inited + 120) = v42;
      v33 = NSForegroundColorAttributeName;
      v34 = v32;
      sub_10010BA14(inited);
      swift_setDeallocating();
      sub_10010FC20(&qword_101180420);
      swift_arrayDestroy();
      type metadata accessor for Key(0);
      sub_100557AB0(&qword_10118AC30, type metadata accessor for Key);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v36 = v41;
      [v36 setAttributes:isa range:{0, objc_msgSend(v36, "length")}];

      v37 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_subtitleLabel;
      v38 = *&v2[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_subtitleLabel];
      [v38 setAttributedText:v36];

      [*&v2[v37] setHidden:0];
      v39 = [*&v2[v37] layer];
      v40 = 0;
      if (v43)
      {
        v40 = kCAFilterPlusL;
      }

      [v39 setCompositingFilter:v40];

      swift_unknownObjectRelease();
      return (*(v8 + 8))(v44, v7);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t type metadata accessor for NowPlayingQueueCell()
{
  result = qword_101194CC0;
  if (!qword_101194CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005563B4()
{
  sub_1005564A0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1005564A0()
{
  if (!qword_101194CD0)
  {
    type metadata accessor for AttributedString();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_101194CD0);
    }
  }
}

void sub_1005566F4(void **a1, uint64_t a2)
{
  if (*(a2 + OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_cachingReference))
  {

    v4 = Artwork.Caching.Reference.defaultIdentifier.unsafeMutableAddressor();
    v6 = *v4;
    v5 = v4[1];
    swift_weakInit();
    v30[0] = v6;
    v30[1] = v5;
    swift_weakAssign();

    sub_10006B010(v30, (a1 + 2), &qword_101190910);
  }

  v7 = Artwork.Decoration.list.unsafeMutableAddressor();
  v8 = type metadata accessor for Artwork(0);
  sub_100557B64(v7, a1 + *(v8 + 28));
  v9 = *(a2 + OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_artwork);
  v10 = v9;
  v11 = Artwork.Content.init(catalog:background:)(v9, 0);
  v13 = v12;
  sub_10004D23C(*a1, a1[1]);
  *a1 = v11;
  a1[1] = v13;
  v14 = Artwork.Placeholder.nowPlaying.unsafeMutableAddressor();
  v15 = *v14;
  v16 = v14[1];
  v17 = v14[2];
  v18 = v14[3];
  v28 = v14[5];
  v29 = v14[4];
  v19 = a1 + *(v8 + 32);
  v20 = *(v19 + 1);
  v27 = *v19;
  v21 = *(v19 + 2);
  v22 = *(v19 + 3);
  v23 = v17;
  v24 = v18;
  v25 = v15;
  v26 = v16;
  sub_10004D5E4(v27, v20, v21, v22);
  *v19 = v15;
  *(v19 + 1) = v16;
  *(v19 + 2) = v17;
  *(v19 + 3) = v18;
  *(v19 + 4) = v29;
  *(v19 + 5) = v28;
}

id sub_100556868()
{
  v1 = type metadata accessor for Artwork(0);
  __chkstk_darwin(v1);
  v3 = &v28[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v28[-1] - v7;
  if (*&v0[OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_badgeArtworkCatalog])
  {
    __chkstk_darwin(v5);
    *(&v27 - 2) = v0;
    *(&v27 - 1) = v9;
    v10 = v9;
    static Artwork.with(_:)(sub_1005579E8, v8);
    v11 = OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_badgeArtworkView;
    v12 = *&v0[OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_badgeArtworkView];
    if (v12)
    {
      v28[3] = v1;
      v28[4] = sub_100557AB0(&qword_101194D70, type metadata accessor for Artwork);
      v13 = sub_10001C8B8(v28);
      sub_1005579F0(v8, v13);
      v14 = type metadata accessor for Artwork.View(0);
      v15 = sub_100557AB0(&qword_101194D78, type metadata accessor for Artwork.View);
      v16 = v12;
      MusicUIContentView.configuration.setter(v28, v14, v15);
    }

    else
    {
      sub_1005579F0(v8, v3);
      v20 = objc_allocWithZone(type metadata accessor for Artwork.View(0));
      v21 = v3;
      v22 = v0;
      v23 = Artwork.View.init(configuration:)(v21);
      [v22 addSubview:v23];
      v24 = *&v22[v11];
      *&v22[v11] = v23;
      v25 = v23;

      [v22 setNeedsLayout];
    }

    return sub_100557A54(v8);
  }

  else
  {
    v17 = OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_badgeArtworkView;
    v18 = *&v0[OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_badgeArtworkView];
    if (v18)
    {
      [v18 removeFromSuperview];
      v19 = *&v0[v17];
    }

    else
    {
      v19 = 0;
    }

    *&v0[v17] = 0;

    return [v0 setNeedsLayout];
  }
}

void sub_100556B1C(void **a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for Artwork.Decoration(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_cachingReference))
  {

    v9 = Artwork.Caching.Reference.defaultIdentifier.unsafeMutableAddressor();
    v11 = *v9;
    v10 = v9[1];
    swift_weakInit();
    v35[0] = v11;
    v35[1] = v10;
    swift_weakAssign();

    sub_10006B010(v35, (a1 + 2), &qword_101190910);
  }

  static Artwork.Decoration.with(_:)(sub_100556CE4, v8);
  v12 = type metadata accessor for Artwork(0);
  sub_100557AF8(v8, a1 + *(v12 + 28));
  v13 = a3;
  v14 = Artwork.Content.init(catalog:background:)(a3, 0);
  v16 = v15;
  sub_10004D23C(*a1, a1[1]);
  *a1 = v14;
  a1[1] = v16;
  v17 = Artwork.Placeholder.person.unsafeMutableAddressor();
  v18 = *v17;
  v19 = v17[1];
  v20 = v17[2];
  v21 = v17[3];
  v22 = v17[4];
  v33 = v17[5];
  v34 = v22;
  v23 = a1 + *(v12 + 32);
  v24 = *(v23 + 1);
  v32 = *v23;
  v25 = *(v23 + 2);
  v26 = *(v23 + 3);
  v27 = v20;
  v28 = v21;
  v29 = v18;
  v30 = v19;
  sub_10004D5E4(v32, v24, v25, v26);
  *v23 = v18;
  *(v23 + 1) = v19;
  *(v23 + 2) = v20;
  *(v23 + 3) = v21;
  v31 = v33;
  *(v23 + 4) = v34;
  *(v23 + 5) = v31;
}

void sub_100556CE4(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101183A90);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  static UIView.Corner.rounded.getter();
  v5 = type metadata accessor for UIView.Corner();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = type metadata accessor for Artwork.Decoration(0);
  sub_10006B010(v4, a1 + *(v6 + 20), &qword_101183A90);
  v7 = [objc_opt_self() whiteColor];
  UIView.Border.init(thickness:color:)();
  v9 = v8;
  v11 = v10;
  v13 = v12 & 1;

  *a1 = v9;
  *(a1 + 8) = v13;
  *(a1 + 16) = v11;
}

char *sub_100556E18(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for Artwork(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5[OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_cachingReference] = 0;
  *&v5[OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_artwork] = 0;
  *&v5[OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_badgeArtworkCatalog] = 0;
  v13 = OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_artworkView;
  Artwork.init()(v12);
  v14 = objc_allocWithZone(type metadata accessor for Artwork.View(0));
  *&v5[v13] = Artwork.View.init(configuration:)(v12);
  *&v5[OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_badgeArtworkView] = 0;
  v15 = type metadata accessor for NowPlayingQueueCell.ArtworkContainerView();
  v18.receiver = v5;
  v18.super_class = v15;
  v16 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  [v16 addSubview:*&v16[OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_artworkView]];
  return v16;
}

void sub_100556FA0()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for NowPlayingQueueCell.ArtworkContainerView();
  objc_msgSendSuper2(&v14, "layoutSubviews");
  if (!*&v0[OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_badgeArtworkCatalog])
  {
    v10 = *&v0[OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_artworkView];
    [v0 bounds];
    [v10 setFrame:{v12, v13}];
LABEL_10:

    return;
  }

  if (qword_10117F858 != -1)
  {
    swift_once();
  }

  v1 = *&qword_101218F40;
  v2 = OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_artworkView;
  v3 = *&v0[OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_artworkView];
  [v3 frame];
  [v3 setFrame:?];

  v4 = *&v0[v2];
  [v4 frame];
  [v4 setFrame:{0.0, 0.0}];

  v5 = OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_badgeArtworkView;
  v6 = *&v0[OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_badgeArtworkView];
  if (v6)
  {
    v7 = v6;
    [v7 frame];
    [v7 setFrame:?];

    v8 = *&v0[v5];
    if (v8)
    {
      v9 = qword_10117F850;
      v10 = v8;
      if (v9 != -1)
      {
        swift_once();
      }

      v11 = *&qword_101218F38 - v1;
      [v10 frame];
      [v10 setFrame:{v11, v11}];
      goto LABEL_10;
    }
  }
}