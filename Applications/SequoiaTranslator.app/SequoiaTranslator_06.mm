unint64_t sub_1000B05A4()
{
  result = qword_1003AF060;
  if (!qword_1003AF060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF060);
  }

  return result;
}

uint64_t sub_1000B060C@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for ConversationView() - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1000AA838(v4, a1);
}

uint64_t sub_1000B0680()
{
  v1 = type metadata accessor for ConversationView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = v1[6];
  sub_100005AD4(&qword_1003B23E0);
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

  v9 = v1[7];
  sub_100005AD4(&qword_1003AEFE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for ScenePhase();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000B08DC(uint64_t a1)
{
  v3 = *(type metadata accessor for ConversationView() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1000AA98C(a1, v4, v5, v6);
}

uint64_t sub_1000B09C4()
{
  v1 = type metadata accessor for ConversationView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[6];
  sub_100005AD4(&qword_1003B23E0);
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

  v9 = v1[7];
  sub_100005AD4(&qword_1003AEFE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for ScenePhase();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000B0C30(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ConversationView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1000B0D04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000B0DB4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B0DF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000B0E60()
{
  result = qword_1003AF0C8;
  if (!qword_1003AF0C8)
  {
    sub_100005EA8(&qword_1003AF020);
    sub_1000B0EEC();
    sub_1000B113C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF0C8);
  }

  return result;
}

unint64_t sub_1000B0EEC()
{
  result = qword_1003AF0D0;
  if (!qword_1003AF0D0)
  {
    sub_100005EA8(&qword_1003AEFA8);
    sub_100005EA8(&qword_1003AEF98);
    type metadata accessor for AudioRoutingMenu();
    sub_100005EA8(&qword_1003AEF90);
    sub_100005EA8(&qword_1003AEF88);
    type metadata accessor for ScenePhase();
    sub_1000AFBD4();
    sub_1000B0D04(&qword_1003AF010, &type metadata accessor for ScenePhase);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000B0D04(&qword_1003AF018, type metadata accessor for AudioRoutingMenu);
    swift_getOpaqueTypeConformance2();
    sub_1000B10E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF0D0);
  }

  return result;
}

unint64_t sub_1000B10E8()
{
  result = qword_1003AF0D8;
  if (!qword_1003AF0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF0D8);
  }

  return result;
}

unint64_t sub_1000B113C()
{
  result = qword_1003AF0E0;
  if (!qword_1003AF0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF0E0);
  }

  return result;
}

uint64_t sub_1000B11DC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100005AD4(&qword_1003B2300);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[7];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_100005AD4(&qword_1003AEE88);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[8];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[9] + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_1000B1314(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100005AD4(&qword_1003B2300);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
  }

  else
  {
    result = sub_100005AD4(&qword_1003AEE88);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[9] + 8) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[8];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t type metadata accessor for ConversationView_v1()
{
  result = qword_1003AF140;
  if (!qword_1003AF140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000B1480()
{
  sub_1000A99BC();
  if (v0 <= 0x3F)
  {
    sub_10005C50C();
    if (v1 <= 0x3F)
    {
      sub_10005C478();
      if (v2 <= 0x3F)
      {
        sub_10005C414();
        if (v3 <= 0x3F)
        {
          sub_1000A9A50();
          if (v4 <= 0x3F)
          {
            sub_10008217C();
            if (v5 <= 0x3F)
            {
              type metadata accessor for DeviceHelper();
              if (v6 <= 0x3F)
              {
                sub_10003E0E8();
                if (v7 <= 0x3F)
                {
                  sub_1000A9AA8();
                  if (v8 <= 0x3F)
                  {
                    sub_1000A9B3C(319, &qword_1003AC878);
                    if (v9 <= 0x3F)
                    {
                      sub_1000A9B3C(319, &qword_1003AEF18);
                      if (v10 <= 0x3F)
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

uint64_t sub_1000B1618@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005AD4(&qword_1003B23E0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for ConversationView_v1();
  sub_10001F620(v1 + *(v10 + 28), v9, &qword_1003B23E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10008E200(v9, a1);
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000B17F0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005AD4(&qword_1003AEFE0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ConversationView_v1();
  sub_10001F620(v1 + *(v10 + 32), v9, &qword_1003AEFE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ScenePhase();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1000B19F8@<X0>(uint64_t a1@<X8>)
{
  v25[1] = a1;
  v1 = type metadata accessor for UserInterfaceSizeClass();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v25[0] = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100005AD4(&qword_1003AC998);
  __chkstk_darwin(v4);
  v6 = v25 - v5;
  v7 = sub_100005AD4(&qword_1003AC848);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = v25 - v12;
  __chkstk_darwin(v11);
  v15 = v25 - v14;
  v16 = [objc_opt_self() currentDevice];
  v17 = [v16 userInterfaceIdiom];

  if (v17 != 1)
  {
    return static ToolbarItemPlacement.navigationBarLeading.getter();
  }

  sub_1000B1618(v15);
  (*(v2 + 104))(v13, enum case for UserInterfaceSizeClass.compact(_:), v1);
  (*(v2 + 56))(v13, 0, 1, v1);
  v18 = *(v4 + 48);
  sub_10001F620(v15, v6, &qword_1003AC848);
  sub_10001F620(v13, &v6[v18], &qword_1003AC848);
  v19 = *(v2 + 48);
  if (v19(v6, 1, v1) != 1)
  {
    sub_10001F620(v6, v10, &qword_1003AC848);
    if (v19(&v6[v18], 1, v1) != 1)
    {
      v21 = &v6[v18];
      v22 = v25[0];
      (*(v2 + 32))(v25[0], v21, v1);
      sub_1000B7418(&qword_1003AC9D0, &type metadata accessor for UserInterfaceSizeClass);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *(v2 + 8);
      v24(v22, v1);
      sub_100009EBC(v13, &qword_1003AC848);
      sub_100009EBC(v15, &qword_1003AC848);
      v24(v10, v1);
      sub_100009EBC(v6, &qword_1003AC848);
      if (v23)
      {
        return static ToolbarItemPlacement.navigationBarLeading.getter();
      }

      return static ToolbarItemPlacement.navigationBarTrailing.getter();
    }

    sub_100009EBC(v13, &qword_1003AC848);
    sub_100009EBC(v15, &qword_1003AC848);
    (*(v2 + 8))(v10, v1);
LABEL_7:
    sub_100009EBC(v6, &qword_1003AC998);
    return static ToolbarItemPlacement.navigationBarTrailing.getter();
  }

  sub_100009EBC(v13, &qword_1003AC848);
  sub_100009EBC(v15, &qword_1003AC848);
  if (v19(&v6[v18], 1, v1) != 1)
  {
    goto LABEL_7;
  }

  sub_100009EBC(v6, &qword_1003AC848);
  return static ToolbarItemPlacement.navigationBarLeading.getter();
}

uint64_t sub_1000B1E88()
{
  v1 = *v0;
  if (!*v0)
  {
    type metadata accessor for SharedTranslationOptions();
    sub_1000B7418(&qword_1003AE918, type metadata accessor for SharedTranslationOptions);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v2 = *(v0 + *(type metadata accessor for ConversationView_v1() + 36) + 8);
  v3 = v1;
  v4 = sub_1000B7FE0();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v10[0] & 1) == 0)
  {

    return 1;
  }

  v5 = sub_10022CDDC(v4);

  if ((v5 & 1) == 0)
  {
    return 1;
  }

  v10[3] = &type metadata for TranslateFeatures;
  v10[4] = sub_100009DF8();
  LOBYTE(v10[0]) = 8;
  v6 = isFeatureEnabled(_:)();
  sub_100008664(v10);
  if ((v6 & 1) != 0 && (v7 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_deviceHelper), swift_getKeyPath(), v10[0] = v7, sub_1000B7418(&qword_1003AE978, type metadata accessor for DeviceHelper), ObservationRegistrar.access<A, B>(_:keyPath:)(), , v8 = v7 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice, swift_beginAccess(), *(v8 + 8)))
  {
    return (*(v8 + 72) & 0xFFFFFFFFFFFFFFFELL) == 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000B20C0()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = *(v0 + *(type metadata accessor for ConversationView_v1() + 36) + 8);
    v3 = v1;
    v4 = sub_1000B7FE0();
    v5 = sub_10022CDDC(v4);

    if (v5)
    {
      v10[3] = &type metadata for TranslateFeatures;
      v10[4] = sub_100009DF8();
      LOBYTE(v10[0]) = 8;
      v6 = isFeatureEnabled(_:)();
      sub_100008664(v10);
      if ((v6 & 1) != 0 && (v7 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_deviceHelper), swift_getKeyPath(), v10[0] = v7, sub_1000B7418(&qword_1003AE978, type metadata accessor for DeviceHelper), ObservationRegistrar.access<A, B>(_:keyPath:)(), , v8 = v7 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice, swift_beginAccess(), *(v8 + 8)))
      {
        return (*(v8 + 72) & 0xFFFFFFFFFFFFFFFELL) == 2;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    type metadata accessor for SharedTranslationOptions();
    sub_1000B7418(&qword_1003AE918, type metadata accessor for SharedTranslationOptions);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000B229C@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  if (*(a1 + 16))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (v6)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      v4 = v5 ^ 1;
    }

    else
    {
      v4 = 0;
    }

    *a2 = v4 & 1;
  }

  else
  {
    type metadata accessor for SceneContext();
    sub_1000B7418(&qword_1003AC860, type metadata accessor for SceneContext);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000B23F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return static Published.subscript.setter();
  }

  else
  {
    type metadata accessor for SceneContext();
    sub_1000B7418(&qword_1003AC860, type metadata accessor for SceneContext);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000B24C4()
{
  if (!*(v0 + 16))
  {
    type metadata accessor for SceneContext();
    v2 = &qword_1003AC860;
    v3 = type metadata accessor for SceneContext;
LABEL_10:
    sub_1000B7418(v2, v3);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (v6)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (v5)
  {
    return 1;
  }

  if (!*(v0 + 32))
  {
    type metadata accessor for ConversationContext(0);
    v2 = &unk_1003BC490;
    v3 = type metadata accessor for ConversationContext;
    goto LABEL_10;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  return v4;
}

uint64_t sub_1000B26A8@<X0>(uint64_t a1@<X8>)
{
  v163 = a1;
  v151 = type metadata accessor for ScenePhase();
  v152 = *(v151 - 8);
  __chkstk_darwin(v151);
  v147 = &v124 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ConversationView_v1();
  v4 = v3 - 8;
  v166 = *(v3 - 8);
  v169 = *(v166 + 64);
  __chkstk_darwin(v3);
  v167 = &v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v133 = *(v134 - 8);
  __chkstk_darwin(v134);
  v131 = &v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_100005AD4(&qword_1003AF1A0);
  __chkstk_darwin(v128);
  v125 = (&v124 - v7);
  v130 = sub_100005AD4(&qword_1003AF1A8);
  v132 = *(v130 - 8);
  __chkstk_darwin(v130);
  v126 = &v124 - v8;
  v135 = sub_100005AD4(&qword_1003AF1B0);
  v136 = *(v135 - 8);
  __chkstk_darwin(v135);
  v127 = &v124 - v9;
  v138 = sub_100005AD4(&qword_1003AF1B8);
  v139 = *(v138 - 8);
  __chkstk_darwin(v138);
  v129 = &v124 - v10;
  v143 = sub_100005AD4(&qword_1003AF1C0);
  __chkstk_darwin(v143);
  v137 = &v124 - v11;
  v145 = sub_100005AD4(&qword_1003AF1C8);
  v146 = *(v145 - 8);
  __chkstk_darwin(v145);
  v144 = &v124 - v12;
  v149 = sub_100005AD4(&qword_1003AF1D0);
  v150 = *(v149 - 8);
  __chkstk_darwin(v149);
  v164 = &v124 - v13;
  v155 = sub_100005AD4(&qword_1003AF1D8);
  v154 = *(v155 - 8);
  __chkstk_darwin(v155);
  v165 = &v124 - v14;
  v153 = sub_100005AD4(&qword_1003AF1E0);
  __chkstk_darwin(v153);
  v158 = &v124 - v15;
  v157 = sub_100005AD4(&qword_1003AF1E8);
  v16 = __chkstk_darwin(v157);
  v162 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v156 = &v124 - v19;
  __chkstk_darwin(v18);
  v161 = &v124 - v20;
  v21 = sub_100005AD4(&qword_1003AF1F0);
  v22 = v21 - 8;
  v23 = __chkstk_darwin(v21);
  v160 = &v124 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v124 - v25;
  v148 = v1 + *(v4 + 44);
  v27 = *(v148 + 8);
  v142 = type metadata accessor for SceneContext();
  v141 = sub_1000B7418(&qword_1003AC860, type metadata accessor for SceneContext);
  v28 = v27;
  v140 = v28;
  v29 = EnvironmentObject.init()();
  v31 = v30;
  type metadata accessor for ConversationContext(0);
  sub_1000B7418(&unk_1003BC490, type metadata accessor for ConversationContext);
  v32 = EnvironmentObject.init()();
  v34 = v33;
  KeyPath = swift_getKeyPath();
  v36 = type metadata accessor for ConversationList();
  *&v26[*(v36 + 32)] = KeyPath;
  sub_100005AD4(&qword_1003B23E0);
  swift_storeEnumTagMultiPayload();
  *v26 = v28;
  v26[8] = 2;
  *(v26 + 2) = v29;
  *(v26 + 3) = v31;
  *(v26 + 4) = v32;
  *(v26 + 5) = v34;
  v37 = &v26[*(v36 + 36)];
  *v37 = 0;
  *(v37 + 1) = 0;
  v38 = static SafeAreaRegions.container.getter();
  LOBYTE(KeyPath) = static Edge.Set.all.getter();
  v39 = &v26[*(sub_100005AD4(&qword_1003AF090) + 36)];
  *v39 = v38;
  v39[8] = KeyPath;
  v40 = static SafeAreaRegions.keyboard.getter();
  v41 = static Edge.Set.all.getter();
  v42 = *(v22 + 44);
  v159 = v26;
  v43 = &v26[v42];
  *v43 = v40;
  v43[8] = v41;
  v44 = static HorizontalAlignment.center.getter();
  v45 = v125;
  *v125 = v44;
  *(v45 + 8) = 0;
  *(v45 + 16) = 1;
  v46 = sub_100005AD4(&qword_1003AF1F8);
  v47 = v168;
  sub_1000B3D74(v45 + *(v46 + 44));
  LocalizedStringKey.init(stringLiteral:)();
  v48 = sub_10001BAEC(&qword_1003AF200, &qword_1003AF1A0);
  v49 = v126;
  v50 = v128;
  View.navigationTitle(_:)();

  sub_100009EBC(v45, &qword_1003AF1A0);
  v51 = v133;
  v52 = v131;
  v53 = v134;
  (*(v133 + 104))(v131, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v134);
  *&v173 = v50;
  *(&v173 + 1) = v48;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v55 = v127;
  v56 = v130;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v51 + 8))(v52, v53);
  (*(v132 + 8))(v49, v56);
  v170 = v47;
  v57 = sub_100005AD4(&qword_1003AF208);
  *&v173 = v56;
  *(&v173 + 1) = OpaqueTypeConformance2;
  v58 = swift_getOpaqueTypeConformance2();
  v59 = sub_10001BAEC(&qword_1003AF210, &qword_1003AF208);
  v60 = v129;
  v61 = v135;
  View.toolbar<A>(content:)();
  (*(v136 + 8))(v55, v61);
  sub_100005AD4(&qword_1003AEFD0);
  type metadata accessor for ToolbarPlacement();
  *(swift_allocObject() + 16) = xmmword_1002D3160;
  static ToolbarPlacement.tabBar.getter();
  *&v173 = v61;
  *(&v173 + 1) = v57;
  *&v174 = v58;
  *(&v174 + 1) = v59;
  swift_getOpaqueTypeConformance2();
  v62 = v137;
  v63 = v138;
  View.toolbarBackground(_:for:)();

  (*(v139 + 8))(v60, v63);
  v64 = objc_opt_self();
  v65 = [v64 defaultCenter];
  v66 = sub_100005AD4(&qword_1003AF218);
  NSNotificationCenter.publisher(for:object:)();

  v67 = v167;
  sub_1000B6804(v47, v167);
  v68 = *(v166 + 80);
  v69 = (v68 + 16) & ~v68;
  v70 = swift_allocObject();
  sub_1000B686C(v67, v70 + v69);
  v71 = &v62[*(v66 + 56)];
  *v71 = sub_1000B68D0;
  v71[1] = v70;
  v72 = [v64 defaultCenter];
  v73 = sub_100005AD4(&qword_1003AF220);
  NSNotificationCenter.publisher(for:object:)();

  v74 = v47;
  sub_1000B6804(v47, v67);
  v75 = swift_allocObject();
  sub_1000B686C(v67, v75 + v69);
  v76 = &v62[*(v73 + 56)];
  v77 = v62;
  *v76 = sub_1000B68D8;
  v76[1] = v75;
  sub_1000B6804(v74, v67);
  v78 = swift_allocObject();
  sub_1000B686C(v67, v78 + v69);
  v79 = &v62[*(sub_100005AD4(&qword_1003AF228) + 36)];
  *v79 = sub_1000B6954;
  v79[1] = v78;
  v79[2] = 0;
  v79[3] = 0;
  sub_1000B6804(v74, v67);
  v166 = v68;
  v80 = swift_allocObject();
  sub_1000B686C(v67, v80 + v69);
  v81 = v143;
  v82 = &v62[*(v143 + 36)];
  *v82 = 0;
  *(v82 + 1) = 0;
  *(v82 + 2) = sub_1000B696C;
  *(v82 + 3) = v80;
  v83 = v147;
  sub_1000B17F0(v147);
  sub_1000B6804(v74, v67);
  v84 = swift_allocObject();
  sub_1000B686C(v67, v84 + v69);
  v85 = sub_1000B6A04();
  v86 = sub_1000B7418(&qword_1003AF010, &type metadata accessor for ScenePhase);
  v87 = v144;
  v88 = v83;
  v89 = v151;
  View.onChange<A>(of:initial:_:)();

  v90 = v88;
  v91 = v89;
  (*(v152 + 8))(v90, v89);
  sub_100009EBC(v77, &qword_1003AF1C0);
  v92 = v168;
  LOBYTE(v171[0]) = sub_1000B24C4() & 1;
  v93 = v167;
  sub_1000B6804(v92, v167);
  v94 = swift_allocObject();
  sub_1000B686C(v93, v94 + v69);
  *&v173 = v81;
  *(&v173 + 1) = v91;
  *&v174 = v85;
  *(&v174 + 1) = v86;
  v95 = swift_getOpaqueTypeConformance2();
  v96 = v145;
  View.onChange<A>(of:initial:_:)();

  (*(v146 + 8))(v87, v96);
  EnvironmentObject.projectedValue.getter();
  swift_getKeyPath();
  EnvironmentObject.Wrapper.subscript.getter();

  sub_1000B6804(v92, v93);
  v97 = swift_allocObject();
  sub_1000B686C(v93, v97 + v69);
  type metadata accessor for AudioRoutingMenu();
  *&v173 = v96;
  *(&v173 + 1) = &type metadata for Bool;
  *&v174 = v95;
  *(&v174 + 1) = &protocol witness table for Bool;
  swift_getOpaqueTypeConformance2();
  sub_1000B7418(&qword_1003AF018, type metadata accessor for AudioRoutingMenu);
  v98 = v149;
  v99 = v164;
  View.sheet<A>(isPresented:onDismiss:content:)();

  (*(v150 + 8))(v99, v98);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v100 = v173 | (BYTE2(v173) << 16);
  if ((v100 & 0xFF0000) == 0x80000)
  {
    v101 = sub_100009440([objc_allocWithZone(NSError) init]);
    LOBYTE(v100) = v101;
    LODWORD(v164) = v101 >> 8;
    v102 = HIWORD(v101);
  }

  else
  {
    LODWORD(v164) = v100 >> 8;
    v102 = HIWORD(v100);
  }

  LODWORD(v152) = v102;
  type metadata accessor for ConversationViewModel();
  sub_1000B7418(&qword_1003AE4F8, type metadata accessor for ConversationViewModel);
  v103 = ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v104 = v171[6];
  v105 = v171[7];
  v106 = v172;
  v107 = v168;
  v108 = v167;
  sub_1000B6804(v168, v167);
  v109 = swift_allocObject();
  sub_1000B686C(v108, v109 + v69);
  LOBYTE(v173) = v100;
  BYTE1(v173) = v164;
  BYTE2(v173) = v152;
  *(&v173 + 1) = v104;
  *&v174 = v105;
  BYTE8(v174) = v106;
  *&v175 = sub_1000B6BE8;
  *(&v175 + 1) = v109;
  v110 = v158;
  (*(v154 + 32))(v158, v165, v155);
  v111 = (v110 + *(v153 + 36));
  sub_1000B030C(&v173, v171);

  v112 = v174;
  *v111 = v173;
  v111[1] = v112;
  v111[2] = v175;

  sub_1000B6804(v107, v108);
  v113 = swift_allocObject();
  sub_1000B686C(v108, v113 + v69);
  v114 = swift_getKeyPath();
  v115 = v156;
  sub_100023BD4(v110, v156, &qword_1003AF1E0);
  v116 = v115 + *(v157 + 36);
  *v116 = v114;
  *(v116 + 8) = 512;
  *(v116 + 16) = sub_1000B6C58;
  *(v116 + 24) = v113;
  *(v116 + 32) = 0;
  *(v116 + 40) = 0;
  v117 = v161;
  sub_100023BD4(v115, v161, &qword_1003AF1E8);
  v118 = v159;
  v119 = v160;
  sub_10001F620(v159, v160, &qword_1003AF1F0);
  v120 = v162;
  sub_10001F620(v117, v162, &qword_1003AF1E8);
  v121 = v163;
  sub_10001F620(v119, v163, &qword_1003AF1F0);
  v122 = sub_100005AD4(&qword_1003AF248);
  sub_10001F620(v120, v121 + *(v122 + 48), &qword_1003AF1E8);
  sub_100009EBC(v117, &qword_1003AF1E8);
  sub_100009EBC(v118, &qword_1003AF1F0);
  sub_100009EBC(v120, &qword_1003AF1E8);
  return sub_100009EBC(v119, &qword_1003AF1F0);
}

uint64_t sub_1000B3D74@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v1 = type metadata accessor for BarMagicPocketStyle();
  v61 = *(v1 - 8);
  v62 = v1;
  __chkstk_darwin(v1);
  v60 = &v47[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = type metadata accessor for UserInterfaceSizeClass();
  v54 = *(v3 - 8);
  __chkstk_darwin(v3);
  v51 = &v47[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v53 = sub_100005AD4(&qword_1003AC998);
  __chkstk_darwin(v53);
  v6 = &v47[-v5];
  v7 = sub_100005AD4(&qword_1003AC848);
  v8 = __chkstk_darwin(v7 - 8);
  v52 = &v47[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v8);
  v12 = &v47[-v11];
  __chkstk_darwin(v10);
  v14 = &v47[-v13];
  v59 = type metadata accessor for ErrorStateView();
  v56 = *(v59 - 8);
  __chkstk_darwin(v59);
  v16 = &v47[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v57 = sub_100005AD4(&qword_1003AF0B0);
  __chkstk_darwin(v57);
  v58 = &v47[-v17];
  v63 = sub_100005AD4(&qword_1003AF268);
  v18 = *(v63 - 8);
  __chkstk_darwin(v63);
  v55 = &v47[-v19];
  type metadata accessor for ConversationView_v1();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v65 != 3)
  {
    v49 = v18;
    v50 = v16;
    sub_1000B4554(v65, v16);
    v48 = static Edge.Set.horizontal.getter();
    sub_1000B1618(v14);
    v23 = v54;
    (*(v54 + 104))(v12, enum case for UserInterfaceSizeClass.compact(_:), v3);
    (*(v23 + 56))(v12, 0, 1, v3);
    v24 = *(v53 + 48);
    sub_10001F620(v14, v6, &qword_1003AC848);
    sub_10001F620(v12, &v6[v24], &qword_1003AC848);
    v25 = *(v23 + 48);
    if (v25(v6, 1, v3) == 1)
    {
      sub_100009EBC(v12, &qword_1003AC848);
      sub_100009EBC(v14, &qword_1003AC848);
      v26 = v25(&v6[v24], 1, v3);
      v18 = v49;
      if (v26 == 1)
      {
        sub_100009EBC(v6, &qword_1003AC848);
LABEL_9:
        v21 = v64;
        v29 = v50;
LABEL_11:
        EdgeInsets.init(_all:)();
        v35 = v34;
        v37 = v36;
        v39 = v38;
        v41 = v40;
        v42 = v58;
        (*(v56 + 32))(v58, v29, v59);
        v43 = v42 + *(v57 + 36);
        *v43 = v48;
        *(v43 + 8) = v35;
        *(v43 + 16) = v37;
        *(v43 + 24) = v39;
        *(v43 + 32) = v41;
        *(v43 + 40) = 0;
        v44 = v60;
        static BarMagicPocketStyle.glass.getter();
        sub_1000B735C();
        v45 = v55;
        View.barPocket_v1(style:)();
        (*(v61 + 8))(v44, v62);
        sub_100009EBC(v42, &qword_1003AF0B0);
        v22 = v63;
        (*(v18 + 32))(v21, v45, v63);
        v20 = 0;
        return (*(v18 + 56))(v21, v20, 1, v22);
      }
    }

    else
    {
      v27 = v23;
      v28 = v52;
      sub_10001F620(v6, v52, &qword_1003AC848);
      if (v25(&v6[v24], 1, v3) != 1)
      {
        v30 = &v6[v24];
        v31 = v51;
        (*(v27 + 32))(v51, v30, v3);
        sub_1000B7418(&qword_1003AC9D0, &type metadata accessor for UserInterfaceSizeClass);
        dispatch thunk of static Equatable.== infix(_:_:)();
        v32 = v28;
        v33 = *(v27 + 8);
        v33(v31, v3);
        sub_100009EBC(v12, &qword_1003AC848);
        sub_100009EBC(v14, &qword_1003AC848);
        v33(v32, v3);
        sub_100009EBC(v6, &qword_1003AC848);
        v21 = v64;
        v18 = v49;
        v29 = v50;
        goto LABEL_11;
      }

      sub_100009EBC(v12, &qword_1003AC848);
      sub_100009EBC(v14, &qword_1003AC848);
      (*(v27 + 8))(v28, v3);
      v18 = v49;
    }

    sub_100009EBC(v6, &qword_1003AC998);
    goto LABEL_9;
  }

  v20 = 1;
  v22 = v63;
  v21 = v64;
  return (*(v18 + 56))(v21, v20, 1, v22);
}

uint64_t sub_1000B4554@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ErrorStateView.Context();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = v19 - v14;
  if (a1)
  {
    (*(v5 + 104))(v7, enum case for ErrorStateView.Context.conversation(_:), v4);
    if (a1 == 1)
    {
      static ErrorStateView.noInternetConnection(context:)();
    }

    else
    {
      static ErrorStateView.missingOfflineAssets(context:)();
    }

    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    v16 = v13;
    type metadata accessor for ConversationView_v1();
    swift_getKeyPath();
    v19[1] = a2;
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    (*(v5 + 104))(v7, enum case for ErrorStateView.Context.conversation(_:), v4);
    static ErrorStateView.airplaneMode(sourceLocale:targetLocale:context:)();
    (*(v5 + 8))(v7, v4);
    v17 = *(v9 + 8);
    v17(v12, v16);
    return (v17)(v15, v16);
  }
}

uint64_t sub_1000B4868@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v53 = sub_100005AD4(&qword_1003AF250);
  __chkstk_darwin(v53);
  v52 = &v41 - v3;
  v4 = sub_100005AD4(&qword_1003AF038);
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin(v4);
  v49 = &v41 - v5;
  v6 = sub_100005AD4(&qword_1003AF258);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v43 = &v41 - v8;
  v9 = type metadata accessor for ToolbarSpacer();
  v42 = *(v9 - 8);
  __chkstk_darwin(v9);
  v41 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100005AD4(&qword_1003AF260);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v41 - v15;
  v17 = type metadata accessor for ToolbarItemPlacement();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100005AD4(&qword_1003AF040);
  v47 = *(v21 - 8);
  v48 = v21;
  __chkstk_darwin(v21);
  v23 = &v41 - v22;
  v46 = a1;
  sub_1000B19F8(v20);
  type metadata accessor for ConversationViewsMenu();
  sub_1000B7418(&qword_1003AF048, type metadata accessor for ConversationViewsMenu);
  v45 = v23;
  ToolbarItem<>.init(placement:content:)();
  if (qword_1003A91F0 != -1)
  {
    swift_once();
  }

  v44 = v16;
  if (byte_1003D26A0 == 1)
  {
    static ToolbarItemPlacement.navigationBarTrailing.getter();
    v24 = v41;
    static ToolbarSpacer.fixed(placement:)();
    (*(v18 + 8))(v20, v17);
    v25 = v43;
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    (*(v7 + 16))(v14, v25, v6);
    (*(v7 + 56))(v14, 0, 1, v6);
    v55 = v9;
    v56 = &protocol witness table for ToolbarSpacer;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_100009EBC(v14, &qword_1003AF260);
    (*(v7 + 8))(v25, v6);
    (*(v42 + 8))(v24, v9);
  }

  else
  {
    (*(v7 + 56))(v14, 1, 1, v6);
    v55 = v9;
    v56 = &protocol witness table for ToolbarSpacer;
    swift_getOpaqueTypeConformance2();
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_100009EBC(v14, &qword_1003AF260);
  }

  v26 = static ToolbarItemPlacement.navigationBarTrailing.getter();
  __chkstk_darwin(v26);
  *(&v41 - 2) = v46;
  sub_100005AD4(&qword_1003AF050);
  v27 = sub_100005EA8(&qword_1003AF058);
  v28 = sub_1000B05A4();
  v29 = sub_10001BAEC(&qword_1003AF068, &qword_1003AF058);
  v55 = &type metadata for MoreOptionsMenu;
  v56 = v27;
  v57 = v28;
  v58 = v29;
  swift_getOpaqueTypeConformance2();
  v30 = v49;
  ToolbarItem<>.init(placement:content:)();
  v31 = v52;
  v32 = *(v53 + 48);
  v33 = *(v53 + 64);
  v34 = v47;
  v35 = v48;
  v36 = v45;
  (*(v47 + 16))(v52, v45, v48);
  v37 = v44;
  sub_10001F620(v44, &v31[v32], &qword_1003AF260);
  v39 = v50;
  v38 = v51;
  (*(v50 + 16))(&v31[v33], v30, v51);
  TupleToolbarContent.init(_:)();
  (*(v39 + 8))(v30, v38);
  sub_100009EBC(v37, &qword_1003AF260);
  return (*(v34 + 8))(v36, v35);
}

uint64_t sub_1000B5018@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100005AD4(&qword_1003B23E0);
  swift_storeEnumTagMultiPayload();
  v2 = (a1 + *(type metadata accessor for ConversationViewsMenu() + 20));
  type metadata accessor for SceneContext();
  sub_1000B7418(&qword_1003AC860, type metadata accessor for SceneContext);
  result = EnvironmentObject.init()();
  *v2 = result;
  v2[1] = v4;
  return result;
}

uint64_t sub_1000B50CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = type metadata accessor for ConversationView_v1();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = sub_1000B20C0();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (*&v32[0] >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((*&v32[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = v7 != 0;
  v9 = *(a1 + *(v3 + 40));
  swift_getKeyPath();
  *&v32[0] = v9;
  sub_1000B7418(&qword_1003AE978, type metadata accessor for DeviceHelper);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(v9 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__isAnyHeadsetConnected);
  type metadata accessor for SharedTranslationOptions();
  sub_1000B7418(&qword_1003AE918, type metadata accessor for SharedTranslationOptions);
  v11 = EnvironmentObject.init()();
  v13 = v12;
  type metadata accessor for SceneContext();
  sub_1000B7418(&qword_1003AC860, type metadata accessor for SceneContext);
  *&v29 = v11;
  *(&v29 + 1) = v13;
  *&v30 = EnvironmentObject.init()();
  *(&v30 + 1) = v14;
  *v31 = xmmword_1002D3300;
  v31[16] = v6 & 1;
  v31[17] = v8;
  v31[18] = v10;
  v15 = LocalizedStringKey.init(stringLiteral:)();
  v26 = v16;
  v27 = v15;
  v25[3] = v17;
  sub_1000B6804(a1, v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for MainActor();
  v18 = static MainActor.shared.getter();
  v19 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = &protocol witness table for MainActor;
  sub_1000B686C(v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  sub_1000B6804(a1, v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = static MainActor.shared.getter();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = &protocol witness table for MainActor;
  sub_1000B686C(v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v19);
  v23 = Binding.init(get:set:)();
  __chkstk_darwin(v23);
  sub_100005AD4(&qword_1003AF058);
  sub_1000B05A4();
  sub_10001BAEC(&qword_1003AF068, &qword_1003AF058);
  View.confirmationDialog<A>(_:isPresented:titleVisibility:actions:)();

  v32[0] = v29;
  v32[1] = v30;
  v33[0] = *v31;
  *(v33 + 15) = *&v31[15];
  return sub_1000B0958(v32);
}

uint64_t sub_1000B559C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v43 = a1;
  v48 = a2;
  v3 = type metadata accessor for ConversationView_v1();
  v44 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v38 = v4;
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100005AD4(&qword_1003ADA30);
  __chkstk_darwin(v6 - 8);
  v8 = v37 - v7;
  v9 = sub_100005AD4(&qword_1003AA540);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v47 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v46 = v37 - v14;
  v15 = __chkstk_darwin(v13);
  v45 = v37 - v16;
  __chkstk_darwin(v15);
  v18 = v37 - v17;
  v19 = LocalizedStringKey.init(stringLiteral:)();
  v40 = v20;
  v41 = v19;
  v37[1] = v21;
  v39 = v22;
  static ButtonRole.destructive.getter();
  v23 = type metadata accessor for ButtonRole();
  v42 = *(*(v23 - 8) + 56);
  v42(v8, 0, 1, v23);
  sub_1000B6804(a1, v5);
  v24 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v25 = swift_allocObject();
  sub_1000B686C(v5, v25 + v24);
  Button<>.init(_:role:action:)();
  v44 = LocalizedStringKey.init(stringLiteral:)();
  v40 = v27;
  v41 = v26;
  static ButtonRole.cancel.getter();
  v42(v8, 0, 1, v23);
  sub_1000B6804(v43, v5);
  v28 = swift_allocObject();
  sub_1000B686C(v5, v28 + v24);
  v29 = v45;
  Button<>.init(_:role:action:)();
  v30 = *(v10 + 16);
  v31 = v46;
  v30(v46, v18, v9);
  v32 = v47;
  v30(v47, v29, v9);
  v33 = v48;
  v30(v48, v31, v9);
  v34 = sub_100005AD4(&qword_1003AF070);
  v30(&v33[*(v34 + 48)], v32, v9);
  v35 = *(v10 + 8);
  v35(v29, v9);
  v35(v18, v9);
  v35(v32, v9);
  return (v35)(v31, v9);
}

uint64_t sub_1000B5A10(uint64_t a1)
{
  v1 = *(*(a1 + *(type metadata accessor for ConversationView_v1() + 36) + 8) + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_session);
  sub_1000085CC((v1 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store), *(v1 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store + 24));
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  dispatch thunk of TranslationStore.clearHistory(sessionID:completion:)();

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  *(v1 + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_lidDisambiguationCounter) = 0;
}

uint64_t sub_1000B5B68(uint64_t a1)
{
  if (*(a1 + 16))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return static Published.subscript.setter();
  }

  else
  {
    type metadata accessor for SceneContext();
    sub_1000B7418(&qword_1003AC860, type metadata accessor for SceneContext);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

void sub_1000B5C38(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = Notification.userInfo.getter();
  if (v5)
  {
    v6 = v5;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    AnyHashable.init<A>(_:)();
    if (*(v6 + 16) && (v7 = sub_10028DF68(v14), (v8 & 1) != 0))
    {
      sub_10000A37C(*(v6 + 56) + 32 * v7, v16);
      sub_100078028(v14);

      sub_1000B0530();
      if (swift_dynamicCast())
      {
        if (*(*(v3 + *(type metadata accessor for ConversationView_v1() + 36) + 8) + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_isVisible) == 1)
        {
          [v13 doubleValue];
          v9 = static Animation.easeInOut(duration:)();
          __chkstk_darwin(v9);
          withAnimation<A>(_:_:)();

          return;
        }
      }
    }

    else
    {

      sub_100078028(v14);
    }
  }

  v10 = (v3 + *(type metadata accessor for ConversationView_v1() + 52));
  v11 = *v10;
  v12 = *(v10 + 1);
  v14[0] = v11;
  v15 = v12;
  v16[0] = a2 & 1;
  sub_100005AD4(&qword_1003AC8F8);
  State.wrappedValue.setter();
}

uint64_t sub_1000B5E2C(uint64_t a1)
{
  *(*(a1 + *(type metadata accessor for ConversationView_v1() + 36) + 8) + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_isVisible) = 1;
  v6 = &type metadata for TranslateFeatures;
  v1 = sub_100009DF8();
  v7 = v1;
  v5[0] = 8;
  v2 = isFeatureEnabled(_:)();
  result = sub_100008664(v5);
  if (v2)
  {
    v6 = &type metadata for TranslateFeatures;
    v7 = v1;
    v5[0] = 8;
    v4 = isFeatureEnabled(_:)();
    result = sub_100008664(v5);
    if (v4)
    {
      return sub_1000D0678();
    }
  }

  return result;
}

uint64_t sub_1000B5EF8(uint64_t a1)
{
  *(*(a1 + *(type metadata accessor for ConversationView_v1() + 36) + 8) + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_isVisible) = 0;
  sub_1000BFC04();
  v6 = &type metadata for TranslateFeatures;
  v1 = sub_100009DF8();
  v7 = v1;
  v5[0] = 8;
  v2 = isFeatureEnabled(_:)();
  result = sub_100008664(v5);
  if (v2)
  {
    v6 = &type metadata for TranslateFeatures;
    v7 = v1;
    v5[0] = 8;
    v4 = isFeatureEnabled(_:)();
    result = sub_100008664(v5);
    if (v4)
    {
      return sub_1000D07C0();
    }
  }

  return result;
}

uint64_t sub_1000B5FC4()
{
  v0 = type metadata accessor for ScenePhase();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v4 = *(v1 + 104);
  v4(v3, enum case for ScenePhase.active(_:), v0);
  v5 = static ScenePhase.== infix(_:_:)();
  v6 = *(v1 + 8);
  v6(v3, v0);
  if (v5)
  {
    v18 = &type metadata for TranslateFeatures;
    v7 = sub_100009DF8();
    v19 = v7;
    v17[0] = 8;
    v8 = isFeatureEnabled(_:)();
    result = sub_100008664(v17);
    if (v8)
    {
      type metadata accessor for ConversationView_v1();
      v18 = &type metadata for TranslateFeatures;
      v19 = v7;
      v17[0] = 8;
      v10 = isFeatureEnabled(_:)();
      result = sub_100008664(v17);
      if (v10)
      {
        return sub_1000D0678();
      }
    }
  }

  else
  {
    v4(v3, enum case for ScenePhase.inactive(_:), v0);
    v11 = static ScenePhase.== infix(_:_:)();
    v6(v3, v0);
    if (v11 & 1) != 0 || (v4(v3, enum case for ScenePhase.background(_:), v0), v12 = static ScenePhase.== infix(_:_:)(), result = (v6)(v3, v0), (v12))
    {
      type metadata accessor for ConversationView_v1();
      sub_1000BFC04();
      v18 = &type metadata for TranslateFeatures;
      v13 = sub_100009DF8();
      v19 = v13;
      v17[0] = 8;
      v14 = isFeatureEnabled(_:)();
      result = sub_100008664(v17);
      if (v14)
      {
        v18 = &type metadata for TranslateFeatures;
        v19 = v13;
        v17[0] = 8;
        v15 = isFeatureEnabled(_:)();
        result = sub_100008664(v17);
        if (v15)
        {
          return sub_1000D07C0();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000B6274(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for ConversationView_v1() + 36) + 8);
  *(v1 + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_isVisible) = (sub_1000B24C4() & 1) == 0;
  return sub_1000BFC04();
}

__n128 sub_1000B62CC@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for ConversationView_v1();
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = type metadata accessor for AudioRoutingMenu();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v6 = *(a1 + *(v4 + 40));
  swift_getKeyPath();
  *&v41 = v6;
  sub_1000B7418(&qword_1003AE978, type metadata accessor for DeviceHelper);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = (v6 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[2];
  v28 = v7[1];
  v29 = v9;
  v27 = v8;
  v10 = *(v7 + 3);
  v11 = v7[4];
  v12 = v7[5];
  *(v32 + 9) = *(v7 + 89);
  v31 = v11;
  v32[0] = v12;
  v30 = v10;
  swift_getKeyPath();
  *&v33 = v6;
  sub_10001F620(&v27, &v41, &qword_1003A93C8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(v6 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__audioDevices);
  *a2 = swift_getKeyPath();
  sub_100005AD4(&unk_1003B1290);
  swift_storeEnumTagMultiPayload();
  v14 = a2 + v5[5];
  v45 = 0u;
  memset(v46, 0, 25);
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;

  sub_100005AD4(&qword_1003A93C8);
  State.init(wrappedValue:)();
  v15 = v38;
  *(v14 + 4) = v37;
  *(v14 + 5) = v15;
  *(v14 + 6) = v39;
  *(v14 + 14) = v40;
  v16 = v34;
  *v14 = v33;
  *(v14 + 1) = v16;
  v17 = v36;
  *(v14 + 2) = v35;
  *(v14 + 3) = v17;
  v18 = a2 + v5[6];
  State.init(wrappedValue:)();
  v19 = *v46;
  *(v18 + 4) = v45;
  *(v18 + 5) = v19;
  *(v18 + 6) = *&v46[16];
  *(v18 + 14) = v47;
  v20 = v42;
  *v18 = v41;
  *(v18 + 1) = v20;
  v21 = v44;
  *(v18 + 2) = v43;
  *(v18 + 3) = v21;
  v22 = a2 + v5[9];
  v23 = v32[0];
  *(v22 + 4) = v31;
  *(v22 + 5) = v23;
  *(v22 + 89) = *(v32 + 9);
  v24 = v28;
  *v22 = v27;
  *(v22 + 1) = v24;
  result = v30;
  *(v22 + 2) = v29;
  *(v22 + 3) = result;
  *(a2 + v5[10]) = v13;
  v26 = (a2 + v5[11]);
  *v26 = sub_10009156C;
  v26[1] = v6;
  return result;
}

void *sub_1000B6644(uint64_t a1)
{
  v2 = sub_100005AD4(&unk_1003B8C90);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_1000B1E88();
  v6 = *(a1 + *(type metadata accessor for ConversationView_v1() + 36) + 8);
  if (v5)
  {
    return sub_1000C080C();
  }

  UUID.init()();
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 56))(v4, 0, 1, v8);
  v9 = OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel__selfAutoTranslateSessionId;
  swift_beginAccess();
  sub_100091B8C(v4, v6 + v9);
  swift_endAccess();
  return sub_1000C0C34(0, 2);
}

uint64_t sub_1000B676C()
{
  type metadata accessor for ConversationView_v1();
  sub_100005AD4(&qword_1003AC8F8);
  return State.wrappedValue.setter();
}

uint64_t sub_1000B6804(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationView_v1();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B686C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConversationView_v1();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B6984()
{
  type metadata accessor for ConversationView_v1();

  return sub_1000B5FC4();
}

unint64_t sub_1000B6A04()
{
  result = qword_1003AF230;
  if (!qword_1003AF230)
  {
    sub_100005EA8(&qword_1003AF1C0);
    sub_1000B6A90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF230);
  }

  return result;
}

unint64_t sub_1000B6A90()
{
  result = qword_1003AF238;
  if (!qword_1003AF238)
  {
    sub_100005EA8(&qword_1003AF228);
    sub_10001BAEC(&qword_1003AF240, &qword_1003AF220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF238);
  }

  return result;
}

double sub_1000B6B68@<D0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for ConversationView_v1() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  *&result = sub_1000B62CC(v4, a1).n128_u64[0];
  return result;
}

uint64_t sub_1000B6CF0@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for ConversationView_v1() - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1000B229C(v4, a1);
}

uint64_t sub_1000B6D64()
{
  v1 = type metadata accessor for ConversationView_v1();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = v1[7];
  sub_100005AD4(&qword_1003B23E0);
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

  v9 = v1[8];
  sub_100005AD4(&qword_1003AEFE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for ScenePhase();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000B6FC8(uint64_t a1)
{
  v3 = *(type metadata accessor for ConversationView_v1() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1000B23F0(a1, v4, v5, v6);
}

uint64_t sub_1000B705C()
{
  v1 = type metadata accessor for ConversationView_v1();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[7];
  sub_100005AD4(&qword_1003B23E0);
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

  v9 = v1[8];
  sub_100005AD4(&qword_1003AEFE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for ScenePhase();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000B72D0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ConversationView_v1() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1000B735C()
{
  result = qword_1003AF270;
  if (!qword_1003AF270)
  {
    sub_100005EA8(&qword_1003AF0B0);
    sub_1000B7418(&qword_1003AF278, &type metadata accessor for ErrorStateView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF270);
  }

  return result;
}

uint64_t sub_1000B7418(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000B74D0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

double sub_1000B75B8@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1000B7648(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_1000B773C(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t))
{
  v21 = a7;
  v9 = type metadata accessor for Locale();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v20 - v14;
  v16 = *(v10 + 16);
  v16(&v20 - v14, a1, v9);
  v17 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v16(v13, v15, v9);
  v17;
  v18 = static Published.subscript.setter();
  v21(v18);
  return (*(v10 + 8))(v15, v9);
}

void *sub_1000B78C4(uint64_t a1)
{
  v35 = type metadata accessor for Locale();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v5)
  {
    v27 = v1;
    v39 = _swiftEmptyArrayStorage;
    sub_1000C4B4C(0, v5, 0);
    v38 = v39;
    v7 = a1 + 56;
    result = _HashTable.startBucket.getter();
    v8 = result;
    v9 = 0;
    v32 = v3 + 8;
    v33 = v3 + 16;
    v28 = a1 + 64;
    v29 = v5;
    v30 = v3;
    v31 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v36 = *(a1 + 36);
      v12 = v34;
      v13 = v35;
      (*(v3 + 16))(v34, *(a1 + 48) + *(v3 + 72) * v8, v35);
      v37 = Locale.identifier.getter();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v38;
      v39 = v38;
      v18 = v38[2];
      v17 = v38[3];
      if (v18 >= v17 >> 1)
      {
        result = sub_1000C4B4C((v17 > 1), v18 + 1, 1);
        v16 = v39;
      }

      v16[2] = v18 + 1;
      v19 = &v16[2 * v18];
      v19[4] = v37;
      v19[5] = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v31;
      v20 = *(v31 + 8 * v11);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v38 = v16;
      if (v36 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v10 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v30;
      }

      else
      {
        v22 = v11 << 6;
        v23 = v11 + 1;
        v24 = (v28 + 8 * v11);
        v3 = v30;
        while (v23 < (v10 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_1000C81C0(v8, v36, 0);
            v10 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_1000C81C0(v8, v36, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v29)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

char *sub_1000B7BCC()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel____lazy_storage___textManager;
  if (*&v0[OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel____lazy_storage___textManager])
  {
    v2 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel____lazy_storage___textManager];
  }

  else
  {
    v3 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_translator];
    type metadata accessor for TextStreamingTranslationManager(0);
    v4 = swift_allocObject();
    v5 = v3;
    v2 = sub_1000C820C(v5, v0, v4, type metadata accessor for ConversationViewModel, &off_100382CF0, sub_1000C94F8, &unk_100382FC0);

    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t sub_1000B7CA8()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = [objc_opt_self() standardUserDefaults];
  Locale.identifier.getter();
  v5 = String._bridgeToObjectiveC()();

  v6 = String._bridgeToObjectiveC()();
  [v4 setObject:v5 forKey:v6];

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1000B7E44()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = [objc_opt_self() standardUserDefaults];
  Locale.identifier.getter();
  v5 = String._bridgeToObjectiveC()();

  v6 = String._bridgeToObjectiveC()();
  [v4 setObject:v5 forKey:v6];

  return (*(v1 + 8))(v3, v0);
}

id sub_1000B7FE0()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v13 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v7 = objc_allocWithZone(_LTLocalePair);
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v9 = Locale._bridgeToObjectiveC()().super.isa;
  v10 = [v7 initWithSourceLocale:isa targetLocale:v9];

  v11 = *(v1 + 8);
  v11(v4, v0);
  v11(v6, v0);
  return v10;
}

double sub_1000B81F0@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1000B8274()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1000B8314()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1000B8388()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1 | (v2 << 16);
}

Swift::Int sub_1000B8424()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000B8520()
{
  String.hash(into:)();
}

Swift::Int sub_1000B8608()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000B8700@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C876C(*a1);
  *a2 = result;
  return result;
}

void sub_1000B8730(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x70615472657375;
  v5 = 0xED00006C616E6946;
  v6 = 0x6465766965636572;
  v7 = 0xE500000000000000;
  v8 = 0x7465736572;
  if (v2 != 3)
  {
    v8 = 0x69647541706F7473;
    v7 = 0xE90000000000006FLL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6465766965636572;
    v3 = 0xED0000726F727245;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1000B87E8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v3)
  {
    v0 = 1;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v4)
    {
      v0 = 1;
    }

    else
    {
      v1 = sub_1000B7BCC()[OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_streamingManagerState];

      if (v1 == 1)
      {
        v0 = 1;
      }

      else
      {
        v0 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }
  }

  return v0 & 1;
}

id sub_1000B89A0()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v14 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v7 = objc_allocWithZone(_LTLocalePair);
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v9 = Locale._bridgeToObjectiveC()().super.isa;
  v10 = [v7 initWithSourceLocale:isa targetLocale:v9];

  v11 = *(v1 + 8);
  v11(v4, v0);
  v11(v6, v0);
  v12 = [v10 isPassthrough];

  return v12;
}

uint64_t sub_1000B8B8C()
{
  v1 = 0x6C69662E706F7473;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v7 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v1 = 0x6C6C69662E63696DLL;
    v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_deviceHelper);
    swift_getKeyPath();
    sub_1000C7C6C(&qword_1003AE978, type metadata accessor for DeviceHelper);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v3 = (v2 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice);
    swift_beginAccess();
    if (v3[1])
    {
      v4 = v3[6];
      v5 = v3[8];
      if ((v5 == 4 || v5 == 1) && (v3[9] & 0xFFFFFFFFFFFFFFFELL) == 2)
      {

        return v4;
      }
    }
  }

  return v1;
}

uint64_t sub_1000B8D64()
{
  v0 = 0x6C69662E706F7473;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v3 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (!v2)
    {
      return 0x6C6C69662E63696DLL;
    }
  }

  return v0;
}

void *sub_1000B8E70()
{
  v33 = type metadata accessor for Locale();
  v1 = *(v33 - 8);
  v2 = __chkstk_darwin(v33);
  v32 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v31 = &v26 - v4;
  v34 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = v37;
  v37 = _swiftEmptyArrayStorage;
  if (v5 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    v29 = v5 & 0xFFFFFFFFFFFFFF8;
    v30 = v5 & 0xC000000000000001;
    ++v1;
    v27 = i;
    v28 = v5;
    v8 = v31;
    while (1)
    {
      if (v30)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *(v29 + 16))
        {
          goto LABEL_15;
        }

        v9 = *(v5 + 8 * v7 + 32);
      }

      v10 = v9;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v36 = v7 + 1;
      dispatch thunk of PersistedTranslation.sourceLocale.getter();
      v11 = v32;
      dispatch thunk of PersistedTranslation.targetLocale.getter();
      v12 = objc_allocWithZone(_LTLocalePair);
      isa = Locale._bridgeToObjectiveC()().super.isa;
      v14 = Locale._bridgeToObjectiveC()().super.isa;
      v15 = [v12 initWithSourceLocale:isa targetLocale:v14];

      v35 = v10;
      v16 = *v1;
      v17 = v33;
      (*v1)(v11, v33);
      v16(v8, v17);
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v18 = objc_allocWithZone(_LTLocalePair);
      v19 = Locale._bridgeToObjectiveC()().super.isa;
      v20 = Locale._bridgeToObjectiveC()().super.isa;
      v21 = [v18 initWithSourceLocale:v19 targetLocale:v20];

      v16(v11, v17);
      v16(v8, v17);
      LOBYTE(v20) = [v15 isBidirectionalEqual:v21];

      if (v20)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      v5 = v28;
      ++v7;
      if (v36 == v27)
      {
        v22 = v37;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v22 = _swiftEmptyArrayStorage;
LABEL_18:

  v23 = sub_1001D1660(v22);
  v24 = sub_10017A294(v23);

  return v24;
}

char *sub_1000B928C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v9 = v8;
  v136 = a8;
  v172 = a6;
  v173 = a7;
  v167 = a5;
  v168 = a3;
  v169 = a4;
  v171 = a2;
  v138 = a1;
  v160 = sub_100005AD4(&qword_1003AD868);
  v158 = *(v160 - 8);
  __chkstk_darwin(v160);
  v156 = &v122 - v10;
  v161 = sub_100005AD4(&qword_1003AEAA0);
  v159 = *(v161 - 8);
  __chkstk_darwin(v161);
  v157 = &v122 - v11;
  v12 = sub_100005AD4(&qword_1003AEAA8);
  v163 = *(v12 - 8);
  v164 = v12;
  __chkstk_darwin(v12);
  v162 = &v122 - v13;
  v151 = sub_100005AD4(&qword_1003AD850);
  v150 = *(v151 - 8);
  __chkstk_darwin(v151);
  v148 = &v122 - v14;
  v149 = sub_100005AD4(&qword_1003AD858);
  v147 = *(v149 - 8);
  v15 = __chkstk_darwin(v149);
  v146 = &v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v145 = &v122 - v17;
  v154 = sub_100005AD4(&qword_1003AD860);
  v153 = *(v154 - 8);
  __chkstk_darwin(v154);
  v152 = &v122 - v18;
  v19 = sub_100005AD4(&qword_1003B23F0);
  __chkstk_darwin(v19 - 8);
  v155 = &v122 - v20;
  v141 = sub_100005AD4(&qword_1003AABE0);
  v140 = *(v141 - 1);
  __chkstk_darwin(v141);
  v139 = &v122 - v21;
  v144 = sub_100005AD4(&qword_1003AABE8);
  v143 = *(v144 - 8);
  __chkstk_darwin(v144);
  v142 = &v122 - v22;
  v170 = type metadata accessor for Locale();
  v174 = *(v170 - 8);
  v23 = __chkstk_darwin(v170);
  v137 = &v122 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v135 = &v122 - v26;
  v27 = __chkstk_darwin(v25);
  v166 = &v122 - v28;
  __chkstk_darwin(v27);
  v134 = &v122 - v29;
  v133 = sub_100005AD4(&qword_1003AD8D8);
  v132 = *(v133 - 8);
  __chkstk_darwin(v133);
  v131 = &v122 - v30;
  v130 = sub_100005AD4(&qword_1003AD8E0);
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v128 = &v122 - v31;
  v165 = sub_100005AD4(&qword_1003AABF0);
  v127 = *(v165 - 8);
  __chkstk_darwin(v165);
  v126 = &v122 - v32;
  v125 = sub_100005AD4(&qword_1003AF3E8);
  v123 = *(v125 - 8);
  __chkstk_darwin(v125);
  v34 = &v122 - v33;
  v122 = sub_100005AD4(&qword_1003AEAE8);
  v35 = *(v122 - 8);
  __chkstk_darwin(v122);
  v37 = &v122 - v36;
  v38 = sub_100005AD4(&unk_1003B8DF0);
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v41 = &v122 - v40;
  *&v9[OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel____lazy_storage___textManager] = 0;
  v42 = OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel__disableMicrophone;
  LOBYTE(v177) = 0;
  Published.init(initialValue:)();
  v43 = *(v39 + 32);
  v43(&v9[v42], v41, v38);
  v44 = OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel__isListeningToPartner;
  LOBYTE(v177) = 0;
  Published.init(initialValue:)();
  v43(&v9[v44], v41, v38);
  v124 = v43;
  v45 = OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel__isListeningToDeviceOwner;
  LOBYTE(v177) = 0;
  Published.init(initialValue:)();
  v43(&v9[v45], v41, v38);
  v46 = OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel__partialSpeechResult;
  v179 = 0;
  v177 = 0u;
  v178 = 0u;
  sub_100005AD4(&qword_1003AF3B0);
  Published.init(initialValue:)();
  (*(v35 + 32))(&v9[v46], v37, v122);
  v47 = OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel__partialTextResult;
  v177 = 0uLL;
  *&v178 = 0;
  sub_100005AD4(&qword_1003AF3C0);
  Published.init(initialValue:)();
  (*(v123 + 32))(&v9[v47], v34, v125);
  v48 = OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel__deviceOwnerText;
  v177 = 0uLL;
  sub_100005AD4(&qword_1003AA740);
  v49 = v126;
  Published.init(initialValue:)();
  v50 = *(v127 + 32);
  v51 = v165;
  v50(&v9[v48], v49, v165);
  v52 = OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel__partnerText;
  v177 = 0uLL;
  Published.init(initialValue:)();
  v50(&v9[v52], v49, v51);
  v53 = OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel__stateError;
  LOBYTE(v177) = 3;
  sub_100005AD4(&qword_1003ACD68);
  v54 = v128;
  Published.init(initialValue:)();
  (*(v129 + 32))(&v9[v53], v54, v130);
  v55 = OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel__transactionalError;
  BYTE2(v177) = 8;
  LOWORD(v177) = 0;
  sub_100005AD4(&qword_1003ACD78);
  v56 = v131;
  Published.init(initialValue:)();
  (*(v132 + 32))(&v9[v55], v56, v133);
  v57 = OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel__showErrorAlert;
  LOBYTE(v177) = 0;
  Published.init(initialValue:)();
  v58 = v124;
  v124(&v9[v57], v41, v38);
  v59 = OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel__keyboardIsShowing;
  LOBYTE(v177) = 0;
  Published.init(initialValue:)();
  v58(&v9[v59], v41, v38);
  v9[OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_isVisible] = 0;
  v9[OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_hasPerformedStopTone] = 0;
  *&v9[OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_currentRecordingStopTonePlaybackTask] = 0;
  *&v9[OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_lastSpeechTranslation] = 512;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v60 = sub_10011ED3C(_swiftEmptyArrayStorage);
  }

  else
  {
    v60 = &_swiftEmptySetSingleton;
  }

  *&v9[OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_subscriptions] = v60;
  v61 = OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_currentSelfLoggingInvocation;
  type metadata accessor for SELFLoggingInvocationWrapper(0);
  v62 = swift_allocObject();
  *(v62 + 16) = 0;
  v63 = OBJC_IVAR____TtC17SequoiaTranslator28SELFLoggingInvocationWrapper_parameters;
  v64 = type metadata accessor for SELFLoggingInvocationWrapper.Parameters(0);
  (*(*(v64 - 8) + 56))(v62 + v63, 1, 1, v64);
  UUID.init()();
  *(v62 + OBJC_IVAR____TtC17SequoiaTranslator28SELFLoggingInvocationWrapper_hasLoggedGenderCoreAnalytics) = 0;
  *(v62 + OBJC_IVAR____TtC17SequoiaTranslator28SELFLoggingInvocationWrapper_tabName) = 3;
  *&v9[v61] = v62;
  v65 = &v9[OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_lastEnteredText];
  *v65 = 0;
  v65[1] = 0;
  v66 = *(v174 + 56);
  v67 = v170;
  v66(&v9[OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_lastSourceLocale], 1, 1, v170);
  v66(&v9[OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_lastTargetLocale], 1, 1, v67);
  v9[OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_faceToFaceVisible] = 0;
  v9[OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_redactTargetText] = 0;
  v68 = OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel__selfAutoTranslateSessionId;
  UUID.init()();
  v69 = type metadata accessor for UUID();
  (*(*(v69 - 8) + 56))(&v9[v68], 0, 1, v69);
  v70 = v138;
  *&v9[OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_translator] = v138;
  *&v9[OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_languagesService] = v171;
  *&v9[OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_session] = v168;
  v71 = objc_allocWithZone(type metadata accessor for SpeechManager());
  v72 = v70;

  v73 = v167;
  v167 = v72;
  v138 = v73;
  *&v9[OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_speechManager] = sub_10023B92C(v72, v73);
  v74 = v173;
  *&v9[OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_ttsManager] = v172;
  *&v9[OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_errorStateContext] = v74;
  v75 = v136;
  *&v9[OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_translationOptions] = v136;
  *&v9[OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_deviceHelper] = v169;
  v76 = objc_opt_self();

  v136 = v75;

  v77 = [v76 standardUserDefaults];
  v78 = String._bridgeToObjectiveC()();
  v79 = [v77 stringForKey:v78];

  if (v79)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v80 = v134;
  Locale.init(identifier:)();
  swift_beginAccess();
  v81 = v174;
  v82 = *(v174 + 16);
  v83 = v170;
  v82(v166, v80, v170);
  Published.init(initialValue:)();
  v84 = *(v81 + 8);
  v174 = v81 + 8;
  v84(v80, v83);
  swift_endAccess();
  v85 = [v76 standardUserDefaults];
  v86 = String._bridgeToObjectiveC()();
  v87 = [v85 stringForKey:v86];

  if (v87)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v88 = v135;
  Locale.init(identifier:)();
  swift_beginAccess();
  v89 = v166;
  v90 = v170;
  v82(v166, v88, v170);
  Published.init(initialValue:)();
  v84(v88, v90);
  swift_endAccess();
  v91 = type metadata accessor for ConversationViewModel();
  v176.receiver = v9;
  v176.super_class = v91;
  v92 = objc_msgSendSuper2(&v176, "init");
  *(*&v92[OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_speechManager] + OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_delegate + 8) = &off_100382D00;
  swift_unknownObjectWeakAssign();
  swift_getKeyPath();
  swift_getKeyPath();
  v93 = v92;
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v94 = v137;
  static Published.subscript.getter();

  sub_10017CAF4();
  v84(v94, v90);
  v84(v89, v90);
  swift_beginAccess();
  v95 = v139;
  Published.projectedValue.getter();
  swift_endAccess();
  v135 = sub_10000A2CC(0, &qword_1003A9C40);
  v96 = static OS_dispatch_queue.main.getter();
  *&v177 = v96;
  v170 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v97 = *(v170 - 8);
  v174 = *(v97 + 56);
  v166 = (v97 + 56);
  v98 = v155;
  (v174)(v155, 1, 1, v170);
  v137 = &protocol conformance descriptor for Published<A>.Publisher;
  sub_10001BAEC(&qword_1003AABF8, &qword_1003AABE0);
  v165 = sub_100051450();
  v99 = v142;
  v100 = v141;
  Publisher.receive<A>(on:options:)();
  sub_100009EBC(v98, &qword_1003B23F0);

  (*(v140 + 8))(v95, v100);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v141 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_10001BAEC(qword_1003AAC00, &qword_1003AABE8);
  v101 = v144;
  Publisher<>.sink(receiveValue:)();

  (*(v143 + 8))(v99, v101);
  v102 = OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_subscriptions;
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  swift_beginAccess();
  sub_100005AD4(&qword_1003AED90);
  v103 = v145;
  Published.projectedValue.getter();
  swift_endAccess();
  swift_beginAccess();
  v104 = v146;
  Published.projectedValue.getter();
  swift_endAccess();
  v105 = v148;
  LanguagesService.$models.getter();
  v106 = sub_1000EA618(v103, v104, v105);
  (*(v150 + 8))(v105, v151);
  v107 = *(v147 + 8);
  v108 = v149;
  v107(v104, v149);
  v107(v103, v108);
  *&v177 = v106;
  v109 = static OS_dispatch_queue.main.getter();
  v175 = v109;
  (v174)(v98, 1, 1, v170);
  sub_100005AD4(&qword_1003AD960);
  sub_10001BAEC(&qword_1003AD968, &qword_1003AD960);
  v110 = v152;
  Publisher.receive<A>(on:options:)();
  sub_100009EBC(v98, &qword_1003B23F0);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10001BAEC(&qword_1003AD970, &qword_1003AD860);
  v111 = v154;
  Publisher<>.sink(receiveValue:)();

  (*(v153 + 8))(v110, v111);
  v144 = v102;
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  swift_beginAccess();
  sub_100005AD4(&qword_1003AABD8);
  v112 = v156;
  Published.projectedValue.getter();
  swift_endAccess();
  v113 = static OS_dispatch_queue.main.getter();
  *&v177 = v113;
  (v174)(v98, 1, 1, v170);
  sub_10001BAEC(&qword_1003AD940, &qword_1003AD868);
  v114 = v157;
  v115 = v160;
  Publisher.receive<A>(on:options:)();
  sub_100009EBC(v98, &qword_1003B23F0);

  (*(v158 + 8))(v112, v115);
  sub_10001BAEC(&qword_1003AEB20, &qword_1003AEAA0);
  v116 = v162;
  v117 = v161;
  Publisher.dropFirst(_:)();
  (*(v159 + 8))(v114, v117);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_10001BAEC(&qword_1003AEB28, &qword_1003AEAA8);
  v118 = v164;
  Publisher<>.sink(receiveValue:)();

  (*(v163 + 8))(v116, v118);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v120 = __chkstk_darwin(v119);
  *(&v122 - 2) = v93;
  __chkstk_darwin(v120);
  *(&v122 - 2) = v93;
  withObservationTracking<A>(_:onChange:)();

  return v93;
}

uint64_t sub_1000BADFC(uint64_t a1)
{
  v1 = *(a1 + 8);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (v1)
    {
      sub_1000BCD74();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    return static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_1000BAEA0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return static Published.subscript.setter();
  }

  return result;
}

void sub_1000BAF2C()
{
  if (qword_1003A9220 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000078E8(v0, qword_1003D2770);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Clearing input fields since the session timed out", v3, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1000BFA0C(1, 0);
  }
}

uint64_t sub_1000BB044()
{
  swift_getKeyPath();
  sub_1000C7C6C(&qword_1003AE978, type metadata accessor for DeviceHelper);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1000BB0E8()
{
  v0 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = __chkstk_darwin(result);
    *(&v11 - 2) = v4;
    v5 = __chkstk_darwin(v4);
    *(&v11 - 2) = v5;
    v6 = v5;
    withObservationTracking<A>(_:onChange:)();
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
    type metadata accessor for MainActor();
    v8 = v6;
    v9 = static MainActor.shared.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = &protocol witness table for MainActor;
    v10[4] = v8;
    sub_10005E36C(0, 0, v2, &unk_1002DB770, v10);
  }

  return result;
}

uint64_t sub_1000BB2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000BB364, v6, v5);
}

uint64_t sub_1000BB364()
{
  v1 = *(v0 + 40);

  v2 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_deviceHelper);
  swift_getKeyPath();
  *(v0 + 16) = v2;
  sub_1000C7C6C(&qword_1003AE978, type metadata accessor for DeviceHelper);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v2 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__isAnyHeadsetConnected);
  if (qword_1003A9330 != -1)
  {
    swift_once();
  }

  v4 = sub_100005AD4(&qword_1003AD988);
  sub_1000078E8(v4, qword_1003D2B78);
  *(v0 + 56) = v3;
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  swift_endAccess();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000BB4E4(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 112) = a2;
  *(v4 + 120) = v3;
  *(v4 + 289) = a3;
  *(v4 + 104) = a1;
  sub_100005AD4(&qword_1003AFCE0);
  *(v4 + 128) = swift_task_alloc();
  sub_100005AD4(&qword_1003AA3B8);
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = type metadata accessor for SELFLoggingInvocationWrapper.Parameters(0);
  *(v4 + 152) = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  *(v4 + 160) = v5;
  v6 = *(v5 - 8);
  *(v4 + 168) = v6;
  *(v4 + 176) = *(v6 + 64);
  *(v4 + 184) = swift_task_alloc();
  *(v4 + 192) = swift_task_alloc();
  v7 = type metadata accessor for Locale();
  *(v4 + 200) = v7;
  v8 = *(v7 - 8);
  *(v4 + 208) = v8;
  *(v4 + 216) = *(v8 + 64);
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = swift_task_alloc();
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 272) = type metadata accessor for MainActor();
  *(v4 + 280) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000BB738, v10, v9);
}

void *sub_1000BB738()
{
  v89 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = *(v0 + 264);
    v78 = *(v0 + 256);
    v87 = *(v0 + 248);
    v82 = *(v0 + 240);
    v5 = *(v0 + 208);
    v80 = *(v0 + 200);
    v83 = *(v0 + 168);
    v85 = *(v0 + 160);
    v7 = *(v0 + 144);
    v6 = *(v0 + 152);
    v8 = *(v0 + 120);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v75 = OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_currentSelfLoggingInvocation;
    v77 = *(v8 + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_currentSelfLoggingInvocation);
    v9 = *(v5 + 16);
    v9(v87, v4, v80);
    v74 = v9;
    v9(v82, v78, v80);
    v10 = 1;
    if (!*(v8 + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_faceToFaceVisible))
    {
      v10 = 2;
    }

    v79 = v10;
    v76 = v8;
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v11 = *(v0 + 288);
    (*(v83 + 56))(v6 + v7[14], 1, 1, v85);
    v12 = *(v5 + 32);
    v12(v6, v87, v80);
    v12((v6 + v7[5]), v82, v80);
    *(v6 + v7[6]) = 1;
    *(v6 + v7[7]) = 1;
    *(v6 + v7[8]) = v79;
    *(v6 + v7[9]) = v11;
    v13 = v6 + v7[10];
    *v13 = 0;
    *(v13 + 8) = 1;
    *(v6 + v7[11]) = 0;
    *(v6 + v7[12]) = 0;
    v14 = v6 + v7[13];
    *v14 = 0;
    *(v14 + 8) = 1;
    sub_10022520C(v6);
    result = *(v77 + 16);
    if (!result)
    {
      __break(1u);
      return result;
    }

    v16 = *(v0 + 152);
    v17 = [result invocationId];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000C8DEC(v16, type metadata accessor for SELFLoggingInvocationWrapper.Parameters);
    v84 = sub_1000B7BCC();
    if (qword_1003A9288 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000078E8(v18, qword_1003D28A8);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();

    v86 = v12;
    if (os_log_type_enabled(v19, v20))
    {
      v22 = *(v0 + 104);
      v21 = *(v0 + 112);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v88 = v24;
      *v23 = 136642819;
      *(v23 + 4) = sub_10028D78C(v22, v21, &v88);
      _os_log_impl(&_mh_execute_header, v19, v20, "Performing final translation; sourceText: %{sensitive}s", v23, 0xCu);
      sub_100008664(v24);
    }

    v25 = *(v0 + 264);
    v66 = *(v0 + 256);
    v26 = *(v0 + 224);
    v27 = *(v0 + 232);
    v72 = v26;
    v28 = *(v0 + 216);
    v70 = *(v0 + 208);
    v71 = v27;
    v29 = *(v0 + 200);
    v68 = *(v0 + 192);
    v30 = *(v0 + 184);
    v31 = *(v0 + 160);
    v32 = *(v0 + 168);
    v73 = v31;
    v33 = *(v0 + 136);
    v67 = *(v0 + 112);
    v81 = *(v0 + 104);
    v34 = type metadata accessor for TaskPriority();
    (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
    v69 = v29;
    v74(v27, v25, v29);
    v74(v26, v66, v29);
    (*(v32 + 16))(v30, v68, v31);

    v35 = static MainActor.shared.getter();
    v36 = *(v70 + 80);
    v37 = (v36 + 56) & ~v36;
    v38 = (v28 + v36 + v37) & ~v36;
    v39 = v38 + v28;
    v40 = (*(v32 + 80) + v39 + 1) & ~*(v32 + 80);
    v41 = swift_allocObject();
    *(v41 + 2) = v35;
    *(v41 + 3) = &protocol witness table for MainActor;
    *(v41 + 4) = v84;
    *(v41 + 5) = v81;
    *(v41 + 6) = v67;
    v86(&v41[v37], v71, v69);
    v86(&v41[v38], v72, v69);
    v41[v39] = 0;
    (*(v32 + 32))(&v41[v40], v30, v73);
    sub_10005E36C(0, 0, v33, &unk_1002D7B90, v41);

    v42 = *(*(v76 + v75) + 16);
    if (v42)
    {
      v43 = objc_allocWithZone(_LTLocalePair);

      v44 = v42;
      isa = Locale._bridgeToObjectiveC()().super.isa;
      v46 = Locale._bridgeToObjectiveC()().super.isa;
      v47 = [v43 initWithSourceLocale:isa targetLocale:v46];

      v48 = String._bridgeToObjectiveC()();
      [v44 userEndedTypingWithPayload:v48 localePair:v47 reason:1];
    }

    v50 = *(v0 + 256);
    v49 = *(v0 + 264);
    v51 = *(v0 + 200);
    v52 = *(v0 + 208);
    v54 = *(v0 + 120);
    v53 = *(v0 + 128);
    (*(*(v0 + 168) + 8))(*(v0 + 192), *(v0 + 160));
    v55 = *(v52 + 8);
    v55(v50, v51);
    v55(v49, v51);
    v56 = (v54 + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_lastEnteredText);
    *v56 = 0;
    v56[1] = 0;

    v57 = *(v52 + 56);
    v57(v53, 1, 1, v51);
    v58 = OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_lastSourceLocale;
    swift_beginAccess();
    sub_10003BD84(v53, v54 + v58, &qword_1003AFCE0);
    swift_endAccess();
    v57(v53, 1, 1, v51);
    v59 = OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_lastTargetLocale;
    swift_beginAccess();
    sub_10003BD84(v53, v54 + v59, &qword_1003AFCE0);
    swift_endAccess();
  }

  else
  {
    if (qword_1003A9220 != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    sub_1000078E8(v60, qword_1003D2770);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&_mh_execute_header, v61, v62, "TextView's text was empty or just whitespaces when trying to start text translation", v63, 2u);
    }

    *(v0 + 40) = &type metadata for TranslateFeatures;
    *(v0 + 48) = sub_100009DF8();
    *(v0 + 16) = 4;
    v64 = isFeatureEnabled(_:)();
    sub_100008664(v0 + 16);
    if (v64)
    {
      sub_1000BCC0C();
    }
  }

  v65 = *(v0 + 8);

  return v65();
}

uint64_t sub_1000BC10C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 136) = a2;
  *(v4 + 144) = v3;
  *(v4 + 316) = a3;
  *(v4 + 128) = a1;
  sub_100005AD4(&qword_1003AFCE0);
  *(v4 + 152) = swift_task_alloc();
  *(v4 + 160) = type metadata accessor for SELFLoggingInvocationWrapper.Parameters(0);
  *(v4 + 168) = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  *(v4 + 176) = v5;
  *(v4 + 184) = *(v5 - 8);
  *(v4 + 192) = swift_task_alloc();
  v6 = type metadata accessor for CharacterSet();
  *(v4 + 200) = v6;
  *(v4 + 208) = *(v6 - 8);
  *(v4 + 216) = swift_task_alloc();
  v7 = type metadata accessor for StreamingRequestInfo(0);
  *(v4 + 224) = v7;
  *(v4 + 232) = *(v7 - 8);
  *(v4 + 240) = swift_task_alloc();
  sub_100005AD4(&qword_1003AD830);
  *(v4 + 248) = swift_task_alloc();
  v8 = type metadata accessor for Locale();
  *(v4 + 256) = v8;
  *(v4 + 264) = *(v8 - 8);
  *(v4 + 272) = swift_task_alloc();
  *(v4 + 280) = swift_task_alloc();
  *(v4 + 288) = swift_task_alloc();
  *(v4 + 296) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v4 + 304) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000BC3E0, v10, v9);
}

void *sub_1000BC3E0()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);

  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v73 = v1;
    v4 = *(v0 + 248);
    v5 = *(v0 + 232);
    v71 = *(v0 + 224);
    v6 = *(v0 + 144);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 314) = 8;
    *(v0 + 312) = 0;
    v7 = v6;
    static Published.subscript.setter();
    v8 = sub_1000B7BCC();
    v9 = OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_lastTranslatedRequest;
    swift_beginAccess();
    sub_10001F620(&v8[v9], v4, &qword_1003AD830);
    v10 = (*(v5 + 48))(v4, 1, v71);
    v11 = *(v0 + 248);
    if (v10)
    {
      sub_100009EBC(v11, &qword_1003AD830);

      v12 = 0;
      v13 = 0xE000000000000000;
    }

    else
    {
      v18 = *(v0 + 240);
      v19 = *(v0 + 216);
      v20 = *(v0 + 224);
      v21 = *(v0 + 200);
      v22 = *(v0 + 208);
      v23 = *(v0 + 248);
      sub_1000C88BC(v11, v18);
      sub_100009EBC(v23, &qword_1003AD830);
      v24 = (v18 + *(v20 + 20));
      v25 = v24[1];
      *(v0 + 112) = *v24;
      *(v0 + 120) = v25;

      static CharacterSet.whitespacesAndNewlines.getter();
      sub_10001F278();
      v26 = StringProtocol.trimmingCharacters(in:)();
      v13 = v27;
      (*(v22 + 8))(v19, v21);
      sub_1000C8DEC(v18, type metadata accessor for StreamingRequestInfo);

      v12 = v26 & 0xFFFFFFFFFFFFLL;
    }

    v28 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v28 = v12;
    }

    if (!v28 && (sub_1000B89A0() & 1) == 0)
    {
      v29 = *(v0 + 144);
      v30 = *(v0 + 316);
      v31 = *(v0 + 128);
      v29[OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_redactTargetText] = 1;
      v32 = v30 & 1;
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 88) = v32;
      *(v0 + 96) = v31;
      *(v0 + 104) = v73;
      v33 = v29;

      static Published.subscript.setter();
    }

    v34 = *(v0 + 272);
    v64 = *(v0 + 288);
    v67 = *(v0 + 280);
    v36 = *(v0 + 256);
    v35 = *(v0 + 264);
    v63 = *(v0 + 184);
    v72 = *(v0 + 176);
    v38 = *(v0 + 160);
    v37 = *(v0 + 168);
    v39 = *(v0 + 144);
    v69 = *(v39 + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_currentSelfLoggingInvocation);
    v40 = *(v35 + 16);
    v40();
    (v40)(v34, v64, v36);
    v41 = 1;
    if (!*(v39 + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_faceToFaceVisible))
    {
      v41 = 2;
    }

    v65 = v41;
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v42 = *(v0 + 315);
    (*(v63 + 56))(v37 + v38[14], 1, 1, v72);
    v43 = *(v35 + 32);
    v43(v37, v67, v36);
    v70 = v43;
    v43(v37 + v38[5], v34, v36);
    *(v37 + v38[6]) = 1;
    *(v37 + v38[7]) = 1;
    *(v37 + v38[8]) = v65;
    *(v37 + v38[9]) = v42;
    v44 = v37 + v38[10];
    *v44 = 0;
    *(v44 + 8) = 1;
    *(v37 + v38[11]) = 0;
    *(v37 + v38[12]) = 0;
    v45 = v37 + v38[13];
    *v45 = 0;
    *(v45 + 8) = 1;
    sub_10022520C(v37);
    result = *(v69 + 16);
    if (!result)
    {
      __break(1u);
      return result;
    }

    v47 = *(v0 + 288);
    v68 = *(v0 + 264);
    v66 = *(v0 + 256);
    v48 = *(v0 + 184);
    v49 = *(v0 + 192);
    v61 = *(v0 + 296);
    v62 = *(v0 + 176);
    v60 = *(v0 + 168);
    v51 = *(v0 + 144);
    v50 = *(v0 + 152);
    v53 = *(v0 + 128);
    v52 = *(v0 + 136);
    v54 = [result invocationId];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000C8DEC(v60, type metadata accessor for SELFLoggingInvocationWrapper.Parameters);
    sub_1000B7BCC();
    sub_100263AA0(v53, v52, v61, v47, v49);

    (*(v48 + 8))(v49, v62);
    v55 = (v51 + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_lastEnteredText);
    *v55 = v53;
    v55[1] = v73;

    v70(v50, v61, v66);
    v56 = *(v68 + 56);
    v56(v50, 0, 1, v66);
    v57 = OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_lastSourceLocale;
    swift_beginAccess();

    sub_10003BD84(v50, v51 + v57, &qword_1003AFCE0);
    swift_endAccess();
    v70(v50, v47, v66);
    v56(v50, 0, 1, v66);
    v58 = OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_lastTargetLocale;
    swift_beginAccess();
    sub_10003BD84(v50, v51 + v58, &qword_1003AFCE0);
    swift_endAccess();
  }

  else
  {
    if (qword_1003A9220 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000078E8(v14, qword_1003D2770);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "TextView's text was empty or just whitespaces when trying to do streaming text translation", v17, 2u);
    }
  }

  v59 = *(v0 + 8);

  return v59();
}

uint64_t sub_1000BCC0C()
{
  v1 = v0;
  if (qword_1003A9220 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000078E8(v2, qword_1003D2770);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Resetting text streaming", v5, 2u);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v6 = v1;
  static Published.subscript.setter();
  v6[OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_redactTargetText] = 0;
  sub_1000B7BCC();
  sub_10025FDF8(0);

  v7 = &v6[OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_lastEnteredText];
  *v7 = 0;
  v7[1] = 0;
}

BOOL sub_1000BCD74()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (LOBYTE(v5[0]) != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5[3] = &type metadata for TranslateFeatures;
  v5[4] = sub_100009DF8();
  LOBYTE(v5[0]) = 8;
  v1 = isFeatureEnabled(_:)();
  sub_100008664(v5);
  if ((v1 & 1) != 0 && (v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_deviceHelper), swift_getKeyPath(), v5[0] = v2, sub_1000C7C6C(&qword_1003AE978, type metadata accessor for DeviceHelper), ObservationRegistrar.access<A, B>(_:keyPath:)(), , v3 = v2 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice, swift_beginAccess(), *(v3 + 8)))
  {
    return (*(v3 + 72) - 4) < 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    return 1;
  }
}

void *sub_1000BCF40(int a1, int a2)
{
  v3 = v2;
  v6 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v6 - 8);
  v124 = &v117 - v7;
  v8 = sub_100005AD4(&unk_1003B8C90);
  __chkstk_darwin(v8 - 8);
  v127 = &v117 - v9;
  v10 = type metadata accessor for SELFLoggingInvocationWrapper.Parameters(0);
  __chkstk_darwin(v10);
  v12 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v128 = *(v13 - 8);
  __chkstk_darwin(v13);
  v129 = &v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for Locale();
  v131 = *(v134 - 8);
  v15 = __chkstk_darwin(v134);
  v130 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v117 - v18;
  v20 = __chkstk_darwin(v17);
  v132 = &v117 - v21;
  __chkstk_darwin(v20);
  v133 = &v117 - v22;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (BYTE2(v135) << 16 != 0x80000)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    BYTE2(v135) = 8;
    LOWORD(v135) = 0;
    v23 = v2;
    static Published.subscript.setter();
  }

  v121 = a1;
  v122 = a2;
  if (a2)
  {
    v24 = 256;
  }

  else
  {
    v24 = 0;
  }

  *&v2[OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_lastSpeechTranslation] = v24 & 0xFF00 | a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v25 = v133;
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v26 = v132;
  static Published.subscript.getter();

  v27 = *&v2[OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_currentSelfLoggingInvocation];
  v28 = v131 + 16;
  v29 = *(v131 + 16);
  v30 = v25;
  v31 = v134;
  v29(v19, v30, v134);
  v120 = v28;
  v119 = v29;
  v29(v130, v26, v31);

  if (sub_1000BCD74())
  {
    v32 = 11;
  }

  else
  {
    v32 = 2;
  }

  v33 = 1;
  if (!v3[OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_faceToFaceVisible])
  {
    v33 = 2;
  }

  v125 = v33;
  v126 = v32;
  v34 = *&v3[OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_translationOptions];
  swift_getKeyPath();
  swift_getKeyPath();
  v118 = v34;
  static Published.subscript.getter();

  v35 = v135;
  v36 = sub_1000C11EC();
  v37 = sub_1000BCD74();
  v123 = v13;
  if (v37)
  {
    v38 = OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel__selfAutoTranslateSessionId;
    swift_beginAccess();
    v39 = v127;
    sub_10001F620(&v3[v38], v127, &unk_1003B8C90);
  }

  else
  {
    v39 = v127;
    (*(v128 + 56))(v127, 1, 1, v13);
  }

  v40 = *(v131 + 32);
  v41 = v19;
  v42 = v134;
  v40(v12, v41, v134);
  v40(&v12[v10[5]], v130, v42);
  *&v12[v10[6]] = v126;
  *&v12[v10[7]] = 2;
  *&v12[v10[8]] = v125;
  v12[v10[9]] = v35;
  v43 = &v12[v10[10]];
  *v43 = 0;
  v43[8] = 1;
  v12[v10[11]] = 0;
  *&v12[v10[12]] = v36;
  v44 = &v12[v10[13]];
  *v44 = 0;
  v44[8] = 1;
  sub_1000C8D7C(v39, &v12[v10[14]]);
  sub_10022520C(v12);
  result = *(v27 + 16);
  if (result)
  {
    v46 = v121;
    v47 = v121;
    v48 = [result invocationId];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000C8DEC(v12, type metadata accessor for SELFLoggingInvocationWrapper.Parameters);
    v3[OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_hasPerformedStopTone] = 0;
    *&v3[OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_currentRecordingStopTonePlaybackTask] = 0;

    v130 = sub_1000C86D4(v118, v46);
    v49 = *&v3[OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_speechManager];
    swift_getKeyPath();
    swift_getKeyPath();
    if (v47 == 2)
    {
      static Published.subscript.getter();

      v51 = v135;
      v50 = v136;
      v52 = sub_1000BCD74();
      LODWORD(v53) = sub_1000B89A0() ^ 1;
      sub_100005AD4(qword_1003B5180);
      v54 = v131;
      v55 = *(v131 + 72);
      v56 = (*(v131 + 80) + 32) & ~*(v131 + 80);
      v57 = swift_allocObject();
      if (v53)
      {
        *(v57 + 16) = xmmword_1002D1370;
        v71 = v57 + v56;
        v72 = v134;
        LODWORD(v126) = v53;
        v53 = v51;
        v127 = v50;
        v73 = v49;
        v74 = v54;
        v75 = v52;
        v76 = v119;
        v119(v71, v133, v134);
        v76(v71 + v55, v132, v72);
        v52 = v75;
        v54 = v74;
        v49 = v73;
        v50 = v127;
        v51 = v53;
        LOBYTE(v53) = v126;
        v59 = sub_10011EA1C(v57);
        swift_setDeallocating();
        swift_arrayDestroy();
      }

      else
      {
        *(v57 + 16) = xmmword_1002D3160;
        v58 = v134;
        v119(v57 + v56, v133, v134);
        v59 = sub_10011EA1C(v57);
        swift_setDeallocating();
        (*(v54 + 8))(v57 + v56, v58);
      }

      swift_deallocClassInstance();
      v77 = &v49[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_delegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v78 = *(v77 + 1);
        ObjectType = swift_getObjectType();
        (*(v78 + 16))(1, 0, v59, ObjectType, v78);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      v98 = OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_translator;
      [*&v49[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_translator] cleanup];
      v99 = objc_allocWithZone(_LTSpeechTranslationRequest);
      isa = Locale._bridgeToObjectiveC()().super.isa;
      v101 = Locale._bridgeToObjectiveC()().super.isa;
      v102 = [v99 initWithSourceLocale:isa targetLocale:v101];

      v103 = v102;
      v104 = String._bridgeToObjectiveC()();
      [v103 setSessionID:v104];

      [v103 setCensorSpeech:byte_1003D2A90];
      sub_10000A2CC(0, &qword_1003A9B80);
      v105 = static NSUserDefaults.translationGroupDefaults.getter();
      LOBYTE(v102) = NSUserDefaults.onDeviceOnly.getter();

      [v103 setForcedOfflineTranslation:v102 & 1];
      v137 = &type metadata for TranslateFeatures;
      v138 = sub_100009DF8();
      LOBYTE(v135) = 18;
      LOBYTE(v105) = isFeatureEnabled(_:)();
      sub_100008664(&v135);
      if (v105)
      {
        [v103 setPreferOnDeviceIfAvailable:1];
      }

      [v103 setAutoEndpoint:v122 & 1];
      [v103 setEnableStreamingSpeechTranslation:0];
      [v103 setAutodetectLanguage:v53 & 1];
      [v103 setEnableVAD:v52];
      [v103 setEnableAirPodsOwnVAD:0];
      [v103 setEnableMultiFieldInput:0];
      [v103 setEnableTranslationSemanticSegmentation:0];
      [v103 setForceSourceLocale:0];
      [v103 set_supportsGenderDisambiguation:0];
      [v103 setSourceOrigin:0];
      [v103 setDelegate:v49];
      [v103 setTaskHint:{objc_msgSend(v103, "taskHint")}];
      v106 = v129;
      v107 = UUID._bridgeToObjectiveC()().super.isa;
      [v103 setLogIdentifier:v107];

      v49[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_sentFinalResultToDelegate] = 0;
      [*&v49[v98] translate:v103];
      v108 = *&v49[v98];
      _s21SpeechResultContainerCMa();
      swift_allocObject();
      v109 = v103;
      *&v49[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_resultContainer] = sub_100241798(v108, v109);

      v110 = type metadata accessor for TaskPriority();
      v111 = v124;
      (*(*(v110 - 8) + 56))(v124, 1, 1, v110);
      v112 = swift_allocObject();
      v112[2] = 0;
      v112[3] = 0;
      v112[4] = v49;
      v112[5] = v109;
      v112[6] = 0;
      v112[7] = 0;
      v112[8] = v51;
      v112[9] = v50;
      v112[10] = v130;
      v113 = v109;
      v114 = v49;
      sub_10005E36C(0, 0, v111, &unk_1002DB9C0, v112);

      (*(v128 + 8))(v106, v123);
      v115 = *(v54 + 8);
      v116 = v134;
      v115(v132, v134);
      return (v115)(v133, v116);
    }

    else
    {
      static Published.subscript.getter();

      v60 = v135;
      v61 = v136;
      sub_100005AD4(qword_1003B5180);
      v62 = v131;
      v63 = (*(v131 + 80) + 32) & ~*(v131 + 80);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1002D3160;
      v65 = v134;
      v119(v64 + v63, v133, v134);
      v66 = sub_10011EA1C(v64);
      swift_setDeallocating();
      v67 = *(v62 + 8);
      v67(v64 + v63, v65);
      swift_deallocClassInstance();
      v68 = &v49[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_delegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v69 = *(v68 + 1);
        v70 = swift_getObjectType();
        (*(v69 + 16))(1, 0, v66, v70, v69);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      v80 = OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_translator;
      [*&v49[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_translator] cleanup];
      v81 = objc_allocWithZone(_LTSpeechTranslationRequest);
      v82 = Locale._bridgeToObjectiveC()().super.isa;
      v83 = Locale._bridgeToObjectiveC()().super.isa;
      v84 = [v81 initWithSourceLocale:v82 targetLocale:v83];

      v85 = v84;
      v86 = String._bridgeToObjectiveC()();
      [v85 setSessionID:v86];

      [v85 setCensorSpeech:byte_1003D2A90];
      sub_10000A2CC(0, &qword_1003A9B80);
      v87 = static NSUserDefaults.translationGroupDefaults.getter();
      LOBYTE(v84) = NSUserDefaults.onDeviceOnly.getter();

      [v85 setForcedOfflineTranslation:v84 & 1];
      v137 = &type metadata for TranslateFeatures;
      v138 = sub_100009DF8();
      LOBYTE(v135) = 18;
      LOBYTE(v87) = isFeatureEnabled(_:)();
      sub_100008664(&v135);
      if (v87)
      {
        [v85 setPreferOnDeviceIfAvailable:1];
      }

      [v85 setAutoEndpoint:v122 & 1];
      [v85 setEnableStreamingSpeechTranslation:0];
      [v85 setAutodetectLanguage:0];
      [v85 setEnableVAD:0];
      [v85 setEnableAirPodsOwnVAD:0];
      [v85 setEnableMultiFieldInput:0];
      [v85 setEnableTranslationSemanticSegmentation:0];
      [v85 setForceSourceLocale:0];
      [v85 set_supportsGenderDisambiguation:0];
      [v85 setSourceOrigin:0];
      [v85 setDelegate:v49];
      [v85 setTaskHint:{objc_msgSend(v85, "taskHint")}];
      v88 = v129;
      v89 = UUID._bridgeToObjectiveC()().super.isa;
      [v85 setLogIdentifier:v89];

      v49[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_sentFinalResultToDelegate] = 0;
      [*&v49[v80] translate:v85];
      v90 = *&v49[v80];
      _s21SpeechResultContainerCMa();
      swift_allocObject();
      v91 = v85;
      *&v49[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_resultContainer] = sub_100241798(v90, v91);

      v92 = type metadata accessor for TaskPriority();
      v93 = v124;
      (*(*(v92 - 8) + 56))(v124, 1, 1, v92);
      v94 = swift_allocObject();
      v94[2] = 0;
      v94[3] = 0;
      v94[4] = v49;
      v94[5] = v91;
      v94[6] = 0;
      v94[7] = 0;
      v94[8] = v60;
      v94[9] = v61;
      v94[10] = v130;
      v95 = v91;
      v96 = v49;
      sub_10005E36C(0, 0, v93, &unk_1002DB9C8, v94);

      (*(v128 + 8))(v88, v123);
      v97 = v134;
      v67(v132, v134);
      return (v67)(v133, v97);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000BE13C()
{
  v1 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_lastSpeechTranslation);
  if ((v1 & 0xFF00) == 0x200)
  {
    if (qword_1003A9220 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000078E8(v2, qword_1003D2770);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Cannot restart last speech translation since there never was a speech translation that started before", v4, 2u);
    }
  }

  else
  {

    sub_1000BCF40(v1, (v1 >> 8) & 1);
  }
}

uint64_t sub_1000BE260(char a1, char a2, char a3)
{
  v4 = v3;
  v8 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v8 - 8);
  v10 = &v36[-v9];
  v11 = *&v3[OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_speechManager];
  v12 = v11 + OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (a2)
  {
    if (Strong)
    {
      v14 = *(v12 + 8);
      ObjectType = swift_getObjectType();
      (*(v14 + 16))(0, 0, 0, ObjectType, v14);
      swift_unknownObjectRelease();
    }

    v16 = OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_resultContainer;
    v17 = *(v11 + OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_resultContainer);
    if (v17)
    {
      [*(v17 + 48) endAudio];
    }

    sub_10020BB08();
    *(v11 + v16) = 0;

    [*(v11 + OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_translator) cleanup];
  }

  else
  {
    if (Strong)
    {
      v18 = *(v12 + 8);
      v19 = swift_getObjectType();
      (*(v18 + 16))(0, 0, 0, v19, v18);
      swift_unknownObjectRelease();
    }

    v20 = *(v11 + OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_resultContainer);
    if (v20)
    {
      [*(v20 + 48) endAudio];
    }

    sub_10020BB08();
  }

  if (qword_1003A9220 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1000078E8(v21, qword_1003D2770);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *&v37 = v25;
    *v24 = 136315138;
    v36[15] = a1;
    v26 = String.init<A>(describing:)();
    v28 = sub_10028D78C(v26, v27, &v37);

    *(v24 + 4) = v28;
    _os_log_impl(&_mh_execute_header, v22, v23, "StopSpeech with source: %s.", v24, 0xCu);
    sub_100008664(v25);
  }

  *(&v38 + 1) = &type metadata for TranslateFeatures;
  v39 = sub_100009DF8();
  LOBYTE(v37) = 9;
  v29 = isFeatureEnabled(_:)();
  result = sub_100008664(&v37);
  if (v29)
  {
    v31 = OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_hasPerformedStopTone;
    if ((v4[OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_hasPerformedStopTone] & 1) == 0)
    {
      if (a1 == 2)
      {
      }

      else
      {
        v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v32 & 1) == 0)
        {
LABEL_24:
          v33 = type metadata accessor for TaskPriority();
          (*(*(v33 - 8) + 56))(v10, 1, 1, v33);
          v34 = swift_allocObject();
          *(v34 + 16) = 0;
          *(v34 + 24) = 0;
          *(v34 + 32) = 1;
          *&v4[OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_currentRecordingStopTonePlaybackTask] = sub_10005E980(0, 0, v10, &unk_1002E1530, v34);

LABEL_25:
          v4[v31] = 1;
          goto LABEL_26;
        }
      }

      if (sub_1000BCD74())
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        if (v37 != 1)
        {
          goto LABEL_25;
        }
      }

      goto LABEL_24;
    }
  }

LABEL_26:
  if (a3)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = v4;
    return static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_1000BE7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 80) = a6;
  *(v7 + 88) = a7;
  *(v7 + 193) = a5;
  *(v7 + 72) = a4;
  v8 = type metadata accessor for Locale();
  *(v7 + 96) = v8;
  *(v7 + 104) = *(v8 - 8);
  *(v7 + 112) = swift_task_alloc();
  *(v7 + 120) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v7 + 128) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 136) = v10;
  *(v7 + 144) = v9;

  return _swift_task_switch(sub_1000BE8D0, v10, v9);
}

uint64_t sub_1000BE8D0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (*(v0 + 192) == 1)
  {
    *(v0 + 40) = &type metadata for TranslateFeatures;
    v1 = sub_100009DF8();
    *(v0 + 16) = 9;
    *(v0 + 48) = v1;
    v2 = isFeatureEnabled(_:)();
    sub_100008664(v0 + 16);
    if (v2)
    {
      v3 = *(*(v0 + 72) + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_currentRecordingStopTonePlaybackTask);
      *(v0 + 152) = v3;
      if (v3)
      {
        v4 = qword_1003A9220;

        if (v4 != -1)
        {
          swift_once();
        }

        v5 = type metadata accessor for Logger();
        sub_1000078E8(v5, qword_1003D2770);
        v6 = Logger.logObject.getter();
        v7 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          *v8 = 0;
          _os_log_impl(&_mh_execute_header, v6, v7, "Waiting for existing recording stop task to finish.", v8, 2u);
        }

        v9 = swift_task_alloc();
        *(v0 + 160) = v9;
        *v9 = v0;
        v9[1] = sub_1000BEE98;

        return Task<>.value.getter(v0 + 56, v3, &type metadata for String);
      }
    }

    if (*(v0 + 193) == 1)
    {
      v13 = *(*(v0 + 72) + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_lastSpeechTranslation);
      v14 = sub_1000C7C6C(&qword_1003AC7C8, &type metadata accessor for PersistedTranslation);
      v15 = (v13 & 0xFF00) == 0x200 || v13 == 2;
      if (v15)
      {
        v16 = 0;
      }

      else
      {
        v16 = v13;
      }

      v17 = !v15 && (v13 & 1) == 0;
      goto LABEL_37;
    }

    v18 = *(v0 + 112);
    v19 = *(v0 + 96);
    v20 = *(v0 + 104);
    sub_1000085CC(*(v0 + 80), *(*(v0 + 80) + 24));
    dispatch thunk of TranslationResult.locale.getter();
    v21 = Locale.ltIdentifier.getter();
    v23 = v22;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v24 = Locale.ltIdentifier.getter();
    v26 = v25;
    v27 = *(v20 + 8);
    v27(v18, v19);
    v28 = *(v0 + 120);
    v29 = *(v0 + 96);
    if (v21 == v24 && v23 == v26)
    {

      v27(v28, v29);
    }

    else
    {
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v27(v28, v29);
      if ((v30 & 1) == 0)
      {
        v14 = sub_1000C7C6C(&qword_1003AC7C8, &type metadata accessor for PersistedTranslation);
        v16 = 0;
        v17 = 1;
        goto LABEL_37;
      }
    }

    v14 = sub_1000C7C6C(&qword_1003AC7C8, &type metadata accessor for PersistedTranslation);
    v17 = 0;
    v16 = 1;
LABEL_37:
    v31 = *(v0 + 88);
    ObjectType = swift_getObjectType();
    v33 = v31;
    v34 = swift_task_alloc();
    *(v0 + 184) = v34;
    *v34 = v0;
    v34[1] = sub_1000BF4CC;
    v35 = *(v0 + 72);
    v36 = *(v0 + 88);

    return sub_1000C5ED0(v36, 0, v17, v16 & 1, 1, v35, ObjectType, v14);
  }

  if (*(v0 + 193) == 1 && sub_1000BCD74())
  {
    v10 = *(v0 + 72);
    if (*(v10 + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_isVisible) == 1)
    {
      if ((*(v10 + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_lastSpeechTranslation) & 0xFF00) == 0x200)
      {
        v11 = 2;
      }

      else
      {
        v11 = *(v10 + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_lastSpeechTranslation);
      }

      sub_1000BCF40(v11, 1);
    }
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1000BEE98()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return _swift_task_switch(sub_1000BEFD0, v3, v2);
}

uint64_t sub_1000BEFD0()
{
  v1 = swift_task_alloc();
  *(v0 + 168) = v1;
  *v1 = v0;
  v1[1] = sub_1000BF068;

  return static Task<>.sleep(nanoseconds:)(100000000);
}

uint64_t sub_1000BF068()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_1000BF6D4;
  }

  else
  {
    v5 = sub_1000BF1A4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000BF1A4()
{

  if (*(v0 + 193) == 1)
  {
    v1 = *(*(v0 + 72) + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_lastSpeechTranslation);
    v2 = sub_1000C7C6C(&qword_1003AC7C8, &type metadata accessor for PersistedTranslation);
    v3 = (v1 & 0xFF00) == 0x200 || v1 == 2;
    if (v3)
    {
      v4 = 0;
    }

    else
    {
      v4 = v1;
    }

    v5 = !v3 && (v1 & 1) == 0;
    goto LABEL_17;
  }

  v6 = *(v0 + 112);
  v7 = *(v0 + 96);
  v8 = *(v0 + 104);
  sub_1000085CC(*(v0 + 80), *(*(v0 + 80) + 24));
  dispatch thunk of TranslationResult.locale.getter();
  v9 = Locale.ltIdentifier.getter();
  v11 = v10;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v12 = Locale.ltIdentifier.getter();
  v14 = v13;
  v15 = *(v8 + 8);
  v15(v6, v7);
  v16 = *(v0 + 120);
  v17 = *(v0 + 96);
  if (v9 == v12 && v11 == v14)
  {

    v15(v16, v17);
LABEL_15:
    v2 = sub_1000C7C6C(&qword_1003AC7C8, &type metadata accessor for PersistedTranslation);
    v5 = 0;
    v4 = 1;
    goto LABEL_17;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v15(v16, v17);
  if (v18)
  {
    goto LABEL_15;
  }

  v2 = sub_1000C7C6C(&qword_1003AC7C8, &type metadata accessor for PersistedTranslation);
  v4 = 0;
  v5 = 1;
LABEL_17:
  v19 = *(v0 + 88);
  ObjectType = swift_getObjectType();
  v21 = v19;
  v22 = swift_task_alloc();
  *(v0 + 184) = v22;
  *v22 = v0;
  v22[1] = sub_1000BF4CC;
  v23 = *(v0 + 72);
  v24 = *(v0 + 88);

  return sub_1000C5ED0(v24, 0, v5, v4 & 1, 1, v23, ObjectType, v2);
}

uint64_t sub_1000BF4CC()
{
  v1 = *v0;
  v2 = *(*v0 + 88);

  v3 = *(v1 + 144);
  v4 = *(v1 + 136);

  return _swift_task_switch(sub_1000BF60C, v4, v3);
}

uint64_t sub_1000BF60C()
{

  if (*(v0 + 193) == 1 && sub_1000BCD74())
  {
    v1 = *(v0 + 72);
    if (*(v1 + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_isVisible) == 1)
    {
      if ((*(v1 + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_lastSpeechTranslation) & 0xFF00) == 0x200)
      {
        v2 = 2;
      }

      else
      {
        v2 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_lastSpeechTranslation);
      }

      sub_1000BCF40(v2, 1);
    }
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1000BF6D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000BF760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_10001F620(a3, v22 - v9, &qword_1003AA3B8);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100009EBC(v10, &qword_1003AA3B8);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_100009EBC(a3, &qword_1003AA3B8);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100009EBC(a3, &qword_1003AA3B8);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1000BFA0C(char a1, char a2)
{
  v3 = v2;
  if (qword_1003A9220 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000078E8(v6, qword_1003D2770);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Resetting ConversationViewModel", v9, 2u);
  }

  sub_1000BCC0C();
  if (a2)
  {
    sub_1000BE260(3, 1, 1);
    sub_1002BBD20();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v10 = v3;
  result = static Published.subscript.setter();
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v12 = v10;
    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    v13 = v12;
    return static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_1000BFC04()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v1 & 1) != 0 || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , v1 == 1))
  {
    sub_1000BE260(4, 0, 1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v2;
  if (v2)
  {

    return sub_1002BBD20();
  }

  return result;
}

void sub_1000BFD3C()
{
  type metadata accessor for PersistedTranslation();
  if (swift_dynamicCastClass())
  {
    sub_100031DD8(*(v0 + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_session) + OBJC_IVAR____TtC17SequoiaTranslator21TranslationSession_RD_store, v9);
    sub_1000085CC(v9, v9[3]);
    swift_unknownObjectRetain();
    dispatch thunk of TranslationStore.toggleFavoriteBackground(_:)();
    swift_unknownObjectRelease();
    sub_100008664(v9);
  }

  else
  {
    if (qword_1003A9220 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000078E8(v1, qword_1003D2770);
    swift_unknownObjectRetain();
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v9[0] = v4;
      *v3 = 136446210;
      swift_getObjectType();
      v5 = _typeName(_:qualified:)();
      v7 = sub_10028D78C(v5, v6, v9);

      *(v3 + 4) = v7;
      _os_log_impl(&_mh_execute_header, oslog, v2, "Attempt to favorite an unknown translation type %{public}s", v3, 0xCu);
      sub_100008664(v4);
    }

    else
    {
    }
  }
}

void sub_1000BFF48()
{
  type metadata accessor for PersistedTranslation();
  v0 = swift_dynamicCastClass();
  if (v0)
  {
    v1 = v0;
    swift_unknownObjectRetain();
    sub_1002B2B48(v1);

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1003A9220 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000078E8(v2, qword_1003D2770);
    swift_unknownObjectRetain();
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v10 = v5;
      *v4 = 136446210;
      swift_getObjectType();
      v6 = _typeName(_:qualified:)();
      v8 = sub_10028D78C(v6, v7, &v10);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Attempt to delete an unknown translation type %{public}s", v4, 0xCu);
      sub_100008664(v5);
    }
  }
}

void sub_1000C0118()
{
  v1 = v0;
  v2 = _convertErrorToNSError(_:)();
  v3 = sub_100009440(v2);
  if (qword_1003A9220 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000078E8(v4, qword_1003D2770);
  v5 = v2;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27 = v10;
    *v8 = 136446466;
    v11 = String.init<A>(describing:)();
    v13 = sub_10028D78C(v11, v12, &v27);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v5;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "Received error with reason '%{public}s': %@", v8, 0x16u);
    sub_100009EBC(v9, &unk_1003AECA0);
    v1 = v0;

    sub_100008664(v10);
  }

  switch(BYTE2(v3))
  {
    case 1u:
      goto LABEL_8;
    case 6u:
      swift_getKeyPath();
      swift_getKeyPath();
      BYTE2(v27) = 6;
      LOWORD(v27) = v3;
      v16 = v1;
      static Published.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v27) = 1;
      v17 = v16;
      static Published.subscript.setter();
      break;
    case 5u:
LABEL_8:
      swift_getKeyPath();
      swift_getKeyPath();
      BYTE2(v27) = BYTE2(v3);
      LOWORD(v27) = v3;
      v15 = v1;
      static Published.subscript.setter();
      sub_1000BE260(1, 1, 0);
      sub_1000B7BCC();
      sub_10025FDF8(1);

      break;
    default:
      v5 = v5;
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v27 = v22;
        *v20 = 136446466;
        v23 = String.init<A>(describing:)();
        v25 = sub_10028D78C(v23, v24, &v27);

        *(v20 + 4) = v25;
        *(v20 + 12) = 2112;
        *(v20 + 14) = v5;
        *v21 = v5;
        v26 = v5;
        _os_log_impl(&_mh_execute_header, v18, v19, "Ignoring displaying an error because it's not allow-listed to display to the user: reason '%{public}s': %@", v20, 0x16u);
        sub_100009EBC(v21, &unk_1003AECA0);

        sub_100008664(v22);
      }

      sub_1000BFA0C(0, 1);
      break;
  }
}

void sub_1000C0550()
{
  v0 = [objc_allocWithZone(NSError) initWithDomain:_LTTranslationErrorDomain code:14 userInfo:0];
  if (sub_1000B87E8())
  {
    if (qword_1003A9220 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000078E8(v1, qword_1003D2770);
    v2 = v0;
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      *(v5 + 4) = v2;
      *v6 = v2;
      v7 = v2;
      _os_log_impl(&_mh_execute_header, v3, v4, "Conversation view was active during XPC interruption: %@", v5, 0xCu);
      sub_100009EBC(v6, &unk_1003AECA0);
    }

    v8 = v2;
    sub_1000C0118();
    oslog = v8;
  }

  else
  {
    if (qword_1003A9220 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000078E8(v9, qword_1003D2770);
    v8 = v0;
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v8;
      *v12 = v8;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, oslog, v10, "Conversation view was idle during XPC interruption, ignoring XPC error: %@", v11, 0xCu);
      sub_100009EBC(v12, &unk_1003AECA0);

      v8 = oslog;
      oslog = v13;
    }
  }
}

void *sub_1000C080C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v2 == 1)
  {
    return sub_1000BE260(0, 0, 1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v1 == 1)
  {
    sub_1000BE260(0, 1, 1);
  }

  return sub_1000BCF40(0, 1);
}

void *sub_1000C0908()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v14 == 1)
  {
    if (qword_1003A9220 != -1)
    {
      swift_once();
    }

    v0 = type metadata accessor for Logger();
    sub_1000078E8(v0, qword_1003D2770);
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Ending speech recognition for partner in partner tap", v3, 2u);
    }

    return sub_1000BE260(0, 0, 1);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v13 == 1)
    {
      if (qword_1003A9220 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_1000078E8(v5, qword_1003D2770);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "Ending speech recognition for owner in partner tap", v8, 2u);
      }

      sub_1000BE260(0, 1, 1);
    }

    if (qword_1003A9220 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000078E8(v9, qword_1003D2770);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Starting speech recognition for partner in partner tap", v12, 2u);
    }

    return sub_1000BCF40(1, 1);
  }
}

void *sub_1000C0C34(char a1, int a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v6)
  {

    return sub_1000BFC04();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v5)
    {
      return sub_1000BE260(a1, 0, 1);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v5 == 1)
    {
      return sub_1000BE260(a1, 0, 1);
    }

    else
    {
      return sub_1000BCF40(a2, 1);
    }
  }
}

void *sub_1000C0D90(char a1)
{
  v3 = sub_100005AD4(&unk_1003B8C90);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  UUID.init()();
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel__selfAutoTranslateSessionId;
  swift_beginAccess();
  sub_10003BD84(v5, v1 + v7, &unk_1003B8C90);
  swift_endAccess();
  if (sub_1000BCD74())
  {
    return sub_1000C0C34(0, 2);
  }

  if (a1)
  {
    return sub_1000BCF40(2, 0);
  }

  return sub_1000BE260(0, 0, 1);
}

uint64_t sub_1000C0ED8()
{
  v1 = sub_100005AD4(&qword_1003AFCE0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v22 - v5;
  v7 = type metadata accessor for Locale();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v22 - v12;
  v14 = OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_lastSourceLocale;
  swift_beginAccess();
  sub_10001F620(v0 + v14, v6, &qword_1003AFCE0);
  v15 = *(v8 + 48);
  if (v15(v6, 1, v7) == 1)
  {
    return sub_100009EBC(v6, &qword_1003AFCE0);
  }

  v23 = *(v8 + 32);
  v23(v13, v6, v7);
  v17 = OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_lastTargetLocale;
  swift_beginAccess();
  sub_10001F620(v0 + v17, v4, &qword_1003AFCE0);
  if (v15(v4, 1, v7) == 1)
  {
    (*(v8 + 8))(v13, v7);
    return sub_100009EBC(v4, &qword_1003AFCE0);
  }

  else
  {
    v23(v11, v4, v7);
    v18 = v0 + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_lastEnteredText;
    v19 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_lastEnteredText);
    v20 = *(v18 + 8);

    sub_100225618(v19, v20, v13, v11);

    v21 = *(v8 + 8);
    v21(v11, v7);
    return (v21)(v13, v7);
  }
}

uint64_t sub_1000C11EC()
{
  v1 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_deviceHelper);
  swift_getKeyPath();
  sub_1000C7C6C(&qword_1003AE978, type metadata accessor for DeviceHelper);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice;
  swift_beginAccess();
  if (*(v2 + 8) && (v3 = *(v2 + 80), v3 <= 3))
  {
    return qword_1002DBBD8[v3];
  }

  else
  {
    return 1;
  }
}

id sub_1000C1308()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationViewModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ConversationViewModel()
{
  result = qword_1003AF398;
  if (!qword_1003AF398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000C17C8()
{
  sub_1000C1C10(319, &qword_1003ACD28, &type metadata accessor for Locale, &type metadata accessor for Published);
  if (v0 <= 0x3F)
  {
    sub_1000C1BC0();
    if (v1 <= 0x3F)
    {
      sub_100029834(319, &qword_1003AF3A8, &qword_1003AF3B0);
      if (v2 <= 0x3F)
      {
        sub_100029834(319, &qword_1003AF3B8, &qword_1003AF3C0);
        if (v3 <= 0x3F)
        {
          sub_100029834(319, &qword_1003AEC00, &qword_1003AA740);
          if (v4 <= 0x3F)
          {
            sub_100029834(319, &qword_1003ACD60, &qword_1003ACD68);
            if (v5 <= 0x3F)
            {
              sub_100029834(319, &qword_1003ACD70, &qword_1003ACD78);
              if (v6 <= 0x3F)
              {
                sub_1000C1C10(319, &qword_1003B3410, &type metadata accessor for Locale, &type metadata accessor for Optional);
                if (v7 <= 0x3F)
                {
                  sub_1000C1C10(319, &qword_1003AF3C8, &type metadata accessor for UUID, &type metadata accessor for Optional);
                  if (v8 <= 0x3F)
                  {
                    swift_updateClassMetadata2();
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

void sub_1000C1BC0()
{
  if (!qword_1003B95C0)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1003B95C0);
    }
  }
}

void sub_1000C1C10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1000C1C88()
{
  result = qword_1003AF3D0;
  if (!qword_1003AF3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF3D0);
  }

  return result;
}

uint64_t sub_1000C1CDC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ConversationViewModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000C1D20(char a1, char a2, uint64_t a3)
{
  v7 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  type metadata accessor for MainActor();

  v11 = v3;
  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = &protocol witness table for MainActor;
  *(v13 + 32) = a1;
  *(v13 + 33) = a2;
  *(v13 + 40) = a3;
  *(v13 + 48) = v11;
  sub_10005E36C(0, 0, v9, &unk_1002DB678, v13);
}

uint64_t sub_1000C1E70(uint64_t a1, uint64_t a2)
{
  v5 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_100031DD8(a1, v16);
  sub_10001F620(a2, v14, &unk_1003B9EC0);
  type metadata accessor for MainActor();
  v9 = v2;
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = &protocol witness table for MainActor;
  sub_100051124(v16, v11 + 32);
  v12 = v14[1];
  *(v11 + 72) = v14[0];
  *(v11 + 88) = v12;
  *(v11 + 104) = v15;
  *(v11 + 112) = v9;
  sub_10005E36C(0, 0, v7, &unk_1002DB620, v11);
}

uint64_t sub_1000C1FE8(uint64_t a1, uint64_t a2)
{
  v5 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_100031DD8(a1, v14);
  sub_100031DD8(a2, v13);
  type metadata accessor for MainActor();
  v9 = v2;
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v9;
  sub_100051124(v14, (v11 + 5));
  sub_100051124(v13, (v11 + 10));
  sub_10005E36C(0, 0, v7, &unk_1002DB430, v11);
}

uint64_t sub_1000C214C(uint64_t a1)
{
  v3 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for MainActor();
  swift_errorRetain();
  v7 = v1;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = a1;
  v9[5] = v7;
  sub_10005E36C(0, 0, v5, &unk_1002DB418, v9);
}

uint64_t sub_1000C22A8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v9 = type metadata accessor for StreamingRequestInfo(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v13 - 8);
  v15 = &v23 - v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_10001F620(a2, v24, &unk_1003B9EC0);
  sub_1000C88BC(a1, v12);
  type metadata accessor for MainActor();
  swift_errorRetain();
  v17 = v4;
  v18 = static MainActor.shared.getter();
  v19 = (*(v10 + 80) + 89) & ~*(v10 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = &protocol witness table for MainActor;
  *(v20 + 32) = a4;
  v21 = v24[1];
  *(v20 + 40) = v24[0];
  *(v20 + 56) = v21;
  *(v20 + 72) = v25;
  *(v20 + 80) = v17;
  *(v20 + 88) = a3;
  sub_1000C8AD4(v12, v20 + v19);
  sub_10005E36C(0, 0, v15, &unk_1002DB6D0, v20);
}

uint64_t sub_1000C24D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = a7;
  *(v7 + 107) = a5;
  *(v7 + 106) = a4;
  v8 = type metadata accessor for Locale();
  *(v7 + 72) = v8;
  *(v7 + 80) = *(v8 - 8);
  *(v7 + 88) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v7 + 96) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000C25CC, v10, v9);
}

uint64_t sub_1000C25CC()
{
  v34 = v0;

  if (qword_1003A9220 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = type metadata accessor for Logger();
  sub_1000078E8(v2, qword_1003D2770);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 56);
    v6 = *(v0 + 107);
    v7 = *(v0 + 106);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v33 = v9;
    *v8 = 67109634;
    *(v8 + 4) = v7;
    *(v8 + 8) = 1024;
    *(v8 + 10) = v6;
    *(v8 + 14) = 2082;
    *(v0 + 48) = v5;
    sub_100005AD4(&qword_1003AD820);
    v10 = Optional.debugDescription.getter();
    v12 = sub_10028D78C(v10, v11, &v33);

    *(v8 + 16) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Speech: listening status changed to isListening: %{BOOL}d, wasInterrupted: %{BOOL}d, locales: %{public}s", v8, 0x18u);
    sub_100008664(v9);
  }

  if (*(v0 + 56))
  {
    v13 = sub_1000B78C4(v1);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v15 = *(v0 + 80);
  v14 = *(v0 + 88);
  v16 = *(v0 + 64);
  v17 = *(v0 + 72);
  v32 = v17;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v18 = Locale.identifier.getter();
  v20 = v19;
  v21 = *(v15 + 8);
  v21(v14, v17);
  *(v0 + 16) = v18;
  *(v0 + 24) = v20;
  v22 = swift_task_alloc();
  *(v22 + 16) = v0 + 16;
  LOBYTE(v17) = sub_1000B74D0(sub_1000C80E8, v22, v13);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 104) = v17 & 1;
  v23 = v16;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v24 = Locale.identifier.getter();
  v26 = v25;
  v21(v14, v32);
  *(v0 + 32) = v24;
  *(v0 + 40) = v26;
  v27 = swift_task_alloc();
  *(v27 + 16) = v0 + 32;
  v28 = sub_1000B74D0(sub_1000C9588, v27, v13);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 105) = v28 & 1;
  v29 = v23;
  static Published.subscript.setter();

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1000C29E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[17] = a4;
  v7 = type metadata accessor for Locale();
  v6[20] = v7;
  v6[21] = *(v7 - 8);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[24] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000C2AE8, v9, v8);
}

uint64_t sub_1000C2AE8()
{
  v2 = v0[17];
  v1 = v0[18];

  sub_1000085CC(v2, v2[3]);
  v3 = AnnotatedResult.displayString.getter();
  v27 = v4;
  v28 = v3;
  sub_10001F620(v1, (v0 + 7), &unk_1003B9EC0);
  if (!v0[10])
  {
    sub_100009EBC((v0 + 7), &unk_1003B9EC0);
LABEL_6:
    v25 = 0xE000000000000000;
    v26 = 0;
    goto LABEL_7;
  }

  sub_1000085CC(v0 + 7, v0[10]);
  v5 = dispatch thunk of TranslationResult.alternatives.getter();
  if (!*(v5 + 16))
  {

    sub_100008664((v0 + 7));
    goto LABEL_6;
  }

  sub_100031DD8(v5 + 32, (v0 + 2));

  sub_1000085CC(v0 + 2, v0[5]);
  v6 = TranslationAlternative.displayString.getter();
  v25 = v7;
  v26 = v6;
  sub_100008664((v0 + 2));
  sub_100008664((v0 + 7));
LABEL_7:
  v8 = v0[22];
  v9 = v0[23];
  v11 = v0[20];
  v10 = v0[21];
  sub_1000085CC(v0[17], v2[3]);
  dispatch thunk of AnnotatedResult.locale.getter();
  v12 = Locale.identifier.getter();
  v14 = v13;
  v15 = *(v10 + 8);
  v15(v9, v11);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v16 = Locale.identifier.getter();
  v18 = v17;
  v15(v8, v11);
  if (v12 == v16 && v14 == v18)
  {

    v19 = 0;
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v19 = ~v20 & 1;
  }

  v21 = v0[19];
  swift_getKeyPath();
  swift_getKeyPath();
  v0[12] = v19;
  v0[13] = v28;
  v0[14] = v27;
  v0[15] = v26;
  v0[16] = v25;
  v22 = v21;
  static Published.subscript.setter();

  v23 = v0[1];

  return v23();
}

uint64_t sub_1000C2DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for MainActor();
  v6[5] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000C2E84, v8, v7);
}

uint64_t sub_1000C2E84()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = v0[3];

  sub_1000BE260(2, 0, 1);
  v4 = v3[3];
  v5 = v3[4];
  v6 = sub_1000085CC(v3, v4);
  sub_1000C7598(v6, v1, 1, v2, v4, v5);
  v7 = v0[1];

  return v7();
}

uint64_t sub_1000C2F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000C2FC8, v7, v6);
}

uint64_t sub_1000C2FC8()
{

  if (qword_1003A9220 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000078E8(v1, qword_1003D2770);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Speech manager failed to translate: %@", v4, 0xCu);
    sub_100009EBC(v5, &unk_1003AECA0);
  }

  sub_1000C0118();
  sub_1000BE260(1, 0, 1);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000C3178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 384) = a7;
  *(v8 + 216) = a6;
  *(v8 + 224) = a8;
  *(v8 + 200) = a4;
  *(v8 + 208) = a5;
  v9 = type metadata accessor for SpeechResultOrigin();
  *(v8 + 232) = v9;
  *(v8 + 240) = *(v9 - 8);
  *(v8 + 248) = swift_task_alloc();
  v10 = type metadata accessor for Locale();
  *(v8 + 256) = v10;
  *(v8 + 264) = *(v10 - 8);
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();
  v11 = type metadata accessor for StoredSpeechResult();
  *(v8 + 296) = v11;
  *(v8 + 304) = *(v11 - 8);
  *(v8 + 312) = swift_task_alloc();
  v12 = type metadata accessor for CharacterSet();
  *(v8 + 320) = v12;
  *(v8 + 328) = *(v12 - 8);
  *(v8 + 336) = swift_task_alloc();
  v13 = type metadata accessor for StreamingRequestInfo(0);
  *(v8 + 344) = v13;
  *(v8 + 352) = *(v13 - 8);
  *(v8 + 360) = swift_task_alloc();
  sub_100005AD4(&qword_1003AD830);
  *(v8 + 368) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v8 + 376) = static MainActor.shared.getter();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000C3434, v15, v14);
}

uint64_t sub_1000C3434()
{
  v1 = *(v0 + 200);

  if (v1)
  {
    if (qword_1003A9220 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000078E8(v2, qword_1003D2770);
    swift_errorRetain();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_7;
    }

    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Exception while creating partial translation: %@", v5, 0xCu);
    sub_100009EBC(v6, &unk_1003AECA0);

LABEL_6:

LABEL_7:

    goto LABEL_31;
  }

  sub_10001F620(*(v0 + 208), v0 + 56, &unk_1003B9EC0);
  if (!*(v0 + 80))
  {
    sub_100009EBC(v0 + 56, &unk_1003B9EC0);
    if (qword_1003A9220 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000078E8(v17, qword_1003D2770);
    v3 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v3, v18))
    {
      goto LABEL_7;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v3, v18, "Expected a translation result, but received nil instead", v19, 2u);
    goto LABEL_6;
  }

  v8 = *(v0 + 368);
  v9 = *(v0 + 344);
  v10 = *(v0 + 352);
  sub_100051124((v0 + 56), v0 + 16);
  v11 = sub_1000B7BCC();
  v12 = OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_lastTranslatedRequest;
  swift_beginAccess();
  sub_10001F620(&v11[v12], v8, &qword_1003AD830);
  v13 = (*(v10 + 48))(v8, 1, v9);
  v14 = *(v0 + 368);
  if (v13)
  {
    sub_100009EBC(v14, &qword_1003AD830);

    v15 = 0;
    v16 = 0xE000000000000000;
  }

  else
  {
    v20 = *(v0 + 360);
    v21 = *(v0 + 336);
    v22 = *(v0 + 344);
    v23 = *(v0 + 320);
    v24 = *(v0 + 328);
    v25 = *(v0 + 368);
    sub_1000C88BC(v14, v20);
    sub_100009EBC(v25, &qword_1003AD830);
    v26 = (v20 + *(v22 + 20));
    v27 = v26[1];
    *(v0 + 184) = *v26;
    *(v0 + 192) = v27;

    static CharacterSet.whitespacesAndNewlines.getter();
    sub_10001F278();
    v28 = StringProtocol.trimmingCharacters(in:)();
    v16 = v29;
    (*(v24 + 8))(v21, v23);
    sub_1000C8DEC(v20, type metadata accessor for StreamingRequestInfo);

    v15 = v28 & 0xFFFFFFFFFFFFLL;
  }

  v30 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v30 = v15;
  }

  if (v30 || (sub_1000B89A0() & 1) != 0)
  {
    *(*(v0 + 216) + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_redactTargetText) = 0;
  }

  if (*(v0 + 384) == 1)
  {
    v32 = *(v0 + 304);
    v31 = *(v0 + 312);
    v56 = *(v0 + 296);
    v33 = *(v0 + 240);
    v34 = *(v0 + 248);
    v35 = *(v0 + 232);
    v36 = *(v0 + 216);
    (*(*(v0 + 264) + 16))(*(v0 + 288), *(v0 + 224) + *(*(v0 + 344) + 24), *(v0 + 256));
    (*(v33 + 104))(v34, enum case for SpeechResultOrigin.text(_:), v35);

    StoredSpeechResult.init(text:sanitizedText:locale:origin:)();
    sub_1000C7110(v31, (v0 + 16), 0, v36);
    sub_1000BCC0C();
    (*(v32 + 8))(v31, v56);
  }

  else
  {
    sub_1000085CC((v0 + 16), *(v0 + 40));
    v37 = dispatch thunk of TranslationResult.alternatives.getter();
    if (*(v37 + 16))
    {
      v38 = *(v0 + 272);
      v40 = *(v0 + 256);
      v39 = *(v0 + 264);
      sub_100031DD8(v37 + 32, v0 + 96);

      sub_1000085CC((v0 + 96), *(v0 + 120));
      v41 = TranslationAlternative.displayString.getter();
      v57 = v42;
      sub_100008664(v0 + 96);
      sub_1000085CC((v0 + 16), *(v0 + 40));
      dispatch thunk of TranslationResult.locale.getter();
      v43 = Locale.ltIdentifier.getter();
      v45 = v44;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v46 = Locale.ltIdentifier.getter();
      v48 = v47;
      v49 = *(v39 + 8);
      v49(v38, v40);
      if (v43 == v46 && v45 == v48)
      {

        v50 = 1;
      }

      else
      {
        v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v50 = v51 & 1;
      }

      v52 = *(v0 + 216);
      v49(*(v0 + 280), *(v0 + 256));
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 160) = v50;
      *(v0 + 168) = v41;
      *(v0 + 176) = v57;
      v53 = v52;
      static Published.subscript.setter();
    }

    else
    {
    }
  }

  sub_100008664(v0 + 16);
LABEL_31:

  v54 = *(v0 + 8);

  return v54();
}

void *sub_1000C3B68@<X0>(void *a1@<X8>)
{
  v3 = sub_100005AD4(&unk_1003B8C90);
  __chkstk_darwin(v3 - 8);
  v69 = &v56 - v4;
  v5 = type metadata accessor for SELFLoggingInvocationWrapper.Parameters(0);
  __chkstk_darwin(v5);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v70 = *(v8 - 8);
  __chkstk_darwin(v8);
  v68 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005AD4(&qword_1003AFCE0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v56 - v14;
  v16 = type metadata accessor for Locale();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v19 = __chkstk_darwin(v18);
  v20 = __chkstk_darwin(v19);
  __chkstk_darwin(v20);
  v25 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_lastEnteredText + 8);
  if (!v25)
  {
    goto LABEL_7;
  }

  v66 = v24;
  v67 = &v56 - v21;
  v62 = v23;
  v63 = v8;
  v64 = v25;
  v65 = v22;
  v71 = a1;
  v26 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_lastEnteredText);
  v27 = OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_lastSourceLocale;
  swift_beginAccess();
  sub_10001F620(v1 + v27, v15, &qword_1003AFCE0);
  v28 = *(v17 + 48);
  if (v28(v15, 1, v16) == 1)
  {
    v13 = v15;
LABEL_6:
    sub_100009EBC(v13, &qword_1003AFCE0);
    a1 = v71;
LABEL_7:
    v32 = type metadata accessor for SELFLoggingInvocationDescription();
    return (*(*(v32 - 8) + 56))(a1, 1, 1, v32);
  }

  v60 = v7;
  v61 = v5;
  v59 = v26;
  v29 = *(v17 + 32);
  v30 = v67;
  v29(v67, v15, v16);
  v31 = OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_lastTargetLocale;
  swift_beginAccess();
  sub_10001F620(v1 + v31, v13, &qword_1003AFCE0);
  if (v28(v13, 1, v16) == 1)
  {
    (*(v17 + 8))(v30, v16);
    goto LABEL_6;
  }

  v34 = v65;
  v58 = v17 + 32;
  v57 = v29;
  v29(v65, v13, v16);
  v35 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_currentSelfLoggingInvocation);
  v36 = *(v17 + 16);
  v36(v66, v30, v16);
  v37 = v62;
  v36(v62, v34, v16);
  if (*(v1 + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_faceToFaceVisible))
  {
    v38 = 1;
  }

  else
  {
    v38 = 2;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  v56 = v35;

  static Published.subscript.getter();

  v39 = v72;
  if (sub_1000BCD74())
  {
    v40 = OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel__selfAutoTranslateSessionId;
    swift_beginAccess();
    v41 = v1 + v40;
    v42 = v69;
    sub_10001F620(v41, v69, &unk_1003B8C90);
    v43 = v70;
  }

  else
  {
    v42 = v69;
    v43 = v70;
    (*(v70 + 56))(v69, 1, 1, v63);
  }

  v44 = v60;
  v45 = v57;
  v57(v60, v66, v16);
  v46 = v61;
  v45(v44 + v61[5], v37, v16);
  *(v44 + v46[6]) = 1;
  *(v44 + v46[7]) = 1;
  *(v44 + v46[8]) = v38;
  *(v44 + v46[9]) = v39;
  v47 = v44 + v46[10];
  *v47 = 0;
  *(v47 + 8) = 1;
  *(v44 + v46[11]) = 0;
  *(v44 + v46[12]) = 0;
  v48 = v44 + v46[13];
  *v48 = 0;
  *(v48 + 8) = 1;
  sub_1000C8D7C(v42, v44 + v46[14]);
  v49 = v56;
  sub_10022520C(v44);
  result = *(v49 + 16);
  if (result)
  {
    v50 = [result invocationId];
    v51 = v68;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000C8DEC(v44, type metadata accessor for SELFLoggingInvocationWrapper.Parameters);
    v52 = type metadata accessor for SELFLoggingInvocationDescription();
    v53 = v71;
    v45(v71 + v52[6], v67, v16);
    v45(&v53[v52[7]], v65, v16);
    v54 = v63;
    v55 = v64;
    *v53 = v59;
    *(v53 + 1) = v55;
    (*(v43 + 32))(&v53[v52[5]], v51, v54);
    return (*(*(v52 - 1) + 56))(v53, 0, 1, v52);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000C42E4()
{

  sub_100225840();
}

uint64_t sub_1000C4330()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000C4378(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001B558;

  return sub_1000C2F30(a1, v4, v5, v7, v6);
}

uint64_t sub_1000C4438@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000C7C6C(&qword_1003AE978, type metadata accessor for DeviceHelper);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__isAnyHeadsetConnected);
  return result;
}

uint64_t sub_1000C4510@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  *&v16[0] = v3;
  sub_1000C7C6C(&qword_1003AE978, type metadata accessor for DeviceHelper);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = (v3 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[2];
  v16[1] = v4[1];
  v16[2] = v6;
  v16[0] = v5;
  v7 = v4[3];
  v8 = v4[4];
  v9 = v4[5];
  *(v17 + 9) = *(v4 + 89);
  v16[4] = v8;
  v17[0] = v9;
  v16[3] = v7;
  v10 = v4[1];
  *a2 = *v4;
  a2[1] = v10;
  v11 = v4[2];
  v12 = v4[3];
  *(a2 + 89) = *(v4 + 89);
  v13 = v4[5];
  a2[4] = v4[4];
  a2[5] = v13;
  a2[2] = v11;
  a2[3] = v12;
  return sub_10001F620(v16, v15, &qword_1003A93C8);
}

uint64_t sub_1000C4640(_OWORD *a1)
{
  v1 = a1[5];
  v6[4] = a1[4];
  v7[0] = v1;
  *(v7 + 9) = *(a1 + 89);
  v2 = a1[1];
  v6[0] = *a1;
  v6[1] = v2;
  v3 = a1[3];
  v6[2] = a1[2];
  v6[3] = v3;
  sub_10001F620(v6, &v5, &qword_1003A93C8);
  return sub_1000CE294(v6);
}

void sub_1000C46C0(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v2;
  static Published.subscript.setter();
  sub_10022C4DC();
}

void sub_1000C473C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

double sub_1000C47F8@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1000C4880(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000C7F84(v2, v3, v4);
  v6 = v5;
  return static Published.subscript.setter();
}

double sub_1000C4928@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_1000C49B0(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t sub_1000C4A38()
{
  swift_unknownObjectRelease();

  sub_100008664(v0 + 40);
  sub_100008664(v0 + 80);

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_1000C4A88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001B558;

  return sub_1000C2DE8(a1, v4, v5, v6, (v1 + 5), (v1 + 10));
}

char *sub_1000C4B4C(char *a1, int64_t a2, char a3)
{
  result = sub_1000C4E58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000C4B6C(char *a1, int64_t a2, char a3)
{
  result = sub_1000C4F64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000C4B8C(void *a1, int64_t a2, char a3)
{
  result = sub_1000C52C8(a1, a2, a3, *v3, &qword_1003AF420, &unk_1002DBAB8, &qword_1003AF428);
  *v3 = result;
  return result;
}

void *sub_1000C4BCC(void *a1, int64_t a2, char a3)
{
  result = sub_1000C52C8(a1, a2, a3, *v3, &qword_1003AF430, &unk_1002DBAC8, &qword_1003AF438);
  *v3 = result;
  return result;
}

void *sub_1000C4C0C(void *a1, int64_t a2, char a3)
{
  result = sub_1000C52C8(a1, a2, a3, *v3, &qword_1003AF440, &unk_1002DBAD8, &qword_1003AF448);
  *v3 = result;
  return result;
}

char *sub_1000C4C4C(char *a1, int64_t a2, char a3)
{
  result = sub_1000C51B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000C4C6C(void *a1, int64_t a2, char a3)
{
  result = sub_1000C52C8(a1, a2, a3, *v3, &qword_1003AF458, &unk_1002DBAF0, &qword_1003AF460);
  *v3 = result;
  return result;
}

void *sub_1000C4CAC(void *a1, int64_t a2, char a3)
{
  result = sub_1000C5410(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000C4CCC(char *a1, int64_t a2, char a3)
{
  result = sub_1000C5544(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000C4CEC(char *a1, int64_t a2, char a3)
{
  result = sub_1000C5650(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000C4D0C(char *a1, int64_t a2, char a3)
{
  result = sub_1000C5868(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000C4D2C(char *a1, int64_t a2, char a3)
{
  result = sub_1000C596C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1000C4D4C(size_t a1, int64_t a2, char a3)
{
  result = sub_1000C5B98(a1, a2, a3, *v3, &qword_1003AF450, &unk_1002DBAE8, &type metadata accessor for StoredTranslationAlternative);
  *v3 = result;
  return result;
}

size_t sub_1000C4D90(size_t a1, int64_t a2, char a3)
{
  result = sub_1000C5B98(a1, a2, a3, *v3, qword_1003B5180, &unk_1002D7DC0, &type metadata accessor for Locale);
  *v3 = result;
  return result;
}

char *sub_1000C4DD4(char *a1, int64_t a2, char a3)
{
  result = sub_1000C5A94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1000C4DF4(size_t a1, int64_t a2, char a3)
{
  result = sub_1000C5B98(a1, a2, a3, *v3, &qword_1003BBEE0, &unk_1002DB810, &type metadata accessor for URLQueryItem);
  *v3 = result;
  return result;
}

char *sub_1000C4E38(char *a1, int64_t a2, char a3)
{
  result = sub_1000C5D74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000C4E58(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100005AD4(&unk_1003BA780);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000C4F64(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100005AD4(&unk_1003B0710);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000C5070(void *result, int64_t a2, char a3, void *a4)
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
    sub_100005AD4(&qword_1003AF3F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100005AD4(&qword_1003AF400);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000C51B8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100005AD4(&qword_1003AF3E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000C52C8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_100005AD4(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100005AD4(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_1000C5410(void *result, int64_t a2, char a3, void *a4)
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
    sub_100005AD4(&qword_1003AF408);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    sub_100005AD4(&qword_1003AE518);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000C5544(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100005AD4(&qword_1003AEA58);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000C5650(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100005AD4(&qword_1003AF418);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000C5774(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100005AD4(&qword_1003AF410);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_1000C5868(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100005AD4(&qword_1003AF478);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_1000C596C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100005AD4(&qword_1003AF470);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000C5A94(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100005AD4(&qword_1003AF3F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

size_t sub_1000C5B98(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100005AD4(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1000C5D74(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100005AD4(&qword_1003AF3D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_1000C5E78(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_1000C5ED0(uint64_t a1, char a2, char a3, char a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 256) = a7;
  *(v8 + 264) = a8;
  *(v8 + 517) = a5;
  *(v8 + 516) = a4;
  *(v8 + 515) = a3;
  *(v8 + 514) = a2;
  *(v8 + 240) = a1;
  *(v8 + 248) = a6;
  v9 = type metadata accessor for UUID();
  *(v8 + 272) = v9;
  *(v8 + 280) = *(v9 - 8);
  *(v8 + 288) = swift_task_alloc();
  sub_100005AD4(&unk_1003B8C90);
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();
  v10 = type metadata accessor for DispatchWorkItemFlags();
  *(v8 + 312) = v10;
  *(v8 + 320) = *(v10 - 8);
  *(v8 + 328) = swift_task_alloc();
  v11 = type metadata accessor for DispatchQoS();
  *(v8 + 336) = v11;
  *(v8 + 344) = *(v11 - 8);
  *(v8 + 352) = swift_task_alloc();
  v12 = type metadata accessor for Locale();
  *(v8 + 360) = v12;
  v13 = *(v12 - 8);
  *(v8 + 368) = v13;
  *(v8 + 376) = *(v13 + 64);
  *(v8 + 384) = swift_task_alloc();
  *(v8 + 392) = swift_task_alloc();
  *(v8 + 400) = swift_task_alloc();
  *(v8 + 408) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v8 + 416) = static MainActor.shared.getter();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 424) = v15;
  *(v8 + 432) = v14;

  return _swift_task_switch(sub_1000C615C, v15, v14);
}

uint64_t sub_1000C615C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((*(v0 + 512) & 1) != 0 || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , *(v0 + 513) == 1))
  {
    sub_1000BFA0C(0, 1);
  }

  v1 = *(*(v0 + 248) + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_deviceHelper);
  *(v0 + 440) = v1;
  swift_getKeyPath();
  *(v0 + 448) = OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper___observationRegistrar;
  *(v0 + 192) = v1;
  *(v0 + 456) = sub_1000C7C6C(&qword_1003AE978, type metadata accessor for DeviceHelper);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__ownerAudioDevice;
  swift_beginAccess();
  if (*(v2 + 8))
  {
    v3 = *(v2 + 72);
    if (v3 == 2)
    {
      if (*(v0 + 515))
      {
        goto LABEL_12;
      }
    }

    else if (((v3 == 3) & *(v0 + 515)) != 0)
    {
LABEL_12:
      v4 = 1;
      goto LABEL_14;
    }
  }

  swift_getKeyPath();
  *(v0 + 200) = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__isAnyHeadsetConnected) == 1)
  {
    swift_getKeyPath();
    *(v0 + 232) = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v2 + 8))
    {
      v4 = (*(v2 + 72) - 4) < 0xFFFFFFFFFFFFFFFELL;
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v4 = 0;
LABEL_14:
  *(v0 + 518) = v4;
  *(v0 + 464) = *(*(v0 + 248) + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_ttsManager);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = *(v0 + 184);
  *(v0 + 472) = *(v0 + 176);
  *(v0 + 480) = v5;

  return _swift_task_switch(sub_1000C6474, 0, 0);
}

uint64_t sub_1000C6474()
{
  v2 = v0[32];
  v1 = v0[33];
  v0[61] = (*(v1 + 24))(v2, v1);
  v0[62] = v3;
  (*(v1 + 32))(v2, v1);
  (*(v1 + 40))(v2, v1);
  swift_weakInit();

  return _swift_task_switch(sub_1000C6560, 0, 0);
}

uint64_t sub_1000C6560()
{
  v1 = v0;
  v38 = v0 + 16;
  v27 = *(v0 + 488);
  v31 = *(v0 + 480);
  v29 = *(v0 + 496);
  v30 = *(v0 + 472);
  v32 = *(v0 + 518);
  v23 = *(v0 + 408);
  v24 = *(v0 + 400);
  v2 = *(v0 + 384);
  v3 = *(v0 + 392);
  v21 = v2;
  v4 = *(v0 + 368);
  v5 = *(v0 + 376);
  v6 = *(v0 + 360);
  aBlock = (v0 + 80);
  v34 = *(v0 + 352);
  v40 = *(v0 + 344);
  v41 = *(v0 + 336);
  v39 = *(v0 + 320);
  v36 = *(v0 + 328);
  v37 = *(v0 + 312);
  v25 = *(v0 + 514);
  v28 = *(v0 + 264);
  v26 = *(v0 + 240);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1000C69A4;
  v22 = swift_continuation_init();
  sub_10000A2CC(0, &qword_1003A9C40);
  v35 = static OS_dispatch_queue.main.getter();
  v7 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  v8 = v7;
  swift_weakInit();

  v9 = *(v4 + 16);
  v9(v3, v23, v6);
  v9(v2, v24, v6);
  v10 = *(v4 + 80);
  v11 = (v10 + 49) & ~v10;
  v12 = v11 + v5;
  v13 = (v10 + v11 + v5 + 1) & ~v10;
  v14 = (v5 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  *(v15 + 16) = v8;
  *(v15 + 24) = v22;
  *(v15 + 32) = v27;
  *(v15 + 40) = v29;
  *(v15 + 48) = v25 ^ 1;
  v16 = *(v4 + 32);
  v16(v15 + v11, v3, v6);
  *(v15 + v12) = v25;
  v16(v15 + v13, v21, v6);
  v17 = (v15 + v14);
  *v17 = v30;
  v17[1] = v31;
  v18 = v15 + ((v14 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v18 = v26;
  *(v18 + 8) = v28;
  *(v18 + 16) = 0;
  *(v18 + 17) = v32;
  *(v18 + 18) = 1;
  v1[14] = sub_100026C4C;
  v1[15] = v15;
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_100096948;
  v1[13] = &unk_100382E08;
  v19 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  v1[27] = _swiftEmptyArrayStorage;
  sub_1000C7C6C(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005AD4(&unk_1003A9C50);
  sub_10001BAEC(&qword_1003AB9A0, &unk_1003A9C50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v39 + 8))(v36, v37);
  (*(v40 + 8))(v34, v41);

  return _swift_continuation_await(v38);
}

uint64_t sub_1000C69A4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 504) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_1000C6E60;
  }

  else
  {
    swift_weakDestroy();
    v2 = sub_1000C6AC8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000C6AC8()
{
  v1 = v0[51];
  v2 = v0[45];
  v3 = *(v0[46] + 8);
  v3(v0[50], v2);
  v3(v1, v2);
  v4 = v0[53];
  v5 = v0[54];

  return _swift_task_switch(sub_1000C6B5C, v4, v5);
}

uint64_t sub_1000C6B5C()
{
  v1 = *(v0 + 518);
  v2 = *(v0 + 440);
  v3 = *(v0 + 248);

  swift_getKeyPath();
  *(v0 + 224) = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v3 + OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_faceToFaceVisible) == 1)
  {
    if ((*(v2 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__isAnyHeadsetConnected) & (v1 ^ 1) & 1) == 0)
    {
LABEL_3:
      v4 = 1;
      goto LABEL_6;
    }
  }

  else if ((*(v2 + OBJC_IVAR____TtC17SequoiaTranslator12DeviceHelper__isAnyHeadsetConnected) & (v1 ^ 1) & *(v0 + 516) & 1) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_1000C11EC();
LABEL_6:
  v6 = *(v0 + 256);
  v5 = *(v0 + 264);
  v7 = *(v0 + 514);
  (*(v5 + 128))(v6, v5);
  v8 = 1;
  if (v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  v10 = (*(v5 + 96))(v6, v5);
  if (v10 != 0.5)
  {
    if (v10 == 0.75)
    {
      v8 = 2;
    }

    else if (v10 == 1.0)
    {
      v8 = 3;
    }

    else if (v10 == 1.25)
    {
      v8 = 4;
    }

    else
    {
      v8 = 3;
    }
  }

  v11 = *(v0 + 296);
  v12 = *(v0 + 272);
  v13 = *(v0 + 280);
  sub_10001F620(*(v0 + 304), v11, &unk_1003B8C90);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    v14 = *(v0 + 296);
    sub_100009EBC(*(v0 + 304), &unk_1003B8C90);
  }

  else
  {
    v14 = *(v0 + 304);
    v23 = v4;
    v15 = *(v0 + 280);
    v16 = *(v0 + 288);
    v17 = *(v0 + 272);
    v18 = *(v0 + 517);
    (*(v15 + 32))(v16, *(v0 + 296), v17);
    v19 = objc_opt_self();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    [v19 translationTTSPlayedWithInvocationId:isa sourceOrTargetLanguage:v9 isAutoplayTranslation:v18 ttsPlaybackSpeed:v8 audioChannel:v23];

    (*(v15 + 8))(v16, v17);
  }

  sub_100009EBC(v14, &unk_1003B8C90);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1000C6E60()
{
  v1 = v0[50];
  v2 = v0[51];
  v3 = v0[45];
  v4 = v0[46];
  swift_weakDestroy();
  v5 = *(v4 + 8);
  v5(v1, v3);
  v5(v2, v3);
  v6 = v0[53];
  v7 = v0[54];

  return _swift_task_switch(sub_1000C6F08, v6, v7);
}

uint64_t sub_1000C6F08()
{

  if (qword_1003A9220 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000078E8(v1, qword_1003D2770);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    v6 = _convertErrorToNSError(_:)();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Exception while toggling TTS: %@", v4, 0xCu);
    sub_100009EBC(v5, &unk_1003AECA0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000C7110(uint64_t a1, void *a2, int a3, char *a4)
{
  v44 = a3;
  v46 = a2;
  v6 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v6 - 8);
  v8 = &v41 - v7;
  v9 = sub_100005AD4(&unk_1003B8C90);
  __chkstk_darwin(v9 - 8);
  v11 = &v41 - v10;
  v12 = type metadata accessor for StoredSpeechResult();
  v49 = v12;
  v13 = sub_1000C7C6C(&unk_1003AECB0, &type metadata accessor for StoredSpeechResult);
  v50 = v13;
  v14 = sub_100050D60(v48);
  (*(*(v12 - 8) + 16))(v14, a1, v12);
  v15 = *(*&a4[OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_currentSelfLoggingInvocation] + 16);
  if (v15)
  {

    v16 = [v15 invocationId];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = type metadata accessor for UUID();
  (*(*(v18 - 8) + 56))(v11, v17, 1, v18);

  sub_100225A0C();

  v45 = v50;
  sub_1000085CC(v48, v49);
  if ((dispatch thunk of SpeechResult.isEmpty()() & 1) != 0 || (v19 = *&a4[OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_session], v42 = v13, v43 = v8, v20 = v11, v22 = v46[3], v21 = v46[4], v23 = sub_1000085CC(v46, v22), v40 = v21, v11 = v20, v24 = v12, v25 = v22, v26 = v44, v27 = v43, (v28 = sub_1002B4F2C(v14, v23, 0, v20, v19, v24, v25, v42, v40)) == 0))
  {
    if (dispatch thunk of SpeechResult.isEmpty()())
    {
      if (qword_1003A9220 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_1000078E8(v35, qword_1003D2770);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&_mh_execute_header, v36, v37, "Not storing speech translation result, as speech result is empty.", v38, 2u);
      }
    }
  }

  else
  {
    v29 = v28;
    v30 = type metadata accessor for TaskPriority();
    (*(*(v30 - 8) + 56))(v27, 1, 1, v30);
    sub_100031DD8(v46, v47);
    type metadata accessor for MainActor();
    v31 = a4;
    v32 = v29;
    v33 = static MainActor.shared.getter();
    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    *(v34 + 24) = &protocol witness table for MainActor;
    *(v34 + 32) = v31;
    *(v34 + 40) = v26 & 1;
    sub_100051124(v47, v34 + 48);
    *(v34 + 88) = v32;
    sub_1000BF760(0, 0, v27, &unk_1002DB728, v34);
  }

  sub_100009EBC(v11, &unk_1003B8C90);
  return sub_100008664(v48);
}

uint64_t sub_1000C7598(uint64_t a1, void *a2, int a3, char *a4, uint64_t a5, uint64_t a6)
{
  v46 = a3;
  v48 = a2;
  v10 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v10 - 8);
  v12 = &v45 - v11;
  v13 = sub_100005AD4(&unk_1003B8C90);
  __chkstk_darwin(v13 - 8);
  v15 = &v45 - v14;
  v51 = a5;
  v52 = a6;
  v16 = a6;
  v17 = sub_100050D60(v50);
  (*(*(a5 - 8) + 16))(v17, a1, a5);
  v18 = *(*&a4[OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_currentSelfLoggingInvocation] + 16);
  if (v18)
  {

    v19 = [v18 invocationId];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = type metadata accessor for UUID();
  (*(*(v21 - 8) + 56))(v15, v20, 1, v21);

  sub_100225A0C();

  v47 = v52;
  sub_1000085CC(v50, v51);
  if ((dispatch thunk of SpeechResult.isEmpty()() & 1) != 0 || (v22 = *&a4[OBJC_IVAR____TtC17SequoiaTranslator21ConversationViewModel_session], v45 = v16, v23 = v12, v24 = v15, v26 = v48[3], v25 = v48[4], v27 = sub_1000085CC(v48, v26), v44 = v25, v15 = v24, v28 = a4, v29 = v26, v30 = v46, v31 = v23, (v32 = sub_1002B4F2C(v17, v27, 0, v15, v22, a5, v29, v45, v44)) == 0))
  {
    if (dispatch thunk of SpeechResult.isEmpty()())
    {
      if (qword_1003A9220 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_1000078E8(v39, qword_1003D2770);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "Not storing speech translation result, as speech result is empty.", v42, 2u);
      }
    }
  }

  else
  {
    v33 = v32;
    v34 = type metadata accessor for TaskPriority();
    (*(*(v34 - 8) + 56))(v23, 1, 1, v34);
    sub_100031DD8(v48, v49);
    type metadata accessor for MainActor();
    v35 = v28;
    v36 = v33;
    v37 = static MainActor.shared.getter();
    v38 = swift_allocObject();
    *(v38 + 16) = v37;
    *(v38 + 24) = &protocol witness table for MainActor;
    *(v38 + 32) = v35;
    *(v38 + 40) = v30 & 1;
    sub_100051124(v49, v38 + 48);
    *(v38 + 88) = v36;
    sub_1000BF760(0, 0, v31, &unk_1002DB448, v38);
  }

  sub_100009EBC(v15, &unk_1003B8C90);
  return sub_100008664(v50);
}

uint64_t sub_1000C79F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 88);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001B558;

  return sub_1000BE7C8(a1, v4, v5, v6, v7, v1 + 48, v8);
}

uint64_t sub_1000C7C00(_OWORD *a1)
{
  v1 = a1[5];
  v6[4] = a1[4];
  v7[0] = v1;
  *(v7 + 9) = *(a1 + 89);
  v2 = a1[1];
  v6[0] = *a1;
  v6[1] = v2;
  v3 = a1[3];
  v6[2] = a1[2];
  v6[3] = v3;
  sub_10001F620(v6, &v5, &qword_1003A93C8);
  return sub_1000CE294(v6);
}

uint64_t sub_1000C7C6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000C7CE8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000C7D20()
{
  v1 = type metadata accessor for Locale();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 49) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4 + 1) & ~v3;
  v7 = (((v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v7 + 19, v3 | 7);
}

uint64_t sub_1000C7E48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000C7E60()
{
  swift_unknownObjectRelease();
  sub_100008664(v0 + 32);
  if (*(v0 + 96))
  {
    sub_100008664(v0 + 72);
  }

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_1000C7EB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[14];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001B558;

  return sub_1000C29E4(a1, v4, v5, (v1 + 4), (v1 + 9), v6);
}

uint64_t sub_1000C7F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1000C7FC8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000C8010(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 33);
  v9 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10001B558;

  return sub_1000C24D0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1000C8168(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_1000C81C0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

char *sub_1000C820C(void *a1, uint64_t a2, char *a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v40 = a6;
  v41 = a7;
  v37 = a1;
  v11 = type metadata accessor for UUID();
  v38 = *(v11 - 8);
  v39 = v11;
  __chkstk_darwin(v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100005AD4(&qword_1003AD830);
  __chkstk_darwin(v14 - 8);
  v16 = &v36 - v15;
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46[3] = a4(0);
  v46[4] = a5;
  v46[0] = a2;
  *(a3 + 2) = [objc_allocWithZone(_LTTextStreamingConfiguration) init];
  *(a3 + 3) = 0;
  *(a3 + 4) = 0x3FF8000000000000;
  *(a3 + 5) = 0;
  v21 = OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_lastSourceLocale;
  v22 = type metadata accessor for Locale();
  v23 = *(*(v22 - 8) + 56);
  v23(&a3[v21], 1, 1, v22);
  v23(&a3[OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_lastTargetLocale], 1, 1, v22);
  v24 = &a3[OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_lastTranslation];
  *(v24 + 4) = 0;
  *v24 = 0u;
  *(v24 + 1) = 0u;
  v25 = OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_lastTranslatedRequest;
  v26 = type metadata accessor for StreamingRequestInfo(0);
  v27 = *(*(v26 - 8) + 56);
  v27(&a3[v25], 1, 1, v26);
  a3[OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_streamingManagerState] = 0;
  v27(&a3[OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_partialTranslationRequest], 1, 1, v26);
  *&a3[OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_finalTranslationRequestsQueue] = _swiftEmptyArrayStorage;
  v28 = v37;
  *&a3[OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_translator] = v37;
  sub_100031DD8(v46, &a3[OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_delegate]);
  v29 = v28;
  static Date.now.getter();
  (*(v18 + 32))(&a3[OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_lastSubmittedTimestamp], v20, v17);
  v30 = &a3[OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_lastSubmittedText];
  *v30 = 0;
  *(v30 + 1) = 0xE000000000000000;
  v44 = 0;
  aBlock = 0u;
  v43 = 0u;
  v31 = OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_lastTranslation;
  swift_beginAccess();
  sub_10003BD84(&aBlock, &a3[v31], &unk_1003B9EC0);
  swift_endAccess();
  v27(v16, 1, 1, v26);
  v32 = OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_lastTranslatedRequest;
  swift_beginAccess();
  sub_10003BD84(v16, &a3[v32], &qword_1003AD830);
  swift_endAccess();
  UUID.init()();
  (*(v38 + 32))(&a3[OBJC_IVAR____TtC17SequoiaTranslator31TextStreamingTranslationManager_currentRequestId], v13, v39);
  sub_10026091C();
  v33 = objc_opt_self();
  v44 = v40;
  v45 = a3;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v43 = sub_1000C473C;
  *(&v43 + 1) = v41;
  v34 = _Block_copy(&aBlock);

  [v33 textStreamingConfigurationWithCompletion:v34];
  _Block_release(v34);
  sub_100008664(v46);
  return a3;
}

uint64_t sub_1000C86D4(uint64_t a1, char a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v3 = 8;
  if (!v6)
  {
    v3 = 0;
  }

  v4 = 65;
  if ((a2 & 1) == 0)
  {
    v4 = 1;
  }

  return v3 | v4;
}

unint64_t sub_1000C876C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10037D5C0, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

void sub_1000C87B8(float a1)
{
  if (qword_1003A9220 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000078E8(v2, qword_1003D2770);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = a1;
    _os_log_impl(&_mh_execute_header, oslog, v3, "Speech: input detected at %f level.", v4, 0xCu);
  }
}

uint64_t sub_1000C88BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StreamingRequestInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C8920()
{
  v1 = type metadata accessor for StreamingRequestInfo(0);
  v2 = *(*(v1 - 1) + 80);
  v10 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();

  if (*(v0 + 64))
  {
    sub_100008664(v0 + 40);
  }

  v9 = (v2 + 89) & ~v2;

  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v9, v3);

  v5 = v1[6];
  v6 = type metadata accessor for Locale();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v9 + v5, v6);
  v7(v0 + v9 + v1[7], v6);
  v4(v0 + v9 + v1[10], v3);

  return _swift_deallocObject(v0, v9 + v10, v2 | 7);
}

uint64_t sub_1000C8AD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StreamingRequestInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C8B38(uint64_t a1)
{
  v4 = *(type metadata accessor for StreamingRequestInfo(0) - 8);
  v5 = (*(v4 + 80) + 89) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 80);
  v10 = *(v1 + 88);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10001B558;

  return sub_1000C3178(a1, v6, v7, v8, v1 + 40, v9, v10, v1 + v5);
}

uint64_t sub_1000C8C54()
{
  swift_unknownObjectRelease();

  sub_100008664(v0 + 48);

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1000C8CA4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 88);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001B16C;

  return sub_1000BE7C8(a1, v4, v5, v6, v7, v1 + 48, v8);
}

uint64_t sub_1000C8D7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&unk_1003B8C90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C8DEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000C8E4C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t (*sub_1000C8EB0())()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_1000C8EA8;
}

uint64_t sub_1000C8F0C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000C8F4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001B558;

  return sub_1000BB2CC(a1, v4, v5, v6);
}

uint64_t sub_1000C90C8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1000C9104(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10001B558;

  return sub_10023BA94(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1000C91F8()
{
  swift_unknownObjectRelease();

  if (*(v0 + 48))
  {
  }

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1000C9258(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10001B16C;

  return sub_10023BA94(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1000C935C()
{
  v1 = type metadata accessor for Locale();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v5 + v9 + v6 + 1) & ~v9;
  v11 = *(v8 + 64);
  v14 = v3 | v9;
  swift_unknownObjectRelease();

  v12 = *(v2 + 8);
  v12(v0 + v4, v1);
  v12(v0 + v6, v1);
  (*(v8 + 8))(v0 + v10, v7);

  return _swift_deallocObject(v0, v10 + v11, v14 | 7);
}

unint64_t sub_1000C9514()
{
  result = qword_1003AF468;
  if (!qword_1003AF468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF468);
  }

  return result;
}

uint64_t sub_1000C95BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005AD4(&qword_1003B2300);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1000C96A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100005AD4(&qword_1003B2300);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t type metadata accessor for ConversationViewsMenu()
{
  result = qword_1003AF4D8;
  if (!qword_1003AF4D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000C97B4()
{
  sub_10005C414();
  if (v0 <= 0x3F)
  {
    sub_10005C50C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000C9854@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005AD4(&qword_1003B23E0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_10001F620(v2, &v13 - v9, &qword_1003B23E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10008E200(v10, a1);
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1000C9A24()
{
  type metadata accessor for ConversationViewsMenu();
  type metadata accessor for SceneContext();
  sub_1000CAD3C(&qword_1003AC860, type metadata accessor for SceneContext);
  EnvironmentObject.projectedValue.getter();
  swift_getKeyPath();
  EnvironmentObject.Wrapper.subscript.getter();

  LocalizedStringKey.init(stringLiteral:)();
  Text.init(_:tableName:bundle:comment:)();
  sub_100005AD4(&qword_1003AF530);
  sub_10001BAEC(&qword_1003AF538, &qword_1003AF530);
  return Picker.init(selection:label:content:)();
}

uint64_t sub_1000C9BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  v3 = type metadata accessor for UserInterfaceSizeClass();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v84 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100005AD4(&qword_1003AC998);
  v7 = __chkstk_darwin(v6);
  v105 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v82 - v9;
  v11 = sub_100005AD4(&qword_1003AC848);
  v12 = __chkstk_darwin(v11 - 8);
  v83 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v110 = &v82 - v15;
  v16 = __chkstk_darwin(v14);
  v99 = (&v82 - v17);
  v18 = __chkstk_darwin(v16);
  v91 = &v82 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v82 - v21;
  __chkstk_darwin(v20);
  v24 = &v82 - v23;
  v107 = sub_100005AD4(&qword_1003A93D8);
  v114 = *(v107 - 8);
  v25 = __chkstk_darwin(v107);
  v104 = &v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v96 = &v82 - v27;
  v28 = sub_100005AD4(&qword_1003AF540);
  v29 = *(v28 - 8);
  v112 = v28;
  v113 = v29;
  v30 = __chkstk_darwin(v28);
  v101 = &v82 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v33 = &v82 - v32;
  v34 = sub_100005AD4(&qword_1003AF548);
  v35 = __chkstk_darwin(v34 - 8);
  v103 = &v82 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v102 = &v82 - v38;
  v39 = __chkstk_darwin(v37);
  v100 = &v82 - v40;
  __chkstk_darwin(v39);
  v111 = &v82 - v41;
  v90 = LocalizedStringKey.init(stringLiteral:)();
  v89 = v42;
  LODWORD(v87) = v43;
  v88 = v44;
  v98 = a1;
  sub_1000C9854(v24);
  v45 = v4[13];
  v95 = enum case for UserInterfaceSizeClass.compact(_:);
  v94 = v4 + 13;
  v93 = v45;
  v45(v22);
  v92 = v4[7];
  v92(v22, 0, 1, v3);
  v97 = v6;
  v46 = *(v6 + 48);
  sub_10001F620(v24, v10, &qword_1003AC848);
  sub_10001F620(v22, &v10[v46], &qword_1003AC848);
  v108 = v4;
  v47 = v4[6];
  v48 = v47(v10, 1, v3);
  v109 = v47;
  if (v48 == 1)
  {
    sub_100009EBC(v22, &qword_1003AC848);
    sub_100009EBC(v24, &qword_1003AC848);
    if (v109(&v10[v46], 1, v3) == 1)
    {
      sub_100009EBC(v10, &qword_1003AC848);
      v49 = v107;
      v50 = v99;
      goto LABEL_8;
    }
  }

  else
  {
    sub_10001F620(v10, v91, &qword_1003AC848);
    if (v47(&v10[v46], 1, v3) != 1)
    {
      v65 = v84;
      (v108[4])(v84, &v10[v46], v3);
      sub_1000CAD3C(&qword_1003AC9D0, &type metadata accessor for UserInterfaceSizeClass);
      v86 = v4 + 7;
      v66 = v91;
      v85 = dispatch thunk of static Equatable.== infix(_:_:)();
      v67 = v108[1];
      v67(v65, v3);
      sub_100009EBC(v22, &qword_1003AC848);
      sub_100009EBC(v24, &qword_1003AC848);
      v67(v66, v3);
      sub_100009EBC(v10, &qword_1003AC848);
      v50 = v99;
      goto LABEL_7;
    }

    sub_100009EBC(v22, &qword_1003AC848);
    sub_100009EBC(v24, &qword_1003AC848);
    (v108[1])(v91, v3);
  }

  sub_100009EBC(v10, &qword_1003AC998);
  v50 = v99;
LABEL_7:
  v49 = v107;
LABEL_8:
  v51 = v96;
  Label<>.init(_:systemImage:)();
  v52 = *(v114 + 32);
  v114 += 32;
  v99 = v52;
  v52(v33, v51, v49);
  v96 = sub_100005AD4(&qword_1003A93E0);
  *&v33[*(v96 + 9)] = 257;
  v53 = sub_10001BAEC(&qword_1003AA3C8, &qword_1003A93D8);
  v115 = v49;
  v116 = &type metadata for Bool;
  v117 = v53;
  v118 = &protocol witness table for Bool;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v90 = 0xD000000000000010;
  v55 = v112;
  v91 = OpaqueTypeConformance2;
  View.accessibilityIdentifier(_:)();
  v56 = *(v113 + 8);
  v113 += 8;
  v89 = v56;
  v56(v33, v55);
  v88 = LocalizedStringKey.init(stringLiteral:)();
  v87 = v57;
  v85 = v58;
  v86 = v59;
  sub_1000C9854(v50);
  v60 = v110;
  v93(v110, v95, v3);
  v92(v60, 0, 1, v3);
  v61 = *(v97 + 48);
  v62 = v105;
  sub_10001F620(v50, v105, &qword_1003AC848);
  sub_10001F620(v60, v62 + v61, &qword_1003AC848);
  v63 = v109;
  if (v109(v62, 1, v3) != 1)
  {
    v64 = v83;
    sub_10001F620(v62, v83, &qword_1003AC848);
    if (v63(v62 + v61, 1, v3) != 1)
    {
      v68 = v108;
      v69 = v62 + v61;
      v70 = v84;
      (v108[4])(v84, v69, v3);
      sub_1000CAD3C(&qword_1003AC9D0, &type metadata accessor for UserInterfaceSizeClass);
      dispatch thunk of static Equatable.== infix(_:_:)();
      v71 = v68[1];
      v71(v70, v3);
      sub_100009EBC(v110, &qword_1003AC848);
      sub_100009EBC(v50, &qword_1003AC848);
      v71(v64, v3);
      v49 = v107;
      sub_100009EBC(v62, &qword_1003AC848);
      goto LABEL_16;
    }

    sub_100009EBC(v110, &qword_1003AC848);
    sub_100009EBC(v50, &qword_1003AC848);
    (v108[1])(v64, v3);
    goto LABEL_13;
  }

  sub_100009EBC(v60, &qword_1003AC848);
  sub_100009EBC(v50, &qword_1003AC848);
  if (v63(v62 + v61, 1, v3) != 1)
  {
LABEL_13:
    sub_100009EBC(v62, &qword_1003AC998);
    goto LABEL_16;
  }

  sub_100009EBC(v62, &qword_1003AC848);
LABEL_16:
  v72 = v104;
  Label<>.init(_:systemImage:)();
  v73 = v101;
  v99(v101, v72, v49);
  *&v73[*(v96 + 9)] = 256;
  v74 = v100;
  v75 = v112;
  View.accessibilityIdentifier(_:)();
  v89(v73, v75);
  v76 = v111;
  v77 = v102;
  sub_1000CAC64(v111, v102);
  v78 = v103;
  sub_1000CAC64(v74, v103);
  v79 = v106;
  sub_1000CAC64(v77, v106);
  v80 = sub_100005AD4(&qword_1003AF550);
  sub_1000CAC64(v78, v79 + *(v80 + 48));
  sub_1000CACD4(v74);
  sub_1000CACD4(v76);
  sub_1000CACD4(v78);
  return sub_1000CACD4(v77);
}

uint64_t sub_1000CA9D0()
{
  LocalizedStringKey.init(stringLiteral:)();
  v0 = Text.init(_:tableName:bundle:comment:)();
  v2 = v1;
  v4 = v3 & 1;
  View.accessibilityIdentifier(_:)();
  sub_10002EA54(v0, v2, v4);
}

uint64_t sub_1000CAAA4()
{
  sub_100005AD4(&qword_1003AF510);
  sub_100005AD4(&qword_1003AF518);
  sub_1000CAB98();
  sub_10001BAEC(&qword_1003AF528, &qword_1003AF518);
  return Menu.init(content:label:)();
}

unint64_t sub_1000CAB98()
{
  result = qword_1003AF520;
  if (!qword_1003AF520)
  {
    sub_100005EA8(&qword_1003AF510);
    sub_1000CAD3C(&qword_1003AA3E8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF520);
  }

  return result;
}

uint64_t sub_1000CAC64(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003AF548);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CACD4(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003AF548);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000CAD3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000CADC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1000CAE10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000CAE7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a1;
  v21 = a3;
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v18 = type metadata accessor for _MaskAlignmentEffect();
  v7 = type metadata accessor for ModifiedContent();
  v19 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v18 - v11;
  static Alignment.leading.getter();
  v22 = v6;
  v23 = v5;
  v24 = v3;
  WitnessTable = swift_getWitnessTable();
  View.mask<A>(alignment:_:)();
  v14 = swift_getWitnessTable();
  v25 = WitnessTable;
  v26 = v14;
  v15 = swift_getWitnessTable();
  sub_10002D870(v10, v7, v15);
  v16 = *(v19 + 8);
  v16(v10, v7);
  sub_10002D870(v12, v7, v15);
  return (v16)(v12, v7);
}

uint64_t sub_1000CB0B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = __chkstk_darwin(a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002D870(v6, v9, v10);
  sub_10002D870(v8, a2, a3);
  return (*(v5 + 8))(v8, a2);
}

uint64_t sub_1000CB1A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{

  sub_100005AD4(&qword_1003AF578);
  result = State.wrappedValue.getter();
  if (__OFADD__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    State.wrappedValue.setter();

    return a3(v5);
  }

  return result;
}

uint64_t sub_1000CB258()
{
  sub_100005AD4(&qword_1003AF578);
  State.wrappedValue.getter();
  sub_100005AD4(&qword_1003AF580);
  sub_100005AD4(&qword_1003AF588);
  sub_1000CBB40();
  sub_10001BAEC(&qword_1003AF598, &qword_1003AF580);
  sub_10001BAEC(&qword_1003AF5A0, &qword_1003AF588);
  return PhaseAnimator.init<A, B>(_:trigger:content:animation:)();
}

double sub_1000CB3CC@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = static Alignment.center.getter();
  v6 = v5;
  sub_1000CB438(v3, v9);
  *a2 = v4;
  *(a2 + 8) = v6;
  v7 = v9[1];
  *(a2 + 16) = v9[0];
  *(a2 + 32) = v7;
  result = *&v10;
  *(a2 + 48) = v10;
  *(a2 + 64) = v11;
  return result;
}

uint64_t sub_1000CB438@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for OpacityTransition();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  v11 = Image.init(systemName:)();
  v12 = Image.init(systemName:)();
  if (a1)
  {
    if (a1 != 1)
    {
      v18 = Image.init(systemName:)();
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      *&v28 = v32;
      BYTE8(v28) = BYTE8(v32);
      v29 = v33;
      v30 = v34;
      v31 = v35;
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v23 = v36;
      LOBYTE(v24) = BYTE8(v36);
      v25 = v37;
      v26 = v38;
      v27 = v39;
      sub_100005AD4(&qword_1003AF5A8);
      sub_10001BAEC(&qword_1003AF5B0, &qword_1003AF5A8);
      static AnyTransition.modifier<A>(active:identity:)();
      static AnyTransition.opacity.getter();
      v19 = static AnyTransition.asymmetric(insertion:removal:)();

      v23 = v18;
      v24 = v19;
      LOWORD(v25) = 256;
      sub_100005AD4(&qword_1003AF5B8);
      sub_100005AD4(&qword_1003AF5C0);
      sub_1000CBB94();
      sub_1000CBC20();
      _ConditionalContent<>.init(storage:)();
      v15 = v28;
      v16 = v29;
      v17 = BYTE1(v29);
      goto LABEL_7;
    }

    v32 = 0uLL;
    LOBYTE(v33) = 1;
    sub_100005AD4(&qword_1003AF5C0);
    sub_1000CBC20();
    _ConditionalContent<>.init(storage:)();
    v32 = v36;
    LOWORD(v33) = v37;
    sub_100005AD4(&qword_1003AF5B8);
    sub_1000CBB94();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v13 = Image.init(systemName:)();
    OpacityTransition.init()();
    (*(v5 + 16))(v8, v10, v4);
    sub_1000CBDF8();
    v14 = AnyTransition.init<A>(_:)();
    (*(v5 + 8))(v10, v4);
    *&v32 = v13;
    *(&v32 + 1) = v14;
    LOBYTE(v33) = 0;

    sub_100005AD4(&qword_1003AF5C0);
    sub_1000CBC20();
    _ConditionalContent<>.init(storage:)();
    v32 = v36;
    LOWORD(v33) = v37;
    sub_100005AD4(&qword_1003AF5B8);
    sub_1000CBB94();
    _ConditionalContent<>.init(storage:)();
  }

  v15 = v36;
  v16 = v37;
  v17 = BYTE1(v37);
LABEL_7:
  v22 = v15;
  LOBYTE(v28) = v17;
  *a2 = v11;
  *(a2 + 8) = 0;
  *(a2 + 16) = v12;
  *(a2 + 24) = 0;
  *(a2 + 32) = v15;
  *(a2 + 48) = v16;
  *(a2 + 49) = v17;

  v20 = v22;
  sub_1000CBCD8(v22, *(&v22 + 1), v16, v17);
  sub_1000CBD68(v20, *(&v20 + 1), v16, v17);
}

uint64_t sub_1000CB980()
{
  static Animation.spring(response:dampingFraction:blendDuration:)();
  v0 = Animation.logicallyComplete(after:)();

  return v0;
}

uint64_t sub_1000CB9E8()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v1;
  v5[4] = v4;
  v5[5] = v3;

  sub_100005AD4(&qword_1003AF568);
  sub_10001BAEC(&qword_1003AF570, &qword_1003AF568);
  return Button.init(action:label:)();
}

uint64_t sub_1000CBAE8()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_1000CBB40()
{
  result = qword_1003AF590;
  if (!qword_1003AF590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF590);
  }

  return result;
}

unint64_t sub_1000CBB94()
{
  result = qword_1003AF5C8;
  if (!qword_1003AF5C8)
  {
    sub_100005EA8(&qword_1003AF5B8);
    sub_1000CBC20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF5C8);
  }

  return result;
}

unint64_t sub_1000CBC20()
{
  result = qword_1003AF5D0;
  if (!qword_1003AF5D0)
  {
    sub_100005EA8(&qword_1003AF5C0);
    sub_10001BAEC(&qword_1003AE9B0, &qword_1003AE9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF5D0);
  }

  return result;
}

uint64_t sub_1000CBCD8(uint64_t a1, uint64_t a2, char a3, char a4)
{
  if (a4)
  {
  }

  else
  {
    v6 = a3 & 1;

    return sub_1000CBD28(a1, a2, v6);
  }
}

uint64_t sub_1000CBD28(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1000CBD68(uint64_t a1, uint64_t a2, char a3, char a4)
{
  if (a4)
  {
  }

  else
  {
    v6 = a3 & 1;

    return sub_1000CBDB8(a1, a2, v6);
  }
}

uint64_t sub_1000CBDB8(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_1000CBDF8()
{
  result = qword_1003AF5D8[0];
  if (!qword_1003AF5D8[0])
  {
    type metadata accessor for OpacityTransition();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1003AF5D8);
  }

  return result;
}

uint64_t sub_1000CBE58()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000CBEC8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

char *sub_1000CC008(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

unint64_t sub_1000CC23C()
{
  result = qword_1003AF660;
  if (!qword_1003AF660)
  {
    sub_100005EA8(&qword_1003AF668);
    sub_10001BAEC(&qword_1003AF670, &qword_1003AF678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AF660);
  }

  return result;
}

uint64_t sub_1000CC38C()
{
  type metadata accessor for MaskModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  type metadata accessor for _MaskAlignmentEffect();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1000CC4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = sub_100005AD4(&qword_1003AF688);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - v12;
  (*(v11 + 16))(&v17 - v12, a1, v10);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = swift_allocObject();
  (*(v11 + 32))(v15 + v14, v13, v10);
  a6(a3, a5, v15);
}

uint64_t sub_1000CC648()
{
  swift_errorRetain();
  sub_100005AD4(&qword_1003AF688);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1000CC6A0()
{
  v1 = sub_100005AD4(&qword_1003AF688);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000CC7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_100291650(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_10028DD34(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_100290D9C();
        v14 = v16;
      }

      result = sub_1002B4118(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_1000CC8A4(void *a1, uint64_t a2)
{
  v3 = v2;
  if (*a1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1[1] == 1;
  }

  if (v5)
  {
    sub_100009EBC(a1, &qword_1003AFB10);
    v8 = sub_10028DFAC(a2);
    if (v9)
    {
      v10 = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v14 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_100290C20();
        v12 = v14;
      }

      sub_1000DC2EC(*(v12 + 56) + 16 * v10, &v15);
      sub_1002B3F88(v10, v12);
      *v3 = v12;
    }

    else
    {
      v15 = xmmword_1002D32F0;
    }

    return sub_100009EBC(&v15, &qword_1003AFB10);
  }

  else
  {
    sub_1000DC2EC(a1, &v15);
    v6 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    result = sub_100291C7C(&v15, a2, v6);
    *v2 = v13;
  }

  return result;
}