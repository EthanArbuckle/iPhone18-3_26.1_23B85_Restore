uint64_t sub_10011397C()
{
  v0 = sub_10000341C(&qword_10025DE90, &qword_1001D3070);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - v3;
  v5 = swift_projectBox();
  (*(v1 + 16))(v4, v5, v0);
  Bindable.wrappedValue.getter();
  (*(v1 + 8))(v4, v0);
  v6 = v10;
  swift_getKeyPath();
  v10 = v6;
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    if ([Strong respondsToSelector:"updatePromptEntryState:"])
    {
      [Strong updatePromptEntryState:1];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100113B3C(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for CompositionConfirmView(0) + 44));
  v5 = *v1;
  v6 = *(v1 + 2);
  sub_10000341C(&qword_100260098, &unk_1001D56B0);
  State.wrappedValue.getter();
  sub_10010EF64(v3, v4);
}

double sub_100113BC4@<D0>(uint64_t a1@<X8>)
{
  v2 = static VerticalAlignment.center.getter();
  v21 = 1;
  sub_100113C80(v13);
  v3 = v13[0];
  v4 = v13[1];
  v5 = v14;
  v6 = v15;
  v7 = v16;
  v8 = v17;
  v9 = v18;
  v20 = v14;
  v19 = v17;
  v10 = v21;
  v11 = static Edge.Set.all.getter();
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v10;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  *(a1 + 56) = v7;
  *(a1 + 64) = v8;
  *(a1 + 72) = v9;
  *(a1 + 80) = v11;
  result = 0.0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 1;
  return result;
}

uint64_t sub_100113C80@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_100125454(8);
  v9 = Image.init(_internalSystemName:)();
  *a1 = v2;
  *(a1 + 8) = v4;
  v6 &= 1u;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v9;
  sub_100007D98(v2, v4, v6);

  sub_10002A984(v2, v4, v6);
}

uint64_t sub_100113D68(uint64_t a1, unsigned __int8 *a2)
{
  v3 = sub_10000341C(&qword_10025DE90, &qword_1001D3070);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v15 - v6;
  v8 = *a2;
  v9 = swift_projectBox();
  (*(v4 + 16))(v7, v9, v3);
  Bindable.wrappedValue.getter();
  (*(v4 + 8))(v7, v3);
  v10 = v16;
  swift_getKeyPath();
  v16 = v10;
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *(v10 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__wantsInlineEditing);

  if ((v11 & 1) == 0)
  {
    if (v8)
    {
      sub_10010EC14();
      sub_100153D78();
    }

    v13 = sub_10010EC14();
    swift_getKeyPath();
    v16 = v13;
    sub_1001208D0(&qword_10025B1E0, type metadata accessor for CommonUIManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v14 = *(v13 + 81);

    if (v8 != v14)
    {
      sub_10010EC14();
      sub_1001537FC(v8);
    }
  }

  return result;
}

uint64_t sub_100113FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v61 = a3;
  v54 = sub_10000341C(&qword_100262BC8, &qword_1001D9AC8);
  v5 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54);
  v52 = &v50 - v6;
  v7 = sub_10000341C(&unk_100262BA0, &qword_1001D9AC0);
  v62 = *(v7 - 8);
  v63 = v7;
  v8 = *(v62 + 64);
  __chkstk_darwin(v7);
  v57 = &v50 - v9;
  v10 = sub_10000341C(&qword_100262BD0, &qword_1001D9AD0);
  v55 = *(v10 - 8);
  v56 = v10;
  v11 = *(v55 + 64);
  __chkstk_darwin(v10);
  v53 = &v50 - v12;
  v13 = type metadata accessor for ToolbarItemPlacement();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = sub_10000341C(&qword_100262BD8, &qword_1001D9AD8);
  v50 = *(v15 - 8);
  v51 = v15;
  v16 = *(v50 + 64);
  __chkstk_darwin(v15);
  v18 = &v50 - v17;
  v19 = type metadata accessor for EnvironmentValues();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_10000341C(&qword_100262B88, &qword_1001D9AB8);
  v24 = *(*(v60 - 8) + 64);
  v25 = __chkstk_darwin(v60);
  v27 = &v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v59 = &v50 - v28;
  v29 = *(a1 + 72);
  v30 = *(a1 + 80);
  v65 = *(a1 + 64);
  v66 = v29;
  v67 = v30;
  sub_10000341C(&qword_10025CB00, &unk_1001D31A0);
  FocusState.Binding.wrappedValue.getter();
  v58 = v18;
  if (v64 != 1)
  {
    goto LABEL_6;
  }

  v31 = *(a1 + 16);
  v32 = *(a1 + 24);

  if ((v32 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v33 = static Log.runtimeIssuesLog.getter();
    v18 = v58;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v20 + 8))(v23, v19);
  }

  v34 = sub_10016FEDC();

  if (v34)
  {
    (*(v62 + 56))(v27, 1, 1, v63);
    sub_100007120(&qword_100262B98, &unk_100262BA0, &qword_1001D9AC0);
    v35 = v59;
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_10000F500(v27, &qword_100262B88, &qword_1001D9AB8);
  }

  else
  {
LABEL_6:
    v36 = static ToolbarItemPlacement.cancellationAction.getter();
    __chkstk_darwin(v36);
    *(&v50 - 2) = a1;
    *(&v50 - 1) = a2;
    sub_10000341C(&unk_100262BE0, &unk_1001D7D60);
    sub_10006B6C0();
    ToolbarItem<>.init(placement:content:)();
    v37 = static ToolbarItemPlacement.confirmationAction.getter();
    __chkstk_darwin(v37);
    *(&v50 - 2) = a1;
    *(&v50 - 1) = a2;
    sub_10000341C(&qword_10025C820, &qword_1001D9AE0);
    sub_100048B00();
    v38 = v53;
    ToolbarItem<>.init(placement:content:)();
    v39 = *(v54 + 48);
    v40 = v50;
    v41 = v52;
    v42 = v18;
    v43 = v51;
    (*(v50 + 16))(v52, v42, v51);
    v45 = v55;
    v44 = v56;
    (*(v55 + 16))(&v41[v39], v38, v56);
    v46 = v57;
    TupleToolbarContent.init(_:)();
    v47 = v62;
    v48 = v63;
    (*(v62 + 16))(v27, v46, v63);
    (*(v47 + 56))(v27, 0, 1, v48);
    sub_100007120(&qword_100262B98, &unk_100262BA0, &qword_1001D9AC0);
    v35 = v59;
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_10000F500(v27, &qword_100262B88, &qword_1001D9AB8);
    (*(v47 + 8))(v46, v48);
    (*(v45 + 8))(v38, v44);
    (*(v40 + 8))(v58, v43);
  }

  sub_100122114();
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return sub_10000F500(v35, &qword_100262B88, &qword_1001D9AB8);
}

uint64_t sub_100114720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23[0] = a3;
  v5 = type metadata accessor for CompositionConfirmView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = type metadata accessor for ButtonRole();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_10000341C(&qword_10025C808, &unk_1001D3340);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v23 - v13;
  static ButtonRole.cancel.getter();
  sub_100120918(a1, v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CompositionConfirmView);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = swift_allocObject();
  sub_100122020(v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for CompositionConfirmView);
  *(v16 + ((v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;

  Button<>.init(role:action:)();
  LocalizedStringKey.init(stringLiteral:)();
  v17 = Text.init(_:tableName:bundle:comment:)();
  v19 = v18;
  v21 = v20;
  sub_100007120(&qword_10025DF90, &qword_10025C808, &unk_1001D3340);
  View.accessibility(label:)();
  sub_10002A984(v17, v19, v21 & 1);

  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_100114A1C()
{
  v19 = type metadata accessor for NavigationPath();
  v0 = *(v19 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v19);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000341C(&qword_10025DE90, &qword_1001D3070);
  v5 = *(v4 - 8);
  v6 = v5[8];
  __chkstk_darwin(v4);
  v8 = &v15 - v7;
  sub_10010EC14();
  sub_100153D18();

  v9 = swift_projectBox();
  v17 = v5[2];
  v18 = v9;
  v17(v8);
  Bindable.wrappedValue.getter();
  v16 = v5[1];
  v16(v8, v4);
  sub_10007CE14(0, 0, 0, 0);

  v10 = *(type metadata accessor for CompositionConfirmView(0) + 40);
  sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  Binding.wrappedValue.getter();
  v11 = NavigationPath.count.getter();
  (*(v0 + 8))(v3, v19);
  if (v11 < 1)
  {
    (v17)(v8, v18, v4);
    Bindable.wrappedValue.getter();
    v16(v8, v4);
    v13 = v20;
    swift_getKeyPath();
    v20 = v13;
    sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      [Strong endWritingTools];
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

uint64_t sub_100114D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10000341C(&qword_10025DE90, &qword_1001D3070);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v24 - v9;
  v11 = type metadata accessor for CompositionConfirmView(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v14 = type metadata accessor for ButtonRole();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  static ButtonRole.confirm.getter();
  sub_100120918(a1, &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CompositionConfirmView);
  v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v17 = swift_allocObject();
  sub_100122020(&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for CompositionConfirmView);
  *(v17 + ((v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;

  Button<>.init(role:action:)();
  v18 = swift_projectBox();
  (*(v7 + 16))(v10, v18, v6);
  Bindable.wrappedValue.getter();
  (*(v7 + 8))(v10, v6);
  v19 = v25;
  swift_getKeyPath();
  v25 = v19;
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LODWORD(a2) = *(v19 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state);

  LOBYTE(v10) = a2 == 1;
  KeyPath = swift_getKeyPath();
  v21 = swift_allocObject();
  *(v21 + 16) = v10;
  result = sub_10000341C(&qword_10025C820, &qword_1001D9AE0);
  v23 = (a3 + *(result + 36));
  *v23 = KeyPath;
  v23[1] = sub_10012544C;
  v23[2] = v21;
  return result;
}

uint64_t sub_1001150CC()
{
  v0 = sub_10000341C(&qword_10025DE90, &qword_1001D3070);
  v1 = *(v0 - 8);
  v2 = v1[8];
  __chkstk_darwin(v0);
  v4 = &v11 - v3;
  sub_10010EC14();
  sub_100153D18();

  v5 = swift_projectBox();
  v6 = v1[2];
  v6(v4, v5, v0);
  Bindable.wrappedValue.getter();
  v7 = v1[1];
  v7(v4, v0);
  sub_10007CE14(1, 0, 0, 0);

  v6(v4, v5, v0);
  Bindable.wrappedValue.getter();
  v7(v4, v0);
  v8 = v12;
  swift_getKeyPath();
  v12 = v8;
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    [Strong endWritingTools];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1001152FC(uint64_t a1, char a2)
{
  v3 = sub_10000341C(&qword_10025DE90, &qword_1001D3070);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v8 = swift_projectBox();
  (*(v4 + 16))(v7, v8, v3);
  Bindable.wrappedValue.getter();
  (*(v4 + 8))(v7, v3);
  v9 = v13;
  swift_getKeyPath();
  v13 = v9;
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel);
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

uint64_t sub_1001154D0()
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

uint64_t sub_10011562C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*v2)
  {
    v5 = 0x4028000000000000;
  }

  else
  {
    v5 = 0;
  }

  if (*v2)
  {
    v6 = 0x4020000000000000;
  }

  else
  {
    v6 = 0x4034000000000000;
  }

  v7 = static Edge.Set.all.getter();
  v8 = sub_10000341C(&qword_100263070, &qword_1001DA390);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  result = sub_10000341C(&qword_100263078, &qword_1001DA398);
  v10 = a2 + *(result + 36);
  *v10 = v7;
  *(v10 + 8) = v5;
  *(v10 + 16) = v6;
  *(v10 + 24) = v5;
  *(v10 + 32) = v6;
  *(v10 + 40) = 0;
  return result;
}

id sub_1001156F8()
{
  v1 = v0;
  v2 = sub_1001154D0();
  swift_getKeyPath();
  v15[0] = v2;
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v2 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachmentManager);

  v4 = type metadata accessor for PromptEntryViewCoordinator();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC21WritingToolsUIService26PromptEntryViewCoordinator_collectionView] = 0;
  *&v5[OBJC_IVAR____TtC21WritingToolsUIService26PromptEntryViewCoordinator_dataSource] = 0;
  v6 = &v5[OBJC_IVAR____TtC21WritingToolsUIService26PromptEntryViewCoordinator_owner];
  *v6 = *v1;
  v7 = v1[4];
  v9 = v1[1];
  v8 = v1[2];
  *(v6 + 3) = v1[3];
  *(v6 + 4) = v7;
  *(v6 + 1) = v9;
  *(v6 + 2) = v8;
  v10 = v1[5];
  v11 = v1[6];
  v12 = v1[7];
  *(v6 + 121) = *(v1 + 121);
  *(v6 + 6) = v11;
  *(v6 + 7) = v12;
  *(v6 + 5) = v10;
  *&v5[OBJC_IVAR____TtC21WritingToolsUIService26PromptEntryViewCoordinator_attachmentManager] = v3;
  sub_100120DA4(v1, v15);
  v14.receiver = v5;
  v14.super_class = v4;
  return objc_msgSendSuper2(&v14, "init");
}

void sub_10011585C(void *a1, uint64_t a2)
{
  v3 = v2;
  v149 = a2;
  v5 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v136 = v135 - v7;
  v147 = type metadata accessor for IntelligenceUI.PromptEntryView.PlaceholderConfiguration();
  v145 = *(v147 - 8);
  v8 = v145[8];
  v9 = __chkstk_darwin(v147);
  v143 = v135 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v144 = v135 - v11;
  v12 = type metadata accessor for UIPromptBackgroundView.FillStyle();
  v141 = *(v12 - 8);
  v142 = v12;
  v13 = *(v141 + 64);
  __chkstk_darwin(v12);
  v140 = v135 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Locale();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v135[1] = v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for String.LocalizationValue();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v135[0] = v135 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10000341C(&unk_1002628E8, &unk_1001E07C0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v146 = v135 - v23;
  v24 = type metadata accessor for UIPromptBackgroundView.Configuration();
  v138 = *(v24 - 8);
  v139 = v24;
  v25 = *(v138 + 64);
  v26 = __chkstk_darwin(v24);
  v137 = v135 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = v135 - v28;
  v30 = IntelligenceUI.PromptEntryView.textView.getter();
  v31 = *(v2 + 32);
  v153 = *(v2 + 16);
  v154 = v31;
  sub_10000341C(&unk_10025F820, &qword_1001D50A0);
  Binding.wrappedValue.getter();
  v32 = String._bridgeToObjectiveC()();

  [v30 setText:v32];

  v33 = IntelligenceUI.PromptEntryView.trailingButton.getter();
  [v33 setNeedsUpdateConfiguration];

  v150 = a1;
  v34 = IntelligenceUI.PromptEntryView.textView.getter();
  v35 = sub_1001154D0();
  swift_getKeyPath();
  *&v153 = v35;
  v36 = sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LODWORD(v33) = *(v35 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state);

  if (v33 == 1)
  {
    v37 = 0;
  }

  else
  {
    v38 = sub_1001154D0();
    swift_getKeyPath();
    *&v153 = v38;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v37 = *(v38 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isFeatureEnabled);
  }

  [v34 setSelectable:v37];

  v39 = IntelligenceUI.PromptEntryView.textView.getter();
  v40 = sub_1001154D0();
  swift_getKeyPath();
  *&v153 = v40;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v41 = *(v40 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state);

  v42 = v3;
  if (v41 == 1)
  {
    v43 = 0;
  }

  else
  {
    v44 = sub_1001154D0();
    swift_getKeyPath();
    *&v153 = v44;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v43 = *(v44 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isFeatureEnabled);
  }

  [v39 setEditable:v43];

  v158 = *(v3 + 96);
  v159 = *(v3 + 112);
  v153 = *(v3 + 96);
  LOBYTE(v154) = *(v3 + 112);
  v148 = sub_10000341C(&qword_10025CB00, &unk_1001D31A0);
  FocusState.Binding.wrappedValue.getter();
  v45 = v152;
  v46 = v150;
  v47 = dispatch thunk of IntelligenceUI.PromptEntryView.backgroundView.getter();
  if (v45 == 1)
  {
    dispatch thunk of UIPromptBackgroundView.configuration.getter();

    v48 = v137;
    static UIPromptBackgroundView.Configuration.intelligent.getter();
    sub_1001208D0(&unk_100262900, &type metadata accessor for UIPromptBackgroundView.Configuration);
    v49 = v139;
    v50 = dispatch thunk of static Equatable.== infix(_:_:)();
    v51 = *(v138 + 8);
    v51(v48, v49);
    v51(v29, v49);
    if ((v50 & 1) == 0)
    {
      v52 = dispatch thunk of IntelligenceUI.PromptEntryView.backgroundView.getter();
      static UIPromptBackgroundView.Configuration.intelligent.getter();
      dispatch thunk of UIPromptBackgroundView.configuration.setter();

      v53 = [objc_opt_self() currentDevice];
      v54 = [v53 userInterfaceIdiom];

      if (v54 != 6)
      {
        v55 = String._bridgeToObjectiveC()();
        v56 = objc_opt_self();
        v57 = [v56 systemImageNamed:v55];

        v58 = IntelligenceUI.PromptEntryView.leadingButton.getter();
        v59 = [objc_opt_self() tintColor];
        v60 = v146;
        static UIButton.Configuration.borderless()();
        v61 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleBody];
        UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
        v145 = v57;
        UIButton.Configuration.image.setter();
        UIButton.Configuration.baseForegroundColor.setter();
        v62 = type metadata accessor for UIButton.Configuration();
        (*(*(v62 - 8) + 56))(v60, 0, 1, v62);
        UIButton.configuration.setter();

        v63 = IntelligenceUI.PromptEntryView.leadingButton.getter();
        [v63 setNeedsUpdateConfiguration];

        v64 = IntelligenceUI.PromptEntryView.leadingButton.getter();
        [v64 setUserInteractionEnabled:1];

        v65 = IntelligenceUI.PromptEntryView.leadingButton.getter();
        [v65 setShowsMenuAsPrimaryAction:1];

        v146 = IntelligenceUI.PromptEntryView.leadingButton.getter();
        sub_1000081B0(0, &qword_10025F890, UIAction_ptr);
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        v66 = String._bridgeToObjectiveC()();
        v67 = [v56 systemImageNamed:v66];
        v147 = v36;

        v68 = swift_allocObject();
        v69 = v42[7];
        v68[7] = v42[6];
        v68[8] = v69;
        *(v68 + 137) = *(v42 + 121);
        v70 = v42[3];
        v68[3] = v42[2];
        v68[4] = v70;
        v71 = v42[5];
        v68[5] = v42[4];
        v68[6] = v71;
        v72 = v42[1];
        v68[1] = *v42;
        v68[2] = v72;
        sub_100120DA4(v42, &v153);
        v73 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        v74 = String._bridgeToObjectiveC()();
        v75 = [v56 systemImageNamed:v74];

        v76 = swift_allocObject();
        v77 = v42[7];
        v76[7] = v42[6];
        v76[8] = v77;
        *(v76 + 137) = *(v42 + 121);
        v78 = v42[3];
        v76[3] = v42[2];
        v76[4] = v78;
        v79 = v42[5];
        v76[5] = v42[4];
        v76[6] = v79;
        v80 = v42[1];
        v76[1] = *v42;
        v76[2] = v80;
        sub_100120DA4(v42, &v153);
        v81 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        sub_1000081B0(0, &qword_100262910, UIMenu_ptr);
        sub_10000341C(&qword_10025F470, &qword_1001D1020);
        v82 = swift_allocObject();
        *(v82 + 16) = xmmword_1001D4820;
        *(v82 + 32) = v73;
        *(v82 + 40) = v81;
        v133 = v82;
        v83._countAndFlagsBits = 0;
        v83._object = 0xE000000000000000;
        v160.value.super.isa = 0;
        v160.is_nil = 0;
        isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v83, 0, v160, 0, 0xFFFFFFFFFFFFFFFFLL, v133, v134).super.super.isa;
        v85 = v146;
        [v146 setMenu:isa];
      }
    }

    v86 = sub_1001154D0();
    swift_getKeyPath();
    *&v153 = v86;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v87 = *(v86 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachmentManager);

    swift_getKeyPath();
    *&v153 = v87;
    sub_1001208D0(&qword_10025F460, type metadata accessor for AttachmentManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v88 = *(v87 + 16);

    v89 = *(v88 + 16);

    if (v89)
    {
      v90 = dispatch thunk of IntelligenceUI.PromptEntryView.accessoryView.getter();
      if (!v90)
      {
        v115 = [objc_allocWithZone(type metadata accessor for AttachmentsAccessoryView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
        sub_10000341C(&qword_1002628F8, &qword_1001D9678);
        UIViewRepresentableContext.coordinator.getter();
        v116 = v151;
        v117 = *&v115[OBJC_IVAR____TtC21WritingToolsUIServiceP33_C936B4EAF778CD52602455D3431E6E0E24AttachmentsAccessoryView_collectionView];
        v118 = OBJC_IVAR____TtC21WritingToolsUIService26PromptEntryViewCoordinator_collectionView;
        swift_beginAccess();
        v119 = *&v116[v118];
        *&v116[v118] = v117;
        v120 = v117;

        sub_1000A44AC();
        v121 = v115;
        dispatch thunk of IntelligenceUI.PromptEntryView.accessoryView.setter();
        v90 = v121;
      }

      sub_10000341C(&qword_1002628F8, &qword_1001D9678);
      UIViewRepresentableContext.coordinator.getter();
      v122 = v156;
      v123 = sub_1001154D0();
      swift_getKeyPath();
      v151 = v123;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v124 = *(v123 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachmentManager);

      swift_getKeyPath();
      v151 = v124;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_beginAccess();
      v125 = *(v124 + 2);

      sub_1000A48EC(v125);

      v46 = v150;
    }

    else
    {
      v46 = v150;
      dispatch thunk of IntelligenceUI.PromptEntryView.accessoryView.setter();
      sub_10000341C(&qword_1002628F8, &qword_1001D9678);
      UIViewRepresentableContext.coordinator.getter();
      v112 = v151;
      v113 = OBJC_IVAR____TtC21WritingToolsUIService26PromptEntryViewCoordinator_collectionView;
      swift_beginAccess();
      v114 = *&v112[v113];
      *&v112[v113] = 0;

      sub_1000A44AC();
    }
  }

  else
  {
    static UIPromptBackgroundView.Configuration.default.getter();
    if (qword_10025A808 != -1)
    {
      swift_once();
    }

    v91 = v142;
    v92 = sub_10000F34C(v142, qword_1002771B8);
    (*(v141 + 16))(v140, v92, v91);
    UIPromptBackgroundView.Configuration.fillStyle.setter();
    UIPromptBackgroundView.Configuration.shadowRadius.setter();
    v93 = objc_opt_self();
    v94 = [v93 clearColor];
    UIPromptBackgroundView.Configuration.shadowColor.setter();
    dispatch thunk of UIPromptBackgroundView.configuration.setter();

    sub_1000081B0(0, &qword_100262510, UIColor_ptr);
    if (qword_10025A7D0 != -1)
    {
      swift_once();
    }

    UIColor.init(_:)();
    v95 = v144;
    IntelligenceUI.PromptEntryView.PlaceholderConfiguration.init(textColor:)();
    v96 = v145;
    (v145[2])(v143, v95, v147);
    dispatch thunk of IntelligenceUI.PromptEntryView.placeholderConfiguration.setter();
    v97 = sub_100098EC4();
    v98 = IntelligenceUI.PromptEntryView.leadingButton.getter();
    v99 = [v93 labelColor];
    v100 = v146;
    static UIButton.Configuration.borderless()();
    v101 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleTitle2];
    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
    v102 = v97;
    UIButton.Configuration.image.setter();
    UIButton.Configuration.baseForegroundColor.setter();
    v103 = type metadata accessor for UIButton.Configuration();
    (*(*(v103 - 8) + 56))(v100, 0, 1, v103);
    UIButton.configuration.setter();

    v104 = IntelligenceUI.PromptEntryView.leadingButton.getter();
    [v104 setNeedsUpdateConfiguration];

    v105 = IntelligenceUI.PromptEntryView.textView.getter();
    [v105 setKeyboardAppearance:13];

    v106 = IntelligenceUI.PromptEntryView.leadingButton.getter();
    [v106 setUserInteractionEnabled:0];

    v107 = IntelligenceUI.PromptEntryView.leadingButton.getter();
    [v107 setShowsMenuAsPrimaryAction:0];

    v108 = IntelligenceUI.PromptEntryView.leadingButton.getter();
    [v108 setMenu:0];

    dispatch thunk of IntelligenceUI.PromptEntryView.accessoryView.setter();
    sub_10000341C(&qword_1002628F8, &qword_1001D9678);
    UIViewRepresentableContext.coordinator.getter();
    v109 = v152;
    v110 = OBJC_IVAR____TtC21WritingToolsUIService26PromptEntryViewCoordinator_collectionView;
    swift_beginAccess();
    v111 = *&v109[v110];
    *&v109[v110] = 0;

    sub_1000A44AC();
    (v96[1])(v95, v147);
  }

  v156 = v158;
  v157 = v159;
  FocusState.Binding.wrappedValue.getter();
  if (v155 == 1)
  {
    v126 = IntelligenceUI.PromptEntryView.textView.getter();
    v127 = [v126 isFirstResponder];

    if ((v127 & 1) == 0)
    {
      v128 = type metadata accessor for TaskPriority();
      v129 = v136;
      (*(*(v128 - 8) + 56))(v136, 1, 1, v128);
      type metadata accessor for MainActor();
      v130 = v46;
      v131 = static MainActor.shared.getter();
      v132 = swift_allocObject();
      v132[2] = v131;
      v132[3] = &protocol witness table for MainActor;
      v132[4] = v130;
      sub_10015CFDC(0, 0, v129, &unk_1001D9688, v132);
    }
  }
}

uint64_t sub_100116BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100116C44, v6, v5);
}

uint64_t sub_100116C44()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v4 = IntelligenceUI.PromptEntryView.textView.getter();
  v5 = [v4 becomeFirstResponder];

  *v3 = v5;
  v6 = v0[1];

  return v6();
}

void sub_100117004(void *a1, uint64_t a2)
{
  v9 = v2[6];
  *v10 = v2[7];
  *&v10[9] = *(v2 + 121);
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v3 = *v2;
  v4 = v2[1];
  sub_10011585C(a1, a2);
}

id sub_100117058@<X0>(void *a1@<X8>)
{
  v10 = v1[6];
  *v11 = v1[7];
  *&v11[9] = *(v1 + 121);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v4 = *v1;
  v5 = v1[1];
  result = sub_1001156F8();
  *a1 = result;
  return result;
}

double sub_1001170B4(uint64_t a1, char a2, uint64_t a3, char a4, id a5)
{
  v6 = 10.0;
  if (a2)
  {
    *&a1 = 10.0;
  }

  if ((a4 & 1) == 0)
  {
    v6 = *&a3;
  }

  [a5 sizeThatFits:{*&a1, v6}];
  return result;
}

uint64_t sub_100117100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100121050();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100117164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100121050();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1001171C8()
{
  sub_100121050();
  UIViewRepresentable.body.getter();
  __break(1u);
}

id sub_1001171F0()
{
  v0 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v1 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v0 addSubview:v1];
  v2 = [v0 keyboardLayoutGuide];
  [v2 useLightEffectsBackgroundBelowView:v1];

  return v0;
}

uint64_t sub_1001172B0(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0x4024000000000000;
  }

  return result;
}

uint64_t sub_1001172CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001247F4();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100117330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001247F4();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100117394()
{
  sub_1001247F4();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_1001173BC@<X0>(uint64_t a1@<X2>, char a2@<W3>, _BYTE *a3@<X8>)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v7 + 8))(v10, v6);
    a1 = v15;
  }

  swift_getKeyPath();
  v15 = a1;
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = *(a1 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__inclusionPolicy);

  *a3 = v12;
  return result;
}

uint64_t sub_100117588(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;

  v14 = a4;
  if ((a5 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v9 + 8))(v12, v8);
    v14 = v24[0];
  }

  v22 = v9;
  if (v13 == *(v14 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__inclusionPolicy))
  {
    *(v14 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__inclusionPolicy) = v13;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v21 = &v21;
    __chkstk_darwin(KeyPath);
    *(&v21 - 2) = v14;
    *(&v21 - 8) = v13;
    v24[0] = v14;
    sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if ((a5 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v22 + 8))(v12, v8);
    a4 = v24[0];
  }

  swift_getKeyPath();
  v24[0] = a4;
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v18 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__analyticsInstance;
  swift_beginAccess();
  sub_1000081F8(a4 + v18, v24, &unk_10025B1C0, &unk_1001CFA90);

  if (!v24[3])
  {
    return sub_10000F500(v24, &unk_10025B1C0, &unk_1001CFA90);
  }

  sub_100028458(v24, v23);
  sub_10000F500(v24, &unk_10025B1C0, &unk_1001CFA90);
  v19 = *sub_100027874(v23, v23[3]);
  sub_100009FE8(v13);
  return sub_10000F4B4(v23);
}

uint64_t sub_100117994(uint64_t a1, char a2)
{
  type metadata accessor for MainActor();

  v4 = static MainActor.shared.getter();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = &protocol witness table for MainActor;
  *(v5 + 32) = a1;
  a2 &= 1u;
  *(v5 + 40) = a2;

  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = &protocol witness table for MainActor;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  Binding.init(get:set:)();
  sub_10000341C(&unk_100263100, &unk_1001DA408);
  sub_100095BB8();
  sub_100125080();
  return Picker.init(selection:label:content:)();
}

uint64_t sub_100117B18(uint64_t a1, char a2)
{
  swift_getKeyPath();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2 & 1;

  sub_10000341C(&qword_10025F328, qword_1001D3E10);
  sub_100007120(&qword_100263120, &qword_10025F328, qword_1001D3E10);
  sub_100095BB8();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_100117C38(int a1, char a2, int a3, uint64_t a4, int a5)
{
  LODWORD(v68) = a5;
  v9 = type metadata accessor for EnvironmentValues();
  v64 = *(v9 - 8);
  v65 = v9;
  v10 = *(v64 + 64);
  __chkstk_darwin(v9);
  v63 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  __chkstk_darwin(v14);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v15);
  LODWORD(v69) = a1;
  LODWORD(v66) = a3;
  if (a2)
  {
    v16._countAndFlagsBits = sub_100070A94();
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v16);

    v17._countAndFlagsBits = 0x209480E220;
    v17._object = 0xA500000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v17);
    LocalizedStringKey.init(stringInterpolation:)();
    v18 = Text.init(_:tableName:bundle:comment:)();
    v20 = v19;
    v22 = v21;
    if (a3)
    {
      static Font.Weight.semibold.getter();
    }

    v23 = Text.fontWeight(_:)();
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v30 = v22 & 1;
    v31 = v18;
    v32 = v20;
  }

  else
  {
    v33._countAndFlagsBits = sub_100070964();
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v33);

    v34._countAndFlagsBits = 0x209480E220;
    v34._object = 0xA500000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v34);
    LocalizedStringKey.init(stringInterpolation:)();
    v35 = Text.init(_:tableName:bundle:comment:)();
    v37 = v36;
    v39 = v38;
    if (a3)
    {
      static Font.Weight.semibold.getter();
    }

    v23 = Text.fontWeight(_:)();
    v25 = v40;
    v27 = v41;
    v29 = v42;
    v30 = v39 & 1;
    v31 = v35;
    v32 = v37;
  }

  sub_10002A984(v31, v32, v30);

  sub_100007D98(v23, v25, v27 & 1);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v43._countAndFlagsBits = 0;
  v43._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v43);

  if ((v68 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v44 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v45 = v63;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v64 + 8))(v45, v65);
    a4 = v70;
  }

  v67 = v25;
  v68 = v29;
  if (v69)
  {
    swift_getKeyPath();
    v70 = a4;
    sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v46 = &OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__selectedWordCount;
  }

  else
  {
    swift_getKeyPath();
    v70 = a4;
    sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v46 = &OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__allWordCount;
  }

  v47 = v23;
  v48 = *(a4 + *v46);

  v70 = v48;
  LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v49._countAndFlagsBits = 0x7364726F5720;
  v49._object = 0xE600000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v49);
  LocalizedStringKey.init(stringInterpolation:)();
  v50 = Text.init(_:tableName:bundle:comment:)();
  v52 = v51;
  v54 = v53;
  if (v66)
  {
    static Font.Weight.light.getter();
  }

  v55 = Text.fontWeight(_:)();
  v57 = v56;
  v59 = v58;
  sub_10002A984(v50, v52, v54 & 1);

  v60 = v67;
  v69 = static Text.+ infix(_:_:)();
  v66 = v61;
  sub_10002A984(v47, v60, v27 & 1);

  sub_10002A984(v55, v57, v59 & 1);

  sub_10002A984(v47, v60, v27 & 1);

  return v69;
}

double sub_100118254@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_10000341C(&qword_10025C5D0, &qword_1001D15A0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v38[-v8 - 8];
  v10 = static VerticalAlignment.center.getter();
  v40 = 1;
  sub_1001184A0(a1, a2 & 1, v41);
  *&v38[7] = v41[0];
  *&v38[23] = v41[1];
  *&v38[39] = v41[2];
  *&v38[55] = v41[3];
  v11 = v40;
  v12 = type metadata accessor for Font.Design();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = static Font.system(size:weight:design:)();
  sub_10000F500(v9, &qword_10025C5D0, &qword_1001D15A0);
  KeyPath = swift_getKeyPath();
  v15 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v39 = 0;
  LOBYTE(a1) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v40 = 0;
  v32 = a3 + *(sub_10000341C(&qword_100263088, &qword_1001DA3A8) + 36);
  TintShapeStyle.init()();
  v33 = *v38;
  *(a3 + 33) = *&v38[16];
  result = *&v38[32];
  v35 = *&v38[48];
  *(a3 + 49) = *&v38[32];
  *(a3 + 65) = v35;
  *a3 = v10;
  *(a3 + 8) = 0;
  *(a3 + 16) = v11;
  v36 = *&v38[63];
  *(a3 + 17) = v33;
  *(a3 + 80) = v36;
  *(a3 + 88) = KeyPath;
  *(a3 + 96) = v13;
  *(a3 + 104) = v15;
  *(a3 + 112) = v17;
  *(a3 + 120) = v19;
  *(a3 + 128) = v21;
  *(a3 + 136) = v23;
  *(a3 + 144) = 0;
  *(a3 + 152) = a1;
  *(a3 + 160) = v25;
  *(a3 + 168) = v27;
  *(a3 + 176) = v29;
  *(a3 + 184) = v31;
  *(a3 + 192) = 0;
  return result;
}

uint64_t sub_1001184A0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v40 = a1;

    v11 = a1;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v7 + 8))(v10, v6);
    v11 = v40;
  }

  swift_getKeyPath();
  v38 = v11;
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(v11 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__inclusionPolicy);

  v35 = sub_100117C38(v13, 1, 1, a1, a2 & 1);
  v36 = v14;
  v16 = v15;
  HIDWORD(v34) = v17;
  Image.init(systemName:)();
  v18 = Text.init(_:)();
  v20 = v19;
  v22 = v21;
  static Font.Weight.semibold.getter();
  v23 = Text.fontWeight(_:)();
  v25 = v24;
  LOBYTE(v13) = v26;
  v28 = v27;
  sub_10002A984(v18, v20, v22 & 1);

  v29 = BYTE4(v34) & 1;
  v37 = BYTE4(v34) & 1;
  LOBYTE(v38) = BYTE4(v34) & 1;
  LOBYTE(v13) = v13 & 1;
  v39 = v13;
  v30 = v35;
  v31 = v36;
  *a3 = v35;
  *(a3 + 8) = v16;
  *(a3 + 16) = v29;
  *(a3 + 24) = v31;
  *(a3 + 32) = v23;
  *(a3 + 40) = v25;
  *(a3 + 48) = v13;
  *(a3 + 56) = v28;
  v32 = v30;
  sub_100007D98(v30, v16, v29);

  sub_100007D98(v23, v25, v13);

  sub_10002A984(v23, v25, v13);

  sub_10002A984(v32, v16, v37);
}

uint64_t sub_1001187B0()
{
  v1 = sub_10000341C(&qword_100263080, &qword_1001DA3A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v8[-v4];
  v6 = *(v0 + 8);
  v11 = *v0;
  v12 = v6;
  v9 = v11;
  v10 = v6;
  sub_10000341C(&qword_100263088, &qword_1001DA3A8);
  sub_10000341C(&qword_100263090, &qword_1001DA3B0);
  sub_100124D00();
  sub_100007120(&qword_1002630E0, &qword_100263090, &qword_1001DA3B0);
  Menu.init(content:label:)();
  sub_100007120(&qword_1002630E8, &qword_100263080, &qword_1001DA3A0);
  sub_100124FB4();
  View.buttonStyle<A>(_:)();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1001189B0()
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
    sub_10000F500(&v11, &qword_100263038, &qword_1001DA228);
    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_100118B0C()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + 24);
  v6 = *(v0 + 16);
  v11 = v6;
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

uint64_t sub_100118C68@<X0>(uint64_t a1@<X8>)
{
  ButtonStyleConfiguration.label.getter();
  v2 = a1 + *(sub_10000341C(&qword_100263138, &qword_1001DA488) + 36);
  v3 = enum case for RoundedCornerStyle.continuous(_:);
  v4 = type metadata accessor for RoundedCornerStyle();
  (*(*(v4 - 8) + 104))(v2, v3, v4);
  if (qword_10025A7B8 != -1)
  {
    swift_once();
  }

  v5 = qword_100277168;
  v6 = sub_10000341C(&qword_100263140, &qword_1001DA490);
  *(v2 + *(v6 + 52)) = v5;
  *(v2 + *(v6 + 56)) = 256;

  v7 = static Alignment.center.getter();
  v9 = v8;
  result = sub_10000341C(&qword_100263148, &qword_1001DA498);
  v11 = (v2 + *(result + 36));
  *v11 = v7;
  v11[1] = v9;
  return result;
}

uint64_t sub_100118D90()
{
  v1 = v0;
  v2 = sub_10000341C(&qword_100262E70, &qword_1001DA040);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v23 - v4;
  v6 = sub_10000341C(&qword_100262E78, &qword_1001DA048);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  *v5 = static HorizontalAlignment.center.getter();
  *(v5 + 1) = 0x4020000000000000;
  v5[16] = 0;
  v10 = sub_10000341C(&qword_100262E80, &qword_1001DA050);
  sub_1001190DC(v0, &v5[*(v10 + 44)]);
  v11 = sub_100118B0C();
  swift_getKeyPath();
  *&v23 = v11;
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = *(v11 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state);

  if (v12 == 1)
  {
    goto LABEL_3;
  }

  v13 = sub_100118B0C();
  swift_getKeyPath();
  *&v23 = v13;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = *(v13 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__isFeatureEnabled);

  v15 = 1.0;
  if ((v14 & 1) == 0)
  {
LABEL_3:
    v15 = 0.3;
  }

  sub_10002A894(v5, v9, &qword_100262E70, &qword_1001DA040);
  *&v9[*(v6 + 36)] = v15;
  v23 = *(v1 + 64);
  v24 = *(v1 + 80);
  sub_10000341C(&qword_10025CB00, &unk_1001D31A0);
  FocusState.Binding.wrappedValue.getter();
  v16 = swift_allocObject();
  v17 = *(v1 + 144);
  v16[9] = *(v1 + 128);
  v16[10] = v17;
  v16[11] = *(v1 + 160);
  v18 = *(v1 + 80);
  v16[5] = *(v1 + 64);
  v16[6] = v18;
  v19 = *(v1 + 112);
  v16[7] = *(v1 + 96);
  v16[8] = v19;
  v20 = *(v1 + 16);
  v16[1] = *v1;
  v16[2] = v20;
  v21 = *(v1 + 48);
  v16[3] = *(v1 + 32);
  v16[4] = v21;
  sub_100123698(v1, &v23);
  sub_100123DD0();
  View.onChange<A>(of:initial:_:)();

  return sub_10000F500(v9, &qword_100262E78, &qword_1001DA048);
}

uint64_t sub_1001190DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000341C(&qword_100262E98, &qword_1001DA058);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v19[-v9];
  v20 = *(a1 + 64);
  v21 = *(a1 + 80);
  sub_10000341C(&qword_10025CB00, &unk_1001D31A0);
  FocusState.Binding.wrappedValue.getter();
  if (v19[15] != 1)
  {
    goto LABEL_4;
  }

  v11 = sub_100118B0C();
  swift_getKeyPath();
  *&v20 = v11;
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = *(v11 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__allWordCount);

  if (v12 < 1)
  {
    goto LABEL_4;
  }

  if ((*(a1 + 104) & 1) == 0)
  {
    type metadata accessor for CompositionModel(0);
    v13 = Environment.init<A>(_:)();
    v14 = v18 & 1;
  }

  else
  {
LABEL_4:
    v13 = 0;
    v14 = -1;
  }

  *v10 = static VerticalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v15 = sub_10000341C(&qword_100262EA0, &qword_1001DA060);
  sub_100119368(a1, &v10[*(v15 + 44)]);
  sub_1000081F8(v10, v8, &qword_100262E98, &qword_1001DA058);
  *a2 = v13;
  *(a2 + 8) = v14;
  v16 = sub_10000341C(&qword_100262EA8, &qword_1001DA068);
  sub_1000081F8(v8, a2 + *(v16 + 48), &qword_100262E98, &qword_1001DA058);
  sub_1001234A0(v13, v14);
  sub_100123678(v13, v14);
  sub_10000F500(v10, &qword_100262E98, &qword_1001DA058);
  sub_10000F500(v8, &qword_100262E98, &qword_1001DA058);
  return sub_100123678(v13, v14);
}

uint64_t sub_100119368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = sub_10000341C(&unk_100262EB0, &qword_1001DA098);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v43 - v8;
  v10 = sub_10000341C(&qword_1002600B0, &qword_1001DA0A0);
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v10);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v43 - v16;
  v18 = sub_10000341C(&qword_100262EC0, &qword_1001DA0A8);
  v48 = *(v18 - 8);
  v19 = *(v48 + 64);
  __chkstk_darwin(v18);
  v21 = &v43 - v20;
  v22 = sub_10000341C(&qword_100262EC8, &qword_1001DA0B0);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v47 = &v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v43 - v26;
  if (*(a1 + 81))
  {
    *v21 = static HorizontalAlignment.center.getter();
    *(v21 + 1) = 0;
    v21[16] = 1;
    v45 = &v21[*(sub_10000341C(&unk_100262EE0, &qword_1001DA0C8) + 44)];
    v28 = swift_allocObject();
    v46 = v7;
    v29 = *(a1 + 144);
    v28[9] = *(a1 + 128);
    v28[10] = v29;
    v28[11] = *(a1 + 160);
    v30 = *(a1 + 80);
    v28[5] = *(a1 + 64);
    v28[6] = v30;
    v31 = *(a1 + 112);
    v28[7] = *(a1 + 96);
    v28[8] = v31;
    v32 = *(a1 + 16);
    v28[1] = *a1;
    v28[2] = v32;
    v33 = *(a1 + 48);
    v28[3] = *(a1 + 32);
    v28[4] = v33;
    sub_100123698(a1, v50);
    sub_10000341C(&qword_1002600B8, &qword_1001D56E0);
    v44 = v18;
    sub_1000AF918();
    Button.init(action:label:)();
    v34 = v11[2];
    v34(v15, v17, v10);
    v35 = v45;
    *v45 = 0;
    v35[8] = 1;
    v43 = v21;
    v36 = &v35[*(sub_10000341C(&qword_100262F48, &qword_1001DA0D0) + 48)];
    v34(v36, v15, v10);
    v7 = v46;
    v37 = v11[1];
    v37(v17, v10);
    v37(v15, v10);
    sub_10002A894(v43, v27, &qword_100262EC0, &qword_1001DA0A8);
    (*(v48 + 56))(v27, 0, 1, v44);
  }

  else
  {
    (*(v48 + 56))(&v43 - v26, 1, 1, v18);
  }

  *v9 = static HorizontalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v38 = sub_10000341C(&qword_100262ED0, &qword_1001DA0B8);
  sub_100119D78(a1, &v9[*(v38 + 44)]);
  v39 = v47;
  sub_1000081F8(v27, v47, &qword_100262EC8, &qword_1001DA0B0);
  sub_1000081F8(v9, v7, &unk_100262EB0, &qword_1001DA098);
  v40 = v49;
  sub_1000081F8(v39, v49, &qword_100262EC8, &qword_1001DA0B0);
  v41 = sub_10000341C(&qword_100262ED8, &qword_1001DA0C0);
  sub_1000081F8(v7, v40 + *(v41 + 48), &unk_100262EB0, &qword_1001DA098);
  sub_10000F500(v9, &unk_100262EB0, &qword_1001DA098);
  sub_10000F500(v27, &qword_100262EC8, &qword_1001DA0B0);
  sub_10000F500(v7, &unk_100262EB0, &qword_1001DA098);
  return sub_10000F500(v39, &qword_100262EC8, &qword_1001DA0B0);
}

uint64_t sub_1001198F4(uint64_t a1)
{
  v2 = sub_100118B0C();
  swift_getKeyPath();
  *&v19 = v2;
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v2 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachmentManager);

  sub_1001734FC();

  v4 = *(a1 + 48);
  v19 = *(a1 + 32);
  v20 = v4;
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_10000341C(&unk_10025F820, &qword_1001D50A0);
  Binding.wrappedValue.setter();
  v6 = *(a1 + 64);
  v5 = *(a1 + 72);
  v7 = *(a1 + 80);
  v22 = v6;
  *&v19 = v6;
  *(&v19 + 1) = v5;
  LOBYTE(v20) = v7;
  sub_100063D8C(&v22, &v14);

  sub_10000341C(&qword_10025CB00, &unk_1001D31A0);
  FocusState.Binding.wrappedValue.getter();
  if (v14 == 1)
  {
    *&v19 = v6;
    *(&v19 + 1) = v5;
    LOBYTE(v20) = v7;
    FocusState.Binding.wrappedValue.getter();
    v14 = v6;
    v15 = v5;
    v16 = v7;
    v21 = (v18 & 1) == 0;
    FocusState.Binding.wrappedValue.setter();
    sub_100063DE8(&v22);

    v8 = sub_100118B0C();
    swift_getKeyPath();
    v14 = v8;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v9 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__analyticsInstance;
    swift_beginAccess();
    sub_1000081F8(v8 + v9, &v19, &unk_10025B1C0, &unk_1001CFA90);

    if (*(&v20 + 1))
    {
      sub_100028458(&v19, &v14);
      sub_10000F500(&v19, &unk_10025B1C0, &unk_1001CFA90);
      v10 = sub_100027874(&v14, v17);
      if (qword_10025A608 != -1)
      {
        v13 = v10;
        swift_once();
        v10 = v13;
      }

      v11 = *v10;
      sub_100009C54(qword_100276E18);
      return sub_10000F4B4(&v14);
    }

    else
    {
      return sub_10000F500(&v19, &unk_10025B1C0, &unk_1001CFA90);
    }
  }

  else
  {
    sub_100063DE8(&v22);
  }
}

uint64_t sub_100119BF4@<X0>(uint64_t *a1@<X8>)
{
  v2 = Image.init(systemName:)();
  v3 = a1 + *(sub_10000341C(&unk_100262F20, &qword_1001D56F8) + 36);
  TintShapeStyle.init()();
  *a1 = v2;
  v4 = static Font.title.getter();
  KeyPath = swift_getKeyPath();
  v6 = (a1 + *(sub_10000341C(&unk_100262F10, &qword_1001D56F0) + 36));
  *v6 = KeyPath;
  v6[1] = v4;
  LOBYTE(v4) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = a1 + *(sub_10000341C(&unk_100262F00, &qword_1001D56E8) + 36);
  *v15 = v4;
  *(v15 + 1) = v8;
  *(v15 + 2) = v10;
  *(v15 + 3) = v12;
  *(v15 + 4) = v14;
  v15[40] = 0;
  if (qword_10025A7B8 != -1)
  {
    swift_once();
  }

  v16 = qword_100277168;
  v17 = static Alignment.center.getter();
  v19 = v18;
  v20 = a1 + *(sub_10000341C(&qword_1002600B8, &qword_1001D56E0) + 36);
  *v20 = v16;
  *(v20 + 4) = 256;
  *(v20 + 2) = v17;
  *(v20 + 3) = v19;
}

uint64_t sub_100119D78@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v117 = a2;
  v3 = type metadata accessor for PhotosPickerItem.EncodingDisambiguationPolicy();
  v108 = *(v3 - 8);
  v109 = v3;
  v4 = *(v108 + 64);
  __chkstk_darwin(v3);
  v107 = &v84[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for PhotosPickerSelectionBehavior();
  v105 = *(v6 - 8);
  v106 = v6;
  v7 = *(v105 + 64);
  __chkstk_darwin(v6);
  v103 = &v84[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_10000341C(&qword_100262F50, &qword_1001DA0D8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v120 = &v84[-v11];
  v12 = sub_10000341C(&qword_100262F58, &qword_1001DA0E0);
  v13 = *(v12 - 8);
  v98 = v12;
  v99 = v13;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v97 = &v84[-v15];
  v16 = sub_10000341C(&qword_100262F60, &qword_1001DA0E8);
  v100 = *(v16 - 8);
  v101 = v16;
  v17 = *(v100 + 64);
  __chkstk_darwin(v16);
  v118 = &v84[-v18];
  v121 = sub_10000341C(&qword_100262F68, &qword_1001DA0F0);
  v102 = *(v121 - 8);
  v19 = *(v102 + 64);
  __chkstk_darwin(v121);
  v119 = &v84[-v20];
  v110 = sub_10000341C(&qword_100262F70, &qword_1001DA0F8);
  v104 = *(v110 - 8);
  v21 = *(v104 + 64);
  __chkstk_darwin(v110);
  v122 = &v84[-v22];
  v23 = sub_10000341C(&qword_100262F78, &qword_1001DA100);
  v113 = *(v23 - 8);
  v114 = v23;
  v24 = *(v113 + 64);
  __chkstk_darwin(v23);
  v123 = &v84[-v25];
  v26 = sub_10000341C(&unk_100262F80, &unk_1001DA108);
  v115 = *(v26 - 8);
  v116 = v26;
  v27 = *(v115 + 64);
  v28 = __chkstk_darwin(v26);
  v112 = &v84[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v28);
  v111 = &v84[-v30];
  v31 = *(a1 + 48);
  v126 = *(a1 + 32);
  v127 = v31;
  sub_10000341C(&unk_10025F820, &qword_1001D50A0);
  Binding.projectedValue.getter();
  v96 = v143;
  v94 = *(&v144 + 1);
  v95 = v144;
  v141 = *(a1 + 112);
  v143 = *(a1 + 112);
  v124 = sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.projectedValue.getter();
  v92 = *(&v126 + 1);
  v93 = v126;
  v91 = v127;
  v140 = *(a1 + 128);
  v143 = *(a1 + 128);
  State.projectedValue.getter();
  v89 = *(&v126 + 1);
  v90 = v126;
  v88 = v127;
  v138 = *(a1 + 64);
  v139 = *(a1 + 80);
  v126 = *(a1 + 64);
  LOBYTE(v127) = *(a1 + 80);
  sub_10000341C(&qword_10025CB00, &unk_1001D31A0);
  FocusState.Binding.projectedValue.getter();
  v32 = v143;
  v87 = v144;
  v33 = *(a1 + 96);
  v86 = *(a1 + 88);
  v85 = *(a1 + 104);
  type metadata accessor for CompositionModel(0);
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel);

  v34 = Environment.init<A>(_:)();
  v142 = v35 & 1;
  v36 = sub_1001189B0();
  swift_getKeyPath();
  *&v126 = v36;
  sub_1001208D0(&unk_10025A9F0, type metadata accessor for WritingToolsModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v37 = *(v36 + OBJC_IVAR____TtC21WritingToolsUIService17WritingToolsModel__networkAvailable);

  KeyPath = swift_getKeyPath();
  v39 = swift_allocObject();
  *(v39 + 16) = (v37 & 1) == 0;
  *&v126 = v34;
  BYTE8(v126) = v142;
  v127 = v96;
  *&v128 = v95;
  *(&v128 + 1) = v94;
  *&v129 = v93;
  *(&v129 + 1) = v92;
  LOBYTE(v130) = v91;
  *(&v130 + 1) = v90;
  *&v131 = v89;
  BYTE8(v131) = v88;
  v132 = v32;
  LOBYTE(v133) = v87;
  *(&v133 + 1) = v86;
  *&v134 = v33;
  BYTE8(v134) = v85;
  *&v135 = KeyPath;
  *(&v135 + 1) = sub_10012544C;
  v136 = v39;
  v143 = v138;
  LOBYTE(v144) = v139;
  FocusState.Binding.projectedValue.getter();
  v40 = sub_10000341C(&qword_100262F90, &qword_1001DA118);
  v41 = sub_100123E98();
  v42 = v97;
  View.focused(_:)();

  v151 = v134;
  v152 = v135;
  v153 = v136;
  v147 = v130;
  v148 = v131;
  v149 = v132;
  v150 = v133;
  v143 = v126;
  v144 = v127;
  v145 = v128;
  v146 = v129;
  sub_10000F500(&v143, &qword_100262F90, &qword_1001DA118);
  v43 = type metadata accessor for IntelligenceUI.PromptEntryView();
  *&v126 = v40;
  *(&v126 + 1) = v41;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = v98;
  View.representablePreferredFocusableView<A>(_:resolver:)();
  (*(v99 + 8))(v42, v45);
  v137 = v141;
  State.projectedValue.getter();
  if (qword_10025A758 != -1)
  {
    swift_once();
  }

  v46 = swift_allocObject();
  v47 = *(a1 + 144);
  v46[9] = *(a1 + 128);
  v46[10] = v47;
  v46[11] = *(a1 + 160);
  v48 = *(a1 + 80);
  v46[5] = *(a1 + 64);
  v46[6] = v48;
  v49 = *(a1 + 112);
  v46[7] = *(a1 + 96);
  v46[8] = v49;
  v50 = *(a1 + 16);
  v46[1] = *a1;
  v46[2] = v50;
  v51 = *(a1 + 48);
  v46[3] = *(a1 + 32);
  v46[4] = v51;
  sub_100123698(a1, &v126);
  *&v126 = v45;
  *(&v126 + 1) = v43;
  *&v127 = OpaqueTypeConformance2;
  v99 = swift_getOpaqueTypeConformance2();
  v52 = v101;
  v53 = v118;
  View.fileImporter(isPresented:allowedContentTypes:allowsMultipleSelection:onCompletion:)();

  (*(v100 + 8))(v53, v52);
  v137 = v140;
  State.projectedValue.getter();
  v100 = *(&v126 + 1);
  LODWORD(v98) = v127;
  v137 = *(a1 + 160);
  v125 = *(a1 + 160);
  v118 = sub_10000341C(&qword_100262FA0, &qword_1001DA120);
  State.projectedValue.getter();
  v97 = *(&v126 + 1);
  v54 = v120;
  static PHPickerFilter.images.getter();
  v55 = type metadata accessor for PHPickerFilter();
  (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
  *&v96 = [objc_opt_self() sharedPhotoLibrary];
  v56 = v103;
  static PhotosPickerSelectionBehavior.default.getter();
  v57 = v107;
  static PhotosPickerItem.EncodingDisambiguationPolicy.automatic.getter();
  *&v126 = v52;
  *(&v126 + 1) = v99;
  v101 = swift_getOpaqueTypeConformance2();
  v58 = v119;
  View.photosPicker(isPresented:selection:maxSelectionCount:selectionBehavior:matching:preferredItemEncoding:photoLibrary:)();

  (*(v108 + 8))(v57, v109);
  (*(v105 + 8))(v56, v106);
  sub_10000F500(v120, &qword_100262F50, &qword_1001DA0D8);
  v59 = v121;
  (*(v102 + 8))(v58, v121);
  v126 = v137;
  State.wrappedValue.getter();
  v60 = swift_allocObject();
  v61 = *(a1 + 144);
  v60[9] = *(a1 + 128);
  v60[10] = v61;
  v60[11] = *(a1 + 160);
  v62 = *(a1 + 80);
  v60[5] = *(a1 + 64);
  v60[6] = v62;
  v63 = *(a1 + 112);
  v60[7] = *(a1 + 96);
  v60[8] = v63;
  v64 = *(a1 + 16);
  v60[1] = *a1;
  v60[2] = v64;
  v65 = *(a1 + 48);
  v60[3] = *(a1 + 32);
  v60[4] = v65;
  sub_100123698(a1, &v126);
  v119 = sub_10000341C(&qword_10025E2D0, &qword_1001D56C0);
  *&v126 = v59;
  *(&v126 + 1) = v101;
  v66 = swift_getOpaqueTypeConformance2();
  v67 = sub_100123FFC();
  v68 = v110;
  v69 = v122;
  View.onChange<A>(of:initial:_:)();

  (*(v104 + 8))(v69, v68);
  v70 = LocalizedStringKey.init(stringLiteral:)();
  v121 = v71;
  v122 = v70;
  LODWORD(v120) = v72;
  v125 = *(a1 + 144);
  State.projectedValue.getter();
  LODWORD(v124) = v127;
  sub_10000341C(&unk_10025DF60, &unk_1001D7CD0);
  *&v126 = v68;
  *(&v126 + 1) = v119;
  *&v127 = v66;
  *(&v127 + 1) = v67;
  swift_getOpaqueTypeConformance2();
  sub_100007120(&qword_100264210, &unk_10025DF60, &unk_1001D7CD0);
  v73 = v114;
  v74 = v111;
  v75 = v123;
  View.alert<A>(_:isPresented:actions:)();

  (*(v113 + 8))(v75, v73);
  v77 = v115;
  v76 = v116;
  v78 = *(v115 + 16);
  v79 = v112;
  v78(v112, v74, v116);
  v80 = v117;
  *v117 = 0;
  *(v80 + 8) = 1;
  v81 = sub_10000341C(&qword_100262FB8, &qword_1001DA128);
  v78(v80 + *(v81 + 48), v79, v76);
  v82 = *(v77 + 8);
  v82(v74, v76);
  return (v82)(v79, v76);
}

uint64_t sub_10011ACC4(uint64_t a1, char a2, _OWORD *a3)
{
  v6 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v25 - v8;
  if (a2)
  {
    if (qword_10025A6D8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000F34C(v10, qword_100276EF0);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    sub_100124674(a1, 1);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "Unable to add file attachment: %@", v13, 0xCu);
      sub_10000F500(v14, &unk_10025D580, &qword_1001CFA60);
    }

    v25[0] = a3[9];
    v26 = 1;
    sub_10000341C(&unk_1002640F0, &qword_1001D3490);
    return State.wrappedValue.setter();
  }

  else
  {
    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
    type metadata accessor for MainActor();
    sub_100124680(a1, 0);
    sub_100123698(a3, v25);
    v18 = static MainActor.shared.getter();
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = &protocol witness table for MainActor;
    v20 = a3[9];
    *(v19 + 160) = a3[8];
    *(v19 + 176) = v20;
    *(v19 + 192) = a3[10];
    v21 = a3[5];
    *(v19 + 96) = a3[4];
    *(v19 + 112) = v21;
    v22 = a3[7];
    *(v19 + 128) = a3[6];
    *(v19 + 144) = v22;
    v23 = a3[1];
    *(v19 + 32) = *a3;
    *(v19 + 48) = v23;
    v24 = a3[3];
    *(v19 + 64) = a3[2];
    *(v19 + 80) = v24;
    *(v19 + 208) = a1;
    sub_10015D2D4(0, 0, v9, &unk_1001DA220, v19);
  }
}

uint64_t sub_10011AFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;
  type metadata accessor for MainActor();
  v5[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[7] = v7;
  v5[8] = v6;

  return _swift_task_switch(sub_10011B03C, v7, v6);
}

uint64_t sub_10011B03C()
{
  v1 = v0[4];
  v2 = sub_100118B0C();
  swift_getKeyPath();
  v0[2] = v2;
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[9] = *(v2 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachmentManager);

  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_10011B17C;
  v4 = v0[5];

  return sub_100174A44(v4, 0, 0);
}

uint64_t sub_10011B17C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v8 = *v1;
  *(*v1 + 88) = a1;

  v5 = *(v2 + 64);
  v6 = *(v2 + 56);

  return _swift_task_switch(sub_10011B2C8, v6, v5);
}

uint64_t sub_10011B2C8()
{
  v1 = v0[11];
  v2 = v0[6];
  v3 = v0[3];

  *v3 = v1;
  v4 = v0[1];

  return v4();
}

uint64_t sub_10011B334(uint64_t a1)
{
  v2 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v19 - v4;
  v6 = *(a1 + 160);
  v7 = *(a1 + 168);
  v23 = v7;
  v24 = v6;
  v20 = v6;
  v21 = v7;
  sub_1000081F8(&v24, &v22, &qword_10025E2D0, &qword_1001D56C0);
  sub_1000081F8(&v23, &v22, &qword_100262FC8, &qword_1001DA138);
  sub_10000341C(&qword_100262FA0, &qword_1001DA120);
  State.wrappedValue.getter();
  v8 = v22[2];

  if (v8)
  {
    v20 = v6;
    v21 = v7;
    State.wrappedValue.getter();
    v9 = v22;
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
    type metadata accessor for MainActor();
    sub_100123698(a1, &v20);
    v11 = static MainActor.shared.getter();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = &protocol witness table for MainActor;
    v13 = *(a1 + 144);
    *(v12 + 160) = *(a1 + 128);
    *(v12 + 176) = v13;
    *(v12 + 192) = *(a1 + 160);
    v14 = *(a1 + 80);
    *(v12 + 96) = *(a1 + 64);
    *(v12 + 112) = v14;
    v15 = *(a1 + 112);
    *(v12 + 128) = *(a1 + 96);
    *(v12 + 144) = v15;
    v16 = *(a1 + 16);
    *(v12 + 32) = *a1;
    *(v12 + 48) = v16;
    v17 = *(a1 + 48);
    *(v12 + 64) = *(a1 + 32);
    *(v12 + 80) = v17;
    *(v12 + 208) = v9;
    sub_10015C9C8(0, 0, v5, &unk_1001DA148, v12);

    v20 = v6;
    v21 = v7;
    v22 = _swiftEmptyArrayStorage;
    State.wrappedValue.setter();
  }

  sub_10000F500(&v24, &qword_10025E2D0, &qword_1001D56C0);
  return sub_10000F500(&v23, &qword_100262FC8, &qword_1001DA138);
}

uint64_t sub_10011B598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[6] = v7;
  v5[7] = v6;

  return _swift_task_switch(sub_10011B630, v7, v6);
}

uint64_t sub_10011B630()
{
  v1 = v0[3];
  v2 = sub_100118B0C();
  swift_getKeyPath();
  v0[2] = v2;
  sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[8] = *(v2 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachmentManager);

  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_1000144C8;
  v4 = v0[4];

  return (sub_10011B788)(v4, 0, 0);
}

uint64_t sub_10011B788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[29] = a3;
  v4[30] = v3;
  v4[27] = a1;
  v4[28] = a2;
  v5 = sub_10000341C(&qword_100262FD0, &unk_1001D4CC0);
  v4[31] = v5;
  v6 = *(v5 - 8);
  v4[32] = v6;
  v7 = *(v6 + 64) + 15;
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v8 = type metadata accessor for Attachment(0);
  v4[36] = v8;
  v9 = *(v8 - 8);
  v4[37] = v9;
  v10 = *(v9 + 64) + 15;
  v4[38] = swift_task_alloc();
  v11 = type metadata accessor for PhotosPickerItem();
  v4[39] = v11;
  v12 = *(v11 - 8);
  v4[40] = v12;
  v13 = *(v12 + 64) + 15;
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v4[43] = type metadata accessor for MainActor();
  v4[44] = static MainActor.shared.getter();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[45] = v15;
  v4[46] = v14;

  return _swift_task_switch(sub_10011B96C, v15, v14);
}

uint64_t sub_10011B96C()
{
  if (qword_10025A6D8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 216);
  v2 = type metadata accessor for Logger();
  *(v0 + 376) = sub_10000F34C(v2, qword_100276EF0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 216);
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v6 + 16);

    _os_log_impl(&_mh_execute_header, v3, v4, "adding photos: %ld", v7, 0xCu);
  }

  else
  {
    v8 = *(v0 + 216);
  }

  v9 = *(v0 + 216);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = *(v0 + 320);
    v14 = *(v11 + 16);
    v12 = v11 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = v9 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v40 = (*(v12 + 64) + 32) & ~*(v12 + 64);
    v41 = (v12 + 16);
    v39 = v15;
    do
    {
      v17 = *(v0 + 336);
      v18 = *(v0 + 240);
      v13(v17, v16, *(v0 + 312));
      v19 = sub_10011D744(v17, v18);
      v20 = *(v0 + 336);
      if (v19)
      {
        v21 = *v41;
        (*v41)(*(v0 + 328), *(v0 + 336), *(v0 + 312));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100163D68(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v23 = _swiftEmptyArrayStorage[2];
        v22 = _swiftEmptyArrayStorage[3];
        if (v23 >= v22 >> 1)
        {
          sub_100163D68(v22 > 1, v23 + 1, 1);
        }

        v24 = *(v0 + 328);
        v25 = *(v0 + 312);
        _swiftEmptyArrayStorage[2] = v23 + 1;
        v26 = _swiftEmptyArrayStorage + v40 + v23 * v39;
        v15 = v39;
        v21(v26, v24, v25);
      }

      else
      {
        (*(v12 - 8))(*(v0 + 336), *(v0 + 312));
      }

      v16 += v15;
      --v10;
    }

    while (v10);
  }

  *(v0 + 384) = 0;
  *(v0 + 392) = _swiftEmptyArrayStorage;

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 134217984;
    *(v29 + 4) = _swiftEmptyArrayStorage[2];

    _os_log_impl(&_mh_execute_header, v27, v28, "deduped photos: %ld", v29, 0xCu);
  }

  else
  {
  }

  v30 = *(v0 + 344);
  v42 = *(v0 + 224);
  v31 = *(v0 + 216);
  v32 = sub_10000341C(&qword_100262FD8, &qword_1001DA160);
  v33 = static MainActor.shared.getter();
  *(v0 + 400) = v33;
  v34 = swift_task_alloc();
  *(v0 + 408) = v34;
  *(v34 + 16) = _swiftEmptyArrayStorage;
  *(v34 + 24) = v42;
  *(v34 + 40) = v31;
  v35 = sub_10000341C(&qword_100262FE0, &qword_1001DA178);
  v36 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v37 = swift_task_alloc();
  *(v0 + 416) = v37;
  *v37 = v0;
  v37[1] = sub_10011BE18;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 168, v32, v35, v33, &protocol witness table for MainActor, &unk_1001DA170, v34, v32);
}

uint64_t sub_10011BE18()
{
  v1 = *v0;
  v2 = *(*v0 + 416);
  v3 = *(*v0 + 408);
  v4 = *(*v0 + 400);
  v5 = *(*v0 + 392);
  v9 = *v0;

  v6 = *(v1 + 368);
  v7 = *(v1 + 360);

  return _swift_task_switch(sub_10011BF9C, v7, v6);
}

uint64_t sub_10011BF9C()
{
  v33 = v0;
  v1 = *(v0 + 384);
  v32[0] = *(v0 + 168);

  sub_10011EF70(v32);
  if (v1)
  {
  }

  else
  {

    v3 = v32[0];
    v4 = v32[0][2];
    if (v4)
    {
      v5 = *(v0 + 256);
      v30 = *(v0 + 248);
      v31 = *(v0 + 296);
      v32[0] = _swiftEmptyArrayStorage;
      sub_100163CE0(0, v4, 0);
      v6 = v32[0];
      v7 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v29 = *(v5 + 72);
      do
      {
        v8 = *(v0 + 304);
        v10 = *(v0 + 272);
        v9 = *(v0 + 280);
        v11 = *(v0 + 264);
        sub_1000081F8(v7, v9, &qword_100262FD0, &unk_1001D4CC0);
        sub_1000081F8(v9, v10, &qword_100262FD0, &unk_1001D4CC0);
        v12 = *(v30 + 48);
        *v11 = *v10;
        sub_100122020(v10 + v12, v11 + v12, type metadata accessor for Attachment);
        sub_100120918(v11 + v12, v8, type metadata accessor for Attachment);
        sub_10000F500(v11, &qword_100262FD0, &unk_1001D4CC0);
        sub_10000F500(v9, &qword_100262FD0, &unk_1001D4CC0);
        v32[0] = v6;
        v14 = v6[2];
        v13 = v6[3];
        if (v14 >= v13 >> 1)
        {
          sub_100163CE0(v13 > 1, v14 + 1, 1);
          v6 = v32[0];
        }

        v15 = *(v0 + 304);
        v6[2] = v14 + 1;
        sub_100122020(v15, v6 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v14, type metadata accessor for Attachment);
        v7 += v29;
        --v4;
      }

      while (v4);
    }

    else
    {

      v6 = _swiftEmptyArrayStorage;
    }

    v16 = *(v0 + 376);
    *(v0 + 176) = v6;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 288);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v32[0] = v21;
      *v20 = 136642819;

      v22 = Array.description.getter();
      v24 = v23;

      v25 = sub_10002510C(v22, v24, v32);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v17, v18, "deduped photos: %{sensitive}s", v20, 0xCu);
      sub_10000F4B4(v21);
    }

    v26 = *(v0 + 344);
    swift_beginAccess();
    *(v0 + 424) = static MainActor.shared.getter();
    v28 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v0 + 432) = v28;
    *(v0 + 440) = v27;

    return _swift_task_switch(sub_10011C360, v28, v27);
  }
}

uint64_t sub_10011C360()
{
  v1 = v0[43];
  sub_10000341C(&qword_100262FE8, &qword_1001DA180);
  v0[56] = static MainActor.shared.getter();
  v2 = swift_task_alloc();
  v0[57] = v2;
  *(v2 + 16) = v0 + 22;
  v3 = async function pointer to withTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v4 = swift_task_alloc();
  v0[58] = v4;
  *v4 = v0;
  v4[1] = sub_10011C478;

  return withTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_10011C478()
{
  v1 = *v0;
  v2 = *(*v0 + 464);
  v3 = *(*v0 + 456);
  v4 = *(*v0 + 448);
  v8 = *v0;

  v5 = *(v1 + 440);
  v6 = *(v1 + 432);

  return _swift_task_switch(sub_10011C5D8, v6, v5);
}

uint64_t sub_10011C5D8()
{
  v1 = v0[53];

  swift_endAccess();
  v2 = v0[45];
  v3 = v0[46];

  return _swift_task_switch(sub_10011C644, v2, v3);
}

uint64_t sub_10011C644()
{
  v1 = v0[44];
  v2 = v0[30];

  v3 = v0[22];
  swift_getKeyPath();
  v0[23] = v2;
  sub_1001208D0(&qword_10025F460, type metadata accessor for AttachmentManager);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[24] = v2;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_10019E53C(v3);
  swift_endAccess();
  v0[25] = v2;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  swift_getKeyPath();
  v0[26] = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_1000081F8(v2 + 24, (v0 + 2), &unk_10025B1C0, &unk_1001CFA90);
  if (v0[5])
  {
    v5 = v0[28];
    v4 = v0[29];
    sub_100028458((v0 + 2), (v0 + 7));
    sub_10000F500((v0 + 2), &unk_10025B1C0, &unk_1001CFA90);
    v6 = *sub_100027874(v0 + 7, v0[10]);
    sub_10000A9C0(*(v3 + 16), 0, 0, 1, 0, 1, 0, 1, v5, v4);
    sub_10000F4B4(v0 + 7);
  }

  else
  {
    sub_10000F500((v0 + 2), &unk_10025B1C0, &unk_1001CFA90);
  }

  v8 = v0[41];
  v7 = v0[42];
  v9 = v0[38];
  v11 = v0[34];
  v10 = v0[35];
  v12 = v0[33];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10011C918()
{
  v0 = sub_10000341C(&qword_100262FC0, &qword_1001DA130);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v6 - v2;
  LocalizedStringKey.init(stringLiteral:)();
  static ButtonRole.cancel.getter();
  v4 = type metadata accessor for ButtonRole();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  return Button<>.init(_:role:action:)();
}

uint64_t sub_10011CA30(uint64_t a1)
{
  v8 = *(a1 + 64);
  v9 = *(a1 + 80);
  sub_10000341C(&qword_10025CB00, &unk_1001D31A0);
  result = FocusState.Binding.wrappedValue.getter();
  if (LOBYTE(v7[0]) == 1)
  {
    v2 = sub_100118B0C();
    swift_getKeyPath();
    v7[0] = v2;
    sub_1001208D0(&qword_10025B210, type metadata accessor for CompositionModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v3 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__analyticsInstance;
    swift_beginAccess();
    sub_1000081F8(v2 + v3, &v8, &unk_10025B1C0, &unk_1001CFA90);

    if (v10)
    {
      sub_100028458(&v8, v7);
      sub_10000F500(&v8, &unk_10025B1C0, &unk_1001CFA90);
      v4 = sub_100027874(v7, v7[3]);
      if (qword_10025A610 != -1)
      {
        v6 = v4;
        swift_once();
        v4 = v6;
      }

      v5 = *v4;
      sub_100009C54(qword_100276E20);
      return sub_10000F4B4(v7);
    }

    else
    {
      return sub_10000F500(&v8, &unk_10025B1C0, &unk_1001CFA90);
    }
  }

  return result;
}

uint64_t sub_10011CC00()
{
  v10 = v0[8];
  v11 = v0[9];
  v12 = v0[10];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[7];
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return sub_100118D90();
}

id sub_10011CEAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AttachmentsAccessoryView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_10011CF18(uint64_t a1, uint64_t a2)
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
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_10011CF4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 137))
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

uint64_t sub_10011CF94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10011D01C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_10011D100(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

void sub_10011D1EC()
{
  sub_100121AC4(319, &qword_10025DE18, type metadata accessor for CompositionModel, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_100121AC4(319, &unk_10025DE20, type metadata accessor for CommonUIManager, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_100121AC4(319, &unk_10025DE30, &type metadata accessor for NavigationPath, &type metadata accessor for Binding);
      if (v2 <= 0x3F)
      {
        sub_100121A74(319, qword_100262780, &type metadata for Bool, &type metadata accessor for Binding);
        if (v3 <= 0x3F)
        {
          sub_100121618(319, &qword_10025B4F0, &type metadata accessor for FocusState);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_10011D39C()
{
  result = qword_1002627C8;
  if (!qword_1002627C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002627C8);
  }

  return result;
}

uint64_t sub_10011D468()
{
  v1 = type metadata accessor for CompositionView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  if (*(v0 + v4 + 8) != 1)
  {
  }

  v6 = *(v5 + 24);

  v7 = *(v5 + 40);

  v8 = (v5 + v1[7]);
  v9 = *v8;

  v10 = *(v8 + 1);

  v11 = *(sub_10000341C(&qword_1002632E0, &qword_1001D11A0) + 32);
  v12 = type metadata accessor for NavigationPath();
  (*(*(v12 - 8) + 8))(&v8[v11], v12);
  v13 = (v5 + v1[8]);
  v14 = *v13;

  v15 = v13[1];

  v16 = *(v5 + v1[9] + 8);

  return _swift_deallocObject(v0, v4 + v3, v2 | 7);
}

uint64_t sub_10011D5F4(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_10011D670()
{
  v2 = *(type metadata accessor for CompositionView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002B2A0;

  return sub_10010A86C(v0 + v3);
}

uint64_t sub_10011D744(uint64_t a1, uint64_t a2)
{
  v20[5] = a1;
  v4 = type metadata accessor for Attachment(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v20[1] = a2;
  sub_1001208D0(&qword_10025F460, type metadata accessor for AttachmentManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v9 = *(a2 + 16);
  v10 = *(v9 + 16);

  if (v10)
  {
    v20[0] = v2;
    v12 = 0;
    while (v12 < *(v9 + 16))
    {
      sub_100120918(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v8, type metadata accessor for Attachment);
      v13 = &v8[*(v4 + 20)];
      v14 = *(v13 + 1);
      if (v14)
      {
        v15 = *v13;
        result = PhotosPickerItem.itemIdentifier.getter();
        if (!v16)
        {
          goto LABEL_20;
        }

        if (v15 == result && v14 == v16)
        {

          sub_100120C94(v8, type metadata accessor for Attachment);
LABEL_17:
          v19 = 0;
          goto LABEL_18;
        }

        v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

        result = sub_100120C94(v8, type metadata accessor for Attachment);
        if (v18)
        {
          goto LABEL_17;
        }
      }

      else
      {
        result = sub_100120C94(v8, type metadata accessor for Attachment);
      }

      if (v10 == ++v12)
      {
        v19 = 1;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
    v19 = 1;
LABEL_18:

    return v19;
  }

  return result;
}

uint64_t sub_10011D9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v6 = sub_10000341C(&qword_100262FD0, &unk_1001D4CC0);
  v5[15] = v6;
  v7 = *(v6 - 8);
  v5[16] = v7;
  v8 = *(v7 + 64) + 15;
  v5[17] = swift_task_alloc();
  v9 = *(*(type metadata accessor for Attachment(0) - 8) + 64) + 15;
  v5[18] = swift_task_alloc();
  v10 = sub_10000341C(&qword_100262FF0, &qword_1001DA1C0);
  v5[19] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v12 = *(*(sub_10000341C(&qword_100262FF8, &qword_1001DA1C8) - 8) + 64) + 15;
  v5[21] = swift_task_alloc();
  v13 = sub_10000341C(&qword_100263000, &qword_1001DA1D0);
  v5[22] = v13;
  v14 = *(v13 - 8);
  v5[23] = v14;
  v15 = *(v14 + 64) + 15;
  v5[24] = swift_task_alloc();
  v16 = type metadata accessor for PhotosPickerItem();
  v5[25] = v16;
  v17 = *(v16 - 8);
  v5[26] = v17;
  v5[27] = *(v17 + 64);
  v5[28] = swift_task_alloc();
  v18 = *(*(sub_10000341C(&unk_10025B5D0, &qword_1001D05A0) - 8) + 64) + 15;
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v19 = sub_10000341C(&qword_100263008, &qword_1001DA1D8);
  v5[31] = v19;
  v20 = *(v19 - 8);
  v5[32] = v20;
  v21 = *(v20 + 64) + 15;
  v5[33] = swift_task_alloc();
  v22 = *(*(sub_10000341C(&unk_100263010, &unk_1001DA1E0) - 8) + 64) + 15;
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v5[36] = type metadata accessor for MainActor();
  v5[37] = static MainActor.shared.getter();
  v24 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[38] = v24;
  v5[39] = v23;

  return _swift_task_switch(sub_10011DD48, v24, v23);
}

uint64_t sub_10011DD48(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(v4 + 256);
  v57 = *(v4 + 248);
  v53 = *(v4 + 104);
  v54 = (v6 + 48);
  v55 = (v6 + 56);
  v56 = *(v4 + 208);
  v52 = *(v4 + 216) + 7;
  v7 = *(*(v4 + 88) + 16);
  v8 = &qword_1001D05A0;
  for (i = v7; ; v7 = i)
  {
    if (v5 == v7)
    {
      v10 = 1;
      v11 = v7;
    }

    else
    {
      if (v5 >= v7)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return TaskGroup.Iterator.next(isolation:)(a1, a2, a3, a4);
      }

      if (__OFADD__(v5, 1))
      {
        goto LABEL_20;
      }

      v12 = *(v4 + 264);
      v13 = *(v4 + 272);
      v14 = *(v4 + 200);
      v15 = *(v4 + 88) + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v5;
      v16 = *(v57 + 48);
      *v12 = v5;
      (*(v56 + 16))(&v12[v16], v15, v14);
      sub_10002A894(v12, v13, &qword_100263008, &qword_1001DA1D8);
      v10 = 0;
      v11 = v5 + 1;
    }

    v17 = *(v4 + 272);
    v18 = *(v4 + 280);
    v19 = *(v4 + 248);
    (*v55)(v17, v10, 1, v19);
    sub_10002A894(v17, v18, &unk_100263010, &unk_1001DA1E0);
    if ((*v54)(v18, 1, v19) == 1)
    {
      break;
    }

    v65 = v11;
    v21 = *(v4 + 280);
    v20 = *(v4 + 288);
    v22 = *(v4 + 240);
    v60 = v22;
    v64 = *(v4 + 232);
    v23 = *(v4 + 224);
    v24 = *(v4 + 200);
    v58 = v24;
    v62 = *(v4 + 96);
    v63 = *(v4 + 104);
    v61 = *v21;
    v25 = *(v57 + 48);
    v26 = type metadata accessor for TaskPriority();
    v59 = *(v26 - 8);
    (*(v59 + 56))(v22, 1, 1, v26);
    v27 = *(v56 + 32);
    v27(v23, v21 + v25, v24);

    v28 = static MainActor.shared.getter();
    v29 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v30 = v8;
    v31 = (v52 + v29) & 0xFFFFFFFFFFFFFFF8;
    v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
    v33 = swift_allocObject();
    *(v33 + 16) = v28;
    *(v33 + 24) = &protocol witness table for MainActor;
    v27(v33 + v29, v23, v58);
    *(v33 + v31) = v61;
    v8 = v30;
    v34 = (v33 + v32);
    *v34 = v62;
    v34[1] = v63;
    sub_1000081F8(v60, v64, &unk_10025B5D0, v30);
    LODWORD(v32) = (*(v59 + 48))(v64, 1, v26);

    v35 = *(v4 + 232);
    if (v32 == 1)
    {
      sub_10000F500(*(v4 + 232), &unk_10025B5D0, v30);
      if (*(v33 + 16))
      {
        goto LABEL_11;
      }
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v59 + 8))(v35, v26);
      if (*(v33 + 16))
      {
LABEL_11:
        v36 = *(v33 + 24);
        swift_getObjectType();
        swift_unknownObjectRetain();
        v37 = dispatch thunk of Actor.unownedExecutor.getter();
        v39 = v38;
        swift_unknownObjectRelease();
        goto LABEL_14;
      }
    }

    v37 = 0;
    v39 = 0;
LABEL_14:
    v40 = **(v4 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = &unk_1001DA1F8;
    *(v41 + 24) = v33;
    sub_10000341C(&qword_100262FD8, &qword_1001DA160);
    v42 = v39 | v37;
    if (v39 | v37)
    {
      v42 = v4 + 16;
      *(v4 + 16) = 0;
      *(v4 + 24) = 0;
      *(v4 + 32) = v37;
      *(v4 + 40) = v39;
    }

    v5 = v65;
    v9 = *(v4 + 240);
    *(v4 + 48) = 1;
    *(v4 + 56) = v42;
    *(v4 + 64) = v40;
    swift_task_create();

    a1 = sub_10000F500(v9, &unk_10025B5D0, v30);
  }

  v43 = *(v4 + 192);
  v44 = **(v4 + 80);
  *(v4 + 320) = sub_10000341C(&qword_100262FD8, &qword_1001DA160);
  TaskGroup.makeAsyncIterator()();
  *(v4 + 328) = _swiftEmptyArrayStorage;
  v45 = *(v4 + 288);
  v46 = static MainActor.shared.getter();
  *(v4 + 336) = v46;
  v47 = async function pointer to TaskGroup.Iterator.next(isolation:)[1];
  v48 = swift_task_alloc();
  *(v4 + 344) = v48;
  *v48 = v4;
  v48[1] = sub_10011E2A4;
  v49 = *(v4 + 192);
  a1 = *(v4 + 168);
  a4 = *(v4 + 176);
  a3 = &protocol witness table for MainActor;
  a2 = v46;

  return TaskGroup.Iterator.next(isolation:)(a1, a2, a3, a4);
}

uint64_t sub_10011E2A4()
{
  v1 = *v0;
  v2 = *(*v0 + 344);
  v3 = *(*v0 + 336);
  v7 = *v0;

  v4 = *(v1 + 312);
  v5 = *(v1 + 304);

  return _swift_task_switch(sub_10011E3E8, v5, v4);
}

uint64_t sub_10011E3E8()
{
  v1 = v0[40];
  v2 = v0[21];
  if ((*(*(v1 - 8) + 48))(v2, 1, v1) != 1)
  {
    v14 = v0[19];
    v15 = *v2;
    sub_10002A894(v2 + *(v1 + 48), v0[20], &qword_100262FF0, &qword_1001DA1C0);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v35 = v0[41];
      v37 = v0[17];
      v36 = v0[18];
      v38 = v0[15];
      sub_100122020(v0[20], v36, type metadata accessor for Attachment);
      v39 = *(v38 + 48);
      *v37 = v15;
      sub_100120918(v36, v37 + v39, type metadata accessor for Attachment);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v0[41];
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v41 = sub_10017E240(0, v41[2] + 1, 1, v0[41]);
      }

      v43 = v41[2];
      v42 = v41[3];
      if (v43 >= v42 >> 1)
      {
        v41 = sub_10017E240(v42 > 1, v43 + 1, 1, v41);
      }

      v44 = v0[17];
      v45 = v0[16];
      sub_100120C94(v0[18], type metadata accessor for Attachment);
      v41[2] = v43 + 1;
      sub_10002A894(v44, v41 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v43, &qword_100262FD0, &unk_1001D4CC0);
      v0[41] = v41;
      goto LABEL_21;
    }

    v16 = *v0[20];
    if (qword_10025A6D8 != -1)
    {
      swift_once();
    }

    v17 = v0[14];
    v18 = type metadata accessor for Logger();
    sub_10000F34C(v18, qword_100276EF0);

    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v0[9] = v23;
      *v21 = 136643075;
      if ((v15 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v27 = v0[14];
        if (v15 < *(v27 + 16))
        {
          v28 = v23;
          v29 = v27 + ((*(v0[26] + 80) + 32) & ~*(v0[26] + 80)) + *(v0[26] + 72) * v15;
          v30 = PhotosPickerItem.itemIdentifier.getter();
          if (v31)
          {
            v32 = v31;
          }

          else
          {
            v30 = 7104878;
            v32 = 0xE300000000000000;
          }

          v33 = sub_10002510C(v30, v32, v0 + 9);

          *(v21 + 4) = v33;
          *(v21 + 12) = 2112;
          swift_errorRetain();
          v34 = _swift_stdlib_bridgeErrorToNSError();
          *(v21 + 14) = v34;
          *v22 = v34;
          _os_log_impl(&_mh_execute_header, v19, v20, "failed to load photo %{sensitive}s: %@", v21, 0x16u);
          sub_10000F500(v22, &unk_10025D580, &qword_1001CFA60);

          sub_10000F4B4(v28);

LABEL_21:
          v46 = v0[36];
          v47 = static MainActor.shared.getter();
          v0[42] = v47;
          v48 = async function pointer to TaskGroup.Iterator.next(isolation:)[1];
          v49 = swift_task_alloc();
          v0[43] = v49;
          *v49 = v0;
          v49[1] = sub_10011E2A4;
          v50 = v0[24];
          v23 = v0[21];
          v26 = v0[22];
          v25 = &protocol witness table for MainActor;
          v24 = v47;

          return TaskGroup.Iterator.next(isolation:)(v23, v24, v25, v26);
        }
      }

      __break(1u);
      return TaskGroup.Iterator.next(isolation:)(v23, v24, v25, v26);
    }

    goto LABEL_21;
  }

  v3 = v0[37];
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[33];
  v8 = v0[29];
  v7 = v0[30];
  v9 = v0[28];
  v10 = v0[20];
  v51 = v0[18];
  v52 = v0[17];
  (*(v0[23] + 8))(v0[24], v0[22]);

  v11 = v0[1];
  v12 = v0[41];

  return v11(v12);
}

uint64_t sub_10011E928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  v8 = *(*(sub_10000341C(&qword_100263020, &qword_1001DA210) - 8) + 64) + 15;
  v9 = swift_task_alloc();
  v7[7] = v9;
  v10 = type metadata accessor for Attachment(0);
  v7[8] = v10;
  v11 = *(v10 - 8);
  v7[9] = v11;
  v12 = *(v11 + 64) + 15;
  v7[10] = swift_task_alloc();
  v7[11] = type metadata accessor for MainActor();
  v7[12] = static MainActor.shared.getter();
  v13 = async function pointer to PhotosPickerItem.loadTransferable<A>(type:)[1];
  v14 = swift_task_alloc();
  v7[13] = v14;
  v15 = sub_1001208D0(&qword_100263028, type metadata accessor for Attachment);
  *v14 = v7;
  v14[1] = sub_10011EAD4;

  return PhotosPickerItem.loadTransferable<A>(type:)(v9, v10, v10, v15);
}

uint64_t sub_10011EAD4()
{
  v2 = v0;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v10 = *v1;
  *(*v1 + 112) = v2;

  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v2)
  {
    v8 = sub_10011EEA4;
  }

  else
  {
    v8 = sub_10011EC30;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10011EC30()
{
  v1 = v0[7];
  if ((*(v0[9] + 48))(v1, 1, v0[8]) == 1)
  {
    v2 = v0[12];
    v3 = v0[4];
    v4 = v0[2];

    sub_10000F500(v1, &qword_100263020, &qword_1001DA210);
    v5 = *(sub_10000341C(&qword_100262FD8, &qword_1001DA160) + 48);
    *v4 = v3;
    sub_100124620();
    v6 = swift_allocError();
    *v7 = 0xD000000000000015;
    v7[1] = 0x80000001001E7310;
    *(v4 + v5) = v6;
    sub_10000341C(&qword_100262FF0, &qword_1001DA1C0);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v8 = v0[3];
    sub_100122020(v1, v0[10], type metadata accessor for Attachment);
    sub_100177108();
    result = PhotosPickerItem.itemIdentifier.getter();
    if (!v10)
    {
      __break(1u);
      return result;
    }

    v11 = result;
    v12 = v10;
    v13 = v0[12];
    v14 = v0[10];
    v15 = v0[8];
    v16 = v0[6];

    v17 = (v14 + *(v15 + 20));
    v18 = v17[1];

    *v17 = v11;
    v17[1] = v12;
    if (v16)
    {
      v20 = v0[5];
      v19 = v0[6];
      v21 = (v0[10] + *(v0[8] + 44));
      v22 = v21[1];

      *v21 = v20;
      v21[1] = v19;
    }

    v23 = v0[10];
    v24 = v0[4];
    v25 = v0[2];
    v26 = *(sub_10000341C(&qword_100262FD8, &qword_1001DA160) + 48);
    *v25 = v24;
    sub_100120918(v23, v25 + v26, type metadata accessor for Attachment);
    sub_10000341C(&qword_100262FF0, &qword_1001DA1C0);
    swift_storeEnumTagMultiPayload();
    sub_100120C94(v23, type metadata accessor for Attachment);
  }

  v27 = v0[10];
  v28 = v0[7];

  v29 = v0[1];

  return v29();
}

uint64_t sub_10011EEA4()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[4];
  v4 = v0[2];

  v5 = *(sub_10000341C(&qword_100262FD8, &qword_1001DA160) + 48);
  *v4 = v3;
  *(v4 + v5) = v1;
  sub_10000341C(&qword_100262FF0, &qword_1001DA1C0);
  swift_storeEnumTagMultiPayload();
  v6 = v0[10];
  v7 = v0[7];

  v8 = v0[1];

  return v8();
}

Swift::Int sub_10011EF70(void **a1)
{
  v2 = *(sub_10000341C(&qword_100262FD0, &unk_1001D4CC0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10009FF4C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_10011F4F8(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_10011F074@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000341C(a1, a2);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (&v23 - v17);
  sub_1000081F8(v8, &v23 - v17, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = a3(0);
    return (*(*(v19 - 8) + 32))(a4, v18, v19);
  }

  else
  {
    v21 = *v18;
    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_10011F29C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10011F394;

  return v7(a1);
}

uint64_t sub_10011F394()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10011F48C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

Swift::Int sub_10011F4F8(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10000341C(&qword_100262FD0, &unk_1001D4CC0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(sub_10000341C(&qword_100262FD0, &unk_1001D4CC0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10011F890(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10011F63C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10011F63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = sub_10000341C(&qword_100262FD0, &unk_1001D4CC0);
  v8 = *(*(v38 - 8) + 64);
  v9 = __chkstk_darwin(v38);
  v37 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = (&v28 - v12);
  result = __chkstk_darwin(v11);
  v17 = (&v28 - v16);
  v30 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v35 = -v19;
    v36 = v18;
    v21 = a1 - a3;
    v29 = v19;
    v22 = v18 + v19 * a3;
LABEL_5:
    v33 = v20;
    v34 = a3;
    v31 = v22;
    v32 = v21;
    v23 = v21;
    while (1)
    {
      sub_1000081F8(v22, v17, &qword_100262FD0, &unk_1001D4CC0);
      sub_1000081F8(v20, v13, &qword_100262FD0, &unk_1001D4CC0);
      v24 = *v17;
      v25 = *v13;
      sub_10000F500(v13, &qword_100262FD0, &unk_1001D4CC0);
      result = sub_10000F500(v17, &qword_100262FD0, &unk_1001D4CC0);
      if (v24 >= v25)
      {
LABEL_4:
        a3 = v34 + 1;
        v20 = v33 + v29;
        v21 = v32 - 1;
        v22 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v26 = v37;
      sub_10002A894(v22, v37, &qword_100262FD0, &unk_1001D4CC0);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10002A894(v26, v20, &qword_100262FD0, &unk_1001D4CC0);
      v20 += v35;
      v22 += v35;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10011F890(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v106 = a1;
  v121 = sub_10000341C(&qword_100262FD0, &unk_1001D4CC0);
  v8 = *(v121 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v121);
  v110 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v120 = &v104 - v13;
  v14 = __chkstk_darwin(v12);
  v123 = (&v104 - v15);
  result = __chkstk_darwin(v14);
  v122 = (&v104 - v17);
  v18 = *(a3 + 8);
  if (v18 < 1)
  {
    v21 = a3;
    v20 = _swiftEmptyArrayStorage;
LABEL_99:
    a4 = *v106;
    if (!*v106)
    {
      goto LABEL_139;
    }

    a3 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a3;
    }

    else
    {
LABEL_133:
      result = sub_10009FA94(a3);
    }

    v124 = result;
    a3 = *(result + 16);
    if (a3 >= 2)
    {
      v100 = v8;
      while (*v21)
      {
        v8 = *(result + 16 * a3);
        v101 = result;
        v102 = *(result + 16 * (a3 - 1) + 40);
        sub_1001201F0(*v21 + *(v100 + 72) * v8, *v21 + *(v100 + 72) * *(result + 16 * (a3 - 1) + 32), *v21 + *(v100 + 72) * v102, a4);
        if (v5)
        {
        }

        if (v102 < v8)
        {
          goto LABEL_126;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v101 = sub_10009FA94(v101);
        }

        if (a3 - 2 >= *(v101 + 2))
        {
          goto LABEL_127;
        }

        v103 = &v101[16 * a3];
        *v103 = v8;
        v103[1] = v102;
        v124 = v101;
        sub_10009FA08(a3 - 1);
        result = v124;
        a3 = *(v124 + 16);
        if (a3 <= 1)
        {
        }
      }

      goto LABEL_137;
    }
  }

  v19 = 0;
  v20 = _swiftEmptyArrayStorage;
  v21 = a3;
  v107 = a3;
  v117 = v8;
  v105 = a4;
  while (1)
  {
    v22 = v19;
    v23 = v19 + 1;
    v111 = v20;
    v108 = v22;
    if (v23 >= v18)
    {
      v18 = v23;
    }

    else
    {
      v112 = v5;
      v24 = *v21;
      v25 = *(v8 + 72);
      v26 = *v21 + v25 * v23;
      v27 = v122;
      a3 = &qword_100262FD0;
      sub_1000081F8(v26, v122, &qword_100262FD0, &unk_1001D4CC0);
      v28 = v123;
      sub_1000081F8(v24 + v25 * v22, v123, &qword_100262FD0, &unk_1001D4CC0);
      v29 = *v27;
      v115 = *v28;
      v116 = v29;
      sub_10000F500(v28, &qword_100262FD0, &unk_1001D4CC0);
      result = sub_10000F500(v27, &qword_100262FD0, &unk_1001D4CC0);
      v30 = v22 + 2;
      v118 = v25;
      v31 = v24 + v25 * v30;
      while (v18 != v30)
      {
        LODWORD(v119) = v116 < v115;
        v32 = v122;
        sub_1000081F8(v31, v122, &qword_100262FD0, &unk_1001D4CC0);
        v33 = v123;
        sub_1000081F8(v26, v123, &qword_100262FD0, &unk_1001D4CC0);
        a3 = v18;
        v34 = *v32;
        v35 = *v33;
        sub_10000F500(v33, &qword_100262FD0, &unk_1001D4CC0);
        result = sub_10000F500(v32, &qword_100262FD0, &unk_1001D4CC0);
        v36 = v34 < v35;
        v18 = a3;
        v37 = !v36;
        ++v30;
        v31 += v118;
        v26 += v118;
        if (((v119 ^ v37) & 1) == 0)
        {
          v18 = v30 - 1;
          break;
        }
      }

      v21 = v107;
      v22 = v108;
      v8 = v117;
      v5 = v112;
      a4 = v105;
      if (v116 < v115)
      {
        if (v18 < v108)
        {
          goto LABEL_130;
        }

        if (v108 < v18)
        {
          v38 = v117;
          a3 = v118 * (v18 - 1);
          v39 = v18 * v118;
          v116 = v18;
          v40 = v18;
          v41 = v108;
          v42 = v108 * v118;
          do
          {
            if (v41 != --v40)
            {
              v112 = v5;
              v43 = *v21;
              if (!*v21)
              {
                goto LABEL_136;
              }

              sub_10002A894(v43 + v42, v110, &qword_100262FD0, &unk_1001D4CC0);
              if (v42 < a3 || v43 + v42 >= (v43 + v39))
              {
                swift_arrayInitWithTakeFrontToBack();
                v5 = v112;
              }

              else
              {
                v5 = v112;
                if (v42 != a3)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = sub_10002A894(v110, v43 + a3, &qword_100262FD0, &unk_1001D4CC0);
              v21 = v107;
              v22 = v108;
              v38 = v117;
            }

            ++v41;
            a3 -= v118;
            v39 -= v118;
            v42 += v118;
          }

          while (v41 < v40);
          a4 = v105;
          v18 = v116;
          v8 = v38;
        }
      }
    }

    v44 = v21[1];
    if (v18 < v44)
    {
      if (__OFSUB__(v18, v22))
      {
        goto LABEL_129;
      }

      if (v18 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_131;
        }

        if ((v22 + a4) >= v44)
        {
          v45 = v21[1];
        }

        else
        {
          v45 = v22 + a4;
        }

        if (v45 < v22)
        {
LABEL_132:
          __break(1u);
          goto LABEL_133;
        }

        if (v18 != v45)
        {
          break;
        }
      }
    }

    v46 = v18;
    if (v18 < v22)
    {
      goto LABEL_128;
    }

LABEL_36:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v20 = v111;
    }

    else
    {
      result = sub_10009FBA4(0, *(v111 + 2) + 1, 1, v111);
      v20 = result;
    }

    a3 = *(v20 + 2);
    v47 = *(v20 + 3);
    a4 = a3 + 1;
    if (a3 >= v47 >> 1)
    {
      result = sub_10009FBA4((v47 > 1), a3 + 1, 1, v20);
      v20 = result;
    }

    *(v20 + 2) = a4;
    v48 = &v20[16 * a3];
    *(v48 + 4) = v22;
    *(v48 + 5) = v46;
    v49 = *v106;
    if (!*v106)
    {
      goto LABEL_138;
    }

    v113 = v46;
    if (a3)
    {
      v8 = v49;
      while (1)
      {
        v50 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v51 = *(v20 + 4);
          v52 = *(v20 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_56:
          if (v54)
          {
            goto LABEL_117;
          }

          v67 = &v20[16 * a4];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_120;
          }

          v73 = &v20[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_123;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_124;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = a4 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v77 = &v20[16 * a4];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_70:
        if (v72)
        {
          goto LABEL_119;
        }

        v80 = &v20[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_122;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_77:
        a3 = v50 - 1;
        if (v50 - 1 >= a4)
        {
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
          goto LABEL_132;
        }

        if (!*v21)
        {
          goto LABEL_135;
        }

        v88 = v20;
        a4 = *&v20[16 * a3 + 32];
        v89 = *&v20[16 * v50 + 40];
        sub_1001201F0(*v21 + *(v117 + 72) * a4, *v21 + *(v117 + 72) * *&v20[16 * v50 + 32], *v21 + *(v117 + 72) * v89, v8);
        if (v5)
        {
        }

        if (v89 < a4)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v88 = sub_10009FA94(v88);
        }

        if (a3 >= *(v88 + 2))
        {
          goto LABEL_114;
        }

        v90 = &v88[16 * a3];
        *(v90 + 4) = a4;
        *(v90 + 5) = v89;
        v124 = v88;
        a3 = &v124;
        result = sub_10009FA08(v50);
        v20 = v124;
        a4 = *(v124 + 16);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v20[16 * a4 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_115;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_116;
      }

      v62 = &v20[16 * a4];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_118;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_121;
      }

      if (v66 >= v58)
      {
        v84 = &v20[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_125;
        }

        if (v53 < v87)
        {
          v50 = a4 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v18 = v21[1];
    v19 = v113;
    a4 = v105;
    v8 = v117;
    if (v113 >= v18)
    {
      goto LABEL_99;
    }
  }

  v112 = v5;
  v113 = v45;
  v91 = *(v8 + 72);
  v92 = *v21 + v91 * (v18 - 1);
  v93 = v22;
  v94 = -v91;
  a3 = v93 - v18;
  v119 = *v21;
  v109 = v91;
  a4 = v119 + v18 * v91;
LABEL_89:
  v115 = a3;
  v116 = v18;
  v114 = a4;
  v118 = v92;
  v95 = v92;
  while (1)
  {
    v96 = v122;
    sub_1000081F8(a4, v122, &qword_100262FD0, &unk_1001D4CC0);
    v97 = v123;
    sub_1000081F8(v95, v123, &qword_100262FD0, &unk_1001D4CC0);
    v98 = *v96;
    v8 = *v97;
    sub_10000F500(v97, &qword_100262FD0, &unk_1001D4CC0);
    result = sub_10000F500(v96, &qword_100262FD0, &unk_1001D4CC0);
    if (v98 >= v8)
    {
LABEL_88:
      v18 = v116 + 1;
      v92 = v118 + v109;
      a3 = v115 - 1;
      v46 = v113;
      a4 = v114 + v109;
      if (v116 + 1 != v113)
      {
        goto LABEL_89;
      }

      v5 = v112;
      v21 = v107;
      v22 = v108;
      if (v113 < v108)
      {
        goto LABEL_128;
      }

      goto LABEL_36;
    }

    if (!v119)
    {
      break;
    }

    v8 = v120;
    sub_10002A894(a4, v120, &qword_100262FD0, &unk_1001D4CC0);
    swift_arrayInitWithTakeFrontToBack();
    sub_10002A894(v8, v95, &qword_100262FD0, &unk_1001D4CC0);
    v95 += v94;
    a4 += v94;
    if (__CFADD__(a3++, 1))
    {
      goto LABEL_88;
    }
  }

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
  return result;
}

uint64_t sub_1001201F0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v44 = sub_10000341C(&qword_100262FD0, &unk_1001D4CC0);
  v8 = *(*(v44 - 8) + 64);
  v9 = __chkstk_darwin(v44);
  v46 = (&v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = __chkstk_darwin(v9);
  v45 = (&v36 - v12);
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_58;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_59;
  }

  v16 = (a2 - a1) / v14;
  v49 = a1;
  v48 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v27 = a4 + v18;
    if (v18 >= 1)
    {
      v28 = -v14;
      v29 = a4 + v18;
      v39 = a1;
      v40 = a4;
      v38 = -v14;
      do
      {
        v36 = v27;
        v30 = a2 + v28;
        v41 = a2;
        v42 = a2 + v28;
        while (1)
        {
          if (a2 <= a1)
          {
            v49 = a2;
            v47 = v36;
            goto LABEL_56;
          }

          v31 = a3;
          v37 = v27;
          a3 += v28;
          v32 = v29 + v28;
          v33 = v45;
          sub_1000081F8(v29 + v28, v45, &qword_100262FD0, &unk_1001D4CC0);
          v34 = v46;
          sub_1000081F8(v30, v46, &qword_100262FD0, &unk_1001D4CC0);
          v43 = *v33;
          v35 = *v34;
          sub_10000F500(v34, &qword_100262FD0, &unk_1001D4CC0);
          sub_10000F500(v33, &qword_100262FD0, &unk_1001D4CC0);
          if (v43 < v35)
          {
            break;
          }

          v27 = v29 + v28;
          if (v31 < v29 || a3 >= v29)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v42;
            v28 = v38;
            a1 = v39;
          }

          else
          {
            v30 = v42;
            v28 = v38;
            a1 = v39;
            if (v31 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v29 = v32;
          a2 = v41;
          if (v32 <= v40)
          {
            goto LABEL_54;
          }
        }

        if (v31 < v41 || a3 >= v41)
        {
          a2 = v42;
          swift_arrayInitWithTakeFrontToBack();
          v28 = v38;
          a1 = v39;
          v27 = v37;
        }

        else
        {
          a2 = v42;
          v28 = v38;
          a1 = v39;
          v27 = v37;
          if (v31 != v41)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v29 > v40);
    }

LABEL_54:
    v49 = a2;
    v47 = v27;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a3;
    v43 = a4 + v17;
    v47 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      v41 = v14;
      do
      {
        v20 = v45;
        v21 = a2;
        sub_1000081F8(a2, v45, &qword_100262FD0, &unk_1001D4CC0);
        v22 = v46;
        sub_1000081F8(a4, v46, &qword_100262FD0, &unk_1001D4CC0);
        v23 = *v20;
        v24 = *v22;
        sub_10000F500(v22, &qword_100262FD0, &unk_1001D4CC0);
        sub_10000F500(v20, &qword_100262FD0, &unk_1001D4CC0);
        if (v23 >= v24)
        {
          v25 = v41;
          v26 = a4 + v41;
          if (a1 < a4 || a1 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v48 = v26;
          a4 += v25;
        }

        else
        {
          v25 = v41;
          a2 += v41;
          if (a1 < v21 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v21)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 += v25;
        v49 = a1;
      }

      while (a4 < v43 && a2 < v42);
    }
  }

LABEL_56:
  sub_10009FAA8(&v49, &v48, &v47);
  return 1;
}

uint64_t sub_1001206F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_1001207B8;

  return sub_10011D9E0(a2, a3, a4, a5, a6);
}

uint64_t sub_1001207B8(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1;
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1001208D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100120918(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100120980()
{
  result = qword_1002628A0;
  if (!qword_1002628A0)
  {
    sub_100003E34(&qword_100262878, &qword_1001D94F8);
    sub_100120A0C();
    sub_100120AF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002628A0);
  }

  return result;
}

unint64_t sub_100120A0C()
{
  result = qword_1002628A8;
  if (!qword_1002628A8)
  {
    sub_100003E34(&qword_100262870, &qword_1001D94F0);
    sub_1001208D0(&qword_100262890, type metadata accessor for CompositionResponseView);
    sub_1001208D0(&qword_100262898, type metadata accessor for CompositionConfirmView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002628A8);
  }

  return result;
}

unint64_t sub_100120AF8()
{
  result = qword_1002628B0;
  if (!qword_1002628B0)
  {
    sub_100003E34(&qword_100262850, &qword_1001D94D0);
    sub_100120B84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002628B0);
  }

  return result;
}

unint64_t sub_100120B84()
{
  result = qword_1002628B8;
  if (!qword_1002628B8)
  {
    sub_100003E34(&qword_100262848, &qword_1001D94C8);
    sub_1001208D0(&unk_1002628C0, type metadata accessor for CompositionIndexView);
    sub_100007120(&unk_10025AAC0, &qword_1002628D0, &qword_1001D18D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002628B8);
  }

  return result;
}

uint64_t sub_100120C94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100120D2C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100120E08()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100120E48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100028688;

  return sub_100116BAC(a1, v4, v5, v6);
}

uint64_t sub_100120F00()
{
  v2 = *(v0 + 64);
  v3 = *(v0 + 80);
  sub_10000341C(&qword_100262800, &qword_1001D9490);
  return Binding.wrappedValue.setter();
}

uint64_t sub_100120F60()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[9];

  v7 = v0[11];

  v8 = v0[12];

  v9 = v0[14];

  v10 = v0[15];

  v11 = v0[18];

  return _swift_deallocObject(v0, 153, 7);
}

uint64_t sub_100120FE8()
{
  v2 = *(v0 + 88);
  v3 = *(v0 + 104);
  sub_10000341C(&qword_100262800, &qword_1001D9490);
  return Binding.wrappedValue.setter();
}

unint64_t sub_100121050()
{
  result = qword_100262930;
  if (!qword_100262930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262930);
  }

  return result;
}

uint64_t sub_1001210D4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10000341C(&qword_100262948, &unk_1001D96C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[8];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[9] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[11];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_10012122C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_10000341C(&qword_100262948, &unk_1001D96C0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[8];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[9] + 8) = (a2 - 1);
  }

  else
  {
    v13 = sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[11];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_100121370()
{
  sub_100121AC4(319, &qword_10025D688, type metadata accessor for WritingToolsModel, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_100121AC4(319, &qword_10025DE18, type metadata accessor for CompositionModel, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_100121AC4(319, &qword_1002629C0, type metadata accessor for PresentationModel, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_1001215B4();
        if (v3 <= 0x3F)
        {
          sub_100121AC4(319, &unk_1002629D8, &type metadata accessor for ScenePhase, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            sub_100121A74(319, &qword_10025B4B0, &type metadata for String, &type metadata accessor for State);
            if (v5 <= 0x3F)
            {
              sub_100121618(319, &unk_1002629E8, &type metadata accessor for FocusState.Binding);
              if (v6 <= 0x3F)
              {
                sub_100121AC4(319, &unk_10025DE30, &type metadata accessor for NavigationPath, &type metadata accessor for Binding);
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

void sub_1001215B4()
{
  if (!qword_1002629C8)
  {
    sub_100003E34(&qword_1002629D0, &qword_1001D96E8);
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_1002629C8);
    }
  }
}

void sub_100121618(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Bool, &protocol witness table for Bool);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10012168C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 72);
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

uint64_t sub_10012175C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 72) = (a2 - 1);
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

void sub_10012180C()
{
  sub_100121AC4(319, &qword_10025DE18, type metadata accessor for CompositionModel, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_100121AC4(319, &qword_1002629C0, type metadata accessor for PresentationModel, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_100121AC4(319, &unk_10025DE20, type metadata accessor for CommonUIManager, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_100121A74(319, &qword_10025DE40, &type metadata for Bool, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          sub_100121618(319, &unk_1002629E8, &type metadata accessor for FocusState.Binding);
          if (v4 <= 0x3F)
          {
            sub_100121AC4(319, &unk_100262AA0, &type metadata accessor for FBKEvaluationController, &type metadata accessor for State);
            if (v5 <= 0x3F)
            {
              sub_100121AC4(319, &unk_10025DE30, &type metadata accessor for NavigationPath, &type metadata accessor for Binding);
              if (v6 <= 0x3F)
              {
                sub_100121A74(319, &qword_10025B4B0, &type metadata for String, &type metadata accessor for State);
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

void sub_100121A74(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_100121AC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

__n128 sub_100121B38(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_100121B6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_100121BB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100121C34()
{
  result = qword_100262AE8;
  if (!qword_100262AE8)
  {
    sub_100003E34(&qword_1002627F8, &unk_1001D9458);
    sub_100003E34(&qword_1002627E0, &qword_1001D9408);
    sub_100003E34(&qword_1002627D8, &qword_1001D9400);
    sub_100003E34(&qword_1002627D0, &qword_1001D93F8);
    sub_100007120(&qword_1002627F0, &qword_1002627D0, &qword_1001D93F8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1001208D0(&qword_10025A930, &type metadata accessor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262AE8);
  }

  return result;
}

unint64_t sub_100121E04()
{
  result = qword_100262AF8;
  if (!qword_100262AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262AF8);
  }

  return result;
}

uint64_t sub_100121EAC()
{
  v1 = (type metadata accessor for CompositionConfirmView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 16);

  v8 = *(v0 + v3 + 32);

  v9 = *(v0 + v3 + 56);

  v10 = *(v0 + v3 + 64);

  v11 = *(v0 + v3 + 72);

  v12 = *(v0 + v3 + 96);

  v13 = (v0 + v3 + v1[12]);
  v14 = *v13;

  v15 = *(v13 + 1);

  v16 = *(sub_10000341C(&qword_1002632E0, &qword_1001D11A0) + 32);
  v17 = type metadata accessor for NavigationPath();
  (*(*(v17 - 8) + 8))(&v13[v16], v17);
  v18 = v0 + v3 + v1[13];
  v19 = *(v18 + 8);

  v20 = *(v18 + 16);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100122020(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100122088(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(*(type metadata accessor for CompositionConfirmView(0) - 8) + 80);
  v6 = *(v2 + 16);

  return sub_100113D68(a1, a2);
}

unint64_t sub_100122114()
{
  result = qword_100262B90;
  if (!qword_100262B90)
  {
    sub_100003E34(&qword_100262B88, &qword_1001D9AB8);
    sub_100007120(&qword_100262B98, &unk_100262BA0, &qword_1001D9AC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262B90);
  }

  return result;
}

unint64_t sub_1001221C4()
{
  result = qword_100262BC0;
  if (!qword_100262BC0)
  {
    sub_100003E34(&qword_100262B28, &qword_1001D9A60);
    sub_100003E34(&qword_100262B18, &qword_1001D9A50);
    sub_100003E34(&qword_100262B10, &qword_1001D9A48);
    sub_100003E34(&qword_100262B80, &qword_1001D9AB0);
    sub_100003E34(&qword_100262B08, &qword_1001D9A40);
    sub_100007120(&qword_100262B78, &qword_100262B08, &qword_1001D9A40);
    swift_getOpaqueTypeConformance2();
    sub_100003E34(&qword_100262B88, &qword_1001D9AB8);
    sub_100122114();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10006B3B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262BC0);
  }

  return result;
}

uint64_t sub_100122438()
{
  v1 = (type metadata accessor for CompositionConfirmView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v5 + 16);

  v8 = *(v5 + 32);

  v9 = *(v5 + 56);

  v10 = *(v5 + 64);

  v11 = *(v5 + 72);

  v12 = *(v5 + 96);

  v13 = (v5 + v1[12]);
  v14 = *v13;

  v15 = *(v13 + 1);

  v16 = *(sub_10000341C(&qword_1002632E0, &qword_1001D11A0) + 32);
  v17 = type metadata accessor for NavigationPath();
  (*(*(v17 - 8) + 8))(&v13[v16], v17);
  v18 = v5 + v1[13];
  v19 = *(v18 + 8);

  v20 = *(v18 + 16);

  v21 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_1001225D0(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for CompositionConfirmView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

unint64_t sub_1001226A4()
{
  result = qword_100262C88;
  if (!qword_100262C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262C88);
  }

  return result;
}

uint64_t sub_100122730()
{
  v1 = (type metadata accessor for CompositionConfirmView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 16);

  v7 = *(v0 + v3 + 32);

  v8 = *(v0 + v3 + 56);

  v9 = *(v0 + v3 + 64);

  v10 = *(v0 + v3 + 72);

  v11 = *(v0 + v3 + 96);

  v12 = (v0 + v3 + v1[12]);
  v13 = *v12;

  v14 = *(v12 + 1);

  v15 = *(sub_10000341C(&qword_1002632E0, &qword_1001D11A0) + 32);
  v16 = type metadata accessor for NavigationPath();
  (*(*(v16 - 8) + 8))(&v12[v15], v16);
  v17 = v0 + v3 + v1[13];
  v18 = *(v17 + 8);

  v19 = *(v17 + 16);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_1001228C8()
{
  result = qword_100262CB8;
  if (!qword_100262CB8)
  {
    sub_100003E34(&qword_100262CB0, &qword_1001D9D90);
    sub_100007120(&qword_100262CC0, &qword_100262CC8, &qword_1001D9D98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262CB8);
  }

  return result;
}

unint64_t sub_100122980()
{
  result = qword_100262CD8;
  if (!qword_100262CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262CD8);
  }

  return result;
}

unint64_t sub_1001229D4()
{
  result = qword_100262CE0;
  if (!qword_100262CE0)
  {
    sub_100003E34(&qword_100262C10, &qword_1001D9B28);
    sub_100122A8C();
    sub_100007120(&unk_10025AAC0, &qword_1002628D0, &qword_1001D18D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262CE0);
  }

  return result;
}

unint64_t sub_100122A8C()
{
  result = qword_100262CE8;
  if (!qword_100262CE8)
  {
    sub_100003E34(&qword_100262CD0, &qword_1001D9DA0);
    sub_100007120(&qword_100262CF0, &qword_100262CF8, &qword_1001D9DA8);
    sub_100063A9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262CE8);
  }

  return result;
}

uint64_t sub_100122C00()
{
  v1 = (type metadata accessor for CompositionConfirmView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = (v0 + v3);
  v7 = *v6;

  v8 = v6[2];

  v9 = v6[4];

  v10 = v6[7];

  v11 = v6[8];

  v12 = v6[9];

  v13 = v6[12];

  v14 = v6 + v1[12];
  v15 = *v14;

  v16 = *(v14 + 1);

  v17 = *(sub_10000341C(&qword_1002632E0, &qword_1001D11A0) + 32);
  v18 = type metadata accessor for NavigationPath();
  (*(*(v18 - 8) + 8))(&v14[v17], v18);
  v19 = v6 + v1[13];
  v20 = *(v19 + 8);

  v21 = *(v19 + 16);

  v22 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_100122D8C(uint64_t a1)
{
  v4 = *(type metadata accessor for CompositionConfirmView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002B2A0;

  return sub_10010F25C(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_100122ED4()
{
  v2 = *(type metadata accessor for CompositionIndexView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002B2A0;

  return sub_10010E058(v0 + v3);
}

uint64_t sub_100122FA0()
{
  v1 = type metadata accessor for CompositionIndexView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 16);

  v8 = *(v0 + v3 + 32);

  v9 = *(v0 + v3 + 48);
  v10 = *(v0 + v3 + 56);
  v11 = *(v0 + v3 + 64);
  sub_100122EC8();
  v12 = v1[8];
  sub_10000341C(&qword_1002628E0, &qword_1001D95E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for ScenePhase();
    (*(*(v13 - 8) + 8))(v5 + v12, v13);
  }

  else
  {
    v14 = *(v5 + v12);
  }

  v15 = v5 + v1[9];
  v16 = *(v15 + 8);

  v17 = *(v15 + 16);

  v18 = (v5 + v1[10]);
  v19 = *v18;

  v20 = v18[1];

  v21 = (v5 + v1[11]);
  v22 = *v21;

  v23 = *(v21 + 1);

  v24 = *(sub_10000341C(&qword_1002632E0, &qword_1001D11A0) + 32);
  v25 = type metadata accessor for NavigationPath();
  (*(*(v25 - 8) + 8))(&v21[v24], v25);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_1001231A8()
{
  result = qword_100262D50;
  if (!qword_100262D50)
  {
    sub_100003E34(&qword_100262D10, &qword_1001D9E10);
    sub_100007120(&qword_100262D58, &qword_100262D60, &qword_1001D9E60);
    sub_1001208D0(&qword_10025A930, &type metadata accessor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262D50);
  }

  return result;
}

uint64_t sub_100123290()
{
  v1 = *(type metadata accessor for CompositionIndexView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  sub_10010AB74();
  sub_100094238();
}

uint64_t sub_100123308(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003E34(a2, a3);
    a4();
    sub_1001208D0(&qword_10025B710, type metadata accessor for PreferredContentSizeModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001233BC()
{
  result = qword_100262D78;
  if (!qword_100262D78)
  {
    sub_100003E34(&qword_100262D20, &qword_1001D9E20);
    sub_100007120(&qword_100262D80, &qword_100262D18, &qword_1001D9E18);
    sub_10006B3B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262D78);
  }

  return result;
}

uint64_t sub_1001234A0(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
  }

  return result;
}

unint64_t sub_1001234B4()
{
  result = qword_100262DB8;
  if (!qword_100262DB8)
  {
    sub_100003E34(&qword_100262DB0, &qword_1001D9E90);
    sub_100123538();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262DB8);
  }

  return result;
}

unint64_t sub_100123538()
{
  result = qword_100262DC0;
  if (!qword_100262DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262DC0);
  }

  return result;
}

unint64_t sub_10012358C()
{
  result = qword_100262DC8;
  if (!qword_100262DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262DC8);
  }

  return result;
}

uint64_t sub_1001235E0(uint64_t a1, char a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_1001234A0(a1, a2);
  }
}

unint64_t sub_1001235EC()
{
  result = qword_100262DD8;
  if (!qword_100262DD8)
  {
    sub_100003E34(&qword_100262DD0, &qword_1001D9E98);
    sub_1001234B4();
    sub_10012358C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262DD8);
  }

  return result;
}

uint64_t sub_100123678(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
  }

  return result;
}

uint64_t sub_10012368C(uint64_t a1, char a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_100123678(a1, a2);
  }
}

unint64_t sub_1001236E8()
{
  result = qword_100262E38;
  if (!qword_100262E38)
  {
    sub_100003E34(&qword_100262E30, &qword_1001D9F70);
    sub_1001237A0();
    sub_100007120(&unk_10025DB20, &qword_100263750, &qword_1001D1700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262E38);
  }

  return result;
}

unint64_t sub_1001237A0()
{
  result = qword_100262E40;
  if (!qword_100262E40)
  {
    sub_100003E34(&qword_100262E48, &qword_1001D9F78);
    sub_10004882C();
    sub_100007120(&unk_10025DCA0, &unk_1002636B0, &unk_1001D16F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262E40);
  }

  return result;
}

unint64_t sub_100123858()
{
  result = qword_100262E60;
  if (!qword_100262E60)
  {
    sub_100003E34(&qword_100262E20, &qword_1001D9F00);
    sub_100003E34(&qword_10025C768, &unk_1001D9F80);
    sub_10004882C();
    swift_getOpaqueTypeConformance2();
    sub_100007120(&unk_10025DB20, &qword_100263750, &qword_1001D1700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262E60);
  }

  return result;
}

uint64_t sub_100123958(uint64_t a1)
{
  v4 = *(type metadata accessor for CompositionIndexView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002B2A0;

  return sub_10010BB78(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_100123A88()
{
  v1 = type metadata accessor for CompositionIndexView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3);

  v8 = *(v0 + v3 + 16);

  v9 = *(v0 + v3 + 32);

  v10 = *(v0 + v3 + 48);
  v11 = *(v0 + v3 + 56);
  v12 = *(v0 + v3 + 64);
  sub_100122EC8();
  v13 = v1[8];
  sub_10000341C(&qword_1002628E0, &qword_1001D95E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for ScenePhase();
    (*(*(v14 - 8) + 8))(v6 + v13, v14);
  }

  else
  {
    v15 = *(v6 + v13);
  }

  v16 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = v6 + v1[9];
  v18 = *(v17 + 8);

  v19 = *(v17 + 16);

  v20 = (v6 + v1[10]);
  v21 = *v20;

  v22 = v20[1];

  v23 = (v6 + v1[11]);
  v24 = *v23;

  v25 = *(v23 + 1);

  v26 = *(sub_10000341C(&qword_1002632E0, &qword_1001D11A0) + 32);
  v27 = type metadata accessor for NavigationPath();
  (*(*(v27 - 8) + 8))(&v23[v26], v27);
  v28 = *(v0 + v16 + 8);

  return _swift_deallocObject(v0, v16 + 16, v2 | 7);
}

uint64_t sub_100123C84(uint64_t a1)
{
  v4 = *(type metadata accessor for CompositionIndexView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002B2A0;

  return sub_10010B808(a1, v6, v7, v1 + v5, v9, v10);
}

unint64_t sub_100123DD0()
{
  result = qword_100262E88;
  if (!qword_100262E88)
  {
    sub_100003E34(&qword_100262E78, &qword_1001DA048);
    sub_100007120(&qword_100262E90, &qword_100262E70, &qword_1001DA040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262E88);
  }

  return result;
}

unint64_t sub_100123E98()
{
  result = qword_100262F98;
  if (!qword_100262F98)
  {
    sub_100003E34(&qword_100262F90, &qword_1001DA118);
    sub_10011D39C();
    sub_100007120(&unk_10025AAC0, &qword_1002628D0, &qword_1001D18D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262F98);
  }

  return result;
}

uint64_t sub_100123F5C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[9];

  v6 = v0[10];

  v7 = v0[11];

  v8 = v0[14];

  v9 = v0[17];

  v10 = v0[19];

  v11 = v0[21];

  v12 = v0[22];

  v13 = v0[23];

  return _swift_deallocObject(v0, 192, 7);
}

unint64_t sub_100123FFC()
{
  result = qword_100262FA8;
  if (!qword_100262FA8)
  {
    sub_100003E34(&qword_10025E2D0, &qword_1001D56C0);
    sub_1001208D0(&qword_100262FB0, &type metadata accessor for PhotosPickerItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262FA8);
  }

  return result;
}

uint64_t sub_1001240B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[26];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002B2A0;

  return sub_10011B598(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_100124174(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_10002B2A0;

  return sub_1001206F0(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_100124250(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10002B2A0;

  return sub_10017A2A0(a1, a2, v6);
}

uint64_t sub_100124308()
{
  v1 = type metadata accessor for PhotosPickerItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_1001243EC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PhotosPickerItem() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v7);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10002B2A0;

  return sub_10011E928(a1, v10, v11, v1 + v6, v9, v12, v13);
}

uint64_t sub_100124530()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100124568(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100028688;

  return sub_10011F29C(a1, v5);
}

unint64_t sub_100124620()
{
  result = qword_100263030;
  if (!qword_100263030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263030);
  }

  return result;
}

uint64_t sub_100124674(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_100124680(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

uint64_t sub_10012468C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[9];

  v6 = v0[11];

  v7 = v0[12];

  v8 = v0[13];

  v9 = v0[16];

  v10 = v0[19];

  v11 = v0[21];

  v12 = v0[23];

  v13 = v0[24];

  v14 = v0[25];

  v15 = v0[26];

  return _swift_deallocObject(v0, 216, 7);
}

uint64_t sub_100124734(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[26];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002B2A0;

  return sub_10011AFA0(a1, v4, v5, (v1 + 4), v6);
}

unint64_t sub_1001247F4()
{
  result = qword_100263040;
  if (!qword_100263040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263040);
  }

  return result;
}

unint64_t sub_10012486C()
{
  result = qword_100263048;
  if (!qword_100263048)
  {
    sub_100003E34(&qword_100262B60, &qword_1001D9A98);
    sub_1001248F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263048);
  }

  return result;
}

unint64_t sub_1001248F8()
{
  result = qword_100263050;
  if (!qword_100263050)
  {
    sub_100003E34(&qword_100262B58, &qword_1001D9A90);
    sub_100003E34(&qword_100262B48, &qword_1001D9A80);
    sub_100003E34(&qword_100262B40, &qword_1001D9A78);
    sub_100003E34(&qword_100262B38, &qword_1001D9A70);
    sub_100003E34(&qword_100262B30, &qword_1001D9A68);
    sub_100123308(&qword_100262BB8, &qword_100262B30, &qword_1001D9A68, sub_1001221C4);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263050);
  }

  return result;
}

unint64_t sub_100124ABC()
{
  result = qword_100263058;
  if (!qword_100263058)
  {
    sub_100003E34(&unk_100263060, qword_1001DA2E8);
    sub_100003E34(&qword_100262D38, &qword_1001D9E38);
    sub_100003E34(&qword_100262D30, &qword_1001D9E30);
    sub_100003E34(&qword_100262D28, &qword_1001D9E28);
    sub_100123308(&qword_100262D70, &qword_100262D28, &qword_1001D9E28, sub_1001233BC);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000489E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263058);
  }

  return result;
}

uint64_t sub_100124C38()
{
  sub_100003E34(&qword_100262E78, &qword_1001DA048);
  sub_100123DD0();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100124D00()
{
  result = qword_100263098;
  if (!qword_100263098)
  {
    sub_100003E34(&qword_100263088, &qword_1001DA3A8);
    sub_100124DB8();
    sub_100007120(&qword_1002600D8, &unk_100262F30, &unk_1001D5700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263098);
  }

  return result;
}

unint64_t sub_100124DB8()
{
  result = qword_1002630A0;
  if (!qword_1002630A0)
  {
    sub_100003E34(&qword_1002630A8, &qword_1001DA3B8);
    sub_100124E44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002630A0);
  }

  return result;
}

unint64_t sub_100124E44()
{
  result = qword_1002630B0;
  if (!qword_1002630B0)
  {
    sub_100003E34(&qword_1002630B8, &qword_1001DA3C0);
    sub_100124ED0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002630B0);
  }

  return result;
}

unint64_t sub_100124ED0()
{
  result = qword_1002630C0;
  if (!qword_1002630C0)
  {
    sub_100003E34(&qword_1002630C8, &qword_1001DA3C8);
    sub_100007120(&qword_1002630D0, &qword_1002630D8, &unk_1001DA3D0);
    sub_100007120(&unk_10025DCA0, &unk_1002636B0, &unk_1001D16F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002630C0);
  }

  return result;
}

unint64_t sub_100124FB4()
{
  result = qword_1002630F0;
  if (!qword_1002630F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002630F0);
  }

  return result;
}

uint64_t sub_100125014@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1001173BC(*(v1 + 32), *(v1 + 40), a1);
}

uint64_t sub_100125024()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 41, 7);
}

unint64_t sub_100125080()
{
  result = qword_100263110;
  if (!qword_100263110)
  {
    sub_100003E34(&unk_100263100, &unk_1001DA408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263110);
  }

  return result;
}

uint64_t sub_1001250FC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100125134@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100117C38(*a1, 0, 0, *(v2 + 16), *(v2 + 24));
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

unint64_t sub_100125190()
{
  result = qword_100263128;
  if (!qword_100263128)
  {
    sub_100003E34(&qword_100263078, &qword_1001DA398);
    sub_100007120(&qword_100263130, &qword_100263070, &qword_1001DA390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263128);
  }

  return result;
}

uint64_t sub_100125248()
{
  sub_100003E34(&qword_100263080, &qword_1001DA3A0);
  sub_100007120(&qword_1002630E8, &qword_100263080, &qword_1001DA3A0);
  sub_100124FB4();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100125314()
{
  result = qword_100263150;
  if (!qword_100263150)
  {
    sub_100003E34(&qword_100263138, &qword_1001DA488);
    sub_1001208D0(&qword_10025DC18, &type metadata accessor for ButtonStyleConfiguration.Label);
    sub_100007120(&unk_100263160, &qword_100263148, &qword_1001DA498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263150);
  }

  return result;
}

unint64_t sub_100125454(char a1)
{
  result = 7169887;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
    case 5:
    case 8:
      result = 0xD000000000000023;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x696D732E65636166;
      break;
    case 10:
      result = 0x7361636665697262;
      break;
    case 11:
      result = 0xD00000000000001BLL;
      break;
    case 12:
    case 13:
    case 14:
    case 15:
      result = 0;
      break;
    case 16:
      result = 0x6C69636E6570;
      break;
    case 17:
      result = 0xD000000000000038;
      break;
    case 18:
      result = 0x642E6E6F2E636F64;
      break;
    case 19:
      result = 0x7065722E74786574;
      break;
    case 20:
      result = 0xD000000000000013;
      break;
    case 21:
      result = 0x6B72616D78;
      break;
    case 22:
      result = 0x53636F445F63614DLL;
      break;
    case 23:
      result = 0x736E692E74786574;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001256BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100125700()
{
  v0 = type metadata accessor for Gradient.ColorSpace();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ColorScheme();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, enum case for ColorScheme.light(_:), v5);
  v10 = static ColorScheme.== infix(_:_:)();
  (*(v6 + 8))(v9, v5);
  if ((v10 & 1) == 0)
  {
    static Color.accentColor.getter();
    v11 = static Color.== infix(_:_:)();

    if ((v11 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  sub_1000081B0(0, &qword_100262510, UIColor_ptr);

  v12 = UIColor.init(_:)();
  [v12 alphaComponent];
  if (v13 >= 0.5)
  {

LABEL_6:
    static Color.black.getter();
    static Gradient.ColorSpace.perceptual.getter();
    Color.mix(with:by:in:)();

    (*(v1 + 8))(v4, v0);
    v15 = Color.opacity(_:)();

    return v15;
  }

  v14 = [v12 colorWithAlphaComponent:v13 * 1.4];
  v15 = Color.init(uiColor:)();

  return v15;
}

Swift::Int sub_1001259AC()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100125A18()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

unint64_t sub_100125A84()
{
  result = qword_100263170;
  if (!qword_100263170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263170);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WTIcon(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE9)
  {
    goto LABEL_17;
  }

  if (a2 + 23 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 23) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 23;
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

      return (*a1 | (v4 << 8)) - 23;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 23;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v8 = v6 - 24;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WTIcon(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE9)
  {
    v4 = 0;
  }

  if (a2 > 0xE8)
  {
    v5 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
    *result = a2 + 23;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100125C5C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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
    v12 = &a1[*(a3 + 24)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_100125D2C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100125DF8()
{
  sub_10013235C(319, qword_10025D910, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_10012661C(319, &qword_1002631F0, &type metadata for Bool, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100125F04(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_10000341C(&qword_10025D8A0, &unk_1001D2B90);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_100125FE0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_10000341C(&qword_10025D8A0, &unk_1001D2B90);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1001260B0()
{
  sub_10012661C(319, &qword_100263290, &type metadata for Color, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_10013235C(319, &unk_100263298, type metadata accessor for CGSize, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_10013235C(319, qword_10025D910, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_10012661C(319, &qword_1002631F0, &type metadata for Bool, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100126238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_10012631C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

void sub_100126408()
{
  sub_10013235C(319, &unk_10025DE30, &type metadata accessor for NavigationPath, &type metadata accessor for Binding);
  if (v0 <= 0x3F)
  {
    sub_10012661C(319, qword_100262780, &type metadata for Bool, &type metadata accessor for Binding);
    if (v1 <= 0x3F)
    {
      sub_10013235C(319, &unk_100263350, type metadata accessor for CGSize, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_10012661C(319, &qword_10025DE40, &type metadata for Bool, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          sub_1001322F8(319, qword_100263360, &qword_100262BB0, &unk_1001D0280, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            sub_1001322F8(319, &qword_10025B470, &unk_10025D690, &qword_1001D2750, &type metadata accessor for Environment);
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

void sub_10012661C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 sub_10012666C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100126680(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1001266DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_10012676C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_10025D8A0, &unk_1001D2B90);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1001267F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_10025D8A0, &unk_1001D2B90);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_100126894()
{
  sub_10013235C(319, qword_10025D910, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t getEnumTagSinglePayload for InputDashboardButtonStyle(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for InputDashboardButtonStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100126A7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a1;
  v64 = a2;
  v3 = type metadata accessor for DynamicTypeSize();
  v63 = *(v3 - 8);
  v4 = *(v63 + 64);
  __chkstk_darwin(v3);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000341C(&qword_100263BD0, &qword_1001DB6B8);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = &v59 - v10;
  v12 = sub_10000341C(&qword_100263BD8, &qword_1001DB6C0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v60 = &v59 - v15;
  v16 = sub_10000341C(&qword_100263BE0, &qword_1001DB6C8);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v61 = &v59 - v19;
  v20 = static Alignment.center.getter();
  v22 = v21;
  v23 = *(v8 + 56);
  *&v11[v23] = swift_getKeyPath();
  sub_10000341C(&unk_10025B1F0, &qword_1001CE0D0);
  swift_storeEnumTagMultiPayload();
  *v11 = 1;
  *(v11 + 1) = v20;
  *(v11 + 2) = v22;
  *(v11 + 3) = 0;
  *(v11 + 4) = 0;
  v11[40] = 1;
  v24 = &v11[*(v8 + 52)];
  v59 = v2;
  sub_100126E5C(v2, v62, v24);
  LOBYTE(v8) = static Edge.Set.bottom.getter();
  LODWORD(v22) = *(type metadata accessor for IconTitleLabelStyle(0) + 20);
  sub_10011F024(v6);
  DynamicTypeSize.isAccessibilitySize.getter();
  v25 = *(v63 + 8);
  v25(v6, v3);
  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = v11;
  v35 = v60;
  sub_10002A894(v34, v60, &qword_100263BD0, &qword_1001DB6B8);
  v36 = v35 + *(v13 + 44);
  *v36 = v8;
  *(v36 + 8) = v27;
  *(v36 + 16) = v29;
  *(v36 + 24) = v31;
  *(v36 + 32) = v33;
  *(v36 + 40) = 0;
  LOBYTE(v8) = static Edge.Set.top.getter();
  sub_10011F024(v6);
  DynamicTypeSize.isAccessibilitySize.getter();
  v25(v6, v3);
  EdgeInsets.init(_all:)();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = v61;
  sub_10002A894(v35, v61, &qword_100263BD8, &qword_1001DB6C0);
  v46 = v45 + *(v17 + 44);
  *v46 = v8;
  *(v46 + 8) = v38;
  *(v46 + 16) = v40;
  *(v46 + 24) = v42;
  *(v46 + 32) = v44;
  *(v46 + 40) = 0;
  LOBYTE(v8) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = v45;
  v56 = v64;
  sub_10002A894(v55, v64, &qword_100263BE0, &qword_1001DB6C8);
  result = sub_10000341C(&qword_100263BE8, &qword_1001DB6D0);
  v58 = v56 + *(result + 36);
  *v58 = v8;
  *(v58 + 8) = v48;
  *(v58 + 16) = v50;
  *(v58 + 24) = v52;
  *(v58 + 32) = v54;
  *(v58 + 40) = 0;
  return result;
}

uint64_t sub_100126E5C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v67 = a3;
  v62 = sub_10000341C(&qword_100263B40, &qword_1001DB630);
  v5 = *(*(v62 - 8) + 64);
  v6 = __chkstk_darwin(v62);
  v66 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v65 = &v54 - v8;
  v58 = type metadata accessor for Image.Scale();
  v56 = *(v58 - 8);
  v9 = *(v56 + 64);
  __chkstk_darwin(v58);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_10000341C(&qword_100263B18, &qword_1001DB608);
  v12 = *(*(v61 - 8) + 64);
  v13 = __chkstk_darwin(v61);
  v64 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v54 - v15;
  v17 = type metadata accessor for DynamicTypeSize();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(type metadata accessor for IconTitleLabelStyle(0) + 20);
  v23 = a1;
  sub_10011F024(v21);
  v24 = DynamicTypeSize.isAccessibilitySize.getter();
  v25 = *(v18 + 8);
  v57 = v17;
  v55 = v25;
  v25(v21, v17);
  v63 = a2;
  LabelStyleConfiguration.icon.getter();
  if (qword_10025A7C0 != -1)
  {
    swift_once();
  }

  v59 = (v24 & 1) == 0;
  v60 = v24;
  v26 = qword_100277170;
  *&v16[*(sub_10000341C(&qword_100263B20, &qword_1001DB610) + 36)] = v26;

  sub_10011F024(v21);
  v27 = v56;
  v28 = v58;
  (*(v56 + 104))(v11, enum case for Image.Scale.large(_:), v58);
  v29 = &v16[*(sub_10000341C(&qword_100263B28, &qword_1001DB618) + 36)];
  v30 = sub_10000341C(&qword_100263550, &qword_1001D1F30);
  sub_10014CB88(v11, v29 + *(v30 + 28));
  (*(v27 + 8))(v11, v28);
  v55(v21, v57);
  *v29 = swift_getKeyPath();
  v31 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = &v16[*(sub_10000341C(&unk_100263B30, &unk_1001DB620) + 36)];
  *v40 = v31;
  *(v40 + 1) = v33;
  *(v40 + 2) = v35;
  *(v40 + 3) = v37;
  *(v40 + 4) = v39;
  v40[40] = 0;
  v41 = *(v23 + 2);
  v42 = *(v23 + 24);
  v71 = *v23;
  v72 = v41;
  v73 = v42;
  sub_10000341C(&unk_10025D798, &unk_1001DCF40);
  Binding.projectedValue.getter();
  v43 = v69;
  v44 = v70;
  v45 = &v16[*(v61 + 36)];
  *v45 = v68;
  *(v45 + 2) = v43;
  v45[24] = v44;
  v46 = v65;
  LabelStyleConfiguration.title.getter();
  *(v46 + *(v62 + 36)) = v26;

  LODWORD(v63) = sub_100129E58(type metadata accessor for IconTitleLabelStyle);
  v47 = v64;
  sub_1000081F8(v16, v64, &qword_100263B18, &qword_1001DB608);
  v48 = v66;
  sub_1000081F8(v46, v66, &qword_100263B40, &qword_1001DB630);
  v49 = v67;
  *v67 = 0;
  v50 = v60;
  *(v49 + 8) = v59;
  *(v49 + 9) = v50 & 1;
  v51 = sub_10000341C(&qword_100263BF0, &qword_1001DB6D8);
  sub_1000081F8(v47, v49 + v51[12], &qword_100263B18, &qword_1001DB608);
  sub_1000081F8(v48, v49 + v51[16], &qword_100263B40, &qword_1001DB630);
  v52 = v49 + v51[20];
  *v52 = 0;
  v52[8] = 0;
  v52[9] = (v63 & 1) == 0;
  sub_10000F500(v46, &qword_100263B40, &qword_1001DB630);
  sub_10000F500(v16, &qword_100263B18, &qword_1001DB608);
  sub_10000F500(v48, &qword_100263B40, &qword_1001DB630);
  return sub_10000F500(v47, &qword_100263B18, &qword_1001DB608);
}

uint64_t sub_100127440@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v1 = type metadata accessor for ColorScheme();
  v37 = *(v1 - 8);
  v38 = v1;
  v2 = *(v37 + 64);
  __chkstk_darwin(v1);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_10000341C(&qword_1002636D0, &qword_1001DB0A8);
  v5 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v7 = &v36 - v6;
  v8 = sub_10000341C(&qword_1002636D8, &qword_1001DB0B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v36 - v10;
  v12 = sub_10000341C(&qword_1002636E0, &qword_1001DB0B8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v36 - v14;
  ButtonStyleConfiguration.label.getter();
  v16 = static Font.footnote.getter();
  KeyPath = swift_getKeyPath();
  v18 = &v11[*(v8 + 36)];
  *v18 = KeyPath;
  v18[1] = v16;
  static Font.Weight.bold.getter();
  sub_100131CC0();
  View.fontWeight(_:)();
  sub_10000F500(v11, &qword_1002636D8, &qword_1001DB0B0);
  if (qword_10025A7D0 != -1)
  {
    swift_once();
  }

  v19 = qword_100277180;
  *&v15[*(sub_10000341C(&qword_1002636F0, &qword_1001DB0C0) + 36)] = v19;

  LOBYTE(v19) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v20 = &v15[*(v12 + 36)];
  *v20 = v19;
  *(v20 + 1) = v21;
  *(v20 + 2) = v22;
  *(v20 + 3) = v23;
  *(v20 + 4) = v24;
  v20[40] = 0;
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    sub_10011F04C(v4);
    if (qword_10025A7E8 != -1)
    {
      swift_once();
    }

    v25 = sub_100125700();
    (*(v37 + 8))(v4, v38);
  }

  else
  {
    if (qword_10025A7E8 != -1)
    {
      swift_once();
    }

    v25 = qword_100277198;
  }

  v26 = &v7[*(v39 + 36)];
  *v26 = 0;
  v27 = *(type metadata accessor for CommonUIBlendModifier(0) + 20);
  *&v26[v27] = swift_getKeyPath();
  sub_10000341C(&qword_100262940, &unk_1001D0560);
  swift_storeEnumTagMultiPayload();
  *v7 = v25;
  *(v7 + 4) = 256;
  v28 = static Alignment.center.getter();
  v30 = v29;
  v31 = sub_10000341C(&qword_1002636F8, &qword_1001DB0C8);
  v32 = v40;
  v33 = v40 + *(v31 + 36);
  sub_10002A894(v7, v33, &qword_1002636D0, &qword_1001DB0A8);
  v34 = (v33 + *(sub_10000341C(&qword_100263700, &qword_1001DB0D0) + 36));
  *v34 = v28;
  v34[1] = v30;
  return sub_10002A894(v15, v32, &qword_1002636E0, &qword_1001DB0B8);
}

uint64_t sub_10012788C@<X0>(__int16 a1@<W1>, uint64_t a2@<X8>)
{
  v4 = sub_10000341C(&qword_100260C08, &qword_1001D5F90);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v25 - v7;
  v9 = sub_10000341C(&qword_100263790, &qword_1001DB128);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v25 - v11;
  ButtonStyleConfiguration.label.getter();
  v13 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v14 = &v8[*(v5 + 44)];
  *v14 = v13;
  *(v14 + 1) = v15;
  *(v14 + 2) = v16;
  *(v14 + 3) = v17;
  *(v14 + 4) = v18;
  v14[40] = 0;
  if ((a1 & 0x100) != 0)
  {
    v19 = static Color.primary.getter();
  }

  else
  {
    v19 = static Color.accentColor.getter();
  }

  v20 = v19;
  sub_10002A894(v8, v12, &qword_100260C08, &qword_1001D5F90);
  *&v12[*(v9 + 36)] = v20;
  KeyPath = swift_getKeyPath();
  v22 = swift_allocObject();
  *(v22 + 16) = a1 & 1;
  sub_10002A894(v12, a2, &qword_100263790, &qword_1001DB128);
  result = sub_10000341C(&qword_100263798, &qword_1001DB160);
  v24 = (a2 + *(result + 36));
  *v24 = KeyPath;
  v24[1] = sub_10002AAC0;
  v24[2] = v22;
  return result;
}

uint64_t sub_100127A5C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  if (v1[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_10012788C(v3 | *v1, a1);
}

uint64_t sub_100127AA0@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v1 = type metadata accessor for ColorScheme();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000341C(&qword_100263790, &qword_1001DB128);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v46 - v8;
  v47 = sub_10000341C(&qword_100263D58, &qword_1001DB910);
  v10 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v12 = &v46 - v11;
  v46 = sub_10000341C(&qword_100263D60, &qword_1001DB918);
  v13 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v15 = &v46 - v14;
  ButtonStyleConfiguration.label.getter();
  v16 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = &v9[*(sub_10000341C(&qword_100260C08, &qword_1001D5F90) + 36)];
  *v25 = v16;
  *(v25 + 1) = v18;
  *(v25 + 2) = v20;
  *(v25 + 3) = v22;
  *(v25 + 4) = v24;
  v25[40] = 0;
  if (qword_10025A7B8 != -1)
  {
    swift_once();
  }

  *&v9[*(v6 + 36)] = qword_100277168;

  v26 = ButtonStyleConfiguration.isPressed.getter();
  v27 = static Color.accentColor.getter();
  v28 = v48;
  if (v26)
  {
    sub_10011F04C(v5);
    v29 = sub_100125700();

    (*(v2 + 8))(v5, v1);
    v27 = v29;
  }

  v30 = static Edge.Set.all.getter();
  sub_10002A894(v9, v12, &qword_100263790, &qword_1001DB128);
  v31 = &v12[*(v47 + 36)];
  *v31 = v27;
  v31[8] = v30;
  v32 = &v15[*(v46 + 36)];
  v33 = *(type metadata accessor for RoundedRectangle() + 20);
  v34 = enum case for RoundedCornerStyle.continuous(_:);
  v35 = type metadata accessor for RoundedCornerStyle();
  (*(*(v35 - 8) + 104))(&v32[v33], v34, v35);
  __asm { FMOV            V0.2D, #6.0 }

  *v32 = _Q0;
  *&v32[*(sub_10000341C(&qword_100263D68, &qword_1001DB920) + 36)] = 256;
  sub_10002A894(v12, v15, &qword_100263D58, &qword_1001DB910);
  LOBYTE(v33) = *(v28 + *(type metadata accessor for InputDashboardQuestionnaireButtonStyle(0) + 20));
  KeyPath = swift_getKeyPath();
  v42 = swift_allocObject();
  *(v42 + 16) = v33;
  v43 = v49;
  sub_10002A894(v15, v49, &qword_100263D60, &qword_1001DB918);
  result = sub_10000341C(&qword_100263D70, &qword_1001DB928);
  v45 = (v43 + *(result + 36));
  *v45 = KeyPath;
  v45[1] = sub_100035DEC;
  v45[2] = v42;
  return result;
}

uint64_t sub_100127ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[1] = a2;
  v3 = type metadata accessor for AccessibilityTraits();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000341C(&qword_100263708, &qword_1001DB0D8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = v23 - v10;
  v12 = sub_10000341C(&qword_100263710, &qword_1001DB0E0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = v23 - v14;
  KeyPath = swift_getKeyPath();
  v17 = sub_10000341C(&qword_100263718, &qword_1001DB0E8);
  (*(*(v17 - 8) + 16))(v11, a1, v17);
  v18 = &v11[*(sub_10000341C(&qword_100263720, &unk_1001DB0F0) + 36)];
  *v18 = KeyPath;
  v18[8] = 1;
  v19 = static Font.title2.getter();
  v20 = swift_getKeyPath();
  v21 = &v11[*(v8 + 36)];
  *v21 = v20;
  v21[1] = v19;
  static Font.Weight.semibold.getter();
  sub_100131DA8();
  View.fontWeight(_:)();
  sub_10000F500(v11, &qword_100263708, &qword_1001DB0D8);
  if (qword_10025A7C0 != -1)
  {
    swift_once();
  }

  *&v15[*(v12 + 36)] = qword_100277170;

  static AccessibilityTraits.isHeader.getter();
  sub_100131F44();
  View.accessibility(addTraits:)();
  (*(v4 + 8))(v7, v3);
  return sub_10000F500(v15, &qword_100263710, &qword_1001DB0E0);
}

uint64_t sub_1001281C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a1;
  v47 = a2;
  v45 = type metadata accessor for ParagraphTypesetting();
  v2 = *(v45 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v45);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000341C(&qword_10025C5D0, &qword_1001D15A0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v43 - v8;
  v10 = sub_10000341C(&qword_100263660, &qword_1001DB018);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v43 - v12;
  v46 = sub_10000341C(&qword_100263668, &qword_1001DB020);
  v14 = *(v46 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v46);
  v17 = &v43 - v16;
  v18 = type metadata accessor for Font.Design();
  (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
  v19 = static Font.system(size:weight:design:)();
  sub_10000F500(v9, &qword_10025C5D0, &qword_1001D15A0);
  KeyPath = swift_getKeyPath();
  v21 = sub_10000341C(&qword_100263670, &qword_1001DB058);
  (*(*(v21 - 8) + 16))(v13, v44, v21);
  v22 = &v13[*(sub_10000341C(&qword_100263678, &qword_1001DB060) + 36)];
  *v22 = KeyPath;
  v22[1] = v19;
  if (qword_10025A7D0 != -1)
  {
    swift_once();
  }

  v23 = qword_100277180;
  v24 = swift_getKeyPath();
  v25 = &v13[*(sub_10000341C(&qword_100263680, &qword_1001DB068) + 36)];
  *v25 = v24;
  v25[1] = v23;
  v26 = swift_getKeyPath();
  v27 = &v13[*(v10 + 36)];
  *v27 = v26;
  v27[8] = 1;

  static ParagraphTypesetting.balanced.getter();
  sub_100131A6C();
  View.paragraphTypesetting(_:isEnabled:)();
  (*(v2 + 8))(v5, v45);
  sub_10000F500(v13, &qword_100263660, &qword_1001DB018);
  sub_10000341C(&unk_100263510, &qword_1001DAEA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001CF9E0;
  v29 = static Edge.Set.top.getter();
  *(inited + 32) = v29;
  v30 = static Edge.Set.bottom.getter();
  *(inited + 33) = v30;
  v31 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v29)
  {
    v31 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v30)
  {
    v31 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = v47;
  (*(v14 + 32))(v47, v17, v46);
  result = sub_10000341C(&qword_1002636C8, &qword_1001DB0A0);
  v42 = v40 + *(result + 36);
  *v42 = v31;
  *(v42 + 8) = v33;
  *(v42 + 16) = v35;
  *(v42 + 24) = v37;
  *(v42 + 32) = v39;
  *(v42 + 40) = 0;
  return result;
}

double sub_100128688@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Edge.Set.all.getter();
  v5 = sub_10000341C(&qword_1002634C8, &qword_1001DAE58);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  v6 = a2 + *(sub_10000341C(&qword_1002634D0, &qword_1001DAE60) + 36);
  *v6 = v4;
  __asm { FMOV            V0.2D, #16.0 }

  *(v6 + 8) = _Q0;
  result = 0.0;
  *(v6 + 24) = xmmword_1001DA4C0;
  *(v6 + 40) = 0;
  return result;
}

uint64_t sub_10012873C()
{
  v3[3] = &type metadata for SwiftUI;
  v3[4] = sub_100131370();
  v0 = isFeatureEnabled(_:)();
  result = sub_10000F4B4(v3);
  v2 = 12.0;
  if (v0)
  {
    v2 = 25.0;
  }

  qword_100277160 = *&v2;
  return result;
}

uint64_t sub_1001287A0()
{
  result = Color.init(_:bundle:)();
  qword_100277168 = result;
  return result;
}

uint64_t sub_100128814(uint64_t a1, uint64_t *a2)
{
  if (qword_10025A7C0 != -1)
  {
    swift_once();
  }

  v3 = Color.opacity(_:)();

  *a2 = v3;
  return result;
}

uint64_t sub_1001288C8()
{
  if (qword_10025A7D8 != -1)
  {
    swift_once();
  }

  qword_100277198 = qword_100277188;
}

uint64_t sub_100128940(uint64_t a1, SEL *a2, uint64_t *a3)
{
  v4 = [objc_opt_self() *a2];
  result = Color.init(_:)();
  *a3 = result;
  return result;
}

uint64_t sub_100128988()
{
  result = static Color.white.getter();
  qword_1002771A8 = result;
  return result;
}

void sub_1001289A8()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  byte_1002771B0 = v1 == 6;
}

uint64_t sub_100128A0C()
{
  v0 = type metadata accessor for UIPromptBackgroundView.FillStyle();
  sub_10002B2EC(v0, qword_1002771B8);
  v1 = sub_10000F34C(v0, qword_1002771B8);
  sub_1000081B0(0, &qword_100262510, UIColor_ptr);
  if (qword_10025A7E8 != -1)
  {
    swift_once();
  }

  *v1 = UIColor.init(_:)();
  v2 = enum case for UIPromptBackgroundView.FillStyle.solid(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_100128B04@<X0>(char *a1@<X8>)
{
  v31 = type metadata accessor for LabelStyleConfiguration.Icon();
  v28 = *(v31 - 8);
  v2 = v28;
  v3 = *(v28 + 64);
  v4 = __chkstk_darwin(v31);
  v30 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v27 - v6;
  v27 = &v27 - v6;
  v8 = type metadata accessor for LabelStyleConfiguration.Title();
  v29 = *(v8 - 8);
  v9 = v29;
  v10 = *(v29 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v27 - v14;
  LabelStyleConfiguration.title.getter();
  LabelStyleConfiguration.icon.getter();
  v16 = *(v9 + 16);
  v16(v13, v15, v8);
  v32 = 1;
  v17 = *(v2 + 16);
  v18 = v30;
  v19 = v7;
  v20 = v31;
  v17(v30, v19, v31);
  v16(a1, v13, v8);
  v21 = sub_10000341C(&qword_100263F78, &qword_1001DBC48);
  v22 = &a1[*(v21 + 48)];
  v23 = v32;
  *v22 = 0;
  v22[8] = v23;
  v17(&a1[*(v21 + 64)], v18, v20);
  v24 = *(v28 + 8);
  v24(v27, v20);
  v25 = *(v29 + 8);
  v25(v15, v8);
  v24(v18, v20);
  return (v25)(v13, v8);
}

__n128 sub_100128DA8@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_10000341C(&qword_100263F60, &qword_1001DBC30);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v17 - v5;
  v7 = *v1;
  v8 = *(v1 + 1);
  v9 = v1[16];
  *v6 = static VerticalAlignment.top.getter();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v10 = sub_10000341C(&qword_100263F68, &qword_1001DBC38);
  sub_100128B04(&v6[*(v10 + 44)]);
  v11 = 0uLL;
  v12 = 0uLL;
  if ((v9 & 1) == 0)
  {
    EdgeInsets.init(_all:)();
    *(&v12 + 1) = v13;
    v11.n128_u64[1] = v14;
  }

  v17 = v12;
  v18 = v11;
  sub_10002A894(v6, a1, &qword_100263F60, &qword_1001DBC30);
  v15 = a1 + *(sub_10000341C(&qword_100263F70, &qword_1001DBC40) + 36);
  *v15 = v7;
  result = v18;
  *(v15 + 24) = v17;
  *(v15 + 8) = result;
  *(v15 + 40) = v9;
  return result;
}

uint64_t sub_100128EE4@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = sub_10000341C(&qword_100263E58, &qword_1001DBAD0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v33 - v3;
  v5 = sub_10000341C(&qword_100263E60, &qword_1001DBAD8);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v9 = &v33 - v8;
  v10 = sub_10000341C(&qword_100263E68, &qword_1001DBAE0);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v14 = &v33 - v13;
  *v4 = static VerticalAlignment.center.getter();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v15 = &v4[*(sub_10000341C(&qword_100263E70, &qword_1001DBAE8) + 44)];
  LabelStyleConfiguration.title.getter();
  v16 = static Font.subheadline.getter();
  KeyPath = swift_getKeyPath();
  v18 = &v15[*(sub_10000341C(&qword_100263E78, &qword_1001DBAF0) + 36)];
  *v18 = KeyPath;
  v18[1] = v16;
  LOBYTE(v16) = static Edge.Set.trailing.getter();
  v19 = &v15[*(sub_10000341C(&qword_100263E80, &qword_1001DBAF8) + 36)];
  *v19 = v16;
  *(v19 + 8) = 0u;
  *(v19 + 24) = 0u;
  v19[40] = 1;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10002A894(v4, v9, &qword_100263E58, &qword_1001DBAD0);
  v20 = &v9[*(v6 + 44)];
  v21 = v40;
  *(v20 + 4) = v39;
  *(v20 + 5) = v21;
  *(v20 + 6) = v41;
  v22 = v36;
  *v20 = v35;
  *(v20 + 1) = v22;
  v23 = v38;
  *(v20 + 2) = v37;
  *(v20 + 3) = v23;
  LOBYTE(v4) = static Edge.Set.all.getter();
  sub_10002A894(v9, v14, &qword_100263E60, &qword_1001DBAD8);
  v24 = &v14[*(v11 + 44)];
  *v24 = v4;
  *(v24 + 8) = 0u;
  *(v24 + 24) = 0u;
  v24[40] = 1;
  v25 = static Alignment.center.getter();
  v27 = v26;
  v28 = sub_10000341C(&qword_100263E88, &qword_1001DBB00);
  v29 = v34;
  v30 = v34 + *(v28 + 36);
  sub_100129200(v30);
  v31 = (v30 + *(sub_10000341C(&qword_100263E90, &qword_1001DBB08) + 36));
  *v31 = v25;
  v31[1] = v27;
  return sub_10002A894(v14, v29, &qword_100263E68, &qword_1001DBAE0);
}

__n128 sub_100129200@<Q0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v39 = type metadata accessor for LabelStyleConfiguration.Icon();
  v1 = *(v39 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v39);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000341C(&qword_100263E98, &qword_1001DBB10);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v37 - v7;
  v38 = sub_10000341C(&qword_100263EA0, &qword_1001DBB18);
  v9 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38);
  v11 = &v37 - v10;
  v12 = sub_10000341C(&qword_100263EA8, &qword_1001DBB20);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = (&v37 - v14);
  *v15 = static Alignment.center.getter();
  v15[1] = v16;
  LabelStyleConfiguration.icon.getter();
  sub_10000341C(&unk_100263510, &qword_1001DAEA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001CF9E0;
  v18 = static Edge.Set.top.getter();
  *(inited + 32) = v18;
  v19 = static Edge.Set.trailing.getter();
  *(inited + 33) = v19;
  v20 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v18)
  {
    v20 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v19)
  {
    v20 = Edge.Set.init(rawValue:)();
  }

  v21 = *(sub_10000341C(&qword_100263EB0, &qword_1001DBB28) + 44);
  EdgeInsets.init(_all:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  (*(v1 + 32))(v8, v4, v39);
  v30 = &v8[*(v5 + 36)];
  *v30 = v20;
  *(v30 + 1) = v23;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  *(v30 + 4) = v29;
  v30[40] = 0;
  if (qword_10025A7D0 != -1)
  {
    swift_once();
  }

  v31 = qword_100277180;
  sub_10002A894(v8, v11, &qword_100263E98, &qword_1001DBB10);
  *&v11[*(v38 + 36)] = v31;
  sub_10002A894(v11, v15 + v21, &qword_100263EA0, &qword_1001DBB18);

  static Alignment.topTrailing.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v32 = v40;
  sub_10002A894(v15, v40, &qword_100263EA8, &qword_1001DBB20);
  v33 = v32 + *(sub_10000341C(&qword_100263EB8, &unk_1001DBB30) + 36);
  v34 = v46;
  *(v33 + 64) = v45;
  *(v33 + 80) = v34;
  *(v33 + 96) = v47;
  v35 = v42;
  *v33 = v41;
  *(v33 + 16) = v35;
  result = v44;
  *(v33 + 32) = v43;
  *(v33 + 48) = result;
  return result;
}

double sub_100129638@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_10000341C(&qword_100263F20, &qword_1001DBB98);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v19 - v4;
  v6 = sub_10000341C(&qword_100263F28, &qword_1001DBBA0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = v19 - v9;
  *v5 = static VerticalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v11 = sub_10000341C(&qword_100263F30, &qword_1001DBBA8);
  sub_100129834(&v5[*(v11 + 44)]);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10002A894(v5, v10, &qword_100263F20, &qword_1001DBB98);
  v12 = &v10[*(v7 + 44)];
  v13 = v19[5];
  *(v12 + 4) = v19[4];
  *(v12 + 5) = v13;
  *(v12 + 6) = v19[6];
  v14 = v19[1];
  *v12 = v19[0];
  *(v12 + 1) = v14;
  v15 = v19[3];
  *(v12 + 2) = v19[2];
  *(v12 + 3) = v15;
  v16 = static Edge.Set.all.getter();
  sub_10002A894(v10, a1, &qword_100263F28, &qword_1001DBBA0);
  v17 = a1 + *(sub_10000341C(&qword_100263F38, &qword_1001DBBB0) + 36);
  *v17 = v16;
  result = 0.0;
  *(v17 + 8) = 0u;
  *(v17 + 24) = 0u;
  *(v17 + 40) = 1;
  return result;
}

uint64_t sub_100129834@<X0>(char *a1@<X8>)
{
  v24 = a1;
  v1 = sub_10000341C(&qword_100263B20, &qword_1001DB610);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1);
  v25 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v23 - v5;
  v7 = type metadata accessor for LabelStyleConfiguration.Title();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = __chkstk_darwin(v7);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  LabelStyleConfiguration.title.getter();
  LabelStyleConfiguration.icon.getter();
  if (qword_10025A7D0 != -1)
  {
    swift_once();
  }

  *&v6[*(v1 + 36)] = qword_100277180;
  v15 = v8[2];
  v15(v12, v14, v7);
  v26 = 1;
  v16 = v25;
  sub_1000081F8(v6, v25, &qword_100263B20, &qword_1001DB610);
  v17 = v24;
  v15(v24, v12, v7);
  v18 = sub_10000341C(&qword_100263F40, &qword_1001DBBB8);
  v19 = &v17[*(v18 + 48)];
  v20 = v26;
  *v19 = 0;
  v19[8] = v20;
  sub_1000081F8(v16, &v17[*(v18 + 64)], &qword_100263B20, &qword_1001DB610);

  sub_10000F500(v6, &qword_100263B20, &qword_1001DB610);
  v21 = v8[1];
  v21(v14, v7);
  sub_10000F500(v16, &qword_100263B20, &qword_1001DB610);
  return (v21)(v12, v7);
}

uint64_t sub_100129AF4@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = type metadata accessor for LabelStyleConfiguration.Title();
  v2 = *(v1 - 8);
  v3 = v2[8];
  v4 = __chkstk_darwin(v1);
  v33 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v31 - v6;
  v8 = sub_10000341C(&qword_100263540, &qword_1001DAEF8);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v31 - v14;
  LabelStyleConfiguration.icon.getter();
  v16 = &v15[*(sub_10000341C(&qword_100263548, &unk_1001DAF00) + 36)];
  v17 = *(sub_10000341C(&qword_100263550, &qword_1001D1F30) + 28);
  v18 = enum case for Image.Scale.large(_:);
  v19 = type metadata accessor for Image.Scale();
  (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
  *v16 = swift_getKeyPath();
  LOBYTE(v18) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v20 = &v15[*(v9 + 44)];
  *v20 = v18;
  *(v20 + 1) = v21;
  *(v20 + 2) = v22;
  *(v20 + 3) = v23;
  *(v20 + 4) = v24;
  v20[40] = 0;
  v31 = v7;
  LabelStyleConfiguration.title.getter();
  v32 = v13;
  sub_1000081F8(v15, v13, &qword_100263540, &qword_1001DAEF8);
  v25 = v2[2];
  v26 = v33;
  v25(v33, v7, v1);
  v27 = v34;
  sub_1000081F8(v13, v34, &qword_100263540, &qword_1001DAEF8);
  v28 = sub_10000341C(&qword_100263558, &qword_1001DAF40);
  v25((v27 + *(v28 + 48)), v26, v1);
  v29 = v2[1];
  v29(v31, v1);
  sub_10000F500(v15, &qword_100263540, &qword_1001DAEF8);
  v29(v26, v1);
  return sub_10000F500(v32, &qword_100263540, &qword_1001DAEF8);
}

uint64_t sub_100129E00@<X0>(uint64_t a1@<X8>)
{
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = sub_10000341C(&qword_100263538, &qword_1001DAEF0);
  return sub_100129AF4(a1 + *(v2 + 44));
}

uint64_t sub_100129E58(uint64_t (*a1)(void))
{
  v3 = type metadata accessor for EnvironmentValues();
  v21 = *(v3 - 8);
  v22 = v3;
  v4 = *(v21 + 64);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000341C(&unk_10025B1F0, &qword_1001CE0D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (&v21 - v9);
  v11 = type metadata accessor for DynamicTypeSize();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1(0);
  sub_1000081F8(v1 + *(v16 + 20), v10, &unk_10025B1F0, &qword_1001CE0D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v15, v10, v11);
  }

  else
  {
    v17 = *v10;
    static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v21 + 8))(v6, v22);
  }

  v19 = DynamicTypeSize.isAccessibilitySize.getter();
  (*(v12 + 8))(v15, v11);
  return v19 & 1;
}

uint64_t sub_10012A0E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a1;
  v64 = a2;
  v3 = type metadata accessor for DynamicTypeSize();
  v63 = *(v3 - 8);
  v4 = *(v63 + 64);
  __chkstk_darwin(v3);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000341C(&qword_100263AE0, &qword_1001DB5A0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = &v59 - v10;
  v12 = sub_10000341C(&qword_100263AE8, &qword_1001DB5A8);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v60 = &v59 - v15;
  v16 = sub_10000341C(&unk_100263AF0, &qword_1001DB5B0);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v61 = &v59 - v19;
  v20 = static Alignment.center.getter();
  v22 = v21;
  v23 = *(v8 + 56);
  *&v11[v23] = swift_getKeyPath();
  sub_10000341C(&unk_10025B1F0, &qword_1001CE0D0);
  swift_storeEnumTagMultiPayload();
  *v11 = 1;
  *(v11 + 1) = v20;
  *(v11 + 2) = v22;
  *(v11 + 3) = 0;
  *(v11 + 4) = 0;
  v11[40] = 1;
  v24 = &v11[*(v8 + 52)];
  v59 = v2;
  sub_10012A4C8(v2, v62, v24);
  LOBYTE(v8) = static Edge.Set.bottom.getter();
  LODWORD(v22) = *(type metadata accessor for SmallIconTitleLabelStyle(0) + 20);
  sub_10011F024(v6);
  DynamicTypeSize.isAccessibilitySize.getter();
  v25 = *(v63 + 8);
  v25(v6, v3);
  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = v11;
  v35 = v60;
  sub_10002A894(v34, v60, &qword_100263AE0, &qword_1001DB5A0);
  v36 = v35 + *(v13 + 44);
  *v36 = v8;
  *(v36 + 8) = v27;
  *(v36 + 16) = v29;
  *(v36 + 24) = v31;
  *(v36 + 32) = v33;
  *(v36 + 40) = 0;
  LOBYTE(v8) = static Edge.Set.top.getter();
  sub_10011F024(v6);
  DynamicTypeSize.isAccessibilitySize.getter();
  v25(v6, v3);
  EdgeInsets.init(_all:)();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = v61;
  sub_10002A894(v35, v61, &qword_100263AE8, &qword_1001DB5A8);
  v46 = v45 + *(v17 + 44);
  *v46 = v8;
  *(v46 + 8) = v38;
  *(v46 + 16) = v40;
  *(v46 + 24) = v42;
  *(v46 + 32) = v44;
  *(v46 + 40) = 0;
  LOBYTE(v8) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = v45;
  v56 = v64;
  sub_10002A894(v55, v64, &unk_100263AF0, &qword_1001DB5B0);
  result = sub_10000341C(&qword_100263B00, &qword_1001DB5F0);
  v58 = v56 + *(result + 36);
  *v58 = v8;
  *(v58 + 8) = v48;
  *(v58 + 16) = v50;
  *(v58 + 24) = v52;
  *(v58 + 32) = v54;
  *(v58 + 40) = 0;
  return result;
}

uint64_t sub_10012A4C8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v76 = a3;
  v77 = a2;
  v72 = sub_10000341C(&qword_100263B08, &qword_1001DB5F8);
  v4 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v71 = &v64 - v5;
  v70 = sub_10000341C(&qword_100263B10, &qword_1001DB600);
  v6 = *(*(v70 - 8) + 64);
  v7 = __chkstk_darwin(v70);
  v75 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v74 = &v64 - v9;
  v10 = type metadata accessor for Image.Scale();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_10000341C(&qword_100263B18, &qword_1001DB608);
  v15 = *(*(v66 - 8) + 64);
  v16 = __chkstk_darwin(v66);
  v73 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v64 - v18;
  v20 = type metadata accessor for DynamicTypeSize();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(type metadata accessor for SmallIconTitleLabelStyle(0) + 20);
  v69 = a1;
  sub_10011F024(v24);
  v26 = DynamicTypeSize.isAccessibilitySize.getter();
  v27 = *(v21 + 8);
  v65 = v20;
  v64 = v27;
  v27(v24, v20);
  v28 = v19;
  LabelStyleConfiguration.icon.getter();
  if (qword_10025A7C0 != -1)
  {
    swift_once();
  }

  v68 = v26;
  v67 = (v26 & 1) == 0;
  v29 = qword_100277170;
  *&v28[*(sub_10000341C(&qword_100263B20, &qword_1001DB610) + 36)] = v29;
  v30 = v28;

  v31 = v69;
  sub_10011F024(v24);
  (*(v11 + 104))(v14, enum case for Image.Scale.medium(_:), v10);
  v32 = (v30 + *(sub_10000341C(&qword_100263B28, &qword_1001DB618) + 36));
  v33 = sub_10000341C(&qword_100263550, &qword_1001D1F30);
  sub_10014CB88(v14, v32 + *(v33 + 28));
  (*(v11 + 8))(v14, v10);
  v64(v24, v65);
  *v32 = swift_getKeyPath();
  v34 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = v30 + *(sub_10000341C(&unk_100263B30, &unk_1001DB620) + 36);
  *v43 = v34;
  *(v43 + 8) = v36;
  *(v43 + 16) = v38;
  *(v43 + 24) = v40;
  *(v43 + 32) = v42;
  *(v43 + 40) = 0;
  v44 = *(v31 + 2);
  v45 = *(v31 + 24);
  v81 = *v31;
  v82 = v44;
  v83 = v45;
  sub_10000341C(&unk_10025D798, &unk_1001DCF40);
  Binding.projectedValue.getter();
  v46 = v79;
  v47 = v80;
  v48 = v30 + *(v66 + 36);
  *v48 = v78;
  *(v48 + 16) = v46;
  *(v48 + 24) = v47;
  v49 = v71;
  LabelStyleConfiguration.title.getter();
  *(v49 + *(sub_10000341C(&qword_100263B40, &qword_1001DB630) + 36)) = v29;
  *(v49 + *(sub_10000341C(&qword_100263B48, &qword_1001DB638) + 36)) = 257;

  v50 = static Font.caption.getter();
  KeyPath = swift_getKeyPath();
  v52 = (v49 + *(v72 + 36));
  *v52 = KeyPath;
  v52[1] = v50;
  static Font.Weight.medium.getter();
  sub_100133C5C();
  v53 = v74;
  View.fontWeight(_:)();
  sub_10000F500(v49, &qword_100263B08, &qword_1001DB5F8);
  v54 = swift_getKeyPath();
  v55 = v53 + *(v70 + 36);
  *v55 = v54;
  *(v55 + 8) = 1;
  *(v55 + 16) = 0;
  v56 = sub_100129E58(type metadata accessor for SmallIconTitleLabelStyle);
  v57 = v30;
  v58 = v73;
  sub_1000081F8(v30, v73, &qword_100263B18, &qword_1001DB608);
  v59 = v75;
  sub_100133E90(v53, v75);
  v60 = v76;
  *v76 = 0;
  *(v60 + 8) = v67;
  *(v60 + 9) = v68 & 1;
  v61 = sub_10000341C(&qword_100263B70, &qword_1001DB670);
  sub_1000081F8(v58, v60 + v61[12], &qword_100263B18, &qword_1001DB608);
  sub_100133E90(v59, v60 + v61[16]);
  v62 = v60 + v61[20];
  *v62 = 0;
  v62[8] = 0;
  v62[9] = (v56 & 1) == 0;
  sub_10000F500(v53, &qword_100263B10, &qword_1001DB600);
  sub_10000F500(v57, &qword_100263B18, &qword_1001DB608);
  sub_10000F500(v59, &qword_100263B10, &qword_1001DB600);
  return sub_10000F500(v58, &qword_100263B18, &qword_1001DB608);
}

uint64_t sub_10012ABC4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for GeometryProxy();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = static Color.clear.getter();
  v10 = a2[1];
  v16 = *a2;
  (*(v7 + 16))(&v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v6);
  v11 = (*(v7 + 80) + 49) & ~*(v7 + 80);
  v12 = swift_allocObject();
  v13 = *(a2 + 1);
  *(v12 + 16) = *a2;
  *(v12 + 32) = v13;
  *(v12 + 48) = *(a2 + 32);
  (*(v7 + 32))(v12 + v11, &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v6);
  *a3 = v9;
  a3[1] = sub_100134184;
  a3[2] = v12;
  a3[3] = 0;
  a3[4] = 0;
  sub_100063D8C(&v16, v15);
}

uint64_t sub_10012AD3C(__int128 *a1)
{
  GeometryProxy.size.getter();
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 32);
  sub_10000341C(&qword_100263BC8, &qword_1001DB6B0);
  return Binding.wrappedValue.setter();
}

uint64_t sub_10012ADA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[1];
  v14 = *v2;
  v6 = swift_allocObject();
  *(v6 + 16) = v14;
  *(v6 + 24) = v5;
  *(v6 + 32) = *(v2 + 1);
  *(v6 + 48) = *(v2 + 32);
  sub_100063D8C(&v14, &v13);

  v7 = static Alignment.center.getter();
  v9 = v8;
  v10 = sub_10000341C(&qword_100263BB8, &qword_1001DB6A0);
  (*(*(v10 - 8) + 16))(a2, a1, v10);
  result = sub_10000341C(&qword_100263BC0, &qword_1001DB6A8);
  v12 = (a2 + *(result + 36));
  *v12 = sub_1001340B0;
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v9;
  return result;
}

uint64_t sub_10012AEB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v71 = sub_10000341C(&qword_100263600, &qword_1001DAFB0);
  v4 = *(*(v71 - 8) + 64);
  __chkstk_darwin(v71);
  v73 = &v63 - v5;
  v6 = type metadata accessor for PrimaryButtonStyle(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000341C(&qword_100263608, &qword_1001DAFB8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v63 - v12;
  v72 = sub_10000341C(&qword_100263610, &qword_1001DAFC0);
  v69 = *(v72 - 8);
  v14 = *(v69 + 64);
  __chkstk_darwin(v72);
  v68 = &v63 - v15;
  v70 = sub_10000341C(&qword_100263618, &qword_1001DAFC8);
  v16 = *(*(v70 - 8) + 64);
  __chkstk_darwin(v70);
  v19 = *(v2 + 12);
  if (v2[1])
  {
    v77 = *(v2 + 4);
    v78 = v19;
    sub_10000341C(&qword_100263620, &qword_1001DAFD0);
    State.projectedValue.getter();
    v66 = v74;
    v20 = v75;
    v21 = v76;
    v22 = sub_10000341C(&qword_100263628, &qword_1001DAFD8);
    (*(*(v22 - 8) + 16))(v13, a1, v22);
    v23 = &v13[*(v10 + 36)];
    *v23 = v66;
    *(v23 + 1) = v20;
    v23[32] = v21;
    v24 = *v2;
    v25 = *(v2 + 12);
    v74 = *(v2 + 4);
    v75 = v25;
    State.wrappedValue.getter();
    v26 = v77;
    v27 = v10;
    v28 = v78;
    v29 = *(v2 + 3);
    KeyPath = swift_getKeyPath();
    *v9 = v24;
    *(v9 + 1) = 0;
    *(v9 + 2) = 0x4008000000000000;
    *(v9 + 24) = v26;
    v9[40] = v28;
    v9[41] = v29;
    v31 = *(v6 + 40);
    *&v9[v31] = swift_getKeyPath();
    sub_10000341C(&qword_100262940, &unk_1001D0560);
    swift_storeEnumTagMultiPayload();
    v32 = &v9[*(v6 + 44)];
    *v32 = KeyPath;
    v32[8] = 0;
    v33 = sub_1001318F0();
    v34 = sub_10013124C(&qword_10025C9B8, type metadata accessor for PrimaryButtonStyle);
    v35 = v68;
    View.buttonStyle<A>(_:)();
    sub_1001319FC(v9, type metadata accessor for PrimaryButtonStyle);
    sub_10000F500(v13, &qword_100263608, &qword_1001DAFB8);
    v36 = v69;
    v37 = v72;
    (*(v69 + 16))(v73, v35, v72);
    swift_storeEnumTagMultiPayload();
    *&v74 = v27;
    *(&v74 + 1) = v6;
    *&v75 = v33;
    *(&v75 + 1) = v34;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v39 = sub_1000492B0();
    *&v74 = v37;
    *(&v74 + 1) = &type metadata for HorizontalIconTitleLabelStyle;
    *&v75 = OpaqueTypeConformance2;
    *(&v75 + 1) = v39;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v36 + 8))(v35, v37);
  }

  else
  {
    v77 = *(v2 + 4);
    v78 = v19;
    v65 = &v63 - v17;
    *&v66 = v18;
    sub_10000341C(&qword_100263620, &qword_1001DAFD0);
    State.projectedValue.getter();
    v63 = v74;
    v41 = v75;
    v64 = v10;
    v42 = v76;
    v43 = sub_10000341C(&qword_100263628, &qword_1001DAFD8);
    (*(*(v43 - 8) + 16))(v13, a1, v43);
    v44 = &v13[*(v10 + 36)];
    *v44 = v63;
    *(v44 + 1) = v41;
    v44[32] = v42;
    v45 = *v2;
    v46 = *(v2 + 12);
    v74 = *(v2 + 4);
    v75 = v46;
    State.wrappedValue.getter();
    v47 = v77;
    v48 = v78;
    v49 = *(v2 + 3);
    v50 = swift_getKeyPath();
    *v9 = v45;
    *(v9 + 1) = 0;
    *(v9 + 2) = 0x4008000000000000;
    *(v9 + 24) = v47;
    v9[40] = v48;
    v9[41] = v49;
    v51 = *(v6 + 40);
    *&v9[v51] = swift_getKeyPath();
    sub_10000341C(&qword_100262940, &unk_1001D0560);
    swift_storeEnumTagMultiPayload();
    v52 = &v9[*(v6 + 44)];
    *v52 = v50;
    v52[8] = 0;
    v53 = sub_1001318F0();
    v54 = sub_10013124C(&qword_10025C9B8, type metadata accessor for PrimaryButtonStyle);
    v55 = v68;
    v56 = v64;
    View.buttonStyle<A>(_:)();
    sub_1001319FC(v9, type metadata accessor for PrimaryButtonStyle);
    sub_10000F500(v13, &qword_100263608, &qword_1001DAFB8);
    *&v74 = v56;
    *(&v74 + 1) = v6;
    *&v75 = v53;
    *(&v75 + 1) = v54;
    v57 = swift_getOpaqueTypeConformance2();
    v58 = sub_1000492B0();
    v59 = v65;
    v60 = v72;
    View.labelStyle<A>(_:)();
    (*(v69 + 8))(v55, v60);
    v61 = v66;
    v62 = v70;
    (*(v66 + 16))(v73, v59, v70);
    swift_storeEnumTagMultiPayload();
    *&v74 = v60;
    *(&v74 + 1) = &type metadata for HorizontalIconTitleLabelStyle;
    *&v75 = v57;
    *(&v75 + 1) = v58;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v61 + 8))(v59, v62);
  }
}

uint64_t sub_10012B6C8()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for PrimaryButtonStyle(0) + 44);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000611E0(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_10012B820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v105 = a2;
  v107 = type metadata accessor for AutomaticHoverEffect();
  v106 = *(v107 - 8);
  v5 = *(v106 + 64);
  __chkstk_darwin(v107);
  v104 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for ColorScheme();
  v87 = *(v88 - 8);
  v7 = *(v87 + 64);
  __chkstk_darwin(v88);
  v86 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for RoundedRectangle();
  v9 = *(*(v91 - 8) + 64);
  __chkstk_darwin(v91);
  v101 = (&v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v100 = sub_10000341C(&unk_100263560, &unk_1001D1590);
  v11 = *(*(v100 - 8) + 64);
  __chkstk_darwin(v100);
  v103 = &v86 - v12;
  v99 = sub_10000341C(&unk_10025E1E0, &qword_1001D39A0);
  v13 = *(*(v99 - 8) + 64);
  __chkstk_darwin(v99);
  v102 = &v86 - v14;
  v15 = type metadata accessor for ButtonStyleConfiguration.Label();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000341C(&qword_1002634F0, &qword_1001DAE80);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v24 = &v86 - v23;
  v25 = sub_10000341C(&qword_1002634F8, &qword_1001DAE88);
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v29 = &v86 - v28;
  v89 = sub_10000341C(&qword_100263570, &qword_1001DAF48);
  v30 = *(*(v89 - 8) + 64);
  __chkstk_darwin(v89);
  v96 = &v86 - v31;
  v92 = sub_10000341C(&qword_100263578, &qword_1001DAF50);
  v32 = *(*(v92 - 8) + 64);
  __chkstk_darwin(v92);
  v95 = &v86 - v33;
  v94 = sub_10000341C(&qword_100263580, &qword_1001DAF58);
  v34 = *(*(v94 - 8) + 64);
  __chkstk_darwin(v94);
  v93 = &v86 - v35;
  v97 = sub_10000341C(&unk_100263588, &qword_1001DAF60);
  v36 = *(*(v97 - 8) + 64);
  __chkstk_darwin(v97);
  v98 = &v86 - v37;
  v90 = a1;
  ButtonStyleConfiguration.label.getter();
  *v3;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v16 + 32))(v24, v19, v15);
  v38 = &v24[*(v21 + 44)];
  v39 = v114;
  *(v38 + 4) = v113;
  *(v38 + 5) = v39;
  *(v38 + 6) = v115;
  v40 = v110;
  *v38 = v109;
  *(v38 + 1) = v40;
  v41 = v112;
  *(v38 + 2) = v111;
  *(v38 + 3) = v41;
  LOBYTE(a1) = static Edge.Set.horizontal.getter();
  v42 = *(v3 + 16);
  EdgeInsets.init(_all:)();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  sub_10002A894(v24, v29, &qword_1002634F0, &qword_1001DAE80);
  v51 = &v29[*(v26 + 44)];
  *v51 = a1;
  *(v51 + 1) = v44;
  *(v51 + 2) = v46;
  *(v51 + 3) = v48;
  *(v51 + 4) = v50;
  v51[40] = 0;
  v52 = *(v3 + 1);
  if (v52)
  {
    v53 = static Color.accentColor.getter();
  }

  else
  {
    if (qword_10025A7C0 != -1)
    {
      swift_once();
    }

    v53 = qword_100277170;
  }

  KeyPath = swift_getKeyPath();
  v55 = v96;
  sub_10002A894(v29, v96, &qword_1002634F8, &qword_1001DAE88);
  v56 = (v55 + *(v89 + 36));
  *v56 = KeyPath;
  v56[1] = v53;
  v108[3] = &type metadata for SwiftUI;
  v108[4] = sub_100131370();
  v57 = isFeatureEnabled(_:)();
  sub_10000F4B4(v108);
  if ((v57 & 1) != 0 && (*(v3 + 40) & 1) == 0 && *(v3 + 41) == 1)
  {
    v58 = *(v3 + 32) * 0.5;
    v59 = v101;
  }

  else
  {
    v59 = v101;
    if (qword_10025A7B0 != -1)
    {
      swift_once();
    }

    v58 = *&qword_100277160;
  }

  v60 = *(v91 + 20);
  v61 = enum case for RoundedCornerStyle.continuous(_:);
  v62 = type metadata accessor for RoundedCornerStyle();
  (*(*(v62 - 8) + 104))(v59 + v60, v61, v62);
  *v59 = v58;
  v59[1] = v58;
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    if (v52)
    {
      static Color.accentColor.getter();
      Color.opacity(_:)();
    }

    else
    {
      if (!*(v3 + 8) && qword_10025A7E8 != -1)
      {
        swift_once();
      }
    }

    v64 = v3 + *(type metadata accessor for PrimaryButtonStyle(0) + 40);
    v65 = v86;
    sub_10011F04C(v86);
    v63 = sub_100125700();

    (*(v87 + 8))(v65, v88);
  }

  else if (v52)
  {
    static Color.accentColor.getter();
    v63 = Color.opacity(_:)();
  }

  else
  {
    v63 = *(v3 + 8);
    if (!v63)
    {
      if (qword_10025A7E8 != -1)
      {
        swift_once();
      }

      v63 = qword_100277198;
    }
  }

  v66 = v103;
  sub_1001312E0(v59, v103, &type metadata accessor for RoundedRectangle);
  v67 = v100;
  *(v66 + *(v100 + 52)) = v63;
  *(v66 + *(v67 + 56)) = 256;
  v68 = v102;
  v69 = &v102[*(v99 + 36)];
  *v69 = 0;
  v70 = *(type metadata accessor for CommonUIBlendModifier(0) + 20);
  *&v69[v70] = swift_getKeyPath();
  sub_10000341C(&qword_100262940, &unk_1001D0560);
  swift_storeEnumTagMultiPayload();
  sub_10002A894(v66, v68, &unk_100263560, &unk_1001D1590);
  v71 = static Alignment.center.getter();
  v73 = v72;
  v74 = v95;
  v75 = &v95[*(v92 + 36)];
  sub_10002A894(v68, v75, &unk_10025E1E0, &qword_1001D39A0);
  v76 = (v75 + *(sub_10000341C(&unk_10025E1F0, &unk_1001D39E0) + 36));
  *v76 = v71;
  v76[1] = v73;
  sub_10002A894(v55, v74, &qword_100263570, &qword_1001DAF48);
  if (sub_10012B6C8())
  {
    v77 = 1.0;
  }

  else
  {
    v77 = 0.3;
  }

  v78 = v74;
  v79 = v93;
  sub_10002A894(v78, v93, &qword_100263578, &qword_1001DAF50);
  *(v79 + *(v94 + 36)) = v77;
  v80 = ButtonStyleConfiguration.isPressed.getter();
  v81 = v98;
  sub_10002A894(v79, v98, &qword_100263580, &qword_1001DAF58);
  v82 = v81 + *(v97 + 36);
  *v82 = 0;
  *(v82 + 8) = v80 & 1;
  v83 = v104;
  static CustomHoverEffect<>.automatic.getter();
  sub_100131588();
  sub_10013124C(&qword_1002635F8, &type metadata accessor for AutomaticHoverEffect);
  v84 = v107;
  View.hoverEffect<A>(_:isEnabled:)();
  (*(v106 + 8))(v83, v84);
  return sub_10000F500(v81, &unk_100263588, &qword_1001DAF60);
}

uint64_t sub_10012C3C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v65 = sub_10000341C(&qword_100263DD0, &qword_1001DBA58);
  v3 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65);
  v66 = (&v57 - v4);
  v64 = sub_10000341C(&qword_100263DD8, &qword_1001DBA60);
  v5 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64);
  v67 = &v57 - v6;
  v63 = type metadata accessor for ButtonStyleConfiguration.Label();
  v61 = *(v63 - 8);
  v7 = *(v61 + 64);
  __chkstk_darwin(v63);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000341C(&qword_1002634F0, &qword_1001DAE80);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v58 = &v57 - v13;
  v14 = sub_10000341C(&qword_1002634F8, &qword_1001DAE88);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v18 = &v57 - v17;
  v59 = sub_10000341C(&qword_100263DE0, &qword_1001DBA68);
  v19 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v21 = &v57 - v20;
  v62 = sub_10000341C(&qword_100263DE8, &qword_1001DBA70);
  v60 = *(v62 - 8);
  v22 = *(v60 + 64);
  __chkstk_darwin(v62);
  v57 = &v57 - v23;
  v24 = sub_10000341C(&qword_100263DF0, &qword_1001DBA78);
  v25 = v24 - 8;
  v26 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24);
  v28 = &v57 - v27;
  v68 = a1;
  ButtonStyleConfiguration.label.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v29 = v58;
  (*(v61 + 32))(v58, v9, v63);
  v30 = &v29[*(v11 + 44)];
  v31 = v29;
  v32 = v75;
  *(v30 + 4) = v74;
  *(v30 + 5) = v32;
  *(v30 + 6) = v76;
  v33 = v71;
  *v30 = v70;
  *(v30 + 1) = v33;
  v34 = v73;
  *(v30 + 2) = v72;
  *(v30 + 3) = v34;
  LOBYTE(v29) = static Edge.Set.all.getter();
  sub_10002A894(v31, v18, &qword_1002634F0, &qword_1001DAE80);
  v35 = &v18[*(v15 + 44)];
  *v35 = v29;
  *(v35 + 8) = 0u;
  *(v35 + 24) = 0u;
  v35[40] = 1;
  v36 = static Color.white.getter();
  sub_10002A894(v18, v21, &qword_1002634F8, &qword_1001DAE88);
  *&v21[*(v59 + 36)] = v36;
  static Font.Weight.semibold.getter();
  sub_100135120();
  v37 = v57;
  View.fontWeight(_:)();
  sub_10000F500(v21, &qword_100263DE0, &qword_1001DBA68);
  KeyPath = swift_getKeyPath();
  (*(v60 + 32))(v28, v37, v62);
  v39 = &v28[*(v25 + 44)];
  *v39 = KeyPath;
  v39[8] = 1;
  if (qword_10025A7B0 != -1)
  {
    swift_once();
  }

  v40 = qword_100277160;
  v41 = *(type metadata accessor for RoundedRectangle() + 20);
  v42 = enum case for RoundedCornerStyle.continuous(_:);
  v43 = type metadata accessor for RoundedCornerStyle();
  v44 = v66;
  (*(*(v43 - 8) + 104))(v66 + v41, v42, v43);
  *v44 = v40;
  v44[1] = v40;
  v45 = v65;
  v46 = v44 + *(v65 + 52);
  TintShapeStyle.init()();
  *(v44 + *(v45 + 56)) = 256;
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    v47 = 0.8;
  }

  else
  {
    v47 = 1.0;
  }

  v48 = v67;
  sub_10002A894(v44, v67, &qword_100263DD0, &qword_1001DBA58);
  *(v48 + *(v64 + 36)) = v47;
  v49 = static Alignment.center.getter();
  v51 = v50;
  v52 = sub_10000341C(&qword_100263E00, &qword_1001DBA80);
  v53 = v69;
  v54 = v69 + *(v52 + 36);
  sub_10002A894(v48, v54, &qword_100263DD8, &qword_1001DBA60);
  v55 = (v54 + *(sub_10000341C(&qword_100263E08, &qword_1001DBA88) + 36));
  *v55 = v49;
  v55[1] = v51;
  return sub_10002A894(v28, v53, &qword_100263DF0, &qword_1001DBA78);
}

uint64_t sub_10012CA84()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for UnevenCornerPrimaryButtonStyle(0) + 28);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000611E0(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_10012CBE4@<X0>(uint64_t a1@<X8>)
{
  v85 = a1;
  v74 = type metadata accessor for ColorScheme();
  v73 = *(v74 - 8);
  v1 = *(v73 + 64);
  __chkstk_darwin(v74);
  v72 = &v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for UnevenRoundedRectangle();
  v3 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75);
  v5 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_10000341C(&qword_1002634E0, &qword_1001DAE70);
  v6 = *(*(v82 - 8) + 64);
  __chkstk_darwin(v82);
  v8 = &v72 - v7;
  v81 = sub_10000341C(&qword_1002634E8, &qword_1001DAE78);
  v9 = *(*(v81 - 8) + 64);
  __chkstk_darwin(v81);
  v83 = &v72 - v10;
  v11 = type metadata accessor for ButtonStyleConfiguration.Label();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000341C(&qword_1002634F0, &qword_1001DAE80);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v20 = &v72 - v19;
  v21 = sub_10000341C(&qword_1002634F8, &qword_1001DAE88);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v80 = &v72 - v23;
  v76 = sub_10000341C(&qword_100263500, &qword_1001DAE90);
  v24 = *(*(v76 - 8) + 64);
  __chkstk_darwin(v76);
  v79 = &v72 - v25;
  v78 = sub_10000341C(&qword_100263508, &qword_1001DAE98);
  v26 = *(*(v78 - 8) + 64);
  __chkstk_darwin(v78);
  v77 = &v72 - v27;
  ButtonStyleConfiguration.label.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v12 + 32))(v20, v15, v11);
  v28 = &v20[*(v17 + 44)];
  v29 = v91;
  *(v28 + 4) = v90;
  *(v28 + 5) = v29;
  *(v28 + 6) = v92;
  v30 = v87;
  *v28 = v86;
  *(v28 + 1) = v30;
  v31 = v89;
  *(v28 + 2) = v88;
  *(v28 + 3) = v31;
  sub_10000341C(&unk_100263510, &qword_1001DAEA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001CF9E0;
  LOBYTE(v11) = static Edge.Set.leading.getter();
  *(inited + 32) = v11;
  v33 = static Edge.Set.trailing.getter();
  *(inited + 33) = v33;
  v34 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v11)
  {
    v34 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v33)
  {
    v34 = Edge.Set.init(rawValue:)();
  }

  v35 = v80;
  EdgeInsets.init(_all:)();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_10002A894(v20, v35, &qword_1002634F0, &qword_1001DAE80);
  v44 = v35 + *(v21 + 36);
  *v44 = v34;
  *(v44 + 8) = v37;
  *(v44 + 16) = v39;
  *(v44 + 24) = v41;
  *(v44 + 32) = v43;
  *(v44 + 40) = 0;
  v45 = v84;
  if (*v84 == 1 && qword_10025A7B0 != -1)
  {
    swift_once();
  }

  if (v45[1] == 1 && qword_10025A7B0 != -1)
  {
    swift_once();
  }

  v46 = *(v75 + 20);
  v47 = enum case for RoundedCornerStyle.continuous(_:);
  v48 = type metadata accessor for RoundedCornerStyle();
  (*(*(v48 - 8) + 104))(&v5[v46], v47, v48);
  RectangleCornerRadii.init(topLeft:topRight:bottomRight:bottomLeft:)();
  *v5 = v49;
  *(v5 + 1) = v50;
  *(v5 + 2) = v51;
  *(v5 + 3) = v52;
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    v53 = &v45[*(type metadata accessor for UnevenCornerPrimaryButtonStyle(0) + 24)];
    v54 = v72;
    sub_10011F04C(v72);
    if (qword_10025A7E8 != -1)
    {
      swift_once();
    }

    v55 = sub_100125700();
    (*(v73 + 8))(v54, v74);
  }

  else
  {
    if (qword_10025A7E8 != -1)
    {
      swift_once();
    }

    v55 = qword_100277198;
  }

  sub_1001312E0(v5, v8, &type metadata accessor for UnevenRoundedRectangle);
  v56 = v82;
  *&v8[*(v82 + 52)] = v55;
  *&v8[*(v56 + 56)] = 256;
  v57 = v83;
  v58 = &v83[*(v81 + 36)];
  *v58 = 0;
  v59 = *(type metadata accessor for CommonUIBlendModifier(0) + 20);
  *&v58[v59] = swift_getKeyPath();
  sub_10000341C(&qword_100262940, &unk_1001D0560);
  swift_storeEnumTagMultiPayload();
  sub_10002A894(v8, v57, &qword_1002634E0, &qword_1001DAE70);
  v60 = static Alignment.center.getter();
  v62 = v61;
  v63 = v79;
  v64 = &v79[*(v76 + 36)];
  sub_10002A894(v57, v64, &qword_1002634E8, &qword_1001DAE78);
  v65 = (v64 + *(sub_10000341C(&qword_100263520, &qword_1001DAEE0) + 36));
  *v65 = v60;
  v65[1] = v62;
  sub_10002A894(v35, v63, &qword_1002634F8, &qword_1001DAE88);
  if (sub_10012CA84())
  {
    v66 = 1.0;
  }

  else
  {
    v66 = 0.3;
  }

  v67 = v77;
  sub_10002A894(v63, v77, &qword_100263500, &qword_1001DAE90);
  *(v67 + *(v78 + 36)) = v66;
  v68 = ButtonStyleConfiguration.isPressed.getter();
  v69 = v85;
  sub_10002A894(v67, v85, &qword_100263508, &qword_1001DAE98);
  result = sub_10000341C(&qword_100263528, &qword_1001DAEE8);
  v71 = v69 + *(result + 36);
  *v71 = 0;
  *(v71 + 8) = v68 & 1;
  return result;
}

uint64_t sub_10012D520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30[1] = a2;
  v3 = sub_10000341C(&qword_100263B78, &qword_1001DB678);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = v30 - v5;
  v7 = sub_10000341C(&qword_100263B80, &qword_1001DB680);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = v30 - v9;
  v11 = sub_10000341C(&qword_100263B88, &qword_1001DB688);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v30 - v16;
  v18 = [objc_opt_self() currentDevice];
  v19 = [v18 userInterfaceIdiom];

  if (v19 == 6)
  {
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v20 = sub_10000341C(&qword_100263B90, &qword_1001DB690);
    (*(*(v20 - 8) + 16))(v10, a1, v20);
    v21 = &v10[*(v7 + 36)];
    v22 = v36;
    *(v21 + 4) = v35;
    *(v21 + 5) = v22;
    *(v21 + 6) = v37;
    v23 = v32;
    *v21 = v31;
    *(v21 + 1) = v23;
    v24 = v34;
    *(v21 + 2) = v33;
    *(v21 + 3) = v24;
    v25 = static Font.title3.getter();
    KeyPath = swift_getKeyPath();
    sub_10002A894(v10, v15, &qword_100263B80, &qword_1001DB680);
    v27 = &v15[*(v11 + 36)];
    *v27 = KeyPath;
    v27[1] = v25;
    sub_10002A894(v15, v17, &qword_100263B88, &qword_1001DB688);
    sub_1000081F8(v17, v6, &qword_100263B88, &qword_1001DB688);
    swift_storeEnumTagMultiPayload();
    sub_100133F00();
    sub_100007120(&qword_100263BA8, &qword_100263B90, &qword_1001DB690);
    _ConditionalContent<>.init(storage:)();
    return sub_10000F500(v17, &qword_100263B88, &qword_1001DB688);
  }

  else
  {
    v29 = sub_10000341C(&qword_100263B90, &qword_1001DB690);
    (*(*(v29 - 8) + 16))(v6, a1, v29);
    swift_storeEnumTagMultiPayload();
    sub_100133F00();
    sub_100007120(&qword_100263BA8, &qword_100263B90, &qword_1001DB690);
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_10012D930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v4 = type metadata accessor for PreferredContentSizeModifier(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  v51 = v8;
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NavigationPath();
  v11 = *(v10 - 8);
  v52 = v10;
  v53 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000341C(&qword_100263468, &qword_1001DADD8);
  v48 = v15;
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v45 - v17;
  v19 = sub_10000341C(&qword_100263470, &qword_1001DADE0);
  v20 = *(v19 - 8);
  v54 = v19;
  v55 = v20;
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v57 = &v45 - v22;
  v23 = sub_10000341C(&qword_100263478, &unk_1001DADE8);
  (*(*(v23 - 8) + 16))(v18, a1, v23);
  *&v18[*(v15 + 36)] = 256;
  v24 = *(v5 + 36);
  sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  v49 = v2;
  Binding.wrappedValue.getter();
  sub_100130728(v2, v9);
  v25 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v26 = swift_allocObject();
  v50 = type metadata accessor for PreferredContentSizeModifier;
  sub_1001312E0(v9, v26 + v25, type metadata accessor for PreferredContentSizeModifier);
  v47 = sub_1001307A8();
  v46 = sub_10013124C(&qword_10025B3E0, &type metadata accessor for NavigationPath);
  v27 = v48;
  v28 = v52;
  View.onChange<A>(of:initial:_:)();

  (*(v53 + 8))(v14, v28);
  sub_10000F500(v18, &qword_100263468, &qword_1001DADD8);
  v29 = v49;
  v30 = v49 + *(v5 + 40);
  v31 = *v30;
  v32 = *(v30 + 8);
  LOBYTE(v30) = *(v30 + 16);
  v58 = v31;
  v59 = v32;
  LOBYTE(v60) = v30;
  sub_10000341C(&qword_100262800, &qword_1001D9490);
  Binding.wrappedValue.getter();
  sub_100130728(v29, v9);
  v33 = swift_allocObject();
  v34 = v50;
  sub_1001312E0(v9, v33 + v25, v50);
  v58 = v27;
  v59 = v28;
  v60 = v47;
  v61 = v46;
  swift_getOpaqueTypeConformance2();
  v36 = v56;
  v35 = v57;
  v37 = v54;
  View.onChange<A>(of:initial:_:)();

  (*(v55 + 8))(v35, v37);
  sub_100130728(v29, v9);
  v38 = swift_allocObject();
  sub_1001312E0(v9, v38 + v25, v34);
  v39 = (v36 + *(sub_10000341C(&qword_100263490, &qword_1001DADF8) + 36));
  *v39 = sub_10012E374;
  v39[1] = 0;
  v39[2] = sub_100130A84;
  v39[3] = v38;
  sub_100130728(v29, v9);
  v40 = swift_allocObject();
  sub_1001312E0(v9, v40 + v25, v34);
  v41 = (v36 + *(sub_10000341C(&qword_100263498, &qword_1001DAE00) + 36));
  *v41 = sub_100130AF4;
  v41[1] = v40;
  v41[2] = 0;
  v41[3] = 0;
  sub_100130728(v29, v9);
  v42 = swift_allocObject();
  sub_1001312E0(v9, v42 + v25, v34);
  result = sub_10000341C(&unk_1002634A0, &unk_1001DAE08);
  v44 = (v36 + *(result + 36));
  *v44 = 0;
  v44[1] = 0;
  v44[2] = sub_100130B0C;
  v44[3] = v42;
  return result;
}

uint64_t sub_10012DF3C(uint64_t a1)
{
  v2 = type metadata accessor for PreferredContentSizeModifier(0);
  v3 = *(*(v2 - 1) + 64);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NavigationPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1 + v2[12];
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = *(v11 + 16);
  v34 = v12;
  LOBYTE(v35) = v13;
  v36 = v14;
  sub_10000341C(&unk_1002634B0, &qword_1001DAE18);
  result = State.wrappedValue.getter();
  if ((v33 & 1) == 0)
  {
    v16 = v32;
    v17 = v2[7];
    sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
    Binding.wrappedValue.getter();
    v18 = NavigationPath.count.getter();
    result = (*(v7 + 8))(v10, v6);
    if (v18 < v16)
    {
      if (qword_10025A730 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_10000F34C(v19, qword_100276FF8);
      sub_100130728(a1, v5);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v34 = v23;
        *v22 = 136315138;
        v24 = &v5[v2[9]];
        v25 = *v24;
        v26 = v24[1];

        sub_1001319FC(v5, type metadata accessor for PreferredContentSizeModifier);
        v27 = sub_10002510C(v25, v26, &v34);

        *(v22 + 4) = v27;
        _os_log_impl(&_mh_execute_header, v20, v21, "navigating back %s", v22, 0xCu);
        sub_10000F4B4(v23);
      }

      else
      {

        sub_1001319FC(v5, type metadata accessor for PreferredContentSizeModifier);
      }

      v28 = a1 + v2[13];
      v29 = *v28;
      v30 = *(v28 + 8);
      LOBYTE(v34) = v29;
      v35 = v30;
      LOBYTE(v32) = 1;
      sub_10000341C(&unk_1002640F0, &qword_1001D3490);
      return State.wrappedValue.setter();
    }
  }

  return result;
}

uint64_t sub_10012E290(uint64_t a1)
{
  v2 = type metadata accessor for PreferredContentSizeModifier(0);
  v3 = (a1 + *(v2 + 44));
  v7 = *v3;
  v9 = *(v3 + 1);
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  result = State.wrappedValue.getter();
  if (v12 == 1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v5 = result;
      v6 = (a1 + *(v2 + 32));
      v8 = *v6;
      v10 = v6[1];
      v11 = *(v6 + 16);
      sub_10000341C(&qword_100262800, &qword_1001D9490);
      Binding.wrappedValue.getter();
      [v5 setFeedbackHiddenDetentEnabled:v12];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_10012E374@<X0>(void *a1@<X8>)
{
  result = GeometryProxy.size.getter();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

void *sub_10012E3A0(double *a1, uint64_t a2)
{
  v4 = type metadata accessor for PreferredContentSizeModifier(0);
  v5 = *(*(v4 - 1) + 64);
  __chkstk_darwin(v4);
  v7 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v42[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *a1;
  v14 = a1[1];
  if (*(a2 + 8) == 1)
  {
    v15 = [objc_opt_self() currentTraitCollection];
    v16 = [v15 userInterfaceIdiom];

    v17 = 70.0;
    if (v16 == 6)
    {
      v17 = 92.0;
    }

    if (v16 == 1)
    {
      v17 = 50.0;
    }

    v14 = v14 + v17;
  }

  v18 = a2 + v4[10];
  v19 = *(v18 + 16);
  v45 = *v18;
  v46 = v19;
  v43 = v13;
  v44 = v14;
  sub_10000341C(&qword_1002634C0, &qword_1001DAE28);
  State.wrappedValue.setter();
  v20 = a2 + v4[14];
  v21 = *v20;
  v22 = *(v20 + 8);

  if ((v22 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v23 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v9 + 8))(v12, v8);
    v21 = v45;
  }

  if (v21)
  {
    if (*(v21 + 64) == v13 && *(v21 + 72) == v14)
    {
      *(v21 + 64) = v13;
      *(v21 + 72) = v14;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *&v42[-32] = v21;
      *&v42[-24] = v13;
      *&v42[-16] = v14;
      *&v45 = v21;
      sub_10013124C(&qword_10025A910, type metadata accessor for PresentationModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  v26 = a2 + v4[11];
  v27 = *v26;
  v28 = *(v26 + 8);
  LOBYTE(v45) = v27;
  *(&v45 + 1) = v28;
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  result = State.wrappedValue.getter();
  if (LOBYTE(v43) == 1)
  {
    v30 = a2 + v4[13];
    v31 = *v30;
    v32 = *(v30 + 8);
    LOBYTE(v45) = v31;
    *(&v45 + 1) = v32;
    result = State.wrappedValue.getter();
    if ((LOBYTE(v43) & 1) == 0)
    {
      if (qword_10025A730 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      sub_10000F34C(v33, qword_100276FF8);
      sub_100130728(a2, v7);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *&v45 = v37;
        *v36 = 134218242;
        *(v36 + 4) = v14;
        *(v36 + 12) = 2080;
        v38 = &v7[v4[9]];
        v39 = *v38;
        v40 = v38[1];

        sub_1001319FC(v7, type metadata accessor for PreferredContentSizeModifier);
        v41 = sub_10002510C(v39, v40, &v45);

        *(v36 + 14) = v41;
        _os_log_impl(&_mh_execute_header, v34, v35, "onGeometryChange  preferredContentSizeChanged %f from %s", v36, 0x16u);
        sub_10000F4B4(v37);
      }

      else
      {

        sub_1001319FC(v7, type metadata accessor for PreferredContentSizeModifier);
      }

      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        [result preferredContentSizeChanged:{v13, v14}];
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_10012E910(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v68 = *(v2 - 8);
  v69 = v2;
  v3 = *(v68 + 64);
  __chkstk_darwin(v2);
  v66 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for DispatchQoS();
  v65 = *(v67 - 8);
  v5 = *(v65 + 64);
  __chkstk_darwin(v67);
  v64 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PreferredContentSizeModifier(0);
  v58 = *(v7 - 8);
  v8 = *(v58 + 64);
  __chkstk_darwin(v7);
  v59 = v9;
  v60 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for DispatchTimeInterval();
  v56 = *(v57 - 8);
  v10 = *(v56 + 64);
  __chkstk_darwin(v57);
  v55 = (&v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for DispatchTime();
  v62 = *(v12 - 8);
  v63 = v12;
  v13 = *(v62 + 64);
  v14 = __chkstk_darwin(v12);
  v54 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v61 = &v52 - v16;
  v17 = type metadata accessor for NavigationPath();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v52 - v23;
  v25 = *(v7 + 48);
  v70 = a1;
  v26 = a1 + v25;
  v27 = *v26;
  v28 = *(v26 + 8);
  v29 = *(v26 + 16);
  aBlock = *v26;
  LOBYTE(v72) = v28;
  v73 = v29;
  sub_10000341C(&unk_1002634B0, &qword_1001DAE18);
  State.wrappedValue.getter();
  if (v78 == 1)
  {
    v30 = *(v7 + 28);
    sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
    Binding.wrappedValue.getter();
    v31 = NavigationPath.count.getter();
    (*(v18 + 8))(v24, v17);
    aBlock = v27;
    LOBYTE(v72) = v28;
    v73 = v29;
    v77 = v31;
    v78 = 0;
    State.wrappedValue.setter();
  }

  aBlock = v27;
  LOBYTE(v72) = v28;
  v73 = v29;
  State.wrappedValue.getter();
  v32 = v77;
  v33 = v78;
  v34 = *(v7 + 28);
  sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  v35 = v70;
  Binding.wrappedValue.getter();
  v36 = NavigationPath.count.getter();
  result = (*(v18 + 8))(v22, v17);
  if ((v33 & 1) == 0 && v32 == v36)
  {
    sub_1000081B0(0, &qword_10025D5D0, OS_dispatch_queue_ptr);
    v53 = static OS_dispatch_queue.main.getter();
    v38 = v54;
    static DispatchTime.now()();
    v39 = v55;
    *v55 = 200;
    v40 = v56;
    v41 = v57;
    (*(v56 + 104))(v39, enum case for DispatchTimeInterval.milliseconds(_:), v57);
    v42 = v61;
    + infix(_:_:)();
    (*(v40 + 8))(v39, v41);
    v43 = v63;
    v62 = *(v62 + 8);
    (v62)(v38, v63);
    v44 = v60;
    sub_100130728(v35, v60);
    v45 = (*(v58 + 80) + 16) & ~*(v58 + 80);
    v46 = swift_allocObject();
    sub_1001312E0(v44, v46 + v45, type metadata accessor for PreferredContentSizeModifier);
    v75 = sub_10013121C;
    v76 = v46;
    aBlock = _NSConcreteStackBlock;
    v72 = 1107296256;
    v73 = sub_1001256BC;
    v74 = &unk_10024F6D0;
    v47 = _Block_copy(&aBlock);

    v48 = v64;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_10013124C(&unk_100262460, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000341C(&unk_10025D5E0, &qword_1001DAE20);
    sub_100007120(&qword_100262470, &unk_10025D5E0, &qword_1001DAE20);
    v49 = v66;
    v50 = v69;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v51 = v53;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v47);

    (*(v68 + 8))(v49, v50);
    (*(v65 + 8))(v48, v67);
    return (v62)(v42, v43);
  }

  return result;
}