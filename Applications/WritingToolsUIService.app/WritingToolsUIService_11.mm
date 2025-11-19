uint64_t sub_10012F098(uint64_t a1)
{
  v2 = type metadata accessor for PreferredContentSizeModifier(0);
  v3 = *(*(v2 - 1) + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v37 - v8;
  v10 = a1 + *(v7 + 44);
  v11 = *v10;
  v12 = *(v10 + 8);
  LOBYTE(v41) = v11;
  *(&v41 + 1) = v12;
  LOBYTE(v39) = 1;
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.setter();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong enableSmallDetent:*(a1 + 9)];
    swift_unknownObjectRelease();
  }

  v14 = type metadata accessor for FeedbackFeatureFlags();
  v43 = v14;
  v44 = sub_10013124C(&qword_10025E060, &type metadata accessor for FeedbackFeatureFlags);
  v15 = sub_10002DB6C(&v41);
  (*(*(v14 - 8) + 104))(v15, enum case for FeedbackFeatureFlags.CentralizedFeedback(_:), v14);
  LOBYTE(v14) = isFeatureEnabled(_:)();
  sub_10000F4B4(&v41);
  if (v14)
  {
    v16 = swift_unknownObjectWeakLoadStrong();
    if (v16)
    {
      v17 = v16;
      if ([v16 respondsToSelector:"setFeedbackHiddenDetentEnabled:"])
      {
        v18 = a1 + v2[8];
        v19 = *v18;
        v20 = *(v18 + 8);
        LOBYTE(v18) = *(v18 + 16);
        *&v41 = v19;
        *(&v41 + 1) = v20;
        LOBYTE(v42) = v18;
        sub_10000341C(&qword_100262800, &qword_1001D9490);
        Binding.wrappedValue.getter();
        [v17 setFeedbackHiddenDetentEnabled:LOBYTE(v39)];
      }

      swift_unknownObjectRelease();
    }
  }

  if (qword_10025A730 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000F34C(v21, qword_100276FF8);
  sub_100130728(a1, v9);
  sub_100130728(a1, v6);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v38 = v25;
    *v24 = 134218242;
    v26 = &v9[v2[10]];
    v27 = *(v26 + 2);
    v41 = *v26;
    v42 = v27;
    sub_10000341C(&qword_1002634C0, &qword_1001DAE28);
    State.wrappedValue.getter();
    v28 = v40;
    sub_1001319FC(v9, type metadata accessor for PreferredContentSizeModifier);
    *(v24 + 4) = v28;
    *(v24 + 12) = 2080;
    v29 = &v6[v2[9]];
    v30 = *v29;
    v31 = v29[1];

    sub_1001319FC(v6, type metadata accessor for PreferredContentSizeModifier);
    v32 = sub_10002510C(v30, v31, &v38);

    *(v24 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v22, v23, " onAppear  preferredContentSizeChanged%f from %s", v24, 0x16u);
    sub_10000F4B4(v25);
  }

  else
  {

    sub_1001319FC(v6, type metadata accessor for PreferredContentSizeModifier);
    sub_1001319FC(v9, type metadata accessor for PreferredContentSizeModifier);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v34 = result;
    v35 = a1 + v2[10];
    v36 = *(v35 + 16);
    v41 = *v35;
    v42 = v36;
    sub_10000341C(&qword_1002634C0, &qword_1001DAE28);
    State.wrappedValue.getter();
    [v34 preferredContentSizeChanged:{v39, v40}];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10012F518(uint64_t a1)
{
  v2 = type metadata accessor for PreferredContentSizeModifier(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_10025A730 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000F34C(v6, qword_100276FF8);
  sub_100130728(a1, v5);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20[0] = v10;
    *v9 = 136315138;
    v11 = &v5[*(v2 + 36)];
    v12 = *v11;
    v13 = v11[1];

    sub_1001319FC(v5, type metadata accessor for PreferredContentSizeModifier);
    v14 = sub_10002510C(v12, v13, v20);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "onDisappear %s", v9, 0xCu);
    sub_10000F4B4(v10);
  }

  else
  {

    sub_1001319FC(v5, type metadata accessor for PreferredContentSizeModifier);
  }

  v15 = a1 + *(v2 + 44);
  v16 = *v15;
  v17 = *(v15 + 8);
  LOBYTE(v20[0]) = v16;
  v20[1] = v17;
  v19[15] = 0;
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  return State.wrappedValue.setter();
}

uint64_t sub_10012F758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000341C(&qword_100263450, &qword_1001DADC0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v9 = (a2 + *(sub_10000341C(&qword_100263458, &qword_1001DADC8) + 44));
  v10 = *(v5 + 16);
  v10(v8, a1, v4);
  v10(v9, v8, v4);
  v11 = &v9[*(sub_10000341C(&qword_100263460, &qword_1001DADD0) + 48)];
  *v11 = 0;
  v11[8] = 1;
  *(v11 + 2) = 0x3FF0000000000000;
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_10012F8C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a1;
  v3 = sub_10000341C(&qword_100263E10, &qword_1001DBA90);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v44 - v6;
  v8 = sub_10000341C(&qword_100263E18, &qword_1001DBA98);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v44 - v10;
  *v11 = static VerticalAlignment.center.getter();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v12 = &v11[*(sub_10000341C(&qword_100263E20, &qword_1001DBAA0) + 44)];
  v13 = *(v4 + 16);
  v13(v7, v45, v3);
  v13(v12, v7, v3);
  v14 = &v12[*(sub_10000341C(&qword_100263E28, &qword_1001DBAA8) + 48)];
  *v14 = 0;
  v14[8] = 1;
  (*(v4 + 8))(v7, v3);
  static Font.Weight.semibold.getter();
  sub_100007120(&qword_100263E30, &qword_100263E18, &qword_1001DBA98);
  View.fontWeight(_:)();
  sub_10000F500(v11, &qword_100263E18, &qword_1001DBA98);
  if (qword_10025A7C0 != -1)
  {
    swift_once();
  }

  v15 = qword_100277170;
  *(a2 + *(sub_10000341C(&qword_100263E38, &qword_1001DBAB0) + 36)) = v15;

  LOBYTE(v15) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = a2 + *(sub_10000341C(&qword_100263E40, &qword_1001DBAB8) + 36);
  *v24 = v15;
  *(v24 + 8) = v17;
  *(v24 + 16) = v19;
  *(v24 + 24) = v21;
  *(v24 + 32) = v23;
  *(v24 + 40) = 0;
  LOBYTE(v15) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = a2 + *(sub_10000341C(&qword_100263E48, &qword_1001DBAC0) + 36);
  *v33 = v15;
  *(v33 + 8) = v26;
  *(v33 + 16) = v28;
  *(v33 + 24) = v30;
  *(v33 + 32) = v32;
  *(v33 + 40) = 0;
  LOBYTE(v15) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  result = sub_10000341C(&qword_100263E50, &qword_1001DBAC8);
  v43 = a2 + *(result + 36);
  *v43 = v15;
  *(v43 + 8) = v35;
  *(v43 + 16) = v37;
  *(v43 + 24) = v39;
  *(v43 + 32) = v41;
  *(v43 + 40) = 0;
  return result;
}

uint64_t sub_10012FC40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ColorScheme();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v24 - v11;
  v13 = type metadata accessor for BlendMode();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v2 == 1)
  {
    (*(v14 + 104))(v17, enum case for BlendMode.normal(_:), v13);
  }

  else
  {
    v25 = a1;
    v18 = &v2[*(type metadata accessor for CommonUIBlendModifier(0) + 20)];
    sub_10011F04C(v12);
    (*(v6 + 104))(v10, enum case for ColorScheme.dark(_:), v5);
    LOBYTE(v18) = static ColorScheme.== infix(_:_:)();
    v19 = *(v6 + 8);
    v19(v10, v5);
    v19(v12, v5);
    if (v18)
    {
      v20 = &enum case for BlendMode.plusLighter(_:);
    }

    else
    {
      v20 = &enum case for BlendMode.plusDarker(_:);
    }

    (*(v14 + 104))(v17, *v20, v13);
    a1 = v25;
  }

  v21 = sub_10000341C(&qword_100263BF8, &qword_1001DB6E0);
  (*(v14 + 32))(a2 + *(v21 + 36), v17, v13);
  v22 = sub_10000341C(&qword_100263C00, &qword_1001DB6E8);
  return (*(*(v22 - 8) + 16))(a2, a1, v22);
}

uint64_t sub_10012FF10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000341C(&qword_100263BB0, &qword_1001DB698);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_10012FF9C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000341C(&unk_1002637B0, &qword_1001D8498);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = enum case for DynamicTypeSize.accessibility1(_:);
  v7 = type metadata accessor for DynamicTypeSize();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  sub_10013124C(&qword_100261E90, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    sub_10000341C(&qword_1002637C0, &qword_1001DB180);
    sub_100007120(&qword_1002637C8, &qword_1002637C0, &qword_1001DB180);
    sub_100007120(&qword_1002637D0, &unk_1002637B0, &qword_1001D8498);
    View.dynamicTypeSize<A>(_:)();
    sub_10000F500(v5, &unk_1002637B0, &qword_1001D8498);
    v9 = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    result = sub_10000341C(&qword_1002637D8, &qword_1001DB188);
    v18 = a1 + *(result + 36);
    *v18 = v9;
    *(v18 + 8) = v11;
    *(v18 + 16) = v13;
    *(v18 + 24) = v15;
    *(v18 + 32) = v17;
    *(v18 + 40) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100130208@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v6 = sub_10000341C(a2, a3);
  v7 = *(*(v6 - 8) + 16);

  return v7(a4, a1, v6);
}

uint64_t sub_100130278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_10000341C(&qword_1002637A0, &qword_1001DB168);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  result = sub_10000341C(&qword_1002637A8, &unk_1001DB170);
  v15 = a2 + *(result + 36);
  *v15 = v4;
  *(v15 + 8) = v6;
  *(v15 + 16) = v8;
  *(v15 + 24) = v10;
  *(v15 + 32) = v12;
  *(v15 + 40) = 0;
  return result;
}

uint64_t sub_100130348(uint64_t a1)
{
  v2 = sub_10000341C(&qword_100263760, &qword_1001DB108);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v18 - v4;
  v6 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = sub_10000341C(&qword_100263768, &qword_1001DB110);
  (*(*(v15 - 8) + 16))(v5, a1, v15);
  v16 = &v5[*(v2 + 36)];
  *v16 = v6;
  *(v16 + 1) = v8;
  *(v16 + 2) = v10;
  *(v16 + 3) = v12;
  *(v16 + 4) = v14;
  v16[40] = 0;
  sub_100132038();
  View.bold(_:)();
  return sub_10000F500(v5, &qword_100263760, &qword_1001DB108);
}

uint64_t sub_1001304A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Font.headline.getter();
  KeyPath = swift_getKeyPath();
  v6 = sub_10000341C(&qword_1002637E0, &qword_1001DB190);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  result = sub_10000341C(&unk_1002637E8, &qword_1001DB198);
  v8 = (a2 + *(result + 36));
  *v8 = KeyPath;
  v8[1] = v4;
  return result;
}

uint64_t sub_100130728(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreferredContentSizeModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001307A8()
{
  result = qword_100263480;
  if (!qword_100263480)
  {
    sub_100003E34(&qword_100263468, &qword_1001DADD8);
    sub_100007120(&qword_100263488, &qword_100263478, &unk_1001DADE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263480);
  }

  return result;
}

uint64_t sub_100130860()
{
  v1 = (type metadata accessor for PreferredContentSizeModifier(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectWeakDestroy();
  v5 = (v0 + v3 + v1[9]);
  v6 = *v5;

  v7 = *(v5 + 1);

  v8 = *(sub_10000341C(&qword_1002632E0, &qword_1001D11A0) + 32);
  v9 = type metadata accessor for NavigationPath();
  (*(*(v9 - 8) + 8))(&v5[v8], v9);
  v10 = (v0 + v3 + v1[10]);
  v11 = *v10;

  v12 = v10[1];

  v13 = *(v0 + v3 + v1[11] + 8);

  v14 = *(v0 + v3 + v1[12] + 16);

  v15 = *(v0 + v3 + v1[13] + 8);

  v16 = *(v0 + v3 + v1[14] + 16);

  v17 = *(v0 + v3 + v1[15] + 8);

  v18 = v0 + v3 + v1[16];
  v19 = *v18;
  v20 = *(v18 + 8);
  j__swift_release();

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100130A10(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PreferredContentSizeModifier(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void *sub_100130A84(double *a1)
{
  v3 = *(type metadata accessor for PreferredContentSizeModifier(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10012E3A0(a1, v4);
}

uint64_t sub_100130B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000341C(&qword_10025C5D0, &qword_1001D15A0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Font.Design();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = static Font.system(size:weight:design:)();
  sub_10000F500(v7, &qword_10025C5D0, &qword_1001D15A0);
  KeyPath = swift_getKeyPath();
  v11 = sub_10000341C(&qword_100263D48, &qword_1001DB900);
  (*(*(v11 - 8) + 16))(a2, a1, v11);
  result = sub_10000341C(&qword_100263D50, &qword_1001DB908);
  v13 = (a2 + *(result + 36));
  *v13 = KeyPath;
  v13[1] = v9;
  return result;
}

uint64_t sub_100130CA4@<X0>(char a1@<W1>, uint64_t a2@<X8>, double a3@<D0>)
{
  v27[1] = a2;
  v27[0] = sub_10000341C(&qword_100263D20, &qword_1001DB8E0);
  v5 = *(*(v27[0] - 8) + 64);
  __chkstk_darwin(v27[0]);
  v7 = v27 - v6;
  v8 = type metadata accessor for PrimaryButtonStyle(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000341C(&qword_100263D28, &qword_1001DB8E8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v27 - v15;
  if (a1)
  {
    v17 = static Color.clear.getter();
    KeyPath = swift_getKeyPath();
    *v11 = 0;
    *(v11 + 1) = v17;
    *(v11 + 2) = a3;
    *(v11 + 3) = 0;
    *(v11 + 4) = 0;
    *(v11 + 20) = 1;
    v19 = *(v8 + 40);
    *&v11[v19] = swift_getKeyPath();
    sub_10000341C(&qword_100262940, &unk_1001D0560);
    swift_storeEnumTagMultiPayload();
    v20 = &v11[*(v8 + 44)];
    *v20 = KeyPath;
  }

  else
  {
    v24 = swift_getKeyPath();
    *v11 = 0;
    *(v11 + 1) = 0;
    *(v11 + 2) = a3;
    *(v11 + 3) = 0;
    *(v11 + 4) = 0;
    *(v11 + 20) = 1;
    v25 = *(v8 + 40);
    *&v11[v25] = swift_getKeyPath();
    sub_10000341C(&qword_100262940, &unk_1001D0560);
    swift_storeEnumTagMultiPayload();
    v20 = &v11[*(v8 + 44)];
    *v20 = v24;
  }

  v20[8] = 0;
  v21 = sub_10000341C(&qword_100263D30, &qword_1001DB8F0);
  v22 = sub_100007120(&qword_100263D38, &qword_100263D30, &qword_1001DB8F0);
  v23 = sub_10013124C(&qword_10025C9B8, type metadata accessor for PrimaryButtonStyle);
  View.buttonStyle<A>(_:)();
  sub_1001319FC(v11, type metadata accessor for PrimaryButtonStyle);
  (*(v13 + 16))(v7, v16, v12);
  swift_storeEnumTagMultiPayload();
  v27[2] = v21;
  v27[3] = v8;
  v27[4] = v22;
  v27[5] = v23;
  swift_getOpaqueTypeConformance2();
  _ConditionalContent<>.init(storage:)();
  return (*(v13 + 8))(v16, v12);
}

__n128 sub_10013114C@<Q0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10013124C(&qword_10025A910, type metadata accessor for PresentationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = v3[4];
  *a2 = result;
  return result;
}

uint64_t sub_100131234(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10013124C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001312E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100131370()
{
  result = qword_100263530;
  if (!qword_100263530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263530);
  }

  return result;
}

uint64_t sub_1001313C4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1001313F0(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.foregroundColor.setter();
}

uint64_t sub_100131464(uint64_t a1)
{
  v2 = type metadata accessor for Image.Scale();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.imageScale.setter();
}

uint64_t sub_100131530@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10013155C(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.foregroundColor.setter();
}

unint64_t sub_100131588()
{
  result = qword_100263598;
  if (!qword_100263598)
  {
    sub_100003E34(&unk_100263588, &qword_1001DAF60);
    sub_100131640();
    sub_100007120(&qword_1002635E8, &qword_1002635F0, &qword_1001DAFA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263598);
  }

  return result;
}

unint64_t sub_100131640()
{
  result = qword_1002635A0;
  if (!qword_1002635A0)
  {
    sub_100003E34(&qword_100263580, &qword_1001DAF58);
    sub_1001316CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002635A0);
  }

  return result;
}

unint64_t sub_1001316CC()
{
  result = qword_1002635A8;
  if (!qword_1002635A8)
  {
    sub_100003E34(&qword_100263578, &qword_1001DAF50);
    sub_100131784();
    sub_100007120(&qword_1002635E0, &unk_10025E1F0, &unk_1001D39E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002635A8);
  }

  return result;
}

unint64_t sub_100131784()
{
  result = qword_1002635B0;
  if (!qword_1002635B0)
  {
    sub_100003E34(&qword_100263570, &qword_1001DAF48);
    sub_10013183C();
    sub_100007120(&unk_1002635D0, &qword_10025CA90, &qword_1001DAFA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002635B0);
  }

  return result;
}

unint64_t sub_10013183C()
{
  result = qword_1002635B8;
  if (!qword_1002635B8)
  {
    sub_100003E34(&qword_1002634F8, &qword_1001DAE88);
    sub_100133750(&unk_1002635C0, &qword_1002634F0, &qword_1001DAE80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002635B8);
  }

  return result;
}

unint64_t sub_1001318F0()
{
  result = qword_100263630;
  if (!qword_100263630)
  {
    sub_100003E34(&qword_100263608, &qword_1001DAFB8);
    sub_100007120(&qword_100263638, &qword_100263628, &qword_1001DAFD8);
    sub_1001319A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263630);
  }

  return result;
}

unint64_t sub_1001319A8()
{
  result = qword_100263640;
  if (!qword_100263640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263640);
  }

  return result;
}

uint64_t sub_1001319FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100131A6C()
{
  result = qword_100263688;
  if (!qword_100263688)
  {
    sub_100003E34(&qword_100263660, &qword_1001DB018);
    sub_100131B24();
    sub_100007120(&unk_10025DC90, &qword_1002636C0, &qword_1001D3140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263688);
  }

  return result;
}

unint64_t sub_100131B24()
{
  result = qword_100263690;
  if (!qword_100263690)
  {
    sub_100003E34(&qword_100263680, &qword_1001DB068);
    sub_100131BDC();
    sub_100007120(&unk_1002635D0, &qword_10025CA90, &qword_1001DAFA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263690);
  }

  return result;
}

unint64_t sub_100131BDC()
{
  result = qword_100263698;
  if (!qword_100263698)
  {
    sub_100003E34(&qword_100263678, &qword_1001DB060);
    sub_100007120(&unk_1002636A0, &qword_100263670, &qword_1001DB058);
    sub_100007120(&unk_10025DCA0, &unk_1002636B0, &unk_1001D16F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263698);
  }

  return result;
}

unint64_t sub_100131CC0()
{
  result = qword_1002636E8;
  if (!qword_1002636E8)
  {
    sub_100003E34(&qword_1002636D8, &qword_1001DB0B0);
    sub_10013124C(&qword_10025DC18, &type metadata accessor for ButtonStyleConfiguration.Label);
    sub_100007120(&unk_10025DCA0, &unk_1002636B0, &unk_1001D16F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002636E8);
  }

  return result;
}

unint64_t sub_100131DA8()
{
  result = qword_100263728;
  if (!qword_100263728)
  {
    sub_100003E34(&qword_100263708, &qword_1001DB0D8);
    sub_100131E60();
    sub_100007120(&unk_10025DCA0, &unk_1002636B0, &unk_1001D16F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263728);
  }

  return result;
}

unint64_t sub_100131E60()
{
  result = qword_100263730;
  if (!qword_100263730)
  {
    sub_100003E34(&qword_100263720, &unk_1001DB0F0);
    sub_100007120(&qword_100263738, &qword_100263718, &qword_1001DB0E8);
    sub_100007120(&unk_10025DC90, &qword_1002636C0, &qword_1001D3140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263730);
  }

  return result;
}

unint64_t sub_100131F44()
{
  result = qword_100263740;
  if (!qword_100263740)
  {
    sub_100003E34(&qword_100263710, &qword_1001DB0E0);
    sub_100003E34(&qword_100263708, &qword_1001DB0D8);
    sub_100131DA8();
    swift_getOpaqueTypeConformance2();
    sub_100007120(&unk_10025DB20, &qword_100263750, &qword_1001D1700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263740);
  }

  return result;
}

unint64_t sub_100132038()
{
  result = qword_100263770;
  if (!qword_100263770)
  {
    sub_100003E34(&qword_100263760, &qword_1001DB108);
    sub_100007120(&qword_100263778, &qword_100263768, &qword_1001DB110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263770);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SwiftUI(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SwiftUI(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

__n128 sub_1001321F8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10013220C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_100132254(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1001322F8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100003E34(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_10013235C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1001323D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10000341C(&qword_10025B3F0, &qword_1001CFD60);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1001324A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10000341C(&qword_10025B3F0, &qword_1001CFD60);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100132578()
{
  sub_1001322F8(319, &unk_100263860, &unk_10025B1D0, &qword_1001D31D0, &type metadata accessor for Binding);
  if (v0 <= 0x3F)
  {
    sub_10013235C(319, &qword_10025B480, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10013267C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_10000341C(&qword_10025D8A0, &unk_1001D2B90);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_10013274C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_10000341C(&qword_10025D8A0, &unk_1001D2B90);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1001327F8()
{
  sub_10013235C(319, qword_10025D910, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1001328FC()
{
  result = qword_1002639C0;
  if (!qword_1002639C0)
  {
    sub_100003E34(&unk_1002634A0, &unk_1001DAE08);
    sub_100132988();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002639C0);
  }

  return result;
}

unint64_t sub_100132988()
{
  result = qword_1002639C8;
  if (!qword_1002639C8)
  {
    sub_100003E34(&qword_100263498, &qword_1001DAE00);
    sub_100132A14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002639C8);
  }

  return result;
}

unint64_t sub_100132A14()
{
  result = qword_1002639D0;
  if (!qword_1002639D0)
  {
    sub_100003E34(&qword_100263490, &qword_1001DADF8);
    sub_100003E34(&qword_100263470, &qword_1001DADE0);
    sub_100003E34(&qword_100263468, &qword_1001DADD8);
    type metadata accessor for NavigationPath();
    sub_1001307A8();
    sub_10013124C(&qword_10025B3E0, &type metadata accessor for NavigationPath);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100007120(&qword_1002639D8, &qword_1002639E0, &qword_1001DB2C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002639D0);
  }

  return result;
}

unint64_t sub_100132BA8()
{
  result = qword_1002639E8;
  if (!qword_1002639E8)
  {
    sub_100003E34(&qword_1002634D0, &qword_1001DAE60);
    sub_100007120(&qword_1002639F0, &qword_1002634C8, &qword_1001DAE58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002639E8);
  }

  return result;
}

unint64_t sub_100132CA8()
{
  result = qword_100263A00;
  if (!qword_100263A00)
  {
    sub_100003E34(&qword_100263528, &qword_1001DAEE8);
    sub_100132D60();
    sub_100007120(&qword_1002635E8, &qword_1002635F0, &qword_1001DAFA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263A00);
  }

  return result;
}

unint64_t sub_100132D60()
{
  result = qword_100263A08;
  if (!qword_100263A08)
  {
    sub_100003E34(&qword_100263508, &qword_1001DAE98);
    sub_100132DEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263A08);
  }

  return result;
}

unint64_t sub_100132DEC()
{
  result = qword_100263A10;
  if (!qword_100263A10)
  {
    sub_100003E34(&qword_100263500, &qword_1001DAE90);
    sub_10013183C();
    sub_100007120(&qword_100263A18, &qword_100263520, &qword_1001DAEE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263A10);
  }

  return result;
}

uint64_t sub_100132EE8()
{
  sub_100003E34(&unk_100263588, &qword_1001DAF60);
  type metadata accessor for AutomaticHoverEffect();
  sub_100131588();
  sub_10013124C(&qword_1002635F8, &type metadata accessor for AutomaticHoverEffect);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100132FA0()
{
  result = qword_100263A30;
  if (!qword_100263A30)
  {
    sub_100003E34(&qword_100263A38, &qword_1001DB2D8);
    sub_100003E34(&qword_100263610, &qword_1001DAFC0);
    sub_100003E34(&qword_100263608, &qword_1001DAFB8);
    type metadata accessor for PrimaryButtonStyle(255);
    sub_1001318F0();
    sub_10013124C(&qword_10025C9B8, type metadata accessor for PrimaryButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_1000492B0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263A30);
  }

  return result;
}

unint64_t sub_10013310C()
{
  result = qword_100263A40;
  if (!qword_100263A40)
  {
    sub_100003E34(&qword_1002636C8, &qword_1001DB0A0);
    sub_100003E34(&qword_100263660, &qword_1001DB018);
    sub_100131A6C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263A40);
  }

  return result;
}

unint64_t sub_1001331D8()
{
  result = qword_100263A48;
  if (!qword_100263A48)
  {
    sub_100003E34(&qword_1002636F8, &qword_1001DB0C8);
    sub_100133290();
    sub_100007120(&qword_100263A60, &qword_100263700, &qword_1001DB0D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263A48);
  }

  return result;
}

unint64_t sub_100133290()
{
  result = qword_100263A50;
  if (!qword_100263A50)
  {
    sub_100003E34(&qword_1002636E0, &qword_1001DB0B8);
    sub_10013331C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263A50);
  }

  return result;
}

unint64_t sub_10013331C()
{
  result = qword_100263A58;
  if (!qword_100263A58)
  {
    sub_100003E34(&qword_1002636F0, &qword_1001DB0C0);
    sub_100003E34(&qword_1002636D8, &qword_1001DB0B0);
    sub_100131CC0();
    swift_getOpaqueTypeConformance2();
    sub_100007120(&unk_10025DB20, &qword_100263750, &qword_1001D1700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263A58);
  }

  return result;
}

unint64_t sub_100133414()
{
  result = qword_100263A68;
  if (!qword_100263A68)
  {
    sub_100003E34(&unk_100263A70, qword_1001DB2E0);
    sub_100131F44();
    sub_10013124C(&qword_10025DAA0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263A68);
  }

  return result;
}

uint64_t sub_100133514()
{
  sub_100003E34(&qword_100263760, &qword_1001DB108);
  sub_100132038();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1001335C0()
{
  result = qword_100263A90;
  if (!qword_100263A90)
  {
    sub_100003E34(&qword_100263798, &qword_1001DB160);
    sub_100133678();
    sub_100007120(&unk_10025AAC0, &qword_1002628D0, &qword_1001D18D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263A90);
  }

  return result;
}

unint64_t sub_100133678()
{
  result = qword_100263A98;
  if (!qword_100263A98)
  {
    sub_100003E34(&qword_100263790, &qword_1001DB128);
    sub_100133750(&qword_100263AA0, &qword_100260C08, &qword_1001D5F90);
    sub_100007120(&unk_10025DB20, &qword_100263750, &qword_1001D1700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263A98);
  }

  return result;
}

uint64_t sub_100133750(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003E34(a2, a3);
    sub_10013124C(&qword_10025DC18, &type metadata accessor for ButtonStyleConfiguration.Label);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001337FC()
{
  result = qword_100263AA8;
  if (!qword_100263AA8)
  {
    sub_100003E34(&qword_1002637A8, &unk_1001DB170);
    sub_100007120(&qword_100263AB0, &qword_1002637A0, &qword_1001DB168);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263AA8);
  }

  return result;
}

unint64_t sub_1001338B8()
{
  result = qword_100263AB8;
  if (!qword_100263AB8)
  {
    sub_100003E34(&qword_1002637D8, &qword_1001DB188);
    sub_100003E34(&qword_1002637C0, &qword_1001DB180);
    sub_100003E34(&unk_1002637B0, &qword_1001D8498);
    sub_100007120(&qword_1002637C8, &qword_1002637C0, &qword_1001DB180);
    sub_100007120(&qword_1002637D0, &unk_1002637B0, &qword_1001D8498);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263AB8);
  }

  return result;
}

unint64_t sub_100133A18()
{
  result = qword_100263AC0;
  if (!qword_100263AC0)
  {
    sub_100003E34(&unk_1002637E8, &qword_1001DB198);
    sub_100007120(&qword_100263AC8, &qword_1002637E0, &qword_1001DB190);
    sub_100007120(&unk_10025DCA0, &unk_1002636B0, &unk_1001D16F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263AC0);
  }

  return result;
}

unint64_t sub_100133B00()
{
  result = qword_100263AD0;
  if (!qword_100263AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263AD0);
  }

  return result;
}

unint64_t sub_100133B74()
{
  result = qword_100263AD8;
  if (!qword_100263AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263AD8);
  }

  return result;
}

unint64_t sub_100133C5C()
{
  result = qword_100263B50;
  if (!qword_100263B50)
  {
    sub_100003E34(&qword_100263B08, &qword_1001DB5F8);
    sub_100133D14();
    sub_100007120(&unk_10025DCA0, &unk_1002636B0, &unk_1001D16F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263B50);
  }

  return result;
}

unint64_t sub_100133D14()
{
  result = qword_100263B58;
  if (!qword_100263B58)
  {
    sub_100003E34(&qword_100263B48, &qword_1001DB638);
    sub_100133DA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263B58);
  }

  return result;
}

unint64_t sub_100133DA0()
{
  result = qword_100263B60;
  if (!qword_100263B60)
  {
    sub_100003E34(&qword_100263B40, &qword_1001DB630);
    sub_10013124C(&qword_100263B68, &type metadata accessor for LabelStyleConfiguration.Title);
    sub_100007120(&unk_10025DB20, &qword_100263750, &qword_1001D1700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263B60);
  }

  return result;
}

uint64_t sub_100133E90(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_100263B10, &qword_1001DB600);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100133F00()
{
  result = qword_100263B98;
  if (!qword_100263B98)
  {
    sub_100003E34(&qword_100263B88, &qword_1001DB688);
    sub_100133FB8();
    sub_100007120(&unk_10025DCA0, &unk_1002636B0, &unk_1001D16F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263B98);
  }

  return result;
}

unint64_t sub_100133FB8()
{
  result = qword_100263BA0;
  if (!qword_100263BA0)
  {
    sub_100003E34(&qword_100263B80, &qword_1001DB680);
    sub_100007120(&qword_100263BA8, &qword_100263B90, &qword_1001DB690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263BA0);
  }

  return result;
}

uint64_t sub_100134070()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_1001340B8()
{
  v1 = type metadata accessor for GeometryProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 49) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100134184()
{
  v1 = *(*(type metadata accessor for GeometryProxy() - 8) + 80);

  return sub_10012AD3C((v0 + 16));
}

uint64_t getEnumTagSinglePayload for RewritingViewButtonViewModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for RewritingViewButtonViewModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1001342C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000341C(&qword_10025D8A0, &unk_1001D2B90);
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

uint64_t sub_1001343B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10000341C(&qword_10025D8A0, &unk_1001D2B90);
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

void sub_100134494()
{
  sub_10013235C(319, qword_10025D910, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_10013453C()
{
  result = qword_100263C98;
  if (!qword_100263C98)
  {
    sub_100003E34(&qword_100263B00, &qword_1001DB5F0);
    sub_1001345C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263C98);
  }

  return result;
}

unint64_t sub_1001345C8()
{
  result = qword_100263CA0;
  if (!qword_100263CA0)
  {
    sub_100003E34(&unk_100263AF0, &qword_1001DB5B0);
    sub_100134654();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263CA0);
  }

  return result;
}

unint64_t sub_100134654()
{
  result = qword_100263CA8;
  if (!qword_100263CA8)
  {
    sub_100003E34(&qword_100263AE8, &qword_1001DB5A8);
    sub_100007120(&qword_100263CB0, &qword_100263AE0, &qword_1001DB5A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263CA8);
  }

  return result;
}

unint64_t sub_100134710()
{
  result = qword_100263CB8;
  if (!qword_100263CB8)
  {
    sub_100003E34(&qword_100263CC0, &qword_1001DB7A8);
    sub_100133F00();
    sub_100007120(&qword_100263BA8, &qword_100263B90, &qword_1001DB690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263CB8);
  }

  return result;
}

unint64_t sub_100134810()
{
  result = qword_100263CD0;
  if (!qword_100263CD0)
  {
    sub_100003E34(&qword_100263BC0, &qword_1001DB6A8);
    sub_100007120(&qword_100263CD8, &qword_100263BB8, &qword_1001DB6A0);
    sub_100007120(&qword_100263CE0, &qword_100263CE8, &qword_1001DB7B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263CD0);
  }

  return result;
}

unint64_t sub_1001348F8()
{
  result = qword_100263CF0;
  if (!qword_100263CF0)
  {
    sub_100003E34(&qword_100263BE8, &qword_1001DB6D0);
    sub_100134984();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263CF0);
  }

  return result;
}

unint64_t sub_100134984()
{
  result = qword_100263CF8;
  if (!qword_100263CF8)
  {
    sub_100003E34(&qword_100263BE0, &qword_1001DB6C8);
    sub_100134A10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263CF8);
  }

  return result;
}

unint64_t sub_100134A10()
{
  result = qword_100263D00;
  if (!qword_100263D00)
  {
    sub_100003E34(&qword_100263BD8, &qword_1001DB6C0);
    sub_100007120(&qword_100263D08, &qword_100263BD0, &qword_1001DB6B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263D00);
  }

  return result;
}

unint64_t sub_100134ACC()
{
  result = qword_100263D10;
  if (!qword_100263D10)
  {
    sub_100003E34(&qword_100263BF8, &qword_1001DB6E0);
    sub_100007120(&qword_100263D18, &qword_100263C00, &qword_1001DB6E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263D10);
  }

  return result;
}

unint64_t sub_100134C30()
{
  result = qword_100263D78;
  if (!qword_100263D78)
  {
    sub_100003E34(&qword_100263D80, &qword_1001DB988);
    sub_100003E34(&qword_100263D30, &qword_1001DB8F0);
    type metadata accessor for PrimaryButtonStyle(255);
    sub_100007120(&qword_100263D38, &qword_100263D30, &qword_1001DB8F0);
    sub_10013124C(&qword_10025C9B8, type metadata accessor for PrimaryButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263D78);
  }

  return result;
}

unint64_t sub_100134DBC()
{
  result = qword_100263D90;
  if (!qword_100263D90)
  {
    sub_100003E34(&qword_100263D50, &qword_1001DB908);
    sub_100007120(&qword_100263D98, &qword_100263D48, &qword_1001DB900);
    sub_100007120(&unk_10025DCA0, &unk_1002636B0, &unk_1001D16F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263D90);
  }

  return result;
}

unint64_t sub_100134EA4()
{
  result = qword_100263DA0;
  if (!qword_100263DA0)
  {
    sub_100003E34(&qword_100263D70, &qword_1001DB928);
    sub_100134F5C();
    sub_100007120(&unk_10025AAC0, &qword_1002628D0, &qword_1001D18D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263DA0);
  }

  return result;
}

unint64_t sub_100134F5C()
{
  result = qword_100263DA8;
  if (!qword_100263DA8)
  {
    sub_100003E34(&qword_100263D60, &qword_1001DB918);
    sub_100135014();
    sub_100007120(&qword_100263DC8, &qword_100263D68, &qword_1001DB920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263DA8);
  }

  return result;
}

unint64_t sub_100135014()
{
  result = qword_100263DB0;
  if (!qword_100263DB0)
  {
    sub_100003E34(&qword_100263D58, &qword_1001DB910);
    sub_100133678();
    sub_100007120(&qword_100264120, &qword_100263DC0, &qword_1001DB990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263DB0);
  }

  return result;
}

unint64_t sub_100135120()
{
  result = qword_100263DF8;
  if (!qword_100263DF8)
  {
    sub_100003E34(&qword_100263DE0, &qword_1001DBA68);
    sub_10013183C();
    sub_100007120(&unk_10025DB20, &qword_100263750, &qword_1001D1700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263DF8);
  }

  return result;
}

unint64_t sub_1001351EC()
{
  result = qword_100263EC0;
  if (!qword_100263EC0)
  {
    sub_100003E34(&qword_100263E00, &qword_1001DBA80);
    sub_1001352A4();
    sub_100007120(&qword_100263ED0, &qword_100263E08, &qword_1001DBA88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263EC0);
  }

  return result;
}

unint64_t sub_1001352A4()
{
  result = qword_100263EC8;
  if (!qword_100263EC8)
  {
    sub_100003E34(&qword_100263DF0, &qword_1001DBA78);
    sub_100003E34(&qword_100263DE0, &qword_1001DBA68);
    sub_100135120();
    swift_getOpaqueTypeConformance2();
    sub_100007120(&unk_10025DC90, &qword_1002636C0, &qword_1001D3140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263EC8);
  }

  return result;
}

unint64_t sub_10013539C()
{
  result = qword_100263ED8;
  if (!qword_100263ED8)
  {
    sub_100003E34(&qword_100263E50, &qword_1001DBAC8);
    sub_100135428();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263ED8);
  }

  return result;
}

unint64_t sub_100135428()
{
  result = qword_100263EE0;
  if (!qword_100263EE0)
  {
    sub_100003E34(&qword_100263E48, &qword_1001DBAC0);
    sub_1001354B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263EE0);
  }

  return result;
}

unint64_t sub_1001354B4()
{
  result = qword_100263EE8;
  if (!qword_100263EE8)
  {
    sub_100003E34(&qword_100263E40, &qword_1001DBAB8);
    sub_100135540();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263EE8);
  }

  return result;
}

unint64_t sub_100135540()
{
  result = qword_100263EF0;
  if (!qword_100263EF0)
  {
    sub_100003E34(&qword_100263E38, &qword_1001DBAB0);
    sub_100003E34(&qword_100263E18, &qword_1001DBA98);
    sub_100007120(&qword_100263E30, &qword_100263E18, &qword_1001DBA98);
    swift_getOpaqueTypeConformance2();
    sub_100007120(&unk_10025DB20, &qword_100263750, &qword_1001D1700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263EF0);
  }

  return result;
}

unint64_t sub_10013566C()
{
  result = qword_100263EF8;
  if (!qword_100263EF8)
  {
    sub_100003E34(&qword_100263E88, &qword_1001DBB00);
    sub_100135724();
    sub_100007120(&qword_100263F18, &qword_100263E90, &qword_1001DBB08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263EF8);
  }

  return result;
}

unint64_t sub_100135724()
{
  result = qword_100263F00;
  if (!qword_100263F00)
  {
    sub_100003E34(&qword_100263E68, &qword_1001DBAE0);
    sub_1001357B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263F00);
  }

  return result;
}

unint64_t sub_1001357B0()
{
  result = qword_100263F08;
  if (!qword_100263F08)
  {
    sub_100003E34(&qword_100263E60, &qword_1001DBAD8);
    sub_100007120(&qword_100263F10, &qword_100263E58, &qword_1001DBAD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263F08);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TitleImageLabelStyle(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for TitleImageLabelStyle(uint64_t result, int a2, int a3)
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

unint64_t sub_1001358E4()
{
  result = qword_100263F48;
  if (!qword_100263F48)
  {
    sub_100003E34(&qword_100263F38, &qword_1001DBBB0);
    sub_100135970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263F48);
  }

  return result;
}

unint64_t sub_100135970()
{
  result = qword_100263F50;
  if (!qword_100263F50)
  {
    sub_100003E34(&qword_100263F28, &qword_1001DBBA0);
    sub_100007120(&qword_100263F58, &qword_100263F20, &qword_1001DBB98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263F50);
  }

  return result;
}

unint64_t sub_100135A48()
{
  result = qword_100263F80;
  if (!qword_100263F80)
  {
    sub_100003E34(&qword_100263F70, &qword_1001DBC40);
    sub_100007120(&qword_100263F88, &qword_100263F60, &qword_1001DBC30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263F80);
  }

  return result;
}

uint64_t sub_100135B2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100135B74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100135BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_1000081F8(a3, v24 - v10, &unk_10025B5D0, &qword_1001D05A0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000F500(v11, &unk_10025B5D0, &qword_1001D05A0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_10000F500(a3, &unk_10025B5D0, &qword_1001D05A0);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000F500(a3, &unk_10025B5D0, &qword_1001D05A0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100135E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = type metadata accessor for EnvironmentValues();
  v53 = *(v3 - 8);
  v54 = v3;
  v4 = *(v53 + 64);
  __chkstk_darwin(v3);
  v52 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000341C(&qword_100263F98, &qword_1001DBD50);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v52 - v9;
  v55 = sub_10000341C(&qword_100263FA0, &qword_1001DBD58);
  v11 = *(*(v55 - 8) + 64);
  v12 = __chkstk_darwin(v55);
  v58 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v52 - v15;
  __chkstk_darwin(v14);
  v57 = &v52 - v17;
  v18 = sub_10000341C(&qword_100263FA8, &qword_1001DBD60);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v56 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v52 - v22;
  *v23 = static VerticalAlignment.center.getter();
  *(v23 + 1) = 0;
  v23[16] = 1;
  v24 = sub_10000341C(&qword_100263FB0, &unk_1001DBD68);
  sub_1001365A0(a1, &v23[*(v24 + 44)]);
  v25 = *a1;
  v64 = *(a1 + 8);
  v26 = *(a1 + 16);
  v27 = *(a1 + 24);
  v61 = *(a1 + 32);
  v62 = v26;
  v63 = v25;
  v28 = *(a1 + 56);
  v29 = swift_allocObject();
  v30 = *(a1 + 16);
  v29[1] = *a1;
  v29[2] = v30;
  v31 = *(a1 + 48);
  v29[3] = *(a1 + 32);
  v29[4] = v31;
  v32 = v63;
  v33 = v64;

  sub_10004CC28(&v61, v60);

  sub_1000081F8(&v63, v60, &unk_10025E1A0, &qword_1001D1FA0);
  sub_100063D8C(&v62, v60);
  sub_10000341C(&qword_100263FB8, &qword_1001DBD78);
  sub_100007120(&qword_100263FC0, &qword_100263FB8, &qword_1001DBD78);
  Button.init(action:label:)();
  v34 = &v10[*(v7 + 44)];
  *v34 = 0x4008000000000000;
  v34[8] = 0;

  v35 = v32;
  if ((v33 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v36 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v37 = v52;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10000F500(&v63, &unk_10025E1A0, &qword_1001D1FA0);
    (*(v53 + 8))(v37, v54);
    v35 = v60[0];
  }

  swift_getKeyPath();
  v60[0] = v35;
  sub_100137BE8(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v38 = *(v35 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state);

  if (v38 == 1)
  {
    v39 = 1;
  }

  else
  {

    if ((v33 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v40 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v41 = v52;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_10000F500(&v63, &unk_10025E1A0, &qword_1001D1FA0);
      (*(v53 + 8))(v41, v54);
      v32 = v60[0];
    }

    swift_getKeyPath();
    v60[0] = v32;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v42 = *(v32 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state);

    v39 = v42 == 2;
  }

  KeyPath = swift_getKeyPath();
  v44 = swift_allocObject();
  *(v44 + 16) = v39;
  sub_10002A894(v10, v16, &qword_100263F98, &qword_1001DBD50);
  v45 = &v16[*(v55 + 36)];
  *v45 = KeyPath;
  v45[1] = sub_10002AAC0;
  v45[2] = v44;
  v46 = v57;
  sub_10002A894(v16, v57, &qword_100263FA0, &qword_1001DBD58);
  v47 = v56;
  sub_1000081F8(v23, v56, &qword_100263FA8, &qword_1001DBD60);
  v48 = v58;
  sub_1000081F8(v46, v58, &qword_100263FA0, &qword_1001DBD58);
  v49 = v59;
  sub_1000081F8(v47, v59, &qword_100263FA8, &qword_1001DBD60);
  v50 = sub_10000341C(&qword_100263FC8, &unk_1001DBDD8);
  sub_1000081F8(v48, v49 + *(v50 + 48), &qword_100263FA0, &qword_1001DBD58);
  sub_10000F500(v46, &qword_100263FA0, &qword_1001DBD58);
  sub_10000F500(v23, &qword_100263FA8, &qword_1001DBD60);
  sub_10000F500(v48, &qword_100263FA0, &qword_1001DBD58);
  return sub_10000F500(v47, &qword_100263FA8, &qword_1001DBD60);
}

uint64_t sub_1001365A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v141 = a2;
  v143 = type metadata accessor for EnvironmentValues();
  v142 = *(v143 - 8);
  v3 = *(v142 + 64);
  __chkstk_darwin(v143);
  v135 = &v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for UnevenCornerPrimaryButtonStyle(0);
  v5 = *(*(v149 - 8) + 64);
  __chkstk_darwin(v149);
  v114 = (&v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v148 = type metadata accessor for IconOnlyLabelStyle();
  v7 = *(v148 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v148);
  v10 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000341C(&qword_100263FD0, &qword_1001DBDE8);
  v153 = *(v11 - 8);
  v12 = *(v153 + 64);
  __chkstk_darwin(v11);
  v14 = &v114 - v13;
  v147 = sub_10000341C(&qword_100263FD8, &qword_1001DBDF0);
  v152 = *(v147 - 8);
  v15 = *(v152 + 64);
  __chkstk_darwin(v147);
  v146 = &v114 - v16;
  v138 = sub_10000341C(&qword_100263FE0, &qword_1001DBDF8);
  v154 = *(v138 - 8);
  v17 = *(v154 + 64);
  v18 = __chkstk_darwin(v138);
  v136 = &v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v144 = &v114 - v20;
  v150 = sub_10000341C(&qword_100263FE8, &qword_1001DBE00);
  v21 = *(*(v150 - 8) + 64);
  v22 = __chkstk_darwin(v150);
  v140 = &v114 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v139 = &v114 - v25;
  v26 = __chkstk_darwin(v24);
  v134 = &v114 - v27;
  v28 = __chkstk_darwin(v26);
  v137 = &v114 - v29;
  v30 = __chkstk_darwin(v28);
  v127 = &v114 - v31;
  __chkstk_darwin(v30);
  v151 = &v114 - v32;
  v33 = *a1;
  v160 = *(a1 + 8);
  v34 = a1[2];
  v35 = a1[3];
  v157 = *(a1 + 2);
  v158 = v34;
  v159 = v33;
  v36 = a1[7];
  v37 = swift_allocObject();
  v38 = *(a1 + 1);
  v37[1] = *a1;
  v37[2] = v38;
  v39 = *(a1 + 2);
  v40 = *(a1 + 3);
  v115 = a1;
  v37[3] = v39;
  v37[4] = v40;
  v41 = v159;
  v145 = v160;
  v128 = v35;

  sub_10004CC28(&v157, v156);
  v129 = v36;

  sub_1000081F8(&v159, v156, &unk_10025E1A0, &qword_1001D1FA0);
  sub_100063D8C(&v158, v156);
  v42 = sub_10000341C(&qword_100263FF0, &unk_1001DBE08);
  v43 = sub_100137B20();
  v126 = v42;
  v125 = v43;
  Button.init(action:label:)();
  IconOnlyLabelStyle.init()();
  v44 = sub_100007120(&qword_100264000, &qword_100263FD0, &qword_1001DBDE8);
  v45 = sub_100137BE8(&qword_10025DC20, &type metadata accessor for IconOnlyLabelStyle);
  v46 = v146;
  v47 = v148;
  View.labelStyle<A>(_:)();
  v48 = *(v7 + 8);
  v132 = v10;
  v49 = v47;
  v133 = v7 + 8;
  v122 = v48;
  v48(v10, v47);
  v50 = *(v153 + 8);
  v130 = v14;
  v51 = v11;
  v153 += 8;
  v121 = v50;
  v50(v14, v11);
  v52 = v41;
  KeyPath = swift_getKeyPath();
  v54 = v114;
  *v114 = 1;
  v55 = v149;
  v56 = *(v149 + 24);
  *(v54 + v56) = swift_getKeyPath();
  v120 = sub_10000341C(&qword_100262940, &unk_1001D0560);
  swift_storeEnumTagMultiPayload();
  v57 = v54 + *(v55 + 28);
  *v57 = KeyPath;
  *(v57 + 8) = 0;
  v131 = v51;
  v156[0] = v51;
  v156[1] = v49;
  v58 = v142;
  v59 = v143;
  v124 = v44;
  v156[2] = v44;
  v156[3] = v45;
  v123 = v45;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v61 = sub_100137BE8(&qword_10025C9F0, type metadata accessor for UnevenCornerPrimaryButtonStyle);
  v62 = v147;
  v119 = OpaqueTypeConformance2;
  v118 = v61;
  v63 = v46;
  v64 = v54;
  View.buttonStyle<A>(_:)();
  sub_100137C30(v54);
  v65 = *(v152 + 8);
  v152 += 8;
  v117 = v65;
  v65(v63, v62);

  v155 = v52;
  if ((v145 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v66 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v67 = v135;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10000F500(&v159, &unk_10025E1A0, &qword_1001D1FA0);
    (*(v58 + 8))(v67, v59);
    v52 = v156[0];
  }

  swift_getKeyPath();
  v156[0] = v52;
  v68 = sub_100137BE8(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v69 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state;
  v70 = *(v52 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state) == 1;
  v116 = v68;
  if (v70 || (swift_getKeyPath(), v156[0] = v52, ObservationRegistrar.access<A, B>(_:keyPath:)(), , *(v52 + v69) == 2))
  {

    v71 = 1;
  }

  else
  {
    v72 = sub_1000757A8();

    v71 = !v72;
  }

  v73 = v138;
  v74 = swift_getKeyPath();
  v75 = swift_allocObject();
  *(v75 + 16) = v71 & 1;
  v76 = *(v154 + 32);
  v77 = v127;
  v154 += 32;
  v76(v127, v144, v73);
  v78 = v151;
  v79 = (v77 + *(v150 + 36));
  *v79 = v74;
  v79[1] = sub_100035DEC;
  v79[2] = v75;
  sub_100137C9C(v77, v78);
  v80 = swift_allocObject();
  v81 = v115;
  v82 = v115[1];
  v80[1] = *v115;
  v80[2] = v82;
  v83 = v81[3];
  v80[3] = v81[2];
  v80[4] = v83;

  sub_10004CC28(&v157, v156);

  sub_1000081F8(&v159, v156, &unk_10025E1A0, &qword_1001D1FA0);
  sub_100063D8C(&v158, v156);
  v84 = v130;
  Button.init(action:label:)();
  v85 = v132;
  IconOnlyLabelStyle.init()();
  v86 = v146;
  v87 = v131;
  v88 = v148;
  View.labelStyle<A>(_:)();
  v122(v85, v88);
  v121(v84, v87);
  v89 = swift_getKeyPath();
  *v64 = 256;
  v90 = v149;
  v91 = *(v149 + 24);
  *(v64 + v91) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v92 = v64 + *(v90 + 28);
  *v92 = v89;
  v92[8] = 0;
  v93 = v136;
  v94 = v147;
  View.buttonStyle<A>(_:)();
  sub_100137C30(v64);
  v117(v86, v94);

  if ((v145 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v95 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v96 = v135;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10000F500(&v159, &unk_10025E1A0, &qword_1001D1FA0);
    (*(v142 + 8))(v96, v143);
    v155 = v156[0];
  }

  swift_getKeyPath();
  v97 = v155;
  v156[0] = v155;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v98 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state;
  if (*(v97 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state) == 1 || (swift_getKeyPath(), v99 = v155, v156[0] = v155, ObservationRegistrar.access<A, B>(_:keyPath:)(), , *(v99 + v98) == 2))
  {

    v100 = 1;
  }

  else
  {
    v101 = sub_1000759BC();

    v100 = v101 ^ 1;
  }

  v102 = swift_getKeyPath();
  v103 = swift_allocObject();
  *(v103 + 16) = v100 & 1;
  v104 = v134;
  v76(v134, v93, v73);
  v105 = (v104 + *(v150 + 36));
  *v105 = v102;
  v105[1] = sub_100035DEC;
  v105[2] = v103;
  v106 = v137;
  sub_100137C9C(v104, v137);
  v107 = v151;
  v108 = v139;
  sub_1000081F8(v151, v139, &qword_100263FE8, &qword_1001DBE00);
  v109 = v140;
  sub_1000081F8(v106, v140, &qword_100263FE8, &qword_1001DBE00);
  v110 = v141;
  sub_1000081F8(v108, v141, &qword_100263FE8, &qword_1001DBE00);
  v111 = sub_10000341C(&qword_100264008, &unk_1001DBE80);
  v112 = v110 + *(v111 + 48);
  *v112 = 0x3FF0000000000000;
  *(v112 + 8) = 0;
  sub_1000081F8(v109, v110 + *(v111 + 64), &qword_100263FE8, &qword_1001DBE00);
  sub_10000F500(v106, &qword_100263FE8, &qword_1001DBE00);
  sub_10000F500(v107, &qword_100263FE8, &qword_1001DBE00);
  sub_10000F500(v109, &qword_100263FE8, &qword_1001DBE00);
  return sub_10000F500(v108, &qword_100263FE8, &qword_1001DBE00);
}

double sub_1001374BC@<D0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  Label<>.init(_:systemImage:)();
  v2 = static Edge.Set.all.getter();
  v3 = a1 + *(sub_10000341C(&qword_100263FF0, &unk_1001DBE08) + 36);
  *v3 = v2;
  result = 0.0;
  *(v3 + 8) = 0u;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 1;
  return result;
}

uint64_t sub_100137554(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v21 - v7;
  v9 = type metadata accessor for EnvironmentValues();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a1 + 8);
  v14 = *a1;
  v22 = v14;
  v15 = v23;

  if ((v15 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10000F500(&v22, &unk_10025E1A0, &qword_1001D1FA0);
    (*(v10 + 8))(v13, v9);
    v14 = v21[1];
  }

  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  type metadata accessor for MainActor();

  v18 = static MainActor.shared.getter();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = &protocol witness table for MainActor;
  v19[4] = v14;
  sub_100135BF0(0, 0, v8, a3, v19);
}

double sub_1001377B4@<D0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  Label<>.init(_:systemImage:)();
  v2 = static Edge.Set.all.getter();
  v3 = a1 + *(sub_10000341C(&qword_100263FF0, &unk_1001DBE08) + 36);
  *v3 = v2;
  result = 0.0;
  *(v3 + 8) = 0u;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 1;
  return result;
}

uint64_t sub_100137844(uint64_t a1)
{
  v2 = *(a1 + 48);
  v1 = *(a1 + 56);
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  sub_10000341C(&unk_10025F820, &qword_1001D50A0);
  Binding.wrappedValue.getter();
  v2();
}

__n128 sub_1001378B8@<Q0>(uint64_t a1@<X8>)
{
  v2 = static VerticalAlignment.center.getter();
  sub_100137954(v5);
  *&v4[55] = v5[3];
  *&v4[39] = v5[2];
  *&v4[23] = v5[1];
  *&v4[7] = v5[0];
  *(a1 + 33) = *&v4[16];
  result = *&v4[32];
  *(a1 + 49) = *&v4[32];
  *(a1 + 65) = *&v4[48];
  v4[71] = v6;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 81) = *&v4[64];
  *(a1 + 17) = *v4;
  return result;
}

uint64_t sub_100137954@<X0>(uint64_t a1@<X8>)
{
  sub_100125454(8);
  v2 = Image.init(_internalSystemName:)();
  LocalizedStringKey.init(stringLiteral:)();
  v3 = Text.init(_:tableName:bundle:comment:)();
  v5 = v4;
  v7 = v6 & 1;
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v6 & 1;
  *(a1 + 48) = v8;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;

  sub_100007D98(v3, v5, v7);

  sub_10002A984(v3, v5, v7);
}

uint64_t sub_100137A60@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v7[0] = *v1;
  v7[1] = v3;
  v4 = v1[3];
  v7[2] = v1[2];
  v7[3] = v4;
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = sub_10000341C(&qword_100263F90, &qword_1001DBD48);
  return sub_100135E9C(v7, a1 + *(v5 + 44));
}

unint64_t sub_100137B20()
{
  result = qword_100263FF8;
  if (!qword_100263FF8)
  {
    sub_100003E34(&qword_100263FF0, &unk_1001DBE08);
    sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263FF8);
  }

  return result;
}

uint64_t sub_100137BE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100137C30(uint64_t a1)
{
  v2 = type metadata accessor for UnevenCornerPrimaryButtonStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100137C9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_100263FE8, &qword_1001DBE00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100137D0C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[9];

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100137DA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100028688;

  return sub_100077DFC(a1, v4, v5, v6);
}

uint64_t sub_100137E54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002B2A0;

  return sub_100075BC8(a1, v4, v5, v6);
}

uint64_t sub_100137F60(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_10013A2F4(&qword_100264030, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason), v9 = dispatch thunk of Hashable._rawHashValue(seed:)(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_10013A2F4(&qword_100264038, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

BOOL sub_100138178(Swift::UInt a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v5 = Hasher._finalize()();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + 8 * v7);
    result = v9 == a1;
    if (v9 == a1)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_100138244(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_10013A2F4(&qword_10025FEA0, &type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason), v9 = dispatch thunk of Hashable._rawHashValue(seed:)(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_10013A2F4(&qword_100264028, &type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_10013845C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100138554()
{
  v127 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason();
  v126 = *(v127 - 8);
  v0 = *(v126 + 64);
  __chkstk_darwin(v127);
  v125 = &v124 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10000341C(&qword_100264020, &qword_1001DBEA8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v149 = &v124 - v4;
  v5 = sub_10000341C(&unk_100264040, &qword_1001DBEB0);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v135 = &v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v150 = &v124 - v9;
  v10 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo();
  v152 = *(v10 - 8);
  v153 = v10;
  v11 = *(v152 + 64);
  v12 = __chkstk_darwin(v10);
  v151 = &v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v128 = &v124 - v15;
  v16 = __chkstk_darwin(v14);
  v124 = &v124 - v17;
  __chkstk_darwin(v16);
  v129 = &v124 - v18;
  v131 = type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo();
  v130 = *(v131 - 8);
  v19 = *(v130 + 64);
  v20 = __chkstk_darwin(v131);
  v132 = &v124 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v136 = &v124 - v22;
  v23 = type metadata accessor for GenerativeModelsAvailability.Availability();
  v154 = *(v23 - 8);
  v155 = v23;
  v24 = *(v154 + 64);
  __chkstk_darwin(v23);
  v26 = &v124 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for GenerativeModelsAvailability.LanguageOption();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = &v124 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for GenerativeModelsAvailability.Parameters();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v36 = &v124 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for GenerativeModelsAvailability();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  v40 = __chkstk_darwin(v37);
  v140 = &v124 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v43 = &v124 - v42;
  v44 = *(v28 + 104);
  v139 = enum case for GenerativeModelsAvailability.LanguageOption.any(_:);
  v147 = v28 + 104;
  v148 = v27;
  v138 = v44;
  v44(v31);
  v145 = v31;
  GenerativeModelsAvailability.Parameters.init(useCaseIdentifiers:language:)();
  static GenerativeModelsAvailability.current(parameters:)();
  v45 = *(v33 + 8);
  v142 = v36;
  v146 = v32;
  v144 = v33 + 8;
  v137 = v45;
  v45(v36, v32);
  GenerativeModelsAvailability.availability.getter();
  v46 = *(v38 + 8);
  v47 = v43;
  v48 = v155;
  v143 = v37;
  v141 = v38 + 8;
  (v46)(v47, v37);
  v49 = v154;
  v50 = *(v154 + 88);
  v134 = v154 + 88;
  v133 = v50;
  v51 = v50(v26, v48);
  if (v51 == enum case for GenerativeModelsAvailability.Availability.restricted(_:))
  {
    (*(v49 + 96))(v26, v48);
    v52 = v130;
    v53 = v136;
    v54 = v131;
    (*(v130 + 32))(v136, v26, v131);
    if (qword_10025A6D8 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_10000F34C(v55, qword_100276EF0);
    v56 = v132;
    (*(v52 + 16))(v132, v53, v54);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v156 = v60;
      *v59 = 136315138;
      sub_10013A2F4(&qword_10025FEA8, &type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo);
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v62 = v56;
      v63 = v46;
      v65 = v64;
      v66 = *(v52 + 8);
      v66(v62, v54);
      v67 = sub_10002510C(v61, v65, &v156);
      v46 = v63;

      *(v59 + 4) = v67;
      _os_log_impl(&_mh_execute_header, v57, v58, "isComposeModelsAvailable: restricted, info = %s", v59, 0xCu);
      sub_10000F4B4(v60);

      v66(v136, v54);
    }

    else
    {

      v84 = *(v52 + 8);
      v84(v56, v54);
      v84(v53, v54);
    }

    v85 = 0;
    v86 = v151;
    v68 = v152;
    v87 = v149;
    v69 = v154;
  }

  else
  {
    v68 = v152;
    if (v51 == enum case for GenerativeModelsAvailability.Availability.unavailable(_:))
    {
      v69 = v49;
      (*(v49 + 96))(v26, v48);
      v70 = v129;
      (*(v68 + 32))(v129, v26, v153);
      if (qword_10025A6D8 != -1)
      {
        swift_once();
      }

      v136 = v46;
      v71 = type metadata accessor for Logger();
      sub_10000F34C(v71, qword_100276EF0);
      v72 = v124;
      (*(v68 + 16))(v124, v70, v153);
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v132 = v75;
        v76 = swift_slowAlloc();
        v156 = v76;
        *v75 = 136315138;
        sub_10013A2F4(&qword_10025FE98, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo);
        v77 = v153;
        v78 = dispatch thunk of CustomStringConvertible.description.getter();
        v80 = v79;
        v81 = *(v152 + 8);
        v81(v72, v77);
        v82 = sub_10002510C(v78, v80, &v156);

        v83 = v132;
        *(v132 + 4) = v82;
        _os_log_impl(&_mh_execute_header, v73, v74, "isComposeModelsAvailable: unavailable, info = %s", v83, 0xCu);
        sub_10000F4B4(v76);
        v69 = v49;

        v81(v129, v77);
        v68 = v152;
      }

      else
      {

        v88 = *(v68 + 8);
        v89 = v153;
        v88(v72, v153);
        v88(v70, v89);
      }

      v85 = 0;
      v86 = v151;
      v87 = v149;
      v46 = v136;
    }

    else
    {
      v69 = v49;
      if (v51 == enum case for GenerativeModelsAvailability.Availability.available(_:))
      {
        v85 = 1;
        v86 = v151;
      }

      else
      {
        v86 = v151;
        if (qword_10025A6D8 != -1)
        {
          swift_once();
        }

        v90 = type metadata accessor for Logger();
        sub_10000F34C(v90, qword_100276EF0);
        v91 = Logger.logObject.getter();
        v92 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v91, v92))
        {
          v93 = swift_slowAlloc();
          *v93 = 0;
          _os_log_impl(&_mh_execute_header, v91, v92, "isComposeModelsAvailable: @unknown default", v93, 2u);
        }

        (*(v49 + 8))(v26, v155);
        v85 = 0;
      }

      v87 = v149;
    }
  }

  v138(v145, v139, v148);
  v94 = v142;
  GenerativeModelsAvailability.Parameters.init(useCaseIdentifiers:language:)();
  v95 = v140;
  static GenerativeModelsAvailability.current(parameters:)();
  v137(v94, v146);
  GenerativeModelsAvailability.partner.getter();
  (v46)(v95, v143);
  v96 = type metadata accessor for GenerativeModelsAvailability.Partner();
  v97 = *(v96 - 8);
  if ((*(v97 + 48))(v87, 1, v96) == 1)
  {
    sub_10000F500(v87, &qword_100264020, &qword_1001DBEA8);
    v98 = v150;
    (*(v69 + 56))(v150, 1, 1, v155);
    sub_10000F500(v98, &unk_100264040, &qword_1001DBEB0);
  }

  else
  {
    v99 = v150;
    GenerativeModelsAvailability.Partner.availability.getter();
    (*(v97 + 8))(v87, v96);
    v100 = v155;
    (*(v69 + 56))(v99, 0, 1, v155);
    v101 = v135;
    sub_10013A448(v99, v135);
    if (v133(v101, v100) == enum case for GenerativeModelsAvailability.Availability.unavailable(_:))
    {
      (*(v69 + 96))(v101, v100);
      v102 = v128;
      (*(v68 + 32))(v128, v101, v153);
      v103 = GenerativeModelsAvailability.Availability.UnavailableInfo.reasons.getter();
      v104 = v126;
      v105 = v125;
      v106 = v127;
      (*(v126 + 104))(v125, enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.useCaseDoesNotAllowUserLocaleRegion(_:), v127);
      v107 = sub_100137F60(v105, v103);

      (*(v104 + 8))(v105, v106);
      if (v107)
      {
        if (qword_10025A6D8 != -1)
        {
          swift_once();
        }

        v108 = type metadata accessor for Logger();
        sub_10000F34C(v108, qword_100276EF0);
        (*(v68 + 16))(v86, v102, v153);
        v109 = Logger.logObject.getter();
        v110 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v109, v110))
        {
          v111 = v102;
          v112 = swift_slowAlloc();
          v113 = swift_slowAlloc();
          v156 = v113;
          *v112 = 136315138;
          sub_10013A2F4(&qword_10025FE98, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo);
          v114 = v153;
          v115 = dispatch thunk of CustomStringConvertible.description.getter();
          v116 = v86;
          v118 = v117;
          v119 = *(v68 + 8);
          v119(v116, v114);
          v120 = sub_10002510C(v115, v118, &v156);

          *(v112 + 4) = v120;
          _os_log_impl(&_mh_execute_header, v109, v110, "isComposeModelsAvailable: partner unavailable,  setting available to false, info = %s", v112, 0xCu);
          sub_10000F4B4(v113);

          v119(v111, v114);
        }

        else
        {

          v121 = *(v68 + 8);
          v122 = v153;
          v121(v86, v153);
          v121(v102, v122);
        }

        return 0;
      }

      else
      {
        (*(v68 + 8))(v102, v153);
      }
    }

    else
    {
      (*(v69 + 8))(v101, v100);
    }
  }

  return v85;
}

uint64_t sub_1001395F8()
{
  v97 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason();
  v96 = *(v97 - 8);
  v0 = *(v96 + 64);
  __chkstk_darwin(v97);
  v95 = &v91 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo();
  v92 = *(v94 - 8);
  v2 = *(v92 + 64);
  v3 = __chkstk_darwin(v94);
  v91 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v93 = &v91 - v5;
  v6 = type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason();
  v103 = *(v6 - 8);
  v104 = v6;
  v7 = *(v103 + 64);
  __chkstk_darwin(v6);
  v102 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for GenerativeModelsAvailability.LanguageOption();
  v9 = *(v118 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v118);
  v12 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for GenerativeModelsAvailability.Parameters();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for GenerativeModelsAvailability();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v109 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v91 - v23;
  v25 = sub_10000341C(&qword_100264020, &qword_1001DBEA8);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v110 = &v91 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = &v91 - v29;
  v31 = type metadata accessor for GenerativeModelsAvailability.Availability();
  v116 = *(v31 - 8);
  v117 = v31;
  v32 = *(v116 + 64);
  v33 = __chkstk_darwin(v31);
  v105 = &v91 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v36 = &v91 - v35;
  v101 = type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo();
  v99 = *(v101 - 8);
  v37 = *(v99 + 64);
  v38 = __chkstk_darwin(v101);
  v98 = &v91 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v100 = &v91 - v40;
  v41 = *(v9 + 104);
  v108 = enum case for GenerativeModelsAvailability.LanguageOption.any(_:);
  v115 = v9 + 104;
  v107 = v41;
  v41(v12);
  v113 = v12;
  GenerativeModelsAvailability.Parameters.init(useCaseIdentifiers:language:)();
  static GenerativeModelsAvailability.current(parameters:)();
  v42 = *(v14 + 8);
  v114 = v13;
  v112 = v14 + 8;
  v106 = v42;
  v42(v17, v13);
  GenerativeModelsAvailability.partner.getter();
  v43 = *(v19 + 8);
  v111 = v18;
  v43(v24, v18);
  v44 = type metadata accessor for GenerativeModelsAvailability.Partner();
  v45 = *(v44 - 8);
  v46 = *(v45 + 48);
  if (v46(v30, 1, v44) == 1)
  {
    v47 = v117;
    sub_10000F500(v30, &qword_100264020, &qword_1001DBEA8);
  }

  else
  {
    GenerativeModelsAvailability.Partner.availability.getter();
    (*(v45 + 8))(v30, v44);
    v49 = v116;
    v48 = v117;
    if ((*(v116 + 88))(v36, v117) == enum case for GenerativeModelsAvailability.Availability.restricted(_:))
    {
      (*(v49 + 96))(v36, v48);
      v50 = v99;
      v51 = v100;
      v52 = v36;
      v53 = v101;
      (*(v99 + 32))(v100, v52, v101);
      if (qword_10025A6D8 != -1)
      {
        swift_once();
      }

      v54 = type metadata accessor for Logger();
      sub_10000F34C(v54, qword_100276EF0);
      v55 = v98;
      (*(v50 + 16))(v98, v51, v53);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v119[0] = v59;
        *v58 = 136315138;
        sub_10013A2F4(&qword_10025FEA8, &type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo);
        v60 = dispatch thunk of CustomStringConvertible.description.getter();
        v61 = v55;
        v63 = v62;
        v64 = *(v50 + 8);
        v64(v61, v53);
        v65 = sub_10002510C(v60, v63, v119);

        *(v58 + 4) = v65;
        _os_log_impl(&_mh_execute_header, v56, v57, "isComposeDisabled: partner restricted, info = %s", v58, 0xCu);
        sub_10000F4B4(v59);
      }

      else
      {

        v64 = *(v50 + 8);
        v64(v55, v53);
      }

      v84 = GenerativeModelsAvailability.Availability.RestrictedInfo.reasons.getter();
      v86 = v102;
      v85 = v103;
      v87 = v104;
      (*(v103 + 104))(v102, enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.useCaseDoesNotAllowCurrentIPCountryCode(_:), v104);
      v88 = sub_100138244(v86, v84);
      goto LABEL_22;
    }

    v66 = v36;
    v47 = v48;
    (*(v49 + 8))(v66, v48);
  }

  v107(v113, v108, v118);
  GenerativeModelsAvailability.Parameters.init(useCaseIdentifiers:language:)();
  v67 = v109;
  static GenerativeModelsAvailability.current(parameters:)();
  v106(v17, v114);
  v68 = v110;
  GenerativeModelsAvailability.partner.getter();
  v43(v67, v111);
  if (v46(v68, 1, v44) != 1)
  {
    v69 = v105;
    GenerativeModelsAvailability.Partner.availability.getter();
    (*(v45 + 8))(v68, v44);
    v70 = v116;
    if ((*(v116 + 88))(v69, v47) != enum case for GenerativeModelsAvailability.Availability.unavailable(_:))
    {
      (*(v70 + 8))(v69, v47);
      goto LABEL_17;
    }

    (*(v70 + 96))(v69, v47);
    v71 = v92;
    v51 = v93;
    v53 = v94;
    (*(v92 + 32))(v93, v69, v94);
    if (qword_10025A6D8 != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    sub_10000F34C(v72, qword_100276EF0);
    v73 = v91;
    (*(v71 + 16))(v91, v51, v53);
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v119[0] = v77;
      *v76 = 136315138;
      sub_10013A2F4(&qword_10025FE98, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo);
      v78 = dispatch thunk of CustomStringConvertible.description.getter();
      v79 = v73;
      v81 = v80;
      v64 = *(v71 + 8);
      v64(v79, v53);
      v82 = sub_10002510C(v78, v81, v119);

      *(v76 + 4) = v82;
      _os_log_impl(&_mh_execute_header, v74, v75, "isComposeDisabled: partner unavailable, info = %s", v76, 0xCu);
      sub_10000F4B4(v77);
    }

    else
    {

      v64 = *(v71 + 8);
      v64(v73, v53);
    }

    v89 = GenerativeModelsAvailability.Availability.UnavailableInfo.reasons.getter();
    v85 = v96;
    v86 = v95;
    v87 = v97;
    (*(v96 + 104))(v95, enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.useCaseDoesNotAllowCurrentIPCountryCode(_:), v97);
    v88 = sub_100137F60(v86, v89);
LABEL_22:
    v83 = v88;

    (*(v85 + 8))(v86, v87);
    v64(v51, v53);
    return v83 & 1;
  }

  sub_10000F500(v68, &qword_100264020, &qword_1001DBEA8);
LABEL_17:
  v83 = 0;
  return v83 & 1;
}

uint64_t sub_10013A2F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10013A33C()
{
  v0 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_1001395F8();
  result = 0;
  if (v2)
  {
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v4._countAndFlagsBits = 0;
    v4._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v4);
    v5._countAndFlagsBits = sub_1000971C0();
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v5);

    v6._object = 0x80000001001E74C0;
    v6._countAndFlagsBits = 0x1000000000000022;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v6);
    LocalizedStringKey.init(stringInterpolation:)();
    return Text.init(_:tableName:bundle:comment:)();
  }

  return result;
}

uint64_t sub_10013A448(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&unk_100264040, &qword_1001DBEB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_10013A4B8(uint64_t a1, void *a2)
{
  sub_10000341C(&qword_100264138, &unk_1001DC0F0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001CF9D0;
  v4 = type metadata accessor for TextActivityItemWithIcon();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC21WritingToolsUIServiceP33_E63BB40D993FB2662B0FF812EE2C15EF24TextActivityItemWithIcon_text] = a2;
  v13.receiver = v5;
  v13.super_class = v4;
  v6 = a2;
  v7 = objc_msgSendSuper2(&v13, "init");
  *(v3 + 56) = v4;
  *(v3 + 32) = v7;
  v8 = objc_allocWithZone(UIActivityViewController);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = [v8 initWithActivityItems:isa applicationActivities:{0, v13.receiver, v13.super_class}];

  type metadata accessor for ActivityType(0);
  v11 = Array._bridgeToObjectiveC()().super.isa;
  [v10 setExcludedActivityTypes:v11];

  return v10;
}

uint64_t sub_10013A638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10013AEF4();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10013A69C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10013AEF4();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10013A700()
{
  sub_10013AEF4();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_10013A728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  sub_10000341C(&qword_100264130, &qword_1001D3668);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1001CF9D0;
  *(v5 + 32) = UIActivityTypeCopyToPasteboard;
  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = v4;
  v9 = UIActivityTypeCopyToPasteboard;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  static Color.white.getter();
  v10 = Color.opacity(_:)();

  result = static Edge.Set.all.getter();
  *a2 = v8;
  *(a2 + 8) = v5;
  *(a2 + 16) = v12;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;
  *(a2 + 40) = v15;
  *(a2 + 48) = v16;
  *(a2 + 56) = v17;
  *(a2 + 64) = v10;
  *(a2 + 72) = result;
  return result;
}

uint64_t sub_10013A854()
{
  v1 = *v0;
  v7 = *(v0 + 24);
  v8 = v7;
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.projectedValue.getter();
  *&v7 = *(v0 + 8);
  BYTE8(v7) = *(v0 + 16);
  v2 = swift_allocObject();
  v3 = *(v0 + 8);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v0 + 16);
  *(v2 + 33) = *(v0 + 17);
  *(v2 + 48) = *(v0 + 32);
  *(v2 + 56) = *(v0 + 40);
  v4 = v1;
  sub_1000081F8(&v7, &v6, &unk_10025E1A0, &qword_1001D1FA0);
  sub_1000081F8(&v8, &v6, &unk_1002640F0, &qword_1001D3490);
  sub_10000341C(&qword_100264100, &qword_1001DC0E0);
  sub_10013AF98();
  View.sheet<A>(isPresented:onDismiss:content:)();
}

id sub_10013AB98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextActivityItemWithIcon();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10013AC04()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() systemImageNamed:v1];

  if (v2)
  {
    v3 = [objc_opt_self() systemGrayColor];
    v4 = [v2 imageWithTintColor:v3];

    v5 = [objc_allocWithZone(NSItemProvider) initWithObject:v4];
    v6 = [objc_allocWithZone(LPLinkMetadata) init];
    [v6 setIconProvider:v5];
    v7 = [*(v0 + OBJC_IVAR____TtC21WritingToolsUIServiceP33_E63BB40D993FB2662B0FF812EE2C15EF24TextActivityItemWithIcon_text) string];
    if (!v7)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = String._bridgeToObjectiveC()();
    }

    [v6 setSummary:v7];
  }

  else
  {
    __break(1u);
  }
}

__n128 sub_10013AD80(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10013AD9C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10013ADE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10013AE40(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10013AE88(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_10013AEF4()
{
  result = qword_1002640E8;
  if (!qword_1002640E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002640E8);
  }

  return result;
}

uint64_t sub_10013AF48()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 72, 7);
}

unint64_t sub_10013AF98()
{
  result = qword_100264108;
  if (!qword_100264108)
  {
    sub_100003E34(&qword_100264100, &qword_1001DC0E0);
    sub_10013B024();
    sub_10013B0B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100264108);
  }

  return result;
}

unint64_t sub_10013B024()
{
  result = qword_100264110;
  if (!qword_100264110)
  {
    sub_100003E34(&qword_100264118, &qword_1001DC0E8);
    sub_10006BC84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100264110);
  }

  return result;
}

unint64_t sub_10013B0B0()
{
  result = qword_100264120;
  if (!qword_100264120)
  {
    sub_100003E34(&qword_100263DC0, &qword_1001DB990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100264120);
  }

  return result;
}

uint64_t sub_10013B114()
{
  sub_100003E34(&qword_100264100, &qword_1001DC0E0);
  sub_10013AF98();
  return swift_getOpaqueTypeConformance2();
}

uint64_t getEnumTagSinglePayload for WritingTools(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WritingTools(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10013B2E0()
{
  result = qword_100264140;
  if (!qword_100264140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100264140);
  }

  return result;
}

const char *sub_10013B334(char a1)
{
  result = "Panel_iOS";
  switch(a1)
  {
    case 1:
      result = "Panel_iPadOS";
      break;
    case 2:
      result = "Panel_macOS";
      break;
    case 3:
      result = "OpenEndedAdjustmentV2_FollowUp";
      break;
    case 4:
      result = "Montara";
      break;
    case 5:
      result = "Montara_PersonalInfoSearch";
      break;
    case 6:
      result = "Montara_PromptEntryView";
      break;
    case 7:
      result = "Montara_SlotFill";
      break;
    case 8:
      result = "Montara_PopoverAdjustment";
      break;
    case 9:
      result = "Montara_Streaming";
      break;
    case 10:
      result = "Montara_FullScreen_SceneHosting";
      break;
    case 11:
      result = "CustomQuestionnaireEntry";
      break;
    case 12:
      result = "AlternateQuestionnaire_macOS";
      break;
    case 13:
      result = "AlternateQuestionnaire_iPadOS";
      break;
    case 14:
      result = "FeedbackFCSBehavior";
      break;
    case 15:
      result = "Formatting_v2";
      break;
    case 16:
      result = "Panel_visionOS";
      break;
    case 17:
      result = "NativeRedesign_visionOS";
      break;
    default:
      return result;
  }

  return result;
}

__n128 sub_10013B530(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10013B554(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10013B59C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10013B61C()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + 8);
  v6 = *v0;
  v11 = *v0;
  v7 = v12;

  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10000F500(&v11, &unk_10025E1A0, &qword_1001D1FA0);
    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_10013B778@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000341C(&qword_100264158, &qword_1001DC2B0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v40 - v10;
  v40 = static VerticalAlignment.center.getter();
  v42 = 1;
  sub_10013BC6C(&v55);
  v49 = v56[5];
  v50[0] = v56[6];
  *(v50 + 9) = *(&v56[6] + 9);
  v45 = v56[1];
  v46 = v56[2];
  v47 = v56[3];
  v48 = v56[4];
  v43 = v55;
  v44 = v56[0];
  v51[5] = v56[4];
  v51[6] = v56[5];
  v52[0] = v56[6];
  *(v52 + 9) = *(&v56[6] + 9);
  v51[2] = v56[1];
  v51[3] = v56[2];
  v51[4] = v56[3];
  v51[0] = v55;
  v51[1] = v56[0];
  sub_1000081F8(&v43, &v53, &qword_100264160, &qword_1001DC2B8);
  sub_10000F500(v51, &qword_100264160, &qword_1001DC2B8);
  *(&v41[5] + 7) = v48;
  *(&v41[6] + 7) = v49;
  *(&v41[7] + 7) = v50[0];
  v41[8] = *(v50 + 9);
  *(&v41[1] + 7) = v44;
  *(&v41[2] + 7) = v45;
  *(&v41[3] + 7) = v46;
  *(&v41[4] + 7) = v47;
  *(v41 + 7) = v43;
  v12 = v42;
  *v11 = static HorizontalAlignment.center.getter();
  *(v11 + 1) = 0x4024000000000000;
  v11[16] = 0;
  v13 = sub_10000341C(&qword_100264168, &qword_1001DC2C0);
  sub_10013C06C(a1, &v11[*(v13 + 44)]);
  v14 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = &v11[*(sub_10000341C(&qword_100264170, &qword_1001DC2C8) + 36)];
  *v23 = v14;
  *(v23 + 1) = v16;
  *(v23 + 2) = v18;
  *(v23 + 3) = v20;
  *(v23 + 4) = v22;
  v23[40] = 0;
  v24 = swift_allocObject();
  v25 = a1[3];
  v24[3] = a1[2];
  v24[4] = v25;
  *(v24 + 73) = *(a1 + 57);
  v26 = a1[1];
  v24[1] = *a1;
  v24[2] = v26;
  v27 = &v11[*(sub_10000341C(&qword_100264178, &qword_1001DC2D0) + 36)];
  *v27 = sub_10013DF84;
  v27[1] = v24;
  v27[2] = 0;
  v27[3] = 0;
  v28 = swift_allocObject();
  v29 = a1[3];
  v28[3] = a1[2];
  v28[4] = v29;
  *(v28 + 73) = *(a1 + 57);
  v30 = a1[1];
  v28[1] = *a1;
  v28[2] = v30;
  v31 = &v11[*(v5 + 44)];
  *v31 = 0;
  *(v31 + 1) = 0;
  *(v31 + 2) = sub_10013DFA4;
  *(v31 + 3) = v28;
  sub_1000081F8(v11, v9, &qword_100264158, &qword_1001DC2B0);
  *&v54[33] = v41[2];
  *&v54[17] = v41[1];
  *&v54[81] = v41[5];
  *&v54[97] = v41[6];
  *&v54[113] = v41[7];
  *&v54[129] = v41[8];
  *&v54[49] = v41[3];
  v32 = v40;
  v53 = v40;
  v54[0] = v12;
  *&v54[65] = v41[4];
  *&v54[1] = v41[0];
  v33 = *&v54[128];
  *(a2 + 128) = *&v54[112];
  *(a2 + 144) = v33;
  *(a2 + 160) = v54[144];
  v34 = *&v54[64];
  *(a2 + 64) = *&v54[48];
  *(a2 + 80) = v34;
  v35 = *&v54[96];
  *(a2 + 96) = *&v54[80];
  *(a2 + 112) = v35;
  v36 = *v54;
  *a2 = v53;
  *(a2 + 16) = v36;
  v37 = *&v54[32];
  *(a2 + 32) = *&v54[16];
  *(a2 + 48) = v37;
  v38 = sub_10000341C(&qword_100264180, &qword_1001DC2D8);
  sub_1000081F8(v9, a2 + *(v38 + 48), &qword_100264158, &qword_1001DC2B0);
  sub_10013DFC4(a1, &v55);
  sub_10013DFC4(a1, &v55);
  sub_1000081F8(&v53, &v55, &qword_100264188, &unk_1001DC2E0);
  sub_10000F500(v11, &qword_100264158, &qword_1001DC2B0);
  sub_10000F500(v9, &qword_100264158, &qword_1001DC2B0);
  *(&v56[5] + 1) = v41[5];
  *(&v56[6] + 1) = v41[6];
  *(&v56[7] + 1) = v41[7];
  *(&v56[8] + 1) = v41[8];
  *(&v56[1] + 1) = v41[1];
  *(&v56[2] + 1) = v41[2];
  *(&v56[3] + 1) = v41[3];
  *(&v56[4] + 1) = v41[4];
  v55 = v32;
  LOBYTE(v56[0]) = v12;
  *(v56 + 1) = v41[0];
  return sub_10000F500(&v55, &qword_100264188, &unk_1001DC2E0);
}

uint64_t sub_10013BC6C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000341C(&qword_10025C5D0, &qword_1001D15A0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v46 - v4;
  v6 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v8);
  v9._countAndFlagsBits = sub_1000971C0();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v9);

  v10._object = 0x80000001001E77C0;
  v10._countAndFlagsBits = 0xD000000000000021;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v10);
  LocalizedStringKey.init(stringInterpolation:)();
  v11 = Text.init(_:tableName:bundle:comment:)();
  v13 = v12;
  v15 = v14;
  static Font.Weight.bold.getter();
  v16 = type metadata accessor for Font.Design();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  static Font.system(size:weight:design:)();
  sub_10000F500(v5, &qword_10025C5D0, &qword_1001D15A0);
  v17 = Text.font(_:)();
  v47 = v18;
  v48 = v17;
  v20 = v19;
  v22 = v21;

  sub_10002A984(v11, v13, v15 & 1);

  LOBYTE(v11) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  LOBYTE(v64[0]) = v20 & 1;
  LOBYTE(v54) = 0;
  v31 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v33 = v47;
  v32 = v48;
  *&v54 = v48;
  *(&v54 + 1) = v47;
  LOBYTE(v55) = v20 & 1;
  *(&v55 + 1) = *v51;
  DWORD1(v55) = *&v51[3];
  *(&v55 + 1) = v22;
  LOBYTE(v56) = v11;
  DWORD1(v56) = *&v50[3];
  v34 = *v50;
  *(&v56 + 1) = *v50;
  *(&v56 + 1) = v24;
  *&v57 = v26;
  *(&v57 + 1) = v28;
  *&v58 = v30;
  BYTE8(v58) = 0;
  HIDWORD(v58) = *&v53[3];
  *(&v58 + 9) = *v53;
  LOBYTE(v59) = v31;
  DWORD1(v59) = *&v52[3];
  *(&v59 + 1) = *v52;
  *(&v59 + 1) = v35;
  *&v60[0] = v36;
  *(&v60[0] + 1) = v37;
  *&v60[1] = v38;
  BYTE8(v60[1]) = 0;
  v60[5] = v57;
  v60[4] = v56;
  v60[3] = v55;
  v60[2] = v54;
  *(v63 + 9) = *(v60 + 9);
  v62 = v59;
  v63[0] = v60[0];
  v61 = v58;
  v49[128] = 1;
  v39 = v54;
  v40 = v55;
  v41 = v57;
  *(a1 + 32) = v56;
  *(a1 + 48) = v41;
  *a1 = v39;
  *(a1 + 16) = v40;
  v42 = v61;
  v43 = v62;
  v44 = v63[1];
  *(a1 + 96) = v63[0];
  *(a1 + 112) = v44;
  *(a1 + 64) = v42;
  *(a1 + 80) = v43;
  *(a1 + 128) = 0;
  *(a1 + 136) = 1;
  v64[0] = v32;
  v64[1] = v33;
  v65 = v20 & 1;
  *&v66[3] = *&v51[3];
  *v66 = *v51;
  v67 = v22;
  v68 = v11;
  *&v69[3] = *&v50[3];
  *v69 = v34;
  v70 = v24;
  v71 = v26;
  v72 = v28;
  v73 = v30;
  v74 = 0;
  *&v75[3] = *&v53[3];
  *v75 = *v53;
  v76 = v31;
  *&v77[3] = *&v52[3];
  *v77 = *v52;
  v78 = v35;
  v79 = v36;
  v80 = v37;
  v81 = v38;
  v82 = 0;
  sub_1000081F8(&v54, v49, &qword_100264240, &unk_1001D1980);
  return sub_10000F500(v64, &qword_100264240, &unk_1001D1980);
}

uint64_t sub_10013C06C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v61 = type metadata accessor for PrimaryButtonStyle(0);
  v3 = *(*(v61 - 8) + 64);
  __chkstk_darwin(v61);
  v5 = v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_10000341C(&qword_100264190, &qword_1001DC320);
  v6 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64);
  v58 = (v57 - v7);
  v65 = sub_10000341C(&qword_100264198, &qword_1001DC328);
  v63 = *(v65 - 8);
  v8 = *(v63 + 64);
  v9 = __chkstk_darwin(v65);
  v62 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v60 = v57 - v11;
  v12 = sub_10000341C(&qword_1002641A0, &qword_1001DC330);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  v15 = __chkstk_darwin(v12);
  v59 = v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = v57 - v17;
  *v18 = static HorizontalAlignment.center.getter();
  *(v18 + 1) = 0;
  v18[16] = 0;
  v57[2] = *(sub_10000341C(&qword_1002641A8, qword_1001DC338) + 44);
  v67 = *(a1 + 16);
  v68 = *(a1 + 32);
  sub_10000341C(&unk_1002641B0, &unk_1001D3B00);
  Binding.wrappedValue.getter();
  v19 = *(v69 + 16);

  v69 = 0;
  v70 = v19;
  v57[1] = swift_getKeyPath();
  v20 = swift_allocObject();
  v21 = *(a1 + 48);
  v20[3] = *(a1 + 32);
  v20[4] = v21;
  *(v20 + 73) = *(a1 + 57);
  v22 = *(a1 + 16);
  v20[1] = *a1;
  v20[2] = v22;
  sub_10013DFC4(a1, &v67);
  sub_10000341C(&qword_10025E290, &qword_1001D3B28);
  sub_10000341C(&unk_1002641C0, &unk_1001DC370);
  sub_10006FFA8();
  sub_100007120(&qword_1002641D8, &unk_1002641C0, &unk_1001DC370);
  ForEach<>.init(_:id:content:)();
  v23 = &v18[*(v13 + 44)];
  v24 = v18;
  v57[0] = v18;
  v25 = *(type metadata accessor for RoundedRectangle() + 20);
  v26 = enum case for RoundedCornerStyle.continuous(_:);
  v27 = type metadata accessor for RoundedCornerStyle();
  (*(*(v27 - 8) + 104))(&v23[v25], v26, v27);
  __asm { FMOV            V0.2D, #10.0 }

  *v23 = _Q0;
  v33 = [objc_opt_self() tertiarySystemFillColor];
  v34 = Color.init(_:)();
  v35 = sub_10000341C(&unk_100263560, &unk_1001D1590);
  *&v23[*(v35 + 52)] = v34;
  *&v23[*(v35 + 56)] = 256;
  v36 = static Alignment.center.getter();
  v38 = v37;
  v39 = &v23[*(sub_10000341C(&qword_10025C5C8, &qword_1001DC380) + 36)];
  *v39 = v36;
  v39[1] = v38;
  v40 = static VerticalAlignment.center.getter();
  v41 = v58;
  *v58 = v40;
  *(v41 + 8) = 0;
  *(v41 + 16) = 1;
  v42 = sub_10000341C(&unk_1002641E0, &qword_1001DC388);
  sub_10013CEA0(a1, v41 + *(v42 + 44));
  KeyPath = swift_getKeyPath();
  *v5 = 0;
  *(v5 + 1) = 0;
  *(v5 + 2) = 0x4008000000000000;
  *(v5 + 3) = 0;
  *(v5 + 4) = 0;
  *(v5 + 20) = 1;
  v44 = v61;
  v45 = *(v61 + 40);
  *&v5[v45] = swift_getKeyPath();
  sub_10000341C(&qword_100262940, &unk_1001D0560);
  swift_storeEnumTagMultiPayload();
  v46 = &v5[*(v44 + 44)];
  *v46 = KeyPath;
  v46[8] = 0;
  sub_100007120(&unk_1002641F0, &qword_100264190, &qword_1001DC320);
  sub_10006FC50(&qword_10025C9B8, type metadata accessor for PrimaryButtonStyle);
  v47 = v60;
  View.buttonStyle<A>(_:)();
  sub_10006FC98(v5);
  sub_10000F500(v41, &qword_100264190, &qword_1001DC320);
  v48 = v59;
  sub_1000081F8(v24, v59, &qword_1002641A0, &qword_1001DC330);
  v49 = v62;
  v50 = v63;
  v51 = *(v63 + 16);
  v52 = v65;
  v51(v62, v47, v65);
  v53 = v66;
  sub_1000081F8(v48, v66, &qword_1002641A0, &qword_1001DC330);
  v54 = sub_10000341C(&qword_100264200, &qword_1001DC3F8);
  v51((v53 + *(v54 + 48)), v49, v52);
  v55 = *(v50 + 8);
  v55(v47, v52);
  sub_10000F500(v57[0], &qword_1002641A0, &qword_1001DC330);
  v55(v49, v52);
  return sub_10000F500(v48, &qword_1002641A0, &qword_1001DC330);
}

uint64_t sub_10013C72C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = type metadata accessor for Divider();
  v52 = *(v6 - 8);
  v53 = v6;
  v7 = *(v52 + 64);
  __chkstk_darwin(v6);
  v48 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000341C(&unk_100264220, &qword_1001D7E50);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v56 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v50 = &v47 - v13;
  v58 = *a1;
  v14 = v58;
  v110 = *(a2 + 16);
  v111 = *(a2 + 32);
  v81[0] = *(a2 + 16);
  *&v81[1] = *(a2 + 32);
  sub_10000341C(&unk_1002641B0, &unk_1001D3B00);
  Binding.projectedValue.getter();
  v108 = v71[0];
  v109 = *&v71[1];
  *&v71[0] = v14;
  sub_100007120(&qword_10025E2B8, &qword_10025E2C0, &unk_1001DC4C0);
  Binding<A>.subscript.getter();
  v114 = v81[2];
  v115 = v81[3];
  v116 = v81[4];
  v112 = v81[0];
  v113 = v81[1];

  v15 = *(a2 + 56);
  v71[0] = *(a2 + 40);
  v71[1] = v15;
  LOBYTE(v71[2]) = *(a2 + 72);
  sub_10000341C(&qword_10025E2C8, &unk_1001D3B40);
  FocusState.projectedValue.getter();
  v70 = v105;
  v54 = v106;
  v55 = v104;
  LOBYTE(a2) = v107;
  type metadata accessor for CompositionModel(0);
  sub_10006FC50(&qword_10025B210, type metadata accessor for CompositionModel);
  v51 = Environment.init<A>(_:)();
  LOBYTE(a1) = v16;
  v104 = 0;
  v105 = 0xE000000000000000;
  State.init(wrappedValue:)();
  v68 = *(&v71[0] + 1);
  v69 = *&v71[0];
  v67 = *&v71[1];
  LOBYTE(v104) = 0;
  State.init(wrappedValue:)();
  v65 = LOBYTE(v71[0]);
  v66 = *(&v71[0] + 1);
  LOBYTE(v104) = 0;
  State.init(wrappedValue:)();
  v63 = LOBYTE(v71[0]);
  v64 = *(&v71[0] + 1);
  v104 = _swiftEmptyArrayStorage;
  sub_10000341C(&qword_10025E2D0, &qword_1001D56C0);
  State.init(wrappedValue:)();
  v61 = *(&v71[0] + 1);
  v62 = *&v71[0];
  LOBYTE(v104) = 0;
  State.init(wrappedValue:)();
  v59 = LOBYTE(v71[0]);
  v60 = *(&v71[0] + 1);
  v104 = 0;
  sub_10000341C(&qword_10025E2D8, &qword_1001D3B50);
  State.init(wrappedValue:)();
  *(&v122[1] + 7) = v113;
  *(&v122[2] + 7) = v114;
  *(&v122[3] + 7) = v115;
  *(&v122[4] + 7) = v116;
  v57 = *(&v71[0] + 1);
  v17 = *&v71[0];
  LOBYTE(v104) = a1 & 1;
  *(v122 + 7) = v112;
  v118 = a2;
  v81[0] = v110;
  *&v81[1] = v111;
  Binding.wrappedValue.getter();
  v18 = *(*&v71[0] + 16);

  if (v58 >= v18 - 1)
  {
    v24 = 1;
    v21 = v50;
    v26 = v52;
    v25 = v53;
  }

  else
  {
    v19 = v48;
    Divider.init()();
    v20 = v52;
    v21 = v50;
    v22 = v19;
    v23 = v53;
    (*(v52 + 32))(v50, v22, v53);
    v24 = 0;
    v25 = v23;
    v26 = v20;
  }

  (*(v26 + 56))(v21, v24, 1, v25);
  v27 = v104;
  LODWORD(v52) = v104;
  v28 = v118;
  LODWORD(v53) = v118;
  v29 = v56;
  sub_1000081F8(v21, v56, &unk_100264220, &qword_1001D7E50);
  v30 = v51;
  *&v71[0] = v51;
  BYTE8(v71[0]) = v27;
  *(&v71[2] + 9) = v122[2];
  *(&v71[3] + 9) = v122[3];
  *(&v71[4] + 9) = v122[4];
  *(v71 + 9) = v122[0];
  *(&v71[1] + 9) = v122[1];
  *(&v71[5] + 1) = *(&v122[4] + 15);
  *&v72 = v69;
  *(&v72 + 1) = v68;
  *&v73 = v67;
  BYTE8(v73) = v65;
  *(&v73 + 9) = *v121;
  HIDWORD(v73) = *&v121[3];
  *&v74 = v66;
  BYTE8(v74) = v63;
  *(&v74 + 9) = *v120;
  HIDWORD(v74) = *&v120[3];
  *&v75 = v64;
  *(&v75 + 1) = v62;
  *&v76 = v61;
  BYTE8(v76) = v59;
  HIDWORD(v76) = *&v119[3];
  *(&v76 + 9) = *v119;
  *&v77 = v60;
  *(&v77 + 1) = v17;
  v49 = v17;
  v31 = v54;
  v32 = v55;
  *&v78 = v57;
  *(&v78 + 1) = v55;
  *&v79 = v70;
  *(&v79 + 1) = v54;
  LOBYTE(v80) = v28;
  DWORD1(v80) = *&v117[3];
  *(&v80 + 1) = *v117;
  v33 = v58;
  *(&v80 + 1) = v58;
  v34 = v71[1];
  *a3 = v71[0];
  a3[1] = v34;
  v35 = v71[2];
  v36 = v71[3];
  v37 = v71[5];
  a3[4] = v71[4];
  a3[5] = v37;
  a3[2] = v35;
  a3[3] = v36;
  v38 = v72;
  v39 = v73;
  v40 = v75;
  a3[8] = v74;
  a3[9] = v40;
  a3[6] = v38;
  a3[7] = v39;
  v41 = v76;
  v42 = v77;
  v43 = v80;
  a3[13] = v79;
  a3[14] = v43;
  v44 = v78;
  a3[11] = v42;
  a3[12] = v44;
  a3[10] = v41;
  v45 = sub_10000341C(&unk_100264230, &qword_1001DC4D0);
  sub_1000081F8(v29, a3 + *(v45 + 48), &unk_100264220, &qword_1001D7E50);
  sub_1000700F8(v71, v81);
  sub_10000F500(v21, &unk_100264220, &qword_1001D7E50);
  sub_10000F500(v29, &unk_100264220, &qword_1001D7E50);
  *&v81[0] = v30;
  BYTE8(v81[0]) = v52;
  *(&v81[2] + 9) = v122[2];
  *(&v81[3] + 9) = v122[3];
  *(&v81[4] + 9) = v122[4];
  *(v81 + 9) = v122[0];
  *(&v81[1] + 9) = v122[1];
  *(&v81[5] + 1) = *(&v122[4] + 15);
  v82 = v69;
  v83 = v68;
  v84 = v67;
  v85 = v65;
  *v86 = *v121;
  *&v86[3] = *&v121[3];
  v87 = v66;
  v88 = v63;
  *v89 = *v120;
  *&v89[3] = *&v120[3];
  v90 = v64;
  v91 = v62;
  v92 = v61;
  v93 = v59;
  *&v94[3] = *&v119[3];
  *v94 = *v119;
  v95 = v60;
  v96 = v49;
  v97 = v57;
  v98 = v32;
  v99 = v70;
  v100 = v31;
  v101 = v53;
  *&v102[3] = *&v117[3];
  *v102 = *v117;
  v103 = v33;
  return sub_100070154(v81);
}

uint64_t sub_10013CEA0@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_10000341C(&unk_10025DF60, &unk_1001D7CD0);
  v4 = *(v3 - 8);
  v41 = v3;
  v42 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v38 - v6;
  v8 = sub_10000341C(&qword_10025E1B0, &qword_1001D3970);
  v9 = *(v8 - 8);
  v40 = v8 - 8;
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8 - 8);
  v43 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v38 - v13;
  v15 = sub_10000341C(&qword_100264208, &qword_1001DC400);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  v18 = __chkstk_darwin(v15);
  v39 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v38 - v20;
  LocalizedStringKey.init(stringLiteral:)();
  v22 = swift_allocObject();
  v23 = a1[3];
  v22[3] = a1[2];
  v22[4] = v23;
  *(v22 + 73) = *(a1 + 57);
  v24 = a1[1];
  v22[1] = *a1;
  v22[2] = v24;
  sub_10013DFC4(a1, v45);
  Button<>.init(_:action:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v25 = &v21[*(v16 + 44)];
  v26 = v45[6];
  *v25 = v45[5];
  *(v25 + 1) = v26;
  *(v25 + 2) = v45[7];
  LocalizedStringKey.init(stringLiteral:)();
  v27 = swift_allocObject();
  v28 = a1[3];
  v27[3] = a1[2];
  v27[4] = v28;
  *(v27 + 73) = *(a1 + 57);
  v29 = a1[1];
  v27[1] = *a1;
  v27[2] = v29;
  sub_10013DFC4(a1, v45);
  Button<>.init(_:action:)();
  sub_100007120(&qword_100264210, &unk_10025DF60, &unk_1001D7CD0);
  v30 = v41;
  View.bold(_:)();
  (*(v42 + 8))(v7, v30);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v31 = &v14[*(v40 + 44)];
  v32 = v45[1];
  *v31 = v45[0];
  *(v31 + 1) = v32;
  *(v31 + 2) = v45[2];
  v33 = v39;
  sub_1000081F8(v21, v39, &qword_100264208, &qword_1001DC400);
  v34 = v43;
  sub_1000081F8(v14, v43, &qword_10025E1B0, &qword_1001D3970);
  v35 = v44;
  sub_1000081F8(v33, v44, &qword_100264208, &qword_1001DC400);
  v36 = sub_10000341C(&qword_100264218, &unk_1001DC408);
  sub_1000081F8(v34, v35 + *(v36 + 48), &qword_10025E1B0, &qword_1001D3970);
  sub_10000F500(v14, &qword_10025E1B0, &qword_1001D3970);
  sub_10000F500(v21, &qword_100264208, &qword_1001DC400);
  sub_10000F500(v34, &qword_10025E1B0, &qword_1001D3970);
  return sub_10000F500(v33, &qword_100264208, &qword_1001DC400);
}

uint64_t sub_10013D33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a4;
  type metadata accessor for MainActor();
  v4[22] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[23] = v6;
  v4[24] = v5;

  return _swift_task_switch(sub_10013D3D4, v6, v5);
}

uint64_t sub_10013D3D4()
{
  v1 = v0[21];
  v2 = sub_10013B61C();
  swift_getKeyPath();
  v0[18] = v2;
  sub_10006FC50(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__analyticsInstance;
  swift_beginAccess();
  sub_1000081F8(v2 + v3, (v0 + 2), &unk_10025B1C0, &unk_1001CFA90);

  if (v0[5])
  {
    v4 = v0[21];
    sub_100028458((v0 + 2), (v0 + 7));
    sub_10000F500((v0 + 2), &unk_10025B1C0, &unk_1001CFA90);
    v5 = sub_100027874(v0 + 7, v0[10]);
    v6 = sub_10013B61C();
    swift_getKeyPath();
    v0[20] = v6;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v7 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slots;
    swift_beginAccess();
    v8 = *(v6 + v7);

    v9 = *v5;
    sub_10000B7B0(0, v8);

    sub_10000F4B4(v0 + 7);
  }

  else
  {
    sub_10000F500((v0 + 2), &unk_10025B1C0, &unk_1001CFA90);
  }

  v10 = v0[21];
  v11 = sub_10013B61C();
  swift_getKeyPath();
  v0[19] = v11;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = *(v11 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state);

  if (v12)
  {
    if (v12 == 1)
    {
      v13 = v0[21];
      v0[25] = sub_10013B61C();
      v14 = swift_task_alloc();
      v0[26] = v14;
      *v14 = v0;
      v14[1] = sub_10013D768;

      return sub_1000905CC(1);
    }

    else
    {
      v18 = v0[22];

      v19 = v0[1];

      return v19();
    }
  }

  else
  {
    v16 = v0[21];
    v0[27] = sub_10013B61C();
    v17 = swift_task_alloc();
    v0[28] = v17;
    *v17 = v0;
    v17[1] = sub_10006F700;

    return sub_100091570(1);
  }
}

uint64_t sub_10013D768()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v3 = *(*v0 + 200);
  v7 = *v0;

  v4 = *(v1 + 192);
  v5 = *(v1 + 184);

  return _swift_task_switch(sub_10007038C, v5, v4);
}

uint64_t sub_10013D8AC(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15[-v7];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  type metadata accessor for MainActor();
  sub_10013DFC4(a1, v15);
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = &protocol witness table for MainActor;
  v12 = a1[3];
  *(v11 + 64) = a1[2];
  *(v11 + 80) = v12;
  *(v11 + 89) = *(a1 + 57);
  v13 = a1[1];
  *(v11 + 32) = *a1;
  *(v11 + 48) = v13;
  sub_10015C9C8(0, 0, v8, a3, v11);
}

uint64_t sub_10013D9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a4;
  type metadata accessor for MainActor();
  v4[22] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[23] = v6;
  v4[24] = v5;

  return _swift_task_switch(sub_10013DA80, v6, v5);
}

uint64_t sub_10013DA80()
{
  v1 = v0[21];
  v2 = sub_10013B61C();
  swift_getKeyPath();
  v0[18] = v2;
  sub_10006FC50(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__analyticsInstance;
  swift_beginAccess();
  sub_1000081F8(v2 + v3, (v0 + 2), &unk_10025B1C0, &unk_1001CFA90);

  if (v0[5])
  {
    v4 = v0[21];
    sub_100028458((v0 + 2), (v0 + 7));
    sub_10000F500((v0 + 2), &unk_10025B1C0, &unk_1001CFA90);
    v5 = sub_100027874(v0 + 7, v0[10]);
    v6 = sub_10013B61C();
    swift_getKeyPath();
    v0[20] = v6;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v7 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slots;
    swift_beginAccess();
    v8 = *(v6 + v7);

    v9 = *v5;
    sub_10000B7B0(1, v8);

    sub_10000F4B4(v0 + 7);
  }

  else
  {
    sub_10000F500((v0 + 2), &unk_10025B1C0, &unk_1001CFA90);
  }

  v10 = v0[21];
  v11 = sub_10013B61C();
  swift_getKeyPath();
  v0[19] = v11;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = *(v11 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state);

  if (v12)
  {
    if (v12 == 1)
    {
      v13 = v0[21];
      v0[25] = sub_10013B61C();
      v14 = swift_task_alloc();
      v0[26] = v14;
      *v14 = v0;
      v14[1] = sub_10006F55C;

      return sub_1000905CC(0);
    }

    else
    {
      v18 = v0[22];

      v19 = v0[1];

      return v19();
    }
  }

  else
  {
    v16 = v0[21];
    v0[27] = sub_10013B61C();
    v17 = swift_task_alloc();
    v0[28] = v17;
    *v17 = v0;
    v17[1] = sub_10006F700;

    return sub_100091570(0);
  }
}

uint64_t sub_10013DE14(uint64_t a1, char a2)
{
  sub_10013B61C();
  swift_getKeyPath();
  sub_10006FC50(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    if ([Strong respondsToSelector:"setIsHostingControllerHeightConstraintActive:"])
    {
      [Strong setIsHostingControllerHeightConstraintActive:a2 & 1];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10013DF10@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v7[2] = v1[2];
  v8[0] = v3;
  *(v8 + 9) = *(v1 + 57);
  v4 = v1[1];
  v7[0] = *v1;
  v7[1] = v4;
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v5 = sub_10000341C(&qword_100264150, &qword_1001DC2A8);
  return sub_10013B778(v7, a1 + *(v5 + 44));
}

uint64_t sub_10013E054()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[9];

  return _swift_deallocObject(v0, 89, 7);
}

uint64_t sub_10013E0E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100028688;

  return sub_10013D9E8(a1, v4, v5, v1 + 32);
}

uint64_t sub_10013E1B0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[11];

  return _swift_deallocObject(v0, 105, 7);
}

uint64_t sub_10013E210(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B2A0;

  return sub_10013D33C(a1, v4, v5, v1 + 32);
}

uint64_t sub_10013E31C()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x80000001001E7830;
  v6._countAndFlagsBits = 0xD00000000000002ALL;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v6);
  v7._countAndFlagsBits = sub_1000971C0();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v7);

  v8._countAndFlagsBits = 46;
  v8._object = 0xE100000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v8);
  String.LocalizationValue.init(stringInterpolation:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

uint64_t sub_10013E4BC(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t sub_10013E584@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100149490(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__handoffState);
  return result;
}

uint64_t sub_10013E65C()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(v0 + 8);

  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_10013E79C()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t property wrapper backing initializer of RewritingView.feedbackController()
{
  type metadata accessor for FBKEvaluationController();
  State.init(wrappedValue:)();
  return v1;
}

uint64_t sub_10013E918@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 48);
  result = sub_100037954();
  if (result)
  {
    v5 = 0;
  }

  else
  {
    swift_getKeyPath();
    sub_100149490(&unk_10025B870, type metadata accessor for RewritingModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v5 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__handoffState) ^ 1;
  }

  *a2 = v5 & 1;
  return result;
}

uint64_t sub_10013E9E4()
{
  v1 = v0;
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);

  if ((v8 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v3 + 8))(v6, v2);
    v7 = v17;
  }

  if (v7)
  {
    v10 = sub_10016FEDC();

    v11 = (v1 + *(type metadata accessor for RewritingView() + 44));
    v12 = *v11;
    v13 = *(v11 + 1);
    LOBYTE(v11) = v11[16];
    LOBYTE(v17) = v12;
    v18 = v13;
    v19 = v11;
    sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
    FocusState.wrappedValue.getter();
    v14 = v16[7] & v10;
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t RewritingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v119 = a1;
  v3 = type metadata accessor for RewritingView();
  v4 = *(v3 - 8);
  v123 = (v3 - 8);
  v116 = v4;
  v115 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v114 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_10000341C(&qword_100264260, &qword_1001DC4E0);
  v11 = *(*(v102 - 8) + 64);
  __chkstk_darwin(v102);
  v13 = (&v100 - v12);
  v104 = sub_10000341C(&qword_100264268, &qword_1001DC4E8);
  v105 = *(v104 - 8);
  v14 = *(v105 + 64);
  __chkstk_darwin(v104);
  v16 = &v100 - v15;
  v108 = sub_10000341C(&qword_100264270, &qword_1001DC4F0);
  v109 = *(v108 - 8);
  v17 = *(v109 + 64);
  __chkstk_darwin(v108);
  v101 = &v100 - v18;
  v113 = sub_10000341C(&qword_100264278, &qword_1001DC4F8);
  v110 = *(v113 - 8);
  v19 = *(v110 + 64);
  __chkstk_darwin(v113);
  v103 = &v100 - v20;
  v21 = sub_10000341C(&qword_100264280, &qword_1001DC500);
  v22 = *(v21 - 8);
  v106 = v21 - 8;
  v23 = *(v22 + 64);
  __chkstk_darwin(v21 - 8);
  v107 = &v100 - v24;
  v25 = sub_10000341C(&qword_100264288, &qword_1001DC508);
  v26 = *(v25 - 8);
  v111 = v25 - 8;
  v27 = *(v26 + 64);
  __chkstk_darwin(v25 - 8);
  v121 = &v100 - v28;
  v29 = sub_10000341C(&qword_100264290, &qword_1001DC510);
  v30 = *(v29 - 8);
  v112 = v29 - 8;
  v31 = *(v30 + 64);
  __chkstk_darwin(v29 - 8);
  v122 = &v100 - v32;
  v33 = sub_10000341C(&qword_100264298, &qword_1001DC518);
  v34 = *(v33 - 8);
  v118 = v33 - 8;
  v35 = *(v34 + 64);
  __chkstk_darwin(v33 - 8);
  v117 = &v100 - v36;
  *v13 = static Alignment.center.getter();
  v13[1] = v37;
  v38 = v13 + *(sub_10000341C(&qword_1002642A0, &qword_1001DC520) + 44);
  v120 = v2;
  sub_10013F8B4(v2, v38);
  (*(v7 + 104))(v10, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v6);
  v39 = sub_100007120(&qword_1002642A8, &qword_100264260, &qword_1001DC4E0);
  v40 = v16;
  v41 = v10;
  v42 = v102;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v7 + 8))(v41, v6);
  sub_10000F500(v13, &qword_100264260, &qword_1001DC4E0);
  *&v128 = v42;
  *(&v128 + 1) = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = v101;
  v45 = v104;
  View.navigationBarBackButtonHidden(_:)();
  v46 = v45;
  (*(v105 + 8))(v40, v45);
  v47 = v2 + v123[13];
  v48 = *(v47 + 8);
  LOBYTE(v40) = *(v47 + 16);
  LOBYTE(v128) = *v47;
  LOBYTE(v45) = v128;
  *(&v128 + 1) = v48;
  LOBYTE(v129) = v40;
  sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
  FocusState.wrappedValue.getter();
  *&v128 = v46;
  *(&v128 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v49 = v103;
  v50 = v108;
  View.navigationBarHidden(_:)();
  (*(v109 + 8))(v44, v50);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v51 = v107;
  (*(v110 + 32))(v107, v49, v113);
  v52 = (v51 + *(v106 + 44));
  v53 = v133;
  v52[4] = v132;
  v52[5] = v53;
  v52[6] = v134;
  v54 = v129;
  *v52 = v128;
  v52[1] = v54;
  v55 = v131;
  v52[2] = v130;
  v52[3] = v55;
  LOBYTE(v126) = v45;
  *(&v126 + 1) = v48;
  LOBYTE(v127) = v40;
  FocusState.wrappedValue.getter();
  LOBYTE(v44) = v124;
  v56 = v121;
  sub_10002A894(v51, v121, &qword_100264280, &qword_1001DC500);
  *(v56 + *(v111 + 44)) = v44;
  v57 = v120;
  v113 = *(v120 + 48);
  swift_unknownObjectWeakLoadStrong();
  LOBYTE(v126) = v45;
  *(&v126 + 1) = v48;
  LOBYTE(v127) = v40;
  FocusState.wrappedValue.getter();
  LOBYTE(v40) = v124;
  v58 = v123[12];
  v59 = v122 + *(v112 + 44);
  v60 = type metadata accessor for PreferredContentSizeModifier(0);
  v61 = v60[7];
  sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  Binding.projectedValue.getter();
  v62 = v57;
  v63 = v114;
  sub_100148B68(v62, v114, type metadata accessor for RewritingView);
  type metadata accessor for MainActor();
  v64 = static MainActor.shared.getter();
  v65 = (*(v116 + 80) + 32) & ~*(v116 + 80);
  v66 = swift_allocObject();
  *(v66 + 16) = v64;
  *(v66 + 24) = &protocol witness table for MainActor;
  sub_100148AE8(v63, v66 + v65, type metadata accessor for RewritingView);
  v67 = static MainActor.shared.getter();
  v68 = swift_allocObject();
  *(v68 + 16) = v67;
  *(v68 + 24) = &protocol witness table for MainActor;
  Binding.init(get:set:)();
  v69 = v126;
  LOBYTE(v65) = v127;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  *(v59 + 8) = (v40 & 1) == 0;
  *(v59 + 9) = 0;
  v70 = v59 + v60[8];
  *v70 = v69;
  *(v70 + 16) = v65;
  v71 = v59 + v60[9];
  strcpy(v71, "RewritingView");
  *(v71 + 14) = -4864;
  v72 = v59 + v60[10];
  type metadata accessor for CGSize(0);
  v124 = 0;
  v125 = 0;
  State.init(wrappedValue:)();
  v73 = v127;
  *v72 = v126;
  *(v72 + 16) = v73;
  v74 = v59 + v60[11];
  LOBYTE(v124) = 0;
  State.init(wrappedValue:)();
  v75 = *(&v126 + 1);
  *v74 = v126;
  *(v74 + 8) = v75;
  v76 = v59 + v60[12];
  v124 = 0;
  LOBYTE(v125) = 1;
  sub_10000341C(&qword_100262BB0, &unk_1001D0280);
  State.init(wrappedValue:)();
  v77 = BYTE8(v126);
  v78 = v127;
  *v76 = v126;
  *(v76 + 8) = v77;
  *(v76 + 16) = v78;
  v79 = v59 + v60[13];
  LOBYTE(v124) = 0;
  State.init(wrappedValue:)();
  v80 = *(&v126 + 1);
  *v79 = v126;
  *(v79 + 8) = v80;
  v81 = v59 + v60[14];
  type metadata accessor for PresentationModel();
  sub_100149490(&qword_10025A910, type metadata accessor for PresentationModel);
  *v81 = Environment.init<A>(_:)();
  *(v81 + 8) = v82 & 1;
  v83 = v122;
  sub_10002A894(v121, v122, &qword_100264288, &qword_1001DC508);
  v84 = v120 + v123[14];
  v85 = *v84;
  v86 = *(v84 + 8);
  LOBYTE(v84) = *(v84 + 16);
  *&v126 = v85;
  *(&v126 + 1) = v86;
  LOBYTE(v127) = v84;
  sub_10000341C(&qword_100262800, &qword_1001D9490);
  Binding.wrappedValue.getter();
  LOBYTE(v50) = v124;
  v87 = Environment.init<A>(_:)();
  LOBYTE(v81) = v88;
  v89 = static Alignment.center.getter();
  v91 = v90;
  v92 = v83;
  v93 = v117;
  sub_10002A894(v92, v117, &qword_100264290, &qword_1001DC510);
  v94 = v93 + *(v118 + 44);
  *v94 = v87;
  *(v94 + 8) = v81 & 1;
  *(v94 + 9) = 1;
  *(v94 + 10) = v50;
  *(v94 + 16) = v89;
  *(v94 + 24) = v91;
  v95 = static Animation.spring(response:dampingFraction:blendDuration:)();
  swift_getKeyPath();
  v96 = v113;
  *&v126 = v113;
  sub_100149490(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(v81) = *(v96 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__handoffState);
  v97 = v119;
  sub_10002A894(v93, v119, &qword_100264298, &qword_1001DC518);
  result = sub_10000341C(&qword_1002642B0, &qword_1001DC550);
  v99 = v97 + *(result + 36);
  *v99 = v95;
  *(v99 + 8) = v81;
  return result;
}

uint64_t type metadata accessor for RewritingView()
{
  result = qword_100264310;
  if (!qword_100264310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10013F8B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24[0] = a2;
  v3 = sub_10000341C(&qword_10025C4B0, &qword_1001D77B0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = (v24 - v5);
  v7 = sub_10000341C(&qword_1002643E8, &qword_1001DC868);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v24 - v9;
  v11 = sub_10000341C(&qword_1002643F0, &unk_1001DC870);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (v24 - v13);
  v15 = *(a1 + 48);
  swift_getKeyPath();
  v24[1] = v15;
  sub_100149490(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(v15) = *(v15 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__handoffState);
  v16 = static Alignment.center.getter();
  if (v15)
  {
    *v6 = v16;
    v6[1] = v17;
    v18 = sub_10000341C(&qword_10025C6D0, &unk_1001D7C70);
    sub_100145AB0(a1, v6 + *(v18 + 44));
    sub_1000081F8(v6, v10, &qword_10025C4B0, &qword_1001D77B0);
    swift_storeEnumTagMultiPayload();
    sub_100007120(&qword_1002643F8, &qword_1002643F0, &unk_1001DC870);
    sub_100007120(&qword_10025C4A8, &qword_10025C4B0, &qword_1001D77B0);
    _ConditionalContent<>.init(storage:)();
    v19 = v6;
    v20 = &qword_10025C4B0;
    v21 = &qword_1001D77B0;
  }

  else
  {
    *v14 = v16;
    v14[1] = v17;
    v22 = sub_10000341C(&qword_100264400, &qword_1001DC880);
    sub_10013FD28(a1, (v14 + *(v22 + 44)));
    sub_1000081F8(v14, v10, &qword_1002643F0, &unk_1001DC870);
    swift_storeEnumTagMultiPayload();
    sub_100007120(&qword_1002643F8, &qword_1002643F0, &unk_1001DC870);
    sub_100007120(&qword_10025C4A8, &qword_10025C4B0, &qword_1001D77B0);
    _ConditionalContent<>.init(storage:)();
    v19 = v14;
    v20 = &qword_1002643F0;
    v21 = &unk_1001DC870;
  }

  return sub_10000F500(v19, v20, v21);
}

uint64_t sub_10013FC34@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for RewritingView() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_10013E918(v6, a1);
}

uint64_t sub_10013FCA8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10013FD28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v96 = type metadata accessor for RewritingView();
  v90 = *(v96 - 8);
  v4 = *(v90 + 8);
  __chkstk_darwin(v96);
  v75 = sub_10000341C(&qword_100264408, &qword_1001DC888);
  v5 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75);
  v7 = &v72 - v6;
  v80 = sub_10000341C(&qword_100264410, &qword_1001DC890);
  v78 = *(v80 - 1);
  v8 = *(v78 + 64);
  __chkstk_darwin(v80);
  v77 = &v72 - v9;
  v10 = sub_10000341C(&qword_100264418, &qword_1001DC898);
  v74 = *(v10 - 8);
  v11 = *(v74 + 64);
  __chkstk_darwin(v10);
  v73 = &v72 - v12;
  v81 = sub_10000341C(&qword_100264420, &qword_1001DC8A0);
  v13 = *(*(v81 - 8) + 64);
  __chkstk_darwin(v81);
  v79 = &v72 - v14;
  v89 = sub_10000341C(&qword_100264428, &qword_1001DC8A8);
  v83 = *(v89 - 8);
  v15 = *(v83 + 64);
  __chkstk_darwin(v89);
  v82 = &v72 - v16;
  v93 = sub_10000341C(&qword_100264430, &qword_1001DC8B0);
  v91 = *(v93 - 8);
  v17 = *(v91 + 64);
  __chkstk_darwin(v93);
  v87 = &v72 - v18;
  v19 = sub_10000341C(&qword_100264438, &qword_1001DC8B8);
  v94 = *(v19 - 8);
  v95 = v19;
  v20 = *(v94 + 64);
  v21 = __chkstk_darwin(v19);
  v92 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v86 = &v72 - v23;
  v88 = static Color.clear.getter();
  v85 = static Edge.Set.vertical.getter();
  v84 = static SafeAreaRegions.all.getter();
  *v7 = static HorizontalAlignment.center.getter();
  *(v7 + 1) = 0x4030000000000000;
  v7[16] = 0;
  v24 = sub_10000341C(&qword_100264440, &qword_1001DC8C0);
  sub_100140908(a1, &v7[*(v24 + 44)]);
  v25 = *(a1 + 48);
  v26 = sub_100037954();
  v98 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = a2;
  v97 = v4;
  v76 = v10;
  v100 = a1;
  v72 = v25;
  if ((v26 & 1) != 0 || (swift_getKeyPath(), v101 = v25, sub_100149490(&qword_10025C140, type metadata accessor for ToolModel), ObservationRegistrar.access<A, B>(_:keyPath:)(), , v27 = *(v25 + 96), v27 == 255))
  {
    v28 = 0;
    v31 = 0xE000000000000000;
    goto LABEL_10;
  }

  v29 = *(v25 + 72);
  v28 = *(v25 + 80);
  v30 = *(v25 + 88);
  if (v27 || v29 != 5)
  {
LABEL_9:
    sub_10002879C(v29, v28, v30, v27);
    v32 = sub_100106A3C();
    v31 = v33;
    sub_1000278C0(v29, v28, v30, v27);
    v28 = v32;
    goto LABEL_10;
  }

  if (!v30)
  {
    sub_10000F3F4(v29, v28, 0, 0);
    goto LABEL_9;
  }

  sub_10002879C(v29, v28, v30, 0);
  v31 = v30;
LABEL_10:
  v101 = v28;
  v102 = v31;
  v34 = sub_100007120(&qword_100264448, &qword_100264408, &qword_1001DC888);
  v35 = sub_10002AC34();
  v36 = v77;
  v37 = v75;
  View.navigationTitle<A>(_:)();

  sub_10000F500(v7, &qword_100264408, &qword_1001DC888);
  v38 = *(v100 + 80);
  v105 = *(v100 + 72);
  v106 = v38;
  sub_10000341C(&qword_10025C7C0, &qword_1001D32C0);
  State.projectedValue.getter();
  v39 = v103;
  v101 = v37;
  v102 = &type metadata for String;
  v103 = v34;
  v104 = v35;
  swift_getOpaqueTypeConformance2();
  v40 = v73;
  v41 = v80;
  View.inlineFeedback(controller:completion:)();

  (*(v78 + 8))(v36, v41);
  v42 = v79;
  v43 = (*(v74 + 32))(v79, v40, v76);
  __chkstk_darwin(v43);
  v44 = v100;
  *(&v72 - 2) = v100;
  v45 = sub_10000341C(&qword_100264450, &qword_1001DC8F8);
  v46 = sub_1001486C8();
  v78 = sub_100007120(&qword_100264460, &qword_100264450, &qword_1001DC8F8);
  v47 = v82;
  v48 = v81;
  View.toolbar<A>(content:)();
  sub_10000F500(v42, &qword_100264420, &qword_1001DC8A0);
  swift_getKeyPath();
  v49 = v72;
  v101 = v72;
  sub_100149490(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(v105) = *(v49 + 112);
  v80 = type metadata accessor for RewritingView;
  v50 = v98;
  sub_100148B68(v44, v98, type metadata accessor for RewritingView);
  v51 = (*(v90 + 80) + 16) & ~*(v90 + 80);
  v52 = swift_allocObject();
  v90 = type metadata accessor for RewritingView;
  sub_100148AE8(v50, v52 + v51, type metadata accessor for RewritingView);
  v101 = v48;
  v102 = v45;
  v103 = v46;
  v104 = v78;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v54 = v87;
  v55 = v89;
  View.onChange<A>(of:initial:_:)();

  (*(v83 + 8))(v47, v55);
  v56 = v100;
  v57 = v100 + *(v96 + 44);
  v58 = *v57;
  v59 = *(v57 + 8);
  LOBYTE(v57) = *(v57 + 16);
  LOBYTE(v101) = v58;
  v102 = v59;
  LOBYTE(v103) = v57;
  sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
  FocusState.wrappedValue.getter();
  sub_100148B68(v56, v50, v80);
  v60 = swift_allocObject();
  sub_100148AE8(v50, v60 + v51, v90);
  v101 = v55;
  v102 = &type metadata for Bool;
  v103 = OpaqueTypeConformance2;
  v104 = &protocol witness table for Bool;
  swift_getOpaqueTypeConformance2();
  v61 = v86;
  v62 = v93;
  View.onChange<A>(of:initial:_:)();

  (*(v91 + 8))(v54, v62);
  v64 = v94;
  v63 = v95;
  v65 = *(v94 + 16);
  v66 = v92;
  v65(v92, v61, v95);
  v67 = v99;
  v68 = v84;
  *v99 = v88;
  v67[1] = v68;
  *(v67 + 16) = v85;
  v69 = sub_10000341C(&qword_100264468, &qword_1001DC928);
  v65(v67 + *(v69 + 48), v66, v63);
  v70 = *(v64 + 8);

  v70(v61, v63);
  v70(v66, v63);
}

uint64_t sub_100140908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000341C(&qword_100264498, &qword_1001DC9E0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v208 = &v166 - v6;
  v7 = sub_10000341C(&qword_1002644A0, &unk_1001DC9E8);
  v206 = *(v7 - 8);
  v207 = v7;
  v8 = *(v206 + 64);
  __chkstk_darwin(v7);
  v197 = &v166 - v9;
  v198 = type metadata accessor for FeedbackView();
  v195 = *(v198 - 8);
  v10 = *(v195 + 64);
  v11 = __chkstk_darwin(v198);
  v13 = &v166 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v190 = &v166 - v14;
  v15 = sub_10000341C(&qword_10025DFB0, &qword_1001D33E0);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v196 = &v166 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v199 = &v166 - v19;
  v20 = sub_10000341C(&qword_1002644A8, &qword_1001DC9F8);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v166 - v22;
  v192 = sub_10000341C(&qword_1002644B0, &qword_1001DCA00);
  v24 = *(*(v192 - 8) + 64);
  v25 = __chkstk_darwin(v192);
  v194 = &v166 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v191 = &v166 - v28;
  __chkstk_darwin(v27);
  v203 = &v166 - v29;
  v30 = sub_10000341C(&qword_1002644B8, &qword_1001DCA08);
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30 - 8);
  v204 = &v166 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v205 = &v166 - v34;
  v35 = sub_10000341C(&qword_1002644C0, &unk_1001DCA10);
  v200 = *(v35 - 8);
  v201 = v35;
  v36 = *(v200 + 64);
  __chkstk_darwin(v35);
  v185 = &v166 - v37;
  v38 = type metadata accessor for Divider();
  v182 = *(v38 - 8);
  *&v183 = v38;
  v39 = *(v182 + 64);
  __chkstk_darwin(v38);
  *(&v183 + 1) = &v166 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_10000341C(&qword_10025B888, &qword_1001D0300);
  *&v184 = *(v186 - 8);
  v41 = *(v184 + 64);
  v42 = __chkstk_darwin(v186);
  v181 = &v166 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v180 = &v166 - v44;
  v45 = sub_10000341C(&qword_10025B880, &qword_1001DCA20);
  v46 = *(*(v45 - 8) + 64);
  v47 = __chkstk_darwin(v45 - 8);
  *(&v184 + 1) = &v166 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v50 = &v166 - v49;
  v51 = sub_10000341C(&qword_1002644C8, &qword_1001DCA28);
  v52 = *(*(v51 - 8) + 64);
  v53 = __chkstk_darwin(v51 - 8);
  v202 = &v166 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v212 = &v166 - v55;
  v209 = sub_10000341C(&qword_1002644D0, &qword_1001DCA30);
  v56 = *(*(v209 - 8) + 64);
  __chkstk_darwin(v209);
  v211 = &v166 - v57;
  v210 = type metadata accessor for InputWarningView(0);
  v58 = *(*(v210 - 8) + 64);
  __chkstk_darwin(v210);
  v60 = &v166 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = *(a1 + 48);
  if (sub_100037954())
  {
    if (qword_10025A810 != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for LocalizedStringResource();
    v63 = sub_10000F34C(v62, qword_1002771D0);
    (*(*(v62 - 8) + 16))(v60, v63, v62);
    sub_100148B68(v60, v211, type metadata accessor for InputWarningView);
    swift_storeEnumTagMultiPayload();
    sub_100149490(&qword_100261960, type metadata accessor for InputWarningView);
    sub_100007120(&qword_1002644F0, &qword_100264498, &qword_1001DC9E0);
    _ConditionalContent<>.init(storage:)();
    return sub_1001494D8(v60, type metadata accessor for InputWarningView);
  }

  else
  {
    v178 = a2;
    v65 = type metadata accessor for RewritingView();
    v66 = *(v65 + 44);
    v193 = a1;
    v67 = (a1 + v66);
    v68 = *v67;
    v69 = *(v67 + 1);
    LODWORD(v67) = v67[16];
    LODWORD(v189) = v68;
    LOBYTE(v218) = v68;
    *(&v218 + 1) = v69;
    LODWORD(v188) = v67;
    LOBYTE(v219) = v67;
    v187 = sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
    FocusState.wrappedValue.getter();
    v176 = v213;
    v177 = v4;
    if (v213)
    {
      v175 = 0;
    }

    else
    {
      swift_getKeyPath();
      *&v218 = v61;
      sub_100149490(&qword_10025C140, type metadata accessor for ToolModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v175 = (*(v61 + 136) & 2) == 0;
    }

    swift_getKeyPath();
    v70 = OBJC_IVAR____TtC21WritingToolsUIService9ToolModel___observationRegistrar;
    *&v218 = v61;
    v71 = sub_100149490(&qword_10025C140, type metadata accessor for ToolModel);
    v179 = v70;
    v174 = v71;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (!*(v61 + 96) && *(v61 + 72) == 5 && (*(&v219 + 1) = &type metadata for WritingTools, *&v220 = sub_10002AC88(), LOBYTE(v218) = 3, v74 = isFeatureEnabled(_:)(), sub_10000F4B4(&v218), (v74 & 1) != 0))
    {
      v173 = v13;
      LOBYTE(v218) = v189;
      *(&v218 + 1) = v69;
      LOBYTE(v219) = v188;
      FocusState.projectedValue.getter();
      v171 = *(&v213 + 1);
      v172 = v213;
      v170 = v214;
      v75 = v193;
      sub_10013E79C();
      v169 = sub_1000A7C14();

      v168 = sub_10013E9E4();
      v76 = (v75 + *(v65 + 52));
      v77 = v76[1];
      v167 = *v76;
      swift_getKeyPath();
      *&v218 = v61;
      sub_100149490(&unk_10025B870, type metadata accessor for RewritingModel);

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v78 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__analyticsInstance;
      swift_beginAccess();
      sub_1000081F8(v61 + v78, &v220 + 8, &unk_10025B1C0, &unk_1001CFA90);
      *&v218 = v172;
      *(&v218 + 1) = v171;
      LOBYTE(v219) = v170;
      BYTE1(v219) = (v169 & 2) != 0;
      BYTE2(v219) = v168 & 1;
      *(&v219 + 1) = v167;
      *&v220 = v77;
      swift_getKeyPath();
      *&v213 = v61;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v61 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session))
      {
        swift_getKeyPath();
        *&v213 = v61;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v79 = *(v61 + 112);
      }

      else
      {
        v79 = 1;
      }

      v136 = v186;
      KeyPath = swift_getKeyPath();
      v138 = swift_allocObject();
      *(v138 + 16) = v79;
      v215 = v220;
      v216 = v221;
      v217 = v222;
      v213 = v218;
      v214 = v219;
      v139 = static Edge.Set.top.getter();
      sub_10013E9E4();
      EdgeInsets.init(_all:)();
      LOBYTE(v232) = 0;
      v220 = v215;
      v221 = v216;
      v222 = v217;
      v218 = v213;
      v219 = v214;
      v223 = KeyPath;
      v224 = sub_100035DEC;
      v225 = v138;
      v226 = v139;
      v227 = v140;
      v228 = v141;
      v229 = v142;
      v230 = v143;
      v231 = 0;
      LOBYTE(v213) = v189;
      *(&v213 + 1) = v69;
      LOBYTE(v214) = v188;
      FocusState.wrappedValue.getter();
      if (v232)
      {
        v144 = 1;
      }

      else
      {
        Divider.init()();
        sub_10000341C(&unk_100263510, &qword_1001DAEA0);
        v145 = swift_allocObject();
        *(v145 + 16) = xmmword_1001CF9E0;
        v146 = static Edge.Set.top.getter();
        *(v145 + 32) = v146;
        v147 = static Edge.Set.bottom.getter();
        *(v145 + 33) = v147;
        v148 = Edge.Set.init(rawValue:)();
        Edge.Set.init(rawValue:)();
        if (Edge.Set.init(rawValue:)() != v146)
        {
          v148 = Edge.Set.init(rawValue:)();
        }

        Edge.Set.init(rawValue:)();
        if (Edge.Set.init(rawValue:)() != v147)
        {
          v148 = Edge.Set.init(rawValue:)();
        }

        EdgeInsets.init(_all:)();
        v150 = v149;
        v152 = v151;
        v154 = v153;
        v156 = v155;
        v157 = v181;
        (*(v182 + 32))(v181, *(&v183 + 1), v183);
        v158 = v186;
        v159 = &v157[*(v186 + 36)];
        *v159 = v148;
        v136 = v158;
        *(v159 + 1) = v150;
        *(v159 + 2) = v152;
        *(v159 + 3) = v154;
        *(v159 + 4) = v156;
        v159[40] = 0;
        v160 = v157;
        v161 = v180;
        sub_10002A894(v160, v180, &qword_10025B888, &qword_1001D0300);
        sub_10002A894(v161, v50, &qword_10025B888, &qword_1001D0300);
        v144 = 0;
      }

      (*(v184 + 56))(v50, v144, 1, v136);
      sub_1000081F8(&v218, &v213, &qword_1002644F8, &qword_1001DCC28);
      v162 = *(&v184 + 1);
      sub_1000081F8(v50, *(&v184 + 1), &qword_10025B880, &qword_1001DCA20);
      v163 = v185;
      sub_1000081F8(&v213, v185, &qword_1002644F8, &qword_1001DCC28);
      v164 = sub_10000341C(&qword_100264500, &qword_1001DCC30);
      sub_1000081F8(v162, v163 + *(v164 + 48), &qword_10025B880, &qword_1001DCA20);
      sub_10000F500(v50, &qword_10025B880, &qword_1001DCA20);
      sub_10000F500(&v218, &qword_1002644F8, &qword_1001DCC28);
      sub_10000F500(v162, &qword_10025B880, &qword_1001DCA20);
      sub_10000F500(&v213, &qword_1002644F8, &qword_1001DCC28);
      v165 = v212;
      sub_10002A894(v163, v212, &qword_1002644C0, &unk_1001DCA10);
      (*(v200 + 56))(v165, 0, 1, v201);
      v72 = v193;
      v13 = v173;
    }

    else
    {
      (*(v200 + 56))(v212, 1, 1, v201);
      v72 = v193;
    }

    LOBYTE(v218) = v189;
    *(&v218 + 1) = v69;
    LOBYTE(v219) = v188;
    FocusState.wrappedValue.getter();
    if (v213)
    {
      v73 = v205;
      (*(v206 + 56))(v205, 1, 1, v207);
    }

    else
    {
      v80 = static Alignment.center.getter();
      v82 = v81;
      v83 = sub_10000341C(&qword_1002644D8, &qword_1001DCA60);
      v84 = *(v83 + 48);
      *&v23[v84] = swift_getKeyPath();
      sub_10000341C(&unk_10025B1F0, &qword_1001CE0D0);
      swift_storeEnumTagMultiPayload();
      *v23 = 0;
      *(v23 + 1) = v80;
      *(v23 + 2) = v82;
      *(v23 + 3) = 0;
      *(v23 + 4) = 0;
      v85 = 1;
      v23[40] = 1;
      sub_10014231C(v72, &v23[*(v83 + 44)]);
      swift_getKeyPath();
      *&v218 = v61;
      sub_100149490(&unk_10025B870, type metadata accessor for RewritingModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v189 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session;
      if (*(v61 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__session))
      {
        swift_getKeyPath();
        *&v218 = v61;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v86 = *(v61 + 112);
      }

      else
      {
        v86 = 1;
      }

      v87 = swift_getKeyPath();
      v88 = swift_allocObject();
      *(v88 + 16) = v86;
      v89 = v191;
      sub_10002A894(v23, v191, &qword_1002644A8, &qword_1001DC9F8);
      v90 = (v89 + *(v192 + 36));
      *v90 = v87;
      v90[1] = sub_100035DEC;
      v90[2] = v88;
      sub_10002A894(v89, v203, &qword_1002644B0, &qword_1001DCA00);
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v200 = v219;
      v201 = v218;
      v191 = *(&v220 + 1);
      v192 = v220;
      v235 = 1;
      v234 = BYTE8(v218);
      v233 = BYTE8(v219);
      v91 = type metadata accessor for FeedbackFeatureFlags();
      *(&v214 + 1) = v91;
      *&v215 = sub_100149490(&qword_10025E060, &type metadata accessor for FeedbackFeatureFlags);
      v92 = sub_10002DB6C(&v213);
      (*(*(v91 - 8) + 104))(v92, enum case for FeedbackFeatureFlags.CentralizedFeedback(_:), v91);
      LOBYTE(v91) = isFeatureEnabled(_:)();
      sub_10000F4B4(&v213);
      if (v91)
      {
        v173 = v13;
        swift_getKeyPath();
        *&v213 = v61;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v93 = *(v61 + 72);
        v94 = *(v61 + 80);
        v95 = *(v61 + 88);
        v96 = *(v61 + 96);
        swift_getKeyPath();
        *&v213 = v61;
        v187 = v94;
        v188 = v93;
        v186 = v95;
        LODWORD(v185) = v96;
        sub_10002879C(v93, v94, v95, v96);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v97 = *(v61 + 40);
        *&v184 = *(v61 + 32);
        swift_getKeyPath();
        *&v213 = v61;
        *(&v184 + 1) = v97;

        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v98 = *(v61 + 56);
        *&v183 = *(v61 + 48);
        swift_getKeyPath();
        *&v213 = v61;
        *(&v183 + 1) = v98;

        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v99 = *(v61 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__inputStringForFeedback + 8);
        v181 = *(v61 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__inputStringForFeedback);
        swift_getKeyPath();
        *&v213 = v61;
        v182 = v99;

        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v100 = *(v61 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__resultAttributedString);
        if (v100)
        {
          v101 = v100;
          v102 = [v101 string];
          v180 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v172 = v103;
        }

        else
        {
          v180 = 0;
          v172 = 0xE000000000000000;
        }

        v104 = v173;
        swift_getKeyPath();
        *&v213 = v61;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v105 = *(v61 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelInfoString + 8);
        v171 = *(v61 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__modelInfoString);
        v106 = *(v193 + 80);
        *&v213 = *(v193 + 72);
        *(&v213 + 1) = v106;

        sub_10000341C(&qword_10025C7C0, &qword_1001D32C0);
        State.wrappedValue.getter();
        v107 = v232;
        swift_getKeyPath();
        *&v213 = v61;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        if (*(v61 + v189))
        {
          swift_getKeyPath();
          *&v213 = v61;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v108 = *(v61 + 112);
        }

        else
        {
          v108 = 1;
        }

        swift_getKeyPath();
        *&v213 = v61;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v110 = *(v61 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__detectedModelLanguage);
        v109 = *(v61 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__detectedModelLanguage + 8);
        *(v104 + 200) = 0;
        v111 = *(v198 + 92);
        *(v104 + v111) = swift_getKeyPath();
        sub_10000341C(&qword_10025BB98, &qword_1001D1AE0);
        swift_storeEnumTagMultiPayload();
        v112 = v187;
        *(v104 + 128) = v188;
        *(v104 + 136) = v112;
        *(v104 + 144) = v186;
        *(v104 + 152) = v185;
        v113 = v184;
        *(v104 + 24) = v183;
        *(v104 + 8) = v113;
        v114 = v182;
        *(v104 + 40) = v181;
        *(v104 + 48) = v114;
        *(v104 + 56) = 0;
        *(v104 + 64) = 0;
        v115 = v171;
        v116 = v172;
        *(v104 + 72) = v180;
        *(v104 + 80) = v116;
        *(v104 + 88) = v115;
        *(v104 + 96) = v105;
        *v104 = v107;
        *(v104 + 153) = v108;
        *(v104 + 154) = 1;
        *(v104 + 156) = 0;
        v232 = 0x3FF0000000000000;

        State.init(wrappedValue:)();
        v117 = *(&v213 + 1);
        *(v104 + 208) = v213;
        *(v104 + 160) = 0u;
        *(v104 + 176) = 0u;
        *(v104 + 192) = 0;
        *(v104 + 104) = _swiftEmptyArrayStorage;
        *(v104 + 112) = _swiftEmptyArrayStorage;
        *(v104 + 120) = _swiftEmptyArrayStorage;
        *(v104 + 216) = v117;
        *(v104 + 224) = v110;
        *(v104 + 232) = v109;
        v118 = v190;
        sub_100148AE8(v104, v190, type metadata accessor for FeedbackView);
        sub_100148AE8(v118, v199, type metadata accessor for FeedbackView);
        v85 = 0;
      }

      v119 = v199;
      (*(v195 + 56))(v199, v85, 1, v198);
      v120 = v203;
      v121 = v194;
      sub_1000081F8(v203, v194, &qword_1002644B0, &qword_1001DCA00);
      v122 = v235;
      v123 = v234;
      v124 = v233;
      v125 = v196;
      sub_1000081F8(v119, v196, &qword_10025DFB0, &qword_1001D33E0);
      v126 = v197;
      sub_1000081F8(v121, v197, &qword_1002644B0, &qword_1001DCA00);
      v127 = sub_10000341C(&qword_1002644E0, &qword_1001DCAC8);
      v128 = v126 + *(v127 + 48);
      *v128 = 0;
      *(v128 + 8) = v122;
      v129 = v200;
      *(v128 + 16) = v201;
      *(v128 + 24) = v123;
      *(v128 + 32) = v129;
      *(v128 + 40) = v124;
      v130 = v191;
      *(v128 + 48) = v192;
      *(v128 + 56) = v130;
      sub_1000081F8(v125, v126 + *(v127 + 64), &qword_10025DFB0, &qword_1001D33E0);
      sub_10000F500(v119, &qword_10025DFB0, &qword_1001D33E0);
      sub_10000F500(v120, &qword_1002644B0, &qword_1001DCA00);
      sub_10000F500(v125, &qword_10025DFB0, &qword_1001D33E0);
      sub_10000F500(v121, &qword_1002644B0, &qword_1001DCA00);
      v73 = v205;
      sub_10002A894(v126, v205, &qword_1002644A0, &unk_1001DC9E8);
      (*(v206 + 56))(v73, 0, 1, v207);
    }

    v131 = v202;
    sub_1000081F8(v212, v202, &qword_1002644C8, &qword_1001DCA28);
    v132 = v204;
    sub_1000081F8(v73, v204, &qword_1002644B8, &qword_1001DCA08);
    v133 = v208;
    v134 = v176;
    *v208 = v175;
    *(v133 + 1) = v134;
    v135 = sub_10000341C(&qword_1002644E8, &qword_1001DCAD0);
    sub_1000081F8(v131, v133 + *(v135 + 48), &qword_1002644C8, &qword_1001DCA28);
    sub_1000081F8(v132, v133 + *(v135 + 64), &qword_1002644B8, &qword_1001DCA08);
    sub_10000F500(v132, &qword_1002644B8, &qword_1001DCA08);
    sub_10000F500(v131, &qword_1002644C8, &qword_1001DCA28);
    sub_1000081F8(v133, v211, &qword_100264498, &qword_1001DC9E0);
    swift_storeEnumTagMultiPayload();
    sub_100149490(&qword_100261960, type metadata accessor for InputWarningView);
    sub_100007120(&qword_1002644F0, &qword_100264498, &qword_1001DC9E0);
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v133, &qword_100264498, &qword_1001DC9E0);
    sub_10000F500(v73, &qword_1002644B8, &qword_1001DCA08);
    return sub_10000F500(v212, &qword_1002644C8, &qword_1001DCA28);
  }
}

uint64_t sub_10014231C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a2;
  v94 = sub_10000341C(&qword_100264508, &qword_1001DCC38);
  v3 = *(*(v94 - 8) + 64);
  __chkstk_darwin(v94);
  v83 = v79 - v4;
  v92 = sub_10000341C(&qword_100264510, &qword_1001DCC40);
  v5 = *(*(v92 - 8) + 64);
  __chkstk_darwin(v92);
  v93 = v79 - v6;
  v89 = type metadata accessor for IconOnlyLabelStyle();
  v88 = *(v89 - 8);
  v7 = *(v88 + 64);
  __chkstk_darwin(v89);
  v87 = v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_10000341C(&qword_100264518, &qword_1001DCC48);
  v9 = *(*(v85 - 8) + 64);
  __chkstk_darwin(v85);
  v86 = (v79 - v10);
  v91 = sub_10000341C(&qword_100264520, &qword_1001DCC50);
  v11 = *(*(v91 - 8) + 64);
  __chkstk_darwin(v91);
  v90 = v79 - v12;
  v13 = sub_10000341C(&qword_100264528, &qword_1001DCC58);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v98 = v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v97 = v79 - v17;
  v18 = type metadata accessor for RewritingView();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18 - 8);
  v21 = sub_10000341C(&qword_100264530, &qword_1001DCC60);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = v79 - v23;
  v25 = sub_10000341C(&qword_100264538, &qword_1001DCC68);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v96 = v79 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v100 = v79 - v29;
  sub_100148B68(a1, v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RewritingView);
  v30 = *(v19 + 80);
  v31 = (v30 + 16) & ~v30;
  v81 = v20;
  v79[1] = v30;
  v32 = swift_allocObject();
  v80 = v31;
  v82 = v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100148AE8(v82, v32 + v31, type metadata accessor for RewritingView);
  sub_10000341C(&qword_100264540, &unk_1001DCC70);
  sub_100148BEC();
  Button.init(action:label:)();
  v95 = a1;
  v33 = *(a1 + 48);
  swift_getKeyPath();
  v34 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel___observationRegistrar;
  *&v104 = v33;
  sub_100149490(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v35 = OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__showingOriginal;
  v36 = v33[OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__showingOriginal];
  v101 = 0;
  v102 = 0;
  v103 = 1;
  v79[0] = sub_10000341C(&unk_10025B980, &qword_1001D03E0);
  State.init(wrappedValue:)();
  v37 = v105;
  v38 = v106;
  v39 = v104;
  v107 = v105;
  v40 = &v24[*(v21 + 36)];
  *v40 = 0;
  v40[1] = v36;
  *(v40 + 1) = 0;
  *(v40 + 8) = v39;
  v40[24] = v37;
  *(v40 + 4) = v38;
  swift_getKeyPath();
  *&v104 = v33;
  v84 = v34;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v33[v35];
  LocalizedStringKey.init(stringLiteral:)();
  v41 = Text.init(_:tableName:bundle:comment:)();
  v43 = v42;
  v45 = v44;
  sub_100148D00();
  View.accessibilityLabel(_:)();
  sub_10002A984(v41, v43, v45 & 1);

  sub_10000F500(v24, &qword_100264530, &qword_1001DCC60);
  swift_getKeyPath();
  *&v104 = v33;
  sub_100149490(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v33[112])
  {
    v46 = 1;
  }

  else
  {
    swift_getKeyPath();
    *&v104 = v33;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v46 = v33[v35];
  }

  v47 = v95;
  v48 = *(v95 + 64);
  LOBYTE(v104) = *(v95 + 56);
  *(&v104 + 1) = v48;
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.getter();
  if (v101 == 1)
  {
    v49 = static VerticalAlignment.center.getter();
    v50 = v86;
    *v86 = v49;
    *(v50 + 8) = 0;
    *(v50 + 16) = 1;
    v51 = sub_10000341C(&qword_1002645C8, &qword_1001DCCF0);
    sub_100143218(v46, v47, v50 + *(v51 + 44));
    v52 = v87;
    IconOnlyLabelStyle.init()();
    sub_100007120(&qword_1002645A0, &qword_100264518, &qword_1001DCC48);
    sub_100149490(&qword_10025DC20, &type metadata accessor for IconOnlyLabelStyle);
    v53 = v90;
    v54 = v89;
    View.labelStyle<A>(_:)();
    (*(v88 + 8))(v52, v54);
    sub_10000F500(v50, &qword_100264518, &qword_1001DCC48);
    KeyPath = swift_getKeyPath();
    v56 = swift_allocObject();
    *(v56 + 16) = v46;
    v57 = (v53 + *(v91 + 36));
    *v57 = KeyPath;
    v57[1] = sub_100035DEC;
    v57[2] = v56;
    sub_1000081F8(v53, v93, &qword_100264520, &qword_1001DCC50);
    swift_storeEnumTagMultiPayload();
    sub_100148E88();
    sub_100149000();
    v58 = v97;
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v53, &qword_100264520, &qword_1001DCC50);
LABEL_11:
    v72 = sub_10000341C(&qword_100264570, &qword_1001DCCC0);
    (*(*(v72 - 8) + 56))(v58, 0, 1, v72);
    goto LABEL_12;
  }

  swift_getKeyPath();
  *&v104 = v33;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!v33[96] && (v33[72] - 2 < 4 || !v33[72]))
  {
    v60 = v47;
    v61 = v82;
    sub_100148B68(v60, v82, type metadata accessor for RewritingView);
    v62 = v80;
    v63 = swift_allocObject();
    sub_100148AE8(v61, v63 + v62, type metadata accessor for RewritingView);
    sub_10000341C(&qword_100264580, &unk_1001DCCD0);
    sub_100148DD0();
    v64 = v83;
    Button.init(action:label:)();
    v101 = 0;
    v102 = 0;
    v103 = 1;
    State.init(wrappedValue:)();
    v65 = v104;
    v66 = v106;
    LOBYTE(v104) = v105;
    v67 = v64 + *(sub_10000341C(&qword_100264590, &qword_1001DCCE0) + 36);
    *v67 = 0;
    *(v67 + 8) = v65;
    *(v67 + 24) = v104;
    *(v67 + 32) = v66;
    v68 = swift_getKeyPath();
    v69 = swift_allocObject();
    *(v69 + 16) = v46;
    v70 = v93;
    v71 = (v64 + *(v94 + 36));
    *v71 = v68;
    v71[1] = sub_100035DEC;
    v71[2] = v69;
    sub_1000081F8(v64, v70, &qword_100264508, &qword_1001DCC38);
    swift_storeEnumTagMultiPayload();
    sub_100148E88();
    sub_100149000();
    v58 = v97;
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v64, &qword_100264508, &qword_1001DCC38);
    goto LABEL_11;
  }

  v59 = sub_10000341C(&qword_100264570, &qword_1001DCCC0);
  v58 = v97;
  (*(*(v59 - 8) + 56))(v97, 1, 1, v59);
LABEL_12:
  v73 = v100;
  v74 = v96;
  sub_1000081F8(v100, v96, &qword_100264538, &qword_1001DCC68);
  v75 = v98;
  sub_1000081F8(v58, v98, &qword_100264528, &qword_1001DCC58);
  v76 = v99;
  sub_1000081F8(v74, v99, &qword_100264538, &qword_1001DCC68);
  v77 = sub_10000341C(&qword_100264578, &qword_1001DCCC8);
  sub_1000081F8(v75, v76 + *(v77 + 48), &qword_100264528, &qword_1001DCC58);
  sub_10000F500(v58, &qword_100264528, &qword_1001DCC58);
  sub_10000F500(v73, &qword_100264538, &qword_1001DCC68);
  sub_10000F500(v75, &qword_100264528, &qword_1001DCC58);
  return sub_10000F500(v74, &qword_100264538, &qword_1001DCC68);
}

uint64_t sub_10014307C(uint64_t a1)
{
  v1 = *(a1 + 48);
  swift_getKeyPath();
  sub_100149490(&unk_10025B870, type metadata accessor for RewritingModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__showingOriginal);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100143218@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v5 = type metadata accessor for RewritingView();
  v31 = *(v5 - 8);
  v6 = *(v31 + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_10000341C(&qword_1002645D0, &qword_1001DCCF8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v31 - v9;
  v11 = sub_10000341C(&qword_1002645D8, &qword_1001DCD00);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v31 - v16;
  v18 = sub_10000341C(&qword_1002645E0, &qword_1001DCD08);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v31 - v23;
  *v24 = static VerticalAlignment.center.getter();
  *(v24 + 1) = 0x3FF0000000000000;
  v24[16] = 0;
  v25 = sub_10000341C(&qword_1002645E8, &unk_1001DCD10);
  sub_100143674(a1, a2, &v24[*(v25 + 44)]);
  sub_100148B68(a2, &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RewritingView);
  v26 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v27 = swift_allocObject();
  sub_100148AE8(&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for RewritingView);
  sub_10000341C(&unk_10025D7B0, &qword_1001D0A20);
  sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20);
  Button.init(action:label:)();
  LocalizedStringKey.init(stringLiteral:)();
  sub_100149188();
  View.accessibilityLabel(_:)();

  sub_10000F500(v10, &qword_1002645D0, &qword_1001DCCF8);
  sub_1000081F8(v24, v22, &qword_1002645E0, &qword_1001DCD08);
  sub_1000081F8(v17, v15, &qword_1002645D8, &qword_1001DCD00);
  v28 = v32;
  sub_1000081F8(v22, v32, &qword_1002645E0, &qword_1001DCD08);
  v29 = sub_10000341C(&qword_100264600, &unk_1001DCD20);
  sub_1000081F8(v15, v28 + *(v29 + 48), &qword_1002645D8, &qword_1001DCD00);
  sub_10000F500(v17, &qword_1002645D8, &qword_1001DCD00);
  sub_10000F500(v24, &qword_1002645E0, &qword_1001DCD08);
  sub_10000F500(v15, &qword_1002645D8, &qword_1001DCD00);
  return sub_10000F500(v22, &qword_1002645E0, &qword_1001DCD08);
}

uint64_t sub_100143674@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v92 = a3;
  v86 = type metadata accessor for UnevenCornerPrimaryButtonStyle(0);
  v5 = *(*(v86 - 8) + 64);
  __chkstk_darwin(v86);
  v7 = (v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for RewritingView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v93 = v11;
  v12 = v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_10000341C(&qword_100264608, &qword_1001DCD40);
  v13 = *(*(v95 - 8) + 64);
  __chkstk_darwin(v95);
  v94 = v74 - v14;
  v15 = sub_10000341C(&qword_100264610, &qword_1001DCD48);
  v88 = *(v15 - 8);
  v89 = v15;
  v16 = *(v88 + 64);
  __chkstk_darwin(v15);
  v97 = v74 - v17;
  v18 = sub_10000341C(&qword_100264618, &qword_1001DCD50);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v91 = v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v90 = v74 - v23;
  v24 = __chkstk_darwin(v22);
  v87 = v74 - v25;
  __chkstk_darwin(v24);
  v96 = v74 - v26;
  v27 = 1;
  v28 = 1;
  if ((a1 & 1) == 0)
  {
    v29 = *(a2 + 48);
    swift_getKeyPath();
    v98 = v29;
    sub_100149490(&unk_10025B870, type metadata accessor for RewritingModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v28 = *(v29 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__undoCount) == 0;
    swift_getKeyPath();
    v98 = v29;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v27 = *(v29 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__redoCount) == 0;
  }

  v79 = a2;
  v85 = v27;
  v84 = type metadata accessor for RewritingView;
  v80 = v12;
  sub_100148B68(a2, v12, type metadata accessor for RewritingView);
  v83 = *(v9 + 80);
  v30 = (v83 + 16) & ~v83;
  v81 = v30;
  v31 = swift_allocObject();
  v82 = type metadata accessor for RewritingView;
  sub_100148AE8(v12, v31 + v30, type metadata accessor for RewritingView);
  v78 = sub_10000341C(&unk_10025D7B0, &qword_1001D0A20);
  v77 = sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20);
  v32 = v94;
  Button.init(action:label:)();
  KeyPath = swift_getKeyPath();
  v34 = swift_allocObject();
  *(v34 + 16) = v28;
  v35 = v95;
  v36 = (v32 + *(v95 + 36));
  *v36 = KeyPath;
  v36[1] = sub_100035DEC;
  v36[2] = v34;
  v37 = swift_getKeyPath();
  *v7 = 1;
  v38 = v86;
  v39 = *(v86 + 24);
  *(v7 + v39) = swift_getKeyPath();
  v76 = sub_10000341C(&qword_100262940, &unk_1001D0560);
  swift_storeEnumTagMultiPayload();
  v40 = v7 + *(v38 + 28);
  *v40 = v37;
  v40[8] = 0;
  v41 = sub_1001493AC();
  v42 = sub_100149490(&qword_10025C9F0, type metadata accessor for UnevenCornerPrimaryButtonStyle);
  v74[1] = v41;
  v43 = v7;
  v44 = v42;
  v74[0] = v42;
  View.buttonStyle<A>(_:)();
  v75 = type metadata accessor for UnevenCornerPrimaryButtonStyle;
  sub_1001494D8(v43, type metadata accessor for UnevenCornerPrimaryButtonStyle);
  sub_10000F500(v32, &qword_100264608, &qword_1001DCD40);
  LocalizedStringKey.init(stringLiteral:)();
  v45 = Text.init(_:tableName:bundle:comment:)();
  v47 = v46;
  v49 = v48;
  v98 = v35;
  v99 = v38;
  v100 = v41;
  v101 = v44;
  v74[2] = swift_getOpaqueTypeConformance2();
  v50 = v97;
  v51 = v89;
  View.accessibilityLabel(_:)();
  sub_10002A984(v45, v47, v49 & 1);

  v88 = *(v88 + 8);
  (v88)(v50, v51);
  v52 = v80;
  sub_100148B68(v79, v80, v84);
  v53 = v81;
  v54 = swift_allocObject();
  sub_100148AE8(v52, v54 + v53, v82);
  v55 = v94;
  Button.init(action:label:)();
  v56 = swift_getKeyPath();
  v57 = swift_allocObject();
  *(v57 + 16) = v85;
  v58 = (v55 + *(v95 + 36));
  *v58 = v56;
  v58[1] = sub_100035DEC;
  v58[2] = v57;
  v59 = swift_getKeyPath();
  *v43 = 256;
  v60 = *(v38 + 24);
  *(v43 + v60) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v61 = v43 + *(v38 + 28);
  *v61 = v59;
  v61[8] = 0;
  View.buttonStyle<A>(_:)();
  sub_1001494D8(v43, v75);
  sub_10000F500(v55, &qword_100264608, &qword_1001DCD40);
  LocalizedStringKey.init(stringLiteral:)();
  v62 = Text.init(_:tableName:bundle:comment:)();
  v64 = v63;
  LOBYTE(v53) = v65;
  v66 = v87;
  v67 = v97;
  View.accessibilityLabel(_:)();
  sub_10002A984(v62, v64, v53 & 1);

  (v88)(v67, v51);
  v68 = v96;
  v69 = v90;
  sub_1000081F8(v96, v90, &qword_100264618, &qword_1001DCD50);
  v70 = v91;
  sub_1000081F8(v66, v91, &qword_100264618, &qword_1001DCD50);
  v71 = v92;
  sub_1000081F8(v69, v92, &qword_100264618, &qword_1001DCD50);
  v72 = sub_10000341C(&qword_100264628, &qword_1001DCDA8);
  sub_1000081F8(v70, v71 + *(v72 + 48), &qword_100264618, &qword_1001DCD50);
  sub_10000F500(v66, &qword_100264618, &qword_1001DCD50);
  sub_10000F500(v68, &qword_100264618, &qword_1001DCD50);
  sub_10000F500(v70, &qword_100264618, &qword_1001DCD50);
  return sub_10000F500(v69, &qword_100264618, &qword_1001DCD50);
}

uint64_t sub_1001440A8(uint64_t a1)
{
  v2 = type metadata accessor for RewritingView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v15 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_100148B68(a1, v5, type metadata accessor for RewritingView);
  type metadata accessor for MainActor();
  v11 = static MainActor.shared.getter();
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = &protocol witness table for MainActor;
  sub_100148AE8(v5, v13 + v12, type metadata accessor for RewritingView);
  sub_10015C9C8(0, 0, v9, &unk_1001DCD38, v13);
}

uint64_t sub_100144288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_100144320, v6, v5);
}

uint64_t sub_100144320()
{
  v1 = *(*(v0 + 16) + 48);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1001443B8;

  return sub_1000B6880(0);
}

uint64_t sub_1001443B8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v6 = *v0;

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return _swift_task_switch(sub_1001444D8, v4, v3);
}

uint64_t sub_1001444D8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001445A4@<X0>(uint64_t *a1@<X8>)
{
  sub_100125454(5);
  result = Image.init(_internalSystemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_1001445D4(uint64_t a1)
{
  v2 = type metadata accessor for RewritingView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v16[-v8];
  v10 = *(a1 + 64);
  v16[16] = *(a1 + 56);
  v17 = v10;
  v16[15] = 1;
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.setter();
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  sub_100148B68(a1, v5, type metadata accessor for RewritingView);
  type metadata accessor for MainActor();
  v12 = static MainActor.shared.getter();
  v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = &protocol witness table for MainActor;
  sub_100148AE8(v5, v14 + v13, type metadata accessor for RewritingView);
  sub_10015C9C8(0, 0, v9, &unk_1001DCDB8, v14);
}

uint64_t sub_1001447F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_10014488C, v6, v5);
}

uint64_t sub_10014488C()
{
  v1 = *(*(v0 + 16) + 48);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_100144924;

  return sub_1000B6880(0);
}

uint64_t sub_100144924()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v6 = *v0;

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return _swift_task_switch(sub_100149EA8, v4, v3);
}

uint64_t sub_100144A44@<X0>(uint64_t a1@<X8>)
{
  Label.init(title:icon:)();
  if (qword_10025A7C0 != -1)
  {
    swift_once();
  }

  v2 = qword_100277170;
  *(a1 + *(sub_10000341C(&qword_100264580, &unk_1001DCCD0) + 36)) = v2;
}

uint64_t sub_100144B20@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100144B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v20[0] = sub_10000341C(&qword_100264470, &qword_1001DC958);
  v3 = *(*(v20[0] - 8) + 64);
  __chkstk_darwin(v20[0]);
  v5 = v20 - v4;
  v6 = sub_10000341C(&qword_100264478, &unk_1001DC960);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v20 - v9;
  v11 = type metadata accessor for ToolbarItemPlacement();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_10000341C(&qword_100262BD8, &qword_1001D9AD8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v20 - v16;
  static ToolbarItemPlacement.cancellationAction.getter();
  v20[8] = a1;
  sub_10000341C(&unk_100262BE0, &unk_1001D7D60);
  sub_10006B6C0();
  ToolbarItem<>.init(placement:content:)();
  static ToolbarItemPlacement.confirmationAction.getter();
  v20[4] = a1;
  sub_10000341C(&qword_100264480, &unk_1001DC970);
  sub_1001488D4();
  ToolbarItem<>.init(placement:content:)();
  v18 = *(v20[0] + 48);
  (*(v14 + 16))(v5, v17, v13);
  (*(v7 + 16))(&v5[v18], v10, v6);
  TupleToolbarContent.init(_:)();
  (*(v7 + 8))(v10, v6);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_100144E94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21[0] = a2;
  v3 = type metadata accessor for RewritingView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = type metadata accessor for ButtonRole();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_10000341C(&qword_10025C808, &unk_1001D3340);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v21 - v11;
  static ButtonRole.cancel.getter();
  sub_100148B68(a1, v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RewritingView);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_100148AE8(v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for RewritingView);
  Button<>.init(role:action:)();
  v15 = *(a1 + 48);
  sub_100037954();
  LocalizedStringKey.init(stringLiteral:)();
  v16 = Text.init(_:tableName:bundle:comment:)();
  v18 = v17;
  LOBYTE(v13) = v19;
  sub_100007120(&qword_10025DF90, &qword_10025C808, &unk_1001D3340);
  View.accessibility(label:)();
  sub_10002A984(v16, v18, v13 & 1);

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_100145194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = type metadata accessor for ButtonRole();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v32 = sub_10000341C(&qword_10025C820, &qword_1001D9AE0);
  v5 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v7 = &v29 - v6;
  v29 = sub_10000341C(&qword_100264490, &qword_1001DC980);
  v8 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v31 = &v29 - v9;
  v10 = type metadata accessor for RewritingView();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v30 = sub_10000341C(&unk_10025DF60, &unk_1001D7CD0);
  v13 = *(v30 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v30);
  v16 = &v29 - v15;
  v17 = *(a1 + 48);
  if (sub_100037954())
  {
    LocalizedStringKey.init(stringLiteral:)();
    sub_100148B68(a1, &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RewritingView);
    v18 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v19 = swift_allocObject();
    sub_100148AE8(&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for RewritingView);
    Button<>.init(_:action:)();
    v20 = v30;
    (*(v13 + 16))(v31, v16, v30);
    swift_storeEnumTagMultiPayload();
    sub_100007120(&qword_100264210, &unk_10025DF60, &unk_1001D7CD0);
    sub_100048B00();
    _ConditionalContent<>.init(storage:)();
    return (*(v13 + 8))(v16, v20);
  }

  else
  {
    static ButtonRole.confirm.getter();
    sub_100148B68(a1, &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RewritingView);
    v22 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v23 = swift_allocObject();
    sub_100148AE8(&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for RewritingView);
    Button<>.init(role:action:)();
    swift_getKeyPath();
    v34 = v17;
    sub_100149490(&qword_10025C140, type metadata accessor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v24 = *(v17 + 112);
    KeyPath = swift_getKeyPath();
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    v27 = v31;
    v28 = &v7[*(v32 + 36)];
    *v28 = KeyPath;
    v28[1] = sub_10002AAC0;
    v28[2] = v26;
    sub_1000081F8(v7, v27, &qword_10025C820, &qword_1001D9AE0);
    swift_storeEnumTagMultiPayload();
    sub_100007120(&qword_100264210, &unk_10025DF60, &unk_1001D7CD0);
    sub_100048B00();
    _ConditionalContent<>.init(storage:)();
    return sub_10000F500(v7, &qword_10025C820, &qword_1001D9AE0);
  }
}

uint64_t sub_100145710(uint64_t result)
{
  v1 = *(result + 48);
  if (*(v1 + 144) == 1)
  {
    *(v1 + 144) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100149490(&qword_10025C140, type metadata accessor for ToolModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void *sub_100145824(uint64_t a1)
{
  v1 = *(a1 + 48);
  sub_1000C2BCC(2, 0, 0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result endWritingTools];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100145894(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_10013E65C();
  swift_getKeyPath();
  sub_100149490(&qword_10025B1E0, type metadata accessor for CommonUIManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 81);

  if (v2 != v4)
  {
    sub_10013E65C();
    sub_1001537FC(v2);
  }

  return result;
}

uint64_t sub_100145978(uint64_t a1)
{
  v2 = *(a1 + 48);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = (a1 + *(type metadata accessor for RewritingView() + 44));
    v11 = *v5;
    v14 = *(v5 + 1);
    v17 = v5[16];
    sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
    FocusState.wrappedValue.getter();
    [v4 enableIntelligentEntryFieldView:v10];
    swift_unknownObjectRelease();
  }

  v6 = type metadata accessor for RewritingView();
  v7 = (a1 + *(v6 + 44));
  v12 = *v7;
  v15 = *(v7 + 1);
  v18 = v7[16];
  sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
  FocusState.wrappedValue.getter();
  v8 = (a1 + *(v6 + 48));
  v13 = *v8;
  v16 = v8[1];
  v19 = *(v8 + 16);
  sub_10000341C(&qword_100262800, &qword_1001D9490);
  return Binding.wrappedValue.setter();
}

uint64_t sub_100145AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = sub_10000341C(&qword_10025C6D8, &unk_1001D7C80);
  v4 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24);
  v6 = &v21 - v5;
  v7 = sub_10000341C(&qword_10025C6E0, &unk_1001D1770);
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = __chkstk_darwin(v7);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v21 - v13;
  v23 = static Color.clear.getter();
  v22 = static Edge.Set.vertical.getter();
  v21 = static SafeAreaRegions.all.getter();
  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v15 = sub_10000341C(&qword_10025C6E8, &unk_1001D7C90);
  sub_100145DA8(&v6[*(v15 + 44)]);
  v25 = a1;
  sub_10000341C(&qword_10025C6F0, &unk_1001D1780);
  sub_100007120(&qword_10025C6F8, &qword_10025C6D8, &unk_1001D7C80);
  sub_100007120(&qword_10025C700, &qword_10025C6F0, &unk_1001D1780);
  View.toolbar<A>(content:)();
  sub_10000F500(v6, &qword_10025C6D8, &unk_1001D7C80);
  v16 = v8[2];
  v16(v12, v14, v7);
  v17 = v21;
  *a2 = v23;
  *(a2 + 8) = v17;
  *(a2 + 16) = v22;
  v18 = sub_10000341C(&qword_10025C708, &unk_1001D7CA0);
  v16((a2 + *(v18 + 48)), v12, v7);
  v19 = v8[1];

  v19(v14, v7);
  v19(v12, v7);
}

uint64_t sub_100145DA8@<X0>(uint64_t a1@<X8>)
{
  v84 = a1;
  v1 = type metadata accessor for ParagraphTypesetting();
  v2 = *(v1 - 8);
  v88 = v1;
  v89 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v86 = v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_10000341C(&qword_10025C760, &unk_1001D1830);
  v12 = *(v11 - 8);
  v87 = v11 - 8;
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11 - 8);
  v83 = v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v82 = v80 - v17;
  v18 = __chkstk_darwin(v16);
  v81 = v80 - v19;
  __chkstk_darwin(v18);
  v85 = v80 - v20;
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v21._countAndFlagsBits = 0x2065736F706D6F43;
  v21._object = 0xED00002068746977;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v21);
  v22._countAndFlagsBits = sub_1000971C0();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v22);

  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v23);
  String.LocalizationValue.init(stringInterpolation:)();
  static Locale.current.getter();
  v90 = String.init(localized:table:bundle:locale:comment:)();
  v91 = v24;
  v80[3] = sub_10002AC34();
  v25 = Text.init<A>(_:)();
  v27 = v26;
  v29 = v28;
  v30 = Text.bold()();
  v32 = v31;
  v34 = v33;
  sub_10002A984(v25, v27, v29 & 1);

  LODWORD(v90) = static HierarchicalShapeStyle.primary.getter();
  v35 = Text.foregroundStyle<A>(_:)();
  v37 = v36;
  LOBYTE(v25) = v38;
  v40 = v39;
  sub_10002A984(v30, v32, v34 & 1);

  KeyPath = swift_getKeyPath();
  v90 = v35;
  v91 = v37;
  v92 = v25 & 1;
  v93 = v40;
  v94 = KeyPath;
  v95 = 1;
  v42 = v86;
  static ParagraphTypesetting.balanced.getter();
  v80[2] = sub_10000341C(&qword_10025C768, &unk_1001D9F80);
  v80[1] = sub_10004882C();
  v43 = v85;
  View.paragraphTypesetting(_:isEnabled:)();
  v44 = *(v89 + 8);
  v89 += 8;
  v44(v42, v88);
  sub_10002A984(v35, v37, v25 & 1);

  LOBYTE(v32) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v45 = v43 + *(v87 + 44);
  *v45 = v32;
  *(v45 + 8) = v46;
  *(v45 + 16) = v47;
  *(v45 + 24) = v48;
  *(v45 + 32) = v49;
  *(v45 + 40) = 0;
  v90 = sub_10013E31C();
  v91 = v50;
  v51 = Text.init<A>(_:)();
  v53 = v52;
  v55 = v54;
  LODWORD(v90) = static HierarchicalShapeStyle.secondary.getter();
  v56 = Text.foregroundStyle<A>(_:)();
  v58 = v57;
  LOBYTE(v37) = v59;
  sub_10002A984(v51, v53, v55 & 1);

  static Font.callout.getter();
  v60 = Text.font(_:)();
  v62 = v61;
  LOBYTE(v53) = v63;
  v65 = v64;

  sub_10002A984(v56, v58, v37 & 1);

  v66 = swift_getKeyPath();
  v90 = v60;
  v91 = v62;
  v92 = v53 & 1;
  v93 = v65;
  v94 = v66;
  v95 = 1;
  v67 = v86;
  static ParagraphTypesetting.balanced.getter();
  v68 = v81;
  View.paragraphTypesetting(_:isEnabled:)();
  v44(v67, v88);
  sub_10002A984(v60, v62, v53 & 1);

  LOBYTE(v51) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v69 = v68 + *(v87 + 44);
  *v69 = v51;
  *(v69 + 8) = v70;
  *(v69 + 16) = v71;
  *(v69 + 24) = v72;
  *(v69 + 32) = v73;
  *(v69 + 40) = 0;
  v74 = v85;
  v75 = v82;
  sub_1000081F8(v85, v82, &qword_10025C760, &unk_1001D1830);
  v76 = v83;
  sub_1000081F8(v68, v83, &qword_10025C760, &unk_1001D1830);
  v77 = v84;
  sub_1000081F8(v75, v84, &qword_10025C760, &unk_1001D1830);
  v78 = sub_10000341C(&qword_10025C770, &qword_1001D1840);
  sub_1000081F8(v76, v77 + *(v78 + 48), &qword_10025C760, &unk_1001D1830);
  sub_10000F500(v68, &qword_10025C760, &unk_1001D1830);
  sub_10000F500(v74, &qword_10025C760, &unk_1001D1830);
  sub_10000F500(v76, &qword_10025C760, &unk_1001D1830);
  return sub_10000F500(v75, &qword_10025C760, &unk_1001D1830);
}

uint64_t sub_100146474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v27 = sub_10000341C(&qword_10025C710, &unk_1001D1790);
  v3 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27);
  v25 = &v23 - v4;
  v26 = sub_10000341C(&qword_10025C718, &unk_1001D7CB0);
  v5 = *(v26 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v26);
  v8 = &v23 - v7;
  v9 = type metadata accessor for ToolbarItemPlacement();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v24 = sub_10000341C(&qword_10025C720, &unk_1001D17A0);
  v11 = *(v24 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v24);
  v14 = &v23 - v13;
  static ToolbarItemPlacement.cancellationAction.getter();
  v30 = a1;
  sub_10000341C(&qword_10025C728, &unk_1001D7CC0);
  sub_100007120(&qword_10025C730, &qword_10025C728, &unk_1001D7CC0);
  ToolbarItem<>.init(placement:content:)();
  static ToolbarItemPlacement.confirmationAction.getter();
  v29 = a1;
  sub_10000341C(&qword_10025C738, &unk_1001D17B0);
  v15 = sub_100003E34(&unk_10025DF60, &unk_1001D7CD0);
  v16 = sub_100007120(&qword_100264210, &unk_10025DF60, &unk_1001D7CD0);
  v31 = v15;
  v32 = v16;
  swift_getOpaqueTypeConformance2();
  ToolbarItem<>.init(placement:content:)();
  v17 = *(v27 + 48);
  v19 = v24;
  v18 = v25;
  (*(v11 + 16))(v25, v14, v24);
  v20 = &v18[v17];
  v21 = v26;
  (*(v5 + 16))(v20, v8, v26);
  TupleToolbarContent.init(_:)();
  (*(v5 + 8))(v8, v21);
  return (*(v11 + 8))(v14, v19);
}

uint64_t sub_10014681C(uint64_t a1)
{
  v2 = type metadata accessor for RewritingView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_100148B68(a1, &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for RewritingView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_100148AE8(&v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v6 + v5, type metadata accessor for RewritingView);
  v9 = a1;
  sub_10000341C(&qword_10025C740, &qword_1001DCDD0);
  sub_10004876C();
  return Button.init(action:label:)();
}

void *sub_10014698C(uint64_t a1)
{
  v2 = type metadata accessor for NavigationPath();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 48);
  sub_1000C2BCC(0, 0, 0);
  v8 = *(type metadata accessor for RewritingView() + 40);
  sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  Binding.wrappedValue.getter();
  v9 = NavigationPath.isEmpty.getter();
  (*(v3 + 8))(v6, v2);
  if (v9)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result endWritingTools];
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    Binding.wrappedValue.getter();
    NavigationPath.removeLast(_:)(1);
    return Binding.wrappedValue.setter();
  }

  return result;
}

__n128 sub_100146B08@<Q0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for NavigationPath();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(type metadata accessor for RewritingView() + 40);
  sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  Binding.wrappedValue.getter();
  v8 = NavigationPath.isEmpty.getter();
  (*(v3 + 8))(v6, v2);
  if (v8)
  {
    LocalizedStringKey.init(stringLiteral:)();
    v9 = Text.init(_:tableName:bundle:comment:)();
    v28 = v10 & 1;
    v16[8] = 1;
    v20 = v9;
    v21 = v11;
    v22 = v10 & 1;
    *v23 = v19[0];
    *&v23[3] = *(v19 + 3);
    v24 = v12;
    v25 = v17;
    v26 = v18;
    v27 = 1;
  }

  else
  {
    v13 = static VerticalAlignment.center.getter();
    sub_1000405A4(v29);
    LOBYTE(v19[0]) = 1;
    v28 = v29[24];
    LOBYTE(v17) = 0;
    v20 = v13;
    v21 = 0;
    v22 = 1;
    v24 = *v29;
    v25 = *&v29[8];
    LOBYTE(v26) = v29[24];
    *(&v26 + 1) = v30;
    v27 = 0;
  }

  sub_10000341C(&qword_10025C758, &qword_1001D1800);
  sub_100007120(&qword_10025C750, &qword_10025C758, &qword_1001D1800);
  _ConditionalContent<>.init(storage:)();
  v14 = v31;
  *(a1 + 32) = v30;
  *(a1 + 48) = v14;
  *(a1 + 64) = v32;
  result = *&v29[16];
  *a1 = *v29;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100146D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = sub_10000341C(&unk_10025DF60, &unk_1001D7CD0);
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  __chkstk_darwin(v3);
  v6 = &v42 - v5;
  v7 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 543519573;
  v9._object = 0xE400000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v9);
  v10._countAndFlagsBits = sub_1000971C0();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v10);

  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v11);
  v12 = type metadata accessor for String.LocalizationValue();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  String.LocalizationValue.init(stringInterpolation:)();
  v14 = type metadata accessor for Locale();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  static Locale.current.getter();
  v51 = String.init(localized:table:bundle:locale:comment:)();
  v52 = v16;
  v17 = type metadata accessor for RewritingView();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17 - 8);
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_100148B68(a1, &v42 - v20, type metadata accessor for RewritingView);
  v21 = *(v18 + 80);
  v22 = swift_allocObject();
  sub_100148AE8(&v42 - v20, v22 + ((v21 + 16) & ~v21), type metadata accessor for RewritingView);
  sub_10002AC34();
  v46 = v6;
  v23 = Button<>.init<A>(_:action:)();
  __chkstk_darwin(v23);
  sub_100148B68(a1, &v42 - v20, type metadata accessor for RewritingView);
  type metadata accessor for MainActor();
  v24 = static MainActor.shared.getter();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = &protocol witness table for MainActor;
  sub_100148AE8(&v42 - v20, v25 + ((v21 + 32) & ~v21), type metadata accessor for RewritingView);
  v26 = type metadata accessor for TaskPriority();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF0;
  static TaskPriority.userInitiated.getter();
  if (sub_1001C7274(2, 26, 4, 0))
  {
    v44 = type metadata accessor for _TaskModifier2();
    v45 = &v42;
    v43 = *(v44 - 8);
    v30 = *(v43 + 64);
    __chkstk_darwin(v44);
    v32 = &v42 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    v51 = 0;
    v52 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v51 = 0xD000000000000036;
    v52 = 0x80000001001E77F0;
    v50 = 286;
    v33._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v33);

    __chkstk_darwin(v34);
    (*(v27 + 16))(&v42 - v29, &v42 - v29, v26);
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v27 + 8))(&v42 - v29, v26);
    v35 = v49;
    (*(v47 + 32))(v49, v46, v48);
    v36 = sub_10000341C(&qword_10025A980, &qword_1001CE160);
    return (*(v43 + 32))(v35 + *(v36 + 36), v32, v44);
  }

  else
  {
    v38 = sub_10000341C(&qword_10025A988, &qword_1001CE168);
    v39 = v49;
    v40 = (v49 + *(v38 + 36));
    v41 = type metadata accessor for _TaskModifier();
    (*(v27 + 32))(&v40[*(v41 + 20)], &v42 - v29, v26);
    *v40 = &unk_1001DCDC8;
    *(v40 + 1) = v25;
    return (*(v47 + 32))(v39, v46, v48);
  }
}

uint64_t sub_100147400(uint64_t a1)
{
  v2 = type metadata accessor for NavigationPath();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 48);
  sub_1000C2BCC(0, 0, 0);
  v8 = type metadata accessor for RewritingView();
  v9 = *(v8 + 40);
  sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  Binding.wrappedValue.getter();
  v10 = NavigationPath.isEmpty.getter();
  result = (*(v3 + 8))(v6, v2);
  if ((v10 & 1) == 0)
  {
    Binding.wrappedValue.getter();
    NavigationPath.removeLast(_:)(1);
    result = Binding.wrappedValue.setter();
  }

  v12 = a1 + *(v8 + 56);
  v13 = *v12;
  if (*v12)
  {
    v14 = *(v12 + 8);
    swift_getKeyPath();
    v17[1] = v7;
    sub_100149490(&qword_10025C140, type metadata accessor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v7 + 96))
    {
      if (*(v7 + 96) == 255)
      {
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      v15 = 0;
      v16 = 0;
    }

    else
    {
      v15 = *(v7 + 80);
      v16 = *(v7 + 88);
      sub_10000F3F4(*(v7 + 72), v15, v16, 0);
    }

    v13(v15, v16);
  }

  return result;
}

uint64_t sub_100147688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  type metadata accessor for MainActor();
  *(v3 + 24) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100147720, v5, v4);
}

uint64_t sub_100147720()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = *(v2 + 48);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if ([Strong respondsToSelector:"resetPresentationSelectedDetent"])
    {
      [v5 resetPresentationSelectedDetent];
    }

    swift_unknownObjectRelease();
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1001477D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1001478A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100147958()
{
  sub_100147C04(319, &unk_10025DE20, type metadata accessor for CommonUIManager, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_100147C04(319, &qword_10025D688, type metadata accessor for WritingToolsModel, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_100147CBC(319, &qword_10025B470, &unk_10025D690, &qword_1001D2750, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        type metadata accessor for RewritingModel();
        if (v3 <= 0x3F)
        {
          sub_100147C68(319, &qword_10025DE40, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            sub_100147C04(319, &unk_100262AA0, &type metadata accessor for FBKEvaluationController, &type metadata accessor for State);
            if (v5 <= 0x3F)
            {
              sub_100147C04(319, &unk_10025DE30, &type metadata accessor for NavigationPath, &type metadata accessor for Binding);
              if (v6 <= 0x3F)
              {
                sub_1000275C0();
                if (v7 <= 0x3F)
                {
                  sub_100147C68(319, qword_100262780, &type metadata accessor for Binding);
                  if (v8 <= 0x3F)
                  {
                    sub_1000596F4();
                    if (v9 <= 0x3F)
                    {
                      sub_100147CBC(319, &qword_10025C560, &unk_10025C568, &unk_1001D7870, &type metadata accessor for Optional);
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

void sub_100147C04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100147C68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Bool);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100147CBC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100003E34(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_100147D24()
{
  result = qword_100264370;
  if (!qword_100264370)
  {
    sub_100003E34(&qword_1002642B0, &qword_1001DC550);
    sub_100147DDC();
    sub_100007120(&qword_1002643A0, &qword_1002643A8, &qword_1001DC5D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100264370);
  }

  return result;
}

unint64_t sub_100147DDC()
{
  result = qword_100264378;
  if (!qword_100264378)
  {
    sub_100003E34(&qword_100264298, &qword_1001DC518);
    sub_100147E94();
    sub_100007120(&qword_10025B310, &qword_10025B318, &qword_1001CFC60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100264378);
  }

  return result;
}

unint64_t sub_100147E94()
{
  result = qword_100264380;
  if (!qword_100264380)
  {
    sub_100003E34(&qword_100264290, &qword_1001DC510);
    sub_100147F50();
    sub_100149490(&qword_10025B710, type metadata accessor for PreferredContentSizeModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100264380);
  }

  return result;
}

unint64_t sub_100147F50()
{
  result = qword_100264388;
  if (!qword_100264388)
  {
    sub_100003E34(&qword_100264288, &qword_1001DC508);
    sub_100147FDC();
    sub_100148158();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100264388);
  }

  return result;
}

unint64_t sub_100147FDC()
{
  result = qword_100264390;
  if (!qword_100264390)
  {
    sub_100003E34(&qword_100264280, &qword_1001DC500);
    sub_100003E34(&qword_100264270, &qword_1001DC4F0);
    sub_100003E34(&qword_100264268, &qword_1001DC4E8);
    sub_100003E34(&qword_100264260, &qword_1001DC4E0);
    sub_100007120(&qword_1002642A8, &qword_100264260, &qword_1001DC4E0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100264390);
  }

  return result;
}

unint64_t sub_100148158()
{
  result = qword_100264398;
  if (!qword_100264398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100264398);
  }

  return result;
}

uint64_t sub_100148208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000341C(&qword_1002643E0, &unk_1001DC858);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_10014829C()
{
  v0 = type metadata accessor for PrimaryButtonStyle(0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  *v3 = 0;
  *(v3 + 1) = 0;
  *(v3 + 2) = 0x4008000000000000;
  *(v3 + 3) = 0;
  *(v3 + 4) = 0;
  *(v3 + 20) = 1;
  v5 = *(v0 + 40);
  *&v3[v5] = swift_getKeyPath();
  sub_10000341C(&qword_100262940, &unk_1001D0560);
  swift_storeEnumTagMultiPayload();
  v6 = &v3[*(v0 + 44)];
  *v6 = KeyPath;
  v6[8] = 0;
  sub_10000341C(&qword_1002643D0, &qword_1001DC850);
  sub_100007120(&qword_1002643D8, &qword_1002643D0, &qword_1001DC850);
  sub_100149490(&qword_10025C9B8, type metadata accessor for PrimaryButtonStyle);
  View.buttonStyle<A>(_:)();
  return sub_1001494D8(v3, type metadata accessor for PrimaryButtonStyle);
}

uint64_t sub_100148470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0x4030000000000000;
  }

  v6 = static Edge.Set.all.getter();
  v7 = sub_10000341C(&qword_1002643B0, &qword_1001DC7C8);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  result = sub_10000341C(&qword_1002643B8, &qword_1001DC7D0);
  v9 = a2 + *(result + 36);
  *v9 = v6;
  *(v9 + 8) = v5;
  *(v9 + 16) = v5;
  *(v9 + 24) = 0;
  *(v9 + 32) = v5;
  *(v9 + 40) = 0;
  return result;
}

__n128 sub_100148528@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v4 = sub_10000341C(&qword_1002643C0, &qword_1001DC7D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = (a2 + *(sub_10000341C(&qword_1002643C8, &qword_1001DC7E0) + 36));
  v5[4] = v11;
  v5[5] = v12;
  v5[6] = v13;
  *v5 = v7;
  v5[1] = v8;
  result = v10;
  v5[2] = v9;
  v5[3] = v10;
  return result;
}

uint64_t sub_100148638@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1001486C8()
{
  result = qword_100264458;
  if (!qword_100264458)
  {
    sub_100003E34(&qword_100264420, &qword_1001DC8A0);
    sub_100003E34(&qword_100264410, &qword_1001DC890);
    sub_100003E34(&qword_100264408, &qword_1001DC888);
    sub_100007120(&qword_100264448, &qword_100264408, &qword_1001DC888);
    sub_10002AC34();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000489E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100264458);
  }

  return result;
}

uint64_t sub_100148824(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(*(type metadata accessor for RewritingView() - 8) + 80);

  return sub_100145894(a1, a2);
}

unint64_t sub_1001488D4()
{
  result = qword_100264488;
  if (!qword_100264488)
  {
    sub_100003E34(&qword_100264480, &unk_1001DC970);
    sub_100007120(&qword_100264210, &unk_10025DF60, &unk_1001D7CD0);
    sub_100048B00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100264488);
  }

  return result;
}

uint64_t sub_1001489A4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for RewritingView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_100148AE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100148B68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100148BEC()
{
  result = qword_100264548;
  if (!qword_100264548)
  {
    sub_100003E34(&qword_100264540, &unk_1001DCC70);
    sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20);
    sub_100148CA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100264548);
  }

  return result;
}

unint64_t sub_100148CA4()
{
  result = qword_100264550;
  if (!qword_100264550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100264550);
  }

  return result;
}

unint64_t sub_100148D00()
{
  result = qword_100264558;
  if (!qword_100264558)
  {
    sub_100003E34(&qword_100264530, &qword_1001DCC60);
    sub_100007120(&qword_100264560, &qword_100264568, &unk_1001DCCB0);
    sub_10002AA54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100264558);
  }

  return result;
}

unint64_t sub_100148DD0()
{
  result = qword_100264588;
  if (!qword_100264588)
  {
    sub_100003E34(&qword_100264580, &unk_1001DCCD0);
    sub_100148BEC();
    sub_100007120(&unk_10025DB20, &qword_100263750, &qword_1001D1700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100264588);
  }

  return result;
}

unint64_t sub_100148E88()
{
  result = qword_100264598;
  if (!qword_100264598)
  {
    sub_100003E34(&qword_100264520, &qword_1001DCC50);
    sub_100003E34(&qword_100264518, &qword_1001DCC48);
    type metadata accessor for IconOnlyLabelStyle();
    sub_100007120(&qword_1002645A0, &qword_100264518, &qword_1001DCC48);
    sub_100149490(&qword_10025DC20, &type metadata accessor for IconOnlyLabelStyle);
    swift_getOpaqueTypeConformance2();
    sub_100007120(&unk_10025AAC0, &qword_1002628D0, &qword_1001D18D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100264598);
  }

  return result;
}

unint64_t sub_100149000()
{
  result = qword_1002645A8;
  if (!qword_1002645A8)
  {
    sub_100003E34(&qword_100264508, &qword_1001DCC38);
    sub_1001490B8();
    sub_100007120(&unk_10025AAC0, &qword_1002628D0, &qword_1001D18D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002645A8);
  }

  return result;
}

unint64_t sub_1001490B8()
{
  result = qword_1002645B0;
  if (!qword_1002645B0)
  {
    sub_100003E34(&qword_100264590, &qword_1001DCCE0);
    sub_100007120(&qword_1002645B8, &qword_1002645C0, &qword_1001DCCE8);
    sub_10002AA54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002645B0);
  }

  return result;
}

unint64_t sub_100149188()
{
  result = qword_1002645F0;
  if (!qword_1002645F0)
  {
    sub_100003E34(&qword_1002645D0, &qword_1001DCCF8);
    sub_100007120(&unk_10025AAB0, &qword_10025AAA8, &unk_1001CE240);
    sub_100149240();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002645F0);
  }

  return result;
}

unint64_t sub_100149240()
{
  result = qword_1002645F8;
  if (!qword_1002645F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002645F8);
  }

  return result;
}

uint64_t sub_100149294(uint64_t a1)
{
  v4 = *(type metadata accessor for RewritingView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100028688;

  return sub_100144288(a1, v6, v7, v1 + v5);
}

unint64_t sub_1001493AC()
{
  result = qword_100264620;
  if (!qword_100264620)
  {
    sub_100003E34(&qword_100264608, &qword_1001DCD40);
    sub_100007120(&unk_10025AAB0, &qword_10025AAA8, &unk_1001CE240);
    sub_100007120(&unk_10025AAC0, &qword_1002628D0, &qword_1001D18D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100264620);
  }

  return result;
}

uint64_t sub_100149490(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001494D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100149550()
{
  v1 = *(type metadata accessor for RewritingView() - 8);
  v3 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return withAnimation<A>(_:_:)();
}

uint64_t sub_100149640(uint64_t a1)
{
  v4 = *(type metadata accessor for RewritingView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002B2A0;

  return sub_1001447F4(a1, v6, v7, v1 + v5);
}

uint64_t sub_10014977C()
{
  v1 = (type metadata accessor for RewritingView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 16);

  v8 = *(v0 + v3 + 32);
  v9 = *(v0 + v3 + 40);
  j__swift_release();
  v10 = *(v0 + v3 + 48);

  v11 = *(v0 + v3 + 64);

  v12 = *(v0 + v3 + 80);

  v13 = (v0 + v3 + v1[12]);
  v14 = *v13;

  v15 = *(v13 + 1);

  v16 = *(sub_10000341C(&qword_1002632E0, &qword_1001D11A0) + 32);
  v17 = type metadata accessor for NavigationPath();
  (*(*(v17 - 8) + 8))(&v13[v16], v17);
  v18 = *(v0 + v3 + v1[13] + 8);

  v19 = (v0 + v3 + v1[14]);
  v20 = *v19;

  v21 = v19[1];

  v22 = *(v0 + v3 + v1[15] + 8);

  v23 = (v0 + v3 + v1[16]);
  if (*v23)
  {
    v24 = v23[1];
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100149924()
{
  v2 = *(type metadata accessor for RewritingView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10002B2A0;

  return sub_100147688(v4, v5, v0 + v3);
}

uint64_t sub_100149A00()
{
  v1 = (type metadata accessor for RewritingView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 16);

  v7 = *(v0 + v3 + 32);
  v8 = *(v0 + v3 + 40);
  j__swift_release();
  v9 = *(v0 + v3 + 48);

  v10 = *(v0 + v3 + 64);

  v11 = *(v0 + v3 + 80);

  v12 = (v0 + v3 + v1[12]);
  v13 = *v12;

  v14 = *(v12 + 1);

  v15 = *(sub_10000341C(&qword_1002632E0, &qword_1001D11A0) + 32);
  v16 = type metadata accessor for NavigationPath();
  (*(*(v16 - 8) + 8))(&v12[v15], v16);
  v17 = *(v0 + v3 + v1[13] + 8);

  v18 = (v0 + v3 + v1[14]);
  v19 = *v18;

  v20 = v18[1];

  v21 = *(v0 + v3 + v1[15] + 8);

  v22 = (v0 + v3 + v1[16]);
  if (*v22)
  {
    v23 = v22[1];
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

double sub_100149BA0@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *&result = sub_100146B08(a1).n128_u64[0];
  return result;
}

unint64_t sub_100149BB4()
{
  result = qword_100264630;
  if (!qword_100264630)
  {
    sub_100003E34(&qword_1002643B8, &qword_1001DC7D0);
    sub_100007120(&qword_100264638, &qword_1002643B0, &qword_1001DC7C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100264630);
  }

  return result;
}

unint64_t sub_100149C70()
{
  result = qword_100264640;
  if (!qword_100264640)
  {
    sub_100003E34(&qword_1002643C8, &qword_1001DC7E0);
    sub_100007120(&qword_100264648, &qword_1002643C0, &qword_1001DC7D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100264640);
  }

  return result;
}

uint64_t sub_100149D28()
{
  sub_100003E34(&qword_1002643D0, &qword_1001DC850);
  type metadata accessor for PrimaryButtonStyle(255);
  sub_100007120(&qword_1002643D8, &qword_1002643D0, &qword_1001DC850);
  sub_100149490(&qword_10025C9B8, type metadata accessor for PrimaryButtonStyle);
  return swift_getOpaqueTypeConformance2();
}

id sub_100149EB0(uint64_t a1, uint64_t a2)
{
  sub_1000057A8(&_swiftEmptyArrayStorage);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = sub_10014A430(a1, a2);
  v9 = v8;

  v35 = &type metadata for String;
  *&v34 = v7;
  *(&v34 + 1) = v9;
  sub_100008150(&v34, v33);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1001A9A58(v33, v4, v6, isUniquelyReferenced_nonNull_native);

  sub_10014A430(a1, a2);
  v12 = v11;
  v14 = v13;

  if (v14)
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
    v35 = &type metadata for String;
    *&v34 = v12;
    *(&v34 + 1) = v14;
    sub_100008150(&v34, v33);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_1001A9A58(v33, v15, v17, v18);
  }

  if (sub_10014B884(a1))
  {
    v35 = &type metadata for Bool;
    LOBYTE(v34) = 1;
    sub_100008150(&v34, v33);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_1001A9A58(v33, 0xD000000000000021, 0x80000001001E7910, v19);
  }

  if (sub_10014BB94(a1))
  {
    v35 = &type metadata for Bool;
    LOBYTE(v34) = 1;
    sub_100008150(&v34, v33);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    sub_1001A9A58(v33, 0xD00000000000001DLL, 0x80000001001E78F0, v20);
  }

  if (sub_10014BCF8(a1))
  {
    v35 = &type metadata for Bool;
    LOBYTE(v34) = 1;
    sub_100008150(&v34, v33);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_1001A9A58(v33, 0xD000000000000015, 0x80000001001E78D0, v21);
  }

  v22 = Error.localizedDescription.getter();
  v35 = &type metadata for String;
  *&v34 = v22;
  *(&v34 + 1) = v23;
  sub_100008150(&v34, v33);
  v24 = swift_isUniquelyReferenced_nonNull_native();
  sub_1001A9A58(v33, 0xD00000000000001DLL, 0x80000001001E78B0, v24);
  v25 = sub_10014A2E8(a1);
  v26 = [v25 domain];

  if (!v26)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = String._bridgeToObjectiveC()();
  }

  v27 = sub_10014A2E8(a1);
  v28 = [v27 code];

  v29 = objc_allocWithZone(NSError);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v31 = [v29 initWithDomain:v26 code:v28 userInfo:isa];

  return v31;
}

uint64_t sub_10014A284()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_10002B2EC(v0, qword_1002771D0);
  sub_10000F34C(v0, qword_1002771D0);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_10014A2E8(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v6, a1);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v2 + 8))(v5, a1);
  }

  else
  {
    swift_allocError();
    (*(v2 + 32))(v7, v5, a1);
  }

  v8 = _convertErrorToNSError(_:)();

  return v8;
}

uint64_t sub_10014A430(uint64_t a1, uint64_t a2)
{
  v98 = a2;
  v97 = type metadata accessor for GenerativeError.ErrorType();
  v93 = *(v97 - 8);
  v3 = *(v93 + 64);
  __chkstk_darwin(v97);
  v96 = v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v99 = v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000341C(qword_100264658, &qword_1001DCE08);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v104 = v83 - v11;
  v12 = *(a1 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v10);
  v89 = v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v101 = v83 - v17;
  __chkstk_darwin(v16);
  v19 = v83 - v18;
  v112 = type metadata accessor for GenerativeError();
  v106 = *(v112 - 8);
  v20 = *(v106 + 64);
  __chkstk_darwin(v112);
  v100 = v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Locale();
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for String.LocalizationValue();
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v29 = v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v88 = String.init(localized:table:bundle:locale:comment:)();
  v110 = v30;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v87 = String.init(localized:table:bundle:locale:comment:)();
  v111 = v31;
  v94 = "Try a longer selection.";
  v95 = 0xD000000000000011;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v92 = String.init(localized:table:bundle:locale:comment:)();
  v108 = v32;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v91 = String.init(localized:table:bundle:locale:comment:)();
  v105 = v33;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v84 = String.init(localized:table:bundle:locale:comment:)();
  v109 = v34;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v83[1] = String.init(localized:table:bundle:locale:comment:)();
  v36 = v35;
  v85 = "nticationErrorKey";
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v90 = String.init(localized:table:bundle:locale:comment:)();
  v38 = v37;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v102 = v29;
  v103 = v25;
  v86 = String.init(localized:table:bundle:locale:comment:)();
  v40 = v39;
  v41 = *(v12 + 16);
  v42 = v107;
  v41(v19);
  v43 = v104;
  v44 = v112;
  if (swift_dynamicCast())
  {

    v45 = v106;
    (*(v106 + 56))(v43, 0, 1, v44);
    v46 = v100;
    (*(v45 + 32))(v100, v43, v44);
    v47 = GenerativeError.userFacingLocalizedMessage.getter();
    if (v48)
    {
      v49 = v47;
      v50 = v48;

      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v51._countAndFlagsBits = 0x65736E6F70736552;
      v51._object = 0xEE00206D6F726620;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v51);
      v52._countAndFlagsBits = sub_1000971C0();
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v52);

      v53._countAndFlagsBits = 0;
      v53._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v53);
      String.LocalizationValue.init(stringInterpolation:)();
      static Locale.current.getter();
      v54 = String.init(localized:table:bundle:locale:comment:)();
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v55._countAndFlagsBits = 10256610;
      v55._object = 0xA300000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v55);
      v56._countAndFlagsBits = v49;
      v56._object = v50;
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v56);

      v57._countAndFlagsBits = 10322146;
      v57._object = 0xA300000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v57);
      String.LocalizationValue.init(stringInterpolation:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      (*(v45 + 8))(v46, v112);
      return v54;
    }

    v58 = v96;
    GenerativeError.type.getter();
    v59 = v93;
    v60 = v97;
    v61 = (*(v93 + 88))(v58, v97);
    if (v61 == enum case for GenerativeError.ErrorType.networking(_:) || v61 == enum case for GenerativeError.ErrorType.availability(_:) || v61 == enum case for GenerativeError.ErrorType.canceled(_:))
    {

      (*(v59 + 8))(v58, v60);
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v54 = String.init(localized:table:bundle:locale:comment:)();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      (*(v45 + 8))(v46, v44);
      return v54;
    }

    if (v61 == enum case for GenerativeError.ErrorType.authentication(_:))
    {

      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v54 = String.init(localized:table:bundle:locale:comment:)();
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v62._countAndFlagsBits = 0x7920657461647055;
      v62._object = 0xEC0000002072756FLL;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v62);
      v63._countAndFlagsBits = sub_1000971C0();
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v63);

      v64._countAndFlagsBits = 0xD000000000000015;
      v64._object = 0x80000001001E7B20;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v64);
      String.LocalizationValue.init(stringInterpolation:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      (*(v45 + 8))(v46, v44);
      (*(v59 + 8))(v96, v97);
      return v54;
    }

    (*(v45 + 8))(v46, v44);
    (*(v59 + 8))(v58, v60);
    return v92;
  }

  v99 = v38;
  v100 = v36;
  v97 = v40;
  (*(v106 + 56))(v43, 1, 1, v44);
  sub_10014C1D0(v43);
  (v41)(v101, v42, a1);
  if (swift_dynamicCast())
  {

    if (v114 != 2)
    {
      sub_10009A8B8(v113, v114);
      return v92;
    }

    goto LABEL_6;
  }

  if (sub_10014BB94(a1))
  {

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v54 = String.init(localized:table:bundle:locale:comment:)();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    goto LABEL_9;
  }

  (v41)(v89, v42, a1);
  type metadata accessor for SummarizationClientError(0);
  if (swift_dynamicCast())
  {

    v65 = v113;
    v66 = sub_10014A2E8(a1);
    v67 = [v66 code];

    v54 = v90;
    if (v67 != 3)
    {

      return v54;
    }

    goto LABEL_18;
  }

  v112 = a1;
  v68 = sub_10014A2E8(a1);
  v69 = [v68 domain];

  v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v72 = v71;

  v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v90;
  if (v73 == v70 && v74 == v72)
  {

LABEL_27:

    v77 = v112;
    v78 = sub_10014A2E8(v112);
    v79 = [v78 code];

    if (v79 == 1)
    {
LABEL_18:

      return v88;
    }

    if (v79 > 0x1B)
    {
      goto LABEL_44;
    }

    if (((1 << v79) & 0xCD08000) != 0)
    {
LABEL_32:

      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      return String.init(localized:table:bundle:locale:comment:)();
    }

    if (((1 << v79) & 0x5A00) == 0 && v79 != 24)
    {
LABEL_44:
      if (v79 - 4 >= 4 && v79 != 8)
      {
        if (sub_10014BEC0(v77) & 1) != 0 || (sub_10014BFF8(v77))
        {
          goto LABEL_32;
        }

        if (v79 != 38)
        {
          return v54;
        }
      }
    }

LABEL_6:

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v54 = String.init(localized:table:bundle:locale:comment:)();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
LABEL_9:
    String.init(localized:table:bundle:locale:comment:)();
    return v54;
  }

  v76 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v76)
  {
    goto LABEL_27;
  }

  if ((v70 != 0xD00000000000001ALL || 0x80000001001E4380 != v72) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

    if (v70 == 0xD000000000000016 && 0x80000001001E2FC0 == v72)
    {
    }

    else
    {
      v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v81 & 1) == 0)
      {
        return v54;
      }
    }

    v82 = sub_10014A2E8(v112);
    [v82 code];

    return v54;
  }

  v80 = sub_10014A2E8(v112);
  [v80 code];

  return v84;
}

BOOL sub_10014B884(uint64_t a1)
{
  v2 = v1;
  v28 = type metadata accessor for GenerativeError.ErrorType();
  v4 = *(v28 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v28);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000341C(qword_100264658, &qword_1001DCE08);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v27 - v11;
  v13 = *(a1 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for GenerativeError();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, v2, a1);
  v22 = swift_dynamicCast();
  v23 = *(v18 + 56);
  if (v22)
  {
    v23(v12, 0, 1, v17);
    (*(v18 + 32))(v21, v12, v17);
    GenerativeError.type.getter();
    (*(v18 + 8))(v21, v17);
    v24 = v28;
    v25 = (*(v4 + 88))(v7, v28) == enum case for GenerativeError.ErrorType.authentication(_:);
    (*(v4 + 8))(v7, v24);
  }

  else
  {
    v23(v12, 1, 1, v17);
    sub_10014C1D0(v12);
    return 0;
  }

  return v25;
}

BOOL sub_10014BB94(uint64_t a1)
{
  v2 = sub_10014A2E8(a1);
  v3 = [v2 domain];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v4 && v7 == v6)
  {
    v10 = 2;
LABEL_8:

    goto LABEL_9;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {
    v10 = 2;
LABEL_9:

LABEL_10:
    v11 = sub_10014A2E8(a1);
    v12 = [v11 code];

    return v12 == v10;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v4 && v14 == v6)
  {
    v10 = 1002;
    goto LABEL_8;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 0;
  if (v16)
  {
    v10 = 1002;
    goto LABEL_10;
  }

  return result;
}

BOOL sub_10014BCF8(uint64_t a1)
{
  v3 = *(*(a1 - 8) + 64);
  __chkstk_darwin(a1);
  (*(v5 + 16))(v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1);
  type metadata accessor for SummarizationClientError(0);
  if (swift_dynamicCast())
  {

    return 0;
  }

  v7 = sub_10014A2E8(a1);
  v8 = [v7 domain];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v9 && v12 == v11)
  {

    goto LABEL_10;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 0;
  if (v14)
  {
LABEL_10:
    v15 = sub_10014A2E8(a1);
    v16 = [v15 code];

    return v16 == 39;
  }

  return result;
}

uint64_t sub_10014BEC0(uint64_t a1)
{
  v2 = sub_10014A2E8(a1);
  v3 = [v2 domain];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {

    goto LABEL_8;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 0;
  if (v9)
  {
LABEL_8:
    v11 = sub_10014A2E8(a1);
    v12 = [v11 code];

    v13 = vdupq_n_s64(v12);
    return vmaxv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_100249E70, v13), vceqq_s64(unk_100249E80, v13)), vuzp1q_s32(vceqq_s64(xmmword_100249E90, v13), vceqq_s64(unk_100249EA0, v13))))) & 1;
  }

  return result;
}

uint64_t sub_10014BFF8(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(a1);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10014A2E8(v5);
  v9 = [v8 domain];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
  {

    goto LABEL_9;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v15)
  {
LABEL_9:
    v18 = sub_10014A2E8(a1);
    v19 = [v18 code];

    v17 = v19 == 35;
    return v17 & 1;
  }

  (*(v3 + 16))(v7, v1, a1);
  type metadata accessor for SummarizationClientError(0);
  if (swift_dynamicCast())
  {
    v16 = v21[1];
    v17 = related decl 'e' for SummarizationClientError.isSensitiveContentError.getter();
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_10014C1D0(uint64_t a1)
{
  v2 = sub_10000341C(qword_100264658, &qword_1001DCE08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10014C240(uint64_t a1)
{
  sub_10014C8CC(319, &unk_100263298, type metadata accessor for CGSize, &type metadata accessor for Optional);
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      sub_10014C8CC(319, &qword_10025B480, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10014C358(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(type metadata accessor for DynamicTypeSize() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_28;
  }

  v12 = *(v9 + 80) & 0xF8 | 7;
  v13 = v10 + ((((v11 + 41) & ~v11) + *(v6 + 64) + v12) & ~v12) + 1;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v8 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v17 < 2)
    {
LABEL_28:
      if (v7 > 0xFE)
      {
        v20 = *(v6 + 48);

        return v20(((((a1 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + v11 + 17) & ~v11, v7, v5);
      }

      else
      {
        v19 = *a1;
        if (v19 >= 2)
        {
          return v19 - 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_28;
  }

LABEL_17:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v13) = *a1;
      }
    }

    else if (v13 == 1)
    {
      LODWORD(v13) = *a1;
    }

    else
    {
      LODWORD(v13) = *a1;
    }
  }

  return v8 + (v13 | v18) + 1;
}

void sub_10014C5C8(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v23 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(type metadata accessor for DynamicTypeSize() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 80);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = v12 + ((((v13 + 41) & ~v13) + *(v8 + 64) + v14) & ~v14) + 1;
  if (a3 <= v10)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v10 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v10 < a2)
  {
    v17 = ~v10 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *(a1 + v15) = v18;
              }

              else
              {
                *(a1 + v15) = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        *(a1 + 2) = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      *(a1 + v15) = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *(a1 + v15) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *(a1 + v15) = 0;
  }

  else if (v16)
  {
    *(a1 + v15) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v9 > 0xFE)
  {
    v22 = *(v23 + 56);

    v22(((((a1 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + v13 + 17) & ~v13, a2, v9, v7);
  }

  else
  {
    *a1 = a2 + 1;
  }
}

void sub_10014C8CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10014C998(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ConditionalContent.Storage();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_10014CA90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for _ConditionalContent.Storage();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_10014CB88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v25 = a1;
  v26 = a2;
  v4 = type metadata accessor for Image.Scale();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v24[0] = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DynamicTypeSize();
  v9 = *(v8 - 8);
  v10 = v9[8];
  __chkstk_darwin(v8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v9[13];
  v13(v12, enum case for DynamicTypeSize.accessibility3(_:), v8);
  sub_10014DBEC();
  v24[1] = v3;
  v14 = dispatch thunk of static Comparable.< infix(_:_:)();
  v15 = v9[1];
  v15(v12, v8);
  if ((v14 & 1) == 0)
  {
    return (*(v5 + 104))(v26, enum case for Image.Scale.small(_:), v4);
  }

  v16 = v4;
  v13(v12, enum case for DynamicTypeSize.accessibility1(_:), v8);
  v17 = dispatch thunk of static Comparable.< infix(_:_:)();
  v15(v12, v8);
  if (v17)
  {
    return (*(v5 + 16))(v26, v25, v16);
  }

  v19 = enum case for Image.Scale.small(_:);
  v20 = *(v5 + 104);
  v21 = v24[0];
  v20(v24[0], enum case for Image.Scale.small(_:), v16);
  v22 = static Image.Scale.== infix(_:_:)();
  (*(v5 + 8))(v21, v16);
  if (v22)
  {
    v23 = v19;
  }

  else
  {
    v23 = enum case for Image.Scale.medium(_:);
  }

  return v20(v26, v23, v16);
}