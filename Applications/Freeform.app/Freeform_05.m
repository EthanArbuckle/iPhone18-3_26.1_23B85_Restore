BOOL sub_10007C308()
{
  if (*(*v0 + 16))
  {
    return 0;
  }

  if (*(v0[1] + 16))
  {
    return 0;
  }

  if (*(v0[2] + 16))
  {
    return 0;
  }

  if (*(v0[3] + 16))
  {
    return 0;
  }

  return *(v0[4] + 16) == 0;
}

uint64_t sub_10007C3BC()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1010C737C;
  }

  else
  {

    v2 = sub_10007C4D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

unint64_t sub_10007C4FC()
{
  result = qword_101A24B80;
  if (!qword_101A24B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A24B80);
  }

  return result;
}

uint64_t sub_10007C550(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10007C5E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002D4C8;

  return sub_10007C694();
}

uint64_t sub_10007C694()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10007EE50;

  return sub_10007C740();
}

uint64_t sub_10007C740()
{
  v1[2] = v0;
  v2 = type metadata accessor for URL();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_10007E050, 0, 0);
}

uint64_t sub_10007C800()
{
  v1 = *&v0[OBJC_IVAR____TtC8Freeform25CRLBoardPreviewImageCache_boardLibrary];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  if (*(v1 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_didStartUpdating) == 1)
  {
    sub_1006E9000(v0);
  }

  else
  {
    v4 = objc_opt_self();
    v5 = v0;
    v6 = [v4 defaultCenter];
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    if (qword_1019F2748 != -1)
    {
      swift_once();
    }

    v8 = qword_101AD8948;
    v9 = [objc_opt_self() mainQueue];
    v10 = swift_allocObject();
    v10[2] = v7;
    v10[3] = v6;
    v10[4] = sub_1006EEC18;
    v10[5] = v2;
    v14[4] = sub_1006EEC20;
    v14[5] = v10;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = *"";
    v14[2] = sub_100059694;
    v14[3] = &unk_101882448;
    v11 = _Block_copy(v14);

    v12 = v6;

    v13 = [v12 addObserverForName:v8 object:v1 queue:v9 usingBlock:v11];

    _Block_release(v11);

    swift_beginAccess();
    *(v7 + 16) = v13;

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_10007CAA0()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 104);
  v3 = *(v1 + 32);
  *(v0 + 224) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -(-1 << v3));
  }

  v6 = v4 & *(v1 + 56);
  if (v6)
  {
    v7 = 0;
LABEL_8:
    *(v0 + 192) = v6;
    *(v0 + 200) = v7;
    v11 = *(v0 + 112);
    v10 = *(v0 + 120);
    sub_10005006C(*(v1 + 48) + *(v2 + 72) * (__clz(__rbit64(v6)) | (v7 << 6)), v10, type metadata accessor for CRLBoardIdentifier);
    sub_100025738(v10, v11, type metadata accessor for CRLBoardIdentifier);
    if (qword_1019F2130 != -1)
    {
      swift_once();
    }

    v12 = static OS_os_log.crlBoardLibrary;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v14 = UUID.uuidString.getter();
    v16 = v15;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v14;
    *(inited + 40) = v16;
    v17 = static os_log_type_t.default.getter();
    sub_100005404(v12, &_mh_execute_header, v17, "Found discardable board %{public}@, marking as not discardable", 62, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    v18 = swift_task_alloc();
    *(v0 + 208) = v18;
    *v18 = v0;
    v18[1] = sub_1010C7454;
    v19 = *(v0 + 112);

    return sub_1010C4C18(v19);
  }

  else
  {
    v8 = 0;
    v9 = ((63 - v5) >> 6) - 1;
    while (v9 != v8)
    {
      v7 = v8 + 1;
      v6 = *(v1 + 8 * v8++ + 64);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_10007CD44()
{
  v2 = *v1;
  v2[21] = v0;

  if (v0)
  {
    v3 = v2[18];
    v4 = v2[19];

    return _swift_task_switch(sub_1010AD7F8, v3, v4);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[22] = v5;
    *v5 = v2;
    v5[1] = sub_1010AD620;

    return sub_10007CEB8(_swiftEmptySetSingleton);
  }
}

uint64_t sub_10007CEB8(uint64_t a1)
{
  v2[33] = a1;
  v2[34] = v1;
  sub_1005B981C(&qword_101A03A00);
  v2[35] = swift_task_alloc();
  v2[36] = *(type metadata accessor for CRLFolderIdentifier(0) - 8);
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = sub_1005B981C(&qword_101A11B20);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  sub_1005B981C(&qword_1019F33D0);
  v2[42] = swift_task_alloc();
  v2[43] = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v3 = type metadata accessor for CRLBoardIdentifier(0);
  v2[46] = v3;
  v2[47] = *(v3 - 8);
  v2[48] = swift_task_alloc();
  v4 = _s5BoardVMa(0);
  v2[49] = v4;
  v2[50] = *(v4 - 8);
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v5 = _s4NodeVMa(0);
  v2[58] = v5;
  v2[59] = *(v5 - 8);
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v2[62] = swift_task_alloc();
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();
  sub_1005B981C(&unk_1019FA3E0);
  v2[69] = swift_task_alloc();
  v2[70] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[71] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[72] = v7;
  v2[73] = v6;

  return _swift_task_switch(sub_10007D2AC, v7, v6);
}

uint64_t sub_10007D2AC()
{
  if (qword_1019F2130 != -1)
  {
    swift_once();
  }

  v1 = v0[33];
  v2 = v0[34];
  v3 = static OS_os_log.crlBoardLibrary;
  v4 = static os_log_type_t.default.getter();
  sub_100005404(v3, &_mh_execute_header, v4, "Updating snapshot", 17, 2, _swiftEmptyArrayStorage);
  v0[74] = *(v1 + 16);
  v5 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardViewModels;
  v0[75] = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardViewModels;
  swift_beginAccess();
  v0[76] = *(v2 + v5);
  v6 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_folderViewModels;
  v0[77] = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_folderViewModels;
  swift_beginAccess();
  v0[78] = *(v2 + v6);
  v7 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot;
  v0[79] = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot;
  v8 = (v2 + v7);
  v0[80] = *v8;
  v0[81] = v8[1];
  v0[82] = v8[2];
  v0[83] = v8[3];
  v0[84] = v8[4];
  v0[85] = v8[5];

  v9 = swift_task_alloc();
  v0[86] = v9;
  *v9 = v0;
  v9[1] = sub_101102548;

  return sub_10007D4A8();
}

uint64_t sub_10007D4A8()
{
  v1[88] = v0;
  sub_1005B981C(&qword_101A2AD18);
  v1[89] = swift_task_alloc();
  v1[90] = swift_task_alloc();
  sub_1005B981C(&qword_101A2AD20);
  v1[91] = swift_task_alloc();
  v1[92] = type metadata accessor for CRLBoardIdentifierStorage(0);
  v1[93] = swift_task_alloc();
  v2 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v1[94] = v2;
  v1[95] = *(v2 - 8);
  v1[96] = swift_task_alloc();
  v1[97] = swift_task_alloc();
  type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v1[98] = swift_task_alloc();
  sub_1005B981C(&unk_1019FB770);
  v1[99] = swift_task_alloc();
  v1[100] = swift_task_alloc();
  v1[101] = swift_task_alloc();
  v3 = _s4NodeVMa(0);
  v1[102] = v3;
  v1[103] = *(v3 - 8);
  v1[104] = swift_task_alloc();
  v1[105] = swift_task_alloc();
  v1[106] = type metadata accessor for CRLSharedBoardMetadataCRDTData(0);
  v1[107] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v1[108] = v4;
  v1[109] = *(v4 - 8);
  v1[110] = swift_task_alloc();
  v1[111] = swift_task_alloc();
  sub_1005B981C(&qword_1019F33E0);
  v1[112] = swift_task_alloc();
  v1[113] = swift_task_alloc();
  sub_1005B981C(&qword_1019F33D0);
  v1[114] = swift_task_alloc();
  v1[115] = type metadata accessor for CRLBoardCRDTData(0);
  v1[116] = swift_task_alloc();
  v1[117] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v1[118] = v5;
  v1[119] = *(v5 - 8);
  v1[120] = swift_task_alloc();
  v1[121] = swift_task_alloc();
  v1[122] = swift_task_alloc();
  v6 = type metadata accessor for CRLBoardIdentifier(0);
  v1[123] = v6;
  v1[124] = *(v6 - 8);
  v1[125] = swift_task_alloc();
  v1[126] = swift_task_alloc();
  v1[127] = swift_task_alloc();
  v1[128] = swift_task_alloc();
  v1[129] = swift_task_alloc();
  sub_1005B981C(&unk_1019FA3E0);
  v1[130] = swift_task_alloc();
  v1[131] = swift_task_alloc();
  v7 = _s5BoardVMa(0);
  v1[132] = v7;
  v1[133] = *(v7 - 8);
  v1[134] = swift_task_alloc();
  v1[135] = swift_task_alloc();
  v1[136] = swift_task_alloc();
  v1[137] = swift_task_alloc();
  v1[138] = swift_task_alloc();
  v1[139] = swift_task_alloc();
  v8 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  v1[140] = v8;
  v1[141] = *(v8 - 8);
  v1[142] = swift_task_alloc();
  v1[143] = swift_task_alloc();
  v9 = type metadata accessor for CRLFolderIdentifier(0);
  v1[144] = v9;
  v1[145] = *(v9 - 8);
  v1[146] = swift_task_alloc();
  v1[147] = swift_task_alloc();
  v10 = type metadata accessor for CRLFolder();
  v1[148] = v10;
  v1[149] = *(v10 - 8);
  v1[150] = swift_task_alloc();
  v1[151] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[152] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[153] = v12;
  v1[154] = v11;

  return _swift_task_switch(sub_10007F600, v12, v11);
}

void sub_10007DBC0()
{
  sub_1012F280C(319, &qword_1019F48E0);
  if (v0 <= 0x3F)
  {
    sub_100039D58(319, &qword_1019F48D8);
    if (v1 <= 0x3F)
    {
      sub_100039D58(319, &qword_1019F7D40);
      if (v2 <= 0x3F)
      {
        sub_1012F280C(319, &unk_101A336D0);
        if (v3 <= 0x3F)
        {
          sub_100039F68();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10007DD1C()
{
  sub_10007DE30();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CRLBoardRootContainerAffinityCRDTData(319);
    if (v1 <= 0x3F)
    {
      sub_100039D58(319, &qword_1019F48D0);
      if (v2 <= 0x3F)
      {
        type metadata accessor for CRLBoardInsertStyleData(319);
        if (v3 <= 0x3F)
        {
          type metadata accessor for CRLSharedBoardMetadataCRDTData(319);
          if (v4 <= 0x3F)
          {
            type metadata accessor for CRLBoardScenesCRDTData(319);
            if (v5 <= 0x3F)
            {
              sub_100039F68();
              if (v6 <= 0x3F)
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

void sub_10007DE30()
{
  if (!qword_1019FDEB8)
  {
    type metadata accessor for UUID();
    v0 = type metadata accessor for CRRegister();
    if (!v1)
    {
      atomic_store(v0, &qword_1019FDEB8);
    }
  }
}

void sub_10007DEB0()
{
  sub_10007DE30();
  if (v0 <= 0x3F)
  {
    sub_100039F68();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10007DF54()
{
  sub_1012F28B0();
  if (v0 <= 0x3F)
  {
    sub_1012F2954();
    if (v1 <= 0x3F)
    {
      sub_1012F29F8();
      if (v2 <= 0x3F)
      {
        sub_1012F2A9C();
        if (v3 <= 0x3F)
        {
          sub_1012F2B40();
          if (v4 <= 0x3F)
          {
            sub_100039F68();
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

uint64_t sub_10007E050()
{
  v1 = [*(v0[2] + OBJC_IVAR____TtC8Freeform28CRLSharedHighlightController_highlightCenter) highlights];
  sub_100006370(0, &qword_1019F54E8);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    v5 = v0[4];
    v23 = v2 & 0xFFFFFFFFFFFFFF8;
    v24 = v2 & 0xC000000000000001;
    v6 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v24)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v23 + 16))
        {
          goto LABEL_16;
        }

        v7 = *(v2 + 8 * v4 + 32);
      }

      v8 = v7;
      v9 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v10 = v2;
      v11 = [v7 URL];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100B364FC(0, v6[2] + 1, 1, v6);
      }

      v13 = v6[2];
      v12 = v6[3];
      if (v13 >= v12 >> 1)
      {
        v6 = sub_100B364FC(v12 > 1, v13 + 1, 1, v6);
      }

      v14 = v0[5];
      v15 = v0[3];
      v6[2] = v13 + 1;
      (*(v5 + 32))(v6 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, v14, v15);
      ++v4;
      v2 = v10;
      if (v9 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v6 = _swiftEmptyArrayStorage;
LABEL_19:
  if (v6[2])
  {
    v16 = v0[2];
    v17 = swift_allocObject();
    *(v17 + 16) = v2;
    *(v17 + 24) = v16;
    v18 = v16;
    sub_1005F142C(v6, sub_1005F1420, v17);
  }

  else
  {

    if (qword_1019F22C8 != -1)
    {
      swift_once();
    }

    v19 = static OS_os_log.shareState;
    v20 = static os_log_type_t.default.getter();
    sub_100005404(v19, &_mh_execute_header, v20, "Highlights did not contain any URLs.", 36, 2, _swiftEmptyArrayStorage);
    sub_10007EA74(_swiftEmptyArrayStorage);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_10007E38C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10007E3CC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1005C4E5C(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10007E448()
{
  result = qword_101A12968;
  if (!qword_101A12968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12968);
  }

  return result;
}

unint64_t sub_10007E49C()
{
  result = qword_101A2A280;
  if (!qword_101A2A280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2A280);
  }

  return result;
}

unint64_t sub_10007E4F4()
{
  result = qword_101A2A220;
  if (!qword_101A2A220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2A220);
  }

  return result;
}

void sub_10007E55C()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDBF8, &qword_101AD5BA0);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.shareState = v1;
}

unint64_t sub_10007E614()
{
  result = qword_101A12950;
  if (!qword_101A12950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12950);
  }

  return result;
}

unint64_t sub_10007E668()
{
  result = qword_101A1AE78;
  if (!qword_101A1AE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1AE78);
  }

  return result;
}

unint64_t sub_10007E6C0()
{
  result = qword_101A1AE18;
  if (!qword_101A1AE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1AE18);
  }

  return result;
}

uint64_t sub_10007E728(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  _s5BoardVMa(0);
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for CRLPreviewImages.Item(0);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v2[12] = swift_task_alloc();
  sub_1005B981C(&unk_1019FB770);
  v2[13] = swift_task_alloc();
  v4 = _s4NodeVMa(0);
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = type metadata accessor for MainActor();
  v2[19] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[20] = v6;
  v2[21] = v5;

  return _swift_task_switch(sub_100086FA0, v6, v5);
}

unint64_t sub_10007E960()
{
  result = qword_101A12940;
  if (!qword_101A12940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A12940);
  }

  return result;
}

unint64_t sub_10007E9B4()
{
  result = qword_101A23340;
  if (!qword_101A23340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A23340);
  }

  return result;
}

unint64_t sub_10007EA0C()
{
  result = qword_101A232E0;
  if (!qword_101A232E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A232E0);
  }

  return result;
}

uint64_t sub_10007EA74(uint64_t a1)
{
  v3 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = *&v1[OBJC_IVAR____TtC8Freeform28CRLSharedHighlightController_sharedHighlights];
  *&v1[OBJC_IVAR____TtC8Freeform28CRLSharedHighlightController_sharedHighlights] = a1;

  v8 = sub_10007EBE4(v7, v6);

  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
    type metadata accessor for MainActor();
    v11 = v1;
    v12 = static MainActor.shared.getter();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = &protocol witness table for MainActor;
    v13[4] = v11;
    sub_10064191C(0, 0, v5, &unk_10146D690, v13);
  }

  return result;
}

uint64_t sub_10007EBFC(unint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v6)
    {
      goto LABEL_29;
    }

    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v9 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v4 < 0)
    {
      v8 = v4;
    }

    if (v5)
    {
      v9 = v8;
    }

    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    v11 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v10 = a2;
    }

    if (a2 >> 62)
    {
      v11 = v10;
    }

    if (v9 == v11)
    {
LABEL_29:
      v19 = 1;
      return v19 & 1;
    }

    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = a3(0);
    if (((a2 | v4) & 0xC000000000000001) != 0)
    {
      v12 = a2 & 0xC000000000000001;
      v13 = 4;
      while (1)
      {
        v14 = v13 - 4;
        v15 = v13 - 3;
        if (__OFADD__(v13 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v16 = *(v4 + 8 * v13);
          if (!v12)
          {
LABEL_24:
            if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v17 = *(a2 + 8 * v13);
            goto LABEL_26;
          }
        }

        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_26:
        v18 = v17;
        v19 = static NSObject.== infix(_:_:)();

        if (v19)
        {
          ++v13;
          if (v15 != v6)
          {
            continue;
          }
        }

        return v19 & 1;
      }
    }

    v20 = (v4 + 32);
    v21 = (a2 + 32);
    v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v6 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      v26 = *v20++;
      v25 = v26;
      v27 = *v21++;
      a2 = v25;
      v4 = v27;
      v19 = static NSObject.== infix(_:_:)();

      v29 = v24-- != 0;
      if (v19)
      {
        --v23;
        --v22;
        if (v29)
        {
          continue;
        }
      }

      return v19 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v30 = a3;
    v31 = _CocoaArrayWrapper.endIndex.getter();
    a3 = v30;
    v6 = v31;
  }

  v32 = a3;
  result = _CocoaArrayWrapper.endIndex.getter();
  a3 = v32;
  if (v6 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_10007EE50()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000875FC, v1, v0);
}

unint64_t sub_10007EF8C()
{
  result = qword_101A2F498;
  if (!qword_101A2F498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2F498);
  }

  return result;
}

unint64_t sub_10007EFE0()
{
  result = qword_101A2F4F8;
  if (!qword_101A2F4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2F4F8);
  }

  return result;
}

unint64_t sub_10007F038()
{
  result = qword_101A2F490;
  if (!qword_101A2F490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2F490);
  }

  return result;
}

unint64_t sub_10007F0A0()
{
  result = qword_101A2D860;
  if (!qword_101A2D860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2D860);
  }

  return result;
}

unint64_t sub_10007F0F4()
{
  result = qword_101A2D8C0;
  if (!qword_101A2D8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2D8C0);
  }

  return result;
}

unint64_t sub_10007F14C()
{
  result = qword_101A2D858;
  if (!qword_101A2D858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A2D858);
  }

  return result;
}

void sub_10007F1C4()
{
  sub_10007F278();
  if (v0 <= 0x3F)
  {
    sub_10007F314();
    if (v1 <= 0x3F)
    {
      sub_10007F3D8();
      if (v2 <= 0x3F)
      {
        sub_100039F68();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10007F278()
{
  if (!qword_1019FCD08)
  {
    type metadata accessor for UUID();
    sub_1000683C4(&qword_1019FB870, &type metadata accessor for UUID);
    v0 = type metadata accessor for CROrderedSet();
    if (!v1)
    {
      atomic_store(v0, &qword_1019FCD08);
    }
  }
}

void sub_10007F314()
{
  if (!qword_1019FCD10)
  {
    type metadata accessor for UUID();
    sub_1000683C4(&qword_1019FB870, &type metadata accessor for UUID);
    v0 = type metadata accessor for CRDictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1019FCD10);
    }
  }
}

void sub_10007F3D8()
{
  if (!qword_1019FCD18)
  {
    type metadata accessor for UUID();
    sub_1000683C4(&qword_1019FB870, &type metadata accessor for UUID);
    sub_10007F4A4();
    sub_10007F5AC();
    v0 = type metadata accessor for CRDictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1019FCD18);
    }
  }
}

unint64_t sub_10007F4A4()
{
  result = qword_101A22660;
  if (!qword_101A22660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A22660);
  }

  return result;
}

unint64_t sub_10007F4FC()
{
  result = qword_1019FCE18;
  if (!qword_1019FCE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FCE18);
  }

  return result;
}

unint64_t sub_10007F554()
{
  result = qword_1019FCD58;
  if (!qword_1019FCD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FCD58);
  }

  return result;
}

unint64_t sub_10007F5AC()
{
  result = qword_1019FCD20;
  if (!qword_1019FCD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019FCD20);
  }

  return result;
}

uint64_t sub_10007F630()
{
  v1 = v0[155];
  v2 = swift_task_alloc();
  v0[156] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[157] = v3;
  v4 = sub_1005B981C(&qword_101A002B8);
  *v3 = v0;
  v3[1] = sub_1010E93A0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 87, 0, 0, 0xD00000000000001DLL, 0x80000001015971E0, sub_100080FC4, v2, v4);
}

uint64_t sub_10007F760()
{
  result = type metadata accessor for CRLBoardCRDTData(319);
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

void sub_10007F8B4(void *a1)
{
  v3 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  __chkstk_darwin(v6 - 8);
  v39 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1019F2220 != -1)
  {
    swift_once();
  }

  v11 = static OS_os_log.sceneManagement;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  *(inited + 56) = type metadata accessor for CRLSceneDelegate();
  *(inited + 64) = sub_100C2E798(&qword_101A15AB0, type metadata accessor for CRLSceneDelegate);
  *(inited + 32) = v1;
  v13 = v1;
  v14 = [a1 session];
  v15 = [v14 persistentIdentifier];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  *(inited + 96) = &type metadata for String;
  *(inited + 104) = sub_1000053B0();
  *(inited + 72) = v16;
  *(inited + 80) = v18;
  v19 = static os_log_type_t.info.getter();
  sub_100005404(v11, &_mh_execute_header, v19, "Scene delegate (%p) scene %@ did become active", 46, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  v20 = swift_arrayDestroy();
  v21 = *((swift_isaMask & *v13) + 0x1A0);
  v22 = (v21)(v20);
  if (v22)
  {
    v38 = a1;
    v23 = v22;
    v24 = *(*(v22 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);

    sub_10005013C();
    if (!v25)
    {
      __break(1u);
      return;
    }

    v26 = v25;

    v27 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
    v28 = *&v24[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
    v29 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    sub_10004FE64(v28 + v29, v5, type metadata accessor for CRLBoardCRDTData);
    sub_1005B981C(&unk_1019F5250);
    v30 = v39;
    CRRegister.wrappedValue.getter();
    sub_10005117C(v5, type metadata accessor for CRLBoardCRDTData);
    v31 = (*&v24[v27] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
    v32 = *v31;
    v33 = v31[1];

    sub_10084BD4C(v30, v32, v33, v10);
    sub_1006C3B78(v10);

    sub_10005117C(v10, type metadata accessor for CRLBoardIdentifier);
    a1 = v38;
  }

  v34 = v21();
  if (v34)
  {
    v35 = v34;
    sub_10101DAB8(1);
  }

  v36 = sub_1000801B8();
  [v36 becomeCurrent];

  v37 = [objc_opt_self() defaultCenter];
  if (qword_1019F1F20 != -1)
  {
    swift_once();
  }

  [v37 postNotificationName:qword_101AD7918 object:a1];
}

void sub_10007FDA8()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDB20, &qword_101AD5AC8);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.sceneManagement = v1;
}

uint64_t sub_10007FEC4()
{
  v0 = sub_100051290();
  v1 = [v0 presentedViewController];

  if (v1)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = [v2 topViewController];

      if (v3)
      {
        type metadata accessor for CRLiOSBoardViewController();
        result = swift_dynamicCastClass();
        if (result)
        {
          return result;
        }
      }
    }

    else
    {
    }
  }

  return 0;
}

void sub_10007FF80(id a1)
{
  v1 = [NSCharacterSet characterSetWithCharactersInString:@"ـ‑-‐–—"];
  v2 = qword_101A34F08;
  qword_101A34F08 = v1;
}

id sub_10007FFC8(uint64_t *a1, unsigned __int8 a2, uint64_t a3)
{
  v7 = v3;
  v8 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - v9;
  v11 = sub_1005B981C(&unk_1019F52D0);
  __chkstk_darwin(v11 - 8);
  v13 = &v23 - v12;
  v14 = *a1;
  v15 = *(v7 + *a1);
  if (v15)
  {
    v16 = *(v7 + *a1);
  }

  else
  {
    sub_100006370(0, &qword_101A13E90);
    v17 = type metadata accessor for CRLBoardIdentifier(0);
    (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
    v18 = type metadata accessor for UUID();
    (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
    v19 = sub_1000801CC(a2, a3, v13, v10);
    [v19 setDelegate:v7];
    [v19 setNeedsSave:1];
    v20 = *(v7 + v14);
    *(v7 + v14) = v19;
    v16 = v19;

    v15 = 0;
  }

  v21 = v15;
  return v16;
}

id sub_1000801CC(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v60 = a4;
  v61 = a3;
  v6 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v6 - 8);
  v57 = &v54 - v7;
  v8 = type metadata accessor for UUID();
  v58 = *(v8 - 8);
  v59 = v8;
  __chkstk_darwin(v8);
  v55 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1005B981C(&unk_1019F52D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v54 - v11;
  v13 = type metadata accessor for CRLBoardIdentifier(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_100080930(a1);
  v18 = String._bridgeToObjectiveC()();

  v19 = [v17 initWithActivityType:v18];

  v20 = v19;
  v21 = [v20 activityType];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25 = sub_100080A80(v22, v24);
  if (sub_100080930(v25) == 0xD000000000000027 && 0x8000000101551880 == v26)
  {
    v27 = 1;
  }

  else
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  [v20 setEligibleForHandoff:v27 & 1];
  v28 = sub_1005B981C(&qword_1019FB8A0);
  inited = swift_initStackObject();
  v56 = xmmword_10146C6B0;
  *(inited + 16) = xmmword_10146C6B0;
  v62 = 0x6E6F6973726576;
  v63 = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for Int;
  *(inited + 72) = a2;
  sub_100078EA4(inited);
  swift_setDeallocating();
  sub_10000CAAC(inited + 32, &unk_1019FB8B0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v20 addUserInfoEntriesFromDictionary:isa];

  sub_10000BE14(v61, v12, &unk_1019F52D0);
  v31 = (*(v14 + 48))(v12, 1, v13);
  v54 = v28;
  if (v31 == 1)
  {
    sub_10000CAAC(v12, &unk_1019F52D0);
  }

  else
  {
    sub_1005EB270(v12, v16);
    v35 = swift_initStackObject();
    *(v35 + 16) = v56;
    v62 = 0x64496472616F62;
    v63 = 0xE700000000000000;
    AnyHashable.init<A>(_:)();
    v62 = UUID.uuidString.getter();
    v63 = v36;

    v37._countAndFlagsBits = 58;
    v37._object = 0xE100000000000000;
    String.append(_:)(v37);

    v38 = v62;
    v39 = v63;
    v40 = &v16[*(type metadata accessor for CRLBoardIdentifierStorage(0) + 20)];
    v41 = *v40;
    v42 = v40[1];
    v62 = v38;
    v63 = v39;

    v43._countAndFlagsBits = v41;
    v43._object = v42;
    String.append(_:)(v43);

    v44 = v62;
    v45 = v63;
    *(v35 + 96) = &type metadata for String;
    *(v35 + 72) = v44;
    *(v35 + 80) = v45;
    sub_100078EA4(v35);
    swift_setDeallocating();
    sub_10000CAAC(v35 + 32, &unk_1019FB8B0);
    v46 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v20 addUserInfoEntriesFromDictionary:{v46, v54}];

    sub_100086F34(v16);
  }

  v33 = v59;
  v32 = v60;
  v34 = v58;
  v47 = v57;
  sub_10000BE14(v60, v57, &qword_1019F6990);
  if ((*(v34 + 48))(v47, 1, v33) == 1)
  {

    sub_10000CAAC(v32, &qword_1019F6990);
    sub_10000CAAC(v61, &unk_1019F52D0);
    sub_10000CAAC(v47, &qword_1019F6990);
  }

  else
  {
    v48 = v55;
    (*(v34 + 32))(v55, v47, v33);
    v49 = swift_initStackObject();
    *(v49 + 16) = v56;
    v62 = 0x4965636166727573;
    v63 = 0xE900000000000064;
    AnyHashable.init<A>(_:)();
    v50 = UUID.uuidString.getter();
    *(v49 + 96) = &type metadata for String;
    *(v49 + 72) = v50;
    *(v49 + 80) = v51;
    sub_100078EA4(v49);
    swift_setDeallocating();
    sub_10000CAAC(v49 + 32, &unk_1019FB8B0);
    v52 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v20 addUserInfoEntriesFromDictionary:v52];

    sub_10000CAAC(v32, &qword_1019F6990);
    sub_10000CAAC(v61, &unk_1019F52D0);
    (*(v34 + 8))(v48, v33);
  }

  return v20;
}

unint64_t sub_100080930(unsigned __int8 a1)
{
  v1 = 0xD00000000000001ALL;
  if (a1 > 5u)
  {
    v6 = 0xD000000000000029;
    v7 = 0xD00000000000001DLL;
    if (a1 != 10)
    {
      v7 = 0xD00000000000001ALL;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    if (a1 == 7)
    {
      v1 = 0xD00000000000001BLL;
    }

    if (a1 == 6)
    {
      v1 = 0xD000000000000019;
    }

    if (a1 <= 8u)
    {
      return v1;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0xD000000000000020;
    v3 = 0xD000000000000028;
    if (a1 != 4)
    {
      v3 = 0xD000000000000018;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000027;
    if (a1 == 1)
    {
      v4 = 0xD000000000000038;
    }

    if (!a1)
    {
      v4 = 0xD000000000000033;
    }

    if (a1 <= 2u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100080A80(uint64_t a1, void *a2)
{

  v37._countAndFlagsBits = a1;
  v37._object = a2;
  v4 = sub_100080F78(v37);
  if (v4 != 12)
  {
    v8 = v4;

    return v8;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a1 && v5 == a2)
  {

LABEL_10:

    return 8;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
    goto LABEL_10;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a1 && v10 == a2)
  {

    return 10;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v12)
    {
      return 10;
    }

    else
    {
      v13 = objc_opt_self();
      v14 = [v13 _atomicIncrementAssertCount];
      v36 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v36);
      StaticString.description.getter();
      v15 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v16 = String._bridgeToObjectiveC()();

      v17 = [v16 lastPathComponent];

      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v21 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v14;
      v23 = sub_1005CF000();
      *(inited + 96) = v23;
      v24 = sub_1005CF04C();
      *(inited + 104) = v24;
      *(inited + 72) = v15;
      *(inited + 136) = &type metadata for String;
      v25 = sub_1000053B0();
      *(inited + 112) = v18;
      *(inited + 120) = v20;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v25;
      *(inited + 152) = 30;
      v26 = v36;
      *(inited + 216) = v23;
      *(inited + 224) = v24;
      *(inited + 192) = v26;
      v27 = v15;
      v28 = v26;
      v29 = static os_log_type_t.error.getter();
      sub_100005404(v21, &_mh_execute_header, v29, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v30 = static os_log_type_t.error.getter();

      type metadata accessor for __VaListBuilder();
      v31 = swift_allocObject();
      v31[2] = 8;
      v31[3] = 0;
      v31[4] = 0;
      v31[5] = 0;
      v32 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v33 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v34 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v35 = String._bridgeToObjectiveC()();

      [v13 handleFailureInFunction:v33 file:v34 lineNumber:30 isFatal:0 format:v35 args:v32];

      return 11;
    }
  }
}

unint64_t sub_100080F78(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101874610, v2);

  if (v3 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v3;
  }
}

void sub_100080FCC(id a1)
{
  v1 = [NSCharacterSet characterSetWithCharactersInString:@"'’‘‚“”„«»‹›」「』『"];
  v2 = qword_101A34F18;
  qword_101A34F18 = v1;
}

uint64_t sub_100081014(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A21CD8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - v4;
  (*(v3 + 16))(&v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  sub_10001E534(sub_100EA1FA4, v7, &OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_readQueue, &unk_1018A4ED0, sub_1000820DC, &unk_1018A4EE8);
}

void *sub_1000811B8()
{
  v2 = sub_1005B981C(&qword_101A21C68);
  __chkstk_darwin(v2 - 8);
  v104 = &v91 - v3;
  v103 = type metadata accessor for CRLBoardCRDTData(0);
  v101 = *(v103 - 8);
  v4 = __chkstk_darwin(v103);
  v100 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v99 = &v91 - v6;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v10 = v11;
  v13 = v8 + 104;
  v12 = *(v8 + 104);
  v109 = enum case for DispatchPredicate.onQueue(_:);
  v12(v10);
  v14 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  v17 = *(v8 + 8);
  v15 = v8 + 8;
  v16 = v17;
  v17(v10, v7);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_42;
  }

  v110 = v13;
  v107 = v16;
  v105 = v15;
  v112 = 0;
  v113 = 0xE000000000000000;
  _StringGuts.grow(_:)(49);
  v18._countAndFlagsBits = 0x205443454C4553;
  v18._object = 0xE700000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = sub_1000820E8(0, 0xE000000000000000);
  String.append(_:)(v19);

  v20._countAndFlagsBits = 0x204D4F524620;
  v20._object = 0xE600000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x736472616F62;
  v21._object = 0xE600000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x2045524548570ALL;
  v22._object = 0xE700000000000000;
  String.append(_:)(v22);
  v111 = 4;
  _print_unlocked<A, B>(_:_:)();
  v23._object = 0x80000001015A3B00;
  v23._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v23);
  v111 = 5;
  _print_unlocked<A, B>(_:_:)();
  v24._countAndFlagsBits = 807419168;
  v24._object = 0xE400000000000000;
  String.append(_:)(v24);
  v25 = v112;
  v26 = v113;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v28 = sub_10001CC04(v27, v25, v26);
  if (v1)
  {
LABEL_3:

    if (qword_1019F2258 == -1)
    {
LABEL_4:
      v29 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v31 = Error.localizedDescription.getter();
      v33 = v32;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v31;
      *(inited + 40) = v33;
      v34 = static os_log_type_t.error.getter();
      sub_100005404(v29, &_mh_execute_header, v34, "Failed to fetch a board record with error %@", 44, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      return swift_willThrow();
    }

LABEL_42:
    swift_once();
    goto LABEL_4;
  }

  v36 = v28;
  v106 = 0;

  v37 = *(*(v36 + 16) + 32);
  *v10 = v37;
  v38 = v109;
  (v12)(v10, v109, v7);
  v39 = v37;
  LOBYTE(v37) = _dispatchPreconditionTest(_:)();
  v40 = v105;
  v41 = v107;
  v107(v10, v7);
  if ((v37 & 1) == 0)
  {
    __break(1u);
    goto LABEL_44;
  }

  type metadata accessor for SQLiteRowIterator();
  v42 = swift_initStackObject();
  v43 = v12;
  v44 = v38;
  v45 = v42;
  v108 = v43;
  v42[3] = 0;
  v46 = v42 + 3;
  v42[4] = 0;
  v97 = v42 + 4;
  v42[5] = 1;
  v42[2] = v36;

  swift_beginAccess();
  v47 = *(*(v36 + 16) + 32);
  *v10 = v47;
  v108(v10, v44, v7);
  v48 = v108;
  v49 = v47;
  LOBYTE(v47) = _dispatchPreconditionTest(_:)();
  v41(v10, v7);
  if ((v47 & 1) == 0)
  {
LABEL_36:
    __break(1u);
LABEL_37:

    sub_100025870(v41, v40);
    sub_100025870(v41, v40);

    sub_100025870(v41, v40);

    sub_100025870(v41, v40);

    v87 = *(*(v36 + 16) + 32);
    *v10 = v87;
    v88 = v102;
    v108(v10, v109, v102);
    v89 = v87;
    LOBYTE(v87) = _dispatchPreconditionTest(_:)();
    result = (v107)(v10, v88);
    if ((v87 & 1) == 0)
    {
      __break(1u);
      return result;
    }

    v90 = *(v36 + 24);
    if (v90)
    {
      sqlite3_finalize(v90);
      *(v36 + 24) = 0;
    }

    goto LABEL_3;
  }

  v101 += 7;
  v98 = _swiftEmptyArrayStorage;
  v102 = v7;
  while (1)
  {
    *v46 = 0;
    v46[1] = 0;
    v45[5] = 1;
    v50 = sqlite3_step(*(v36 + 24));
    if (v50 != 100)
    {
      break;
    }

    v51 = swift_retain_n();
    v52 = sub_1000826B0(v51, 0);
    if (!v52)
    {

      goto LABEL_15;
    }

    v53 = v52;
    v54 = (v52 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data);
    v55 = *(v52 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data + 8);
    if (v55 >> 60 == 15)
    {

      v41 = v107;
LABEL_15:
      v61 = *(*(v36 + 16) + 32);
      *v10 = v61;
      v48 = v108;
      v108(v10, v109, v7);
      v62 = v61;
      LOBYTE(v61) = _dispatchPreconditionTest(_:)();
      v41(v10, v7);
      if ((v61 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v56 = v45;
      v57 = *v54;
      sub_100024E84(*v54, v55);
      sub_100024E84(v57, v55);
      sub_1000066D0(&unk_101A22E10, type metadata accessor for CRLBoardCRDTData);

      v58 = v104;
      v59 = v103;
      v60 = v106;
      CRDT.init(serializedData:)();
      if (v60)
      {

        sub_100025870(v57, v55);

        (*v101)(v58, 1, 1, v59);
        sub_10000CAAC(v58, &qword_101A21C68);
        v106 = 0;
        v40 = v105;
        v41 = v107;
        v45 = v56;
        v7 = v102;
        goto LABEL_15;
      }

      v106 = 0;
      (*v101)(v58, 0, 1, v59);
      v96 = type metadata accessor for CRLBoardCRDTData;
      v63 = v99;
      sub_100025668(v58, v99, type metadata accessor for CRLBoardCRDTData);
      LODWORD(v95) = *(v53 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions + 32);
      v64 = *(v53 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions + 16);
      v94 = *(v53 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions);
      v93 = v64;
      sub_10000C83C(v63, v100, type metadata accessor for CRLBoardCRDTData);
      v65 = OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_boardIdentifier;
      v66 = (v53 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20) + v65);
      v67 = v66[1];
      v92 = *v66;
      type metadata accessor for CRLBoardData(0);
      v68 = swift_allocObject();

      sub_100025870(v57, v55);

      sub_100026028(v99, type metadata accessor for CRLBoardCRDTData);
      *(v68 + 16) = 7;
      *(v68 + 40) = v93;
      *(v68 + 24) = v94;
      *(v68 + 56) = v95;
      sub_100025668(v100, v68 + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData, v96);
      v96 = 0;
      v95 = v68;
      v69 = (v68 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
      *v69 = v92;
      v69[1] = v67;
      v40 = *(v53 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData + 8);
      if (v40 >> 60 == 15)
      {
        v45 = v56;
        v7 = v102;
      }

      else
      {
        v41 = *(v53 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData);
        sub_100006370(0, &qword_101A1AEB0);
        sub_100006370(0, &qword_1019F52C0);
        sub_100024E84(v41, v40);
        sub_100024E84(v41, v40);
        sub_100024E84(v41, v40);
        sub_100024E98(v41, v40);
        v70 = v106;
        v71 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
        if (v70)
        {
          goto LABEL_37;
        }

        v72 = v71;
        v45 = v56;
        v106 = 0;
        sub_100025870(v41, v40);
        sub_100025870(v41, v40);
        v7 = v102;
        if (v72)
        {
          v96 = v72;
          v73 = v72;
          sub_100CE94A4();
          sub_100025870(v41, v40);
          sub_100025870(v41, v40);
        }

        else
        {
          sub_100025870(v41, v40);
          sub_100025870(v41, v40);
          v96 = 0;
        }
      }

      v74 = v98;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v107;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v74 = sub_100086CD4(0, v74[2] + 1, 1, v74);
      }

      v98 = v74;
      v77 = v74[2];
      v76 = v74[3];
      if (v77 >= v76 >> 1)
      {
        v98 = sub_100086CD4((v76 > 1), v77 + 1, 1, v98);
      }

      v78 = v98;
      v98[2] = v77 + 1;
      v79 = &v78[2 * v77];
      v80 = v96;
      v79[4] = v95;
      v79[5] = v80;
      v81 = *(*(v36 + 16) + 32);
      *v10 = v81;
      v48 = v108;
      v108(v10, v109, v7);
      v82 = v81;
      LOBYTE(v81) = _dispatchPreconditionTest(_:)();
      v40 = v105;
      v41(v10, v7);
      if ((v81 & 1) == 0)
      {
        goto LABEL_36;
      }
    }
  }

  if (v50 && v50 != 101)
  {
    *v46 = v50;
    v83 = v97;
    *v97 = 0;
    v83[1] = 0;
  }

  v84 = *(*(v36 + 16) + 32);
  *v10 = v84;
  v48(v10, v109, v7);
  v85 = v84;
  LOBYTE(v84) = _dispatchPreconditionTest(_:)();
  v41(v10, v7);
  if ((v84 & 1) == 0)
  {
LABEL_44:
    __break(1u);
  }

  v86 = *(v36 + 24);
  if (v86)
  {
    sqlite3_finalize(v86);
    *(v36 + 24) = 0;
  }

  return v98;
}

uint64_t sub_100082024(uint64_t a1, void (*a2)(void *, void))
{
  v3 = sub_1000811B8();
  a2(v3, 0);
}

uint64_t sub_1000820E8(uint64_t a1, void *a2)
{
  if (String.count.getter() < 1)
  {
    v5 = 0;
    a2 = 0xE000000000000000;
  }

  else
  {

    v4._countAndFlagsBits = 46;
    v4._object = 0xE100000000000000;
    String.append(_:)(v4);
    v5 = a1;
  }

  _StringGuts.grow(_:)(112);
  v6._countAndFlagsBits = v5;
  v6._object = a2;
  String.append(_:)(v6);
  v7._object = 0x8000000101585360;
  v7._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 8236;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);
  v9._countAndFlagsBits = v5;
  v9._object = a2;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x616E5F72656E776FLL;
  v10._object = 0xEA0000000000656DLL;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 8236;
  v11._object = 0xE200000000000000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = v5;
  v12._object = a2;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x656E6961746E6F63;
  v13._object = 0xEE00646975755F72;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 8236;
  v14._object = 0xE200000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = v5;
  v15._object = a2;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0xD000000000000018;
  v16._object = 0x80000001015A34C0;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 8236;
  v17._object = 0xE200000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = v5;
  v18._object = a2;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 1635017060;
  v19._object = 0xE400000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 8236;
  v20._object = 0xE200000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = v5;
  v21._object = a2;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x6E6F7473626D6F74;
  v22._object = 0xEA00000000006465;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 8236;
  v23._object = 0xE200000000000000;
  String.append(_:)(v23);
  v24._countAndFlagsBits = v5;
  v24._object = a2;
  String.append(_:)(v24);
  v25._object = 0x80000001015A33D0;
  v25._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 8236;
  v26._object = 0xE200000000000000;
  String.append(_:)(v26);
  v27._countAndFlagsBits = v5;
  v27._object = a2;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0xD000000000000018;
  v28._object = 0x80000001015A37D0;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 8236;
  v29._object = 0xE200000000000000;
  String.append(_:)(v29);
  v30._countAndFlagsBits = v5;
  v30._object = a2;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0x7461645F636E7973;
  v31._object = 0xE900000000000061;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 8236;
  v32._object = 0xE200000000000000;
  String.append(_:)(v32);
  v33._countAndFlagsBits = v5;
  v33._object = a2;
  String.append(_:)(v33);
  v34._object = 0xEE00657461645F65;
  v34._countAndFlagsBits = 0x6E6F7473626D6F74;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 8236;
  v35._object = 0xE200000000000000;
  String.append(_:)(v35);
  v36._countAndFlagsBits = v5;
  v36._object = a2;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 0xD00000000000001ALL;
  v37._object = 0x80000001015A37F0;
  String.append(_:)(v37);
  v38._countAndFlagsBits = 8236;
  v38._object = 0xE200000000000000;
  String.append(_:)(v38);
  v39._countAndFlagsBits = v5;
  v39._object = a2;
  String.append(_:)(v39);
  v40._countAndFlagsBits = 0x5F65726168736B63;
  v40._object = 0xEC00000061746164;
  String.append(_:)(v40);
  v41._countAndFlagsBits = 8236;
  v41._object = 0xE200000000000000;
  String.append(_:)(v41);
  v42._countAndFlagsBits = v5;
  v42._object = a2;
  String.append(_:)(v42);
  v43._countAndFlagsBits = 0xD000000000000014;
  v43._object = 0x80000001015A3590;
  String.append(_:)(v43);
  v44._countAndFlagsBits = 8236;
  v44._object = 0xE200000000000000;
  String.append(_:)(v44);
  v45._countAndFlagsBits = v5;
  v45._object = a2;
  String.append(_:)(v45);
  v46._countAndFlagsBits = 0xD000000000000012;
  v46._object = 0x80000001015A3810;
  String.append(_:)(v46);
  v47._countAndFlagsBits = 8236;
  v47._object = 0xE200000000000000;
  String.append(_:)(v47);
  v48._countAndFlagsBits = v5;
  v48._object = a2;
  String.append(_:)(v48);
  v49._countAndFlagsBits = 0x61637369645F7369;
  v49._object = 0xEE00656C62616472;
  String.append(_:)(v49);
  v50._countAndFlagsBits = 8236;
  v50._object = 0xE200000000000000;
  String.append(_:)(v50);
  v51._countAndFlagsBits = v5;
  v51._object = a2;
  String.append(_:)(v51);
  v52._countAndFlagsBits = 0xD00000000000002DLL;
  v52._object = 0x80000001015A3760;
  String.append(_:)(v52);
  v53._countAndFlagsBits = 8236;
  v53._object = 0xE200000000000000;
  String.append(_:)(v53);
  v54._countAndFlagsBits = v5;
  v54._object = a2;
  String.append(_:)(v54);
  v55._countAndFlagsBits = 0xD000000000000026;
  v55._object = 0x80000001015A33F0;
  String.append(_:)(v55);
  v56._countAndFlagsBits = 8236;
  v56._object = 0xE200000000000000;
  String.append(_:)(v56);
  v57._countAndFlagsBits = v5;
  v57._object = a2;
  String.append(_:)(v57);
  v58._countAndFlagsBits = 0xD000000000000015;
  v58._object = 0x80000001015A3830;
  String.append(_:)(v58);
  v59._countAndFlagsBits = 8236;
  v59._object = 0xE200000000000000;
  String.append(_:)(v59);
  v60._countAndFlagsBits = v5;
  v60._object = a2;
  String.append(_:)(v60);

  v61._countAndFlagsBits = 0xD00000000000001BLL;
  v61._object = 0x80000001015A3790;
  String.append(_:)(v61);
  return 0;
}

uint64_t sub_1000826B0(uint64_t a1, sqlite3_int64 a2)
{
  v207 = a2;
  v3 = sub_1005B981C(&qword_1019F6990);
  v4 = __chkstk_darwin(v3 - 8);
  v198 = (&v177 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v200 = (&v177 - v6);
  v7 = type metadata accessor for UUID();
  v205 = *(v7 - 8);
  v206 = v7;
  v8 = __chkstk_darwin(v7);
  v189 = &v177 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v188 = &v177 - v11;
  v12 = __chkstk_darwin(v10);
  v197 = &v177 - v13;
  v14 = __chkstk_darwin(v12);
  v199 = &v177 - v15;
  __chkstk_darwin(v14);
  v17 = &v177 - v16;
  v202 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v18 = __chkstk_darwin(v202);
  v20 = (&v177 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v201 = &v177 - v21;
  v22 = type metadata accessor for CRLBoardIdentifier(0);
  v23 = __chkstk_darwin(v22 - 8);
  v187 = &v177 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v27 = &v177 - v26;
  v28 = __chkstk_darwin(v25);
  v30 = &v177 - v29;
  __chkstk_darwin(v28);
  v203 = &v177 - v31;
  v32 = type metadata accessor for DispatchPredicate();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v35 = (&v177 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = *(*(a1 + 16) + 32);
  *v35 = v36;
  v37 = *(v33 + 104);
  LODWORD(v193) = enum case for DispatchPredicate.onQueue(_:);
  v194 = v33 + 104;
  v192 = v37;
  v37(v35);
  v38 = v36;
  v39 = _dispatchPreconditionTest(_:)();
  v40 = *(v33 + 8);
  v195 = v35;
  v196 = v33 + 8;
  v190 = v32;
  v191 = v40;
  v41 = v40(v35, v32);
  if ((v39 & 1) == 0)
  {
    __break(1u);
    goto LABEL_58;
  }

  v42 = sub_10002C280(v207, a1);
  if (!v42)
  {
    goto LABEL_8;
  }

  v204 = a1;
  v44 = sub_100024DD4(v42, v43);
  v46 = v45;
  sub_100024E98(v44, v45);
  sub_100024EEC(v17, v44, v46);
  v48 = v47;
  v50 = v49;
  v185 = 0;
  v186 = v44;
  sub_10002640C(v44, v46);
  v51 = v205 + 4;
  v184 = v205[4];
  v184(v20, v17, v206);
  v52 = v201;
  v53 = (v20 + *(v202 + 20));
  *v53 = v48;
  v53[1] = v50;
  sub_100025668(v20, v52, type metadata accessor for CRLBoardIdentifierStorage);
  sub_100025668(v52, v27, type metadata accessor for CRLBoardIdentifierStorage);
  sub_100025668(v27, v30, type metadata accessor for CRLBoardIdentifier);
  v54 = v30;
  v55 = v203;
  sub_100025668(v54, v203, type metadata accessor for CRLBoardIdentifier);
  v39 = v204;
  if (__OFADD__(v207, 12))
  {
    __break(1u);
    goto LABEL_73;
  }

  v56 = sub_100028894(v207 + 12, v204);
  if (v57)
  {
    sub_100026028(v55, type metadata accessor for CRLBoardIdentifier);
    sub_10002640C(v186, v46);
LABEL_8:

    return 0;
  }

  v59 = v56;
  v182 = v51;
  v183 = v46;
  v60 = v55;
  v61 = sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v208 = &type metadata for UInt64;
  sub_1005B981C(&qword_101A21C70);
  String.init<A>(describing:)();
  v63 = String._bridgeToObjectiveC()();

  v64 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 56) = v64;
  v65 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(inited + 32) = v63;
  *(inited + 64) = v65;
  if (v59)
  {

    v50 = v60;
LABEL_40:
    v20 = v200;
    v105 = v39;
    v106 = v185;
    sub_100083B64(v207 + 2, v105, v200);
    v84 = v205;
    v88 = v206;
    v107 = v186;
    if (v106)
    {

      sub_10002640C(v107, v183);
      sub_100026028(v50, type metadata accessor for CRLBoardIdentifier);
      (v84[7])(v20, 1, 1, v88);
    }

    else
    {
      v108 = v205[6];
      if (v108(v20, 1, v206) == 1)
      {
        sub_100026028(v50, type metadata accessor for CRLBoardIdentifier);

        sub_10002640C(v107, v183);
      }

      else
      {
        v181 = v59;
        v184(v199, v20, v88);
        v20 = v198;
        sub_100083B64(v207 + 3, v204, v198);
        if (v108(v20, 1, v88) != 1)
        {
          goto LABEL_48;
        }

        sub_10002640C(v186, v183);
        (v84[1])(v199, v88);
        sub_100026028(v50, type metadata accessor for CRLBoardIdentifier);
      }
    }

    sub_10000CAAC(v20, &qword_1019F6990);
    return 0;
  }

  v66 = v65;
  v179 = v61;
  v180 = v64;
  v201 = inited + 32;
  v181 = 0;
  v178 = objc_opt_self();
  v67 = [v178 _atomicIncrementAssertCount];
  v208 = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, &v208);
  StaticString.description.getter();
  v68 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v69 = String._bridgeToObjectiveC()();

  v70 = [v69 lastPathComponent];

  v71 = inited;
  v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v74 = v73;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v75 = static OS_os_log.crlAssert;
  v76 = swift_initStackObject();
  *(v76 + 16) = xmmword_10146CA70;
  *(v76 + 56) = &type metadata for Int32;
  *(v76 + 64) = &protocol witness table for Int32;
  *(v76 + 32) = v67;
  v77 = v180;
  *(v76 + 96) = v180;
  *(v76 + 104) = v66;
  *(v76 + 72) = v68;
  *(v76 + 136) = &type metadata for String;
  v78 = sub_1000053B0();
  *(v76 + 112) = v72;
  *(v76 + 120) = v74;
  *(v76 + 176) = &type metadata for UInt;
  *(v76 + 184) = &protocol witness table for UInt;
  *(v76 + 144) = v78;
  *(v76 + 152) = 11329;
  v79 = v208;
  *(v76 + 216) = v77;
  *(v76 + 224) = v66;
  *(v76 + 192) = v79;
  v80 = v68;
  v81 = v79;
  v82 = static os_log_type_t.error.getter();
  sub_100005404(v75, &_mh_execute_header, v82, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v76);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v83 = static os_log_type_t.error.getter();
  sub_100005404(v75, &_mh_execute_header, v83, "expected inequality between two values of type %{public}@", 57, 2, v71);

  type metadata accessor for __VaListBuilder();
  v20 = swift_allocObject();
  v20[2] = 8;
  v20[3] = 0;
  v84 = v20 + 3;
  v20[4] = 0;
  v20[5] = 0;
  v180 = v71;
  v39 = *(v71 + 16);
  v85 = v201;
  if (!v39)
  {
LABEL_39:
    v101 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v102 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v103 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v104 = String._bridgeToObjectiveC()();

    [v178 handleFailureInFunction:v102 file:v103 lineNumber:11329 isFatal:0 format:v104 args:v101];

    v50 = v203;
    v39 = v204;
    v59 = v181;
    goto LABEL_40;
  }

  v50 = 0;
  v86 = 40;
  while (1)
  {
    v17 = sub_100020E58((v85 + 40 * v50), *(v85 + 40 * v50 + 24));
    v87 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v88 = *v84;
    v89 = *(v87 + 16);
    v90 = __OFADD__(*v84, v89);
    v91 = *v84 + v89;
    if (v90)
    {
      __break(1u);
      goto LABEL_62;
    }

    v17 = v20[4];
    if (v17 >= v91)
    {
      goto LABEL_31;
    }

    if (v17 + 0x4000000000000000 < 0)
    {
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v92 = v20[5];
    if (2 * v17 > v91)
    {
      v91 = 2 * v17;
    }

    v20[4] = v91;
    if ((v91 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_68;
    }

    v93 = v87;
    v94 = swift_slowAlloc();
    v95 = v94;
    v20[5] = v94;
    if (v92)
    {
      if (v94 != v92 || v94 >= &v92[8 * v88])
      {
        memmove(v94, v92, 8 * v88);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v87 = v93;
      v85 = v201;
LABEL_31:
      v95 = v20[5];
      if (!v95)
      {
        goto LABEL_38;
      }

      goto LABEL_32;
    }

    v87 = v93;
    v85 = v201;
    if (!v95)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

LABEL_32:
    v97 = *(v87 + 16);
    if (v97)
    {
      break;
    }

LABEL_16:

    if (++v50 == v39)
    {
      goto LABEL_39;
    }
  }

  v98 = (v87 + 32);
  v99 = *v84;
  while (1)
  {
    v100 = *v98++;
    *&v95[8 * v99] = v100;
    v99 = *v84 + 1;
    if (__OFADD__(*v84, 1))
    {
      break;
    }

    *v84 = v99;
    if (!--v97)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_48:
  v184(v197, v20, v88);
  v109 = v204;
  v110 = *(*(v204 + 16) + 32);
  v111 = v195;
  *v195 = v110;
  v20 = v190;
  v192(v111, v193, v190);
  v112 = v110;
  LOBYTE(v110) = _dispatchPreconditionTest(_:)();
  result = v191(v111, v20);
  v113 = v199;
  if ((v110 & 1) == 0)
  {
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v114 = sub_10002C280(v207 + 4, v109);
  if (v114)
  {
    v39 = sub_100024DD4(v114, v115);
    v17 = v116;
  }

  else
  {
    v39 = 0;
    v17 = 0xF000000000000000;
  }

  v117 = v207;
  a1 = v204;
  v118 = sub_100083D68(v207 + 5, v204);
  if (v118 == 2 || (LODWORD(v201) = v118, v119 = sub_100028894(v117 + 6, a1), (v120 & 1) != 0) || (v200 = v119, v41 = sub_100083D68(v117 + 7, a1), v41 == 2))
  {

    sub_100025870(v39, v17);
    sub_10002640C(v186, v183);
    v121 = v84[1];
    v121(v197, v88);
    v121(v113, v88);
    v122 = v50;
    goto LABEL_56;
  }

LABEL_58:
  LOBYTE(v50) = v41;
  v123 = *(*(a1 + 16) + 32);
  v124 = v195;
  *v195 = v123;
  v192(v124, v193, v20);
  v125 = v123;
  LOBYTE(v123) = _dispatchPreconditionTest(_:)();
  result = v191(v124, v20);
  if ((v123 & 1) == 0)
  {
    goto LABEL_90;
  }

  v126 = sub_10002C280(v207 + 8, a1);
  if (v126)
  {
    v84 = sub_100024DD4(v126, v127);
    v88 = v128;
  }

  else
  {
LABEL_62:
    v84 = 0;
    v88 = 0xF000000000000000;
  }

  v129 = v199;
  v130 = v207;
  v86 = v204;
  v131 = sub_100083E9C(v207 + 9, v204);
  if ((v132 & 1) == 0)
  {
    v198 = v131;
    LOBYTE(v87) = sub_100083D68(v130 + 10, v86);
    if (v87 == 2)
    {

      sub_100025870(v84, v88);
      v136 = v39;
      v137 = v17;
LABEL_85:
      sub_100025870(v136, v137);
      sub_10002640C(v186, v183);
      v133 = v206;
      v134 = v205[1];
      v134(v197, v206);
      v135 = v199;
      goto LABEL_86;
    }

LABEL_69:
    LOBYTE(v55) = v87;
    v179 = v17;
    v180 = v84;
    v185 = v88;
    v138 = *(*(v86 + 16) + 32);
    v139 = v195;
    *v195 = v138;
    v192(v139, v193, v20);
    v140 = v138;
    LOBYTE(v138) = _dispatchPreconditionTest(_:)();
    result = v191(v139, v20);
    if (v138)
    {
      v141 = sub_10002C280(v207 + 11, v86);
      if (v141)
      {
        v143 = sub_100024DD4(v141, v142);
        v145 = v144;
        goto LABEL_74;
      }

LABEL_73:
      v143 = 0;
      v145 = 0xF000000000000000;
LABEL_74:
      result = v207 + 13;
      if (!__OFADD__(v207, 13))
      {
        v196 = sub_100083E9C(result, v204);
        if (v146)
        {
          goto LABEL_84;
        }

        result = v207 + 14;
        if (!__OFADD__(v207, 14))
        {
          v147 = sub_100083D68(result, v204);
          if (v147 == 2)
          {
            goto LABEL_84;
          }

          v148 = v147;
          result = v207 + 15;
          if (!__OFADD__(v207, 15))
          {
            v195 = sub_100028894(result, v204);
            if (v149)
            {
              goto LABEL_84;
            }

            result = v207 + 16;
            if (!__OFADD__(v207, 16))
            {
              v194 = sub_100028894(result, v204);
              if ((v150 & 1) == 0)
              {
                result = v207 + 17;
                if (!__OFADD__(v207, 17))
                {
                  v193 = sub_100028894(result, v204);
                  if (v151)
                  {
                    goto LABEL_84;
                  }

                  result = v207 + 18;
                  if (!__OFADD__(v207, 18))
                  {
                    v207 = sub_100028894(result, v204);
                    LODWORD(v205) = v152;

                    sub_10002640C(v186, v183);
                    sub_100025668(v203, v187, type metadata accessor for CRLBoardIdentifier);
                    v153 = v206;
                    v154 = v184;
                    v184(v188, v199, v206);
                    v154(v189, v197, v153);
                    type metadata accessor for CRLBoardDatabaseRow();
                    v155 = swift_allocObject();
                    *(v155 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data) = xmmword_101486780;
                    *(v155 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData) = xmmword_101486780;
                    *(v155 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData) = xmmword_101486780;
                    v156 = v187;
                    sub_10000C83C(v187, v155 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
                    v157 = (v156 + *(v202 + 20));
                    v158 = v157[1];
                    v204 = *v157;

                    sub_100026028(v156, type metadata accessor for CRLBoardIdentifier);
                    v159 = (v155 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ownerName);
                    *v159 = v204;
                    v159[1] = v158;
                    v160 = v155 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions;
                    v161 = v194;
                    v162 = v195;
                    *v160 = v181;
                    *(v160 + 8) = v162;
                    *(v160 + 16) = v161;
                    v163 = v206;
                    *(v160 + 24) = v207;
                    *(v160 + 32) = v205 & 1;
                    v164 = v184;
                    v184((v155 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_rootContainerUUID), v188, v163);
                    v164(v155 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_alternateRootContainerUUID, v189, v163);
                    v165 = (v155 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data);
                    v166 = *(v155 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data);
                    v206 = *(v155 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data + 8);
                    v207 = v166;
                    v167 = v179;
                    sub_100024E84(v39, v179);
                    *v165 = v39;
                    v165[1] = v167;
                    sub_100025870(v207, v206);
                    sub_100025870(v39, v167);
                    v168 = v155;
                    *(v155 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_isLocalTombstone) = v201 & 1;
                    *(v155 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_unsyncedChanges) = v200;
                    *(v155 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareUnsyncedChanges) = v50 & 1;
                    v169 = (v155 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData);
                    v170 = v168;
                    v171 = v169[1];
                    v207 = *v169;
                    v172 = v180;
                    v173 = v185;
                    sub_100024E84(v180, v185);
                    *v169 = v172;
                    v169[1] = v173;
                    sub_100025870(v207, v171);
                    sub_100025870(v172, v173);
                    *(v170 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_tombstoneDate) = v198;
                    *(v170 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_hideFromRecentlyDeleted) = v55 & 1;
                    v174 = (v170 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData);
                    v175 = *(v170 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData);
                    v176 = *(v170 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData + 8);
                    sub_100024E84(v143, v145);
                    *v174 = v143;
                    v174[1] = v145;
                    sub_100025870(v175, v176);
                    sub_100025870(v143, v145);
                    result = v170;
                    *(v170 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_lastActivityTime) = v196;
                    *(v170 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_isDiscardable) = v148 & 1;
                    *(v170 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_lastUpgradedVersion) = v193;
                    return result;
                  }

LABEL_97:
                  __break(1u);
                  return result;
                }

LABEL_96:
                __break(1u);
                goto LABEL_97;
              }

LABEL_84:

              sub_100025870(v143, v145);
              sub_100025870(v180, v185);
              v136 = v39;
              v137 = v179;
              goto LABEL_85;
            }

LABEL_95:
            __break(1u);
            goto LABEL_96;
          }

LABEL_94:
          __break(1u);
          goto LABEL_95;
        }

LABEL_93:
        __break(1u);
        goto LABEL_94;
      }

LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  sub_100025870(v84, v88);
  sub_100025870(v39, v17);
  sub_10002640C(v186, v183);
  v133 = v206;
  v134 = v205[1];
  v134(v197, v206);
  v135 = v129;
LABEL_86:
  v134(v135, v133);
  v122 = v203;
LABEL_56:
  sub_100026028(v122, type metadata accessor for CRLBoardIdentifier);
  return 0;
}

uint64_t sub_100083B3C(char *a1, uint64_t a2, uint64_t a3)
{
  for (; a2; --a2)
  {
    v3 = *a1++;
    a3 = 0x100000001B3 * (a3 ^ v3);
  }

  return a3;
}

uint64_t sub_100083B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a1;
  v30 = a3;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = a2;
  v8 = *(a2 + 16);
  v9 = *(v8 + 32);
  *v7 = v9;
  v10 = enum case for DispatchPredicate.onQueue(_:);
  v11 = *(v5 + 104);
  v11(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v12 = v9;
  v13 = _dispatchPreconditionTest(_:)();
  v14 = *(v5 + 8);
  result = v14(v7, v4);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v16 = *(v8 + 32);
  *v7 = v16;
  v11(v7, v10, v4);
  v17 = v16;
  v18 = _dispatchPreconditionTest(_:)();
  result = v14(v7, v4);
  if ((v18 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v19 = sub_10002C280(v28, v29);
  if (v19)
  {
    v21 = sub_100024DD4(v19, v20);
    v22 = v30;
    v23 = v31;
    result = UUID.init(crl_data:)(v21, v24);
    if (v23)
    {
      return result;
    }

    v25 = 0;
  }

  else
  {
    v25 = 1;
    v22 = v30;
  }

  v26 = type metadata accessor for UUID();
  return (*(*(v26 - 8) + 56))(v22, v25, 1, v26);
}

uint64_t sub_100083D68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(*(a2 + 16) + 32);
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v11 = sub_10001E378(a1, a2) != 0;
    if (v12)
    {
      return 2;
    }

    else
    {
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100083E9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(*(a2 + 16) + 32);
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_beginAccess();
  if (a1 < 0xFFFFFFFF80000000)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a1 > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  if (sqlite3_column_type(*(a2 + 24), a1) == 5)
  {
    return 0;
  }

  else
  {
    return sqlite3_column_double(*(a2 + 24), a1);
  }
}

uint64_t type metadata accessor for CRLBoardDatabaseRow()
{
  result = qword_101A1D0F0;
  if (!qword_101A1D0F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10008406C()
{
  result = type metadata accessor for CRLBoardIdentifierStorage(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1000841C0(unint64_t *a1, void (*a2)(uint64_t))
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

NSString sub_10008430C()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD78F0 = result;
  return result;
}

uint64_t sub_10008449C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v53 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v46 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v46 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v46 - v13;
  v15 = __chkstk_darwin(v12);
  v55 = &v46 - v16;
  v17 = __chkstk_darwin(v15);
  v56 = &v46 - v18;
  __chkstk_darwin(v17);
  v57 = &v46 - v19;
  UUID.init()();
  UUID.init()();
  UUID.init()();
  v20 = [objc_opt_self() mainBundle];
  v21 = String._bridgeToObjectiveC()();
  v22 = String._bridgeToObjectiveC()();
  v23 = [v20 localizedStringForKey:v21 value:v22 table:0];

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v25;
  v52 = v24;

  v26 = type metadata accessor for CRLBoardCRDTData(0);
  v27 = *(v26 + 40);
  v28 = v26;
  v49 = v26;
  *(a1 + v27) = _swiftEmptyDictionarySingleton;
  v29 = v3;
  v30 = *(v3 + 16);
  v31 = v14;
  v30(v14, v57, v2);
  v30(v11, v14, v2);
  v50 = a1;
  v46 = v11;
  CRRegister.init(wrappedValue:)();
  v32 = *(v29 + 8);
  v54 = v29 + 8;
  v47 = v32;
  v32(v14, v2);
  v48 = v14;
  v30(v14, v56, v2);
  v30(v11, v55, v2);
  v33 = a1 + *(v28 + 20);
  *(v33 + *(type metadata accessor for CRLBoardRootContainerAffinityCRDTData(0) + 24)) = _swiftEmptyDictionarySingleton;
  v34 = v8;
  v30(v8, v31, v2);
  v35 = v53;
  v30(v53, v34, v2);
  CRRegister.init(wrappedValue:)();
  v36 = v47;
  v47(v34, v2);
  v37 = v46;
  v30(v34, v46, v2);
  v30(v35, v34, v2);
  CRRegister.init(wrappedValue:)();
  v36(v34, v2);
  v36(v37, v2);
  v36(v48, v2);
  v38 = v49;
  v39 = v50;
  v58 = v52;
  v59 = v51;
  CRRegister.init(wrappedValue:)();
  sub_100084B00(v39 + v38[7]);
  v40 = v39 + v38[8];
  static Date.timeIntervalSinceReferenceDate.getter();
  v42 = v41;
  *(v40 + *(type metadata accessor for CRLSharedBoardMetadataCRDTData(0) + 32)) = _swiftEmptyDictionarySingleton;
  v58 = v42;
  CRMaxRegister.init(wrappedValue:)();
  v58 = v42;
  CRRegister.init(wrappedValue:)();
  LOBYTE(v58) = 1;
  CRRegister.init(wrappedValue:)();
  LOBYTE(v58) = 0;
  CRMaxRegister.init(wrappedValue:)();
  v43 = v39 + v38[9];
  sub_1000841C0(&qword_1019FB870, &type metadata accessor for UUID);
  CROrderedSet.init()();
  v44 = type metadata accessor for CRLBoardScenesCRDTData(0);
  CRDictionary.init()();
  sub_10007F4A4();
  sub_10007F5AC();
  CRDictionary.init()();
  v36(v55, v2);
  v36(v56, v2);
  result = (v36)(v57, v2);
  *(v43 + *(v44 + 28)) = _swiftEmptyDictionarySingleton;
  return result;
}

uint64_t sub_100084B00@<X0>(uint64_t a1@<X8>)
{
  sub_100084F94(__src);
  sub_100084F5C(v6);
  sub_100084F5C(v7);
  sub_100084F9C(v8);
  sub_1000852C4(v9);
  memcpy(__dst, __src, 0x370uLL);
  sub_1005B981C(&qword_1019F4B88);
  sub_10007E3CC(&qword_101A33818, &qword_1019F4B88, &unk_10146CDF0, sub_10007E448);
  CRRegister.init(wrappedValue:)();
  inserted = type metadata accessor for CRLBoardInsertStyleData(0);
  memcpy(__dst, __src, 0x370uLL);
  CRRegister.init(wrappedValue:)();
  memcpy(__dst, __src, 0x370uLL);
  CRRegister.init(wrappedValue:)();
  memcpy(__dst, v6, 0x180uLL);
  sub_1005B981C(&qword_1019F4B68);
  sub_10007E3CC(&qword_101A33828, &qword_1019F4B68, &unk_10146CDD0, sub_10007E614);
  CRRegister.init(wrappedValue:)();
  memcpy(__dst, v7, 0x180uLL);
  sub_1005B981C(&qword_1019F4B50);
  sub_10007E3CC(&qword_101A33838, &qword_1019F4B50, &unk_1014C6CA0, sub_10007E960);
  CRRegister.init(wrappedValue:)();
  memcpy(__dst, v8, sizeof(__dst));
  sub_1005B981C(&qword_1019F4B78);
  sub_10007E3CC(&qword_101A33848, &qword_1019F4B78, &unk_10146CDE0, sub_10007EF8C);
  CRRegister.init(wrappedValue:)();
  memcpy(__dst, v9, 0x178uLL);
  sub_1005B981C(&qword_1019F4B40);
  sub_10007E3CC(&unk_101A33858, &qword_1019F4B40, &unk_10146CDA8, sub_10007F0A0);
  CRRegister.init(wrappedValue:)();
  *(a1 + *(inserted + 44)) = _swiftEmptyDictionarySingleton;
  memcpy(__dst, __src, 0x370uLL);
  sub_1005B981C(&unk_1019F4B90);
  CRRegister.wrappedValue.setter();
  memcpy(__dst, __src, 0x370uLL);
  CRRegister.wrappedValue.setter();
  memcpy(__dst, __src, 0x370uLL);
  CRRegister.wrappedValue.setter();
  memcpy(__dst, v6, 0x180uLL);
  sub_1005B981C(&qword_1019F4B70);
  CRRegister.wrappedValue.setter();
  memcpy(__dst, v7, 0x180uLL);
  sub_1005B981C(&qword_1019F4B58);
  CRRegister.wrappedValue.setter();
  memcpy(__dst, v8, sizeof(__dst));
  sub_1005B981C(&qword_1019F4B80);
  CRRegister.wrappedValue.setter();
  memcpy(__dst, v9, 0x178uLL);
  sub_1005B981C(&qword_1019F4B48);
  return CRRegister.wrappedValue.setter();
}

double sub_100084F5C(_OWORD *a1)
{
  result = 0.0;
  a1[22] = 0u;
  a1[23] = 0u;
  a1[20] = 0u;
  a1[21] = 0u;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_100084FA4(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  CRRegister.wrappedValue.getter();
  v9 = static UUID.== infix(_:_:)();
  v10 = *(v3 + 8);
  v10(v6, v2);
  v10(v8, v2);
  if ((v9 & 1) == 0)
  {
    goto LABEL_12;
  }

  v11 = type metadata accessor for CRLBoardCRDTData(0);
  if ((sub_1012F69E8() & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_1005B981C(&qword_101A1A020);
  CRRegister.wrappedValue.getter();
  v13 = v17;
  v12 = v18;
  CRRegister.wrappedValue.getter();
  if (v13 == v17 && v12 == v18)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
LABEL_12:
      v15 = 0;
      return v15 & 1;
    }
  }

  if ((sub_1012F6E64(a1 + *(v11 + 28)) & 1) == 0)
  {
    goto LABEL_12;
  }

  if ((sub_1012F6BB4() & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_1000841C0(&qword_1019FB870, &type metadata accessor for UUID);
  if ((static CROrderedSet.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_12;
  }

  type metadata accessor for CRLBoardScenesCRDTData(0);
  if ((static CRDictionary.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_10007F4A4();
  sub_10007F5AC();
  v15 = static CRDictionary.== infix(_:_:)();
  return v15 & 1;
}

double sub_1000852C4(uint64_t a1)
{
  *(a1 + 368) = 0;
  result = 0.0;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_100085300(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 880))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 592);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100085348(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 384))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 368);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100085390(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 888))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 592);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000853D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 376))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100085420(uint64_t a1)
{
  v2 = sub_1000841C0(&qword_101A227C0, type metadata accessor for CRLBoardCRDTData);

  return static CRStruct_6.fieldKeys.getter(a1, v2);
}

__n128 sub_10008548C@<Q0>(uint64_t a1@<X8>)
{
  if (qword_1019F2C00 != -1)
  {
    swift_once();
  }

  *v20 = xmmword_101AD97D8;
  *&v20[16] = *&qword_101AD97E8;
  v21 = xmmword_101AD97F8;
  v17 = xmmword_101AD9798;
  *v18 = *&qword_101AD97A8;
  *&v18[16] = xmmword_101AD97B8;
  v19 = *&qword_101AD97C8;
  *v16 = xmmword_101AD9778;
  *&v16[16] = *&qword_101AD9788;
  v2 = xmmword_101AD9778;
  v3 = unk_101AD9790;
  v4 = qword_101AD97A8;
  v5 = *(&xmmword_101AD97B8 + 1);
  v6 = xmmword_101AD97D8;
  v7 = unk_101AD97F0;
  v9 = *&v16[8];
  v10 = xmmword_101AD9798;
  v11 = *&v18[8];
  v12 = *&qword_101AD97C8;
  v13 = *&v20[8];
  v14 = xmmword_101AD97F8;
  sub_10000BE14(v16, v15, &qword_101A33AE8);
  *a1 = v2;
  *(a1 + 8) = v9;
  *(a1 + 24) = v3;
  *(a1 + 32) = v10;
  *(a1 + 48) = v4;
  *(a1 + 56) = v11;
  *(a1 + 72) = v5;
  *(a1 + 80) = v12;
  *(a1 + 96) = v6;
  result = v14;
  *(a1 + 104) = v13;
  *(a1 + 120) = v7;
  *(a1 + 128) = v14;
  return result;
}

uint64_t sub_1000855CC()
{
  *&xmmword_101AD9778 = 97;
  *(&xmmword_101AD9778 + 1) = 0xE100000000000000;
  qword_101AD9788 = swift_getKeyPath();
  unk_101AD9790 = 98;
  *&xmmword_101AD9798 = 0xE100000000000000;
  *(&xmmword_101AD9798 + 1) = swift_getKeyPath();
  unk_101AD97A8 = 99;
  qword_101AD97B0 = 0xE100000000000000;
  *&xmmword_101AD97B8 = swift_getKeyPath();
  *(&xmmword_101AD97B8 + 1) = 100;
  qword_101AD97C8 = 0xE100000000000000;
  qword_101AD97D0 = swift_getKeyPath();
  *&xmmword_101AD97D8 = 101;
  *(&xmmword_101AD97D8 + 1) = 0xE100000000000000;
  qword_101AD97E8 = swift_getKeyPath();
  unk_101AD97F0 = 102;
  *&xmmword_101AD97F8 = 0xE100000000000000;
  result = swift_getKeyPath();
  *(&xmmword_101AD97F8 + 1) = result;
  return result;
}

uint64_t sub_10008594C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v19 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = v19 - v11;
  __chkstk_darwin(v10);
  v14 = v19 - v13;
  UUID.init()();
  UUID.init()();
  v15 = *(type metadata accessor for CRLBoardRootContainerAffinityCRDTData(0) + 24);
  v19[1] = a1;
  *(a1 + v15) = _swiftEmptyDictionarySingleton;
  v16 = *(v3 + 16);
  v16(v9, v14, v2);
  v16(v6, v9, v2);
  CRRegister.init(wrappedValue:)();
  v17 = *(v3 + 8);
  v17(v9, v2);
  v16(v9, v12, v2);
  v16(v6, v9, v2);
  CRRegister.init(wrappedValue:)();
  v17(v9, v2);
  v17(v12, v2);
  return (v17)(v14, v2);
}

uint64_t sub_100085B94(uint64_t a1)
{
  v2 = sub_1000841C0(&qword_101A33AF8, type metadata accessor for CRLBoardRootContainerAffinityCRDTData);

  return static CRStruct_2.fieldKeys.getter(a1, v2);
}

uint64_t sub_100085C00@<X0>(void *a1@<X8>)
{
  if (qword_1019F2C08 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_101AD9810;
  v3 = qword_101AD9818;
  v2 = unk_101AD9820;
  v4 = qword_101AD9828;
  v5 = qword_101AD9830;
  *a1 = qword_101AD9808;
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v4;
  a1[5] = v5;
}

uint64_t sub_100085CA4()
{
  qword_101AD9808 = 97;
  unk_101AD9810 = 0xE100000000000000;
  qword_101AD9818 = swift_getKeyPath();
  unk_101AD9820 = 98;
  qword_101AD9828 = 0xE100000000000000;
  result = swift_getKeyPath();
  qword_101AD9830 = result;
  return result;
}

uint64_t sub_100085FC0(uint64_t a1)
{
  v2 = sub_1000841C0(&qword_101A33B08, type metadata accessor for CRLBoardInsertStyleData);

  return static CRStruct_7.fieldKeys.getter(a1, v2);
}

__n128 sub_10008602C@<Q0>(uint64_t a1@<X8>)
{
  if (qword_1019F2C10 != -1)
  {
    swift_once();
  }

  v23 = xmmword_101AD98B8;
  *v24 = *&qword_101AD98C8;
  *&v24[16] = qword_101AD98D8;
  *&v20[16] = xmmword_101AD9878;
  v21 = *&qword_101AD9888;
  *v22 = xmmword_101AD9898;
  *&v22[16] = *&qword_101AD98A8;
  *v18 = xmmword_101AD9838;
  *&v18[16] = *&qword_101AD9848;
  v19 = xmmword_101AD9858;
  *v20 = *&qword_101AD9868;
  v2 = xmmword_101AD9838;
  v3 = unk_101AD9850;
  v4 = qword_101AD9868;
  v5 = *(&xmmword_101AD9878 + 1);
  v6 = xmmword_101AD9898;
  v7 = unk_101AD98B0;
  v8 = qword_101AD98C8;
  v10 = *&v18[8];
  v11 = xmmword_101AD9858;
  v12 = *&v20[8];
  v13 = *&qword_101AD9888;
  v14 = *&v22[8];
  v15 = xmmword_101AD98B8;
  v16 = *&v24[8];
  sub_10000BE14(v18, v17, &qword_101A33B00);
  *a1 = v2;
  *(a1 + 8) = v10;
  *(a1 + 24) = v3;
  *(a1 + 32) = v11;
  *(a1 + 48) = v4;
  *(a1 + 56) = v12;
  *(a1 + 72) = v5;
  *(a1 + 80) = v13;
  *(a1 + 96) = v6;
  *(a1 + 104) = v14;
  *(a1 + 120) = v7;
  *(a1 + 128) = v15;
  *(a1 + 144) = v8;
  result = v16;
  *(a1 + 152) = v16;
  return result;
}

uint64_t sub_10008618C()
{
  *&xmmword_101AD9838 = 97;
  *(&xmmword_101AD9838 + 1) = 0xE100000000000000;
  qword_101AD9848 = swift_getKeyPath();
  unk_101AD9850 = 98;
  *&xmmword_101AD9858 = 0xE100000000000000;
  *(&xmmword_101AD9858 + 1) = swift_getKeyPath();
  unk_101AD9868 = 99;
  qword_101AD9870 = 0xE100000000000000;
  *&xmmword_101AD9878 = swift_getKeyPath();
  *(&xmmword_101AD9878 + 1) = 100;
  qword_101AD9888 = 0xE100000000000000;
  qword_101AD9890 = swift_getKeyPath();
  *&xmmword_101AD9898 = 101;
  *(&xmmword_101AD9898 + 1) = 0xE100000000000000;
  qword_101AD98A8 = swift_getKeyPath();
  unk_101AD98B0 = 102;
  *&xmmword_101AD98B8 = 0xE100000000000000;
  *(&xmmword_101AD98B8 + 1) = swift_getKeyPath();
  unk_101AD98C8 = 103;
  qword_101AD98D0 = 0xE100000000000000;
  result = swift_getKeyPath();
  qword_101AD98D8 = result;
  return result;
}

uint64_t sub_1000862A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 872) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 880) = 1;
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
      *(result + 592) = (a2 - 1);
      return result;
    }

    *(result + 880) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100086410(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 376) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 384) = 1;
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
      *(result + 368) = (a2 - 1);
      return result;
    }

    *(result + 384) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10008653C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 888) = 1;
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
      *(result + 592) = (a2 - 1);
      return result;
    }

    *(result + 888) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100086850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  static Date.timeIntervalSinceReferenceDate.getter();
  *(a2 + *(a1 + 32)) = _swiftEmptyDictionarySingleton;
  CRMaxRegister.init(wrappedValue:)();
  CRRegister.init(wrappedValue:)();
  CRRegister.init(wrappedValue:)();
  return CRMaxRegister.init(wrappedValue:)();
}

uint64_t sub_100086944(uint64_t a1)
{
  v2 = sub_1000841C0(&qword_101A33AF0, type metadata accessor for CRLSharedBoardMetadataCRDTData);

  return static CRStruct_4.fieldKeys.getter(a1, v2);
}

uint64_t sub_1000869B0()
{
  qword_101AD98E0 = 97;
  *algn_101AD98E8 = 0xE100000000000000;
  qword_101AD98F0 = swift_getKeyPath();
  unk_101AD98F8 = 98;
  qword_101AD9900 = 0xE100000000000000;
  qword_101AD9908 = swift_getKeyPath();
  qword_101AD9910 = 99;
  qword_101AD9918 = 0xE100000000000000;
  qword_101AD9920 = swift_getKeyPath();
  unk_101AD9928 = 100;
  qword_101AD9930 = 0xE100000000000000;
  result = swift_getKeyPath();
  qword_101AD9938 = result;
  return result;
}

uint64_t sub_100086A94(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1005B981C(&unk_1019F5250);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for CRLBoardRootContainerAffinityCRDTData(0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_1005B981C(&qword_101A1A020);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        inserted = type metadata accessor for CRLBoardInsertStyleData(0);
        if (*(*(inserted - 8) + 84) == a3)
        {
          v10 = inserted;
          v14 = *(inserted - 8);
          v15 = a4[7];
        }

        else
        {
          v18 = type metadata accessor for CRLSharedBoardMetadataCRDTData(0);
          if (*(*(v18 - 8) + 84) == a3)
          {
            v10 = v18;
            v14 = *(v18 - 8);
            v15 = a4[8];
          }

          else
          {
            result = type metadata accessor for CRLBoardScenesCRDTData(0);
            if (*(*(result - 8) + 84) != a3)
            {
              *(a1 + a4[10]) = (a2 - 1);
              return result;
            }

            v10 = result;
            v14 = *(result - 8);
            v15 = a4[9];
          }
        }
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void *sub_100086CD4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1005B981C(&qword_101A11B58);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1005B981C(&qword_101A11B60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100086E08()
{
  sub_100086F34(v0 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_boardIdentifier);

  v1 = OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_rootContainerUUID;
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_alternateRootContainerUUID, v2);
  sub_100025870(*(v0 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data), *(v0 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data + 8));
  sub_100025870(*(v0 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData), *(v0 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData + 8));
  sub_100025870(*(v0 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData), *(v0 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData + 8));

  return swift_deallocClassInstance();
}

uint64_t sub_100086F34(uint64_t a1)
{
  v2 = type metadata accessor for CRLBoardIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100086FA0()
{
  v0[22] = *(v0[3] + OBJC_IVAR____TtC8Freeform25CRLBoardPreviewImageCache_boardLibrary);
  v0[23] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[24] = v2;
  v0[25] = v1;

  return _swift_task_switch(sub_100087040, v2, v1);
}

uint64_t sub_100087040()
{
  v1 = v0[22];
  v0[26] = static MainActor.shared.getter();
  v2 = swift_task_alloc();
  v0[27] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[28] = v3;
  *v3 = v0;
  v3[1] = sub_1006D8A6C;

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_100087148(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A15A30);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v8 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = v22 - v9;
  v11 = *(v5 + 16);
  v11(v22 - v9, a1, v4);
  v11(v8, v10, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  (*(v5 + 32))(v13 + v12, v10, v4);
  if (*(a2 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_didStartUpdating) == 1)
  {
    CheckedContinuation.resume(returning:)();

    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    v15 = [objc_opt_self() defaultCenter];
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    v22[1] = v16 + 16;
    if (qword_1019F2748 != -1)
    {
      swift_once();
    }

    v22[0] = qword_101AD8948;
    v17 = [objc_opt_self() mainQueue];
    v18 = swift_allocObject();
    v18[2] = v16;
    v18[3] = v15;
    v18[4] = sub_1008A1948;
    v18[5] = v13;
    aBlock[4] = sub_1006EEC20;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_100059694;
    aBlock[3] = &unk_1018B0CE8;
    v19 = _Block_copy(aBlock);

    v20 = v15;

    v21 = [v20 addObserverForName:v22[0] object:a2 queue:v17 usingBlock:v19];
    _Block_release(v19);

    (*(v5 + 8))(v8, v4);
    swift_beginAccess();
    *(v16 + 16) = v21;

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_1000874D8()
{
  v1 = sub_1005B981C(&qword_101A15A30);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10008756C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000875A4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000875FC()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_10008765C()
{
  result = qword_1019F54F8;
  if (!qword_1019F54F8)
  {
    sub_1005C4E5C(&qword_1019F54F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F54F8);
  }

  return result;
}

void sub_10008774C(char a1)
{
  v2 = v1;
  v23.receiver = v2;
  v23.super_class = type metadata accessor for CRLiOSFolderGridViewController();
  objc_msgSendSuper2(&v23, "viewDidAppear:", a1 & 1);
  v4 = objc_opt_self();
  v5 = [v4 sharedApplication];
  v6 = [v5 delegate];

  if (!v6)
  {
    __break(1u);
    goto LABEL_15;
  }

  type metadata accessor for CRLiOSAppDelegate();
  v7 = swift_dynamicCastClassUnconditional();
  v8 = [v4 sharedApplication];
  if ([v8 shouldRecordExtendedLaunchTime] && (v9 = OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_didLogExtendedLaunchTime, (*(v7 + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_didLogExtendedLaunchTime) & 1) == 0))
  {
    v10 = [v8 _launchTestName];
    [v8 finishedTest:v10];

    *(v7 + v9) = 1;
  }

  else
  {
  }

  swift_unknownObjectRelease();
  v11 = [v4 sharedApplication];
  v12 = [v11 isRunningTest];

  if (v12)
  {
    v13 = [v4 sharedApplication];
    v14 = [v13 delegate];

    if (!v14)
    {
LABEL_16:
      __break(1u);
      return;
    }

    swift_unknownObjectRelease();
    if (qword_101AD75D0)
    {
      v15 = qword_101AD75E0;
      ObjectType = swift_getObjectType();
      v17 = *(v15 + 32);
      swift_unknownObjectRetain();
      v17(v2, ObjectType, v15);
      swift_unknownObjectRelease();
    }
  }

  v18 = [v2 collectionView];
  if (!v18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v18;
  v20 = [v18 collectionViewLayout];

  [v20 invalidateLayout];
  v2[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_shouldSaveViewState] = 1;
  v21 = *&v2[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_libraryProvider];
  v22 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_shareErrorObservers;
  if (([*(v21 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_shareErrorObservers) containsObject:v2] & 1) == 0)
  {
    [*(v21 + v22) addObject:v2];
  }

  [objc_opt_self() addKeyboardObserver:v2];
}

void sub_100087A44()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedApplication];
  v2 = [v1 delegate];

  if (v2)
  {
    type metadata accessor for CRLiOSAppDelegate();
    v3 = swift_dynamicCastClassUnconditional();
    v4 = [v0 sharedApplication];
    if ([v4 shouldRecordExtendedLaunchTime] && (v5 = OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_didLogExtendedLaunchTime, (*(v3 + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_didLogExtendedLaunchTime) & 1) == 0))
    {
      v6 = [v4 _launchTestName];
      [v4 finishedTest:v6];

      *(v3 + v5) = 1;
    }

    else
    {
    }

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

BOOL sub_100087F28(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_100088004@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_100088030@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_1000880CC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1000880F0@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_DWORD *sub_10008811C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

BOOL sub_100088234(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_100088264@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_100088290@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_100088328(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100088348(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CRLRectData(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10008847C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000884B8()
{
  swift_unknownObjectRelease();
  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100088500()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10008854C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1005B981C(&qword_101A1A020);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_1005B981C(&qword_1019F4850);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_1005B981C(&qword_1019F4858);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_1005B981C(&qword_1019F4860);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[8]);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_100088718(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1005B981C(&qword_101A1A020);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_1005B981C(&qword_1019F4850);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_1005B981C(&qword_1019F4858);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = sub_1005B981C(&qword_1019F4860);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[8]) = (a2 - 1);
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000888E0()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100088940()
{
  v1 = *(sub_1005B981C(&unk_1019F4CF0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for IndexSet();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, ((((v3 + v4) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 9, v2 | 7);
}

uint64_t sub_100088A74()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100088AB4()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100088AEC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100088B24()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_100088B64()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100088BA4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100088BE8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100088C20()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100088C60()
{
  v1 = sub_1005B981C(&unk_101A050F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100088D40()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = sub_1005B981C(&unk_101A050F0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_100088E9C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_1005B981C(&unk_101A050F0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

id sub_100089018()
{
  v0 = objc_opt_self();

  return [v0 crl_openICloudPreferencePane];
}

uint64_t sub_100089060()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000890B0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000890F4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100089144()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100089180()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000891B8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000891F8()
{
  swift_unknownObjectRelease();
  sub_1000260E8(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10008925C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10008929C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000892DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1005B981C(&qword_1019F57A8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10008940C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1005B981C(&qword_1019F57A8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10008953C()
{
  switch(*(v0 + 296))
  {
    case 0:
    case 0x22:
      if (*(v0 + 64))
      {
        sub_100005070(v0 + 40);
      }

      if (*(v0 + 96))
      {
        sub_100005070(v0 + 72);
      }

      break;
    case 1:
    case 0x23:
      if (*(v0 + 64))
      {
        sub_100005070(v0 + 40);
      }

      break;
    case 0x12:
    case 0x14:
    case 0x1C:
    case 0x1E:
    case 0x3A:
    case 0x3C:
    case 0x3E:

      break;
    case 0x13:
    case 0x15:
    case 0x1D:
    case 0x1F:
    case 0x3B:
    case 0x3D:
    case 0x3F:

      break;
    case 0x20:
    case 0x24:

      goto LABEL_17;
    case 0x21:
    case 0x25:
      goto LABEL_17;
    case 0x4A:

      break;
    case 0x4F:

      if (*(v0 + 160))
      {
        sub_100005070(v0 + 136);
      }

      goto LABEL_17;
    case 0x50:

      if (*(v0 + 128))
      {
        sub_100005070(v0 + 104);
      }

LABEL_17:

      break;
    default:
      break;
  }

  return _swift_deallocObject(v0, 316, 7);
}

uint64_t sub_1000897D8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1005B981C(&qword_101A28680);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_1005B981C(&unk_101A0D9D0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_1005B981C(&unk_101A2C7E0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_1005B981C(&qword_1019F4B60);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[8]);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_1000899A4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1005B981C(&qword_101A28680);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_1005B981C(&unk_101A0D9D0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_1005B981C(&unk_101A2C7E0);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = sub_1005B981C(&qword_1019F4B60);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[8]) = (a2 - 1);
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_100089B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CRLAssetData();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1005B981C(&unk_101A1B880);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 52));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_100089C84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for CRLAssetData();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1005B981C(&unk_101A1B880);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 52)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_100089D98()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100089DD8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100089E10()
{

  return _swift_deallocObject(v0, 36, 7);
}

uint64_t sub_100089E50()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100089E88()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100089ED4()
{

  return _swift_deallocObject(v0, 26, 7);
}

uint64_t sub_10008A010()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008A048@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10008A074@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10008A0A8()
{
  v1 = sub_1005B981C(&qword_1019F64C8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10008A178()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008A1B4()
{
  v1 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for CRLFolderIdentifier(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);

  v9 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v38 = v8;
    v39 = v4;
    v37 = (v2 + 24) & ~v2;
    v21 = type metadata accessor for UUID();
    v22 = *(*(v21 - 8) + 8);
    v22(v9, v21);
    type metadata accessor for CRLBoardIdentifierStorage(0);

    v23 = _s5BoardVMa(0);
    v24 = v9 + v23[5];
    if (!(*(v6 + 48))(v24, 1, v5))
    {
      v22(v24, v21);
      type metadata accessor for CRLFolderIdentifierStorage(0);
    }

    v25 = v23[7];
    v26 = type metadata accessor for Date();
    v27 = *(*(v26 - 8) + 8);
    v27(v9 + v25, v26);
    v27(v9 + v23[8], v26);
    v18 = v9 + v23[20];
    v19 = _s5BoardV13ShareMetadataVMa(0);
    v20 = (*(*(v19 - 8) + 48))(v18, 1, v19);
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_14;
    }

    v11 = sub_1005B981C(&qword_1019F3480);
    if ((*(*(v11 - 8) + 48))(v0 + v3, 5, v11))
    {
      goto LABEL_14;
    }

    v38 = v8;
    v39 = v4;
    v37 = (v2 + 24) & ~v2;
    v12 = type metadata accessor for UUID();
    v36 = *(*(v12 - 8) + 8);
    v36(v0 + v3, v12);
    type metadata accessor for CRLFolderIdentifierStorage(0);

    v13 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
    v14 = v9 + v13[5];
    if (!(*(v6 + 48))(v14, 1, v5))
    {
      v36(v14, v12);
    }

    v15 = v13[8];
    v16 = type metadata accessor for Date();
    v17 = *(*(v16 - 8) + 8);
    v17(v9 + v15, v16);
    v17(v9 + v13[9], v16);
    v18 = v9 + v13[14];
    v19 = _s5BoardV13ShareMetadataVMa(0);
    v20 = (*(*(v19 - 8) + 48))(v18, 1, v19);
  }

  v3 = v37;
  v8 = v38;
  v4 = v39;
  if (!v20)
  {
    v28 = *(v19 + 20);
    v29 = type metadata accessor for URL();
    v30 = *(v29 - 8);
    if (!(*(v30 + 48))(v18 + v28, 1, v29))
    {
      (*(v30 + 8))(v18 + v28, v29);
    }

    v8 = v38;
    v4 = v39;
  }

LABEL_14:
  v31 = (v3 + v4 + v7) & ~v7;
  v32 = (((v8 + v31 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v33 = v0 + v31;
  v34 = type metadata accessor for UUID();
  (*(*(v34 - 8) + 8))(v33, v34);
  type metadata accessor for CRLFolderIdentifierStorage(0);

  return _swift_deallocObject(v0, v32 + 8, v2 | v7 | 7);
}

uint64_t sub_10008A784()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008A7BC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008A7F4()
{
  v1 = *(sub_1005B981C(&qword_1019F33E0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = type metadata accessor for CRLFolderIdentifier(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
  {
    v6 = type metadata accessor for UUID();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
    type metadata accessor for CRLFolderIdentifierStorage(0);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10008A950()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10008A9A0()
{
  v1 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = v3 + *(v1 + 64);
  v5 = *(sub_1005B981C(&qword_1019F33E0) - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6) & ~v6;
  v8 = (*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v8 + 15;

  v10 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v40 = v8 + 15;
    v22 = type metadata accessor for UUID();
    v23 = *(*(v22 - 8) + 8);
    v23(v10, v22);
    type metadata accessor for CRLBoardIdentifierStorage(0);

    v24 = _s5BoardVMa(0);
    v25 = v10 + v24[5];
    v26 = type metadata accessor for CRLFolderIdentifier(0);
    if (!(*(*(v26 - 8) + 48))(v25, 1, v26))
    {
      v23(v25, v22);
      type metadata accessor for CRLFolderIdentifierStorage(0);
    }

    v27 = v24[7];
    v28 = type metadata accessor for Date();
    v29 = *(*(v28 - 8) + 8);
    v29(v10 + v27, v28);
    v29(v10 + v24[8], v28);
    v21 = v24[20];
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_14;
    }

    v12 = sub_1005B981C(&qword_1019F3480);
    if ((*(*(v12 - 8) + 48))(v10, 5, v12))
    {
      goto LABEL_14;
    }

    v40 = v8 + 15;
    v13 = type metadata accessor for UUID();
    v14 = *(*(v13 - 8) + 8);
    v14(v10, v13);
    type metadata accessor for CRLFolderIdentifierStorage(0);

    v15 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
    v16 = v10 + v15[5];
    v17 = type metadata accessor for CRLFolderIdentifier(0);
    if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
    {
      v14(v16, v13);
    }

    v18 = v15[8];
    v19 = type metadata accessor for Date();
    v20 = *(*(v19 - 8) + 8);
    v20(v10 + v18, v19);
    v20(v10 + v15[9], v19);
    v21 = v15[14];
  }

  v30 = v10 + v21;
  v31 = _s5BoardV13ShareMetadataVMa(0);
  v9 = v40;
  if (!(*(*(v31 - 8) + 48))(v30, 1, v31))
  {
    v32 = *(v31 + 20);
    v33 = type metadata accessor for URL();
    v34 = *(v33 - 8);
    if (!(*(v34 + 48))(v30 + v32, 1, v33))
    {
      (*(v34 + 8))(v30 + v32, v33);
    }

    v9 = v40;
  }

LABEL_14:
  v35 = v9 & 0xFFFFFFFFFFFFFFF8;
  v36 = type metadata accessor for CRLFolderIdentifier(0);
  if (!(*(*(v36 - 8) + 48))(v0 + v7, 1, v36))
  {
    v37 = type metadata accessor for UUID();
    (*(*(v37 - 8) + 8))(v0 + v7, v37);
    type metadata accessor for CRLFolderIdentifierStorage(0);
  }

  if (*(v0 + v35))
  {
  }

  v38 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v38 + 8, v2 | v6 | 7);
}

uint64_t sub_10008AFB4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008AFF8()
{
  v1 = sub_1005B981C(&qword_1019F66D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10008B090()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10008B1F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CRLProto_ObjectMetadata(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10008B2B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CRLProto_ObjectMetadata(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10008B388()
{
  v1 = *(sub_1005B981C(&unk_1019F33C0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v4 + v3 + 1, v2 | 7);
}

uint64_t sub_10008B4B4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10008B4FC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008B534()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10008B57C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10008B5D4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008B60C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10008B674()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10008B6E0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008B718()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008B750()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008B788()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008B7C8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008B800()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008B854()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10008B88C()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (v3 + *(v1 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v5, v6);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_10008B988()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (v3 + *(v1 + 64)) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_10008BABC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008BAF4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10008BB3C()
{
  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10008BB8C()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10008BBD8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10008BCDC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008BD14()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10008BD64()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008BD9C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008BDD8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008BE18(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 40);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1005B981C(&qword_1019F57A8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 52);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_10008BF48(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1005B981C(&qword_1019F57A8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 52);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10008C078()
{
  if (*(v0 + 72))
  {
    sub_100005070(v0 + 48);
  }

  return _swift_deallocObject(v0, 144, 7);
}

uint64_t sub_10008C0E0()
{

  sub_100005070(v0 + 32);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10008C128()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008C160()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10008C1A8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10008C1E8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008C240()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10008C298(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1005B981C(&unk_101A0D9C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_1005B981C(&unk_101A0F370);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_1005B981C(&qword_101A2C810);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_10008C410(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1005B981C(&unk_101A0D9C0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_1005B981C(&unk_101A0F370);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = sub_1005B981C(&qword_101A2C810);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10008C584(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for CRLShapeItemCRDTData(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for CRLWPStorageCRDTData(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_1005B981C(&unk_101A095A0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[8]);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_10008C72C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for CRLShapeItemCRDTData(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for CRLWPStorageCRDTData(0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData(0);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = sub_1005B981C(&unk_101A095A0);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[8]) = (a2 - 1);
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10008C918(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for CRLFolderIdentifier(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1005B981C(&qword_1019F33E0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[6]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 - 1;
    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = type metadata accessor for CRLFolderCRDTData();
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[7];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_10008CAA4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for CRLFolderIdentifier(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_1005B981C(&qword_1019F33E0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6]) = a2;
  }

  else
  {
    v15 = type metadata accessor for CRLFolderCRDTData();
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_10008CC38()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008CC78()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008CCB0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008CD54()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008CD8C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10008CE68()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = v3 | v7;
  v10 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;

  v11 = *(v2 + 8);
  v11(v0 + v4, v1);
  v11(v0 + v8, v1);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  return _swift_deallocObject(v0, v10 + 8, v9 | 7);
}

uint64_t sub_10008CFE4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8Freeform21CRLAnalyticsDataStore_supportsEndToEndEncryption;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_10008D03C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8Freeform21CRLAnalyticsDataStore_supportsEndToEndEncryption;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_10008D090()
{
  v1 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for CRLFolderIdentifier(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);

  v9 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v38 = v8;
    v39 = v4;
    v37 = (v2 + 24) & ~v2;
    v21 = type metadata accessor for UUID();
    v22 = *(*(v21 - 8) + 8);
    v22(v9, v21);
    type metadata accessor for CRLBoardIdentifierStorage(0);

    v23 = _s5BoardVMa(0);
    v24 = v9 + v23[5];
    if (!(*(v6 + 48))(v24, 1, v5))
    {
      v22(v24, v21);
      type metadata accessor for CRLFolderIdentifierStorage(0);
    }

    v25 = v23[7];
    v26 = type metadata accessor for Date();
    v27 = *(*(v26 - 8) + 8);
    v27(v9 + v25, v26);
    v27(v9 + v23[8], v26);
    v18 = v9 + v23[20];
    v19 = _s5BoardV13ShareMetadataVMa(0);
    v20 = (*(*(v19 - 8) + 48))(v18, 1, v19);
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_14;
    }

    v11 = sub_1005B981C(&qword_1019F3480);
    if ((*(*(v11 - 8) + 48))(v0 + v3, 5, v11))
    {
      goto LABEL_14;
    }

    v38 = v8;
    v39 = v4;
    v37 = (v2 + 24) & ~v2;
    v12 = type metadata accessor for UUID();
    v36 = *(*(v12 - 8) + 8);
    v36(v0 + v3, v12);
    type metadata accessor for CRLFolderIdentifierStorage(0);

    v13 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
    v14 = v9 + v13[5];
    if (!(*(v6 + 48))(v14, 1, v5))
    {
      v36(v14, v12);
    }

    v15 = v13[8];
    v16 = type metadata accessor for Date();
    v17 = *(*(v16 - 8) + 8);
    v17(v9 + v15, v16);
    v17(v9 + v13[9], v16);
    v18 = v9 + v13[14];
    v19 = _s5BoardV13ShareMetadataVMa(0);
    v20 = (*(*(v19 - 8) + 48))(v18, 1, v19);
  }

  v3 = v37;
  v8 = v38;
  v4 = v39;
  if (!v20)
  {
    v28 = *(v19 + 20);
    v29 = type metadata accessor for URL();
    v30 = *(v29 - 8);
    if (!(*(v30 + 48))(v18 + v28, 1, v29))
    {
      (*(v30 + 8))(v18 + v28, v29);
    }

    v8 = v38;
    v4 = v39;
  }

LABEL_14:
  v31 = (v3 + v4 + v7) & ~v7;
  v32 = (((v8 + v31 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v33 = v0 + v31;
  v34 = type metadata accessor for UUID();
  (*(*(v34 - 8) + 8))(v33, v34);
  type metadata accessor for CRLFolderIdentifierStorage(0);

  return _swift_deallocObject(v0, v32 + 8, v2 | v7 | 7);
}

uint64_t sub_10008D660()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008D698()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008D6D0()
{
  v1 = *(type metadata accessor for CRLFolderIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for CRLFolderIdentifierStorage(0);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_10008D7E8()
{
  v1 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = v3 + *(v1 + 64);
  v5 = *(sub_1005B981C(&qword_1019F33E0) - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6) & ~v6;
  v8 = (*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v8 + 15;

  v10 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v40 = v8 + 15;
    v22 = type metadata accessor for UUID();
    v23 = *(*(v22 - 8) + 8);
    v23(v10, v22);
    type metadata accessor for CRLBoardIdentifierStorage(0);

    v24 = _s5BoardVMa(0);
    v25 = v10 + v24[5];
    v26 = type metadata accessor for CRLFolderIdentifier(0);
    if (!(*(*(v26 - 8) + 48))(v25, 1, v26))
    {
      v23(v25, v22);
      type metadata accessor for CRLFolderIdentifierStorage(0);
    }

    v27 = v24[7];
    v28 = type metadata accessor for Date();
    v29 = *(*(v28 - 8) + 8);
    v29(v10 + v27, v28);
    v29(v10 + v24[8], v28);
    v21 = v24[20];
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_14;
    }

    v12 = sub_1005B981C(&qword_1019F3480);
    if ((*(*(v12 - 8) + 48))(v10, 5, v12))
    {
      goto LABEL_14;
    }

    v40 = v8 + 15;
    v13 = type metadata accessor for UUID();
    v14 = *(*(v13 - 8) + 8);
    v14(v10, v13);
    type metadata accessor for CRLFolderIdentifierStorage(0);

    v15 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
    v16 = v10 + v15[5];
    v17 = type metadata accessor for CRLFolderIdentifier(0);
    if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
    {
      v14(v16, v13);
    }

    v18 = v15[8];
    v19 = type metadata accessor for Date();
    v20 = *(*(v19 - 8) + 8);
    v20(v10 + v18, v19);
    v20(v10 + v15[9], v19);
    v21 = v15[14];
  }

  v30 = v10 + v21;
  v31 = _s5BoardV13ShareMetadataVMa(0);
  v9 = v40;
  if (!(*(*(v31 - 8) + 48))(v30, 1, v31))
  {
    v32 = *(v31 + 20);
    v33 = type metadata accessor for URL();
    v34 = *(v33 - 8);
    if (!(*(v34 + 48))(v30 + v32, 1, v33))
    {
      (*(v34 + 8))(v30 + v32, v33);
    }

    v9 = v40;
  }

LABEL_14:
  v35 = v9 & 0xFFFFFFFFFFFFFFF8;
  v36 = type metadata accessor for CRLFolderIdentifier(0);
  if (!(*(*(v36 - 8) + 48))(v0 + v7, 1, v36))
  {
    v37 = type metadata accessor for UUID();
    (*(*(v37 - 8) + 8))(v0 + v7, v37);
    type metadata accessor for CRLFolderIdentifierStorage(0);
  }

  if (*(v0 + v35))
  {
  }

  v38 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v38 + 8, v2 | v6 | 7);
}

uint64_t sub_10008DDFC()
{
  v1 = *(sub_1005B981C(&qword_1019F33E0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();
  if (*(v0 + 32))
  {
  }

  v5 = type metadata accessor for CRLFolderIdentifier(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
  {
    v6 = type metadata accessor for UUID();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
    type metadata accessor for CRLFolderIdentifierStorage(0);
  }

  return _swift_deallocObject(v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_10008DFA4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008DFDC()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10008E014()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008E050()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008E08C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CRLBoardIdentifier(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for UUID();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10008E17C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for CRLBoardIdentifier(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for UUID();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_10008E278()
{
  v1 = (type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);

  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3, v5);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  v6(v0 + v3 + v1[7], v5);
  v6(v0 + v3 + v1[8], v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10008E3C8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1005B981C(qword_1019F8700);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_10008E484(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1005B981C(qword_1019F8700);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10008E570(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10008E5DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10008E75C()
{
  sub_100005070(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10008E794@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10008E7C0@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10008E7F4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_10008E900()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008E938()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008E970()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10008E9F0()
{
  v0 = sub_1006BD104();

  return v0;
}

uint64_t sub_10008EA50(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1005B981C(&qword_1019F57A8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_10008EB80(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1005B981C(&qword_1019F57A8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10008ECB0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10008ECC8()
{
  switch(*(v0 + 296))
  {
    case 0:
    case 0x22:
      if (*(v0 + 64))
      {
        sub_100005070(v0 + 40);
      }

      if (*(v0 + 96))
      {
        sub_100005070(v0 + 72);
      }

      break;
    case 1:
    case 0x23:
      if (*(v0 + 64))
      {
        sub_100005070(v0 + 40);
      }

      break;
    case 0x12:
    case 0x14:
    case 0x1C:
    case 0x1E:
    case 0x3A:
    case 0x3C:
    case 0x3E:

      break;
    case 0x13:
    case 0x15:
    case 0x1D:
    case 0x1F:
    case 0x3B:
    case 0x3D:
    case 0x3F:

      break;
    case 0x20:
    case 0x24:

      goto LABEL_17;
    case 0x21:
    case 0x25:
      goto LABEL_17;
    case 0x4A:

      break;
    case 0x4F:

      if (*(v0 + 160))
      {
        sub_100005070(v0 + 136);
      }

      goto LABEL_17;
    case 0x50:

      if (*(v0 + 128))
      {
        sub_100005070(v0 + 104);
      }

LABEL_17:

      break;
    default:
      break;
  }

  return _swift_deallocObject(v0, 316, 7);
}

uint64_t sub_10008EF70@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_10008EFC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CRLShapeItemCRDTData(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10008F084(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CRLShapeItemCRDTData(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10008F17C()
{
  v1 = *(type metadata accessor for CRLPreviewImages.Item(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  swift_unknownObjectRelease();

  v8 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v23 = type metadata accessor for UUID();
      v24 = *(*(v23 - 8) + 8);
      v24(v0 + v3, v23);
      type metadata accessor for CRLBoardIdentifierStorage(0);

      v25 = sub_1005B981C(&unk_1019FB780);
      v24(v8 + *(v25 + 48), v23);
      break;
    case 1:
      v22 = type metadata accessor for UUID();
      (*(*(v22 - 8) + 8))(v0 + v3, v22);
      type metadata accessor for CRLBoardIdentifierStorage(0);

      break;
    case 0:
      v10 = sub_1005B981C(&qword_1019F3480);
      if (!(*(*(v10 - 8) + 48))(v0 + v3, 5, v10))
      {
        v31 = v7;
        v11 = type metadata accessor for UUID();
        v12 = *(*(v11 - 8) + 8);
        v12(v0 + v3, v11);
        type metadata accessor for CRLFolderIdentifierStorage(0);

        v13 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
        v14 = v8 + v13[5];
        v15 = type metadata accessor for CRLFolderIdentifier(0);
        if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
        {
          v12(v14, v11);
        }

        v30 = v13[8];
        v16 = type metadata accessor for Date();
        v17 = *(*(v16 - 8) + 8);
        v17(v8 + v30, v16);
        v17(v8 + v13[9], v16);
        v18 = v8 + v13[14];
        v19 = _s5BoardV13ShareMetadataVMa(0);
        v7 = v31;
        if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
        {
          v20 = *(v19 + 20);
          v21 = type metadata accessor for URL();
          v29 = *(v21 - 8);
          if (!(*(v29 + 48))(v18 + v20, 1, v21))
          {
            (*(v29 + 8))(v18 + v20, v21);
          }
        }
      }

      break;
  }

  v26 = (v3 + v4 + v6) & ~v6;
  v27 = type metadata accessor for UUID();
  (*(*(v27 - 8) + 8))(v0 + v26, v27);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  return _swift_deallocObject(v0, v26 + v7, v2 | v6 | 7);
}

uint64_t sub_10008F6AC()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  return _swift_deallocObject(v0, ((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 33, v2 | 7);
}

uint64_t sub_10008F7D0()
{
  v1 = sub_1005B981C(&qword_1019F64C8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10008F8D0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10008F910()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10008F968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1005B981C(&qword_1019F2D40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1005B981C(&qword_1019F2D48);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_1005B981C(&qword_1019F2D50);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_10008FACC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1005B981C(&qword_1019F2D40);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1005B981C(&qword_1019F2D48);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_1005B981C(&qword_1019F2D50);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_10008FC3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EventData();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 248)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 8)
    {
      return v10 - 7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = type metadata accessor for TimedData();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10008FD58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for EventData();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 248)
  {
    *(a1 + *(a4 + 20)) = a2 + 7;
  }

  else
  {
    v11 = type metadata accessor for TimedData();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_10008FE78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019F2D40);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10008FEF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019F2D40);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10008FF6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventData();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10008FFD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventData();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100090048()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100090080()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000900B8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000900F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CRLContainerItemCRDTData(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000901B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CRLContainerItemCRDTData(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

id sub_100090268@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isCancelled];
  *a2 = result;
  return result;
}

uint64_t sub_10009029C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000902D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CRLGloballyScopedBoardIdentifier(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000903A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CRLGloballyScopedBoardIdentifier(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 24));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_10009046C()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v5, v6);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_100090580()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100090678()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000906B0()
{

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100090708()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100090808()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000908A8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000908E8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100090920()
{
  swift_unknownObjectRelease();

  if (*(v0 + 88))
  {
  }

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_100090988()
{

  if (*(v0 + 72))
  {
  }

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1000909E8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100090A20()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100090A58()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100090A98()
{
  swift_unknownObjectRelease();

  if (*(v0 + 64))
  {
  }

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100090B14(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

void *sub_100090BC0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100090C74()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100090CC4()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100090D1C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100090D5C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100090DE4@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100090E10@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100090E3C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100090E74()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100090EBC()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_100090F00(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1005B981C(&unk_101A28650);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_1005B981C(&qword_1019FCC98);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_1005B981C(&unk_101A22730);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_100091078(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1005B981C(&unk_101A28650);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_1005B981C(&qword_1019FCC98);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = sub_1005B981C(&unk_101A22730);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000911EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000912AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10009138C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000913D4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100091410()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100091448()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100091480()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000914D8()
{

  sub_100005070(v0 + 32);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100091520()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100091558()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000915B0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000915E8()
{
  v1 = (type metadata accessor for CRLCloudAssetDownloader.DownloadRequest() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = v3 + *(*v1 + 64);
  v5 = sub_1005B981C(&qword_1019FD8A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;

  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 8))(v0 + v3, v11);

  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_100091798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100091854(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100091954()
{
  v1 = type metadata accessor for Notification();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100091A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1005B981C(&qword_1019F6990);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1005B981C(&unk_101A09DD0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100091B58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1005B981C(&qword_1019F6990);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  else
  {
    v11 = sub_1005B981C(&unk_101A09DD0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_100091C98(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1005B981C(&unk_1019F5250);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for CRRegister();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[9];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  v14 = sub_1005B981C(&qword_101A2C810);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[10];
    goto LABEL_11;
  }

  v15 = sub_1005B981C(&qword_101A1A020);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[12];
    goto LABEL_11;
  }

  v16 = sub_1005B981C(&unk_101A09DC0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[13];
    goto LABEL_11;
  }

  v18 = *(a1 + a3[14]);
  if (v18 >= 0xFFFFFFFF)
  {
    LODWORD(v18) = -1;
  }

  return (v18 + 1);
}

uint64_t sub_100091EBC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1005B981C(&unk_1019F5250);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for CRRegister();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[9];
    }

    else
    {
      v16 = sub_1005B981C(&qword_101A2C810);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[10];
      }

      else
      {
        v17 = sub_1005B981C(&qword_101A1A020);
        if (*(*(v17 - 8) + 84) == a3)
        {
          v10 = v17;
          v14 = *(v17 - 8);
          v15 = a4[12];
        }

        else
        {
          result = sub_1005B981C(&unk_101A09DC0);
          if (*(*(result - 8) + 84) != a3)
          {
            *(a1 + a4[14]) = (a2 - 1);
            return result;
          }

          v10 = result;
          v14 = *(result - 8);
          v15 = a4[13];
        }
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000920DC(uint64_t a1)
{
  if ((a1 + 1) >= 5)
  {
    return 5;
  }

  else
  {
    return (0x302010004uLL >> (8 * (a1 + 1)));
  }
}

uint64_t sub_100092114()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009214C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100092184()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1000921BC()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100092208()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000922BC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 184, 7);
}

uint64_t sub_10009235C()
{
  sub_1005C4E5C(&qword_1019FEA00);
  sub_10001A2F8(&qword_1019FEA50, &qword_1019FEA00);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100092408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000924C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10009257C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for CRLBoardIdentifier(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for UUID();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_100092684(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for CRLBoardIdentifier(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = type metadata accessor for UUID();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[8]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_1000927D0@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000927FC@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100092828()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100092860()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000928B0()
{
  if (*(v0 + 48))
  {
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000928F0()
{
  sub_100005070(v0 + 16);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100092A7C@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100092AB0@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100092ADC@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100092B0C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100092B7C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100092BE0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100092C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for TSContentLanguage.Models.Text();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 44);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_100092D08(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = type metadata accessor for TSContentLanguage.Models.Text();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100092DAC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100092EA0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100092F00()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100092F38()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100092FA8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100092FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CRLSEBoardIdentifier(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1005B981C(&qword_101A0A320);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100093118(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CRLSEBoardIdentifier(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_1005B981C(&qword_101A0A320);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_10009324C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLSEBoardIdentifierStorage(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000932B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLSEBoardIdentifierStorage(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100093358(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&unk_101A14B10);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 6)
  {
    return v5 - 5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000933D0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 5);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1005B981C(&unk_101A14B10);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_100093470()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000934A8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000934E0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000935DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CRLBoardIdentifier(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1005B981C(&qword_1019F8B00);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100093710(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CRLBoardIdentifier(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_1005B981C(&qword_1019F8B00);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_100093864()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009389C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000938D4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009397C()
{

  sub_10067F154();
  if (*(v0 + 192) != 1)
  {
  }

  return _swift_deallocObject(v0, 416, 7);
}

uint64_t sub_1000939E4()
{

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_100093A2C()
{

  return _swift_deallocObject(v0, 400, 7);
}

uint64_t sub_100093A7C()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100093B08()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100093BCC(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
}

__n128 sub_100093BEC(__n128 *a1, uint64_t a2)
{
  *a2 = a1[1].n128_u64[0];
  result = *a1;
  *(a2 + 8) = *a1;
  return result;
}

uint64_t sub_100093C08(uint64_t a1)
{

  sub_100A46EFC(a1);
}

uint64_t sub_100093CD8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100093D10()
{
  v1 = sub_1005B981C(&qword_101A04068);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100093DC8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100093E08()
{
  v1 = sub_1005B981C(&qword_101A04080);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100093EE0()
{

  v1 = *(v0 + 40);
  if (v1 >> 60 != 15)
  {
    sub_10002640C(*(v0 + 32), v1);
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100093F38()
{
  v1 = sub_1005B981C(&qword_101A04088);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100093FCC()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100094020()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100094058()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100094090()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000940C8()
{
  swift_unknownObjectRelease();

  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_100094170()
{
  if (*(v0 + 208))
  {
  }

  return _swift_deallocObject(v0, 232, 7);
}

uint64_t sub_1000941E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CRLBoardIdentifier(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000942B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CRLBoardIdentifier(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_10009436C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100094474()
{
  sub_100005070(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000944AC@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000944D8@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10009450C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v5 + 32, v3 | 7);
}

uint64_t sub_100094620()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100094658()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100094690()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000946D0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100094718()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000947DC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000948F8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100094938()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000949B4()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100094A14()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100094A54()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100094AAC()
{
  v1 = sub_1005B981C(&qword_101A050E8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100094B90()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100094BC8()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100094C18()
{
  v1 = sub_1005B981C(&unk_101A050F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100094CE8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100094D30()
{
  v1 = sub_1005B981C(&qword_101A003B8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (v4 + *(v2 + 64) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100094E24()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100094E60@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100094E8C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100094EC4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100094F5C(unint64_t a1)
{
  if (a1 >= 8)
  {
    return 7;
  }

  else
  {
    return (0x605040302010007uLL >> (8 * a1));
  }
}

uint64_t sub_100094F90()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_100094FF0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100095038()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100095070()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000951C0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100095208()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100095240()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000952A4()
{
  v1 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v17 = type metadata accessor for UUID();
    v18 = *(*(v17 - 8) + 8);
    v18(v0 + v3, v17);
    type metadata accessor for CRLBoardIdentifierStorage(0);

    v19 = _s5BoardVMa(0);
    v20 = v5 + v19[5];
    v21 = type metadata accessor for CRLFolderIdentifier(0);
    if (!(*(*(v21 - 8) + 48))(v20, 1, v21))
    {
      v18(v20, v17);
      type metadata accessor for CRLFolderIdentifierStorage(0);
    }

    v22 = v19[7];
    v23 = type metadata accessor for Date();
    v24 = *(*(v23 - 8) + 8);
    v24(v5 + v22, v23);
    v24(v5 + v19[8], v23);
    v16 = v19[20];
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_14;
    }

    v7 = sub_1005B981C(&qword_1019F3480);
    if ((*(*(v7 - 8) + 48))(v0 + v3, 5, v7))
    {
      goto LABEL_14;
    }

    v8 = type metadata accessor for UUID();
    v9 = (*(v8 - 8) + 8);
    v31 = *v9;
    (*v9)(v0 + v3, v8);
    type metadata accessor for CRLFolderIdentifierStorage(0);

    v10 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
    v11 = v5 + v10[5];
    v12 = type metadata accessor for CRLFolderIdentifier(0);
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {
      v31(v11, v8);
    }

    v13 = v10[8];
    v14 = type metadata accessor for Date();
    v15 = *(*(v14 - 8) + 8);
    v15(v5 + v13, v14);
    v15(v5 + v10[9], v14);
    v16 = v10[14];
  }

  v25 = v5 + v16;
  v26 = _s5BoardV13ShareMetadataVMa(0);
  if (!(*(*(v26 - 8) + 48))(v25, 1, v26))
  {
    v27 = *(v26 + 20);
    v28 = type metadata accessor for URL();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(v25 + v27, 1, v28))
    {
      (*(v29 + 8))(v25 + v27, v28);
    }
  }

LABEL_14:

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_10009578C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000957D8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100095828()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1000958B0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1005B981C(&qword_101A06190);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1005B981C(&unk_101A0DAE0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1000959EC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1005B981C(&qword_101A06190);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1005B981C(&unk_101A0DAE0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

Swift::Int sub_100095B6C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_101484E58[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100095BF4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_101484E58[v1]);
  return Hasher._finalize()();
}

uint64_t sub_100095C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100095D34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = -a2;
  }

  return result;
}

uint64_t sub_100095DF4(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_1008B59E8(result, a2 & 1);
  }

  return result;
}

uint64_t sub_100095E0C(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_1008B7608(result, a2 & 1);
  }

  return result;
}

uint64_t sub_100095E24()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100095E5C()
{
  v1 = sub_1005B981C(&qword_101A1B3C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100095F18()
{
  swift_unknownObjectRelease();
  sub_100863EEC(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_100095F5C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100095FBC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  sub_100863E8C(*(v0 + v5), *(v0 + v5 + 8), *(v0 + v5 + 16), *(v0 + v5 + 24), *(v0 + v5 + 32), *(v0 + v5 + 40));

  return _swift_deallocObject(v0, v5 + 56, v3 | 0xF);
}

uint64_t sub_1000960B0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000960E8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_1000961E4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  sub_10002640C(*(v0 + v6), *(v0 + v6 + 8));

  return _swift_deallocObject(v0, ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_1000962F4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  sub_10002640C(*(v0 + v6), *(v0 + v6 + 8));

  return _swift_deallocObject(v0, v6 + 16, v3 | 7);
}

uint64_t sub_1000963F4()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100096444()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000964F8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100096530()
{

  if (*(v0 + 56))
  {
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100096578()
{
  switch(*(v0 + 312))
  {
    case 0:
    case 0x22:
      if (*(v0 + 80))
      {
        sub_100005070(v0 + 56);
      }

      if (*(v0 + 112))
      {
        sub_100005070(v0 + 88);
      }

      break;
    case 1:
    case 0x23:
      if (*(v0 + 80))
      {
        sub_100005070(v0 + 56);
      }

      break;
    case 0x12:
    case 0x14:
    case 0x1C:
    case 0x1E:
    case 0x3A:
    case 0x3C:
    case 0x3E:

      break;
    case 0x13:
    case 0x15:
    case 0x1D:
    case 0x1F:
    case 0x3B:
    case 0x3D:
    case 0x3F:

      break;
    case 0x20:
    case 0x24:

      goto LABEL_17;
    case 0x21:
    case 0x25:
      goto LABEL_17;
    case 0x4A:

      break;
    case 0x4F:

      if (*(v0 + 176))
      {
        sub_100005070(v0 + 152);
      }

      goto LABEL_17;
    case 0x50:

      if (*(v0 + 144))
      {
        sub_100005070(v0 + 120);
      }

LABEL_17:

      break;
    default:
      break;
  }

  return _swift_deallocObject(v0, 332, 7);
}

uint64_t sub_10009680C()
{
  switch(*(v0 + 296))
  {
    case 0:
    case 0x22:
      if (*(v0 + 64))
      {
        sub_100005070(v0 + 40);
      }

      if (*(v0 + 96))
      {
        sub_100005070(v0 + 72);
      }

      break;
    case 1:
    case 0x23:
      if (*(v0 + 64))
      {
        sub_100005070(v0 + 40);
      }

      break;
    case 0x12:
    case 0x14:
    case 0x1C:
    case 0x1E:
    case 0x3A:
    case 0x3C:
    case 0x3E:

      break;
    case 0x13:
    case 0x15:
    case 0x1D:
    case 0x1F:
    case 0x3B:
    case 0x3D:
    case 0x3F:

      break;
    case 0x20:
    case 0x24:

      goto LABEL_17;
    case 0x21:
    case 0x25:
      goto LABEL_17;
    case 0x4A:

      break;
    case 0x4F:

      if (*(v0 + 160))
      {
        sub_100005070(v0 + 136);
      }

      goto LABEL_17;
    case 0x50:

      if (*(v0 + 128))
      {
        sub_100005070(v0 + 104);
      }

LABEL_17:

      break;
    default:
      break;
  }

  return _swift_deallocObject(v0, 316, 7);
}