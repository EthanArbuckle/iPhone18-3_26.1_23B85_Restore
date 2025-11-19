id sub_1001AE5CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_10025A8B0 != -1)
  {
    swift_once();
  }

  if (byte_1002773A8)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 8.0;
  }

  v5 = type metadata accessor for MultichoiceRow(0);
  *(a2 + *(v5 + 24)) = v4;
  type metadata accessor for QuestionnaireEntry();
  sub_1001C0124(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry);

  Bindable<A>.init(wrappedValue:)();
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(a1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer + 8))
  {

    goto LABEL_11;
  }

  v6 = *(a1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer);
  v7 = *(a1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry_entry);
  v8 = *(a1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer + 8);

  result = [v7 answerOptions];
  if (result)
  {
    v10 = result;
    v11 = String._bridgeToObjectiveC()();

    v12 = [v10 containsObject:v11];

    if ((v12 & 1) == 0)
    {
      v13 = 1;
LABEL_12:
      v14 = a2 + *(v5 + 20);
      *v14 = v13;
      *(v14 + 8) = 0;
      return result;
    }

LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001AE7BC()
{
  result = LocalizedStringKey.init(stringLiteral:)();
  qword_100277360 = result;
  *algn_100277368 = v1;
  byte_100277370 = v2 & 1;
  qword_100277378 = v3;
  return result;
}

uint64_t sub_1001AE7FC()
{
  result = LocalizedStringKey.init(stringLiteral:)();
  qword_100277380 = result;
  *algn_100277388 = v1;
  byte_100277390 = v2 & 1;
  qword_100277398 = v3;
  return result;
}

uint64_t sub_1001AE83C()
{
  if (qword_10025A8B0 != -1)
  {
    result = swift_once();
  }

  v0 = 15.0;
  if (byte_1002773A8)
  {
    v0 = 16.0;
  }

  qword_1002773A0 = *&v0;
  return result;
}

void sub_1001AE8A4()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  byte_1002773A8 = v1 == 6;
}

uint64_t sub_1001AE908()
{
  result = LocalizedStringKey.init(stringLiteral:)();
  qword_1002773B0 = result;
  *algn_1002773B8 = v1;
  byte_1002773C0 = v2 & 1;
  qword_1002773C8 = v3;
  return result;
}

uint64_t sub_1001AE958()
{
  if (qword_10025A8B0 != -1)
  {
    result = swift_once();
  }

  v0 = 0.15;
  if (byte_1002773A8)
  {
    v0 = 1.0;
  }

  qword_1002773D0 = *&v0;
  return result;
}

uint64_t sub_1001AE9C8()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_10002B2EC(v0, qword_1002773D8);
  sub_10000F34C(v0, qword_1002773D8);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_1001AEA2C()
{
  if (qword_10025A8B0 != -1)
  {
    result = swift_once();
  }

  v0 = 10.0;
  if (byte_1002773A8)
  {
    v0 = 16.0;
  }

  qword_1002773F0 = *&v0;
  return result;
}

uint64_t sub_1001AEA94()
{
  v0 = type metadata accessor for RoundedCornerStyle();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UnevenRoundedRectangle();
  sub_10002B2EC(v5, qword_1002773F8);
  v6 = sub_10000F34C(v5, qword_1002773F8);
  if (qword_10025A8D0 != -1)
  {
    swift_once();
  }

  (*(v1 + 104))(v4, enum case for RoundedCornerStyle.continuous(_:), v0);
  RectangleCornerRadii.init(topLeft:topRight:bottomRight:bottomLeft:)();
  *v6 = v7;
  *(v6 + 1) = v8;
  *(v6 + 2) = v9;
  *(v6 + 3) = v10;
  return (*(v1 + 32))(&v6[*(v5 + 20)], v4, v0);
}

uint64_t sub_1001AEC0C()
{
  v0 = type metadata accessor for RoundedCornerStyle();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UnevenRoundedRectangle();
  sub_10002B2EC(v5, qword_100277410);
  v6 = sub_10000F34C(v5, qword_100277410);
  if (qword_10025A8D0 != -1)
  {
    swift_once();
  }

  (*(v1 + 104))(v4, enum case for RoundedCornerStyle.continuous(_:), v0);
  RectangleCornerRadii.init(topLeft:topRight:bottomRight:bottomLeft:)();
  *v6 = v7;
  *(v6 + 1) = v8;
  *(v6 + 2) = v9;
  *(v6 + 3) = v10;
  return (*(v1 + 32))(&v6[*(v5 + 20)], v4, v0);
}

uint64_t sub_1001AED84()
{
  v0 = type metadata accessor for RoundedCornerStyle();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UnevenRoundedRectangle();
  sub_10002B2EC(v5, qword_100277428);
  v6 = sub_10000F34C(v5, qword_100277428);
  if (qword_10025A8D0 != -1)
  {
    swift_once();
  }

  (*(v1 + 104))(v4, enum case for RoundedCornerStyle.continuous(_:), v0);
  RectangleCornerRadii.init(topLeft:topRight:bottomRight:bottomLeft:)();
  *v6 = v7;
  *(v6 + 1) = v8;
  *(v6 + 2) = v9;
  *(v6 + 3) = v10;
  return (*(v1 + 32))(&v6[*(v5 + 20)], v4, v0);
}

uint64_t sub_1001AEEFC()
{
  v0 = type metadata accessor for RoundedCornerStyle();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UnevenRoundedRectangle();
  sub_10002B2EC(v5, qword_100277440);
  v6 = sub_10000F34C(v5, qword_100277440);
  if (qword_10025A8D0 != -1)
  {
    swift_once();
  }

  (*(v1 + 104))(v4, enum case for RoundedCornerStyle.continuous(_:), v0);
  RectangleCornerRadii.init(topLeft:topRight:bottomRight:bottomLeft:)();
  *v6 = v7;
  *(v6 + 1) = v8;
  *(v6 + 2) = v9;
  *(v6 + 3) = v10;
  return (*(v1 + 32))(&v6[*(v5 + 20)], v4, v0);
}

uint64_t sub_1001AF074()
{
  v0 = type metadata accessor for RoundedCornerStyle();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UnevenRoundedRectangle();
  sub_10002B2EC(v5, qword_100277458);
  v6 = sub_10000F34C(v5, qword_100277458);
  if (qword_10025A8D0 != -1)
  {
    swift_once();
  }

  (*(v1 + 104))(v4, enum case for RoundedCornerStyle.continuous(_:), v0);
  RectangleCornerRadii.init(topLeft:topRight:bottomRight:bottomLeft:)();
  *v6 = v7;
  *(v6 + 1) = v8;
  *(v6 + 2) = v9;
  *(v6 + 3) = v10;
  return (*(v1 + 32))(&v6[*(v5 + 20)], v4, v0);
}

uint64_t sub_1001AF1EC()
{
  v0 = type metadata accessor for RoundedCornerStyle();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UnevenRoundedRectangle();
  sub_10002B2EC(v5, qword_100277470);
  v6 = sub_10000F34C(v5, qword_100277470);
  (*(v1 + 104))(v4, enum case for RoundedCornerStyle.continuous(_:), v0);
  RectangleCornerRadii.init(topLeft:topRight:bottomRight:bottomLeft:)();
  *v6 = v7;
  *(v6 + 1) = v8;
  *(v6 + 2) = v9;
  *(v6 + 3) = v10;
  return (*(v1 + 32))(&v6[*(v5 + 20)], v4, v0);
}

uint64_t sub_1001AF324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000341C(&qword_100267F28, &qword_1001E28D8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v35 - v6;
  v8 = sub_10000341C(&qword_100267F30, &qword_1001E28E0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v35 - v11;
  v13 = sub_10000341C(&qword_100267F38, &qword_1001E28E8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v35 - v15;
  KeyPath = swift_getKeyPath();
  v18 = sub_10000341C(&qword_100267F40, &qword_1001E2920);
  (*(*(v18 - 8) + 16))(v7, a1, v18);
  v19 = &v7[*(sub_10000341C(&qword_100267F48, &qword_1001E2928) + 36)];
  *v19 = KeyPath;
  *(v19 + 1) = 0;
  v19[16] = 1;
  *&v7[*(v4 + 36)] = 256;
  static Font.Weight.medium.getter();
  sub_1001C3A8C();
  View.fontWeight(_:)();
  sub_10000F500(v7, &qword_100267F28, &qword_1001E28D8);
  if (qword_10025A8B0 != -1)
  {
    swift_once();
  }

  if (byte_1002773A8 == 1)
  {
    v20 = static Font.title3.getter();
  }

  else
  {
    v20 = 0;
  }

  v21 = swift_getKeyPath();
  (*(v9 + 32))(v16, v12, v8);
  v22 = &v16[*(v13 + 36)];
  *v22 = v21;
  v22[1] = v20;
  v23 = static Edge.Set.leading.getter();
  v24 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v23)
  {
    v24 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_10002A894(v16, a2, &qword_100267F38, &qword_1001E28E8);
  result = sub_10000341C(&qword_100267F78, &qword_1001E2968);
  v34 = a2 + *(result + 36);
  *v34 = v24;
  *(v34 + 8) = v26;
  *(v34 + 16) = v28;
  *(v34 + 24) = v30;
  *(v34 + 32) = v32;
  *(v34 + 40) = 0;
  return result;
}

uint64_t sub_1001AF6A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_10025A8D0 != -1)
  {
    swift_once();
  }

  v4 = qword_1002773F0;
  v5 = (a2 + *(sub_10000341C(&qword_100267EC0, &qword_1001E2858) + 36));
  v6 = *(type metadata accessor for RoundedRectangle() + 20);
  v7 = enum case for RoundedCornerStyle.continuous(_:);
  v8 = type metadata accessor for RoundedCornerStyle();
  (*(*(v8 - 8) + 104))(v5 + v6, v7, v8);
  *v5 = v4;
  v5[1] = v4;
  if (qword_10025A7D8 != -1)
  {
    swift_once();
  }

  v9 = qword_100277188;
  v10 = sub_10000341C(&unk_100263560, &unk_1001D1590);
  *(v5 + *(v10 + 52)) = v9;
  *(v5 + *(v10 + 56)) = 256;

  v11 = static Alignment.center.getter();
  v13 = v12;
  v14 = (v5 + *(sub_10000341C(&qword_10025C5C8, &qword_1001DC380) + 36));
  *v14 = v11;
  v14[1] = v13;
  v15 = sub_10000341C(&qword_100267EC8, &qword_1001E2860);
  (*(*(v15 - 8) + 16))(a2, a1, v15);
  v16 = (a2 + *(sub_10000341C(&qword_100267ED0, &qword_1001E2868) + 36));
  *v16 = 0;
  v17 = *(type metadata accessor for CommonUIBlendModifier(0) + 20);
  *&v16[v17] = swift_getKeyPath();
  sub_10000341C(&qword_100262940, &unk_1001D0560);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1001AF8D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v95 = a1;
  v84 = type metadata accessor for GlobalCoordinateSpace();
  v3 = *(*(v84 - 8) + 64);
  __chkstk_darwin(v84);
  v81 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for DragGesture();
  v86 = *(v88 - 8);
  v5 = *(v86 + 64);
  __chkstk_darwin(v88);
  v85 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000341C(&qword_100267B18, &qword_1001E2518);
  v90 = *(v7 - 8);
  v91 = v7;
  v8 = *(v90 + 64);
  __chkstk_darwin(v7);
  v89 = &v73 - v9;
  v10 = sub_10000341C(&qword_100267B20, &unk_1001E2520);
  v93 = *(v10 - 8);
  v94 = v10;
  v11 = *(v93 + 64);
  __chkstk_darwin(v10);
  v92 = &v73 - v12;
  v87 = type metadata accessor for AutomaticHoverEffect();
  v79 = *(v87 - 8);
  v13 = *(v79 + 64);
  __chkstk_darwin(v87);
  v78 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for UnevenRoundedRectangle();
  v15 = *(*(v96 - 8) + 64);
  v16 = __chkstk_darwin(v96);
  v77 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v76 = &v73 - v18;
  v19 = sub_10000341C(&qword_1002634E0, &qword_1001DAE70);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = &v73 - v21;
  v75 = sub_10000341C(&qword_100267B28, &qword_1001E2530);
  v23 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75);
  v25 = &v73 - v24;
  v80 = sub_10000341C(&qword_100267B30, &qword_1001E2538);
  v26 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80);
  v28 = &v73 - v27;
  v29 = sub_10000341C(&qword_100267B38, &qword_1001E2540);
  v82 = *(v29 - 8);
  v83 = v29;
  v30 = *(v82 + 64);
  __chkstk_darwin(v29);
  v97 = &v73 - v31;
  v74 = static VerticalAlignment.center.getter();
  v106 = 1;
  sub_1001B051C(v1, &v99);
  v111 = v103;
  v112[0] = v104[0];
  *(v112 + 9) = *(v104 + 9);
  v107 = v99;
  v108 = v100;
  v109 = v101;
  v110 = v102;
  v113[0] = v99;
  v113[1] = v100;
  v113[2] = v101;
  v113[3] = v102;
  v113[4] = v103;
  v114[0] = v104[0];
  *(v114 + 9) = *(v104 + 9);
  sub_1000081F8(&v107, v98, &qword_100267B40, &qword_1001E2548);
  sub_10000F500(v113, &qword_100267B40, &qword_1001E2548);
  *(&v105[3] + 7) = v110;
  *(&v105[4] + 7) = v111;
  *(&v105[5] + 7) = v112[0];
  v105[6] = *(v112 + 9);
  *(v105 + 7) = v107;
  *(&v105[1] + 7) = v108;
  *(&v105[2] + 7) = v109;
  v32 = v106;
  v33 = *(v1 + 24);
  v34 = *(v1 + 32);
  sub_100027874(v2, v2[3]);
  if ((*(v34 + 24))(v33, v34))
  {
    if (qword_10025A8E0 != -1)
    {
      swift_once();
    }

    v35 = qword_100277410;
  }

  else
  {
    if (qword_10025A8F8 != -1)
    {
      swift_once();
    }

    v35 = qword_100277458;
  }

  v36 = sub_10000F34C(v96, v35);
  v37 = v76;
  sub_1001C0308(v36, v76, &type metadata accessor for UnevenRoundedRectangle);
  static Color.gray.getter();
  v38 = *(v1 + 64);
  LOBYTE(v99) = *(v1 + 56);
  *(&v99 + 1) = v38;
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.getter();
  v39 = Color.opacity(_:)();

  sub_1001C0374(v37, v22, &type metadata accessor for UnevenRoundedRectangle);
  *&v22[*(v19 + 52)] = v39;
  *&v22[*(v19 + 56)] = 256;
  v40 = static Alignment.center.getter();
  v42 = v41;
  v43 = &v25[*(v75 + 36)];
  sub_10002A894(v22, v43, &qword_1002634E0, &qword_1001DAE70);
  v44 = (v43 + *(sub_10000341C(&qword_100267B48, &qword_1001E2550) + 36));
  *v44 = v40;
  v44[1] = v42;
  v45 = v105[3];
  *(v25 + 49) = v105[2];
  v46 = v105[0];
  *(v25 + 33) = v105[1];
  *(v25 + 17) = v46;
  *(v25 + 113) = v105[6];
  v47 = v105[4];
  *(v25 + 97) = v105[5];
  *(v25 + 81) = v47;
  *v25 = v74;
  *(v25 + 1) = 0;
  v25[16] = v32;
  *(v25 + 65) = v45;
  v48 = v2[3];
  v49 = v2[4];
  sub_100027874(v2, v48);
  if ((*(v49 + 24))(v48, v49))
  {
    if (qword_10025A8E0 != -1)
    {
      swift_once();
    }

    v50 = qword_100277410;
  }

  else
  {
    if (qword_10025A8F8 != -1)
    {
      swift_once();
    }

    v50 = qword_100277458;
  }

  v51 = sub_10000F34C(v96, v50);
  v52 = v77;
  sub_1001C0308(v51, v77, &type metadata accessor for UnevenRoundedRectangle);
  v53 = v80;
  v54 = &v28[*(v80 + 36)];
  sub_1001C0374(v52, v54, &type metadata accessor for UnevenRoundedRectangle);
  *(v54 + *(sub_10000341C(&qword_100267AE8, &qword_1001E2510) + 36)) = 0;
  sub_10002A894(v25, v28, &qword_100267B28, &qword_1001E2530);
  v55 = v78;
  static CustomHoverEffect<>.automatic.getter();
  v96 = sub_1001C20DC();
  v56 = sub_1001C0124(&qword_1002635F8, &type metadata accessor for AutomaticHoverEffect);
  v57 = v87;
  View.hoverEffect<A>(_:isEnabled:)();
  (*(v79 + 8))(v55, v57);
  sub_10000F500(v28, &qword_100267B30, &qword_1001E2538);
  static CoordinateSpaceProtocol<>.global.getter();
  v58 = v85;
  DragGesture.init<A>(minimumDistance:coordinateSpace:)();
  sub_1001C2278(v2, &v99);
  v59 = swift_allocObject();
  v60 = v102;
  *(v59 + 48) = v101;
  *(v59 + 64) = v60;
  *(v59 + 80) = v103;
  v61 = v100;
  *(v59 + 16) = v99;
  *(v59 + 32) = v61;
  sub_1001C0124(&qword_100267B78, &type metadata accessor for DragGesture);
  sub_1001C0124(&qword_100267B80, &type metadata accessor for DragGesture.Value);
  v62 = v88;
  v63 = v89;
  Gesture<>.onChanged(_:)();

  (*(v86 + 8))(v58, v62);
  sub_1001C2278(v2, &v99);
  v64 = swift_allocObject();
  v65 = v102;
  *(v64 + 48) = v101;
  *(v64 + 64) = v65;
  *(v64 + 80) = v103;
  v66 = v100;
  *(v64 + 16) = v99;
  *(v64 + 32) = v66;
  sub_100007120(&qword_100267B88, &qword_100267B18, &qword_1001E2518);
  v68 = v91;
  v67 = v92;
  Gesture.onEnded(_:)();

  (*(v90 + 8))(v63, v68);
  static GestureMask.all.getter();
  *&v99 = v53;
  *(&v99 + 1) = v57;
  *&v100 = v96;
  *(&v100 + 1) = v56;
  swift_getOpaqueTypeConformance2();
  sub_100007120(&qword_100267B90, &qword_100267B20, &unk_1001E2520);
  v69 = v94;
  v70 = v83;
  v71 = v97;
  View.gesture<A>(_:including:)();
  (*(v93 + 8))(v67, v69);
  return (*(v82 + 8))(v71, v70);
}

uint64_t sub_1001B051C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static HorizontalAlignment.center.getter();
  sub_1001B0664(a1, &v22);
  v5 = v22;
  v6 = v23;
  v7 = v24;
  v9 = v25;
  v8 = v26;
  v10 = v27;
  v15[0] = v27;
  v17 = 1;
  v18 = v4;
  LOBYTE(v19) = 1;
  *(&v19 + 1) = v22;
  LOBYTE(v20) = v23;
  *(&v20 + 1) = v24;
  *v21 = v25;
  *&v21[16] = v26;
  v21[24] = v27;
  *&v16[7] = v4;
  *&v16[64] = *&v21[9];
  *&v16[55] = v25;
  *&v16[39] = v20;
  *&v16[23] = v19;
  v15[80] = 1;
  *a2 = 0;
  *(a2 + 8) = 1;
  v11 = *&v16[16];
  *(a2 + 9) = *v16;
  v12 = *&v16[32];
  v13 = *&v16[48];
  *(a2 + 73) = *&v16[64];
  *(a2 + 57) = v13;
  *(a2 + 41) = v12;
  *(a2 + 25) = v11;
  *(a2 + 96) = 0;
  *(a2 + 104) = 1;
  v22 = v4;
  v23 = 0;
  LOBYTE(v24) = 1;
  *&v25 = v5;
  BYTE8(v25) = v6;
  v26 = v7;
  v27 = v9;
  v28 = v8;
  v29 = v10;
  sub_1000081F8(&v18, v15, &qword_100267B98, &unk_1001E2560);
  return sub_10000F500(&v22, &qword_100267B98, &unk_1001E2560);
}

uint64_t sub_1001B0664@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000341C(&qword_10025DAA8, &qword_1001D2D08);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v18 - v6;
  v8 = a1[3];
  v9 = a1[4];
  sub_100027874(a1, v8);
  (*(v9 + 8))(v8, v9);
  Image.init(systemName:)();
  v10 = enum case for Image.TemplateRenderingMode.template(_:);
  v11 = type metadata accessor for Image.TemplateRenderingMode();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v7, v10, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  v13 = Image.renderingMode(_:)();

  sub_10000F500(v7, &qword_10025DAA8, &qword_1001D2D08);
  v14 = a1[3];
  v15 = a1[4];
  sub_100027874(a1, v14);
  v16 = (*(v15 + 16))(v14, v15);
  result = swift_getKeyPath();
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v13;
  *(a2 + 24) = result;
  *(a2 + 32) = v16;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  return result;
}

uint64_t sub_1001B0838(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 56);
  v4 = *(a2 + 64);
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  return State.wrappedValue.setter();
}

uint64_t sub_1001B0898(uint64_t a1, uint64_t a2)
{
  v6 = *(a2 + 56);
  v7 = *(a2 + 64);
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  v3 = State.wrappedValue.setter();
  v4 = *(a2 + 48);
  return (*(a2 + 40))(v3);
}

uint64_t sub_1001B0918()
{
  v5 = *(v0 + 80);
  v8 = *(v0 + 96);
  sub_10000341C(&qword_100260098, &unk_1001D56B0);
  State.wrappedValue.getter();

  v1 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v1 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v1)
  {
    v6 = *(v0 + 80);
    v9 = *(v0 + 96);
    State.wrappedValue.getter();
    sub_1001B0A20(v3, v4);
  }

  else
  {
    sub_1001B0A20(0, 0);
    v7 = *(v0 + 24);
    v10 = *(v0 + 40);
    sub_10000341C(&qword_100262800, &qword_1001D9490);
    return Binding.wrappedValue.setter();
  }
}

uint64_t sub_1001B0A20(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = a1;
  if (a2)
  {
    if (!a1 && a2 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v4 = 0;
      v3 = 0;
    }

    else
    {
    }
  }

  v6 = *(v2 + 48);
  v5 = *(v2 + 56);
  v15 = v6;
  v7 = *(v2 + 64);
  *&v12 = v6;
  *(&v12 + 1) = v5;
  v13 = *(v2 + 64);
  v14 = v7;

  sub_100063D8C(&v15, &v10);
  sub_1000081F8(&v14, &v10, &qword_1002654A8, &qword_1001DDEC8);
  sub_10000341C(&qword_100267AB0, &qword_1001E24D0);
  Binding.wrappedValue.getter();
  if (!v11)
  {
    if (!v3)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (!v3)
  {

    goto LABEL_17;
  }

  if (v10 != v4 || v11 != v3)
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      goto LABEL_16;
    }

LABEL_17:
    *&v12 = v6;
    *(&v12 + 1) = v5;
    v13 = *(v2 + 64);
    v10 = v4;
    v11 = v3;
    Binding.wrappedValue.setter();
    goto LABEL_18;
  }

LABEL_16:

LABEL_18:
  sub_100063DE8(&v15);

  sub_10000F500(&v14, &qword_1002654A8, &qword_1001DDEC8);
  v12 = *(v2 + 104);
  LOBYTE(v13) = *(v2 + 120);
  LOBYTE(v10) = 0;
  sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
  return FocusState.wrappedValue.setter();
}

uint64_t sub_1001B0C0C()
{
  v1 = v0;
  v2 = *(v0 + 96);
  v12 = *(v0 + 80);
  v10 = v2;
  v11 = v2;
  v9 = *(v0 + 80);
  sub_10004CC28(&v12, &v7);
  sub_1000081F8(&v11, &v7, &qword_100267AB8, &unk_1001E24D8);
  sub_10000341C(&qword_100260098, &unk_1001D56B0);
  State.wrappedValue.getter();
  v4 = v7;
  v3 = v8;

  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v9 = *(v1 + 80);
    v10 = v2;
    v7 = 0;
    v8 = 0xE000000000000000;
    State.wrappedValue.setter();
  }

  sub_1001C1C90(&v12);
  sub_10000F500(&v11, &qword_100267AB8, &unk_1001E24D8);
  v9 = *(v1 + 24);
  LOBYTE(v10) = *(v1 + 40);
  LOBYTE(v7) = 0;
  sub_10000341C(&qword_100262800, &qword_1001D9490);
  return Binding.wrappedValue.setter();
}

uint64_t sub_1001B0D44@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v71 = a2;
  v3 = type metadata accessor for Divider();
  v72 = *(v3 - 8);
  v73 = v3;
  v4 = *(v72 + 64);
  v5 = __chkstk_darwin(v3);
  v77 = v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v75 = v64 - v7;
  v8 = type metadata accessor for AutomaticHoverEffect();
  v66 = *(v8 - 8);
  v9 = *(v66 + 64);
  __chkstk_darwin(v8);
  v11 = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_10000341C(&qword_100267A78, &qword_1001E2490);
  v12 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65);
  v14 = (v64 - v13);
  v15 = sub_10000341C(&qword_100267A80, &qword_1001E2498);
  v16 = *(v15 - 8);
  v67 = v15;
  v68 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v64[0] = v64 - v18;
  v19 = sub_10000341C(&qword_100267A88, &qword_1001E24A0);
  v69 = *(v19 - 8);
  v70 = v19;
  v20 = *(v69 + 64);
  v21 = __chkstk_darwin(v19);
  v76 = v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v74 = v64 - v23;
  *v14 = static Alignment.center.getter();
  v14[1] = v24;
  v25 = sub_10000341C(&qword_100267A90, &unk_1001E24A8);
  sub_1001B1690(a1, v14 + *(v25 + 44));
  static CustomHoverEffect<>.automatic.getter();
  v90 = *(a1 + 104);
  v91 = *(a1 + 120);
  v87 = *(a1 + 104);
  LOBYTE(v88) = *(a1 + 120);
  v64[1] = sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
  FocusState.wrappedValue.getter();
  v26 = sub_100007120(&qword_100267A98, &qword_100267A78, &qword_1001E2490);
  v27 = sub_1001C0124(&qword_1002635F8, &type metadata accessor for AutomaticHoverEffect);
  v28 = v65;
  View.hoverEffect<A>(_:isEnabled:)();
  (*(v66 + 8))(v11, v8);
  sub_10000F500(v14, &qword_100267A78, &qword_1001E2490);
  v29 = swift_allocObject();
  v30 = *(a1 + 80);
  v29[5] = *(a1 + 64);
  v29[6] = v30;
  v29[7] = *(a1 + 96);
  *(v29 + 121) = *(a1 + 105);
  v31 = *(a1 + 16);
  v29[1] = *a1;
  v29[2] = v31;
  v32 = *(a1 + 48);
  v29[3] = *(a1 + 32);
  v29[4] = v32;
  sub_1001C0AC8(a1, &v87);
  *&v87 = v28;
  *(&v87 + 1) = v8;
  v88 = v26;
  v89 = v27;
  swift_getOpaqueTypeConformance2();
  v33 = v74;
  v34 = v67;
  v35 = v64[0];
  View.onTapGesture(count:perform:)();

  (*(v68 + 8))(v35, v34);
  v36 = v75;
  Divider.init()();
  v87 = v90;
  LOBYTE(v88) = v91;
  FocusState.wrappedValue.getter();
  if (v78[0] == 1)
  {
    v37 = static Color.blue.getter();
    v81 = &type metadata for CustomEntryView.CheckmarkWidgetAppearance;
    v82 = &off_100253440;
    v38 = swift_allocObject();
    v80[0] = v38;
    *(v38 + 16) = 0x72616D6B63656863;
    *(v38 + 24) = 0xE90000000000006BLL;
    *(v38 + 32) = v37;
    *(v38 + 40) = 1;
    v39 = swift_allocObject();
    v40 = *(a1 + 80);
    v39[5] = *(a1 + 64);
    v39[6] = v40;
    v39[7] = *(a1 + 96);
    *(v39 + 121) = *(a1 + 105);
    v41 = *(a1 + 16);
    v39[1] = *a1;
    v39[2] = v41;
    v42 = *(a1 + 48);
    v39[3] = *(a1 + 32);
    v39[4] = v42;
    v78[0] = 0;
    sub_1001C0AC8(a1, &v87);
    State.init(wrappedValue:)();
    v85 = v87;
    v86 = *(&v87 + 1);
    v83 = sub_1001C1C6C;
    v84 = v39;
    v43 = *(a1 + 16);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    sub_1000081F8(v80, v78, &qword_100267768, &qword_1001E1EB0);
    v79 = 0;
  }

  else
  {
    v44 = static Color.gray.getter();
    v81 = &type metadata for CustomEntryView.XmarkWidgetAppearance;
    v82 = &off_100253460;
    v45 = swift_allocObject();
    v80[0] = v45;
    *(v45 + 16) = 0x6B72616D78;
    *(v45 + 24) = 0xE500000000000000;
    *(v45 + 32) = v44;
    *(v45 + 40) = 1;
    v46 = swift_allocObject();
    v47 = *(a1 + 80);
    v46[5] = *(a1 + 64);
    v46[6] = v47;
    v46[7] = *(a1 + 96);
    *(v46 + 121) = *(a1 + 105);
    v48 = *(a1 + 16);
    v46[1] = *a1;
    v46[2] = v48;
    v49 = *(a1 + 48);
    v46[3] = *(a1 + 32);
    v46[4] = v49;
    v78[0] = 0;
    sub_1001C0AC8(a1, &v87);
    State.init(wrappedValue:)();
    v85 = v87;
    v86 = *(&v87 + 1);
    v83 = sub_1001C1C08;
    v84 = v46;
    v50 = *(a1 + 16);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    sub_1000081F8(v80, v78, &qword_100267768, &qword_1001E1EB0);
    v79 = 1;
  }

  sub_10000341C(&qword_100267768, &qword_1001E1EB0);
  sub_1001C0580();
  _ConditionalContent<>.init(storage:)();
  sub_10000F500(v80, &qword_100267768, &qword_1001E1EB0);
  v52 = v69;
  v51 = v70;
  v53 = *(v69 + 16);
  v54 = v76;
  v53(v76, v33, v70);
  v55 = v72;
  v68 = *(v72 + 16);
  v56 = v36;
  v57 = v73;
  (v68)(v77, v56, v73);
  sub_1000081F8(&v87, v78, &qword_100267AA0, &qword_1001E24B8);
  v58 = v71;
  v53(v71, v54, v51);
  v59 = sub_10000341C(&qword_100267AA8, &unk_1001E24C0);
  v60 = v77;
  (v68)(&v58[*(v59 + 48)], v77, v57);
  sub_1000081F8(v78, &v58[*(v59 + 64)], &qword_100267AA0, &qword_1001E24B8);
  sub_10000F500(&v87, &qword_100267AA0, &qword_1001E24B8);
  v61 = *(v55 + 8);
  v61(v75, v57);
  v62 = *(v52 + 8);
  v62(v74, v51);
  sub_10000F500(v78, &qword_100267AA0, &qword_1001E24B8);
  v61(v60, v57);
  return (v62)(v76, v51);
}

uint64_t sub_1001B1690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v55 = sub_10000341C(&qword_10025CB20, &qword_1001D1E40);
  v3 = *(v55 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v55);
  v6 = &v53 - v5;
  v54 = sub_10000341C(&qword_100267AC0, &qword_1001E24E8);
  v7 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54);
  v9 = &v53 - v8;
  v57 = sub_10000341C(&qword_100267AC8, &qword_1001E24F0);
  v10 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57);
  v58 = &v53 - v11;
  v59 = sub_10000341C(&qword_100267AD0, &qword_1001E24F8);
  v12 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v60 = &v53 - v13;
  v65 = sub_10000341C(&qword_100267AD8, &qword_1001E2500);
  v62 = *(v65 - 8);
  v14 = *(v62 + 64);
  __chkstk_darwin(v65);
  v61 = &v53 - v15;
  v64 = sub_10000341C(&qword_100267AE0, &qword_1001E2508);
  v16 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64);
  v63 = &v53 - v17;
  if (qword_10025A898 != -1)
  {
    swift_once();
  }

  v72 = *(a1 + 80);
  v73 = *(a1 + 96);
  v69 = *(a1 + 80);
  *&v70 = *(a1 + 96);

  v56 = sub_10000341C(&qword_100260098, &unk_1001D56B0);
  State.projectedValue.getter();
  TextField<>.init(_:text:onEditingChanged:onCommit:)();
  v67 = *(a1 + 104);
  LOBYTE(v68) = *(a1 + 120);
  sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
  FocusState.projectedValue.getter();
  sub_100007120(&qword_10025CB50, &qword_10025CB20, &qword_1001D1E40);
  v18 = v55;
  View.focused(_:)();

  (*(v3 + 8))(v6, v18);
  v19 = *(a1 + 16);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v20 = &v9[*(v54 + 36)];
  v21 = v70;
  *v20 = v69;
  *(v20 + 1) = v21;
  *(v20 + 2) = v71;
  sub_10000341C(&unk_100263510, &qword_1001DAEA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001CF9E0;
  v23 = static Edge.Set.leading.getter();
  *(inited + 32) = v23;
  v24 = static Edge.Set.trailing.getter();
  *(inited + 33) = v24;
  v25 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v23)
  {
    v25 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v24)
  {
    v25 = Edge.Set.init(rawValue:)();
  }

  v26 = v58;
  v27 = *(a1 + 8);
  EdgeInsets.init(_all:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_10002A894(v9, v26, &qword_100267AC0, &qword_1001E24E8);
  v36 = v26 + *(v57 + 36);
  *v36 = v25;
  *(v36 + 8) = v29;
  *(v36 + 16) = v31;
  *(v36 + 24) = v33;
  *(v36 + 32) = v35;
  *(v36 + 40) = 0;
  if (qword_10025A8D8 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for UnevenRoundedRectangle();
  v38 = sub_10000F34C(v37, qword_1002773F8);
  v39 = v60;
  v40 = &v60[*(v59 + 36)];
  sub_1001C0308(v38, v40, &type metadata accessor for UnevenRoundedRectangle);
  *(v40 + *(sub_10000341C(&qword_100267AE8, &qword_1001E2510) + 36)) = 0;
  sub_10002A894(v26, v39, &qword_100267AC8, &qword_1001E24F0);
  v67 = v72;
  v68 = v73;
  State.wrappedValue.getter();
  v41 = swift_allocObject();
  v42 = *(a1 + 80);
  v41[5] = *(a1 + 64);
  v41[6] = v42;
  v41[7] = *(a1 + 96);
  *(v41 + 121) = *(a1 + 105);
  v43 = *(a1 + 16);
  v41[1] = *a1;
  v41[2] = v43;
  v44 = *(a1 + 48);
  v41[3] = *(a1 + 32);
  v41[4] = v44;
  sub_1001C0AC8(a1, &v67);
  sub_1001C1CEC();
  v45 = v61;
  View.onChange<A>(of:initial:_:)();

  sub_10000F500(v39, &qword_100267AD0, &qword_1001E24F8);
  v46 = swift_allocObject();
  v47 = *(a1 + 80);
  v46[5] = *(a1 + 64);
  v46[6] = v47;
  v46[7] = *(a1 + 96);
  *(v46 + 121) = *(a1 + 105);
  v48 = *(a1 + 16);
  v46[1] = *a1;
  v46[2] = v48;
  v49 = *(a1 + 48);
  v46[3] = *(a1 + 32);
  v46[4] = v49;
  v50 = v63;
  (*(v62 + 32))(v63, v45, v65);
  v51 = (v50 + *(v64 + 36));
  *v51 = sub_1001C1F9C;
  v51[1] = v46;
  v51[2] = 0;
  v51[3] = 0;
  sub_1001C0AC8(a1, &v67);
  sub_1001C2000();
  View.hoverEffectDisabled(_:)();
  return sub_10000F500(v50, &qword_100267AE0, &qword_1001E2508);
}

uint64_t sub_1001B1E78(uint64_t a1)
{
  v10 = *(a1 + 80);
  v2 = *(a1 + 96);
  v12 = v10;
  v11 = v2;
  v8 = *(a1 + 80);
  v9 = v2;
  sub_10004CC28(&v12, v7);
  sub_1000081F8(&v11, v7, &qword_100267AB8, &unk_1001E24D8);
  sub_10000341C(&qword_100260098, &unk_1001D56B0);
  State.wrappedValue.getter();
  sub_10009AFF4(*a1);

  v3 = static String._fromSubstring(_:)();
  v5 = v4;

  v8 = v10;
  v9 = v2;
  v7[0] = v3;
  v7[1] = v5;
  State.wrappedValue.setter();
  sub_1001C1C90(&v12);
  return sub_10000F500(&v11, &qword_100267AB8, &unk_1001E24D8);
}

uint64_t sub_1001B1FB8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[5];
  v8[4] = v1[4];
  v8[5] = v3;
  v9[0] = v1[6];
  *(v9 + 9) = *(v1 + 105);
  v4 = v1[1];
  v8[0] = *v1;
  v8[1] = v4;
  v5 = v1[3];
  v8[2] = v1[2];
  v8[3] = v5;
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v6 = sub_10000341C(&qword_100267A70, &qword_1001E2488);
  return sub_1001B0D44(v8, (a1 + *(v6 + 44)));
}

uint64_t sub_1001B2038(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = a1;
  if (a2 && (!a1 && a2 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v4 = 0;
    v3 = 0;
  }

  else
  {
  }

  v6 = *(v2 + 32);
  v5 = *(v2 + 40);
  v15 = v6;
  v7 = *(v2 + 48);
  *&v12 = v6;
  *(&v12 + 1) = v5;
  v13 = *(v2 + 48);
  v14 = v7;

  sub_100063D8C(&v15, &v10);
  sub_1000081F8(&v14, &v10, &qword_1002654A8, &qword_1001DDEC8);
  sub_10000341C(&qword_100267AB0, &qword_1001E24D0);
  Binding.wrappedValue.getter();
  if (!v11)
  {
    if (!v3)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (!v3)
  {

    goto LABEL_17;
  }

  if (v10 != v4 || v11 != v3)
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      goto LABEL_16;
    }

LABEL_17:
    *&v12 = v6;
    *(&v12 + 1) = v5;
    v13 = *(v2 + 48);
    v10 = v4;
    v11 = v3;
    Binding.wrappedValue.setter();
    goto LABEL_18;
  }

LABEL_16:

LABEL_18:
  sub_100063DE8(&v15);

  sub_10000F500(&v14, &qword_1002654A8, &qword_1001DDEC8);
  v12 = *(v2 + 8);
  LOBYTE(v13) = *(v2 + 24);
  LOBYTE(v10) = 0;
  sub_10000341C(&qword_100262800, &qword_1001D9490);
  return Binding.wrappedValue.setter();
}

uint64_t sub_1001B2224@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v78 = a1;
  v3 = type metadata accessor for SubmitTriggers();
  v76 = *(v3 - 8);
  v77 = v3;
  v4 = *(v76 + 64);
  __chkstk_darwin(v3);
  v75 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for RoundedBorderTextFieldStyle();
  v59 = *(v66 - 8);
  v6 = *(v59 + 64);
  __chkstk_darwin(v66);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_10000341C(&qword_10025CB20, &qword_1001D1E40);
  v58 = *(v60 - 8);
  v9 = *(v58 + 64);
  __chkstk_darwin(v60);
  v11 = &v57 - v10;
  v12 = sub_10000341C(&qword_100267ED8, &qword_1001E2870);
  v62 = *(v12 - 8);
  v63 = v12;
  v13 = *(v62 + 64);
  __chkstk_darwin(v12);
  v15 = &v57 - v14;
  v61 = sub_10000341C(&qword_100267EE0, &qword_1001E2878);
  v16 = *(*(v61 - 8) + 64);
  __chkstk_darwin(v61);
  v65 = &v57 - v17;
  v64 = sub_10000341C(&qword_100267EE8, &qword_1001E2880);
  v18 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64);
  v67 = &v57 - v19;
  v68 = sub_10000341C(&qword_100267EF0, &qword_1001E2888);
  v20 = *(*(v68 - 8) + 64);
  __chkstk_darwin(v68);
  v71 = &v57 - v21;
  v22 = sub_10000341C(&qword_100267EF8, &qword_1001E2890);
  v73 = *(v22 - 8);
  v74 = v22;
  v23 = *(v73 + 64);
  __chkstk_darwin(v22);
  v72 = &v57 - v24;
  v70 = sub_10000341C(&qword_100267F00, &qword_1001E2898);
  v25 = *(*(v70 - 8) + 64);
  __chkstk_darwin(v70);
  v69 = &v57 - v26;
  if (qword_10025A898 != -1)
  {
    swift_once();
  }

  v79 = *(v1 + 4);
  v80 = v1[10];

  sub_10000341C(&qword_100260098, &unk_1001D56B0);
  State.projectedValue.getter();
  TextField<>.init(_:text:onEditingChanged:onCommit:)();
  RoundedBorderTextFieldStyle.init()();
  v27 = sub_100007120(&qword_10025CB50, &qword_10025CB20, &qword_1001D1E40);
  v28 = sub_1001C0124(&qword_100267F08, &type metadata accessor for RoundedBorderTextFieldStyle);
  v29 = v60;
  v30 = v66;
  View.textFieldStyle<A>(_:)();
  (*(v59 + 8))(v8, v30);
  (*(v58 + 8))(v11, v29);
  v84 = *(v1 + 11);
  LOBYTE(v85) = *(v1 + 104);
  sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
  FocusState.projectedValue.getter();
  *&v84 = v29;
  *(&v84 + 1) = v30;
  *&v85 = v27;
  *(&v85 + 1) = v28;
  swift_getOpaqueTypeConformance2();
  v31 = v65;
  v32 = v63;
  View.focused(_:)();

  (*(v62 + 8))(v15, v32);
  v33 = *v1;
  static Alignment.trailing.getter();
  _FrameLayout.init(width:height:alignment:)();
  v34 = (v31 + *(v61 + 36));
  v35 = v82;
  *v34 = v81;
  v34[1] = v35;
  v34[2] = v83;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v36 = v67;
  sub_10002A894(v31, v67, &qword_100267EE0, &qword_1001E2878);
  v37 = (v36 + *(v64 + 36));
  v38 = v89;
  v37[4] = v88;
  v37[5] = v38;
  v37[6] = v90;
  v39 = v85;
  *v37 = v84;
  v37[1] = v39;
  v40 = v87;
  v37[2] = v86;
  v37[3] = v40;
  KeyPath = swift_getKeyPath();
  v42 = v71;
  sub_10002A894(v36, v71, &qword_100267EE8, &qword_1001E2880);
  v43 = v42 + *(v68 + 36);
  *v43 = KeyPath;
  *(v43 + 8) = 2;
  v44 = swift_allocObject();
  v45 = v2[5];
  v44[5] = v2[4];
  v44[6] = v45;
  *(v44 + 105) = *(v2 + 89);
  v46 = v2[1];
  v44[1] = *v2;
  v44[2] = v46;
  v47 = v2[3];
  v44[3] = v2[2];
  v44[4] = v47;
  sub_1001C36A8(v2, &v79);
  v48 = v75;
  static SubmitTriggers.text.getter();
  sub_1001C36E0();
  v49 = v72;
  View.onSubmit(of:_:)();

  (*(v76 + 8))(v48, v77);
  sub_10000F500(v42, &qword_100267EF0, &qword_1001E2888);
  v50 = swift_allocObject();
  v51 = v2[5];
  v50[5] = v2[4];
  v50[6] = v51;
  *(v50 + 105) = *(v2 + 89);
  v52 = v2[1];
  v50[1] = *v2;
  v50[2] = v52;
  v53 = v2[3];
  v50[3] = v2[2];
  v50[4] = v53;
  v54 = v69;
  (*(v73 + 32))(v69, v49, v74);
  v55 = (v54 + *(v70 + 36));
  *v55 = sub_1001C39AC;
  v55[1] = v50;
  v55[2] = 0;
  v55[3] = 0;
  sub_10002A894(v54, v78, &qword_100267F00, &qword_1001E2898);
  return sub_1001C36A8(v2, &v79);
}

uint64_t sub_1001B2B24(uint64_t a1)
{
  v4 = *(a1 + 64);
  v5 = *(a1 + 80);
  sub_10000341C(&qword_100260098, &unk_1001D56B0);
  State.wrappedValue.getter();
  sub_1001B2038(v2, v3);
}

uint64_t sub_1001B2B9C(_OWORD *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v2 - 8);
  v3 = *(v19 + 64);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v6 = *(v18 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v18);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000081B0(0, &qword_10025D5D0, OS_dispatch_queue_ptr);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  v12 = a1[5];
  v11[5] = a1[4];
  v11[6] = v12;
  *(v11 + 105) = *(a1 + 89);
  v13 = a1[1];
  v11[1] = *a1;
  v11[2] = v13;
  v14 = a1[3];
  v11[3] = a1[2];
  v11[4] = v14;
  aBlock[4] = sub_1001C3A24;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001256BC;
  aBlock[3] = &unk_100253308;
  v15 = _Block_copy(aBlock);
  sub_1001C36A8(a1, &v20);

  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_1001C0124(&unk_100262460, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000341C(&unk_10025D5E0, &qword_1001DAE20);
  sub_100007120(&qword_100262470, &unk_10025D5E0, &qword_1001DAE20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v19 + 8))(v5, v2);
  return (*(v6 + 8))(v9, v18);
}

uint64_t sub_1001B2EBC@<X0>(uint64_t a1@<X8>)
{
  v7 = v1[4];
  *v8 = v1[5];
  *&v8[9] = *(v1 + 89);
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_1001B2224(a1);
}

uint64_t sub_1001B2F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  sub_1001C0124(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v15 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer);
  v6 = *(v15 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer + 8);

  if (!v6)
  {
    goto LABEL_7;
  }

  if (v7 == a1 && v6 == a2)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
LABEL_7:
      Bindable.wrappedValue.getter();

      sub_10019BEEC(a1, a2);

      Bindable.wrappedValue.getter();
      sub_10019C714(a3, 0);
    }
  }

  Bindable.wrappedValue.getter();
  v10 = (v15 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer);
  if (*(v15 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer + 8))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *v10 = 0;
    v10[1] = 0;
  }

  Bindable.wrappedValue.getter();
  v12 = v15 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedIndex;
  if (*(v15 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedIndex + 8))
  {
    *v12 = 0;
    *(v12 + 8) = 1;
  }

  v14 = swift_getKeyPath();
  __chkstk_darwin(v14);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1001B323C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000341C(&qword_1002676E8, &qword_1001E1E18);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v24[-v9];
  v11 = static VerticalAlignment.center.getter();
  v30 = v11;
  LOBYTE(v32) = 1;
  sub_1001BDD40(&v37);
  v12 = v37;
  v29 = v37;
  v26 = v38;
  v25 = v39;
  v13 = v40;
  v14 = v41;
  v28 = v41;
  v15 = v42;
  LOBYTE(v37) = v39;
  v31 = v42;
  v16 = v32;
  v27 = v32;
  *v10 = static VerticalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v17 = sub_10000341C(&qword_1002676F0, &qword_1001E1E20);
  sub_1001B34A8(a1, &v10[*(v17 + 44)]);
  sub_1000081F8(v10, v8, &qword_1002676E8, &qword_1001E1E18);
  v32 = v11;
  LOBYTE(v33) = v16;
  *(&v33 + 1) = v12;
  v18 = v26;
  *&v34 = v26;
  v19 = v25;
  BYTE8(v34) = v25;
  *&v35 = v13;
  *(&v35 + 1) = v14;
  v36 = v15;
  *(a2 + 64) = v15;
  v20 = v35;
  *(a2 + 32) = v34;
  *(a2 + 48) = v20;
  v21 = v33;
  *a2 = v32;
  *(a2 + 16) = v21;
  v22 = sub_10000341C(&qword_1002676F8, &qword_1001E1E28);
  sub_1000081F8(v8, a2 + *(v22 + 48), &qword_1002676E8, &qword_1001E1E18);
  sub_1000081F8(&v32, &v37, &qword_100267700, &qword_1001E1E30);
  sub_10000F500(v10, &qword_1002676E8, &qword_1001E1E18);
  sub_10000F500(v8, &qword_1002676E8, &qword_1001E1E18);
  v37 = v30;
  v38 = 0;
  v39 = v27;
  v40 = v29;
  v41 = v18;
  v42 = v19;
  v43 = v13;
  v44 = v28;
  v45 = v15;
  return sub_10000F500(&v37, &qword_100267700, &qword_1001E1E30);
}

void sub_1001B34A8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v129 = a2;
  v128 = sub_10000341C(&qword_100267708, &qword_1001E1E38);
  v3 = *(*(v128 - 8) + 64);
  __chkstk_darwin(v128);
  v5 = v99 - v4;
  v6 = sub_10000341C(&qword_100267710, &qword_1001E1E40);
  v121 = *(v6 - 8);
  v7 = *(v121 + 64);
  __chkstk_darwin(v6);
  v114 = v99 - v8;
  v111 = type metadata accessor for AutomaticHoverEffect();
  v109 = *(v111 - 8);
  v9 = *(v109 + 64);
  __chkstk_darwin(v111);
  v108 = v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_10000341C(&qword_100267718, &qword_1001E1E48);
  v113 = *(v116 - 8);
  v11 = *(v113 + 64);
  v12 = __chkstk_darwin(v116);
  v112 = v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v110 = v99 - v14;
  v115 = type metadata accessor for Divider();
  v106 = *(v115 - 8);
  v15 = *(v106 + 64);
  __chkstk_darwin(v115);
  v105 = v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_10000341C(&qword_100267720, &qword_1001E1E50);
  v17 = *(*(v104 - 8) + 64);
  v18 = __chkstk_darwin(v104);
  v107 = v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v103 = v99 - v21;
  __chkstk_darwin(v20);
  v123 = v99 - v22;
  v23 = sub_10000341C(&qword_100267728, &qword_1001E1E58);
  v24 = *(*(v23 - 8) + 64);
  v25 = __chkstk_darwin(v23 - 8);
  v118 = v99 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v126 = v99 - v27;
  v28 = type metadata accessor for MultichoiceRow(0);
  v29 = v28 - 8;
  v122 = *(v28 - 8);
  v30 = *(v122 + 64);
  __chkstk_darwin(v28);
  v124 = v31;
  v125 = v99 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_10000341C(&qword_100267730, &qword_1001E1E60);
  v119 = *(v120 - 8);
  v32 = *(v119 + 64);
  v33 = __chkstk_darwin(v120);
  v117 = v99 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v130 = v99 - v35;
  v127 = sub_10000341C(&qword_100267738, qword_1001E1E68);
  v36 = *(*(v127 - 8) + 64);
  __chkstk_darwin(v127);
  v38 = (v99 - v37);
  v39 = sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  v40 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v42 = v99 - v41;
  v43 = a1;
  v44 = a1 + *(v29 + 28);
  v45 = *v44;
  v46 = *(v44 + 8);
  LOBYTE(v134) = *v44;
  *(&v134 + 1) = v46;
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.getter();
  if (v132 == 1)
  {
    LOBYTE(v132) = v45;
    v133 = v46;
    State.projectedValue.getter();
    v47 = v134;
    v48 = v135;
    Bindable.projectedValue.getter();
    sub_1001C0660(v47, *(&v47 + 1), v48, v42, &v134);
    v49 = v139;
    v38[4] = v138;
    v38[5] = v49;
    v38[6] = *v140;
    *(v38 + 105) = *&v140[9];
    v50 = v135;
    *v38 = v134;
    v38[1] = v50;
    v51 = v137;
    v38[2] = v136;
    v38[3] = v51;
    swift_storeEnumTagMultiPayload();
    sub_1001C0408();
    sub_100007120(&qword_100267760, &qword_100267708, &qword_1001E1E38);
    _ConditionalContent<>.init(storage:)();
    return;
  }

  v100 = v38;
  v101 = v6;
  v102 = v5;
  v99[2] = v39;
  Bindable.wrappedValue.getter();
  v52 = *(v134 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry_entry);

  v53 = [v52 answerOptions];

  if (v53)
  {
    v54 = [v53 array];

    v55 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = *(v55 + 16);
    *&v134 = 0;
    *(&v134 + 1) = v56;
    swift_getKeyPath();
    v57 = v125;
    sub_1001C0308(v43, v125, type metadata accessor for MultichoiceRow);
    v58 = (*(v122 + 80) + 16) & ~*(v122 + 80);
    v99[1] = *(v122 + 80);
    v59 = swift_allocObject();
    v122 = v58;
    sub_1001C0374(v57, v59 + v58, type metadata accessor for MultichoiceRow);
    sub_10000341C(&qword_10025E290, &qword_1001D3B28);
    sub_10000341C(&qword_100267740, &qword_1001E1EA0);
    sub_10006FFA8();
    sub_100007120(&qword_100267748, &qword_100267740, &qword_1001E1EA0);
    ForEach<>.init(_:id:content:)();
    *(&v135 + 1) = &type metadata for WritingTools;
    *&v136 = sub_10002AC88();
    LOBYTE(v134) = 11;
    LOBYTE(v57) = isFeatureEnabled(_:)();
    sub_10000F4B4(&v134);
    if ((v57 & 1) == 0)
    {

      v62 = 1;
      v63 = v101;
      v64 = v126;
LABEL_27:
      v90 = v100;
      (*(v121 + 56))(v64, v62, 1, v63);
      v91 = v119;
      v92 = *(v119 + 16);
      v93 = v117;
      v94 = v120;
      v92(v117, v130, v120);
      v95 = v118;
      sub_1000081F8(v64, v118, &qword_100267728, &qword_1001E1E58);
      v96 = v102;
      v92(v102, v93, v94);
      v97 = sub_10000341C(&qword_100267750, &qword_1001E1EA8);
      sub_1000081F8(v95, v96 + *(v97 + 48), &qword_100267728, &qword_1001E1E58);
      sub_10000F500(v95, &qword_100267728, &qword_1001E1E58);
      v98 = *(v91 + 8);
      v98(v93, v94);
      sub_1000081F8(v96, v90, &qword_100267708, &qword_1001E1E38);
      swift_storeEnumTagMultiPayload();
      sub_1001C0408();
      sub_100007120(&qword_100267760, &qword_100267708, &qword_1001E1E38);
      _ConditionalContent<>.init(storage:)();
      sub_10000F500(v96, &qword_100267708, &qword_1001E1E38);
      sub_10000F500(v126, &qword_100267728, &qword_1001E1E58);
      v98(v130, v94);
      return;
    }

    if (!v56)
    {

      goto LABEL_11;
    }

    if (v56 <= *(v55 + 16))
    {
      sub_10002B0D0(v55 + 32 * v56, &v134);

      if (swift_dynamicCast())
      {
        v60 = v132;
        v61 = v133;
LABEL_12:
        Bindable.wrappedValue.getter();
        v65 = v134;
        swift_getKeyPath();
        *&v134 = v65;
        sub_1001C0124(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v67 = *(v65 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer);
        v66 = *(v65 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer + 8);

        if (v61)
        {
          v68 = v106;
          if (v66)
          {
            if (v60 == v67 && v61 == v66)
            {

              v69 = 0.0;
            }

            else
            {
              v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v71)
              {
                v69 = 0.0;
              }

              else
              {
                v69 = 1.0;
              }
            }
          }

          else
          {

            v69 = 1.0;
          }

          v72 = v116;
          v70 = v115;
        }

        else
        {
          v70 = v115;
          v68 = v106;
          if (v66)
          {

            v69 = 1.0;
          }

          else
          {
            v69 = 0.0;
          }

          v72 = v116;
        }

        v73 = v105;
        Divider.init()();
        v74 = v103;
        (*(v68 + 32))(v103, v73, v70);
        *(v74 + *(v104 + 36)) = v69;
        sub_10002A894(v74, v123, &qword_100267720, &qword_1001E1E50);
        v75 = static Color.gray.getter();
        *(&v135 + 1) = &type metadata for MultichoiceRow.MoreWidgetAppearance;
        *&v136 = &off_100252F50;
        v76 = swift_allocObject();
        *&v134 = v76;
        *(v76 + 16) = 0x73697370696C6C65;
        *(v76 + 24) = 0xEF656C637269632ELL;
        *(v76 + 32) = v75;
        *(v76 + 40) = 1;
        v77 = v125;
        sub_1001C0308(v43, v125, type metadata accessor for MultichoiceRow);
        v78 = v122;
        v79 = swift_allocObject();
        sub_1001C0374(v77, v79 + v78, type metadata accessor for MultichoiceRow);
        v131 = 0;
        State.init(wrappedValue:)();
        BYTE8(v137) = v132;
        *&v138 = v133;
        *(&v136 + 1) = sub_1001C0554;
        *&v137 = v79;
        static Alignment.center.getter();
        _FrameLayout.init(width:height:alignment:)();
        v80 = v108;
        static CustomHoverEffect<>.automatic.getter();
        sub_10000341C(&qword_100267768, &qword_1001E1EB0);
        sub_1001C0580();
        sub_1001C0124(&qword_1002635F8, &type metadata accessor for AutomaticHoverEffect);
        v81 = v110;
        v82 = v111;
        View.hoverEffect<A>(_:isEnabled:)();
        (*(v109 + 8))(v80, v82);
        sub_10000F500(&v134, &qword_100267768, &qword_1001E1EB0);
        v83 = v107;
        sub_1000081F8(v123, v107, &qword_100267720, &qword_1001E1E50);
        v84 = v113;
        v85 = *(v113 + 16);
        v86 = v112;
        v85(v112, v81, v72);
        v87 = v114;
        sub_1000081F8(v83, v114, &qword_100267720, &qword_1001E1E50);
        v88 = sub_10000341C(&qword_100267780, &qword_1001E1EB8);
        v85((v87 + *(v88 + 48)), v86, v72);
        v89 = *(v84 + 8);
        v89(v81, v72);
        sub_10000F500(v123, &qword_100267720, &qword_1001E1E50);
        v89(v86, v72);
        sub_10000F500(v83, &qword_100267720, &qword_1001E1E50);
        v64 = v126;
        sub_10002A894(v87, v126, &qword_100267710, &qword_1001E1E40);
        v62 = 0;
        v63 = v101;
        goto LABEL_27;
      }

LABEL_11:
      v60 = 0;
      v61 = 0;
      goto LABEL_12;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1001B45B4(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v112 = a3;
  v119 = type metadata accessor for UnevenRoundedRectangle();
  v5 = *(*(v119 - 8) + 64);
  __chkstk_darwin(v119);
  v106 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MultipleChoiceButtonStyle(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for MultichoiceRow(0);
  v110 = *(v100 - 8);
  v11 = *(v110 + 64);
  __chkstk_darwin(v100);
  v111 = v12;
  v13 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_10000341C(&unk_10025DF60, &unk_1001D7CD0);
  v115 = *(v107 - 8);
  v14 = *(v115 + 64);
  __chkstk_darwin(v107);
  v114 = &v94 - v15;
  v118 = sub_10000341C(&qword_100267788, &unk_1001E1EC0);
  v117 = *(v118 - 8);
  v16 = *(v117 + 64);
  v17 = __chkstk_darwin(v118);
  v19 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v116 = &v94 - v20;
  v98 = type metadata accessor for Divider();
  v97 = *(v98 - 8);
  v21 = *(v97 + 64);
  __chkstk_darwin(v98);
  v23 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_10000341C(&qword_10025B888, &qword_1001D0300);
  v24 = *(*(v96 - 8) + 64);
  __chkstk_darwin(v96);
  v99 = &v94 - v25;
  v109 = sub_10000341C(&qword_100267790, &qword_1001E1ED0);
  v108 = *(v109 - 8);
  v26 = *(v108 + 64);
  v27 = __chkstk_darwin(v109);
  v29 = &v94 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v95 = &v94 - v30;
  v31 = sub_10000341C(&qword_100267798, &qword_1001E1ED8);
  v32 = *(*(v31 - 8) + 64);
  v33 = __chkstk_darwin(v31 - 8);
  v113 = &v94 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v36 = &v94 - v35;
  v37 = *a1;
  v122 = sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  v123 = a2;
  Bindable.wrappedValue.getter();
  v38 = *(v126 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry_entry);

  v39 = [v38 answerOptions];

  if (!v39)
  {
    goto LABEL_30;
  }

  v102 = v13;
  v104 = v19;
  v40 = [v39 objectAtIndexedSubscript:v37];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v41 = v125;
  v101 = v124;
  v120 = v37;
  v105 = v10;
  v121 = v36;
  v103 = v7;
  if (v37 >= 1)
  {
    Divider.init()();
    sub_10000341C(&unk_100263510, &qword_1001DAEA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001CF9E0;
    v43 = static Edge.Set.top.getter();
    *(inited + 32) = v43;
    v44 = static Edge.Set.bottom.getter();
    *(inited + 33) = v44;
    v45 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v43)
    {
      v45 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v44)
    {
      v45 = Edge.Set.init(rawValue:)();
    }

    v46 = *(v123 + *(v100 + 24));
    EdgeInsets.init(_all:)();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v55 = v99;
    (*(v97 + 32))(v99, v23, v98);
    v56 = v55 + *(v96 + 36);
    *v56 = v45;
    *(v56 + 8) = v48;
    *(v56 + 16) = v50;
    *(v56 + 24) = v52;
    *(v56 + 32) = v54;
    *(v56 + 40) = 0;
    Bindable.wrappedValue.getter();
    v57 = v126;
    swift_getKeyPath();
    v126 = v57;
    sub_1001C0124(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v58 = *(v57 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedIndex);
    v59 = *(v57 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedIndex + 8);

    v36 = v121;
    if (v59)
    {
LABEL_8:
      v60 = 1.0;
LABEL_13:
      sub_10002A894(v55, v29, &qword_10025B888, &qword_1001D0300);
      v62 = v109;
      *&v29[*(v109 + 36)] = v60;
      v63 = v29;
      v64 = v95;
      sub_10002A894(v63, v95, &qword_100267790, &qword_1001E1ED0);
      sub_10002A894(v64, v36, &qword_100267790, &qword_1001E1ED0);
      v61 = 0;
      goto LABEL_14;
    }

    v60 = 0.0;
    if (v58 == v120)
    {
      goto LABEL_13;
    }

    if (!__OFADD__(v58, 1))
    {
      if (v58 + 1 == v120)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_30:
    __break(1u);
    return;
  }

  v61 = 1;
  v62 = v109;
LABEL_14:
  (*(v108 + 56))(v36, v61, 1, v62);
  v65 = v101;
  v126 = v101;
  v127 = v41;
  v66 = v102;
  sub_1001C0308(v123, v102, type metadata accessor for MultichoiceRow);
  v67 = (*(v110 + 80) + 16) & ~*(v110 + 80);
  v68 = (v111 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v69 = swift_allocObject();
  sub_1001C0374(v66, v69 + v67, type metadata accessor for MultichoiceRow);
  v70 = (v69 + v68);
  *v70 = v65;
  v70[1] = v41;
  v71 = v120;
  *(v69 + ((v68 + 23) & 0xFFFFFFFFFFFFFFF8)) = v120;
  v72 = v71;
  sub_10002AC34();
  swift_bridgeObjectRetain_n();
  v73 = v114;
  Button<>.init<A>(_:action:)();
  Bindable.wrappedValue.getter();
  v74 = v126;
  swift_getKeyPath();
  v126 = v74;
  sub_1001C0124(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v75 = *(v74 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer);
  v76 = *(v74 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer + 8);

  if (v76)
  {
    v77 = v107;
    if (v75 == v65 && v76 == v41)
    {
      v78 = 1;
    }

    else
    {
      v78 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v79 = v105;
  }

  else
  {
    v78 = 0;
    v77 = v107;
    v79 = v105;
  }

  v80 = v103;

  if (v72)
  {
    v81 = v106;
    if (qword_10025A900 != -1)
    {
      swift_once();
    }

    v82 = qword_100277470;
  }

  else
  {
    v81 = v106;
    if (qword_10025A8D8 != -1)
    {
      swift_once();
    }

    v82 = qword_1002773F8;
  }

  v83 = sub_10000F34C(v119, v82);
  sub_1001C0308(v83, v81, &type metadata accessor for UnevenRoundedRectangle);
  *v79 = 0x4014000000000000;
  *(v79 + 8) = v78 & 1;
  sub_1001C0374(v81, v79 + *(v80 + 24), &type metadata accessor for UnevenRoundedRectangle);
  sub_100007120(&qword_100264210, &unk_10025DF60, &unk_1001D7CD0);
  sub_1001C0124(&qword_1002677A0, type metadata accessor for MultipleChoiceButtonStyle);
  v84 = v116;
  View.buttonStyle<A>(_:)();
  sub_1001C0D68(v79, type metadata accessor for MultipleChoiceButtonStyle);
  (*(v115 + 8))(v73, v77);
  v85 = v36;
  v86 = v113;
  sub_1000081F8(v85, v113, &qword_100267798, &qword_1001E1ED8);
  v87 = v117;
  v88 = *(v117 + 16);
  v89 = v104;
  v90 = v118;
  v88(v104, v84, v118);
  v91 = v112;
  sub_1000081F8(v86, v112, &qword_100267798, &qword_1001E1ED8);
  v92 = sub_10000341C(&qword_1002677A8, &qword_1001E1EE0);
  v88((v91 + *(v92 + 48)), v89, v90);
  v93 = *(v87 + 8);
  v93(v84, v90);
  sub_10000F500(v121, &qword_100267798, &qword_1001E1ED8);
  v93(v89, v90);
  sub_10000F500(v86, &qword_100267798, &qword_1001E1ED8);
}

uint64_t sub_1001B52E4(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for MultichoiceRow(0) + 20));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  return State.wrappedValue.setter();
}

uint64_t sub_1001B5358@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_10000341C(&qword_1002676E0, &qword_1001E1E10);
  return sub_1001B323C(v1, a1 + *(v3 + 44));
}

uint64_t sub_1001B53AC@<X0>(uint64_t a1@<X8>)
{
  v103 = a1;
  v105 = type metadata accessor for AutomaticHoverEffect();
  v104 = *(v105 - 8);
  v1 = *(v104 + 64);
  __chkstk_darwin(v105);
  v102 = &v88 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for UnevenRoundedRectangle();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v101 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_10000341C(&qword_1002634E0, &qword_1001DAE70);
  v6 = *(*(v99 - 8) + 64);
  __chkstk_darwin(v99);
  v100 = &v88 - v7;
  v8 = type metadata accessor for ButtonStyleConfiguration.Label();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000341C(&qword_1002634F0, &qword_1001DAE80);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v17 = &v88 - v16;
  v18 = sub_10000341C(&qword_1002634F8, &qword_1001DAE88);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = &v88 - v20;
  v89 = sub_10000341C(&qword_100267BA0, &qword_1001E25A0);
  v22 = *(*(v89 - 8) + 64);
  __chkstk_darwin(v89);
  v24 = &v88 - v23;
  v95 = sub_10000341C(&qword_100267BA8, &qword_1001E25A8);
  v94 = *(v95 - 8);
  v25 = *(v94 + 64);
  __chkstk_darwin(v95);
  v91 = &v88 - v26;
  v90 = sub_10000341C(&qword_100267BB0, &qword_1001E25B0);
  v27 = *(*(v90 - 8) + 64);
  __chkstk_darwin(v90);
  v93 = &v88 - v28;
  v92 = sub_10000341C(&qword_100267BB8, &qword_1001E25B8);
  v29 = *(*(v92 - 8) + 64);
  __chkstk_darwin(v92);
  v96 = &v88 - v30;
  v98 = sub_10000341C(&qword_100267BC0, &unk_1001E25C0);
  v31 = *(*(v98 - 8) + 64);
  __chkstk_darwin(v98);
  v33 = &v88 - v32;
  ButtonStyleConfiguration.label.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v9 + 32))(v17, v12, v8);
  v34 = &v17[*(v14 + 44)];
  v35 = v111;
  *(v34 + 4) = v110;
  *(v34 + 5) = v35;
  *(v34 + 6) = v112;
  v36 = v107;
  *v34 = v106;
  *(v34 + 1) = v36;
  v37 = v109;
  *(v34 + 2) = v108;
  *(v34 + 3) = v37;
  sub_10000341C(&unk_100263510, &qword_1001DAEA0);
  inited = swift_initStackObject();
  v88 = xmmword_1001CF9E0;
  *(inited + 16) = xmmword_1001CF9E0;
  LOBYTE(v9) = static Edge.Set.leading.getter();
  *(inited + 32) = v9;
  v39 = static Edge.Set.trailing.getter();
  *(inited + 33) = v39;
  v40 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v9)
  {
    v40 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v39)
  {
    v40 = Edge.Set.init(rawValue:)();
  }

  v41 = v97;
  v42 = *v97;
  EdgeInsets.init(_all:)();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  sub_10002A894(v17, v21, &qword_1002634F0, &qword_1001DAE80);
  v51 = &v21[*(v18 + 36)];
  *v51 = v40;
  *(v51 + 1) = v44;
  *(v51 + 2) = v46;
  *(v51 + 3) = v48;
  *(v51 + 4) = v50;
  v51[40] = 0;
  v52 = swift_initStackObject();
  *(v52 + 16) = v88;
  v53 = static Edge.Set.top.getter();
  *(v52 + 32) = v53;
  v54 = static Edge.Set.bottom.getter();
  *(v52 + 33) = v54;
  v55 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v53)
  {
    v55 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v54)
  {
    v55 = Edge.Set.init(rawValue:)();
  }

  v56 = v101;
  EdgeInsets.init(_all:)();
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;
  sub_10002A894(v21, v24, &qword_1002634F8, &qword_1001DAE88);
  v65 = &v24[*(v89 + 36)];
  *v65 = v55;
  *(v65 + 1) = v58;
  *(v65 + 2) = v60;
  *(v65 + 3) = v62;
  *(v65 + 4) = v64;
  v65[40] = 0;
  v66 = *(v41 + 8);
  if (v66 == 1)
  {
    static Font.Weight.medium.getter();
  }

  else
  {
    static Font.Weight.regular.getter();
  }

  v67 = v91;
  sub_1001C2314();
  View.fontWeight(_:)();
  sub_10000F500(v24, &qword_100267BA0, &qword_1001E25A0);
  v68 = type metadata accessor for MultipleChoiceButtonStyle(0);
  sub_1001C0308(v41 + *(v68 + 24), v56, &type metadata accessor for UnevenRoundedRectangle);
  if (qword_10025A8B0 != -1)
  {
    swift_once();
  }

  v69 = byte_1002773A8;
  v70 = v93;
  if (byte_1002773A8 == 1)
  {
    static Color.secondary.getter();
    if (!v66)
    {
      goto LABEL_20;
    }
  }

  else
  {
    static Color.gray.getter();
    if (!v66)
    {
      goto LABEL_20;
    }
  }

  if (qword_10025A8C0 != -1)
  {
    swift_once();
  }

LABEL_20:
  v71 = Color.opacity(_:)();

  v72 = v100;
  sub_1001C0374(v56, v100, &type metadata accessor for UnevenRoundedRectangle);
  v73 = v99;
  *(v72 + *(v99 + 52)) = v71;
  *(v72 + *(v73 + 56)) = 256;
  v74 = static Alignment.center.getter();
  v76 = v75;
  v77 = v70 + *(v90 + 36);
  sub_10002A894(v72, v77, &qword_1002634E0, &qword_1001DAE70);
  v78 = (v77 + *(sub_10000341C(&qword_100267B48, &qword_1001E2550) + 36));
  *v78 = v74;
  v78[1] = v76;
  (*(v94 + 32))(v70, v67, v95);
  if ((v66 & v69) == 1)
  {
    v79 = static Color.black.getter();
  }

  else
  {
    v79 = 0;
  }

  KeyPath = swift_getKeyPath();
  v81 = v96;
  sub_10002A894(v70, v96, &qword_100267BB0, &qword_1001E25B0);
  v82 = (v81 + *(v92 + 36));
  *v82 = KeyPath;
  v82[1] = v79;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_10002A894(v81, v33, &qword_100267BB8, &qword_1001E25B8);
  v83 = &v33[*(v98 + 36)];
  v84 = v114;
  *v83 = v113;
  *(v83 + 1) = v84;
  *(v83 + 2) = v115;
  v85 = v102;
  static CustomHoverEffect<>.automatic.getter();
  sub_1001C23A0();
  sub_1001C0124(&qword_1002635F8, &type metadata accessor for AutomaticHoverEffect);
  v86 = v105;
  View.hoverEffect<A>(_:isEnabled:)();
  (*(v104 + 8))(v85, v86);
  return sub_10000F500(v33, &qword_100267BC0, &unk_1001E25C0);
}

uint64_t sub_1001B5E9C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0x6472616F6279656BLL;
  a2[1] = 0xE800000000000000;
  a2[2] = static Color.gray.getter();
  v4 = type metadata accessor for PickerRowCore(0);
  v5 = a2 + v4[7];
  State.init(wrappedValue:)();
  *v5 = v10;
  *(v5 + 1) = v11;
  v6 = (a2 + v4[8]);
  State.init(wrappedValue:)();
  *v6 = v10;
  v6[1] = v11;
  v7 = v4[6];
  type metadata accessor for QuestionnaireEntry();
  sub_1001C0124(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry);

  Bindable<A>.init(wrappedValue:)();
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *(a1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedIndex);
  LOBYTE(v4) = *(a1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedIndex + 8);

  if ((v4 & 1) == 0)
  {

    *v6 = v8;
    v6[1] = 0;
  }

  return result;
}

uint64_t sub_1001B602C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000341C(&qword_1002677E0, &qword_1001E1F30);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  v5 = __chkstk_darwin(v2);
  v30 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v8 = &v24[-v7];
  v31 = static VerticalAlignment.center.getter();
  LOBYTE(v35) = 1;
  sub_1001BDD40(&v40);
  v9 = v40;
  v26 = v40;
  v29 = v41;
  v10 = v42;
  v11 = v44;
  v28 = v43;
  v12 = v45;
  LOBYTE(v40) = v42;
  v27 = v42;
  LOBYTE(v32) = v45;
  v13 = v35;
  v25 = v35;
  *v8 = static VerticalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v14 = &v8[*(sub_10000341C(&qword_1002677E8, &qword_1001E1F38) + 44)];
  sub_1001B630C();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v15 = &v8[*(v3 + 44)];
  v16 = v33;
  *v15 = v32;
  v15[1] = v16;
  v15[2] = v34;
  v17 = v30;
  sub_1000081F8(v8, v30, &qword_1002677E0, &qword_1001E1F30);
  v35 = v31;
  LOBYTE(v36) = v13;
  v18 = v29;
  *(&v36 + 1) = v9;
  *&v37 = v29;
  BYTE8(v37) = v10;
  v19 = v28;
  *&v38 = v28;
  *(&v38 + 1) = v11;
  v39 = v12;
  *(a1 + 64) = v12;
  v20 = v38;
  *(a1 + 32) = v37;
  *(a1 + 48) = v20;
  v21 = v36;
  *a1 = v35;
  *(a1 + 16) = v21;
  v22 = sub_10000341C(&qword_1002677F0, &qword_1001E1F40);
  sub_1000081F8(v17, a1 + *(v22 + 48), &qword_1002677E0, &qword_1001E1F30);
  sub_1000081F8(&v35, &v40, &qword_100267700, &qword_1001E1E30);
  sub_10000F500(v8, &qword_1002677E0, &qword_1001E1F30);
  sub_10000F500(v17, &qword_1002677E0, &qword_1001E1F30);
  v40 = v31;
  v41 = 0;
  v42 = v25;
  v43 = v26;
  v44 = v18;
  v45 = v27;
  v46 = v19;
  v47 = v11;
  v48 = v12;
  return sub_10000F500(&v40, &qword_100267700, &qword_1001E1E30);
}

uint64_t sub_1001B630C()
{
  v0 = type metadata accessor for PickerRowCore(0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v3 = (&v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10000341C(&qword_1002677F8, &qword_1001E1F48);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v29 - v6;
  v8 = type metadata accessor for PickerRowCoreInline(0);
  v9 = *(*(v8 - 1) + 64);
  __chkstk_darwin(v8);
  v11 = (&v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_10025A8B0 != -1)
  {
    swift_once();
  }

  if (byte_1002773A8 == 1)
  {
    sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
    Bindable.wrappedValue.getter();
    *v11 = 0x4049000000000000;
    v12 = v8[5];
    type metadata accessor for QuestionnaireEntry();
    sub_1001C0124(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry);
    Bindable<A>.init(wrappedValue:)();
    v13 = v11 + v8[6];
    LOBYTE(v30) = 0;
    State.init(wrappedValue:)();
    v14 = *(&v32 + 1);
    *v13 = v32;
    *(v13 + 1) = v14;
    v15 = v11 + v8[7];
    LOBYTE(v30) = 0;
    State.init(wrappedValue:)();
    v16 = *(&v32 + 1);
    *v15 = v32;
    *(v15 + 1) = v16;
    v17 = v11 + v8[8];
    LOBYTE(v30) = 0;
    State.init(wrappedValue:)();
    v18 = *(&v32 + 1);
    *v17 = v32;
    *(v17 + 1) = v18;
    v19 = v11 + v8[9];
    v30 = 0;
    v31 = 0xE000000000000000;
    State.init(wrappedValue:)();
    v20 = v33;
    *v19 = v32;
    *(v19 + 2) = v20;
    v21 = v11 + v8[10];
    *v21 = FocusState.init<>()() & 1;
    *(v21 + 1) = v22;
    v21[16] = v23 & 1;
    v24 = v11 + v8[11];
    LOBYTE(v30) = 1;
    State.init(wrappedValue:)();
    v25 = *(&v32 + 1);
    *v24 = v32;
    *(v24 + 1) = v25;
    *(v11 + v8[12]) = 0x3FD3333333333333;
    sub_1001C0308(v11, v7, type metadata accessor for PickerRowCoreInline);
    swift_storeEnumTagMultiPayload();
    sub_1001C0124(&qword_100267800, type metadata accessor for PickerRowCoreInline);
    sub_1001C0124(&qword_100267808, type metadata accessor for PickerRowCore);
    _ConditionalContent<>.init(storage:)();
    v26 = type metadata accessor for PickerRowCoreInline;
    v27 = v11;
  }

  else
  {
    sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
    Bindable.wrappedValue.getter();
    sub_1001B5E9C(v32, v3);
    sub_1001C0308(v3, v7, type metadata accessor for PickerRowCore);
    swift_storeEnumTagMultiPayload();
    sub_1001C0124(&qword_100267800, type metadata accessor for PickerRowCoreInline);
    sub_1001C0124(&qword_100267808, type metadata accessor for PickerRowCore);
    _ConditionalContent<>.init(storage:)();
    v26 = type metadata accessor for PickerRowCore;
    v27 = v3;
  }

  return sub_1001C0D68(v27, v26);
}

uint64_t sub_1001B67E4()
{
  v0 = sub_10000341C(&qword_1002677B0, &qword_1001E1F10);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v3 = &v10 - v2;
  v4 = sub_10000341C(&qword_1002677B8, &qword_1001E1F18);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  *v7 = static HorizontalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = sub_10000341C(&qword_1002677C0, &qword_1001E1F20);
  sub_1001B602C(&v7[*(v8 + 44)]);
  sub_1000081F8(v7, v3, &qword_1002677B8, &qword_1001E1F18);
  swift_storeEnumTagMultiPayload();
  sub_10000341C(&qword_1002677C8, &qword_1001E1F28);
  sub_100007120(&qword_1002677D0, &qword_1002677C8, &qword_1001E1F28);
  sub_100007120(&qword_1002677D8, &qword_1002677B8, &qword_1001E1F18);
  _ConditionalContent<>.init(storage:)();
  return sub_10000F500(v7, &qword_1002677B8, &qword_1001E1F18);
}

uint64_t sub_1001B69D4()
{
  v1 = v0;
  v2 = type metadata accessor for PickerRowCore(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v6 = sub_10000341C(&qword_100267DB8, &qword_1001E2768);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v17[-v8];
  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = sub_10000341C(&qword_100267DC0, &qword_1001E2770);
  sub_1001B6C4C(v1, &v9[*(v10 + 44)]);
  v11 = v1 + *(v3 + 36);
  v12 = *v11;
  v13 = *(v11 + 8);
  v18 = v12;
  v19 = v13;
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.getter();
  v18 = v17[15];
  sub_1001C0308(v1, &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PickerRowCore);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  sub_1001C0374(&v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v15 + v14, type metadata accessor for PickerRowCore);
  sub_100007120(&qword_100267DC8, &qword_100267DB8, &qword_1001E2768);
  View.onChange<A>(of:initial:_:)();

  return sub_10000F500(v9, &qword_100267DB8, &qword_1001E2768);
}

uint64_t sub_1001B6C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v28 = sub_10000341C(&qword_100267DD8, &qword_1001E2780);
  v3 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v5 = &v26 - v4;
  v27 = sub_10000341C(&qword_100267DE0, &qword_1001E2788);
  v6 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27);
  v8 = (&v26 - v7);
  v9 = sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v26 - v11;
  v13 = type metadata accessor for PickerRowCore(0);
  v14 = *(v13 + 28);
  v26 = a1;
  v15 = (a1 + v14);
  v16 = *v15;
  v17 = *(v15 + 1);
  LOBYTE(v39) = *v15;
  *(&v39 + 1) = v17;
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.getter();
  if (LOBYTE(v37[0]) == 1)
  {
    LOBYTE(v37[0]) = v16;
    *(&v37[0] + 1) = v17;
    State.projectedValue.getter();
    v18 = v39;
    v19 = v40;
    v20 = v26 + *(v13 + 24);
    Bindable.projectedValue.getter();
    sub_1001C0660(v18, *(&v18 + 1), v19, v12, v37);
    sub_1001C32E0(v37);
    v34 = v37[4];
    v35 = v37[5];
    v36[0] = v38[0];
    *(v36 + 10) = *(v38 + 10);
    v30 = v37[0];
    v31 = v37[1];
    v32 = v37[2];
    v33 = v37[3];
    sub_1001C328C();
    sub_1001C0408();
    _ConditionalContent<>.init(storage:)();
    v21 = v44;
    v8[4] = v43;
    v8[5] = v21;
    v8[6] = v45[0];
    *(v8 + 106) = *(v45 + 10);
    v22 = v40;
    *v8 = v39;
    v8[1] = v22;
    v23 = v42;
    v8[2] = v41;
    v8[3] = v23;
    swift_storeEnumTagMultiPayload();
    sub_10000341C(&qword_100267DF0, &qword_1001E2798);
    sub_1001C3200();
    sub_100007120(&qword_100267E08, &qword_100267DD8, &qword_1001E2780);
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    *v5 = static HorizontalAlignment.center.getter();
    *(v5 + 1) = 0;
    v5[16] = 1;
    v25 = sub_10000341C(&qword_100267DE8, &qword_1001E2790);
    sub_1001B7020(v26, &v5[*(v25 + 44)]);
    sub_1000081F8(v5, v8, &qword_100267DD8, &qword_1001E2780);
    swift_storeEnumTagMultiPayload();
    sub_10000341C(&qword_100267DF0, &qword_1001E2798);
    sub_1001C3200();
    sub_100007120(&qword_100267E08, &qword_100267DD8, &qword_1001E2780);
    _ConditionalContent<>.init(storage:)();
    return sub_10000F500(v5, &qword_100267DD8, &qword_1001E2780);
  }
}

uint64_t sub_1001B7020@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v64 = a2;
  v3 = type metadata accessor for PickerRowCore(0);
  v4 = v3 - 8;
  v63 = *(v3 - 8);
  v62 = *(v63 + 64);
  __chkstk_darwin(v3);
  v61 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_10000341C(&qword_100267E10, &qword_1001E27A0);
  v54 = *(v55 - 8);
  v6 = *(v54 + 64);
  __chkstk_darwin(v55);
  v50 = &v49 - v7;
  v8 = sub_10000341C(&qword_100267E18, &qword_1001E27A8);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v12 = &v49 - v11;
  v56 = sub_10000341C(&qword_100267E20, &qword_1001E27B0);
  v13 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v56);
  v15 = &v49 - v14;
  v60 = sub_10000341C(&qword_100267E28, &qword_1001E27B8);
  v59 = *(v60 - 8);
  v16 = *(v59 + 64);
  v17 = __chkstk_darwin(v60);
  v58 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v57 = &v49 - v19;
  LocalizedStringKey.init(stringLiteral:)();
  v20 = *(v4 + 40);
  v49 = a1;
  v21 = (a1 + v20);
  v23 = *v21;
  v22 = v21[1];
  v53 = v23;
  v52 = v22;
  v66 = v23;
  v67 = v22;
  v51 = sub_10000341C(&qword_100267DD0, &qword_1001E2778);
  State.projectedValue.getter();
  v65 = a1;
  sub_10000341C(&qword_100267E30, &qword_1001E27C0);
  sub_100007120(&qword_100267E38, &qword_100267E30, &qword_1001E27C0);
  v24 = v50;
  Picker<>.init(_:selection:content:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v54 + 32))(v12, v24, v55);
  v25 = &v12[*(v9 + 44)];
  v26 = v73;
  *(v25 + 4) = v72;
  *(v25 + 5) = v26;
  *(v25 + 6) = v74;
  v27 = v69;
  *v25 = v68;
  *(v25 + 1) = v27;
  v28 = v71;
  *(v25 + 2) = v70;
  *(v25 + 3) = v28;
  v29 = v49;
  v30 = *(v49 + 16);
  KeyPath = swift_getKeyPath();
  v66 = v30;

  v32 = AnyShapeStyle.init<A>(_:)();
  sub_10002A894(v12, v15, &qword_100267E18, &qword_1001E27A8);
  v33 = &v15[*(v56 + 36)];
  *v33 = KeyPath;
  v33[1] = v32;
  v66 = v53;
  v67 = v52;
  State.wrappedValue.getter();
  v34 = v61;
  sub_1001C0308(v29, v61, type metadata accessor for PickerRowCore);
  v35 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v36 = swift_allocObject();
  sub_1001C0374(v34, v36 + v35, type metadata accessor for PickerRowCore);
  sub_1001C34F0();
  v37 = v57;
  View.onChange<A>(of:initial:_:)();

  sub_10000F500(v15, &qword_100267E20, &qword_1001E27B0);
  v38 = v59;
  v39 = *(v59 + 16);
  v40 = v58;
  v41 = v37;
  v42 = v60;
  v39(v58, v37, v60);
  v43 = v64;
  *v64 = 0;
  *(v43 + 8) = 1;
  v44 = v43;
  v45 = sub_10000341C(&qword_100267E68, &qword_1001E2800);
  v39(&v44[*(v45 + 48)], v40, v42);
  v46 = &v44[*(v45 + 64)];
  *v46 = 0;
  v46[8] = 1;
  v47 = *(v38 + 8);
  v47(v41, v42);
  return (v47)(v40, v42);
}

uint64_t sub_1001B7704@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v48 = a2;
  v3 = sub_10000341C(&qword_100267E70, &qword_1001E2808);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v51 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v43 - v7;
  v9 = sub_10000341C(&qword_100267E78, &qword_1001E2810);
  v10 = *(v9 - 8);
  v46 = v9;
  v47 = v10;
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v53 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v43 - v14;
  v16 = sub_10000341C(&qword_100267E80, &qword_1001E2818);
  v49 = *(v16 - 8);
  v17 = *(v49 + 64);
  v18 = __chkstk_darwin(v16);
  v52 = v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = v43 - v20;
  v22 = sub_10000341C(&qword_100267E88, &qword_1001E2820);
  v55[0] = &type metadata for Text;
  v55[1] = &type metadata for Int;
  v55[2] = &protocol witness table for Text;
  v56 = &protocol witness table for Int;
  v23 = 1;
  swift_getOpaqueTypeConformance2();
  v50 = v21;
  v43[1] = v22;
  Section<>.init(content:)();
  v54 = a1;
  sub_10000341C(&qword_100267E90, &qword_1001E2828);
  sub_100007120(&qword_100267E98, &qword_100267E90, &qword_1001E2828);
  v24 = v15;
  Section<>.init(content:)();
  v56 = &type metadata for WritingTools;
  v57 = sub_10002AC88();
  LOBYTE(v55[0]) = 11;
  LOBYTE(v21) = isFeatureEnabled(_:)();
  sub_10000F4B4(v55);
  if (v21)
  {
    v25 = v52;
    Section<>.init(content:)();
    (*(v49 + 32))(v8, v25, v16);
    v23 = 0;
  }

  v26 = v49;
  v27 = *(v49 + 56);
  v44 = v8;
  v27(v8, v23, 1, v16);
  v28 = *(v26 + 16);
  v29 = v52;
  v28(v52, v50, v16);
  v30 = v47;
  v31 = *(v47 + 16);
  v45 = v24;
  v32 = v24;
  v33 = v46;
  v31(v53, v32, v46);
  sub_1000081F8(v8, v51, &qword_100267E70, &qword_1001E2808);
  v34 = v33;
  v35 = v48;
  v36 = v29;
  v37 = v16;
  v28(v48, v36, v16);
  v38 = sub_10000341C(&qword_100267EA0, &qword_1001E2830);
  v31(&v35[*(v38 + 48)], v53, v34);
  v39 = v51;
  sub_1000081F8(v51, &v35[*(v38 + 64)], &qword_100267E70, &qword_1001E2808);
  sub_10000F500(v44, &qword_100267E70, &qword_1001E2808);
  v40 = *(v30 + 8);
  v40(v45, v34);
  v41 = *(v26 + 8);
  v41(v50, v37);
  sub_10000F500(v39, &qword_100267E70, &qword_1001E2808);
  v40(v53, v34);
  return (v41)(v52, v37);
}

uint64_t sub_1001B7C3C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10025A8B8 != -1)
  {
    swift_once();
  }

  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  *(a1 + 32) = -1;
  *(a1 + 40) = 1;
  return result;
}

void sub_1001B7D14(uint64_t a1@<X0>, char *a2@<X8>)
{
  v56 = a2;
  v49 = sub_10000341C(&qword_100267E88, &qword_1001E2820);
  v53 = *(v49 - 8);
  v3 = *(v53 + 64);
  __chkstk_darwin(v49);
  v5 = v48 - v4;
  v6 = sub_10000341C(&qword_100267EA8, &qword_1001E2838);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v55 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v54 = v48 - v10;
  v11 = type metadata accessor for PickerRowCore(0);
  v12 = v11 - 8;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  v15 = sub_10000341C(&qword_100267EB0, &qword_1001E2840);
  v50 = *(v15 - 8);
  v51 = v15;
  v16 = *(v50 + 64);
  v17 = __chkstk_darwin(v15);
  v52 = v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = v48 - v19;
  v21 = *(v12 + 32);
  sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  v48[1] = v21;
  Bindable.wrappedValue.getter();
  v22 = *&v57[OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry_entry];

  v23 = [v22 answerOptions];

  if (v23)
  {
    v24 = [v23 array];

    v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = *(v25 + 16);

    v61 = 0;
    v62 = v26;
    swift_getKeyPath();
    sub_1001C0308(a1, v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PickerRowCore);
    v27 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v28 = swift_allocObject();
    sub_1001C0374(v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27, type metadata accessor for PickerRowCore);
    sub_10000341C(&qword_10025E290, &qword_1001D3B28);
    sub_10006FFA8();
    v57 = &type metadata for Text;
    v58 = &type metadata for Int;
    v59 = &protocol witness table for Text;
    v60 = &protocol witness table for Int;
    v29 = 1;
    swift_getOpaqueTypeConformance2();
    v48[0] = v20;
    v30 = v49;
    ForEach<>.init(_:id:content:)();
    Bindable.wrappedValue.getter();
    v31 = v57;
    swift_getKeyPath();
    v57 = v31;
    sub_1001C0124(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v33 = *&v31[OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__userCreatedAnswer];
    v32 = *&v31[OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__userCreatedAnswer + 8];

    if (v32)
    {
      v57 = v33;
      v58 = v32;
      sub_10002AC34();
      *v5 = Text.init<A>(_:)();
      *(v5 + 1) = v34;
      v5[16] = v35 & 1;
      *(v5 + 3) = v36;
      *(v5 + 4) = -3;
      v5[40] = 1;
      v37 = v53;
      v38 = v54;
      (*(v53 + 32))(v54, v5, v30);
      v29 = 0;
    }

    else
    {
      v37 = v53;
      v38 = v54;
    }

    (*(v37 + 56))(v38, v29, 1, v30);
    v39 = v50;
    v40 = v51;
    v41 = *(v50 + 16);
    v42 = v52;
    v43 = v48[0];
    v41(v52, v48[0], v51);
    v44 = v55;
    sub_1000081F8(v38, v55, &qword_100267EA8, &qword_1001E2838);
    v45 = v56;
    v41(v56, v42, v40);
    v46 = sub_10000341C(&qword_100267EB8, &unk_1001E2848);
    sub_1000081F8(v44, &v45[*(v46 + 48)], &qword_100267EA8, &qword_1001E2838);
    sub_10000F500(v38, &qword_100267EA8, &qword_1001E2838);
    v47 = *(v39 + 8);
    v47(v43, v40);
    sub_10000F500(v44, &qword_100267EA8, &qword_1001E2838);
    v47(v42, v40);
  }

  else
  {
    __break(1u);
  }
}

void sub_1001B8378(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(type metadata accessor for PickerRowCore(0) + 24);
  sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  Bindable.wrappedValue.getter();
  v5 = *(v11 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry_entry);

  v6 = [v5 answerOptions];

  if (v6)
  {
    v7 = [v6 objectAtIndexedSubscript:v3];

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    if (swift_dynamicCast())
    {
      sub_10002AC34();
      *a2 = Text.init<A>(_:)();
      *(a2 + 8) = v8;
      *(a2 + 16) = v9 & 1;
      *(a2 + 24) = v10;
      *(a2 + 32) = v3;
      *(a2 + 40) = 1;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1001B84C4@<X0>(uint64_t a1@<X8>)
{
  if (qword_10025A898 != -1)
  {
    swift_once();
  }

  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  *(a1 + 32) = -2;
  *(a1 + 40) = 1;
  return result;
}

void sub_1001B859C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = type metadata accessor for PickerRowCore(0);
  v6 = v5[6];
  sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  Bindable.wrappedValue.getter();
  v7 = (a3 + v5[8]);
  v8 = *v7;
  v9 = v7[1];
  sub_10000341C(&qword_100267DD0, &qword_1001E2778);
  State.wrappedValue.getter();
  sub_10019C714(v21, 0);

  State.wrappedValue.getter();
  switch(v21)
  {
    case -3:
      Bindable.wrappedValue.getter();
      Bindable.wrappedValue.getter();
      swift_getKeyPath();
      sub_1001C0124(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v13 = *(v8 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__userCreatedAnswer);
      v14 = *(v8 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__userCreatedAnswer + 8);

      sub_10019BEEC(v13, v14);
      break;
    case -1:
      Bindable.wrappedValue.getter();
      v11 = (v8 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer);
      if (*(v8 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer + 8))
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        sub_1001C0124(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        return;
      }

      *v11 = 0;
      v11[1] = 0;
      break;
    case -2:
      v10 = (a3 + v5[7]);
      v23 = *v10;
      v24 = *(v10 + 1);
      sub_10000341C(&unk_1002640F0, &qword_1001D3490);
      State.wrappedValue.setter();
      Bindable.wrappedValue.getter();
      sub_10019C714(v4, 0);
      break;
    default:
      Bindable.wrappedValue.getter();
      v15 = *(v8 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry_entry);

      v16 = [v15 answerOptions];

      if (!v16)
      {
        __break(1u);
        return;
      }

      State.wrappedValue.getter();
      v17 = [v16 objectAtIndexedSubscript:v21];

      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      v18 = swift_dynamicCast();
      if (v18)
      {
        v19 = v21;
      }

      else
      {
        v19 = 0;
      }

      if (v18)
      {
        v20 = v22;
      }

      else
      {
        v20 = 0;
      }

      Bindable.wrappedValue.getter();
      sub_10019BEEC(v19, v20);
      break;
  }
}

uint64_t sub_1001B89D4(uint64_t a1)
{
  v2 = type metadata accessor for PickerRowCore(0);
  v3 = a1 + v2[7];
  LOBYTE(v13) = *v3;
  v14 = *(v3 + 8);
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  result = State.wrappedValue.getter();
  if ((v11 & 1) == 0)
  {
    v5 = v2[6];
    sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
    Bindable.wrappedValue.getter();
    swift_getKeyPath();
    sub_1001C0124(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v6 = *(v13 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__userCreatedAnswer + 8);

    if (v6)
    {

      v7 = -3;
    }

    else
    {
      v7 = -1;
    }

    v8 = (a1 + v2[8]);
    v9 = *v8;
    v10 = v8[1];
    v12 = v7;
    sub_10000341C(&qword_100267DD0, &qword_1001E2778);
    State.wrappedValue.setter();
    Bindable.wrappedValue.getter();
    State.wrappedValue.getter();
    sub_10019C714(v12, 0);
  }

  return result;
}

void sub_1001B8BB0(uint64_t a1@<X0>, char *a2@<X8>)
{
  v239 = a2;
  v3 = sub_10000341C(&qword_100267BF8, &qword_1001E25E0);
  v237 = *(v3 - 8);
  v238 = v3;
  v4 = *(v237 + 64);
  __chkstk_darwin(v3);
  v221 = &v205 - v5;
  v6 = sub_10000341C(&qword_100267C00, &qword_1001E25E8);
  v219 = *(v6 - 8);
  v220 = v6;
  v7 = *(v219 + 64);
  __chkstk_darwin(v6);
  v218 = &v205 - v8;
  v208 = sub_10000341C(&qword_100267C08, &qword_1001E25F0);
  v9 = *(*(v208 - 8) + 64);
  __chkstk_darwin(v208);
  v206 = (&v205 - v10);
  v11 = sub_10000341C(&qword_100267C10, &qword_1001E25F8);
  v209 = *(v11 - 8);
  v210 = v11;
  v12 = *(v209 + 64);
  __chkstk_darwin(v11);
  v207 = &v205 - v13;
  v14 = sub_10000341C(&qword_100267C18, &qword_1001E2600);
  v211 = *(v14 - 8);
  v212 = v14;
  v15 = *(v211 + 64);
  __chkstk_darwin(v14);
  v216 = &v205 - v16;
  v17 = sub_10000341C(&qword_100267C20, &qword_1001E2608);
  v214 = *(v17 - 8);
  v215 = v17;
  v18 = *(v214 + 64);
  v19 = __chkstk_darwin(v17);
  v213 = &v205 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v227 = &v205 - v21;
  v22 = sub_10000341C(&qword_100267C28, &qword_1001E2610);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v232 = &v205 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v229 = &v205 - v26;
  v257 = sub_10000341C(&qword_100267C30, &qword_1001E2618);
  v217 = *(v257 - 8);
  v27 = *(v217 + 64);
  v28 = __chkstk_darwin(v257);
  v256 = &v205 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v255 = &v205 - v30;
  v224 = sub_10000341C(&qword_100267C38, &qword_1001E2620);
  v31 = *(*(v224 - 8) + 64);
  __chkstk_darwin(v224);
  v222 = (&v205 - v32);
  v33 = sub_10000341C(&qword_100267C40, &qword_1001E2628);
  v225 = *(v33 - 8);
  v226 = v33;
  v34 = *(v225 + 64);
  __chkstk_darwin(v33);
  v223 = &v205 - v35;
  v254 = sub_10000341C(&qword_100267C48, &qword_1001E2630);
  v231 = *(v254 - 8);
  v36 = v231[8];
  v37 = __chkstk_darwin(v254);
  v253 = &v205 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v259 = &v205 - v39;
  v230 = type metadata accessor for Divider();
  v252 = *(v230 - 8);
  v40 = v252[8];
  v41 = __chkstk_darwin(v230);
  v205 = &v205 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v261 = &v205 - v44;
  __chkstk_darwin(v43);
  v258 = &v205 - v45;
  v46 = sub_10000341C(&qword_100267C50, &qword_1001E2638);
  v47 = *(*(v46 - 8) + 64);
  v48 = __chkstk_darwin(v46 - 8);
  v236 = &v205 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v260 = &v205 - v50;
  v270 = type metadata accessor for PickerRowCoreInline(0);
  v251 = *(v270 - 8);
  v51 = *(v251 + 64);
  __chkstk_darwin(v270);
  v267 = v52;
  v265 = &v205 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = type metadata accessor for AutomaticHoverEffect();
  v268 = *(v264 - 8);
  v53 = *(v268 + 8);
  __chkstk_darwin(v264);
  v263 = (&v205 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  v262 = type metadata accessor for UnevenRoundedRectangle();
  v55 = *(*(v262 - 8) + 64);
  __chkstk_darwin(v262);
  v57 = &v205 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_10000341C(&qword_100267C58, &qword_1001E2640);
  v59 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58);
  v61 = &v205 - v60;
  v62 = sub_10000341C(&qword_100267C60, &qword_1001E2648);
  v247 = *(v62 - 8);
  v248 = v62;
  v63 = *(v247 + 64);
  __chkstk_darwin(v62);
  v242 = &v205 - v64;
  v65 = sub_10000341C(&qword_100267C68, &qword_1001E2650);
  v249 = *(v65 - 8);
  v250 = v65;
  v66 = *(v249 + 64);
  __chkstk_darwin(v65);
  v246 = &v205 - v67;
  v68 = sub_10000341C(&qword_100267C70, &qword_1001E2658);
  v234 = *(v68 - 8);
  v235 = v68;
  v69 = *(v234 + 64);
  v70 = __chkstk_darwin(v68);
  v233 = &v205 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v70);
  v266 = &v205 - v72;
  v245 = static VerticalAlignment.center.getter();
  v284 = 1;
  v269 = a1;
  sub_1001BA8CC(a1, &v277);
  v289 = v279;
  v290 = v280;
  v291 = v281;
  v292 = v282;
  v287 = v277;
  v288 = v278;
  v294 = v282;
  v293[2] = v279;
  v293[3] = v280;
  v293[4] = v281;
  v293[0] = v277;
  v293[1] = v278;
  sub_1000081F8(&v287, &v273, &qword_100267C78, &qword_1001E2660);
  sub_10000F500(v293, &qword_100267C78, &qword_1001E2660);
  *(&v283[2] + 7) = v289;
  *(&v283[3] + 7) = v290;
  *(&v283[4] + 7) = v291;
  *(&v283[5] + 7) = v292;
  *(v283 + 7) = v287;
  *(&v283[1] + 7) = v288;
  LODWORD(v241) = v284;
  sub_10000341C(&unk_100263510, &qword_1001DAEA0);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_1001CF9E0;
  v74 = static Edge.Set.leading.getter();
  *(v73 + 32) = v74;
  v75 = static Edge.Set.trailing.getter();
  *(v73 + 33) = v75;
  v76 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v74)
  {
    v76 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v75)
  {
    v76 = Edge.Set.init(rawValue:)();
  }

  if (qword_10025A8A8 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v78 = v77;
  v80 = v79;
  v82 = v81;
  v84 = v83;
  v285 = 0;
  v85 = v269;
  v86 = *v269;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v286[23] = v278;
  *&v286[39] = v279;
  *&v286[7] = v277;
  v87 = v85 + *(v270 + 32);
  v88 = *v87;
  v89 = *(v87 + 1);
  v243 = v88;
  LOBYTE(v273) = v88;
  v244 = v89;
  *(&v273 + 1) = v89;
  v240 = sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.getter();
  if (v271 == 1)
  {
    if (qword_10025A8E8 != -1)
    {
      swift_once();
    }

    v90 = qword_100277428;
  }

  else
  {
    if (qword_10025A8F8 != -1)
    {
      swift_once();
    }

    v90 = qword_100277458;
  }

  v91 = sub_10000F34C(v262, v90);
  sub_1001C0308(v91, v57, &type metadata accessor for UnevenRoundedRectangle);
  v92 = &v61[*(v58 + 36)];
  sub_1001C0374(v57, v92, &type metadata accessor for UnevenRoundedRectangle);
  v228 = sub_10000341C(&qword_100267AE8, &qword_1001E2510);
  *(v92 + *(v228 + 36)) = 0;
  v93 = v283[3];
  *(v61 + 49) = v283[2];
  *(v61 + 65) = v93;
  *(v61 + 81) = v283[4];
  *(v61 + 6) = *(&v283[4] + 15);
  v94 = v283[1];
  *(v61 + 17) = v283[0];
  *v61 = v245;
  *(v61 + 1) = 0;
  v61[16] = v241;
  *(v61 + 33) = v94;
  v61[112] = v76;
  *(v61 + 113) = *v272;
  *(v61 + 29) = *&v272[3];
  *(v61 + 15) = v78;
  *(v61 + 16) = v80;
  *(v61 + 17) = v82;
  *(v61 + 18) = v84;
  v61[152] = 0;
  v95 = *&v286[16];
  *(v61 + 153) = *v286;
  *(v61 + 169) = v95;
  *(v61 + 185) = *&v286[32];
  *(v61 + 25) = *&v286[47];
  v96 = v263;
  static CustomHoverEffect<>.automatic.getter();
  v97 = sub_1001C25D8();
  v98 = v58;
  v99 = sub_1001C0124(&qword_1002635F8, &type metadata accessor for AutomaticHoverEffect);
  v100 = v242;
  v101 = v264;
  View.hoverEffect<A>(_:isEnabled:)();
  v102 = *(v268 + 1);
  v268 = (v268 + 8);
  v241 = v102;
  v102(v96, v101);
  sub_10000F500(v61, &qword_100267C58, &qword_1001E2640);
  v103 = v269;
  v104 = v269 + *(v270 + 44);
  v105 = *v104;
  v106 = *(v104 + 1);
  LOBYTE(v273) = v105;
  *(&v273 + 1) = v106;
  State.wrappedValue.getter();
  *&v273 = v98;
  *(&v273 + 1) = v101;
  v274 = v97;
  v245 = v99;
  v275 = v99;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v108 = v246;
  v109 = v248;
  View.hoverEffectDisabled(_:)();
  (*(v247 + 8))(v100, v109);
  v110 = v265;
  sub_1001C0308(v103, v265, type metadata accessor for PickerRowCoreInline);
  v111 = *(v251 + 80);
  v112 = swift_allocObject();
  sub_1001C0374(v110, v112 + ((v111 + 16) & ~v111), type metadata accessor for PickerRowCoreInline);
  *&v273 = v109;
  *(&v273 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v113 = v250;
  View.onTapGesture(count:perform:)();

  (*(v249 + 8))(v108, v113);
  LOBYTE(v273) = v243;
  *(&v273 + 1) = v244;
  State.wrappedValue.getter();
  v114 = 1;
  if (v271 != 1)
  {
    goto LABEL_24;
  }

  v250 = (v111 + 16) & ~v111;
  v251 = v111;
  Divider.init()();
  v115 = static VerticalAlignment.center.getter();
  v116 = v222;
  *v222 = v115;
  *(v116 + 8) = 0;
  *(v116 + 16) = 1;
  v117 = sub_10000341C(&qword_100267CC0, &qword_1001E2688);
  sub_1001BB27C(v103, (v116 + *(v117 + 44)));
  v118 = v103;
  if (qword_10025A900 != -1)
  {
    swift_once();
  }

  v119 = sub_10000F34C(v262, qword_100277470);
  v120 = v224;
  v121 = v116 + *(v224 + 36);
  sub_1001C0308(v119, v121, &type metadata accessor for UnevenRoundedRectangle);
  *(v121 + *(v228 + 36)) = 0;
  v122 = v263;
  static CustomHoverEffect<>.automatic.getter();
  v123 = sub_1001C2880();
  v124 = v223;
  v125 = v264;
  v126 = v245;
  View.hoverEffect<A>(_:isEnabled:)();
  v241(v122, v125);
  sub_10000F500(v116, &qword_100267C38, &qword_1001E2620);
  v127 = v118;
  v128 = v265;
  sub_1001C0308(v127, v265, type metadata accessor for PickerRowCoreInline);
  v129 = v250;
  v130 = swift_allocObject();
  sub_1001C0374(v128, v130 + v129, type metadata accessor for PickerRowCoreInline);
  *&v273 = v120;
  *(&v273 + 1) = v125;
  v274 = v123;
  v275 = v126;
  swift_getOpaqueTypeConformance2();
  v131 = v226;
  View.onTapGesture(count:perform:)();

  (*(v225 + 8))(v124, v131);
  v132 = *(v270 + 20);
  sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  v133 = v269;
  Bindable.wrappedValue.getter();
  v134 = *(v273 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry_entry);

  v135 = [v134 answerOptions];

  v136 = v229;
  if (v135)
  {
    v137 = [v135 array];

    v138 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v139 = *(v138 + 16);

    *&v273 = 0;
    *(&v273 + 1) = v139;
    swift_getKeyPath();
    sub_1001C0308(v133, v128, type metadata accessor for PickerRowCoreInline);
    v140 = swift_allocObject();
    sub_1001C0374(v128, v140 + v129, type metadata accessor for PickerRowCoreInline);
    sub_10000341C(&qword_10025E290, &qword_1001D3B28);
    sub_10000341C(&qword_100267CE0, &qword_1001E2698);
    sub_10006FFA8();
    sub_100007120(&qword_100267CE8, &qword_100267CE0, &qword_1001E2698);
    ForEach<>.init(_:id:content:)();
    v275 = &type metadata for WritingTools;
    v276 = sub_10002AC88();
    LOBYTE(v273) = 11;
    LOBYTE(v138) = isFeatureEnabled(_:)();
    sub_10000F4B4(&v273);
    if (v138)
    {
      Divider.init()();
      v141 = static VerticalAlignment.center.getter();
      v142 = v206;
      *v206 = v141;
      *(v142 + 8) = 0;
      *(v142 + 16) = 1;
      v143 = sub_10000341C(&qword_100267CF8, &qword_1001E26A8);
      sub_1001BC9D4(v133, (v142 + *(v143 + 44)));
      if (qword_10025A8F0 != -1)
      {
        swift_once();
      }

      v144 = sub_10000F34C(v262, qword_100277440);
      v145 = v208;
      v146 = v142 + *(v208 + 36);
      sub_1001C0308(v144, v146, &type metadata accessor for UnevenRoundedRectangle);
      *(v146 + *(v228 + 36)) = 0;
      v147 = v263;
      static CustomHoverEffect<>.automatic.getter();
      v148 = v133 + *(v270 + 40);
      v149 = *v148;
      v150 = *(v148 + 1);
      LOBYTE(v148) = v148[16];
      LOBYTE(v273) = v149;
      *(&v273 + 1) = v150;
      LOBYTE(v274) = v148;
      sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
      FocusState.wrappedValue.getter();
      v151 = sub_1001C2BB0();
      v152 = v207;
      v153 = v264;
      v154 = v245;
      View.hoverEffect<A>(_:isEnabled:)();
      v241(v147, v153);
      sub_10000F500(v142, &qword_100267C08, &qword_1001E25F0);
      v268 = type metadata accessor for PickerRowCoreInline;
      v155 = v133;
      v156 = v265;
      sub_1001C0308(v155, v265, type metadata accessor for PickerRowCoreInline);
      v157 = v250;
      v158 = swift_allocObject();
      v263 = type metadata accessor for PickerRowCoreInline;
      sub_1001C0374(v156, v158 + v157, type metadata accessor for PickerRowCoreInline);
      *&v273 = v145;
      *(&v273 + 1) = v153;
      v274 = v151;
      v275 = v154;
      v159 = swift_getOpaqueTypeConformance2();
      v160 = v210;
      View.onTapGesture(count:perform:)();

      (*(v209 + 8))(v152, v160);
      v161 = v269;
      v162 = v269 + *(v270 + 36);
      v163 = *v162;
      v164 = *(v162 + 2);
      v273 = v163;
      v274 = v164;
      sub_10000341C(&qword_100260098, &unk_1001D56B0);
      State.wrappedValue.getter();
      v273 = v271;
      sub_1001C0308(v161, v156, v268);
      v165 = swift_allocObject();
      sub_1001C0374(v156, v165 + v157, v263);
      *&v271 = v160;
      *(&v271 + 1) = v159;
      swift_getOpaqueTypeConformance2();
      v166 = v212;
      v167 = v216;
      View.onChange<A>(of:initial:_:)();

      (*(v211 + 8))(v167, v166);
      v168 = v252[2];
      v269 = ((v252 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
      v169 = v205;
      v170 = v230;
      v168(v205, v261, v230);
      v172 = v213;
      v171 = v214;
      v173 = *(v214 + 16);
      v174 = v215;
      v173(v213, v227, v215);
      v270 = v168;
      v168(v218, v169, v170);
      v175 = sub_10000341C(&qword_100267D18, &qword_1001E26B8);
      v176 = v218;
      v173(&v218[*(v175 + 48)], v172, v174);
      v177 = *(v171 + 8);
      v177(v227, v174);
      v178 = v252[1];
      v178(v261, v170);
      v179 = v172;
      v180 = v261;
      v177(v179, v174);
      v178(v169, v170);
      v181 = v180;
      v182 = v176;
      v183 = v229;
      sub_10002A894(v182, v229, &qword_100267C00, &qword_1001E25E8);
      (*(v219 + 56))(v183, 0, 1, v220);
    }

    else
    {
      (*(v219 + 56))(v136, 1, 1, v220);
      v270 = v252[2];
      v269 = ((v252 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
      v170 = v230;
      v181 = v261;
      v183 = v136;
    }

    v184 = v270;
    (v270)(v181, v258, v170);
    v268 = v231[2];
    (v268)(v253, v259, v254);
    v185 = v217;
    v267 = *(v217 + 16);
    v267(v256, v255, v257);
    sub_1000081F8(v183, v232, &qword_100267C28, &qword_1001E2610);
    v186 = v221;
    v184(v221, v181, v170);
    v187 = sub_10000341C(&qword_100267CF0, &qword_1001E26A0);
    v188 = v254;
    (v268)(v186 + v187[12], v253, v254);
    v189 = v257;
    v267((v186 + v187[16]), v256, v257);
    v190 = v232;
    sub_1000081F8(v232, v186 + v187[20], &qword_100267C28, &qword_1001E2610);
    sub_10000F500(v183, &qword_100267C28, &qword_1001E2610);
    v191 = *(v185 + 8);
    v191(v255, v189);
    v192 = v231[1];
    v192(v259, v188);
    v193 = v252[1];
    v194 = v230;
    v193(v258, v230);
    sub_10000F500(v190, &qword_100267C28, &qword_1001E2610);
    v191(v256, v257);
    v192(v253, v254);
    v193(v261, v194);
    sub_10002A894(v186, v260, &qword_100267BF8, &qword_1001E25E0);
    v114 = 0;
LABEL_24:
    v195 = v260;
    (*(v237 + 56))(v260, v114, 1, v238);
    v196 = v233;
    v197 = v234;
    v198 = *(v234 + 16);
    v199 = v266;
    v200 = v235;
    v198(v233, v266, v235);
    v201 = v236;
    sub_1000081F8(v195, v236, &qword_100267C50, &qword_1001E2638);
    v202 = v239;
    v198(v239, v196, v200);
    v203 = sub_10000341C(&qword_100267CB8, &qword_1001E2680);
    sub_1000081F8(v201, &v202[*(v203 + 48)], &qword_100267C50, &qword_1001E2638);
    sub_10000F500(v195, &qword_100267C50, &qword_1001E2638);
    v204 = *(v197 + 8);
    v204(v199, v200);
    sub_10000F500(v201, &qword_100267C50, &qword_1001E2638);
    v204(v196, v200);
    return;
  }

  __break(1u);
}

uint64_t sub_1001BA8CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_10025A8A0 != -1)
  {
    swift_once();
  }

  v4 = Text.init(_:tableName:bundle:comment:)();
  v27 = v5;
  v28 = v4;
  v26 = v6;
  v29 = v7;
  v25 = type metadata accessor for PickerRowCoreInline(0);
  v8 = *(v25 + 20);
  sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  sub_1001C0124(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(v30 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer);
  v9 = *(v30 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer + 8);

  sub_10002AC34();
  v11 = Text.init<A>(_:)();
  v13 = v12;
  LOBYTE(v10) = v14;
  static Color.secondary.getter();
  v15 = Text.foregroundColor(_:)();
  v17 = v16;
  v24 = v18;
  v20 = v19;

  sub_10002A984(v11, v13, v10 & 1);

  v21 = (a1 + *(v25 + 32));
  v31 = *v21;
  v32 = *(v21 + 1);
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.getter();
  v22 = Image.init(systemName:)();
  *a2 = v28;
  *(a2 + 8) = v27;
  *(a2 + 16) = v26 & 1;
  *(a2 + 24) = v29;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v15;
  *(a2 + 56) = v17;
  *(a2 + 64) = v24 & 1;
  *(a2 + 72) = v20;
  *(a2 + 80) = v22;
  sub_100007D98(v28, v27, v26 & 1);

  sub_100007D98(v15, v17, v24 & 1);

  sub_10002A984(v15, v17, v24 & 1);

  sub_10002A984(v28, v27, v26 & 1);
}

uint64_t sub_1001BAC18(uint64_t a1)
{
  v36 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v36 - 8);
  v2 = *(v39 + 64);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PickerRowCoreInline(0);
  v9 = v8 - 8;
  v31 = *(v8 - 8);
  v10 = *(v31 + 64);
  __chkstk_darwin(v8);
  v11 = type metadata accessor for DispatchTime();
  v34 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v30 - v17;
  v19 = a1 + *(v9 + 52);
  v20 = *v19;
  v21 = *(v19 + 8);
  LOBYTE(aBlock) = v20;
  v42 = v21;
  v47 = 0;
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.setter();
  sub_1000081B0(0, &qword_10025D5D0, OS_dispatch_queue_ptr);
  v32 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  v22 = *(a1 + *(v9 + 56));
  + infix(_:_:)();
  v33 = *(v12 + 8);
  v33(v16, v11);
  sub_1001C0308(a1, &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PickerRowCoreInline);
  v23 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v24 = swift_allocObject();
  sub_1001C0374(&v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for PickerRowCoreInline);
  v45 = sub_1001C3170;
  v46 = v24;
  aBlock = _NSConcreteStackBlock;
  v42 = 1107296256;
  v43 = sub_1001256BC;
  v44 = &unk_1002531F0;
  v25 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_1001C0124(&unk_100262460, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000341C(&unk_10025D5E0, &qword_1001DAE20);
  sub_100007120(&qword_100262470, &unk_10025D5E0, &qword_1001DAE20);
  v27 = v35;
  v26 = v36;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v28 = v32;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v25);

  (*(v39 + 8))(v27, v26);
  (*(v37 + 8))(v7, v38);
  v33(v18, v34);
  static Animation.easeInOut(duration:)();
  v40 = a1;
  withAnimation<A>(_:_:)();
}

uint64_t sub_1001BB14C(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for PickerRowCoreInline(0) + 44));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  return State.wrappedValue.setter();
}

uint64_t sub_1001BB1C0(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for PickerRowCoreInline(0) + 32));
  v2 = *v1;
  v3 = *(v1 + 1);

  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.getter();
  State.wrappedValue.setter();
}

uint64_t sub_1001BB27C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v66 = a2;
  v3 = sub_10000341C(&qword_100267D88, &qword_1001E2740);
  v67 = *(v3 - 8);
  v68 = v3;
  v4 = *(v67 + 64);
  v5 = __chkstk_darwin(v3);
  v70 = &v58[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v8 = &v58[-v7];
  if (qword_10025A8B8 != -1)
  {
    swift_once();
  }

  v9 = Text.init(_:tableName:bundle:comment:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v65 = a1;
  v16 = *a1;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v17 = v13 & 1;
  v90 = v13 & 1;
  v18 = static Edge.Set.leading.getter();
  v19 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v18)
  {
    v19 = Edge.Set.init(rawValue:)();
  }

  if (qword_10025A8A8 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v91 = 0;
  *&v81 = v9;
  *(&v81 + 1) = v11;
  LOBYTE(v82) = v17;
  *(&v82 + 1) = v15;
  v83 = v98;
  v84 = v99;
  v85 = v100;
  LOBYTE(v86) = v19;
  *(&v86 + 1) = v20;
  *&v87[0] = v21;
  *(&v87[0] + 1) = v22;
  *&v87[1] = v23;
  BYTE8(v87[1]) = 0;
  sub_10000341C(&qword_100267D90, &qword_1001E2748);
  sub_1001C3060();
  View.hoverEffectDisabled(_:)();
  v88[4] = v85;
  v88[5] = v86;
  v89[0] = v87[0];
  *(v89 + 9) = *(v87 + 9);
  v88[0] = v81;
  v88[1] = v82;
  v88[2] = v83;
  v88[3] = v84;
  sub_10000F500(v88, &qword_100267D90, &qword_1001E2748);
  v69 = Image.init(systemName:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v24 = v93;
  v63 = v94;
  v64 = v92;
  v25 = v95;
  v61 = v97;
  v62 = v96;
  v26 = static Edge.Set.trailing.getter();
  v27 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v26)
  {
    v27 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v80 = v24;
  v79 = v25;
  v78 = 0;
  v36 = v65 + *(type metadata accessor for PickerRowCoreInline(0) + 28);
  v37 = *v36;
  v38 = *(v36 + 1);
  LOBYTE(v81) = v37;
  *(&v81 + 1) = v38;
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.getter();
  if (v71)
  {
    v39 = 1.0;
  }

  else
  {
    v39 = 0.0;
  }

  v40 = v67;
  v41 = *(v67 + 16);
  v42 = v70;
  v59 = v24;
  v60 = v8;
  v43 = v8;
  v44 = v68;
  v41(v70, v43, v68);
  v45 = v66;
  v41(v66, v42, v44);
  v46 = sub_10000341C(&qword_100267DB0, &unk_1001E2758);
  v47 = &v45[*(v46 + 48)];
  *v47 = 0;
  v47[8] = 1;
  v48 = &v45[*(v46 + 64)];
  v50 = v63;
  v49 = v64;
  *&v71 = v69;
  *(&v71 + 1) = v64;
  LOBYTE(v72) = v24;
  *(&v72 + 1) = v63;
  LOBYTE(v73) = v25;
  v51 = v61;
  v52 = v62;
  *(&v73 + 1) = v62;
  *&v74 = v61;
  BYTE8(v74) = v27;
  *&v75 = v29;
  *(&v75 + 1) = v31;
  *&v76 = v33;
  *(&v76 + 1) = v35;
  LOBYTE(v77) = 0;
  *(&v77 + 1) = v39;
  v53 = v72;
  *v48 = v71;
  v48[1] = v53;
  v54 = v74;
  v48[2] = v73;
  v48[3] = v54;
  v55 = v76;
  v48[4] = v75;
  v48[5] = v55;
  v48[6] = v77;
  sub_1000081F8(&v71, &v81, &qword_100267D30, &qword_1001E26F8);
  v56 = *(v40 + 8);
  v56(v60, v44);
  *&v81 = v69;
  *(&v81 + 1) = v49;
  LOBYTE(v82) = v59;
  *(&v82 + 1) = v50;
  LOBYTE(v83) = v25;
  *(&v83 + 1) = v52;
  *&v84 = v51;
  BYTE8(v84) = v27;
  *&v85 = v29;
  *(&v85 + 1) = v31;
  *&v86 = v33;
  *(&v86 + 1) = v35;
  LOBYTE(v87[0]) = 0;
  *(v87 + 1) = v39;
  sub_10000F500(&v81, &qword_100267D30, &qword_1001E26F8);
  return (v56)(v70, v44);
}

uint64_t sub_1001BB800(uint64_t a1)
{
  v2 = type metadata accessor for PickerRowCoreInline(0);
  v3 = v2[5];
  sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  Bindable.wrappedValue.getter();
  v4 = (v10 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer);
  if (*(v10 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer + 8))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1001C0124(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *v4 = 0;
    v4[1] = 0;
  }

  v6 = (a1 + v2[7]);
  v11 = *v6;
  v14 = *(v6 + 1);
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.setter();
  v7 = (a1 + v2[10]);
  v12 = *v7;
  v15 = *(v7 + 1);
  v17 = v7[16];
  sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
  FocusState.wrappedValue.setter();
  v8 = (a1 + v2[6]);
  v13 = *v8;
  v16 = *(v8 + 1);
  return State.wrappedValue.setter();
}

void sub_1001BBA18(uint64_t *a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v90 = a3;
  v5 = type metadata accessor for PickerRowCoreInline(0);
  v6 = v5 - 8;
  v84 = *(v5 - 8);
  v7 = *(v84 + 64);
  __chkstk_darwin(v5);
  v85 = v8;
  v88 = (&v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for AutomaticHoverEffect();
  v10 = *(v9 - 8);
  v78 = v9;
  v79 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000341C(&qword_100267D38, &qword_1001E2700);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v76 - v16;
  v87 = sub_10000341C(&qword_100267D40, &qword_1001E2708);
  v83 = *(v87 - 8);
  v18 = *(v83 + 64);
  __chkstk_darwin(v87);
  v20 = &v76 - v19;
  v89 = sub_10000341C(&qword_100267D48, &qword_1001E2710);
  v86 = *(v89 - 8);
  v21 = *(v86 + 64);
  v22 = __chkstk_darwin(v89);
  v93 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v92 = &v76 - v24;
  v25 = type metadata accessor for Divider();
  v81 = *(v25 - 8);
  v82 = v25;
  v26 = *(v81 + 64);
  v27 = __chkstk_darwin(v25);
  v80 = &v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = *a1;
  v91 = &v76 - v30;
  Divider.init()();
  v31 = *(v6 + 28);
  sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  Bindable.wrappedValue.getter();
  v32 = *(*&v123[0] + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry_entry);

  v33 = [v32 answerOptions];

  if (v33)
  {
    v34 = [v33 objectAtIndexedSubscript:v29];

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    v35 = swift_dynamicCast();
    if (v35)
    {
      v36 = v124;
    }

    else
    {
      v36 = 0;
    }

    if (v35)
    {
      v37 = v125;
    }

    else
    {
      v37 = 0;
    }

    v38 = static VerticalAlignment.center.getter();
    v109 = 1;
    v76 = v37;
    v77 = v36;
    sub_1001BC374(v36, v37, a2, &v95);
    v120 = v105;
    v121 = v106;
    v122 = v107;
    v116 = v101;
    v117 = v102;
    v118 = v103;
    v119 = v104;
    v112 = v97;
    v113 = v98;
    v114 = v99;
    v115 = v100;
    v110 = v95;
    v111 = v96;
    v123[10] = v105;
    v123[11] = v106;
    v123[12] = v107;
    v123[6] = v101;
    v123[7] = v102;
    v123[9] = v104;
    v123[8] = v103;
    v123[1] = v96;
    v123[2] = v97;
    v123[3] = v98;
    v123[5] = v100;
    v123[4] = v99;
    v123[0] = v95;
    sub_1000081F8(&v110, v94, &qword_100267D50, &qword_1001E2718);
    sub_10000F500(v123, &qword_100267D50, &qword_1001E2718);
    *&v108[151] = v119;
    *&v108[167] = v120;
    *&v108[183] = v121;
    *&v108[199] = v122;
    *&v108[87] = v115;
    *&v108[103] = v116;
    *&v108[119] = v117;
    *&v108[135] = v118;
    *&v108[23] = v111;
    *&v108[39] = v112;
    *&v108[55] = v113;
    *&v108[71] = v114;
    *&v108[7] = v110;
    v39 = v109;
    v40 = *a2;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    if (qword_10025A900 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for UnevenRoundedRectangle();
    v42 = sub_10000F34C(v41, qword_100277470);
    v43 = &v17[*(v14 + 36)];
    sub_1001C0308(v42, v43, &type metadata accessor for UnevenRoundedRectangle);
    *(v43 + *(sub_10000341C(&qword_100267AE8, &qword_1001E2510) + 36)) = 0;
    v44 = *&v108[176];
    *(v17 + 177) = *&v108[160];
    *(v17 + 193) = v44;
    *(v17 + 209) = *&v108[192];
    v45 = *&v108[112];
    *(v17 + 113) = *&v108[96];
    *(v17 + 129) = v45;
    v46 = *&v108[144];
    *(v17 + 145) = *&v108[128];
    *(v17 + 161) = v46;
    v47 = *&v108[48];
    *(v17 + 49) = *&v108[32];
    *(v17 + 65) = v47;
    v48 = *&v108[80];
    *(v17 + 81) = *&v108[64];
    *(v17 + 97) = v48;
    v49 = *&v108[16];
    *(v17 + 17) = *v108;
    *(v17 + 33) = v49;
    v50 = v96;
    *(v17 + 232) = v95;
    *v17 = v38;
    *(v17 + 1) = 0;
    v17[16] = v39;
    *(v17 + 28) = *&v108[207];
    *(v17 + 248) = v50;
    *(v17 + 264) = v97;
    v51 = v13;
    static CustomHoverEffect<>.automatic.getter();
    v52 = sub_1001C2CF4();
    v53 = sub_1001C0124(&qword_1002635F8, &type metadata accessor for AutomaticHoverEffect);
    v54 = v78;
    View.hoverEffect<A>(_:isEnabled:)();
    (*(v79 + 8))(v51, v54);
    sub_10000F500(v17, &qword_100267D38, &qword_1001E2700);
    v55 = a2;
    v56 = v88;
    sub_1001C0308(v55, v88, type metadata accessor for PickerRowCoreInline);
    v57 = (*(v84 + 80) + 16) & ~*(v84 + 80);
    v58 = (v85 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
    v59 = swift_allocObject();
    sub_1001C0374(v56, v59 + v57, type metadata accessor for PickerRowCoreInline);
    v60 = (v59 + v58);
    v61 = v76;
    *v60 = v77;
    v60[1] = v61;
    v94[0] = v14;
    v94[1] = v54;
    v94[2] = v52;
    v94[3] = v53;
    swift_getOpaqueTypeConformance2();
    v62 = v92;
    v63 = v87;
    View.onTapGesture(count:perform:)();

    (*(v83 + 8))(v20, v63);
    v64 = v80;
    v65 = v81;
    v66 = *(v81 + 16);
    v67 = v82;
    v66(v80, v91, v82);
    v68 = v86;
    v88 = *(v86 + 16);
    v69 = v62;
    v70 = v89;
    (v88)(v93, v69, v89);
    v71 = v90;
    v66(v90, v64, v67);
    v72 = &v71[*(sub_10000341C(&qword_100267D80, &unk_1001E2730) + 48)];
    v73 = v93;
    (v88)(v72, v93, v70);
    v74 = *(v68 + 8);
    v74(v92, v70);
    v75 = *(v65 + 8);
    v75(v91, v67);
    v74(v73, v70);
    v75(v64, v67);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1001BC374@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    v38 = result;
    v74 = result;
    v75 = a2;
    sub_10002AC34();

    v7 = Text.init<A>(_:)();
    v9 = v8;
    v11 = v10;
    v47 = v12;
    v45 = v10 & 1;
    v46 = static Edge.Set.all.getter();
    v96 = v11 & 1;
    v95 = 1;
    v44 = Image.init(systemName:)();
    v13 = *a3;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v48 = v98;
    v43 = v99;
    v41 = v101;
    v39 = v97;
    v40 = v102;
    LOBYTE(v13) = static Edge.Set.trailing.getter();
    v14 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v13)
    {
      v14 = Edge.Set.init(rawValue:)();
    }

    if (qword_10025A8A8 != -1)
    {
      swift_once();
    }

    EdgeInsets.init(_all:)();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v91 = v98;
    v42 = v100;
    v90 = v100;
    v89 = 0;
    v23 = *(type metadata accessor for PickerRowCoreInline(0) + 20);
    sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
    Bindable.wrappedValue.getter();
    swift_getKeyPath();
    sub_1001C0124(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v24 = *(v74 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer);
    v25 = *(v74 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer + 8);

    if (v25)
    {
      if (v24 == v38 && v25 == a2)
      {

        v26 = 1.0;
LABEL_12:
        *&v60 = v7;
        *(&v60 + 1) = v9;
        LOBYTE(v61) = v45;
        *(&v61 + 1) = *v94;
        DWORD1(v61) = *&v94[3];
        *(&v61 + 1) = v47;
        v62[0] = v46;
        *&v62[1] = *v93;
        *&v62[4] = *&v93[3];
        memset(&v62[8], 0, 32);
        v62[40] = 1;
        *&v73[9] = *&v62[25];
        v72 = *v62;
        *v73 = *&v62[16];
        v70 = v60;
        v71 = v61;
        v59 = 1;
        *&v63 = v44;
        *(&v63 + 1) = v97;
        LOBYTE(v64) = v98;
        DWORD1(v64) = *&v92[3];
        *(&v64 + 1) = *v92;
        *(&v64 + 1) = v99;
        LOBYTE(v65) = v100;
        *(&v65 + 1) = v101;
        *&v66 = v102;
        BYTE8(v66) = v14;
        *&v67 = v16;
        *(&v67 + 1) = v18;
        *&v68 = v20;
        *(&v68 + 1) = v22;
        LOBYTE(v69) = 0;
        *(&v69 + 1) = v26;
        *&v58[39] = v65;
        *&v58[23] = v64;
        *&v58[7] = v63;
        *&v58[103] = v69;
        *&v58[87] = v68;
        *&v58[71] = v67;
        *&v58[55] = v66;
        v28 = v60;
        v29 = v61;
        v30 = *&v73[16];
        *(a4 + 48) = *&v62[16];
        *(a4 + 64) = v30;
        v31 = v72;
        *(a4 + 16) = v29;
        *(a4 + 32) = v31;
        *a4 = v28;
        *(a4 + 80) = 0;
        *(a4 + 88) = 1;
        v32 = *v58;
        v33 = *&v58[16];
        v34 = *&v58[32];
        *(a4 + 137) = *&v58[48];
        *(a4 + 121) = v34;
        *(a4 + 105) = v33;
        *(a4 + 89) = v32;
        v35 = *&v58[64];
        v36 = *&v58[80];
        v37 = *&v58[96];
        *(a4 + 200) = *&v58[111];
        *(a4 + 185) = v37;
        *(a4 + 169) = v36;
        *(a4 + 153) = v35;
        v74 = v44;
        v75 = v39;
        v76 = v48;
        *&v77[3] = *&v92[3];
        *v77 = *v92;
        v78 = v43;
        v79 = v42;
        v80 = v41;
        v81 = v40;
        v82 = v14;
        v83 = v16;
        v84 = v18;
        v85 = v20;
        v86 = v22;
        v87 = 0;
        v88 = v26;
        sub_1000081F8(&v60, v49, &qword_10025C890, &qword_1001DEC00);
        sub_1000081F8(&v63, v49, &qword_100267D30, &qword_1001E26F8);
        sub_10000F500(&v74, &qword_100267D30, &qword_1001E26F8);
        v49[0] = v7;
        v49[1] = v9;
        v50 = v45;
        *v51 = *v94;
        *&v51[3] = *&v94[3];
        v52 = v47;
        v53 = v46;
        *v54 = *v93;
        *&v54[3] = *&v93[3];
        v55 = 0u;
        v56 = 0u;
        v57 = 1;
        return sub_10000F500(v49, &qword_10025C890, &qword_1001DEC00);
      }

      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v26 = 1.0;
      if (v27)
      {
        goto LABEL_12;
      }
    }

    v26 = 0.0;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001BC884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PickerRowCoreInline(0);
  v7 = v6[5];
  sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  result = Bindable.wrappedValue.getter();
  if (a3)
  {

    sub_10019BEEC(a2, a3);

    v9 = (a1 + v6[10]);
    v12 = *v9;
    v15 = *(v9 + 1);
    v18 = v9[16];
    sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
    FocusState.wrappedValue.setter();
    v10 = (a1 + v6[6]);
    v13 = *v10;
    v16 = *(v10 + 1);
    sub_10000341C(&unk_1002640F0, &qword_1001D3490);
    State.wrappedValue.setter();
    v11 = (a1 + v6[7]);
    v14 = *v11;
    v17 = *(v11 + 1);
    return State.wrappedValue.setter();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001BC9D4@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v83 = a2;
  v3 = sub_10000341C(&qword_10025CB20, &qword_1001D1E40);
  v78 = *(v3 - 8);
  v79 = v3;
  v4 = *(v78 + 64);
  __chkstk_darwin(v3);
  v6 = &v74 - v5;
  v77 = sub_10000341C(&qword_100267AC0, &qword_1001E24E8);
  v7 = *(*(v77 - 8) + 64);
  __chkstk_darwin(v77);
  v9 = &v74 - v8;
  v84 = sub_10000341C(&qword_100267AC8, &qword_1001E24F0);
  v10 = *(*(v84 - 8) + 64);
  __chkstk_darwin(v84);
  v80 = &v74 - v11;
  v12 = sub_10000341C(&qword_100267D20, &qword_1001E26E8);
  v81 = *(v12 - 8);
  v82 = v12;
  v13 = *(v81 + 64);
  v14 = __chkstk_darwin(v12);
  v85 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v86 = &v74 - v16;
  if (qword_10025A898 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for PickerRowCoreInline(0);
  v18 = a1 + v17[9];
  v19 = *v18;
  v20 = *(v18 + 2);
  v87 = v19;
  *&v88 = v20;

  sub_10000341C(&qword_100260098, &unk_1001D56B0);
  State.projectedValue.getter();
  TextField<>.init(_:text:onEditingChanged:onCommit:)();
  v21 = a1 + v17[10];
  v22 = *v21;
  v23 = *(v21 + 1);
  LOBYTE(v21) = v21[16];
  LOBYTE(v94) = v22;
  v95 = v23;
  v96 = v21;
  sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
  FocusState.projectedValue.getter();
  sub_100007120(&qword_10025CB50, &qword_10025CB20, &qword_1001D1E40);
  v24 = v79;
  View.focused(_:)();

  (*(v78 + 8))(v6, v24);
  v25 = a1;
  v26 = *a1;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v27 = &v9[*(v77 + 36)];
  v28 = v112;
  *v27 = v111;
  *(v27 + 1) = v28;
  *(v27 + 2) = v113;
  v29 = static Edge.Set.leading.getter();
  v30 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v29)
  {
    v30 = Edge.Set.init(rawValue:)();
  }

  if (qword_10025A8A8 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = v80;
  sub_10002A894(v9, v80, &qword_100267AC0, &qword_1001E24E8);
  v40 = v39 + *(v84 + 36);
  *v40 = v30;
  *(v40 + 8) = v32;
  *(v40 + 16) = v34;
  *(v40 + 24) = v36;
  *(v40 + 32) = v38;
  *(v40 + 40) = 0;
  sub_1001C1DA4();
  View.hoverEffectDisabled(_:)();
  sub_10000F500(v39, &qword_100267AC8, &qword_1001E24F0);
  v80 = Image.init(systemName:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v41 = v115;
  v78 = v116;
  v79 = v114;
  v42 = v117;
  v76 = v119;
  v77 = v118;
  v43 = static Edge.Set.trailing.getter();
  LODWORD(v84) = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v43)
  {
    LODWORD(v84) = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v110 = v41;
  v109 = v42;
  v108 = 0;
  v52 = v25 + v17[6];
  v53 = *v52;
  v54 = *(v52 + 1);
  LOBYTE(v94) = v53;
  v95 = v54;
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.getter();
  if (v87)
  {
    v55 = 1.0;
  }

  else
  {
    v55 = 0.0;
  }

  v57 = v81;
  v56 = v82;
  v58 = v42;
  v74 = v41;
  v75 = v42;
  v59 = *(v81 + 16);
  v60 = v85;
  v59(v85, v86, v82);
  v61 = v83;
  v59(v83, v60, v56);
  v62 = &v61[*(sub_10000341C(&qword_100267D28, &qword_1001E26F0) + 48)];
  v63 = v79;
  v64 = v80;
  *&v87 = v80;
  *(&v87 + 1) = v79;
  LOBYTE(v88) = v41;
  v66 = v77;
  v65 = v78;
  *(&v88 + 1) = v78;
  LOBYTE(v89) = v58;
  v67 = v84;
  v68 = v76;
  *(&v89 + 1) = v77;
  *&v90 = v76;
  BYTE8(v90) = v84;
  *&v91 = v45;
  *(&v91 + 1) = v47;
  *&v92 = v49;
  *(&v92 + 1) = v51;
  LOBYTE(v93) = 0;
  *(&v93 + 1) = v55;
  v69 = v88;
  *v62 = v87;
  *(v62 + 1) = v69;
  v70 = v90;
  *(v62 + 2) = v89;
  *(v62 + 3) = v70;
  v71 = v92;
  *(v62 + 4) = v91;
  *(v62 + 5) = v71;
  *(v62 + 6) = v93;
  sub_1000081F8(&v87, &v94, &qword_100267D30, &qword_1001E26F8);
  v72 = *(v57 + 8);
  v72(v86, v56);
  v94 = v64;
  v95 = v63;
  v96 = v74;
  v97 = v65;
  v98 = v75;
  v99 = v66;
  v100 = v68;
  v101 = v67;
  v102 = v45;
  v103 = v47;
  v104 = v49;
  v105 = v51;
  v106 = 0;
  v107 = v55;
  sub_10000F500(&v94, &qword_100267D30, &qword_1001E26F8);
  return (v72)(v85, v56);
}

uint64_t sub_1001BD154(uint64_t a1)
{
  v2 = type metadata accessor for PickerRowCoreInline(0);
  v3 = (a1 + v2[10]);
  v13 = *v3;
  v17 = *(v3 + 1);
  v20 = v3[16];
  sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
  FocusState.wrappedValue.setter();
  v4 = (a1 + v2[6]);
  v14 = *v4;
  v18 = *(v4 + 1);
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.setter();
  v5 = (a1 + v2[7]);
  v15 = *v5;
  v19 = *(v5 + 1);
  LOBYTE(v11) = 0;
  State.wrappedValue.setter();
  v6 = v2[5];
  sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  Bindable.wrappedValue.getter();
  v7 = (a1 + v2[9]);
  v16 = *v7;
  v21 = *(v7 + 2);
  sub_10000341C(&qword_100260098, &unk_1001D56B0);
  State.wrappedValue.getter();
  sub_10019C2A8(v11, v12);

  Bindable.wrappedValue.getter();
  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  sub_1001C0124(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *(v16 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__userCreatedAnswer);
  v9 = *(v16 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__userCreatedAnswer + 8);

  sub_10019BEEC(v8, v9);
}

uint64_t sub_1001BD398(uint64_t a1)
{
  v2 = type metadata accessor for PickerRowCoreInline(0);
  v3 = *(v2 + 20);
  sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  Bindable.wrappedValue.getter();
  v4 = (a1 + *(v2 + 36));
  v10 = *v4;
  v11 = *(v4 + 2);
  sub_10000341C(&qword_100260098, &unk_1001D56B0);
  State.wrappedValue.getter();
  sub_10019C2A8(v8, v9);

  Bindable.wrappedValue.getter();
  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  sub_1001C0124(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v10 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__userCreatedAnswer);
  v6 = *(v10 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__userCreatedAnswer + 8);

  sub_10019BEEC(v5, v6);
}

double sub_1001BD520@<D0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = sub_10000341C(&qword_100267BE8, &qword_1001E25D0);
  sub_1001B8BB0(v1, (a1 + *(v3 + 44)));
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v4 = (a1 + *(sub_10000341C(&qword_100267BF0, &qword_1001E25D8) + 36));
  *v4 = v6;
  v4[1] = v7;
  result = *&v8;
  v4[2] = v8;
  return result;
}

double sub_1001BD5C8@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = static HorizontalAlignment.center.getter();
  sub_1001BD90C(v2, &v45);
  v24 = v55;
  v25 = v56;
  v26[0] = v57[0];
  *(v26 + 9) = *(v57 + 9);
  v20 = v51;
  v21 = v52;
  v22 = v53;
  v23 = v54;
  v16 = v47;
  v17 = v48;
  v18 = v49;
  v19 = v50;
  v14 = v45;
  v15 = v46;
  v27[10] = v55;
  v27[11] = v56;
  v28[0] = v57[0];
  *(v28 + 9) = *(v57 + 9);
  v27[6] = v51;
  v27[7] = v52;
  v27[8] = v53;
  v27[9] = v54;
  v27[2] = v47;
  v27[3] = v48;
  v27[4] = v49;
  v27[5] = v50;
  v27[0] = v45;
  v27[1] = v46;
  sub_1000081F8(&v14, &v29, &qword_100267810, &qword_1001E1F50);
  sub_10000F500(v27, &qword_100267810, &qword_1001E1F50);
  *&v13[167] = v24;
  *&v13[183] = v25;
  *&v13[199] = v26[0];
  *&v13[103] = v20;
  *&v13[119] = v21;
  *&v13[135] = v22;
  *&v13[151] = v23;
  *&v13[39] = v16;
  *&v13[55] = v17;
  *&v13[71] = v18;
  *&v13[87] = v19;
  *&v13[7] = v14;
  *&v13[23] = v15;
  v41 = *&v13[160];
  v42 = *&v13[176];
  v43 = *&v13[192];
  v44 = *(v26 + 9);
  v37 = *&v13[96];
  v38 = *&v13[112];
  v39 = *&v13[128];
  v40 = *&v13[144];
  v33 = *&v13[32];
  v34 = *&v13[48];
  v35 = *&v13[64];
  v36 = *&v13[80];
  v31 = *v13;
  v29 = v4;
  v30 = 1;
  v32 = *&v13[16];
  sub_1001C0DC8(&v29);
  sub_10000341C(&qword_100267818, &qword_1001E1F58);
  sub_10000341C(&qword_100267820, &qword_1001E1F60);
  sub_100007120(&qword_100267828, &qword_100267818, &qword_1001E1F58);
  sub_100007120(&qword_100267830, &qword_100267820, &qword_1001E1F60);
  _ConditionalContent<>.init(storage:)();
  v5 = v57[1];
  *(a1 + 192) = v57[0];
  *(a1 + 208) = v5;
  *(a1 + 224) = v57[2];
  *(a1 + 240) = v58;
  v6 = v54;
  *(a1 + 128) = v53;
  *(a1 + 144) = v6;
  v7 = v56;
  *(a1 + 160) = v55;
  *(a1 + 176) = v7;
  v8 = v50;
  *(a1 + 64) = v49;
  *(a1 + 80) = v8;
  v9 = v52;
  *(a1 + 96) = v51;
  *(a1 + 112) = v9;
  v10 = v46;
  *a1 = v45;
  *(a1 + 16) = v10;
  result = *&v47;
  v12 = v48;
  *(a1 + 32) = v47;
  *(a1 + 48) = v12;
  return result;
}

uint64_t sub_1001BD90C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v36 = sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  v4 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v6 = &v36 - v5;
  v42 = static VerticalAlignment.center.getter();
  LOBYTE(v67) = 1;
  sub_1001BDD40(&v70);
  v39 = v71;
  v40 = v70;
  v44 = v72;
  v38 = *&v73[7];
  v45 = *&v73[15];
  v37 = v73[23];
  LOBYTE(v70) = v72;
  LOBYTE(v46[0]) = v73[23];
  v43 = v67;
  v41 = static VerticalAlignment.center.getter();
  LOBYTE(v46[0]) = 1;
  v7 = (a1 + *(type metadata accessor for CustomRow(0) + 20));
  v8 = *v7;
  v9 = *(v7 + 1);
  LOBYTE(v67) = v8;
  v68 = v9;
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.projectedValue.getter();
  v10 = v70;
  v11 = v71;
  v12 = v72;
  Bindable.projectedValue.getter();
  sub_1001C0660(v10, v11, v12, v6, v60);
  *(&v59[4] + 7) = v60[4];
  *(&v59[5] + 7) = v60[5];
  *(&v59[6] + 7) = v61[0];
  v59[7] = *(v61 + 9);
  *(v59 + 7) = v60[0];
  *(&v59[1] + 7) = v60[1];
  *(&v59[2] + 7) = v60[2];
  *(&v59[3] + 7) = v60[3];
  v13 = v46[0];
  v14 = v42;
  v62[0] = v42;
  v62[1] = 0;
  LOBYTE(v63) = v43;
  v16 = v39;
  v15 = v40;
  *(&v63 + 1) = v40;
  *&v64 = v39;
  BYTE8(v64) = v44;
  v17 = v38;
  *&v65 = v38;
  *(&v65 + 1) = v45;
  v18 = v37;
  LOBYTE(v58[0]) = v37;
  v56 = v64;
  v57 = v65;
  v54 = v42;
  v55 = v63;
  v19 = v41;
  v67 = v41;
  v68 = 0;
  v69[0] = v46[0];
  v20 = v59[3];
  *&v69[49] = v59[3];
  v21 = v59[2];
  *&v69[33] = v59[2];
  v22 = v59[1];
  *&v69[17] = v59[1];
  v23 = v59[0];
  *&v69[1] = v59[0];
  v24 = *(v61 + 9);
  *&v69[113] = *(v61 + 9);
  v25 = v59[6];
  *&v69[97] = v59[6];
  v26 = v59[5];
  *&v69[81] = v59[5];
  v27 = v59[4];
  *&v69[65] = v59[4];
  *(&v58[1] + 8) = *v69;
  *(v58 + 8) = v41;
  *(&v58[5] + 8) = *&v69[64];
  *(&v58[4] + 8) = *&v69[48];
  *(&v58[3] + 8) = *&v69[32];
  *(&v58[2] + 8) = *&v69[16];
  *(&v58[8] + 8) = *&v69[112];
  BYTE8(v58[9]) = BYTE8(v61[1]);
  *(&v58[7] + 8) = *&v69[96];
  *(&v58[6] + 8) = *&v69[80];
  v28 = v58[7];
  a2[10] = v58[6];
  a2[11] = v28;
  a2[12] = v58[8];
  *(a2 + 201) = *(&v58[8] + 9);
  v29 = v58[3];
  a2[6] = v58[2];
  a2[7] = v29;
  v30 = v58[5];
  a2[8] = v58[4];
  a2[9] = v30;
  v31 = v57;
  a2[2] = v56;
  a2[3] = v31;
  v32 = v58[1];
  a2[4] = v58[0];
  a2[5] = v32;
  v33 = v55;
  *a2 = v54;
  a2[1] = v33;
  v76 = v27;
  v77 = v26;
  v78 = v25;
  v79 = v24;
  v34 = v18;
  v66 = v18;
  v70 = v19;
  v71 = 0;
  v72 = v13;
  *v73 = v23;
  *&v73[16] = v22;
  v74 = v21;
  v75 = v20;
  sub_1000081F8(v62, v46, &qword_100267700, &qword_1001E1E30);
  sub_1000081F8(&v67, v46, &qword_100267838, &qword_1001E1F68);
  sub_10000F500(&v70, &qword_100267838, &qword_1001E1F68);
  v46[0] = v14;
  v46[1] = 0;
  v47 = v43;
  v48 = v15;
  v49 = v16;
  v50 = v44;
  v51 = v17;
  v52 = v45;
  v53 = v34;
  return sub_10000F500(v46, &qword_100267700, &qword_1001E1E30);
}

void sub_1001BDD40(uint64_t a1@<X8>)
{
  sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  Bindable.wrappedValue.getter();
  v2 = *(v10 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry_entry);

  v3 = [v2 question];

  if (v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10002AC34();
    v4 = Text.init<A>(_:)();
    v6 = v5;
    *a1 = v4;
    *(a1 + 8) = v5;
    v8 = v7 & 1;
    *(a1 + 16) = v7 & 1;
    *(a1 + 24) = v9;
    *(a1 + 32) = 0;
    *(a1 + 40) = 1;
    sub_100007D98(v4, v5, v7 & 1);

    sub_10002A984(v4, v6, v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1001BDE64@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v2 = sub_10000341C(&qword_1002674A0, &unk_1001E1B70);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v53 - v4;
  v6 = static VerticalAlignment.center.getter();
  v7 = *(v1 + 32);
  v57 = *(v1 + 24);
  v55 = v6;
  v56 = v7;
  sub_1001BF6D0(v1, v64);
  v8 = *(v1 + 8) + *v1 + *(v1 + 8);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v59[55] = v64[3];
  *&v59[71] = v64[4];
  *&v59[87] = v64[5];
  *&v59[103] = v64[6];
  *&v59[7] = v64[0];
  *&v59[23] = v64[1];
  v61 = 1;
  v60 = 1;
  *&v59[39] = v64[2];
  sub_10000341C(&unk_100263510, &qword_1001DAEA0);
  v9 = swift_allocObject();
  v53 = xmmword_1001CF9E0;
  *(v9 + 16) = xmmword_1001CF9E0;
  v10 = static Edge.Set.leading.getter();
  *(v9 + 32) = v10;
  v11 = static Edge.Set.trailing.getter();
  *(v9 + 33) = v11;
  v12 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v10)
  {
    v12 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v11)
  {
    v12 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v54 = v13;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v62 = 0;
  v20 = swift_allocObject();
  *(v20 + 16) = v53;
  v21 = static Edge.Set.top.getter();
  *(v20 + 32) = v21;
  v22 = static Edge.Set.bottom.getter();
  *(v20 + 33) = v22;
  v23 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v21)
  {
    v23 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v22)
  {
    v23 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v63 = 0;
  v32 = *(v1 + 16);
  v33 = &v5[*(v2 + 36)];
  v34 = *(type metadata accessor for RoundedRectangle() + 20);
  v35 = enum case for RoundedCornerStyle.continuous(_:);
  v36 = type metadata accessor for RoundedCornerStyle();
  (*(*(v36 - 8) + 104))(&v33[v34], v35, v36);
  *v33 = v32;
  *(v33 + 1) = v32;
  if (qword_10025A7D8 != -1)
  {
    swift_once();
  }

  v37 = qword_100277188;
  v38 = sub_10000341C(&unk_100263560, &unk_1001D1590);
  *&v33[*(v38 + 52)] = v37;
  *&v33[*(v38 + 56)] = 256;

  v39 = static Alignment.center.getter();
  v41 = v40;
  v42 = &v33[*(sub_10000341C(&qword_10025C5C8, &qword_1001DC380) + 36)];
  *v42 = v39;
  v42[1] = v41;
  v43 = *&v59[32];
  *(v5 + 97) = *&v59[48];
  *(v5 + 81) = v43;
  v44 = *v59;
  *(v5 + 65) = *&v59[16];
  *(v5 + 49) = v44;
  *(v5 + 20) = *&v59[111];
  v45 = *&v59[80];
  *(v5 + 145) = *&v59[96];
  v46 = *&v59[64];
  *(v5 + 129) = v45;
  *v5 = v55;
  *(v5 + 1) = 0;
  v5[16] = 1;
  v47 = v56;
  *(v5 + 3) = v57;
  *(v5 + 4) = v47;
  *(v5 + 5) = 0;
  v5[48] = 1;
  *(v5 + 113) = v46;
  v5[168] = v12;
  *(v5 + 22) = v54;
  *(v5 + 23) = v15;
  *(v5 + 24) = v17;
  *(v5 + 25) = v19;
  v5[208] = 0;
  v5[216] = v23;
  *(v5 + 28) = v25;
  *(v5 + 29) = v27;
  *(v5 + 30) = v29;
  *(v5 + 31) = v31;
  v5[256] = 0;
  v48 = sub_10000341C(&qword_1002674A8, &qword_1001E1B80);
  v49 = v58;
  v50 = (v58 + *(v48 + 36));
  *v50 = 0;
  v51 = *(type metadata accessor for CommonUIBlendModifier(0) + 20);
  *&v50[v51] = swift_getKeyPath();
  sub_10000341C(&qword_100262940, &unk_1001D0560);
  swift_storeEnumTagMultiPayload();
  return sub_10002A894(v5, v49, &qword_1002674A0, &unk_1001E1B70);
}

uint64_t sub_1001BE39C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10000341C(&qword_10025C5D0, &qword_1001D15A0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v23 - v8;
  v23[2] = a1;
  v23[3] = a2;
  sub_10002AC34();

  v10 = Text.init<A>(_:)();
  v12 = v11;
  v14 = v13;
  v15 = type metadata accessor for Font.Design();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  static Font.system(size:weight:design:)();
  sub_10000F500(v9, &qword_10025C5D0, &qword_1001D15A0);
  v16 = Text.font(_:)();
  v18 = v17;
  LOBYTE(v9) = v19;
  v21 = v20;

  sub_10002A984(v10, v12, v14 & 1);

  *a3 = v16;
  *(a3 + 8) = v18;
  *(a3 + 16) = v9 & 1;
  *(a3 + 24) = v21;
  *(a3 + 32) = 0;
  *(a3 + 40) = 1;
  sub_100007D98(v16, v18, v9 & 1);

  sub_10002A984(v16, v18, v9 & 1);
}

__n128 sub_1001BE57C@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v5 = v1[1];
  v4 = v1[2];
  v6 = static VerticalAlignment.center.getter();
  sub_1001BE39C(v5, v4, &v12);
  v7 = v13;
  v8 = v14;
  v9 = v15;
  v10 = v16;
  result = v12;
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = result;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  *(a1 + 56) = v9;
  *(a1 + 64) = v10;
  return result;
}

id sub_1001BE610()
{
  v0 = [objc_opt_self() pondering];
  v28 = [objc_allocWithZone(_UIDirectionalLightConfiguration) initWithPalette:v0];

  v1 = [objc_opt_self() directionalLightWithConfiguration:v28];
  v2 = [objc_allocWithZone(_UIIntelligenceContentLightEffect) initWithLightSource:v1];
  v3 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v2];
  v4 = objc_allocWithZone(sub_10000341C(&qword_100267840, &unk_1001E1F70));

  v5 = _UIHostingView.init(rootView:)();
  v6 = [v3 contentView];
  v7 = v5;
  [v6 addSubview:v7];

  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v27 = objc_opt_self();
  sub_10000341C(&qword_10025F470, &qword_1001D1020);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1001CE090;
  v9 = [v3 contentView];
  v10 = [v9 topAnchor];

  v11 = [v7 topAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v8 + 32) = v12;
  v13 = [v3 contentView];
  v14 = [v13 leadingAnchor];

  v15 = [v7 leadingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v8 + 40) = v16;
  v17 = [v3 contentView];
  v18 = [v17 trailingAnchor];

  v19 = [v7 trailingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  *(v8 + 48) = v20;
  v21 = [v3 contentView];
  v22 = [v21 bottomAnchor];

  v23 = [v7 bottomAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];

  *(v8 + 56) = v24;
  sub_1000081B0(0, &qword_10025AD00, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v27 activateConstraints:isa];

  return v3;
}

uint64_t sub_1001BEA60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001BEAA8(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_1001BEB14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LocalizedStringResource();
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

uint64_t sub_1001BEBE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LocalizedStringResource();
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

unint64_t sub_1001BECBC()
{
  result = type metadata accessor for LocalizedStringResource();
  if (v1 <= 0x3F)
  {
    result = sub_1000596F4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

id sub_1001BED5C()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1001BE610();
}

uint64_t sub_1001BED64@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LoadingBar.IntelligentLoadingLabel.Coordinator();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_1001BED98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001C0DD4();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1001BEDFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001C0DD4();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1001BEE60()
{
  sub_1001C0DD4();
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_1001BEE88@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 4);
  return sub_1001BDE64(a1);
}

uint64_t sub_1001BEEC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v20[0] = sub_10000341C(&qword_100264FA8, &unk_1001DD840);
  v3 = *(*(v20[0] - 8) + 64);
  __chkstk_darwin(v20[0]);
  v5 = v20 - v4;
  v6 = type metadata accessor for ToolbarItemPlacement();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_10000341C(&unk_100264FB0, &unk_1001E1BE0);
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v8);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v20 - v14;
  static ToolbarItemPlacement.confirmationAction.getter();
  v20[8] = a1;
  sub_10000341C(&unk_10025DF60, &unk_1001D7CD0);
  sub_100007120(&qword_100264210, &unk_10025DF60, &unk_1001D7CD0);
  ToolbarItem<>.init(placement:content:)();
  static ToolbarItemPlacement.cancellationAction.getter();
  v20[4] = a1;
  ToolbarItem<>.init(placement:content:)();
  v16 = *(v20[0] + 48);
  v17 = v9[2];
  v17(v5, v15, v8);
  v17(&v5[v16], v13, v8);
  TupleToolbarContent.init(_:)();
  v18 = v9[1];
  v18(v13, v8);
  return (v18)(v15, v8);
}

uint64_t sub_1001BF184(uint64_t a1)
{
  v2 = type metadata accessor for QuestionnaireSafetyUI(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  if (qword_10025A848 != -1)
  {
    swift_once();
  }

  sub_1001C0308(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for QuestionnaireSafetyUI);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1001C0374(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for QuestionnaireSafetyUI);

  return Button<>.init(_:action:)();
}

uint64_t sub_1001BF324(uint64_t a1)
{
  v2 = type metadata accessor for QuestionnaireSafetyUI(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  if (qword_10025A858 != -1)
  {
    swift_once();
  }

  sub_1001C0308(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for QuestionnaireSafetyUI);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1001C0374(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for QuestionnaireSafetyUI);

  return Button<>.init(_:action:)();
}

uint64_t sub_1001BF4C4()
{
  v1 = sub_10000341C(&qword_1002674B0, &qword_1001E1BC0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v8[-v3];
  *v4 = static HorizontalAlignment.center.getter();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = *(sub_10000341C(&qword_1002674B8, &qword_1001E1BC8) + 44);
  v6 = type metadata accessor for LocalizedStringResource();
  (*(*(v6 - 8) + 16))(&v4[v5], v0, v6);
  v9 = v0;
  sub_10000341C(&qword_100264F90, &unk_1001E1BD0);
  sub_100007120(&qword_1002674C0, &qword_1002674B0, &qword_1001E1BC0);
  sub_100007120(&qword_100264FA0, &qword_100264F90, &unk_1001E1BD0);
  View.toolbar<A>(content:)();
  return sub_10000F500(v4, &qword_1002674B0, &qword_1001E1BC0);
}

uint64_t sub_1001BF72C()
{
  v1 = type metadata accessor for QuestionnaireSafetyUI(0);
  v2 = v0 + *(v1 + 24) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v2 + 8);
  return (*v2)();
}

uint64_t sub_1001BF798()
{
  v1 = (type metadata accessor for QuestionnaireSafetyUI(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for LocalizedStringResource();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v0 + v3 + v1[7] + 8);

  v7 = *(v0 + v3 + v1[8] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1001BF894()
{
  v1 = type metadata accessor for QuestionnaireSafetyUI(0);
  v2 = v0 + *(v1 + 20) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v2 + 8);
  return (*v2)();
}

void sub_1001BF950()
{
  sub_1001BF9E4();
  if (v0 <= 0x3F)
  {
    sub_1001C16C0(319, &qword_10025DE40);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001BF9E4()
{
  if (!qword_100265530)
  {
    type metadata accessor for QuestionnaireEntry();
    v0 = type metadata accessor for Bindable();
    if (!v1)
    {
      atomic_store(v0, &qword_100265530);
    }
  }
}

uint64_t sub_1001BFA50(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1001BFADC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1001BFB78()
{
  sub_1001BF9E4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1001BFBF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1001BFCE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_1001BFDAC()
{
  sub_1001BF9E4();
  if (v0 <= 0x3F)
  {
    sub_1001C16C0(319, &qword_10025DE40);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1001BFE9C()
{
  result = qword_100267688;
  if (!qword_100267688)
  {
    sub_100003E34(&qword_1002674A0, &unk_1001E1B70);
    sub_1001BFF54();
    sub_100007120(&qword_10025CA20, &qword_10025C5C8, &qword_1001DC380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267688);
  }

  return result;
}

unint64_t sub_1001BFF54()
{
  result = qword_100267690;
  if (!qword_100267690)
  {
    sub_100003E34(&qword_100267698, &qword_1001E1C20);
    sub_1001BFFE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267690);
  }

  return result;
}

unint64_t sub_1001BFFE0()
{
  result = qword_1002676A0;
  if (!qword_1002676A0)
  {
    sub_100003E34(&qword_1002676A8, &qword_1001E1C28);
    sub_1001C006C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002676A0);
  }

  return result;
}

unint64_t sub_1001C006C()
{
  result = qword_1002676B0;
  if (!qword_1002676B0)
  {
    sub_100003E34(&qword_1002676B8, &qword_1001E1C30);
    sub_100007120(&qword_1002676C0, &qword_1002676C8, &qword_1001E1C38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002676B0);
  }

  return result;
}

uint64_t sub_1001C0124(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001C016C()
{
  sub_100003E34(&qword_1002674B0, &qword_1001E1BC0);
  sub_100003E34(&qword_100264F90, &unk_1001E1BD0);
  sub_100007120(&qword_1002674C0, &qword_1002674B0, &qword_1001E1BC0);
  sub_100007120(&qword_100264FA0, &qword_100264F90, &unk_1001E1BD0);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1001C0260()
{
  result = qword_1002676D8;
  if (!qword_1002676D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002676D8);
  }

  return result;
}

uint64_t sub_1001C0308(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001C0374(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1001C0408()
{
  result = qword_100267758;
  if (!qword_100267758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267758);
  }

  return result;
}

uint64_t sub_1001C045C()
{
  v1 = (type metadata accessor for MultichoiceRow(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v0 + v3 + v1[7] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_1001C0580()
{
  result = qword_100267770;
  if (!qword_100267770)
  {
    sub_100003E34(&qword_100267768, &qword_1001E1EB0);
    sub_1001C060C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267770);
  }

  return result;
}

unint64_t sub_1001C060C()
{
  result = qword_100267778;
  if (!qword_100267778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267778);
  }

  return result;
}

id sub_1001C0660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  if (qword_10025A8B0 != -1)
  {
    swift_once();
  }

  v31 = byte_1002773A8;
  *(&v37 + 1) = 0xE000000000000000;
  State.init(wrappedValue:)();
  v30 = FocusState.init<>()();
  v32 = v7;
  v25 = v8;
  swift_getKeyPath();
  v9 = sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  Bindable<A>.subscript.getter();

  v28 = *(&v44 + 1);
  v29 = v44;
  v26 = *(&v45 + 1);
  v27 = v45;
  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  *&v37 = v44;
  sub_1001C0124(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = *(v44 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer);
  v11 = *(v44 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer + 8);

  if (!v11)
  {
    goto LABEL_9;
  }

  v24 = v10;
  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  *&v37 = v44;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(v44 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer + 8))
  {

LABEL_9:
    (*(*(v9 - 8) + 8))(a4, v9);
    goto LABEL_10;
  }

  v12 = *(v44 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer);
  v13 = *(v44 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry_entry);

  result = [v13 answerOptions];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v15 = result;
  v16 = String._bridgeToObjectiveC()();

  v17 = [v15 containsObject:v16];

  (*(*(v9 - 8) + 8))(a4, v9);
  if ((v17 & 1) == 0)
  {

    v18 = 0;
    v19 = v24;
    goto LABEL_11;
  }

LABEL_10:
  v11 = *(&v44 + 1);
  v18 = v45;
  v19 = v44;
LABEL_11:
  *&v37 = 64;
  v20 = 10.0;
  if (v31)
  {
    v20 = 16.0;
  }

  *(&v37 + 1) = v20;
  *&v38 = 0x4049000000000000;
  *(&v38 + 1) = a1;
  *&v39 = a2;
  BYTE8(v39) = a3 & 1;
  *(&v39 + 9) = v61[0];
  HIDWORD(v39) = *(v61 + 3);
  v40 = v44;
  v41 = v45;
  *&v42 = v19;
  *(&v42 + 1) = v11;
  *v43 = v18;
  v43[8] = v30 & 1;
  *&v43[12] = *&v60[3];
  *&v43[9] = *v60;
  *&v43[16] = v32;
  v43[24] = v25 & 1;
  *&v44 = 64;
  *(&v44 + 1) = v20;
  *&v45 = 0x4049000000000000;
  *(&v45 + 1) = a1;
  v46 = a2;
  v47 = a3 & 1;
  *v48 = v61[0];
  *&v48[3] = *(v61 + 3);
  v49 = v29;
  v50 = v28;
  v51 = v27;
  v52 = v26;
  v53 = v19;
  v54 = v11;
  v55 = v18;
  v56 = v30 & 1;
  *&v57[3] = *&v60[3];
  *v57 = *v60;
  v58 = v32;
  v59 = v25 & 1;
  sub_1001C0AC8(&v37, v36);
  result = sub_1001C0B00(&v44);
  v21 = v42;
  a5[4] = v41;
  a5[5] = v21;
  a5[6] = *v43;
  *(a5 + 105) = *&v43[9];
  v22 = v38;
  *a5 = v37;
  a5[1] = v22;
  v23 = v40;
  a5[2] = v39;
  a5[3] = v23;
  return result;
}

uint64_t sub_1001C0B50()
{
  v1 = (type metadata accessor for MultichoiceRow(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = *(v5 + v1[7] + 8);

  v8 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, ((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1001C0C68()
{
  v1 = *(type metadata accessor for MultichoiceRow(0) - 8);
  v2 = (*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1001B2F08(*(v0 + v2), *(v0 + v2 + 8), *(v0 + ((v2 + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1001C0D68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1001C0DD4()
{
  result = qword_100267848;
  if (!qword_100267848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267848);
  }

  return result;
}

uint64_t sub_1001C0E28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1001C0E70(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

__n128 sub_1001C0ED0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1001C0EF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1001C0F3C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1001C0FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
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
    v10 = type metadata accessor for UnevenRoundedRectangle();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1001C1070(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for UnevenRoundedRectangle();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1001C1110()
{
  result = type metadata accessor for UnevenRoundedRectangle();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001C11A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1001C128C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = (a2 - 1);
  }

  return result;
}

void sub_1001C1358()
{
  sub_1001BF9E4();
  if (v0 <= 0x3F)
  {
    sub_1001C16C0(319, &qword_10025DE40);
    if (v1 <= 0x3F)
    {
      sub_1001C16C0(319, &qword_10025B4B0);
      if (v2 <= 0x3F)
      {
        sub_1000275C0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1001C146C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1001C153C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1001C15EC()
{
  sub_1001BF9E4();
  if (v0 <= 0x3F)
  {
    sub_1001C16C0(319, &qword_10025DE40);
    if (v1 <= 0x3F)
    {
      sub_1001C16C0(319, &unk_100267A00);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1001C16C0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for State();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

__n128 sub_1001C171C(uint64_t a1, __int128 *a2)
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
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1001C1748(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 121))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001C1790(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 121) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 121) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1001C1800(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1001C182C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
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

uint64_t sub_1001C1874(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1001C1938()
{
  result = qword_100267A50;
  if (!qword_100267A50)
  {
    sub_100003E34(&qword_100267A58, &qword_1001E21B0);
    sub_100007120(&qword_1002677D0, &qword_1002677C8, &qword_1001E1F28);
    sub_100007120(&qword_1002677D8, &qword_1002677B8, &qword_1001E1F18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267A50);
  }

  return result;
}

unint64_t sub_1001C1A20()
{
  result = qword_100267A60;
  if (!qword_100267A60)
  {
    sub_100003E34(&qword_100267A68, qword_1001E21B8);
    sub_100007120(&qword_100267828, &qword_100267818, &qword_1001E1F58);
    sub_100007120(&qword_100267830, &qword_100267820, &qword_1001E1F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267A60);
  }

  return result;
}

uint64_t sub_1001C1C2C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 41, 7);
}

unint64_t sub_1001C1CEC()
{
  result = qword_100267AF0;
  if (!qword_100267AF0)
  {
    sub_100003E34(&qword_100267AD0, &qword_1001E24F8);
    sub_1001C1DA4();
    sub_100007120(&qword_100267B08, &qword_100267AE8, &qword_1001E2510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267AF0);
  }

  return result;
}

unint64_t sub_1001C1DA4()
{
  result = qword_100267AF8;
  if (!qword_100267AF8)
  {
    sub_100003E34(&qword_100267AC8, &qword_1001E24F0);
    sub_1001C1E30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267AF8);
  }

  return result;
}

unint64_t sub_1001C1E30()
{
  result = qword_100267B00;
  if (!qword_100267B00)
  {
    sub_100003E34(&qword_100267AC0, &qword_1001E24E8);
    sub_100003E34(&qword_10025CB20, &qword_1001D1E40);
    sub_100007120(&qword_10025CB50, &qword_10025CB20, &qword_1001D1E40);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267B00);
  }

  return result;
}

uint64_t sub_1001C1F2C()
{
  v1 = v0[5];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[14];

  v8 = v0[16];

  return _swift_deallocObject(v0, 137, 7);
}

uint64_t sub_1001C1FA0()
{
  v2 = *(v0 + 120);
  v3 = *(v0 + 136);
  sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
  return FocusState.wrappedValue.setter();
}

unint64_t sub_1001C2000()
{
  result = qword_100267B10;
  if (!qword_100267B10)
  {
    sub_100003E34(&qword_100267AE0, &qword_1001E2508);
    sub_100003E34(&qword_100267AD0, &qword_1001E24F8);
    sub_1001C1CEC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267B10);
  }

  return result;
}

unint64_t sub_1001C20DC()
{
  result = qword_100267B50;
  if (!qword_100267B50)
  {
    sub_100003E34(&qword_100267B30, &qword_1001E2538);
    sub_1001C2194();
    sub_100007120(&qword_100267B08, &qword_100267AE8, &qword_1001E2510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267B50);
  }

  return result;
}

unint64_t sub_1001C2194()
{
  result = qword_100267B58;
  if (!qword_100267B58)
  {
    sub_100003E34(&qword_100267B28, &qword_1001E2530);
    sub_100007120(&qword_100267B60, &qword_100267B68, &qword_1001E2558);
    sub_100007120(&qword_100267B70, &qword_100267B48, &qword_1001E2550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267B58);
  }

  return result;
}

uint64_t sub_1001C22BC()
{
  sub_10000F4B4(v0 + 2);
  v1 = v0[8];

  v2 = v0[10];

  return _swift_deallocObject(v0, 88, 7);
}

unint64_t sub_1001C2314()
{
  result = qword_100267BC8;
  if (!qword_100267BC8)
  {
    sub_100003E34(&qword_100267BA0, &qword_1001E25A0);
    sub_10013183C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267BC8);
  }

  return result;
}

unint64_t sub_1001C23A0()
{
  result = qword_100267BD0;
  if (!qword_100267BD0)
  {
    sub_100003E34(&qword_100267BC0, &unk_1001E25C0);
    sub_1001C242C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267BD0);
  }

  return result;
}

unint64_t sub_1001C242C()
{
  result = qword_100267BD8;
  if (!qword_100267BD8)
  {
    sub_100003E34(&qword_100267BB8, &qword_1001E25B8);
    sub_1001C24E4();
    sub_100007120(&unk_1002635D0, &qword_10025CA90, &qword_1001DAFA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267BD8);
  }

  return result;
}

unint64_t sub_1001C24E4()
{
  result = qword_100267BE0;
  if (!qword_100267BE0)
  {
    sub_100003E34(&qword_100267BB0, &qword_1001E25B0);
    sub_100003E34(&qword_100267BA0, &qword_1001E25A0);
    sub_1001C2314();
    swift_getOpaqueTypeConformance2();
    sub_100007120(&qword_100267B70, &qword_100267B48, &qword_1001E2550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267BE0);
  }

  return result;
}

unint64_t sub_1001C25D8()
{
  result = qword_100267C80;
  if (!qword_100267C80)
  {
    sub_100003E34(&qword_100267C58, &qword_1001E2640);
    sub_1001C2690();
    sub_100007120(&qword_100267B08, &qword_100267AE8, &qword_1001E2510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267C80);
  }

  return result;
}

unint64_t sub_1001C2690()
{
  result = qword_100267C88;
  if (!qword_100267C88)
  {
    sub_100003E34(&qword_100267C90, &qword_1001E2668);
    sub_1001C271C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267C88);
  }

  return result;
}

unint64_t sub_1001C271C()
{
  result = qword_100267C98;
  if (!qword_100267C98)
  {
    sub_100003E34(&qword_100267CA0, &qword_1001E2670);
    sub_100007120(&qword_100267CA8, &qword_100267CB0, &qword_1001E2678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267C98);
  }

  return result;
}

uint64_t sub_1001C2804(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_1001C2880()
{
  result = qword_100267CC8;
  if (!qword_100267CC8)
  {
    sub_100003E34(&qword_100267C38, &qword_1001E2620);
    sub_100007120(&qword_100267CD0, &qword_100267CD8, &qword_1001E2690);
    sub_100007120(&qword_100267B08, &qword_100267AE8, &qword_1001E2510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267CC8);
  }

  return result;
}

uint64_t sub_1001C2964()
{
  v1 = type metadata accessor for PickerRowCoreInline(0);
  v2 = (v1 - 8);
  v3 = *(*(v1 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v1 - 8) + 64);
  v6 = *(v1 + 20);
  v7 = sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  (*(*(v7 - 8) + 8))(v0 + v4 + v6, v7);
  v8 = *(v0 + v4 + v2[8] + 8);

  v9 = *(v0 + v4 + v2[9] + 8);

  v10 = *(v0 + v4 + v2[10] + 8);

  v11 = v0 + v4 + v2[11];
  v12 = *(v11 + 8);

  v13 = *(v11 + 16);

  v14 = *(v0 + v4 + v2[12] + 8);

  v15 = *(v0 + v4 + v2[13] + 8);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1001C2B18(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

unint64_t sub_1001C2BB0()
{
  result = qword_100267D00;
  if (!qword_100267D00)
  {
    sub_100003E34(&qword_100267C08, &qword_1001E25F0);
    sub_100007120(&qword_100267D08, &qword_100267D10, &qword_1001E26B0);
    sub_100007120(&qword_100267B08, &qword_100267AE8, &qword_1001E2510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267D00);
  }

  return result;
}

unint64_t sub_1001C2CF4()
{
  result = qword_100267D58;
  if (!qword_100267D58)
  {
    sub_100003E34(&qword_100267D38, &qword_1001E2700);
    sub_1001C2DAC();
    sub_100007120(&qword_100267B08, &qword_100267AE8, &qword_1001E2510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267D58);
  }

  return result;
}

unint64_t sub_1001C2DAC()
{
  result = qword_100267D60;
  if (!qword_100267D60)
  {
    sub_100003E34(&qword_100267D68, &qword_1001E2720);
    sub_100007120(&qword_100267D70, &qword_100267D78, &qword_1001E2728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267D60);
  }

  return result;
}

uint64_t sub_1001C2E64()
{
  v1 = type metadata accessor for PickerRowCoreInline(0);
  v2 = (v1 - 8);
  v3 = *(*(v1 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(*(v1 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v4;
  v7 = *(v1 + 20);
  v8 = sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  (*(*(v8 - 8) + 8))(v6 + v7, v8);
  v9 = *(v6 + v2[8] + 8);

  v10 = *(v6 + v2[9] + 8);

  v11 = *(v6 + v2[10] + 8);

  v12 = v6 + v2[11];
  v13 = *(v12 + 8);

  v14 = *(v12 + 16);

  v15 = *(v6 + v2[12] + 8);

  v16 = *(v6 + v2[13] + 8);

  v17 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_1001C2FD0()
{
  v1 = *(type metadata accessor for PickerRowCoreInline(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  return sub_1001BC884(v0 + v2, v4, v5);
}

unint64_t sub_1001C3060()
{
  result = qword_100267D98;
  if (!qword_100267D98)
  {
    sub_100003E34(&qword_100267D90, &qword_1001E2748);
    sub_1001C30EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267D98);
  }

  return result;
}

unint64_t sub_1001C30EC()
{
  result = qword_100267DA0;
  if (!qword_100267DA0)
  {
    sub_100003E34(&qword_100267DA8, &qword_1001E2750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267DA0);
  }

  return result;
}

uint64_t sub_1001C319C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1001C3200()
{
  result = qword_100267DF8;
  if (!qword_100267DF8)
  {
    sub_100003E34(&qword_100267DF0, &qword_1001E2798);
    sub_1001C328C();
    sub_1001C0408();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267DF8);
  }

  return result;
}

unint64_t sub_1001C328C()
{
  result = qword_100267E00;
  if (!qword_100267E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267E00);
  }

  return result;
}

uint64_t sub_1001C32F4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tint.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1001C3320(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.tint.setter();
}

uint64_t sub_1001C334C()
{
  v1 = (type metadata accessor for PickerRowCore(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 8);

  v6 = *(v0 + v3 + 16);

  v7 = v1[8];
  v8 = sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = *(v0 + v3 + v1[9] + 8);

  v10 = *(v0 + v3 + v1[10] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_1001C3470(uint64_t *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for PickerRowCore(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1001B859C(a1, a2, v6);
}

unint64_t sub_1001C34F0()
{
  result = qword_100267E40;
  if (!qword_100267E40)
  {
    sub_100003E34(&qword_100267E20, &qword_1001E27B0);
    sub_1001C35A8();
    sub_100007120(&qword_100267E58, &qword_100267E60, &qword_1001E27F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267E40);
  }

  return result;
}

unint64_t sub_1001C35A8()
{
  result = qword_100267E48;
  if (!qword_100267E48)
  {
    sub_100003E34(&qword_100267E18, &qword_1001E27A8);
    sub_100007120(&qword_100267E50, &qword_100267E10, &qword_1001E27A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267E48);
  }

  return result;
}

unint64_t sub_1001C36E0()
{
  result = qword_100267F10;
  if (!qword_100267F10)
  {
    sub_100003E34(&qword_100267EF0, &qword_1001E2888);
    sub_1001C3798();
    sub_100007120(&unk_10025DC90, &qword_1002636C0, &qword_1001D3140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267F10);
  }

  return result;
}

unint64_t sub_1001C3798()
{
  result = qword_100267F18;
  if (!qword_100267F18)
  {
    sub_100003E34(&qword_100267EE8, &qword_1001E2880);
    sub_1001C3824();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267F18);
  }

  return result;
}

unint64_t sub_1001C3824()
{
  result = qword_100267F20;
  if (!qword_100267F20)
  {
    sub_100003E34(&qword_100267EE0, &qword_1001E2878);
    sub_100003E34(&qword_100267ED8, &qword_1001E2870);
    sub_100003E34(&qword_10025CB20, &qword_1001D1E40);
    type metadata accessor for RoundedBorderTextFieldStyle();
    sub_100007120(&qword_10025CB50, &qword_10025CB20, &qword_1001D1E40);
    sub_1001C0124(&qword_100267F08, &type metadata accessor for RoundedBorderTextFieldStyle);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267F20);
  }

  return result;
}

uint64_t sub_1001C39B4()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[9];

  v6 = v0[11];

  v7 = v0[12];

  v8 = v0[14];

  return _swift_deallocObject(v0, 121, 7);
}

uint64_t sub_1001C3A24()
{
  v2 = *(v0 + 104);
  v3 = *(v0 + 120);
  sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
  return FocusState.wrappedValue.setter();
}

unint64_t sub_1001C3A8C()
{
  result = qword_100267F50;
  if (!qword_100267F50)
  {
    sub_100003E34(&qword_100267F28, &qword_1001E28D8);
    sub_1001C3B18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267F50);
  }

  return result;
}

unint64_t sub_1001C3B18()
{
  result = qword_100267F58;
  if (!qword_100267F58)
  {
    sub_100003E34(&qword_100267F48, &qword_1001E2928);
    sub_100007120(&qword_100267F60, &qword_100267F40, &qword_1001E2920);
    sub_100007120(&qword_100267F68, &qword_100267F70, &qword_1001E2930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267F58);
  }

  return result;
}

uint64_t sub_1001C3C68()
{
  sub_100003E34(&qword_100267B38, &qword_1001E2540);
  sub_100003E34(&qword_100267B20, &unk_1001E2520);
  sub_100003E34(&qword_100267B30, &qword_1001E2538);
  type metadata accessor for AutomaticHoverEffect();
  sub_1001C20DC();
  sub_1001C0124(&qword_1002635F8, &type metadata accessor for AutomaticHoverEffect);
  swift_getOpaqueTypeConformance2();
  sub_100007120(&qword_100267B90, &qword_100267B20, &unk_1001E2520);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1001C3DB8()
{
  sub_100003E34(&qword_100267BC0, &unk_1001E25C0);
  type metadata accessor for AutomaticHoverEffect();
  sub_1001C23A0();
  sub_1001C0124(&qword_1002635F8, &type metadata accessor for AutomaticHoverEffect);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1001C3E70()
{
  result = qword_100267F90;
  if (!qword_100267F90)
  {
    sub_100003E34(&qword_100267F98, &qword_1001E29B0);
    sub_1001C3EFC();
    sub_1001C3FB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267F90);
  }

  return result;
}

unint64_t sub_1001C3EFC()
{
  result = qword_100267FA0;
  if (!qword_100267FA0)
  {
    sub_100003E34(&qword_100267BF0, &qword_1001E25D8);
    sub_100007120(&qword_100267FA8, &qword_100267FB0, &qword_1001E29B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267FA0);
  }

  return result;
}

unint64_t sub_1001C3FB4()
{
  result = qword_100267FB8;
  if (!qword_100267FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267FB8);
  }

  return result;
}

uint64_t sub_1001C4008()
{
  sub_100003E34(&qword_100267DB8, &qword_1001E2768);
  sub_100007120(&qword_100267DC8, &qword_100267DB8, &qword_1001E2768);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1001C413C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003E34(a2, a3);
    a4();
    sub_1001C0124(&qword_1002676D0, type metadata accessor for CommonUIBlendModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001C41F0()
{
  result = qword_100267FD8;
  if (!qword_100267FD8)
  {
    sub_100003E34(&qword_100267EC0, &qword_1001E2858);
    sub_100007120(&qword_100267FE0, &qword_100267EC8, &qword_1001E2860);
    sub_100007120(&qword_10025CA20, &qword_10025C5C8, &qword_1001DC380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267FD8);
  }

  return result;
}

unint64_t sub_1001C42D8()
{
  result = qword_100267FE8;
  if (!qword_100267FE8)
  {
    sub_100003E34(&qword_100267F00, &qword_1001E2898);
    sub_100003E34(&qword_100267EF0, &qword_1001E2888);
    sub_1001C36E0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267FE8);
  }

  return result;
}

unint64_t sub_1001C43A4()
{
  result = qword_100267FF0;
  if (!qword_100267FF0)
  {
    sub_100003E34(&qword_100267F78, &qword_1001E2968);
    sub_1001C4430();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267FF0);
  }

  return result;
}

unint64_t sub_1001C4430()
{
  result = qword_100267FF8;
  if (!qword_100267FF8)
  {
    sub_100003E34(&qword_100267F38, &qword_1001E28E8);
    sub_100003E34(&qword_100267F28, &qword_1001E28D8);
    sub_1001C3A8C();
    swift_getOpaqueTypeConformance2();
    sub_100007120(&unk_10025DCA0, &unk_1002636B0, &unk_1001D16F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100267FF8);
  }

  return result;
}

__n128 sub_1001C45A4(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_1001C45E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
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

uint64_t sub_1001C4630(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
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

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001C46D8()
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

uint64_t sub_1001C4834@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v74 = a1;
  v3 = type metadata accessor for PhotosPickerItem.EncodingDisambiguationPolicy();
  v68 = *(v3 - 8);
  v69 = v3;
  v4 = *(v68 + 64);
  __chkstk_darwin(v3);
  v65 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PhotosPickerSelectionBehavior();
  v66 = *(v6 - 8);
  v67 = v6;
  v7 = *(v66 + 64);
  __chkstk_darwin(v6);
  v64 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000341C(&qword_100262F50, &qword_1001DA0D8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v77 = &v57 - v11;
  v78 = sub_10000341C(&qword_100268000, &qword_1001E2B60);
  v63 = *(v78 - 8);
  v12 = *(v63 + 64);
  __chkstk_darwin(v78);
  v76 = &v57 - v13;
  v14 = sub_10000341C(&qword_100268008, &qword_1001E2B68);
  v70 = *(v14 - 8);
  v71 = v14;
  v15 = *(v70 + 64);
  __chkstk_darwin(v14);
  v79 = &v57 - v16;
  v17 = sub_10000341C(&qword_100268010, &qword_1001E2B70);
  v72 = *(v17 - 8);
  v73 = v17;
  v18 = *(v72 + 64);
  __chkstk_darwin(v17);
  v80 = &v57 - v19;
  v20 = static Alignment.center.getter();
  v22 = v21;
  sub_1001C5384(v2, &v82);
  v116 = v90;
  v117 = v91;
  v112 = v86;
  v113 = v87;
  v114 = v88;
  v115 = v89;
  v108 = v82;
  v109 = v83;
  v110 = v84;
  v111 = v85;
  v119[8] = v90;
  v119[9] = v91;
  v119[4] = v86;
  v119[5] = v87;
  v119[6] = v88;
  v119[7] = v89;
  v119[0] = v82;
  v119[1] = v83;
  v118 = v92;
  v120 = v92;
  v119[2] = v84;
  v119[3] = v85;
  sub_1000081F8(&v108, v132, &qword_100268018, &unk_1001E2B78);
  sub_10000F500(v119, &qword_100268018, &unk_1001E2B78);
  v129 = v116;
  v130 = v117;
  v131 = v118;
  v125 = v112;
  v126 = v113;
  v128 = v115;
  v127 = v114;
  v121 = v108;
  v122 = v109;
  v124 = v111;
  v123 = v110;
  v23 = static Edge.Set.all.getter();
  LOBYTE(v81) = 1;
  *&v93 = v20;
  *(&v93 + 1) = v22;
  v102 = v129;
  v103 = v130;
  LOWORD(v104) = v131;
  v98 = v125;
  v99 = v126;
  v100 = v127;
  v101 = v128;
  v94 = v121;
  v95 = v122;
  v96 = v123;
  v97 = v124;
  BYTE8(v104) = v23;
  v105 = 0u;
  v106 = 0u;
  v107 = 1;
  v132[0] = *(v2 + 120);
  v75 = sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.projectedValue.getter();
  if (qword_10025A758 != -1)
  {
    swift_once();
  }

  v24 = swift_allocObject();
  v25 = v2[13];
  v24[13] = v2[12];
  v24[14] = v25;
  v24[15] = v2[14];
  v26 = v2[9];
  v24[9] = v2[8];
  v24[10] = v26;
  v27 = v2[11];
  v24[11] = v2[10];
  v24[12] = v27;
  v28 = v2[5];
  v24[5] = v2[4];
  v24[6] = v28;
  v29 = v2[7];
  v24[7] = v2[6];
  v24[8] = v29;
  v30 = v2[1];
  v24[1] = *v2;
  v24[2] = v30;
  v31 = v2[3];
  v24[3] = v2[2];
  v24[4] = v31;
  sub_1000700F8(v2, &v82);
  v60 = sub_10000341C(&qword_100268020, &qword_1001E2B88);
  OpaqueTypeConformance2 = sub_1001C69C4();
  View.fileImporter(isPresented:allowedContentTypes:allowsMultipleSelection:onCompletion:)();

  v132[12] = v105;
  v132[13] = v106;
  v133 = v107;
  v132[8] = v101;
  v132[9] = v102;
  v132[11] = v104;
  v132[10] = v103;
  v132[4] = v97;
  v132[5] = v98;
  v132[7] = v100;
  v132[6] = v99;
  v132[0] = v93;
  v132[1] = v94;
  v132[3] = v96;
  v132[2] = v95;
  sub_10000F500(v132, &qword_100268020, &qword_1001E2B88);
  v93 = *(v2 + 136);
  State.projectedValue.getter();
  v58 = v83;
  v93 = *(v2 + 152);
  v81 = *(v2 + 152);
  v61 = sub_10000341C(&qword_100262FA0, &qword_1001DA120);
  State.projectedValue.getter();
  v59 = v83;
  v32 = v77;
  static PHPickerFilter.images.getter();
  v33 = type metadata accessor for PHPickerFilter();
  (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
  v57 = [objc_opt_self() sharedPhotoLibrary];
  v34 = v64;
  static PhotosPickerSelectionBehavior.default.getter();
  v35 = v65;
  static PhotosPickerItem.EncodingDisambiguationPolicy.automatic.getter();
  *&v82 = v60;
  *(&v82 + 1) = OpaqueTypeConformance2;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v76;
  View.photosPicker(isPresented:selection:maxSelectionCount:selectionBehavior:matching:preferredItemEncoding:photoLibrary:)();

  (*(v68 + 8))(v35, v69);
  (*(v66 + 8))(v34, v67);
  sub_10000F500(v77, &qword_100262F50, &qword_1001DA0D8);
  v37 = v78;
  (*(v63 + 8))(v36, v78);
  v82 = v93;
  State.wrappedValue.getter();
  v38 = swift_allocObject();
  v39 = v2[13];
  v38[13] = v2[12];
  v38[14] = v39;
  v38[15] = v2[14];
  v40 = v2[9];
  v38[9] = v2[8];
  v38[10] = v40;
  v41 = v2[11];
  v38[11] = v2[10];
  v38[12] = v41;
  v42 = v2[5];
  v38[5] = v2[4];
  v38[6] = v42;
  v43 = v2[7];
  v38[7] = v2[6];
  v38[8] = v43;
  v44 = v2[1];
  v38[1] = *v2;
  v38[2] = v44;
  v45 = v2[3];
  v38[3] = v2[2];
  v38[4] = v45;
  sub_1000700F8(v2, &v82);
  v69 = sub_10000341C(&qword_10025E2D0, &qword_1001D56C0);
  *&v82 = v37;
  *(&v82 + 1) = OpaqueTypeConformance2;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = sub_100123FFC();
  v48 = v71;
  v49 = v79;
  View.onChange<A>(of:initial:_:)();

  (*(v70 + 8))(v49, v48);
  v50 = LocalizedStringKey.init(stringLiteral:)();
  v78 = v51;
  v79 = v50;
  LODWORD(v76) = v52;
  v77 = v53;
  v81 = *(v2 + 168);
  State.projectedValue.getter();
  v70 = v82;
  LODWORD(v75) = v83;
  v82 = *(v2 + 184);
  sub_10000341C(&qword_100268040, &qword_1001E2B98);
  State.wrappedValue.getter();
  sub_10000341C(&unk_10025DF60, &unk_1001D7CD0);
  sub_10000341C(&qword_10025F410, &qword_1001D4370);
  *&v82 = v48;
  *(&v82 + 1) = v69;
  *&v83 = v46;
  *(&v83 + 1) = v47;
  swift_getOpaqueTypeConformance2();
  sub_100007120(&qword_100264210, &unk_10025DF60, &unk_1001D7CD0);
  v54 = v73;
  v55 = v80;
  View.alert<A, B, C>(_:isPresented:presenting:actions:message:)();

  return (*(v72 + 8))(v55, v54);
}

__n128 sub_1001C5384@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 64);
  v75 = *(a1 + 48);
  v76 = v4;
  v77 = *(a1 + 80);
  v5 = *(a1 + 32);
  *v74 = *(a1 + 16);
  *&v74[16] = v5;
  sub_10000341C(&qword_10025CB40, &qword_1001D1E60);
  Binding.wrappedValue.getter();
  v84[0] = *v68;
  v84[1] = *&v68[16];
  v85 = *&v68[32];
  v86 = *&v68[48];
  sub_10004C65C(v84);
  if (v85)
  {
    if (v85 != 1)
    {
      v16 = *(a1 + 64);
      v75 = *(a1 + 48);
      v76 = v16;
      v77 = *(a1 + 80);
      v17 = *(a1 + 32);
      *v74 = *(a1 + 16);
      *&v74[16] = v17;
      Binding.projectedValue.getter();
      *v68 = *(a1 + 136);
      sub_10000341C(&unk_1002640F0, &qword_1001D3490);
      State.projectedValue.getter();
      type metadata accessor for CompositionModel(0);
      sub_1001C6C0C(&qword_10025B210, type metadata accessor for CompositionModel);
      v18 = Environment.init<A>(_:)();
      LOBYTE(v42) = v19 & 1;
      *(&v51[4] + 7) = v30;
      *(&v51[3] + 7) = v29;
      *(&v51[2] + 7) = v28;
      *(&v51[1] + 7) = v27;
      *(v51 + 7) = v26;
      *v68 = v18;
      v68[8] = v19 & 1;
      *&v68[25] = v51[1];
      *&v68[9] = v51[0];
      *&v68[88] = *(&v30 + 1);
      *&v68[73] = v51[4];
      *&v68[57] = v51[3];
      *&v68[41] = v51[2];
      v69 = *v74;
      LOBYTE(v70) = v74[16];
      sub_1001C6DE8(v68);
      v65 = v71;
      v66 = v72;
      v67 = v73;
      v61 = *&v68[64];
      v62 = *&v68[80];
      v63 = v69;
      v64 = v70;
      v57 = *v68;
      v58 = *&v68[16];
      v59 = *&v68[32];
      v60 = *&v68[48];
      sub_10000341C(&qword_100268048, &unk_1001E2BF0);
      sub_1001C6DF4();
      sub_1001C6F28();
      _ConditionalContent<>.init(storage:)();
      goto LABEL_7;
    }

    v6 = *(a1 + 64);
    v75 = *(a1 + 48);
    v76 = v6;
    v77 = *(a1 + 80);
    v7 = *(a1 + 32);
    *v74 = *(a1 + 16);
    *&v74[16] = v7;
    Binding.projectedValue.getter();
    *v68 = *(a1 + 120);
    sub_10000341C(&unk_1002640F0, &qword_1001D3490);
    State.projectedValue.getter();
    v25 = *v74;
    v8 = *&v74[8];
    v9 = v74[16];
    *v74 = *(a1 + 200);
    *&v74[9] = *(a1 + 209);
    sub_10000341C(&qword_10025CB48, &unk_1001DE2B0);
    FocusState.Binding.projectedValue.getter();
    v10 = *(a1 + 232);
    type metadata accessor for CompositionModel(0);
    sub_1001C6C0C(&qword_10025B210, type metadata accessor for CompositionModel);
    *&v42 = Environment.init<A>(_:)();
    BYTE8(v42) = v11 & 1;
    v45 = v39;
    v46 = v40;
    v47 = v41;
    v43 = v37;
    v44 = v38;
    v48 = __PAIR128__(v8, v25);
    v49[0] = v9;
    *&v49[8] = *v68;
    *&v49[24] = *&v68[16];
    v52 = __PAIR128__(v8, v25);
    v53 = *v49;
    v51[2] = v38;
    v51[3] = v39;
    v51[4] = v40;
    v51[5] = v41;
    LOBYTE(v50) = v68[24];
    *(&v50 + 1) = v10;
    v51[0] = v42;
    v51[1] = v37;
    v54 = *&v49[16];
    v55 = v50;
    sub_1001C6F7C(v51);
    v81 = v54;
    v82 = v55;
    LOBYTE(v83) = v56;
    v77 = v51[4];
    v78 = v51[5];
    v79 = v52;
    v80 = v53;
    *v74 = v51[0];
    *&v74[16] = v51[1];
    v75 = v51[2];
    v76 = v51[3];
    sub_100167A78(&v42, v68);
    sub_1001C6E80();
    sub_1001C6ED4();
    _ConditionalContent<>.init(storage:)();
    v71 = v34;
    v72 = v35;
    LOBYTE(v73) = v36;
    *&v68[64] = v30;
    *&v68[80] = v31;
    v69 = v32;
    v70 = v33;
    *v68 = v26;
    *&v68[16] = v27;
    *&v68[32] = v28;
    *&v68[48] = v29;
    sub_1001C6F88(v68);
    v81 = v71;
    v82 = v72;
    v83 = v73;
    v77 = *&v68[64];
    v78 = *&v68[80];
    v79 = v69;
    v80 = v70;
    *v74 = *v68;
    *&v74[16] = *&v68[16];
    v75 = *&v68[32];
    v76 = *&v68[48];
    sub_10000341C(&qword_100268048, &unk_1001E2BF0);
    sub_1001C6DF4();
    sub_1001C6F28();
    _ConditionalContent<>.init(storage:)();
    sub_1001C6F90(&v42);
  }

  else
  {
    v12 = *(a1 + 64);
    v75 = *(a1 + 48);
    v76 = v12;
    v77 = *(a1 + 80);
    v13 = *(a1 + 32);
    *v74 = *(a1 + 16);
    *&v74[16] = v13;
    Binding.projectedValue.getter();
    *v74 = *(a1 + 200);
    *&v74[9] = *(a1 + 209);
    sub_10000341C(&qword_10025CB48, &unk_1001DE2B0);
    FocusState.Binding.projectedValue.getter();
    v14 = *(a1 + 232);
    type metadata accessor for CompositionModel(0);
    sub_1001C6C0C(&qword_10025B210, type metadata accessor for CompositionModel);
    *&v42 = Environment.init<A>(_:)();
    BYTE8(v42) = v15 & 1;
    v45 = v39;
    v46 = v40;
    v43 = v37;
    v44 = v38;
    v47 = v41;
    v48 = *v68;
    *v49 = *&v68[16];
    v49[8] = v68[24];
    v52 = *v68;
    v53 = *v49;
    v51[2] = v38;
    v51[3] = v39;
    v51[4] = v40;
    v51[5] = v41;
    *&v49[16] = v14;
    *&v54 = v14;
    v51[0] = v42;
    v51[1] = v37;
    sub_1001C6FE4(v51);
    v81 = v54;
    v82 = v55;
    LOBYTE(v83) = v56;
    v77 = v51[4];
    v78 = v51[5];
    v79 = v52;
    v80 = v53;
    *v74 = v51[0];
    *&v74[16] = v51[1];
    v75 = v51[2];
    v76 = v51[3];
    sub_10004C740(&v42, v68);
    sub_1001C6E80();
    sub_1001C6ED4();
    _ConditionalContent<>.init(storage:)();
    v71 = v34;
    v72 = v35;
    LOBYTE(v73) = v36;
    *&v68[64] = v30;
    *&v68[80] = v31;
    v69 = v32;
    v70 = v33;
    *v68 = v26;
    *&v68[16] = v27;
    *&v68[32] = v28;
    *&v68[48] = v29;
    sub_1001C6F88(v68);
    v81 = v71;
    v82 = v72;
    v83 = v73;
    v77 = *&v68[64];
    v78 = *&v68[80];
    v79 = v69;
    v80 = v70;
    *v74 = *v68;
    *&v74[16] = *&v68[16];
    v75 = *&v68[32];
    v76 = *&v68[48];
    sub_10000341C(&qword_100268048, &unk_1001E2BF0);
    sub_1001C6DF4();
    sub_1001C6F28();
    _ConditionalContent<>.init(storage:)();
    sub_1001C6FEC(&v42);
  }

  v81 = v65;
  v82 = v66;
  v83 = v67;
  v77 = v61;
  v78 = v62;
  v79 = v63;
  v80 = v64;
  *v74 = v57;
  *&v74[16] = v58;
  v75 = v59;
  v76 = v60;
LABEL_7:
  v20 = v82;
  *(a2 + 128) = v81;
  *(a2 + 144) = v20;
  *(a2 + 160) = v83;
  v21 = v78;
  *(a2 + 64) = v77;
  *(a2 + 80) = v21;
  v22 = v80;
  *(a2 + 96) = v79;
  *(a2 + 112) = v22;
  v23 = *&v74[16];
  *a2 = *v74;
  *(a2 + 16) = v23;
  result = v76;
  *(a2 + 32) = v75;
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_1001C5B28(uint64_t a1, char a2, _OWORD *a3)
{
  v6 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v27 - v8;
  if (a2)
  {
    if (qword_10025A6E0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000F34C(v10, qword_100276F08);
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
      _os_log_impl(&_mh_execute_header, v11, v12, "failed to import files: %@", v13, 0xCu);
      sub_10000F500(v14, &unk_10025D580, &qword_1001CFA60);
    }

    v27[0] = *(a3 + 184);
    v28 = a1;
    swift_errorRetain();
    sub_10000341C(&qword_100268040, &qword_1001E2B98);
    State.wrappedValue.setter();
    v27[0] = *(a3 + 168);
    LOBYTE(v28) = 1;
    sub_10000341C(&unk_1002640F0, &qword_1001D3490);
    return State.wrappedValue.setter();
  }

  else
  {
    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
    type metadata accessor for MainActor();
    sub_100124680(a1, 0);
    sub_1000700F8(a3, v27);
    v18 = static MainActor.shared.getter();
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = &protocol witness table for MainActor;
    v20 = a3[13];
    *(v19 + 224) = a3[12];
    *(v19 + 240) = v20;
    *(v19 + 256) = a3[14];
    v21 = a3[9];
    *(v19 + 160) = a3[8];
    *(v19 + 176) = v21;
    v22 = a3[11];
    *(v19 + 192) = a3[10];
    *(v19 + 208) = v22;
    v23 = a3[5];
    *(v19 + 96) = a3[4];
    *(v19 + 112) = v23;
    v24 = a3[7];
    *(v19 + 128) = a3[6];
    *(v19 + 144) = v24;
    v25 = a3[1];
    *(v19 + 32) = *a3;
    *(v19 + 48) = v25;
    v26 = a3[3];
    *(v19 + 64) = a3[2];
    *(v19 + 80) = v26;
    *(v19 + 272) = a1;
    sub_10015D2D4(0, 0, v9, &unk_1001E2BE8, v19);
  }
}

uint64_t sub_1001C5E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v5[21] = a1;
  type metadata accessor for MainActor();
  v5[24] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[25] = v7;
  v5[26] = v6;

  return _swift_task_switch(sub_1001C5EF4, v7, v6);
}

uint64_t sub_1001C5EF4()
{
  v1 = *(v0 + 176);
  v2 = sub_1001C46D8();
  swift_getKeyPath();
  *(v0 + 160) = v2;
  sub_1001C6C0C(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v0 + 216) = *(v2 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachmentManager);

  *(v0 + 16) = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[5];
  *(v0 + 64) = v1[4];
  *(v0 + 80) = v5;
  *(v0 + 32) = v3;
  *(v0 + 48) = v4;
  sub_10000341C(&qword_10025CB40, &qword_1001D1E60);
  Binding.wrappedValue.getter();
  v6 = *(v0 + 96);
  v7 = *(v0 + 104);
  *(v0 + 224) = v7;

  sub_10004C65C(v0 + 96);
  v8 = swift_task_alloc();
  *(v0 + 232) = v8;
  *v8 = v0;
  v8[1] = sub_1001C6094;
  v9 = *(v0 + 184);

  return sub_100174A44(v9, v6, v7);
}

uint64_t sub_1001C6094(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *(*v1 + 224);
  v5 = *(*v1 + 216);
  v9 = *v1;
  *(*v1 + 240) = a1;

  v6 = *(v2 + 208);
  v7 = *(v2 + 200);

  return _swift_task_switch(sub_1001C61FC, v7, v6);
}

uint64_t sub_1001C61FC()
{
  v1 = v0[30];
  v2 = v0[24];
  v3 = v0[21];

  *v3 = v1;
  v4 = v0[1];

  return v4();
}

uint64_t sub_1001C6268(uint64_t a1)
{
  v2 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v21 - v4;
  v6 = *(a1 + 152);
  v7 = *(a1 + 160);
  v25 = v7;
  v26 = v6;
  v22 = v6;
  v23 = v7;
  sub_1000081F8(&v26, &v24, &qword_10025E2D0, &qword_1001D56C0);
  sub_1000081F8(&v25, &v24, &qword_100262FC8, &qword_1001DA138);
  sub_10000341C(&qword_100262FA0, &qword_1001DA120);
  State.wrappedValue.getter();
  v8 = v24[2];

  if (v8)
  {
    v22 = v6;
    v23 = v7;
    State.wrappedValue.getter();
    v9 = v24;
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
    type metadata accessor for MainActor();
    sub_1000700F8(a1, &v22);
    v11 = static MainActor.shared.getter();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = &protocol witness table for MainActor;
    v13 = *(a1 + 208);
    *(v12 + 224) = *(a1 + 192);
    *(v12 + 240) = v13;
    *(v12 + 256) = *(a1 + 224);
    v14 = *(a1 + 144);
    *(v12 + 160) = *(a1 + 128);
    *(v12 + 176) = v14;
    v15 = *(a1 + 176);
    *(v12 + 192) = *(a1 + 160);
    *(v12 + 208) = v15;
    v16 = *(a1 + 80);
    *(v12 + 96) = *(a1 + 64);
    *(v12 + 112) = v16;
    v17 = *(a1 + 112);
    *(v12 + 128) = *(a1 + 96);
    *(v12 + 144) = v17;
    v18 = *(a1 + 16);
    *(v12 + 32) = *a1;
    *(v12 + 48) = v18;
    v19 = *(a1 + 48);
    *(v12 + 64) = *(a1 + 32);
    *(v12 + 80) = v19;
    *(v12 + 272) = v9;
    sub_10015C9C8(0, 0, v5, &unk_1001E2BA8, v12);

    v22 = v6;
    v23 = v7;
    v24 = _swiftEmptyArrayStorage;
    State.wrappedValue.setter();
  }

  sub_10000F500(&v26, &qword_10025E2D0, &qword_1001D56C0);
  return sub_10000F500(&v25, &qword_100262FC8, &qword_1001DA138);
}

uint64_t sub_1001C64D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  type metadata accessor for MainActor();
  v5[23] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[24] = v7;
  v5[25] = v6;

  return _swift_task_switch(sub_1001C6568, v7, v6);
}

uint64_t sub_1001C6568()
{
  v1 = *(v0 + 168);
  v2 = sub_1001C46D8();
  swift_getKeyPath();
  *(v0 + 160) = v2;
  sub_1001C6C0C(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v0 + 208) = *(v2 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachmentManager);

  *(v0 + 16) = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[5];
  *(v0 + 64) = v1[4];
  *(v0 + 80) = v5;
  *(v0 + 32) = v3;
  *(v0 + 48) = v4;
  sub_10000341C(&qword_10025CB40, &qword_1001D1E60);
  Binding.wrappedValue.getter();
  v6 = *(v0 + 96);
  v7 = *(v0 + 104);
  *(v0 + 216) = v7;

  sub_10004C65C(v0 + 96);
  v8 = swift_task_alloc();
  *(v0 + 224) = v8;
  *v8 = v0;
  v8[1] = sub_1001C671C;
  v9 = *(v0 + 176);

  return sub_10011B788(v9, v6, v7);
}

uint64_t sub_1001C671C()
{
  v1 = *v0;
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 216);
  v4 = *(*v0 + 208);
  v8 = *v0;

  v5 = *(v1 + 200);
  v6 = *(v1 + 192);

  return _swift_task_switch(sub_1000248C0, v6, v5);
}

uint64_t sub_1001C687C()
{
  LocalizedStringKey.init(stringLiteral:)();

  return Button<>.init(_:action:)();
}

uint64_t sub_1001C68D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getErrorValue();
  Error.localizedDescription.getter();
  sub_10002AC34();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_1001C6948@<X0>(uint64_t a1@<X8>)
{
  v15 = v1[12];
  v16 = v1[13];
  v17 = v1[14];
  v11 = v1[8];
  v12 = v1[9];
  v13 = v1[10];
  v14 = v1[11];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_1001C4834(a1);
}

unint64_t sub_1001C69C4()
{
  result = qword_100268028;
  if (!qword_100268028)
  {
    sub_100003E34(&qword_100268020, &qword_1001E2B88);
    sub_100007120(&qword_100268030, &qword_100268038, &qword_1001E2B90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100268028);
  }

  return result;
}

uint64_t sub_1001C6A7C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[9];

  v6 = v0[12];

  v7 = v0[13];

  v8 = v0[15];

  v9 = v0[16];

  v10 = v0[18];

  v11 = v0[20];

  v12 = v0[21];

  v13 = v0[22];

  v14 = v0[24];

  v15 = v0[25];

  v16 = v0[26];

  v17 = v0[27];

  v18 = v0[28];

  return _swift_deallocObject(v0, 256, 7);
}

uint64_t sub_1001C6B44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[34];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002B2A0;

  return sub_1001C64D0(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_1001C6C0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001C6C58()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[9];

  v6 = v0[11];

  v7 = v0[14];

  v8 = v0[15];

  v9 = v0[17];

  v10 = v0[18];

  v11 = v0[20];

  v12 = v0[22];

  v13 = v0[23];

  v14 = v0[24];

  v15 = v0[26];

  v16 = v0[27];

  v17 = v0[28];

  v18 = v0[29];

  v19 = v0[30];

  v20 = v0[34];

  return _swift_deallocObject(v0, 280, 7);
}

uint64_t sub_1001C6D28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[34];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100028688;

  return sub_1001C5E58(a1, v4, v5, (v1 + 4), v6);
}

unint64_t sub_1001C6DF4()
{
  result = qword_100268050;
  if (!qword_100268050)
  {
    sub_100003E34(&qword_100268048, &unk_1001E2BF0);
    sub_1001C6E80();
    sub_1001C6ED4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100268050);
  }

  return result;
}

unint64_t sub_1001C6E80()
{
  result = qword_100268058;
  if (!qword_100268058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100268058);
  }

  return result;
}

unint64_t sub_1001C6ED4()
{
  result = qword_100268060;
  if (!qword_100268060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100268060);
  }

  return result;
}

unint64_t sub_1001C6F28()
{
  result = qword_100268068;
  if (!qword_100268068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100268068);
  }

  return result;
}

uint64_t sub_1001C7040()
{
  sub_100003E34(&qword_100268010, &qword_1001E2B70);
  sub_100003E34(&unk_10025DF60, &unk_1001D7CD0);
  sub_100003E34(&qword_10025F410, &qword_1001D4370);
  sub_100003E34(&qword_100268008, &qword_1001E2B68);
  sub_100003E34(&qword_10025E2D0, &qword_1001D56C0);
  sub_100003E34(&qword_100268000, &qword_1001E2B60);
  sub_100003E34(&qword_100268020, &qword_1001E2B88);
  sub_1001C69C4();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_100123FFC();
  swift_getOpaqueTypeConformance2();
  sub_100007120(&qword_100264210, &unk_10025DF60, &unk_1001D7CD0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1001C7274(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_100276CF0 == -1)
  {
    if (qword_100276CF8)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_1001C773C();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_100276CF8)
    {
      return _availability_version_check();
    }
  }

  if (qword_100276CE8 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_1001C7754();
    a3 = v10;
    a4 = v9;
    v8 = dword_100276CD8 < v11;
    if (dword_100276CD8 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_100276CDC > a3)
      {
        return 1;
      }

      if (dword_100276CDC >= a3)
      {
        return dword_100276CE0 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_100276CD8 < a2;
  if (dword_100276CD8 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_1001C7408(uint64_t result)
{
  v1 = qword_100276CF8;
  if (qword_100276CF8)
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
      qword_100276CF8 = &__availability_version_check;
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
                                          sscanf(v28, "%d.%d.%d", &dword_100276CD8, &dword_100276CDC, &dword_100276CE0);
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

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t type metadata accessor for SessionConfiguration()
{
  return type metadata accessor for SessionConfiguration();
}

{
  return type metadata accessor for SessionConfiguration();
}

Swift::String __swiftcall GenerativeExperiencesSession.sessionIdentifier()()
{
  v0 = GenerativeExperiencesSession.sessionIdentifier()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t Environment.init<A>(_:)()
{
  return Environment.init<A>(_:)();
}

{
  return Environment.init<A>(_:)();
}

uint64_t View.buttonStyle<A>(_:)()
{
  return View.buttonStyle<A>(_:)();
}

{
  return View.buttonStyle<A>(_:)();
}

uint64_t View.accessibilityLabel(_:)()
{
  return View.accessibilityLabel(_:)();
}

{
  return View.accessibilityLabel(_:)();
}

uint64_t View.onChange<A>(of:initial:_:)()
{
  return View.onChange<A>(of:initial:_:)();
}

{
  return View.onChange<A>(of:initial:_:)();
}

uint64_t + infix(_:_:)()
{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}

uint64_t static CustomPromptBuilder.buildExpression(_:)()
{
  return static CustomPromptBuilder.buildExpression(_:)();
}

{
  return static CustomPromptBuilder.buildExpression(_:)();
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

uint64_t _CocoaArrayWrapper.subscript.getter()
{
  return _CocoaArrayWrapper.subscript.getter();
}

{
  return _CocoaArrayWrapper.subscript.getter();
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  CurrentTokenRange = _CFStringTokenizerGetCurrentTokenRange(tokenizer);
  length = CurrentTokenRange.length;
  location = CurrentTokenRange.location;
  result.length = length;
  result.location = location;
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