uint64_t sub_100002BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for TimelineViewContent();
  v10 = (a4 + *(result + 36));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t sub_100002C44(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  __chkstk_darwin(a1);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ModifiedContent();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v19 - v12;
  Date.timeIntervalSinceReferenceDate.getter();
  remainder(v14, 1.1);
  (*(v1 + *(a1 + 36)))();
  v15 = *(a1 + 24);
  View.opacity(_:)();
  (*(v4 + 8))(v6, v3);
  v19[0] = v15;
  v19[1] = &protocol witness table for _OpacityEffect;
  WitnessTable = swift_getWitnessTable();
  sub_10009A58C(v11, v7, WitnessTable);
  v17 = *(v8 + 8);
  v17(v11, v7);
  sub_10009A58C(v13, v7, WitnessTable);
  return (v17)(v13, v7);
}

uint64_t sub_100002EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v53 = a2;
  type metadata accessor for AnimationTimelineSchedule();
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  type metadata accessor for TimelineViewContent();
  sub_100005E20(&qword_100354AA0, &type metadata accessor for AnimationTimelineSchedule);
  type metadata accessor for TimelineView();
  type metadata accessor for _ConditionalContent();
  WitnessTable = swift_getWitnessTable();
  v66 = swift_getWitnessTable();
  v67 = v6;
  v38 = swift_getWitnessTable();
  v7 = type metadata accessor for VStack();
  v45 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v36 - v8;
  v10 = type metadata accessor for ModifiedContent();
  v51 = *(v10 - 8);
  __chkstk_darwin(v10);
  v39 = &v36 - v11;
  v41 = v10;
  v12 = type metadata accessor for ModifiedContent();
  v52 = *(v12 - 8);
  __chkstk_darwin(v12);
  v43 = &v36 - v13;
  v37 = swift_getWitnessTable();
  v64 = v37;
  v65 = &protocol witness table for _AppearanceActionModifier;
  v40 = swift_getWitnessTable();
  v62 = v40;
  v63 = &protocol witness table for _AppearanceActionModifier;
  v47 = v12;
  v46 = swift_getWitnessTable();
  v58 = v12;
  v59 = &type metadata for Bool;
  v60 = v46;
  v61 = &protocol witness table for Bool;
  v48 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v50 = *(OpaqueTypeMetadata2 - 8);
  v14 = __chkstk_darwin(OpaqueTypeMetadata2);
  v42 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v44 = &v36 - v16;
  v54 = v5;
  v55 = v6;
  v17 = v6;
  v56 = v3;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  v69 = *v3;
  v38 = *(v3 + 2);
  v18 = swift_allocObject();
  *(v18 + 16) = v5;
  *(v18 + 24) = v6;
  v19 = v3[1];
  *(v18 + 32) = *v3;
  *(v18 + 48) = v19;
  *(v18 + 64) = v3[2];
  sub_100006C20(&v69, &v58, &qword_100354AA8);

  v20 = v39;
  View.onAppear(perform:)();

  (*(v45 + 8))(v9, v7);
  v21 = swift_allocObject();
  *(v21 + 16) = v5;
  *(v21 + 24) = v6;
  v22 = v3[1];
  *(v21 + 32) = *v3;
  *(v21 + 48) = v22;
  *(v21 + 64) = v3[2];
  sub_100006C20(&v69, &v58, &qword_100354AA8);

  v23 = v43;
  v24 = v41;
  View.onDisappear(perform:)();

  v25 = (*(v51 + 8))(v20, v24);
  v57 = v38(v25) & 1;
  v26 = swift_allocObject();
  *(v26 + 16) = v5;
  *(v26 + 24) = v17;
  v27 = v3[1];
  *(v26 + 32) = *v3;
  *(v26 + 48) = v27;
  *(v26 + 64) = v3[2];
  sub_100006C20(&v69, &v58, &qword_100354AA8);

  v28 = v42;
  v29 = v47;
  v30 = v46;
  View.onChange<A>(of:initial:_:)();

  (*(v52 + 8))(v23, v29);
  v58 = v29;
  v59 = &type metadata for Bool;
  v60 = v30;
  v61 = &protocol witness table for Bool;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v44;
  v33 = OpaqueTypeMetadata2;
  sub_10009A58C(v28, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v34 = *(v50 + 8);
  v34(v28, v33);
  sub_10009A58C(v32, v33, OpaqueTypeConformance2);
  return (v34)(v32, v33);
}

uint64_t sub_100003670@<X0>(void (**a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a4;
  v43 = *(a2 - 8);
  v7 = __chkstk_darwin(a1);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v39 - v10;
  v12 = type metadata accessor for AnimationTimelineSchedule();
  __chkstk_darwin(v12);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a3;
  v15 = type metadata accessor for TimelineViewContent();
  v40 = sub_100005E20(&qword_100354AA0, &type metadata accessor for AnimationTimelineSchedule);
  v41 = v12;
  v48 = v15;
  v16 = type metadata accessor for TimelineView();
  v42 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v39 - v20;
  v22 = type metadata accessor for _ConditionalContent();
  v44 = *(v22 - 8);
  v45 = v22;
  __chkstk_darwin(v22);
  v24 = &v39 - v23;
  v55 = *a1;
  v56 = v55;
  sub_1000040A8(&qword_100354AA8);
  v25 = State.wrappedValue.getter();
  if (v54 == 1)
  {
    AnimationTimelineSchedule.init(minimumInterval:paused:)();
    v26 = swift_allocObject();
    v27 = v46;
    *(v26 + 16) = a2;
    *(v26 + 24) = v27;
    v28 = *(a1 + 1);
    *(v26 + 32) = *a1;
    *(v26 + 48) = v28;
    v29 = *(a1 + 2);
    v30 = v27;
    *(v26 + 64) = v29;
    sub_100006C20(&v56, &v55, &qword_100354AA8);

    v31 = v48;
    WitnessTable = swift_getWitnessTable();
    sub_100003E2C(v14, sub_100006D38, v26, v41, v31, v40, WitnessTable);
    v49 = WitnessTable;
    v33 = swift_getWitnessTable();
    sub_10009A58C(v19, v16, v33);
    v34 = *(v42 + 8);
    v34(v19, v16);
    sub_10009A58C(v21, v16, v33);
    sub_100096F00(v19, v16);
    v34(v19, v16);
    v34(v21, v16);
  }

  else
  {
    a1[4](v25);
    v30 = v46;
    sub_10009A58C(v9, a2, v46);
    v35 = *(v43 + 8);
    v35(v9, a2);
    sub_10009A58C(v11, a2, v30);
    v53 = swift_getWitnessTable();
    swift_getWitnessTable();
    sub_100096FF8(v9, v16, a2);
    v35(v9, a2);
    v35(v11, a2);
  }

  v52 = swift_getWitnessTable();
  v50 = swift_getWitnessTable();
  v51 = v30;
  v36 = v45;
  v37 = swift_getWitnessTable();
  sub_10009A58C(v24, v36, v37);
  return (*(v44 + 8))(v24, v36);
}

uint64_t sub_100003C40(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Date();
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TimelineViewContent();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v16 - v11;
  sub_1000040A8(qword_100354AB8);
  TimelineView.Context.date.getter();
  sub_100002BA8(v5, *(a2 + 32), *(a2 + 40), v10);
  WitnessTable = swift_getWitnessTable();
  sub_10009A58C(v10, v6, WitnessTable);
  v14 = *(v7 + 8);

  v14(v10, v6);
  sub_10009A58C(v12, v6, WitnessTable);
  return (v14)(v12, v6);
}

uint64_t sub_100003E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a4 - 8);
  __chkstk_darwin(a1);
  (*(v14 + 16))(&v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v16);
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a6;
  v17[5] = a7;
  v17[6] = a2;
  v17[7] = a3;
  TimelineView<>.init(_:content:)();
  return (*(v14 + 8))(a1, a4);
}

uint64_t sub_100003F84(char a1)
{
  v2 = a1 & 1;
  v5 = *v1;
  v6 = v5;
  v7 = *(&v5 + 1);
  sub_100006C20(&v7, v4, &qword_100354AB0);
  sub_1000040A8(&qword_100354AA8);
  State.wrappedValue.getter();
  if (v4[0] != v2)
  {
    v5 = v6;
    v4[0] = v2;
    State.wrappedValue.setter();
  }

  return sub_100006C88(&v6);
}

uint64_t sub_1000040A8(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100004114@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000040A8(&qword_100354220);
  *(a1 + v2[9]) = 0;
  *(a1 + v2[10]) = 0;
  *(a1 + v2[11]) = 0;

  return Spring.init(response:dampingRatio:)();
}

uint64_t sub_100004190@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000040A8(&qword_100354228);
  *(a1 + v2[9]) = 0;
  *(a1 + v2[10]) = 0;
  *(a1 + v2[11]) = 0;

  return Spring.init(response:dampingRatio:)();
}

void variable initialization expression of ConnectionAssistantDisplayState.noLocationLoop(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0x404E000000000000;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
}

void variable initialization expression of ConnectionAssistantDisplayState.conePulsingLoop(uint64_t a1@<X8>)
{
  *a1 = 1065353216;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0x3FF0000000000000;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
}

void variable initialization expression of ConnectionAssistantDisplayState.locationDotLoop(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0x4008000000000000;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
}

double variable initialization expression of ConnectionAssistantDisplayState.dotWaveLoop@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  result = 3.0;
  *(a1 + 8) = xmmword_100276030;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  return result;
}

double variable initialization expression of ConnectionAssistantDisplayState.satelliteWaveLoop@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  result = 3.0;
  *(a1 + 8) = xmmword_100276040;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  return result;
}

double variable initialization expression of ConnectionAssistantStars.spawn@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  return result;
}

double variable initialization expression of ConnectionAssistantEarth.dot@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 68) = 1;
  return result;
}

double variable initialization expression of ConnectionAssistantEarth.cone@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 256;
  return result;
}

double variable initialization expression of ConnectionAssistantEarth.satellite@<D0>(uint64_t a1@<X8>)
{
  sub_100004418(v7);
  v2 = v7[7];
  *(a1 + 96) = v7[6];
  *(a1 + 112) = v2;
  *(a1 + 128) = v8[0];
  *(a1 + 143) = *(v8 + 15);
  v3 = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = v3;
  v4 = v7[5];
  *(a1 + 64) = v7[4];
  *(a1 + 80) = v4;
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v6;
  return result;
}

double sub_100004418(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 146) = 1;
  return result;
}

double variable initialization expression of ConnectionAssistantSatelliteRenderer._satelliteTexture@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double variable initialization expression of ConnectionAssistantSatellite.cone@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 256;
  return result;
}

double variable initialization expression of ConnectionAssistantCone.pulse@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

__n128 variable initialization expression of ConnectionAssistantRenderer.RenderPipelines.Constants._earthOutlineColor()
{
  __asm { FMOV            V0.4S, #1.0 }

  return result;
}

__n128 variable initialization expression of ConnectionAssistantRenderer.RenderPipelines.constants@<Q0>(uint64_t a1@<X8>)
{
  if (qword_100353B88 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *&qword_100382060;
  *(a1 + 96) = xmmword_100382050;
  *(a1 + 112) = v1;
  *(a1 + 128) = xmmword_100382070;
  v2 = *&dword_100382020;
  *(a1 + 32) = xmmword_100382010;
  *(a1 + 48) = v2;
  v3 = xmmword_100382040;
  *(a1 + 64) = xmmword_100382030;
  *(a1 + 80) = v3;
  result = xmmword_100382000;
  *a1 = static ConnectionAssistantRenderer.RenderPipelines.Constants.default;
  *(a1 + 16) = result;
  return result;
}

BOOL sub_1000045F8(void *a1, uint64_t *a2)
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

Swift::Int sub_100004650()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000046C4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100004754(uint64_t a1, uint64_t a2)
{
  result = static CGFloat._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_1000047A8(uint64_t a1, uint64_t a2)
{
  v3 = static CGFloat._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_100004800@<X0>(void *a1@<X8>)
{
  result = static CGFloat._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = v3;
  return result;
}

void *sub_100004850@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_10000487C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_100004940@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100004950(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1000049C8(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100004A48@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100004A9C@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100004AC8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100005644(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_100004B08()
{
  sub_100005E20(&qword_100354990, type metadata accessor for LaunchOptionsKey);
  sub_100005E20(&qword_100354998, type metadata accessor for LaunchOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100004BC4()
{
  sub_100005E20(&qword_1003549A0, type metadata accessor for URLResourceKey);
  sub_100005E20(&qword_1003549A8, type metadata accessor for URLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100004C80()
{
  sub_100005E20(&qword_1003549B0, type metadata accessor for Option);
  sub_100005E20(&qword_1003549B8, type metadata accessor for Option);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100004D3C()
{
  sub_100005E20(&qword_1003547B0, type metadata accessor for UIContentSizeCategory);
  sub_100005E20(&qword_1003547B8, type metadata accessor for UIContentSizeCategory);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100004DF8()
{
  sub_100005E20(&qword_100354A08, type metadata accessor for Key);
  sub_100005E20(&qword_100354A10, type metadata accessor for Key);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100004EB4()
{
  sub_100005E20(&qword_1003549F8, type metadata accessor for EventType);
  sub_100005E20(&qword_100354A00, type metadata accessor for EventType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

double sub_100004F70@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_100004F7C()
{
  sub_100005E20(&qword_1003549D0, type metadata accessor for Weight);
  sub_100005E20(&qword_1003549D8, type metadata accessor for Weight);
  sub_100006954();
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100005044()
{
  sub_100005E20(&qword_1003549E8, type metadata accessor for TraitKey);
  sub_100005E20(&qword_1003549F0, type metadata accessor for TraitKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100005100@<X0>(void *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100005148()
{
  sub_100005E20(&qword_1003549C0, type metadata accessor for AttributeName);
  sub_100005E20(&qword_1003549C8, type metadata accessor for AttributeName);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100005204()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100005240()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100005294()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

void sub_100005310()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
}

uint64_t sub_100005364()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_100005400@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v28 = a6;
  v29 = a5;
  v26 = a3;
  v27 = a2;
  v25 = a1;
  v7 = sub_1000040A8(qword_100354AB8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v24 - v11;
  v13 = *(a4 - 8);
  v14 = __chkstk_darwin(v10);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v24 - v17;
  v19 = type metadata accessor for TimelineView.Context();
  v21 = *(v19 - 8);
  result = v19 - 8;
  if (*(v21 + 64) == v9)
  {
    (*(v8 + 16))(v12, v25, v7);
    v27(v12);
    (*(v8 + 8))(v12, v7);
    v22 = v29;
    sub_10009A58C(v16, a4, v29);
    v23 = *(v13 + 8);
    v23(v16, a4);
    sub_10009A58C(v18, a4, v22);
    return (v23)(v18, a4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100005644(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

__n128 sub_100005680(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for QuestionnaireRevision(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for QuestionnaireRevision(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for QuestionnaireRevision(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

__n128 sub_10000572C(uint64_t a1, __int128 *a2)
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

uint64_t sub_100005760(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 176))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100005780(uint64_t result, int a2, int a3)
{
  if (a2)
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
    *result = (a2 - 1);
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

  *(result + 176) = v3;
  return result;
}

uint64_t sub_1000057EC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000580C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 80) = v3;
  return result;
}

__n128 sub_100005860(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100005874(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100005894(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 48) = v3;
  return result;
}

__n128 sub_1000058F4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_100005928(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 192))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100005948(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 184) = 0;
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
    *result = (a2 - 1);
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

  *(result + 192) = v3;
  return result;
}

__n128 sub_1000059B8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000059C4(uint64_t a1, int a2)
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

uint64_t sub_1000059E4(uint64_t result, int a2, int a3)
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

__n128 sub_100005A24(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100005A38(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100005A58(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 64) = v3;
  return result;
}

__n128 sub_100005ABC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100005AF8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 288))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100005B18(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 280) = 0;
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
    *(result + 264) = 0u;
    *result = (a2 - 1);
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

  *(result + 288) = v3;
  return result;
}

__n128 sub_100005BA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_100005BC0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100005BE0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 96) = v3;
  return result;
}

uint64_t sub_100005C44(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100005C64(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_100005E20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100005F04(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100005F24(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_100005F60(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ConnectionAssistantRendererProjection.Circle(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ConnectionAssistantRendererProjection.Circle(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 12) = v3;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for QuestionnairePolicy.AutoSendPolicy(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for QuestionnairePolicy.AutoSendPolicy(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for QuestionnairePolicy.AutoSendPolicy(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

unint64_t sub_100006954()
{
  result = qword_1003549E0;
  if (!qword_1003549E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003549E0);
  }

  return result;
}

uint64_t sub_1000069BC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_100006A04(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100006A18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100006A60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100006B30()
{
  v1 = (*(v0 + 48))();
  type metadata accessor for PulsatingView();
  return sub_100003F84(v1 & 1);
}

uint64_t sub_100006BE0(uint64_t a1, char *a2)
{
  v2 = *a2;
  type metadata accessor for PulsatingView();
  return sub_100003F84(v2);
}

uint64_t sub_100006C20(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000040A8(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100006C88(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_100354AA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100006CF0()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100006D44()
{

  return _swift_deallocObject(v0, 64, 7);
}

unint64_t sub_100006DC4()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    result = sub_100006FE4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100006E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100006F2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

unint64_t sub_100006FE4()
{
  result = qword_100354B40;
  if (!qword_100354B40)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_100354B40);
  }

  return result;
}

uint64_t sub_100007048()
{
  type metadata accessor for AnimationTimelineSchedule();
  type metadata accessor for TimelineViewContent();
  sub_100005E20(&qword_100354AA0, &type metadata accessor for AnimationTimelineSchedule);
  type metadata accessor for TimelineView();
  type metadata accessor for _ConditionalContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

void sub_1000072F4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

__n128 sub_1000073E8(uint64_t a1, uint64_t a2)
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

uint64_t sub_10000740C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100007454(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

uint64_t sub_1000074D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1000089B0(a2, v25);
  v6 = swift_allocObject();
  v7 = *(a1 + 48);
  *(v6 + 48) = *(a1 + 32);
  *(v6 + 64) = v7;
  *(v6 + 80) = *(a1 + 64);
  v8 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v8;
  sub_100008A18(v25, v6 + 88);
  sub_1000089B0(a2, v29);
  v9 = swift_allocObject();
  v10 = *(a1 + 48);
  *(v9 + 48) = *(a1 + 32);
  *(v9 + 64) = v10;
  *(v9 + 80) = *(a1 + 64);
  v11 = *(a1 + 16);
  *(v9 + 16) = *a1;
  *(v9 + 32) = v11;
  sub_100008A18(v29, v9 + 88);
  v12 = *(a1 + 48);
  v13 = *(v12 + 64) == 0;
  sub_10000892C(a1, v27);
  sub_10000892C(a1, v27);

  sub_10013A3F0(&v30, ConnectionAssistantRendererEarthOutline.Buffers.shapesCount.getter, 0, sub_100008A30, v6, sub_100008A9C, v9, v13);
  if (*(a1 + 32))
  {
    v42 = *(a1 + 32);
    v43 = 2;
    v45 = 0;
    v46 = 0;
    v44 = v12;

    sub_1000E47E8(&v42, v29);
    sub_100008AA8(v29, v24);
    v14 = v37;
    v25[8] = v38;
    v25[9] = v39;
    v15 = v39;
    v25[10] = v40;
    v16 = v34;
    v17 = v33;
    v25[4] = v34;
    v25[5] = v35;
    v18 = v35;
    v19 = v36;
    v25[6] = v36;
    v25[7] = v37;
    v25[0] = v30;
    v25[1] = v31;
    v21 = v30;
    v20 = v31;
    v22 = v32;
    v25[2] = v32;
    v25[3] = v33;
    *(a3 + 128) = v38;
    *(a3 + 144) = v15;
    *(a3 + 160) = v40;
    *(a3 + 64) = v16;
    *(a3 + 80) = v18;
    *(a3 + 96) = v19;
    *(a3 + 112) = v14;
    *a3 = v21;
    *(a3 + 16) = v20;
    v26 = v41;
    *(a3 + 176) = v41;
    *(a3 + 32) = v22;
    *(a3 + 48) = v17;
    sub_100008AA8(v24, a3 + 184);
    sub_100008B04(v25, v27);
    sub_100008B74(v29);
    sub_100008B74(v24);
    v27[8] = v38;
    v27[9] = v39;
    v27[10] = v40;
    v28 = v41;
    v27[4] = v34;
    v27[5] = v35;
    v27[6] = v36;
    v27[7] = v37;
    v27[0] = v30;
    v27[1] = v31;
    v27[2] = v32;
    v27[3] = v33;
    return sub_100008BC8(v27);
  }

  else
  {
    type metadata accessor for QuestionnaireState();
    sub_100008C54(&qword_100354D50, type metadata accessor for QuestionnaireState);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

double sub_10000779C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static HorizontalAlignment.center.getter();
  v20 = 0;
  sub_1000078F4(a1, &v11);
  v25 = v15;
  v26 = v16;
  v27 = v17;
  v28 = v18;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v29[0] = v11;
  v29[1] = v12;
  v29[2] = v13;
  v29[3] = v14;
  v29[4] = v15;
  v29[5] = v16;
  v29[6] = v17;
  v30 = v18;
  sub_100006C20(&v21, &v10, &qword_100354D88);
  sub_100008FA0(v29, &qword_100354D88);
  *&v19[71] = v25;
  *&v19[87] = v26;
  *&v19[103] = v27;
  *&v19[7] = v21;
  *&v19[23] = v22;
  *&v19[39] = v23;
  *&v19[119] = v28;
  *&v19[55] = v24;
  LOBYTE(a1) = v20;
  v5 = static Edge.Set.all.getter();
  v6 = *&v19[80];
  *(a2 + 81) = *&v19[64];
  *(a2 + 97) = v6;
  *(a2 + 113) = *&v19[96];
  *(a2 + 122) = *&v19[105];
  v7 = *&v19[16];
  *(a2 + 17) = *v19;
  *(a2 + 33) = v7;
  v8 = *&v19[48];
  *(a2 + 49) = *&v19[32];
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = a1;
  *(a2 + 65) = v8;
  *(a2 + 144) = v5;
  result = 0.0;
  *(a2 + 152) = xmmword_100277A70;
  *(a2 + 168) = xmmword_100277A70;
  *(a2 + 184) = 0;
  return result;
}

uint64_t sub_1000078F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  if (*(v4 + 32) > 1u)
  {
    if (*(v4 + 32) == 2)
    {
      if (v5)
      {
        v12 = swift_allocObject();
        v13 = *(a1 + 48);
        *(v12 + 48) = *(a1 + 32);
        *(v12 + 64) = v13;
        *(v12 + 80) = *(a1 + 64);
        v14 = *(a1 + 16);
        *(v12 + 16) = *a1;
        *(v12 + 32) = v14;
        swift_retain_n();
        sub_10000892C(a1, &v56);
        type metadata accessor for AppEvents();
        sub_100008C54(&qword_100354D48, type metadata accessor for AppEvents);

        v15 = EnvironmentObject.init()();
        v17 = v16;
        type metadata accessor for UIMetrics();
        sub_100008C54(&qword_100354D40, type metadata accessor for UIMetrics);
        v18 = EnvironmentObject.init()();
        v20 = v19;
        FocusState.init<A>()();
        *&v38 = v15;
        *(&v38 + 1) = v17;
        *&v39 = v18;
        *(&v39 + 1) = v20;
        *&v40 = v5;
        *(&v40 + 1) = v4;
        *&v41 = sub_1000092BC;
        *(&v41 + 1) = v12;
        v42 = v56;
        v43 = v57;
        v44 = v58;
        v60 = v56;
        *v61 = v57;
        *&v61[16] = v58;
        v56 = v38;
        v57 = v39;
        v58 = v40;
        v59 = v41;
        v45 = 0;
        v61[24] = 0;
        sub_100009000(&v38, &v51);
        sub_100008D38();
        sub_100008D8C();
        _ConditionalContent<>.init(storage:)();
        *&v54[16] = *&v49[16];
        *v55 = v50[0];
        *&v55[9] = *(v50 + 9);
        v51 = v46;
        v52 = v47;
        v53 = v48;
        *v54 = *v49;
        v62 = 1;
        v55[25] = 1;
        sub_1000040A8(&qword_100354DA0);
        sub_1000040A8(&qword_100354DA8);
        sub_100008DE0();
        sub_100008F14();
        _ConditionalContent<>.init(storage:)();
        sub_10000905C(&v38);
        goto LABEL_13;
      }

      goto LABEL_14;
    }

    v25 = *(a1 + 64);
    if (!v5)
    {
      type metadata accessor for QuestionnaireState();
      sub_100008C54(&qword_100354D50, type metadata accessor for QuestionnaireState);
      swift_retain_n();

      goto LABEL_16;
    }

    v26 = *(a1 + 56);
    v27 = swift_allocObject();
    v28 = *(a1 + 48);
    *(v27 + 48) = *(a1 + 32);
    *(v27 + 64) = v28;
    *(v27 + 80) = *(a1 + 64);
    v29 = *(a1 + 16);
    *(v27 + 16) = *a1;
    *(v27 + 32) = v29;
    v62 = 1;
    *&v56 = v5;
    *(&v56 + 1) = v4;
    *&v57 = v26;
    *(&v57 + 1) = v25;
    *&v58 = sub_1000092BC;
    *(&v58 + 1) = v27;
    v61[24] = 1;

    swift_retain_n();
    sub_10000892C(a1, &v51);
    sub_100008D38();
    sub_100008D8C();

    _ConditionalContent<>.init(storage:)();
    *&v54[16] = *&v49[16];
    *v55 = v50[0];
    *&v55[9] = *(v50 + 9);
    v51 = v46;
    v52 = v47;
    v53 = v48;
    *v54 = *v49;
    LOBYTE(v38) = 1;
    v55[25] = 1;
    sub_1000040A8(&qword_100354DA0);
    sub_1000040A8(&qword_100354DA8);
    sub_100008DE0();
    sub_100008F14();
    _ConditionalContent<>.init(storage:)();

LABEL_12:

    goto LABEL_13;
  }

  if (!*(v4 + 32))
  {
    if (v5)
    {
      v6 = swift_allocObject();
      v7 = *(a1 + 48);
      *(v6 + 48) = *(a1 + 32);
      *(v6 + 64) = v7;
      *(v6 + 80) = *(a1 + 64);
      v8 = *(a1 + 16);
      *(v6 + 16) = *a1;
      *(v6 + 32) = v8;
      swift_retain_n();

      sub_10000892C(a1, &v56);
      type metadata accessor for UIMetrics();
      sub_100008C54(&qword_100354D40, type metadata accessor for UIMetrics);
      v9 = EnvironmentObject.init()();
      v11 = v10;
      type metadata accessor for CGSize(0);
      v51 = 0uLL;
      State.init(wrappedValue:)();
      *&v38 = v9;
      *(&v38 + 1) = v11;
      *&v39 = v5;
      *(&v39 + 1) = v4;
      *&v40 = sub_1000092BC;
      *(&v40 + 1) = v6;
      v41 = v56;
      *&v42 = v57;
      v58 = v40;
      v59 = v56;
      *&v60 = v57;
      v56 = v38;
      v57 = v39;
      v45 = 0;
      BYTE8(v60) = 0;
      sub_100009108(&v38, &v51);
      sub_100008E6C();
      sub_100008EC0();
      _ConditionalContent<>.init(storage:)();
      v53 = v48;
      *v54 = *v49;
      *&v54[9] = *&v49[9];
      v51 = v46;
      v52 = v47;
      v62 = 0;
      v55[25] = 0;
      sub_1000040A8(&qword_100354DA0);
      sub_1000040A8(&qword_100354DA8);
      sub_100008DE0();
      sub_100008F14();
      _ConditionalContent<>.init(storage:)();
      sub_100009164(&v38);
LABEL_13:
      v67 = v60;
      v68[0] = *v61;
      *(v68 + 10) = *&v61[10];
      v63 = v56;
      v64 = v57;
      v65 = v58;
      v66 = v59;
      v31 = v68[0];
      *&v54[16] = v60;
      v30 = v60;
      *v55 = v68[0];
      v32 = *&v61[10];
      *&v55[10] = *&v61[10];
      v34 = v57;
      v51 = v56;
      v33 = v56;
      v52 = v57;
      v35 = v59;
      v53 = v58;
      v36 = v58;
      *v54 = v59;
      *a2 = v4;
      *(a2 + 8) = v33;
      *(a2 + 24) = v34;
      *(a2 + 40) = v36;
      *(a2 + 98) = v32;
      *(a2 + 88) = v31;
      *(a2 + 56) = v35;
      *(a2 + 72) = v30;
      v58 = v36;
      v59 = v35;
      v60 = v30;
      *v61 = v31;
      *&v61[10] = v32;
      v56 = v33;
      v57 = v34;

      sub_100006C20(&v51, &v46, &qword_100354DD0);
      sub_100008FA0(&v56, &qword_100354DD0);
    }

    goto LABEL_14;
  }

  if (v5)
  {
    v21 = swift_allocObject();
    v22 = *(a1 + 48);
    *(v21 + 48) = *(a1 + 32);
    *(v21 + 64) = v22;
    *(v21 + 80) = *(a1 + 64);
    v23 = *(a1 + 16);
    *(v21 + 16) = *a1;
    *(v21 + 32) = v23;
    swift_retain_n();
    sub_10000892C(a1, &v56);
    type metadata accessor for UIMetrics();
    sub_100008C54(&qword_100354D40, type metadata accessor for UIMetrics);

    v45 = 1;
    *&v56 = EnvironmentObject.init()();
    *(&v56 + 1) = v24;
    *&v57 = v5;
    *(&v57 + 1) = v4;
    *&v58 = sub_1000092BC;
    *(&v58 + 1) = v21;
    v59 = v38;
    *&v60 = v39;
    BYTE8(v60) = 1;
    sub_100008E6C();
    sub_100008EC0();

    _ConditionalContent<>.init(storage:)();
    v53 = v48;
    *v54 = *v49;
    *&v54[9] = *&v49[9];
    v51 = v46;
    v52 = v47;
    v62 = 0;
    v55[25] = 0;
    sub_1000040A8(&qword_100354DA0);
    sub_1000040A8(&qword_100354DA8);
    sub_100008DE0();
    sub_100008F14();
    _ConditionalContent<>.init(storage:)();

    goto LABEL_12;
  }

LABEL_14:
  type metadata accessor for QuestionnaireState();
  sub_100008C54(&qword_100354D50, type metadata accessor for QuestionnaireState);
  swift_retain_n();
LABEL_16:
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100008230()
{
  if (*v0)
  {
    if (v0[4])
    {

      PassthroughSubject.send(_:)();

      PassthroughSubject.send(_:)();
    }
  }

  else
  {
    type metadata accessor for AppEvents();
    sub_100008C54(&qword_100354D48, type metadata accessor for AppEvents);
    EnvironmentObject.error()();
    __break(1u);
  }

  type metadata accessor for QuestionnaireState();
  sub_100008C54(&qword_100354D50, type metadata accessor for QuestionnaireState);

  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1000083D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000040A8(&qword_100354D60);
  __chkstk_darwin(v4);
  v6 = &v16[-v5];
  v7 = *(a1 + 48);
  v8 = swift_allocObject();
  v9 = *(a1 + 48);
  *(v8 + 48) = *(a1 + 32);
  *(v8 + 64) = v9;
  *(v8 + 80) = *(a1 + 64);
  v10 = *(a1 + 16);
  *(v8 + 16) = *a1;
  *(v8 + 32) = v10;
  v17 = v7;
  v18 = sub_100008C30;
  v19 = v8;
  v11 = enum case for DynamicTypeSize.accessibility2(_:);
  v12 = type metadata accessor for DynamicTypeSize();
  (*(*(v12 - 8) + 104))(v6, v11, v12);

  sub_10000892C(a1, v16);
  sub_100008C54(&qword_100354D68, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    sub_100008C9C();
    sub_100009274(&qword_100354D78, &qword_100354D60);
    View.dynamicTypeSize<A>(_:)();
    sub_100008FA0(v6, &qword_100354D60);

    v14 = static Edge.Set.all.getter();
    result = sub_1000040A8(&qword_100354D80);
    v15 = a2 + *(result + 36);
    *v15 = v14;
    *(v15 + 8) = xmmword_100277A70;
    *(v15 + 24) = xmmword_100277A70;
    *(v15 + 40) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100008630(void *a1)
{
  if (*a1)
  {
    if (a1[4])
    {

      PassthroughSubject.send(_:)();
    }
  }

  else
  {
    type metadata accessor for AppEvents();
    sub_100008C54(&qword_100354D48, type metadata accessor for AppEvents);
    EnvironmentObject.error()();
    __break(1u);
  }

  type metadata accessor for QuestionnaireState();
  sub_100008C54(&qword_100354D50, type metadata accessor for QuestionnaireState);

  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100008788@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v15 = v1[2];
  v16 = v3;
  v17 = *(v1 + 8);
  v4 = v1[1];
  v13 = *v1;
  v14 = v4;
  if (v4)
  {
    v5 = *(v4 + 72);
    v6 = *(v4 + 80);
    sub_1000088DC((v4 + 48), v5);
    (*(v6 + 24))(v12, v5, v6);
    *a1 = static HorizontalAlignment.center.getter();
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_1000074D0(&v13, v12, a1 + 24);
    v7 = swift_allocObject();
    v8 = v16;
    *(v7 + 48) = v15;
    *(v7 + 64) = v8;
    *(v7 + 80) = v17;
    v9 = v14;
    *(v7 + 16) = v13;
    *(v7 + 32) = v9;
    *(a1 + 344) = sub_100008924;
    *(a1 + 352) = v7;
    *(a1 + 360) = 0;
    *(a1 + 368) = 0;
    sub_10000892C(&v13, &v11);
    return sub_100008964(v12);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_100008C54(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

void *sub_1000088DC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100008964(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1000089B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100008A18(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100008A3C()
{

  sub_100008964(v0 + 88);

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_100008B04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_100354D58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100008BC8(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_100354D58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100008C54(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100008C9C()
{
  result = qword_100354D70;
  if (!qword_100354D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100354D70);
  }

  return result;
}

uint64_t sub_100008CF0(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100008D38()
{
  result = qword_100354D90;
  if (!qword_100354D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100354D90);
  }

  return result;
}

unint64_t sub_100008D8C()
{
  result = qword_100354D98;
  if (!qword_100354D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100354D98);
  }

  return result;
}

unint64_t sub_100008DE0()
{
  result = qword_100354DB0;
  if (!qword_100354DB0)
  {
    sub_100008CF0(&qword_100354DA0);
    sub_100008E6C();
    sub_100008EC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100354DB0);
  }

  return result;
}

unint64_t sub_100008E6C()
{
  result = qword_100354DB8;
  if (!qword_100354DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100354DB8);
  }

  return result;
}

unint64_t sub_100008EC0()
{
  result = qword_100354DC0;
  if (!qword_100354DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100354DC0);
  }

  return result;
}

unint64_t sub_100008F14()
{
  result = qword_100354DC8;
  if (!qword_100354DC8)
  {
    sub_100008CF0(&qword_100354DA8);
    sub_100008D38();
    sub_100008D8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100354DC8);
  }

  return result;
}

uint64_t sub_100008FA0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1000040A8(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000090B0()
{

  return _swift_deallocObject(v0, 88, 7);
}

unint64_t sub_1000091BC()
{
  result = qword_100354DD8;
  if (!qword_100354DD8)
  {
    sub_100008CF0(&qword_100354DE0);
    sub_100009274(&qword_100354DE8, &qword_100354DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100354DD8);
  }

  return result;
}

uint64_t sub_100009274(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100008CF0(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000092D8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10000934C()
{
  v1 = v0;
  v2 = type metadata accessor for NSNotificationCenter.Publisher();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1000040A8(&qword_100354F10);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17[-v8];
  v10 = OBJC_IVAR____TtC8SOSBuddy16KeyboardObserver__shown;
  v17[8] = 0;
  Published.init(initialValue:)();
  (*(v7 + 32))(v1 + v10, v9, v6);
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v11 = sub_100233B1C(_swiftEmptyArrayStorage);
  }

  else
  {
    v11 = &_swiftEmptySetSingleton;
  }

  *(v1 + OBJC_IVAR____TtC8SOSBuddy16KeyboardObserver__cancellables) = v11;
  v12 = objc_opt_self();
  v13 = [v12 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  swift_allocObject();
  swift_weakInit();
  sub_100009AFC();

  Publisher<>.sink(receiveValue:)();

  v14 = *(v3 + 8);
  v14(v5, v2);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v15 = [v12 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  swift_allocObject();
  swift_weakInit();

  Publisher<>.sink(receiveValue:)();

  v14(v5, v2);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v1;
}

uint64_t sub_1000096D8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_100009764()
{
  v1 = OBJC_IVAR____TtC8SOSBuddy16KeyboardObserver__shown;
  v2 = sub_1000040A8(&qword_100354F10);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for KeyboardObserver()
{
  result = qword_100354E30;
  if (!qword_100354E30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100009870()
{
  sub_10000990C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10000990C()
{
  if (!qword_100354E40)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_100354E40);
    }
  }
}

uint64_t sub_100009968@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for KeyboardObserver();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000099A8@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100009A2C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100009AA4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100009AFC()
{
  result = qword_100354F18;
  if (!qword_100354F18)
  {
    type metadata accessor for NSNotificationCenter.Publisher();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100354F18);
  }

  return result;
}

uint64_t sub_100009BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    result = sub_100071A54(0, *(a1 + 200));
    if (result)
    {
      type metadata accessor for BannerAppearanceModel();
      sub_10000C930(&qword_100354F20, type metadata accessor for BannerAppearanceModel);
      v4 = EnvironmentObject.init()();
      v6 = v5;
      v7 = static Edge.Set.leading.getter();
      result = EdgeInsets.init(_all:)();
      *(&v9 + 1) = v8;
      *(&v11 + 1) = v10;
      v12 = v7;
    }

    else
    {
      v6 = 0;
      v12 = 0;
      v9 = 0uLL;
      v4 = 1;
      v11 = 0uLL;
    }

    *a2 = v4;
    *(a2 + 8) = v6;
    *(a2 + 16) = v12;
    *(a2 + 24) = v9;
    *(a2 + 40) = v11;
    *(a2 + 56) = 0;
  }

  else
  {
    type metadata accessor for BannerAppearanceModel();
    sub_10000C930(&qword_100354F20, type metadata accessor for BannerAppearanceModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_100009CEC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_100009D48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_100009DEC()
{
  result = qword_100354F38;
  if (!qword_100354F38)
  {
    sub_100008CF0(&qword_100354F40);
    sub_100009E78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100354F38);
  }

  return result;
}

unint64_t sub_100009E78()
{
  result = qword_100354F48;
  if (!qword_100354F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100354F48);
  }

  return result;
}

uint64_t sub_100009EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000040A8(&qword_100354F50);
  __chkstk_darwin(v4 - 8);
  v6 = &v28[-v5];
  if (a1)
  {
    v7 = OBJC_IVAR____TtC8SOSBuddy21BannerAppearanceModel_bannerMode;
    swift_beginAccess();
    sub_100006C20(a1 + v7, v6, &qword_100354F50);
    v8 = type metadata accessor for ConnectionAssistantBanner.Mode();
    if ((*(*(v8 - 8) + 48))(v6, 1, v8) != 1)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          sub_10000CA10(v6, type metadata accessor for ConnectionClosed);
        }
      }

      else if ((EnumCaseMultiPayload - 2) >= 2)
      {
        if (EnumCaseMultiPayload == 4)
        {
          type metadata accessor for ConnectionModel(0);
          sub_10000C930(&qword_100354F88, type metadata accessor for ConnectionModel);
          v10 = EnvironmentObject.init()();
          v12 = v11;
          type metadata accessor for ConnectivityModel();
          sub_10000C930(&qword_100354F78, type metadata accessor for ConnectivityModel);
          v13 = EnvironmentObject.init()();
          v15 = v14;
          type metadata accessor for UIMetrics();
          sub_10000C930(&qword_100354D40, type metadata accessor for UIMetrics);
          v16 = EnvironmentObject.init()();
          *&v29 = v10;
          *(&v29 + 1) = v12;
          *&v30 = v13;
          *(&v30 + 1) = v15;
          *&v31 = v16;
          *(&v31 + 1) = v17;
          LOBYTE(v32) = 0;
        }

        else
        {
          type metadata accessor for ConnectivityModel();
          sub_10000C930(&qword_100354F78, type metadata accessor for ConnectivityModel);
          v20 = EnvironmentObject.init()();
          v22 = v21;
          type metadata accessor for GuidanceModel(0);
          sub_10000C930(&qword_100354F80, type metadata accessor for GuidanceModel);
          v23 = EnvironmentObject.init()();
          v25 = v24;
          type metadata accessor for UIMetrics();
          sub_10000C930(&qword_100354D40, type metadata accessor for UIMetrics);
          v26 = EnvironmentObject.init()();
          *&v29 = v20;
          *(&v29 + 1) = v22;
          *&v30 = v23;
          *(&v30 + 1) = v25;
          *&v31 = v26;
          *(&v31 + 1) = v27;
          LOBYTE(v32) = 1;
        }

        sub_10000A468();
        sub_10000A4BC();

        _ConditionalContent<>.init(storage:)();
        v33 = v37;
        v28[7] = 0;
        v37 = v37;
        sub_1000040A8(&qword_100354F58);
        sub_10000A3DC();
        _ConditionalContent<>.init(storage:)();

        v34 = v29;
        v35 = v30;
        v36 = v31;
        v37 = v32;
        goto LABEL_10;
      }
    }

    v33 = 1;
    HIBYTE(v32) = 1;
    sub_1000040A8(&qword_100354F58);
    sub_10000A3DC();
    result = _ConditionalContent<>.init(storage:)();
LABEL_10:
    v19 = v35;
    *a2 = v34;
    *(a2 + 16) = v19;
    *(a2 + 32) = v36;
    *(a2 + 48) = v37;
    return result;
  }

  type metadata accessor for BannerAppearanceModel();
  sub_10000C930(&qword_100354F20, type metadata accessor for BannerAppearanceModel);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

unint64_t sub_10000A3DC()
{
  result = qword_100354F60;
  if (!qword_100354F60)
  {
    sub_100008CF0(&qword_100354F58);
    sub_10000A468();
    sub_10000A4BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100354F60);
  }

  return result;
}

unint64_t sub_10000A468()
{
  result = qword_100354F68;
  if (!qword_100354F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100354F68);
  }

  return result;
}

unint64_t sub_10000A4BC()
{
  result = qword_100354F70;
  if (!qword_100354F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100354F70);
  }

  return result;
}

uint64_t sub_10000A528(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_10000A584(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10000A654@<X0>(uint64_t a1@<X8>)
{
  v98 = a1;
  v2 = type metadata accessor for CircularProgressViewStyle();
  v82 = *(v2 - 8);
  v83 = v2;
  __chkstk_darwin(v2);
  v81 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000040A8(&qword_100354FA0);
  v79 = *(v4 - 8);
  v80 = v4;
  __chkstk_darwin(v4);
  v78 = &v77 - v5;
  v92 = sub_1000040A8(&qword_100354FA8);
  __chkstk_darwin(v92);
  v85 = &v77 - v6;
  v90 = sub_1000040A8(&qword_100354FB0);
  __chkstk_darwin(v90);
  v91 = &v77 - v7;
  v97 = sub_1000040A8(&qword_100354FB8);
  __chkstk_darwin(v97);
  v93 = &v77 - v8;
  v9 = sub_1000040A8(&qword_100354FC0);
  __chkstk_darwin(v9 - 8);
  v87 = &v77 - v10;
  v89 = sub_1000040A8(&qword_100354FC8);
  __chkstk_darwin(v89);
  v88 = &v77 - v11;
  v95 = sub_1000040A8(&qword_100354FD0);
  __chkstk_darwin(v95);
  v94 = &v77 - v12;
  v13 = sub_1000040A8(&qword_100354FD8);
  __chkstk_darwin(v13 - 8);
  v15 = &v77 - v14;
  v16 = type metadata accessor for TransmissionProgress(0);
  v86 = *(v16 - 8);
  __chkstk_darwin(v16);
  v84 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000040A8(&qword_100354FE0);
  __chkstk_darwin(v18 - 8);
  v96 = &v77 - v19;
  v20 = v1[4];
  if (!v20)
  {
    type metadata accessor for UIMetrics();
    v75 = &qword_100354D40;
    v76 = type metadata accessor for UIMetrics;
    goto LABEL_19;
  }

  v21 = v20[9];
  v22 = v20[10];
  sub_1000088DC(v20 + 6, v21);
  v23 = *(v22 + 16);

  v23(v174, v21, v22);
  v24 = v1[2];
  if (!v24)
  {
    type metadata accessor for ConnectivityModel();
    v75 = &qword_100354F78;
    v76 = type metadata accessor for ConnectivityModel;
    goto LABEL_19;
  }

  v25 = *(*(v24 + 48) + 136);
  if (v25 <= 9)
  {
    if (((1 << v25) & 0x358) != 0)
    {

      sub_10000C414(&v161);
      v145 = v171;
      v146 = v172;
      v147[0] = *v173;
      *(v147 + 15) = *&v173[15];
      v141 = v167;
      v142 = v168;
      v143 = v169;
      v144 = v170;
      v137 = v163;
      v138 = v164;
      v139 = v165;
      v140 = v166;
      v135 = v161;
      v136 = v162;
      sub_1000040A8(&qword_100354FE8);
      sub_10000C420();
      _ConditionalContent<>.init(storage:)();
      v26 = v159;
      v27 = v94;
      *(v94 + 160) = v158;
      *(v27 + 176) = v26;
      *(v27 + 192) = v160[0];
      *(v27 + 207) = *(v160 + 15);
      v28 = v155;
      *(v27 + 96) = v154;
      *(v27 + 112) = v28;
      v29 = v157;
      *(v27 + 128) = v156;
      *(v27 + 144) = v29;
      v30 = v151;
      *(v27 + 32) = v150;
      *(v27 + 48) = v30;
      v31 = v153;
      *(v27 + 64) = v152;
      *(v27 + 80) = v31;
      v32 = v149;
      *v27 = v148;
      *(v27 + 16) = v32;
      swift_storeEnumTagMultiPayload();
      sub_1000040A8(&qword_100355018);
      sub_10000C450(&qword_100355020, &qword_100355018, &unk_100277F18, sub_10000C420);
      sub_10000C58C();
      v33 = v96;
      _ConditionalContent<>.init(storage:)();
LABEL_10:
      v55 = v98;
      goto LABEL_11;
    }

    if (((1 << v25) & 0x24) != 0)
    {

      v34 = Image.init(systemName:)();
      static Font.Weight.regular.getter();
      v35 = type metadata accessor for Font.Design();
      v36 = v87;
      (*(*(v35 - 8) + 56))(v87, 1, 1, v35);
      v37 = static Font.system(size:weight:design:)();
      sub_100008FA0(v36, &qword_100354FC0);
      KeyPath = swift_getKeyPath();

      v39 = v20[9];
      v40 = v20[10];
      sub_1000088DC(v20 + 6, v39);
      v41 = (*(v40 + 128))(v24, v39, v40);

      v42 = swift_getKeyPath();
      *&v161 = v34;
      *(&v161 + 1) = KeyPath;
      *&v162 = v37;
      *(&v162 + 1) = v42;
      *&v163 = v41;
      sub_1000040A8(&qword_100355040);
      sub_10000CCC4(&qword_100355038, &qword_100355040, &unk_100277F20, sub_10000C700);
      v43 = v88;
      View.accessibility(hidden:)();

      sub_100006C20(v43, v91, &qword_100354FC8);
      swift_storeEnumTagMultiPayload();
      sub_10000C618();
      sub_10000C7B8();
      v44 = v93;
      _ConditionalContent<>.init(storage:)();
      sub_100006C20(v44, v94, &qword_100354FB8);
      swift_storeEnumTagMultiPayload();
      sub_1000040A8(&qword_100355018);
      sub_10000C450(&qword_100355020, &qword_100355018, &unk_100277F18, sub_10000C420);
      sub_10000C58C();
      v33 = v96;
      _ConditionalContent<>.init(storage:)();
      sub_100008FA0(v44, &qword_100354FB8);
      sub_100008FA0(v43, &qword_100354FC8);
      goto LABEL_10;
    }

    if (v25 == 7)
    {

      v45 = v78;
      ProgressView<>.init<>()();
      v46 = v81;
      CircularProgressViewStyle.init()();
      sub_100009274(&qword_100355088, &qword_100354FA0);
      sub_10000C930(&qword_100355090, &type metadata accessor for CircularProgressViewStyle);
      v47 = v85;
      v48 = v80;
      v49 = v83;
      View.progressViewStyle<A>(_:)();
      (*(v82 + 8))(v46, v49);
      (*(v79 + 8))(v45, v48);
      v50 = (v47 + *(v92 + 36));
      v51 = *(sub_1000040A8(&qword_1003550A0) + 28);
      v52 = enum case for ControlSize.small(_:);
      v53 = type metadata accessor for ControlSize();
      (*(*(v53 - 8) + 104))(v50 + v51, v52, v53);
      *v50 = swift_getKeyPath();
      sub_100006C20(v47, v91, &qword_100354FA8);
      swift_storeEnumTagMultiPayload();
      sub_10000C618();
      sub_10000C7B8();
      v54 = v93;
      _ConditionalContent<>.init(storage:)();
      sub_100006C20(v54, v94, &qword_100354FB8);
      swift_storeEnumTagMultiPayload();
      sub_1000040A8(&qword_100355018);
      sub_10000C450(&qword_100355020, &qword_100355018, &unk_100277F18, sub_10000C420);
      sub_10000C58C();
      v33 = v96;
      _ConditionalContent<>.init(storage:)();
      sub_100008FA0(v54, &qword_100354FB8);
      sub_100008FA0(v47, &qword_100354FA8);
      goto LABEL_10;
    }
  }

  if (!*v1)
  {
    while (1)
    {
      type metadata accessor for ConnectionModel(0);
      v75 = &qword_100354F88;
      v76 = type metadata accessor for ConnectionModel;
LABEL_19:
      sub_10000C930(v75, v76);
      EnvironmentObject.error()();
      __break(1u);
    }
  }

  sub_1001DDADC(v15);

  if ((*(v86 + 48))(v15, 1, v16) == 1)
  {
    sub_100008FA0(v15, &qword_100354FD8);
    sub_10000C990(&v161);
    v158 = v171;
    v159 = v172;
    v160[0] = *v173;
    LOWORD(v160[1]) = *&v173[16];
    v154 = v167;
    v155 = v168;
    v156 = v169;
    v157 = v170;
    v150 = v163;
    v151 = v164;
    v152 = v165;
    v153 = v166;
    v148 = v161;
    v149 = v162;
    sub_1000040A8(&qword_100355000);
    sub_10000C4D4();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v57 = v84;
    sub_10000C9A4(v15, v84);
    v58 = static Alignment.center.getter();
    v60 = v59;
    sub_10000B8E8(v174, v57, &v161);
    v105 = v167;
    v106 = v168;
    v107 = v169;
    v101 = v163;
    v102 = v164;
    v103 = v165;
    v104 = v166;
    v99 = v161;
    v100 = v162;
    v109[6] = v167;
    v109[7] = v168;
    v109[8] = v169;
    v109[2] = v163;
    v109[3] = v164;
    v109[4] = v165;
    v109[5] = v166;
    v108 = v170;
    v110 = v170;
    v109[0] = v161;
    v109[1] = v162;
    sub_100006C20(&v99, &v148, &qword_1003550A8);
    sub_100008FA0(v109, &qword_1003550A8);
    v117 = v105;
    v118 = v106;
    v119 = v107;
    v120 = v108;
    v113 = v101;
    v114 = v102;
    v115 = v103;
    v116 = v104;
    v111 = v99;
    v112 = v100;
    v61 = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    LOBYTE(v161) = 0;
    *&v148 = v58;
    *(&v148 + 1) = v60;
    v155 = v117;
    v156 = v118;
    v157 = v119;
    *&v158 = v120;
    v151 = v113;
    v152 = v114;
    v153 = v115;
    v154 = v116;
    v149 = v111;
    v150 = v112;
    BYTE8(v158) = v61;
    *&v159 = v62;
    *(&v159 + 1) = v63;
    *&v160[0] = v64;
    *(&v160[0] + 1) = v65;
    LOBYTE(v160[1]) = 0;
    sub_10000CA08(&v148);
    v145 = v158;
    v146 = v159;
    v147[0] = v160[0];
    LOWORD(v147[1]) = v160[1];
    v141 = v154;
    v142 = v155;
    v143 = v156;
    v144 = v157;
    v137 = v150;
    v138 = v151;
    v139 = v152;
    v140 = v153;
    v135 = v148;
    v136 = v149;
    sub_1000040A8(&qword_100355000);
    sub_10000C4D4();
    _ConditionalContent<>.init(storage:)();
    sub_10000CA10(v57, type metadata accessor for TransmissionProgress);
    v131 = v171;
    v132 = v172;
    v133 = *v173;
    v134 = *&v173[16];
    v127 = v167;
    v128 = v168;
    v129 = v169;
    v130 = v170;
    v123 = v163;
    v124 = v164;
    v125 = v165;
    v126 = v166;
    v121 = v161;
    v122 = v162;
  }

  v66 = v98;
  v171 = v131;
  v172 = v132;
  *v173 = v133;
  *&v173[16] = v134;
  v167 = v127;
  v168 = v128;
  v169 = v129;
  v170 = v130;
  v163 = v123;
  v164 = v124;
  v165 = v125;
  v166 = v126;
  v161 = v121;
  v162 = v122;
  sub_10000C99C(&v161);
  v145 = v171;
  v146 = v172;
  v147[0] = *v173;
  *(v147 + 15) = *&v173[15];
  v141 = v167;
  v142 = v168;
  v143 = v169;
  v144 = v170;
  v137 = v163;
  v138 = v164;
  v139 = v165;
  v140 = v166;
  v135 = v161;
  v136 = v162;
  sub_100006C20(&v121, &v148, &qword_100354FE8);
  sub_1000040A8(&qword_100354FE8);
  sub_10000C420();
  _ConditionalContent<>.init(storage:)();
  v67 = v159;
  v68 = v94;
  *(v94 + 160) = v158;
  *(v68 + 176) = v67;
  *(v68 + 192) = v160[0];
  *(v68 + 207) = *(v160 + 15);
  v69 = v155;
  *(v68 + 96) = v154;
  *(v68 + 112) = v69;
  v70 = v157;
  *(v68 + 128) = v156;
  *(v68 + 144) = v70;
  v71 = v151;
  *(v68 + 32) = v150;
  *(v68 + 48) = v71;
  v72 = v153;
  *(v68 + 64) = v152;
  *(v68 + 80) = v72;
  v73 = v149;
  *v68 = v148;
  *(v68 + 16) = v73;
  swift_storeEnumTagMultiPayload();
  sub_1000040A8(&qword_100355018);
  sub_10000C450(&qword_100355020, &qword_100355018, &unk_100277F18, sub_10000C420);
  sub_10000C58C();
  v74 = v96;
  _ConditionalContent<>.init(storage:)();
  sub_100008FA0(&v121, &qword_100354FE8);
  v55 = v66;
  v33 = v74;
LABEL_11:
  sub_10000CF4C(v33, v55, &qword_100354FE0);
  return sub_100008964(v174);
}

uint64_t sub_10000B8E8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v6 = v48;
  v32 = v49;
  v7 = v50;
  v8 = v51;
  v31 = v52;
  v9 = v53;
  v10 = a1[3];
  v11 = a1[4];
  sub_1000088DC(a1, v10);
  v12 = (*(*(v11 + 8) + 24))(v10);
  KeyPath = swift_getKeyPath();
  v14 = *(a2 + *(type metadata accessor for TransmissionProgress(0) + 28)) / 100.0;
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v62[0] = 0x3FF921FB54442D18;
  Angle.animatableData.getter();
  Angle.animatableData.setter();
  static UnitPoint.center.getter();
  v16 = v15;
  v18 = v17;
  v20 = a1[3];
  v19 = a1[4];
  sub_1000088DC(a1, v20);
  v21 = (*(*(v19 + 8) + 16))(v20);
  v22 = swift_getKeyPath();
  *&v58[0] = 0;
  *(v58 + 1) = v14;
  v23 = v47;
  *&v59 = v47;
  v58[1] = v45;
  v58[2] = v46;
  *(&v59 + 1) = 0x3FF921FB54442D18;
  *&v60 = v16;
  *(&v60 + 1) = v18;
  *&v61 = v22;
  *(&v61 + 1) = v21;
  *&v44[24] = v45;
  *&v44[8] = v58[0];
  *&v44[88] = v61;
  *&v44[72] = v60;
  *&v44[56] = v59;
  *&v44[40] = v46;
  *(a3 + 144) = v21;
  *&v54 = v6;
  *(&v54 + 1) = __PAIR64__(v7, v32);
  *&v55 = v8;
  *(&v55 + 1) = v31;
  *&v56 = v9;
  *(&v56 + 1) = KeyPath;
  v57 = v12;
  *v44 = v12;
  v24 = v55;
  v41 = v54;
  v42 = v55;
  v43 = v56;
  *a3 = v54;
  *(a3 + 16) = v24;
  v25 = v43;
  v26 = *v44;
  v27 = *&v44[32];
  *(a3 + 64) = *&v44[16];
  *(a3 + 80) = v27;
  *(a3 + 32) = v25;
  *(a3 + 48) = v26;
  v28 = *&v44[48];
  v29 = *&v44[80];
  *(a3 + 112) = *&v44[64];
  *(a3 + 128) = v29;
  *(a3 + 96) = v28;
  v62[0] = 0;
  *&v62[1] = v14;
  v63 = v45;
  v64 = v46;
  v65 = v23;
  v66 = 0x3FF921FB54442D18;
  v67 = v16;
  v68 = v18;
  v69 = v22;
  v70 = v21;
  sub_100006C20(&v54, &v33, &qword_1003550B0);
  sub_100006C20(v58, &v33, &qword_1003550B8);
  sub_100008FA0(v62, &qword_1003550B8);
  v33 = v6;
  v34 = v32;
  v35 = v7;
  v36 = v8;
  v37 = v31;
  v38 = v9;
  v39 = KeyPath;
  v40 = v12;
  return sub_100008FA0(&v33, &qword_1003550B0);
}

uint64_t sub_10000BC48@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  v3 = sub_1000040A8(&qword_100354FC0);
  __chkstk_darwin(v3 - 8);
  v54 = &v48 - v4;
  v51 = type metadata accessor for SymbolVariants();
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000040A8(&qword_1003550C0);
  v50 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v48 - v8;
  v52 = sub_1000040A8(&qword_1003550C8);
  __chkstk_darwin(v52);
  v53 = &v48 - v10;
  v57 = sub_1000040A8(&qword_1003550D0);
  __chkstk_darwin(v57);
  v56 = &v48 - v11;
  v12 = sub_1000040A8(&qword_1003550D8);
  v58 = *(v12 - 8);
  v59 = v12;
  __chkstk_darwin(v12);
  v55 = &v48 - v13;
  v14 = v1[4];
  if (v14)
  {
    v15 = v14[9];
    v16 = v14[10];
    sub_1000088DC(v14 + 6, v15);
    v17 = *(v16 + 16);

    v17(v64, v15, v16);
    v18 = *v1;
    v19 = v1[1];
    sub_10000CB18(*v2, v2[1], v2[2]);
    if (!v20)
    {

      sub_100008964(v64);
      v46 = 1;
      v45 = v60;
      return (*(v58 + 56))(v45, v46, 1, v59);
    }

    v48 = v19;
    v61[0] = Image.init(systemName:)();
    static SymbolVariants.circle.getter();
    View.symbolVariant(_:)();
    v21 = *(v49 + 8);
    v22 = v18;
    v23 = v51;
    v21(v6, v51);

    static SymbolVariants.fill.getter();
    v61[0] = &type metadata for Image;
    v61[1] = &protocol witness table for Image;
    swift_getOpaqueTypeConformance2();
    v24 = v53;
    View.symbolVariant(_:)();
    v25 = v23;
    v26 = v22;
    v27 = v24;
    v21(v6, v25);
    (*(v50 + 8))(v9, v7);
    v28 = &v24[*(sub_1000040A8(&qword_1003550E0) + 36)];
    v29 = *(sub_1000040A8(&qword_1003550E8) + 28);
    static SymbolRenderingMode.hierarchical.getter();
    v30 = type metadata accessor for SymbolRenderingMode();
    (*(*(v30 - 8) + 56))(v28 + v29, 0, 1, v30);
    *v28 = swift_getKeyPath();
    static Font.Weight.medium.getter();
    v31 = type metadata accessor for Font.Design();
    v32 = v54;
    (*(*(v31 - 8) + 56))(v54, 1, 1, v31);
    v33 = static Font.system(size:weight:design:)();
    sub_100008FA0(v32, &qword_100354FC0);
    KeyPath = swift_getKeyPath();
    v35 = &v24[*(v52 + 36)];
    *v35 = KeyPath;
    v35[1] = v33;
    sub_1000089B0((v14 + 6), v61);

    v36 = v62;
    v37 = v63;
    sub_1000088DC(v61, v62);
    if (v26)
    {
      v38 = *(v37 + 128);

      v40 = v38(v39, v36, v37);

      v41 = swift_getKeyPath();
      v42 = v56;
      sub_10000CF4C(v27, v56, &qword_1003550C8);
      v43 = (v42 + *(v57 + 36));
      *v43 = v41;
      v43[1] = v40;
      sub_100008964(v61);
      sub_10000CCC4(&qword_1003550F0, &qword_1003550D0, &unk_100278000, sub_10000CD74);
      v44 = v55;
      View.accessibility(hidden:)();
      sub_100008FA0(v42, &qword_1003550D0);
      sub_100008964(v64);
      v45 = v60;
      sub_10000CF4C(v44, v60, &qword_1003550D8);
      v46 = 0;
      return (*(v58 + 56))(v45, v46, 1, v59);
    }
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_10000C930(&qword_100354D40, type metadata accessor for UIMetrics);
    EnvironmentObject.error()();
    __break(1u);
  }

  type metadata accessor for ConnectivityModel();
  sub_10000C930(&qword_100354F78, type metadata accessor for ConnectivityModel);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_10000C450(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100008CF0(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000C4D4()
{
  result = qword_100354FF8;
  if (!qword_100354FF8)
  {
    sub_100008CF0(&qword_100355000);
    sub_100009274(&qword_100355008, &qword_100355010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100354FF8);
  }

  return result;
}

unint64_t sub_10000C58C()
{
  result = qword_100355028;
  if (!qword_100355028)
  {
    sub_100008CF0(&qword_100354FB8);
    sub_10000C618();
    sub_10000C7B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100355028);
  }

  return result;
}

unint64_t sub_10000C618()
{
  result = qword_100355030;
  if (!qword_100355030)
  {
    sub_100008CF0(&qword_100354FC8);
    sub_10000CCC4(&qword_100355038, &qword_100355040, &unk_100277F20, sub_10000C700);
    sub_10000C930(&qword_100355078, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100355030);
  }

  return result;
}

unint64_t sub_10000C700()
{
  result = qword_100355048;
  if (!qword_100355048)
  {
    sub_100008CF0(&qword_100355050);
    sub_100009274(&qword_100355058, &qword_100355060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100355048);
  }

  return result;
}

unint64_t sub_10000C7B8()
{
  result = qword_100355080;
  if (!qword_100355080)
  {
    sub_100008CF0(&qword_100354FA8);
    sub_100008CF0(&qword_100354FA0);
    type metadata accessor for CircularProgressViewStyle();
    sub_100009274(&qword_100355088, &qword_100354FA0);
    sub_10000C930(&qword_100355090, &type metadata accessor for CircularProgressViewStyle);
    swift_getOpaqueTypeConformance2();
    sub_100009274(&qword_100355098, &qword_1003550A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100355080);
  }

  return result;
}

uint64_t sub_10000C930(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000C9A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransmissionProgress(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000CA10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10000CA70(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_100355110);
  __chkstk_darwin(v2 - 8);
  sub_100006C20(a1, &v5 - v3, &qword_100355110);
  return EnvironmentValues.symbolRenderingMode.setter();
}

uint64_t sub_10000CB18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    type metadata accessor for GuidanceModel(0);
    v7 = &qword_100354F80;
    v8 = type metadata accessor for GuidanceModel;
LABEL_14:
    sub_10000C930(v7, v8);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  if (sub_100071A54(0, *(a3 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__suggestedActions)))
  {
    if (a1)
    {
      return *&aCheckmararrowU[8 * *(*(a1 + 48) + 136)];
    }

    type metadata accessor for ConnectivityModel();
    v7 = &qword_100354F78;
    v8 = type metadata accessor for ConnectivityModel;
    goto LABEL_14;
  }

  v6 = OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__suggestedActions;
  if (sub_100071A54(3, *(a3 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__suggestedActions)))
  {
    return 0x6F642E776F727261;
  }

  if (sub_100071A54(1, *(a3 + v6)))
  {
    return 0x2E6E6F7276656863;
  }

  if (sub_100071A54(2, *(a3 + v6)))
  {
    return 0x2E6E6F7276656863;
  }

  return 0;
}

uint64_t sub_10000CCC4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100008CF0(a2);
    a4();
    sub_100009274(&qword_100355068, &qword_100355070);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000CD74()
{
  result = qword_1003550F8;
  if (!qword_1003550F8)
  {
    sub_100008CF0(&qword_1003550C8);
    sub_10000CE2C();
    sub_100009274(&qword_100355058, &qword_100355060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003550F8);
  }

  return result;
}

unint64_t sub_10000CE2C()
{
  result = qword_100355100;
  if (!qword_100355100)
  {
    sub_100008CF0(&qword_1003550E0);
    sub_100008CF0(&qword_1003550C0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100009274(&qword_100355108, &qword_1003550E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100355100);
  }

  return result;
}

uint64_t sub_10000CF4C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000040A8(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10000CFB8()
{
  result = qword_100355118;
  if (!qword_100355118)
  {
    sub_100008CF0(&qword_100354FE0);
    sub_10000C450(&qword_100355020, &qword_100355018, &unk_100277F18, sub_10000C420);
    sub_10000C58C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100355118);
  }

  return result;
}

uint64_t sub_10000D0B4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100008CF0(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000D130()
{
  result = qword_100355130;
  if (!qword_100355130)
  {
    sub_100008CF0(&qword_1003550D8);
    sub_10000CCC4(&qword_1003550F0, &qword_1003550D0, &unk_100278000, sub_10000CD74);
    sub_10000C930(&qword_100355078, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100355130);
  }

  return result;
}

uint64_t sub_10000D228()
{

  return swift_deallocClassInstance();
}

unint64_t sub_10000D290()
{
  result = qword_10035CF60;
  if (!qword_10035CF60)
  {
    sub_100008CF0(&unk_100365610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035CF60);
  }

  return result;
}

unint64_t sub_10000D300(uint64_t a1)
{
  result = sub_10000D328();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10000D328()
{
  result = qword_1003551E0;
  if (!qword_1003551E0)
  {
    type metadata accessor for ModelBase();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003551E0);
  }

  return result;
}

uint64_t sub_10000D398()
{
  v1 = v0;
  sub_1000040A8(&qword_100355310);
  swift_allocObject();
  *(v0 + 16) = PassthroughSubject.init()();
  *(v0 + 24) = 0;
  v2 = OBJC_IVAR____TtC8SOSBuddy9EEDSource__pendingFetchId;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F53C(v4, qword_100381C80);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136446210;
    type metadata accessor for EEDSource();

    v9 = String.init<A>(describing:)();
    v11 = sub_10017C9E8(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "init: %{public}s", v7, 0xCu);
    sub_100008964(v8);
  }

  return v1;
}

uint64_t sub_10000D584()
{
  v1 = v0;
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381C80);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    type metadata accessor for EEDSource();

    v7 = String.init<A>(describing:)();
    v9 = sub_10017C9E8(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "deinit: %{public}s", v5, 0xCu);
    sub_100008964(v6);
  }

  sub_100008FA0(v1 + OBJC_IVAR____TtC8SOSBuddy9EEDSource__pendingFetchId, &qword_100355320);
  return v1;
}

uint64_t sub_10000D72C()
{
  sub_10000D584();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EEDSource()
{
  result = qword_100355218;
  if (!qword_100355218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000D7D8()
{
  sub_10000EBF8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

BOOL sub_10000D880()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_100353A48 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v7 = type metadata accessor for Logger();
  sub_10000F53C(v7, qword_100381D28);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "start", v10, 2u);
  }

  type metadata accessor for EEDAgent();
  swift_allocObject();
  *(v1 + 24) = sub_1000CA228();

  return *(v1 + 24) != 0;
}

uint64_t sub_10000DA80()
{
  v1 = v0;
  v2 = sub_1000040A8(&qword_100355320);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v9 = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    if (qword_100353A48 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = type metadata accessor for Logger();
  sub_10000F53C(v10, qword_100381D28);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "stop", v13, 2u);
  }

  *(v1 + 24) = 0;

  v14 = type metadata accessor for UUID();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  v15 = OBJC_IVAR____TtC8SOSBuddy9EEDSource__pendingFetchId;
  swift_beginAccess();
  sub_10000F630(v4, v1 + v15);
  return swift_endAccess();
}

void sub_10000DD14()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1000040A8(&qword_100355320);
  v6 = __chkstk_darwin(v31);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v30 - v9;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v14 = static OS_dispatch_queue.main.getter();
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v15 = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v14, v11);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    swift_once();
    goto LABEL_6;
  }

  v11 = OBJC_IVAR____TtC8SOSBuddy9EEDSource__pendingFetchId;
  swift_beginAccess();
  sub_10000F5C0(v1 + v11, v10);
  v16 = (*(v3 + 48))(v10, 1, v2);
  sub_100008FA0(v10, &qword_100355320);
  if (v16 == 1)
  {
    if (*(v1 + 24))
    {

      UUID.init()();
      (*(v3 + 16))(v8, v5, v2);
      (*(v3 + 56))(v8, 0, 1, v2);
      swift_beginAccess();
      sub_10000F630(v8, v1 + v11);
      swift_endAccess();
      v17 = swift_allocObject();
      swift_weakInit();

      sub_1000CA828(v5, sub_10000F71C, v17);

      (*(v3 + 8))(v5, v2);
    }

    else
    {
      if (qword_100353A48 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_10000F53C(v26, qword_100381D28);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "updateAsync - no agent", v29, 2u);
      }
    }

    return;
  }

  if (qword_100353A48 != -1)
  {
    goto LABEL_15;
  }

LABEL_6:
  v18 = type metadata accessor for Logger();
  sub_10000F53C(v18, qword_100381D28);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v32[0] = v22;
    *v21 = 136446210;
    sub_10000F5C0(v1 + v11, v8);
    v23 = String.init<A>(describing:)();
    v25 = sub_10017C9E8(v23, v24, v32);

    *(v21 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v19, v20, "updateAsync - update is already in progress for ID %{public}s", v21, 0xCu);
    sub_100008964(v22);
  }
}

uint64_t sub_10000E280(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10000E30C(a1, a2, a3, a4);
  }

  return result;
}

void sub_10000E30C(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v68 = a3;
  v69 = a4;
  v67 = a2;
  v74 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v71 = &v59[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v8);
  v65 = &v59[-v11];
  __chkstk_darwin(v10);
  v61 = &v59[-v12];
  v13 = sub_1000040A8(&qword_100355318);
  __chkstk_darwin(v13);
  v15 = &v59[-v14];
  v16 = sub_1000040A8(&qword_100355320);
  v17 = __chkstk_darwin(v16 - 8);
  v66 = &v59[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v17);
  v70 = &v59[-v20];
  __chkstk_darwin(v19);
  v22 = &v59[-v21];
  v23 = type metadata accessor for DispatchPredicate();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v59[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10000F574();
  *v26 = static OS_dispatch_queue.main.getter();
  (*(v24 + 104))(v26, enum case for DispatchPredicate.onQueue(_:), v23);
  v27 = _dispatchPreconditionTest(_:)();
  (*(v24 + 8))(v26, v23);
  if ((v27 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
LABEL_9:
    v32 = type metadata accessor for Logger();
    sub_10000F53C(v32, qword_100381D28);
    v33 = v71;
    v72(v71, v15, v6);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v75[0] = v37;
      *v36 = 136315138;
      sub_10000F6A0(&qword_100355328);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v40 = v39;
      (v73[1])(v33, v6);
      v41 = sub_10017C9E8(v38, v40, v75);

      *(v36 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v34, v35, "onStateFetched - stale fetch received with ID %s, ignoring", v36, 0xCu);
      sub_100008964(v37);
    }

    else
    {

      (v73[1])(v33, v6);
    }

    return;
  }

  v28 = OBJC_IVAR____TtC8SOSBuddy9EEDSource__pendingFetchId;
  swift_beginAccess();
  v72 = v7[2];
  v72(v22, v74, v6);
  v62 = v7[7];
  v62(v22, 0, 1, v6);
  v29 = *(v13 + 48);
  v63 = v28;
  v64 = v5;
  sub_10000F5C0(v5 + v28, v15);
  sub_10000F5C0(v22, &v15[v29]);
  v73 = v7;
  v30 = v7[6];
  if (v30(v15, 1, v6) != 1)
  {
    v31 = v70;
    sub_10000F5C0(v15, v70);
    if (v30(&v15[v29], 1, v6) != 1)
    {
      v42 = v73;
      v43 = v61;
      (v73[4])(v61, &v15[v29], v6);
      sub_10000F6A0(&qword_100355330);
      v60 = dispatch thunk of static Equatable.== infix(_:_:)();
      v44 = v42[1];
      v44(v43, v6);
      sub_100008FA0(v22, &qword_100355320);
      v44(v31, v6);
      sub_100008FA0(v15, &qword_100355320);
      if (v60)
      {
        goto LABEL_13;
      }

LABEL_8:
      v15 = v74;
      if (qword_100353A48 == -1)
      {
        goto LABEL_9;
      }

      goto LABEL_20;
    }

    sub_100008FA0(v22, &qword_100355320);
    (v73[1])(v31, v6);
LABEL_7:
    sub_100008FA0(v15, &qword_100355318);
    goto LABEL_8;
  }

  sub_100008FA0(v22, &qword_100355320);
  if (v30(&v15[v29], 1, v6) != 1)
  {
    goto LABEL_7;
  }

  sub_100008FA0(v15, &qword_100355320);
LABEL_13:
  v45 = v74;
  if (qword_100353A48 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  sub_10000F53C(v46, qword_100381D28);
  v47 = v65;
  v72(v65, v45, v6);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v75[0] = v51;
    *v50 = 136315138;
    sub_10000F6A0(&qword_100355328);
    v52 = dispatch thunk of CustomStringConvertible.description.getter();
    v54 = v53;
    (v73[1])(v47, v6);
    v55 = sub_10017C9E8(v52, v54, v75);

    *(v50 + 4) = v55;
    _os_log_impl(&_mh_execute_header, v48, v49, "onStateFetched - fetch with ID %s completed", v50, 0xCu);
    sub_100008964(v51);
  }

  else
  {

    (v73[1])(v47, v6);
  }

  v56 = v64;
  v57 = v66;
  v62(v66, 1, 1, v6);
  v58 = v63;
  swift_beginAccess();
  sub_10000F630(v57, v56 + v58);
  swift_endAccess();
  v75[0] = v67;
  v75[1] = v68;
  v75[2] = v69;
  PassthroughSubject.send(_:)();
}

void sub_10000EBF8()
{
  if (!qword_100355228)
  {
    type metadata accessor for UUID();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100355228);
    }
  }
}

uint64_t sub_10000EC50(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10000EC6C(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000EC94(uint64_t a1, unsigned int a2)
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

uint64_t sub_10000ECF0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10000ED54@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_10000EF84(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_10000F114(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_10000F4E8(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_10000ED54(v13, a3, a4, &v12);
  v10 = v4;
  sub_10000F4E8(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_10000F114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_10000ED54(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_10000F1CC(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_10000F480(a3, a4);
          return sub_10000EF84(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

BOOL sub_10000F334(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (a2 >> 60 == 15)
  {
    if (a5 >> 60 == 15)
    {
      sub_10000F46C(a1, a2);
      sub_10000F46C(a4, a5);
      sub_10000F4D4(a1, a2);
      goto LABEL_8;
    }

LABEL_5:
    sub_10000F46C(a1, a2);
    sub_10000F46C(a4, a5);
    sub_10000F4D4(a1, a2);
    sub_10000F4D4(a4, a5);
    return 0;
  }

  if (a5 >> 60 == 15)
  {
    goto LABEL_5;
  }

  sub_10000F46C(a1, a2);
  sub_10000F46C(a4, a5);
  v17 = sub_10000F1CC(a1, a2, a4, a5);
  sub_10000F4D4(a4, a5);
  sub_10000F4D4(a1, a2);
  if ((v17 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  if (a3)
  {
    return a6 && (sub_100202084(a3, a6) & 1) != 0;
  }

  return !a6;
}

uint64_t sub_10000F46C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000F480(a1, a2);
  }

  return a1;
}

uint64_t sub_10000F480(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000F4D4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000F4E8(a1, a2);
  }

  return a1;
}

uint64_t sub_10000F4E8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000F53C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_10000F574()
{
  result = qword_10035BA10;
  if (!qword_10035BA10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10035BA10);
  }

  return result;
}

uint64_t sub_10000F5C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_100355320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000F630(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_100355320);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000F6A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000F6E4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t getEnumTagSinglePayload for Question.QuestionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Question.QuestionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000F894()
{
  result = qword_100355338;
  if (!qword_100355338)
  {
    sub_100008CF0(&qword_100355340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100355338);
  }

  return result;
}

Swift::Int sub_10000F90C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10000F980()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

const char *sub_10000F9C4()
{
  if (*v0 >= 3u)
  {
    return "SwiftUI";
  }

  else
  {
    return "CoreTelephony";
  }
}

const char *sub_10000F9F4()
{
  v1 = "Bifrost";
  v2 = "EmperorPenguin";
  if (*v0 != 2)
  {
    v2 = "Solarium";
  }

  if (*v0)
  {
    v1 = "IML";
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

unint64_t sub_10000FA68()
{
  result = qword_100355348;
  if (!qword_100355348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100355348);
  }

  return result;
}

void sub_10000FB74()
{
  v1 = v0;
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381CC8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "BannerView::layoutSubviews", v5, 2u);
  }

  v8.receiver = v1;
  v8.super_class = type metadata accessor for BannerView();
  objc_msgSendSuper2(&v8, "layoutSubviews");
  v6 = [*&v1[qword_100355350] view];
  if (v6)
  {
    v7 = v6;
    [v1 bounds];
    [v7 setFrame:?];
  }
}

void sub_10000FD04(void *a1)
{
  v1 = a1;
  sub_10000FB74();
}

id sub_10000FD8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BannerView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10000FEB0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v37 = *(v5 - 8);
  v38 = v5;
  __chkstk_darwin(v5);
  v36 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v7);
  v8 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v8 - 8);
  *&v2[OBJC_IVAR____TtC8SOSBuddy15LockScreenAgent_statusChangeToken] = -1;
  v39 = v2;
  v9 = &v2[OBJC_IVAR____TtC8SOSBuddy15LockScreenAgent_stateChangeHandler];
  *v9 = a1;
  *(v9 + 1) = a2;
  v10 = objc_opt_self();
  v40 = a2;

  v11 = [v10 mainBundle];
  v12 = [v11 bundleIdentifier];

  if (v12)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v15 = 0x8000000100294A20;
    v13 = 0xD000000000000012;
  }

  sub_10000F574();
  v42[0] = v13;
  v42[1] = v15;

  v16._object = 0x8000000100294A40;
  v16._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v16);

  static DispatchQoS.unspecified.getter();
  v42[0] = &_swiftEmptyArrayStorage;
  sub_1000112A0(&unk_100355D50, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000040A8(&unk_10035BA20);
  sub_1000112E8(&unk_100355D60, &unk_10035BA20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v37 + 104))(v36, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v38);
  v17 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v18 = v39;
  *&v39[OBJC_IVAR____TtC8SOSBuddy15LockScreenAgent_queue] = v17;
  v19 = type metadata accessor for LockScreenAgent();
  v41.receiver = v18;
  v41.super_class = v19;
  v20 = objc_msgSendSuper2(&v41, "init");
  v21 = qword_100353A10;
  v22 = v20;
  if (v21 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_10000F53C(v23, qword_100381C80);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v42[0] = v27;
    *v26 = 136446210;
    v28 = v22;
    v29 = [v28 description];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33 = sub_10017C9E8(v30, v32, v42);

    *(v26 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v24, v25, "[%{public}s] init", v26, 0xCu);
    sub_100008964(v27);
  }

  else
  {
  }

  return v22;
}

id sub_100010378()
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F53C(v1, qword_100381C80);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    v7 = v2;
    v8 = [v7 description];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_10017C9E8(v9, v11, &v15);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] deinit", v5, 0xCu);
    sub_100008964(v6);
  }

  v13 = type metadata accessor for LockScreenAgent();
  v16.receiver = v2;
  v16.super_class = v13;
  return objc_msgSendSuper2(&v16, "dealloc");
}

BOOL sub_100010598()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v7 = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    if (qword_100353A80 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v8 = type metadata accessor for Logger();
  sub_10000F53C(v8, qword_100381DD0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "LockScreenAgent start", v11, 2u);
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = ObjectType;
  v13 = *&v1[OBJC_IVAR____TtC8SOSBuddy15LockScreenAgent_queue];
  aBlock[4] = sub_100010CFC;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100010A24;
  aBlock[3] = &unk_1003256D0;
  v14 = _Block_copy(aBlock);
  v15 = v1;

  v16 = String.utf8CString.getter();
  v17 = OBJC_IVAR____TtC8SOSBuddy15LockScreenAgent_statusChangeToken;
  swift_beginAccess();
  v18 = notify_register_dispatch((v16 + 32), &v15[v17], v13, v14);
  swift_endAccess();
  _Block_release(v14);

  if (v18)
  {
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock[0] = v22;
      *v21 = 136446210;
      *(v21 + 4) = sub_10017C9E8(0xD00000000000001FLL, 0x8000000100294A60, aBlock);
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed to subscribe to %{public}s", v21, 0xCu);
      sub_100008964(v22);
    }

    *&v15[v17] = -1;
  }

  else
  {
    sub_100010D1C(*&v15[v17]);
  }

  return v18 == 0;
}

uint64_t sub_100010980(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(result + OBJC_IVAR____TtC8SOSBuddy15LockScreenAgent_stateChangeHandler);
    v5 = result;

    swift_beginAccess();
    v4(*(a2 + 16) != 0);
  }

  return result;
}

uint64_t sub_100010A24(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_100010A78()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_100353A80 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v7 = type metadata accessor for Logger();
  sub_10000F53C(v7, qword_100381DD0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "LockScreenAgent stop", v10, 2u);
  }

  v11 = OBJC_IVAR____TtC8SOSBuddy15LockScreenAgent_statusChangeToken;
  swift_beginAccess();
  result = notify_cancel(*(v1 + v11));
  *(v1 + v11) = -1;
  return result;
}

uint64_t sub_100010CC4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100010D04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100010D1C(int a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  isa = v5[-1].isa;
  v25 = v5;
  __chkstk_darwin(v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100353A80 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000F53C(v8, qword_100381DD0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_10017C9E8(0xD00000000000001FLL, 0x8000000100294A60, aBlock);
    _os_log_impl(&_mh_execute_header, v9, v10, "LockScreenAgent %{public}s received", v11, 0xCu);
    sub_100008964(v12);
  }

  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  if (notify_get_state(a1, (v13 + 16)))
  {
    v25 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v25, v14, "Failed to retrieve lock state", v15, 2u);
    }

    v16 = v25;
  }

  else
  {
    sub_10000F574();
    v22 = static OS_dispatch_queue.main.getter();
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = v13;
    aBlock[4] = sub_100011298;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001D2438;
    aBlock[3] = &unk_100325770;
    v19 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_1000112A0(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000040A8(&unk_100355D70);
    v20 = v23;
    sub_1000112E8(&qword_10035BB50, &unk_100355D70);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v21 = v22;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);

    (*(v20 + 8))(v4, v2);
    (*(isa + 1))(v7, v25);
  }
}

uint64_t sub_100011220()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100011258()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000112A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000112E8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100008CF0(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::Int ConnectionAssistantDisplayState.Metrics.RenderingStyle.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

double static ConnectionAssistantDisplayState.Metrics.CoordinateOffset.zero.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 1;
  return result;
}

BOOL sub_100011454(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return _s8SOSBuddy31ConnectionAssistantDisplayStateC7MetricsV16CoordinateOffsetV23__derived_struct_equalsySbAG_AGtFZ_0(v5, v7);
}

double ConnectionAssistantDisplayState.Metrics.ConnectionRadius.Value.value(top:earthCenter:earthRadius:satelliteDimension:)(uint64_t a1, char a2, double a3, double a4, double a5, double a6)
{
  if (!a2)
  {
    a3 = *&a1 + a3;
    v6 = a6 * 0.5;
    return a4 - (v6 + a3);
  }

  if (a2 == 1)
  {
    v6 = (a4 - a5 - a3) * *&a1;
    return a4 - (v6 + a3);
  }

  return *&a1 * a5;
}

BOOL static ConnectionAssistantDisplayState.Metrics.ConnectionRadius.Value.__derived_enum_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    v4 = *&a1 == *&a3;
    if (a4 != 1)
    {
      v4 = 0;
    }

    v5 = a4 == 2 && *&a1 == *&a3;
    if (a2 == 1)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    return !a4 && *&a1 == *&a3;
  }
}

uint64_t sub_10001155C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      if (v4 == 1 && v2 == v3)
      {
        return 1;
      }
    }

    else if (v4 == 2 && v2 == v3)
    {
      return 1;
    }
  }

  else if (!*(a2 + 8) && v2 == v3)
  {
    return 1;
  }

  return 0;
}

void static ConnectionAssistantDisplayState.Metrics.ConnectionRadius.zero.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
}

BOOL sub_10001161C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s8SOSBuddy31ConnectionAssistantDisplayStateC7MetricsV0B6RadiusV23__derived_struct_equalsySbAG_AGtFZ_0(v5, v7);
}

__n128 ConnectionAssistantDisplayState.Metrics.coordinateOffset.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 40);
  result = *(v1 + 49);
  *(a1 + 41) = result;
  return result;
}

double ConnectionAssistantDisplayState.Metrics.connectionRadius.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  result = *(v1 + 104);
  *a1 = *(v1 + 72);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = result;
  return result;
}

double static ConnectionAssistantDisplayState.Metrics.zero.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  return result;
}

double static ConnectionAssistantDisplayState.Metrics.liveActivity.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 0xC04E000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = vdupq_n_s64(0xC053000000000000);
  *(a1 + 48) = 0xC053000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 72) = 0xC010000000000000;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0xC010000000000000;
  *(a1 + 96) = 0;
  result = 20.0;
  *(a1 + 104) = xmmword_100278410;
  return result;
}

BOOL sub_100011780(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v2;
  v12[6] = *(a1 + 96);
  v13 = *(a1 + 112);
  v3 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v3;
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v14[0] = v5;
  v14[1] = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v15 = *(a2 + 14);
  v14[5] = v9;
  v14[6] = v10;
  v14[4] = v8;
  return _s8SOSBuddy31ConnectionAssistantDisplayStateC7MetricsV23__derived_struct_equalsySbAE_AEtFZ_0(v12, v14);
}

double ConnectionAssistantDisplayState.EarthDiameter.Value.resolved(width:)(uint64_t a1, char a2, double a3)
{
  result = *&a1 * a3;
  if (a2)
  {
    return *&a1;
  }

  return result;
}

BOOL static ConnectionAssistantDisplayState.EarthDiameter.Value.__derived_enum_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v4 = *&a1 == *&a3;
  if ((a4 & 1) == 0)
  {
    v4 = 0;
  }

  v5 = *&a1 == *&a3;
  if (a4)
  {
    v5 = 0;
  }

  if (a2)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_10001188C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[5];
  v10[4] = a1[4];
  v11[0] = v2;
  *(v11 + 9) = *(a1 + 89);
  v3 = a1[1];
  v10[0] = *a1;
  v10[1] = v3;
  v4 = a1[3];
  v10[2] = a1[2];
  v10[3] = v4;
  v5 = a2[1];
  v12[0] = *a2;
  v12[1] = v5;
  v6 = a2[2];
  v7 = a2[3];
  *&v13[9] = *(a2 + 89);
  v8 = a2[5];
  v12[4] = a2[4];
  *v13 = v8;
  v12[2] = v6;
  v12[3] = v7;
  return _s8SOSBuddy31ConnectionAssistantDisplayStateC13EarthDiameterV23__derived_struct_equalsySbAE_AEtFZ_0(v10, v12) & 1;
}

uint64_t sub_1000118F8(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) != 0 && v2 == v3)
    {
      return 1;
    }
  }

  else if ((*(a2 + 8) & 1) == 0 && v2 == v3)
  {
    return 1;
  }

  return 0;
}

BOOL sub_10001197C(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[1] == a2[1];
  if (a1[2] != a2[2])
  {
    v2 = 0;
  }

  return a1[3] == a2[3] && v2;
}

uint64_t sub_1000119C0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    if (*(a2 + 32))
    {
      return vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))))) & 1;
    }
  }

  else if ((*(a2 + 32) & 1) == 0 && *a1 == *a2)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_100011A40(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    if (!*(a2 + 32) || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))))) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v3 = *(a2 + 32);
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  return 1;
}

Swift::Int ConnectionAssistantRendererEarthOutline.Error.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

BOOL ConnectionAssistantDisplayState.hasInProgressLocationAnimation.getter()
{
  v1 = sub_1000040A8(&qword_100354220);
  v2 = v1 - 8;
  __chkstk_darwin(v1);
  v4 = &v8 - v3;
  v5 = OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_hasCoordinateSpring;
  swift_beginAccess();
  sub_1000157C0(v0 + v5, v4);
  v6 = vabdd_f64(*&v4[*(v2 + 48)], *&v4[*(v2 + 44)]) > 0.005;
  sub_100008FA0(v4, &qword_100354220);
  return v6;
}

uint64_t sub_100011CB4()
{
  v1 = v0 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_noLocationLoop;
  swift_beginAccess();
  if (*(v1 + 32))
  {
    v2 = 1084227584;
  }

  else
  {
    v2 = 1106247680;
  }

  v33 = v2;
  v34[0] = 0;
  v3 = v0 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_conePulsingLoop;
  swift_beginAccess();
  if (*(v3 + 32))
  {
    v4 = 1084227584;
  }

  else
  {
    v4 = 1101004800;
  }

  v35 = v4;
  v36 = 0;
  v5 = v0 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_dotWaveLoop;
  swift_beginAccess();
  if (*(v5 + 32))
  {
    v6 = 1084227584;
  }

  else
  {
    v6 = 1101004800;
  }

  v37 = v6;
  v38 = 0;
  v7 = v0 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_satelliteWaveLoop;
  swift_beginAccess();
  if (*(v7 + 32))
  {
    v8 = 1084227584;
  }

  else
  {
    v8 = 1101004800;
  }

  v39 = v8;
  v40 = 0;
  sub_1000040A8(&qword_100355898);
  v9 = *(sub_1000040A8(&qword_100354220) - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100278420;
  v13 = v12 + v11;
  v14 = OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_offsetSpring;
  swift_beginAccess();
  sub_1000157C0(v0 + v14, v13);
  v15 = OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_targetRelativeAngleSpring;
  swift_beginAccess();
  sub_1000157C0(v0 + v15, v13 + v10);
  v16 = OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_targetRelativeAngleSnapSpring;
  swift_beginAccess();
  sub_1000157C0(v0 + v16, v13 + 2 * v10);
  v17 = OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_hasCoordinateSpring;
  swift_beginAccess();
  sub_1000157C0(v0 + v17, v13 + 3 * v10);
  v18 = OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_connectingSpring;
  swift_beginAccess();
  sub_1000157C0(v0 + v18, v13 + 4 * v10);
  v19 = OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_completeSpring;
  swift_beginAccess();
  sub_1000157C0(v0 + v19, v13 + 5 * v10);
  v20 = OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_inConnectionConeSpring;
  swift_beginAccess();
  sub_1000157C0(v0 + v20, v13 + 6 * v10);
  v21 = 7 * v10;
  v22 = OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_coneVisibleSpring;
  swift_beginAccess();
  sub_1000157C0(v0 + v22, v13 + v21);
  v23 = sub_100016394(v12);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  v25 = 0;
  v41 = v23;
  v42 = BYTE4(v23) & 1;
  v26 = 0.0;
LABEL_14:
  if (v25 <= 5)
  {
    v27 = 5;
  }

  else
  {
    v27 = v25;
  }

  v28 = -v27;
  v29 = &v34[8 * v25++];
  while (v28 + v25 != 1)
  {
    v30 = *(v29 - 1);
    if (*v29)
    {
      v32 = 1;
      return LODWORD(v30) | (v32 << 32);
    }

    v31 = *(v29 - 1);
    if (v26 < v30)
    {
      v26 = *(v29 - 1);
      if (v25 != 5)
      {
        goto LABEL_14;
      }

LABEL_26:
      if (v31 <= 0.0)
      {
        v30 = 0.0;
      }

      else
      {
        v30 = v31;
      }

      v32 = v31 <= 0.0;
      return LODWORD(v30) | (v32 << 32);
    }

    ++v25;
    v29 += 2;
    if (v25 == 6)
    {
      v31 = v26;
      goto LABEL_26;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000120BC(uint64_t a1)
{
  v2 = __chkstk_darwin(a1).n128_u64[0];
  v3 = v1;
  v5 = v4;
  v6 = *&v2;
  v8 = v7;
  v264 = v9;
  v10 = sub_1000040A8(&qword_100354220);
  __chkstk_darwin(v10);
  v12 = &v255 - v11;
  v13 = *(v8 + 152);
  v419 = *(v8 + 136);
  v420 = v13;
  v421 = *(v8 + 168);
  v422 = *(v8 + 184);
  v14 = *(v8 + 88);
  v418[0] = *(v8 + 72);
  v418[1] = v14;
  v15 = *(v8 + 120);
  v418[2] = *(v8 + 104);
  v418[3] = v15;
  v16 = v1 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_offsetSpring;
  v17 = *(v8 + 400);
  swift_beginAccess();
  *(v16 + v10[9]) = v17;
  sub_100014318();
  swift_endAccess();
  v20 = *(v8 + 448);
  if (v20 == 4)
  {
    v21 = v3 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_targetRelativeAngleSpring;
    swift_beginAccess();
    *(v21 + v10[9]) = 0;
    v22 = OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_targetRelativeAngleSnapSpring;
    swift_beginAccess();
    v23 = 0.0;
  }

  else
  {
    v18.i64[0] = *(v8 + 440);
    if (fabs(*v18.i64) > 1.57079633)
    {
      v19.i64[0] = 1.0;
      v24.f64[0] = NAN;
      v24.f64[1] = NAN;
      v323 = vnegq_f64(v24);
      v324 = vbslq_s8(v323, v19, v18);
      v325 = v18;
      v25 = v3 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_targetRelativeAngleSnapSpring;
      swift_beginAccess();
      v26 = v10[10];
      v27.i64[0] = *(v25 + v26);
      v28.i64[0] = 1.0;
      *&v29 = vbslq_s8(v323, v28, v27).u64[0];
      if (*v27.i64 == 0.0)
      {
        v29 = 0.0;
      }

      v18.i64[0] = v325.i64[0];
      if (*v324.i64 != v29)
      {
        *(v25 + v26) = -*v27.i64;
        *(v25 + v10[11]) = -*(v25 + v10[11]);
      }
    }

    v23 = sub_10024AC7C(*v18.i64, -0.785398163, 0.785398163, 1.57079633, 0.55) * 0.2;
    if (v20 == 3)
    {
      v30 = 0.0;
    }

    else
    {
      v30 = v23;
    }

    v31 = v3 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_targetRelativeAngleSpring;
    swift_beginAccess();
    *(v31 + v10[9]) = v30;
    v22 = OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_targetRelativeAngleSnapSpring;
    swift_beginAccess();
  }

  v301 = v10;
  *(v3 + v22 + v10[9]) = v23;
  v32 = v3 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_targetRelativeAngleSpring;
  swift_beginAccess();
  sub_100014318();
  swift_endAccess();
  v33 = v3 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_targetRelativeAngleSnapSpring;
  swift_beginAccess();
  sub_100014318();
  swift_endAccess();
  v34 = sub_1000144D0(v3, v8);
  v35 = *(v8 + 416);
  v255 = *(v8 + 424);
  v256 = v35;
  LODWORD(v281) = *(v8 + 432);
  if (LODWORD(v281) == 2 || v34)
  {
    v292.i32[0] = 0;
    v36 = 0.0;
LABEL_17:
    *&v285 = LODWORD(v281) != 2 && !v34;
    v39 = v3 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_hasCoordinateSpring;
    swift_beginAccess();
    v38 = v301;
    *(v39 + v301[9]) = v36;
    sub_100014318();
    swift_endAccess();
    goto LABEL_18;
  }

  if ((*(v8 + 408) & 1) == 0)
  {
    v36 = 1.0;
    v292.i32[0] = LODWORD(v281);
    goto LABEL_17;
  }

  v37 = v3 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_hasCoordinateSpring;
  *&v285 = 1;
  swift_beginAccess();
  v38 = v301;
  *(v37 + v301[9]) = 0x3FF0000000000000;
  *(v37 + v38[10]) = 0x3FF0000000000000;
  *(v37 + v38[11]) = 0;
  v292.i32[0] = LODWORD(v281);
LABEL_18:
  v40 = v3 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_hasCoordinateSpring;
  swift_beginAccess();
  sub_1000157C0(v40, v12);
  v41 = vabdd_f64(*&v12[v38[10]], *&v12[v38[9]]);
  sub_100008FA0(v12, &qword_100354220);
  if (v41 <= 0.005 && v41 <= 0.0005)
  {
    v42 = *(v40 + v38[9]) != 0.0;
    v43 = 1.0;
    v44 = v42;
    if (*(v8 + 449))
    {
      goto LABEL_27;
    }

LABEL_23:
    if (*(v8 + 450))
    {
      v43 = 1.0;
    }

    else
    {
      v43 = 0.0;
    }

    v44 = v42;
    goto LABEL_27;
  }

  v42 = 0;
  v44 = 0;
  v43 = 1.0;
  if ((*(v8 + 449) & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_27:
  v267 = v44;
  v45 = v3 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_connectingSpring;
  swift_beginAccess();
  *(v45 + v38[9]) = v43;
  if (v43 == 1.0 && (*(v8 + 408) & 1) != 0)
  {
    *(v45 + v38[10]) = 0x3FF0000000000000;
    *(v45 + v38[11]) = 0;
  }

  else
  {
    swift_beginAccess();
    sub_100014318();
    swift_endAccess();
  }

  v46 = 1.0;
  if (*(v8 + 450))
  {
    v47 = 1.0;
  }

  else
  {
    v47 = 0.0;
  }

  v48 = v3 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_completeSpring;
  swift_beginAccess();
  *(v48 + v38[9]) = v47;
  sub_100014318();
  swift_endAccess();
  v49 = v38[10];
  v50 = *(v45 + v49);
  v265 = *(v32 + v49);
  if (v20 | 4) != 4 || (*(v8 + 408))
  {
    v46 = 0.0;
  }

  v283 = v40;
  v51 = *(v40 + v49);
  v52 = v265 * -0.5 * v50;
  v266 = *(v33 + v49);
  *&v53 = v3 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_inConnectionConeSpring;
  swift_beginAccess();
  *(*&v53 + v38[9]) = v46;
  v274 = v53;
  sub_100014318();
  swift_endAccess();
  v54 = v285;
  v55 = ~v285;
  swift_beginAccess();
  sub_100161EA0((v54 & 1) == 0, v6);
  v57 = v56;
  swift_endAccess();
  v282 = v6;
  v299.i32[0] = v20;
  v275 = v5;
  if (v55)
  {
    *(v3 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_lastNoLocationValue) = v57;
    v60 = v57 * 360.0;
    v324.i64[0] = 0;
    if (v57 > 0.5)
    {
      v60 = v60 + -360.0;
    }
  }

  else
  {
    v58 = *(v3 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_lastNoLocationValue);
    if (v58 <= 0.5)
    {
      v59 = v58 * 360.0;
    }

    else
    {
      v59 = v58 * 360.0 + -360.0;
    }

    v324.i64[0] = 0;
    if (LODWORD(v281) == 2)
    {
      v60 = v59;
    }

    else
    {
      *v324.i64 = v256;
      v60 = v255;
    }
  }

  v302 = v52 * v51;
  v61 = sub_100014618(v8, v3, v292.i8[0] & 1);
  *&v62 = sub_100014884(v8);
  v263 = v62;
  v284 = v63;
  v298 = v60;
  v64 = sub_1000149F8(v418, v3, *v324.i64, v60, 0.0);
  v66 = v65;
  v67 = *v8;
  v68 = *(v8 + 8);
  v69 = *(v8 + 16);
  v70 = *(v8 + 24);
  v635.origin.x = *v8;
  v635.origin.y = v68;
  v635.size.width = v69;
  v635.size.height = v70;
  CGRectGetMidX(v635);
  v636.origin.x = v67;
  v636.origin.y = v68;
  v636.size.width = v69;
  v636.size.height = v70;
  MidY = CGRectGetMidY(v636);
  v269 = v66;
  sub_100014BAC(v3, &v357, v64, v66);
  v334 = v359;
  v335 = v360;
  v336 = v361;
  v332 = v357;
  v333 = v358;
  LODWORD(v323.f64[0]) = v362;
  v325.i32[0] = v363;
  v280 = v365;
  v277 = v367;
  v295 = v368;
  v296 = v364;
  v294 = v369;
  v278 = v370;
  LODWORD(v279) = v366;
  LODWORD(v293.f64[0]) = v371;
  *(v356 + 7) = *&v372[7];
  v356[0] = *v372;
  v321 = v374;
  v322 = v373;
  v291 = v375;
  v355 = v377;
  v354 = v376;
  v320 = v378;
  LODWORD(v319) = v379;
  v353 = v381;
  v352 = v380;
  v289 = v383;
  v290 = v382;
  v287 = v385;
  v288 = v384;
  v318.i32[0] = v386;
  v286 = v387;
  *(v351 + 6) = *&v388[6];
  v351[0] = *v388;
  v317.i32[0] = v389;
  v316.i32[0] = v390;
  v315.i32[0] = v391;
  v314 = v392;
  v313.i32[0] = v393;
  LODWORD(v312) = v394;
  v311.i32[0] = v395;
  v310.i32[0] = v396;
  LODWORD(v309) = v397;
  v308 = v398;
  v307.i32[0] = v399;
  v304 = v400;
  v306 = v401;
  v305 = v402;
  LODWORD(v303) = v403;
  v350[1] = v405;
  v350[0] = v404;
  v350[5] = v409;
  v350[4] = v408;
  v350[3] = v407;
  v350[2] = v406;
  *(&v350[8] + 14) = *(v412 + 14);
  v350[8] = v412[0];
  v350[7] = v411;
  v350[6] = v410;
  *&v300.f64[0] = _s8SOSBuddy25ConnectionAssistantCameraV8ViewportV4size5scaleAESo6CGSizeV_12CoreGraphics7CGFloatVtcfC_0(v69, v70, *(v8 + 64));
  MidX = v72;
  v268 = v73;
  v637.origin.x = v67;
  v637.origin.y = v68;
  v637.size.width = v69;
  v637.size.height = v70;
  Width = CGRectGetWidth(v637);
  v297 = v3;
  v273 = v8;
  v271 = v69;
  v272 = v68;
  v270 = v70;
  if (Width <= 0.0)
  {
    v78 = *&v284;
    v81 = v302;
    v80 = 0;
    v77 = 1.0;
  }

  else
  {
    v638.origin.x = v67;
    v638.origin.y = v68;
    v638.size.width = v69;
    v638.size.height = v70;
    v75 = v61 / CGRectGetWidth(v638);
    v639.origin.x = v67;
    v639.origin.y = v68;
    v639.size.width = v69;
    v639.size.height = v70;
    v76 = CGRectGetWidth(v639);
    v77 = v75;
    v78 = *&v284;
    *&v79.f64[0] = v263;
    *&v79.f64[1] = v284;
    v80 = vcvt_f32_f64(vdivq_f64(v79, vdupq_lane_s64(COERCE__INT64(v75 * v76), 0)));
    v81 = v302;
  }

  v82 = v64;
  v83 = v67;
  if (v64 >= -90.0)
  {
    v84 = 0.0;
  }

  else
  {
    v84 = 3.1416;
  }

  v302 = v61 * 0.5;
  *&v284 = v78 + MidY;
  v582[2] = v359;
  v582[3] = v360;
  v582[1] = v358;
  v582[0] = v357;
  v626 = v404;
  v627 = v405;
  v630 = v408;
  v631 = v409;
  v628 = v406;
  v629 = v407;
  *(v634 + 14) = *(v412 + 14);
  v633 = v411;
  v634[0] = v412[0];
  v632 = v410;
  v583 = v361;
  v584 = LODWORD(v323.f64[0]);
  v585 = v325.i32[0];
  v586 = v296;
  v85 = v280;
  v587 = v280;
  v87 = v278;
  v86 = LODWORD(v279);
  v588 = LODWORD(v279);
  v88 = v277;
  v589 = v277;
  v590 = v295;
  v591 = v294;
  v592 = v278;
  v593 = LOBYTE(v293.f64[0]);
  *v594 = *v372;
  *&v594[7] = *&v372[7];
  v595 = v322;
  v596 = v321;
  v89 = v291;
  v597 = v291;
  v598 = v376;
  v599 = v377;
  v600 = v320;
  v601 = LODWORD(v319);
  v602 = v380;
  v603 = v381;
  v90 = v289;
  v91 = v290;
  v604 = v290;
  v605 = v289;
  v92 = v287;
  v93 = v288;
  v606 = v288;
  v607 = v287;
  v608 = v318.i8[0];
  v94 = v286;
  v609 = v286;
  *v610 = *v388;
  *&v610[6] = *&v388[6];
  v611 = v317.i32[0];
  v612 = v316.i32[0];
  v613 = v315.i32[0];
  v614 = v314;
  v615 = v313.i32[0];
  v616 = v312;
  v617 = v311.i32[0];
  v618 = v310.i32[0];
  v619 = v309;
  v620 = v308;
  v621 = v307.i32[0];
  v622 = v304;
  v623 = v306;
  v624 = v305;
  v95 = v77;
  v625 = LOBYTE(v303);
  sub_100093528(v582, *&v300.f64[0], *&MidX, v338, v82, v269, v95, v80, v84 + v81, v268);
  memcpy(v337, v338, sizeof(v337));
  v96 = v273;
  v261 = *(v273 + 192);
  v260 = *(v273 + 200);
  v640.origin.x = v83;
  v98 = v271;
  v97 = v272;
  v640.origin.y = v272;
  v640.size.width = v271;
  v99 = v270;
  v640.size.height = v270;
  v259 = CGRectGetWidth(v640);
  v641.origin.x = v83;
  v641.origin.y = v97;
  v641.size.width = v98;
  v641.size.height = v99;
  MidX = CGRectGetMidX(v641);
  v642.origin.x = v83;
  v642.origin.y = v97;
  v642.size.width = v98;
  v642.size.height = v99;
  v269 = CGRectGetMidY(v642);
  v528 = v359;
  v529 = v360;
  v530 = v361;
  v527 = v358;
  v526 = v357;
  v531 = LODWORD(v323.f64[0]);
  v532 = v325.i32[0];
  v533 = v296;
  v534 = v85;
  v535 = v86;
  v536 = v88;
  v537 = v295;
  v538 = v294;
  v539 = v87;
  v540 = LOBYTE(v293.f64[0]);
  *v541 = *v372;
  *&v541[7] = *&v372[7];
  v542 = v322;
  v543 = v321;
  v544 = v89;
  v545 = v376;
  v546 = v377;
  v547 = v320;
  v548 = LODWORD(v319);
  v549 = v380;
  v550 = v381;
  v551 = v91;
  v552 = v90;
  v553 = v93;
  v554 = v92;
  v555 = v318.i8[0];
  v556 = v94;
  *v557 = *v388;
  *&v557[6] = *&v388[6];
  v558 = v317.i32[0];
  v559 = v316.i32[0];
  v560 = v315.i32[0];
  v561 = v314;
  v562 = v313.i32[0];
  v563 = v312;
  v564 = v311.i32[0];
  v565 = v310.i32[0];
  v566 = v309;
  v567 = v308;
  v568 = v307.i32[0];
  v569 = v304;
  v570 = v306;
  v571 = v305;
  v572 = LOBYTE(v303);
  v573 = v350[0];
  v574 = v350[1];
  v577 = v350[4];
  v578 = v350[5];
  v575 = v350[2];
  v576 = v350[3];
  v100 = v350[6];
  *(v581 + 14) = *(&v350[8] + 14);
  v580 = v350[7];
  v581[0] = v350[8];
  v579 = v350[6];
  LODWORD(v100.f64[0]) = HIDWORD(v361);
  v300 = v100;
  *v101.i64 = ConnectionAssistantEarth.direction(for:)(*v324.i64, v298);
  v102 = vmuls_lane_f32(*v300.f64, v101, 2);
  v101.i64[0] = vsubq_f32(v526, vmulq_n_f32(v101, *v300.f64)).u64[0];
  v101.f32[2] = v526.f32[2] - v102;
  v101.i32[3] = 0;
  ConnectionAssistantCamera.projectToViewport(point:)(v101);
  v104 = v103;
  v106 = v105;
  v108 = v107;
  v109 = v301;
  v110 = *(v283 + v301[10]);
  v643.origin.x = v83;
  v643.origin.y = v97;
  v643.size.width = v98;
  v643.size.height = v99;
  v111 = CGRectGetMinY(v643) + *(v96 + 32);
  v112 = *(&v421 + 1);
  if (v421)
  {
    v113 = v282;
    v114 = v299.i32[0];
    v115 = v285;
    if (v421 == 1)
    {
      v116 = *&v284 - (v111 + (*&v284 - v302 - v111) * *(&v420 + 1));
    }

    else
    {
      v116 = v302 * *(&v420 + 1);
    }
  }

  else
  {
    v116 = *&v284 - (v111 + *(&v420 + 1) + *(&v421 + 1) * 0.5);
    v113 = v282;
    v114 = v299.i32[0];
    v115 = v285;
  }

  v117 = v297;
  v118 = v274;
  v268 = v104;
  *&v263 = v110;
  v262 = v106;
  v258 = v108;
  if (v420)
  {
    if (v420 == 1)
    {
      v119 = *&v284 - (v111 + *(&v419 + 1) * (*&v284 - v302 - v111));
    }

    else
    {
      v119 = v302 * *(&v419 + 1);
    }
  }

  else
  {
    v119 = *&v284 - (v111 + *(&v419 + 1) + *(&v421 + 1) * 0.5);
  }

  v274 = v119;
  v272 = *(*&v118 + v109[10]);
  v120 = v297 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_locationDotLoop;
  swift_beginAccess();
  v121 = sub_100161F44(v115 & 1, v113);
  swift_endAccess();
  v122 = *(v120 + 24);
  LOBYTE(v120) = *(v120 + 32);
  *&v123 = v117 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_dotWaveLoop;
  swift_beginAccess();
  *(*&v123 + 40) = v122;
  v271 = v123;
  *(*&v123 + 48) = v120;
  v124 = v117 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_satelliteWaveLoop;
  result = swift_beginAccess();
  *(v124 + 40) = v122;
  *(v124 + 48) = v120;
  v127 = *(v283 + v109[10]);
  if (v292.i8[0])
  {
    v285 = 0u;
    v128 = 0.0;
  }

  else
  {
    v128 = v127;
    v285 = 0u;
  }

  LODWORD(v126.f64[0]) = LODWORD(v300.f64[0]);
  if (v115)
  {
    *&v473[75] = v334;
    *&v473[91] = v335;
    v474 = v336;
    *&v473[59] = v333;
    *&v473[43] = v332;
    v475 = LODWORD(v323.f64[0]);
    v476 = v325.i32[0];
    v477 = v296;
    v478 = v280;
    v479 = LODWORD(v279);
    v480 = v277;
    v481 = v295;
    v482 = v294;
    v483 = v278;
    v484 = LOBYTE(v293.f64[0]);
    *v485 = v356[0];
    *&v485[7] = *(v356 + 7);
    v486 = v322;
    v487 = v321;
    v488 = v291;
    v489 = v354;
    v490 = v355;
    v491 = v320;
    v492 = LODWORD(v319);
    v493 = v352;
    v494 = v353;
    v495 = v290;
    v496 = v289;
    v497 = v288;
    v498 = v287;
    v499 = v318.i8[0];
    v500 = v286;
    *v501 = v351[0];
    *&v501[6] = *(v351 + 6);
    v502 = v317.i32[0];
    v503 = v316.i32[0];
    v504 = v315.i32[0];
    v505 = v314;
    v506 = v313.i32[0];
    v507 = v312;
    v508 = v311.i32[0];
    v509 = v310.i32[0];
    v510 = v309;
    v511 = v308;
    v512 = v307.i32[0];
    v513 = v304;
    v514 = v306;
    v515 = v305;
    v516 = LOBYTE(v303);
    v517 = v350[0];
    v518 = v350[1];
    v521 = v350[4];
    v522 = v350[5];
    v519 = v350[2];
    v520 = v350[3];
    v129 = v350[8];
    *(v525 + 14) = *(&v350[8] + 14);
    v524 = v350[7];
    v525[0] = v350[8];
    v523 = v350[6];
    if (LODWORD(v281) == 2)
    {
      __break(1u);
      return result;
    }

    LODWORD(v129.f64[0]) = HIDWORD(v474);
    v293 = v129;
    *v130.i64 = ConnectionAssistantEarth.direction(for:)(v256, v255);
    *&v131 = vmulq_n_f32(vsubq_f32(0, v130), *v293.f64).u64[0];
    v126 = v293;
    *(&v131 + 1) = COERCE_UNSIGNED_INT(*v293.f64 * (0.0 - v130.f32[2]));
    v285 = v131;
  }

  v293 = v126;
  v283 = v124;
  v132 = v127;
  __asm { FMOV            V2.2S, #11.0 }

  _D2.f32[0] = ((v121 * 0.1875) + 0.8125) * 8.0;
  v138 = vmul_n_f32(_D2, v132);
  v139 = *(v96 + 352);
  v140 = *(v96 + 360);
  v141 = *(v96 + 368);
  v330 = *(v96 + 369);
  v296 = *(v96 + 384);
  if (qword_100353950 != -1)
  {
    swift_once();
  }

  v295 = xmmword_100381B00;
  __asm { FMOV            V1.2S, #10.0 }

  v143 = vrnda_f32(vmul_f32(v138, _D1));
  v144 = roundf(v128 * 1000.0);
  v329 = 0;
  v145 = 0.0;
  v270 = v111;
  if (v139)
  {
    v146 = v292.i8[0] ^ 1;
    if (v115)
    {
      if (v114 == 3)
      {
        v145 = 0.0;
      }

      else
      {
        v145 = 1.0;
      }
    }
  }

  else
  {
    v146 = 0;
  }

  v147 = vdiv_f32(v143, _D1);
  v148 = v117 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_coneVisibleSpring;
  *&v294 = v144 / 1000.0;
  swift_beginAccess();
  v149 = v301;
  *(v148 + v301[9]) = v145;
  sub_10001652C(v96, v423);
  sub_100014318();
  swift_endAccess();
  v279 = *(v148 + v149[10]);
  v281 = v422;
  swift_beginAccess();
  v280 = sub_100161F44(v146 & v141 & 1, v113);
  swift_endAccess();
  v150 = 0.0;
  if (v146)
  {
    v150 = *(v148 + v149[10]);
  }

  v423[2] = v334;
  v423[3] = v335;
  v424 = v336;
  v423[1] = v333;
  v423[0] = v332;
  v425 = LODWORD(v323.f64[0]);
  v426 = v325.i32[0];
  v427 = v285;
  v428 = v147;
  v429 = v296;
  v430 = v295;
  v431 = v294;
  v432 = 0;
  *v433 = v356[0];
  *&v433[7] = *(v356 + 7);
  v434 = v322;
  v435 = v321;
  v436 = v291;
  v437 = v354;
  v438 = v355;
  v439 = v320;
  v440 = LODWORD(v319);
  v441 = v352;
  v442 = v353;
  v443 = v290;
  v444 = v289;
  v445 = v288;
  v446 = v287;
  v447 = v318.i8[0];
  v448 = v286;
  *v449 = v351[0];
  *&v449[6] = *(v351 + 6);
  v450 = v317.i32[0];
  v451 = v316.i32[0];
  v452 = v315.i32[0];
  v453 = v314;
  v454 = v313.i32[0];
  v455 = v312;
  v456 = v311.i32[0];
  v457 = v310.i32[0];
  v458 = v309;
  v459 = v308;
  v460 = v307.i32[0];
  v461 = v304;
  v462 = v306;
  v463 = v305;
  v464 = LOBYTE(v303);
  v465 = v350[0];
  v466 = v350[1];
  v469 = v350[4];
  v470 = v350[5];
  v467 = v350[2];
  v468 = v350[3];
  v151 = v350[6];
  *&v473[14] = *(&v350[8] + 14);
  v472 = v350[7];
  *v473 = v350[8];
  v471 = v350[6];
  LODWORD(v151.f64[0]) = HIDWORD(v336);
  v323 = v151;
  *v152.i64 = ConnectionAssistantEarth.direction(for:)(*v324.i64, v298);
  v153 = 0.0 - v152.f32[2];
  v154 = vmulq_n_f32(vsubq_f32(0, v152), *v323.f64);
  v154.f32[2] = *v323.f64 * v153;
  v155 = vmulq_f32(v154, v154);
  *&v156 = v155.f32[2] + vaddv_f32(*v155.f32);
  *v155.f32 = vrsqrte_f32(v156);
  *v155.f32 = vmul_f32(*v155.f32, vrsqrts_f32(v156, vmul_f32(*v155.f32, *v155.f32)));
  v157 = vmulq_n_f32(v154, vmul_f32(*v155.f32, vrsqrts_f32(v156, vmul_f32(*v155.f32, *v155.f32))).f32[0]);
  v154.i32[3] = 0;
  v322 = v154;
  v323 = v157;
  *v158.i64 = sub_1001D0E24(v157, 1.5708, v157);
  v317 = v158;
  v348[0] = 0;
  v339.f64[0] = 0.0;
  *&v413[0] = 0;
  v349[0] = 0;
  [v140 getRed:v348 green:&v339 blue:v413 alpha:v349];
  sub_1000168C4(v96);
  v159.i64[0] = v348[0];
  v316 = v159;
  v159.i64[0] = *&v339.f64[0];
  v313 = v159;
  v159.i64[0] = *&v413[0];
  v318 = v159;
  v159.i64[0] = v349[0];
  v315 = v159;
  v314 = v330;
  v160 = v146 & v330;
  swift_beginAccess();
  sub_100161EA0(v160 & 1, v113);
  v162 = v161;
  swift_endAccess();
  v163 = fabsf(sqrtf(v162));
  if (v162 == -INFINITY)
  {
    v164 = INFINITY;
  }

  else
  {
    v164 = v163;
  }

  v319 = 0.4;
  v165 = [v140 colorWithAlphaComponent:{*&v255, *&v256}];
  v166 = sub_1001D0EFC(v165, v164);
  v321 = v167;

  v328 = 0;
  v327 = 0;
  v257 = v112;
  v292 = v147;
  if (v299.i32[0] != 4)
  {
    v170 = 1.0;
    if (v299.i32[0] == 2)
    {
      v169 = 1;
      v168 = 1;
      goto LABEL_88;
    }

    v169 = v299.i32[0] == 3;
    if ((v299.i32[0] | 2) == 3)
    {
      v168 = v299.i32[0] == 3;
      goto LABEL_88;
    }
  }

  v168 = 0;
  v169 = 1;
  v170 = 0.0;
LABEL_88:
  if (v260)
  {
    v171 = v261;
  }

  else
  {
    v171 = v261 * v259;
  }

  v172 = v297 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_arrowVisibleSpring;
  v173 = v297;
  swift_beginAccess();
  v174 = sub_1000040A8(&qword_100354228);
  *(v172 + *(v174 + 36)) = v170;
  sub_1000143F4();
  swift_endAccess();
  v175 = !v168;
  if (*(v172 + *(v174 + 40)) > 0.9)
  {
    v176 = v169;
  }

  else
  {
    v175 = 1;
    v176 = 1;
  }

  v177 = v173 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_arrowLeftTipVisibleSpring;
  v178 = 1.0;
  if (v175)
  {
    v179 = 0.0;
  }

  else
  {
    v179 = 1.0;
  }

  swift_beginAccess();
  *(v177 + *(v174 + 36)) = v179;
  if (v176)
  {
    v180 = 0.0;
  }

  else
  {
    v180 = 1.0;
  }

  v181 = v173 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_arrowRightTipVisibleSpring;
  swift_beginAccess();
  *(v181 + *(v174 + 36)) = v180;
  sub_1000143F4();
  swift_endAccess();
  swift_beginAccess();
  sub_1000143F4();
  swift_endAccess();
  v299.i32[0] -= 3;
  if (v299.i32[0])
  {
    v182 = 0.0;
  }

  else
  {
    v182 = 1.0;
  }

  *&v320 = LODWORD(v166);
  *v183.i64 = sub_100016564(v323, v317);
  v184 = v265 * 0.7;
  sub_100016890(v183, v184 / 6.2832);
  v186 = vmulq_f32(v185, xmmword_100278430);
  v187 = vnegq_f32(v186);
  v188 = vtrn2q_s32(v186, vtrn1q_s32(v186, v187));
  v189 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v186, v187, 8uLL), *&v323.f64[0], 1), vextq_s8(v188, v188, 8uLL), *v323.f64);
  v190 = vrev64q_s32(v186);
  v190.i32[0] = v187.i32[1];
  v190.i32[3] = v187.i32[2];
  v191 = vmlaq_laneq_f32(v189, v190, v323, 2);
  v192 = vnegq_f32(v191);
  v193 = vtrn2q_s32(v191, vtrn1q_s32(v191, v192));
  v194 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v191, v192, 8uLL), *v185.f32, 1), vextq_s8(v193, v193, 8uLL), v185.f32[0]);
  v195 = vrev64q_s32(v191);
  v195.i32[0] = HIDWORD(v192.f64[0]);
  v195.i32[3] = LODWORD(v192.f64[1]);
  v196 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v191, v185, 3), v195, v185, 2), v194);
  v197 = v116 + v272 * (v274 - v116);
  *v192.f64 = v197 / v302;
  v195.i64[1] = *&v300.f64[1];
  v198 = *v300.f64 * *v192.f64;
  v195.i32[1] = HIDWORD(v279);
  v195.f32[0] = v279;
  v195.f32[0] = ((*v300.f64 * *v192.f64) - *v293.f64) * v195.f32[0];
  v323 = v195;
  *&v192.f64[0] = vmulq_n_f32(v196, v195.f32[0]).u64[0];
  *&v192.f64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(v195.f32[0], v196, 2));
  v317 = v192;
  v196.i64[0] = v316.i64[0];
  v196.i64[1] = v313.i64[0];
  *&v192.f64[0] = v318.i64[0];
  *&v192.f64[1] = v315.i64[0];
  v315 = vcvt_hight_f32_f64(vcvt_f32_f64(v196), v192);
  v316.f32[0] = v280 * v150;
  v196.f32[0] = v281;
  v199 = tanf((v196.f32[0] * 0.7) * 0.5);
  *v300.f64 = *v323.f64 * v199;
  v200 = v262;
  v201 = fabs(sqrt(*&v263));
  if (*&v263 == -INFINITY)
  {
    v201 = INFINITY;
  }

  if (v258)
  {
    v200 = v269 + v171 * 0.5;
  }

  v323.f64[0] = round((v269 + v171 * 0.5 + v201 * (v200 - (v269 + v171 * 0.5))) * 100.0) / 100.0;
  v202 = v268;
  if (v258)
  {
    v202 = MidX;
  }

  *v318.i64 = round((MidX + v201 * (v202 - MidX)) * 100.0) / 100.0;
  v203 = v173 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_arrowTurnAroundSpring;
  swift_beginAccess();
  *(v203 + *(v174 + 36)) = v182;
  sub_1000143F4();
  swift_endAccess();
  v204 = v257;
  *v205.i64 = v257 / v197;
  v205.f32[0] = v257 / v197;
  v205.f32[0] = v205.f32[0] * 1.5;
  v311 = v205;
  v206 = *(v174 + 40);
  v205.i32[1] = HIDWORD(v266);
  v205.f32[0] = v266;
  LODWORD(v301) = v205.i32[0];
  v205.f32[0] = fabsf(v205.f32[0]);
  v310 = v205;
  v205.i32[0] = *(v203 + v206);
  v313 = v205;
  LODWORD(v207) = *(v177 + v206);
  DWORD1(v207) = *(v181 + v206);
  v309 = v207;
  v208 = powf(v205.f32[0], 0.4);
  v308 = v198 + (v208 * ((v198 * 0.05) - v198));
  LODWORD(v209) = *(v172 + v206);
  v312 = v209;
  v210 = objc_opt_self();
  v211 = [v210 whiteColor];
  v348[0] = 0;
  v339.f64[0] = 0.0;
  *&v413[0] = 0;
  v331 = 0.0;
  [v211 getRed:v348 green:&v339 blue:v413 alpha:&v331];

  *&v212.f64[0] = v348[0];
  v213.f64[0] = *v413;
  v212.f64[1] = v339.f64[0];
  v213.f64[1] = v331;
  v307 = vcvt_hight_f32_f64(vcvt_f32_f64(v212), v213);
  v214 = *(v174 + 40);
  LODWORD(v213.f64[0]) = *(v203 + v214);
  v303 = (v198 - (v198 * 0.05)) * v208;
  v215 = *v213.f64 * 32.0;
  *&v306 = *(v177 + v214) * 10.0;
  v304 = *(v181 + v214) * 10.0;
  v305 = *(v172 + v214);
  v326 = 0;
  if (v299.i32[0] >= 2u)
  {
    v216 = 1.0;
  }

  else
  {
    v216 = 0.0;
  }

  v217 = v297;
  v218 = v297 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_satelliteVisibleSpring;
  swift_beginAccess();
  *(v218 + *(v174 + 36)) = v216;
  sub_1000143F4();
  swift_endAccess();
  v314 &= 1u;
  if (!v314)
  {
    v178 = 0.0;
  }

  v219 = v217 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_satelliteConeVisibleSpring;
  swift_beginAccess();
  *(v219 + *(v174 + 36)) = v178;
  sub_1000143F4();
  swift_endAccess();
  v221 = [v210 whiteColor];
  v348[0] = 0;
  v339.f64[0] = 0.0;
  *&v413[0] = 0;
  v331 = 0.0;
  [v221 getRed:v348 green:&v339 blue:v413 alpha:&v331];

  *&v222.f64[0] = v348[0];
  v223.f64[0] = *v413;
  v222.f64[1] = v339.f64[0];
  v223.f64[1] = v331;
  v299 = vcvt_hight_f32_f64(vcvt_f32_f64(v222), v223);
  v224 = *(v218 + *(v174 + 40)) * ((*(v219 + *(v174 + 40)) * 0.6) + 0.4);
  v225 = [v210 cyanColor];
  v226 = [v225 colorWithAlphaComponent:0.05];

  v227 = [v210 cyanColor];
  v228 = [v227 colorWithAlphaComponent:v319];

  v229 = v226;
  v230 = LODWORD(v300.f64[0]);
  sub_1001B6418(v229, v413, *v300.f64, *v324.i64, v298);

  v231 = v414;
  v232 = v415;
  v233 = v417;
  v234 = *(v218 + *(v174 + 40)) * *(v219 + *(v174 + 40));
  v235 = v416;
  swift_beginAccess();
  sub_100161EA0(v314, v282);
  v237 = v236;
  swift_endAccess();
  v238 = fabsf(sqrtf(v237));
  if (v237 == -INFINITY)
  {
    v238 = INFINITY;
  }

  v239 = sub_1001D0EFC(v228, v238);
  v324 = v240;

  LOBYTE(v331) = 0;
  *&v339.f64[0] = __PAIR64__(v301, LODWORD(v198));
  v220 = v204;
  *&v339.f64[1] = v220;
  v340 = v299;
  *v341.f64 = v224;
  v343 = v413[1];
  v342 = v413[0];
  v344.f64[0] = v231;
  v344.f64[1] = v232;
  *&v345.f64[0] = LODWORD(v234) | (v235 << 32);
  v345.f64[1] = v233;
  v346 = LODWORD(v239);
  *v347 = v324;
  *&v347[16] = 0;
  sub_1000168F4(&v339);
  *(&v350[6] + 11) = v345;
  *(&v350[7] + 11) = v346;
  *(&v350[8] + 11) = *v347;
  *(&v350[2] + 11) = v341;
  *(&v350[3] + 11) = v342;
  *(&v350[4] + 11) = v343;
  *(&v350[5] + 11) = v344;
  *(v350 + 11) = v339;
  *(&v350[9].f64[1] + 2) = *&v347[15];
  *(&v350[1] + 11) = v340;
  v241 = (*&v284 - v270) / v302;
  memcpy(&v348[1] + 5, v337, 0x180uLL);
  v242 = v335;
  v243 = v264;
  *(v264 + 32) = v334;
  *(v243 + 48) = v242;
  *(v243 + 64) = v336;
  v244 = v333;
  *v243 = v332;
  *(v243 + 16) = v244;
  LODWORD(v244) = v325.i32[0];
  *(v243 + 72) = v241;
  *(v243 + 76) = v244;
  *(v243 + 80) = v285;
  *(v243 + 96) = v292;
  v245 = v295;
  *(v243 + 112) = v296;
  *(v243 + 128) = v245;
  *(v243 + 144) = v294;
  *(v243 + 148) = 0;
  *(v243 + 156) = *(v356 + 7);
  *(v243 + 149) = v356[0];
  v246 = v317;
  *(v243 + 160) = v322;
  *(v243 + 176) = v246;
  *(v243 + 192) = v230;
  *(v243 + 196) = v354;
  *(v243 + 204) = v355;
  *(v243 + 208) = v315;
  *(v243 + 224) = v316.i32[0];
  *(v243 + 236) = v353;
  *(v243 + 228) = v352;
  *(v243 + 240) = v320;
  *(v243 + 248) = 0;
  *(v243 + 256) = v321;
  *(v243 + 272) = 0;
  *(v243 + 274) = v351[0];
  *(v243 + 280) = *(v351 + 6);
  *(v243 + 288) = 0x4180000040400000;
  *(v243 + 296) = v308;
  *(v243 + 300) = v303;
  *&v242 = vdup_lane_s32(*v310.f32, 0);
  *v246.f32 = vsub_f32(*&v242, vmul_n_f32(*&v309, v311.f32[0]));
  LODWORD(v242) = -1077342246;
  LODWORD(v242) = vadd_f32(*v246.f32, *&v242).u32[0];
  v247 = vdup_n_s32(0x3FC90FDAu);
  DWORD1(v242) = vsub_f32(v247, *&v246).i32[1];
  v246.f32[0] = -v246.f32[0];
  *(v243 + 304) = vadd_f32(vmul_n_f32(vmla_n_f32(*v246.f32, *&v242, v313.f32[0]), *&v312), v247);
  *(v243 + 312) = v215;
  *(v243 + 316) = v215;
  *(v243 + 320) = 1070141402;
  *(v243 + 324) = v306;
  *(v243 + 328) = v304;
  *(v243 + 336) = v307;
  *(v243 + 352) = v305;
  *(v243 + 356) = 0;
  v248 = v350[1];
  *(v243 + 357) = v350[0];
  *(v243 + 373) = v248;
  v249 = v350[2];
  v250 = v350[3];
  v251 = v350[5];
  *(v243 + 421) = v350[4];
  *(v243 + 437) = v251;
  *(v243 + 389) = v249;
  *(v243 + 405) = v250;
  v252 = v350[6];
  v253 = v350[7];
  v254 = v350[8];
  *(v243 + 499) = *(&v350[8] + 14);
  *(v243 + 469) = v253;
  *(v243 + 485) = v254;
  *(v243 + 453) = v252;
  result = memcpy((v243 + 515), v348, 0x18DuLL);
  *(v243 + 912) = v318.i64[0];
  *(v243 + 920) = v323.f64[0];
  *(v243 + 928) = v267;
  return result;
}

double sub_100014318()
{
  v1 = sub_1000040A8(&qword_100354220);
  v2 = *(v1 + 40);
  v3 = *(v0 + v2);
  v4 = *(v1 + 44);
  sub_100015A8C();
  Spring.value<A>(target:initialVelocity:time:)();
  *(v0 + v2) = v3 + v6;
  Spring.velocity<A>(target:initialVelocity:time:)();
  result = v6;
  *(v0 + v4) = v6;
  return result;
}

float sub_1000143F4()
{
  v1 = sub_1000040A8(&qword_100354228);
  v2 = *(v1 + 40);
  v3 = *(v0 + v2);
  v4 = *(v1 + 44);
  Spring.value<A>(target:initialVelocity:time:)();
  *(v0 + v2) = v3 + v6;
  Spring.velocity<A>(target:initialVelocity:time:)();
  result = v6;
  *(v0 + v4) = v6;
  return result;
}

BOOL sub_1000144D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_noLocationLoop;
  swift_beginAccess();
  if (*(v4 + 32))
  {
    return 0;
  }

  if (*(a2 + 432) == 2)
  {
    return 1;
  }

  v6 = *(a2 + 424);
  v7 = *(a1 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_lastNoLocationValue);
  v8 = 0.0;
  if (v7 > 0.5)
  {
    v8 = 360.0;
  }

  v9 = v7 * 360.0 - v8;
  v10 = (v9 - v6) * 0.0174532925;
  if (v10 < 0.0 || v10 >= 6.28318531)
  {
    v10 = v10 - floor(v10 / 6.28318531) * 6.28318531;
  }

  v11 = (v6 - v9) * 0.0174532925;
  if (v11 < 0.0 || v11 >= 6.28318531)
  {
    v11 = v11 - floor(v11 / 6.28318531) * 6.28318531;
  }

  v12 = v10 * 57.2957795;
  v13 = v11 * 57.2957795;
  if (v13 < v12)
  {
    v12 = v13;
  }

  return v12 >= 150.0;
}

double sub_100014618(uint64_t a1, uint64_t a2, char a3)
{
  Width = CGRectGetWidth(*a1);
  v7 = *(a1 + 192);
  v8 = *(a1 + 208);
  v9 = *(a1 + 216);
  v10 = *(a1 + 232);
  v11 = *(a1 + 240);
  v42 = *(a1 + 248);
  v43 = *(a1 + 200);
  v12 = *(a1 + 256);
  v41 = *(a1 + 264);
  v13 = *(a1 + 272);
  v14 = *(a1 + 280);
  v44 = *(a1 + 288);
  v45 = *(a1 + 224);
  v15 = a2 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_offsetSpring;
  v16 = *(a1 + 296);
  swift_beginAccess();
  v17 = sub_1000040A8(&qword_100354220);
  v18 = *(v15 + *(v17 + 40));
  v19 = a2 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_inConnectionConeSpring;
  swift_beginAccess();
  v20 = *(v19 + *(v17 + 40));
  v21 = a2 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_completeSpring;
  swift_beginAccess();
  v22 = *(v21 + *(v17 + 40));
  v23 = a2 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_connectingSpring;
  swift_beginAccess();
  v24 = *(v23 + *(v17 + 40));
  v25 = 0.0;
  if ((a3 & 1) == 0)
  {
    v26 = a2 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_hasCoordinateSpring;
    swift_beginAccess();
    v25 = *(v26 + *(v17 + 40));
  }

  v27 = Width * v7;
  if (v43)
  {
    v27 = v7;
  }

  v28 = Width * v12;
  if (v41)
  {
    v28 = v12;
  }

  v29 = Width * v11;
  if (v42)
  {
    v29 = v11;
  }

  v30 = v13;
  if ((v14 & 1) == 0)
  {
    v30 = Width * v13;
  }

  if (v16 == 255)
  {
    v31 = v14;
  }

  else
  {
    v31 = v16;
  }

  v32 = v44;
  if (v16 == 255)
  {
    v32 = v13;
  }

  v33 = v32;
  if ((v31 & 1) == 0)
  {
    v33 = Width * v32;
  }

  v34 = v30 + v18 * (v33 - v30);
  v35 = v29 + v20 * v20 * (v28 - v29);
  v36 = v8;
  if ((v9 & 1) == 0)
  {
    v36 = Width * v8;
  }

  if (v10 == 255)
  {
    v37 = v9;
  }

  else
  {
    v37 = v10;
  }

  v38 = v45;
  if (v10 == 255)
  {
    v38 = v8;
  }

  v39 = v38;
  if ((v37 & 1) == 0)
  {
    v39 = Width * v38;
  }

  return v27 + v25 * (v36 + v18 * (v39 - v36) + v24 * (v35 + v22 * (v34 - v35) - (v36 + v18 * (v39 - v36))) - v27);
}

double sub_100014884(CGRect *a1)
{
  swift_beginAccess();
  sub_1000040A8(&qword_100354220);
  swift_beginAccess();
  swift_beginAccess();
  CGRectGetMidY(*a1);
  return 0.0;
}

double sub_1000149F8(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = *(a1 + 48);
  v10 = *(a1 + 56);
  v12 = *(a1 + 64);
  if (*(a1 + 24))
  {
    v13 = 0.0;
  }

  else
  {
    v13 = *(a1 + 16);
  }

  v14 = a2 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_offsetSpring;
  swift_beginAccess();
  v15 = sub_1000040A8(&qword_100354220);
  v16 = *(v14 + *(v15 + 40));
  v17 = v7 + v16 * (v13 - v7);
  v18 = a2 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_inConnectionConeSpring;
  swift_beginAccess();
  v19 = v9 + *(v18 + *(v15 + 40)) * (v8 - v9);
  v20 = 0.0;
  if ((v12 & 1) == 0)
  {
    v20 = v10;
  }

  v21 = v11 + v16 * (v20 - v11);
  v22 = a2 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_completeSpring;
  swift_beginAccess();
  v23 = v19 + *(v22 + *(v15 + 40)) * (v21 - v19);
  v24 = a2 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_connectingSpring;
  swift_beginAccess();
  v25 = v17 + *(v24 + *(v15 + 40)) * (v23 - v17) + a3;
  v26 = a2 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_hasCoordinateSpring;
  swift_beginAccess();
  return a5 + *(v26 + *(v15 + 40)) * (v25 - a5);
}

void *sub_100014BAC@<X0>(uint64_t a1@<X0>, void *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v7 = a1 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_hasCoordinateSpring;
  swift_beginAccess();
  v8 = *(v7 + *(sub_1000040A8(&qword_100354220) + 40));
  v9 = v8 * 0.7854;
  v10 = a3;
  v11 = (v10 * -3.1416) / 180.0;
  v12 = -90.0 - a4;
  v13 = (v12 * 3.1416) / 180.0;
  v14 = __sincosf_stret(v11 + 0.0);
  v15 = __sincosf_stret(v13 + 0.0);
  v16.f32[0] = v14.__cosval * v15.__cosval;
  v16.f32[1] = v14.__cosval * v15.__sinval;
  v16.i64[1] = LODWORD(v14.__sinval);
  v18 = v16;
  __sincosf_stret(v11 + 1.1781);
  __sincosf_stret(v13 + 3.1416);
  __sincosf_stret(v11 + v9);
  sub_1000E4134(__src, v13 + 0.0, v18);
  return memcpy(a2, __src, 0x203uLL);
}

uint64_t ConnectionAssistantDisplayState.deinit()
{
  sub_100008FA0(v0 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_offsetSpring, &qword_100354220);
  sub_100008FA0(v0 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_targetRelativeAngleSpring, &qword_100354220);
  sub_100008FA0(v0 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_targetRelativeAngleSnapSpring, &qword_100354220);
  sub_100008FA0(v0 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_hasCoordinateSpring, &qword_100354220);
  sub_100008FA0(v0 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_connectingSpring, &qword_100354220);
  sub_100008FA0(v0 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_completeSpring, &qword_100354220);
  sub_100008FA0(v0 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_inConnectionConeSpring, &qword_100354220);
  sub_100008FA0(v0 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_coneVisibleSpring, &qword_100354220);
  sub_100008FA0(v0 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_arrowVisibleSpring, &qword_100354228);
  sub_100008FA0(v0 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_arrowLeftTipVisibleSpring, &qword_100354228);
  sub_100008FA0(v0 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_arrowRightTipVisibleSpring, &qword_100354228);
  sub_100008FA0(v0 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_arrowTurnAroundSpring, &qword_100354228);
  sub_100008FA0(v0 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_satelliteVisibleSpring, &qword_100354228);
  sub_100008FA0(v0 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_satelliteConeVisibleSpring, &qword_100354228);
  return v0;
}

uint64_t ConnectionAssistantDisplayState.__deallocating_deinit()
{
  ConnectionAssistantDisplayState.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_100014F5C()
{
  v1 = v0 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_offsetSpring;
  v2 = sub_1000040A8(&qword_100354220);
  *(v1 + v2[9]) = 0;
  *(v1 + v2[10]) = 0;
  *(v1 + v2[11]) = 0;
  Spring.init(response:dampingRatio:)();
  v3 = v0 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_targetRelativeAngleSpring;
  *(v3 + v2[9]) = 0;
  *(v3 + v2[10]) = 0;
  *(v3 + v2[11]) = 0;
  Spring.init(response:dampingRatio:)();
  v4 = v0 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_targetRelativeAngleSnapSpring;
  *(v4 + v2[9]) = 0;
  *(v4 + v2[10]) = 0;
  *(v4 + v2[11]) = 0;
  Spring.init(response:dampingRatio:)();
  v5 = v0 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_hasCoordinateSpring;
  *(v5 + v2[9]) = 0;
  *(v5 + v2[10]) = 0;
  *(v5 + v2[11]) = 0;
  Spring.init(response:dampingRatio:)();
  v6 = v0 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_connectingSpring;
  *(v6 + v2[9]) = 0;
  *(v6 + v2[10]) = 0;
  *(v6 + v2[11]) = 0;
  Spring.init(response:dampingRatio:)();
  v7 = v0 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_completeSpring;
  *(v7 + v2[9]) = 0;
  *(v7 + v2[10]) = 0;
  *(v7 + v2[11]) = 0;
  Spring.init(response:dampingRatio:)();
  v8 = v0 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_inConnectionConeSpring;
  *(v8 + v2[9]) = 0;
  *(v8 + v2[10]) = 0;
  *(v8 + v2[11]) = 0;
  Spring.init(response:dampingRatio:)();
  v9 = v0 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_coneVisibleSpring;
  *(v9 + v2[9]) = 0;
  *(v9 + v2[10]) = 0;
  *(v9 + v2[11]) = 0;
  Spring.init(response:dampingRatio:)();
  v10 = v0 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_arrowVisibleSpring;
  v11 = sub_1000040A8(&qword_100354228);
  *(v10 + v11[9]) = 0;
  *(v10 + v11[10]) = 0;
  *(v10 + v11[11]) = 0;
  Spring.init(response:dampingRatio:)();
  v12 = v0 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_arrowLeftTipVisibleSpring;
  *(v12 + v11[9]) = 0;
  *(v12 + v11[10]) = 0;
  *(v12 + v11[11]) = 0;
  Spring.init(response:dampingRatio:)();
  v13 = v0 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_arrowRightTipVisibleSpring;
  *(v13 + v11[9]) = 0;
  *(v13 + v11[10]) = 0;
  *(v13 + v11[11]) = 0;
  Spring.init(response:dampingRatio:)();
  v14 = v0 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_arrowTurnAroundSpring;
  *(v14 + v11[9]) = 0;
  *(v14 + v11[10]) = 0;
  *(v14 + v11[11]) = 0;
  Spring.init(response:dampingRatio:)();
  v15 = v0 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_satelliteVisibleSpring;
  *(v15 + v11[9]) = 0;
  *(v15 + v11[10]) = 0;
  *(v15 + v11[11]) = 0;
  Spring.init(response:dampingRatio:)();
  v16 = v0 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_satelliteConeVisibleSpring;
  *(v16 + v11[9]) = 0;
  *(v16 + v11[10]) = 0;
  *(v16 + v11[11]) = 0;
  Spring.init(response:dampingRatio:)();
  v17 = v0 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_noLocationLoop;
  *v17 = 0;
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 8) = 0x404E000000000000;
  *(v17 + 32) = 1;
  *(v17 + 40) = 0;
  *(v17 + 48) = 1;
  *(v0 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_lastNoLocationValue) = 0;
  v18 = v0 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_conePulsingLoop;
  *v18 = 1065353216;
  *(v18 + 8) = 0x3FF0000000000000;
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = 1;
  *(v18 + 40) = 0;
  *(v18 + 48) = 1;
  v19 = v0 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_locationDotLoop;
  *v19 = 0;
  *(v19 + 8) = 0x4008000000000000;
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = 1;
  *(v19 + 40) = 0;
  *(v19 + 48) = 1;
  v20 = v0 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_dotWaveLoop;
  *v20 = 0;
  *(v20 + 8) = xmmword_100276030;
  *(v20 + 24) = 0;
  *(v20 + 32) = 1;
  *(v20 + 40) = 0;
  *(v20 + 48) = 1;
  v21 = v0 + OBJC_IVAR____TtC8SOSBuddy31ConnectionAssistantDisplayState_satelliteWaveLoop;
  *v21 = 0;
  *(v21 + 8) = xmmword_100276040;
  *(v21 + 24) = 0;
  *(v21 + 32) = 1;
  *(v21 + 40) = 0;
  *(v21 + 48) = 1;
  return v0;
}

uint64_t _s8SOSBuddy31ConnectionAssistantDisplayStateC13EarthDiameterV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(a2 + 8))
  {
    return 0;
  }

  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 24))
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(a2 + 24))
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = *(a1 + 40);
  v3 = *(a2 + 40);
  if (v2 == 255)
  {
    if (v3 != 255)
    {
      return 0;
    }

    goto LABEL_20;
  }

  if (v3 == 255)
  {
    return 0;
  }

  if (v2)
  {
    v4 = 0;
    if ((v3 & 1) == 0)
    {
      return v4;
    }
  }

  else
  {
    v4 = 0;
    if (v3)
    {
      return v4;
    }
  }

  if (*(a1 + 32) != *(a2 + 32))
  {
    return v4;
  }

LABEL_20:
  if (*(a1 + 56))
  {
    if ((*(a2 + 56) & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(a2 + 56))
  {
    return 0;
  }

  if (*(a1 + 48) == *(a2 + 48))
  {
    if (*(a1 + 72))
    {
      if ((*(a2 + 72) & 1) == 0)
      {
        return 0;
      }
    }

    else if (*(a2 + 72))
    {
      return 0;
    }

    if (*(a1 + 64) == *(a2 + 64))
    {
      if (*(a1 + 88))
      {
        if ((*(a2 + 88) & 1) == 0)
        {
          return 0;
        }
      }

      else if (*(a2 + 88))
      {
        return 0;
      }

      if (*(a1 + 80) == *(a2 + 80))
      {
        v5 = *(a1 + 104);
        v6 = *(a2 + 104);
        if (v5 == 255)
        {
          if (v6 == 255)
          {
            return 1;
          }
        }

        else if (v6 != 255)
        {
          if (v5)
          {
            if ((v6 & 1) == 0)
            {
              return 0;
            }
          }

          else if (v6)
          {
            return 0;
          }

          if (*(a1 + 96) == *(a2 + 96))
          {
            return 1;
          }
        }
      }
    }
  }

  return 0;
}

BOOL _s8SOSBuddy31ConnectionAssistantDisplayStateC7MetricsV0B6RadiusV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      if (v4 != 1 || v2 != v3)
      {
        return 0;
      }
    }

    else if (v4 != 2 || v2 != v3)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 8))
    {
      v7 = 0;
    }

    else
    {
      v7 = v2 == v3;
    }

    if (!v7)
    {
      return 0;
    }
  }

  v9 = *(a1 + 24);
  v10 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v9 == 1)
    {
      v9 = 0;
      if (v10 != 1)
      {
        return v9;
      }
    }

    else
    {
      v9 = 0;
      if (v10 != 2)
      {
        return v9;
      }
    }
  }

  else if (*(a2 + 24))
  {
    return v9;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return v9;
  }

  return *(a1 + 32) == *(a2 + 32);
}

BOOL _s8SOSBuddy31ConnectionAssistantDisplayStateC7MetricsV16CoordinateOffsetV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  v3 = *(a2 + 56);
  if ((*(a1 + 56) & 1) == 0)
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      v3 = 1;
    }

    return (v3 & 1) == 0;
  }

  return (*(a2 + 56) & 1) != 0;
}

BOOL _s8SOSBuddy31ConnectionAssistantDisplayStateC7MetricsV23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1))
  {
    return 0;
  }

  v2 = *(a1 + 40);
  v3 = *(a2 + 40);
  if (a1[24])
  {
    v4 = 0;
    if ((a2[24] & 1) == 0)
    {
      return v4;
    }

    if (*(a1 + 4) != *(a2 + 4))
    {
      return v4;
    }

    v5 = vmovn_s64(vceqq_f64(v2, v3));
    if ((v5.i8[0] & 1) == 0 || (v5.i8[4] & 1) == 0)
    {
      return v4;
    }
  }

  else
  {
    v4 = 0;
    v6.f64[0] = *(a1 + 2);
    v7.f64[0] = *(a2 + 2);
    v6.f64[1] = *(a1 + 4);
    v7.f64[1] = *(a2 + 4);
    if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v6, v7), vceqq_f64(v2, v3)))) & 1) == 0 || (a2[24])
    {
      return v4;
    }
  }

  if (a1[64])
  {
    if ((a2[64] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v4 = 0;
    if ((a2[64] & 1) != 0 || *(a1 + 7) != *(a2 + 7))
    {
      return v4;
    }
  }

  v4 = a1[80];
  v9 = a2[80];
  v10 = a2[96];
  if (a1[80])
  {
    if (v4 == 1)
    {
      v4 = 0;
      if (v9 != 1)
      {
        return v4;
      }
    }

    else
    {
      v4 = 0;
      if (v9 != 2)
      {
        return v4;
      }
    }
  }

  else if (a2[80])
  {
    return v4;
  }

  if (*(a1 + 9) == *(a2 + 9))
  {
    if (a1[96])
    {
      if (a1[96] == 1)
      {
        v4 = 0;
        if (v10 != 1)
        {
          return v4;
        }
      }

      else
      {
        v4 = 0;
        if (v10 != 2)
        {
          return v4;
        }
      }
    }

    else
    {
      v4 = 0;
      if (a2[96])
      {
        return v4;
      }
    }

    if (*(a1 + 11) == *(a2 + 11) && *(a1 + 13) == *(a2 + 13))
    {
      return *(a1 + 14) == *(a2 + 14);
    }
  }

  return v4;
}

uint64_t sub_1000157C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_100354220);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100015834()
{
  result = qword_1003554F8;
  if (!qword_1003554F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003554F8);
  }

  return result;
}

unint64_t sub_10001588C()
{
  result = qword_100355500;
  if (!qword_100355500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100355500);
  }

  return result;
}

uint64_t type metadata accessor for ConnectionAssistantDisplayState()
{
  result = qword_100355560;
  if (!qword_100355560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100015934()
{
  sub_100015A30();
  if (v0 <= 0x3F)
  {
    sub_100015AE0();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100015A30()
{
  if (!qword_100355570)
  {
    sub_100015A8C();
    v0 = type metadata accessor for Spring();
    if (!v1)
    {
      atomic_store(v0, &qword_100355570);
    }
  }
}

unint64_t sub_100015A8C()
{
  result = qword_100355578;
  if (!qword_100355578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100355578);
  }

  return result;
}

void sub_100015AE0()
{
  if (!qword_100355580)
  {
    v0 = type metadata accessor for Spring();
    if (!v1)
    {
      atomic_store(v0, &qword_100355580);
    }
  }
}

__n128 sub_100015B38(uint64_t a1, __int128 *a2)
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
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_100015B64(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[120])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100015BA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for QuestionnairePolicy.QuestionnaireScope(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for QuestionnairePolicy.QuestionnaireScope(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_100015D74(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100015D90(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 57))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100015DB0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = (a2 - 1);
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

  *(result + 57) = v3;
  return result;
}

__n128 sub_100015DFC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100015E10(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 40))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100015E58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ConnectionAssistantDisplayState.Metrics.ConnectionRadius.Value(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ConnectionAssistantDisplayState.Metrics.ConnectionRadius.Value(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ConnectionAssistantDisplayState.Metrics.ConnectionRadius.Value(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

__n128 sub_100015F74(uint64_t a1, __int128 *a2)
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

uint64_t sub_100015FA0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 105))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100015FE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConnectionAssistantDisplayState.Target(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ConnectionAssistantDisplayState.Target(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_100016124(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_10001616C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000161D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 929))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 928);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100016224(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 920) = 0;
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
    *(result + 904) = 0u;
    *(result + 928) = 0;
    *(result + 888) = 0u;
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
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 929) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 929) = 0;
    }

    if (a2)
    {
      *(result + 928) = a2 + 1;
    }
  }

  return result;
}

__n128 initializeWithCopy for ConnectionAssistantDisplayState.TopInset.RenderingStyle(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

unint64_t sub_100016394(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_100354220);
  __chkstk_darwin(v2);
  v5 = &v15 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v8 = *(v3 + 72);
    v9 = 0.0;
    while (1)
    {
      sub_1000157C0(v7, v5);
      v10 = vabdd_f64(*&v5[*(v2 + 40)], *&v5[*(v2 + 36)]);
      sub_100008FA0(v5, &qword_100354220);
      if (v10 > 0.005)
      {
        break;
      }

      if (v10 <= 0.0005)
      {
        v11 = 5.0;
      }

      else
      {
        v11 = 20.0;
      }

      if (v9 < v11)
      {
        v9 = v11;
      }

      v7 += v8;
      if (!--v6)
      {
        if (v9 <= 0.0)
        {
          break;
        }

        v12 = 0;
        v13 = LODWORD(v9);
        return v13 | (v12 << 32);
      }
    }
  }

  v13 = 0;
  v12 = 1;
  return v13 | (v12 << 32);
}

double sub_100016564(float32x4_t a1, float32x4_t a2)
{
  v2 = vmulq_f32(a1, a2);
  if ((v2.f32[2] + vaddv_f32(*v2.f32)) >= 0.0)
  {
    v34 = vaddq_f32(a1, a2);
    v35 = vmulq_f32(v34, v34);
    *&v36 = v35.f32[2] + vaddv_f32(*v35.f32);
    *v35.f32 = vrsqrte_f32(v36);
    *v35.f32 = vmul_f32(*v35.f32, vrsqrts_f32(v36, vmul_f32(*v35.f32, *v35.f32)));
    v37 = vmulq_n_f32(v34, vmul_f32(*v35.f32, vrsqrts_f32(v36, vmul_f32(*v35.f32, *v35.f32))).f32[0]);
    v38 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL), vnegq_f32(a1)), v37, vextq_s8(vuzp1q_s32(a1, a1), a1, 0xCuLL));
    v33 = vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL).u64[0];
  }

  else
  {
    v4 = vmulq_f32(a1, a1);
    v3 = vaddv_f32(*v4.f32);
    v4.i32[1] = 0;
    *&v5 = v4.f32[2] + v3;
    v6 = vrsqrte_f32(COERCE_UNSIGNED_INT(v4.f32[2] + v3));
    v7 = vmul_f32(v6, vrsqrts_f32(v5, vmul_f32(v6, v6)));
    v8 = vmulq_n_f32(a1, vmul_f32(v7, vrsqrts_f32(v5, vmul_f32(v7, v7))).f32[0]);
    v9 = vmulq_f32(a2, a2);
    *&v10 = v9.f32[2] + vaddv_f32(*v9.f32);
    *v9.f32 = vrsqrte_f32(v10);
    *v9.f32 = vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32)));
    v11 = vaddq_f32(v8, vmulq_n_f32(a2, vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32))).f32[0]));
    v12 = vmulq_f32(v11, v11);
    v13 = v12.f32[2] + vaddv_f32(*v12.f32);
    if (v13 <= 1.4211e-14)
    {
      v39 = vabsq_f32(a1);
      v40 = v39.f32[1];
      v41 = v39.f32[2];
      if (v39.f32[0] > v39.f32[1] || v39.f32[0] > v39.f32[2])
      {
        v42 = vextq_s8(vuzp1q_s32(a1, a1), a1, 0xCuLL);
        if (v40 <= v41)
        {
          v43 = vmulq_f32(a1, xmmword_100278460);
          v44 = xmmword_100278470;
        }

        else
        {
          v43 = vmulq_f32(a1, xmmword_100278480);
          v44 = xmmword_100278490;
        }
      }

      else
      {
        v42 = vextq_s8(vuzp1q_s32(a1, a1), a1, 0xCuLL);
        v43 = vmulq_f32(a1, xmmword_100278440);
        v44 = xmmword_100278450;
      }

      v45 = vmlaq_f32(v43, v44, v42);
      v46 = vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL);
      v47 = vmulq_f32(v45, v45);
      *&v48 = v47.f32[1] + (v47.f32[2] + v47.f32[0]);
      *v47.f32 = vrsqrte_f32(v48);
      *v47.f32 = vmul_f32(*v47.f32, vrsqrts_f32(v48, vmul_f32(*v47.f32, *v47.f32)));
      v33 = vmulq_n_f32(v46, vmul_f32(*v47.f32, vrsqrts_f32(v48, vmul_f32(*v47.f32, *v47.f32))).f32[0]).u64[0];
    }

    else
    {
      v14 = v13;
      v15 = vrsqrte_f32(LODWORD(v13));
      v16 = vmul_f32(v15, vrsqrts_f32(LODWORD(v14), vmul_f32(v15, v15)));
      v17 = vmulq_n_f32(v11, vmul_f32(v16, vrsqrts_f32(LODWORD(v14), vmul_f32(v16, v16))).f32[0]);
      v18 = vaddq_f32(a1, v17);
      v19 = vmulq_f32(v18, v18);
      *&v20 = v19.f32[2] + vaddv_f32(*v19.f32);
      *v19.f32 = vrsqrte_f32(v20);
      *v19.f32 = vmul_f32(*v19.f32, vrsqrts_f32(v20, vmul_f32(*v19.f32, *v19.f32)));
      v21 = vmulq_n_f32(v18, vmul_f32(*v19.f32, vrsqrts_f32(v20, vmul_f32(*v19.f32, *v19.f32))).f32[0]);
      v22 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL), vnegq_f32(a1)), v21, vextq_s8(vuzp1q_s32(a1, a1), a1, 0xCuLL));
      v23 = vmulq_f32(v21, a1);
      v24 = vaddq_f32(a2, v17);
      v25 = vmulq_f32(v24, v24);
      v4.f32[0] = v25.f32[2] + vaddv_f32(*v25.f32);
      *v25.f32 = vrsqrte_f32(*v4.f32);
      *v25.f32 = vmul_f32(*v25.f32, vrsqrts_f32(*v4.f32, vmul_f32(*v25.f32, *v25.f32)));
      v26 = vmulq_n_f32(v24, vmul_f32(*v25.f32, vrsqrts_f32(*v4.f32, vmul_f32(*v25.f32, *v25.f32))).f32[0]);
      v27 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), vnegq_f32(v17)), v26, vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL));
      v28 = vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL);
      v29 = vmulq_f32(v17, v26);
      v28.f32[3] = v29.f32[2] + vaddv_f32(*v29.f32);
      v30 = vnegq_f32(v28);
      v31 = vtrn2q_s32(v28, vtrn1q_s32(v28, v30));
      v32 = vrev64q_s32(v28);
      v32.i32[0] = v30.i32[1];
      v32.i32[3] = v30.i32[2];
      v33 = vaddq_f32(vmlaq_lane_f32(vmulq_n_f32(v28, v23.f32[2] + vaddv_f32(*v23.f32)), v32, *v22.f32, 1), vmlaq_laneq_f32(vmulq_n_f32(vextq_s8(v28, v30, 8uLL), v22.f32[0]), vextq_s8(v31, v31, 8uLL), v22, 2)).u64[0];
    }
  }

  return *&v33;
}

void sub_100016890(float32x4_t a1, float a2)
{
  v2 = vmulq_f32(a1, xmmword_1002784A0);
  v3 = vextq_s8(v2, v2, 8uLL);
  *v2.f32 = vadd_f32(*v2.f32, *v3.f32);
  v2.f32[0] = vaddv_f32(*v2.f32);
  v3.i64[0] = 0;
  sub_100016BC0(vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v2, v3)), 0), vnegq_f32(a1), a1), a2);
}

uint64_t sub_100016904(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 451))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 360);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001694C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 440) = 0;
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
    *(result + 450) = 0;
    *(result + 448) = 0;
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
      *(result + 451) = 1;
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
      *(result + 360) = (a2 - 1);
      return result;
    }

    *(result + 451) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnalyticsConversationId(uint64_t a1, unsigned int a2)
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
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for AnalyticsConversationId(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ConnectionAssistantDisplayState.TopInset.RenderingStyle(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t sub_100016AF8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100016B44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

void sub_100016BC0(float32x4_t a1, float a2)
{
  v4 = 1.0 - a2;
  v5 = vsubq_f32(xmmword_1002784A0, a1);
  v6 = vmulq_f32(v5, v5);
  v7 = vaddq_f32(a1, xmmword_1002784A0);
  v8 = vmulq_f32(v7, v7);
  v9 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v6.i8, *&vextq_s8(v6, v6, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v8.i8, *&vextq_s8(v8, v8, 8uLL)))));
  v10 = v9 + v9;
  if ((v9 + v9) != 0.0)
  {
    sinf(v10);
  }

  if ((v4 * v10) != 0.0)
  {
    sinf(v4 * v10);
  }

  v11 = v10 * a2;
  if (v11 != 0.0)
  {
    sinf(v11);
  }
}

id sub_100016D44()
{
  v1 = OBJC_IVAR____TtC8SOSBuddy14TimeZoneSource_timeZoneDidChange;
  sub_1000040A8(&qword_1003558E0);
  swift_allocObject();
  *&v0[v1] = PassthroughSubject.init()();
  *&v0[OBJC_IVAR____TtC8SOSBuddy14TimeZoneSource__observers] = &_swiftEmptyArrayStorage;
  v18.receiver = v0;
  v18.super_class = type metadata accessor for TimeZoneSource();
  v2 = objc_msgSendSuper2(&v18, "init");
  v3 = qword_100353A10;
  v4 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000F53C(v5, qword_100381C80);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136446210;
    v10 = v4;
    v11 = [v10 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_10017C9E8(v12, v14, &v17);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "init: %{public}s", v8, 0xCu);
    sub_100008964(v9);
  }

  else
  {
  }

  return v4;
}