uint64_t sub_1000404EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a3;
  v28 = a1;
  v29 = a4;
  v26 = a2;
  v6 = type metadata accessor for Array();
  v7 = sub_10000460C(&qword_100222BA0);
  WitnessTable = swift_getWitnessTable();
  v9 = *(a3 + 8);
  v34 = v6;
  v35 = a2;
  v36 = v7;
  v37 = WitnessTable;
  v38 = v9;
  type metadata accessor for ForEach();
  v33 = sub_10004216C(&qword_100222BA8, &qword_100222BA0, &unk_1001C3B70, sub_10004202C);
  v25[1] = swift_getWitnessTable();
  v10 = type metadata accessor for HStack();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v25 - v12;
  v14 = swift_getWitnessTable();
  v34 = v10;
  v35 = v14;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v16 = *(OpaqueTypeMetadata2 - 8);
  v17 = __chkstk_darwin(OpaqueTypeMetadata2);
  v19 = v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v25 - v20;
  v30 = v26;
  v31 = v27;
  v32 = v28;
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  View.scrollTargetLayout(isEnabled:)();
  (*(v11 + 8))(v13, v10);
  v34 = v10;
  v35 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1000EE87C(v19, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v23 = *(v16 + 8);
  v23(v19, OpaqueTypeMetadata2);
  sub_1000EE87C(v21, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v23)(v21, OpaqueTypeMetadata2);
}

uint64_t sub_100040834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a4;
  v7 = type metadata accessor for WatchFacesView();
  v8 = *(v7 - 8);
  v30 = *(v8 + 64);
  __chkstk_darwin(v7);
  v29 = &KeyPath - v9;
  v10 = type metadata accessor for Array();
  v34 = v10;
  v11 = sub_10000460C(&qword_100222BA0);
  v33 = v11;
  WitnessTable = swift_getWitnessTable();
  v31 = *(a3 + 8);
  v32 = WitnessTable;
  v40 = v10;
  v41 = a2;
  v42 = v11;
  v43 = WitnessTable;
  v44 = v31;
  v13 = type metadata accessor for ForEach();
  v35 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v16 = &KeyPath - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v28 = &KeyPath - v17;
  v18 = *(sub_10003D048() + 112);

  v40 = v18;
  v37 = a2;
  v38 = a3;
  KeyPath = swift_getKeyPath();
  v19 = v29;
  (*(v8 + 16))(v29, a1, v7);
  v20 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  (*(v8 + 32))(v21 + v20, v19, v7);
  v26 = sub_10004216C(&qword_100222BA8, &qword_100222BA0, &unk_1001C3B70, sub_10004202C);
  ForEach<>.init(_:id:content:)();
  v39 = v26;
  v22 = swift_getWitnessTable();
  v23 = v28;
  sub_1000EE87C(v16, v13, v22);
  v24 = *(v35 + 8);
  v24(v16, v13);
  sub_1000EE87C(v23, v13, v22);
  return (v24)(v23, v13);
}

uint64_t sub_100040BA0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v40 = a1;
  v51 = a4;
  v6 = type metadata accessor for AccessibilityChildBehavior();
  v47 = *(v6 - 8);
  v48 = v6;
  __chkstk_darwin(v6);
  v43 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for ScrollAsset();
  __chkstk_darwin(v44);
  v41 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000024C4(qword_100222C70);
  v45 = *(v9 - 8);
  v46 = v9;
  __chkstk_darwin(v9);
  v42 = &v38 - v10;
  v11 = sub_1000024C4(&qword_100222BB8);
  v49 = *(v11 - 8);
  v50 = v11;
  __chkstk_darwin(v11);
  v39 = &v38 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v16 = &v38 - v15;
  v17 = sub_1000024C4(&qword_1002214F8);
  __chkstk_darwin(v17 - 8);
  v19 = &v38 - v18;
  v20 = type metadata accessor for URL();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v38 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 48))(a2, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v14 + 8))(v16, AssociatedTypeWitness);
  v24 = v20;
  (*(v21 + 56))(v19, 0, 1, v20);
  v25 = v38;
  (*(v21 + 32))(v38, v19, v24);
  v26 = v41;
  (*(v21 + 16))(v41, v25, v24);
  type metadata accessor for WatchFacesView();
  sub_10003D048();
  v27 = sub_100060854();

  sub_10003D048();
  v28 = sub_100060884();

  sub_10003D048();
  v29 = sub_1000608A8();

  v31 = v43;
  v30 = v44;
  *(v26 + *(v44 + 20)) = v27;
  *(v26 + *(v30 + 24)) = v28;
  *(v26 + *(v30 + 28)) = v29;
  static AccessibilityChildBehavior.contain.getter();
  v32 = sub_10004527C(&qword_100222BC0, type metadata accessor for ScrollAsset);
  v33 = v42;
  View.accessibilityElement(children:)();
  (*(v47 + 8))(v31, v48);
  sub_100043DA8(v26);
  v52 = v30;
  v53 = v32;
  swift_getOpaqueTypeConformance2();
  v34 = v39;
  v35 = v46;
  View.accessibilityIdentifier(_:)();
  (*(v45 + 8))(v33, v35);
  (*(v21 + 8))(v25, v24);
  v36 = v51;
  sub_100043E04(v34, v51);
  return (*(v49 + 56))(v36, 0, 1, v50);
}

uint64_t sub_100041248(uint64_t a1)
{
  v2 = type metadata accessor for WatchFacesView();
  sub_10003D048();
  v3 = *(a1 + *(v2 + 40));
  if (v3)
  {

    sub_100060954(30, 0, 3u, v3);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10004527C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10004132C()
{
  type metadata accessor for WatchFacesView();
  sub_10003D048();

  sub_10003D048();
  sub_100060BD8();

  sub_1000024C4(&qword_100222C38);
  sub_100043A68();
  View.accessibilityIdentifier(_:)();
}

uint64_t sub_100041410@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Color.RGBColorSpace();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WatchFacesView();
  v6 = sub_10003D048();
  v7 = *(v6 + 48);
  v23 = *(v6 + 56);
  v24 = v7;

  sub_10003D048();
  v8 = sub_100060BD8();

  v9 = enum case for Color.RGBColorSpace.sRGBLinear(_:);
  v10 = *(v3 + 104);
  v10(v5, enum case for Color.RGBColorSpace.sRGBLinear(_:), v2);
  v11 = Color.init(_:white:opacity:)();
  v10(v5, v9, v2);
  v12 = Color.init(_:white:opacity:)();
  sub_10003D048();
  v13 = sub_100060BFC();

  sub_10003D048();
  v14 = sub_100060C2C();

  sub_10003D048();
  v15 = sub_10006184C();

  v17 = v23;
  v16 = v24;
  *&v26 = v24;
  *(&v26 + 1) = v23;
  *&v27 = v8;
  *(&v27 + 1) = v11;
  v28 = xmmword_1001B6760;
  *&v29 = 0x4010000000000000;
  *(&v29 + 1) = v12;
  v30 = xmmword_1001B6770;
  v31 = xmmword_1001B6780;
  v18 = v29;
  *(a1 + 32) = xmmword_1001B6760;
  *(a1 + 48) = v18;
  v19 = v31;
  *(a1 + 64) = v30;
  *(a1 + 80) = v19;
  v20 = v27;
  *a1 = v26;
  *(a1 + 16) = v20;
  *(a1 + 96) = v13;
  *(a1 + 104) = v14;
  *(a1 + 112) = v15;
  v32[0] = v16;
  v32[1] = v17;
  *&v32[2] = v8;
  v32[3] = v11;
  v33 = xmmword_1001B6760;
  v34 = 0x4010000000000000;
  v35 = v12;
  v36 = xmmword_1001B6770;
  v37 = xmmword_1001B6780;
  sub_10000BEB8(&v26, &v25, &qword_100222C68);
  return sub_1000050C4(v32, &qword_100222C68);
}

uint64_t sub_1000416D4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  __chkstk_darwin(a1);
  v25 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v24 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v23 - v11;
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  v15 = type metadata accessor for WatchFacesView();
  v27 = a1;
  sub_10003D17C(v15, &State.wrappedValue.getter);
  v16 = *(v4 + 48);
  v17 = v16(v14, 1, a2);
  v26 = *(v7 + 8);
  result = v26(v14, v6);
  if (v17 == 1)
  {
    v23 = v4;
    v19 = *(sub_10003D048() + 112);

    v28 = v19;
    type metadata accessor for Array();
    swift_getWitnessTable();
    Collection.first.getter();
    if (v16(v12, 1, a2) == 1)
    {
      v26(v12, v6);
    }

    else
    {
      v20 = v23;
      v21 = v25;
      (*(v23 + 32))(v25, v12, a2);

      v22 = v24;
      (*(v20 + 16))(v24, v21, a2);
      (*(v20 + 56))(v22, 0, 1, a2);
      sub_100043884(v22);
      v26(v22, v6);
      return (*(v20 + 8))(v21, a2);
    }
  }

  return result;
}

uint64_t sub_100041A38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(*(*a2 + 80) - 8) + 32))(a3, a1, *(*a2 + 80));
  v5 = type metadata accessor for SelectAssetButton();
  *(a3 + *(v5 + 36)) = a2;
  v6 = (a3 + *(v5 + 40));
  type metadata accessor for RemoteViewConfiguration();
  sub_10004527C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
  result = EnvironmentObject.init()();
  *v6 = result;
  v6[1] = v8;
  return result;
}

uint64_t sub_100041B30@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  swift_getWitnessTable();
  Bindable<A>.init(wrappedValue:)();
  v4 = type metadata accessor for WatchFacesView();
  sub_10003D088(a1);
  v5 = (a2 + *(v4 + 40));
  type metadata accessor for RemoteViewConfiguration();
  sub_10004527C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
  result = EnvironmentObject.init()();
  *v5 = result;
  v5[1] = v7;
  return result;
}

void sub_100041C88()
{
  type metadata accessor for WatchFacesViewModel();
  type metadata accessor for Bindable();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Optional();
    type metadata accessor for State();
    if (v1 <= 0x3F)
    {
      sub_100017044();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100041D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for WatchFacesViewModel();
  v6 = type metadata accessor for Bindable();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  type metadata accessor for Optional();
  v11 = type metadata accessor for State();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 36);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 40));
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

uint64_t sub_100041EAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  type metadata accessor for WatchFacesViewModel();
  v8 = type metadata accessor for Bindable();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    type metadata accessor for Optional();
    result = type metadata accessor for State();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 40)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 36);
  }

  return v11(v12, a2, a2, v10);
}

unint64_t sub_10004202C()
{
  result = qword_100222BB0;
  if (!qword_100222BB0)
  {
    sub_10000460C(&qword_100222BB8);
    type metadata accessor for ScrollAsset();
    sub_10004527C(&qword_100222BC0, type metadata accessor for ScrollAsset);
    swift_getOpaqueTypeConformance2();
    sub_10004527C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222BB0);
  }

  return result;
}

uint64_t sub_10004216C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000460C(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000421E8()
{
  result = qword_100222BF0;
  if (!qword_100222BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222BF0);
  }

  return result;
}

unint64_t sub_100042278()
{
  result = qword_100222C08;
  if (!qword_100222C08)
  {
    sub_10000460C(&qword_100222B98);
    sub_1000439B4(&qword_100222C10, &qword_100222C00, &unk_1001C3BA0, sub_100042328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222C08);
  }

  return result;
}

unint64_t sub_100042328()
{
  result = qword_100222C18;
  if (!qword_100222C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222C18);
  }

  return result;
}

uint64_t sub_10004237C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_100222C00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000423EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v46 = a2;
  v5 = type metadata accessor for PlainButtonStyle();
  v6 = *(v5 - 8);
  v44 = v5;
  v45 = v6;
  v7 = __chkstk_darwin(v5);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  v12 = sub_1000024C4(&qword_100222CF8);
  v42 = *(v12 - 8);
  v43 = v12;
  __chkstk_darwin(v12);
  v14 = &v41 - v13;
  (*(v10 + 16))(&v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1);
  v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v16 = swift_allocObject();
  v18 = *(a1 + 16);
  v17 = *(a1 + 24);
  *(v16 + 16) = v18;
  *(v16 + 24) = v17;
  (*(v10 + 32))(v16 + v15, &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v47 = v18;
  v48 = v17;
  v49 = v3;
  sub_1000024C4(&qword_100222D00);
  sub_100044A74();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  sub_10000BFFC(&qword_100222DC8, &qword_100222CF8);
  sub_10004527C(&qword_100222DD0, &type metadata accessor for PlainButtonStyle);
  v19 = v46;
  v21 = v43;
  v20 = v44;
  View.buttonStyle<A>(_:)();
  (*(v45 + 8))(v9, v20);
  (*(v42 + 8))(v14, v21);
  LOBYTE(v14) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = v19 + *(sub_1000024C4(&qword_100222DD8) + 36);
  *v30 = v14;
  *(v30 + 8) = v23;
  *(v30 + 16) = v25;
  *(v30 + 24) = v27;
  *(v30 + 32) = v29;
  *(v30 + 40) = 0;
  LOBYTE(v14) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  result = sub_1000024C4(&qword_100222DE0);
  v40 = v19 + *(result + 36);
  *v40 = v14;
  *(v40 + 8) = v32;
  *(v40 + 16) = v34;
  *(v40 + 24) = v36;
  *(v40 + 32) = v38;
  *(v40 + 40) = 0;
  return result;
}

uint64_t sub_1000427D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SelectAssetButton();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - v8;
  v10 = sub_1000024C4(&qword_100227360);
  __chkstk_darwin(v10 - 8);
  v12 = &v18 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v7 + 16))(v9, a1, v6);
  type metadata accessor for MainActor();
  v14 = static MainActor.shared.getter();
  v15 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = v14;
  *(v16 + 3) = &protocol witness table for MainActor;
  *(v16 + 4) = a2;
  *(v16 + 5) = a3;
  (*(v7 + 32))(&v16[v15], v9, v6);
  sub_10019EFDC(0, 0, v12, &unk_1001B6A28, v16);
}

uint64_t sub_1000429D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for MainActor();
  v6[5] = static MainActor.shared.getter();
  v6[6] = dispatch thunk of Actor.unownedExecutor.getter();
  v6[7] = v7;

  return _swift_task_switch(sub_100042A74);
}

uint64_t sub_100042A74()
{
  v1 = v0[2];
  v2 = type metadata accessor for SelectAssetButton();
  v0[8] = v2;
  v0[9] = *(v1 + *(v2 + 36));
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_100042B40;
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return sub_100061460(v6, v4, v5);
}

uint64_t sub_100042B40()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_100042D94;
  }

  else
  {
    v2 = sub_100042C7C;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_100042C7C()
{
  v1 = v0[8];
  v2 = v0[2];

  v3 = *(v2 + *(v1 + 40));
  if (v3)
  {

    sub_100060954(7, 0, 3u, v3);

    v4 = v0[1];

    return v4();
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10004527C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);

    return EnvironmentObject.error()();
  }
}

uint64_t sub_100042D94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100042DF8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v70 = a1;
  v71 = a2;
  v82 = a3;
  v3 = type metadata accessor for AccessibilityChildBehavior();
  v4 = *(v3 - 8);
  v83 = v3;
  v84 = v4;
  __chkstk_darwin(v3);
  v6 = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000024C4(&qword_100222DE8);
  v8 = *(v7 - 8);
  v74 = v7;
  v75 = v8;
  __chkstk_darwin(v7);
  v69 = v66 - v9;
  v73 = sub_1000024C4(&qword_100222D18);
  __chkstk_darwin(v73);
  v72 = v66 - v10;
  v11 = sub_1000024C4(&qword_100222D10);
  v12 = *(v11 - 8);
  v78 = v11;
  v79 = v12;
  __chkstk_darwin(v11);
  v76 = v66 - v13;
  v14 = sub_1000024C4(&qword_100222DF0);
  v15 = *(v14 - 8);
  v80 = v14;
  v81 = v15;
  __chkstk_darwin(v14);
  v77 = v66 - v16;
  v68 = static VerticalAlignment.center.getter();
  LOBYTE(v102[0]) = 0;
  sub_100043560(v100);
  *(v98 + 7) = v100[0];
  *(&v98[1] + 7) = v100[1];
  *(&v98[2] + 7) = v101[0];
  v98[3] = *(v101 + 9);
  v17 = v102[0];
  static Font.body.getter();
  static Font.Weight.semibold.getter();
  v18 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v20 = static Color.white.getter();
  v21 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  LOBYTE(v87) = 0;
  v30 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  LOBYTE(v102[0]) = 0;
  v39 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  *(v88 + 1) = v98[0];
  *(&v88[1] + 1) = v98[1];
  *(&v88[2] + 1) = v98[2];
  v99 = 0;
  *&v87 = v68;
  *(&v87 + 1) = 0x4010000000000000;
  LOBYTE(v88[0]) = v17;
  *(&v88[3] + 1) = v98[3];
  *(&v88[4] + 1) = KeyPath;
  *&v89 = v18;
  *(&v89 + 1) = v20;
  LOBYTE(v90) = v21;
  *(&v90 + 1) = v23;
  *&v91 = v25;
  *(&v91 + 1) = v27;
  *&v92 = v29;
  BYTE8(v92) = 0;
  LOBYTE(v93) = v30;
  *(&v93 + 1) = v32;
  *&v94 = v34;
  *(&v94 + 1) = v36;
  *&v95 = v38;
  BYTE8(v95) = 0;
  LOBYTE(v96) = v39;
  *(&v96 + 1) = v40;
  *&v97[0] = v41;
  *(&v97[0] + 1) = v42;
  *&v97[1] = v43;
  BYTE8(v97[1]) = 0;
  v67 = v6;
  static AccessibilityChildBehavior.combine.getter();
  v44 = sub_1000024C4(&qword_100222D48);
  v45 = sub_100044DCC();
  v46 = v69;
  View.accessibilityElement(children:)();
  v47 = *(v84 + 8);
  v84 += 8;
  v68 = v47;
  v47(v6, v83);
  v102[12] = v95;
  v102[13] = v96;
  v103[0] = v97[0];
  *(v103 + 9) = *(v97 + 9);
  v102[8] = v91;
  v102[9] = v92;
  v102[10] = v93;
  v102[11] = v94;
  v102[4] = v88[3];
  v102[5] = v88[4];
  v102[6] = v89;
  v102[7] = v90;
  v102[0] = v87;
  v102[1] = v88[0];
  v102[2] = v88[1];
  v102[3] = v88[2];
  sub_1000050C4(v102, &qword_100222D48);
  *&v87 = v44;
  *(&v87 + 1) = v45;
  v66[1] = &opaque type descriptor for <<opaque return type of View.accessibilityElement(children:)>>;
  swift_getOpaqueTypeConformance2();
  v48 = v72;
  v49 = v74;
  View.accessibilityIdentifier(_:)();
  (*(v75 + 8))(v46, v49);
  v50 = static Color.blue.getter();
  v51 = static Edge.Set.all.getter();
  v52 = v73;
  v53 = v48 + *(v73 + 36);
  *v53 = v50;
  *(v53 + 8) = v51;
  Solarium.init()();
  v85 = v70;
  v86 = v71;
  v54 = sub_1000024C4(&qword_100222D20);
  v55 = sub_1000024C4(&qword_100222D28);
  v56 = sub_100044C1C();
  v57 = sub_10004510C();
  v65 = sub_1000451C4();
  v58 = v76;
  View.staticIf<A, B, C>(_:then:else:)();
  sub_1000452D4(v48);
  v59 = v67;
  static AccessibilityChildBehavior.ignore.getter();
  *&v87 = v52;
  *(&v87 + 1) = &type metadata for Solarium;
  *&v88[0] = v54;
  *(&v88[0] + 1) = v55;
  *&v88[1] = v56;
  *(&v88[1] + 1) = &protocol witness table for Solarium;
  *&v88[2] = v57;
  *(&v88[2] + 1) = v65;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v62 = v77;
  v61 = v78;
  View.accessibilityElement(children:)();
  v68(v59, v83);
  (*(v79 + 8))(v58, v61);
  *&v87 = v61;
  *(&v87 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v63 = v80;
  View.accessibilityIdentifier(_:)();
  return (*(v81 + 8))(v62, v63);
}

uint64_t sub_100043560@<X0>(uint64_t a1@<X8>)
{
  v2 = Image.init(systemName:)();
  type metadata accessor for SelectAssetButton();

  v3 = Text.init(_:tableName:bundle:comment:)();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  KeyPath = swift_getKeyPath();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7 & 1;
  *(a1 + 32) = v9;
  *(a1 + 40) = KeyPath;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;

  sub_1000187D8(v3, v5, v7 & 1);

  sub_100017398(v3, v5, v7 & 1);
}

uint64_t sub_1000436D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(sub_1000024C4(&qword_100222D20) + 36);
  v5 = enum case for RoundedCornerStyle.continuous(_:);
  v6 = type metadata accessor for RoundedCornerStyle();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  *(v4 + *(sub_1000024C4(&qword_100222DB8) + 36)) = 256;

  return sub_10004533C(a1, a2);
}

uint64_t sub_10004379C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(sub_1000024C4(&qword_100222D28) + 36));
  v5 = *(type metadata accessor for RoundedRectangle() + 20);
  v6 = enum case for RoundedCornerStyle.continuous(_:);
  v7 = type metadata accessor for RoundedCornerStyle();
  (*(*(v7 - 8) + 104))(&v4[v5], v6, v7);
  __asm { FMOV            V0.2D, #12.0 }

  *v4 = _Q0;
  *&v4[*(sub_1000024C4(&qword_100221C80) + 36)] = 256;

  return sub_10004533C(a1, a2);
}

uint64_t sub_100043884(uint64_t a1)
{
  v2 = type metadata accessor for Optional();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - v3, a1, v2);
  type metadata accessor for State();
  return State.wrappedValue.setter();
}

uint64_t sub_1000439B4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000460C(a2);
    a4();
    sub_10004527C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100043A68()
{
  result = qword_100222C30;
  if (!qword_100222C30)
  {
    sub_10000460C(&qword_100222C38);
    sub_100043AF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222C30);
  }

  return result;
}

unint64_t sub_100043AF4()
{
  result = qword_100222C40;
  if (!qword_100222C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222C40);
  }

  return result;
}

uint64_t sub_100043B60()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for WatchFacesView();
  v3 = v0 + ((*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80));
  type metadata accessor for WatchFacesViewModel();
  v4 = type metadata accessor for Bindable();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = v3 + *(v2 + 36);
  v6 = *(v1 - 8);
  if (!(*(v6 + 48))(v5, 1, v1))
  {
    (*(v6 + 8))(v5, v1);
  }

  type metadata accessor for Optional();
  type metadata accessor for State();

  return swift_deallocObject();
}

uint64_t sub_100043D0C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for WatchFacesView() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_100040BA0(v6, v3, v4, a1);
}

uint64_t sub_100043DA8(uint64_t a1)
{
  v2 = type metadata accessor for ScrollAsset();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100043E04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_100222BB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100043E74()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    type metadata accessor for WatchFacesViewModel();
    if (v1 <= 0x3F)
    {
      sub_100017044();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100043F1C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_100044060(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v20 = a2 - 1;
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t sub_100044228()
{
  sub_10000460C(&qword_100222B98);
  type metadata accessor for Array();
  sub_10000460C(&qword_100222BA0);
  swift_getWitnessTable();
  type metadata accessor for ForEach();
  sub_10004216C(&qword_100222BA8, &qword_100222BA0, &unk_1001C3B70, sub_10004202C);
  swift_getWitnessTable();
  type metadata accessor for HStack();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for ScrollView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ViewAlignedScrollTargetBehavior();
  swift_getOpaqueTypeConformance2();
  sub_10004527C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_100222BC8);
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100222BD0);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for PageControl();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for ModifiedContent();
  type metadata accessor for SelectAssetButton();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_100222BD8);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10000BFFC(&qword_100222BF8, &qword_100222BD8);
  return swift_getWitnessTable();
}

uint64_t sub_1000448A0()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for SelectAssetButton() - 8);
  (*(*(v1 - 8) + 8))(v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1000449C8(uint64_t (*a1)(void, uint64_t, uint64_t), uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(a1(0, v3, v4) - 8);
  v6 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return a2(v6, v3, v4);
}

unint64_t sub_100044A74()
{
  result = qword_100222D08;
  if (!qword_100222D08)
  {
    sub_10000460C(&qword_100222D00);
    sub_10000460C(&qword_100222D10);
    sub_10000460C(&qword_100222D18);
    sub_10000460C(&qword_100222D20);
    sub_10000460C(&qword_100222D28);
    sub_100044C1C();
    sub_10004510C();
    sub_1000451C4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10004527C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222D08);
  }

  return result;
}

unint64_t sub_100044C1C()
{
  result = qword_100222D30;
  if (!qword_100222D30)
  {
    sub_10000460C(&qword_100222D18);
    sub_100044CD4();
    sub_10000BFFC(&qword_100221D50, &qword_100221D58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222D30);
  }

  return result;
}

unint64_t sub_100044CD4()
{
  result = qword_100222D38;
  if (!qword_100222D38)
  {
    sub_10000460C(&qword_100222D40);
    sub_10000460C(&qword_100222D48);
    sub_100044DCC();
    swift_getOpaqueTypeConformance2();
    sub_10004527C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222D38);
  }

  return result;
}

unint64_t sub_100044DCC()
{
  result = qword_100222D50;
  if (!qword_100222D50)
  {
    sub_10000460C(&qword_100222D48);
    sub_100044E58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222D50);
  }

  return result;
}

unint64_t sub_100044E58()
{
  result = qword_100222D58;
  if (!qword_100222D58)
  {
    sub_10000460C(&qword_100222D60);
    sub_100044EE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222D58);
  }

  return result;
}

unint64_t sub_100044EE4()
{
  result = qword_100222D68;
  if (!qword_100222D68)
  {
    sub_10000460C(&qword_100222D70);
    sub_100044F70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222D68);
  }

  return result;
}

unint64_t sub_100044F70()
{
  result = qword_100222D78;
  if (!qword_100222D78)
  {
    sub_10000460C(&qword_100222D80);
    sub_100045028();
    sub_10000BFFC(&qword_1002221E0, &qword_1002221E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222D78);
  }

  return result;
}

unint64_t sub_100045028()
{
  result = qword_100222D88;
  if (!qword_100222D88)
  {
    sub_10000460C(&qword_100222D90);
    sub_10000BFFC(&qword_100222D98, &qword_100222DA0);
    sub_10000BFFC(&qword_100222260, &qword_100222268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222D88);
  }

  return result;
}

unint64_t sub_10004510C()
{
  result = qword_100222DA8;
  if (!qword_100222DA8)
  {
    sub_10000460C(&qword_100222D20);
    sub_100044C1C();
    sub_10000BFFC(&qword_100222DB0, &qword_100222DB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222DA8);
  }

  return result;
}

unint64_t sub_1000451C4()
{
  result = qword_100222DC0;
  if (!qword_100222DC0)
  {
    sub_10000460C(&qword_100222D28);
    sub_100044C1C();
    sub_10000BFFC(&qword_100221D60, &qword_100221C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222DC0);
  }

  return result;
}

uint64_t sub_10004527C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000452D4(uint64_t a1)
{
  v2 = sub_1000024C4(&qword_100222D18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004533C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_100222D18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000453B4()
{
  v1 = *(v0 + 32);
  v2 = *(type metadata accessor for SelectAssetButton() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(*(v1 - 8) + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000454B8(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(type metadata accessor for SelectAssetButton() - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000BD00;

  return sub_1000429D8(a1, v8, v9, v1 + v7, v4, v5);
}

unint64_t sub_1000455C8()
{
  result = qword_100222DF8;
  if (!qword_100222DF8)
  {
    sub_10000460C(&qword_100222DE0);
    sub_100045654();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222DF8);
  }

  return result;
}

unint64_t sub_100045654()
{
  result = qword_100222E00;
  if (!qword_100222E00)
  {
    sub_10000460C(&qword_100222DD8);
    sub_10000460C(&qword_100222CF8);
    type metadata accessor for PlainButtonStyle();
    sub_10000BFFC(&qword_100222DC8, &qword_100222CF8);
    sub_10004527C(&qword_100222DD0, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222E00);
  }

  return result;
}

uint64_t sub_1000457D8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v113 = a1;
  v3 = type metadata accessor for Music.Artist();
  __chkstk_darwin(v3 - 8);
  v89 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_1000024C4(&qword_100222E08);
  __chkstk_darwin(v99);
  v91 = (&v88 - v5);
  v97 = sub_1000024C4(&qword_100222E10);
  __chkstk_darwin(v97);
  v98 = &v88 - v6;
  v112 = sub_1000024C4(&qword_100222E18);
  __chkstk_darwin(v112);
  v100 = &v88 - v7;
  v94 = type metadata accessor for Date();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v92 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1000024C4(&qword_100222E20);
  __chkstk_darwin(v96);
  v90 = (&v88 - v9);
  v102 = type metadata accessor for Artist();
  v101 = *(v102 - 8);
  v10 = __chkstk_darwin(v102);
  v88 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v95 = &v88 - v12;
  v13 = sub_1000024C4(&qword_1002218E8);
  v104 = *(v13 - 8);
  v105 = v13;
  __chkstk_darwin(v13);
  v103 = &v88 - v14;
  v108 = sub_1000024C4(&qword_100221668);
  __chkstk_darwin(v108);
  v16 = (&v88 - v15);
  v109 = sub_1000024C4(&qword_100222E28);
  __chkstk_darwin(v109);
  v111 = &v88 - v17;
  v106 = sub_1000024C4(&qword_100221678);
  __chkstk_darwin(v106);
  v19 = &v88 - v18;
  v110 = sub_1000024C4(&qword_100221680);
  __chkstk_darwin(v110);
  v21 = &v88 - v20;
  v107 = sub_1000024C4(&qword_100221688);
  __chkstk_darwin(v107);
  v23 = (&v88 - v22);
  v24 = type metadata accessor for ArtistController.State(0);
  __chkstk_darwin(v24);
  v26 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v1 + 2);
  swift_getKeyPath();
  v115 = v27;
  sub_1000493E8(&qword_100222E30, type metadata accessor for ArtistController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v28 = OBJC_IVAR____TtC16EventViewService16ArtistController__state;
  swift_beginAccess();
  sub_1000477F0(v27 + v28, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_100047990(v26);
    *v16 = swift_getKeyPath();
    sub_1000024C4(&qword_1002216C0);
    swift_storeEnumTagMultiPayload();
    v54 = type metadata accessor for ErrorView();
    v55 = *(v54 + 20);
    *(v16 + v55) = swift_getKeyPath();
    sub_1000024C4(&qword_1002216C8);
    swift_storeEnumTagMultiPayload();
    v56 = (v16 + *(v54 + 24));
    type metadata accessor for RemoteViewConfiguration();
    sub_1000493E8(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    *v56 = EnvironmentObject.init()();
    v56[1] = v57;
    v58 = *v2;
    v116 = *(v2 + 24);
    v117 = v58;
    v59 = swift_allocObject();
    v60 = v2[1];
    *(v59 + 16) = *v2;
    *(v59 + 32) = v60;
    *(v59 + 48) = *(v2 + 4);
    v61 = (v16 + *(v108 + 36));
    *v61 = sub_1000479F0;
    v61[1] = v59;
    v61[2] = 0;
    v61[3] = 0;
    v62 = &qword_100221668;
    sub_10000BEB8(v16, v19, &qword_100221668);
    swift_storeEnumTagMultiPayload();

    sub_100020764(&v117, v114);
    sub_10000BEB8(&v116, v114, &qword_100221708);
    sub_10000BA2C();
    sub_10000BB18();
    _ConditionalContent<>.init(storage:)();
    sub_10000BEB8(v21, v111, &qword_100221680);
    swift_storeEnumTagMultiPayload();
    sub_10000B9A0();
    sub_1000478D4();
    _ConditionalContent<>.init(storage:)();
    sub_1000050C4(v21, &qword_100221680);
    v63 = v16;
    return sub_1000050C4(v63, v62);
  }

  if (EnumCaseMultiPayload != 1)
  {
    *v23 = swift_getKeyPath();
    sub_1000024C4(&qword_1002216C0);
    swift_storeEnumTagMultiPayload();
    v64 = (v23 + *(type metadata accessor for LoadingView() + 20));
    type metadata accessor for RemoteViewConfiguration();
    sub_1000493E8(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    *v64 = EnvironmentObject.init()();
    v64[1] = v65;
    v66 = *v2;
    v116 = *(v2 + 24);
    v117 = v66;
    v67 = swift_allocObject();
    v68 = v2[1];
    *(v67 + 16) = *v2;
    *(v67 + 32) = v68;
    *(v67 + 48) = *(v2 + 4);
    v69 = (v23 + *(v107 + 36));
    type metadata accessor for _TaskModifier();
    sub_100020764(&v117, v114);

    sub_10000BEB8(&v116, v114, &qword_100221708);
    static TaskPriority.userInitiated.getter();
    *v69 = &unk_1001B6BB8;
    v69[1] = v67;
    v62 = &qword_100221688;
    sub_10000BEB8(v23, v19, &qword_100221688);
    swift_storeEnumTagMultiPayload();
    sub_10000BA2C();
    sub_10000BB18();
    _ConditionalContent<>.init(storage:)();
    sub_10000BEB8(v21, v111, &qword_100221680);
    swift_storeEnumTagMultiPayload();
    sub_10000B9A0();
    sub_1000478D4();
    _ConditionalContent<>.init(storage:)();
    sub_1000050C4(v21, &qword_100221680);
    v63 = v23;
    return sub_1000050C4(v63, v62);
  }

  v30 = *(sub_1000024C4(&qword_100222E38) + 48);
  v31 = v101;
  v32 = v102;
  v33 = (*(v101 + 48))(&v26[v30], 1, v102);
  v35 = v104;
  v34 = v105;
  v36 = v103;
  (*(v104 + 32))(v103, v26, v105);
  if (v33 == 1)
  {
    v37 = v89;
    ParticipantSchedule.participant.getter();
    v38 = ParticipantSchedule.events.getter();
    v39 = v92;
    v40 = static Date.now.getter();
    __chkstk_darwin(v40);
    *(&v88 - 2) = v39;
    v41 = sub_1001881F4(sub_100047854, (&v88 - 4), v38);
    (*(v93 + 8))(v39, v94);
    type metadata accessor for PromotionalAssetsFetcher();
    v42 = swift_allocObject();
    swift_defaultActor_initialize();
    v43 = OBJC_IVAR____TtC16EventViewService24PromotionalAssetsFetcher_service;
    if (qword_100220BF8 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for EventService();
    v45 = sub_10000BE10(v44, qword_100239108);
    (*(*(v44 - 8) + 16))(v42 + v43, v45, v44);
    sub_1000024C4(&qword_100222E40);
    swift_allocObject();
    *&v116 = sub_100046C54(v37, v41, v42, &type metadata accessor for Music.Artist);
    State.init(wrappedValue:)();
    v46 = *(&v117 + 1);
    v47 = v91;
    *v91 = v117;
    v47[1] = v46;
    type metadata accessor for RemoteViewConfiguration();
    sub_1000493E8(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    v47[2] = EnvironmentObject.init()();
    v47[3] = v48;
    v49 = v99;
    v50 = *(v99 + 88);
    *(v47 + v50) = swift_getKeyPath();
    sub_1000024C4(&qword_1002216C8);
    swift_storeEnumTagMultiPayload();
    v51 = *(v49 + 92);
    *(v47 + v51) = swift_getKeyPath();
    sub_1000024C4(&qword_1002216C0);
    swift_storeEnumTagMultiPayload();
    sub_10000BEB8(v47, v98, &qword_100222E08);
    swift_storeEnumTagMultiPayload();
    sub_100047880(&qword_100222E48, &qword_100222E20);
    sub_100047880(&qword_100222E50, &qword_100222E08);
    v52 = v100;
    _ConditionalContent<>.init(storage:)();
    sub_10000BEB8(v52, v111, &qword_100222E18);
    swift_storeEnumTagMultiPayload();
    sub_10000B9A0();
    sub_1000478D4();
    _ConditionalContent<>.init(storage:)();
    sub_1000050C4(v52, &qword_100222E18);
    sub_1000050C4(v47, &qword_100222E08);
    return (*(v35 + 8))(v36, v105);
  }

  else
  {
    v70 = v95;
    (*(v31 + 32))(v95, &v26[v30], v32);
    v71 = v88;
    (*(v31 + 16))(v88, v70, v32);
    v72 = ParticipantSchedule.events.getter();
    v73 = v92;
    v74 = static Date.now.getter();
    __chkstk_darwin(v74);
    *(&v88 - 2) = v73;
    v75 = sub_1001881F4(sub_1000494C4, (&v88 - 4), v72);
    (*(v93 + 8))(v73, v94);
    type metadata accessor for PromotionalAssetsFetcher();
    v76 = swift_allocObject();
    swift_defaultActor_initialize();
    v77 = v31;
    v78 = OBJC_IVAR____TtC16EventViewService24PromotionalAssetsFetcher_service;
    if (qword_100220BF8 != -1)
    {
      swift_once();
    }

    v79 = type metadata accessor for EventService();
    v80 = sub_10000BE10(v79, qword_100239108);
    (*(*(v79 - 8) + 16))(v76 + v78, v80, v79);
    sub_1000024C4(&qword_100222E60);
    swift_allocObject();
    *&v116 = sub_100046C54(v71, v75, v76, &type metadata accessor for Artist);
    State.init(wrappedValue:)();
    v81 = *(&v117 + 1);
    v82 = v90;
    *v90 = v117;
    v82[1] = v81;
    type metadata accessor for RemoteViewConfiguration();
    sub_1000493E8(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    v82[2] = EnvironmentObject.init()();
    v82[3] = v83;
    v84 = v96;
    v85 = *(v96 + 88);
    *(v82 + v85) = swift_getKeyPath();
    sub_1000024C4(&qword_1002216C8);
    swift_storeEnumTagMultiPayload();
    v86 = *(v84 + 92);
    *(v82 + v86) = swift_getKeyPath();
    sub_1000024C4(&qword_1002216C0);
    swift_storeEnumTagMultiPayload();
    sub_10000BEB8(v82, v98, &qword_100222E20);
    swift_storeEnumTagMultiPayload();
    sub_100047880(&qword_100222E48, &qword_100222E20);
    sub_100047880(&qword_100222E50, &qword_100222E08);
    v87 = v100;
    _ConditionalContent<>.init(storage:)();
    sub_10000BEB8(v87, v111, &qword_100222E18);
    swift_storeEnumTagMultiPayload();
    sub_10000B9A0();
    sub_1000478D4();
    _ConditionalContent<>.init(storage:)();
    sub_1000050C4(v87, &qword_100222E18);
    sub_1000050C4(v82, &qword_100222E20);
    (*(v77 + 8))(v95, v102);
    return (*(v104 + 8))(v103, v34);
  }
}

uint64_t sub_100046AD4(uint64_t *a1)
{
  v1[2] = type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = *a1;
  v4 = a1[1];
  v5 = swift_task_alloc();
  v1[4] = v5;
  *v5 = v1;
  v5[1] = sub_1000096E8;

  return sub_10010C190(v3, v4);
}

uint64_t sub_100046B94(uint64_t *a1)
{
  v1 = a1[3];
  if (v1)
  {
    v3 = *a1;
    v2 = a1[1];

    sub_10015B530(v3, v2, 8, v1);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_1000493E8(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100046C54(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t, uint64_t))
{
  v85 = a4;
  v88 = type metadata accessor for Venue();
  v83 = *(v88 - 8);
  __chkstk_darwin(v88);
  v87 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000024C4(&qword_100222E68);
  __chkstk_darwin(v9 - 8);
  v86 = &v73 - v10;
  v11 = type metadata accessor for Music();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v79 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v12 + 56);
  v14(v4 + *(*v4 + 144), 1, 1, v11);
  v15 = (v4 + *(*v4 + 152));
  *v15 = 0;
  v15[1] = 0;
  v16 = v4 + *(*v4 + 160);
  v80 = v11;
  v14(v16, 1, 1, v11);
  *(v4 + *(*v4 + 168)) = 0;
  *(v4 + *(*v4 + 176)) = 0;
  v17 = *(*v4 + 192);
  v18 = type metadata accessor for Playlist();
  (*(*(v18 - 8) + 56))(v4 + v17, 1, 1, v18);
  v19 = *(*v4 + 224);
  *(v4 + v19) = [objc_allocWithZone(type metadata accessor for LocationManager()) init];
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  memset(v94, 0, sizeof(v94));
  sub_10002089C(&v90, v89);
  sub_100006C2C(v94);
  v20 = (v4 + *(*v4 + 248));
  v21 = v93;
  v20[2] = v92;
  v20[3] = v21;
  v22 = v91;
  *v20 = v90;
  v20[1] = v22;
  v23 = (v4 + *(*v4 + 256));
  v24 = [objc_opt_self() mainBundle];
  v95._object = 0xE000000000000000;
  v25._object = 0x80000001001C5700;
  v25._countAndFlagsBits = 0xD000000000000022;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  v95._countAndFlagsBits = 0;
  v27 = NSLocalizedString(_:tableName:bundle:value:comment:)(v25, 0, v24, v26, v95);

  *v23 = v27;
  v28 = a2;
  v29 = v4 + *(*v4 + 264);
  *v29 = LocalizedStringKey.init(stringLiteral:)();
  *(v29 + 8) = v30;
  *(v29 + 16) = v31 & 1;
  *(v29 + 24) = v32;
  v33 = v4 + *(*v4 + 272);
  *v33 = LocalizedStringKey.init(stringLiteral:)();
  *(v33 + 8) = v34;
  *(v33 + 16) = v35 & 1;
  *(v33 + 24) = v36;
  v37 = v4 + *(*v4 + 280);
  *v37 = LocalizedStringKey.init(stringLiteral:)();
  *(v37 + 8) = v38;
  *(v37 + 16) = v39 & 1;
  *(v37 + 24) = v40;
  ObservationRegistrar.init()();
  v41 = *(*v4 + 200);
  v42 = (v85)(0);
  v73 = *(v42 - 8);
  v43 = *(v73 + 16);
  v76 = a1;
  v74 = v42;
  v43(v4 + v41, a1);
  *(v4 + *(*v4 + 208)) = a2;
  sub_1000024C4(&qword_1002216A8);
  v44 = swift_allocObject();
  sub_1000024C4(&qword_100221690);
  swift_storeEnumTagMultiPayload();

  ObservationRegistrar.init()();
  v45 = *(*v44 + 104);
  v75 = a3;
  *(v44 + v45) = a3;
  v46 = *(*v4 + 232);
  v78 = v4;
  *(v4 + v46) = v44;
  v47 = *(a2 + 16);
  v77 = v28;
  if (v47)
  {
    v49 = *(v12 + 16);
    v48 = v12 + 16;
    v85 = v49;
    v50 = v28 + ((*(v48 + 64) + 32) & ~*(v48 + 64));
    v84 = *(v48 + 56);
    ++v83;
    v82 = (v48 - 8);
    v81 = &_swiftEmptyArrayStorage;
    v51 = v80;
    v52 = v79;
    v49(v79, v50, v80);
    while (1)
    {
      v53 = v87;
      Music.venue.getter();
      v54 = v86;
      Venue.structuredAddress.getter();
      v55 = v54;
      (*v83)(v53, v88);
      v56 = type metadata accessor for Venue.StructuredAddress();
      v57 = *(v56 - 8);
      if ((*(v57 + 48))(v55, 1, v56) == 1)
      {
        (*v82)(v52, v51);
        sub_1000050C4(v55, &qword_100222E68);
      }

      else
      {
        v58 = Venue.StructuredAddress.country.getter();
        v60 = v59;
        (*v82)(v52, v51);
        (*(v57 + 8))(v55, v56);
        if (v60)
        {
          v61 = v81;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v61 = sub_100189664(0, *(v61 + 2) + 1, 1, v61);
          }

          v63 = *(v61 + 2);
          v62 = *(v61 + 3);
          if (v63 >= v62 >> 1)
          {
            v61 = sub_100189664((v62 > 1), v63 + 1, 1, v61);
          }

          *(v61 + 2) = v63 + 1;
          v81 = v61;
          v64 = &v61[16 * v63];
          *(v64 + 4) = v58;
          *(v64 + 5) = v60;
        }

        v51 = v80;
        v52 = v79;
      }

      v50 += v84;
      if (!--v47)
      {
        break;
      }

      v85(v52, v50, v51);
    }
  }

  else
  {
    v81 = &_swiftEmptyArrayStorage;
  }

  v65 = sub_100049184(v81);

  v66 = v78;
  *(v78 + *(*v78 + 216)) = v65;
  if (*(v65 + 16) == 1)
  {
    v67 = sub_1000997BC(v65);
    v69 = v68;
    (*(v73 + 8))(v76, v74);
    v70 = v77;
    if (v69)
    {
      v71 = v66 + *(*v66 + 152);
      sub_10004921C(*v71, *(v71 + 8));
      *v71 = v67;
      *(v71 + 8) = v69;
    }
  }

  else
  {
    (*(v73 + 8))(v76, v74);
    v70 = v77;
  }

  *(v66 + *(*v66 + 184)) = v70;
  return v66;
}

uint64_t sub_1000475F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000493E8(&qword_100222E30, type metadata accessor for ArtistController);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC16EventViewService16ArtistController__state;
  swift_beginAccess();
  return sub_1000477F0(v3 + v4, a2);
}

uint64_t sub_1000476C4(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for ArtistController.State(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000477F0(a1, v6);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_1000493E8(&qword_100222E30, type metadata accessor for ArtistController);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_100047990(v6);
}

uint64_t sub_1000477F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtistController.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100047880(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10000460C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000478D4()
{
  result = qword_100222E58;
  if (!qword_100222E58)
  {
    sub_10000460C(&qword_100222E18);
    sub_100047880(&qword_100222E48, &qword_100222E20);
    sub_100047880(&qword_100222E50, &qword_100222E08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222E58);
  }

  return result;
}

uint64_t sub_100047990(uint64_t a1)
{
  v2 = type metadata accessor for ArtistController.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000479F8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10000BD00;

  return sub_100046AD4((v0 + 16));
}

uint64_t sub_100047A8C(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_100048478(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100047BDC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Music.Genre();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1000493E8(&qword_100222E78, &type metadata accessor for Music.Genre);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1000493E8(&qword_100222E80, &type metadata accessor for Music.Genre);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1000485F8(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_100047EBC()
{
  v1 = v0;
  v2 = *v0;
  sub_1000024C4(&qword_100222E70);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_10004811C()
{
  v1 = v0;
  v35 = type metadata accessor for Music.Genre();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_1000024C4(&qword_100222E88);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_1000493E8(&qword_100222E78, &type metadata accessor for Music.Genre);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

Swift::Int sub_100048478(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100047EBC();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10004889C();
      goto LABEL_16;
    }

    sub_100048C30();
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000485F8(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for Music.Genre();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10004811C();
  }

  else
  {
    if (v11 > v10)
    {
      sub_1000489F8();
      goto LABEL_12;
    }

    sub_100048E68();
  }

  v12 = *v3;
  sub_1000493E8(&qword_100222E78, &type metadata accessor for Music.Genre);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1000493E8(&qword_100222E80, &type metadata accessor for Music.Genre);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_10004889C()
{
  v1 = v0;
  sub_1000024C4(&qword_100222E70);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1000489F8()
{
  v1 = v0;
  v2 = type metadata accessor for Music.Genre();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000024C4(&qword_100222E88);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_100048C30()
{
  v1 = v0;
  v2 = *v0;
  sub_1000024C4(&qword_100222E70);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_100048E68()
{
  v1 = v0;
  v32 = type metadata accessor for Music.Genre();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1000024C4(&qword_100222E88);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_1000493E8(&qword_100222E78, &type metadata accessor for Music.Genre);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_100049184(uint64_t a1)
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

      sub_100047A8C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_10004921C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_10004924C(uint64_t a1)
{
  v2 = type metadata accessor for Music.Genre();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_1000493E8(&qword_100222E78, &type metadata accessor for Music.Genre);
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
      sub_100047BDC(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_1000493E8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100049434()
{
  result = qword_100222E90;
  if (!qword_100222E90)
  {
    sub_10000460C(&qword_100222E98);
    sub_10000B9A0();
    sub_1000478D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100222E90);
  }

  return result;
}

uint64_t sub_1000494E8(uint64_t a1)
{
  *(a1 + 8) = sub_100049550(&qword_100222EA0);
  result = sub_100049550(&qword_100222EA8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100049550(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Ticket();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10004966C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2)
  {
    type metadata accessor for DesignTimeSong();
    if (a1 != a2)
    {
      do
      {
        while (1)
        {
          v6 = MusicItemID.init(stringLiteral:)();
          v8 = v7;
          if (v6 != MusicItemID.init(stringLiteral:)() || v8 != v9)
          {
            break;
          }

          if (!--v2)
          {
            return 1;
          }
        }

        v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v5 & 1) == 0)
        {
          return 0;
        }

        --v2;
      }

      while (v2);
    }
  }

  return 1;
}

uint64_t sub_100049778(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DesignTimeMusicPlaylist() - 8;
  v5 = __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_10004C794(v13, v10, type metadata accessor for DesignTimeMusicPlaylist);
        sub_10004C794(v14, v7, type metadata accessor for DesignTimeMusicPlaylist);
        v16 = sub_100121E6C(v10, v7);
        sub_10004C7FC(v7, type metadata accessor for DesignTimeMusicPlaylist);
        sub_10004C7FC(v10, type metadata accessor for DesignTimeMusicPlaylist);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_100049930(uint64_t a1, uint64_t a2)
{
  v78 = type metadata accessor for URL();
  v4 = *(v78 - 8);
  __chkstk_darwin(v78);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000024C4(&qword_1002214F8);
  __chkstk_darwin(v7 - 8);
  v69 = &v61 - v8;
  v70 = sub_1000024C4(&qword_100222A70);
  __chkstk_darwin(v70);
  v10 = &v61 - v9;
  v73 = type metadata accessor for DesignTimeImage();
  v11 = *(v73 - 8);
  __chkstk_darwin(v73);
  v74 = (&v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1000024C4(&qword_100221250);
  __chkstk_darwin(v13 - 8);
  v15 = &v61 - v14;
  v71 = sub_1000024C4(&qword_100221258);
  __chkstk_darwin(v71);
  v79 = &v61 - v16;
  v75 = type metadata accessor for DesignTimeMusicAlbum();
  v17 = __chkstk_darwin(v75);
  v19 = (&v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v22 = (&v61 - v21);
  v23 = *(a1 + 16);
  if (v23 == *(a2 + 16))
  {
    if (!v23 || a1 == a2)
    {
      return 1;
    }

    v62 = v6;
    v72 = v15;
    v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v76 = a2 + v24;
    v77 = a1 + v24;
    v25 = (v11 + 48);
    v26 = (v4 + 48);
    v61 = (v4 + 32);
    v63 = (v4 + 8);
    v65 = *(v20 + 72);
    v66 = (v11 + 48);
    v67 = v10;
    v68 = (v4 + 48);
    while (1)
    {
      sub_10004C794(v77, v22, type metadata accessor for DesignTimeMusicAlbum);
      sub_10004C794(v76, v19, type metadata accessor for DesignTimeMusicAlbum);
      v27 = *v22 == *v19 && v22[1] == v19[1];
      if (!v27 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v28 = v22[2] == v19[2] && v22[3] == v19[3];
      if (!v28 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v29 = *(v75 + 24);
      v30 = *(v71 + 48);
      v31 = v79;
      sub_10000BEB8(v22 + v29, v79, &qword_100221250);
      sub_10000BEB8(v19 + v29, v31 + v30, &qword_100221250);
      v32 = *v25;
      v33 = v73;
      if ((*v25)(v31, 1, v73) == 1)
      {
        if (v32(v79 + v30, 1, v33) != 1)
        {
          goto LABEL_40;
        }

        sub_1000050C4(v79, &qword_100221250);
      }

      else
      {
        v34 = v79;
        v35 = v72;
        sub_10000BEB8(v79, v72, &qword_100221250);
        if (v32(v34 + v30, 1, v33) == 1)
        {
          sub_10004C7FC(v35, type metadata accessor for DesignTimeImage);
LABEL_40:
          v59 = &qword_100221258;
          v60 = v79;
LABEL_43:
          sub_1000050C4(v60, v59);
          break;
        }

        v36 = v79 + v30;
        v37 = v74;
        sub_100005180(v36, v74);
        v26 = v68;
        if ((*v35 != *v37 || v35[1] != v37[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (static URL.== infix(_:_:)() & 1) == 0)
        {
LABEL_38:
          sub_10004C7FC(v74, type metadata accessor for DesignTimeImage);
          sub_10004C7FC(v72, type metadata accessor for DesignTimeImage);
          v59 = &qword_100221250;
          v60 = v79;
          goto LABEL_43;
        }

        v38 = *(v33 + 24);
        v39 = *(v74 + v38);
        if (*(v72 + v38))
        {
          if (!v39)
          {
            goto LABEL_38;
          }

          type metadata accessor for CGColor(0);
          sub_10004C74C(&qword_100221268, type metadata accessor for CGColor);
          v40 = v39;
          v33 = v73;
          v41 = static _CFObject.== infix(_:_:)();

          if ((v41 & 1) == 0)
          {
            goto LABEL_38;
          }
        }

        else if (v39)
        {
          goto LABEL_38;
        }

        v42 = *(v33 + 28);
        v43 = v72;
        v44 = *(v72 + v42);
        v45 = *(v74 + v42);
        sub_10004C7FC(v74, type metadata accessor for DesignTimeImage);
        sub_10004C7FC(v43, type metadata accessor for DesignTimeImage);
        sub_1000050C4(v79, &qword_100221250);
        v27 = v44 == v45;
        v25 = v66;
        if (!v27)
        {
          break;
        }
      }

      v46 = *(v75 + 28);
      v47 = *(v70 + 48);
      v48 = v67;
      sub_10000BEB8(v22 + v46, v67, &qword_1002214F8);
      sub_10000BEB8(v19 + v46, v48 + v47, &qword_1002214F8);
      v49 = *v26;
      if ((*v26)(v48, 1, v78) == 1)
      {
        if (v49(v48 + v47, 1, v78) != 1)
        {
          goto LABEL_42;
        }

        sub_1000050C4(v48, &qword_1002214F8);
        sub_10004C7FC(v19, type metadata accessor for DesignTimeMusicAlbum);
        sub_10004C7FC(v22, type metadata accessor for DesignTimeMusicAlbum);
      }

      else
      {
        v50 = v69;
        sub_10000BEB8(v48, v69, &qword_1002214F8);
        if (v49(v48 + v47, 1, v78) == 1)
        {
          (*v63)(v50, v78);
LABEL_42:
          v59 = &qword_100222A70;
          v60 = v48;
          goto LABEL_43;
        }

        v51 = v62;
        v52 = v78;
        (*v61)(v62, v48 + v47, v78);
        sub_10004C74C(&qword_100222A78, &type metadata accessor for URL);
        v64 = dispatch thunk of static Equatable.== infix(_:_:)();
        v53 = v50;
        v54 = *v63;
        v55 = v51;
        v56 = v68;
        (*v63)(v55, v52);
        v57 = v53;
        v26 = v56;
        v54(v57, v52);
        v25 = v66;
        sub_1000050C4(v48, &qword_1002214F8);
        sub_10004C7FC(v19, type metadata accessor for DesignTimeMusicAlbum);
        sub_10004C7FC(v22, type metadata accessor for DesignTimeMusicAlbum);
        if ((v64 & 1) == 0)
        {
          return 0;
        }
      }

      v76 += v65;
      v77 += v65;
      if (!--v23)
      {
        return 1;
      }
    }

    sub_10004C7FC(v19, type metadata accessor for DesignTimeMusicAlbum);
    sub_10004C7FC(v22, type metadata accessor for DesignTimeMusicAlbum);
  }

  return 0;
}

uint64_t sub_10004A2A8(uint64_t a1, uint64_t a2)
{
  v49 = type metadata accessor for DesignTimeImage();
  v4 = *(v49 - 8);
  __chkstk_darwin(v49);
  v54 = (&v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1000024C4(&qword_100221250);
  __chkstk_darwin(v6 - 8);
  v8 = &v44 - v7;
  v51 = sub_1000024C4(&qword_100221258);
  __chkstk_darwin(v51);
  v10 = &v44 - v9;
  v50 = type metadata accessor for DesignTimeArtist();
  v11 = __chkstk_darwin(v50);
  v13 = (&v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v16 = (&v44 - v15);
  v17 = *(a1 + 16);
  if (v17 == *(a2 + 16))
  {
    if (!v17 || a1 == a2)
    {
      return 1;
    }

    v53 = v8;
    v48 = v10;
    v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v19 = a1 + v18;
    v55 = a2 + v18;
    v20 = (v4 + 48);
    v21 = *(v14 + 72);
    v46 = &v44 - v15;
    v47 = v21;
    v22 = v49;
    v45 = (v4 + 48);
    while (1)
    {
      sub_10004C794(v19, v16, type metadata accessor for DesignTimeArtist);
      sub_10004C794(v55, v13, type metadata accessor for DesignTimeArtist);
      v27 = *v16 == *v13 && v16[1] == v13[1];
      if (!v27 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v28 = v16[2] == v13[2] && v16[3] == v13[3];
      if (!v28 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v52 = v19;
      v29 = v20;
      v30 = *(v50 + 24);
      v31 = *(v51 + 48);
      v32 = v48;
      sub_10000BEB8(v16 + v30, v48, &qword_100221250);
      sub_10000BEB8(v13 + v30, v32 + v31, &qword_100221250);
      v33 = *v29;
      if ((*v29)(v32, 1, v22) == 1)
      {
        if (v33(v32 + v31, 1, v22) != 1)
        {
          goto LABEL_34;
        }

        v20 = v29;
        sub_1000050C4(v32, &qword_100221250);
        sub_10004C7FC(v13, type metadata accessor for DesignTimeArtist);
        sub_10004C7FC(v16, type metadata accessor for DesignTimeArtist);
      }

      else
      {
        v34 = v53;
        sub_10000BEB8(v32, v53, &qword_100221250);
        if (v33(v32 + v31, 1, v22) == 1)
        {
          sub_10004C7FC(v34, type metadata accessor for DesignTimeImage);
          v16 = v46;
LABEL_34:
          v42 = &qword_100221258;
LABEL_35:
          sub_1000050C4(v32, v42);
          break;
        }

        v35 = v32 + v31;
        v36 = v54;
        sub_100005180(v35, v54);
        v37 = v34[1];
        v27 = *v34 == *v36;
        v16 = v46;
        if ((!v27 || v37 != v36[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (static URL.== infix(_:_:)() & 1) == 0)
        {
LABEL_31:
          sub_10004C7FC(v54, type metadata accessor for DesignTimeImage);
          sub_10004C7FC(v53, type metadata accessor for DesignTimeImage);
          v42 = &qword_100221250;
          goto LABEL_35;
        }

        v38 = *(v22 + 24);
        v39 = *(v54 + v38);
        if (*(v53 + v38))
        {
          if (!v39)
          {
            goto LABEL_31;
          }

          type metadata accessor for CGColor(0);
          sub_10004C74C(&qword_100221268, type metadata accessor for CGColor);
          v40 = v39;
          v22 = v49;
          v41 = static _CFObject.== infix(_:_:)();

          if ((v41 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        else if (v39)
        {
          goto LABEL_31;
        }

        v23 = *(v22 + 28);
        v24 = v53;
        v25 = *(v53 + v23);
        v26 = *(v54 + v23);
        sub_10004C7FC(v54, type metadata accessor for DesignTimeImage);
        sub_10004C7FC(v24, type metadata accessor for DesignTimeImage);
        sub_1000050C4(v32, &qword_100221250);
        sub_10004C7FC(v13, type metadata accessor for DesignTimeArtist);
        sub_10004C7FC(v16, type metadata accessor for DesignTimeArtist);
        v27 = v25 == v26;
        v20 = v45;
        if (!v27)
        {
          return 0;
        }
      }

      v55 += v47;
      v19 = v52 + v47;
      if (!--v17)
      {
        return 1;
      }
    }

    sub_10004C7FC(v13, type metadata accessor for DesignTimeArtist);
    sub_10004C7FC(v16, type metadata accessor for DesignTimeArtist);
  }

  return 0;
}

uint64_t sub_10004A8F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

void sub_10004A984(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v23 = *(v3 - 8);
  v24 = v3;
  __chkstk_darwin(v3);
  v22 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000024C4(&qword_1002214F8);
  __chkstk_darwin(v5 - 8);
  v7 = &v21 - v6;
  v8 = type metadata accessor for DesignTimeImage();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000024C4(&qword_100221250);
  __chkstk_darwin(v12 - 8);
  v14 = &v21 - v13;
  String.hash(into:)();
  String.hash(into:)();
  v15 = v1[4];
  Hasher._combine(_:)(*(v15 + 16));
  for (i = *(v15 + 16); i; --i)
  {
    MusicItemID.init(stringLiteral:)();
    String.hash(into:)();
  }

  sub_10004B68C(a1, v1[5]);
  sub_10004B110(a1, v1[6]);
  v17 = type metadata accessor for DesignTimeMusicKitArtist();
  sub_10000BEB8(v1 + *(v17 + 36), v14, &qword_100221250);
  if ((*(v9 + 48))(v14, 1, v8) == 1)
  {
    Hasher._combine(_:)(0);
    v19 = v23;
    v18 = v24;
  }

  else
  {
    sub_100005180(v14, v11);
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    sub_10004C74C(&qword_100221260, &type metadata accessor for URL);
    v18 = v24;
    dispatch thunk of Hashable.hash(into:)();
    v19 = v23;
    if (*&v11[*(v8 + 24)])
    {
      Hasher._combine(_:)(1u);
      type metadata accessor for CGColor(0);
      sub_10004C74C(&qword_100221268, type metadata accessor for CGColor);
      _CFObject.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    Hasher._combine(_:)(v11[*(v8 + 28)]);
    sub_10004C7FC(v11, type metadata accessor for DesignTimeImage);
  }

  sub_10000BEB8(v1 + *(v17 + 40), v7, &qword_1002214F8);
  if ((*(v19 + 48))(v7, 1, v18) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v20 = v22;
    (*(v19 + 32))(v22, v7, v18);
    Hasher._combine(_:)(1u);
    sub_10004C74C(&qword_100221260, &type metadata accessor for URL);
    dispatch thunk of Hashable.hash(into:)();
    (*(v19 + 8))(v20, v18);
  }
}

uint64_t sub_10004AEA0(uint64_t a1)
{
  result = sub_10004C74C(&qword_100222F28, type metadata accessor for DesignTimeMusicKitArtist);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for DesignTimeMusicKitArtist()
{
  result = qword_100222FE0;
  if (!qword_100222FE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004AFC0(uint64_t a1)
{
  *(a1 + 8) = sub_10004C74C(&qword_100222F70, type metadata accessor for DesignTimeMusicKitArtist);
  result = sub_10004C74C(&qword_100222F78, type metadata accessor for DesignTimeMusicKitArtist);
  *(a1 + 16) = result;
  return result;
}

Swift::Int sub_10004B08C()
{
  Hasher.init(_seed:)();
  sub_10004A984(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10004B0D0()
{
  Hasher.init(_seed:)();
  sub_10004A984(v1);
  return Hasher._finalize()();
}

void sub_10004B110(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for URL();
  v28 = *(v3 - 8);
  __chkstk_darwin(v3);
  v27 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000024C4(&qword_1002214F8);
  __chkstk_darwin(v5 - 8);
  v33 = &v24 - v6;
  v7 = type metadata accessor for DesignTimeImage();
  v32 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000024C4(&qword_100221250);
  __chkstk_darwin(v10 - 8);
  v12 = &v24 - v11;
  v30 = type metadata accessor for DesignTimeMusicAlbum();
  v13 = *(v30 - 8);
  __chkstk_darwin(v30);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 16);
  Hasher._combine(_:)(v16);
  if (v16)
  {
    v17 = v13;
    v18 = a2 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v19 = *(v30 + 24);
    v30 = *(v30 + 28);
    v31 = v19;
    v20 = (v28 + 48);
    v26 = (v28 + 32);
    v25 = (v28 + 8);
    v28 = *(v17 + 72);
    v29 = (v32 + 48);
    v32 = v7;
    do
    {
      sub_10004C794(v18, v15, type metadata accessor for DesignTimeMusicAlbum);
      String.hash(into:)();
      String.hash(into:)();
      sub_10000BEB8(&v15[v31], v12, &qword_100221250);
      if ((*v29)(v12, 1, v7) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        sub_100005180(v12, v9);
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        sub_10004C74C(&qword_100221260, &type metadata accessor for URL);
        dispatch thunk of Hashable.hash(into:)();
        if (*&v9[*(v7 + 24)])
        {
          Hasher._combine(_:)(1u);
          type metadata accessor for CGColor(0);
          sub_10004C74C(&qword_100221268, type metadata accessor for CGColor);
          _CFObject.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        v7 = v32;
        Hasher._combine(_:)(v9[*(v32 + 28)]);
        sub_10004C7FC(v9, type metadata accessor for DesignTimeImage);
      }

      v21 = v33;
      sub_10000BEB8(&v15[v30], v33, &qword_1002214F8);
      if ((*v20)(v21, 1, v3) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v22 = v27;
        (*v26)(v27, v21, v3);
        Hasher._combine(_:)(1u);
        sub_10004C74C(&qword_100221260, &type metadata accessor for URL);
        dispatch thunk of Hashable.hash(into:)();
        v23 = v22;
        v7 = v32;
        (*v25)(v23, v3);
      }

      sub_10004C7FC(v15, type metadata accessor for DesignTimeMusicAlbum);
      v18 += v28;
      --v16;
    }

    while (v16);
  }
}

void sub_10004B68C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for URL();
  v28 = *(v3 - 8);
  __chkstk_darwin(v3);
  v30 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000024C4(&qword_1002214F8);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - v6;
  v8 = type metadata accessor for DesignTimeImage();
  v36 = *(v8 - 8);
  __chkstk_darwin(v8);
  v40 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000024C4(&qword_100221250);
  __chkstk_darwin(v10 - 8);
  v39 = &v27 - v11;
  v12 = type metadata accessor for DesignTimeMusicPlaylist();
  v13 = *(v12 - 1);
  __chkstk_darwin(v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 16);
  Hasher._combine(_:)(v16);
  v38 = v16;
  if (v16)
  {
    v17 = a2;
    v18 = 0;
    v37 = v17 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v19 = v12[9];
    v35 = v12[8];
    v36 += 6;
    v33 = v12[10];
    v34 = v19;
    v20 = v28;
    v31 = *(v13 + 72);
    v32 = (v28 + 6);
    ++v28;
    v29 = (v20 + 4);
    do
    {
      sub_10004C794(v37 + v31 * v18, v15, type metadata accessor for DesignTimeMusicPlaylist);
      String.hash(into:)();
      String.hash(into:)();
      if (*(v15 + 5))
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        if (!*(v15 + 7))
        {
          goto LABEL_8;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        if (!*(v15 + 7))
        {
LABEL_8:
          Hasher._combine(_:)(0);
          goto LABEL_9;
        }
      }

      Hasher._combine(_:)(1u);
      String.hash(into:)();
LABEL_9:
      v21 = v39;
      sub_10000BEB8(&v15[v35], v39, &qword_100221250);
      if ((*v36)(v21, 1, v8) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v22 = v40;
        sub_100005180(v21, v40);
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        sub_10004C74C(&qword_100221260, &type metadata accessor for URL);
        dispatch thunk of Hashable.hash(into:)();
        if (*(v22 + *(v8 + 24)))
        {
          Hasher._combine(_:)(1u);
          type metadata accessor for CGColor(0);
          sub_10004C74C(&qword_100221268, type metadata accessor for CGColor);
          _CFObject.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        v23 = v40;
        Hasher._combine(_:)(*(v40 + *(v8 + 28)));
        sub_10004C7FC(v23, type metadata accessor for DesignTimeImage);
      }

      sub_10000BEB8(&v15[v34], v7, &qword_1002214F8);
      if ((*v32)(v7, 1, v3) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v24 = v30;
        (*v29)(v30, v7, v3);
        Hasher._combine(_:)(1u);
        sub_10004C74C(&qword_100221260, &type metadata accessor for URL);
        dispatch thunk of Hashable.hash(into:)();
        (*v28)(v24, v3);
      }

      v25 = *&v15[v33];
      Hasher._combine(_:)(*(v25 + 16));
      for (i = *(v25 + 16); i; --i)
      {
        MusicItemID.init(stringLiteral:)();
        String.hash(into:)();
      }

      ++v18;
      sub_10004C7FC(v15, type metadata accessor for DesignTimeMusicPlaylist);
    }

    while (v18 != v38);
  }
}

void sub_10004BD18(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DesignTimeImage();
  v20 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000024C4(&qword_100221250);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for DesignTimeArtist();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 16);
  Hasher._combine(_:)(v13);
  if (v13)
  {
    v14 = *(v9 + 24);
    v15 = v10;
    v16 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = (v20 + 48);
    v18 = *(v15 + 72);
    v19 = v14;
    v20 = v18;
    do
    {
      sub_10004C794(v16, v12, type metadata accessor for DesignTimeArtist);
      String.hash(into:)();
      String.hash(into:)();
      sub_10000BEB8(&v12[v14], v8, &qword_100221250);
      if ((*v17)(v8, 1, v3) == 1)
      {
        Hasher._combine(_:)(0);
        sub_10004C7FC(v12, type metadata accessor for DesignTimeArtist);
      }

      else
      {
        sub_100005180(v8, v5);
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        type metadata accessor for URL();
        sub_10004C74C(&qword_100221260, &type metadata accessor for URL);
        dispatch thunk of Hashable.hash(into:)();
        if (*&v5[*(v3 + 24)])
        {
          Hasher._combine(_:)(1u);
          type metadata accessor for CGColor(0);
          sub_10004C74C(&qword_100221268, type metadata accessor for CGColor);
          _CFObject.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        Hasher._combine(_:)(v5[*(v3 + 28)]);
        sub_10004C7FC(v12, type metadata accessor for DesignTimeArtist);
        sub_10004C7FC(v5, type metadata accessor for DesignTimeImage);
        v14 = v19;
      }

      v16 += v20;
      --v13;
    }

    while (v13);
  }
}

BOOL sub_10004C0D8(void *a1, void *a2)
{
  v4 = type metadata accessor for URL();
  v46 = *(v4 - 8);
  __chkstk_darwin(v4);
  v43 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000024C4(&qword_1002214F8);
  __chkstk_darwin(v6 - 8);
  v44 = &v41 - v7;
  v8 = sub_1000024C4(&qword_100222A70);
  __chkstk_darwin(v8);
  v45 = &v41 - v9;
  v10 = type metadata accessor for DesignTimeImage();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1000024C4(&qword_100221250);
  __chkstk_darwin(v14 - 8);
  v16 = (&v41 - v15);
  v17 = sub_1000024C4(&qword_100221258);
  __chkstk_darwin(v17);
  v19 = &v41 - v18;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (sub_10004966C(a1[4], a2[4]) & 1) == 0 || (sub_100049778(a1[5], a2[5]) & 1) == 0 || (sub_100049930(a1[6], a2[6]) & 1) == 0)
  {
    return 0;
  }

  v42 = v4;
  v41 = type metadata accessor for DesignTimeMusicKitArtist();
  v20 = *(v41 + 36);
  v21 = *(v17 + 48);
  sub_10000BEB8(a1 + v20, v19, &qword_100221250);
  v22 = a2 + v20;
  v23 = v21;
  sub_10000BEB8(v22, &v19[v21], &qword_100221250);
  v24 = *(v11 + 48);
  if (v24(v19, 1, v10) != 1)
  {
    sub_10000BEB8(v19, v16, &qword_100221250);
    if (v24(&v19[v23], 1, v10) != 1)
    {
      sub_100005180(&v19[v23], v13);
      v27 = sub_10005859C(v16, v13);
      sub_10004C7FC(v13, type metadata accessor for DesignTimeImage);
      sub_10004C7FC(v16, type metadata accessor for DesignTimeImage);
      sub_1000050C4(v19, &qword_100221250);
      if ((v27 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_17;
    }

    sub_10004C7FC(v16, type metadata accessor for DesignTimeImage);
LABEL_15:
    v25 = &qword_100221258;
    v26 = v19;
LABEL_23:
    sub_1000050C4(v26, v25);
    return 0;
  }

  if (v24(&v19[v23], 1, v10) != 1)
  {
    goto LABEL_15;
  }

  sub_1000050C4(v19, &qword_100221250);
LABEL_17:
  v28 = *(v41 + 40);
  v29 = *(v8 + 48);
  v30 = a1 + v28;
  v31 = v45;
  sub_10000BEB8(v30, v45, &qword_1002214F8);
  sub_10000BEB8(a2 + v28, v31 + v29, &qword_1002214F8);
  v32 = v46;
  v33 = *(v46 + 48);
  v34 = v42;
  if (v33(v31, 1, v42) == 1)
  {
    if (v33(v31 + v29, 1, v34) == 1)
    {
      sub_1000050C4(v31, &qword_1002214F8);
      return 1;
    }

    goto LABEL_22;
  }

  v35 = v44;
  sub_10000BEB8(v31, v44, &qword_1002214F8);
  if (v33(v31 + v29, 1, v34) == 1)
  {
    (*(v32 + 8))(v35, v34);
LABEL_22:
    v25 = &qword_100222A70;
    v26 = v31;
    goto LABEL_23;
  }

  v37 = v31 + v29;
  v38 = v43;
  (*(v32 + 32))(v43, v37, v34);
  sub_10004C74C(&qword_100222A78, &type metadata accessor for URL);
  v39 = dispatch thunk of static Equatable.== infix(_:_:)();
  v40 = *(v32 + 8);
  v40(v38, v34);
  v40(v35, v34);
  sub_1000050C4(v31, &qword_1002214F8);
  return (v39 & 1) != 0;
}

uint64_t sub_10004C74C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10004C794(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004C7FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10004C870(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000024C4(&qword_100221250);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1000024C4(&qword_1002214F8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10004C9C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1000024C4(&qword_100221250);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1000024C4(&qword_1002214F8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10004CAFC()
{
  sub_10004CCD0(319, &qword_100222FF0, type metadata accessor for DesignTimeSong, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_10004CCD0(319, &qword_100222FF8, type metadata accessor for DesignTimeMusicPlaylist, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_10004CCD0(319, &unk_100223000, type metadata accessor for DesignTimeMusicAlbum, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        sub_10004CCD0(319, &qword_1002212D8, type metadata accessor for DesignTimeImage, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_10004CCD0(319, &qword_100221420, &type metadata accessor for URL, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10004CCD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10004CD34@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_100026AA4();
  a1[1] = v2;
}

uint64_t sub_10004CD74(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_100024568(v1, v2);
}

uint64_t sub_10004CDB8()
{
  type metadata accessor for SetlistViewModel();
  type metadata accessor for State();
  State.wrappedValue.getter();
  return v1;
}

uint64_t sub_10004CE0C()
{
  type metadata accessor for SetlistViewModel();
  type metadata accessor for State();
  State.projectedValue.getter();
  return v1;
}

uint64_t sub_10004CE64()
{
  v0 = type metadata accessor for UserInterfaceSizeClass();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v22 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000024C4(&qword_100222958);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v22 - v5;
  v7 = sub_1000024C4(&qword_100221730);
  v8 = __chkstk_darwin(v7 - 8);
  v23 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v22 - v11;
  __chkstk_darwin(v10);
  v14 = &v22 - v13;
  sub_100039F08(&v22 - v13);
  (*(v1 + 104))(v12, enum case for UserInterfaceSizeClass.regular(_:), v0);
  (*(v1 + 56))(v12, 0, 1, v0);
  v15 = *(v4 + 56);
  sub_10000BEB8(v14, v6, &qword_100221730);
  sub_10000BEB8(v12, &v6[v15], &qword_100221730);
  v16 = *(v1 + 48);
  if (v16(v6, 1, v0) != 1)
  {
    sub_10000BEB8(v6, v23, &qword_100221730);
    if (v16(&v6[v15], 1, v0) != 1)
    {
      v18 = v22;
      (*(v1 + 32))(v22, &v6[v15], v0);
      sub_100055DD0(&qword_100221838, &type metadata accessor for UserInterfaceSizeClass);
      v19 = v23;
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      v21 = *(v1 + 8);
      v21(v18, v0);
      sub_1000050C4(v12, &qword_100221730);
      sub_1000050C4(v14, &qword_100221730);
      v21(v19, v0);
      sub_1000050C4(v6, &qword_100221730);
      if (v20)
      {
        return 2;
      }

      return 1;
    }

    sub_1000050C4(v12, &qword_100221730);
    sub_1000050C4(v14, &qword_100221730);
    (*(v1 + 8))(v23, v0);
LABEL_6:
    sub_1000050C4(v6, &qword_100222958);
    return 1;
  }

  sub_1000050C4(v12, &qword_100221730);
  sub_1000050C4(v14, &qword_100221730);
  if (v16(&v6[v15], 1, v0) != 1)
  {
    goto LABEL_6;
  }

  sub_1000050C4(v6, &qword_100221730);
  return 2;
}

uint64_t sub_10004D2B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v85 = type metadata accessor for TaskPriority();
  v84 = *(v85 - 8);
  v3 = __chkstk_darwin(v85);
  v83 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = *(a1 - 8);
  v92 = *(v81 + 64);
  __chkstk_darwin(v3);
  v90 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000460C(&qword_1002230C8);
  v80 = a1;
  v6 = *(a1 + 24);
  v88 = *(a1 + 16);
  v89 = v6;
  type metadata accessor for SetlistDetailSection();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Array();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for SetlistSongRowView();
  sub_10000460C(&qword_1002230D0);
  type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_10000BFFC(&qword_1002230D8, &qword_1002230D0);
  v104 = WitnessTable;
  v105 = v9;
  v82 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  swift_getWitnessTable();
  v10 = type metadata accessor for Button();
  v11 = type metadata accessor for PlainButtonStyle();
  v12 = swift_getWitnessTable();
  v13 = sub_100055DD0(&qword_100222DD0, &type metadata accessor for PlainButtonStyle);
  v99 = v10;
  v100 = v11;
  v101 = v12;
  v102 = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v99 = v10;
  v100 = v11;
  v101 = v12;
  v102 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v99 = OpaqueTypeMetadata2;
  v100 = OpaqueTypeConformance2;
  v16 = swift_getOpaqueTypeMetadata2();
  v17 = swift_getWitnessTable();
  v18 = sub_100055230();
  v99 = v7;
  v100 = &type metadata for MusicItemID;
  v101 = v16;
  v102 = v17;
  v103 = v18;
  type metadata accessor for ForEach();
  v99 = OpaqueTypeMetadata2;
  v100 = OpaqueTypeConformance2;
  v98 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  v19 = type metadata accessor for LazyHGrid();
  v20 = swift_getWitnessTable();
  v99 = v19;
  v100 = v20;
  swift_getOpaqueTypeMetadata2();
  v99 = v19;
  v100 = v20;
  swift_getOpaqueTypeConformance2();
  v21 = type metadata accessor for ScrollView();
  v22 = swift_getWitnessTable();
  v99 = v21;
  v100 = v22;
  v23 = swift_getOpaqueTypeMetadata2();
  v24 = type metadata accessor for ViewAlignedScrollTargetBehavior();
  v99 = v21;
  v100 = v22;
  v25 = swift_getOpaqueTypeConformance2();
  v99 = v23;
  v100 = v24;
  v101 = v25;
  v102 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v26 = swift_getOpaqueTypeMetadata2();
  v99 = v23;
  v100 = v24;
  v101 = v25;
  v102 = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v27 = swift_getOpaqueTypeConformance2();
  v99 = v26;
  v100 = v27;
  v28 = swift_getOpaqueTypeMetadata2();
  v99 = v26;
  v100 = v27;
  v29 = swift_getOpaqueTypeConformance2();
  v99 = v28;
  v100 = &type metadata for MusicItemID;
  v101 = v29;
  v102 = v18;
  v30 = swift_getOpaqueTypeMetadata2();
  v31 = sub_10000460C(&qword_100222080);
  v99 = v28;
  v100 = &type metadata for MusicItemID;
  v101 = v29;
  v102 = v18;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = sub_100026B6C();
  v99 = v30;
  v100 = v31;
  v101 = v32;
  v102 = v33;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v34 = type metadata accessor for VStack();
  v71 = v34;
  v75 = *(v34 - 8);
  __chkstk_darwin(v34);
  v68 = &v67 - v35;
  v87 = swift_getWitnessTable();
  v99 = v34;
  v100 = v87;
  v76 = &unk_1001C94C8;
  v73 = swift_getOpaqueTypeMetadata2();
  v78 = *(v73 - 8);
  __chkstk_darwin(v73);
  v70 = &v67 - v36;
  v77 = type metadata accessor for ModifiedContent();
  v79 = *(v77 - 8);
  v37 = __chkstk_darwin(v77);
  v72 = &v67 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v74 = &v67 - v39;
  static HorizontalAlignment.leading.getter();
  v40 = v88;
  v41 = v89;
  v93 = v88;
  v94 = v89;
  v42 = v91;
  v95 = v91;
  VStack.init(alignment:spacing:content:)();
  v67 = "_EVENTS_LIST_TEXT";
  v43 = v81;
  v69 = *(v81 + 16);
  v44 = v90;
  v45 = v80;
  v69(v90, v42, v80);
  type metadata accessor for MainActor();
  v46 = static MainActor.shared.getter();
  v47 = *(v43 + 80);
  v48 = v43;
  v49 = swift_allocObject();
  v49[2] = v46;
  v49[3] = &protocol witness table for MainActor;
  v49[4] = v40;
  v49[5] = v41;
  v81 = *(v48 + 32);
  v50 = v45;
  (v81)(v49 + ((v47 + 48) & ~v47), v44, v45);
  v51 = v83;
  v52 = v71;
  v53 = v87;
  j___sScP13userInitiatedScPvgZ();
  v54 = v70;
  v55 = v68;
  sub_10000250C(0, v51, 0xD000000000000022, (v67 | 0x8000000000000000), 79, &unk_1001B6E18, v49, v70, v52, v53);
  (*(v84 + 8))(v51, v85);
  (*(v75 + 8))(v55, v52);
  v56 = v90;
  v69(v90, v91, v50);
  v57 = swift_allocObject();
  v58 = v89;
  *(v57 + 16) = v88;
  *(v57 + 24) = v58;
  (v81)(v57 + ((v47 + 32) & ~v47), v56, v50);
  v99 = v52;
  v100 = v87;
  v59 = swift_getOpaqueTypeConformance2();
  v60 = v72;
  v61 = v73;
  View.onDisappear(perform:)();

  (*(v78 + 8))(v54, v61);
  v96 = v59;
  v97 = &protocol witness table for _AppearanceActionModifier;
  v62 = v77;
  v63 = swift_getWitnessTable();
  v64 = v74;
  sub_1000EE87C(v60, v62, v63);
  v65 = *(v79 + 8);
  v65(v60, v62);
  sub_1000EE87C(v64, v62, v63);
  return (v65)(v64, v62);
}

uint64_t sub_10004DEEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, void)@<X2>, uint64_t a4@<X8>)
{
  v209 = a1;
  v200 = a4;
  v210 = type metadata accessor for SetlistView();
  v199 = *(v210 - 8);
  v197 = *(v199 + 64);
  __chkstk_darwin(v210);
  v198 = &v149 - v6;
  v7 = type metadata accessor for ViewAlignedScrollTargetBehavior.LimitBehavior();
  __chkstk_darwin(v7 - 8);
  v194 = &v149 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ViewAlignedScrollTargetBehavior();
  v195 = *(v9 - 8);
  __chkstk_darwin(v9);
  v193 = &v149 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ContentMarginPlacement();
  v191 = *(v11 - 8);
  v192 = v11;
  __chkstk_darwin(v11);
  v190 = &v149 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = a3;
  swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for Array();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for SetlistSongRowView();
  sub_10000460C(&qword_1002230D0);
  type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v15 = sub_10000BFFC(&qword_1002230D8, &qword_1002230D0);
  v241 = WitnessTable;
  v242 = v15;
  swift_getWitnessTable();
  v16 = type metadata accessor for Button();
  v17 = type metadata accessor for PlainButtonStyle();
  v18 = swift_getWitnessTable();
  v19 = sub_100055DD0(&qword_100222DD0, &type metadata accessor for PlainButtonStyle);
  *&v243 = v16;
  *(&v243 + 1) = v17;
  *&v244 = v18;
  *(&v244 + 1) = v19;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v243 = v16;
  *(&v243 + 1) = v17;
  *&v244 = v18;
  *(&v244 + 1) = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v243 = OpaqueTypeMetadata2;
  *(&v243 + 1) = OpaqueTypeConformance2;
  v22 = swift_getOpaqueTypeMetadata2();
  v23 = swift_getWitnessTable();
  v24 = sub_100055230();
  *&v243 = v13;
  *(&v243 + 1) = &type metadata for MusicItemID;
  *&v244 = v22;
  *(&v244 + 1) = v23;
  *&v245 = v24;
  type metadata accessor for ForEach();
  *&v243 = OpaqueTypeMetadata2;
  *(&v243 + 1) = OpaqueTypeConformance2;
  v240 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  v25 = type metadata accessor for LazyHGrid();
  v26 = swift_getWitnessTable();
  *&v243 = v25;
  *(&v243 + 1) = v26;
  v27 = swift_getOpaqueTypeMetadata2();
  *&v243 = v25;
  *(&v243 + 1) = v26;
  v28 = swift_getOpaqueTypeConformance2();
  v172 = v27;
  v168 = v28;
  v29 = type metadata accessor for ScrollView();
  v174 = *(v29 - 8);
  __chkstk_darwin(v29);
  v171 = &v149 - v30;
  v31 = swift_getWitnessTable();
  *&v243 = v29;
  *(&v243 + 1) = v31;
  v32 = swift_getOpaqueTypeMetadata2();
  v170 = *(v32 - 8);
  __chkstk_darwin(v32);
  v167 = &v149 - v33;
  v175 = v29;
  *&v243 = v29;
  *(&v243 + 1) = v31;
  v164 = v31;
  v34 = swift_getOpaqueTypeConformance2();
  *&v243 = v32;
  *(&v243 + 1) = v9;
  *&v244 = v34;
  *(&v244 + 1) = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v35 = swift_getOpaqueTypeMetadata2();
  v165 = *(v35 - 8);
  __chkstk_darwin(v35);
  v162 = v34;
  v163 = &v149 - v36;
  v173 = v32;
  *&v243 = v32;
  *(&v243 + 1) = v9;
  v196 = v9;
  *&v244 = v34;
  *(&v244 + 1) = &protocol witness table for ViewAlignedScrollTargetBehavior;
  v37 = swift_getOpaqueTypeConformance2();
  *&v243 = v35;
  *(&v243 + 1) = v37;
  v38 = swift_getOpaqueTypeMetadata2();
  v177 = *(v38 - 8);
  __chkstk_darwin(v38);
  v176 = &v149 - v39;
  v166 = v35;
  *&v243 = v35;
  *(&v243 + 1) = v37;
  v161 = v37;
  v40 = swift_getOpaqueTypeConformance2();
  *&v243 = v38;
  *(&v243 + 1) = &type metadata for MusicItemID;
  *&v244 = v40;
  *(&v244 + 1) = v24;
  v41 = swift_getOpaqueTypeMetadata2();
  v184 = *(v41 - 8);
  __chkstk_darwin(v41);
  v182 = &v149 - v42;
  v43 = sub_10000460C(&qword_100222080);
  v180 = v38;
  *&v243 = v38;
  *(&v243 + 1) = &type metadata for MusicItemID;
  v169 = v40;
  *&v244 = v40;
  *(&v244 + 1) = v24;
  v189 = v24;
  v44 = swift_getOpaqueTypeConformance2();
  v45 = sub_100026B6C();
  v185 = v41;
  *&v243 = v41;
  *(&v243 + 1) = v43;
  v181 = v43;
  v178 = v45;
  v179 = v44;
  *&v244 = v44;
  *(&v244 + 1) = v45;
  v188 = swift_getOpaqueTypeMetadata2();
  v183 = *(v188 - 8);
  v46 = __chkstk_darwin(v188);
  v187 = &v149 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v186 = &v149 - v48;
  v211 = a2;
  v49 = type metadata accessor for SetlistDetailSection();
  v152 = *(v49 - 8);
  __chkstk_darwin(v49);
  v150 = &v149 - v50;
  v204 = v51;
  v52 = type metadata accessor for ModifiedContent();
  v154 = *(v52 - 8);
  __chkstk_darwin(v52);
  v151 = &v149 - v53;
  v203 = v54;
  v55 = type metadata accessor for ModifiedContent();
  v159 = *(v55 - 8);
  v56 = __chkstk_darwin(v55);
  v155 = &v149 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v153 = &v149 - v58;
  v208 = v59;
  v205 = type metadata accessor for Optional();
  v201 = *(v205 - 8);
  v60 = __chkstk_darwin(v205);
  v212 = &v149 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60);
  v207 = &v149 - v62;
  v63 = type metadata accessor for AccessibilityTraits();
  v157 = *(v63 - 8);
  v158 = v63;
  __chkstk_darwin(v63);
  v156 = &v149 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_1000024C4(&qword_1002230C8);
  v65 = __chkstk_darwin(v160);
  v202 = &v149 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v65);
  v206 = &v149 - v67;
  sub_10004CDB8();

  LOWORD(v148) = 256;
  v147 = 0;
  v68 = Text.init(_:tableName:bundle:comment:)();
  v70 = v69;
  LOBYTE(v43) = v71;
  static Font.title2.getter();
  static Font.Weight.bold.getter();
  Font.weight(_:)();

  v72 = Text.font(_:)();
  v74 = v73;
  LOBYTE(v9) = v75;
  v77 = v76;

  sub_100017398(v68, v70, v43 & 1);

  KeyPath = swift_getKeyPath();
  v79 = swift_getKeyPath();
  LOBYTE(v243) = v9 & 1;
  LOBYTE(v232) = 0;
  LOBYTE(v43) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  LOBYTE(v223) = 0;
  *&v232 = v72;
  *(&v232 + 1) = v74;
  LOBYTE(v233) = v9 & 1;
  *(&v233 + 1) = v77;
  v80 = v209;
  *&v234 = KeyPath;
  *(&v234 + 1) = 2;
  LOBYTE(v235) = 0;
  *(&v235 + 1) = v79;
  LOBYTE(v236) = 0;
  BYTE8(v236) = v43;
  *&v237 = v81;
  *(&v237 + 1) = v82;
  *&v238 = v83;
  *(&v238 + 1) = v84;
  v239 = 0;
  v85 = v156;
  static AccessibilityTraits.isHeader.getter();
  sub_1000024C4(&qword_1002230E8);
  sub_100055558();
  View.accessibilityAddTraits(_:)();
  (*(v157 + 8))(v85, v158);
  v247 = v236;
  v248 = v237;
  v249 = v238;
  v250 = v239;
  v243 = v232;
  v244 = v233;
  v245 = v234;
  v246 = v235;
  sub_1000050C4(&v243, &qword_1002230E8);
  sub_10004CDB8();
  LOBYTE(v79) = sub_100024EFC();

  if (v79)
  {
    sub_10004CDB8();
    v86 = v150;
    sub_10004F740(v150);
    static Edge.Set.horizontal.getter();
    v87 = v204;
    v88 = swift_getWitnessTable();
    v89 = v151;
    View.padding(_:_:)();
    (*(v152 + 8))(v86, v87);
    static Edge.Set.bottom.getter();
    v216 = v88;
    v217 = &protocol witness table for _PaddingLayout;
    v90 = v203;
    v91 = swift_getWitnessTable();
    v92 = v155;
    View.padding(_:_:)();
    (*(v154 + 8))(v89, v90);
    v214 = v91;
    v215 = &protocol witness table for _PaddingLayout;
    v93 = v208;
    v94 = swift_getWitnessTable();
    v95 = v153;
    sub_1000EE87C(v92, v93, v94);
    v96 = v159;
    v97 = v159[1];
    v97(v92, v93);
    sub_1000EE87C(v95, v93, v94);
    v97(v95, v93);
    v98 = v212;
    (v96[4])(v212, v92, v93);
    (v96[7])(v98, 0, 1, v93);
  }

  else
  {
    (v159[7])(v212, 1, 1, v208);
    v230 = swift_getWitnessTable();
    v231 = &protocol witness table for _PaddingLayout;
    v228 = swift_getWitnessTable();
    v229 = &protocol witness table for _PaddingLayout;
    swift_getWitnessTable();
  }

  v99 = v212;
  sub_1000E7690(v212, v207);
  v100 = *(v201 + 8);
  v158 = v201 + 8;
  v159 = v100;
  (v100)(v99, v205);
  v101 = static Axis.Set.horizontal.getter();
  __chkstk_darwin(v101);
  v102 = v213;
  *(&v149 - 4) = v211;
  *(&v149 - 3) = v102;
  v147 = v80;
  v103 = v171;
  ScrollView.init(_:showsIndicators:content:)();
  static Edge.Set.horizontal.getter();
  v104 = v190;
  static ContentMarginPlacement.automatic.getter();
  v105 = v167;
  v106 = v175;
  View.contentMargins(_:_:for:)();
  (*(v191 + 8))(v104, v192);
  (*(v174 + 8))(v103, v106);
  static ViewAlignedScrollTargetBehavior.LimitBehavior.automatic.getter();
  v107 = v193;
  ViewAlignedScrollTargetBehavior.init(limitBehavior:)();
  v108 = v163;
  v109 = v173;
  v110 = v196;
  View.scrollTargetBehavior<A>(_:)();
  (*(v195 + 8))(v107, v110);
  (*(v170 + 8))(v105, v109);
  sub_10004CDB8();

  v111 = v176;
  v112 = v166;
  View.scrollDisabled(_:)();
  (*(v165 + 8))(v108, v112);
  v113 = sub_10004CE0C();
  v115 = v114;
  v117 = v116;
  __chkstk_darwin(v113);
  v147 = v211;
  v148 = v213;
  swift_getKeyPath();
  v225 = v113;
  v226 = v115;
  v227 = v117;
  type metadata accessor for SetlistViewModel();
  type metadata accessor for Binding();
  Binding.subscript.getter();

  v118 = v232;
  v119 = v233;

  v223 = v118;
  v224 = v119;
  v120 = v182;
  v121 = v180;
  View.scrollPosition<A>(id:anchor:)();

  (*(v177 + 8))(v111, v121);
  v123 = v209;
  v122 = v210;
  sub_10004CDB8();
  v124 = sub_100026AA4();
  v126 = v125;

  *&v232 = v124;
  *(&v232 + 1) = v126;
  v128 = v198;
  v127 = v199;
  (*(v199 + 16))(v198, v123, v122);
  v129 = (*(v127 + 80) + 32) & ~*(v127 + 80);
  v130 = swift_allocObject();
  v131 = v213;
  *(v130 + 16) = v211;
  *(v130 + 24) = v131;
  (*(v127 + 32))(v130 + v129, v128, v122);
  v132 = v187;
  v133 = v185;
  v134 = v181;
  v136 = v178;
  v135 = v179;
  View.onChange<A>(of:initial:_:)();

  (*(v184 + 8))(v120, v133);
  *&v232 = v133;
  *(&v232 + 1) = v134;
  *&v233 = v135;
  *(&v233 + 1) = v136;
  v137 = swift_getOpaqueTypeConformance2();
  v138 = v186;
  v139 = v188;
  sub_1000EE87C(v132, v188, v137);
  v140 = v183;
  v213 = *(v183 + 8);
  v213(v132, v139);
  v141 = v202;
  sub_10000BEB8(v206, v202, &qword_1002230C8);
  *&v232 = v141;
  v142 = v212;
  v143 = v205;
  (*(v201 + 16))(v212, v207, v205);
  *(&v232 + 1) = v142;
  (*(v140 + 16))(v132, v138, v139);
  *&v233 = v132;
  *&v223 = v160;
  *(&v223 + 1) = v143;
  *&v224 = v139;
  v225 = sub_10005576C();
  v221 = swift_getWitnessTable();
  v222 = &protocol witness table for _PaddingLayout;
  v219 = swift_getWitnessTable();
  v220 = &protocol witness table for _PaddingLayout;
  v218 = swift_getWitnessTable();
  v226 = swift_getWitnessTable();
  v227 = v137;
  sub_1000E76FC(&v232, 3uLL, &v223);
  v144 = v213;
  v213(v138, v139);
  v145 = v159;
  (v159)(v207, v143);
  sub_1000050C4(v206, &qword_1002230C8);
  v144(v132, v139);
  v145(v212, v143);
  return sub_1000050C4(v202, &qword_1002230C8);
}

uint64_t sub_10004F740@<X0>(uint64_t a1@<X8>)
{
  State.init(wrappedValue:)();
  *a1 = v8;
  *(a1 + 8) = v9;
  State.init(wrappedValue:)();
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  type metadata accessor for RemoteViewConfiguration();
  sub_100055DD0(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
  *(a1 + 32) = EnvironmentObject.init()();
  *(a1 + 40) = v2;
  v3 = type metadata accessor for SetlistDetailSection();
  v4 = v3[11];
  *(a1 + v4) = swift_getKeyPath();
  sub_1000024C4(qword_100221928);
  swift_storeEnumTagMultiPayload();
  v5 = v3[12];
  *(a1 + v5) = swift_getKeyPath();
  sub_1000024C4(&qword_1002216C8);
  swift_storeEnumTagMultiPayload();
  v6 = a1 + v3[13];
  result = swift_getKeyPath();
  *v6 = result;
  *(v6 + 8) = 0;
  return result;
}

uint64_t sub_10004F8F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a2;
  v40 = a3;
  v41 = a1;
  v43 = a4;
  v4 = type metadata accessor for PinnedScrollableViews();
  __chkstk_darwin(v4 - 8);
  v42 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Array();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for SetlistSongRowView();
  sub_10000460C(&qword_1002230D0);
  type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_10000BFFC(&qword_1002230D8, &qword_1002230D0);
  v53 = WitnessTable;
  v54 = v8;
  swift_getWitnessTable();
  v9 = type metadata accessor for Button();
  v10 = type metadata accessor for PlainButtonStyle();
  v11 = swift_getWitnessTable();
  v12 = sub_100055DD0(&qword_100222DD0, &type metadata accessor for PlainButtonStyle);
  v48 = v9;
  v49 = v10;
  v50 = v11;
  v51 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v48 = v9;
  v49 = v10;
  v50 = v11;
  v51 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v48 = OpaqueTypeMetadata2;
  v49 = OpaqueTypeConformance2;
  v15 = swift_getOpaqueTypeMetadata2();
  v16 = swift_getWitnessTable();
  v17 = sub_100055230();
  v48 = v6;
  v49 = &type metadata for MusicItemID;
  v50 = v15;
  v51 = v16;
  v52 = v17;
  v34[2] = type metadata accessor for ForEach();
  v48 = OpaqueTypeMetadata2;
  v49 = OpaqueTypeConformance2;
  v47 = swift_getOpaqueTypeConformance2();
  v34[1] = swift_getWitnessTable();
  v18 = type metadata accessor for LazyHGrid();
  v38 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = v34 - v19;
  v35 = swift_getWitnessTable();
  v48 = v18;
  v49 = v35;
  v36 = &opaque type descriptor for <<opaque return type of View.scrollTargetLayout(isEnabled:)>>;
  v21 = swift_getOpaqueTypeMetadata2();
  v37 = *(v21 - 8);
  v22 = __chkstk_darwin(v21);
  v24 = v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = v34 - v25;
  v28 = v39;
  v27 = v40;
  type metadata accessor for SetlistView();
  v29 = v41;
  sub_10004CDB8();
  sub_100024D3C();

  v44 = v28;
  v45 = v27;
  v46 = v29;
  static VerticalAlignment.center.getter();
  sub_1000C722C();
  LazyHGrid.init(rows:alignment:spacing:pinnedViews:content:)();
  v30 = v35;
  View.scrollTargetLayout(isEnabled:)();
  (*(v38 + 8))(v20, v18);
  v48 = v18;
  v49 = v30;
  v31 = swift_getOpaqueTypeConformance2();
  sub_1000EE87C(v24, v21, v31);
  v32 = *(v37 + 8);
  v32(v24, v21);
  sub_1000EE87C(v26, v21, v31);
  return (v32)(v26, v21);
}

uint64_t sub_10004FED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v49 = a4;
  v45 = a3;
  v6 = type metadata accessor for SetlistView();
  v47 = *(v6 - 8);
  v48 = *(v47 + 64);
  __chkstk_darwin(v6);
  v46 = &KeyPath - v7;
  swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Array();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for SetlistSongRowView();
  sub_10000460C(&qword_1002230D0);
  type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_10000BFFC(&qword_1002230D8, &qword_1002230D0);
  v59 = WitnessTable;
  v60 = v10;
  swift_getWitnessTable();
  v11 = type metadata accessor for Button();
  v12 = type metadata accessor for PlainButtonStyle();
  v13 = swift_getWitnessTable();
  v14 = sub_100055DD0(&qword_100222DD0, &type metadata accessor for PlainButtonStyle);
  v54 = v11;
  v55 = v12;
  v56 = v13;
  v57 = v14;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v43 = OpaqueTypeMetadata2;
  v54 = v11;
  v55 = v12;
  v56 = v13;
  v57 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v54 = OpaqueTypeMetadata2;
  v55 = OpaqueTypeConformance2;
  v40 = &opaque type descriptor for <<opaque return type of View.containerRelativeFrame(_:count:span:spacing:alignment:)>>;
  v16 = swift_getOpaqueTypeMetadata2();
  v39 = v16;
  v41 = v8;
  v17 = swift_getWitnessTable();
  v38 = v17;
  v37 = sub_100055230();
  v54 = v8;
  v55 = &type metadata for MusicItemID;
  v56 = v16;
  v57 = v17;
  v58 = v37;
  v18 = type metadata accessor for ForEach();
  v44 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v21 = &KeyPath - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &KeyPath - v22;
  v24 = v6;
  sub_10004CDB8();
  v25 = sub_100024E88();

  v53 = v25;
  v26 = a2;
  v27 = v45;
  v50 = a2;
  v51 = v45;
  KeyPath = swift_getKeyPath();
  v29 = v46;
  v28 = v47;
  (*(v47 + 16))(v46, a1, v24);
  v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v26;
  *(v31 + 24) = v27;
  (*(v28 + 32))(v31 + v30, v29, v24);
  v54 = v43;
  v55 = OpaqueTypeConformance2;
  v35 = swift_getOpaqueTypeConformance2();
  ForEach<>.init(_:id:content:)();
  v52 = v35;
  v32 = swift_getWitnessTable();
  sub_1000EE87C(v21, v18, v32);
  v33 = *(v44 + 8);
  v33(v21, v18);
  sub_1000EE87C(v23, v18, v32);
  return (v33)(v23, v18);
}

uint64_t sub_10005043C@<X0>(uint64_t *a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = dispatch thunk of MusicItem.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000504D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v81 = a2;
  v83 = a1;
  v86 = a5;
  v7 = type metadata accessor for PlainButtonStyle();
  v85 = *(v7 - 8);
  __chkstk_darwin(v7);
  v84 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v87 = *(AssociatedTypeWitness - 8);
  v82 = *(v87 + 64);
  __chkstk_darwin(AssociatedTypeWitness);
  v79 = &v58 - v10;
  v77 = a3;
  v78 = a4;
  v11 = type metadata accessor for SetlistView();
  v12 = *(v11 - 8);
  v76 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v58 - v13;
  v60 = &v58 - v13;
  swift_getAssociatedConformanceWitness();
  v59 = AssociatedTypeWitness;
  type metadata accessor for SetlistSongRowView();
  sub_10000460C(&qword_1002230D0);
  v15 = type metadata accessor for ModifiedContent();
  WitnessTable = swift_getWitnessTable();
  v17 = sub_10000BFFC(&qword_1002230D8, &qword_1002230D0);
  v96 = WitnessTable;
  v97 = v17;
  v70 = v15;
  v69 = swift_getWitnessTable();
  v18 = type metadata accessor for Button();
  v73 = *(v18 - 8);
  __chkstk_darwin(v18);
  v66 = &v58 - v19;
  v21 = v20;
  v22 = swift_getWitnessTable();
  v23 = sub_100055DD0(&qword_100222DD0, &type metadata accessor for PlainButtonStyle);
  v92 = v21;
  v93 = v7;
  v24 = v21;
  v63 = v21;
  v62 = v7;
  v94 = v22;
  v95 = v23;
  v65 = v22;
  v64 = v23;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v75 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v61 = &v58 - v26;
  v92 = v24;
  v93 = v7;
  v94 = v22;
  v95 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v80 = OpaqueTypeMetadata2;
  v92 = OpaqueTypeMetadata2;
  v93 = OpaqueTypeConformance2;
  v71 = OpaqueTypeConformance2;
  v74 = swift_getOpaqueTypeMetadata2();
  v72 = *(v74 - 8);
  v28 = __chkstk_darwin(v74);
  v67 = &v58 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v68 = &v58 - v30;
  v31 = v12;
  v32 = v14;
  v33 = v81;
  v34 = v11;
  (*(v12 + 16))(v32, v81, v11);
  v35 = v87;
  v36 = v79;
  v37 = v83;
  (*(v87 + 16))(v79, v83, AssociatedTypeWitness);
  v38 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v39 = (v76 + v38 + *(v35 + 80)) & ~*(v35 + 80);
  v40 = swift_allocObject();
  v41 = v77;
  v42 = v78;
  *(v40 + 16) = v77;
  *(v40 + 24) = v42;
  v43 = v31;
  v44 = v61;
  (*(v43 + 32))(v40 + v38, v60, v34);
  (*(v87 + 32))(v40 + v39, v36, v59);
  v88 = v41;
  v89 = v42;
  v90 = v33;
  v91 = v37;
  v45 = v66;
  Button.init(action:label:)();
  v46 = v84;
  PlainButtonStyle.init()();
  v47 = v63;
  v48 = v62;
  View.buttonStyle<A>(_:)();
  (*(v85 + 8))(v46, v48);
  (*(v73 + 8))(v45, v47);
  static Axis.Set.horizontal.getter();
  v49 = sub_10004CDB8();
  LOBYTE(v37) = *(v49 + *(*v49 + 120));

  if ((v37 & 1) == 0)
  {
    sub_10004CE64();
  }

  static Alignment.center.getter();
  v50 = v67;
  v51 = v80;
  v52 = v71;
  View.containerRelativeFrame(_:count:span:spacing:alignment:)();
  (*(v75 + 8))(v44, v51);
  v92 = v51;
  v93 = v52;
  v53 = swift_getOpaqueTypeConformance2();
  v54 = v68;
  v55 = v74;
  sub_1000EE87C(v50, v74, v53);
  v56 = *(v72 + 8);
  v56(v50, v55);
  sub_1000EE87C(v54, v55, v53);
  return (v56)(v54, v55);
}

uint64_t sub_100050D88(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SetlistView();
  sub_10004CDB8();
  v4 = *(a1 + 16);
  if (v4)
  {

    sub_1000258F4(a2, v4);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_100055DD0(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100050E64@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v33 = a1;
  v42 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v5 = &v32 - v4;
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for SetlistSongRowViewModel();
  __chkstk_darwin(v6 - 8);
  v36 = &v32 - v7;
  v8 = type metadata accessor for SetlistSongRowView();
  v38 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v32 - v9;
  sub_10000460C(&qword_1002230D0);
  v11 = type metadata accessor for ModifiedContent();
  v41 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v37 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v39 = &v32 - v14;
  type metadata accessor for SetlistView();
  v15 = sub_10004CDB8();
  v16 = *(v15 + 16);
  v34 = *(v15 + 24);
  v35 = v16;

  v17 = *(v3 + 16);
  v40 = v5;
  v17(v5, v33, AssociatedTypeWitness);
  sub_10004CDB8();
  sub_100025464();

  v18 = v46;
  if (v46)
  {
    sub_10001BED0(v45, v46);
    v19 = dispatch thunk of MusicItem.id.getter();
    v18 = v20;
    sub_100012A7C(v45);
  }

  else
  {
    sub_1000050C4(v45, &qword_1002224D8);
    v19 = 0;
  }

  v21 = dispatch thunk of MusicItem.id.getter();
  if (v18)
  {
    if (v19 == v21 && v18 == v22)
    {
      v23 = 1;
    }

    else
    {
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v23 = 0;
  }

  v24 = v36;
  sub_10010E400(v35, v34, v40, v23 & 1, AssociatedTypeWitness, v36);
  sub_10014137C(v24, v10);
  WitnessTable = swift_getWitnessTable();
  sub_100055E18();
  v26 = v37;
  View.contentShape<A>(_:eoFill:)();
  (*(v38 + 8))(v10, v8);
  v27 = sub_10000BFFC(&qword_1002230D8, &qword_1002230D0);
  v43 = WitnessTable;
  v44 = v27;
  v28 = swift_getWitnessTable();
  v29 = v39;
  sub_1000EE87C(v26, v11, v28);
  v30 = *(v41 + 8);
  v30(v26, v11);
  sub_1000EE87C(v29, v11, v28);
  return (v30)(v29, v11);
}

uint64_t sub_100051370(uint64_t a1)
{
  type metadata accessor for SetlistView();
  sub_10004CDB8();
  v2 = *(a1 + 16);
  if (v2)
  {

    sub_100026568(27, 0, 3u, v2);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_100055DD0(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100051448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000514E4);
}

uint64_t sub_1000514E4()
{

  type metadata accessor for SetlistView();
  sub_10004CDB8();
  sub_100025818();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100051574()
{
  type metadata accessor for SetlistView();
  sub_10004CDB8();
  sub_100025888();
}

uint64_t sub_1000515BC@<X0>(void *a1@<X8>)
{
  State.init(wrappedValue:)();
  *a1 = v5;
  a1[1] = v6;
  type metadata accessor for RemoteViewConfiguration();
  sub_100055DD0(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
  a1[2] = EnvironmentObject.init()();
  a1[3] = v2;
  v3 = *(type metadata accessor for SetlistView() + 40);
  *(a1 + v3) = swift_getKeyPath();
  sub_1000024C4(&qword_1002216D0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100051708()
{
  static Font.subheadline.getter();
  static Font.Weight.regular.getter();
  v0 = Font.weight(_:)();

  return v0;
}

uint64_t sub_100051748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000024C4(&qword_100220CB8);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - v6;
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  *v7 = static HorizontalAlignment.center.getter();
  *(v7 + 1) = 0x402E000000000000;
  v7[16] = 0;
  v10 = sub_1000024C4(&qword_1002231B0);
  v11 = sub_100051BEC(v2, v8, v9, &v7[*(v10 + 44)]);
  v12 = *(a1 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, v2, a1);
  type metadata accessor for MainActor();
  v15 = static MainActor.shared.getter();
  v16 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = v15;
  *(v17 + 3) = &protocol witness table for MainActor;
  *(v17 + 4) = v8;
  *(v17 + 5) = v9;
  (*(v12 + 32))(&v17[v16], v14, a1);
  v18 = type metadata accessor for TaskPriority();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = &v31 - v21;
  static TaskPriority.userInitiated.getter();
  if (sub_1001AD108(2, 26, 4, 0))
  {
    v34 = type metadata accessor for _TaskModifier2();
    v35 = &v31;
    v33 = *(v34 - 8);
    __chkstk_darwin(v34);
    v32 = &v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    v37 = 0;
    v38 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v37 = 0xD00000000000002FLL;
    v38 = 0x80000001001C57D0;
    v36 = 188;
    v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v24);

    v31 = &v31;
    __chkstk_darwin(v25);
    (*(v19 + 16))(&v31 - v21, &v31 - v21, v18);
    v26 = v32;
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v19 + 8))(v22, v18);
    sub_100056C8C(v7, a2);
    v27 = sub_1000024C4(&qword_100220CC0);
    return (*(v33 + 32))(a2 + *(v27 + 36), v26, v34);
  }

  else
  {
    v29 = (a2 + *(sub_1000024C4(&qword_100220CC8) + 36));
    v30 = type metadata accessor for _TaskModifier();
    (*(v19 + 32))(&v29[*(v30 + 20)], &v31 - v21, v18);
    *v29 = &unk_1001B7040;
    *(v29 + 1) = v17;
    return sub_100056C8C(v7, a2);
  }
}

uint64_t sub_100051BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v130 = a4;
  v110 = type metadata accessor for Text.Suffix();
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v108 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_1000024C4(&qword_1002231B8);
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v112 = &v97 - v8;
  v9 = sub_1000024C4(&qword_1002231C0);
  v128 = *(v9 - 8);
  v129 = v9;
  __chkstk_darwin(v9);
  v111 = &v97 - v10;
  v11 = sub_1000024C4(&qword_100222078);
  __chkstk_darwin(v11 - 8);
  v119 = &v97 - v12;
  v13 = type metadata accessor for AttributedString();
  v131 = *(v13 - 8);
  v132 = v13;
  v14 = __chkstk_darwin(v13);
  v99 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v125 = &v97 - v16;
  v17 = sub_1000024C4(&qword_1002231C8);
  v18 = __chkstk_darwin(v17 - 8);
  v126 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v124 = &v97 - v20;
  v117 = type metadata accessor for PlainButtonStyle();
  v118 = *(v117 - 8);
  __chkstk_darwin(v117);
  v116 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for SetlistDetailSection();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v97 - v25;
  v115 = sub_1000024C4(&qword_1002231D0);
  __chkstk_darwin(v115);
  v28 = &v97 - v27;
  v123 = sub_1000024C4(&qword_1002231D8);
  v122 = *(v123 - 8);
  v29 = __chkstk_darwin(v123);
  v121 = &v97 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v32 = &v97 - v31;
  v33 = *(v23 + 16);
  v104 = v23 + 16;
  v103 = v33;
  v33(v26, a1, v22);
  v34 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v102 = *(v23 + 80);
  v101 = v34 + v24;
  v35 = swift_allocObject();
  *(v35 + 16) = a2;
  *(v35 + 24) = a3;
  v36 = *(v23 + 32);
  v105 = v34;
  v106 = v26;
  v107 = v23 + 32;
  v100 = v36;
  v36(v35 + v34, v26, v22);
  v37 = v22;
  v127 = a2;
  v133 = a2;
  v134 = a3;
  v38 = a3;
  v135 = a1;
  sub_1000024C4(&qword_1002231E0);
  sub_100056D38();
  Button.init(action:label:)();
  sub_10004CDB8();
  LOBYTE(v22) = sub_1000250C0();

  v28[*(v115 + 36)] = v22 & 1;
  v39 = v116;
  PlainButtonStyle.init()();
  sub_100056EA8();
  sub_100055DD0(&qword_100222DD0, &type metadata accessor for PlainButtonStyle);
  v120 = v32;
  v40 = v119;
  v41 = v117;
  View.buttonStyle<A>(_:)();
  (*(v118 + 8))(v39, v41);
  sub_1000050C4(v28, &qword_1002231D0);
  v118 = a1;
  sub_10004CDB8();
  sub_100024958(v40);

  v42 = v131;
  v43 = v132;
  if ((*(v131 + 48))(v40, 1) == 1)
  {
    sub_1000050C4(v40, &qword_100222078);
    v44 = 1;
    v46 = v128;
    v45 = v129;
    v47 = v124;
  }

  else
  {
    v48 = v125;
    (*(v42 + 32))(v125, v40, v43);
    (*(v42 + 16))(v99, v48, v43);
    v49 = Text.init(_:)();
    v51 = v50;
    v53 = v52;
    v98 = v38;
    sub_100051708();
    v54 = Text.font(_:)();
    v56 = v55;
    LOBYTE(v48) = v57;

    sub_100017398(v49, v51, v53 & 1);

    LODWORD(v136) = static HierarchicalShapeStyle.secondary.getter();
    v58 = Text.foregroundStyle<A>(_:)();
    v60 = v59;
    v117 = v59;
    v62 = v61;
    v64 = v63;
    v119 = v63;
    sub_100017398(v54, v56, v48 & 1);

    v65 = v118;
    v66 = *(v118 + 24);
    LOBYTE(v136) = *(v118 + 16);
    v137 = v66;
    sub_1000024C4(&qword_100223240);
    State.wrappedValue.getter();
    v67 = v143;
    if (v143)
    {
      v68 = 0;
    }

    else
    {
      v68 = 2;
    }

    KeyPath = swift_getKeyPath();
    v136 = v58;
    v137 = v60;
    v70 = v62 & 1;
    v138 = v62 & 1;
    v139 = v64;
    v140 = KeyPath;
    v141 = v68;
    v142 = v67;
    v71 = sub_100054998();
    v73 = v72;
    v75 = v74;
    v76 = v108;
    static Text.Suffix.truncated(_:)();
    sub_100017398(v71, v73, v75 & 1);

    v77 = sub_1000024C4(&qword_100221B38);
    v78 = sub_10001B3F8();
    v79 = v112;
    View.textSuffix(_:)();
    (*(v109 + 8))(v76, v110);
    sub_100017398(v58, v117, v70);

    v80 = v106;
    v103(v106, v65, v37);
    v81 = swift_allocObject();
    v82 = v98;
    *(v81 + 16) = v127;
    *(v81 + 24) = v82;
    v100(v81 + v105, v80, v37);
    v136 = v77;
    v137 = v78;
    swift_getOpaqueTypeConformance2();
    v83 = v111;
    v84 = v114;
    View.onTapGesture(count:perform:)();

    (*(v113 + 8))(v79, v84);
    (*(v131 + 8))(v125, v132);
    v86 = v128;
    v85 = v129;
    v47 = v124;
    (*(v128 + 32))(v124, v83, v129);
    v44 = 0;
    v45 = v85;
    v46 = v86;
  }

  (*(v46 + 56))(v47, v44, 1, v45);
  v87 = v122;
  v88 = *(v122 + 16);
  v89 = v121;
  v90 = v120;
  v91 = v123;
  v88(v121, v120, v123);
  v92 = v126;
  sub_100056F60(v47, v126);
  v93 = v130;
  v88(v130, v89, v91);
  v94 = sub_1000024C4(&qword_100223238);
  sub_100056F60(v92, &v93[*(v94 + 48)]);
  sub_100056FD0(v47);
  v95 = *(v87 + 8);
  v95(v90, v91);
  sub_100056FD0(v92);
  return (v95)(v89, v91);
}

uint64_t sub_1000528BC(uint64_t a1)
{
  v2 = type metadata accessor for OpenURLAction();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000024C4(&qword_1002214F8);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SetlistDetailSection();
  sub_10004CDB8();
  sub_10002504C();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000050C4(v8, &qword_1002214F8);
  }

  (*(v10 + 32))(v12, v8, v9);
  sub_100039C90(v5);
  OpenURLAction.callAsFunction(_:)();
  (*(v3 + 8))(v5, v2);
  sub_10004CDB8();
  v14 = *(a1 + 32);
  if (v14)
  {

    sub_100026568(16, 0, 3u, v14);

    return (*(v10 + 8))(v12, v9);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_100055DD0(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100052BC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1000024C4(&qword_100223208);
  __chkstk_darwin(v8 - 8);
  v10 = (v27 - v9);
  v11 = sub_1000024C4(&qword_1002231F8);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = v27 - v13;
  *v10 = static Alignment.leading.getter();
  v10[1] = v15;
  v16 = sub_1000024C4(&qword_100223248);
  sub_100052DF0(a1, a2, a3, v10 + *(v16 + 44));
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10001AE00(v10, v14, &qword_100223208);
  v17 = &v14[*(v12 + 44)];
  v18 = v27[5];
  *(v17 + 4) = v27[4];
  *(v17 + 5) = v18;
  *(v17 + 6) = v27[6];
  v19 = v27[1];
  *v17 = v27[0];
  *(v17 + 1) = v19;
  v20 = v27[3];
  *(v17 + 2) = v27[2];
  *(v17 + 3) = v20;
  v21 = static Alignment.center.getter();
  v23 = v22;
  v24 = a4 + *(sub_1000024C4(&qword_1002231E0) + 36);
  sub_100054648(a1, a3, v24);
  v25 = (v24 + *(sub_1000024C4(&qword_100223218) + 36));
  *v25 = v21;
  v25[1] = v23;
  return sub_10001AE00(v14, a4, &qword_1002231F8);
}

uint64_t sub_100052DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = static VerticalAlignment.center.getter();
  *(a4 + 8) = 0x4030000000000000;
  *(a4 + 16) = 0;
  v8 = sub_1000024C4(&qword_100223260);
  sub_100052EAC(a1, a2, a3, a4 + *(v8 + 44));
  static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  sub_1000024C4(&qword_100223268);
  return SafeAreaPaddingModifier.init(edges:insets:)();
}

uint64_t sub_100052EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v54 = a4;
  v7 = sub_1000024C4(&qword_100223270);
  v8 = __chkstk_darwin(v7 - 8);
  v55 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v48 - v10;
  v12 = type metadata accessor for EnvironmentValues();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000024C4(&qword_1002214F8);
  __chkstk_darwin(v16 - 8);
  v18 = &v48 - v17;
  v49 = sub_1000024C4(&qword_100223278);
  v19 = __chkstk_darwin(v49);
  v50 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v48 - v21;
  v52 = a2;
  v53 = a3;
  v23 = type metadata accessor for SetlistDetailSection();
  result = sub_10004CDB8();
  v48 = result;
  v25 = *(v23 + 52);
  v51 = a1;
  v26 = a1 + v25;
  v27 = *v26;
  v28 = *(v26 + 8);
  if (v28 == 1)
  {
    v29 = *v26;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v30 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10001BC5C(v27, 0);
    result = (*(v13 + 8))(v15, v12);
    v29 = *&v56;
  }

  v31 = v29 * 70.0;
  if (COERCE__INT64(fabs(v29 * 70.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v31 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v31 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v28)
  {
    v32 = *&v27;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v33 = v12;
    v34 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10001BC5C(v27, 0);
    result = (*(v13 + 8))(v15, v33);
    v32 = *&v56;
  }

  v35 = v32 * 70.0;
  if ((*&v35 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_20;
  }

  if (v35 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v35 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  sub_1000251F0(v31, v35, v18);

  static Animation.spring(response:dampingFraction:blendDuration:)();
  Transaction.init(animation:)();
  sub_1000024C4(&qword_100223280);
  sub_100057330();
  AsyncImage.init(url:scale:transaction:content:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v36 = &v22[*(sub_1000024C4(&qword_1002232A8) + 36)];
  v37 = v57;
  *v36 = v56;
  *(v36 + 1) = v37;
  *(v36 + 2) = v58;
  if (static Solarium.isEnabled.getter())
  {
    v38 = 10.0;
  }

  else
  {
    v38 = 5.0;
  }

  v39 = &v22[*(v49 + 36)];
  v40 = *(type metadata accessor for RoundedRectangle() + 20);
  v41 = enum case for RoundedCornerStyle.continuous(_:);
  v42 = type metadata accessor for RoundedCornerStyle();
  (*(*(v42 - 8) + 104))(v39 + v40, v41, v42);
  *v39 = v38;
  v39[1] = v38;
  *(v39 + *(sub_1000024C4(&qword_100221C80) + 36)) = 256;
  *v11 = static HorizontalAlignment.leading.getter();
  *(v11 + 1) = 0x4008000000000000;
  v11[16] = 0;
  v43 = sub_1000024C4(&qword_1002232B0);
  sub_100053854(v51, v52, v53, &v11[*(v43 + 44)]);
  v44 = v50;
  sub_10000BEB8(v22, v50, &qword_100223278);
  v45 = v55;
  sub_10000BEB8(v11, v55, &qword_100223270);
  v46 = v54;
  sub_10000BEB8(v44, v54, &qword_100223278);
  v47 = sub_1000024C4(&qword_1002232B8);
  sub_10000BEB8(v45, v46 + *(v47 + 48), &qword_100223270);
  sub_1000050C4(v11, &qword_100223270);
  sub_1000050C4(v22, &qword_100223278);
  sub_1000050C4(v45, &qword_100223270);
  return sub_1000050C4(v44, &qword_100223278);
}

uint64_t sub_100053568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AsyncImagePhase();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8);
  if ((*(v9 + 88))(v11, v8) == enum case for AsyncImagePhase.success(_:))
  {
    (*(v9 + 96))(v11, v8);
    (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
    v12 = Image.resizable(capInsets:resizingMode:)();
    (*(v5 + 8))(v7, v4);
    v16 = v12;
    v17 = 0;
    swift_retain_n();
    sub_1000024C4(&qword_100223298);
    sub_1000573BC();
    _ConditionalContent<>.init(storage:)();

    v14 = v18;
    v15 = v19;
  }

  else
  {
    v16 = static Color.gray.getter();
    v17 = 1;
    sub_1000024C4(&qword_100223298);
    sub_1000573BC();
    _ConditionalContent<>.init(storage:)();
    v14 = v18;
    v15 = v19;
    result = (*(v9 + 8))(v11, v8);
  }

  *a2 = v14;
  *(a2 + 8) = v15;
  return result;
}

uint64_t sub_100053854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v110 = a4;
  v111 = a1;
  v94 = a2;
  v95 = a3;
  v112 = type metadata accessor for SetlistDetailSection();
  v92 = *(v112 - 8);
  v91 = *(v92 + 64);
  __chkstk_darwin(v112);
  v104 = &v87 - v4;
  v5 = sub_1000024C4(&qword_100221A00);
  v108 = *(v5 - 8);
  v109 = v5;
  __chkstk_darwin(v5);
  v93 = &v87 - v6;
  v7 = sub_1000024C4(&qword_1002214F8);
  __chkstk_darwin(v7 - 8);
  v100 = &v87 - v8;
  v9 = type metadata accessor for URL();
  v102 = *(v9 - 8);
  v103 = v9;
  v10 = __chkstk_darwin(v9);
  v90 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v11;
  __chkstk_darwin(v10);
  v101 = &v87 - v12;
  v13 = sub_1000024C4(&qword_1002232C0);
  v14 = __chkstk_darwin(v13 - 8);
  v107 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v105 = &v87 - v16;
  v17 = sub_1000024C4(&qword_100221B68);
  v18 = v17 - 8;
  v19 = __chkstk_darwin(v17);
  v106 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v113 = &v87 - v21;
  sub_10004CDB8();

  v86 = 256;
  v85 = 0;
  v22 = Text.init(_:tableName:bundle:comment:)();
  v24 = v23;
  v26 = v25;
  static Font.caption2.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v27 = Text.font(_:)();
  v29 = v28;
  v31 = v30;

  sub_100017398(v22, v24, v26 & 1);

  LODWORD(v114) = static HierarchicalShapeStyle.secondary.getter();
  v32 = Text.foregroundStyle<A>(_:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_100017398(v27, v29, v31 & 1);

  v39 = v113;
  v40 = (v113 + *(v18 + 44));
  v41 = *(sub_1000024C4(&qword_100221B70) + 28);
  v42 = enum case for Text.Case.uppercase(_:);
  v43 = type metadata accessor for Text.Case();
  v44 = *(v43 - 8);
  (*(v44 + 104))(v40 + v41, v42, v43);
  (*(v44 + 56))(v40 + v41, 0, 1, v43);
  *v40 = swift_getKeyPath();
  v46 = v111;
  v45 = v112;
  *v39 = v32;
  *(v39 + 8) = v34;
  *(v39 + 16) = v36 & 1;
  *(v39 + 24) = v38;
  v47 = v45;
  v48 = sub_10004CDB8();
  v50 = *(v48 + 32);
  v49 = *(v48 + 40);

  if (v49)
  {
    v114 = v50;
    v115 = v49;
    sub_10001877C();
    v51 = Text.init<A>(_:)();
    v53 = v52;
    v98 = v55;
    v99 = v51;
    v96 = v54 & 1;
    sub_1000187D8(v51, v55, v54 & 1);
    v97 = v53;
  }

  else
  {
    v98 = 0;
    v99 = 0;
    v96 = 0;
    v97 = 0;
  }

  sub_10004CDB8();
  v56 = v100;
  sub_10002504C();

  v58 = v102;
  v57 = v103;
  if ((*(v102 + 48))(v56, 1, v103) == 1)
  {
    sub_1000050C4(v56, &qword_1002214F8);
    v59 = 1;
    v61 = v108;
    v60 = v109;
    v62 = v105;
  }

  else
  {
    v88 = *(v58 + 32);
    v63 = v101;
    v88(v101, v56, v57);
    v64 = v92;
    (*(v92 + 16))(v104, v46, v47);
    v65 = v90;
    (*(v58 + 16))(v90, v63, v57);
    v66 = (*(v64 + 80) + 32) & ~*(v64 + 80);
    v67 = (v91 + *(v58 + 80) + v66) & ~*(v58 + 80);
    v68 = v57;
    v69 = swift_allocObject();
    v70 = v94;
    v71 = v95;
    *(v69 + 16) = v94;
    *(v69 + 24) = v71;
    (*(v64 + 32))(v69 + v66, v104, v112);
    v72 = (v88)(v69 + v67, v65, v68);
    __chkstk_darwin(v72);
    *(&v87 - 4) = v70;
    *(&v87 - 3) = v71;
    v85 = v111;
    v73 = v93;
    Button.init(action:label:)();
    (*(v58 + 8))(v101, v68);
    v61 = v108;
    v60 = v109;
    v62 = v105;
    (*(v108 + 32))(v105, v73, v109);
    v59 = 0;
  }

  (*(v61 + 56))(v62, v59, 1, v60);
  v74 = v113;
  v75 = v106;
  sub_10000BEB8(v113, v106, &qword_100221B68);
  v76 = v107;
  sub_10000BEB8(v62, v107, &qword_1002232C0);
  v77 = v110;
  sub_10000BEB8(v75, v110, &qword_100221B68);
  v78 = sub_1000024C4(&qword_1002232C8);
  v79 = (v77 + *(v78 + 48));
  v80 = v98;
  v81 = v99;
  *v79 = v99;
  v79[1] = v80;
  v82 = v96;
  v83 = v97;
  v79[2] = v96;
  v79[3] = v83;
  sub_10000BEB8(v76, v77 + *(v78 + 64), &qword_1002232C0);
  sub_1000574D0(v81, v80, v82, v83);
  sub_100057514(v81, v80, v82, v83);
  sub_1000050C4(v62, &qword_1002232C0);
  sub_1000050C4(v74, &qword_100221B68);
  sub_1000050C4(v76, &qword_1002232C0);
  sub_100057514(v81, v80, v82, v83);
  return sub_1000050C4(v75, &qword_100221B68);
}

uint64_t sub_1000541F8(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v3 = type metadata accessor for EnvironmentValues();
  v17 = *(v3 - 8);
  v18 = v3;
  __chkstk_darwin(v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000024C4(qword_100221928);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for OpenURLAction();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SetlistDetailSection();
  sub_10000BEB8(a1 + *(v13 + 44), v8, qword_100221928);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v17 + 8))(v5, v18);
  }

  OpenURLAction.callAsFunction(_:)();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_100054494@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SetlistDetailSection();
  sub_10004CDB8();

  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  static Font.subheadline.getter();
  static Font.Weight.regular.getter();
  Font.weight(_:)();

  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;

  sub_100017398(v2, v4, v6 & 1);

  static Color.blue.getter();
  v12 = Text.foregroundStyle<A>(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_100017398(v7, v9, v11 & 1);

  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  return result;
}

double sub_100054648@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v27[1] = a2;
  v27[2] = a1;
  v28 = a3;
  v3 = type metadata accessor for ColorScheme();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v27 - v8;
  v10 = type metadata accessor for RoundedRectangle();
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = (v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1000024C4(&qword_100223250);
  __chkstk_darwin(v14);
  v16 = v27 - v15;
  if (static Solarium.isEnabled.getter())
  {
    v17 = 16.0;
  }

  else
  {
    v17 = 10.0;
  }

  v18 = *(v11 + 28);
  v19 = enum case for RoundedCornerStyle.continuous(_:);
  v20 = type metadata accessor for RoundedCornerStyle();
  (*(*(v20 - 8) + 104))(v13 + v18, v19, v20);
  *v13 = v17;
  v13[1] = v17;
  type metadata accessor for SetlistDetailSection();
  sub_100039EE0(v9);
  (*(v4 + 104))(v7, enum case for ColorScheme.light(_:), v3);
  LOBYTE(v19) = static ColorScheme.== infix(_:_:)();
  v21 = *(v4 + 8);
  v21(v7, v3);
  v21(v9, v3);
  if (v19)
  {
    v22 = static Color.white.getter();
  }

  else
  {
    if (qword_100220B90 != -1)
    {
      swift_once();
    }

    v22 = qword_1002390B0;
  }

  sub_1000572CC(v13, v16);
  *&v16[*(v14 + 36)] = v22;
  static Color.black.getter();
  v23 = Color.opacity(_:)();

  v24 = v28;
  sub_10001AE00(v16, v28, &qword_100223250);
  v25 = v24 + *(sub_1000024C4(&qword_100223258) + 36);
  *v25 = v23;
  result = 16.0;
  *(v25 + 8) = xmmword_1001B6D40;
  *(v25 + 24) = 0x4010000000000000;
  return result;
}

uint64_t sub_100054998()
{
  sub_10004CDB8();

  v0 = Text.init(_:tableName:bundle:comment:)();
  v2 = v1;
  v4 = v3;
  static Font.subheadline.getter();
  static Font.Weight.regular.getter();
  Font.weight(_:)();

  v5 = Text.font(_:)();
  v7 = v6;
  v9 = v8;

  sub_100017398(v0, v2, v4 & 1);

  static Color.blue.getter();
  v10 = Text.foregroundStyle<A>(_:)();
  sub_100017398(v5, v7, v9 & 1);

  return v10;
}

uint64_t sub_100054B3C(uint64_t a1)
{
  sub_1000024C4(&qword_100223240);
  State.wrappedValue.setter();
  type metadata accessor for SetlistDetailSection();
  sub_10004CDB8();
  v2 = *(a1 + 32);
  if (v2)
  {

    sub_100026568(25, 0, 3u, v2);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_100055DD0(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100054C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v5[6] = dispatch thunk of Actor.unownedExecutor.getter();
  v5[7] = v6;

  return _swift_task_switch(sub_100054CF8);
}

uint64_t sub_100054CF8()
{
  type metadata accessor for SetlistDetailSection();
  v0[8] = sub_10004CDB8();
  v1 = sub_100051708();
  v0[9] = v1;
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_100054DC8;

  return sub_100025CA4(v1);
}

uint64_t sub_100054DC8()
{

  return _swift_task_switch(sub_100054F28);
}

uint64_t sub_100054F28()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100054F94()
{
  type metadata accessor for SetlistViewModel();
  type metadata accessor for State();
  if (v0 <= 0x3F)
  {
    sub_100017044();
    if (v1 <= 0x3F)
    {
      sub_100039C10();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100055054(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000024C4(&qword_1002228B8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_100055124(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000024C4(&qword_1002228B8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_100055230()
{
  result = qword_1002230E0;
  if (!qword_1002230E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002230E0);
  }

  return result;
}

uint64_t sub_100055290()
{
  v1 = (type metadata accessor for SetlistView() - 8);
  v2 = (*(*v1 + 80) + 48) & ~*(*v1 + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = v1[12];
  sub_1000024C4(&qword_1002216D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for UserInterfaceSizeClass();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v3 + v4, 1, v5))
    {
      (*(v6 + 8))(v3 + v4, v5);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100055420()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = *(type metadata accessor for SetlistView() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v0[2];
  v7 = v0[3];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10000BD00;

  return sub_100051448(v6, v7, v0 + v5, v2, v3);
}

unint64_t sub_100055558()
{
  result = qword_1002230F0;
  if (!qword_1002230F0)
  {
    sub_10000460C(&qword_1002230E8);
    sub_1000555E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002230F0);
  }

  return result;
}

unint64_t sub_1000555E4()
{
  result = qword_1002230F8;
  if (!qword_1002230F8)
  {
    sub_10000460C(&qword_100223100);
    sub_10001B3F8();
    sub_10000BFFC(&qword_100223108, &qword_100223110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002230F8);
  }

  return result;
}

uint64_t sub_1000556A8@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_100026AA4();
  a1[1] = v2;
}

uint64_t sub_1000556E8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_100024568(v1, v2);
}

__n128 sub_100055734(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t sub_10005576C()
{
  result = qword_100223118;
  if (!qword_100223118)
  {
    sub_10000460C(&qword_1002230C8);
    sub_100055558();
    sub_100055DD0(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223118);
  }

  return result;
}

uint64_t sub_10005585C()
{
  v1 = (type metadata accessor for SetlistView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 32) & ~*(*v1 + 80));

  v3 = v1[12];
  sub_1000024C4(&qword_1002216D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for UserInterfaceSizeClass();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v2 + v3, 1, v4))
    {
      (*(v5 + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000559E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for SetlistView() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_1000504D0(a1, v8, v5, v6, a2);
}

uint64_t sub_100055A80()
{
  v1 = (type metadata accessor for SetlistView() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v11 = *(*v1 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 80);
  v6 = v0 + v2;

  v7 = v1[12];
  sub_1000024C4(&qword_1002216D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for UserInterfaceSizeClass();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v6 + v7, 1, v8))
    {
      (*(v9 + 8))(v6 + v7, v8);
    }
  }

  else
  {
  }

  (*(v4 + 8))(v0 + ((v2 + v11 + v5) & ~v5), AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_100055CC4()
{
  v1 = *(type metadata accessor for SetlistView() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_100050D88(v0 + v2, v5);
}

uint64_t sub_100055DD0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100055E18()
{
  result = qword_100223120[0];
  if (!qword_100223120[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100223120);
  }

  return result;
}

void sub_100055E74()
{
  type metadata accessor for SetlistViewModel();
  type metadata accessor for State();
  if (v0 <= 0x3F)
  {
    sub_1000562DC(319, &qword_1002231A8, &type metadata for Bool, &type metadata accessor for State);
    if (v1 <= 0x3F)
    {
      sub_100017044();
      if (v2 <= 0x3F)
      {
        sub_100056288(319, &qword_1002219C0, &type metadata accessor for OpenURLAction);
        if (v3 <= 0x3F)
        {
          sub_100056288(319, &qword_100221C00, &type metadata accessor for ColorScheme);
          if (v4 <= 0x3F)
          {
            sub_1000562DC(319, &qword_100221C08, &type metadata for CGFloat, &type metadata accessor for Environment);
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

uint64_t sub_100055FFC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000024C4(&qword_1002222A0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 44);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1000024C4(&qword_100221B80);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_10005614C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1000024C4(&qword_1002222A0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 44);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1000024C4(&qword_100221B80);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_100056288(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1000562DC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_10005632C()
{
  sub_10000460C(&qword_1002230C8);
  type metadata accessor for SetlistDetailSection();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for Optional();
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for SetlistSongRowView();
  sub_10000460C(&qword_1002230D0);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  sub_10000BFFC(&qword_1002230D8, &qword_1002230D0);
  swift_getWitnessTable();
  type metadata accessor for Button();
  type metadata accessor for PlainButtonStyle();
  swift_getWitnessTable();
  sub_100055DD0(&qword_100222DD0, &type metadata accessor for PlainButtonStyle);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getWitnessTable();
  sub_100055230();
  type metadata accessor for ForEach();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  type metadata accessor for LazyHGrid();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for ScrollView();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ViewAlignedScrollTargetBehavior();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_100222080);
  swift_getOpaqueTypeConformance2();
  sub_100026B6C();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_1000569C4()
{
  v1 = type metadata accessor for SetlistDetailSection();
  v2 = (*(*(v1 - 1) + 80) + 48) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = v1[11];
  sub_1000024C4(qword_100221928);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for OpenURLAction();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v1[12];
  sub_1000024C4(&qword_1002216C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for ColorScheme();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  sub_10001BC5C(*(v3 + v1[13]), *(v3 + v1[13] + 8));

  return swift_deallocObject();
}

uint64_t sub_100056B94()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = *(type metadata accessor for SetlistDetailSection() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v0[2];
  v7 = v0[3];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_100012AC8;

  return sub_100054C5C(v6, v7, v0 + v5, v2, v3);
}

uint64_t sub_100056C8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_100220CB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100056D38()
{
  result = qword_1002231E8;
  if (!qword_1002231E8)
  {
    sub_10000460C(&qword_1002231E0);
    sub_100056DF0();
    sub_10000BFFC(&qword_100223210, &qword_100223218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002231E8);
  }

  return result;
}

unint64_t sub_100056DF0()
{
  result = qword_1002231F0;
  if (!qword_1002231F0)
  {
    sub_10000460C(&qword_1002231F8);
    sub_10000BFFC(&qword_100223200, &qword_100223208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002231F0);
  }

  return result;
}

unint64_t sub_100056EA8()
{
  result = qword_100223220;
  if (!qword_100223220)
  {
    sub_10000460C(&qword_1002231D0);
    sub_10000BFFC(&qword_100223228, &qword_100223230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223220);
  }

  return result;
}

uint64_t sub_100056F60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_1002231C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100056FD0(uint64_t a1)
{
  v2 = sub_1000024C4(&qword_1002231C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100057038()
{
  v1 = type metadata accessor for SetlistDetailSection();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80));

  v3 = v1[11];
  sub_1000024C4(qword_100221928);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for OpenURLAction();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[12];
  sub_1000024C4(&qword_1002216C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ColorScheme();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  sub_10001BC5C(*(v2 + v1[13]), *(v2 + v1[13] + 8));

  return swift_deallocObject();
}

uint64_t sub_10005722C(uint64_t (*a1)(void, uint64_t, uint64_t), uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(a1(0, v3, v4) - 8);
  v6 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return a2(v6, v3, v4);
}

uint64_t sub_1000572CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoundedRectangle();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100057330()
{
  result = qword_100223288;
  if (!qword_100223288)
  {
    sub_10000460C(&qword_100223280);
    sub_1000573BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223288);
  }

  return result;
}

unint64_t sub_1000573BC()
{
  result = qword_100223290;
  if (!qword_100223290)
  {
    sub_10000460C(&qword_100223298);
    sub_100057474();
    sub_10000BFFC(&qword_1002221E0, &qword_1002221E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223290);
  }

  return result;
}

unint64_t sub_100057474()
{
  result = qword_1002232A0;
  if (!qword_1002232A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002232A0);
  }

  return result;
}

uint64_t sub_1000574D0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1000187D8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100057514(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100017398(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100057558()
{
  v1 = type metadata accessor for SetlistDetailSection();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = v0 + v3;

  v9 = v1[11];
  sub_1000024C4(qword_100221928);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for OpenURLAction();
    (*(*(v10 - 8) + 8))(v8 + v9, v10);
  }

  else
  {
  }

  v11 = v1[12];
  sub_1000024C4(&qword_1002216C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for ColorScheme();
    (*(*(v12 - 8) + 8))(v8 + v11, v12);
  }

  else
  {
  }

  sub_10001BC5C(*(v8 + v1[13]), *(v8 + v1[13] + 8));
  (*(v6 + 8))(v0 + ((v3 + v4 + v7) & ~v7), v5);

  return swift_deallocObject();
}

uint64_t sub_1000577B4()
{
  v1 = *(type metadata accessor for SetlistDetailSection() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for URL() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1000541F8(v0 + v2, v5);
}

uint64_t sub_1000578A8()
{
  sub_10000460C(&qword_100220CB8);
  sub_10000BFFC(&qword_1002232D0, &qword_100220CB8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100057950@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000024C4(&qword_1002214F8);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  URL.init(string:)();
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  result = (*(v10 + 48))(v8, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    GenericRGB = CGColorCreateGenericRGB(0.48627451, 0.415686275, 0.325490196, 1.0);
    UUID.init()();
    UUID.uuidString.getter();
    (*(v3 + 8))(v5, v2);
    *a1 = ResourceID.init(_:)();
    a1[1] = v13;
    v14 = type metadata accessor for DesignTimeImage();
    v16 = v14[6];
    v15 = v14[7];
    result = (*(v10 + 32))(a1 + v14[5], v8, v9);
    *(a1 + v16) = GenericRGB;
    *(a1 + v15) = 0;
  }

  return result;
}

uint64_t sub_100057B70@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000024C4(&qword_1002214F8);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  URL.init(string:)();
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  result = (*(v10 + 48))(v8, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    UUID.init()();
    UUID.uuidString.getter();
    (*(v3 + 8))(v5, v2);
    *a1 = ResourceID.init(_:)();
    a1[1] = v12;
    v13 = type metadata accessor for DesignTimeImage();
    v15 = v13[6];
    v14 = v13[7];
    result = (*(v10 + 32))(a1 + v13[5], v8, v9);
    *(a1 + v15) = 0;
    *(a1 + v14) = 0;
  }

  return result;
}

uint64_t sub_100057D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for URL();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

void *sub_100057DD8(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 24));
  v3 = v2;
  return v2;
}

uint64_t sub_100057E04@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for URLError.Code();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for URLError();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + *(a1 + 28)))
  {
    static URLError.Code.badURL.getter();
    sub_1000586C4(&_swiftEmptyArrayStorage);
    sub_1000587D4(&qword_1002232E8, &type metadata accessor for URLError);
    _BridgedStoredNSError.init(_:userInfo:)();
    URLError._nsError.getter();
    (*(v7 + 8))(v9, v6);
    return swift_willThrow();
  }

  else
  {
    v11 = *(a1 + 20);
    v12 = type metadata accessor for URL();
    return (*(*(v12 - 8) + 16))(a2, v2 + v11, v12);
  }
}

uint64_t sub_100057FEC(uint64_t a1)
{
  result = sub_1000587D4(&qword_1002232D8, type metadata accessor for DesignTimeImage);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for DesignTimeImage()
{
  result = qword_100223350;
  if (!qword_100223350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Int sub_1000580D8(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  type metadata accessor for URL();
  sub_1000587D4(&qword_100221260, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  if (*(v1 + *(a1 + 24)))
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CGColor(0);
    sub_1000587D4(&qword_100221268, type metadata accessor for CGColor);
    _CFObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v1 + *(a1 + 28)));
  return Hasher._finalize()();
}

void sub_100058210(uint64_t a1, uint64_t a2)
{
  String.hash(into:)();
  type metadata accessor for URL();
  sub_1000587D4(&qword_100221260, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  if (*(v2 + *(a2 + 24)))
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CGColor(0);
    sub_1000587D4(&qword_100221268, type metadata accessor for CGColor);
    _CFObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v2 + *(a2 + 28)));
}

Swift::Int sub_100058334(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  type metadata accessor for URL();
  sub_1000587D4(&qword_100221260, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  if (*(v2 + *(a2 + 24)))
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CGColor(0);
    sub_1000587D4(&qword_100221268, type metadata accessor for CGColor);
    _CFObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v2 + *(a2 + 28)));
  return Hasher._finalize()();
}

unint64_t sub_10005846C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000584E4(a1, a2, v4);
}

unint64_t sub_1000584E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_10005859C(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = type metadata accessor for DesignTimeImage();
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_12;
  }

  v6 = *(v5 + 24);
  v7 = *(a2 + v6);
  if (*(a1 + v6))
  {
    if (v7)
    {
      type metadata accessor for CGColor(0);
      sub_1000587D4(&qword_100221268, type metadata accessor for CGColor);
      v8 = v7;
      v9 = static _CFObject.== infix(_:_:)();

      if (v9)
      {
        goto LABEL_10;
      }
    }

LABEL_12:
    v10 = 0;
    return v10 & 1;
  }

  if (v7)
  {
    goto LABEL_12;
  }

LABEL_10:
  v10 = *(a1 + *(v5 + 28)) ^ *(a2 + *(v5 + 28)) ^ 1;
  return v10 & 1;
}

unint64_t sub_1000586C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000024C4(&qword_1002232F0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10005881C(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_10005846C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10005888C(&v15, (v3[7] + 32 * result));
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

uint64_t sub_1000587D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005881C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_10022BBC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_10005888C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000588B0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100058970(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100058A14()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    sub_100058AB0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100058AB0()
{
  if (!qword_100223360)
  {
    type metadata accessor for CGColor(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100223360);
    }
  }
}

uint64_t sub_100058B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v77 = type metadata accessor for TaskPriority();
  v76 = *(v77 - 8);
  v3 = __chkstk_darwin(v77);
  v75 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = a1;
  v81 = a1;
  v74 = *(a1 - 8);
  v83 = *(v74 + 64);
  __chkstk_darwin(v3);
  v73 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000460C(&qword_100223418);
  sub_10000460C(&qword_100223420);
  v7 = *(a1 + 16);
  v8 = type metadata accessor for Array();
  v80 = *(v5 + 24);
  v9 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_10000460C(&qword_100223428);
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v93 = v8;
  v94 = AssociatedTypeWitness;
  v95 = v11;
  v96 = WitnessTable;
  v97 = AssociatedConformanceWitness;
  type metadata accessor for ForEach();
  v14 = type metadata accessor for Section();
  v92 = sub_10005D330();
  v15 = swift_getWitnessTable();
  v89 = &protocol witness table for EmptyView;
  v90 = v15;
  v91 = &protocol witness table for EmptyView;
  v16 = swift_getWitnessTable();
  v93 = v14;
  v94 = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v93 = v14;
  v94 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v93 = &type metadata for Never;
  v94 = OpaqueTypeMetadata2;
  v95 = &protocol witness table for Never;
  v96 = OpaqueTypeConformance2;
  v19 = type metadata accessor for List();
  v20 = swift_getWitnessTable();
  v93 = v19;
  v94 = v20;
  v21 = swift_getOpaqueTypeMetadata2();
  v22 = type metadata accessor for PlainListStyle();
  v93 = v19;
  v94 = v20;
  v23 = swift_getOpaqueTypeConformance2();
  v93 = v21;
  v94 = v22;
  v95 = v23;
  v96 = &protocol witness table for PlainListStyle;
  v24 = swift_getOpaqueTypeMetadata2();
  v93 = v21;
  v94 = v22;
  v95 = v23;
  v96 = &protocol witness table for PlainListStyle;
  v25 = swift_getOpaqueTypeConformance2();
  v93 = v24;
  v94 = v25;
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_100223478);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  sub_10000460C(&qword_100223480);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v26 = type metadata accessor for VStack();
  v64 = v26;
  v68 = *(v26 - 8);
  __chkstk_darwin(v26);
  v61 = &v58 - v27;
  v79 = swift_getWitnessTable();
  v93 = v26;
  v94 = v79;
  v69 = &unk_1001C94C8;
  v66 = swift_getOpaqueTypeMetadata2();
  v71 = *(v66 - 8);
  __chkstk_darwin(v66);
  v63 = &v58 - v28;
  v70 = type metadata accessor for ModifiedContent();
  v72 = *(v70 - 8);
  v29 = __chkstk_darwin(v70);
  v65 = &v58 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v67 = &v58 - v31;
  static HorizontalAlignment.leading.getter();
  v32 = v9;
  v60 = v9;
  v33 = v80;
  v84 = v9;
  v85 = v80;
  v34 = v82;
  v86 = v82;
  VStack.init(alignment:spacing:content:)();
  v59 = "png/600x338AH.SEMA01.png";
  v35 = v74;
  v62 = *(v74 + 16);
  v36 = v73;
  v37 = v81;
  v62(v73, v34, v81);
  type metadata accessor for MainActor();
  v38 = static MainActor.shared.getter();
  v39 = *(v35 + 80);
  v40 = swift_allocObject();
  v40[2] = v38;
  v40[3] = &protocol witness table for MainActor;
  v40[4] = v32;
  v40[5] = v33;
  v74 = *(v35 + 32);
  v41 = v36;
  (v74)(v40 + ((v39 + 48) & ~v39), v36, v37);
  v42 = v75;
  v43 = v64;
  v44 = v79;
  j___sScP13userInitiatedScPvgZ();
  v45 = v63;
  v46 = v61;
  sub_10000250C(0, v42, 0xD000000000000022, (v59 | 0x8000000000000000), 91, &unk_1001B73A0, v40, v63, v43, v44);
  (*(v76 + 8))(v42, v77);
  (*(v68 + 8))(v46, v43);
  v47 = v81;
  v62(v41, v82, v81);
  v48 = swift_allocObject();
  v49 = v80;
  *(v48 + 16) = v60;
  *(v48 + 24) = v49;
  (v74)(v48 + ((v39 + 32) & ~v39), v41, v47);
  v93 = v43;
  v94 = v79;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = v65;
  v52 = v66;
  View.onDisappear(perform:)();

  (*(v71 + 8))(v45, v52);
  v87 = v50;
  v88 = &protocol witness table for _AppearanceActionModifier;
  v53 = v70;
  v54 = swift_getWitnessTable();
  v55 = v67;
  sub_1000EE87C(v51, v53, v54);
  v56 = *(v72 + 8);
  v56(v51, v53);
  sub_1000EE87C(v55, v53, v54);
  return (v56)(v55, v53);
}

uint64_t sub_100059590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v83 = a3;
  v86 = a4;
  v85 = sub_1000024C4(&qword_100223250);
  __chkstk_darwin(v85);
  v84 = (&v68 - v6);
  sub_10000460C(&qword_100223420);
  v7 = type metadata accessor for Array();
  v82 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_10000460C(&qword_100223428);
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v104 = v7;
  *(&v104 + 1) = AssociatedTypeWitness;
  *&v105 = v9;
  *(&v105 + 1) = WitnessTable;
  *&v106 = AssociatedConformanceWitness;
  type metadata accessor for ForEach();
  v12 = type metadata accessor for Section();
  v103 = sub_10005D330();
  v13 = swift_getWitnessTable();
  v100 = &protocol witness table for EmptyView;
  v101 = v13;
  v102 = &protocol witness table for EmptyView;
  v14 = swift_getWitnessTable();
  *&v104 = v12;
  *(&v104 + 1) = v14;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v104 = v12;
  *(&v104 + 1) = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v104 = &type metadata for Never;
  *(&v104 + 1) = OpaqueTypeMetadata2;
  *&v105 = &protocol witness table for Never;
  *(&v105 + 1) = OpaqueTypeConformance2;
  v17 = type metadata accessor for List();
  v18 = swift_getWitnessTable();
  *&v104 = v17;
  *(&v104 + 1) = v18;
  v19 = swift_getOpaqueTypeMetadata2();
  v20 = type metadata accessor for PlainListStyle();
  *&v104 = v17;
  *(&v104 + 1) = v18;
  v21 = swift_getOpaqueTypeConformance2();
  *&v104 = v19;
  *(&v104 + 1) = v20;
  *&v105 = v21;
  *(&v105 + 1) = &protocol witness table for PlainListStyle;
  v22 = swift_getOpaqueTypeMetadata2();
  *&v104 = v19;
  *(&v104 + 1) = v20;
  *&v105 = v21;
  *(&v105 + 1) = &protocol witness table for PlainListStyle;
  v23 = swift_getOpaqueTypeConformance2();
  *&v104 = v22;
  *(&v104 + 1) = v23;
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_100223478);
  swift_getTupleTypeMetadata3();
  v75 = type metadata accessor for TupleView();
  v74 = swift_getWitnessTable();
  v24 = type metadata accessor for VStack();
  v76 = *(v24 - 8);
  __chkstk_darwin(v24);
  v73 = &v68 - v25;
  sub_10000460C(&qword_100223480);
  v77 = v24;
  v81 = type metadata accessor for ModifiedContent();
  v78 = *(v81 - 8);
  v26 = __chkstk_darwin(v81);
  v80 = &v68 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v79 = &v68 - v28;
  v72 = type metadata accessor for AccessibilityTraits();
  v70 = *(v72 - 8);
  __chkstk_darwin(v72);
  v69 = &v68 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1000024C4(&qword_100223418);
  v30 = __chkstk_darwin(v87);
  v89 = &v68 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v88 = &v68 - v32;
  v71 = a1;

  v33 = Text.init(_:tableName:bundle:comment:)();
  v35 = v34;
  LOBYTE(v20) = v36;
  static Font.title3.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v37 = Text.font(_:)();
  v39 = v38;
  LOBYTE(v19) = v40;
  v42 = v41;

  sub_100017398(v33, v35, v20 & 1);

  LOBYTE(v33) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  LOBYTE(v95[0]) = v19 & 1;
  LOBYTE(v93) = 0;
  *&v96 = v37;
  *(&v96 + 1) = v39;
  v43 = v73;
  LOBYTE(v97) = v19 & 1;
  *(&v97 + 1) = v42;
  LOBYTE(v98) = v33;
  *(&v98 + 1) = v44;
  *&v99[0] = v45;
  *(&v99[0] + 1) = v46;
  *&v99[1] = v47;
  BYTE8(v99[1]) = 0;
  v48 = v69;
  static AccessibilityTraits.isHeader.getter();
  sub_1000024C4(&qword_100223488);
  sub_10005D968();
  v49 = v89;
  View.accessibility(addTraits:)();
  (*(v70 + 8))(v48, v72);
  v106 = v98;
  v107[0] = v99[0];
  *(v107 + 9) = *(v99 + 9);
  v104 = v96;
  v105 = v97;
  sub_1000050C4(&v104, &qword_100223488);
  ModifiedContent<>.accessibilityIdentifier(_:)();
  sub_1000050C4(v49, &qword_100223418);
  static HorizontalAlignment.leading.getter();
  v90 = v82;
  v91 = v83;
  v92 = v71;
  VStack.init(alignment:spacing:content:)();
  if (qword_100220BC0 != -1)
  {
    swift_once();
  }

  v50 = qword_1002390D8;
  v51 = *(type metadata accessor for RoundedRectangle() + 20);
  v52 = enum case for RoundedCornerStyle.continuous(_:);
  v53 = type metadata accessor for RoundedCornerStyle();
  v54 = v84;
  (*(*(v53 - 8) + 104))(v84 + v51, v52, v53);
  *v54 = v50;
  v54[1] = v50;
  v55 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  *(v54 + *(v85 + 36)) = Color.init(uiColor:)();
  static Alignment.center.getter();
  v56 = v77;
  v57 = swift_getWitnessTable();
  sub_10005D9F8();
  v58 = v80;
  View.background<A>(_:alignment:)();
  sub_1000050C4(v54, &qword_100223250);
  (*(v76 + 8))(v43, v56);
  v59 = sub_10000BFFC(&qword_1002234A8, &qword_100223480);
  v95[2] = v57;
  v95[3] = v59;
  v60 = v81;
  v61 = swift_getWitnessTable();
  v62 = v79;
  sub_1000EE87C(v58, v60, v61);
  v63 = v78;
  v64 = *(v78 + 8);
  v64(v58, v60);
  v66 = v88;
  v65 = v89;
  sub_10000BEB8(v88, v89, &qword_100223418);
  *&v96 = v65;
  (*(v63 + 16))(v58, v62, v60);
  *(&v96 + 1) = v58;
  v95[0] = v87;
  v95[1] = v60;
  v93 = sub_10005DD48(&qword_1002234B0, &qword_100223418, &unk_1001B7350, sub_10005D968);
  v94 = v61;
  sub_1000E76FC(&v96, 2uLL, v95);
  v64(v62, v60);
  sub_1000050C4(v66, &qword_100223418);
  v64(v58, v60);
  return sub_1000050C4(v65, &qword_100223418);
}

uint64_t sub_10005A094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v151 = a1;
  v143 = a4;
  v6 = sub_1000024C4(&qword_1002234B8);
  v140 = *(v6 - 8);
  v141 = v6;
  __chkstk_darwin(v6);
  v112 = (&v111 - v7);
  v8 = sub_1000024C4(&qword_1002214F8);
  __chkstk_darwin(v8 - 8);
  v113 = &v111 - v9;
  v10 = type metadata accessor for URL();
  v114 = *(v10 - 8);
  v115 = v10;
  __chkstk_darwin(v10);
  v111 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_1000024C4(&qword_100223478);
  v12 = __chkstk_darwin(v139);
  v142 = &v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v144 = &v111 - v14;
  v15 = type metadata accessor for PlainListStyle();
  v135 = *(v15 - 8);
  __chkstk_darwin(v15);
  v134 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Array();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = sub_10000460C(&qword_100223428);
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v163 = v17;
  *(&v163 + 1) = AssociatedTypeWitness;
  *&v164 = v19;
  *(&v164 + 1) = WitnessTable;
  *&v165 = AssociatedConformanceWitness;
  type metadata accessor for ForEach();
  v22 = type metadata accessor for Section();
  v189 = sub_10005D330();
  v23 = swift_getWitnessTable();
  v186 = &protocol witness table for EmptyView;
  v187 = v23;
  v188 = &protocol witness table for EmptyView;
  v24 = swift_getWitnessTable();
  *&v163 = v22;
  *(&v163 + 1) = v24;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v163 = v22;
  *(&v163 + 1) = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v163 = &type metadata for Never;
  v132 = OpaqueTypeMetadata2;
  *(&v163 + 1) = OpaqueTypeMetadata2;
  *&v164 = &protocol witness table for Never;
  v131 = OpaqueTypeConformance2;
  *(&v164 + 1) = OpaqueTypeConformance2;
  v27 = type metadata accessor for List();
  v130 = *(v27 - 8);
  __chkstk_darwin(v27);
  v128 = &v111 - v28;
  v29 = swift_getWitnessTable();
  *&v163 = v27;
  *(&v163 + 1) = v29;
  v30 = swift_getOpaqueTypeMetadata2();
  v127 = *(v30 - 8);
  __chkstk_darwin(v30);
  v125 = v29;
  v126 = &v111 - v31;
  *&v163 = v27;
  *(&v163 + 1) = v29;
  v32 = swift_getOpaqueTypeConformance2();
  *&v163 = v30;
  *(&v163 + 1) = v15;
  *&v164 = v32;
  *(&v164 + 1) = &protocol witness table for PlainListStyle;
  v33 = swift_getOpaqueTypeMetadata2();
  v123 = *(v33 - 8);
  __chkstk_darwin(v33);
  v121 = &v111 - v34;
  v122 = v32;
  v129 = v30;
  *&v163 = v30;
  v136 = v15;
  *(&v163 + 1) = v15;
  *&v164 = v32;
  *(&v164 + 1) = &protocol witness table for PlainListStyle;
  v35 = swift_getOpaqueTypeConformance2();
  v124 = v33;
  *&v163 = v33;
  v120 = v35;
  *(&v163 + 1) = v35;
  v150 = swift_getOpaqueTypeMetadata2();
  v147 = *(v150 - 8);
  v36 = __chkstk_darwin(v150);
  v149 = &v111 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v148 = &v111 - v38;
  v39 = type metadata accessor for ColorScheme();
  v40 = *(v39 - 8);
  v41 = __chkstk_darwin(v39);
  v43 = &v111 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v45 = &v111 - v44;
  v46 = sub_1000024C4(&qword_1002234C0);
  __chkstk_darwin(v46 - 8);
  v117 = &v111 - v47;
  v118 = sub_1000024C4(&qword_1002234C8);
  __chkstk_darwin(v118);
  v49 = &v111 - v48;
  v133 = sub_1000024C4(&qword_100223420);
  v50 = __chkstk_darwin(v133);
  v146 = &v111 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v145 = &v111 - v52;
  v137 = a2;
  v138 = a3;
  v119 = type metadata accessor for MusicModule();
  sub_100039EE0(v45);
  (*(v40 + 104))(v43, enum case for ColorScheme.light(_:), v39);
  static ColorScheme.== infix(_:_:)();
  v53 = *(v40 + 8);
  v53(v43, v39);
  v53(v45, v39);
  v116 = Image.init(_:bundle:)();
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_1000024C4(&qword_100222388);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1001B3B50;
  LOBYTE(v24) = static Edge.Set.leading.getter();
  *(v54 + 32) = v24;
  v55 = static Edge.Set.top.getter();
  *(v54 + 33) = v55;
  v56 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v24)
  {
    v56 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v55)
  {
    v56 = Edge.Set.init(rawValue:)();
  }

  v184 = 1;
  v57 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  *(&v156[3] + 8) = v180;
  *(&v156[4] + 8) = v181;
  *(&v156[5] + 8) = v182;
  *(&v156[6] + 8) = v183;
  *(v156 + 8) = v177;
  *(&v156[1] + 8) = v178;
  v185 = 0;
  *&v156[0] = v116;
  *(&v156[2] + 8) = v179;
  BYTE8(v156[7]) = v56;
  v157 = 0u;
  v158 = 0u;
  LOBYTE(v159) = 1;
  BYTE8(v159) = v57;
  *&v160 = v58;
  *(&v160 + 1) = v59;
  *&v161 = v60;
  *(&v161 + 1) = v61;
  v162 = 0;
  sub_1000024C4(&qword_1002234D0);
  sub_10005DB28();
  v62 = v117;
  View.accessibilityIdentifier(_:)();
  v173 = v159;
  v174 = v160;
  v175 = v161;
  v176 = v162;
  v169 = v156[6];
  v170 = v156[7];
  v171 = v157;
  v172 = v158;
  v165 = v156[2];
  v166 = v156[3];
  v167 = v156[4];
  v168 = v156[5];
  v163 = v156[0];
  v164 = v156[1];
  sub_1000050C4(&v163, &qword_1002234D0);
  sub_10001AE00(v62, v49, &qword_1002234C0);
  v49[*(v118 + 36)] = 1;
  sub_10005DC90();
  View.accessibilityHidden(_:)();
  v63 = sub_1000050C4(v49, &qword_1002234C8);
  __chkstk_darwin(v63);
  v65 = v137;
  v64 = v138;
  v66 = v151;
  v67 = v128;
  List<>.init(content:)();
  v68 = v126;
  View.scrollContentBackground(_:)();
  (*(v130 + 8))(v67, v27);
  v69 = v134;
  PlainListStyle.init()();
  v70 = v121;
  v71 = v129;
  v72 = v136;
  View.listStyle<A>(_:)();
  (*(v135 + 1))(v69, v72);
  (*(v127 + 8))(v68, v71);
  v73 = v149;
  v74 = v124;
  v75 = v120;
  View.listHasStackBehavior()();
  (*(v123 + 8))(v70, v74);
  *&v156[0] = v74;
  *(&v156[0] + 1) = v75;
  v76 = swift_getOpaqueTypeConformance2();
  v77 = v150;
  sub_1000EE87C(v73, v150, v76);
  v78 = v147 + 8;
  v79 = *(v147 + 8);
  v79(v73, v77);
  if (*(v66 + *(v119 + 44)))
  {

    v81 = sub_10009953C(v80);

    v82 = v144;
    v135 = v79;
    v136 = v78;
    v134 = v76;
    if (v81)
    {
      v83 = type metadata accessor for MusicViewModel();
      v84 = v113;
      sub_100098B70(v83, v113);
      v86 = v114;
      v85 = v115;
      if ((*(v114 + 48))(v84, 1, v115) != 1)
      {
        v88 = v111;
        (*(v86 + 32))(v111, v84, v85);
        v89 = static HorizontalAlignment.leading.getter();
        v90 = v85;
        v91 = v66;
        v92 = v112;
        *v112 = v89;
        *(v92 + 8) = 0x4030000000000000;
        *(v92 + 16) = 0;
        v93 = sub_1000024C4(&qword_100223540);
        sub_10005C2A4(v91, v88, v65, v64, (v92 + *(v93 + 44)));
        LOBYTE(v91) = static Edge.Set.top.getter();
        EdgeInsets.init(_all:)();
        v94 = v86;
        v95 = v141;
        v96 = v92 + *(v141 + 36);
        *v96 = v91;
        *(v96 + 8) = v97;
        *(v96 + 16) = v98;
        *(v96 + 24) = v99;
        *(v96 + 32) = v100;
        *(v96 + 40) = 0;
        v101 = v144;
        sub_10001AE00(v92, v144, &qword_1002234B8);
        v102 = v95;
        v87 = v101;
        (*(v140 + 56))(v101, 0, 1, v102);
        (*(v94 + 8))(v88, v90);
        goto LABEL_11;
      }

      sub_1000050C4(v84, &qword_1002214F8);
      v82 = v144;
    }

    (*(v140 + 56))(v82, 1, 1, v141);
    v87 = v82;
LABEL_11:
    v103 = v145;
    v104 = v146;
    sub_10000BEB8(v145, v146, &qword_100223420);
    *&v156[0] = v104;
    v105 = v148;
    v107 = v149;
    v106 = v150;
    (*(v147 + 16))(v149, v148, v150);
    *(&v156[0] + 1) = v107;
    v108 = v142;
    sub_10000BEB8(v87, v142, &qword_100223478);
    *&v156[1] = v108;
    v155[0] = v133;
    v155[1] = v106;
    v155[2] = v139;
    v152 = sub_10005DD48(&qword_100223518, &qword_100223420, &unk_1001B7358, sub_10005DC90);
    v153 = v134;
    v154 = sub_10005DE5C();
    sub_1000E76FC(v156, 3uLL, v155);
    sub_1000050C4(v87, &qword_100223478);
    v109 = v135;
    v135(v105, v106);
    sub_1000050C4(v103, &qword_100223420);
    sub_1000050C4(v108, &qword_100223478);
    v109(v107, v106);
    return sub_1000050C4(v146, &qword_100223420);
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_10005DAE0(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_10005B248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a3;
  v23 = a1;
  v24 = a4;
  v21 = a2;
  v32 = type metadata accessor for Array();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = sub_10000460C(&qword_100223428);
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  v4 = type metadata accessor for Section();
  v20 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v19 - v5;
  v31 = sub_10005D330();
  v7 = swift_getWitnessTable();
  v28 = &protocol witness table for EmptyView;
  v29 = v7;
  v30 = &protocol witness table for EmptyView;
  v8 = swift_getWitnessTable();
  v32 = v4;
  AssociatedTypeWitness = v8;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v10 = *(OpaqueTypeMetadata2 - 8);
  v11 = __chkstk_darwin(OpaqueTypeMetadata2);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v19 - v14;
  v25 = v21;
  v26 = v22;
  v27 = v23;
  Section<>.init(content:)();
  static VerticalEdge.Set.bottom.getter();
  View.listSectionSeparator(_:edges:)();
  (*(v20 + 8))(v6, v4);
  v32 = v4;
  AssociatedTypeWitness = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1000EE87C(v13, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v17 = *(v10 + 8);
  v17(v13, OpaqueTypeMetadata2);
  sub_1000EE87C(v15, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v17)(v15, OpaqueTypeMetadata2);
}

uint64_t sub_10005B5CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a4;
  v29[0] = a3;
  v32 = type metadata accessor for MusicModule();
  v7 = *(v32 - 8);
  __chkstk_darwin(v32);
  v30 = v29 - v8;
  v9 = type metadata accessor for Array();
  v29[5] = v9;
  v29[1] = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29[4] = AssociatedTypeWitness;
  v11 = sub_10000460C(&qword_100223428);
  v29[3] = v11;
  WitnessTable = swift_getWitnessTable();
  v29[2] = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v35 = v9;
  v36 = AssociatedTypeWitness;
  v37 = v11;
  v38 = WitnessTable;
  v39 = AssociatedConformanceWitness;
  v14 = type metadata accessor for ForEach();
  v31 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v29 - v18;
  v20 = v29[0];
  type metadata accessor for MusicViewModel();
  v35 = sub_100098770();
  v21 = v30;
  v22 = v32;
  (*(v7 + 16))(v30, a1, v32);
  v23 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = a2;
  *(v24 + 24) = v20;
  (*(v7 + 32))(v24 + v23, v21, v22);
  v25 = sub_10005D330();
  ForEach<>.init(_:content:)();
  v34 = v25;
  v26 = swift_getWitnessTable();
  sub_1000EE87C(v17, v14, v26);
  v27 = *(v31 + 8);
  v27(v17, v14);
  sub_1000EE87C(v19, v14, v26);
  return (v27)(v19, v14);
}

double sub_10005B938@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a2;
  v36 = a4;
  v43 = a5;
  v8 = type metadata accessor for PlainButtonStyle();
  v9 = *(v8 - 8);
  v41 = v8;
  v42 = v9;
  v10 = __chkstk_darwin(v8);
  v40 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  v34 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MusicModule();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v34 - v17;
  v19 = sub_1000024C4(&qword_100223448);
  v20 = *(v19 - 8);
  v38 = v19;
  v39 = v20;
  __chkstk_darwin(v19);
  v37 = &v34 - v21;
  (*(v15 + 16))(v18, a2, v14);
  (*(v12 + 16))(&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  v22 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v23 = (v16 + *(v12 + 80) + v22) & ~*(v12 + 80);
  v24 = swift_allocObject();
  v25 = v36;
  *(v24 + 16) = a3;
  *(v24 + 24) = v25;
  (*(v15 + 32))(v24 + v22, v18, v14);
  (*(v12 + 32))(v24 + v23, v34, a3);
  v44 = a3;
  v45 = v25;
  v46 = a1;
  v47 = v35;
  sub_1000024C4(&qword_100223568);
  sub_10005EB2C();
  v26 = v37;
  Button.init(action:label:)();
  v27 = v40;
  PlainButtonStyle.init()();
  sub_10000BFFC(&qword_100223450, &qword_100223448);
  sub_10005DAE0(&qword_100222DD0, &type metadata accessor for PlainButtonStyle);
  v28 = v43;
  v29 = v38;
  v30 = v41;
  View.buttonStyle<A>(_:)();
  (*(v42 + 8))(v27, v30);
  (*(v39 + 8))(v26, v29);
  v48 = static Color.clear.getter();
  v31 = AnyView.init<A>(_:)();
  *(v28 + *(sub_1000024C4(&qword_100223440) + 36)) = v31;
  v32 = v28 + *(sub_1000024C4(&qword_100223428) + 36);
  result = 10.0;
  *v32 = xmmword_1001B7250;
  *(v32 + 16) = xmmword_1001B7250;
  *(v32 + 32) = 0;
  return result;
}

uint64_t sub_10005BDE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicViewModel();
  sub_10009883C(a2, v4);
  if (*(a1 + *(type metadata accessor for MusicModule() + 44)))
  {

    sub_100098850(v5, v4);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10005DAE0(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

double sub_10005BEE0@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v32 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - v10;
  v12 = (*(a3 + 48))(a2, a3);
  v35 = v13;
  v36 = v12;
  v14 = (*(a3 + 64))(a2, a3);
  if (v15)
  {
    v16 = v15;
    v34 = v14;
  }

  else
  {
    v34 = (*(a3 + 56))(a2, a3);
    v16 = v17;
  }

  v33 = (*(a3 + 112))(a2, a3);
  (*(a3 + 72))(a2, a3);
  v18 = *(AssociatedTypeWitness - 8);
  if ((*(v18 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    (*(v9 + 8))(v11, v8);
    AssociatedConformanceWitness = 0;
    v39 = 0u;
    v40 = 0u;
  }

  else
  {
    *(&v40 + 1) = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v19 = sub_10005EC40(&v39);
    (*(v18 + 32))(v19, v11, AssociatedTypeWitness);
  }

  v20 = type metadata accessor for MusicViewModel();
  sub_100098B0C(v20);
  v21 = v38;
  if (v38)
  {
    sub_10001BED0(v37, v38);
    v22 = dispatch thunk of MusicItem.id.getter();
    v21 = v23;
    sub_100012A7C(v37);
  }

  else
  {
    sub_1000050C4(v37, &qword_1002224D8);
    v22 = 0;
  }

  v24 = dispatch thunk of MusicItem.id.getter();
  if (v21)
  {
    if (v22 == v24 && v21 == v25)
    {
      v26 = 1;
    }

    else
    {
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v26 = 0;
  }

  v27 = v33 & 1;
  *&v42[7] = v39;
  *&v42[23] = v40;
  *&v42[39] = AssociatedConformanceWitness;
  KeyPath = swift_getKeyPath();
  v29 = *&v42[16];
  *(a4 + 33) = *v42;
  v30 = v35;
  *a4 = v36;
  *(a4 + 8) = v30;
  *(a4 + 16) = v34;
  *(a4 + 24) = v16;
  *(a4 + 32) = v27;
  *(a4 + 49) = v29;
  result = *&v42[31];
  *(a4 + 64) = *&v42[31];
  *(a4 + 80) = v26 & 1;
  *(a4 + 81) = v39;
  *(a4 + 84) = *(&v39 + 3);
  *(a4 + 88) = KeyPath;
  *(a4 + 96) = 0;
  return result;
}

uint64_t sub_10005C2A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v64 = a4;
  v63 = a3;
  v65 = a2;
  v76 = a5;
  v77 = a1;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = type metadata accessor for MusicModule();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v60 - v11;
  v61 = &v60 - v11;
  v70 = sub_1000024C4(&qword_100221A00);
  v68 = *(v70 - 8);
  __chkstk_darwin(v70);
  v62 = &v60 - v13;
  v69 = sub_1000024C4(&qword_100223548);
  __chkstk_darwin(v69);
  v66 = &v60 - v14;
  v15 = sub_1000024C4(&qword_100223550);
  v16 = __chkstk_darwin(v15 - 8);
  v75 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v72 = &v60 - v18;
  v19 = type metadata accessor for Divider();
  v73 = *(v19 - 8);
  v74 = v19;
  v20 = __chkstk_darwin(v19);
  v71 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v67 = &v60 - v22;
  Divider.init()();
  v23 = v12;
  v24 = v8;
  (*(v9 + 16))(v23, v77, v8);
  v25 = v6;
  v26 = *(v6 + 16);
  v27 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v5;
  v26(v27, v65, v5);
  v29 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v30 = (v10 + *(v25 + 80) + v29) & ~*(v25 + 80);
  v31 = swift_allocObject();
  v32 = v63;
  v33 = v64;
  *(v31 + 16) = v63;
  *(v31 + 24) = v33;
  v34 = v31 + v29;
  v35 = v62;
  (*(v9 + 32))(v34, v61, v24);
  (*(v25 + 32))(v31 + v30, v27, v28);
  v78 = v32;
  v79 = v33;
  v80 = v77;
  Button.init(action:label:)();
  sub_1000024C4(&qword_100222388);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B50;
  LOBYTE(v25) = static Edge.Set.leading.getter();
  *(inited + 32) = v25;
  v37 = static Edge.Set.bottom.getter();
  *(inited + 33) = v37;
  v38 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v25)
  {
    v38 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v37)
  {
    v38 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = v66;
  (*(v68 + 32))(v66, v35, v70);
  v48 = v47 + *(v69 + 36);
  *v48 = v38;
  *(v48 + 8) = v40;
  *(v48 + 16) = v42;
  *(v48 + 24) = v44;
  *(v48 + 32) = v46;
  *(v48 + 40) = 0;
  sub_10005E368();
  v49 = v72;
  View.accessibilityIdentifier(_:)();
  sub_1000050C4(v47, &qword_100223548);
  v51 = v73;
  v50 = v74;
  v52 = *(v73 + 16);
  v53 = v71;
  v54 = v67;
  v52(v71, v67, v74);
  v55 = v75;
  sub_10000BEB8(v49, v75, &qword_100223550);
  v56 = v76;
  v52(v76, v53, v50);
  v57 = sub_1000024C4(&qword_100223560);
  sub_10000BEB8(v55, &v56[*(v57 + 48)], &qword_100223550);
  sub_1000050C4(v49, &qword_100223550);
  v58 = *(v51 + 8);
  v58(v54, v50);
  sub_1000050C4(v55, &qword_100223550);
  return (v58)(v53, v50);
}

uint64_t sub_10005C9B4(uint64_t a1)
{
  v2 = type metadata accessor for OpenURLAction();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MusicModule();
  sub_100039C90(v5);
  OpenURLAction.callAsFunction(_:)();
  (*(v3 + 8))(v5, v2);
  v7 = *(a1 + *(v6 + 44));
  if (v7)
  {
    v8 = type metadata accessor for MusicViewModel();

    sub_100098D00(15, 0, 3u, v7, v8);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10005DAE0(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10005CB70@<X0>(uint64_t a1@<X8>)
{

  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10005CC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10005CCA0);
}

uint64_t sub_10005CCA0()
{

  v1 = type metadata accessor for MusicViewModel();
  sub_100098F88(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10005CD20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MusicViewModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  v5 = type metadata accessor for MusicModule();
  v6 = v5[9];
  *(a2 + v6) = swift_getKeyPath();
  sub_1000024C4(&qword_1002216C8);
  swift_storeEnumTagMultiPayload();
  v7 = v5[10];
  *(a2 + v7) = swift_getKeyPath();
  sub_1000024C4(qword_100221928);
  swift_storeEnumTagMultiPayload();
  v8 = (a2 + v5[11]);
  type metadata accessor for RemoteViewConfiguration();
  sub_10005DAE0(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
  result = EnvironmentObject.init()();
  *v8 = result;
  v8[1] = v10;
  return result;
}

void sub_10005CE94()
{
  type metadata accessor for MusicViewModel();
  if (v0 <= 0x3F)
  {
    sub_10005D294(319, &qword_100221C00, &type metadata accessor for ColorScheme);
    if (v1 <= 0x3F)
    {
      sub_10005D294(319, &qword_1002219C0, &type metadata accessor for OpenURLAction);
      if (v2 <= 0x3F)
      {
        sub_100017044();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10005CF98(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for MusicViewModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000024C4(&qword_100221B80);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[9];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_1000024C4(&qword_1002222A0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[10];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[11]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

uint64_t sub_10005D128(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for MusicViewModel();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_1000024C4(&qword_100221B80);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[9];
    }

    else
    {
      result = sub_1000024C4(&qword_1002222A0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[11]) = a2;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[10];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_10005D294(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

unint64_t sub_10005D330()
{
  result = qword_100223430;
  if (!qword_100223430)
  {
    sub_10000460C(&qword_100223428);
    sub_10005D3E8();
    sub_10000BFFC(&qword_100223468, &qword_100223470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223430);
  }

  return result;
}

unint64_t sub_10005D3E8()
{
  result = qword_100223438;
  if (!qword_100223438)
  {
    sub_10000460C(&qword_100223440);
    sub_10000460C(&qword_100223448);
    type metadata accessor for PlainButtonStyle();
    sub_10000BFFC(&qword_100223450, &qword_100223448);
    sub_10005DAE0(&qword_100222DD0, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_10000BFFC(&qword_100223458, &qword_100223460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223438);
  }

  return result;
}

uint64_t sub_10005D56C()
{
  v1 = type metadata accessor for MusicModule();
  v2 = (*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = *(type metadata accessor for MusicViewModel() + 44);
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  v7 = *(v1 + 36);
  sub_1000024C4(&qword_1002216C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for ColorScheme();
    (*(*(v8 - 8) + 8))(v3 + v7, v8);
  }

  else
  {
  }

  v9 = *(v1 + 40);
  sub_1000024C4(qword_100221928);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for OpenURLAction();
    (*(*(v10 - 8) + 8))(v3 + v9, v10);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10005D7EC()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = *(type metadata accessor for MusicModule() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v0[2];
  v7 = v0[3];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_10000BD00;

  return sub_10005CC04(v6, v7, v0 + v5, v2, v3);
}

uint64_t sub_10005D8E8()
{
  type metadata accessor for MusicModule();
  v0 = type metadata accessor for MusicViewModel();
  return sub_100098FEC(v0);
}

unint64_t sub_10005D968()
{
  result = qword_100223490;
  if (!qword_100223490)
  {
    sub_10000460C(&qword_100223488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223490);
  }

  return result;
}

unint64_t sub_10005D9F8()
{
  result = qword_100223498;
  if (!qword_100223498)
  {
    sub_10000460C(&qword_100223250);
    sub_10005DAE0(&qword_1002234A0, &type metadata accessor for RoundedRectangle);
    sub_10000BFFC(&qword_1002221E0, &qword_1002221E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223498);
  }

  return result;
}

uint64_t sub_10005DAE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005DB88(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000460C(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10005DC0C()
{
  result = qword_1002234F0;
  if (!qword_1002234F0)
  {
    sub_10000460C(&qword_1002234F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002234F0);
  }

  return result;
}

unint64_t sub_10005DC90()
{
  result = qword_100223500;
  if (!qword_100223500)
  {
    sub_10000460C(&qword_1002234C8);
    sub_10005DD48(&qword_100223508, &qword_1002234C0, &unk_1001B73D0, sub_10005DB28);
    sub_10005DDFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223500);
  }

  return result;
}

uint64_t sub_10005DD48(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000460C(a2);
    a4();
    sub_10005DAE0(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10005DDFC()
{
  result = qword_100223510;
  if (!qword_100223510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223510);
  }

  return result;
}

unint64_t sub_10005DE5C()
{
  result = qword_100223520;
  if (!qword_100223520)
  {
    sub_10000460C(&qword_100223478);
    sub_10005DEE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223520);
  }

  return result;
}

unint64_t sub_10005DEE0()
{
  result = qword_100223528;
  if (!qword_100223528)
  {
    sub_10000460C(&qword_1002234B8);
    sub_10000BFFC(&qword_100223530, &qword_100223538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223528);
  }

  return result;
}

uint64_t sub_10005DF98()
{
  v1 = type metadata accessor for MusicModule();
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v13 = *(*(v1 - 8) + 64);
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = v0 + v2;

  v7 = *(type metadata accessor for MusicViewModel() + 44);
  if (!(*(v4 + 48))(v0 + v2 + v7, 1, v3))
  {
    (*(v4 + 8))(v6 + v7, v3);
  }

  v8 = *(v1 + 36);
  sub_1000024C4(&qword_1002216C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for ColorScheme();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  else
  {
  }

  v10 = *(v1 + 40);
  sub_1000024C4(qword_100221928);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for OpenURLAction();
    (*(*(v11 - 8) + 8))(v6 + v10, v11);
  }

  else
  {
  }

  (*(v4 + 8))(v0 + ((v2 + v13 + v5) & ~v5), v3);

  return swift_deallocObject();
}

uint64_t sub_10005E274()
{
  v1 = *(type metadata accessor for MusicModule() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  type metadata accessor for URL();

  return sub_10005C9B4(v0 + v2);
}

unint64_t sub_10005E368()
{
  result = qword_100223558;
  if (!qword_100223558)
  {
    sub_10000460C(&qword_100223548);
    sub_10000BFFC(&qword_100221A08, &qword_100221A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223558);
  }

  return result;
}

uint64_t sub_10005E42C()
{
  v1 = type metadata accessor for MusicModule();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80));

  v3 = *(type metadata accessor for MusicViewModel() + 44);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  v6 = *(v1 + 36);
  sub_1000024C4(&qword_1002216C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for ColorScheme();
    (*(*(v7 - 8) + 8))(v2 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 40);
  sub_1000024C4(qword_100221928);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for OpenURLAction();
    (*(*(v9 - 8) + 8))(v2 + v8, v9);
  }

  else
  {
  }

  return swift_deallocObject();
}

double sub_10005E6A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for MusicModule() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_10005B938(a1, v8, v5, v6, a2);
}

uint64_t sub_10005E740()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for MusicModule();
  v15 = *(*(v2 - 8) + 64);
  v16 = *(*(v2 - 8) + 80);
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v14 = (v16 + 32) & ~v16;
  v5 = v0 + v14;

  v6 = *(type metadata accessor for MusicViewModel() + 44);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v14 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = *(v2 + 36);
  sub_1000024C4(&qword_1002216C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for ColorScheme();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  v11 = *(v2 + 40);
  sub_1000024C4(qword_100221928);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for OpenURLAction();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
  }

  (*(v3 + 8))(v0 + ((v14 + v15 + v4) & ~v4), v1);

  return swift_deallocObject();
}

uint64_t sub_10005EA48()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for MusicModule() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v0 + ((v3 + *(v2 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80));

  return sub_10005BDE4(v0 + v3, v4);
}

unint64_t sub_10005EB2C()
{
  result = qword_100223570;
  if (!qword_100223570)
  {
    sub_10000460C(&qword_100223568);
    sub_10005EBE4();
    sub_10000BFFC(&qword_1002230D8, &qword_1002230D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223570);
  }

  return result;
}

unint64_t sub_10005EBE4()
{
  result = qword_100223578;
  if (!qword_100223578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100223578);
  }

  return result;
}

uint64_t *sub_10005EC40(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10005ECA4()
{
  sub_10000460C(&qword_100223418);
  sub_10000460C(&qword_100223420);
  type metadata accessor for Array();
  swift_getAssociatedTypeWitness();
  sub_10000460C(&qword_100223428);
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ForEach();
  type metadata accessor for Section();
  sub_10005D330();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for List();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for PlainListStyle();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_100223478);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  sub_10000460C(&qword_100223480);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_10005F128()
{
  if ([v0 _remoteViewControllerProxy])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_1000024C4(&qword_1002235A8);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1000050C4(v5, &unk_100227380);
    return 0;
  }
}

void sub_10005F248(void *a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = sub_1000024C4(&qword_1002235C0);
  v9 = __chkstk_darwin(v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = (&v37 - v12);
  if (!a1)
  {
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    __break(1u);
    goto LABEL_25;
  }

  v14 = [a1 userInfo];
  if (!v14)
  {
    if (qword_100220C90 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_10000BE10(v25, qword_100239158);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Remote alert view configuration missing user info", v28, 2u);
    }

    if (a2)
    {
      a2();
      return;
    }

    goto LABEL_24;
  }

  v15 = v14;
  v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v40 = 0xD000000000000013;
  v41 = 0x80000001001C5A90;
  AnyHashable.init<A>(_:)();
  if (!*(v16 + 16) || (v17 = sub_1000FBDEC(v42), (v18 & 1) == 0))
  {
    sub_10006065C(v42);
LABEL_8:
    if (qword_100220C90 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000BE10(v21, qword_100239158);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Remote alert view configuration missing a route type", v24, 2u);
    }

    if (a2)
    {
      a2();

      return;
    }

    goto LABEL_23;
  }

  sub_100026D04(*(v16 + 56) + 32 * v17, v43);
  sub_10006065C(v42);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v39 = a3;
  v19 = v40;
  v20 = v41;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  type metadata accessor for RemoteViewConfiguration();
  sub_1000606B0(&qword_1002235C8, type metadata accessor for RemoteViewConfiguration);
  v37 = v20;
  v38 = v19;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  v29 = v42[0];

  [v4 setNeedsStatusBarAppearanceUpdate];
  sub_10005FD8C();
  sub_1000606B0(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
  *v13 = EnvironmentObject.init()();
  v13[1] = v30;
  v31 = *(type metadata accessor for EventRootView() + 20);
  *(v13 + v31) = swift_getKeyPath();
  sub_1000024C4(&qword_1002216D0);
  swift_storeEnumTagMultiPayload();
  v32 = static ObservableObject.environmentStore.getter();
  v33 = (v13 + *(v8 + 36));
  *v33 = v32;
  v33[1] = v29;
  v34 = objc_allocWithZone(sub_1000024C4(&qword_1002235D0));
  *&v34[*((swift_isaMask & *v34) + qword_1002390E8 + 16) + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_10000BEB8(v13, v11, &qword_1002235C0);

  v35 = UIHostingController.init(rootView:)();
  sub_1000050C4(v13, &qword_1002235C0);
  *(v35 + *((swift_isaMask & *v35) + qword_1002390E8 + 16) + 8) = &off_100213990;
  swift_unknownObjectWeakAssign();
  [v4 presentViewController:v35 animated:1 completion:0];
  if (a2)
  {

    (a2)(v36);

    sub_1000606F8(v38, v37);

    return;
  }

LABEL_25:
  __break(1u);
}

void sub_10005FAE4(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    if ((a1 & 0xC000000000000001) != 0)
    {

      __CocoaSet.makeIterator()();
      sub_10006054C(0, &qword_1002235B0);
      sub_100060594();
      Set.Iterator.init(_cocoa:)();
      v1 = v15;
      v2 = v16;
      v3 = v17;
      v4 = v18;
      v5 = v19;
    }

    else
    {
      v6 = -1 << *(a1 + 32);
      v2 = a1 + 56;
      v3 = ~v6;
      v7 = -v6;
      if (v7 < 64)
      {
        v8 = ~(-1 << v7);
      }

      else
      {
        v8 = -1;
      }

      v5 = v8 & *(a1 + 56);

      v4 = 0;
    }

    while (1)
    {
      if (v1 < 0)
      {
        if (!__CocoaSet.Iterator.next()() || (sub_10006054C(0, &qword_1002235B0), swift_dynamicCast(), v13 = v14, v11 = v4, v12 = v5, !v14))
        {
LABEL_20:
          sub_1000605FC();
          return;
        }
      }

      else
      {
        v9 = v4;
        v10 = v5;
        v11 = v4;
        if (!v5)
        {
          while (1)
          {
            v11 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              break;
            }

            if (v11 >= ((v3 + 64) >> 6))
            {
              goto LABEL_20;
            }

            v10 = *(v2 + 8 * v11);
            ++v9;
            if (v10)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          break;
        }

LABEL_14:
        v12 = (v10 - 1) & v10;
        v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
        if (!v13)
        {
          goto LABEL_20;
        }
      }

      if (([v13 events] & 0x10) != 0)
      {
        sub_10005FE74();
      }

      v4 = v11;
      v5 = v12;
    }
  }

  __break(1u);
}