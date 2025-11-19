uint64_t CollectionPickerContaineeViewController.dataSource(_:confirmDeleteCollections:sourceItem:sourceRect:)()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003C84A0, v2, v1);
}

uint64_t sub_1003C84A0()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1003C86D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003C8770, v6, v5);
}

uint64_t sub_1003C8770()
{
  v1 = v0[2];

  v0[5] = _Block_copy(v1);
  v0[6] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003C8810, v3, v2);
}

uint64_t sub_1003C8810()
{
  v1 = *(v0 + 40);

  v1[2](v1, 0);
  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

void sub_1003C89C4(uint64_t a1)
{
  sub_10017A750(a1, v4);
  if (v5)
  {
    sub_100014C84(0, &qword_101922CC0);
    if (swift_dynamicCast())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong collectionPickerContaineeViewController:v1 selectCollection:v3];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1000DB2F4(v4);
  }
}

uint64_t sub_1003C8AB0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[9];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10003AC4C;

  return sub_1003C86D4(v2, v3, v4, v5);
}

char *sub_1003C8BA0()
{
  v1 = type metadata accessor for InterfaceIdiom();
  v38 = *(v1 - 8);
  v2 = v38;
  v39 = v1;
  __chkstk_darwin(v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 2);
  v6 = *(v0 + 3);
  v45 = *v0;
  v46 = v5;
  v47 = v6;
  sub_1000CE6B8(&unk_10191EF28);
  Binding.projectedValue.getter();
  v35 = v42;
  v36 = v41;
  v7 = v44;
  v37 = v43;
  v8 = *(v0 + 5);
  v9 = *(v0 + 48);
  *&v45 = *(v0 + 4);
  *(&v45 + 1) = v8;
  LOBYTE(v46) = v9;
  sub_1000CE6B8(&qword_10191D8E0);
  Binding.projectedValue.getter();
  v10 = v41;
  v31 = v42;
  v32 = v43;
  v11 = type metadata accessor for LibrarySearchBar(0);
  v12 = *(v11 + 28);
  v28 = *(v2 + 16);
  v33 = v4;
  v28(v4, v0 + v12, v1);
  v13 = (v0 + *(v11 + 32));
  v14 = *v13;
  v29 = v13[1];
  v30 = v14;
  v34 = type metadata accessor for LibrarySearchBar.Coordinator(0);
  v15 = objc_allocWithZone(v34);
  v16 = &v15[OBJC_IVAR____TtCV4Maps16LibrarySearchBar11Coordinator_onClearButtonTap];
  *v16 = 0;
  v16[1] = 0;
  v17 = OBJC_IVAR____TtCV4Maps16LibrarySearchBar11Coordinator_textfieldDelegateForwarder;
  *&v15[v17] = [objc_allocWithZone(TextFieldDelegateForwarder) init];
  v18 = &v15[OBJC_IVAR____TtCV4Maps16LibrarySearchBar11Coordinator__text];
  v19 = v35;
  *v18 = v36;
  *(v18 + 1) = v19;
  *(v18 + 2) = v37;
  *(v18 + 3) = v7;
  v20 = &v15[OBJC_IVAR____TtCV4Maps16LibrarySearchBar11Coordinator__isSearching];
  v21 = v31;
  *v20 = v10;
  *(v20 + 1) = v21;
  v20[16] = v32;
  v28(&v15[OBJC_IVAR____TtCV4Maps16LibrarySearchBar11Coordinator_interfaceIdiom], v4, v39);
  v22 = v16[1];
  v37 = *v16;
  v23 = v29;
  v24 = v30;
  *v16 = v30;
  v16[1] = v23;

  sub_1000CD9D4(v24);
  sub_1000D3B90(v37, v22);
  v40.receiver = v15;
  v40.super_class = v34;
  v25 = objc_msgSendSuper2(&v40, "init");
  [*&v25[OBJC_IVAR____TtCV4Maps16LibrarySearchBar11Coordinator_textfieldDelegateForwarder] setForwardingTarget:v25];

  (*(v38 + 8))(v33, v39);
  return v25;
}

id sub_1003C8E9C()
{
  v1 = type metadata accessor for InterfaceIdiom();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(UISearchBar) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_1000CE6B8(&qword_10191EFF8);
  UIViewRepresentableContext.coordinator.getter();
  v6 = v16;
  [v5 setDelegate:v16];

  type metadata accessor for LibrarySearchBar(0);
  static InterfaceIdiom.mac.getter();
  LOBYTE(v6) = static InterfaceIdiom.== infix(_:_:)();
  (*(v2 + 8))(v4, v1);
  [v5 setSearchBarStyle:(v6 & 1) == 0];
  v7 = [objc_allocWithZone(UIImage) init];
  [v5 setBackgroundImage:v7];

  if (*(v0 + 64))
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  [v5 setPlaceholder:v8];

  v9 = [v5 searchTextField];
  [v9 setAutocorrectionType:1];

  v10 = [v5 searchTextField];
  [v10 setSpellCheckingType:1];

  [v5 setReturnKeyType:6];
  [v5 setShowsCancelButton:0 animated:0];
  v11 = [v5 searchTextField];
  UIViewRepresentableContext.coordinator.getter();
  v12 = v16;
  v13 = *&v16[OBJC_IVAR____TtCV4Maps16LibrarySearchBar11Coordinator_textfieldDelegateForwarder];

  [v11 setDelegate:v13];
  return v5;
}

id sub_1003C9168(void *a1)
{
  sub_1000CE6B8(&unk_10191EF28);
  Binding.wrappedValue.getter();
  v2 = String._bridgeToObjectiveC()();

  [a1 setText:v2];

  sub_1000CE6B8(&qword_10191D8E0);
  Binding.wrappedValue.getter();
  v3 = &selRef_becomeFirstResponder;
  if (!v5)
  {
    v3 = &selRef_resignFirstResponder;
  }

  return [a1 *v3];
}

void sub_1003C92D8(void *a1)
{
  v3 = type metadata accessor for InterfaceIdiom();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static InterfaceIdiom.mac.getter();
  v7 = static InterfaceIdiom.== infix(_:_:)();
  v8 = *(v4 + 8);
  v8(v6, v3);
  if (v7 & 1) != 0 || (static InterfaceIdiom.macCatalyst.getter(), v9 = static InterfaceIdiom.== infix(_:_:)(), v8(v6, v3), (v9))
  {
    v10 = [a1 searchTextField];
    v11 = *(v1 + OBJC_IVAR____TtCV4Maps16LibrarySearchBar11Coordinator__isSearching + 8);
    v12 = *(v1 + OBJC_IVAR____TtCV4Maps16LibrarySearchBar11Coordinator__isSearching + 16);
    v14 = *(v1 + OBJC_IVAR____TtCV4Maps16LibrarySearchBar11Coordinator__isSearching);
    v15 = v11;
    v16 = v12;
    sub_1000CE6B8(&qword_10191D8E0);
    Binding.wrappedValue.getter();
    [v10 _setAlwaysShowsClearButtonWhenEmpty:v13[7]];
  }
}

uint64_t sub_1003C957C(void *a1)
{
  v2 = v1;
  v11 = *(v1 + OBJC_IVAR____TtCV4Maps16LibrarySearchBar11Coordinator__text);
  v12 = *(v1 + OBJC_IVAR____TtCV4Maps16LibrarySearchBar11Coordinator__text + 16);
  v13 = *(v1 + OBJC_IVAR____TtCV4Maps16LibrarySearchBar11Coordinator__text + 24);
  sub_1000CE6B8(&unk_10191EF28);
  Binding.wrappedValue.setter();
  v4 = String._bridgeToObjectiveC()();
  [a1 setText:{v4, 0, 0xE000000000000000, v11, v12, v13}];

  LOBYTE(v10) = 0;
  sub_1000CE6B8(&qword_10191D8E0);
  Binding.wrappedValue.setter();
  [a1 resignFirstResponder];
  v5 = v2 + OBJC_IVAR____TtCV4Maps16LibrarySearchBar11Coordinator_onClearButtonTap;
  v6 = *(v2 + OBJC_IVAR____TtCV4Maps16LibrarySearchBar11Coordinator_onClearButtonTap);
  if (v6)
  {
    v7 = *(v5 + 8);

    v6(v8);
    sub_1000D3B90(v6, v7);
  }

  return 0;
}

uint64_t sub_1003C982C()
{
  result = type metadata accessor for InterfaceIdiom();
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

void sub_1003C9930()
{
  sub_1003C9A68(319, &qword_10191EFA0, &type metadata for String, &type metadata accessor for Binding);
  if (v0 <= 0x3F)
  {
    sub_1003C9A68(319, &qword_10191EFA8, &type metadata for Bool, &type metadata accessor for Binding);
    if (v1 <= 0x3F)
    {
      sub_1003C9A68(319, &qword_10190FBF0, &type metadata for String, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        type metadata accessor for InterfaceIdiom();
        if (v3 <= 0x3F)
        {
          sub_10024A7FC();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1003C9A68(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

char *sub_1003C9AC0@<X0>(char **a1@<X8>)
{
  result = sub_1003C8BA0();
  *a1 = result;
  return result;
}

uint64_t sub_1003C9AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1003C9C60(&unk_10191F000);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1003C9B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1003C9C60(&unk_10191F000);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1003C9BE8()
{
  sub_1003C9C60(&unk_10191F000);
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_1003C9C60(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LibrarySearchBar(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1003C9CD0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v67 = a2;
  v65 = sub_1000CE6B8(&qword_10191F088);
  __chkstk_darwin(v65);
  v70 = &object - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v66 = &object - v5;
  v71 = type metadata accessor for CenteredCardHeaderNavigation();
  v69 = *(v71 - 8);
  __chkstk_darwin(v71);
  v68 = &object - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v80 = &object - v8;
  v73 = type metadata accessor for CardHeaderSize();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v64 = &object - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CenteredCardHeaderNavigationViewModel();
  v78 = *(v10 - 8);
  v79 = v10;
  __chkstk_darwin(v10);
  v63 = &object - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v77 = &object - v13;
  v14 = sub_1000CE6B8(&unk_101910FC0);
  __chkstk_darwin(v14 - 8);
  v16 = &object - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &object - v18;
  __chkstk_darwin(v20);
  v22 = &object - v21;
  v23 = type metadata accessor for CardHeaderTextViewModel();
  v75 = *(v23 - 8);
  v76 = v23;
  __chkstk_darwin(v23);
  v62 = &object - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v74 = &object - v26;
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v84._object = 0x8000000101234B20;
  v27._countAndFlagsBits = 0x736956207065654BLL;
  v27._object = 0xEB00000000737469;
  v28._object = 0x8000000101234AF0;
  v84._countAndFlagsBits = 0xD000000000000035;
  v28._countAndFlagsBits = 0xD000000000000023;
  object = NSLocalizedString(_:tableName:bundle:value:comment:)(v28, 0, qword_1019600D8, v27, v84)._object;
  v29 = enum case for MapsDesignAccessibilityString.titleLabel(_:);
  v30 = type metadata accessor for MapsDesignAccessibilityString();
  v31 = *(v30 - 8);
  v32 = *(v31 + 104);
  v32(v22, v29, v30);
  v33 = *(v31 + 56);
  v33(v22, 0, 1, v30);
  v32(v19, enum case for MapsDesignAccessibilityString.subtitleLabel(_:), v30);
  v33(v19, 0, 1, v30);
  v32(v16, enum case for MapsDesignAccessibilityString.tertiaryLabel(_:), v30);
  v33(v16, 0, 1, v30);
  static HorizontalAlignment.center.getter();
  v34 = v74;
  CardHeaderTextViewModel.init(title:titleAXID:subtitle:subtitleAXID:interactiveSubtitle:interactiveSubtitleAXID:alignment:interactiveTitleTapHandler:interactiveSubtitleTapHandler:)();
  (*(v75 + 16))(v62, v34, v76);
  sub_1000CE6B8(&qword_10191D770);
  type metadata accessor for CardButtonViewModel();
  *(swift_allocObject() + 16) = xmmword_1011E1D30;
  v35 = swift_allocObject();
  v36 = *(a1 + 48);
  *(v35 + 48) = *(a1 + 32);
  *(v35 + 64) = v36;
  *(v35 + 80) = *(a1 + 64);
  v37 = *(a1 + 16);
  *(v35 + 16) = *a1;
  *(v35 + 32) = v37;
  sub_1003CADA0(a1, v83);
  static CardButtonViewModel.close(tintColor:enabled:action:)();

  (*(v72 + 104))(v64, enum case for CardHeaderSize.medium(_:), v73);
  v38 = v77;
  CenteredCardHeaderNavigationViewModel.init(textViewModel:visible:leadingButtons:trailingButtons:size:)();
  (*(v78 + 16))(v63, v38, v79);
  v39 = v80;
  CenteredCardHeaderNavigation.init(viewModel:leadingButtonsWidthBinding:trailingButtonsWidthBinding:)();
  v73 = *(a1 + 32);
  v40 = *(a1 + 56);
  v81 = *(a1 + 40);
  v82 = v40;

  sub_1000CE6B8(&qword_101919DF0);
  v41 = State.projectedValue.getter();
  v42 = v83[0];
  v62 = v83[1];
  v64 = v83[2];
  v63 = v83[3];
  v72 = v83[4];
  __chkstk_darwin(v41);
  type metadata accessor for GridButton();
  sub_100235950();
  v43 = v66;
  GridButtonLayout.init(columns:content:)();
  LOBYTE(v38) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v44 = v43 + *(v65 + 36);
  *v44 = v38;
  *(v44 + 8) = v45;
  *(v44 + 16) = v46;
  *(v44 + 24) = v47;
  *(v44 + 32) = v48;
  *(v44 + 40) = 0;
  v49 = v69;
  v50 = *(v69 + 16);
  v51 = v68;
  v52 = v71;
  v50(v68, v39, v71);
  v53 = v70;
  sub_1003CADE0(v43, v70);
  v54 = v67;
  v50(v67, v51, v52);
  v55 = sub_1000CE6B8(&unk_10191F090);
  v56 = &v54[*(v55 + 48)];
  *v56 = v73;
  v56[1] = v42;
  v57 = v64;
  v56[2] = v62;
  v56[3] = v57;
  v58 = v72;
  v56[4] = v63;
  v56[5] = v58;
  sub_1003CADE0(v53, &v54[*(v55 + 64)]);

  sub_100024F64(v43, &qword_10191F088);
  v59 = *(v49 + 8);
  v59(v80, v52);
  (*(v78 + 8))(v77, v79);
  (*(v75 + 8))(v74, v76);
  sub_100024F64(v53, &qword_10191F088);

  return (v59)(v51, v52);
}

uint64_t sub_1003CA70C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v21 = type metadata accessor for UUID();
  v3 = *(v21 - 8);
  __chkstk_darwin(v21);
  v5 = &countAndFlagsBits - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GridButtonViewModel.ButtonProminence();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &countAndFlagsBits - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GridButtonViewModel.ButtonMetrics();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &countAndFlagsBits - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v24._object = 0x8000000101234B90;
  v14._object = 0x8000000101234B60;
  v24._countAndFlagsBits = 0xD000000000000057;
  v14._countAndFlagsBits = 0xD000000000000024;
  v15._countAndFlagsBits = 1702256979;
  v15._object = 0xE400000000000000;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, qword_1019600D8, v15, v24)._countAndFlagsBits;
  (*(v11 + 104))(v13, enum case for GridButtonViewModel.ButtonMetrics.large(_:), v10);
  (*(v7 + 104))(v9, enum case for GridButtonViewModel.ButtonProminence.primary(_:), v6);
  UUID.init()();
  UUID.uuidString.getter();
  (*(v3 + 8))(v5, v21);
  static Color.blue.getter();
  type metadata accessor for GridButtonViewModel();
  swift_allocObject();
  GridButtonViewModel.init(id:title:subtitle:icon:metrics:style:compact:color:progress:leadingIcon:lineLimit:)();
  v16 = swift_allocObject();
  v17 = *(a1 + 48);
  *(v16 + 48) = *(a1 + 32);
  *(v16 + 64) = v17;
  *(v16 + 80) = *(a1 + 64);
  v18 = *(a1 + 16);
  *(v16 + 16) = *a1;
  *(v16 + 32) = v18;
  sub_1003CADA0(a1, v23);
  return GridButton.init(model:tapHandler:)();
}

uint64_t sub_1003CAA9C(uint64_t a1)
{
  sub_1000CE6B8(&qword_101919DF0);
  State.wrappedValue.getter();
  result = v9;
  if (v9)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = 0;
      v6 = (v3 + 32);
      while (1)
      {
        v7 = *v6;
        v6 += 3;
        if (v7 == v8)
        {
          break;
        }

        if (v4 == ++v5)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v5 = -1;
    }

    return (*(a1 + 16))(v5);
  }

  return result;
}

uint64_t sub_1003CAB48()
{
  v1 = type metadata accessor for MapsDesignAccessibilityString();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000CE6B8(&qword_10191F070);
  __chkstk_darwin(v5);
  v7 = v12 - v6;
  v8 = *(v0 + 48);
  v12[2] = *(v0 + 32);
  v12[3] = v8;
  v13 = *(v0 + 64);
  v9 = *(v0 + 16);
  v12[0] = *v0;
  v12[1] = v9;
  *v7 = static HorizontalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v10 = sub_1000CE6B8(&qword_10191F078);
  sub_1003C9CD0(v12, &v7[*(v10 + 44)]);
  strcpy(v4, "OptionsPicker");
  *(v4 + 7) = -4864;
  (*(v2 + 104))(v4, enum case for MapsDesignAccessibilityString.view(_:), v1);
  sub_1003CAD3C();
  View.mapsDesignAXContainer(withID:)();
  (*(v2 + 8))(v4, v1);
  return sub_100024F64(v7, &qword_10191F070);
}

unint64_t sub_1003CAD3C()
{
  result = qword_10191F080;
  if (!qword_10191F080)
  {
    sub_1000D6664(&qword_10191F070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191F080);
  }

  return result;
}

uint64_t sub_1003CADE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_10191F088);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1003CAEE8(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC4Maps27NearbyTransitViewController_nearbyTransitView];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 10) = 0;
  v4 = OBJC_IVAR____TtC4Maps27NearbyTransitViewController_nearbyTransitDeparturesProvider;
  *&v1[v4] = [objc_allocWithZone(type metadata accessor for NearbyTransitDeparturesProvider()) init];
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC4Maps27NearbyTransitViewController_mapView] = 0;
  v1[OBJC_IVAR____TtC4Maps27NearbyTransitViewController_shouldAlwaysPrioritizeUserPosition] = 1;
  *&v1[OBJC_IVAR____TtC4Maps27NearbyTransitViewController_initialMapViewMode] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for NearbyTransitViewController();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id sub_1003CAFF8()
{
  v1 = v0;
  v2 = type metadata accessor for NearbyTransitViewController();
  v16.receiver = v1;
  v16.super_class = v2;
  objc_msgSendSuper2(&v16, "viewDidLoad");
  result = [v1 view];
  if (result)
  {
    v4 = result;
    v5 = String._bridgeToObjectiveC()();
    [v4 setAccessibilityIdentifier:v5];

    sub_1003CCBD4();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_1000CE6B8(&qword_10191F190);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1011E1D30;
    *(v7 + 32) = v2;
    sub_1000CE6B8(&qword_10191F198);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v9 = [ObjCClassFromMetadata appearanceWhenContainedInInstancesOfClasses:isa];

    v10 = [objc_opt_self() clearColor];
    [v9 setBackgroundColor:v10];

    v11 = OBJC_IVAR____TtC4Maps27NearbyTransitViewController_nearbyTransitDeparturesProvider;
    v12 = *&v1[OBJC_IVAR____TtC4Maps27NearbyTransitViewController_nearbyTransitDeparturesProvider];
    v15[3] = v2;
    v15[4] = &off_101616608;
    v15[0] = v1;
    v13 = OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_viewDelegate;
    swift_beginAccess();
    v14 = v12;
    v1;
    sub_1003CCC20(v15, v12 + v13);
    swift_endAccess();

    sub_1003CB214();
    *(*&v1[v11] + OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_delegate + 8) = &off_101616630;
    return swift_unknownObjectWeakAssign();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1003CB214()
{
  v1 = OBJC_IVAR____TtC4Maps27NearbyTransitViewController_mapView;
  v2 = *(v0 + OBJC_IVAR____TtC4Maps27NearbyTransitViewController_mapView);
  if (v2)
  {
    v3 = v2;
    if (![v3 isUserLocationVisible])
    {
      goto LABEL_6;
    }

    v4 = [objc_opt_self() sharedLocationManager];
    if (!v4)
    {
      __break(1u);
      return;
    }

    v5 = v4;
    v6 = [v4 isAuthorizedForPreciseLocation];

    if (v6)
    {
      v21 = *(v0 + OBJC_IVAR____TtC4Maps27NearbyTransitViewController_nearbyTransitDeparturesProvider);
      sub_10015934C();
    }

    else
    {
LABEL_6:

      v7 = *(v0 + v1);
      if (!v7)
      {
        return;
      }

      v21 = v7;
      [v21 centerCoordinate];
      v10 = [objc_allocWithZone(GEOLocation) initWithLatitude:v8 longitude:v9];
      if (v10)
      {
        v11 = v10;
        [v21 _zoomLevel];
        v13 = v12;
        v14 = *(v0 + OBJC_IVAR____TtC4Maps27NearbyTransitViewController_nearbyTransitDeparturesProvider);
        v14[OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_isTrackingUser] = 0;
        v15 = *&v14[OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_requestedLocation];
        *&v14[OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_requestedLocation] = v11;
        v3 = v14;
        v16 = v11;

        v17 = v3 + OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_requestedZoomLevel;
        *v17 = v13;
        v17[8] = 0;
        sub_1001598C0();
      }

      else
      {
        if (qword_101906708 != -1)
        {
          swift_once();
        }

        v18 = type metadata accessor for Logger();
        sub_100021540(v18, qword_10195FFB8);
        v3 = Logger.logObject.getter();
        v19 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v3, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&_mh_execute_header, v3, v19, "Unable to get the center coordinates from mapView when requesting nearby departures", v20, 2u);
        }
      }
    }
  }
}

void *sub_1003CB4D0(char a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for NearbyTransitViewController();
  objc_msgSendSuper2(&v12, "viewWillAppear:", a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC4Maps27NearbyTransitViewController_nearbyTransitDeparturesProvider];
  v4 = OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_isActive;
  v3[OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_isActive] = 1;
  v5 = *&v3[OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_mapItemUpdater];
  if (v5)
  {
    v6 = v3;
    [v5 setActive:1];
    if ((v3[v4] & 1) == 0)
    {
      v7 = *&v6[OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_singleLocationUpdate];
      if (v7)
      {
        [v7 cancel];
      }
    }
  }

  else
  {
    v8 = v3;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v10 = [Strong currentlyDisplayedViewModeForNearbyTransitViewController:v1], result = swift_unknownObjectRelease(), v10 != 3))
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result nearbyTransitViewController:v1 setViewMode:3];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id sub_1003CB660(char a1)
{
  v3 = *&v1[OBJC_IVAR____TtC4Maps27NearbyTransitViewController_nearbyTransitDeparturesProvider];
  v4 = OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_isActive;
  v3[OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_isActive] = 0;
  v5 = *&v3[OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_mapItemUpdater];
  if (v5)
  {
    v6 = v3;
    [v5 setActive:0];
    if (v3[v4])
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = v3;
  }

  v8 = *&v3[OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_singleLocationUpdate];
  if (v8)
  {
    [v8 cancel];
  }

LABEL_7:

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v10 = [Strong currentlyDisplayedViewModeForNearbyTransitViewController:v1], swift_unknownObjectRelease(), v10 != *&v1[OBJC_IVAR____TtC4Maps27NearbyTransitViewController_initialMapViewMode]))
  {
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      [v11 nearbyTransitViewController:v1 setViewMode:*&v1[OBJC_IVAR____TtC4Maps27NearbyTransitViewController_initialMapViewMode]];
      swift_unknownObjectRelease();
    }
  }

  v13.receiver = v1;
  v13.super_class = type metadata accessor for NearbyTransitViewController();
  return objc_msgSendSuper2(&v13, "viewWillDisappear:", a1 & 1);
}

void sub_1003CB7F8(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for NearbyTransitViewController();
  objc_msgSendSuper2(&v7, "viewDidAppear:", a1 & 1);
  +[NearbyTeachableMomentContaineeViewController hasDisplayedNearbyCard]_0();
  v3 = [objc_opt_self() standardUserDefaults];
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 BOOLForKey:v4];

  if ((v5 & 1) == 0 && sub_100277778())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong nearbyTransitViewControllerDidEncounterTeachableMoment:v1];
      swift_unknownObjectRelease();
    }
  }
}

__n128 sub_1003CB944@<Q0>(uint64_t *a1@<X8>)
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for NearbyTransitDeparturesProvider();
  sub_1003CCA38();

  v4 = EnvironmentObject.init()();
  v10 = v5;
  v11 = v4;
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();

  v6 = *(v1 + OBJC_IVAR____TtC4Maps27NearbyTransitViewController_nearbyTransitDeparturesProvider);
  v7 = static ObservableObject.environmentStore.getter();
  a1[3] = sub_1000CE6B8(&qword_10191F100);
  a1[4] = sub_1003CCA90();
  v8 = swift_allocObject();
  *a1 = v8;
  *(v8 + 16) = v12;
  result = v13;
  *(v8 + 24) = v13;
  *(v8 + 40) = v14;
  *(v8 + 48) = v15;
  *(v8 + 56) = v12;
  *(v8 + 64) = v13.n128_u64[0];
  *(v8 + 72) = v11;
  *(v8 + 80) = v10;
  *(v8 + 88) = sub_1003CCA30;
  *(v8 + 96) = v3;
  *(v8 + 104) = v7;
  *(v8 + 112) = v6;
  return result;
}

void sub_1003CBADC()
{
  [objc_opt_self() captureUserAction:4 target:44 value:0];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong view];
    [v1 handleDismissAction:v2];
  }
}

void sub_1003CBBB0()
{
  sub_1003CC998(*(v0 + OBJC_IVAR____TtC4Maps27NearbyTransitViewController_nearbyTransitView), *(v0 + OBJC_IVAR____TtC4Maps27NearbyTransitViewController_nearbyTransitView + 8), *(v0 + OBJC_IVAR____TtC4Maps27NearbyTransitViewController_nearbyTransitView + 16), *(v0 + OBJC_IVAR____TtC4Maps27NearbyTransitViewController_nearbyTransitView + 24), *(v0 + OBJC_IVAR____TtC4Maps27NearbyTransitViewController_nearbyTransitView + 32), *(v0 + OBJC_IVAR____TtC4Maps27NearbyTransitViewController_nearbyTransitView + 40), *(v0 + OBJC_IVAR____TtC4Maps27NearbyTransitViewController_nearbyTransitView + 48), *(v0 + OBJC_IVAR____TtC4Maps27NearbyTransitViewController_nearbyTransitView + 56));

  sub_1000A09E0(v0 + OBJC_IVAR____TtC4Maps27NearbyTransitViewController_nearbyTransitDelegate);
  v1 = *(v0 + OBJC_IVAR____TtC4Maps27NearbyTransitViewController_mapView);
}

id sub_1003CBC38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NearbyTransitViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003CBD24(void *a1, int a2)
{
  v3 = v2;
  v32 = a2;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000CE6B8(&unk_10190A800);
  __chkstk_darwin(v9 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v31 - v13;
  v16 = __chkstk_darwin(v15);
  v18 = &v31 - v17;
  v19 = a1[9];
  v20 = [v19 timeZone];
  if (v20)
  {
    v21 = v20;
    static TimeZone._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = type metadata accessor for TimeZone();
    (*(*(v22 - 8) + 56))(v14, 0, 1, v22);
  }

  else
  {
    v23 = type metadata accessor for TimeZone();
    (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
  }

  sub_1003CCC90(v14, v18);
  sub_1003CC058(v3, a1, v8);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    v31 = v5;
    sub_1003CCD00(v18, v11);
    v26 = type metadata accessor for TimeZone();
    v27 = *(v26 - 8);
    isa = 0;
    if ((*(v27 + 48))(v11, 1, v26) != 1)
    {
      isa = TimeZone._bridgeToObjectiveC()().super.isa;
      (*(v27 + 8))(v11, v26);
    }

    v29 = Date._bridgeToObjectiveC()().super.isa;
    [v25 nearbyTransitViewController:v3 didSelect:v19 timeZone:isa scheduledWindowStart:v29 includeDirections:v32 & 1];
    swift_unknownObjectRelease();

    v5 = v31;
  }

  (*(v6 + 8))(v8, v5);
  return sub_100024F64(v18, &unk_10190A800);
}

uint64_t sub_1003CC058@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  v13 = *(a1 + OBJC_IVAR____TtC4Maps27NearbyTransitViewController_nearbyTransitDeparturesProvider);
  swift_getKeyPath();
  swift_getKeyPath();
  v14 = v13;
  static Published.subscript.getter();

  v15 = a2[1];
  if ((v15 & 0x2000000000000000) != 0)
  {
    if ((v15 & 0xF00000000000000) != 0)
    {
      return (*(v7 + 32))(a3, v12, v6);
    }
  }

  else if ((*a2 & 0xFFFFFFFFFFFFLL) != 0)
  {
    return (*(v7 + 32))(a3, v12, v6);
  }

  v16 = a2[9];
  isa = Date._bridgeToObjectiveC()().super.isa;
  v18 = [v16 serviceResumesAfterDate:isa];

  if (v18)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v7 + 8))(v12, v6);
    v12 = v9;
  }

  return (*(v7 + 32))(a3, v12, v6);
}

uint64_t sub_1003CC234()
{
  v1 = *v0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    sub_1000CE6B8(&unk_10190A7F0);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v3 nearbyTransitViewController:v1 select:isa];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1003CC3B0(void *a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC4Maps27NearbyTransitViewController_nearbyTransitView];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 2) = 0u;
  *(v5 + 3) = 0u;
  *(v5 + 4) = 0u;
  *(v5 + 10) = 0;
  v6 = OBJC_IVAR____TtC4Maps27NearbyTransitViewController_nearbyTransitDeparturesProvider;
  *&v2[v6] = [objc_allocWithZone(type metadata accessor for NearbyTransitDeparturesProvider()) init];
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC4Maps27NearbyTransitViewController_mapView;
  *&v2[OBJC_IVAR____TtC4Maps27NearbyTransitViewController_mapView] = 0;
  v8 = OBJC_IVAR____TtC4Maps27NearbyTransitViewController_shouldAlwaysPrioritizeUserPosition;
  v2[OBJC_IVAR____TtC4Maps27NearbyTransitViewController_shouldAlwaysPrioritizeUserPosition] = 1;
  *&v2[v7] = a1;
  *&v2[OBJC_IVAR____TtC4Maps27NearbyTransitViewController_initialMapViewMode] = a2;
  v9 = objc_opt_self();
  v10 = a1;
  v11 = [v9 standardUserDefaults];
  v12 = String._bridgeToObjectiveC()();
  LOBYTE(v6) = [v11 BOOLForKey:v12];

  v2[v8] = v6 ^ 1;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for NearbyTransitViewController();
  return objc_msgSendSuper2(&v14, "initWithNibName:bundle:", 0, 0);
}

void sub_1003CC508(id a1)
{
  v2 = v1;
  if (*(v1 + OBJC_IVAR____TtC4Maps27NearbyTransitViewController_shouldAlwaysPrioritizeUserPosition) != 1 || ![a1 isUserLocationVisible])
  {
    goto LABEL_7;
  }

  v4 = [objc_opt_self() sharedLocationManager];
  if (!v4)
  {
    __break(1u);
    return;
  }

  v5 = v4;
  v6 = [v4 isAuthorizedForPreciseLocation];

  if (v6)
  {
    v7 = *(v2 + OBJC_IVAR____TtC4Maps27NearbyTransitViewController_nearbyTransitDeparturesProvider);
    if (v7[OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_isTrackingUser])
    {
      return;
    }

    oslog = v7;
    sub_10015934C();
  }

  else
  {
LABEL_7:
    if ([a1 userTrackingMode] - 1 < 2)
    {
      return;
    }

    if (qword_101906708 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100021540(v8, qword_10195FFB8);
    v9 = a1;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v9;
      *v13 = v9;
      v14 = v9;
      _os_log_impl(&_mh_execute_header, v10, v11, "changed visible region on mapview: %@", v12, 0xCu);
      sub_100024F64(v13, &qword_1019144F0);
    }

    [v9 centerCoordinate];
    v17 = [objc_allocWithZone(GEOLocation) initWithLatitude:v15 longitude:v16];
    if (v17)
    {
      v18 = v17;
      [v9 _zoomLevel];
      v20 = v19;
      v21 = *(v2 + OBJC_IVAR____TtC4Maps27NearbyTransitViewController_nearbyTransitDeparturesProvider);
      v21[OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_isTrackingUser] = 0;
      v22 = *&v21[OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_requestedLocation];
      *&v21[OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_requestedLocation] = v18;
      oslog = v21;
      v23 = v18;

      v24 = oslog + OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_requestedZoomLevel;
      *v24 = v20;
      v24[8] = 0;
      sub_1001598C0();
    }

    else
    {
      oslog = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(oslog, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, oslog, v25, "Unable to get updated center coordinates from mapView", v26, 2u);
      }
    }
  }
}

void sub_1003CC874(uint64_t a1)
{
  if ((a1 - 1) <= 1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC4Maps27NearbyTransitViewController_nearbyTransitDeparturesProvider);
    if ((*(v2 + OBJC_IVAR____TtC4Maps31NearbyTransitDeparturesProvider_isTrackingUser) & 1) == 0)
    {
      v3 = v2;
      sub_10015934C();
    }
  }

  if (qword_101906708 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100021540(v4, qword_10195FFB8);
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v5, "Map mode switched to tracking, requesting the data provider to use the user location instead", v6, 2u);
  }
}

void sub_1003CC998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (a2)
  {

    swift_unknownObjectRelease();
  }
}

unint64_t sub_1003CCA38()
{
  result = qword_10191D790;
  if (!qword_10191D790)
  {
    type metadata accessor for NearbyTransitDeparturesProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191D790);
  }

  return result;
}

unint64_t sub_1003CCA90()
{
  result = qword_10191F108;
  if (!qword_10191F108)
  {
    sub_1000D6664(&qword_10191F100);
    sub_1003CCB1C();
    sub_1003CCB70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191F108);
  }

  return result;
}

unint64_t sub_1003CCB1C()
{
  result = qword_10191F110;
  if (!qword_10191F110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191F110);
  }

  return result;
}

unint64_t sub_1003CCB70()
{
  result = qword_10191F118;
  if (!qword_10191F118)
  {
    sub_1000D6664(&qword_10191F120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191F118);
  }

  return result;
}

unint64_t sub_1003CCBD4()
{
  result = qword_10191F128;
  if (!qword_10191F128)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10191F128);
  }

  return result;
}

uint64_t sub_1003CCC20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_10190D330);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003CCC90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&unk_10190A800);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003CCD00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&unk_10190A800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1003CCD94(char *a1, uint64_t a2, void *a3)
{
  v3 = *&a1[*a3];
  v4 = a1;
  v5 = [v3 text];
  if (v5)
  {
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = String._bridgeToObjectiveC()();
  }

  else
  {

    v7 = 0;
  }

  return v7;
}

void sub_1003CCE40(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = *&a1[*a4];
    v7 = a1;
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = *&a1[*a4];
    v8 = a1;
    v9 = 0;
  }

  [v6 setText:v9];
}

void sub_1003CCF78(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC4Maps14EmptyStateView_imageView);
  v4 = OBJC_IVAR____TtC4Maps14EmptyStateView_image;
  [v3 setImage:*(v1 + OBJC_IVAR____TtC4Maps14EmptyStateView_image)];
  [v3 setHidden:*(v1 + v4) == 0];
  v5 = *(v1 + v4);
  if (a1)
  {
    if (v5)
    {
      return;
    }
  }

  else if (!v5)
  {
    return;
  }

  v6 = objc_opt_self();
  sub_10009B534();

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v6 deactivateConstraints:isa];

  v8 = Array._bridgeToObjectiveC()().super.isa;

  [v6 activateConstraints:v8];
}

void sub_1003CD114(char *a1, uint64_t a2, void *a3, void *a4, void (*a5)(id))
{
  v9 = *&a1[*a4];
  *&a1[*a4] = a3;
  v7 = a3;
  v8 = a1;
  a5(v9);
}

void sub_1003CD194(void *a1)
{
  if (a1)
  {
    [a1 removeFromSuperview];
  }

  v2 = *&v1[OBJC_IVAR____TtC4Maps14EmptyStateView_button];
  if (v2)
  {
    v3 = v2;
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v1 addSubview:v3];
    v4 = objc_opt_self();
    v5 = OBJC_IVAR____TtC4Maps14EmptyStateView__bottomVerticalConstraints;
    sub_10009B534();

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v4 deactivateConstraints:isa];

    sub_1000CE6B8(&qword_101908400);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1011E47C0;
    v8 = [v3 centerXAnchor];
    v9 = [v1 centerXAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];

    *(v7 + 32) = v10;
    v11 = [v3 leadingAnchor];
    v12 = [v1 leadingAnchor];
    v13 = [v11 constraintGreaterThanOrEqualToAnchor:v12];

    *(v7 + 40) = v13;
    v14 = [v3 trailingAnchor];

    v15 = [v1 trailingAnchor];
    v16 = [v14 constraintLessThanOrEqualToAnchor:v15];

    *(v7 + 48) = v16;
    v17 = Array._bridgeToObjectiveC()().super.isa;

    [v4 activateConstraints:v17];

    *&v1[v5] = sub_1003CD50C();

    v21 = Array._bridgeToObjectiveC()().super.isa;

    [v4 activateConstraints:v21];
  }

  else
  {
    v18 = objc_opt_self();
    v19 = OBJC_IVAR____TtC4Maps14EmptyStateView__bottomVerticalConstraints;
    sub_10009B534();

    v20 = Array._bridgeToObjectiveC()().super.isa;

    [v18 deactivateConstraints:v20];

    *&v1[v19] = sub_1003CD50C();

    v21 = Array._bridgeToObjectiveC()().super.isa;

    [v18 activateConstraints:v21];
  }
}

uint64_t sub_1003CD50C()
{
  v1 = *&v0[OBJC_IVAR____TtC4Maps14EmptyStateView_button];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC4Maps14EmptyStateView_disclosureTitle + 8];
    sub_1000CE6B8(&qword_101908400);
    if (v2)
    {
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_1011E47C0;
      v4 = v1;
      v5 = [v4 topAnchor];
      v6 = [*&v0[OBJC_IVAR____TtC4Maps14EmptyStateView_subtitleLabel] bottomAnchor];
      v7 = [v5 constraintEqualToAnchor:v6 constant:12.0];

      *(v3 + 32) = v7;
      v8 = OBJC_IVAR____TtC4Maps14EmptyStateView_disclosureView;
      v9 = [*&v0[OBJC_IVAR____TtC4Maps14EmptyStateView_disclosureView] topAnchor];
      v10 = [v4 bottomAnchor];

      v11 = [v9 constraintEqualToAnchor:v10 constant:16.0];
      *(v3 + 40) = v11;
      v12 = [*&v0[v8] bottomAnchor];
      v13 = [v0 bottomAnchor];
      v14 = [v12 constraintEqualToAnchor:v13];

      *(v3 + 48) = v14;
    }

    else
    {
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_1011E4FD0;
      v4 = v1;
      v23 = [v4 topAnchor];
      v24 = [*&v0[OBJC_IVAR____TtC4Maps14EmptyStateView_subtitleLabel] bottomAnchor];
      v25 = [v23 constraintEqualToAnchor:v24 constant:12.0];

      *(v3 + 32) = v25;
      v26 = [v4 bottomAnchor];

      v27 = [v0 bottomAnchor];
      v28 = [v26 constraintEqualToAnchor:v27];

      *(v3 + 40) = v28;
    }
  }

  else
  {
    v15 = *&v0[OBJC_IVAR____TtC4Maps14EmptyStateView_disclosureTitle + 8];
    sub_1000CE6B8(&qword_101908400);
    if (v15)
    {
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_1011E4FD0;
      v16 = OBJC_IVAR____TtC4Maps14EmptyStateView_disclosureView;
      v17 = [*&v0[OBJC_IVAR____TtC4Maps14EmptyStateView_disclosureView] topAnchor];
      v18 = [*&v0[OBJC_IVAR____TtC4Maps14EmptyStateView_subtitleLabel] bottomAnchor];
      v19 = [v17 constraintEqualToAnchor:v18 constant:16.0];

      *(v3 + 32) = v19;
      v20 = [*&v0[v16] bottomAnchor];
      v21 = [v0 bottomAnchor];
      v22 = [v20 constraintEqualToAnchor:v21];

      *(v3 + 40) = v22;
    }

    else
    {
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_1011E47B0;
      v29 = [*&v0[OBJC_IVAR____TtC4Maps14EmptyStateView_subtitleLabel] bottomAnchor];
      v30 = [v0 bottomAnchor];
      v31 = [v29 constraintEqualToAnchor:v30];

      *(v3 + 32) = v31;
    }
  }

  return v3;
}

void sub_1003CD9AC()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC4Maps14EmptyStateView_disclosureTitle;
  v3 = OBJC_IVAR____TtC4Maps14EmptyStateView_disclosureModel;
  swift_beginAccess();

  UIListContentConfiguration.text.setter();
  swift_endAccess();
  v4 = OBJC_IVAR____TtC4Maps14EmptyStateView_disclosureView;
  v5 = *(v0 + OBJC_IVAR____TtC4Maps14EmptyStateView_disclosureView);
  v6 = type metadata accessor for UIListContentConfiguration();
  v13[3] = v6;
  v13[4] = &protocol witness table for UIListContentConfiguration;
  v7 = sub_10001A848(v13);
  (*(*(v6 - 8) + 16))(v7, v1 + v3, v6);
  v8 = v5;
  UITableViewCell.contentConfiguration.setter();

  [*(v1 + v4) setHidden:*(v2 + 8) == 0];
  v9 = objc_opt_self();
  v10 = OBJC_IVAR____TtC4Maps14EmptyStateView__bottomVerticalConstraints;
  sub_10009B534();

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v9 deactivateConstraints:isa];

  *(v1 + v10) = sub_1003CD50C();

  v12 = Array._bridgeToObjectiveC()().super.isa;

  [v9 activateConstraints:v12];
}

void sub_1003CDB94(char *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t))
{
  if (a3)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v10 = &a1[*a4];
  *v10 = v8;
  v10[1] = v9;
  v12 = a1;

  a5(v11);
}

void sub_1003CDC24()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC4Maps14EmptyStateView_disclosureModel;
  swift_beginAccess();

  UIListContentConfiguration.secondaryText.setter();
  swift_endAccess();
  v3 = *(v0 + OBJC_IVAR____TtC4Maps14EmptyStateView_disclosureView);
  v4 = type metadata accessor for UIListContentConfiguration();
  v7[3] = v4;
  v7[4] = &protocol witness table for UIListContentConfiguration;
  v5 = sub_10001A848(v7);
  (*(*(v4 - 8) + 16))(v5, v1 + v2, v4);
  v6 = v3;
  UITableViewCell.contentConfiguration.setter();
}

id sub_1003CDE8C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC4Maps14EmptyStateView_titleLabel;
  *&v4[v9] = [objc_allocWithZone(UILabel) init];
  v10 = OBJC_IVAR____TtC4Maps14EmptyStateView_subtitleLabel;
  *&v4[v10] = [objc_allocWithZone(UILabel) init];
  v11 = OBJC_IVAR____TtC4Maps14EmptyStateView_imageView;
  *&v4[v11] = [objc_allocWithZone(UIImageView) init];
  static UIListContentConfiguration.valueCell()();
  v12 = OBJC_IVAR____TtC4Maps14EmptyStateView_disclosureView;
  *&v4[v12] = [objc_allocWithZone(UITableViewCell) init];
  *&v4[OBJC_IVAR____TtC4Maps14EmptyStateView_imageConstraints] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC4Maps14EmptyStateView_noImageConstraints] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC4Maps14EmptyStateView__bottomVerticalConstraints] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC4Maps14EmptyStateView_image] = 0;
  *&v4[OBJC_IVAR____TtC4Maps14EmptyStateView_button] = 0;
  v13 = &v4[OBJC_IVAR____TtC4Maps14EmptyStateView_disclosureTitle];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v4[OBJC_IVAR____TtC4Maps14EmptyStateView_disclosureSubtitle];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v4[OBJC_IVAR____TtC4Maps14EmptyStateView_disclosureAction];
  v16 = type metadata accessor for EmptyStateView();
  *v15 = 0;
  *(v15 + 1) = 0;
  v19.receiver = v4;
  v19.super_class = v16;
  v17 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  sub_1003CE024();
  sub_1003CE720();

  return v17;
}

uint64_t sub_1003CE024()
{
  v1 = v0;
  v2 = sub_1000CE6B8(&qword_10191F218);
  __chkstk_darwin(v2 - 8);
  v43 = &v40 - v3;
  v4 = type metadata accessor for UIBackgroundConfiguration();
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = __chkstk_darwin(v4);
  v40 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v0[OBJC_IVAR____TtC4Maps14EmptyStateView_titleLabel];
  [v0 addSubview:{v7, v5}];
  v8 = *&v0[OBJC_IVAR____TtC4Maps14EmptyStateView_subtitleLabel];
  [v0 addSubview:v8];
  v9 = *&v0[OBJC_IVAR____TtC4Maps14EmptyStateView_imageView];
  [v1 addSubview:v9];
  v10 = OBJC_IVAR____TtC4Maps14EmptyStateView_disclosureView;
  [v1 addSubview:*&v1[OBJC_IVAR____TtC4Maps14EmptyStateView_disclosureView]];
  v11 = String._bridgeToObjectiveC()();
  [v7 setAccessibilityIdentifier:v11];

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setTextAlignment:1];
  [v7 setNumberOfLines:0];
  v12 = objc_opt_self();
  v13 = [v12 _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleTitle2 weight:UIFontWeightSemibold];
  [v7 setFont:v13];

  v14 = objc_opt_self();
  v15 = [v14 labelColor];
  [v7 setTextColor:v15];

  [v7 setAdjustsFontForContentSizeCategory:1];
  v16 = String._bridgeToObjectiveC()();
  [v8 setAccessibilityIdentifier:v16];

  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 setTextAlignment:1];
  v17 = [v12 _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleBody weight:UIFontWeightRegular];
  [v8 setFont:v17];

  v18 = [v14 secondaryLabelColor];
  [v8 setTextColor:v18];

  [v8 setNumberOfLines:0];
  [v8 setAdjustsFontForContentSizeCategory:1];
  v19 = String._bridgeToObjectiveC()();
  [v9 setAccessibilityIdentifier:v19];

  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 setHidden:1];
  v20 = [v14 secondaryLabelColor];
  [v9 setTintColor:v20];

  v21 = [v12 systemFontOfSize:48.0 weight:UIFontWeightMedium];
  v22 = [objc_opt_self() configurationWithFont:v21 scale:2];

  [v9 setPreferredSymbolConfiguration:v22];
  v23 = [v14 secondaryLabelColor];
  v24 = OBJC_IVAR____TtC4Maps14EmptyStateView_disclosureModel;
  swift_beginAccess();
  v25 = UIListContentConfiguration.secondaryTextProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v25(v44, 0);
  swift_endAccess();
  v26 = *&v1[v10];
  v27 = String._bridgeToObjectiveC()();
  [v26 setAccessibilityIdentifier:v27];

  [*&v1[v10] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v1[v10] setHidden:1];
  [*&v1[v10] setAccessoryType:1];
  [*&v1[v10] setSelectionStyle:2];
  v28 = *&v1[v10];
  v29 = type metadata accessor for UIListContentConfiguration();
  v44[3] = v29;
  v44[4] = &protocol witness table for UIListContentConfiguration;
  v30 = sub_10001A848(v44);
  (*(*(v29 - 8) + 16))(v30, &v1[v24], v29);
  v31 = v28;
  UITableViewCell.contentConfiguration.setter();

  v32 = v40;
  static UIBackgroundConfiguration.listCell()();
  UIBackgroundConfiguration.cornerRadius.setter();
  v33 = *&v1[v10];
  v35 = v41;
  v34 = v42;
  v36 = v43;
  (*(v41 + 16))(v43, v32, v42);
  (*(v35 + 56))(v36, 0, 1, v34);
  v37 = v33;
  UITableViewCell.backgroundConfiguration.setter();

  v38 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v1 action:"_pressedDisclosureCell"];
  [*&v1[v10] addGestureRecognizer:v38];

  return (*(v35 + 8))(v32, v34);
}

void sub_1003CE720()
{
  v51 = objc_opt_self();
  sub_1000CE6B8(&qword_101908400);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1011FF0C0;
  v2 = *&v0[OBJC_IVAR____TtC4Maps14EmptyStateView_imageView];
  v3 = [v2 topAnchor];
  v4 = [v0 topAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];

  *(v1 + 32) = v5;
  v6 = [v2 centerXAnchor];
  v7 = [v0 centerXAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];

  *(v1 + 40) = v8;
  v9 = [v2 leadingAnchor];
  v10 = [v0 leadingAnchor];
  v11 = [v9 constraintGreaterThanOrEqualToAnchor:v10];

  *(v1 + 48) = v11;
  v12 = [v2 trailingAnchor];
  v13 = [v0 trailingAnchor];
  v14 = [v12 constraintLessThanOrEqualToAnchor:v13];

  *(v1 + 56) = v14;
  v15 = *&v0[OBJC_IVAR____TtC4Maps14EmptyStateView_titleLabel];
  v16 = [v15 leadingAnchor];
  v17 = [v0 leadingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:16.0];

  *(v1 + 64) = v18;
  v19 = [v15 trailingAnchor];
  v20 = [v0 trailingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:-16.0];

  *(v1 + 72) = v21;
  v22 = *&v0[OBJC_IVAR____TtC4Maps14EmptyStateView_subtitleLabel];
  v23 = [v22 topAnchor];
  v24 = [v15 bottomAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:2.0];

  *(v1 + 80) = v25;
  v26 = [v22 leadingAnchor];
  v27 = [v0 leadingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:16.0];

  *(v1 + 88) = v28;
  v29 = [v22 trailingAnchor];
  v30 = [v0 trailingAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:-16.0];

  *(v1 + 96) = v31;
  v32 = OBJC_IVAR____TtC4Maps14EmptyStateView_disclosureView;
  v33 = [*&v0[OBJC_IVAR____TtC4Maps14EmptyStateView_disclosureView] leadingAnchor];
  v34 = [v0 leadingAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];

  *(v1 + 104) = v35;
  v36 = [*&v0[v32] trailingAnchor];
  v37 = [v0 trailingAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];

  *(v1 + 112) = v38;
  v39 = [*&v0[v32] heightAnchor];
  v40 = [v39 constraintEqualToConstant:44.0];

  *(v1 + 120) = v40;
  sub_10009B534();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v51 activateConstraints:isa];

  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1011E47B0;
  v43 = [v15 topAnchor];
  v44 = [v0 topAnchor];
  v45 = [v43 constraintEqualToAnchor:v44];

  *(v42 + 32) = v45;
  *&v0[OBJC_IVAR____TtC4Maps14EmptyStateView_noImageConstraints] = v42;

  v46 = Array._bridgeToObjectiveC()().super.isa;

  [v51 activateConstraints:v46];

  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1011E47B0;
  v48 = [v15 topAnchor];
  v49 = [v2 bottomAnchor];
  v50 = [v48 constraintEqualToAnchor:v49 constant:12.0];

  *(v47 + 32) = v50;
  *&v0[OBJC_IVAR____TtC4Maps14EmptyStateView_imageConstraints] = v47;

  *&v0[OBJC_IVAR____TtC4Maps14EmptyStateView__bottomVerticalConstraints] = sub_1003CD50C();

  v52 = Array._bridgeToObjectiveC()().super.isa;

  [v51 activateConstraints:v52];
}

id sub_1003CEEA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmptyStateView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for EmptyStateView()
{
  result = qword_10191F208;
  if (!qword_10191F208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

{
  return type metadata accessor for EmptyStateView();
}

uint64_t sub_1003CF068()
{
  result = type metadata accessor for UIListContentConfiguration();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_1003CF1B8()
{
  v1 = OBJC_IVAR____TtC4Maps14EmptyStateView_titleLabel;
  *(v0 + v1) = [objc_allocWithZone(UILabel) init];
  v2 = OBJC_IVAR____TtC4Maps14EmptyStateView_subtitleLabel;
  *(v0 + v2) = [objc_allocWithZone(UILabel) init];
  v3 = OBJC_IVAR____TtC4Maps14EmptyStateView_imageView;
  *(v0 + v3) = [objc_allocWithZone(UIImageView) init];
  static UIListContentConfiguration.valueCell()();
  v4 = OBJC_IVAR____TtC4Maps14EmptyStateView_disclosureView;
  *(v0 + v4) = [objc_allocWithZone(UITableViewCell) init];
  *(v0 + OBJC_IVAR____TtC4Maps14EmptyStateView_imageConstraints) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC4Maps14EmptyStateView_noImageConstraints) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC4Maps14EmptyStateView__bottomVerticalConstraints) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC4Maps14EmptyStateView_image) = 0;
  *(v0 + OBJC_IVAR____TtC4Maps14EmptyStateView_button) = 0;
  v5 = (v0 + OBJC_IVAR____TtC4Maps14EmptyStateView_disclosureTitle);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v0 + OBJC_IVAR____TtC4Maps14EmptyStateView_disclosureSubtitle);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v0 + OBJC_IVAR____TtC4Maps14EmptyStateView_disclosureAction);
  *v7 = 0;
  v7[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1003CF358(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for PlaceSummaryViewModelUnit(0) - 8;
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a2 + 16);
  v14 = 0;
  if (v22)
  {
    v15 = (v4 + 8);
    v16 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v21 = *(v11 + 72);
    while (1)
    {
      sub_1003D1C5C(v16, v13);
      sub_100221080(v9);
      sub_100221080(v6);
      v17 = static UUID.== infix(_:_:)();
      v18 = *v15;
      (*v15)(v6, v3);
      v18(v9, v3);
      sub_1003D1CC0(v13);
      if (v17)
      {
        break;
      }

      ++v14;
      v16 += v21;
      if (v22 == v14)
      {
        return 0;
      }
    }
  }

  return v14;
}

uint64_t sub_1003CF5BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v5 = *(a2 + 16);
  if (!v5)
  {
    return 0;
  }

  v9 = *(a3(0) - 8);
  v10 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  sub_1003D1D1C(a4, a5);
  v12 = 0;
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    ++v12;
    v10 += v11;
    if (v5 == v12)
    {
      return 0;
    }
  }

  return v12;
}

void sub_1003CF6D0(unint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return;
  }

  v3 = a1;
  v4 = 0;
  v5 = a2 + 32;
  v6 = *a1;
  v7 = a1[1];
  v207 = a2 + 32;
  v208 = *(a2 + 16);
  v205 = v7;
  v206 = *a1;
  while (1)
  {
    v8 = (v5 + 80 * v4);
    v9 = v8[1];
    v237 = *v8;
    v238 = v9;
    v10 = v8[3];
    v239 = v8[2];
    *v240 = v10;
    *&v240[9] = *(v8 + 57);
    if (v237 != __PAIR128__(v7, v6) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_6;
    }

    v11 = v238;
    v12 = v3[2];
    v13 = *(v238 + 16);
    if (v13 != *(v12 + 16))
    {
      goto LABEL_6;
    }

    v209 = v4;
    if (v13)
    {
      if (v238 != v12)
      {
        break;
      }
    }

    sub_100160488(&v237, v241);
LABEL_42:
    if (v239 == (a1[4] & 1) && v240[0] == (a1[6] & 1) && (*&v240[8] == *(a1 + 7) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) && v240[24] == (a1[9] & 1))
    {
      v39 = *(&v239 + 1);
      v40 = *(&v239 + 1) >> 62;
      if (*(&v239 + 1) >> 62)
      {
        v41 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v41 = *((*(&v239 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v42 = a1[5];
      v43 = v42 >> 62;
      if (v42 >> 62)
      {
        if (v41 == _CocoaArrayWrapper.endIndex.getter())
        {
LABEL_51:
          if (v40)
          {
            v44 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v44 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (!v44)
          {
LABEL_306:
            sub_1001604E4(&v237);
            return;
          }

          v45 = 0;
          v230 = v39 & 0xFFFFFFFFFFFFFF8;
          v232 = v39 & 0xC000000000000001;
          v228 = v39 + 32;
          v234 = v42 & 0xFFFFFFFFFFFFFF8;
          v199 = v42 >> 62;
          v222 = v42 + 32;
          v224 = v42 & 0xC000000000000001;
          v198 = v42;
          v203 = v44;
          while (2)
          {
            if (v232)
            {
              v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v47 = v45 + 1;
              if (__OFADD__(v45, 1))
              {
                goto LABEL_310;
              }
            }

            else
            {
              if (v45 >= *(v230 + 16))
              {
                goto LABEL_311;
              }

              v46 = *(v228 + 8 * v45);
              swift_unknownObjectRetain();
              v47 = v45 + 1;
              if (__OFADD__(v45, 1))
              {
                goto LABEL_310;
              }
            }

            if (v43)
            {
              v48 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v48 = *(v234 + 16);
            }

            if (v45 == v48)
            {
              sub_1001604E4(&v237);
              swift_unknownObjectRelease();
              return;
            }

            v236 = v47;
            if (v224)
            {
              v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v45 >= *(v234 + 16))
              {
                goto LABEL_312;
              }

              v49 = *(v222 + 8 * v45);
              swift_unknownObjectRetain();
            }

            v50 = v46;
            v51 = v49;
            v52 = v51;
            if (!(v46 | v49))
            {
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              goto LABEL_57;
            }

            if (v50)
            {
              v53 = v49 == 0;
            }

            else
            {
              v53 = 0;
            }

            v54 = v53;
            if (v51)
            {
              v55 = v46 == 0;
            }

            else
            {
              v55 = 0;
            }

            if (v55 || (v54 & 1) != 0 || (v56 = [v50 artworkSourceType], v56 != objc_msgSend(v52, "artworkSourceType")) || (v57 = objc_msgSend(v50, "artworkUseType"), v57 != objc_msgSend(v52, "artworkUseType")))
            {
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              goto LABEL_4;
            }

            v58 = [v50 shieldDataSource];
            v59 = [v52 shieldDataSource];
            v60 = (v58 | v59);
            v61 = v58;
            v62 = v59;
            v226 = v52;
            v213 = v61;
            v215 = v62;
            v217 = v50;
            if (v58 | v59)
            {
              if (v61)
              {
                v63 = v59 == 0;
              }

              else
              {
                v63 = 0;
              }

              v64 = v63;
              if (v62)
              {
                v65 = v58 == 0;
              }

              else
              {
                v65 = 0;
              }

              v66 = v62;
              if (v65 || v64 || (v67 = [v61 shieldType], v67 != objc_msgSend(v66, "shieldType")))
              {

LABEL_292:
                v75 = v215;
LABEL_293:
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();

                v50 = v61;
                v52 = v75;
LABEL_4:

                goto LABEL_5;
              }

              v68 = [v61 shieldText];
              if (v68 || ([v66 shieldText], (v42 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                v60 = [v61 shieldText];
                v50 = [v66 shieldText];
                if (([v60 isEqualToString:v50] & 1) == 0)
                {

                  if (v68)
                  {
                    v66 = v68;
                  }

                  else
                  {
                    v66 = v42;
                  }

                  v52 = v226;
                  v50 = v217;
                  goto LABEL_292;
                }

                v69 = 1;
              }

              else
              {
                v69 = 0;
              }

              [v61 shieldColorString];
              v71 = v70 = v61;
              if (v71 || ([v66 shieldColorString], (v67 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                v72 = [v70 shieldColorString];
                v73 = [v66 shieldColorString];
                v74 = [v72 isEqualToString:v73];

                if (v71)
                {

                  v61 = v213;
                  if (v69)
                  {
                    goto LABEL_103;
                  }

                  goto LABEL_104;
                }
              }

              else
              {
                v74 = 1;
              }

              v61 = v213;
              if (v69)
              {
LABEL_103:
              }

LABEL_104:
              v44 = v203;
              v50 = v217;
              if (v68)
              {

                v75 = v215;
                v52 = v226;
                if ((v74 & 1) == 0)
                {
                  goto LABEL_293;
                }
              }

              else
              {

                v75 = v215;
                v52 = v226;
                if ((v74 & 1) == 0)
                {
                  goto LABEL_293;
                }
              }
            }

            v76 = [v50 iconDataSource];
            v77 = [v52 iconDataSource];
            v78 = v76;
            v79 = v77;
            v80 = v79;
            if (v76 | v77)
            {
              if (v78)
              {
                v81 = v77 == 0;
              }

              else
              {
                v81 = 0;
              }

              v82 = v81;
              if (v79)
              {
                v83 = v76 == 0;
              }

              else
              {
                v83 = 0;
              }

              if (v83 || (v82 & 1) != 0 || (v84 = [v78 iconType], v84 != objc_msgSend(v80, "iconType")) || (v85 = objc_msgSend(v78, "cartoID"), v85 != objc_msgSend(v80, "cartoID")) || (v86 = objc_msgSend(v78, "defaultTransitType"), v86 != objc_msgSend(v80, "defaultTransitType")) || (v87 = objc_msgSend(v78, "iconAttributeKey"), v87 != objc_msgSend(v80, "iconAttributeKey")))
              {
                v97 = v78;
                v98 = v80;
                goto LABEL_300;
              }

              v88 = [v78 iconAttributeValue];
              v89 = [v80 iconAttributeValue];

              if (v88 != v89)
              {
                goto LABEL_301;
              }
            }

            v90 = [v50 iconFallbackShieldDataSource];
            v91 = [v52 iconFallbackShieldDataSource];
            v92 = v90;
            v93 = v91;
            v204 = v80;
            v211 = v92;
            v220 = v93;
            if (v90 | v91)
            {
              if (v92)
              {
                v94 = v91 == 0;
              }

              else
              {
                v94 = 0;
              }

              v95 = v94;
              if (v93)
              {
                v96 = v90 == 0;
              }

              else
              {
                v96 = 0;
              }

              v97 = v92;
              v98 = v93;
              if (v96 || v95 || (v99 = [v92 shieldType], v99 != objc_msgSend(v98, "shieldType")))
              {

                v188 = v98;
                goto LABEL_299;
              }

              v196 = v78;
              v100 = [v92 shieldText];
              if (v100 || ([v98 shieldText], (v42 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                v52 = [v92 shieldText];
                v92 = [v98 shieldText];
                if (([v52 isEqualToString:v92] & 1) == 0)
                {

                  if (v100)
                  {
                    v188 = v100;
                  }

                  else
                  {
                    v188 = v42;
                  }

                  v52 = v226;
                  v50 = v217;
LABEL_299:

LABEL_300:
LABEL_301:
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();

                  v50 = v78;
                  v52 = v80;
                  goto LABEL_4;
                }

                v201 = 1;
              }

              else
              {
                v201 = 0;
              }

              v101 = [v97 shieldColorString];
              if (v101 || ([v220 shieldColorString], (v99 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                v102 = [v97 shieldColorString];
                v103 = [v220 shieldColorString];
                v104 = [v102 isEqualToString:v103];

                if (v101)
                {

                  v80 = v204;
                  v105 = v211;
                  v98 = v220;
                  if (v201)
                  {
                    goto LABEL_146;
                  }

                  goto LABEL_147;
                }

                v80 = v204;
              }

              else
              {
                v104 = 1;
              }

              v105 = v211;
              v98 = v220;
              if (v201)
              {
LABEL_146:
              }

LABEL_147:
              v52 = v226;

              if (v100)
              {
              }

              else
              {
              }

              v44 = v203;
              v78 = v196;
              v50 = v217;
              if ((v104 & 1) == 0)
              {
                v97 = v105;
                goto LABEL_300;
              }
            }

            v106 = [v50 textDataSource];
            v107 = [v52 textDataSource];
            v108 = v106;
            v109 = v107;
            v200 = v109;
            v202 = v108;
            if (!(v106 | v107))
            {
LABEL_152:
              v110 = [v50 hasRoutingIncidentBadge];
              if (v110 != [v52 hasRoutingIncidentBadge])
              {
                goto LABEL_153;
              }

              [v50 accessibilityText];
              v122 = v123 = v50;
              v43 = v199;
              if (v122 || ([v52 accessibilityText], (v110 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                v124 = [v123 accessibilityText];
                v125 = [v52 accessibilityText];
                v111 = [v124 isEqualToString:v125];

                v113 = v213;
                v112 = v215;
                v42 = v198;
                if (!v122)
                {
                  v122 = v110;
                }
              }

              else
              {
                v111 = 1;
                v113 = v213;
                v112 = v215;
                v42 = v198;
                v122 = 0;
              }

LABEL_172:

              v44 = v203;
              v50 = v217;
LABEL_173:

              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              if (!v111)
              {
                goto LABEL_5;
              }

LABEL_57:
              v45 = v236;
              if (v236 == v44)
              {
                goto LABEL_306;
              }

              continue;
            }

            break;
          }

          v114 = v109;
          if (v108)
          {
            v115 = v107 == 0;
          }

          else
          {
            v115 = 0;
          }

          v116 = v115;
          if (v109)
          {
            v117 = v106 == 0;
          }

          else
          {
            v117 = 0;
          }

          if (v117 || v116)
          {

            v111 = 0;
            v122 = v114;
            v113 = v213;
            v112 = v215;
            v42 = v198;
            v43 = v199;
            goto LABEL_172;
          }

          v118 = [v108 text];
          v119 = [v114 text];
          v120 = v118;
          v121 = v119;
          v122 = v121;
          if (!(v118 | v119))
          {

            v50 = v217;
            goto LABEL_152;
          }

          if (v120)
          {
            v126 = v119 == 0;
          }

          else
          {
            v126 = 0;
          }

          v127 = v126;
          if (v121)
          {
            v128 = v118 == 0;
          }

          else
          {
            v128 = 0;
          }

          v43 = v199;
          if (v128 || (v127 & 1) != 0)
          {

            v111 = 0;
            v113 = v213;
            v112 = v215;
            v42 = v198;
            goto LABEL_172;
          }

          v193 = v120;
          v129 = [v120 formatStrings];
          v194 = v122;
          v130 = [v122 formatStrings];
          v131 = v129;
          v132 = v130;
          v133 = &stru_101616700;
          v42 = v198;
          if (v129 | v130)
          {
            if (v131)
            {
              v151 = v130 == 0;
            }

            else
            {
              v151 = 0;
            }

            v152 = v151;
            if (v132)
            {
              v153 = v129 == 0;
            }

            else
            {
              v153 = 0;
            }

            v154 = v132;
            if (v153 || (v152 & 1) != 0 || (v155 = [v131 count], v155 != objc_msgSend(v132, "count")))
            {

              v113 = v213;
              v164 = v193;
              v135 = v194;
LABEL_227:

              v111 = 0;
              v122 = v154;
              v112 = v215;
              goto LABEL_172;
            }

            v195 = v132;
            v197 = v78;
            v135 = v194;
            v244 = 0u;
            v245 = 0u;
            v242 = 0u;
            v243 = 0u;
            v192 = v131;
            v156 = v131;
            v157 = [v156 countByEnumeratingWithState:&v242 objects:v241 count:16];
            if (v157)
            {
              v158 = v157;
              v159 = 0;
              v160 = *v243;
              while (2)
              {
                for (i = 0; i != v158; i = i + 1)
                {
                  if (*v243 != v160)
                  {
                    objc_enumerationMutation(v156);
                  }

                  v162 = *(*(&v242 + 1) + 8 * i);
                  v163 = [v195 objectAtIndexedSubscript:v159];
                  LODWORD(v162) = sub_1003D1D64(v163, v162, v163);

                  if (!v162)
                  {
                    v154 = v195;

                    v43 = v199;
                    v113 = v213;
                    v78 = v197;
                    v131 = v192;
                    v164 = v193;
                    goto LABEL_227;
                  }

                  ++v159;
                }

                v158 = [v156 countByEnumeratingWithState:&v242 objects:v241 count:16];
                if (v158)
                {
                  continue;
                }

                break;
              }
            }

            v43 = v199;
            v52 = v226;
            v134 = v193;
          }

          else
          {
            v192 = v131;
            v195 = v132;
            v197 = v78;

            v134 = v193;
            v135 = v194;
          }

          v136 = [v134 separators];
          v137 = [v135 separators];
          v138 = v136;
          v122 = v137;
          v139 = &stru_101616720;
          if (!(v136 | v137))
          {
            v191 = v138;

            goto LABEL_191;
          }

          if (v138)
          {
            v165 = v137 == 0;
          }

          else
          {
            v165 = 0;
          }

          v166 = v165;
          if (v122)
          {
            v167 = v136 == 0;
          }

          else
          {
            v167 = 0;
          }

          if (v167 || (v166 & 1) != 0 || (v168 = [v138 count], v168 != objc_msgSend(v122, "count")))
          {

            v113 = v213;
            v176 = v192;
          }

          else
          {
            v244 = 0u;
            v245 = 0u;
            v242 = 0u;
            v243 = 0u;
            v191 = v138;
            v143 = v138;
            v169 = [v143 countByEnumeratingWithState:&v242 objects:v241 count:16];
            if (v169)
            {
              v170 = v169;
              v171 = 0;
              v172 = *v243;
              while (2)
              {
                for (j = 0; j != v170; j = j + 1)
                {
                  if (*v243 != v172)
                  {
                    objc_enumerationMutation(v143);
                  }

                  v174 = *(*(&v242 + 1) + 8 * j);
                  v175 = [v122 objectAtIndexedSubscript:v171];
                  LODWORD(v174) = sub_1003D1D64(v175, v174, v175);

                  if (!v174)
                  {

LABEL_278:
                    v43 = v199;
                    goto LABEL_279;
                  }

                  ++v171;
                }

                v170 = [v143 countByEnumeratingWithState:&v242 objects:v241 count:16];
                if (v170)
                {
                  continue;
                }

                break;
              }
            }

            v43 = v199;
            v52 = v226;
LABEL_191:
            v140 = [v193 formatTokens];
            v141 = [v194 formatTokens];
            v142 = v140;
            v143 = v141;
            v144 = &stru_101616760;
            if (!(v140 | v141))
            {
              v189 = v142;

LABEL_193:
              v145 = [v193 alternativeString];
              v146 = [v194 alternativeString];
              v147 = v145 | v146;
              v148 = v145;
              v149 = v146;
              if (v147)
              {
                v150 = [v148 isEqual:v149];
              }

              else
              {
                v150 = 1;
              }

              v44 = v203;
              v78 = v197;
              v50 = v217;
              if (v150)
              {
                goto LABEL_152;
              }

LABEL_153:
              v111 = 0;
              v113 = v213;
              v112 = v215;
              v42 = v198;
              v43 = v199;
              goto LABEL_173;
            }

            if (v142)
            {
              v177 = v141 == 0;
            }

            else
            {
              v177 = 0;
            }

            v178 = v177;
            if (v143)
            {
              v179 = v140 == 0;
            }

            else
            {
              v179 = 0;
            }

            if (!v179 && (v178 & 1) == 0)
            {
              v180 = [v142 count];
              if (v180 == [v143 count])
              {
                v244 = 0u;
                v245 = 0u;
                v242 = 0u;
                v243 = 0u;
                v189 = v142;
                obj = v142;
                v181 = [obj countByEnumeratingWithState:&v242 objects:v241 count:16];
                if (v181)
                {
                  v182 = v181;
                  v183 = 0;
                  v184 = *v243;
                  while (2)
                  {
                    for (k = 0; k != v182; k = k + 1)
                    {
                      if (*v243 != v184)
                      {
                        objc_enumerationMutation(obj);
                      }

                      v186 = *(*(&v242 + 1) + 8 * k);
                      v187 = [v143 objectAtIndexedSubscript:v183];
                      LODWORD(v186) = sub_1003D1DE4(v187, v186, v187);

                      if (!v186)
                      {

                        goto LABEL_278;
                      }

                      ++v183;
                    }

                    v182 = [obj countByEnumeratingWithState:&v242 objects:v241 count:16];
                    if (v182)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v52 = v226;
                goto LABEL_193;
              }
            }

LABEL_279:
            v113 = v213;
            v138 = v191;
            v176 = v192;
          }

          v111 = 0;
          v112 = v215;
          v78 = v197;
          goto LABEL_172;
        }
      }

      else if (v41 == *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_51;
      }
    }

LABEL_5:
    sub_1001604E4(&v237);
    v2 = v208;
    v4 = v209;
    v3 = a1;
    v6 = v206;
    v5 = v207;
    v7 = v205;
LABEL_6:
    if (++v4 == v2)
    {
      return;
    }
  }

  sub_100160488(&v237, v241);
  v14 = 0;
  v15 = 0;
  v214 = v12;
  v216 = v11;
  v212 = v13;
  while (v15 < *(v11 + 16))
  {
    if (v13 == v15)
    {
      goto LABEL_309;
    }

    v16 = *(v11 + v14 + 32);
    v17 = *(v11 + v14 + 40);
    v18 = *(v11 + v14 + 48);
    v19 = *(v11 + v14 + 56);
    v21 = *(v11 + v14 + 64);
    v20 = *(v11 + v14 + 72);
    v233 = *(v11 + v14 + 80);
    v235 = *(v11 + v14 + 88);
    v229 = *(v11 + v14 + 96);
    v221 = *(v11 + v14 + 104);
    v225 = *(v11 + v14 + 112);
    v22 = (v12 + v14);
    v23 = *(v12 + v14 + 32);
    v24 = *(v12 + v14 + 40);
    v25 = *(v12 + v14 + 48);
    v26 = *(v12 + v14 + 56);
    v28 = *(v12 + v14 + 64);
    v27 = *(v12 + v14 + 72);
    v29 = *(v12 + v14 + 80);
    v30 = *(v12 + v14 + 88);
    v231 = v29;
    v227 = v22[12];
    v219 = v22[13];
    v223 = v22[14];
    if (v16 != v23 || v17 != v24)
    {
      v210 = v14;
      v31 = v21;
      v32 = v27;
      v33 = v30;
      v34 = v20;
      v35 = v18;
      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v18 = v35;
      v20 = v34;
      v30 = v33;
      v27 = v32;
      v21 = v31;
      v14 = v210;
      if ((v36 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    if (v19)
    {
      if (!v26)
      {
        goto LABEL_5;
      }

      if (v18 != v25 || v19 != v26)
      {
        v37 = v20;
        v38 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v20 = v37;
        if ((v38 & 1) == 0)
        {
          goto LABEL_5;
        }
      }
    }

    else if (v26)
    {
      goto LABEL_5;
    }

    if ((v21 != v28 || v20 != v27) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_5;
    }

    if (v235)
    {
      if (!v30 || (v233 != v231 || v235 != v30) && ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
      {
        goto LABEL_5;
      }
    }

    else if (v30)
    {
      goto LABEL_5;
    }

    if (v229 != v227 || v225 != v223 || ![v221 isEqual:v219])
    {
      goto LABEL_5;
    }

    ++v15;
    v14 += 88;
    v13 = v212;
    v12 = v214;
    v11 = v216;
    if (v212 == v15)
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_309:
  __break(1u);
LABEL_310:
  __break(1u);
LABEL_311:
  __break(1u);
LABEL_312:
  __break(1u);
}

unint64_t sub_1003D0A80(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v8 = *(a2 + 8 * v7 + 32);
    }

    v9 = v8;
    sub_100014C84(0, a3);
    v10 = static NSObject.== infix(_:_:)();

    if (v10)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t sub_1003D0B88(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
LABEL_19:
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v6 = OBJC_IVAR____TtC4Maps18DirectionsETAModel_mapItem;
      v7 = *(a1 + OBJC_IVAR____TtC4Maps18DirectionsETAModel_showETA);
      do
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_19;
          }

          v8 = *(a2 + 8 * v5 + 32);
        }

        if (v7 == *(v8 + OBJC_IVAR____TtC4Maps18DirectionsETAModel_showETA) && ([*(v8 + OBJC_IVAR____TtC4Maps18DirectionsETAModel_mapItem) isEqual:*(a1 + v6)] & 1) != 0)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          if (!v10)
          {

            return v5;
          }

          goto LABEL_17;
        }

        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_17:

          return v5;
        }

        ++v5;
      }

      while (v5 != v4);
    }
  }

  return 0;
}

void sub_1003D0E40(unint64_t a1)
{
  if (a1)
  {
    if (a1 >> 62)
    {
      v1 = _CocoaArrayWrapper.endIndex.getter();
      if (!v1)
      {
        return;
      }
    }

    else
    {
      v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v1)
      {
        return;
      }
    }

    v33 = v1 - 1;
    if (v1 >= 1)
    {
      v2 = 0;
      v30 = OBJC_IVAR____TtC4Maps25PlaceSummaryETADownloader_etaProviders;
      v31 = OBJC_IVAR____TtC4Maps25PlaceSummaryETADownloader_models;
      if ((a1 & 0xC000000000000001) == 0)
      {
        goto LABEL_7;
      }

LABEL_6:
      v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      while (1)
      {
        v4 = *(v3 + OBJC_IVAR____TtC4Maps18DirectionsETAModel_mapItem);
        v5 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:{objc_msgSend(v4, "_muid")}];
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        if (v35)
        {
          break;
        }

        sub_100014C84(0, &qword_10191F268);
        v14 = static OS_os_log.default.getter();
        static os_log_type_t.debug.getter();
        sub_1000CE6B8(&unk_10190D5C0);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_1011E1D60;
        *(v15 + 56) = sub_100014C84(0, &qword_101909920);
        *(v15 + 64) = sub_1003D1B00();
        *(v15 + 32) = v5;
        v16 = v5;
        v17 = [v4 name];
        if (v17)
        {
          v18 = v17;
          v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v21 = v20;
        }

        else
        {
          v19 = 0;
          v21 = 0;
        }

        *(v15 + 96) = &type metadata for String;
        *(v15 + 104) = sub_1000DA61C();
        if (v21)
        {
          v24 = v19;
        }

        else
        {
          v24 = 0;
        }

        v25 = 0xE000000000000000;
        if (v21)
        {
          v25 = v21;
        }

        *(v15 + 72) = v24;
        *(v15 + 80) = v25;
        os_log(_:dso:log:type:_:)();

        v26 = v32;
        swift_beginAccess();

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*(v26 + v31) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v26 + v31) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v26 = v32;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        v27 = [objc_allocWithZone(MKETAProvider) initWithMapItem:v4];
        if (!v27)
        {

LABEL_20:

          goto LABEL_33;
        }

        v28 = v27;
        [v27 _placeSummary_addObserver:v26];
        swift_beginAccess();
        v29 = v28;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*(v26 + v30) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v26 + v30) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        [v29 start];

LABEL_33:
        if (v33 == v2)
        {
          return;
        }

        ++v2;
        if ((a1 & 0xC000000000000001) != 0)
        {
          goto LABEL_6;
        }

LABEL_7:
        v3 = *(a1 + 8 * v2 + 32);
      }

      sub_100014C84(0, &qword_10191F268);
      v6 = static OS_os_log.default.getter();
      static os_log_type_t.debug.getter();
      sub_1000CE6B8(&unk_10190D5C0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1011E1D60;
      *(v7 + 56) = sub_100014C84(0, &qword_101909920);
      *(v7 + 64) = sub_1003D1B00();
      *(v7 + 32) = v5;
      v8 = v5;
      v9 = [v4 name];
      if (v9)
      {
        v10 = v9;
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;
      }

      else
      {
        v11 = 0;
        v13 = 0;
      }

      *(v7 + 96) = &type metadata for String;
      *(v7 + 104) = sub_1000DA61C();
      if (v13)
      {
        v22 = v11;
      }

      else
      {
        v22 = 0;
      }

      v23 = 0xE000000000000000;
      if (v13)
      {
        v23 = v13;
      }

      *(v7 + 72) = v22;
      *(v7 + 80) = v23;
      os_log(_:dso:log:type:_:)();

      goto LABEL_20;
    }

    __break(1u);
  }
}

void *sub_1003D13A0(void *result)
{
  if (!result)
  {
    goto LABEL_24;
  }

  v1 = result;
  result = sub_1003D1860(result);
  if (!result)
  {
    return result;
  }

  v2 = result;
  [v1 etaTravelTime];
  v4 = v3;
  if (*(v2 + OBJC_IVAR____TtC4Maps18DirectionsETAModel_searchAlongRoute) == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
  }

  if (v4 > 0.0)
  {
    result = objc_opt_self();
    if (*&v4 >> 52 > 0x7FEuLL)
    {
      __break(1u);
    }

    else if (v4 > -1.0)
    {
      if (v4 < 1.84467441e19)
      {
        v5 = [result _navigation_stringWithSeconds:v4 andAbbreviationType:2];
        if (v5)
        {
          v6 = v5;
          v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v9 = v8;

          swift_getKeyPath();
          swift_getKeyPath();
          v21 = v9;

          static Published.subscript.setter();
          sub_100014C84(0, &qword_10191F268);
          v10 = static OS_os_log.default.getter();
          static os_log_type_t.debug.getter();
          sub_1000CE6B8(&unk_10190D5C0);
          v11 = swift_allocObject();
          *(v11 + 16) = xmmword_1011E1D60;
          v12 = OBJC_IVAR____TtC4Maps18DirectionsETAModel_mapItem;
          v13 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:{objc_msgSend(*(v2 + OBJC_IVAR____TtC4Maps18DirectionsETAModel_mapItem), "_muid", v7, v21)}];
          *(v11 + 56) = sub_100014C84(0, &qword_101909920);
          *(v11 + 64) = sub_1003D1B00();
          *(v11 + 32) = v13;
          v14 = [*(v2 + v12) name];
          if (v14)
          {
            v15 = v14;
            v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v18 = v17;
          }

          else
          {
            v16 = 0;
            v18 = 0;
          }

          *(v11 + 96) = &type metadata for String;
          *(v11 + 104) = sub_1000DA61C();
          if (v18)
          {
            v19 = v16;
          }

          else
          {
            v19 = 0;
          }

          v20 = 0xE000000000000000;
          if (v18)
          {
            v20 = v18;
          }

          *(v11 + 72) = v19;
          *(v11 + 80) = v20;
          os_log(_:dso:log:type:_:)();

          sub_1003D171C(v1, v2);
        }
      }

      goto LABEL_23;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return result;
  }
}

uint64_t sub_1003D171C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC4Maps25PlaceSummaryETADownloader_etaProviders;
  swift_beginAccess();
  v7 = *(v3 + v6);

  v8 = sub_1003D0A80(a1, v7, &qword_10191F260);
  LOBYTE(a1) = v9;

  if ((a1 & 1) == 0)
  {
    swift_beginAccess();
    v10 = sub_1003FA648(v8);
    swift_endAccess();
  }

  v11 = OBJC_IVAR____TtC4Maps25PlaceSummaryETADownloader_models;
  swift_beginAccess();
  v12 = *(v3 + v11);

  v13 = sub_1003D0B88(a2, v12);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
    swift_beginAccess();
    sub_1003FA648(v13);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1003D1860(void *a1)
{
  v2 = OBJC_IVAR____TtC4Maps25PlaceSummaryETADownloader_models;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 >> 62)
  {
LABEL_19:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_15:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v6 = *(v3 + 8 * v5 + 32);

        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_15;
        }
      }

      v8 = *(v6 + OBJC_IVAR____TtC4Maps18DirectionsETAModel_mapItem);
      v9 = [a1 mapItem];
      if (v9)
      {
        v10 = v9;
        sub_100014C84(0, &unk_101918390);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {

          return v6;
        }
      }

      else
      {
      }

      ++v5;
    }

    while (v7 != v4);
  }

  return 0;
}

id sub_1003D1A5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaceSummaryETADownloader();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1003D1B00()
{
  result = qword_10191F270;
  if (!qword_10191F270)
  {
    sub_100014C84(255, &qword_101909920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191F270);
  }

  return result;
}

uint64_t sub_1003D1B68@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1003D1BE8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1003D1C5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003D1CC0(uint64_t a1)
{
  v2 = type metadata accessor for PlaceSummaryViewModelUnit(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003D1D1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003D1D68(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = a2 | a3;
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v6;
  if (v4)
  {
    v9 = [v7 isEqual:v8];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

BOOL sub_1003D1DE4(id a1, GEOServerFormatToken *a2, GEOServerFormatToken *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = GEOServerFormatTokenEqual();

  return v6;
}

uint64_t sub_1003D1E3C()
{
  swift_getKeyPath();
  sub_1003D2978(&unk_10191F300);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1003D1ED4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003D2978(&unk_10191F300);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC4Maps21CarPinnedRowViewModel__richTextViews);
}

uint64_t sub_1003D1F74()
{
  swift_getKeyPath();
  sub_1003D2978(&unk_10191F300);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

id sub_1003D202C()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC4Maps21CarPinnedRowViewModel_favoriteItem];
  v3 = v0;
  v4 = String._bridgeToObjectiveC()();
  [v2 removeObserver:v3 forKeyPath:v4];

  v6.receiver = v3;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "dealloc");
}

uint64_t type metadata accessor for CarPinnedRowViewModel()
{
  result = qword_10191F2E8;
  if (!qword_10191F2E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003D22A8()
{
  v1 = v0;
  v2 = type metadata accessor for RichTextType();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*(v1 + OBJC_IVAR____TtC4Maps21CarPinnedRowViewModel_favoriteItem) subtitle];
  if (v7)
  {
    v8 = v7;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000CE6B8(&unk_1019157F0);
    v9 = swift_allocObject();
    v14 = xmmword_1011E1D30;
    *(v9 + 16) = xmmword_1011E1D30;
    sub_1000CE6B8(&qword_10190A070);
    type metadata accessor for RichTextViewModel();
    v10 = swift_allocObject();
    *(v10 + 16) = v14;
    (*(v3 + 104))(v6, enum case for RichTextType.line(_:), v2);
    RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

    (*(v3 + 8))(v6, v2);
    *(v9 + 32) = v10;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v15 = v1;
    sub_1003D2978(&unk_10191F300);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    v13 = swift_getKeyPath();
    __chkstk_darwin(v13);
    v15 = v1;
    sub_1003D2978(&unk_10191F300);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1003D276C()
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

uint64_t sub_1003D2850()
{
  v1 = *(*v0 + OBJC_IVAR____TtC4Maps21CarPinnedRowViewModel_title);

  return v1;
}

uint64_t sub_1003D2890()
{
  swift_getKeyPath();
  sub_1003D2978(&unk_10191F300);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1003D2928@<X0>(void *a1@<X8>)
{
  v2 = (*v1 + OBJC_IVAR____TtC4Maps21CarPinnedRowViewModel_id);
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;
}

uint64_t sub_1003D2978(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CarPinnedRowViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1003D29D4()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC4Maps21CarPinnedRowViewModel__richTextViews) = *(v0 + 24);
}

id sub_1003D2A18(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v43 = type metadata accessor for RichTextType();
  v5 = *(v43 - 8);
  __chkstk_darwin(v43);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObservationRegistrar.init()();
  *&v2[OBJC_IVAR____TtC4Maps21CarPinnedRowViewModel_favoriteItem] = a1;
  v12 = a1;
  v13 = [v12 identifier];
  if (v13)
  {
    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    UUID.init()();
    v15 = UUID.uuidString.getter();
    v17 = v18;
    (*(v9 + 8))(v11, v8);
  }

  v19 = &v2[OBJC_IVAR____TtC4Maps21CarPinnedRowViewModel_id];
  *v19 = v15;
  v19[1] = v17;
  v20 = [v12 title];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  v24 = &v2[OBJC_IVAR____TtC4Maps21CarPinnedRowViewModel_title];
  *v24 = v21;
  v24[1] = v23;
  v25 = [v12 styleAttributes];
  v26 = sub_10017F24C();
  v27 = &v2[OBJC_IVAR____TtC4Maps21CarPinnedRowViewModel_imageProvider];
  *v27 = v25;
  *(v27 + 4) = 1;
  *(v27 + 3) = &type metadata for StyleAttributesImageProvider;
  *(v27 + 4) = v26;
  v28 = [v12 subtitle];
  if (v28)
  {
    v29 = v28;
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v31;
    v42 = v30;

    sub_1000CE6B8(&unk_1019157F0);
    v32 = swift_allocObject();
    v40 = xmmword_1011E1D30;
    *(v32 + 1) = xmmword_1011E1D30;
    sub_1000CE6B8(&qword_10190A070);
    type metadata accessor for RichTextViewModel();
    v33 = swift_allocObject();
    *(v33 + 16) = v40;
    v34 = v7;
    v35 = v7;
    v36 = v43;
    (*(v5 + 104))(v35, enum case for RichTextType.line(_:), v43);
    RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

    (*(v5 + 8))(v34, v36);
    v32[4] = v33;
  }

  else
  {
    v32 = _swiftEmptyArrayStorage;
  }

  *&v2[OBJC_IVAR____TtC4Maps21CarPinnedRowViewModel__richTextViews] = v32;
  v44.receiver = v2;
  v44.super_class = ObjectType;
  v37 = objc_msgSendSuper2(&v44, "init");
  v38 = String._bridgeToObjectiveC()();
  [v12 addObserver:v37 forKeyPath:v38 options:0 context:0];

  return v37;
}

uint64_t sub_1003D2E8C()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

Swift::Int sub_1003D2EF8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1003D2F4C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1003D2F90(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

unint64_t sub_1003D2FC0()
{
  result = qword_10191F3C0;
  if (!qword_10191F3C0)
  {
    type metadata accessor for LocationCorrectionSuggestion();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191F3C0);
  }

  return result;
}

uint64_t sub_1003D3014(uint64_t a1)
{
  v1[16] = a1;
  type metadata accessor for UUID();
  v1[17] = swift_task_alloc();
  sub_1000CE6B8(&unk_10190D5B0);
  v1[18] = swift_task_alloc();
  v2 = type metadata accessor for RichTextType();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v3 = type metadata accessor for RichTextViewModel();
  v1[22] = v3;
  v1[23] = *(v3 - 8);
  v1[24] = swift_task_alloc();

  return _swift_task_switch(sub_1003D3194, 0, 0);
}

uint64_t sub_1003D3194()
{
  *(v0 + 112) = _swiftEmptyArrayStorage;
  v1 = *(v0 + 128);
  if (v1 >> 62)
  {
LABEL_25:
    v20 = _CocoaArrayWrapper.endIndex.getter();
    *(v0 + 200) = v20;
    if (v20)
    {
      goto LABEL_3;
    }

LABEL_26:
    if (qword_101906660 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100021540(v21, qword_10195FE70);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134218240;
      if (_swiftEmptyArrayStorage >> 62)
      {
        v25 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v25 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v26 = *(v0 + 128);
      *(v24 + 4) = v25;
      *(v24 + 12) = 2048;
      if (v26 >> 62)
      {
        v27 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v24 + 14) = v27;

      _os_log_impl(&_mh_execute_header, v22, v23, "[Visit History Correction Picker] %ld suggestions will be displayed out of %ld received from server", v24, 0x16u);
    }

    else
    {
    }

    v28 = *(v0 + 8);

    return v28(_swiftEmptyArrayStorage);
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(v0 + 200) = v2;
  if (!v2)
  {
    goto LABEL_26;
  }

LABEL_3:
  v3 = 0;
  *(v0 + 328) = enum case for RichTextType.line(_:);
  while (1)
  {
    *(v0 + 208) = 0;
    *(v0 + 216) = _swiftEmptyArrayStorage;
    v4 = *(v0 + 128);
    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v5 = *(v4 + 8 * v3 + 32);
    }

    v6 = v5;
    *(v0 + 224) = v5;
    *(v0 + 232) = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v7 = [v5 _geoMapItem];
    *(v0 + 240) = v7;
    if (v7)
    {
      break;
    }

LABEL_5:
    v3 = *(v0 + 232);
    if (v3 == *(v0 + 200))
    {
      goto LABEL_26;
    }
  }

  v8 = v7;
  v9 = [v7 _identifier];
  if (!v9)
  {
    __break(1u);
    return GEOCategoryTaxonomyMapper.categoryStrings(for:mapItem:)(0, v10);
  }

  v11 = v9;
  v12 = [v9 mapsIdentifierString];

  if (!v12)
  {

    goto LABEL_17;
  }

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  *(v0 + 248) = v13;
  *(v0 + 256) = v15;
  v16 = [objc_opt_self() mapItemStorageForGEOMapItem:v8];
  *(v0 + 264) = v16;
  if (!v16)
  {

LABEL_17:
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  v17 = qword_1019065E8;
  v18 = v16;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = swift_task_alloc();
  *(v0 + 272) = v19;
  *v19 = v0;
  v19[1] = sub_1003D35F4;
  v10 = v18;

  return GEOCategoryTaxonomyMapper.categoryStrings(for:mapItem:)(0, v10);
}

uint64_t sub_1003D35F4(uint64_t a1)
{
  *(*v1 + 280) = a1;

  return _swift_task_switch(sub_1003D36F4, 0, 0);
}

uint64_t sub_1003D36F4()
{
  *(v0 + 96) = 0x726F707075736E75;
  v1 = *(v0 + 280);
  v2 = *(v0 + 208);
  *(v0 + 104) = 0xEB00000000646574;
  v3 = swift_task_alloc();
  *(v3 + 16) = v0 + 96;
  LOBYTE(v1) = sub_1002AFDA8(sub_10023BAF4, v3, v1);
  *(v0 + 288) = v2;

  v4 = *(v0 + 280);
  if ((v1 & 1) == 0)
  {
    if (v4[2])
    {
      v17 = v4[4];
      v16 = v4[5];

      sub_10023B7DC(v17, v16);
    }

    else
    {
    }

    v31 = *(v0 + 224);

    v32 = [v31 _firstLocalizedCategoryName];
    if (v32)
    {
      v33 = v32;
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      v37 = sub_100356258(0, 1, 1, _swiftEmptyArrayStorage);
      v39 = *(v37 + 2);
      v38 = *(v37 + 3);
      if (v39 >= v38 >> 1)
      {
        v37 = sub_100356258((v38 > 1), v39 + 1, 1, v37);
      }

      *(v37 + 2) = v39 + 1;
      v40 = &v37[16 * v39];
      *(v40 + 4) = v34;
      *(v40 + 5) = v36;
    }

    else
    {
      v37 = _swiftEmptyArrayStorage;
    }

    v41 = [*(v0 + 240) _resultSnippetLocationString];
    if (v41)
    {
      v42 = v41;
      v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_100356258(0, *(v37 + 2) + 1, 1, v37);
      }

      v47 = *(v37 + 2);
      v46 = *(v37 + 3);
      v48 = v47 + 1;
      if (v47 >= v46 >> 1)
      {
        v37 = sub_100356258((v46 > 1), v47 + 1, 1, v37);
      }

      *(v37 + 2) = v48;
      v49 = &v37[16 * v47];
      *(v49 + 4) = v43;
      *(v49 + 5) = v45;
    }

    else
    {
      v48 = *(v37 + 2);
      if (!v48)
      {
        v51 = _swiftEmptyArrayStorage;
LABEL_44:
        *(v0 + 296) = v37;
        *(v0 + 304) = v51;
        type metadata accessor for MainActor();
        *(v0 + 312) = static MainActor.shared.getter();
        v62 = dispatch thunk of Actor.unownedExecutor.getter();

        return _swift_task_switch(sub_1003D3EE8, v62, v61);
      }
    }

    v50 = *(v0 + 160);
    *(v0 + 120) = _swiftEmptyArrayStorage;
    sub_1005118F0(0, v48, 0);
    v51 = *(v0 + 120);
    v68 = *(v50 + 104);
    v52 = v37 + 40;
    do
    {
      v53 = *(v0 + 160);
      v54 = *(v0 + 168);
      v55 = *(v0 + 152);
      v68(v54, *(v0 + 328), v55);

      RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

      (*(v53 + 8))(v54, v55);
      *(v0 + 120) = v51;
      v57 = v51[2];
      v56 = v51[3];
      if (v57 >= v56 >> 1)
      {
        sub_1005118F0(v56 > 1, v57 + 1, 1);
        v51 = *(v0 + 120);
      }

      v59 = *(v0 + 184);
      v58 = *(v0 + 192);
      v60 = *(v0 + 176);
      v51[2] = v57 + 1;
      (*(v59 + 32))(v51 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v57, v58, v60);
      v52 += 16;
      --v48;
    }

    while (v48);
    goto LABEL_44;
  }

  v5 = *(v0 + 264);
  v6 = *(v0 + 224);

  swift_unknownObjectRelease();

  v7 = *(v0 + 216);
  v8 = *(v0 + 232);
  if (v8 == *(v0 + 200))
  {
LABEL_3:
    if (qword_101906660 != -1)
    {
LABEL_60:
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100021540(v9, qword_10195FE70);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134218240;
      if (v7 >> 62)
      {
        v13 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v14 = *(v0 + 128);
      *(v12 + 4) = v13;
      *(v12 + 12) = 2048;
      if (v14 >> 62)
      {
        v15 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v12 + 14) = v15;

      _os_log_impl(&_mh_execute_header, v10, v11, "[Visit History Correction Picker] %ld suggestions will be displayed out of %ld received from server", v12, 0x16u);
    }

    else
    {
    }

    v63 = *(v0 + 8);

    return v63(v7);
  }

  while (1)
  {
    *(v0 + 208) = v2;
    *(v0 + 216) = v7;
    v18 = *(v0 + 128);
    if ((v18 & 0xC000000000000001) != 0)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_59;
      }

      v19 = *(v18 + 8 * v8 + 32);
    }

    v20 = v19;
    *(v0 + 224) = v19;
    *(v0 + 232) = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v21 = [v19 _geoMapItem];
    *(v0 + 240) = v21;
    if (v21)
    {
      break;
    }

LABEL_13:
    v8 = *(v0 + 232);
    if (v8 == *(v0 + 200))
    {
      goto LABEL_3;
    }
  }

  v22 = v21;
  v23 = [v21 _identifier];
  if (!v23)
  {
    __break(1u);
    return GEOCategoryTaxonomyMapper.categoryStrings(for:mapItem:)(0, v24);
  }

  v25 = v23;
  v26 = [v23 mapsIdentifierString];

  if (!v26)
  {

    goto LABEL_25;
  }

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  *(v0 + 248) = v27;
  *(v0 + 256) = v29;
  v30 = [objc_opt_self() mapItemStorageForGEOMapItem:v22];
  *(v0 + 264) = v30;
  if (!v30)
  {

LABEL_25:
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v64 = qword_1019065E8;
  v65 = v30;
  if (v64 != -1)
  {
    swift_once();
  }

  v66 = swift_task_alloc();
  *(v0 + 272) = v66;
  *v66 = v0;
  v66[1] = sub_1003D35F4;
  v24 = v65;

  return GEOCategoryTaxonomyMapper.categoryStrings(for:mapItem:)(0, v24);
}

uint64_t sub_1003D3EE8()
{
  v1 = *(v0 + 240);

  v2 = [v1 _styleAttributes];
  *(v0 + 320) = v2;

  if (v2)
  {
    v3 = sub_1003D45CC;
  }

  else
  {
    v3 = sub_1003D3F94;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1003D3F94()
{
  *(v0 + 16) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  v1 = *(v0 + 320);
  v2 = *(v0 + 224);
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  v3 = v1;
  v4 = [v2 name];
  if (v4)
  {
    v5 = v4;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = *(v0 + 304);
  v55 = *(v0 + 256);
  v54 = *(v0 + 248);
  v7 = *(v0 + 240);
  v8 = *(v0 + 144);
  sub_1000CE6B8(&unk_1019157F0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1011E1D30;
  *(v9 + 32) = v6;
  v10 = type metadata accessor for BottomAccessoryViewModel();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  UUID.init()();
  type metadata accessor for ListCellViewModel();
  swift_allocObject();
  LOBYTE(v53) = 1;
  v51 = _swiftEmptyArrayStorage;
  v52 = _swiftEmptyArrayStorage;
  v50 = _swiftEmptyArrayStorage;
  LOWORD(v49) = 1;
  v47 = _swiftEmptyArrayStorage;
  v48 = v8;
  v45 = _swiftEmptyArrayStorage;
  v46 = _swiftEmptyArrayStorage;
  v44 = v9;
  v11 = ListCellViewModel.init(id:imageProvider:imageOverlayProvider:imagePlaceholder:title:query:richTextViews:leadingAccessory:trailingAccessory:contextLineAccessory:bottomAccessory:active:isSelected:leadingSwipeActions:trailingSwipeActions:menuActions:allowsFullSwipe:)();
  type metadata accessor for LocationCorrectionSuggestion();
  v12 = swift_allocObject();
  v12[2] = v54;
  v12[3] = v55;
  v12[4] = v7;
  v12[5] = v11;
  swift_unknownObjectRetain();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 112) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 112) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_40:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v13 = *(v0 + 320);
  v14 = *(v0 + 264);
  v15 = *(v0 + 224);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  swift_unknownObjectRelease();

  v16 = *(v0 + 112);
  v17 = *(v0 + 232);
  if (v17 == *(v0 + 200))
  {
LABEL_5:
    if (qword_101906660 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100021540(v18, qword_10195FE70);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134218240;
      if (v16 >> 62)
      {
        v22 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v22 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v23 = *(v0 + 128);
      *(v21 + 4) = v22;
      *(v21 + 12) = 2048;
      if (v23 >> 62)
      {
        v24 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v21 + 14) = v24;

      _os_log_impl(&_mh_execute_header, v19, v20, "[Visit History Correction Picker] %ld suggestions will be displayed out of %ld received from server", v21, 0x16u);
    }

    else
    {
    }

    v39 = *(v0 + 8);

    return v39(v16);
  }

  v25 = *(v0 + 288);
  while (1)
  {
    *(v0 + 208) = v25;
    *(v0 + 216) = v16;
    v26 = *(v0 + 128);
    if ((v26 & 0xC000000000000001) != 0)
    {
      v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v17 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v27 = *(v26 + 8 * v17 + 32);
    }

    v28 = v27;
    *(v0 + 224) = v27;
    *(v0 + 232) = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v29 = [v27 _geoMapItem];
    *(v0 + 240) = v29;
    if (v29)
    {
      break;
    }

LABEL_14:
    v17 = *(v0 + 232);
    if (v17 == *(v0 + 200))
    {
      goto LABEL_5;
    }
  }

  v30 = v29;
  v31 = [v29 _identifier];
  if (!v31)
  {
    __break(1u);
    return GEOCategoryTaxonomyMapper.categoryStrings(for:mapItem:)(0, v32);
  }

  v33 = v31;
  v34 = [v31 mapsIdentifierString];

  if (!v34)
  {

    goto LABEL_26;
  }

  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  *(v0 + 248) = v35;
  *(v0 + 256) = v37;
  v38 = [objc_opt_self() mapItemStorageForGEOMapItem:v30];
  *(v0 + 264) = v38;
  if (!v38)
  {

LABEL_26:
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v41 = qword_1019065E8;
  v42 = v38;
  if (v41 != -1)
  {
    swift_once();
  }

  v43 = swift_task_alloc();
  *(v0 + 272) = v43;
  *v43 = v0;
  v43[1] = sub_1003D35F4;
  v32 = v42;

  return GEOCategoryTaxonomyMapper.categoryStrings(for:mapItem:)(0, v32);
}

uint64_t sub_1003D45CC()
{
  v1 = *(v0 + 320);
  *(v0 + 40) = &type metadata for StyleAttributesImageProvider;
  v2 = sub_10017F24C();
  *(v0 + 56) = 0u;
  *(v0 + 16) = v1;
  *(v0 + 48) = v2;
  *(v0 + 24) = 0;
  v3 = *(v0 + 224);
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  v4 = v1;
  v5 = [v3 name];
  if (v5)
  {
    v6 = v5;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = *(v0 + 304);
  v56 = *(v0 + 256);
  v55 = *(v0 + 248);
  v8 = *(v0 + 240);
  v9 = *(v0 + 144);
  sub_1000CE6B8(&unk_1019157F0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1011E1D30;
  *(v10 + 32) = v7;
  v11 = type metadata accessor for BottomAccessoryViewModel();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  UUID.init()();
  type metadata accessor for ListCellViewModel();
  swift_allocObject();
  LOBYTE(v54) = 1;
  v52 = _swiftEmptyArrayStorage;
  v53 = _swiftEmptyArrayStorage;
  v51 = _swiftEmptyArrayStorage;
  LOWORD(v50) = 1;
  v48 = _swiftEmptyArrayStorage;
  v49 = v9;
  v46 = _swiftEmptyArrayStorage;
  v47 = _swiftEmptyArrayStorage;
  v45 = v10;
  v12 = ListCellViewModel.init(id:imageProvider:imageOverlayProvider:imagePlaceholder:title:query:richTextViews:leadingAccessory:trailingAccessory:contextLineAccessory:bottomAccessory:active:isSelected:leadingSwipeActions:trailingSwipeActions:menuActions:allowsFullSwipe:)();
  type metadata accessor for LocationCorrectionSuggestion();
  v13 = swift_allocObject();
  v13[2] = v55;
  v13[3] = v56;
  v13[4] = v8;
  v13[5] = v12;
  swift_unknownObjectRetain();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 112) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 112) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_40:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v14 = *(v0 + 320);
  v15 = *(v0 + 264);
  v16 = *(v0 + 224);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  swift_unknownObjectRelease();

  v17 = *(v0 + 112);
  v18 = *(v0 + 232);
  if (v18 == *(v0 + 200))
  {
LABEL_5:
    if (qword_101906660 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100021540(v19, qword_10195FE70);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134218240;
      if (v17 >> 62)
      {
        v23 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v23 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v24 = *(v0 + 128);
      *(v22 + 4) = v23;
      *(v22 + 12) = 2048;
      if (v24 >> 62)
      {
        v25 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v22 + 14) = v25;

      _os_log_impl(&_mh_execute_header, v20, v21, "[Visit History Correction Picker] %ld suggestions will be displayed out of %ld received from server", v22, 0x16u);
    }

    else
    {
    }

    v40 = *(v0 + 8);

    return v40(v17);
  }

  v26 = *(v0 + 288);
  while (1)
  {
    *(v0 + 208) = v26;
    *(v0 + 216) = v17;
    v27 = *(v0 + 128);
    if ((v27 & 0xC000000000000001) != 0)
    {
      v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v18 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v28 = *(v27 + 8 * v18 + 32);
    }

    v29 = v28;
    *(v0 + 224) = v28;
    *(v0 + 232) = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v30 = [v28 _geoMapItem];
    *(v0 + 240) = v30;
    if (v30)
    {
      break;
    }

LABEL_14:
    v18 = *(v0 + 232);
    if (v18 == *(v0 + 200))
    {
      goto LABEL_5;
    }
  }

  v31 = v30;
  v32 = [v30 _identifier];
  if (!v32)
  {
    __break(1u);
    return GEOCategoryTaxonomyMapper.categoryStrings(for:mapItem:)(0, v33);
  }

  v34 = v32;
  v35 = [v32 mapsIdentifierString];

  if (!v35)
  {

    goto LABEL_26;
  }

  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  *(v0 + 248) = v36;
  *(v0 + 256) = v38;
  v39 = [objc_opt_self() mapItemStorageForGEOMapItem:v31];
  *(v0 + 264) = v39;
  if (!v39)
  {

LABEL_26:
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v42 = qword_1019065E8;
  v43 = v39;
  if (v42 != -1)
  {
    swift_once();
  }

  v44 = swift_task_alloc();
  *(v0 + 272) = v44;
  *v44 = v0;
  v44[1] = sub_1003D35F4;
  v33 = v43;

  return GEOCategoryTaxonomyMapper.categoryStrings(for:mapItem:)(0, v33);
}

uint64_t type metadata accessor for HomePinnedItemCarouselRow()
{
  result = qword_10191F420;
  if (!qword_10191F420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003D4CA4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  v3 = type metadata accessor for HomePinnedItemCarouselRow();
  v30 = *(v3 - 8);
  v4 = *(v30 + 64);
  __chkstk_darwin(v3);
  v33 = type metadata accessor for ColumnViewConfig();
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v26 - v8;
  v10 = *v1;
  swift_getKeyPath();
  *&v34 = v10;
  sub_1003D5FD0(&qword_10190DAD8, type metadata accessor for HomePinnedItemCarouselViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *(v10 + OBJC_IVAR____TtC4Maps31HomePinnedItemCarouselViewModel__pinnedItems);
  if (v11 >> 62)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v29 = v12;

  static MapsDesignConstants.ColumnViews.MapsHome.pinnedColumnViewConfig(itemCount:containerSize:)();
  v13 = v31;
  (*(v31 + 16))(v6, v9, v33);
  v14 = *(v2 + 24);
  v15 = *(v2 + 32);
  v34 = *(v2 + 8);
  v35 = v14;
  LOBYTE(v36) = v15;
  sub_1000CE6B8(&qword_10190DAE0);
  Binding.projectedValue.getter();
  v27 = v38;
  v28 = v37;
  v26[1] = v39;
  sub_1003D5DC4(v2, v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v30 + 80) + 24) & ~*(v30 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v11;
  sub_1003D5E28(v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  sub_1000CE6B8(&qword_10191F460);
  v18 = sub_1000D6664(&qword_10191F468);
  v19 = sub_1003D5F10();
  v20 = sub_1000414C8(&qword_10191F478, &qword_10191F468);
  *&v34 = &type metadata for HomePinnedItem;
  *(&v34 + 1) = v18;
  v35 = v19;
  v36 = v20;
  swift_getOpaqueTypeConformance2();
  v21 = v32;
  ColumnView.init(config:scrollIndex:columnBuilder:)();
  v22 = static Animation.default.getter();
  (*(v13 + 8))(v9, v33);
  result = sub_1000CE6B8(&qword_10191F480);
  v24 = (v21 + *(result + 36));
  v25 = v29;
  *v24 = v22;
  v24[1] = v25;
  return result;
}

void sub_1003D5098(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HomePinnedItemCarouselRow();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0xC000000000000001) != 0)
  {
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v10 = *(a2 + 8 * a1 + 32);
LABEL_5:
    v11 = v10;
    sub_1003D5DC4(a3, v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    v14 = sub_1003D5E28(v9, v13 + v12);
    v16[1] = v11;
    v16[2] = sub_1003D5F64;
    v16[3] = v13;
    __chkstk_darwin(v14);
    v16[-2] = v11;
    v16[-1] = a3;
    v15 = v11;
    sub_1000CE6B8(&qword_10191F468);
    sub_1003D5F10();
    sub_1000414C8(&qword_10191F478, &qword_10191F468);
    View.contextMenu<A>(menuItems:)();

    return;
  }

  __break(1u);
}

uint64_t sub_1003D52C0(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1003D5FD0(&qword_101916010, type metadata accessor for HomePinnedItemModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *a2;
  if (*(a1 + OBJC_IVAR____TtC4Maps19HomePinnedItemModel__isAddNewFavorite) == 1)
  {
    swift_getKeyPath();
    sub_1003D5FD0(&qword_10190DAD8, type metadata accessor for HomePinnedItemCarouselViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v6 = *(v4 + OBJC_IVAR____TtC4Maps31HomePinnedItemCarouselViewModel__onSelectAddNewPinnedItem);
    if (!v6)
    {
      return result;
    }

    v6(v4);
    v7 = v6;
  }

  else
  {
    swift_getKeyPath();
    sub_1003D5FD0(&qword_10190DAD8, type metadata accessor for HomePinnedItemCarouselViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v8 = *(v4 + OBJC_IVAR____TtC4Maps31HomePinnedItemCarouselViewModel__onSelectOpenPinnedItem);
    if (!v8)
    {
      return result;
    }

    v8(v4, a1);
    v7 = v8;
  }

  return sub_1000588AC(v7);
}

uint64_t sub_1003D54C0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a3;
  v5 = sub_1000CE6B8(&qword_1019191F8);
  __chkstk_darwin(v5 - 8);
  v52 = &v45 - v6;
  v7 = type metadata accessor for HomePinnedItemCarouselRow();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = sub_1000CE6B8(&qword_10191DC80);
  v57 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v45 - v11;
  v13 = sub_1000CE6B8(&qword_10191F488);
  __chkstk_darwin(v13 - 8);
  v54 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v53 = &v45 - v16;
  __chkstk_darwin(v17);
  v19 = &v45 - v18;
  __chkstk_darwin(v20);
  v22 = &v45 - v21;
  v23 = sub_100500EA0();
  v55 = v22;
  v50 = v12;
  v51 = a2;
  v48 = v8;
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v9;
  if (v23)
  {
    sub_1003D5DC4(a2, &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v24 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v46 = v19;
    v25 = swift_allocObject();
    sub_1003D5E28(&v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
    *(v25 + ((v9 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
    v26 = a1;
    sub_1000CE6B8(&qword_10191DCC8);
    v27 = v57;
    v19 = v46;
    sub_1000414C8(&qword_10191DCF8, &qword_10191DCC8);
    Button.init(action:label:)();
    (*(v27 + 32))(v22, v12, v10);
    v28 = *(v27 + 56);
    v28(v22, 0, 1, v10);
  }

  else
  {
    v28 = *(v57 + 56);
    v28(v22, 1, 1, v10);
  }

  swift_getKeyPath();
  v58 = a1;
  sub_1003D5FD0(&qword_101916010, type metadata accessor for HomePinnedItemModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v29 = *&a1[OBJC_IVAR____TtC4Maps19HomePinnedItemModel__favoriteItem];
  if (v29 && (*(v29 + OBJC_IVAR____TtC4Maps16MapsFavoriteItem_isShortcutForSetup) & 1) == 0)
  {
    v46 = v10;
    v31 = v52;
    static ButtonRole.destructive.getter();
    v32 = type metadata accessor for ButtonRole();
    (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
    v33 = v49;
    sub_1003D5DC4(v51, v49);
    v34 = (*(v48 + 80) + 16) & ~*(v48 + 80);
    v35 = (v47 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    sub_1003D5E28(v33, v36 + v34);
    *(v36 + v35) = a1;
    v37 = a1;
    sub_1000CE6B8(&qword_10191DCC8);
    sub_1000414C8(&qword_10191DCF8, &qword_10191DCC8);
    v38 = v50;
    v10 = v46;
    Button.init(role:action:label:)();
    (*(v57 + 32))(v19, v38, v10);
    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  v39 = v55;
  v28(v19, v30, 1, v10);
  v40 = v53;
  sub_1003D6018(v39, v53);
  v41 = v54;
  sub_1003D6018(v19, v54);
  v42 = v56;
  sub_1003D6018(v40, v56);
  v43 = sub_1000CE6B8(&qword_10191F490);
  sub_1003D6018(v41, v42 + *(v43 + 48));
  sub_1003D6088(v19);
  sub_1003D6088(v39);
  sub_1003D6088(v41);
  return sub_1003D6088(v40);
}

uint64_t sub_1003D5AF4()
{
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v3._object = 0x8000000101235210;
  v0._countAndFlagsBits = 0x7465442074696445;
  v0._object = 0xEC000000736C6961;
  v1._object = 0x80000001012351F0;
  v3._countAndFlagsBits = 0xD000000000000027;
  v1._countAndFlagsBits = 0xD000000000000016;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, qword_1019600D8, v0, v3);
  sub_1000E5580();
  return Label<>.init<A>(_:systemImage:)();
}

uint64_t sub_1003D5BF0(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1003D5FD0(&qword_10190DAD8, type metadata accessor for HomePinnedItemCarouselViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *(v6 + *a4);
  if (v8)
  {

    v8(v6, a2);
    return sub_1000588AC(v8);
  }

  return result;
}

uint64_t sub_1003D5CD0()
{
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v3._object = 0x8000000101235240;
  v0._countAndFlagsBits = 0x7972617262694C5BLL;
  v0._object = 0xEF6E69706E55205DLL;
  v1._countAndFlagsBits = 0x6E69706E55;
  v1._object = 0xE500000000000000;
  v3._countAndFlagsBits = 0xD000000000000039;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v0, 0, qword_1019600D8, v1, v3);
  sub_1000E5580();
  return Label<>.init<A>(_:systemImage:)();
}

uint64_t sub_1003D5DC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomePinnedItemCarouselRow();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003D5E28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomePinnedItemCarouselRow();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1003D5E8C(unint64_t a1)
{
  v3 = *(type metadata accessor for HomePinnedItemCarouselRow() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_1003D5098(a1, v4, v5);
}

unint64_t sub_1003D5F10()
{
  result = qword_10191F470;
  if (!qword_10191F470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191F470);
  }

  return result;
}

uint64_t sub_1003D5F64()
{
  v1 = *(type metadata accessor for HomePinnedItemCarouselRow() - 8);
  v2 = *(v0 + 16);
  v3 = (v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));

  return sub_1003D52C0(v2, v3);
}

uint64_t sub_1003D5FD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003D6018(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_10191F488);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003D6088(uint64_t a1)
{
  v2 = sub_1000CE6B8(&qword_10191F488);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003D6104()
{
  v1 = (type metadata accessor for HomePinnedItemCarouselRow() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v1[8];
  v7 = type metadata accessor for MapsDesignConstants.ColumnViews.ContainerSize();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_1003D6224(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for HomePinnedItemCarouselRow() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_1003D5BF0((v2 + v6), *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a1, a2);
}

unint64_t sub_1003D62C4()
{
  result = qword_10191F498;
  if (!qword_10191F498)
  {
    sub_1000D6664(&qword_10191F480);
    sub_1000414C8(&qword_10191F4A0, &qword_10191F4A8);
    sub_1000414C8(&qword_10190A3B8, &qword_10190A3C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191F498);
  }

  return result;
}

uint64_t sub_1003D63A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1003D6404(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1003D6468()
{
  v0 = type metadata accessor for RichTextType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CE6B8(&unk_1019157F0);
  v4 = swift_allocObject();
  v7 = xmmword_1011E1D30;
  *(v4 + 16) = xmmword_1011E1D30;
  sub_1000CE6B8(&qword_10190A070);
  type metadata accessor for RichTextViewModel();
  v5 = swift_allocObject();
  *(v5 + 16) = v7;
  (*(v1 + 104))(v3, enum case for RichTextType.line(_:), v0);

  RichTextType.set(_:symbol:color:iconProviders:highlightRanges:lineLimit:priority:)();

  (*(v1 + 8))(v3, v0);
  *(v4 + 32) = v5;
  return v4;
}

uint64_t sub_1003D6688(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    v3 = a1[2];
    v4 = a2[2];
    if (v3)
    {
      if (v4)
      {
        v5 = a1[1] == a2[1] && v3 == v4;
        if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1003D6710(uint64_t a1)
{
  result = 0;
  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        if (qword_101906768 != -1)
        {
          swift_once();
        }

        v3.super.isa = qword_1019600D8;
        v8 = 0xD000000000000016;
        v15 = 0x80000001012353E0;
        v4 = 0x7374726F706552;
        v5 = 0xD00000000000001ELL;
        v6 = 0x80000001012353C0;
        v7 = 0xE700000000000000;
      }

      else
      {
        if (a1 != 2)
        {
          return result;
        }

        if (qword_101906768 != -1)
        {
          swift_once();
        }

        v3.super.isa = qword_1019600D8;
        v4 = 0xD000000000000010;
        v15 = 0x80000001012353A0;
        v5 = 0xD000000000000030;
        v6 = 0x8000000101235340;
        v7 = 0x8000000101235380;
        v8 = 0xD00000000000001FLL;
      }
    }

    else
    {
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v3.super.isa = qword_1019600D8;
      v15 = 0x800000010122DA10;
      v5 = 0x6220736563616C50;
      v6 = 0xED00006E6F747475;
      v4 = 0x736563616C50;
      v8 = 0xD000000000000037;
      v7 = 0xE600000000000000;
    }

    return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v5, 0, v3, *&v4, *&v8)._countAndFlagsBits;
  }

  switch(a1)
  {
    case 3:
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v3.super.isa = qword_1019600D8;
      v8 = 0xD000000000000017;
      v15 = 0x8000000101235320;
      v4 = 0x73656C6369686556;
      v5 = 0xD000000000000023;
      v6 = 0x80000001012352F0;
      v7 = 0xE800000000000000;
      return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v5, 0, v3, *&v4, *&v8)._countAndFlagsBits;
    case 4:
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v3.super.isa = qword_1019600D8;
      v15 = 0x80000001012352D0;
      v4 = 0x6E65726566657250;
      v7 = 0xEB00000000736563;
      v5 = 0xD00000000000002CLL;
      v6 = 0x80000001012352A0;
      v8 = 0xD00000000000001ALL;
      return NSLocalizedString(_:tableName:bundle:value:comment:)(*&v5, 0, v3, *&v4, *&v8)._countAndFlagsBits;
    case 5:
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v9 = qword_1019600D8;
      v10 = String._bridgeToObjectiveC()();
      v11 = String._bridgeToObjectiveC()();
      v12 = String._bridgeToObjectiveC()();
      v13 = [v9 localizedStringForKey:v10 value:v11 table:v12];

      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      return v14;
  }

  return result;
}

void sub_1003D6B3C()
{
  v0 = String._bridgeToObjectiveC()();

  v1 = [objc_opt_self() colorNamed:v0];

  if (!v1)
  {
    __break(1u);
  }
}

uint64_t sub_1003D6C64(uint64_t a1)
{
  v2 = type metadata accessor for LeadingAccessoryViewModel.LeadingAccessoryType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000CE6B8(&unk_10190A060);
  type metadata accessor for LeadingAccessoryViewModel();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1011E1D30;
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v7 = 0xE800000000000000;
      v8 = 0x6C6C69662E726163;
      goto LABEL_16;
    }

    if (a1 == 4)
    {
      v7 = 0xE800000000000000;
      v8 = 0x322E686374697773;
      goto LABEL_16;
    }

    if (a1 != 5)
    {
LABEL_13:
      v8 = 0;
      v7 = 0xE000000000000000;
      goto LABEL_16;
    }

    v8 = 0xD000000000000011;
    v9 = "icloud.slash.fill";
LABEL_11:
    v7 = (v9 - 32) | 0x8000000000000000;
    goto LABEL_16;
  }

  if (!a1)
  {
    v8 = 0xD000000000000011;
    v9 = "square.stack.fill";
    goto LABEL_11;
  }

  if (a1 == 1)
  {
    v7 = 0x800000010121A3F0;
    v8 = 0xD00000000000001BLL;
    goto LABEL_16;
  }

  if (a1 != 2)
  {
    goto LABEL_13;
  }

  v7 = 0x8000000101222110;
  v8 = 0xD000000000000012;
LABEL_16:
  sub_1003D6B3C();
  v10 = Color.init(_:)();
  *v5 = v8;
  v5[1] = v7;
  v5[2] = v10;
  (*(v3 + 104))(v5, enum case for LeadingAccessoryViewModel.LeadingAccessoryType.profile(_:), v2);
  LeadingAccessoryViewModel.init(type:)();
  return v6;
}

uint64_t sub_1003D6ECC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = type metadata accessor for UUID();
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000CE6B8(&qword_101911290);
  __chkstk_darwin(v6 - 8);
  v8 = &v29 - v7;
  v9 = type metadata accessor for GuideTileViewModel.GuideType();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v13 = qword_1019600D8;
  v14 = String._bridgeToObjectiveC()();
  v15 = String._bridgeToObjectiveC()();
  v16 = [v13 localizedStringForKey:v14 value:v15 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = [a1 numberOfItems];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 unsignedIntegerValue];

    sub_1000CE6B8(&unk_10190D5C0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1011E1D30;
    *(v20 + 56) = &type metadata for UInt;
    *(v20 + 64) = &protocol witness table for UInt;
    *(v20 + 32) = v19;
    v29 = static String.localizedStringWithFormat(_:_:)();
  }

  else
  {

    v29 = 0;
  }

  (*(v10 + 104))(v12, enum case for GuideTileViewModel.GuideType.user(_:), v9);
  v21 = [a1 title];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = type metadata accessor for UserGuideCoverPhotoImageProvider();
  v23 = objc_allocWithZone(v22);
  *&v23[OBJC_IVAR____TtC4Maps32UserGuideCoverPhotoImageProvider__image] = 0;
  v24 = a1;
  ObservationRegistrar.init()();
  *&v23[OBJC_IVAR____TtC4Maps32UserGuideCoverPhotoImageProvider_collectionHandler] = v24;
  v36.receiver = v23;
  v36.super_class = v22;
  v25 = v24;
  v26 = objc_msgSendSuper2(&v36, "init");
  [v25 addObserver:v26];

  v38 = v22;
  v39 = sub_1003D7F84();
  v37 = v26;
  v27 = type metadata accessor for PhotoFanViewModel();
  v33 = 0u;
  v34 = 0u;
  v35 = 0;
  (*(*(v27 - 8) + 56))(v8, 1, 1, v27);
  UUID.init()();
  UUID.uuidString.getter();
  (*(v30 + 8))(v5, v31);
  return GuideTileViewModel.init(id:_:title:subtitle:imageProvider:logoProvider:photoFanView:placeholderColor:)();
}

id sub_1003D7368()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC4Maps26HomeUserGuideTileViewModel_collectionHandlerCellModel] removeObserver:v0];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for HomeUserGuideTileViewModel()
{
  result = qword_10191F4F8;
  if (!qword_10191F4F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1003D7544()
{
  v1 = v0;
  v2 = type metadata accessor for CellAction.Placement();
  v43 = *(v2 - 8);
  v44 = v2;
  __chkstk_darwin(v2);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MapsDesignAccessibilityString();
  v41 = *(v5 - 8);
  v42 = v5;
  __chkstk_darwin(v5);
  v7 = (&v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for CellAction.Style();
  v39 = *(v8 - 8);
  v40 = v8;
  __chkstk_darwin(v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CellAction();
  v45 = *(v11 - 8);
  v46 = v11;
  __chkstk_darwin(v11);
  v38 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v37 - v15;
  v17 = *(v1 + OBJC_IVAR____TtC4Maps26HomeUserGuideTileViewModel_collectionHandlerCellModel);
  p_cache = &OBJC_METACLASS___MapsAppTestTileData.cache;
  v19 = qword_101960000;
  if ([v17 canDelete])
  {
    v20 = swift_allocObject();
    v37 = v1;
    swift_unknownObjectWeakInit();
    v21 = qword_101906768;

    if (v21 != -1)
    {
      swift_once();
    }

    v47._object = 0x800000010121D3F0;
    v22._object = 0xEF6574656C65445FLL;
    v47._countAndFlagsBits = 0xD000000000000036;
    v22._countAndFlagsBits = 0x6570697753776F52;
    v23._countAndFlagsBits = 0x6574656C6544;
    v23._object = 0xE600000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, qword_1019600D8, v23, v47);
    v24 = swift_allocObject();
    *(v24 + 16) = sub_1003D81B0;
    *(v24 + 24) = v20;
    (*(v39 + 104))(v10, enum case for CellAction.Style.destructive(_:), v40);
    *v7 = 0x6574656C6544;
    v7[1] = 0xE600000000000000;
    (*(v41 + 104))(v7, enum case for MapsDesignAccessibilityString.button(_:), v42);
    (*(v43 + 104))(v4, enum case for CellAction.Placement.default(_:), v44);
    CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();

    v25 = sub_100355E1C(0, 1, 1, _swiftEmptyArrayStorage);
    v27 = v25[2];
    v26 = v25[3];
    if (v27 >= v26 >> 1)
    {
      v25 = sub_100355E1C(v26 > 1, v27 + 1, 1, v25);
    }

    v25[2] = v27 + 1;
    (*(v45 + 32))(v25 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v27, v16, v46);
    v19 = qword_101960000;
    p_cache = (&OBJC_METACLASS___MapsAppTestTileData + 16);
  }

  else
  {
    v25 = _swiftEmptyArrayStorage;
  }

  if ([v17 canShare])
  {
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = p_cache[237];

    if (v29 != -1)
    {
      swift_once();
    }

    v48._object = 0x800000010121D3B0;
    v30._object = 0xEE0065726168535FLL;
    v48._countAndFlagsBits = 0xD000000000000016;
    v30._countAndFlagsBits = 0x6570697753776F52;
    v31._countAndFlagsBits = 0x6572616853;
    v31._object = 0xE500000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v30, 0, v19[27], v31, v48);
    v32 = swift_allocObject();
    *(v32 + 16) = sub_1003D818C;
    *(v32 + 24) = v28;
    (*(v39 + 104))(v10, enum case for CellAction.Style.default(_:), v40);
    *v7 = 0x6572616853;
    v7[1] = 0xE500000000000000;
    (*(v41 + 104))(v7, enum case for MapsDesignAccessibilityString.button(_:), v42);
    (*(v43 + 104))(v4, enum case for CellAction.Placement.default(_:), v44);
    v33 = v38;
    CellAction.init(title:systemImage:action:style:placement:hasDivider:actionAXID:)();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_100355E1C(0, v25[2] + 1, 1, v25);
    }

    v35 = v25[2];
    v34 = v25[3];
    if (v35 >= v34 >> 1)
    {
      v25 = sub_100355E1C(v34 > 1, v35 + 1, 1, v25);
    }

    v25[2] = v35 + 1;
    (*(v45 + 32))(v25 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v35, v33, v46);
  }

  return v25;
}

uint64_t sub_1003D7C80(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(result + *a3);
    v7 = result;

    v6(v7, a1);
  }

  return result;
}

void sub_1003D7D0C(void *a1, uint64_t a2, void *a3)
{
  swift_getObjectType();
  v5 = type metadata accessor for GuideTileViewModel();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a3;
  v10 = a1;
  sub_1003D6ECC(v9, v8);

  v11 = OBJC_IVAR____TtC4Maps26HomeUserGuideTileViewModel_guideTileViewModel;
  swift_beginAccess();
  (*(v6 + 40))(&v10[v11], v8, v5);
  swift_endAccess();
}

uint64_t sub_1003D7E68()
{
  result = type metadata accessor for GuideTileViewModel();
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

void sub_1003D7F20(uint64_t *a1@<X8>)
{
  v3 = [*(*v1 + OBJC_IVAR____TtC4Maps26HomeUserGuideTileViewModel_collectionHandlerCellModel) identifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

unint64_t sub_1003D7F84()
{
  result = qword_10191F510;
  if (!qword_10191F510)
  {
    type metadata accessor for UserGuideCoverPhotoImageProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191F510);
  }

  return result;
}

char *sub_1003D7FDC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v24 = a5;
  ObjectType = swift_getObjectType();
  v14 = type metadata accessor for GuideTileViewModel();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100098118(a1, &v7[OBJC_IVAR____TtC4Maps26HomeUserGuideTileViewModel_snapshot]);
  *&v7[OBJC_IVAR____TtC4Maps26HomeUserGuideTileViewModel_collectionHandlerCellModel] = a2;
  v18 = &v7[OBJC_IVAR____TtC4Maps26HomeUserGuideTileViewModel_onShare];
  *v18 = a3;
  *(v18 + 1) = a4;
  v19 = &v7[OBJC_IVAR____TtC4Maps26HomeUserGuideTileViewModel_onDelete];
  *v19 = v24;
  *(v19 + 1) = a6;
  v20 = a2;

  sub_1003D6ECC(v20, v17);
  (*(v15 + 32))(&v7[OBJC_IVAR____TtC4Maps26HomeUserGuideTileViewModel_guideTileViewModel], v17, v14);
  v25.receiver = v7;
  v25.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v25, "init");
  [*&v21[OBJC_IVAR____TtC4Maps26HomeUserGuideTileViewModel_collectionHandlerCellModel] addObserver:v21];
  sub_10019D044(a1);
  return v21;
}

id sub_1003D81DC()
{
  v1 = &v0[OBJC_IVAR____TtC4Maps34MapsHomeVisitedPlacesListViewModel_sectionIdentifier];
  *v1 = 0xD00000000000001CLL;
  *(v1 + 1) = 0x80000001012355A0;
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v2.super.isa = qword_1019600D8;
  v10._object = 0x8000000101235610;
  v3._countAndFlagsBits = 0xD00000000000002BLL;
  v3._object = 0x80000001012355C0;
  v4._object = 0x80000001012355F0;
  v10._countAndFlagsBits = 0xD000000000000031;
  v4._countAndFlagsBits = 0x100000000000001BLL;
  *&v0[OBJC_IVAR____TtC4Maps34MapsHomeVisitedPlacesListViewModel_title] = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, qword_1019600D8, v4, v10);
  v11._object = 0x80000001012356B0;
  v5._countAndFlagsBits = 0xD00000000000002ELL;
  v5._object = 0x8000000101235650;
  v6._countAndFlagsBits = 0x1000000000000023;
  v6._object = 0x8000000101235680;
  v11._countAndFlagsBits = 0xD000000000000034;
  *&v0[OBJC_IVAR____TtC4Maps34MapsHomeVisitedPlacesListViewModel_subtitle] = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v2, v6, v11);
  v7 = &v0[OBJC_IVAR____TtC4Maps34MapsHomeVisitedPlacesListViewModel_imageSymbol];
  *v7 = 0xD00000000000001BLL;
  *(v7 + 1) = 0x80000001012222F0;
  v9.receiver = v0;
  v9.super_class = type metadata accessor for MapsHomeVisitedPlacesListViewModel();
  return objc_msgSendSuper2(&v9, "init");
}

id sub_1003D8394()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapsHomeVisitedPlacesListViewModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Void __swiftcall UIView.annotateView(placeCardViewController:)(PlaceCardViewController *placeCardViewController)
{
  v1 = [(PlaceCardViewController *)placeCardViewController placeCardItem];
  if (v1 && (v2 = v1, v3 = [(PlaceCardItem *)v1 mapItem], v2, v3))
  {
  }

  else
  {

    UIView.removeAnnotation()();
  }
}

Swift::Void __swiftcall UIView.annotateView(placeCardViewController:)(CarPlaceCardCardViewController *placeCardViewController)
{
  v1 = [(CarPlaceCardCardViewController *)placeCardViewController searchResult];
}

uint64_t sub_1003D872C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

id sub_1003D8960()
{
  v1 = OBJC_IVAR____TtC4Maps31DistanceAccessoryLabelViewModel____lazy_storage___labelView;
  v2 = *&v0[OBJC_IVAR____TtC4Maps31DistanceAccessoryLabelViewModel____lazy_storage___labelView];
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_1003D8A30(v0);
    v4 = *&v0[v1];
    *&v0[v1] = v3;
    v5 = v3;
    sub_10005D280(v4);
  }

  sub_10005D270(v2);
  return v3;
}

id sub_1003D8A30(void *a1)
{
  v2 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v2 - 8);
  type metadata accessor for DistanceAccessoryLabelViewModel();
  sub_1003D93FC(&qword_10191F5E0, type metadata accessor for DistanceAccessoryLabelViewModel);
  v3 = a1;
  v4 = ObservedObject.init(wrappedValue:)();
  v6 = v5;
  objc_allocWithZone(sub_1000CE6B8(&qword_10191F5E8));
  v14 = v4;
  v15 = v6;
  v7 = v6;
  v8 = UIHostingController.init(rootView:)();
  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  dispatch thunk of UIHostingController.sizingOptions.setter();
  dispatch thunk of UIHostingController._disableSafeArea.setter();

  v9 = v8;
  result = [v9 view];
  if (result)
  {
    v11 = result;
    v12 = [objc_opt_self() clearColor];
    [v11 setBackgroundColor:v12];

    v13 = [v9 view];
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1003D8BF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DistanceAccessoryLabelViewModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DistanceAccessoryLabelViewModel()
{
  result = qword_10191F5C8;
  if (!qword_10191F5C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003D8D04()
{
  sub_1003D8D9C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1003D8D9C()
{
  if (!qword_10191F5D8)
  {
    type metadata accessor for AttributedString();
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_10191F5D8);
    }
  }
}

uint64_t sub_1003D8DF4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DistanceAccessoryLabelViewModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1003D8E34()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_1003D8EB0(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for AttributedString();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v16 - v10;
  v12 = *(v5 + 16);
  v12(&v16 - v10, a1, v4, v9);
  v13 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  (v12)(v7, v11, v4);
  v14 = v13;
  static Published.subscript.setter();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_1003D9048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

unint64_t sub_1003D9118()
{
  result = qword_10191F638;
  if (!qword_10191F638)
  {
    sub_1000D6664(&qword_10191F620);
    sub_1003D91D0();
    sub_1000414C8(&qword_10191F660, &qword_10191F628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191F638);
  }

  return result;
}

unint64_t sub_1003D91D0()
{
  result = qword_10191F640;
  if (!qword_10191F640)
  {
    sub_1000D6664(&qword_10191F610);
    sub_1003D9288();
    sub_1000414C8(&qword_10191F658, &qword_10191F618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191F640);
  }

  return result;
}

unint64_t sub_1003D9288()
{
  result = qword_10191F648;
  if (!qword_10191F648)
  {
    sub_1000D6664(&qword_10191F600);
    sub_100316728();
    sub_1000414C8(&qword_10191F650, &qword_10191F608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191F648);
  }

  return result;
}

unint64_t sub_1003D9340()
{
  result = qword_10191F668;
  if (!qword_10191F668)
  {
    sub_1000D6664(&qword_10191F670);
    sub_100072C50();
    sub_1003D93FC(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191F668);
  }

  return result;
}

uint64_t sub_1003D93FC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1003D948C()
{
  type metadata accessor for VisitHistoryHomeViewModel();
  if (v0 <= 0x3F)
  {
    sub_1003E382C(319, &qword_10190CAC8, &type metadata for String, &type metadata accessor for State);
    if (v1 <= 0x3F)
    {
      sub_1003E382C(319, &unk_10191DAC0, &type metadata for Bool, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_1003E39C4(319, &unk_10190CAE8, &type metadata accessor for InterfaceIdiom, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_1003E382C(319, &unk_10190E240, &type metadata for Bool, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            sub_1003E39C4(319, &qword_10190A258, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
            if (v5 <= 0x3F)
            {
              sub_1003E39C4(319, &qword_10191E290, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
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

uint64_t sub_1003D96A0()
{
  v1 = v0;
  v2 = type metadata accessor for InterfaceIdiom();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v18 - v7;
  type metadata accessor for VisitHistoryHomeView(0);
  sub_100155054(v8);
  static InterfaceIdiom.phone.getter();
  v9 = static InterfaceIdiom.== infix(_:_:)();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);
  if (v9)
  {
    v11 = *(v1 + 40);
    LOBYTE(v21) = *(v1 + 32);
    *(&v21 + 1) = v11;
    sub_1000CE6B8(&qword_10190A140);
    State.wrappedValue.getter();
    return v19;
  }

  else
  {
    v13 = *(v1 + 56);
    LOBYTE(v21) = *(v1 + 48);
    *(&v21 + 1) = v13;
    sub_1000CE6B8(&qword_10190A140);
    State.wrappedValue.getter();
    if (v19)
    {
      return 1;
    }

    else
    {
      v14 = *(v1 + 24);
      v21 = *(v1 + 8);
      v22 = v14;
      sub_1000CE6B8(&qword_10190CCA0);
      State.wrappedValue.getter();
      v16 = v19;
      v15 = v20;

      v17 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v17 = v16 & 0xFFFFFFFFFFFFLL;
      }

      return v17 != 0;
    }
  }
}

uint64_t sub_1003D98A0()
{
  v1 = v0;
  v2 = type metadata accessor for EnvironmentValues();
  v24 = *(v2 - 8);
  v25 = v2;
  __chkstk_darwin(v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for InterfaceIdiom();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v23 - v10;
  v12 = type metadata accessor for VisitHistoryHomeView(0);
  sub_100155054(v11);
  static InterfaceIdiom.mac.getter();
  sub_1003DDC94(&qword_10190CC98, &type metadata accessor for InterfaceIdiom);
  v13 = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = *(v6 + 8);
  v14(v8, v5);
  if (v13)
  {
    v14(v11, v5);
    v15 = *v1;
    swift_getKeyPath();
    v26 = v15;
    sub_1003DDC94(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    LOBYTE(v16) = *(v15 + 48) > 1uLL;
    return v16 & 1;
  }

  static InterfaceIdiom.pad.getter();
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v14(v8, v5);
  if (v17)
  {
    v14(v11, v5);
  }

  else
  {
    static InterfaceIdiom.vision.getter();
    v18 = dispatch thunk of static Equatable.== infix(_:_:)();
    v14(v8, v5);
    v14(v11, v5);
    if ((v18 & 1) == 0)
    {
LABEL_7:
      LOBYTE(v16) = 0;
      return v16 & 1;
    }
  }

  v19 = *v1;
  swift_getKeyPath();
  v26 = v19;
  sub_1003DDC94(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v19 + 48) < 2uLL)
  {
    goto LABEL_7;
  }

  v20 = v1 + *(v12 + 36);
  v16 = *v20;
  if (v20[8] != 1)
  {

    static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000A1574(v16, 0);
    (*(v24 + 8))(v4, v25);
    LOBYTE(v16) = v26;
  }

  return v16 & 1;
}

uint64_t sub_1003D9CE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v53 = type metadata accessor for SearchToolbarBehavior();
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v50 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ContainerBackgroundPlacement();
  v48 = *(v4 - 8);
  v49 = v4;
  __chkstk_darwin(v4);
  v45 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for VisitHistoryHomeView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = sub_1000CE6B8(&qword_10190CF30);
  __chkstk_darwin(v9 - 8);
  v11 = &v40 - v10;
  v12 = sub_1000CE6B8(&qword_10190CF08);
  __chkstk_darwin(v12 - 8);
  v14 = &v40 - v13;
  v15 = sub_1000CE6B8(&qword_10191F748);
  __chkstk_darwin(v15);
  v17 = &v40 - v16;
  v42 = sub_1000CE6B8(&qword_10191F740);
  v43 = *(v42 - 8);
  __chkstk_darwin(v42);
  v19 = &v40 - v18;
  v41 = sub_1000CE6B8(&qword_10191F730);
  __chkstk_darwin(v41);
  v40 = &v40 - v20;
  v21 = sub_1000CE6B8(&qword_10191F728);
  v22 = *(v21 - 8);
  v46 = v21;
  v47 = v22;
  __chkstk_darwin(v21);
  v44 = &v40 - v23;
  *v11 = static HorizontalAlignment.center.getter();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v24 = sub_1000CE6B8(&qword_10191F770);
  sub_1003DA548(a1, &v11[*(v24 + 44)]);
  v56 = a1;
  sub_100150804(0, sub_1003DDB84, v55, v14);
  sub_100024F64(v11, &qword_10190CF30);
  v54 = a1;
  sub_100151600(0, sub_1003DDB8C, v17);
  sub_100024F64(v14, &qword_10190CF08);
  v25 = *(a1 + 24);
  v57 = *(a1 + 8);
  v58 = v25;
  sub_1000CE6B8(&qword_10190CCA0);
  State.wrappedValue.getter();
  v57 = v60;
  sub_1003E32A0(a1, &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VisitHistoryHomeView);
  v26 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v27 = swift_allocObject();
  sub_1003E3568(&v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for VisitHistoryHomeView);
  v28 = sub_1003DDAA4();
  View.onChange<A>(of:initial:_:)();

  sub_100024F64(v17, &qword_10191F748);
  *&v60 = static Color.clear.getter();
  v29 = v45;
  static ContainerBackgroundPlacement.navigation.getter();
  *&v57 = v15;
  *(&v57 + 1) = &type metadata for String;
  v58 = v28;
  v59 = &protocol witness table for String;
  swift_getOpaqueTypeConformance2();
  v30 = v40;
  v31 = v42;
  View.containerBackground<A>(_:for:)();
  (*(v48 + 8))(v29, v49);

  (*(v43 + 8))(v19, v31);
  v32 = v41;
  v33 = v30 + *(v41 + 36);
  *v33 = static HorizontalAlignment.center.getter();
  *(v33 + 8) = 0;
  *(v33 + 16) = 0;
  v34 = sub_1000CE6B8(&qword_10191F778);
  sub_1003DC348(a1, v33 + *(v34 + 44));
  *(v33 + *(sub_1000CE6B8(&qword_10191F760) + 36)) = 1;
  sub_1000CE6B8(&qword_10190A5F0);
  type metadata accessor for ToolbarPlacement();
  *(swift_allocObject() + 16) = xmmword_1011E1D30;
  static ToolbarPlacement.navigationBar.getter();
  v35 = sub_1003DD944();
  v36 = v44;
  View.toolbarVisibility(_:for:)();

  sub_100024F64(v30, &qword_10191F730);
  v37 = v50;
  static SearchToolbarBehavior.expandsWhenPresented.getter();
  *&v57 = v32;
  *(&v57 + 1) = v35;
  swift_getOpaqueTypeConformance2();
  v38 = v46;
  View.searchToolbarBehavior(_:)();
  (*(v51 + 8))(v37, v53);
  return (*(v47 + 8))(v36, v38);
}

uint64_t sub_1003DA548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v165 = a2;
  v140 = type metadata accessor for VisitHistoryHomeListView(0);
  __chkstk_darwin(v140);
  v135 = &v117[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v137 = sub_1000CE6B8(&qword_10191F790);
  __chkstk_darwin(v137);
  v139 = &v117[-v4];
  v133 = type metadata accessor for InterfaceIdiom();
  v132 = *(v133 - 8);
  __chkstk_darwin(v133);
  v131 = &v117[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v129 = &v117[-v7];
  v158 = type metadata accessor for VisitHistoryHomeFilterView(0);
  __chkstk_darwin(v158);
  v130 = &v117[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v136 = sub_1000CE6B8(&qword_10191F798);
  __chkstk_darwin(v136);
  v128 = &v117[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v134 = &v117[-v11];
  v164 = sub_1000CE6B8(&qword_10191F7A0);
  __chkstk_darwin(v164);
  v138 = &v117[-v12];
  v13 = sub_1000CE6B8(&qword_10190CC68);
  __chkstk_darwin(v13 - 8);
  v148 = &v117[-v14];
  v145 = type metadata accessor for EmptyStateViewModel.Icon();
  v144 = *(v145 - 8);
  __chkstk_darwin(v145);
  v147 = &v117[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for EmptyStateViewModel();
  __chkstk_darwin(v16 - 8);
  v146 = &v117[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v157 = type metadata accessor for EmptyStateView();
  v150 = *(v157 - 8);
  __chkstk_darwin(v157);
  v149 = &v117[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v160 = sub_1000CE6B8(&qword_10191F7A8);
  __chkstk_darwin(v160);
  v163 = &v117[-v19];
  v154 = sub_1000CE6B8(&qword_10191F7B0);
  __chkstk_darwin(v154);
  v156 = &v117[-v20];
  v161 = sub_1000CE6B8(&qword_10191F7B8);
  __chkstk_darwin(v161);
  v22 = &v117[-v21];
  v155 = sub_1000CE6B8(&qword_10190A2F8);
  __chkstk_darwin(v155);
  v143 = &v117[-v23];
  v142 = sub_1000CE6B8(&qword_10191D860);
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v25 = &v117[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v26);
  v153 = &v117[-v27];
  v28 = sub_1000CE6B8(&qword_10191F7C0);
  __chkstk_darwin(v28 - 8);
  v162 = &v117[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v30);
  v167 = &v117[-v31];
  v152 = type metadata accessor for VisitHistoryHomeView(0);
  v151 = *(v152 - 8);
  v32 = *(v151 + 64);
  __chkstk_darwin(v152);
  v33 = sub_1000CE6B8(&qword_10190CC58);
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v117[-v35];
  v37 = sub_1000CE6B8(&qword_10190E308);
  __chkstk_darwin(v37 - 8);
  v159 = &v117[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v39);
  v41 = &v117[-v40];
  v42 = sub_1003D98A0();
  v166 = v41;
  if (v42)
  {
    v125 = v33;
    v126 = v25;
    v127 = v22;
    v43 = *(a1 + 24);
    v172 = *(a1 + 8);
    v173 = v43;
    sub_1000CE6B8(&qword_10190CCA0);
    State.projectedValue.getter();
    v124 = v168;
    v123 = v169;
    v122 = v170;
    v121 = v171;
    v44 = *(a1 + 56);
    LOBYTE(v172) = *(a1 + 48);
    *(&v172 + 1) = v44;
    sub_1000CE6B8(&qword_10190A140);
    State.projectedValue.getter();
    v120 = v168;
    v119 = v169;
    v118 = v170;
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v174._object = 0x8000000101220630;
    v45._countAndFlagsBits = 0xD000000000000029;
    v45._object = 0x80000001012205E0;
    v46._object = 0x8000000101220610;
    v174._countAndFlagsBits = 0xD00000000000003BLL;
    v46._countAndFlagsBits = 0x100000000000001BLL;
    v47 = NSLocalizedString(_:tableName:bundle:value:comment:)(v45, 0, qword_1019600D8, v46, v174);
    v48 = type metadata accessor for LibrarySearchBar(0);
    sub_100155054(&v36[*(v48 + 28)]);
    sub_1003E32A0(a1, &v117[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for VisitHistoryHomeView);
    v49 = (*(v151 + 80) + 16) & ~*(v151 + 80);
    v50 = swift_allocObject();
    sub_1003E3568(&v117[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)], v50 + v49, type metadata accessor for VisitHistoryHomeView);
    v51 = v123;
    *v36 = v124;
    *(v36 + 1) = v51;
    v52 = v121;
    *(v36 + 2) = v122;
    *(v36 + 3) = v52;
    v53 = v119;
    *(v36 + 4) = v120;
    *(v36 + 5) = v53;
    v36[48] = v118;
    *(v36 + 56) = v47;
    v54 = &v36[*(v48 + 32)];
    *v54 = sub_1003E35D0;
    v54[1] = v50;
    v55 = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v56 = v125;
    v57 = &v36[*(v125 + 36)];
    *v57 = v55;
    *(v57 + 1) = v58;
    *(v57 + 2) = v59;
    *(v57 + 3) = v60;
    *(v57 + 4) = v61;
    v57[40] = 0;
    v62 = v166;
    sub_1000F11C4(v36, v166, &qword_10190CC58);
    (*(v34 + 56))(v62, 0, 1, v56);
    v22 = v127;
    v63 = v158;
    v25 = v126;
  }

  else
  {
    (*(v34 + 56))(v41, 1, 1, v33);
    v63 = v158;
  }

  v64 = *a1;
  swift_getKeyPath();
  v168 = v64;
  sub_1003DDC94(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v65 = *(v64 + 48);
  v66 = v167;
  if (v65)
  {
    if (v65 == 1)
    {
      v67 = v147;
      *v147 = 0xD00000000000001BLL;
      v67[1] = 0x80000001012222F0;
      (*(v144 + 104))(v67, enum case for EmptyStateViewModel.Icon.privateSystemIcon(_:), v145);
      v68 = v162;
      if (qword_101906768 != -1)
      {
        swift_once();
      }

      v69.super.isa = qword_1019600D8;
      v175._object = 0x8000000101235930;
      v70._countAndFlagsBits = 0x7469736956206F4ELL;
      v70._object = 0xED00007465592073;
      v71._countAndFlagsBits = 0xD00000000000002FLL;
      v71._object = 0x8000000101235900;
      v175._countAndFlagsBits = 0xD00000000000005BLL;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v71, 0, qword_1019600D8, v70, v175);
      v176._object = 0x8000000101235A40;
      v72._countAndFlagsBits = 0xD000000000000035;
      v72._object = 0x8000000101235990;
      v73._countAndFlagsBits = 0x1000000000000061;
      v73._object = 0x80000001012359D0;
      v176._countAndFlagsBits = 0xD000000000000084;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v72, 0, v69, v73, v176);
      v74 = type metadata accessor for EmptyStateViewModel.ButtonConfig();
      (*(*(v74 - 8) + 56))(v148, 1, 1, v74);
      EmptyStateViewModel.init(icon:title:details:button:)();
      v75 = v149;
      EmptyStateView.init(model:)();
      v76 = v150;
      v77 = v157;
      (*(v150 + 16))(v156, v75, v157);
      swift_storeEnumTagMultiPayload();
      sub_1000414C8(&qword_10190A3D8, &qword_10190A2F8);
      sub_1003DDC94(&qword_10190CDC0, &type metadata accessor for EmptyStateView);
      _ConditionalContent<>.init(storage:)();
      sub_1000D2DFC(v22, v163, &qword_10191F7B8);
      swift_storeEnumTagMultiPayload();
      sub_1003E33C4();
      sub_1003E34AC();
      v66 = v167;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v22, &qword_10191F7B8);
      (*(v76 + 8))(v75, v77);
    }

    else
    {

      v88 = sub_1003D96A0();
      v68 = v162;
      if (v88)
      {
        sub_100100D94(v65);
        *&v172 = *(v64 + 72);
        type metadata accessor for VisitHistoryFilterViewModel(0);

        State.init(wrappedValue:)();
        v89 = v169;
        v90 = v130;
        *v130 = v168;
        *(v90 + 8) = v89;
        *(v90 + 16) = swift_getKeyPath();
        *(v90 + 24) = 0;
        v91 = *(v63 + 24);
        *(v90 + v91) = swift_getKeyPath();
        sub_1000CE6B8(&qword_10190CBC8);
        swift_storeEnumTagMultiPayload();
        v92 = static Edge.Set.top.getter();
        v93 = v129;
        sub_100155054(v129);
        v94 = v131;
        static InterfaceIdiom.phone.getter();
        sub_1003DDC94(&qword_10190CC98, &type metadata accessor for InterfaceIdiom);
        v95 = v133;
        dispatch thunk of static Equatable.== infix(_:_:)();
        v96 = *(v132 + 8);
        v96(v94, v95);
        v96(v93, v95);
        EdgeInsets.init(_all:)();
        v98 = v97;
        v100 = v99;
        v102 = v101;
        v104 = v103;
        v105 = v128;
        sub_1003E3568(v90, v128, type metadata accessor for VisitHistoryHomeFilterView);
        v106 = &v105[*(v136 + 36)];
        *v106 = v92;
        *(v106 + 1) = v98;
        *(v106 + 2) = v100;
        *(v106 + 3) = v102;
        *(v106 + 4) = v104;
        v106[40] = 0;
        v107 = v134;
        sub_1000F11C4(v105, v134, &qword_10191F798);
        sub_1000D2DFC(v107, v139, &qword_10191F798);
        swift_storeEnumTagMultiPayload();
        sub_1003E3308();
        sub_1003DDC94(&qword_10191F7D8, type metadata accessor for VisitHistoryHomeListView);
        v108 = v138;
        _ConditionalContent<>.init(storage:)();
        sub_100024F64(v107, &qword_10191F798);
      }

      else
      {
        KeyPath = swift_getKeyPath();
        v110 = v140;
        v111 = v135;
        *&v135[*(v140 + 24)] = KeyPath;
        sub_1000CE6B8(&qword_10190A1A0);
        swift_storeEnumTagMultiPayload();
        *(v111 + *(v110 + 28)) = swift_getKeyPath();
        sub_1000CE6B8(&qword_10191DF80);
        swift_storeEnumTagMultiPayload();
        *v111 = v64;
        v111[1] = v65;
        sub_1003E32A0(v111, v139, type metadata accessor for VisitHistoryHomeListView);
        swift_storeEnumTagMultiPayload();
        sub_1003E3308();
        sub_1003DDC94(&qword_10191F7D8, type metadata accessor for VisitHistoryHomeListView);

        v108 = v138;
        _ConditionalContent<>.init(storage:)();
        sub_1003E51E0(v111, type metadata accessor for VisitHistoryHomeListView);
      }

      sub_1000D2DFC(v108, v163, &qword_10191F7A0);
      swift_storeEnumTagMultiPayload();
      sub_1003E33C4();
      sub_1003E34AC();
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v108, &qword_10191F7A0);
    }
  }

  else
  {
    v78 = v153;
    ProgressView<>.init<>()();
    v79 = v22;
    v80 = v141;
    v81 = *(v141 + 16);
    v82 = v142;
    v81(v25, v78, v142);
    v83 = v143;
    *v143 = 0;
    *(v83 + 8) = 1;
    v84 = sub_1000CE6B8(&qword_10190A408);
    v81((v83 + *(v84 + 48)), v25, v82);
    v85 = v83 + *(v84 + 64);
    *v85 = 0;
    *(v85 + 8) = 1;
    v86 = *(v80 + 8);
    v86(v25, v82);
    sub_1000D2DFC(v83, v156, &qword_10190A2F8);
    swift_storeEnumTagMultiPayload();
    sub_1000414C8(&qword_10190A3D8, &qword_10190A2F8);
    sub_1003DDC94(&qword_10190CDC0, &type metadata accessor for EmptyStateView);
    _ConditionalContent<>.init(storage:)();
    sub_1000D2DFC(v79, v163, &qword_10191F7B8);
    swift_storeEnumTagMultiPayload();
    sub_1003E33C4();
    sub_1003E34AC();
    _ConditionalContent<>.init(storage:)();
    sub_100024F64(v79, &qword_10191F7B8);
    sub_100024F64(v83, &qword_10190A2F8);
    v87 = v82;
    v66 = v167;
    v86(v153, v87);
    v68 = v162;
  }

  v112 = v159;
  v113 = v166;
  sub_1000D2DFC(v166, v159, &qword_10190E308);
  sub_1000D2DFC(v66, v68, &qword_10191F7C0);
  v114 = v165;
  sub_1000D2DFC(v112, v165, &qword_10190E308);
  v115 = sub_1000CE6B8(&qword_10191F7F0);
  sub_1000D2DFC(v68, v114 + *(v115 + 48), &qword_10191F7C0);
  sub_100024F64(v66, &qword_10191F7C0);
  sub_100024F64(v113, &qword_10190E308);
  sub_100024F64(v68, &qword_10191F7C0);
  return sub_100024F64(v112, &qword_10190E308);
}

uint64_t sub_1003DBC48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v5 = type metadata accessor for VisitHistoryHomeView(0);
  v31 = *(v5 - 8);
  v30 = *(v31 + 64);
  __chkstk_darwin(v5 - 8);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000CE6B8(&qword_10190CF18);
  __chkstk_darwin(v7);
  v33 = &v25 - v8;
  v9 = *a2;
  swift_getKeyPath();
  *&v35 = v9;
  sub_1003DDC94(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v28 = *(v9 + 48) > 1uLL;
  v10 = *(a2 + 24);
  v38 = *(a2 + 8);
  v39 = v10;
  sub_1000CE6B8(&qword_10190CCA0);
  State.projectedValue.getter();
  v27 = v35;
  v25 = v37;
  v26 = v36;
  v12 = *(a2 + 40);
  LOBYTE(v38) = *(a2 + 32);
  v11 = v38;
  *(&v38 + 1) = v12;
  sub_1000CE6B8(&qword_10190A140);
  State.projectedValue.getter();
  v13 = v35;
  v14 = v36;
  KeyPath = swift_getKeyPath();
  LOBYTE(v38) = 0;
  v16 = a1;
  v17 = v33;
  sub_1000D2DFC(v16, v33, &qword_10190CF30);
  v18 = v17 + *(v7 + 36);
  *v18 = v28;
  *(v18 + 8) = v27;
  v19 = v25;
  *(v18 + 24) = v26;
  *(v18 + 32) = v19;
  *(v18 + 40) = v13;
  *(v18 + 56) = v14;
  *(v18 + 64) = KeyPath;
  *(v18 + 72) = v38;
  LOBYTE(v35) = v11;
  *(&v35 + 1) = v12;
  State.wrappedValue.getter();
  LOBYTE(v35) = v34;
  v20 = v29;
  sub_1003E32A0(a2, v29, type metadata accessor for VisitHistoryHomeView);
  v21 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v22 = swift_allocObject();
  sub_1003E3568(v20, v22 + v21, type metadata accessor for VisitHistoryHomeView);
  sub_1001573C4();
  v23 = v33;
  View.onChange<A>(of:initial:_:)();

  return sub_100024F64(v23, &qword_10190CF18);
}

void sub_1003DBFBC()
{
  sub_1000CE6B8(&qword_10190A140);
  State.wrappedValue.getter();
  sub_10040F588(v1);
  State.wrappedValue.getter();
  if ((v1 & 1) == 0)
  {
    v0 = [objc_opt_self() sharedApplication];
    [v0 sendAction:"resignFirstResponder" to:0 from:0 forEvent:0];
  }
}

uint64_t sub_1003DC09C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for VisitHistoryHomeView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v10 = *(a2 + 56);
  sub_1000CE6B8(&qword_10190A140);
  State.wrappedValue.getter();
  v9[16] = v9[15];
  sub_1003E32A0(a2, &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for VisitHistoryHomeView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_1003E3568(&v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v7 + v6, type metadata accessor for VisitHistoryHomeView);
  sub_1000CE6B8(&qword_10190CF08);
  sub_1001572BC();
  View.onChange<A>(of:initial:_:)();
}

uint64_t sub_1003DC258()
{
  sub_1000CE6B8(&qword_10190A140);
  State.wrappedValue.getter();
  return sub_10040F588(v1);
}

uint64_t sub_1003DC2BC()
{

  sub_1000CE6B8(&qword_10190CCA0);
  State.wrappedValue.getter();
  sub_10025DAB8(v1, v2);
}

uint64_t sub_1003DC348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v111 = a2;
  v3 = type metadata accessor for LeadingCardHeaderViewModel();
  __chkstk_darwin(v3 - 8);
  v94 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  countAndFlagsBits = type metadata accessor for LeadingCardHeader();
  v95 = *(countAndFlagsBits - 8);
  __chkstk_darwin(countAndFlagsBits);
  v93 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_1000CE6B8(&qword_10190A5F8);
  __chkstk_darwin(v110);
  v92 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v97 = (&v79 - v8);
  v107 = sub_1000CE6B8(&qword_10191F780);
  __chkstk_darwin(v107);
  v109 = &v79 - v9;
  v10 = type metadata accessor for MapsDesignAccessibilityString();
  v103 = *(v10 - 8);
  v104 = v10;
  __chkstk_darwin(v10);
  v85 = (&v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v106 = type metadata accessor for CenteredCardHeaderNavigation();
  v84 = *(v106 - 8);
  __chkstk_darwin(v106);
  v83 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_1000CE6B8(&qword_10190CC00);
  v87 = *(v108 - 8);
  __chkstk_darwin(v108);
  v86 = &v79 - v13;
  v14 = type metadata accessor for CardHeaderSize();
  v100 = *(v14 - 8);
  v101 = v14;
  __chkstk_darwin(v14);
  v105 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for VisitHistoryHomeView(0);
  v98 = *(v16 - 8);
  __chkstk_darwin(v16);
  v99 = v17;
  v102 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for CenteredCardHeaderNavigationViewModel();
  v82 = *(v91 - 8);
  __chkstk_darwin(v91);
  v80 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v81 = &v79 - v20;
  v21 = sub_1000CE6B8(&unk_101910FC0);
  __chkstk_darwin(v21 - 8);
  v23 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v79 - v25;
  __chkstk_darwin(v27);
  v29 = &v79 - v28;
  __chkstk_darwin(v30);
  v32 = &v79 - v31;
  object = type metadata accessor for CardHeaderTextViewModel();
  v89 = *(object - 8);
  __chkstk_darwin(object);
  v79 = &v79 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v88 = &v79 - v35;
  v36 = type metadata accessor for InterfaceIdiom();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v79 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v42 = &v79 - v41;
  v112 = a1;
  if (sub_1003D96A0() & 1) != 0 && (sub_100155054(v42), static InterfaceIdiom.phone.getter(), v43 = static InterfaceIdiom.== infix(_:_:)(), v44 = *(v37 + 8), v44(v39, v36), v44(v42, v36), (v43))
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v116._object = 0x8000000101235880;
    v45._countAndFlagsBits = 0x5620686372616553;
    v45._object = 0xED00007374697369;
    v46._countAndFlagsBits = 0xD000000000000020;
    v46._object = 0x8000000101235850;
    v116._countAndFlagsBits = 0xD000000000000079;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v46, 0, qword_1019600D8, v45, v116)._countAndFlagsBits;
    v47 = v103;
    v48 = v104;
    v49 = *(v103 + 104);
    (v49)(v32, enum case for MapsDesignAccessibilityString.titleLabel(_:), v104);
    v97 = v49;
    v50 = *(v47 + 56);
    v50(v32, 0, 1, v48);
    (v49)(v29, enum case for MapsDesignAccessibilityString.subtitleLabel(_:), v48);
    v50(v29, 0, 1, v48);
    (v49)(v26, enum case for MapsDesignAccessibilityString.tertiaryLabel(_:), v48);
    v50(v26, 0, 1, v48);
    static HorizontalAlignment.center.getter();
    v51 = v88;
    CardHeaderTextViewModel.init(title:titleAXID:subtitle:subtitleAXID:interactiveSubtitle:interactiveSubtitleAXID:alignment:interactiveTitleTapHandler:interactiveSubtitleTapHandler:)();
    (*(v89 + 16))(v79, v51, object);
    sub_1000CE6B8(&qword_10191D770);
    type metadata accessor for CardButtonViewModel();
    *(swift_allocObject() + 16) = xmmword_1011E1D30;
    v52 = v102;
    sub_1003E32A0(v112, v102, type metadata accessor for VisitHistoryHomeView);
    v53 = (*(v98 + 80) + 16) & ~*(v98 + 80);
    v54 = swift_allocObject();
    sub_1003E3568(v52, v54 + v53, type metadata accessor for VisitHistoryHomeView);
    static CardButtonViewModel.close(tintColor:enabled:action:)();

    (*(v100 + 104))(v105, enum case for CardHeaderSize.medium(_:), v101);
    v55 = v81;
    CenteredCardHeaderNavigationViewModel.init(textViewModel:visible:leadingButtons:trailingButtons:size:)();
    v56 = v82;
    (*(v82 + 16))(v80, v55, v91);
    v57 = v83;
    CenteredCardHeaderNavigation.init(viewModel:leadingButtonsWidthBinding:trailingButtonsWidthBinding:)();
    v58 = v85;
    *v85 = 0xD000000000000011;
    v58[1] = 0x80000001012357E0;
    (v97)(v58, enum case for MapsDesignAccessibilityString.header(_:), v48);
    v59 = sub_1003DDC94(&qword_10190CC10, &type metadata accessor for CenteredCardHeaderNavigation);
    v60 = v86;
    v61 = v106;
    View.mapsDesignAXCombinedContainer(withID:)();
    (*(v47 + 8))(v58, v48);
    (*(v84 + 8))(v57, v61);
    v62 = v87;
    v63 = v108;
    (*(v87 + 16))(v109, v60, v108);
    swift_storeEnumTagMultiPayload();
    *&v113 = v61;
    *(&v113 + 1) = v59;
    swift_getOpaqueTypeConformance2();
    sub_1003DDBD8();
    _ConditionalContent<>.init(storage:)();
    (*(v62 + 8))(v60, v63);
    (*(v56 + 8))(v55, v91);
    return (*(v89 + 8))(v88, object);
  }

  else
  {
    if (qword_101906768 != -1)
    {
      swift_once();
    }

    v65.super.isa = qword_1019600D8;
    v117._object = 0x8000000101235820;
    v66._countAndFlagsBits = 0x2064657469736956;
    v66._object = 0xEE00736563616C50;
    v67._countAndFlagsBits = 0xD00000000000001FLL;
    v67._object = 0x8000000101235800;
    v117._countAndFlagsBits = 0xD000000000000026;
    v68 = NSLocalizedString(_:tableName:bundle:value:comment:)(v67, 0, qword_1019600D8, v66, v117);
    v91 = v68._countAndFlagsBits;
    object = v68._object;
    (*(v103 + 56))(v23, 1, 1, v104);
    if (qword_1019067E0 != -1)
    {
      swift_once();
    }

    if (byte_1019601D1 == 1)
    {
      v118._object = 0x80000001012337F0;
      v69._countAndFlagsBits = 0xD00000000000001BLL;
      v69._object = 0x80000001012337D0;
      v118._countAndFlagsBits = 0xD00000000000003ELL;
      v70._countAndFlagsBits = 1096041794;
      v70._object = 0xE400000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v69, 0, v65, v70, v118);
    }

    (*(v100 + 104))(v105, enum case for CardHeaderSize.large(_:), v101);
    v115 = 0;
    v113 = 0u;
    v114 = 0u;
    sub_1000CE6B8(&qword_10191D770);
    type metadata accessor for CardButtonViewModel();
    *(swift_allocObject() + 16) = xmmword_1011E1D30;
    v71 = v102;
    sub_1003E32A0(v112, v102, type metadata accessor for VisitHistoryHomeView);
    v72 = (*(v98 + 80) + 16) & ~*(v98 + 80);
    v73 = swift_allocObject();
    sub_1003E3568(v71, v73 + v72, type metadata accessor for VisitHistoryHomeView);
    static CardButtonViewModel.close(tintColor:enabled:action:)();

    LeadingCardHeaderViewModel.init(title:titleAXID:subtitle:interactiveSubtitle:badgeText:size:leadingImageProvider:leadingImagePlaceholder:trailingButtons:)();
    v74 = v93;
    LeadingCardHeader.init(viewModel:interactiveSubtitleTapHandler:)();
    v75 = v92;
    (*(v95 + 32))(v92, v74, countAndFlagsBits);
    v76 = v75 + *(v110 + 36);
    *v76 = 0xD000000000000011;
    *(v76 + 8) = 0x80000001012357E0;
    *(v76 + 16) = 12;
    v77 = v97;
    sub_1000F11C4(v75, v97, &qword_10190A5F8);
    sub_1000D2DFC(v77, v109, &qword_10190A5F8);
    swift_storeEnumTagMultiPayload();
    v78 = sub_1003DDC94(&qword_10190CC10, &type metadata accessor for CenteredCardHeaderNavigation);
    *&v113 = v106;
    *(&v113 + 1) = v78;
    swift_getOpaqueTypeConformance2();
    sub_1003DDBD8();
    _ConditionalContent<>.init(storage:)();
    return sub_100024F64(v77, &qword_10190A5F8);
  }
}

uint64_t sub_1003DD53C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  swift_getKeyPath();
  sub_1003DDC94(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + 88);
  if (v4)
  {

    v4(v2);
    return sub_1000588AC(v4);
  }

  return result;
}

uint64_t sub_1003DD604@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000CE6B8(&qword_10191DF80);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for VisitHistoryHomeListView(0);
  sub_1000D2DFC(v1 + *(v10 + 28), v9, &qword_10191DF80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for DynamicTypeSize();
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

uint64_t sub_1003DD80C@<X0>(uint64_t a1@<X8>)
{
  sub_1000CE6B8(&qword_10191F720);
  sub_1000D6664(&qword_10191F728);
  sub_1000D6664(&qword_10191F730);
  sub_1003DD944();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  NavigationStack.init<>(root:)();
  result = sub_1000CE6B8(&qword_10191F768);
  v3 = a1 + *(result + 36);
  *v3 = 0xD000000000000011;
  *(v3 + 8) = 0x80000001012357E0;
  *(v3 + 16) = 13;
  return result;
}

unint64_t sub_1003DD944()
{
  result = qword_10191F738;
  if (!qword_10191F738)
  {
    sub_1000D6664(&qword_10191F730);
    sub_1000D6664(&qword_10191F740);
    sub_1000D6664(&qword_10191F748);
    sub_1003DDAA4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000414C8(&qword_10191F758, &qword_10191F760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191F738);
  }

  return result;
}

unint64_t sub_1003DDAA4()
{
  result = qword_10191F750;
  if (!qword_10191F750)
  {
    sub_1000D6664(&qword_10191F748);
    sub_1000D6664(&qword_10190CF08);
    sub_1001572BC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191F750);
  }

  return result;
}

unint64_t sub_1003DDBD8()
{
  result = qword_10191F788;
  if (!qword_10191F788)
  {
    sub_1000D6664(&qword_10190A5F8);
    sub_1003DDC94(&qword_10190AF00, &type metadata accessor for LeadingCardHeader);
    sub_1000F34D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191F788);
  }

  return result;
}

uint64_t sub_1003DDC94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003DDCDC()
{
  v1 = type metadata accessor for ContentMarginPlacement();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1000CE6B8(&qword_10191F990);
  __chkstk_darwin(v5);
  v7 = &v10[-v6];
  v11 = v0;
  sub_1000CE6B8(&qword_10191F998);
  sub_1000414C8(&qword_10191F9A0, &qword_10191F998);
  List<>.init(content:)();
  static Edge.Set.top.getter();
  v8 = *v0;
  swift_getKeyPath();
  v12 = v8;
  sub_1003DDC94(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v8 + 80) == 1)
  {
    static MapsDesignConstants.Spacing.listTopPadding.getter();
  }

  static ContentMarginPlacement.automatic.getter();
  sub_1003E3B80();
  View.contentMargins(_:_:for:)();
  (*(v2 + 8))(v4, v1);
  return sub_100024F64(v7, &qword_10191F990);
}

uint64_t sub_1003DDF54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v44 = sub_1000CE6B8(&qword_10191F9C8);
  __chkstk_darwin(v44);
  v43 = &v41 - v3;
  v4 = sub_1000CE6B8(&qword_10191F9D0);
  v5 = *(v4 - 8);
  v48 = v4;
  v49 = v5;
  __chkstk_darwin(v4);
  v42 = &v41 - v6;
  v7 = sub_1000CE6B8(&qword_10191F9D8);
  __chkstk_darwin(v7 - 8);
  v50 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v46 = &v41 - v10;
  v11 = type metadata accessor for VisitHistoryHomeListView(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v14 = sub_1000CE6B8(&qword_10191F9E0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v41 - v16;
  v18 = sub_1000CE6B8(&qword_10191F9E8);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v47 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v41 - v22;
  v45 = a1;
  v52 = *(a1 + 8);
  sub_1003E32A0(a1, &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VisitHistoryHomeListView);
  v24 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v25 = swift_allocObject();
  sub_1003E3568(&v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for VisitHistoryHomeListView);

  sub_1000CE6B8(&qword_10191F9F0);
  sub_1000CE6B8(&qword_10191F9F8);
  sub_1000414C8(&qword_10191FA00, &qword_10191F9F0);
  sub_1003E3D0C();
  sub_1003E46C4();
  v26 = v45;
  ForEach<>.init(_:content:)();
  static VerticalEdge.Set.all.getter();
  sub_1003E4718();
  View.listRowSeparator(_:edges:)();
  (*(v15 + 8))(v17, v14);
  v52 = static Color.clear.getter();
  *&v23[*(v19 + 44)] = AnyView.init<A>(_:)();
  v27 = *v26;
  swift_getKeyPath();
  v52 = v27;
  sub_1003DDC94(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v27 + 64) < 1)
  {
    v34 = 1;
    v35 = v48;
    v33 = v46;
  }

  else
  {
    __chkstk_darwin(v28);
    sub_1000CE6B8(&qword_10191FB50);
    sub_1003E47A4();
    v29 = v43;
    Section<>.init(content:)();
    static VerticalEdge.Set.all.getter();
    sub_1003E48E8();
    v30 = v42;
    View.listRowSeparator(_:edges:)();
    sub_100024F64(v29, &qword_10191F9C8);
    v52 = static Color.clear.getter();
    v31 = AnyView.init<A>(_:)();
    v32 = v48;
    *(v30 + *(v48 + 36)) = v31;
    v33 = v46;
    sub_1000B7390(v30, v46);
    v34 = 0;
    v35 = v32;
  }

  (*(v49 + 56))(v33, v34, 1, v35);
  v36 = v47;
  sub_1000D2DFC(v23, v47, &qword_10191F9E8);
  v37 = v50;
  sub_1000D2DFC(v33, v50, &qword_10191F9D8);
  v38 = v51;
  sub_1000D2DFC(v36, v51, &qword_10191F9E8);
  v39 = sub_1000CE6B8(&qword_10191FB48);
  sub_1000D2DFC(v37, v38 + *(v39 + 48), &qword_10191F9D8);
  sub_100024F64(v33, &qword_10191F9D8);
  sub_100024F64(v23, &qword_10191F9E8);
  sub_100024F64(v37, &qword_10191F9D8);
  return sub_100024F64(v36, &qword_10191F9E8);
}

uint64_t sub_1003DE664(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000CE6B8(&qword_10191FA28);
  __chkstk_darwin(v4);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v10 = *a1;
  v11 = v5;
  v12 = v6;
  v13 = *(a1 + 24);
  v14 = a2;
  sub_1003E1114(v10, v5, v6, v13, &v9[-v7]);
  sub_1000CE6B8(&qword_10191FA48);
  sub_1003E3E30();
  sub_1003E3F70();
  return Section<>.init(header:content:)();
}

uint64_t sub_1003DE778@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v101 = a3;
  v102 = a5;
  LODWORD(v109) = a4;
  v90 = a2;
  v108 = a1;
  v114 = a6;
  v93 = sub_1000CE6B8(&qword_10191FB28);
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v82 - v6;
  v113 = sub_1000CE6B8(&qword_10191FB08);
  __chkstk_darwin(v113);
  v88 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v89 = &v82 - v9;
  v97 = sub_1000CE6B8(&qword_10191FBC8);
  __chkstk_darwin(v97);
  v98 = &v82 - v10;
  v107 = sub_1000CE6B8(&qword_10191FAB0);
  __chkstk_darwin(v107);
  v100 = &v82 - v11;
  v99 = sub_1000CE6B8(&qword_10191FAC0);
  v87 = *(v99 - 8);
  __chkstk_darwin(v99);
  v96 = &v82 - v12;
  v95 = type metadata accessor for DynamicTypeSize();
  v84 = *(v95 - 8);
  __chkstk_darwin(v95);
  v83 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for GridLayoutConfig();
  __chkstk_darwin(v14 - 8);
  v94 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1000CE6B8(&qword_10191FA90);
  v86 = *(v85 - 8);
  __chkstk_darwin(v85);
  v17 = &v82 - v16;
  v18 = sub_1000CE6B8(&qword_10191FA80);
  __chkstk_darwin(v18);
  v20 = &v82 - v19;
  v111 = sub_1000CE6B8(&qword_10191FBD0);
  __chkstk_darwin(v111);
  v112 = &v82 - v21;
  v103 = sub_1000CE6B8(&qword_10191FBD8);
  __chkstk_darwin(v103);
  v105 = &v82 - v22;
  v23 = sub_1000CE6B8(&qword_10191FBE0);
  __chkstk_darwin(v23);
  v25 = &v82 - v24;
  v104 = sub_1000CE6B8(&qword_10191FA68);
  __chkstk_darwin(v104);
  v27 = &v82 - v26;
  v110 = sub_1000CE6B8(&qword_10191FA58);
  __chkstk_darwin(v110);
  v106 = &v82 - v28;
  v29 = type metadata accessor for VisitHistoryHomeListView(0);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29 - 8);
  v32 = type metadata accessor for VisitedHistoryHomeCategoriesView();
  __chkstk_darwin(v32);
  v35 = (&v82 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = v109;
  if (v109 <= 1u)
  {
    v98 = v25;
    v44 = v95;
    v99 = v23;
    v100 = v27;
    v97 = v20;
    v109 = v18;
    if (v36)
    {
      v65 = v100;
      v96 = v33;
      if (v108 >> 62)
      {
        v66 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v66 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v67 = v84;
      v68 = v83;
      if (v66 < 1)
      {
        v74 = v97;
        (*(v86 + 56))(v97, 1, 1, v85);
      }

      else
      {
        v69 = v108;

        sub_1003DD604(v68);
        static MapsDesignConstants.GridLayouts.visitedPlacesLocationsGridLayoutConfig(count:dynamicType:)();
        v70 = (*(v67 + 8))(v68, v44);
        __chkstk_darwin(v70);
        sub_1000CE6B8(&qword_10191FC08);
        sub_1003E4FF0();
        v71 = v17;
        GridLayout.init(config:content:)();
        sub_1003E4F30(v69, v90, v101, 1u);
        v72 = v85;
        v73 = v71 + *(v85 + 36);
        *v73 = 0xD000000000000018;
        *(v73 + 8) = 0x8000000101235C10;
        *(v73 + 16) = 13;
        v74 = v97;
        sub_1000F11C4(v71, v97, &qword_10191FA90);
        (*(v86 + 56))(v74, 0, 1, v72);
      }

      sub_1000D2DFC(v74, v98, &qword_10191FA80);
      swift_storeEnumTagMultiPayload();
      sub_1003DDC94(&qword_10191FA70, type metadata accessor for VisitedHistoryHomeCategoriesView);
      sub_1003E4144();
      _ConditionalContent<>.init(storage:)();
      sub_1000D2DFC(v65, v105, &qword_10191FA68);
      swift_storeEnumTagMultiPayload();
      sub_1003E4088();
      sub_1003E4280();
      v80 = v65;
      v81 = v106;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v80, &qword_10191FA68);
      sub_1000D2DFC(v81, v112, &qword_10191FA58);
      swift_storeEnumTagMultiPayload();
      sub_1003E3FFC();
      sub_1003E4504();
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v81, &qword_10191FA58);
      return sub_100024F64(v74, &qword_10191FA80);
    }

    else
    {
      v45 = v33;
      sub_1003E32A0(v102, &v82 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VisitHistoryHomeListView);
      v46 = (*(v30 + 80) + 16) & ~*(v30 + 80);
      v47 = swift_allocObject();
      sub_1003E3568(&v82 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v47 + v46, type metadata accessor for VisitHistoryHomeListView);
      *(v35 + *(v45 + 6)) = swift_getKeyPath();
      sub_1000CE6B8(&qword_10191DF80);
      swift_storeEnumTagMultiPayload();
      *v35 = v108;
      v35[1] = sub_1003E5160;
      v35[2] = v47;
      sub_1003E32A0(v35, v98, type metadata accessor for VisitedHistoryHomeCategoriesView);
      swift_storeEnumTagMultiPayload();
      sub_1003DDC94(&qword_10191FA70, type metadata accessor for VisitedHistoryHomeCategoriesView);
      sub_1003E4144();

      v48 = v100;
      _ConditionalContent<>.init(storage:)();
      sub_1000D2DFC(v48, v105, &qword_10191FA68);
      swift_storeEnumTagMultiPayload();
      sub_1003E4088();
      sub_1003E4280();
      v49 = v106;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v48, &qword_10191FA68);
      sub_1000D2DFC(v49, v112, &qword_10191FA58);
      swift_storeEnumTagMultiPayload();
      sub_1003E3FFC();
      sub_1003E4504();
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v49, &qword_10191FA58);
      return sub_1003E51E0(v35, type metadata accessor for VisitedHistoryHomeCategoriesView);
    }
  }

  else if (v109 == 2)
  {
    v115 = v108;
    sub_1003E32A0(v102, &v82 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VisitHistoryHomeListView);
    v51 = (*(v30 + 80) + 16) & ~*(v30 + 80);
    v52 = swift_allocObject();
    sub_1003E3568(&v82 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v52 + v51, type metadata accessor for VisitHistoryHomeListView);

    sub_1000CE6B8(&qword_10190E4A8);
    sub_1000CE6B8(&qword_10191FAD0);
    sub_1000414C8(&qword_10190E4B8, &qword_10190E4A8);
    sub_1003E4390();
    sub_1003DDC94(&qword_10190E4E8, type metadata accessor for VisitHistoryItem);
    v53 = v96;
    ForEach<>.init(_:content:)();
    v54 = v87;
    v55 = v99;
    (*(v87 + 16))(v98, v53, v99);
    swift_storeEnumTagMultiPayload();
    sub_1003E430C();
    sub_1003E4504();
    v56 = v100;
    _ConditionalContent<>.init(storage:)();
    sub_1000D2DFC(v56, v105, &qword_10191FAB0);
    swift_storeEnumTagMultiPayload();
    sub_1003E4088();
    sub_1003E4280();
    v57 = v106;
    _ConditionalContent<>.init(storage:)();
    sub_100024F64(v56, &qword_10191FAB0);
    sub_1000D2DFC(v57, v112, &qword_10191FA58);
    swift_storeEnumTagMultiPayload();
    sub_1003E3FFC();
    _ConditionalContent<>.init(storage:)();
    sub_100024F64(v57, &qword_10191FA58);
    return (*(v54 + 8))(v96, v55);
  }

  else
  {
    if (v109 == 3)
    {
      v37 = *(v101 + 16);

      if (v37)
      {
        v38 = static MapsDesignConstants.GridLayouts.visitedPlacesCurrentYearGridLayoutConfig(count:)();
        __chkstk_darwin(v38);
        sub_1000CE6B8(&qword_10191FBE8);
        sub_1003E4D90();
        v39 = v91;
        GridLayout.init(config:content:)();

        v115 = 0xD000000000000025;
        v116 = 0x8000000101235BE0;
        v40._countAndFlagsBits = 2003134806;
        v40._object = 0xE400000000000000;
        String.append(_:)(v40);
        sub_1000414C8(&qword_10191FB20, &qword_10191FB28);
        v41 = v89;
        v42 = v93;
        View.accessibilityIdentifier(_:)();

        (*(v92 + 8))(v39, v42);
        v43 = sub_1000CE6B8(&qword_10191FB18);
        (*(*(v43 - 8) + 56))(v41, 0, 1, v43);
      }

      else
      {

        v75 = sub_1000CE6B8(&qword_10191FB18);
        v41 = v89;
        (*(*(v75 - 8) + 56))(v89, 1, 1, v75);
      }

      sub_1000D2DFC(v41, v98, &qword_10191FB08);
      swift_storeEnumTagMultiPayload();
      sub_1003E430C();
      sub_1003E4504();
      v76 = v100;
      _ConditionalContent<>.init(storage:)();
      sub_1000D2DFC(v76, v105, &qword_10191FAB0);
      swift_storeEnumTagMultiPayload();
      sub_1003E4088();
      sub_1003E4280();
      v77 = v106;
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v76, &qword_10191FAB0);
      sub_1000D2DFC(v77, v112, &qword_10191FA58);
      swift_storeEnumTagMultiPayload();
      sub_1003E3FFC();
      _ConditionalContent<>.init(storage:)();
      sub_100024F64(v77, &qword_10191FA58);
      v78 = v41;
    }

    else
    {
      v58 = v108;
      if (*(v108 + 16))
      {

        v59 = static MapsDesignConstants.GridLayouts.visitedPlacesPreviousYearGridLayoutConfig(count:)();
        __chkstk_darwin(v59);
        sub_1000CE6B8(&qword_10191FBE8);
        sub_1003E4D90();
        v60 = v91;
        GridLayout.init(config:content:)();
        sub_1003E4F30(v58, v90, v101, 4u);
        v115 = 0xD000000000000027;
        v116 = 0x8000000101235BB0;
        v61._countAndFlagsBits = 2003134806;
        v61._object = 0xE400000000000000;
        String.append(_:)(v61);
        sub_1000414C8(&qword_10191FB20, &qword_10191FB28);
        v62 = v88;
        v63 = v93;
        View.accessibilityIdentifier(_:)();

        (*(v92 + 8))(v60, v63);
        v64 = sub_1000CE6B8(&qword_10191FB18);
        (*(*(v64 - 8) + 56))(v62, 0, 1, v64);
      }

      else
      {
        v79 = sub_1000CE6B8(&qword_10191FB18);
        v62 = v88;
        (*(*(v79 - 8) + 56))(v88, 1, 1, v79);
      }

      sub_1000D2DFC(v62, v112, &qword_10191FB08);
      swift_storeEnumTagMultiPayload();
      sub_1003E3FFC();
      sub_1003E4504();
      _ConditionalContent<>.init(storage:)();
      v78 = v62;
    }

    return sub_100024F64(v78, &qword_10191FB08);
  }
}

uint64_t sub_1003DFCC4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_getKeyPath();
  sub_1003DDC94(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v5 + 144);
  if (v7)
  {

    v7(a1, a2);
    return sub_1000588AC(v7);
  }

  return result;
}

uint64_t sub_1003DFDA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisitHistoryHomeListView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v10[1] = a1;
  swift_getKeyPath();
  sub_1003E32A0(a2, v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VisitHistoryHomeListView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_1003E3568(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for VisitHistoryHomeListView);

  sub_1000CE6B8(&qword_10190A640);
  sub_1000CE6B8(&qword_10191FC20);
  sub_1000414C8(&qword_10190A648, &qword_10190A640);
  sub_1003DDC94(&qword_1019219B0, sub_1000F337C);
  sub_1003E5074();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_1003DFFB8(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for VisitHistoryHomeListView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = type metadata accessor for LocationTile();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  sub_10036618C();
  sub_1003E32A0(a2, v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VisitHistoryHomeListView);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_1003E3568(v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for VisitHistoryHomeListView);
  *(v13 + ((v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v11;

  LocationTile.init(model:tapHandler:)();
  v16[0] = 0xD000000000000010;
  v16[1] = 0x8000000101235C30;
  v14._countAndFlagsBits = 1819043139;
  v14._object = 0xE400000000000000;
  String.append(_:)(v14);
  sub_1003DDC94(&qword_10191FC28, &type metadata accessor for LocationTile);
  View.accessibilityIdentifier(_:)();

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1003E0240(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003DDC94(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + 160);
  if (v5)
  {

    v5(a2);
    return sub_1000588AC(v5);
  }

  return result;
}

uint64_t sub_1003E030C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21[0] = a2;
  v6 = type metadata accessor for VisitHistoryHomeListView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  *a3 = static VerticalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v11 = a3 + *(sub_1000CE6B8(&qword_10191FC30) + 44);
  v21[4] = type metadata accessor for VisitHistoryItem();
  v21[5] = sub_1003DDC94(&qword_10190E520, type metadata accessor for VisitHistoryItem);
  v21[1] = v10;
  sub_1003E32A0(a2, v9, type metadata accessor for VisitHistoryHomeListView);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = (v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  sub_1003E3568(v9, v14 + v12, type metadata accessor for VisitHistoryHomeListView);
  *(v14 + v13) = v10;
  swift_retain_n();
  PlaceCell.init(model:tapHandler:)();
  KeyPath = swift_getKeyPath();
  sub_1003E32A0(v21[0], v9, type metadata accessor for VisitHistoryHomeListView);
  v16 = swift_allocObject();
  sub_1003E3568(v9, v16 + v12, type metadata accessor for VisitHistoryHomeListView);
  *(v16 + v13) = v10;
  v17 = (v11 + *(sub_1000CE6B8(&qword_10190E4E0) + 36));
  *v17 = KeyPath;
  v17[1] = sub_1003E5570;
  v17[2] = v16;
  v18 = *(sub_1000CE6B8(&qword_10191FAE0) + 36);
  *(a3 + v18) = swift_getKeyPath();
  sub_1000CE6B8(&qword_10190A1A0);
  swift_storeEnumTagMultiPayload();
  v19 = a3 + *(sub_1000CE6B8(&qword_10191FAD0) + 36);
  *v19 = xmmword_1011EB6B0;
  *(v19 + 16) = 1;
}

void sub_1003E05F8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003DDC94(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 224);
  if (v4)
  {

    v4(a2);
    sub_1000588AC(v4);
  }

  v5 = [objc_opt_self() sharedService];
  if (v5)
  {
    v6 = v5;
    [v5 captureUserAction:2007 onTarget:0 eventValue:0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1003E070C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a2;
  v27 = a3;
  v4 = type metadata accessor for VisitHistoryHomeListView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = type metadata accessor for DateCell();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1000CE6B8(&qword_10191FC48);
  v11 = *(v26 - 8);
  __chkstk_darwin(v26);
  v13 = &v25 - v12;
  v14 = sub_100364364();
  v30 = type metadata accessor for ListCellViewModel();
  v31 = sub_1003DDC94(&qword_10190B068, &type metadata accessor for ListCellViewModel);
  v29 = v14;
  sub_1003E32A0(v25, &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VisitHistoryHomeListView);
  sub_1003E561C(a1, v28);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_1003E3568(&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for VisitHistoryHomeListView);
  v17 = (v16 + ((v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  v18 = v28[1];
  *v17 = v28[0];
  v17[1] = v18;
  v17[2] = v28[2];
  DateCell.init(model:tapHandler:)();
  v19 = [objc_opt_self() mainScreen];
  v20 = [v19 traitCollection];

  _UITableViewDefaultSectionCornerRadiusForTraitCollection();
  v21 = sub_1003DDC94(&qword_10190A630, &type metadata accessor for DateCell);
  View.insetGroupedSectionBackground(cornerRadius:)();
  (*(v8 + 8))(v10, v7);
  *&v28[0] = 0xD000000000000019;
  *(&v28[0] + 1) = 0x8000000101235C50;
  v22._countAndFlagsBits = 1819043139;
  v22._object = 0xE400000000000000;
  String.append(_:)(v22);
  *&v28[0] = v7;
  *(&v28[0] + 1) = v21;
  swift_getOpaqueTypeConformance2();
  v23 = v26;
  View.accessibilityIdentifier(_:)();

  return (*(v11 + 8))(v13, v23);
}

uint64_t sub_1003E0B20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisitHistoryHomeListView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v10[1] = a1;
  swift_getKeyPath();
  sub_1003E32A0(a2, v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VisitHistoryHomeListView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_1003E3568(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for VisitHistoryHomeListView);

  sub_1000CE6B8(&qword_10191FC38);
  sub_1000CE6B8(&qword_10191FC00);
  sub_1000414C8(&qword_10191FC40, &qword_10191FC38);
  sub_1003E4E14();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_1003E0D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a2;
  v27 = a3;
  v4 = type metadata accessor for VisitHistoryHomeListView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = type metadata accessor for DateCell();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1000CE6B8(&qword_10191FC48);
  v11 = *(v26 - 8);
  __chkstk_darwin(v26);
  v13 = &v25 - v12;
  v14 = sub_100364364();
  v30 = type metadata accessor for ListCellViewModel();
  v31 = sub_1003DDC94(&qword_10190B068, &type metadata accessor for ListCellViewModel);
  v29 = v14;
  sub_1003E32A0(v25, &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VisitHistoryHomeListView);
  sub_1003E561C(a1, v28);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_1003E3568(&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for VisitHistoryHomeListView);
  v17 = (v16 + ((v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  v18 = v28[1];
  *v17 = v28[0];
  v17[1] = v18;
  v17[2] = v28[2];
  DateCell.init(model:tapHandler:)();
  v19 = [objc_opt_self() mainScreen];
  v20 = [v19 traitCollection];

  _UITableViewDefaultSectionCornerRadiusForTraitCollection();
  v21 = sub_1003DDC94(&qword_10190A630, &type metadata accessor for DateCell);
  View.insetGroupedSectionBackground(cornerRadius:)();
  (*(v8 + 8))(v10, v7);
  *&v28[0] = 0xD000000000000018;
  *(&v28[0] + 1) = 0x8000000101235C70;
  v22._countAndFlagsBits = 1819043139;
  v22._object = 0xE400000000000000;
  String.append(_:)(v22);
  *&v28[0] = v7;
  *(&v28[0] + 1) = v21;
  swift_getOpaqueTypeConformance2();
  v23 = v26;
  View.accessibilityIdentifier(_:)();

  return (*(v11 + 8))(v13, v23);
}

uint64_t sub_1003E1114@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, int a4@<W4>, uint64_t a5@<X8>)
{
  v38 = a4;
  v36 = a2;
  v37 = a3;
  v40 = a5;
  v39 = sub_1000CE6B8(&qword_10191FA38);
  v6 = *(v39 - 8);
  __chkstk_darwin(v39);
  v8 = &v35 - v7;
  v9 = sub_1000CE6B8(&qword_10191FBC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v35 - v10;
  v12 = type metadata accessor for SectionHeaderViewModel();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v35 - v17;
  sub_10040F98C(a1, v36, v37, v38, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100024F64(v11, &qword_10191FBC0);
    v19 = 1;
    v21 = v39;
    v20 = v40;
  }

  else
  {
    (*(v13 + 32))(v18, v11, v12);
    (*(v13 + 16))(v15, v18, v12);
    SectionHeader.init(model:)();
    v22 = static Edge.Set.horizontal.getter();
    static MapsDesignConstants.Spacing.textHorizontalPadding.getter();
    EdgeInsets.init(_all:)();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    (*(v13 + 8))(v18, v12);
    v32 = v39;
    v31 = v40;
    v33 = &v8[*(v39 + 36)];
    *v33 = v22;
    *(v33 + 1) = v24;
    *(v33 + 2) = v26;
    *(v33 + 3) = v28;
    *(v33 + 4) = v30;
    v33[40] = 0;
    sub_1000F11C4(v8, v31, &qword_10191FA38);
    v19 = 0;
    v20 = v31;
    v21 = v32;
  }

  return (*(v6 + 56))(v20, v19, 1, v21);
}

uint64_t sub_1003E1420@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  static MapsDesignConstants.Spacing.discreetListRowSpacing.getter();
  v5 = v4;
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = v5;
  *(a2 + 16) = 0;
  v6 = sub_1000CE6B8(&qword_10191FB98);
  sub_1003E1528(a1, a2 + *(v6 + 44));
  LOBYTE(a1) = static Edge.Set.top.getter();
  static VerticalSpacing.SpacingSize.large.getter();
  EdgeInsets.init(_all:)();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = a2 + *(sub_1000CE6B8(&qword_10191FB68) + 36);
  *v15 = a1;
  *(v15 + 8) = v8;
  *(v15 + 16) = v10;
  *(v15 + 24) = v12;
  *(v15 + 32) = v14;
  *(v15 + 40) = 0;
  LOBYTE(a1) = static Edge.Set.horizontal.getter();
  static MapsDesignConstants.Spacing.contentHorizontalPadding.getter();
  EdgeInsets.init(_all:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  result = sub_1000CE6B8(&qword_10191FB50);
  v25 = a2 + *(result + 36);
  *v25 = a1;
  *(v25 + 8) = v17;
  *(v25 + 16) = v19;
  *(v25 + 24) = v21;
  *(v25 + 32) = v23;
  *(v25 + 40) = 0;
  return result;
}

uint64_t sub_1003E1528@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v3 = type metadata accessor for VisitHistoryHomeListView(0);
  v65 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v80 = v4;
  v74 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for UUID();
  v83 = *(v73 - 8);
  __chkstk_darwin(v73);
  v66 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for GridButtonViewModel.ButtonProminence();
  v82 = *(v76 - 8);
  __chkstk_darwin(v76);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for GridButtonViewModel.ButtonMetrics();
  v81 = *(v75 - 8);
  __chkstk_darwin(v75);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for GridButton();
  v84 = *(v78 - 8);
  __chkstk_darwin(v78);
  v67 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1000CE6B8(&qword_10191FBA0);
  __chkstk_darwin(v77);
  v68 = &v52 - v11;
  v12 = sub_1000CE6B8(&qword_10191FBA8);
  __chkstk_darwin(v12 - 8);
  v71 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v70 = &v52 - v15;
  __chkstk_darwin(v16);
  v69 = &v52 - v17;
  __chkstk_darwin(v18);
  v79 = &v52 - v19;
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v64.super.isa = qword_1019600D8;
  v87._object = 0x8000000101235B10;
  v20._countAndFlagsBits = 0x736956207065654BLL;
  v20._object = 0xEB00000000737469;
  v21._object = 0x8000000101235AF0;
  v87._countAndFlagsBits = 0xD000000000000048;
  v21._countAndFlagsBits = 0xD00000000000001CLL;
  v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, qword_1019600D8, v20, v87);
  countAndFlagsBits = v22._countAndFlagsBits;
  object = v22._object;
  v23 = *a1;
  swift_getKeyPath();
  v58 = a1;
  v85 = v23;
  sub_1003DDC94(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v55 = sub_100251924(*(v23 + 121));
  v54 = v24;
  v63 = enum case for GridButtonViewModel.ButtonMetrics.large(_:);
  v25 = *(v81 + 104);
  v81 += 104;
  v62 = v25;
  v26 = v9;
  v25(v9);
  v61 = enum case for GridButtonViewModel.ButtonProminence.secondary(_:);
  v27 = *(v82 + 104);
  v82 += 104;
  v60 = v27;
  v27(v7);
  static Color.blue.getter();
  v28 = v66;
  UUID.init()();
  UUID.uuidString.getter();
  v29 = *(v83 + 8);
  v83 += 8;
  v59 = v29;
  v29(v28, v73);
  type metadata accessor for GridButtonViewModel();
  swift_allocObject();
  GridButtonViewModel.init(id:title:subtitle:icon:metrics:style:compact:color:progress:leadingIcon:lineLimit:)();
  countAndFlagsBits = type metadata accessor for VisitHistoryHomeListView;
  v30 = v74;
  sub_1003E32A0(a1, v74, type metadata accessor for VisitHistoryHomeListView);
  v65 = *(v65 + 80);
  v31 = (v65 + 16) & ~v65;
  v55 = v31;
  v32 = swift_allocObject();
  object = type metadata accessor for VisitHistoryHomeListView;
  sub_1003E3568(v30, v32 + v31, type metadata accessor for VisitHistoryHomeListView);
  v33 = v67;
  GridButton.init(model:tapHandler:)();
  static VerticalEdge.Set.all.getter();
  v54 = sub_1003DDC94(&qword_10190A3F8, &type metadata accessor for GridButton);
  v34 = v68;
  v35 = v78;
  View.listRowSeparator(_:edges:)();
  v36 = *(v84 + 8);
  v84 += 8;
  v53 = v36;
  v36(v33, v35);
  v85 = static Color.clear.getter();
  *(v34 + *(v77 + 36)) = AnyView.init<A>(_:)();
  v85 = 0x747369487065654BLL;
  v86 = 0xEB0000000079726FLL;
  v37._countAndFlagsBits = 0x6E6F74747542;
  v37._object = 0xE600000000000000;
  String.append(_:)(v37);
  v52 = sub_1003E4BD0();
  View.accessibilityIdentifier(_:)();

  sub_100024F64(v34, &qword_10191FBA0);
  v88._object = 0x8000000101235B80;
  v38._countAndFlagsBits = 0x6948207261656C43;
  v38._object = 0xED000079726F7473;
  v39._countAndFlagsBits = 0xD00000000000001ELL;
  v39._object = 0x8000000101235B60;
  v88._countAndFlagsBits = 0xD00000000000002FLL;
  v64.super.isa = NSLocalizedString(_:tableName:bundle:value:comment:)(v39, 0, v64, v38, v88)._object;
  v62(v26, v63, v75);
  v60(v7, v61, v76);
  static Color.red.getter();
  UUID.init()();
  UUID.uuidString.getter();
  v59(v28, v73);
  swift_allocObject();
  GridButtonViewModel.init(id:title:subtitle:icon:metrics:style:compact:color:progress:leadingIcon:lineLimit:)();
  v40 = v74;
  sub_1003E32A0(v58, v74, countAndFlagsBits);
  v41 = v55;
  v42 = swift_allocObject();
  sub_1003E3568(v40, v42 + v41, object);
  GridButton.init(model:tapHandler:)();
  static VerticalEdge.Set.all.getter();
  v43 = v78;
  View.listRowSeparator(_:edges:)();
  v53(v33, v43);
  v85 = static Color.clear.getter();
  *(v34 + *(v77 + 36)) = AnyView.init<A>(_:)();
  v85 = 0x6C6C417261656C43;
  v86 = 0xEF79726F74736948;
  v44._countAndFlagsBits = 0x6E6F74747542;
  v44._object = 0xE600000000000000;
  String.append(_:)(v44);
  v45 = v69;
  View.accessibilityIdentifier(_:)();

  sub_100024F64(v34, &qword_10191FBA0);
  v46 = v79;
  v47 = v70;
  sub_1000D2DFC(v79, v70, &qword_10191FBA8);
  v48 = v71;
  sub_1000D2DFC(v45, v71, &qword_10191FBA8);
  v49 = v72;
  sub_1000D2DFC(v47, v72, &qword_10191FBA8);
  v50 = sub_1000CE6B8(&qword_10191FBB8);
  sub_1000D2DFC(v48, v49 + *(v50 + 48), &qword_10191FBA8);
  sub_100024F64(v45, &qword_10191FBA8);
  sub_100024F64(v46, &qword_10191FBA8);
  sub_100024F64(v48, &qword_10191FBA8);
  return sub_100024F64(v47, &qword_10191FBA8);
}

void sub_1003E2144(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_1003DDC94(&qword_10190E1B8, type metadata accessor for VisitHistoryHomeViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + 256);
  if (v2)
  {

    v2(v3);
    sub_1000588AC(v2);
  }

  v4 = [objc_opt_self() sharedService];
  if (v4)
  {
    v5 = v4;
    [v4 captureUserAction:517 onTarget:147 eventValue:0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1003E2254@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v43 = a2;
  v41 = type metadata accessor for Font.TextStyle();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v38 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1000CE6B8(&qword_10191F980);
  __chkstk_darwin(v40);
  v42 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = (&v37 - v6);
  v8 = type metadata accessor for EnvironmentValues();
  v37 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for InterfaceIdiom();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  type metadata accessor for VisitHistoryHomeFilterView(0);
  sub_100155054(v17);
  static InterfaceIdiom.mac.getter();
  v18 = static InterfaceIdiom.== infix(_:_:)();
  v19 = *(v12 + 8);
  v19(v14, v11);
  v19(v17, v11);
  if (v18)
  {
    goto LABEL_2;
  }

  v23 = *(a1 + 16);
  if (*(a1 + 24) == 1)
  {
    if ((v23 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v24 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000A1574(v23, 0);
    (*(v37 + 8))(v10, v8);
    if (v44 != 1)
    {
LABEL_7:
      v21 = 0;
      v22 = 0;
      goto LABEL_8;
    }
  }

LABEL_2:
  v20 = *(a1 + 8);
  v44 = *a1;
  v45 = v20;
  sub_1000CE6B8(&qword_10190E2D8);
  State.wrappedValue.getter();
  type metadata accessor for VisitHistoryFilterViewModel(0);
  State.init(wrappedValue:)();
  v21 = v44;
  v22 = v45;

LABEL_8:
  v25 = *(a1 + 8);
  v44 = *a1;
  v45 = v25;
  sub_1000CE6B8(&qword_10190E2D8);
  State.wrappedValue.getter();
  type metadata accessor for VisitHistoryFilterViewModel(0);
  State.init(wrappedValue:)();
  v26 = v45;
  *v7 = v44;
  v7[1] = v26;
  type metadata accessor for VisitHistoryFilterListView(0);
  v44 = 0x4062C00000000000;
  (*(v39 + 104))(v38, enum case for Font.TextStyle.body(_:), v41);
  sub_10018C5CC();
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v27 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v28 = v7 + *(v40 + 36);
  *v28 = v27;
  *(v28 + 1) = v29;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  *(v28 + 4) = v32;
  v28[40] = 0;
  v33 = v42;
  sub_1000D2DFC(v7, v42, &qword_10191F980);
  v34 = v43;
  *v43 = v21;
  v34[1] = v22;
  v35 = sub_1000CE6B8(&qword_10191F988);
  sub_1000D2DFC(v33, v34 + *(v35 + 48), &qword_10191F980);
  sub_1003E3B34(v21);
  sub_1003BEC00(v21);
  sub_100024F64(v7, &qword_10191F980);
  sub_100024F64(v33, &qword_10191F980);
  return sub_1003BEC00(v21);
}

uint64_t sub_1003E2788@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = sub_1000CE6B8(&qword_10191F970);
  sub_1003E2254(v1, (a1 + *(v3 + 44)));
  result = sub_1000CE6B8(&qword_10191F978);
  v5 = a1 + *(result + 36);
  *v5 = 0xD000000000000013;
  *(v5 + 8) = 0x8000000101235AD0;
  *(v5 + 16) = 13;
  return result;
}

uint64_t sub_1003E2818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v50 = a1;
  v53 = a2;
  v52 = sub_1000CE6B8(&qword_10191F948);
  __chkstk_darwin(v52);
  v5 = v39 - v4;
  v6 = type metadata accessor for SearchFieldPlacement();
  v49 = *(v6 - 8);
  __chkstk_darwin(v6);
  v47 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000CE6B8(&qword_10191F950);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v39 - v10;
  v51 = sub_1000CE6B8(&qword_10191F958);
  v12 = *(v51 - 8);
  __chkstk_darwin(v51);
  v48 = v39 - v13;
  v14 = type metadata accessor for EnvironmentValues();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v18 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*v3 & 1) == 0)
  {
    goto LABEL_4;
  }

  v60 = *(v3 + 72);
  v19 = *(v3 + 64);
  v59 = v19;
  v46 = v12;
  if (v60 == 1)
  {
    if ((v19 & 1) == 0)
    {
LABEL_4:
      sub_1000CE6B8(&qword_10190A5F0);
      type metadata accessor for ToolbarPlacement();
      *(swift_allocObject() + 16) = xmmword_1011E1D30;
      static ToolbarPlacement.navigationBar.getter();
      v20 = sub_1000CE6B8(&qword_10191F960);
      v21 = sub_1000414C8(&qword_10191F968, &qword_10191F960);
      View.toolbarVisibility(_:for:)();

      (*(v9 + 16))(v5, v11, v8);
      swift_storeEnumTagMultiPayload();
      v56._countAndFlagsBits = v20;
      v56._object = v21;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v23 = sub_1000E5580();
      v56._countAndFlagsBits = v8;
      v56._object = &type metadata for String;
      v57 = OpaqueTypeConformance2;
      v58 = v23;
      swift_getOpaqueTypeConformance2();
      _ConditionalContent<>.init(storage:)();
      return (*(v9 + 8))(v11, v8);
    }
  }

  else
  {
    v43 = v16;

    static os_log_type_t.fault.getter();
    v44 = v8;
    v25 = static Log.runtimeIssuesLog.getter();
    v8 = v44;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100024F64(&v59, &qword_101916668);
    (*(v15 + 8))(v18, v43);
    if (LOBYTE(v56._countAndFlagsBits) != 1)
    {
      goto LABEL_4;
    }
  }

  v45 = v6;
  sub_1000CE6B8(&qword_10190A5F0);
  type metadata accessor for ToolbarPlacement();
  *(swift_allocObject() + 16) = xmmword_1011E1D30;
  static ToolbarPlacement.navigationBar.getter();
  v26 = sub_1000CE6B8(&qword_10191F960);
  v27 = sub_1000414C8(&qword_10191F968, &qword_10191F960);
  View.toolbarVisibility(_:for:)();

  v28 = *(v3 + 16);
  v50 = *(v3 + 8);
  v29 = *(v3 + 32);
  v43 = *(v3 + 24);
  v44 = v28;
  v30 = *(v3 + 48);
  v41 = *(v3 + 40);
  v42 = v29;
  v40 = v30;
  v39[1] = *(v3 + 56);
  if (qword_101906768 != -1)
  {
    swift_once();
  }

  v61._object = 0x8000000101220630;
  v31._object = 0x80000001012205E0;
  v32._object = 0x8000000101220610;
  v61._countAndFlagsBits = 0xD00000000000003BLL;
  v31._countAndFlagsBits = 0xD000000000000029;
  v32._countAndFlagsBits = 0x100000000000001BLL;
  v56 = NSLocalizedString(_:tableName:bundle:value:comment:)(v31, 0, qword_1019600D8, v32, v61);
  v33 = v47;
  static SearchFieldPlacement.automatic.getter();
  v54 = v26;
  v55 = v27;
  v34 = swift_getOpaqueTypeConformance2();
  v38 = sub_1000E5580();
  v35 = v48;
  View.searchable<A>(text:isPresented:placement:prompt:)();
  (*(v49 + 8))(v33, v45);

  (*(v9 + 8))(v11, v8);
  v36 = v46;
  v37 = v51;
  (*(v46 + 16))(v5, v35, v51);
  swift_storeEnumTagMultiPayload();
  v56._countAndFlagsBits = v8;
  v56._object = &type metadata for String;
  v57 = v34;
  v58 = v38;
  swift_getOpaqueTypeConformance2();
  _ConditionalContent<>.init(storage:)();
  return (*(v36 + 8))(v35, v37);
}

uint64_t sub_1003E3108(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for VisitHistoryHomeView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1003E31B8(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_1003E32A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1003E3308()
{
  result = qword_10191F7C8;
  if (!qword_10191F7C8)
  {
    sub_1000D6664(&qword_10191F798);
    sub_1003DDC94(&qword_10191F7D0, type metadata accessor for VisitHistoryHomeFilterView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191F7C8);
  }

  return result;
}

unint64_t sub_1003E33C4()
{
  result = qword_10191F7E0;
  if (!qword_10191F7E0)
  {
    sub_1000D6664(&qword_10191F7B8);
    sub_1000414C8(&qword_10190A3D8, &qword_10190A2F8);
    sub_1003DDC94(&qword_10190CDC0, &type metadata accessor for EmptyStateView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191F7E0);
  }

  return result;
}

unint64_t sub_1003E34AC()
{
  result = qword_10191F7E8;
  if (!qword_10191F7E8)
  {
    sub_1000D6664(&qword_10191F7A0);
    sub_1003E3308();
    sub_1003DDC94(&qword_10191F7D8, type metadata accessor for VisitHistoryHomeListView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191F7E8);
  }

  return result;
}

uint64_t sub_1003E3568(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

__n128 sub_1003E35FC(uint64_t a1, uint64_t a2)
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

uint64_t sub_1003E3620(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_1003E3668(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

void sub_1003E36F4()
{
  type metadata accessor for VisitHistoryHomeViewModel();
  if (v0 <= 0x3F)
  {
    sub_1003E382C(319, &unk_10191F860, &type metadata for VisitHistoryHomeViewModel.Section, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_1003E39C4(319, &qword_10190A258, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_1003E39C4(319, &qword_10191E290, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1003E382C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1003E38A4()
{
  sub_1003E39C4(319, &qword_10190E238, type metadata accessor for VisitHistoryFilterViewModel, &type metadata accessor for State);
  if (v0 <= 0x3F)
  {
    sub_1003E382C(319, &unk_10190E240, &type metadata for Bool, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_1003E39C4(319, &unk_10190CAE8, &type metadata accessor for InterfaceIdiom, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1003E39C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1003E3A28()
{
  result = qword_10191F930;
  if (!qword_10191F930)
  {
    sub_1000D6664(&qword_10191F768);
    sub_1000414C8(&qword_10191F938, &qword_10191F940);
    sub_1000F34D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191F930);
  }

  return result;
}

uint64_t sub_1003E3B34(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1003E3B80()
{
  result = qword_10191F9A8;
  if (!qword_10191F9A8)
  {
    sub_1000D6664(&qword_10191F990);
    sub_1000414C8(&qword_10191F9B0, &qword_10191F9B8);
    sub_1003E3C38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191F9A8);
  }

  return result;
}

unint64_t sub_1003E3C38()
{
  result = qword_10191F9C0;
  if (!qword_10191F9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191F9C0);
  }

  return result;
}

uint64_t sub_1003E3C8C(uint64_t a1)
{
  v3 = *(type metadata accessor for VisitHistoryHomeListView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1003DE664(a1, v4);
}

unint64_t sub_1003E3D0C()
{
  result = qword_10191FA08;
  if (!qword_10191FA08)
  {
    sub_1000D6664(&qword_10191F9F8);
    sub_1003E3D98();
    sub_1003E4670();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191FA08);
  }

  return result;
}

unint64_t sub_1003E3D98()
{
  result = qword_10191FA10;
  if (!qword_10191FA10)
  {
    sub_1000D6664(&qword_10191FA18);
    sub_1003E3E30();
    sub_1003E3F70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191FA10);
  }

  return result;
}

unint64_t sub_1003E3E30()
{
  result = qword_10191FA20;
  if (!qword_10191FA20)
  {
    sub_1000D6664(&qword_10191FA28);
    sub_1003E3EB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191FA20);
  }

  return result;
}

unint64_t sub_1003E3EB4()
{
  result = qword_10191FA30;
  if (!qword_10191FA30)
  {
    sub_1000D6664(&qword_10191FA38);
    sub_1003DDC94(&qword_10190AFD0, &type metadata accessor for SectionHeader);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191FA30);
  }

  return result;
}

unint64_t sub_1003E3F70()
{
  result = qword_10191FA40;
  if (!qword_10191FA40)
  {
    sub_1000D6664(&qword_10191FA48);
    sub_1003E3FFC();
    sub_1003E4504();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191FA40);
  }

  return result;
}

unint64_t sub_1003E3FFC()
{
  result = qword_10191FA50;
  if (!qword_10191FA50)
  {
    sub_1000D6664(&qword_10191FA58);
    sub_1003E4088();
    sub_1003E4280();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191FA50);
  }

  return result;
}

unint64_t sub_1003E4088()
{
  result = qword_10191FA60;
  if (!qword_10191FA60)
  {
    sub_1000D6664(&qword_10191FA68);
    sub_1003DDC94(&qword_10191FA70, type metadata accessor for VisitedHistoryHomeCategoriesView);
    sub_1003E4144();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191FA60);
  }

  return result;
}

unint64_t sub_1003E4144()
{
  result = qword_10191FA78;
  if (!qword_10191FA78)
  {
    sub_1000D6664(&qword_10191FA80);
    sub_1003E41C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191FA78);
  }

  return result;
}

unint64_t sub_1003E41C8()
{
  result = qword_10191FA88;
  if (!qword_10191FA88)
  {
    sub_1000D6664(&qword_10191FA90);
    sub_1000414C8(&qword_10191FA98, &qword_10191FAA0);
    sub_1000F34D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191FA88);
  }

  return result;
}

unint64_t sub_1003E4280()
{
  result = qword_10191FAA8;
  if (!qword_10191FAA8)
  {
    sub_1000D6664(&qword_10191FAB0);
    sub_1003E430C();
    sub_1003E4504();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191FAA8);
  }

  return result;
}

unint64_t sub_1003E430C()
{
  result = qword_10191FAB8;
  if (!qword_10191FAB8)
  {
    sub_1000D6664(&qword_10191FAC0);
    sub_1003E4390();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191FAB8);
  }

  return result;
}

unint64_t sub_1003E4390()
{
  result = qword_10191FAC8;
  if (!qword_10191FAC8)
  {
    sub_1000D6664(&qword_10191FAD0);
    sub_1003E441C();
    sub_1000F34D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191FAC8);
  }

  return result;
}

unint64_t sub_1003E441C()
{
  result = qword_10191FAD8;
  if (!qword_10191FAD8)
  {
    sub_1000D6664(&qword_10191FAE0);
    sub_1000414C8(&qword_10191FAE8, &qword_10191FAF0);
    sub_1003DDC94(&qword_10191FAF8, type metadata accessor for VisitedHistoryPlaceCellModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191FAD8);
  }

  return result;
}

unint64_t sub_1003E4504()
{
  result = qword_10191FB00;
  if (!qword_10191FB00)
  {
    sub_1000D6664(&qword_10191FB08);
    sub_1003E4588();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191FB00);
  }

  return result;
}

unint64_t sub_1003E4588()
{
  result = qword_10191FB10;
  if (!qword_10191FB10)
  {
    sub_1000D6664(&qword_10191FB18);
    sub_1000414C8(&qword_10191FB20, &qword_10191FB28);
    sub_1003DDC94(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191FB10);
  }

  return result;
}

unint64_t sub_1003E4670()
{
  result = qword_10191FB30;
  if (!qword_10191FB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191FB30);
  }

  return result;
}

unint64_t sub_1003E46C4()
{
  result = qword_10191FB38;
  if (!qword_10191FB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191FB38);
  }

  return result;
}

unint64_t sub_1003E4718()
{
  result = qword_10191FB40;
  if (!qword_10191FB40)
  {
    sub_1000D6664(&qword_10191F9E0);
    sub_1003E3D0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191FB40);
  }

  return result;
}

unint64_t sub_1003E47A4()
{
  result = qword_10191FB58;
  if (!qword_10191FB58)
  {
    sub_1000D6664(&qword_10191FB50);
    sub_1003E4830();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191FB58);
  }

  return result;
}

unint64_t sub_1003E4830()
{
  result = qword_10191FB60;
  if (!qword_10191FB60)
  {
    sub_1000D6664(&qword_10191FB68);
    sub_1000414C8(&qword_10191FB70, &qword_10191FB78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191FB60);
  }

  return result;
}

unint64_t sub_1003E48E8()
{
  result = qword_10191FB80;
  if (!qword_10191FB80)
  {
    sub_1000D6664(&qword_10191F9C8);
    sub_1003E4974();
    sub_1003E4670();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191FB80);
  }

  return result;
}

unint64_t sub_1003E4974()
{
  result = qword_10191FB88;
  if (!qword_10191FB88)
  {
    sub_1000D6664(&qword_10191FB90);
    sub_1003E47A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191FB88);
  }

  return result;
}

uint64_t sub_1003E4A04()
{
  v1 = type metadata accessor for VisitHistoryHomeListView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 24);
  sub_1000CE6B8(&qword_10190A1A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for ColorScheme();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 28);
  sub_1000CE6B8(&qword_10191DF80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for DynamicTypeSize();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_1003E4BD0()
{
  result = qword_10191FBB0;
  if (!qword_10191FBB0)
  {
    sub_1000D6664(&qword_10191FBA0);
    type metadata accessor for GridButton();
    sub_1003DDC94(&qword_10190A3F8, &type metadata accessor for GridButton);
    swift_getOpaqueTypeConformance2();
    sub_1000414C8(&unk_10191DB80, &qword_10190A368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191FBB0);
  }

  return result;
}

unint64_t sub_1003E4D90()
{
  result = qword_10191FBF0;
  if (!qword_10191FBF0)
  {
    sub_1000D6664(&qword_10191FBE8);
    sub_1003E4E14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191FBF0);
  }

  return result;
}

unint64_t sub_1003E4E14()
{
  result = qword_10191FBF8;
  if (!qword_10191FBF8)
  {
    sub_1000D6664(&qword_10191FC00);
    type metadata accessor for DateCell();
    sub_1003DDC94(&qword_10190A630, &type metadata accessor for DateCell);
    swift_getOpaqueTypeConformance2();
    sub_1003DDC94(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191FBF8);
  }

  return result;
}

uint64_t sub_1003E4F30(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 < 3u || a4 == 4)
  {
  }

  if (a4 == 3)
  {
  }

  return result;
}

unint64_t sub_1003E4FF0()
{
  result = qword_10191FC10;
  if (!qword_10191FC10)
  {
    sub_1000D6664(&qword_10191FC08);
    sub_1003E5074();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191FC10);
  }

  return result;
}

unint64_t sub_1003E5074()
{
  result = qword_10191FC18;
  if (!qword_10191FC18)
  {
    sub_1000D6664(&qword_10191FC20);
    sub_1003DDC94(&qword_10191FC28, &type metadata accessor for LocationTile);
    sub_1003DDC94(&qword_101909FE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191FC18);
  }

  return result;
}

uint64_t sub_1003E5160(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for VisitHistoryHomeListView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_1003DFCC4(a1, a2, v6);
}

uint64_t sub_1003E51E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003E5258(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for VisitHistoryHomeListView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1003E5304()
{
  v1 = type metadata accessor for VisitHistoryHomeListView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 24);
  sub_1000CE6B8(&qword_10190A1A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for ColorScheme();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 28);
  sub_1000CE6B8(&qword_10191DF80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for DynamicTypeSize();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1003E54D0(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for VisitHistoryHomeListView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

uint64_t sub_1003E56A8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for VisitHistoryHomeListView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1003E573C()
{
  v1 = type metadata accessor for VisitHistoryHomeListView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 24);
  sub_1000CE6B8(&qword_10190A1A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for ColorScheme();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 28);
  sub_1000CE6B8(&qword_10191DF80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for DynamicTypeSize();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_10004E3D0(v0 + v10);

  return _swift_deallocObject(v0, v10 + 48, v2 | 7);
}

unint64_t sub_1003E599C()
{
  result = qword_10191FC50;
  if (!qword_10191FC50)
  {
    sub_1000D6664(&qword_10191FC58);
    sub_1000D6664(&qword_10191F950);
    sub_1000D6664(&qword_10191F960);
    sub_1000414C8(&qword_10191F968, &qword_10191F960);
    swift_getOpaqueTypeConformance2();
    sub_1000E5580();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191FC50);
  }

  return result;
}

unint64_t sub_1003E5AE8()
{
  result = qword_10191FC60;
  if (!qword_10191FC60)
  {
    sub_1000D6664(&qword_10191F978);
    sub_1000414C8(&qword_10191FC68, &qword_10191FC70);
    sub_1000F34D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10191FC60);
  }

  return result;
}

uint64_t sub_1003E5BA0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1003E75E8(&qword_101912178, type metadata accessor for LibraryRecentlyAddedViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC4Maps29LibraryRecentlyAddedViewModel__state;
  swift_beginAccess();
  return sub_1003525A4(v5 + v3, a1);
}

uint64_t sub_1003E5C68()
{
  swift_getKeyPath();
  sub_1003E75E8(&qword_101912178, type metadata accessor for LibraryRecentlyAddedViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 16);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_1003E5D1C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003E75E8(&qword_101912178, type metadata accessor for LibraryRecentlyAddedViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1003E76D0;
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

uint64_t sub_1003E5E08(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_1003E7684;
  }

  else
  {
    v4 = 0;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000CD9D4(v1);
  sub_1003E75E8(&qword_101912178, type metadata accessor for LibraryRecentlyAddedViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  sub_1000588AC(v4);
}

uint64_t sub_1003E5F64()
{
  swift_getKeyPath();
  sub_1003E75E8(&qword_101912178, type metadata accessor for LibraryRecentlyAddedViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 32);
  sub_1000CD9D4(v1);
  return v1;
}

uint64_t sub_1003E6018@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003E75E8(&qword_101912178, type metadata accessor for LibraryRecentlyAddedViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC4Maps29LibraryRecentlyAddedViewModel__state;
  swift_beginAccess();
  return sub_1003525A4(v3 + v4, a2);
}