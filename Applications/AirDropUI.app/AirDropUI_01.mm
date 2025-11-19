unint64_t sub_1000195E8()
{
  result = qword_100173090;
  if (!qword_100173090)
  {
    sub_100007CCC(&qword_100173098, &qword_100118FD0);
    sub_100018EB4();
    sub_10001918C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173090);
  }

  return result;
}

unint64_t sub_100019690()
{
  result = qword_1001730E8;
  if (!qword_1001730E8)
  {
    sub_100007CCC(&qword_1001730D0, &qword_100119058);
    sub_10001971C();
    sub_10001986C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001730E8);
  }

  return result;
}

unint64_t sub_10001971C()
{
  result = qword_1001730F0;
  if (!qword_1001730F0)
  {
    sub_100007CCC(&qword_1001730D8, &qword_100119060);
    sub_1000197C8(&qword_1001730F8, &qword_100173100, &qword_100119070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001730F0);
  }

  return result;
}

uint64_t sub_1000197C8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100007CCC(a2, a3);
    sub_1000199C8(&qword_100173108, &qword_1001730E0, &qword_100119068);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001986C()
{
  result = qword_100173110;
  if (!qword_100173110)
  {
    sub_100007CCC(&qword_1001730B8, &qword_100119040);
    sub_100007CCC(&qword_1001730E0, &qword_100119068);
    sub_100007CCC(&qword_1001730B0, &qword_100119038);
    sub_1000199C8(&qword_100173108, &qword_1001730E0, &qword_100119068);
    sub_1000199C8(&qword_100173118, &qword_1001730B0, &qword_100119038);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173110);
  }

  return result;
}

uint64_t sub_1000199C8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100007CCC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100019A10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100019A58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000077C8(&qword_1001730A8, &qword_100119030);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100019ACC()
{
  result = qword_100173130;
  if (!qword_100173130)
  {
    sub_100007CCC(&qword_100173138, &unk_100119078);
    sub_100019690();
    sub_1000197C8(&qword_100173120, &qword_1001730A0, &qword_100119028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173130);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for InteractiveSwipeModifier.DragState(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for InteractiveSwipeModifier.DragState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
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

uint64_t storeEnumTagSinglePayload for InteractiveSwipeModifier.DragState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 sub_100019C34(uint64_t a1, __int128 *a2)
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
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_100019C60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_100019CA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_100019D18(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[2] == a2[2])
  {
    return a1[1] == a2[1];
  }

  return 0;
}

uint64_t sub_100019D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  *&v40 = a1;
  v43 = a2;
  v4 = type metadata accessor for LocalCoordinateSpace();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = sub_1000077C8(&qword_100173140, &qword_1001191B8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v40 - v8;
  v41 = sub_1000077C8(&qword_100173148, &qword_1001191C0);
  v42 = *(v41 - 8);
  v10 = *(v42 + 64);
  __chkstk_darwin(v41);
  v12 = &v40 - v11;
  v13 = sub_1000077C8(&qword_100173150, &qword_1001191C8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v40 - v15;
  v17 = v2[4];
  v52 = v2[3];
  v53 = v17;
  v19 = v2[3];
  v18 = v2[4];
  v54 = v2[5];
  v44 = v19;
  v45 = v18;
  v46 = v2[5];
  sub_1000077C8(&qword_100173158, &qword_1001191D0);
  GestureState.wrappedValue.getter();
  v20 = v48;
  v21 = v49;
  v22 = sub_1000077C8(&qword_100173160, &qword_1001191D8);
  (*(*(v22 - 8) + 16))(v16, v40, v22);
  v23 = &v16[*(v13 + 36)];
  *v23 = v20;
  *(v23 + 1) = v21;
  static CoordinateSpaceProtocol<>.local.getter();
  DragGesture.init<A>(minimumDistance:coordinateSpace:)();
  v44 = v52;
  v45 = v53;
  v46 = v54;
  GestureState.projectedValue.getter();
  v24 = v47;
  v25 = v48;
  v26 = v49;
  v27 = v50;
  v40 = v51;
  v28 = swift_allocObject();
  v29 = *(v3 + 80);
  *(v28 + 80) = *(v3 + 64);
  *(v28 + 96) = v29;
  *(v28 + 112) = *(v3 + 96);
  *(v28 + 128) = *(v3 + 112);
  v30 = *(v3 + 16);
  *(v28 + 16) = *v3;
  *(v28 + 32) = v30;
  v31 = *(v3 + 48);
  *(v28 + 48) = *(v3 + 32);
  *(v28 + 64) = v31;
  v32 = &v9[*(v6 + 44)];
  *v32 = v24;
  *(v32 + 1) = v25;
  *(v32 + 2) = v26;
  *(v32 + 3) = v27;
  *(v32 + 2) = v40;
  v33 = &v9[*(v6 + 48)];
  *v33 = sub_10001A45C;
  v33[1] = v28;
  v34 = swift_allocObject();
  v35 = *(v3 + 80);
  *(v34 + 80) = *(v3 + 64);
  *(v34 + 96) = v35;
  *(v34 + 112) = *(v3 + 96);
  *(v34 + 128) = *(v3 + 112);
  v36 = *(v3 + 16);
  *(v34 + 16) = *v3;
  *(v34 + 32) = v36;
  v37 = *(v3 + 48);
  *(v34 + 48) = *(v3 + 32);
  *(v34 + 64) = v37;
  sub_10001A4C4(v3, &v44);
  sub_10001A4C4(v3, &v44);
  sub_1000199C8(&qword_100173168, &qword_100173140, &qword_1001191B8);
  Gesture.onEnded(_:)();

  sub_1000159AC(v9, &qword_100173140, &qword_1001191B8);
  static GestureMask.all.getter();
  sub_10001A4FC();
  sub_1000199C8(&unk_100173180, &qword_100173148, &qword_1001191C0);
  v38 = v41;
  View.gesture<A>(_:including:)();
  (*(v42 + 8))(v12, v38);
  return sub_1000159AC(v16, &qword_100173150, &qword_1001191C8);
}

uint64_t sub_10001A250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  DragGesture.Value.translation.getter();
  if (v6 > 0.0)
  {
    v7 = *(a4 + 8);
    v8 = fabs(v7);
    if (v6 >= 2.22044605e-16 && v8 >= 2.22044605e-16)
    {
      v6 = v7 * (1.0 - 1.0 / (v6 / v7 * *(a4 + 16) + 1.0));
    }
  }

  *(a2 + 8) = 0;
  *(a2 + 16) = v6;
  static Animation.interactiveSpring(response:dampingFraction:blendDuration:)();
  Transaction.animation.setter();
  v11 = *(a4 + 96);
  v12 = *(a4 + 112);
  sub_1000077C8(&qword_100172880, &unk_1001191E0);
  return Binding.wrappedValue.setter();
}

uint64_t sub_10001A338(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = Edge.rawValue.getter();
  if (v4 == Edge.rawValue.getter())
  {
    v5 = -1.0;
  }

  else
  {
    v5 = 1.0;
  }

  v6 = DragGesture.Value.predictedEndTranslation.getter();
  if (*a2 < v7 * v5 || (v6 = DragGesture.Value.translation.getter(), *(a2 + 8) < v5 * v8))
  {
    v9 = *(a2 + 40);
    (*(a2 + 32))(v6);
  }

  v11 = *(a2 + 96);
  v12 = *(a2 + 112);
  sub_1000077C8(&qword_100172880, &unk_1001191E0);
  return Binding.wrappedValue.setter();
}

uint64_t sub_10001A404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = *(v2 + 112);
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  return sub_100019D68(a1, a2);
}

uint64_t sub_10001A464()
{
  v1 = v0[7];

  v2 = v0[11];

  v3 = v0[13];

  v4 = v0[14];

  v5 = v0[15];

  return _swift_deallocObject(v0, 129, 7);
}

unint64_t sub_10001A4FC()
{
  result = qword_100173170;
  if (!qword_100173170)
  {
    sub_100007CCC(&qword_100173150, &qword_1001191C8);
    sub_1000199C8(&qword_100173178, &qword_100173160, &qword_1001191D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173170);
  }

  return result;
}

uint64_t sub_10001A5B4()
{
  sub_100007CCC(&qword_100173150, &qword_1001191C8);
  sub_100007CCC(&qword_100173148, &qword_1001191C0);
  sub_10001A4FC();
  sub_1000199C8(&unk_100173180, &qword_100173148, &qword_1001191C0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10001A67C(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_10001CD9C(a1);
  (*(*(*(v2 + qword_10017F1C0) - 8) + 8))(a1);
  return v5;
}

uint64_t sub_10001A6FC()
{
  v0 = type metadata accessor for Logger();
  sub_1000154C0(v0, qword_100173190);
  v1 = sub_100007D20(v0, qword_100173190);
  if (qword_1001721F8 != -1)
  {
    swift_once();
  }

  v2 = sub_100007D20(v0, qword_10017F2F0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10001AAEC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_10001AC34(uint64_t a1, uint64_t a2)
{
  v4 = *((swift_isaMask & *v2) + qword_10017F1C0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1);
  (*(v5 + 16))(&v12 - v7);
  v8 = UIHostingController.init(coder:rootView:)();
  v9 = *(v5 + 8);
  v10 = v8;
  v9(a2, v4);
  if (v8)
  {
  }

  return v8;
}

id sub_10001AD6C(void *a1)
{
  v3 = swift_isaMask & *v1;
  v4 = *(v3 + qword_10017F1C0);
  v5 = *(v3 + qword_10017F1C0 + 8);
  v8.receiver = v1;
  v8.super_class = type metadata accessor for SecureHostingController();
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

id sub_10001AE44()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v1 + qword_10017F1C0);
  v3 = *(v1 + qword_10017F1C0 + 8);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for SecureHostingController();
  return objc_msgSendSuper2(&v5, "dealloc");
}

double sub_10001AF20(void *a1)
{
  v1 = a1;
  sub_10001AF64();
  v3 = v2;

  return v3;
}

void sub_10001AF7C(void *a1)
{
  v1 = a1;
  sub_10001AFDC();
}

void sub_10001AFF4(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UIHostingControllerSizingOptions();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v37 = *a1;
  v7 = *(a1 + 3);
  v8 = objc_allocWithZone(sub_1000077C8(&unk_100173470, &qword_100119520));
  v9 = a1[1];
  v34 = *a1;
  v35 = v9;
  v36 = *(a1 + 32);
  sub_100007BA4(&v37, v33, &qword_100172FD8, &qword_100118E18);
  v10 = v7;
  v11 = UIHostingController.init(rootView:)();
  sub_1000077C8(&unk_100173440, &unk_1001194C0);
  v12 = *(v5 + 72);
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1001186F0;
  static UIHostingControllerSizingOptions.preferredContentSize.getter();
  *&v34 = v14;
  sub_10001F3B8(&unk_100178CE0, &type metadata accessor for UIHostingControllerSizingOptions);
  sub_1000077C8(&unk_100173450, &unk_100122380);
  sub_1000199C8(&unk_100178CF0, &unk_100173450, &unk_100122380);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of UIHostingController.sizingOptions.setter();
  *&v2[qword_1001732C0] = v11;
  v15 = v11;
  v32.receiver = v2;
  v32.super_class = sub_1000077C8(&qword_100173468, &qword_100119518);
  v16 = objc_msgSendSuper2(&v32, "initWithNibName:bundle:", 0, 0);
  v17 = [v16 view];
  if (!v17)
  {
    __break(1u);
    goto LABEL_9;
  }

  v18 = v17;
  v19 = qword_1001732C0;
  v20 = [*&v16[qword_1001732C0] view];
  if (!v20)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v21 = v20;
  [v18 addSubview:v20];

  [v16 addChildViewController:*&v16[v19]];
  v22 = [v16 view];
  if (!v22)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v23 = v22;
  v24 = objc_opt_self();
  v25 = [v24 clearColor];
  [v23 setBackgroundColor:v25];

  v26 = v15;
  v27 = [v26 view];
  if (!v27)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v28 = v27;
  v29 = [v24 clearColor];
  [v28 setBackgroundColor:v29];

  v30 = [v16 view];
  if (!v30)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [v30 setTranslatesAutoresizingMaskIntoConstraints:0];

  v31 = [v26 view];
  if (v31)
  {
    sub_1000159AC(&v37, &qword_100172FD8, &qword_100118E18);

    [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
    return;
  }

LABEL_13:
  __break(1u);
}

void sub_10001B444(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UIHostingControllerSizingOptions();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = objc_allocWithZone(sub_1000077C8(&qword_100173438, &qword_1001194B8));
  v31 = a1;
  v8 = a1;
  v9 = UIHostingController.init(rootView:)();
  sub_1000077C8(&unk_100173440, &unk_1001194C0);
  v10 = *(v5 + 72);
  v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1001186F0;
  static UIHostingControllerSizingOptions.preferredContentSize.getter();
  v31 = v12;
  sub_10001F3B8(&unk_100178CE0, &type metadata accessor for UIHostingControllerSizingOptions);
  sub_1000077C8(&unk_100173450, &unk_100122380);
  sub_1000199C8(&unk_100178CF0, &unk_100173450, &unk_100122380);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of UIHostingController.sizingOptions.setter();
  *&v2[qword_1001732C0] = v9;
  v13 = v9;
  v30.receiver = v2;
  v30.super_class = sub_1000077C8(&qword_100173430, &qword_1001194B0);
  v14 = objc_msgSendSuper2(&v30, "initWithNibName:bundle:", 0, 0);
  v15 = [v14 view];
  if (!v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v16 = v15;
  v17 = qword_1001732C0;
  v18 = [*&v14[qword_1001732C0] view];
  if (!v18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v19 = v18;
  [v16 addSubview:v18];

  [v14 addChildViewController:*&v14[v17]];
  v20 = [v14 view];
  if (!v20)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v21 = v20;
  v22 = objc_opt_self();
  v23 = [v22 clearColor];
  [v21 setBackgroundColor:v23];

  v24 = v13;
  v25 = [v24 view];
  if (!v25)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v26 = v25;
  v27 = [v22 clearColor];
  [v26 setBackgroundColor:v27];

  v28 = [v14 view];
  if (!v28)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];

  v29 = [v24 view];
  if (v29)
  {

    [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
    return;
  }

LABEL_13:
  __break(1u);
}

void sub_10001B848(void *a1)
{
  v1 = *((swift_isaMask & *a1) + 0x50);
  v2 = *((swift_isaMask & *a1) + 0x58);
  sub_10001EE1C();
}

void sub_10001B8C4()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  v2 = *((swift_isaMask & *v0) + 0x58);
  v35.receiver = v0;
  v35.super_class = type metadata accessor for LiveActivitiesHostingController();
  objc_msgSendSuper2(&v35, "viewWillLayoutSubviews");
  sub_1000077C8(&unk_100172E80, &unk_100118B40);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001191F0;
  v4 = *(v0 + qword_1001732C0);
  v5 = [v4 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = v5;
  v7 = [v5 topAnchor];

  v8 = [v0 view];
  if (!v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = v8;
  v10 = [v8 topAnchor];

  v11 = [v7 constraintEqualToAnchor:v10];
  *(v3 + 32) = v11;
  v12 = [v4 view];
  if (!v12)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = v12;
  v14 = [v12 leadingAnchor];

  v15 = [v0 view];
  if (!v15)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v16 = v15;
  v17 = [v15 leadingAnchor];

  v18 = [v14 constraintEqualToAnchor:v17];
  *(v3 + 40) = v18;
  v19 = [v4 view];
  if (!v19)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v20 = v19;
  v21 = [v19 trailingAnchor];

  v22 = [v0 view];
  if (!v22)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23 = v22;
  v24 = [v22 trailingAnchor];

  v25 = [v21 constraintEqualToAnchor:v24];
  *(v3 + 48) = v25;
  v26 = [v4 view];
  if (!v26)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v27 = v26;
  v28 = [v26 bottomAnchor];

  v29 = [v0 view];
  if (v29)
  {
    v30 = v29;
    v31 = objc_opt_self();
    v32 = [v30 bottomAnchor];

    v33 = [v28 constraintEqualToAnchor:v32];
    *(v3 + 56) = v33;
    sub_1000165C4(0, &qword_100173390, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v31 activateConstraints:isa];

    return;
  }

LABEL_17:
  __break(1u);
}

void sub_10001BC64(void *a1)
{
  v1 = a1;
  sub_10001B8C4();
}

void sub_10001BCAC(char a1)
{
  v3 = *((swift_isaMask & *v1) + 0x50);
  v4 = *((swift_isaMask & *v1) + 0x58);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LiveActivitiesHostingController();
  objc_msgSendSuper2(&v5, "viewIsAppearing:", a1 & 1);
  sub_10001BDE4();
}

void sub_10001BD30(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_10001BCAC(a3);
}

void sub_10001BD84(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  sub_10001EE78();
  swift_unknownObjectRelease();
}

void sub_10001BDE4()
{
  [v0 preferredContentSize];
  if (v1 == 0.0 && v2 == 0.0)
  {
    if (qword_1001721F8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100007D20(v3, qword_10017F2F0);
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v4, "LiveActivitiesHostingController: skipping setMetrics because content size is 0", v5, 2u);
    }

LABEL_16:
    v17 = oslog;
LABEL_24:

    return;
  }

  v6 = v2;
  v7 = v1;
  v8 = [v0 view];
  if (!v8)
  {
    __break(1u);
    return;
  }

  v9 = v8;
  v10 = [v8 window];

  if (v10)
  {
    v11 = [v10 windowScene];
    if (v11)
    {
      oslog = v11;
      type metadata accessor for ActivityScene();
      if (swift_dynamicCastClass())
      {
        if (qword_1001721F8 != -1)
        {
          swift_once();
        }

        v12 = type metadata accessor for Logger();
        sub_100007D20(v12, qword_10017F2F0);
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          *v15 = 134218240;
          *(v15 + 4) = v7;
          *(v15 + 12) = 2048;
          *(v15 + 14) = v6;
          _os_log_impl(&_mh_execute_header, v13, v14, "LiveActivitiesHostingController: setMetrics with size {%f, %f}", v15, 0x16u);
        }

        v16 = objc_allocWithZone(type metadata accessor for ActivitySceneMetrics());
        ActivitySceneMetrics.init(size:cornerRadius:)();
        dispatch thunk of ActivityScene.resolvedMetrics.setter();

        goto LABEL_16;
      }
    }

    if (qword_1001721F8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100007D20(v18, qword_10017F2F0);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "LiveActivitiesHostingController used in a scene that's not an ActivityScene", v21, 2u);
    }

    v17 = v10;
    goto LABEL_24;
  }
}

void sub_10001C168(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *((swift_isaMask & *a1) + 0x50);
  v5 = *((swift_isaMask & *a1) + 0x58);
  v6 = a4;

  sub_10001EE7C();
}

id sub_10001C1D8()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  v2 = *((swift_isaMask & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for LiveActivitiesHostingController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_10001C290(void *a1)
{
  *&v1[qword_100178B60] = 0;
  *&v1[qword_100178B68] = 2;
  *&v1[qword_100178B70] = 4;
  *&v1[qword_100178B78] = 4;
  v3 = &v1[qword_100178B80];
  *v3 = 0;
  v3[1] = 0;
  v4 = SBUISystemApertureElementIdentifierAirDrop;
  *&v1[qword_100178B88] = SBUISystemApertureElementIdentifierAirDrop;
  v1[qword_100178B90] = 1;
  v5 = qword_100178B98;
  v6 = objc_allocWithZone(type metadata accessor for SystemApertureElementTransitionCoordinator());
  v7 = v4;
  *&v1[v5] = [v6 init];
  *&v1[qword_100178BA0] = 0;
  v8 = qword_100178BA8;
  v9 = type metadata accessor for SystemApertureLayoutState();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  __asm { FMOV            V0.2D, #17.0 }

  v105 = _Q0;
  v106 = _Q0;
  Published.init(initialValue:)();
  v104 = 0uLL;
  LOBYTE(v105) = 0;
  Published.init(initialValue:)();
  *&v1[v8] = v12;
  *&v1[qword_100178BB0] = 0;
  *&v1[qword_100178BB8] = 0;
  *&v1[qword_100178BC0] = 0;
  *&v1[qword_100178BC8] = 0;
  *&v1[qword_100178BD0] = 0;
  *&v1[qword_100178BD8] = 0;
  *&v1[qword_100178BE0] = 1;
  v18 = sub_1000077C8(&qword_100173398, &qword_100119418);
  v101.receiver = v1;
  v101.super_class = v18;
  v19 = objc_msgSendSuper2(&v101, "initWithNibName:bundle:", 0, 0);
  v87 = a1;
  sub_1000F00EC(a1, v102);
  v20 = *&v19[qword_100178BA8];
  sub_10001F3B8(&qword_1001733A0, type metadata accessor for SystemApertureLayoutState);

  v21 = static ObservableObject.environmentStore.getter();
  v94 = v102[0];
  v95 = v102[1];
  v96 = v102[2];
  v97 = v103;
  KeyPath = swift_getKeyPath();
  v23 = swift_getKeyPath();
  v24 = qword_100178B98;
  v25 = *&v19[qword_100178B98];
  v106 = v96;
  v107 = v97;
  v104 = v94;
  v105 = v95;
  *&v108 = v21;
  *(&v108 + 1) = v20;
  *&v109 = KeyPath;
  BYTE8(v109) = 1;
  HIDWORD(v109) = *&v93[3];
  *(&v109 + 9) = *v93;
  *&v110 = v23;
  *(&v110 + 1) = v25;
  v98 = v108;
  v99 = v109;
  v100 = v110;
  v26 = v25;
  sub_10001EFC8(v102, v93);
  sub_100007BA4(&v104, v93, &qword_1001733A8, &qword_100119478);
  sub_1000077C8(&qword_1001733A8, &qword_100119478);
  sub_10001F024();
  AnyView.init<A>(_:)();
  v27 = type metadata accessor for SystemApertureAccessoryViewController();
  v28 = objc_allocWithZone(v27);
  v88 = type metadata accessor for SystemApertureAccessoryView();
  v29 = objc_allocWithZone(v88);

  *&v28[OBJC_IVAR____TtC9AirDropUI37SystemApertureAccessoryViewController__view] = sub_100107CC4(v30);
  v92.receiver = v28;
  v92.super_class = v27;
  v31 = objc_msgSendSuper2(&v92, "initWithNibName:bundle:", 0, 0);
  v32 = *(*&v31[OBJC_IVAR____TtC9AirDropUI37SystemApertureAccessoryViewController__view] + OBJC_IVAR____TtC9AirDropUI27SystemApertureAccessoryView_hostingController);
  v33 = v31;
  [v33 addChildViewController:v32];

  v34 = *&v19[qword_100178BA0];
  *&v19[qword_100178BA0] = v33;
  v35 = v33;

  v36 = *&v19[v24];
  *(&v95 + 1) = v18;
  *&v96 = &off_100161F88;
  *&v94 = v19;
  v37 = OBJC_IVAR____TtC9AirDropUI42SystemApertureElementTransitionCoordinator_delegate;
  swift_beginAccess();
  v38 = v36;
  sub_10001F2A0(&v94, v36 + v37);
  swift_endAccess();

  v39 = v19;
  [v39 addChildViewController:v35];
  v40 = [v39 view];
  if (!v40)
  {
    __break(1u);
    goto LABEL_19;
  }

  v41 = v40;
  v42 = [v35 view];

  if (!v42)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v41 addSubview:v42];

  [v35 didMoveToParentViewController:v39];
  v43 = objc_allocWithZone(v27);
  v44 = objc_allocWithZone(v88);
  v45 = swift_retain_n();
  *&v43[OBJC_IVAR____TtC9AirDropUI37SystemApertureAccessoryViewController__view] = sub_100107CC4(v45);
  v91.receiver = v43;
  v91.super_class = v27;
  v46 = objc_msgSendSuper2(&v91, "initWithNibName:bundle:", 0, 0);
  v47 = OBJC_IVAR____TtC9AirDropUI37SystemApertureAccessoryViewController__view;
  v48 = *(*&v46[OBJC_IVAR____TtC9AirDropUI37SystemApertureAccessoryViewController__view] + OBJC_IVAR____TtC9AirDropUI27SystemApertureAccessoryView_hostingController);
  v49 = v46;
  [v49 addChildViewController:v48];

  v50 = *&v39[qword_100178BB8];
  *&v39[qword_100178BB8] = v49;
  v51 = v49;

  v52 = *&v46[v47];
  v53 = *&v39[qword_100178BB0];
  *&v39[qword_100178BB0] = v52;
  v54 = v52;

  [v39 addChildViewController:v51];
  v55 = [v39 view];

  if (!v55)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v56 = [v51 view];

  if (!v56)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v55 addSubview:v56];

  [v51 didMoveToParentViewController:v39];
  v57 = objc_allocWithZone(v27);
  v58 = objc_allocWithZone(v88);
  v59 = swift_retain_n();
  *&v57[OBJC_IVAR____TtC9AirDropUI37SystemApertureAccessoryViewController__view] = sub_100107CC4(v59);
  v90.receiver = v57;
  v90.super_class = v27;
  v60 = objc_msgSendSuper2(&v90, "initWithNibName:bundle:", 0, 0);
  v61 = OBJC_IVAR____TtC9AirDropUI37SystemApertureAccessoryViewController__view;
  v62 = *(*&v60[OBJC_IVAR____TtC9AirDropUI37SystemApertureAccessoryViewController__view] + OBJC_IVAR____TtC9AirDropUI27SystemApertureAccessoryView_hostingController);
  v63 = v60;
  [v63 addChildViewController:v62];

  v64 = *&v39[qword_100178BC8];
  *&v39[qword_100178BC8] = v63;
  v65 = v63;

  v66 = *&v60[v61];
  v67 = *&v39[qword_100178BC0];
  *&v39[qword_100178BC0] = v66;
  v68 = v66;

  [v39 addChildViewController:v65];
  v69 = [v39 view];

  if (!v69)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v70 = [v65 view];

  if (!v70)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v69 addSubview:v70];

  [v65 didMoveToParentViewController:v39];
  v71 = objc_allocWithZone(v27);
  v72 = objc_allocWithZone(v88);
  v73 = swift_retain_n();
  *&v71[OBJC_IVAR____TtC9AirDropUI37SystemApertureAccessoryViewController__view] = sub_100107CC4(v73);
  v89.receiver = v71;
  v89.super_class = v27;
  v74 = objc_msgSendSuper2(&v89, "initWithNibName:bundle:", 0, 0);
  v75 = OBJC_IVAR____TtC9AirDropUI37SystemApertureAccessoryViewController__view;
  v76 = *(*&v74[OBJC_IVAR____TtC9AirDropUI37SystemApertureAccessoryViewController__view] + OBJC_IVAR____TtC9AirDropUI27SystemApertureAccessoryView_hostingController);
  v77 = v74;
  [v77 addChildViewController:v76];

  v78 = *&v39[qword_100178BD8];
  *&v39[qword_100178BD8] = v77;
  v79 = v77;

  v80 = *&v74[v75];
  v81 = *&v39[qword_100178BD0];
  *&v39[qword_100178BD0] = v80;
  v82 = v80;

  [v39 addChildViewController:v79];
  v83 = [v39 view];

  if (!v83)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v84 = [v79 view];

  if (!v84)
  {
LABEL_25:
    __break(1u);
    return;
  }

  [v83 addSubview:v84];
  [v79 didMoveToParentViewController:v39];

  sub_1000159AC(&v104, &qword_1001733A8, &qword_100119478);
  if (v103)
  {
    v85 = *&v39[qword_100178BE0];
    if ((v85 & 8) == 0)
    {
      *&v39[qword_100178BE0] = v85 | 8;
    }
  }

  if (BYTE1(v103))
  {
    v86 = *&v39[qword_100178BE0];
    if ((v86 & 0x40) == 0)
    {
      *&v39[qword_100178BE0] = v86 | 0x40;
    }
  }

  sub_10001F310(v102);
  if (*(&v103 + 1) != *&v39[qword_100178B70])
  {
    *&v39[qword_100178B70] = *(&v103 + 1);
  }
}

uint64_t sub_10001CC50@<X0>(_BYTE *a1@<X8>)
{
  sub_10001F364();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10001CCA0(char *a1)
{
  v2 = *a1;
  sub_10001F364();
  return EnvironmentValues.subscript.setter();
}

uint64_t sub_10001CCEC@<X0>(void *a1@<X8>)
{
  sub_100007690();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10001CD3C(uint64_t *a1)
{
  v2 = *a1;
  sub_100007690();
  swift_unknownObjectRetain();
  return EnvironmentValues.subscript.setter();
}

uint64_t sub_10001CD9C(uint64_t a1)
{
  v2 = *(*(*((swift_isaMask & *v1) + qword_10017F1C0) - 8) + 64);
  __chkstk_darwin(a1);
  (*(v4 + 16))(&v6 - v3);
  return UIHostingController.init(rootView:)();
}

id sub_10001CE84(uint64_t a1)
{
  if (qword_100172138 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100007D20(v2, qword_100173190);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v7 = *(a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
    v8 = *(a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);

    v9 = sub_10003E81C(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Creating AirDropTransfer system aperture view controller for transfer ID: %s", v5, 0xCu);
    sub_100007920(v6);
  }

  v10 = objc_allocWithZone(type metadata accessor for AirDropSystemApertureViewController());

  return sub_1000659BC(v11);
}

void sub_10001D014(uint64_t a1)
{
  if (qword_100172138 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100007D20(v2, qword_100173190);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *&v16 = v6;
    *v5 = 136315138;
    v7 = *(a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
    v8 = *(a1 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);

    v9 = sub_10003E81C(v7, v8, &v16);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Creating AirDropTransfer hosting controller for transfer ID: %s", v5, 0xCu);
    sub_100007920(v6);
  }

  type metadata accessor for AirDropTransferSession();
  sub_10001F3B8(&qword_100173460, type metadata accessor for AirDropTransferSession);

  v10 = ObservedObject.init(wrappedValue:)();
  v12 = v11;
  v13 = [objc_allocWithZone(UIColor) initWithRed:0.043 green:0.608 blue:1.0 alpha:1.0];
  if (qword_100172140 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v14 = v16;
  *&v16 = v10;
  *(&v16 + 1) = v12;
  v17 = 0;
  v18 = v13;
  v19 = v14;
  v15 = objc_allocWithZone(sub_1000077C8(&qword_100173468, &qword_100119518));
  sub_10001AFF4(&v16);
}

uint64_t sub_10001D2D0(void *a1, const char *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (qword_100172138 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100007D20(v10, qword_100173190);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v27 = v15;
    *v14 = 136315138;
    type metadata accessor for UUID();
    v26 = a3;
    v16 = a4;
    v17 = a5;
    v18 = a2;
    sub_10001F3B8(&qword_1001770E0, &type metadata accessor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = sub_10003E81C(v19, v20, &v27);

    *(v14 + 4) = v21;
    v22 = v18;
    a5 = v17;
    a4 = v16;
    a3 = v26;
    _os_log_impl(&_mh_execute_header, v12, v13, v22, v14, 0xCu);
    sub_100007920(v15);
  }

  v23 = objc_allocWithZone(sub_1000077C8(a3, a4));
  v24 = v11;
  return a5(v11);
}

uint64_t sub_10001D4D4(const char *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  if (qword_100172138 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100007D20(v8, qword_100173190);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, a1, v11, 2u);
  }

  v12 = objc_allocWithZone(sub_1000077C8(a2, a3));
  return a4(0);
}

void sub_10001D5E8(void *a1, void *a2)
{
  v3 = v2;
  if (qword_100172138 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100007D20(v6, qword_100173190);
  v7 = a2;
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v135[0] = swift_slowAlloc();
    *v11 = 136315394;
    v12 = [v7 role];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_10003E81C(v13, v15, v135);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    type metadata accessor for ActivityScene();
    if (swift_dynamicCastClass() && (swift_getKeyPath(), dispatch thunk of ActivityScene.subscript.getter(), , (v17 = v137) != 0))
    {
      v18 = v136;
    }

    else
    {

      v17 = 0xE500000000000000;
      v18 = 0x3E6C696E3CLL;
    }

    v19 = sub_10003E81C(v18, v17, v135);

    *(v11 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "SessionSceneDelegate: Scene will connect called with role: %s, activity identifier: %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  type metadata accessor for ActivityScene();
  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "SessionSceneDelegate: Received a UIScene that is not of type SessionScene.", v32, 2u);
    }

    goto LABEL_16;
  }

  v21 = v20;
  v22 = v8;
  v23 = [v22 session];
  v24 = [v23 role];

  v25 = static UISceneSessionRole.activityBanner.getter();
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;
  if (v26 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v28 == v29)
  {
  }

  else
  {
    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v33 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if (qword_100172250 != -1)
  {
    swift_once();
  }

  *(qword_10017F390 + 48) = 1;
LABEL_21:
  v34 = v22;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  v133 = v3;
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v136 = v38;
    *v37 = 136315138;
    v39 = [v21 description];
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    v43 = sub_10003E81C(v40, v42, &v136);

    *(v37 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v35, v36, "SessionSceneDelegate: Connecting session scene: %s", v37, 0xCu);
    sub_100007920(v38);
  }

  swift_getKeyPath();
  dispatch thunk of ActivityScene.subscript.getter();

  v44 = v137;
  if (v137)
  {
    v45 = v136;
    if (qword_100172150 != -1)
    {
      swift_once();
    }

    v46 = qword_10017F1E0;
    v47 = sub_100026D10(v45, v44);
    v48 = *(v46 + OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_nearbySharingInteractionCoordinator);
    v49 = sub_10009DBB0(v45, v44);

    if (v47 | v49)
    {
      goto LABEL_36;
    }

LABEL_33:
    v131 = v49;
    v56 = v47;
    v57 = v34;
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v130 = v34;
      v61 = swift_slowAlloc();
      *v60 = 138412290;
      *(v60 + 4) = v21;
      *v61 = v21;
      v62 = v57;
      _os_log_impl(&_mh_execute_header, v58, v59, "Unable to find an AirDrop transfer, nearby sharing interaction, or background activity to represent with session scene: %@", v60, 0xCu);
      sub_1000159AC(v61, &qword_100172EB0, &qword_100119410);
    }

    v47 = v56;
    v49 = v131;
    goto LABEL_36;
  }

  v50 = v34;
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v53 = 138412290;
    *(v53 + 4) = v21;
    *v54 = v21;
    v55 = v50;
    _os_log_impl(&_mh_execute_header, v51, v52, "Falling back to first AirDrop transfer for session scene with missing activity ID: %@", v53, 0xCu);
    sub_1000159AC(v54, &qword_100172EB0, &qword_100119410);
  }

  if (qword_100172150 != -1)
  {
    swift_once();
  }

  v46 = qword_10017F1E0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v47 = sub_1000F92B4(v136);

  v49 = 0;
  if (!v47)
  {
    goto LABEL_33;
  }

LABEL_36:
  v63 = v34;
  v64 = [v21 SBUI_isHostedBySystemAperture];
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.default.getter();
  v67 = os_log_type_enabled(v65, v66);
  if (!v64)
  {
    if (v67)
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&_mh_execute_header, v65, v66, "SessionSceneDelegate: Received ActivityKit scene not hosted in system aperture", v70, 2u);
    }

    if (qword_100172150 != -1)
    {
      swift_once();
    }

    if (*(*(v46 + OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_nearbySharingInteractionCoordinator) + OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_failureActivity))
    {
      v71 = sub_10001D4D4("Creating live activities view controller for nearby sharing interaction failure", &qword_100173430, &qword_1001194B0, sub_10001B444);
LABEL_71:
      v95 = objc_allocWithZone(type metadata accessor for SFSecureWindow());
      v96 = v71;
      v97 = [v95 initWithWindowScene:v21];

      [v97 setRootViewController:v96];
      [v97 makeKeyAndVisible];

      v98 = *(v133 + OBJC_IVAR____TtC9AirDropUI20SessionSceneDelegate_window);
      *(v133 + OBJC_IVAR____TtC9AirDropUI20SessionSceneDelegate_window) = v97;

      return;
    }

    if (v49)
    {
      v86 = v49;
      v71 = sub_10001D2D0(v86, "Creating live activities view controller for nearby sharing interaction with ID: %s", &qword_100173430, &qword_1001194B0, sub_10001B444);

      goto LABEL_71;
    }

    sub_1000165C4(0, &qword_100172F70, NSUserDefaults_ptr);
    v91 = static NSUserDefaults.airdrop.getter();
    v92 = SFAirDropUserDefaults.systemLevelProgressEnabled.getter();

    if (v47 && (v92 & 1) != 0)
    {

      sub_10001D014(v93);
      v71 = v94;

      goto LABEL_71;
    }

    v111 = v63;
    v112 = Logger.logObject.getter();
    v113 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      *v114 = 138412290;
      *(v114 + 4) = v21;
      *v115 = v21;
      v116 = v111;
      _os_log_impl(&_mh_execute_header, v112, v113, "Unable to find an AirDrop transfer or a nearby sharing interaction to represent with session scene: %@", v114, 0xCu);
      sub_1000159AC(v115, &qword_100172EB0, &qword_100119410);
    }

    v117 = [v111 session];
    v118 = [v117 role];

    v119 = static UISceneSessionRole.activityBanner.getter();
    v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v122 = v121;
    if (v120 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v122 == v123)
    {
    }

    else
    {
      v129 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v129 & 1) == 0)
      {
LABEL_92:

        return;
      }
    }

    if (qword_100172250 != -1)
    {
      swift_once();
    }

    sub_1000FD910(0);

    goto LABEL_92;
  }

  if (v67)
  {
    v68 = swift_slowAlloc();
    *v68 = 0;
    _os_log_impl(&_mh_execute_header, v65, v66, "SessionSceneDelegate: Received ActivityKit scene hosted by system aperture", v68, 2u);
  }

  swift_getKeyPath();
  dispatch thunk of ActivityScene.subscript.getter();

  v69 = v137;
  if (v137)
  {
    v132 = v136;
  }

  else
  {
    v72 = [v21 session];
    v73 = [v72 persistentIdentifier];

    v132 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v69 = v74;
  }

  if (qword_100172150 != -1)
  {
    swift_once();
  }

  v75 = &qword_100173000;
  if (!*(*(v46 + OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_nearbySharingInteractionCoordinator) + OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_failureActivity))
  {
    v87 = OBJC_IVAR____TtC9AirDropUI20SessionSceneDelegate_systemApertureElementProvidersByID;
    swift_beginAccess();
    v88 = *(v133 + v87);
    if (*(v88 + 16))
    {

      v89 = sub_10003EEC0(v132, v69);
      if (v90)
      {
        v76 = *(*(v88 + 56) + 8 * v89);
        swift_unknownObjectRetain_n();

        v77 = Logger.logObject.getter();
        v78 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v77, v78))
        {
          goto LABEL_54;
        }

        v79 = swift_slowAlloc();
        *v79 = 0;
        v80 = "SessionSceneDelegate: using cachedSystemApertureElementProvider";
        goto LABEL_53;
      }
    }

    if (v49)
    {
      v99 = v21;
      v100 = v49;
      v101 = v47;
      v102 = v100;
      v103 = v100;
      v76 = sub_10001D2D0(v103, "Creating system aperture view controller for nearby sharing interaction with ID: %s", &qword_100173398, &qword_100119418, sub_10001C290);
      swift_unknownObjectRetain();
      v104 = Logger.logObject.getter();
      v105 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        *v106 = 0;
        _os_log_impl(&_mh_execute_header, v104, v105, "SessionSceneDelegate: using nearbySharingInteractionViewModel", v106, 2u);
      }

      v47 = v101;
      v49 = v102;
      v21 = v99;
      v75 = &qword_100173000;
      goto LABEL_55;
    }

    if (v47)
    {

      v76 = sub_10001CE84(v107);
      swift_unknownObjectRetain();
      v108 = Logger.logObject.getter();
      v109 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        *v110 = 0;
        _os_log_impl(&_mh_execute_header, v108, v109, "SessionSceneDelegate: using airDropTransferSession", v110, 2u);
      }

      goto LABEL_55;
    }

    v124 = v63;
    v30 = Logger.logObject.getter();
    v125 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v125))
    {
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      *v126 = 138412290;
      *(v126 + 4) = v21;
      *v127 = v21;
      v128 = v124;
      _os_log_impl(&_mh_execute_header, v30, v125, "Unable to find an AirDrop transfer or a nearby sharing interaction to show in system aperture scene: %@", v126, 0xCu);
      sub_1000159AC(v127, &qword_100172EB0, &qword_100119410);

      return;
    }

LABEL_16:
    return;
  }

  v76 = sub_10001D4D4("Creating system aperture view controller for nearby sharing interaction failure", &qword_100173398, &qword_100119418, sub_10001C290);
  swift_unknownObjectRetain();
  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    *v79 = 0;
    v80 = "SessionSceneDelegate: using boop failure";
LABEL_53:
    _os_log_impl(&_mh_execute_header, v77, v78, v80, v79, 2u);
  }

LABEL_54:

LABEL_55:
  swift_getObjectType();
  v81 = swift_conformsToProtocol2();
  if (v81)
  {
    v82 = v76;
  }

  else
  {
    v82 = 0;
  }

  if (v47)
  {
    if (v82)
    {
      *(v47 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_sessionUpdateDelegate + 8) = v81;
      swift_unknownObjectWeakAssign();
    }
  }

  [v21 setSystemApertureElementViewControllerProvider:{v76, v130}];

  v83 = v75[54];
  swift_beginAccess();
  swift_unknownObjectRetain();
  v84 = *(v133 + v83);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v134 = *(v133 + v83);
  *(v133 + v83) = 0x8000000000000000;
  sub_100041268(v76, v132, v69, isUniquelyReferenced_nonNull_native);

  *(v133 + v83) = v134;
  swift_endAccess();

  swift_unknownObjectRelease_n();
}

void sub_10001E7CC(void *a1)
{
  if (qword_100172138 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100007D20(v2, qword_100173190);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v6 = 136315394;
    v7 = [v3 session];
    v8 = [v7 role];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_10003E81C(v9, v11, &v30);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2080;
    type metadata accessor for ActivityScene();
    if (swift_dynamicCastClass() && (swift_getKeyPath(), dispatch thunk of ActivityScene.subscript.getter(), , (v13 = v32) != 0))
    {
      v14 = v31;
    }

    else
    {

      v13 = 0xE500000000000000;
      v14 = 0x3E6C696E3CLL;
    }

    v15 = sub_10003E81C(v14, v13, &v30);

    *(v6 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "SessionSceneDelegate: sceneDidDisconnect with role: %s, activity identifier: %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v16 = [v3 session];
  v17 = [v16 role];

  v18 = static UISceneSessionRole.activityBanner.getter();
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
  if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
  {
  }

  else
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v23 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (qword_100172250 != -1)
  {
    swift_once();
  }

  sub_1000FD910(0);

LABEL_17:
  type metadata accessor for ActivityScene();
  if (swift_dynamicCastClass())
  {
    swift_getKeyPath();
    v24 = v3;
    dispatch thunk of ActivityScene.subscript.getter();

    v25 = v32;
    if (v32)
    {
      v26 = v31;
      if (qword_100172150 != -1)
      {
        swift_once();
      }

      v27 = *(qword_10017F1E0 + OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_nearbySharingInteractionCoordinator);
      sub_1000968A8(v26, v25);
    }
  }

  else
  {
    v24 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v24, v28, "SessionSceneDelegate: Received a UIScene that is not of type SessionScene.", v29, 2u);
    }
  }
}

void sub_10001EC68(void *a1, const char *a2)
{
  if (qword_100172138 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100007D20(v4, qword_100173190);
  v5 = a1;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    v9 = [v5 session];
    v10 = [v9 role];

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = sub_10003E81C(v11, v13, &v16);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, oslog, v6, a2, v7, 0xCu);
    sub_100007920(v8);
  }
}

uint64_t sub_10001EED8@<X0>(_BYTE *a1@<X8>)
{
  sub_10001F364();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10001EF28(char *a1)
{
  v2 = *a1;
  sub_10001F364();
  return EnvironmentValues.subscript.setter();
}

uint64_t sub_10001EF74@<X0>(void *a1@<X8>)
{
  sub_100007690();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

unint64_t sub_10001F024()
{
  result = qword_1001733B0;
  if (!qword_1001733B0)
  {
    sub_100007CCC(&qword_1001733A8, &qword_100119478);
    sub_10001F0DC();
    sub_1000199C8(&qword_100173400, &qword_100173408, &unk_1001194A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001733B0);
  }

  return result;
}

unint64_t sub_10001F0DC()
{
  result = qword_1001733B8;
  if (!qword_1001733B8)
  {
    sub_100007CCC(&qword_1001733C0, &qword_100119480);
    sub_10001F194();
    sub_1000199C8(&qword_1001733F0, &qword_1001733F8, &qword_100119498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001733B8);
  }

  return result;
}

unint64_t sub_10001F194()
{
  result = qword_1001733C8;
  if (!qword_1001733C8)
  {
    sub_100007CCC(&unk_1001733D0, &qword_100119488);
    sub_10001F24C();
    sub_1000199C8(&qword_1001733E0, &qword_1001733E8, &qword_100119490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001733C8);
  }

  return result;
}

unint64_t sub_10001F24C()
{
  result = qword_100178160;
  if (!qword_100178160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100178160);
  }

  return result;
}

uint64_t sub_10001F2A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000077C8(&unk_100173410, &qword_1001182F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001F364()
{
  result = qword_100173420;
  if (!qword_100173420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173420);
  }

  return result;
}

uint64_t sub_10001F3B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001F43C(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 64);
  __chkstk_darwin(a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return String.init<A>(reflecting:)();
}

uint64_t sub_10001F4F4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 sub_10001F518(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10001F52C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_10001F574(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001F5EC()
{
  v1 = sub_1000077C8(&qword_1001734E0, &qword_100119600);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = (v21 - v3);
  v5 = sub_1000077C8(&qword_1001734E8, &qword_100119608);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = v21 - v7;
  v9 = sub_1000077C8(&qword_1001734F0, &qword_100119610);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = v21 - v11;
  if (*(v0 + 40))
  {
    *(v0 + 16);
  }

  if (*(v0 + 32) == 1)
  {
    sub_10001F8C8(v12);
    sub_100007BA4(v12, v8, &qword_1001734F0, &qword_100119610);
    swift_storeEnumTagMultiPayload();
    sub_1000210F0();
    sub_100021938();
    _ConditionalContent<>.init(storage:)();
    v13 = v12;
    v14 = &qword_1001734F0;
    v15 = &qword_100119610;
  }

  else
  {
    *v4 = static Alignment.bottomTrailing.getter();
    v4[1] = v16;
    v17 = sub_1000077C8(&qword_1001734F8, &qword_100119618);
    sub_1000208CC(v0, v4 + *(v17 + 44));
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v18 = (v4 + *(v1 + 36));
    v19 = v21[1];
    *v18 = v21[0];
    v18[1] = v19;
    v18[2] = v21[2];
    sub_100007BA4(v4, v8, &qword_1001734E0, &qword_100119600);
    swift_storeEnumTagMultiPayload();
    sub_1000210F0();
    sub_100021938();
    _ConditionalContent<>.init(storage:)();
    v13 = v4;
    v14 = &qword_1001734E0;
    v15 = &qword_100119600;
  }

  return sub_1000159AC(v13, v14, v15);
}

uint64_t sub_10001F8C8@<X0>(uint64_t a1@<X8>)
{
  v101 = a1;
  v87 = sub_1000077C8(&qword_100173610, &qword_1001196A8);
  v2 = *(*(v87 - 8) + 64);
  __chkstk_darwin(v87);
  v88 = &v78 - v3;
  v100 = sub_1000077C8(&qword_1001735F0, &qword_100119698);
  v4 = *(*(v100 - 8) + 64);
  __chkstk_darwin(v100);
  v89 = &v78 - v5;
  v96 = sub_1000077C8(&qword_1001735E0, &qword_100119690);
  v6 = *(*(v96 - 8) + 64);
  __chkstk_darwin(v96);
  v86 = &v78 - v7;
  v98 = sub_1000077C8(&qword_100173618, &qword_1001196B0);
  v8 = *(*(v98 - 8) + 64);
  __chkstk_darwin(v98);
  v99 = &v78 - v9;
  v91 = sub_1000077C8(&qword_100173620, &qword_1001196B8);
  v10 = *(*(v91 - 8) + 64);
  __chkstk_darwin(v91);
  v92 = &v78 - v11;
  v97 = sub_1000077C8(&qword_100173510, &qword_100119620);
  v12 = *(*(v97 - 8) + 64);
  __chkstk_darwin(v97);
  v93 = &v78 - v13;
  v95 = type metadata accessor for RoundedRectangle();
  v14 = *(*(v95 - 8) + 64);
  __chkstk_darwin(v95);
  v85 = (&v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for Image.ResizingMode();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000077C8(&qword_100173570, &qword_100119650);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = &v78 - v23;
  v80 = sub_1000077C8(&qword_100173560, &qword_100119648);
  v25 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80);
  v27 = &v78 - v26;
  v79 = sub_1000077C8(&qword_100173550, &qword_100119640);
  v28 = *(*(v79 - 8) + 64);
  __chkstk_darwin(v79);
  v94 = &v78 - v29;
  v30 = sub_1000077C8(&qword_100173540, &qword_100119638);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v82 = &v78 - v32;
  v83 = sub_1000077C8(&qword_100173530, &qword_100119630);
  v33 = *(*(v83 - 8) + 64);
  __chkstk_darwin(v83);
  v81 = &v78 - v34;
  v90 = sub_1000077C8(&qword_100173520, &qword_100119628);
  v35 = *(*(v90 - 8) + 64);
  __chkstk_darwin(v90);
  v84 = &v78 - v36;
  v102 = v1;
  v37 = *(v1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v109 == 1 && (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , v109))
  {
    v89 = v109;
    Image.init(uiImage:)();
    (*(v17 + 104))(v20, enum case for Image.ResizingMode.stretch(_:), v16);
    v38 = Image.resizable(capInsets:resizingMode:)();

    (*(v17 + 8))(v20, v16);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    LOBYTE(v105) = 1;
    *&v103[6] = v109;
    *&v103[22] = v110;
    *&v103[38] = v111;
    if (sub_10007A24C())
    {
      v39 = 15.0;
    }

    else
    {
      v39 = 0.0;
    }

    v40 = static Alignment.center.getter();
    v42 = v41;
    v43 = &v24[*(v21 + 36)];
    sub_100020C10(v102, v43);
    v44 = (v43 + *(sub_1000077C8(&qword_1001735A8, &unk_100119670) + 36));
    *v44 = v40;
    v44[1] = v42;
    *(v24 + 8) = *&v103[46];
    *(v24 + 50) = *&v103[32];
    v45 = *v103;
    *(v24 + 34) = *&v103[16];
    *v24 = v38;
    *(v24 + 1) = 0;
    *(v24 + 8) = 257;
    *(v24 + 18) = v45;
    *(v24 + 9) = v39;
    v24[80] = 0;
    sub_100021A84(v24, v27, &qword_100173570, &qword_100119650);
    *&v27[*(v80 + 36)] = 0;
    v46 = v94;
    v47 = &v94[*(v79 + 36)];
    v48 = *(v95 + 20);
    v49 = enum case for RoundedCornerStyle.continuous(_:);
    v50 = type metadata accessor for RoundedCornerStyle();
    v51 = *(*(v50 - 8) + 104);
    v51(&v47[v48], v49, v50);
    __asm { FMOV            V0.2D, #11.0 }

    *v47 = _Q0;
    v57 = sub_1000077C8(&qword_100177710, &qword_100119680);
    *&v47[*(v57 + 36)] = 256;
    sub_100021A84(v27, v46, &qword_100173560, &qword_100119648);
    if (qword_100172140 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v114 == 1)
    {
      v58 = static Color.green.getter();
    }

    else
    {
      v58 = static Color.clear.getter();
    }

    v69 = v82;
    v70 = v94;
    sub_100020ED4(v58, v82);

    sub_1000159AC(v70, &qword_100173550, &qword_100119640);
    v71 = 11.0;
    if (*(v102 + 40))
    {
      if (*(v102 + 16))
      {
        v71 = 16.0;
      }

      else
      {
        v71 = 11.0;
      }
    }

    v72 = v85;
    v51(v85 + *(v95 + 20), v49, v50);
    *v72 = v71;
    v72[1] = v71;
    v73 = v81;
    v74 = &v81[*(v83 + 36)];
    sub_100021A10(v72, v74);
    *(v74 + *(v57 + 36)) = 256;
    sub_100021A84(v69, v73, &qword_100173540, &qword_100119638);
    sub_100021294();
    v75 = v84;
    View.accessibilityHidden(_:)();
    sub_1000159AC(v73, &qword_100173530, &qword_100119630);
    v62 = &qword_100173520;
    v63 = &qword_100119628;
    sub_100007BA4(v75, v92, &qword_100173520, &qword_100119628);
    swift_storeEnumTagMultiPayload();
    sub_100021208();
    sub_100021820();
    v76 = v93;
    _ConditionalContent<>.init(storage:)();
    sub_100007BA4(v76, v99, &qword_100173510, &qword_100119620);
    swift_storeEnumTagMultiPayload();
    sub_10002117C();
    sub_1000218AC();
    _ConditionalContent<>.init(storage:)();

    sub_1000159AC(v76, &qword_100173510, &qword_100119620);
    v65 = v75;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v109 == 1 && (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , v109))
    {
      v59 = v109;
      Image.init(uiImage:)();
      (*(v17 + 104))(v20, enum case for Image.ResizingMode.stretch(_:), v16);
      v60 = Image.resizable(capInsets:resizingMode:)();

      (*(v17 + 8))(v20, v16);
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      *&v104[38] = v116;
      *&v104[22] = v115;
      *&v104[6] = v114;
      *&v106[2] = *v104;
      v108 = 1;
      v105 = v60;
      *v106 = 1;
      *&v106[18] = *&v104[16];
      *&v106[34] = *&v104[32];
      *&v106[48] = *(&v116 + 1);
      sub_1000077C8(&qword_100173590, &unk_100119660);
      sub_1000216B8();
      v61 = v86;
      View.accessibilityHidden(_:)();
      v110 = *v106;
      v111 = *&v106[16];
      v112 = *&v106[32];
      v113 = *&v106[48];
      v109 = v105;
      sub_1000159AC(&v109, &qword_100173590, &unk_100119660);
      v62 = &qword_1001735E0;
      v63 = &qword_100119690;
      sub_100007BA4(v61, v92, &qword_1001735E0, &qword_100119690);
      swift_storeEnumTagMultiPayload();
      sub_100021208();
      sub_100021820();
      v64 = v93;
      _ConditionalContent<>.init(storage:)();
      sub_100007BA4(v64, v99, &qword_100173510, &qword_100119620);
      swift_storeEnumTagMultiPayload();
      sub_10002117C();
      sub_1000218AC();
      _ConditionalContent<>.init(storage:)();

      sub_1000159AC(v64, &qword_100173510, &qword_100119620);
      v65 = v61;
    }

    else
    {
      if (*(v102 + 32) == 1)
      {
        swift_storeEnumTagMultiPayload();
        sub_100021820();
        v66 = v89;
        _ConditionalContent<>.init(storage:)();
      }

      else
      {
        Image.init(systemName:)();
        (*(v17 + 104))(v20, enum case for Image.ResizingMode.stretch(_:), v16);
        v67 = Image.resizable(capInsets:resizingMode:)();

        (*(v17 + 8))(v20, v16);
        static Alignment.center.getter();
        _FrameLayout.init(width:height:alignment:)();
        v108 = 1;
        *&v107[22] = v115;
        *&v107[38] = v116;
        *&v107[6] = v114;
        v105 = v67;
        *v106 = 1;
        *&v106[2] = *v107;
        *&v106[18] = *&v107[16];
        *&v106[34] = *&v107[32];
        *&v106[48] = *(&v116 + 1);
        sub_1000077C8(&qword_100173590, &unk_100119660);
        sub_1000216B8();
        v68 = v86;
        View.accessibilityHidden(_:)();
        v110 = *v106;
        v111 = *&v106[16];
        v112 = *&v106[32];
        v113 = *&v106[48];
        v109 = v105;
        sub_1000159AC(&v109, &qword_100173590, &unk_100119660);
        sub_100007BA4(v68, v88, &qword_1001735E0, &qword_100119690);
        swift_storeEnumTagMultiPayload();
        sub_100021820();
        v66 = v89;
        _ConditionalContent<>.init(storage:)();
        sub_1000159AC(v68, &qword_1001735E0, &qword_100119690);
      }

      v62 = &qword_1001735F0;
      v63 = &qword_100119698;
      sub_100007BA4(v66, v99, &qword_1001735F0, &qword_100119698);
      swift_storeEnumTagMultiPayload();
      sub_10002117C();
      sub_1000218AC();
      _ConditionalContent<>.init(storage:)();
      v65 = v66;
    }
  }

  return sub_1000159AC(v65, v62, v63);
}

uint64_t sub_1000208CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v30[-7] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000077C8(&qword_1001734F0, &qword_100119610);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v30[-7] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v30[-7] - v14;
  sub_10001F8C8(&v30[-7] - v14);
  v16 = a1[1];
  sub_100021C28(a1[3], a1[4]);
  (*(v5 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v4);
  v17 = Image.resizable(capInsets:resizingMode:)();

  (*(v5 + 8))(v8, v4);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  LOBYTE(v33[0]) = 1;
  *&v30[3] = *&v30[27];
  *&v30[11] = *&v30[35];
  *&v30[19] = *&v30[43];
  sub_100007BA4(v15, v13, &qword_1001734F0, &qword_100119610);
  sub_100007BA4(v13, a2, &qword_1001734F0, &qword_100119610);
  v18 = a2 + *(sub_1000077C8(&qword_100173638, &qword_100119850) + 48);
  v31[0] = v17;
  v31[1] = 0;
  *v32 = 257;
  *&v32[2] = *v30;
  *&v32[18] = *&v30[8];
  *&v32[34] = *&v30[16];
  *&v32[48] = *&v30[23];
  __asm { FMOV            V0.2D, #2.0 }

  v29 = _Q0;
  *&v32[56] = _Q0;
  v24 = *v32;
  *v18 = v17;
  *(v18 + 16) = v24;
  v25 = *&v32[16];
  v26 = *&v32[32];
  v27 = *&v32[48];
  *(v18 + 80) = *&v32[64];
  *(v18 + 48) = v26;
  *(v18 + 64) = v27;
  *(v18 + 32) = v25;
  sub_100007BA4(v31, v33, &qword_100173640, &qword_100119858);
  sub_1000159AC(v15, &qword_1001734F0, &qword_100119610);
  v33[0] = v17;
  v33[1] = 0;
  v34 = 257;
  v35 = *v30;
  v36 = *&v30[8];
  *v37 = *&v30[16];
  *&v37[7] = *&v30[23];
  *&v37[11] = v29;
  sub_1000159AC(v33, &qword_100173640, &qword_100119858);
  return sub_1000159AC(v13, &qword_1001734F0, &qword_100119610);
}

uint64_t sub_100020C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Color.RGBColorSpace();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000077C8(&qword_100173630, &qword_1001213D0);
  v25 = *(v9 - 8);
  v10 = *(v25 + 64);
  __chkstk_darwin(v9);
  v12 = (&v24 - v11);
  v13 = *(a1 + 8);
  if (sub_10007A24C())
  {
    v14 = Image.init(systemName:)();
    v15 = static Font.title.getter();
    KeyPath = swift_getKeyPath();
    (*(v5 + 104))(v8, enum case for Color.RGBColorSpace.sRGB(_:), v4);
    v17 = Color.init(_:white:opacity:)();
    v18 = swift_getKeyPath();
    v19 = *(v9 + 36);
    v20 = enum case for BlendMode.multiply(_:);
    v21 = type metadata accessor for BlendMode();
    (*(*(v21 - 8) + 104))(v12 + v19, v20, v21);
    *v12 = v14;
    v12[1] = KeyPath;
    v12[2] = v15;
    v12[3] = v18;
    v12[4] = v17;
    sub_100021A84(v12, a2, &qword_100173630, &qword_1001213D0);
    return (*(v25 + 56))(a2, 0, 1, v9);
  }

  else
  {
    v23 = *(v25 + 56);

    return v23(a2, 1, 1, v9);
  }
}

uint64_t sub_100020ED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v6 = v29;
  v7 = v29 * 0.5;
  v8 = v30;
  v9 = DWORD1(v30);
  v10 = *(&v30 + 1);
  v11 = v31;

  v12 = static Alignment.center.getter();
  v14 = v13;
  *v32 = v29 * 0.5;
  *(v32 + 1) = v29;
  v32[1] = v30;
  *v33 = v31;
  *&v33[16] = a1;
  *&v33[24] = 256;
  v27 = v30;
  *v28 = v31;
  *&v28[10] = *&v33[10];
  v26 = v32[0];
  v36 = *v28;
  v37 = *&v28[16];
  v34 = v32[0];
  v35 = v30;
  *&v38 = v12;
  *(&v38 + 1) = v13;
  sub_100007BA4(v3, a2, &qword_100173550, &qword_100119640);
  v15 = (a2 + *(sub_1000077C8(&qword_100173540, &qword_100119638) + 36));
  v16 = *&v28[16];
  v15[2] = *v28;
  v15[3] = v16;
  v15[4] = v38;
  v17 = v35;
  *v15 = v34;
  v15[1] = v17;
  v39[2] = *v28;
  v39[3] = *&v28[16];
  v39[0] = v26;
  v39[1] = v27;
  v40 = v12;
  v41 = v14;
  sub_100007BA4(v32, v19, &qword_100173628, &unk_1001197E0);
  sub_100007BA4(&v34, v19, &qword_1001735C8, &qword_100119688);
  sub_1000159AC(v39, &qword_1001735C8, &qword_100119688);
  *v19 = v7;
  *&v19[1] = v6;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  v24 = a1;
  v25 = 256;
  return sub_1000159AC(v19, &qword_100173628, &unk_1001197E0);
}

uint64_t sub_1000210B4()
{
  v2 = *v0;
  *v3 = v0[1];
  *&v3[9] = *(v0 + 25);
  return sub_10001F5EC();
}

unint64_t sub_1000210F0()
{
  result = qword_100173500;
  if (!qword_100173500)
  {
    sub_100007CCC(&qword_1001734F0, &qword_100119610);
    sub_10002117C();
    sub_1000218AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173500);
  }

  return result;
}

unint64_t sub_10002117C()
{
  result = qword_100173508;
  if (!qword_100173508)
  {
    sub_100007CCC(&qword_100173510, &qword_100119620);
    sub_100021208();
    sub_100021820();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173508);
  }

  return result;
}

unint64_t sub_100021208()
{
  result = qword_100173518;
  if (!qword_100173518)
  {
    sub_100007CCC(&qword_100173520, &qword_100119628);
    sub_100021294();
    sub_1000217C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173518);
  }

  return result;
}

unint64_t sub_100021294()
{
  result = qword_100173528;
  if (!qword_100173528)
  {
    sub_100007CCC(&qword_100173530, &qword_100119630);
    sub_10002134C();
    sub_1000199C8(&qword_1001735B8, &qword_100177710, &qword_100119680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173528);
  }

  return result;
}

unint64_t sub_10002134C()
{
  result = qword_100173538;
  if (!qword_100173538)
  {
    sub_100007CCC(&qword_100173540, &qword_100119638);
    sub_100021404();
    sub_1000199C8(&qword_1001735C0, &qword_1001735C8, &qword_100119688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173538);
  }

  return result;
}

unint64_t sub_100021404()
{
  result = qword_100173548;
  if (!qword_100173548)
  {
    sub_100007CCC(&qword_100173550, &qword_100119640);
    sub_1000214BC();
    sub_1000199C8(&qword_1001735B8, &qword_100177710, &qword_100119680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173548);
  }

  return result;
}

unint64_t sub_1000214BC()
{
  result = qword_100173558;
  if (!qword_100173558)
  {
    sub_100007CCC(&qword_100173560, &qword_100119648);
    sub_100021574();
    sub_1000199C8(&qword_1001735B0, &qword_1001785A0, &qword_100121590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173558);
  }

  return result;
}

unint64_t sub_100021574()
{
  result = qword_100173568;
  if (!qword_100173568)
  {
    sub_100007CCC(&qword_100173570, &qword_100119650);
    sub_10002162C();
    sub_1000199C8(&qword_1001735A0, &qword_1001735A8, &unk_100119670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173568);
  }

  return result;
}

unint64_t sub_10002162C()
{
  result = qword_100173578;
  if (!qword_100173578)
  {
    sub_100007CCC(&qword_100173580, &qword_100119658);
    sub_1000216B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173578);
  }

  return result;
}

unint64_t sub_1000216B8()
{
  result = qword_100173588;
  if (!qword_100173588)
  {
    sub_100007CCC(&qword_100173590, &unk_100119660);
    sub_100021744();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173588);
  }

  return result;
}

unint64_t sub_100021744()
{
  result = qword_100173598;
  if (!qword_100173598)
  {
    sub_100007CCC(&qword_100177A40, &unk_1001204E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173598);
  }

  return result;
}

unint64_t sub_1000217C8()
{
  result = qword_1001735D0;
  if (!qword_1001735D0)
  {
    type metadata accessor for AccessibilityAttachmentModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001735D0);
  }

  return result;
}

unint64_t sub_100021820()
{
  result = qword_1001735D8;
  if (!qword_1001735D8)
  {
    sub_100007CCC(&qword_1001735E0, &qword_100119690);
    sub_1000216B8();
    sub_1000217C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001735D8);
  }

  return result;
}

unint64_t sub_1000218AC()
{
  result = qword_1001735E8;
  if (!qword_1001735E8)
  {
    sub_100007CCC(&qword_1001735F0, &qword_100119698);
    sub_100021820();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001735E8);
  }

  return result;
}

unint64_t sub_100021938()
{
  result = qword_1001735F8;
  if (!qword_1001735F8)
  {
    sub_100007CCC(&qword_1001734E0, &qword_100119600);
    sub_1000199C8(&qword_100173600, &qword_100173608, &qword_1001196A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001735F8);
  }

  return result;
}

uint64_t sub_100021A10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoundedRectangle();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100021A84(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000077C8(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100021AEC()
{
  v0 = type metadata accessor for ImageResource();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v6)
  {
    return Image.init(uiImage:)();
  }

  type metadata accessor for AirDropSystemApertureIconView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  ImageResource.init(name:bundle:)();
  v5 = Image.init(_:)();

  return v5;
}

uint64_t sub_100021C28(uint64_t a1, uint64_t a2)
{
  if (a2 && a2 != 2)
  {
    if (a2 == 1)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    if (qword_1001721F8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100007D20(v2, qword_10017F2F0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Corner icon for apps on preview image is not yet implemented!", v5, 2u);
    }
  }

  return sub_100021AEC();
}

uint64_t sub_100021D8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 3)
  {
    return (v3 - 2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100021DF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_100021E40(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    result[1] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

unint64_t sub_100021E84()
{
  result = qword_100173648;
  if (!qword_100173648)
  {
    sub_100007CCC(&qword_100173650, qword_1001198F8);
    sub_1000210F0();
    sub_100021938();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173648);
  }

  return result;
}

uint64_t sub_100021F38()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100021FA4()
{
  v0 = type metadata accessor for AirDropUISettings();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  Published.init(initialValue:)();
  result = Published.init(initialValue:)();
  qword_10017F1D0 = v3;
  return result;
}

uint64_t sub_10002202C()
{
  v1 = OBJC_IVAR____TtC9AirDropUI17AirDropUISettings__expandWhenCancelled;
  v2 = sub_1000077C8(&qword_100173728, qword_1001199F0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC9AirDropUI17AirDropUISettings__showsDebugBackgrounds, v2);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AirDropUISettings()
{
  result = qword_100173690;
  if (!qword_100173690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100022158()
{
  sub_1000221E8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1000221E8()
{
  if (!qword_1001736A0)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1001736A0);
    }
  }
}

uint64_t sub_100022244@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000222A4(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) == *(a2 + 8))
  {
    return *(a1 + 16) ^ *(a2 + 16) ^ 1u;
  }

  return 0;
}

double sub_1000222E0@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t sub_100022364(double *a1, double *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return static EdgeInsets.== infix(_:_:)(a1[2], a1[3], a1[4], a1[5], a2[2], a2[3], a2[4], a2[5]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100022394()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10002240C()
{
  v1 = OBJC_IVAR____TtC9AirDropUI25SystemApertureLayoutState__metrics;
  v2 = sub_1000077C8(&qword_100173870, &qword_100119B88);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9AirDropUI25SystemApertureLayoutState__context;
  v4 = sub_1000077C8(&qword_100173878, &qword_100119B90);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SystemApertureLayoutState()
{
  result = qword_100173768;
  if (!qword_100173768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100022554()
{
  sub_10002263C(319, &qword_100173778);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10002263C(319, &unk_100173780);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10002263C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Published();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for SystemApertureLayoutState.Context(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SystemApertureLayoutState.Context(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100022730(uint64_t a1, int a2)
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

uint64_t sub_100022750(uint64_t result, int a2, int a3)
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

uint64_t sub_100022798@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SystemApertureLayoutState();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000227F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a1;
  v49 = a2;
  v3 = sub_1000077C8(&qword_100173880, &qword_100119DC0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v42 - v5;
  v7 = sub_1000077C8(&qword_100173888, &qword_100119DC8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v42 - v9;
  v11 = sub_1000077C8(&qword_100173890, &qword_100119DD0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v42 - v14;
  v16 = *v2;
  v17 = *(v2 + 8);
  v18 = sub_1000614C4(*v2, v17);
  v48 = v11;
  if ((v18 & 1) == 0)
  {
    v50 = *(v2 + 16);
    v51 = *(v2 + 24);
    v55 = *(v2 + 32);
    v45 = *(v2 + 56);
    v25 = swift_allocObject();
    v26 = *(v2 + 16);
    v25[1] = *v2;
    v25[2] = v26;
    v27 = *(v2 + 48);
    v25[3] = *(v2 + 32);
    v25[4] = v27;
    v28 = sub_1000077C8(&qword_100173898, &qword_100119DD8);
    (*(*(v28 - 8) + 16))(v6, v47, v28);
    v29 = &v6[*(v3 + 36)];
    *v29 = 0;
    *(v29 + 1) = 0;
    *(v29 + 2) = sub_100023CD4;
    *(v29 + 3) = v25;
    sub_100007BA4(v6, v10, &qword_100173880, &qword_100119DC0);
    swift_storeEnumTagMultiPayload();
    sub_100023CFC(v16, v17);
    sub_100007BA4(&v50, &v52, &qword_1001738A0, &qword_100119DE0);
    sub_100007BA4(&v55, &v52, &qword_1001738A8, &qword_100119DE8);
    v30 = sub_1000199C8(&qword_1001738B0, &qword_100173898, &qword_100119DD8);
    v31 = sub_100023D08();

    *&v52 = v28;
    *(&v52 + 1) = &type metadata for SystemApertureLayoutState.Context;
    v53 = v30;
    v54 = v31;
    swift_getOpaqueTypeConformance2();
    sub_100023D5C();
    _ConditionalContent<>.init(storage:)();
    return sub_1000159AC(v6, &qword_100173880, &qword_100119DC0);
  }

  v44 = v12;
  v45 = v7;
  v19 = *(v2 + 16);
  v20 = *(v2 + 24);
  v21 = *(v2 + 32);
  v43 = *(v2 + 40);
  v22 = sub_1000614C4(v19, v20 & 1);
  v46 = v3;
  if (v22)
  {
    if (!v21)
    {
      type metadata accessor for SystemApertureLayoutState();
      sub_100023EAC();
      result = EnvironmentObject.error()();
      __break(1u);
      return result;
    }

    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v23 = v52;
    v24 = v53;
  }

  else
  {
    v24 = 0;
    v23 = 0uLL;
  }

  v52 = v23;
  LOBYTE(v53) = v24;
  *&v55 = v21;
  *(&v55 + 1) = v43;
  v33 = *(v2 + 56);
  v34 = swift_allocObject();
  v35 = *(v2 + 16);
  v34[1] = *v2;
  v34[2] = v35;
  v36 = *(v2 + 48);
  v34[3] = *(v2 + 32);
  v34[4] = v36;
  sub_100023CFC(v16, v17);
  sub_100023CFC(v19, v20 & 1);
  sub_100007BA4(&v55, &v50, &qword_1001738A8, &qword_100119DE8);

  v37 = sub_1000077C8(&qword_100173898, &qword_100119DD8);
  v38 = sub_1000199C8(&qword_1001738B0, &qword_100173898, &qword_100119DD8);
  v39 = sub_100023D08();
  View.onChange<A>(of:initial:_:)();

  v40 = v44;
  v41 = v48;
  (*(v44 + 16))(v10, v15, v48);
  swift_storeEnumTagMultiPayload();
  *&v52 = v37;
  *(&v52 + 1) = &type metadata for SystemApertureLayoutState.Context;
  v53 = v38;
  v54 = v39;
  swift_getOpaqueTypeConformance2();
  sub_100023D5C();
  _ConditionalContent<>.init(storage:)();
  return (*(v40 + 8))(v15, v41);
}

uint64_t sub_100022DC4(double a1, double a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  v10 = sub_1000077C8(&unk_100173930, qword_100119F90);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v21[-v12];
  v14 = type metadata accessor for LayoutSubview();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v21[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000F931C(v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_1000159AC(v13, &unk_100173930, qword_100119F90);
  }

  (*(v15 + 32))(v18, v13, v14);
  v21[24] = a4 & 1;
  v21[16] = a6 & 1;
  LayoutSubview.sizeThatFits(_:)();
  v20 = *(v6 + 8) - *(v6 + 16) + a2;
  static UnitPoint.topLeading.getter();
  v21[8] = 0;
  v21[0] = 0;
  LayoutSubview.place(at:anchor:proposal:)();
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_100022FF4(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v6 = sub_1000077C8(&unk_100173930, qword_100119F90);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v16[-v8];
  v10 = type metadata accessor for LayoutSubview();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v16[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000F931C(v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000159AC(v9, &unk_100173930, qword_100119F90);
  }

  (*(v11 + 32))(v14, v9, v10);
  v16[8] = a2 & 1;
  v16[0] = a4 & 1;
  LayoutSubview.sizeThatFits(_:)();
  return (*(v11 + 8))(v14, v10);
}

void (*sub_1000232AC(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return sub_100023334;
}

void sub_100023334(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_100023380(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = sub_1000077C8(&qword_1001738C8, &qword_100119DF0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = v22 - v10;
  v12 = sub_1000077C8(&qword_1001738D0, &qword_100119DF8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = v22 - v14;
  if (sub_1000614C4(a2, a3 & 1))
  {
    if (!a4)
    {
      type metadata accessor for SystemApertureLayoutState();
      sub_100023EAC();
      result = EnvironmentObject.error()();
      __break(1u);
      return result;
    }

    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (*v22 >= 1.0 && *(v22 + 1) >= 1.0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v16 = v22[1];
      v17 = v22[2];
      *v15 = v22[0];
      *(v15 + 1) = v16;
      *(v15 + 2) = v17;
      v18 = *(v12 + 44);
      v19 = sub_1000077C8(&qword_1001738D8, &qword_100119E00);
      (*(*(v19 - 8) + 16))(&v15[v18], a1, v19);
      sub_100007BA4(v15, v11, &qword_1001738D0, &qword_100119DF8);
      swift_storeEnumTagMultiPayload();
      sub_100023F04();
      sub_1000199C8(&qword_1001738F8, &qword_1001738D8, &qword_100119E00);
      _ConditionalContent<>.init(storage:)();
      return sub_1000159AC(v15, &qword_1001738D0, &qword_100119DF8);
    }
  }

  v21 = sub_1000077C8(&qword_1001738D8, &qword_100119E00);
  (*(*(v21 - 8) + 16))(v11, a1, v21);
  swift_storeEnumTagMultiPayload();
  sub_100023F04();
  sub_1000199C8(&qword_1001738F8, &qword_1001738D8, &qword_100119E00);
  return _ConditionalContent<>.init(storage:)();
}

double sub_10002373C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_1000237C4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

id sub_100023848(void *a1)
{
  v2 = [a1 activeLayoutMode];
  result = [a1 view];
  if (result)
  {
    v4 = result;
    v5 = [result SBUISA_systemApertureObstructedAreaLayoutGuide];

    [v5 layoutFrame];
    v7 = v6;
    v9 = v8;

    if (v2 == 4)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v21[0] != v7 || v21[1] != v9)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v11 = static Published.subscript.modify();
        *v12 = v7;
        v12[1] = v9;
        v11(v21, 0);
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (*&v21[0] != v2)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v13 = static Published.subscript.modify();
      *v14 = v2;
      v13(v21, 0);

      v15 = [objc_msgSend(a1 "systemApertureElementContext")];
      result = swift_unknownObjectRelease();
      if (v15)
      {
        v16 = [v15 fromLayoutMode];
        swift_getKeyPath();
        swift_getKeyPath();
        v17 = static Published.subscript.modify();
        *(v18 + 8) = v16;
        v17(v21, 0);

        LOBYTE(v16) = [v15 isUserInitiated];
        swift_getKeyPath();
        swift_getKeyPath();
        v19 = static Published.subscript.modify();
        *(v20 + 16) = v16;
        v19(v21, 0);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_100023BC0(uint64_t a1, uint64_t a2)
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

uint64_t sub_100023BD4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_100023C1C(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

uint64_t sub_100023CC8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_100023CD4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  return v1();
}

uint64_t sub_100023CFC(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_100023D08()
{
  result = qword_1001738B8;
  if (!qword_1001738B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001738B8);
  }

  return result;
}

unint64_t sub_100023D5C()
{
  result = qword_1001738C0;
  if (!qword_1001738C0)
  {
    sub_100007CCC(&qword_100173880, &qword_100119DC0);
    sub_1000199C8(&qword_1001738B0, &qword_100173898, &qword_100119DD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001738C0);
  }

  return result;
}

uint64_t sub_100023E14()
{
  sub_100023CC8(*(v0 + 16), *(v0 + 24));
  sub_100023CC8(*(v0 + 32), *(v0 + 40));
  v1 = *(v0 + 48);

  v2 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100023E6C(uint64_t a1, uint64_t a2)
{
  if (*a2 == 3 && *(a2 + 16) != 0)
  {
    v4 = *(v2 + 64);
    v5 = *(v2 + 72);
    return v4();
  }

  return result;
}

unint64_t sub_100023EAC()
{
  result = qword_1001733A0;
  if (!qword_1001733A0)
  {
    type metadata accessor for SystemApertureLayoutState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001733A0);
  }

  return result;
}

unint64_t sub_100023F04()
{
  result = qword_1001738E0;
  if (!qword_1001738E0)
  {
    sub_100007CCC(&qword_1001738D0, &qword_100119DF8);
    sub_1000199C8(&qword_1001738E8, &qword_1001738F0, &qword_100119E08);
    sub_1000199C8(&qword_1001738F8, &qword_1001738D8, &qword_100119E00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001738E0);
  }

  return result;
}

uint64_t sub_100023FFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_10002405C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_1000240C4()
{
  result = qword_100173900;
  if (!qword_100173900)
  {
    sub_100007CCC(&qword_100173908, &qword_100119E80);
    sub_100007CCC(&qword_100173898, &qword_100119DD8);
    sub_1000199C8(&qword_1001738B0, &qword_100173898, &qword_100119DD8);
    sub_100023D08();
    swift_getOpaqueTypeConformance2();
    sub_100023D5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173900);
  }

  return result;
}

unint64_t sub_1000241D8()
{
  result = qword_100173910;
  if (!qword_100173910)
  {
    sub_100007CCC(&qword_100173918, qword_100119E88);
    sub_100023F04();
    sub_1000199C8(&qword_1001738F8, &qword_1001738D8, &qword_100119E00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173910);
  }

  return result;
}

unint64_t sub_100024294()
{
  result = qword_100173920;
  if (!qword_100173920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173920);
  }

  return result;
}

unint64_t sub_1000242EC()
{
  result = qword_100173928;
  if (!qword_100173928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173928);
  }

  return result;
}

uint64_t type metadata accessor for RemoteAlertSceneDelegate()
{
  result = qword_100173970;
  if (!qword_100173970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002467C()
{
  sub_100024718();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100024718()
{
  if (!qword_100173980)
  {
    type metadata accessor for SFRemoteAlertPresentationRequest();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100173980);
    }
  }
}

void sub_10002487C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SFRemoteAlertPresentationRequest();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100172210 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100007D20(v9, qword_10017F338);
  (*(v5 + 16))(v8, a1, v4);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = v1;
    v13 = v12;
    v14 = swift_slowAlloc();
    aBlock[0] = v14;
    *v13 = 136315138;
    v15 = SFRemoteAlertPresentationRequest.id.getter();
    v29 = a1;
    v17 = v16;
    (*(v5 + 8))(v8, v4);
    v18 = sub_10003E81C(v15, v17, aBlock);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "Presenting view controller in remote alert for request: %s", v13, 0xCu);
    sub_100007920(v14);

    v2 = v30;
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  v19 = [v2 view];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 window];

    if (v21)
    {
      v22 = SFRemoteAlertPresentationRequest.viewControllerToPresent.getter();
      v23 = SFRemoteAlertPresentationRequest.animated.getter();
      v24 = swift_allocObject();
      *(v24 + 16) = v21;
      aBlock[4] = sub_10002532C;
      aBlock[5] = v24;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100106B40;
      aBlock[3] = &unk_10015DC08;
      v25 = _Block_copy(aBlock);
      v26 = v21;

      [v2 presentViewController:v22 animated:v23 & 1 completion:v25];
      _Block_release(v25);
    }

    else
    {
      v22 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v22, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v22, v27, "Attempting to present without window", v28, 2u);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100024C50(void *a1)
{
  if (qword_100172210 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100007D20(v2, qword_10017F338);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v3;
    *v6 = v3;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, oslog, v4, "Keeping window: %@ alive until presented", v5, 0xCu);
    sub_1000159AC(v6, &qword_100172EB0, &qword_100119410);
  }
}

void sub_100024D9C(char a1, uint64_t a2, uint64_t a3)
{
  v7 = [v3 view];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 window];

    if (v9)
    {
      v10 = swift_allocObject();
      v10[2] = v9;
      v10[3] = a2;
      v10[4] = a3;
      v10[5] = v3;
      aBlock[4] = sub_1000253EC;
      aBlock[5] = v10;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100106B40;
      aBlock[3] = &unk_10015DC80;
      v11 = _Block_copy(aBlock);
      v12 = v9;
      sub_1000253F8(a2);
      v13 = v3;

      v18.receiver = v13;
      v18.super_class = type metadata accessor for RemoteAlertRootViewController();
      objc_msgSendSuper2(&v18, "dismissViewControllerAnimated:completion:", a1 & 1, v11);
      _Block_release(v11);
    }

    else
    {
      if (qword_100172210 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_100007D20(v14, qword_10017F338);
      oslog = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(oslog, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, oslog, v15, "Attempting to dismiss without window", v16, 2u);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100024FE0(void *a1, void (*a2)(void))
{
  if (a2)
  {
    a2();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong invalidate];

  if (qword_100172210 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100007D20(v4, qword_10017F338);
  v5 = a1;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v5;
    *v8 = v5;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v6, "Keeping window: %@ alive until dismissal ends", v7, 0xCu);
    sub_1000159AC(v8, &qword_100172EB0, &qword_100119410);
  }
}

id sub_100025280(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000252F4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100025334(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002534C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10002535C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002539C()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return _swift_deallocObject(v0, 48, 7);
}

void sub_1000253EC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_100024FE0(*(v0 + 16), *(v0 + 24));
}

uint64_t sub_1000253F8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_100025408()
{
  result = qword_100173A20;
  if (!qword_100173A20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100173A20);
  }

  return result;
}

unint64_t sub_100025454()
{
  result = qword_100173A28;
  if (!qword_100173A28)
  {
    sub_100025408();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173A28);
  }

  return result;
}

uint64_t sub_1000254AC(void (*a1)(void))
{
  a1();

  return _typeName(_:qualified:)();
}

void sub_1000254E8(void *a1)
{
  v3 = sub_1000077C8(&unk_100173A30, &qword_10011A018);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v74 - v8;
  v10 = type metadata accessor for SFRemoteAlertPresentationRequest();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v74 - v16;
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18)
  {
    v19 = v18;
    v20 = a1;
    v21 = [v19 configurationIdentifier];
    if (v21)
    {
      v22 = v21;
      v81 = v1;
      v82 = v20;
      v80 = v7;
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      type metadata accessor for AUIRemoteAlertPresentationManager();
      v26 = sub_100078F40();
      dispatch thunk of SFRemoteAlertPresentationManager.presentationRequest(for:)();

      if ((*(v11 + 48))(v9, 1, v10) == 1)
      {
        sub_1000159AC(v9, &unk_100173A30, &qword_10011A018);
        if (qword_100172210 != -1)
        {
          swift_once();
        }

        v27 = type metadata accessor for Logger();
        sub_100007D20(v27, qword_10017F338);

        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v83[0] = v31;
          *v30 = 136315138;
          v32 = sub_10003E81C(v23, v25, v83);

          *(v30 + 4) = v32;
          _os_log_impl(&_mh_execute_header, v28, v29, "Could not find a remote alert presentation request for ID: %s", v30, 0xCu);
          sub_100007920(v31);
        }

        else
        {
        }
      }

      else
      {

        v79 = *(v11 + 32);
        v79(v17, v9, v10);
        if (qword_100172210 != -1)
        {
          swift_once();
        }

        v47 = type metadata accessor for Logger();
        v48 = sub_100007D20(v47, qword_10017F338);
        (*(v11 + 16))(v15, v17, v10);
        v49 = v82;
        v78 = v48;
        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.default.getter();

        v52 = os_log_type_enabled(v50, v51);
        v82 = v49;
        if (v52)
        {
          v53 = swift_slowAlloc();
          v77 = v11 + 32;
          v54 = v53;
          v55 = swift_slowAlloc();
          v75 = v55;
          v76 = swift_slowAlloc();
          v83[0] = v76;
          *v54 = 138412546;
          *(v54 + 4) = v19;
          *v55 = v19;
          *(v54 + 12) = 2080;
          v56 = v49;
          v57 = SFRemoteAlertPresentationRequest.id.getter();
          v59 = v58;
          (*(v11 + 8))(v15, v10);
          v60 = sub_10003E81C(v57, v59, v83);

          *(v54 + 14) = v60;
          _os_log_impl(&_mh_execute_header, v50, v51, "Configuring remote alert scene: %@ for request with ID: %s", v54, 0x16u);
          sub_1000159AC(v75, &qword_100172EB0, &qword_100119410);

          sub_100007920(v76);
        }

        else
        {

          (*(v11 + 8))(v15, v10);
        }

        v61 = SFRemoteAlertPresentationRequest.contentOverlaysStatusBar.getter();
        v62 = v81;
        if (v61)
        {
          if ([v19 respondsToSelector:"setContentOverlaysStatusBar:animationSettings:"])
          {
            [v19 setContentOverlaysStatusBar:1 animationSettings:0];
          }

          else
          {
            v63 = Logger.logObject.getter();
            v64 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v63, v64))
            {
              v65 = swift_slowAlloc();
              *v65 = 0;
              _os_log_impl(&_mh_execute_header, v63, v64, "Wanted to set contentOverlaysStatusBar to true, but this version of SpringBoard does not support it.", v65, 2u);
            }

            v62 = v81;
          }
        }

        [v19 setAllowsAlertStacking:1];
        [v19 setOrientationChangedEventsDisabled:1];
        v66 = [objc_allocWithZone(type metadata accessor for SFSecureWindow()) initWithWindowScene:v19];
        v67 = type metadata accessor for RemoteAlertRootViewController();
        v68 = objc_allocWithZone(v67);
        swift_unknownObjectWeakInit();
        swift_unknownObjectWeakAssign();
        v84.receiver = v68;
        v84.super_class = v67;
        v69 = objc_msgSendSuper2(&v84, "initWithNibName:bundle:", 0, 0);
        v70 = v66;
        [v70 setRootViewController:v69];
        [v70 makeKeyAndVisible];

        v71 = *(v62 + OBJC_IVAR____TtC9AirDropUI24RemoteAlertSceneDelegate_window);
        *(v62 + OBJC_IVAR____TtC9AirDropUI24RemoteAlertSceneDelegate_window) = v70;

        v72 = v80;
        v79(v80, v17, v10);
        (*(v11 + 56))(v72, 0, 1, v10);
        v73 = OBJC_IVAR____TtC9AirDropUI24RemoteAlertSceneDelegate_presentationRequest;
        swift_beginAccess();
        sub_1000268D8(v72, v62 + v73);
        swift_endAccess();
      }

      return;
    }

    if (qword_100172210 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100007D20(v41, qword_10017F338);
    v42 = v20;
    v82 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v82, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138412290;
      *(v44 + 4) = v19;
      *v45 = v19;
      v42 = v42;
      _os_log_impl(&_mh_execute_header, v82, v43, "Could not find configuration identifier on remote alert scene: %@", v44, 0xCu);
      sub_1000159AC(v45, &qword_100172EB0, &qword_100119410);
    }
  }

  else
  {
    if (qword_100172210 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100007D20(v33, qword_10017F338);
    v34 = a1;
    v82 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v82, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v83[0] = v37;
      *v36 = 136315138;
      swift_getObjectType();
      v38 = _typeName(_:qualified:)();
      v40 = sub_10003E81C(v38, v39, v83);

      *(v36 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v82, v35, "Cannot configure scene, expected a remote alert scene but got a scene of type: %s", v36, 0xCu);
      sub_100007920(v37);

      return;
    }
  }

  v46 = v82;
}

void sub_100025EC4()
{
  v1 = v0;
  v2 = sub_1000077C8(&unk_100173A30, &qword_10011A018);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v21 - v4;
  v6 = type metadata accessor for SFRemoteAlertPresentationRequest();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100172210 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100007D20(v11, qword_10017F338);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "RemoteAlertSceneDelegate: sceneDidBecomeActive", v14, 2u);
  }

  v15 = *(v1 + OBJC_IVAR____TtC9AirDropUI24RemoteAlertSceneDelegate_window);
  if (v15)
  {
    v16 = [v15 rootViewController];
    if (v16)
    {
      v23 = v16;
      type metadata accessor for RemoteAlertRootViewController();
      v17 = swift_dynamicCastClass();
      if (v17)
      {
        v18 = [v17 presentedViewController];
        if (!v18)
        {
          v20 = OBJC_IVAR____TtC9AirDropUI24RemoteAlertSceneDelegate_presentationRequest;
          swift_beginAccess();
          sub_100026868(v1 + v20, v5);
          if ((*(v7 + 48))(v5, 1, v6) == 1)
          {

            sub_1000159AC(v5, &unk_100173A30, &qword_10011A018);
          }

          else
          {
            (*(v7 + 32))(v10, v5, v6);
            sub_10002487C(v10);

            (*(v7 + 8))(v10, v6);
          }

          return;
        }

        v22 = v18;

        v19 = v22;
      }

      else
      {
        v19 = v23;
      }
    }
  }
}

void sub_1000261DC(const char *a1)
{
  if (qword_100172210 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100007D20(v2, qword_10017F338);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, a1, v4, 2u);
  }
}

void sub_1000262CC(void *a1, uint64_t a2)
{
  if (qword_100172210 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v4 = type metadata accessor for Logger();
    sub_100007D20(v4, qword_10017F338);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v41[0] = v8;
      *v7 = 136315138;
      sub_100025408();
      sub_100025454();
      v9 = Set.description.getter();
      v11 = sub_10003E81C(v9, v10, v41);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, "RemoteAlertSceneDelegate: handle buttonActions: %s", v7, 0xCu);
      sub_100007920(v8);
    }

    v12 = [a1 configurationIdentifier];
    if (!v12)
    {
      v22 = a1;
      oslog = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(oslog, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138412290;
        *(v24 + 4) = v22;
        *v25 = v22;
        v26 = v22;
        _os_log_impl(&_mh_execute_header, oslog, v23, "Could not find configuration identifier on remote alert scene: %@", v24, 0xCu);
        sub_1000159AC(v25, &qword_100172EB0, &qword_100119410);
      }

      goto LABEL_31;
    }

    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    type metadata accessor for AUIRemoteAlertPresentationManager();
    v17 = sub_100078F40();
    v18 = dispatch thunk of SFRemoteAlertPresentationManager.presentationHandle(for:)();

    if (!v18)
    {
      break;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      sub_100025408();
      sub_100025454();
      Set.Iterator.init(_cocoa:)();
      a2 = v41[0];
      v19 = v41[1];
      v20 = v41[2];
      v21 = v41[3];
      a1 = v41[4];
    }

    else
    {
      v31 = -1 << *(a2 + 32);
      v19 = a2 + 56;
      v20 = ~v31;
      v32 = -v31;
      if (v32 < 64)
      {
        v33 = ~(-1 << v32);
      }

      else
      {
        v33 = -1;
      }

      a1 = (v33 & *(a2 + 56));

      v21 = 0;
    }

    while (a2 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (sub_100025408(), swift_dynamicCast(), v38 = v40, v36 = v21, v37 = a1, !v40))
      {
LABEL_29:
        sub_100026860();

        return;
      }

LABEL_27:
      if ([v38 events] == 16)
      {
        dispatch thunk of SFRemoteAlertPresentationHandle.dismiss(animated:completion:)();
      }

      else
      {
        [v38 sendResponseWithUnHandledEvents:{objc_msgSend(v38, "events")}];
      }

      v21 = v36;
      a1 = v37;
    }

    v34 = v21;
    v35 = a1;
    v36 = v21;
    if (a1)
    {
LABEL_23:
      v37 = (v35 - 1) & v35;
      v38 = *(*(a2 + 48) + ((v36 << 9) | (8 * __clz(__rbit64(v35)))));
      if (!v38)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    }

    while (1)
    {
      v36 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v36 >= ((v20 + 64) >> 6))
      {
        goto LABEL_29;
      }

      v35 = *(v19 + 8 * v36);
      ++v34;
      if (v35)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_35:
    swift_once();
  }

  oslog = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v41[0] = v29;
    *v28 = 136315138;
    v30 = sub_10003E81C(v14, v16, v41);

    *(v28 + 4) = v30;
    _os_log_impl(&_mh_execute_header, oslog, v27, "Could not find a remote alert presentation request for ID: %s", v28, 0xCu);
    sub_100007920(v29);

    return;
  }

LABEL_31:
}

uint64_t sub_100026868(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000077C8(&unk_100173A30, &qword_10011A018);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000268D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000077C8(&unk_100173A30, &qword_10011A018);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100026950(uint64_t a1)
{
  v51 = type metadata accessor for UUID();
  v3 = *(v51 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v51);
  v50 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v49);
  v48 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = &_swiftEmptyArrayStorage;
  if (!v9)
  {
    return v10;
  }

  v40 = v1;
  v56 = &_swiftEmptyArrayStorage;
  sub_10000E474(0, v9, 0);
  v10 = v56;
  v11 = a1 + 64;
  v12 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v14 = result;
  v15 = 0;
  v45 = (v3 + 8);
  v46 = v6 + 16;
  v47 = v6;
  v43 = a1 + 64;
  v44 = v6 + 8;
  v41 = a1 + 72;
  v42 = v9;
  while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
  {
    v18 = v14 >> 6;
    if ((*(v11 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
    {
      goto LABEL_21;
    }

    v19 = *(a1 + 36);
    v52 = v15;
    v53 = v19;
    v20 = v47;
    v21 = *(a1 + 48) + *(v47 + 72) * v14;
    v22 = *(v47 + 16);
    v55 = v10;
    v24 = v48;
    v23 = v49;
    v22(v48, v21, v49);
    v25 = v50;
    SFAirDrop.TransferIdentifier.id.getter();
    v26 = UUID.uuidString.getter();
    v54 = v27;
    (*v45)(v25, v51);
    v28 = v24;
    v10 = v55;
    result = (*(v20 + 8))(v28, v23);
    v56 = v10;
    v30 = v10[2];
    v29 = v10[3];
    if (v30 >= v29 >> 1)
    {
      result = sub_10000E474((v29 > 1), v30 + 1, 1);
      v10 = v56;
    }

    v10[2] = v30 + 1;
    v31 = &v10[2 * v30];
    v32 = v54;
    v31[4] = v26;
    v31[5] = v32;
    v16 = 1 << *(a1 + 32);
    if (v14 >= v16)
    {
      goto LABEL_22;
    }

    v11 = v43;
    v33 = *(v43 + 8 * v18);
    if ((v33 & (1 << v14)) == 0)
    {
      goto LABEL_23;
    }

    if (v53 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v34 = v33 & (-2 << (v14 & 0x3F));
    if (v34)
    {
      v16 = __clz(__rbit64(v34)) | v14 & 0x7FFFFFFFFFFFFFC0;
      v17 = v42;
    }

    else
    {
      v35 = v18 << 6;
      v36 = v18 + 1;
      v17 = v42;
      v37 = (v41 + 8 * v18);
      while (v36 < (v16 + 63) >> 6)
      {
        v39 = *v37++;
        v38 = v39;
        v35 += 64;
        ++v36;
        if (v39)
        {
          result = sub_100047AC0(v14, v53, 0);
          v16 = __clz(__rbit64(v38)) + v35;
          goto LABEL_4;
        }
      }

      result = sub_100047AC0(v14, v53, 0);
    }

LABEL_4:
    v15 = v52 + 1;
    v14 = v16;
    if (v52 + 1 == v17)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_100026D10(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v3 = v24;
  if (v24)
  {
    if (*(v24 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_activity))
    {
      v4 = *(v24 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_activity);

      v5 = Activity.id.getter();
      v7 = v6;

      if (v5 == a1 && v7 == a2)
      {
LABEL_26:
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v9 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      return v3;
    }

LABEL_8:
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v11 = 0;
  v12 = 1 << *(v24 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v24 + 64);
  v15 = (v12 + 63) >> 6;
  while (v14)
  {
LABEL_17:
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v3 = *(*(v24 + 56) + ((v11 << 9) | (8 * v17)));
    if (*(v3 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_activity))
    {

      v18 = Activity.id.getter();
      v20 = v19;

      if (v18 == a1 && v20 == a2)
      {

        goto LABEL_26;
      }

      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v22)
      {

        return v3;
      }
    }
  }

  while (1)
  {
    v16 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v16 >= v15)
    {

      return 0;
    }

    v14 = *(v24 + 64 + 8 * v16);
    ++v11;
    if (v14)
    {
      v11 = v16;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100026F94()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100027008(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    sub_100041560(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = type metadata accessor for SFAirDrop.TransferIdentifier();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v24;
  }

  else
  {
    v10 = *v2;
    v11 = sub_10003EF38(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v25 = *v3;
      if (!v15)
      {
        sub_100041F3C();
        v16 = v25;
      }

      v17 = *(v16 + 48);
      v18 = type metadata accessor for SFAirDrop.TransferIdentifier();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);
      v21 = *(*(v16 + 56) + 8 * v13);

      sub_100040C24(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v22 = type metadata accessor for SFAirDrop.TransferIdentifier();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

uint64_t sub_1000271C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v2;
    sub_10004172C(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = type metadata accessor for UUID();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v23;
  }

  else
  {
    v10 = *v2;
    v11 = sub_10003EDEC(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v24 = *v3;
      if (!v15)
      {
        sub_1000421BC();
        v16 = v24;
      }

      v17 = *(v16 + 48);
      v18 = type metadata accessor for UUID();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);

      sub_100040F48(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v21 = type metadata accessor for UUID();
      v22 = *(*(v21 - 8) + 8);

      return v22(a2, v21);
    }
  }

  return result;
}

uint64_t sub_1000273B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  if (a1)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v4;
    sub_10004190C(a1, a2, isUniquelyReferenced_nonNull_native, a3, a4);
    v12 = type metadata accessor for UUID();
    result = (*(*(v12 - 8) + 8))(a2, v12);
    *v4 = v28;
  }

  else
  {
    v14 = *v4;
    v15 = sub_10003EDEC(a2);
    if (v16)
    {
      v17 = v15;
      v18 = *v7;
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v7;
      v29 = *v7;
      if (!v19)
      {
        sub_1000426C4(a3, a4);
        v20 = v29;
      }

      v21 = *(v20 + 48);
      v22 = type metadata accessor for UUID();
      v23 = *(v22 - 8);
      v24 = *(v23 + 8);
      v24(v21 + *(v23 + 72) * v17, v22);
      v25 = *(*(v20 + 56) + 8 * v17);

      sub_100040F48(v17, v20);
      result = (v24)(a2, v22);
      *v7 = v20;
    }

    else
    {
      v26 = type metadata accessor for UUID();
      v27 = *(*(v26 - 8) + 8);

      return v27(a2, v26);
    }
  }

  return result;
}

uint64_t sub_100027594()
{
  v0 = type metadata accessor for Logger();
  sub_1000154C0(v0, qword_100173A40);
  v1 = sub_100007D20(v0, qword_100173A40);
  if (qword_100172200 != -1)
  {
    swift_once();
  }

  v2 = sub_100007D20(v0, qword_10017F308);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10002765C()
{
  result = [objc_allocWithZone(type metadata accessor for AirDropTransferSessionsController()) init];
  qword_10017F1E0 = result;
  return result;
}

uint64_t sub_100027690@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_100027710(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return static Published.subscript.setter();
}

uint64_t sub_100027788()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

char *sub_1000277FC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v66 = &v62 - v4;
  v67 = type metadata accessor for SFAirDropClient.Identifier();
  v65 = *(v67 - 8);
  v5 = *(v65 + 64);
  __chkstk_darwin(v67);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000077C8(&qword_100173D98, &qword_10011A650);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v62 - v11;
  v13 = sub_1000077C8(&qword_100173DA0, &qword_10011A658);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v62 - v16;
  *&v1[OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_listener] = 0;
  *&v1[OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_connection] = 0;
  *&v1[OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_airDropClient] = 0;
  v18 = OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_nearbySharingInteractionCoordinator;
  if (qword_1001721F0 != -1)
  {
    swift_once();
  }

  v19 = qword_10017F2E8;
  *&v1[v18] = qword_10017F2E8;
  v64 = v18;
  v20 = OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController__airDropSessionsByID;
  v21 = v19;
  aBlock[0] = sub_1000A8368(&_swiftEmptyArrayStorage);
  sub_1000077C8(&qword_100173AF8, &qword_10011A080);
  Published.init(initialValue:)();
  (*(v14 + 32))(&v1[v20], v17, v13);
  v22 = OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController__bannerAirDropSession;
  aBlock[0] = 0;
  sub_1000077C8(&qword_100173B08, &unk_10011A088);
  Published.init(initialValue:)();
  (*(v9 + 32))(&v1[v22], v12, v8);
  *&v1[OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_transfersBeingEnded] = &_swiftEmptyArrayStorage;
  v23 = objc_allocWithZone(UNUserNotificationCenter);
  v24 = String._bridgeToObjectiveC()();
  v25 = [v23 initWithBundleIdentifier:v24];

  *&v1[OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_userNotificationsCenter] = v25;
  *&v1[OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_interventionTasks] = sub_1000A846C(&_swiftEmptyArrayStorage);
  type metadata accessor for SFAirDropClient();
  (*(v65 + 104))(v7, enum case for SFAirDropClient.Identifier.airdropUI(_:), v67);
  v26 = SFAirDropClient.__allocating_init(identifier:)();
  *&v1[OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_airdropClient] = v26;
  v27 = type metadata accessor for TaskPriority();
  v28 = *(*(v27 - 1) + 56);
  v29 = v66;
  v28(v66, 1, 1, v27);
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = v26;
  swift_retain_n();
  *&v1[OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_transfersMonitorTask] = sub_1000E1D14(0, 0, v29, &unk_10011A668, v30);
  v31 = *&v1[v64];
  v32 = *&v31[OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_airDropClient];
  *&v31[OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_airDropClient] = v26;
  swift_retain_n();
  v33 = v31;

  sub_1000952E4();

  v34 = type metadata accessor for SFLockStateMonitor();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_lockStateMonitor] = SFLockStateMonitor.init()();
  v37 = [objc_opt_self() sharedApplication];
  v38 = [v37 userInterfaceLayoutDirection];

  if ((v38 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v39 = objc_allocWithZone(type metadata accessor for SFUIContactIconProvider());
    *&v1[OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_contactIconProvider] = SFUIContactIconProvider.init(diameter:layoutDirection:)();
    v40 = [objc_opt_self() mainScreen];
    v41 = [v40 traitCollection];

    v42 = [v41 userInterfaceStyle];
    v43 = [objc_allocWithZone(SFUIPeopleSuggestionImageProvider) initWithTargetSize:v38 layoutDirection:v42 userInterfaceStyle:{1.0, 1.0}];
    *&v1[OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_appCornerIconProvider] = v43;
    v44 = ObjectType;
    v69.receiver = v1;
    v69.super_class = ObjectType;
    v45 = objc_msgSendSuper2(&v69, "init");
    v28(v29, 1, 1, v27);
    v46 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v47 = swift_allocObject();
    *(v47 + 16) = &unk_10011A678;
    *(v47 + 24) = v46;
    v48 = v45;
    static Task<>.noThrow(priority:operation:)();

    sub_1000159AC(v29, &qword_100172F50, &qword_10011E500);
    v49 = *&v48[OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_lockStateMonitor];
    sub_100047F70(&qword_100173DA8, type metadata accessor for AirDropTransferSessionsController);
    v29 = v48;

    dispatch thunk of SFLockStateMonitor.delegate.setter();

    v50 = OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_userNotificationsCenter;
    v51 = *&v29[OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_userNotificationsCenter];
    [v51 setDelegate:v29];

    v27 = &v62;
    __chkstk_darwin([*&v29[v50] setWantsNotificationResponsesDelivered]);
    *(&v62 - 2) = v29;
    *(&v62 - 1) = v44;
    v52 = swift_allocObject();
    *(v52 + 16) = sub_100047800;
    *(v52 + 24) = &v62 - 4;
    aBlock[4] = sub_100047588;
    aBlock[5] = v52;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10005A770;
    aBlock[3] = &unk_10015E088;
    v53 = _Block_copy(aBlock);
    v54 = objc_opt_self();

    v55 = [v54 listenerWithConfigurator:v53];
    _Block_release(v53);

    LOBYTE(v53) = swift_isEscapingClosureAtFileLocation();

    if ((v53 & 1) == 0)
    {
      v27 = OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_listener;
      v56 = *&v29[OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_listener];
      *&v29[OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_listener] = v55;

      if (qword_100172148 == -1)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_12:
  swift_once();
LABEL_6:
  v57 = type metadata accessor for Logger();
  sub_100007D20(v57, qword_100173A40);
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&_mh_execute_header, v58, v59, "AirDropTransferSessionsController listener is activating...", v60, 2u);
  }

  result = *(v27 + v29);
  if (result)
  {
    [result activate];
    sub_1000284BC();

    return v29;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000281C0(uint64_t a1)
{
  v3 = async function pointer to SFAirDropClient.registerTransfersMonitor()[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000BCF0;

  return SFAirDropClient.registerTransfersMonitor()(a1);
}

uint64_t sub_100028260(uint64_t a1)
{
  *(v1 + 40) = a1;
  type metadata accessor for MainActor();
  *(v1 + 48) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000282F8, v3, v2);
}

uint64_t sub_1000282F8()
{
  v2 = v0[5];
  v1 = v0[6];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (qword_100172250 != -1)
    {
      v11 = Strong;
      swift_once();
      Strong = v11;
    }

    v4 = qword_10017F390;
    v5 = *(Strong + OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_nearbySharingInteractionCoordinator);
    v6 = Strong;

    v7 = v5;

    v8 = *(v4 + 16);
    *(v4 + 16) = v7;
  }

  v9 = v0[1];

  return v9();
}

id sub_1000283FC(void *a1, uint64_t a2)
{
  v4 = String._bridgeToObjectiveC()();
  [a1 setDomain:v4];

  v5 = String._bridgeToObjectiveC()();
  [a1 setService:v5];

  return [a1 setDelegate:a2];
}

uint64_t sub_1000284BC()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  *(v7 + 16) = v0;
  *(v7 + 24) = ObjectType;
  v8 = v0;
  static Task<>.noThrow(priority:operation:)();

  return sub_1000159AC(v5, &qword_100172F50, &qword_10011E500);
}

uint64_t sub_10002861C(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000286B4, v3, v2);
}

uint64_t sub_1000286B4()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_100028718();
  v3 = v0[1];

  return v3();
}

void sub_100028718()
{
  v1 = v0;
  if (qword_100172250 != -1)
  {
    swift_once();
  }

  v2 = sub_1000F9F88();

  if (v2)
  {
    v3 = (v2 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
    v4 = *(v2 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);
    v46 = *(v2 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
    v47 = v4;

    v5._countAndFlagsBits = 45;
    v5._object = 0xE100000000000000;
    String.append(_:)(v5);
    v6._countAndFlagsBits = 0x732D72656E6E6162;
    v6._object = 0xEE006E6F69737365;
    String.append(_:)(v6);
    v8 = v46;
    v7 = v47;
    if (qword_100172148 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100007D20(v9, qword_100173A40);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v45 = v46;
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v46 = v13;
      *v12 = 136315138;
      v15 = *v3;
      v14 = v3[1];

      v16 = sub_10003E81C(v15, v14, &v46);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "Banner session updated for transfer %s", v12, 0xCu);
      sub_100007920(v13);

      v8 = v45;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (!v46)
    {
      v29 = *(qword_10017F390 + 32);
      v30 = type metadata accessor for AirDropTransferSession();
      v31 = *(v30 + 48);
      v32 = *(v30 + 52);
      swift_allocObject();

      v33 = sub_1000841B4(v2, v8, v7, v29);

      swift_getKeyPath();
      swift_getKeyPath();
      v46 = v33;
      v34 = v1;
      static Published.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v35 = v46;
      if (v46)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v37 = Strong;
          v38 = *(qword_10017F390 + 32);

          sub_100068D80(v35, v8, v7, v38, 1);
        }
      }

      v17 = Logger.logObject.getter();
      v43 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v17, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&_mh_execute_header, v17, v43, "Banner session newly created", v44, 2u);
      }

      goto LABEL_33;
    }

    if (sub_100081358(v2))
    {

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v17, v18))
      {
LABEL_26:

LABEL_33:

        return;
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = "Skipping update because session is the same";
    }

    else
    {
      v39 = swift_unknownObjectWeakLoadStrong();
      v40 = *(qword_10017F390 + 32);

      if (v39)
      {
        sub_100068D80(v2, v8, v7, v40, 0);
      }

      else
      {
        sub_10007E610(v2, v8, v7, v40);
      }

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v17, v18))
      {
        goto LABEL_26;
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = "Banner session update(with:) run";
    }

    _os_log_impl(&_mh_execute_header, v17, v18, v20, v19, 2u);

    goto LABEL_26;
  }

  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_100007D20(v21, qword_100173A40);
  v22 = v0;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v46 = v26;
    *v25 = 136315138;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v48)
    {

      v27 = 0xE700000000000000;
      v28 = 0x6465766F6D6572;
    }

    else
    {
      v27 = 0xE90000000000006ELL;
      v28 = 0x776F687320746F6ELL;
    }

    v41 = sub_10003E81C(v28, v27, &v46);

    *(v25 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v23, v24, "Banner session %s", v25, 0xCu);
    sub_100007920(v26);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v46 = 0;
  v42 = v22;
  static Published.subscript.setter();
}

uint64_t sub_100028E70(uint64_t a1, uint64_t a2)
{
  v2[25] = a2;
  v3 = type metadata accessor for SFAirDropSend.Transfer.State();
  v2[26] = v3;
  v4 = *(v3 - 8);
  v2[27] = v4;
  v5 = *(v4 + 64) + 15;
  v2[28] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDropSend.Request();
  v2[29] = v6;
  v7 = *(v6 - 8);
  v2[30] = v7;
  v8 = *(v7 + 64) + 15;
  v2[31] = swift_task_alloc();
  v9 = *(*(sub_1000077C8(&unk_100173C50, &qword_10011D9D0) - 8) + 64) + 15;
  v2[32] = swift_task_alloc();
  v10 = type metadata accessor for SFAirDrop.DisplayPriority();
  v2[33] = v10;
  v11 = *(v10 - 8);
  v2[34] = v11;
  v12 = *(v11 + 64) + 15;
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v13 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v2[37] = v13;
  v14 = *(v13 - 8);
  v2[38] = v14;
  v15 = *(v14 + 64) + 15;
  v2[39] = swift_task_alloc();
  v16 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v2[40] = v16;
  v17 = *(v16 - 8);
  v2[41] = v17;
  v18 = *(v17 + 64) + 15;
  v2[42] = swift_task_alloc();
  v19 = type metadata accessor for SFAirDrop.TransferType();
  v2[43] = v19;
  v20 = *(v19 - 8);
  v2[44] = v20;
  v21 = *(v20 + 64) + 15;
  v2[45] = swift_task_alloc();
  v22 = type metadata accessor for SFAirDropReceive.AskRequest();
  v2[46] = v22;
  v23 = *(v22 - 8);
  v2[47] = v23;
  v24 = *(v23 + 64) + 15;
  v2[48] = swift_task_alloc();
  v25 = type metadata accessor for SFAirDropSend.Transfer();
  v2[49] = v25;
  v26 = *(v25 - 8);
  v2[50] = v26;
  v27 = *(v26 + 64) + 15;
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v28 = type metadata accessor for SFAirDropClient.Identifier();
  v2[60] = v28;
  v29 = *(v28 - 8);
  v2[61] = v29;
  v30 = *(v29 + 64) + 15;
  v2[62] = swift_task_alloc();
  v2[63] = swift_task_alloc();
  v31 = type metadata accessor for SFAirDropReceive.Transfer();
  v2[64] = v31;
  v32 = *(v31 - 8);
  v2[65] = v32;
  v33 = *(v32 + 64) + 15;
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();
  v2[70] = swift_task_alloc();
  v2[71] = swift_task_alloc();
  v2[72] = swift_task_alloc();
  v2[73] = swift_task_alloc();
  v2[74] = swift_task_alloc();
  v34 = type metadata accessor for SFAirDrop.Transfers();
  v2[75] = v34;
  v35 = *(v34 - 8);
  v2[76] = v35;
  v36 = *(v35 + 64) + 15;
  v2[77] = swift_task_alloc();
  v37 = *(*(sub_1000077C8(&qword_100173E10, &qword_10011A6A0) - 8) + 64) + 15;
  v2[78] = swift_task_alloc();
  v38 = sub_1000077C8(&qword_100173D80, &qword_100120890);
  v2[79] = v38;
  v39 = *(v38 - 8);
  v2[80] = v39;
  v40 = *(v39 + 64) + 15;
  v2[81] = swift_task_alloc();
  v2[82] = type metadata accessor for MainActor();
  v2[83] = static MainActor.shared.getter();
  v42 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[84] = v42;
  v2[85] = v41;

  return _swift_task_switch(sub_1000294B4, v42, v41);
}

uint64_t sub_1000294B4()
{
  v1 = *(v0[25] + OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_transfersMonitorTask);
  v0[86] = v1;
  v2 = async function pointer to Task.value.getter[1];

  v3 = swift_task_alloc();
  v0[87] = v3;
  v4 = sub_1000077C8(&qword_100175E10, &unk_100118BB0);
  v0[88] = v4;
  *v3 = v0;
  v3[1] = sub_100029598;
  v5 = v0[81];
  v6 = v0[79];

  return Task.value.getter(v5, v1, v6, v4, &protocol self-conformance witness table for Error);
}

uint64_t sub_100029598()
{
  v2 = *v1;
  v3 = *(*v1 + 696);
  v9 = *v1;
  *(*v1 + 712) = v0;

  if (v0)
  {
    v4 = v2[86];

    v5 = v2[85];
    v6 = v2[84];
    v7 = sub_10002C844;
  }

  else
  {
    v5 = v2[85];
    v6 = v2[84];
    v7 = sub_1000296BC;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000296BC()
{
  v1 = *(v0 + 688);
  v2 = *(v0 + 648);
  v3 = *(v0 + 640);
  v4 = *(v0 + 632);

  v5 = SFXPCResilientAsyncSequence.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  *(v0 + 168) = v5;
  *(v0 + 720) = OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_transfersBeingEnded;
  *(v0 + 752) = enum case for SFAirDropClient.Identifier.airdropUI(_:);
  v6 = *(v0 + 656);
  *(v0 + 728) = static MainActor.shared.getter();
  v7 = sub_1000077C8(&qword_100173E18, &qword_10011A6A8);
  v8 = sub_1000199C8(&qword_100173E20, &qword_100173E18, &qword_10011A6A8);
  v9 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v10 = swift_task_alloc();
  *(v0 + 736) = v10;
  *v10 = v0;
  v10[1] = sub_10002981C;
  v11 = *(v0 + 624);

  return dispatch thunk of AsyncIteratorProtocol.next()(v11, v7, v8);
}

uint64_t sub_10002981C()
{
  v2 = *v1;
  v3 = *(*v1 + 736);
  v4 = *v1;
  *(*v1 + 744) = v0;

  v5 = *(v2 + 728);
  if (v0)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_10002C458;
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v10;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_1000299B4;
  }

  return _swift_task_switch(v9, v6, v8);
}

uint64_t sub_1000299B4()
{
  v1 = v0[91];

  v2 = v0[85];
  v3 = v0[84];

  return _swift_task_switch(sub_100029A1C, v3, v2);
}

uint64_t sub_100029A1C()
{
  v468 = v0;
  v1 = v0;
  v2 = *(v0 + 624);
  v3 = *(v0 + 608);
  v4 = *(v1 + 600);
  if ((*(v3 + 48))(v2, 1, v4) == 1)
  {
    v5 = *(v1 + 664);
    v6 = *(v1 + 168);

    if (qword_100172148 != -1)
    {
      goto LABEL_118;
    }

    goto LABEL_3;
  }

  (*(v3 + 32))(*(v1 + 616), v2, v4);
  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v367 = v1 + 152;
  v369 = v1 + 136;
  v24 = type metadata accessor for Logger();
  sub_100007D20(v24, qword_100173A40);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "AirDropTransferSessionController transfers CHANGED", v27, 2u);
  }

  v28 = *(v1 + 720);
  v29 = *(v1 + 616);
  v30 = *(v1 + 200);

  v31 = SFAirDrop.Transfers.receiveTransfers.getter();
  v423 = v31 + 64;
  v429 = v31;
  v32 = -1 << *(v31 + 32);
  if (-v32 < 64)
  {
    v33 = ~(-1 << -v32);
  }

  else
  {
    v33 = -1;
  }

  v459 = v33 & *(v31 + 64);
  swift_beginAccess();
  v34 = 0;
  v35 = (63 - v32) >> 6;
  v448 = *(v1 + 744);
  v466 = v1;
  v426 = v35;
  while (1)
  {
    v37 = v459;
    v454 = v25;
    if (!v459)
    {
      break;
    }

    v38 = v34;
LABEL_23:
    v460 = *(v1 + 752);
    v39 = *(v1 + 592);
    v40 = *(v1 + 584);
    v41 = *(v466 + 520);
    v42 = *(v466 + 512);
    v43 = *(v466 + 504);
    v44 = *(v466 + 496);
    v45 = *(v466 + 488);
    v46 = *(v466 + 480);
    v432 = v38;
    v435 = *(v41 + 16);
    v435(v39, *(v429 + 56) + *(v41 + 72) * (__clz(__rbit64(v37)) | (v38 << 6)), v42);
    (*(v41 + 32))(v40, v39, v42);
    v1 = v466;
    SFAirDropReceive.Transfer.presenter.getter();
    (*(v45 + 104))(v44, v460, v46);
    LOBYTE(v40) = static SFAirDropClient.Identifier.== infix(_:_:)();
    v47 = *(v45 + 8);
    v459 = (v37 - 1) & v37;
    v47(v44, v46);
    v47(v43, v46);
    v48 = *(v466 + 584);
    if (v40)
    {
      v50 = *(v466 + 376);
      v49 = *(v466 + 384);
      v52 = *(v466 + 360);
      v51 = *(v466 + 368);
      v53 = *(v466 + 344);
      v54 = *(v466 + 352);
      SFAirDropReceive.Transfer.askRequest.getter();
      SFAirDropReceive.AskRequest.type.getter();
      (*(v50 + 8))(v49, v51);
      v55 = SFAirDrop.TransferType.isOnlyExchange.getter();
      (*(v54 + 8))(v52, v53);
      if (v55)
      {
        v435(*(v466 + 552), *(v466 + 584), *(v466 + 512));
        v56 = Logger.logObject.getter();
        v57 = static os_log_type_t.default.getter();
        v58 = os_log_type_enabled(v56, v57);
        v59 = *(v466 + 584);
        v60 = *(v466 + 552);
        v61 = *(v466 + 520);
        v62 = *(v466 + 512);
        if (v58)
        {
          v436 = *(v466 + 584);
          v63 = *(v466 + 336);
          v64 = *(v466 + 328);
          v65 = *(v466 + 320);
          v66 = swift_slowAlloc();
          v414 = swift_slowAlloc();
          v467[0] = v414;
          *v66 = 136315138;
          v406 = v57;
          SFAirDropReceive.Transfer.id.getter();
          sub_100047F70(&qword_100173E28, &type metadata accessor for SFAirDrop.TransferIdentifier);
          v67 = dispatch thunk of CustomStringConvertible.description.getter();
          v69 = v68;
          (*(v64 + 8))(v63, v65);
          v1 = v466;
          v70 = *(v61 + 8);
          v70(v60, v62);
          v71 = sub_10003E81C(v67, v69, v467);

          *(v66 + 4) = v71;
          _os_log_impl(&_mh_execute_header, v56, v406, "AirDropTransferSessionController transfers skipped, transfer is of type onlyExchange, not monitoring on AirDropUI {id: %s}", v66, 0xCu);
          sub_100007920(v414);

          v70(v436, v62);
        }

        else
        {

          v120 = *(v61 + 8);
          v120(v60, v62);
          v120(v59, v62);
        }

        goto LABEL_17;
      }

      v94 = *(v466 + 584);
      v96 = *(v466 + 328);
      v95 = *(v466 + 336);
      v97 = *(v466 + 320);
      v98 = *(*(v466 + 200) + *(v466 + 720));

      SFAirDropReceive.Transfer.id.getter();
      v99 = SFAirDrop.TransferIdentifier.stringValue.getter();
      v101 = v100;
      v455 = *(v96 + 8);
      v455(v95, v97);
      *(v466 + 136) = v99;
      *(v466 + 144) = v101;
      v102 = swift_task_alloc();
      *(v102 + 16) = v369;
      LOBYTE(v95) = sub_1000882CC(sub_1000478B4, v102, v98);

      v103 = *(v466 + 584);
      if (v95)
      {
        v435(*(v466 + 560), *(v466 + 584), *(v466 + 512));
        v104 = Logger.logObject.getter();
        v105 = static os_log_type_t.default.getter();
        v106 = os_log_type_enabled(v104, v105);
        v107 = *(v466 + 584);
        v108 = *(v466 + 560);
        v109 = *(v466 + 520);
        v110 = *(v466 + 512);
        if (v106)
        {
          v408 = *(v466 + 512);
          v111 = *(v466 + 336);
          v437 = *(v466 + 584);
          v112 = *(v466 + 320);
          v113 = swift_slowAlloc();
          v114 = swift_slowAlloc();
          v467[0] = v114;
          *v113 = 136315138;
          loga = v105;
          SFAirDropReceive.Transfer.id.getter();
          sub_100047F70(&qword_100173E28, &type metadata accessor for SFAirDrop.TransferIdentifier);
          v115 = dispatch thunk of CustomStringConvertible.description.getter();
          v117 = v116;
          v455(v111, v112);
          v118 = *(v109 + 8);
          v118(v108, v408);
          v119 = sub_10003E81C(v115, v117, v467);

          *(v113 + 4) = v119;
          _os_log_impl(&_mh_execute_header, v104, loga, "AirDropTransferSessionController transfer update for %s skipped, this transfer is being ended to save live activity space", v113, 0xCu);
          sub_100007920(v114);

          v118(v437, v408);
        }

        else
        {

          v141 = *(v109 + 8);
          v141(v108, v110);
          v141(v107, v110);
        }

        v34 = v432;
        v25 = v448;
        v35 = v426;
      }

      else
      {
        v121 = *(v466 + 568);
        v122 = *(v466 + 512);
        v435(*(v466 + 576), *(v466 + 584), v122);
        v435(v121, v103, v122);
        v123 = Logger.logObject.getter();
        v124 = static os_log_type_t.debug.getter();
        v125 = os_log_type_enabled(v123, v124);
        v126 = *(v466 + 576);
        v127 = *(v466 + 568);
        v128 = *(v466 + 520);
        v129 = *(v466 + 512);
        if (v125)
        {
          logb = v124;
          v130 = *(v466 + 336);
          v131 = *(v466 + 320);
          v384 = *(v466 + 304);
          v374 = *(v466 + 312);
          v379 = *(v466 + 296);
          v366 = swift_slowAlloc();
          v390 = v123;
          v467[0] = swift_slowAlloc();
          *v366 = 136315394;
          SFAirDropReceive.Transfer.id.getter();
          sub_100047F70(&qword_100173E28, &type metadata accessor for SFAirDrop.TransferIdentifier);
          v132 = dispatch thunk of CustomStringConvertible.description.getter();
          v133 = v127;
          v135 = v134;
          v455(v130, v131);
          v409 = *(v128 + 8);
          v409(v126, v129);
          v136 = sub_10003E81C(v132, v135, v467);

          *(v366 + 4) = v136;
          *(v366 + 12) = 2080;
          SFAirDropReceive.Transfer.state.getter();
          sub_100047F70(&qword_100173D78, &type metadata accessor for SFAirDropReceive.Transfer.State);
          v137 = dispatch thunk of CustomStringConvertible.description.getter();
          v139 = v138;
          (*(v384 + 8))(v374, v379);
          v409(v133, v129);
          v140 = sub_10003E81C(v137, v139, v467);

          *(v366 + 14) = v140;
          _os_log_impl(&_mh_execute_header, v390, logb, "AirDropTransferSessionController receive transfer {id: %s, state: %s}", v366, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          v142 = *(v128 + 8);
          v142(v127, v129);
          v409 = v142;
          v142(v126, v129);
        }

        v143 = *(v466 + 200);
        v144 = sub_10002CBA0(*(v466 + 584), 0, 0);
        v25 = v448;
        v145 = *(v466 + 584);
        v146 = *(v466 + 512);
        if (!v448)
        {
          v163 = *(v466 + 520);
          v164 = *(v466 + 312);
          v165 = *(v466 + 304);
          v166 = *(v466 + 296);
          v167 = *(v466 + 288);
          v168 = *(v466 + 280);
          v169 = *(v466 + 272);
          v416 = *(v466 + 264);
          v439 = *(v466 + 256);
          v454 = 0;
          v170 = v144;
          SFAirDropReceive.Transfer.state.getter();
          sub_10007BEA8(v164);
          (*(v165 + 8))(v164, v166);
          v1 = v466;
          SFAirDropReceive.Transfer.displayPriority.getter();
          swift_getKeyPath();
          swift_getKeyPath();
          (*(v169 + 16))(v168, v167, v416);

          static Published.subscript.setter();
          (*(v169 + 8))(v167, v416);
          SFAirDropReceive.Transfer.cancelAction.getter();
          v409(v145, v146);
          v171 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_cancelAction;
          swift_beginAccess();
          sub_1000478DC(v439, v170 + v171, &unk_100173C50, &qword_10011D9D0);
          swift_endAccess();

          v448 = 0;
          goto LABEL_17;
        }

        v435(*(v466 + 528), *(v466 + 584), *(v466 + 512));
        swift_errorRetain();
        v147 = Logger.logObject.getter();
        v148 = static os_log_type_t.error.getter();

        v149 = os_log_type_enabled(v147, v148);
        v150 = *(v466 + 584);
        v151 = *(v466 + 528);
        v152 = *(v466 + 520);
        v153 = *(v466 + 512);
        if (v149)
        {
          v396 = *(v466 + 512);
          v154 = *(v466 + 336);
          v155 = *(v466 + 320);
          v449 = *(v466 + 584);
          v156 = v25;
          v157 = swift_slowAlloc();
          logc = swift_slowAlloc();
          v438 = swift_slowAlloc();
          v467[0] = v438;
          *v157 = 136315394;
          SFAirDropReceive.Transfer.id.getter();
          sub_100047F70(&qword_100173E28, &type metadata accessor for SFAirDrop.TransferIdentifier);
          v158 = dispatch thunk of CustomStringConvertible.description.getter();
          v391 = v148;
          v160 = v159;
          v455(v154, v155);
          v409(v151, v396);
          v161 = sub_10003E81C(v158, v160, v467);

          *(v157 + 4) = v161;
          *(v157 + 12) = 2112;
          swift_errorRetain();
          v162 = _swift_stdlib_bridgeErrorToNSError();
          *(v157 + 14) = v162;
          logc->isa = v162;
          _os_log_impl(&_mh_execute_header, v147, v391, "Failed to update transfer %s: %@", v157, 0x16u);
          sub_1000159AC(logc, &qword_100172EB0, &qword_100119410);

          sub_100007920(v438);

          v409(v449, v396);
          v448 = 0;
          v34 = v432;
          v25 = v156;
        }

        else
        {

          v409(v151, v153);
          v409(v150, v153);
          v448 = 0;
          v34 = v432;
        }

        v35 = v426;
      }
    }

    else
    {
      v72 = *(v466 + 536);
      v73 = *(v466 + 512);
      v435(*(v466 + 544), *(v466 + 584), v73);
      v435(v72, v48, v73);
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.default.getter();
      v76 = os_log_type_enabled(v74, v75);
      v77 = *(v466 + 584);
      v78 = *(v466 + 544);
      v79 = *(v466 + 536);
      v80 = *(v466 + 520);
      v81 = *(v466 + 512);
      if (v76)
      {
        v389 = *(v466 + 504);
        v395 = *(v466 + 480);
        v378 = *(v466 + 512);
        v82 = *(v466 + 336);
        v83 = *(v466 + 328);
        v373 = *(v466 + 320);
        v383 = *(v466 + 536);
        v84 = swift_slowAlloc();
        v467[0] = swift_slowAlloc();
        *v84 = 136315394;
        v407 = v75;
        SFAirDropReceive.Transfer.id.getter();
        sub_100047F70(&qword_100173E28, &type metadata accessor for SFAirDrop.TransferIdentifier);
        v85 = dispatch thunk of CustomStringConvertible.description.getter();
        v415 = v77;
        v87 = v86;
        (*(v83 + 8))(v82, v373);
        v1 = v466;
        v88 = *(v80 + 8);
        v88(v78, v378);
        v89 = sub_10003E81C(v85, v87, v467);

        *(v84 + 4) = v89;
        *(v84 + 12) = 2080;
        SFAirDropReceive.Transfer.presenter.getter();
        sub_100047F70(&qword_100173E30, &type metadata accessor for SFAirDropClient.Identifier);
        v90 = dispatch thunk of CustomStringConvertible.description.getter();
        v92 = v91;
        v47(v389, v395);
        v88(v383, v378);
        v93 = sub_10003E81C(v90, v92, v467);

        *(v84 + 14) = v93;
        _os_log_impl(&_mh_execute_header, v74, v407, "AirDropTransferSessionController transfer update for %s skipped, presenter is %s", v84, 0x16u);
        swift_arrayDestroy();

        v88(v415, v378);
      }

      else
      {

        v36 = *(v80 + 8);
        v36(v79, v81);
        v36(v78, v81);
        v36(v77, v81);
      }

LABEL_17:
      v34 = v432;
      v25 = v454;
      v35 = v426;
    }
  }

  while (1)
  {
    v38 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_113;
    }

    if (v38 >= v35)
    {
      break;
    }

    v37 = *(v423 + 8 * v38);
    ++v34;
    if (v37)
    {
      goto LABEL_23;
    }
  }

  v172 = *(v1 + 720);
  v173 = *(v1 + 616);
  v174 = *(v1 + 200);

  v175 = SFAirDrop.Transfers.sendTransfers.getter();
  v176 = v175 + 64;
  v430 = v175;
  v177 = -1 << *(v175 + 32);
  if (-v177 < 64)
  {
    v178 = ~(-1 << -v177);
  }

  else
  {
    v178 = -1;
  }

  v461 = v178 & *(v175 + 64);
  swift_beginAccess();
  v179 = 0;
  v180 = (63 - v177) >> 6;
  v424 = v180;
  v427 = v176;
  v181 = v461;
  if (v461)
  {
    while (2)
    {
      v182 = v179;
LABEL_52:
      v462 = *(v1 + 752);
      v184 = *(v1 + 496);
      v183 = *(v1 + 504);
      v185 = *(v1 + 480);
      v186 = *(v1 + 488);
      v188 = *(v1 + 464);
      v187 = *(v1 + 472);
      v189 = *(v466 + 400);
      v190 = *(v466 + 392);
      v433 = v182;
      v440 = *(v189 + 16);
      v440(v187, *(v430 + 56) + *(v189 + 72) * (__clz(__rbit64(v181)) | (v182 << 6)), v190);
      (*(v189 + 32))(v188, v187, v190);
      v1 = v466;
      SFAirDropSend.Transfer.presenter.getter();
      (*(v186 + 104))(v184, v462, v185);
      LOBYTE(v188) = static SFAirDropClient.Identifier.== infix(_:_:)();
      v191 = *(v186 + 8);
      v463 = (v181 - 1) & v181;
      v191(v184, v185);
      v191(v183, v185);
      v192 = *(v466 + 464);
      if (v188)
      {
        v194 = *(v466 + 352);
        v193 = *(v466 + 360);
        v195 = *(v466 + 344);
        v197 = *(v466 + 240);
        v196 = *(v466 + 248);
        v198 = *(v466 + 232);
        SFAirDropSend.Transfer.sendRequest.getter();
        SFAirDropSend.Request.type.getter();
        (*(v197 + 8))(v196, v198);
        v199 = SFAirDrop.TransferType.isOnlyExchange.getter();
        (*(v194 + 8))(v193, v195);
        if (v199)
        {
          v440(*(v466 + 432), *(v466 + 464), *(v466 + 392));
          v200 = Logger.logObject.getter();
          v201 = static os_log_type_t.default.getter();
          v202 = os_log_type_enabled(v200, v201);
          v203 = *(v466 + 464);
          v204 = *(v466 + 432);
          v206 = *(v466 + 392);
          v205 = *(v466 + 400);
          if (v202)
          {
            v441 = *(v466 + 464);
            v207 = *(v466 + 336);
            v208 = *(v466 + 328);
            v209 = *(v466 + 320);
            v210 = swift_slowAlloc();
            v417 = swift_slowAlloc();
            v467[0] = v417;
            *v210 = 136315138;
            v410 = v201;
            SFAirDropSend.Transfer.id.getter();
            sub_100047F70(&qword_100173E28, &type metadata accessor for SFAirDrop.TransferIdentifier);
            v211 = dispatch thunk of CustomStringConvertible.description.getter();
            v213 = v212;
            (*(v208 + 8))(v207, v209);
            v1 = v466;
            v214 = *(v205 + 8);
            v214(v204, v206);
            v215 = sub_10003E81C(v211, v213, v467);

            *(v210 + 4) = v215;
            _os_log_impl(&_mh_execute_header, v200, v410, "AirDropTransferSessionController transfers skipped, transfer is of type onlyExchange, not monitoring on AirDropUI {id: %s}", v210, 0xCu);
            sub_100007920(v417);

            v214(v441, v206);
          }

          else
          {

            v266 = *(v205 + 8);
            v266(v204, v206);
            v266(v203, v206);
          }

          break;
        }

        v234 = *(v466 + 464);
        v236 = *(v466 + 328);
        v235 = *(v466 + 336);
        v237 = *(v466 + 320);
        v238 = *(*(v466 + 200) + *(v466 + 720));

        SFAirDropSend.Transfer.id.getter();
        v239 = SFAirDrop.TransferIdentifier.stringValue.getter();
        v241 = v240;
        v419 = *(v236 + 8);
        v419(v235, v237);
        *(v466 + 152) = v239;
        *(v466 + 160) = v241;
        v242 = swift_task_alloc();
        *(v242 + 16) = v367;
        LOBYTE(v235) = sub_1000882CC(sub_1000482CC, v242, v238);

        v243 = *(v466 + 464);
        if (v235)
        {
          v440(*(v466 + 440), *(v466 + 464), *(v466 + 392));
          v244 = Logger.logObject.getter();
          v245 = static os_log_type_t.default.getter();
          v246 = os_log_type_enabled(v244, v245);
          v247 = *(v466 + 464);
          v248 = *(v466 + 440);
          v249 = *(v466 + 392);
          v250 = *(v466 + 400);
          if (v246)
          {
            v443 = *(v466 + 392);
            v251 = *(v466 + 336);
            v456 = *(v466 + 464);
            v252 = *(v466 + 320);
            v253 = swift_slowAlloc();
            v254 = swift_slowAlloc();
            v467[0] = v254;
            *v253 = 136315138;
            v411 = v245;
            SFAirDropSend.Transfer.id.getter();
            sub_100047F70(&qword_100173E28, &type metadata accessor for SFAirDrop.TransferIdentifier);
            v255 = dispatch thunk of CustomStringConvertible.description.getter();
            v257 = v256;
            v419(v251, v252);
            v258 = *(v250 + 8);
            v258(v248, v443);
            v259 = sub_10003E81C(v255, v257, v467);

            *(v253 + 4) = v259;
            _os_log_impl(&_mh_execute_header, v244, v411, "AirDropTransferSessionController transfer update for %s skipped, this transfer is being ended to save live activity space", v253, 0xCu);
            sub_100007920(v254);

            v258(v456, v443);
          }

          else
          {

            v287 = *(v250 + 8);
            v287(v248, v249);
            v287(v247, v249);
          }

          v179 = v433;
LABEL_75:
          v180 = v424;
          v176 = v427;
          v181 = v463;
          if (!v463)
          {
            goto LABEL_49;
          }

          continue;
        }

        v267 = *(v466 + 448);
        v268 = *(v466 + 392);
        v440(*(v466 + 456), *(v466 + 464), v268);
        v440(v267, v243, v268);
        v269 = Logger.logObject.getter();
        v270 = static os_log_type_t.debug.getter();
        v271 = os_log_type_enabled(v269, v270);
        v272 = *(v466 + 448);
        v273 = *(v466 + 456);
        v274 = *(v466 + 392);
        v275 = *(v466 + 400);
        if (v271)
        {
          v376 = *(v466 + 448);
          v276 = *(v466 + 336);
          v277 = *(v466 + 320);
          bufa = *(v466 + 224);
          v386 = *(v466 + 208);
          v393 = *(v466 + 216);
          v278 = swift_slowAlloc();
          v467[0] = swift_slowAlloc();
          *v278 = 136315394;
          v398 = v269;
          SFAirDropSend.Transfer.id.getter();
          sub_100047F70(&qword_100173E28, &type metadata accessor for SFAirDrop.TransferIdentifier);
          v279 = dispatch thunk of CustomStringConvertible.description.getter();
          v381 = v270;
          v281 = v280;
          v419(v276, v277);
          v412 = *(v275 + 8);
          v412(v273, v274);
          v282 = sub_10003E81C(v279, v281, v467);

          *(v278 + 4) = v282;
          *(v278 + 12) = 2080;
          SFAirDropSend.Transfer.state.getter();
          sub_100047F70(&qword_100173E38, &type metadata accessor for SFAirDropSend.Transfer.State);
          v283 = dispatch thunk of CustomStringConvertible.description.getter();
          v285 = v284;
          (v393[1].isa)(bufa, v386);
          v412(v376, v274);
          v286 = sub_10003E81C(v283, v285, v467);

          *(v278 + 14) = v286;
          _os_log_impl(&_mh_execute_header, v398, v381, "AirDropTransferSessionController send transfer {id: %s, state: %s}", v278, 0x16u);
          swift_arrayDestroy();
        }

        else
        {

          v288 = *(v275 + 8);
          v288(v272, v274);
          v412 = v288;
          v288(v273, v274);
        }

        v289 = *(v466 + 200);
        sub_10002F48C(*(v466 + 464), 0, 0);
        v290 = *(v466 + 464);
        v291 = *(v466 + 392);
        if (v448)
        {
          v440(*(v466 + 408), v290, v291);
          swift_errorRetain();
          v292 = Logger.logObject.getter();
          v293 = static os_log_type_t.error.getter();

          v294 = os_log_type_enabled(v292, v293);
          v295 = *(v466 + 464);
          v297 = *(v466 + 400);
          v296 = *(v466 + 408);
          v298 = *(v466 + 392);
          if (v294)
          {
            v450 = *(v466 + 464);
            v299 = *(v466 + 336);
            v300 = *(v466 + 320);
            v301 = *(v466 + 392);
            v302 = swift_slowAlloc();
            v399 = swift_slowAlloc();
            v444 = swift_slowAlloc();
            v467[0] = v444;
            *v302 = 136315394;
            SFAirDropSend.Transfer.id.getter();
            sub_100047F70(&qword_100173E28, &type metadata accessor for SFAirDrop.TransferIdentifier);
            v303 = dispatch thunk of CustomStringConvertible.description.getter();
            v387 = v293;
            v305 = v304;
            v419(v299, v300);
            v412(v296, v301);
            v306 = sub_10003E81C(v303, v305, v467);

            *(v302 + 4) = v306;
            *(v302 + 12) = 2112;
            swift_errorRetain();
            v307 = _swift_stdlib_bridgeErrorToNSError();
            *(v302 + 14) = v307;
            v399->isa = v307;
            _os_log_impl(&_mh_execute_header, v292, v387, "Failed to update transfer %s: %@", v302, 0x16u);
            sub_1000159AC(v399, &qword_100172EB0, &qword_100119410);

            sub_100007920(v444);

            v412(v450, v301);
          }

          else
          {

            v412(v296, v298);
            v412(v295, v298);
          }
        }

        else
        {
          v309 = *(v466 + 280);
          v308 = *(v466 + 288);
          v310 = *(v466 + 272);
          v311 = *(v466 + 224);
          v312 = *(v466 + 216);
          v313 = *(v466 + 208);
          v445 = *(v466 + 264);
          v451 = *(v466 + 400) + 8;
          SFAirDropSend.Transfer.state.getter();
          sub_10007D528(v311);
          (*(v312 + 8))(v311, v313);
          v1 = v466;
          SFAirDropSend.Transfer.displayPriority.getter();
          swift_getKeyPath();
          swift_getKeyPath();
          (*(v310 + 16))(v309, v308, v445);
          static Published.subscript.setter();
          (*(v310 + 8))(v308, v445);
          v412(v290, v291);
        }

        v448 = 0;
      }

      else
      {
        v216 = *(v466 + 416);
        v217 = *(v466 + 392);
        v440(*(v466 + 424), *(v466 + 464), v217);
        v440(v216, v192, v217);
        v218 = Logger.logObject.getter();
        v219 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v218, v219))
        {
          v220 = *(v466 + 504);
          v418 = *(v466 + 464);
          v221 = *(v466 + 424);
          v385 = *(v466 + 416);
          v392 = *(v466 + 480);
          v442 = *(v466 + 400);
          v380 = *(v466 + 392);
          logd = v218;
          v222 = *(v466 + 336);
          v223 = *(v466 + 328);
          v224 = *(v466 + 320);
          v225 = swift_slowAlloc();
          v467[0] = swift_slowAlloc();
          *v225 = 136315394;
          v397 = v219;
          SFAirDropSend.Transfer.id.getter();
          sub_100047F70(&qword_100173E28, &type metadata accessor for SFAirDrop.TransferIdentifier);
          v226 = dispatch thunk of CustomStringConvertible.description.getter();
          v228 = v227;
          (*(v223 + 8))(v222, v224);
          v1 = v466;
          v375 = *(v442 + 8);
          v375(v221, v380);
          v229 = sub_10003E81C(v226, v228, v467);

          *(v225 + 4) = v229;
          *(v225 + 12) = 2080;
          SFAirDropSend.Transfer.presenter.getter();
          sub_100047F70(&qword_100173E30, &type metadata accessor for SFAirDropClient.Identifier);
          v230 = dispatch thunk of CustomStringConvertible.description.getter();
          v232 = v231;
          v191(v220, v392);
          v375(v385, v380);
          v233 = sub_10003E81C(v230, v232, v467);

          *(v225 + 14) = v233;
          _os_log_impl(&_mh_execute_header, logd, v397, "AirDropTransferSessionController transfer update for %s skipped, presenter is %s", v225, 0x16u);
          swift_arrayDestroy();

          v375(v418, v380);
        }

        else
        {
          v260 = *(v466 + 464);
          v262 = *(v466 + 416);
          v261 = *(v466 + 424);
          v264 = *(v466 + 392);
          v263 = *(v466 + 400);

          v265 = *(v263 + 8);
          v265(v262, v264);
          v265(v261, v264);
          v265(v260, v264);
        }
      }

      break;
    }

    v179 = v433;
    goto LABEL_75;
  }

LABEL_49:
  while (1)
  {
    v182 = v179 + 1;
    if (__OFADD__(v179, 1))
    {
      break;
    }

    if (v182 >= v180)
    {
      v314 = *(v1 + 616);
      v315 = *(v1 + 200);

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v316 = sub_100088378(*(v1 + 192));
      v317 = SFAirDrop.Transfers.receiveTransfers.getter();
      v318 = v448;
      v319 = sub_100026950(v317);

      v320 = sub_1000A613C(v319, v316);

      v321 = SFAirDrop.Transfers.sendTransfers.getter();
      v322 = sub_100026950(v321);

      v323 = sub_1000A613C(v322, v320);

      v324 = v323 + 7;
      v325 = -1;
      v326 = -1 << *(v323 + 32);
      if (-v326 < 64)
      {
        v325 = ~(-1 << -v326);
      }

      v327 = v325 & v323[7];
      v328 = (63 - v326) >> 6;
      v457 = v323;

      v329 = 0;
      v446 = v328;
      v452 = v323 + 7;
      while (v327)
      {
LABEL_86:
        v331 = (v457[6] + ((v329 << 10) | (16 * __clz(__rbit64(v327)))));
        v332 = *v331;
        v333 = v331[1];
        swift_bridgeObjectRetain_n();
        v334 = Logger.logObject.getter();
        v335 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v334, v335))
        {
          v336 = swift_slowAlloc();
          v337 = v333;
          v338 = swift_slowAlloc();
          v467[0] = v338;
          *v336 = 136315138;
          *(v336 + 4) = sub_10003E81C(v332, v337, v467);
          _os_log_impl(&_mh_execute_header, v334, v335, "AirDropTransferSessionController transfers removing %s", v336, 0xCu);
          sub_100007920(v338);
          v333 = v337;
        }

        v339 = *(v1 + 720);
        v340 = *(v1 + 200);
        sub_10002FCDC(v332, v333);
        swift_beginAccess();

        v341 = sub_100044D28((v340 + v339), v332, v333);
        if (v318)
        {

          return swift_endAccess();
        }

        v342 = v341;
        v343 = *(v1 + 720);
        v344 = *(v1 + 200);

        v345 = *(v344 + v343);
        v346 = *(v345 + 2);
        if (v346 < v342)
        {
          goto LABEL_115;
        }

        if (v342 < 0)
        {
          goto LABEL_116;
        }

        if (__OFADD__(v346, v342 - v346))
        {
          goto LABEL_117;
        }

        v347 = *(v1 + 720);
        v348 = *(v1 + 200);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v348 + v347) = v345;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v342 > *(v345 + 3) >> 1)
        {
          v350 = *(v466 + 720);
          v351 = *(v466 + 200);
          if (v346 <= v342)
          {
            v352 = v342;
          }

          else
          {
            v352 = v346;
          }

          v345 = sub_1000A59C4(isUniquelyReferenced_nonNull_native, v352, 1, v345);
          *(v351 + v350) = v345;
        }

        swift_arrayDestroy();
        v1 = v466;
        if (v346 != v342)
        {
          memmove(&v345[16 * v342 + 32], &v345[16 * v346 + 32], 16 * (*(v345 + 2) - v346));
          v353 = *(v345 + 2);
          v354 = __OFADD__(v353, v342 - v346);
          v355 = v353 - (v346 - v342);
          if (v354)
          {
            __break(1u);
LABEL_102:
            v356 = *(v1 + 200);

            sub_100028718();
            sub_1000077C8(&unk_100173E40, &qword_10011A6F8);
            v357 = static Activity.activities.getter();
            if (v357 >> 62)
            {
              v358 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v358 = *((v357 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (v358 > 8)
            {
              v359 = *(v1 + 200);
              sub_10003036C();
            }

            (*(*(v1 + 608) + 8))(*(v1 + 616), *(v1 + 600));
            v360 = *(v1 + 656);
            *(v1 + 728) = static MainActor.shared.getter();
            v361 = sub_1000077C8(&qword_100173E18, &qword_10011A6A8);
            v362 = sub_1000199C8(&qword_100173E20, &qword_100173E18, &qword_10011A6A8);
            v363 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
            v364 = swift_task_alloc();
            *(v1 + 736) = v364;
            *v364 = v1;
            v364[1] = sub_10002981C;
            v365 = *(v1 + 624);

            return dispatch thunk of AsyncIteratorProtocol.next()(v365, v361, v362);
          }

          *(v345 + 2) = v355;
        }

        v327 &= v327 - 1;
        *(*(v466 + 200) + *(v466 + 720)) = v345;
        swift_endAccess();

        v318 = 0;
        v328 = v446;
        v324 = v452;
      }

      while (1)
      {
        v330 = v329 + 1;
        if (__OFADD__(v329, 1))
        {
          goto LABEL_114;
        }

        if (v330 >= v328)
        {
          goto LABEL_102;
        }

        v327 = v324[v330];
        ++v329;
        if (v327)
        {
          v329 = v330;
          goto LABEL_86;
        }
      }
    }

    v181 = *(v176 + 8 * v182);
    ++v179;
    if (v181)
    {
      goto LABEL_52;
    }
  }

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
  swift_once();
LABEL_3:
  v7 = type metadata accessor for Logger();
  sub_100007D20(v7, qword_100173A40);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "AirDropTransferSessionController transfers ENDED", v10, 2u);
  }

  v11 = *(v1 + 648);
  v12 = *(v1 + 624);
  v13 = *(v1 + 616);
  v14 = v1;
  v15 = *(v1 + 592);
  v16 = v14[73];
  v17 = v14[72];
  v18 = v14[71];
  v19 = v14[70];
  v20 = v14[69];
  v21 = v14[68];
  v368 = v14[67];
  buf = v14[66];
  v372 = v14[63];
  v377 = v14[62];
  v382 = v14[59];
  v388 = v14[58];
  v394 = v14[57];
  log = v14[56];
  v405 = v14[55];
  v413 = v14[54];
  v420 = v14[53];
  v421 = v14[52];
  v422 = v14[51];
  v425 = v14[48];
  v428 = v14[45];
  v431 = v14[42];
  v434 = v14[39];
  v447 = v14[36];
  v453 = v14[35];
  v458 = v14[32];
  v464 = v14[31];
  v465 = v14[28];

  v22 = v14[1];

  return v22();
}

uint64_t sub_10002C458()
{
  v1 = v0[91];
  v2 = v0[88];
  v0[23] = v0[93];
  swift_willThrowTypedImpl();

  v3 = v0[85];
  v4 = v0[84];

  return _swift_task_switch(sub_10002C4E0, v4, v3);
}

uint64_t sub_10002C4E0()
{
  v50 = v0;
  v1 = v0[83];

  v2 = v0[21];

  v3 = v0[93];
  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100007D20(v4, qword_100173A40);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v49 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v10 = v0[2];
    v9 = v0[3];
    v11 = v0[4];
    v12 = Error.localizedDescription.getter();
    v14 = sub_10003E81C(v12, v13, &v49);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v5, v6, "AirDropTransferSessionController transfers FAILED {error: %s}", v7, 0xCu);
    sub_100007920(v8);
  }

  else
  {
  }

  v15 = v0[81];
  v16 = v0[78];
  v17 = v0[77];
  v18 = v0[74];
  v19 = v0[73];
  v20 = v0[72];
  v21 = v0[71];
  v22 = v0[70];
  v23 = v0[69];
  v24 = v0[68];
  v27 = v0[67];
  v28 = v0[66];
  v29 = v0[63];
  v30 = v0[62];
  v31 = v0[59];
  v32 = v0[58];
  v33 = v0[57];
  v34 = v0[56];
  v35 = v0[55];
  v36 = v0[54];
  v37 = v0[53];
  v38 = v0[52];
  v39 = v0[51];
  v40 = v0[48];
  v41 = v0[45];
  v42 = v0[42];
  v43 = v0[39];
  v44 = v0[36];
  v45 = v0[35];
  v46 = v0[32];
  v47 = v0[31];
  v48 = v0[28];

  v25 = v0[1];

  return v25();
}

uint64_t sub_10002C844()
{
  v49 = v0;
  v1 = v0[83];

  v2 = v0[89];
  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100007D20(v3, qword_100173A40);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v48 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v9 = v0[2];
    v8 = v0[3];
    v10 = v0[4];
    v11 = Error.localizedDescription.getter();
    v13 = sub_10003E81C(v11, v12, &v48);

    *(v6 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "AirDropTransferSessionController transfers FAILED {error: %s}", v6, 0xCu);
    sub_100007920(v7);
  }

  else
  {
  }

  v14 = v0[81];
  v15 = v0[78];
  v16 = v0[77];
  v17 = v0[74];
  v18 = v0[73];
  v19 = v0[72];
  v20 = v0[71];
  v21 = v0[70];
  v22 = v0[69];
  v23 = v0[68];
  v26 = v0[67];
  v27 = v0[66];
  v28 = v0[63];
  v29 = v0[62];
  v30 = v0[59];
  v31 = v0[58];
  v32 = v0[57];
  v33 = v0[56];
  v34 = v0[55];
  v35 = v0[54];
  v36 = v0[53];
  v37 = v0[52];
  v38 = v0[51];
  v39 = v0[48];
  v40 = v0[45];
  v41 = v0[42];
  v42 = v0[39];
  v43 = v0[36];
  v44 = v0[35];
  v45 = v0[32];
  v46 = v0[31];
  v47 = v0[28];

  v24 = v0[1];

  return v24();
}

uint64_t sub_10002CBA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v272 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType();
  v271 = *(v272 - 8);
  v6 = *(v271 + 64);
  v7 = __chkstk_darwin(v272);
  v269 = &v260[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v270 = &v260[-v9];
  v268 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v267 = *(v268 - 8);
  v10 = *(v267 + 64);
  __chkstk_darwin(v268);
  v266 = &v260[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v275 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext();
  v274 = *(v275 - 8);
  v12 = *(v274 + 64);
  __chkstk_darwin(v275);
  v273 = &v260[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1000077C8(&unk_100176550, &qword_10011E720);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v277 = &v260[-v16];
  v280 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v279 = *(v280 - 8);
  v17 = *(v279 + 64);
  v18 = __chkstk_darwin(v280);
  v263 = &v260[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v262 = v19;
  __chkstk_darwin(v18);
  v276 = &v260[-v20];
  v21 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v278 = &v260[-v23];
  v325 = type metadata accessor for SFAirDropSend.Transfer.State();
  v324 = *(v325 - 8);
  v24 = *(v324 + 64);
  __chkstk_darwin(v325);
  v281 = &v260[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v321 = sub_1000077C8(&qword_100173D40, &qword_10011B1C0);
  v304 = *(v321 - 1);
  v26 = v304[8];
  __chkstk_darwin(v321);
  v303 = &v260[-v27];
  v302 = sub_1000077C8(&qword_100173D48, &unk_10011A530);
  v301 = *(v302 - 8);
  v28 = *(v301 + 64);
  __chkstk_darwin(v302);
  v300 = &v260[-v29];
  v299 = sub_1000077C8(&qword_100173D50, &unk_10011D120);
  v30 = *(*(v299 - 8) + 64);
  v31 = __chkstk_darwin(v299);
  v295 = &v260[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v31);
  v294 = &v260[-v33];
  v323 = sub_1000077C8(&qword_100173D58, &unk_10011A540);
  v322 = *(v323 - 1);
  v34 = *(v322 + 64);
  __chkstk_darwin(v323);
  v293 = &v260[-v35];
  v292 = sub_1000077C8(&qword_100173D60, &qword_10011D3A0);
  v291 = *(v292 - 8);
  v36 = *(v291 + 64);
  __chkstk_darwin(v292);
  v290 = &v260[-v37];
  v317 = sub_1000077C8(&qword_100173728, qword_1001199F0);
  v334 = *(v317 - 8);
  v38 = *(v334 + 8);
  __chkstk_darwin(v317);
  v298 = &v260[-v39];
  v329 = type metadata accessor for SFAirDrop.DisplayPriority();
  v328 = *(v329 - 8);
  v40 = *(v328 + 64);
  v41 = __chkstk_darwin(v329);
  v308 = &v260[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = __chkstk_darwin(v41);
  v307 = &v260[-v44];
  __chkstk_darwin(v43);
  v336 = &v260[-v45];
  v327 = type metadata accessor for DeviceLockState();
  v326 = *(v327 - 8);
  v46 = *(v326 + 64);
  v47 = __chkstk_darwin(v327);
  v306 = &v260[-((v48 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v49 = __chkstk_darwin(v47);
  v305 = &v260[-v50];
  __chkstk_darwin(v49);
  v335 = &v260[-v51];
  v320 = sub_1000077C8(&qword_100172FD0, &qword_10011A210);
  v52 = *(*(v320 - 8) + 64);
  v53 = __chkstk_darwin(v320);
  v309 = &v260[-((v54 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v55 = __chkstk_darwin(v53);
  v319 = &v260[-v56];
  v57 = __chkstk_darwin(v55);
  v318 = &v260[-v58];
  __chkstk_darwin(v57);
  v339 = &v260[-v59];
  v345 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v337 = *(v345 - 1);
  v60 = v337[8];
  v61 = __chkstk_darwin(v345);
  v310 = &v260[-((v62 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v63 = __chkstk_darwin(v61);
  v297 = &v260[-v64];
  v65 = __chkstk_darwin(v63);
  v296 = &v260[-v66];
  v67 = __chkstk_darwin(v65);
  v69 = &v260[-v68];
  v70 = __chkstk_darwin(v67);
  v72 = &v260[-v71];
  __chkstk_darwin(v70);
  v338 = &v260[-v73];
  v312 = type metadata accessor for SFAirDropReceive.AskRequest();
  v311 = *(v312 - 8);
  v74 = *(v311 + 64);
  v75 = __chkstk_darwin(v312);
  v265 = &v260[-((v76 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v264 = v76;
  __chkstk_darwin(v75);
  v333 = &v260[-v77];
  v78 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v79 = *(v78 - 8);
  v80 = *(v79 + 64);
  __chkstk_darwin(v78);
  v82 = &v260[-((v81 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a3)
  {
    v332 = a2;
    v83 = a3;
  }

  else
  {
    SFAirDropReceive.Transfer.id.getter();
    v332 = SFAirDrop.TransferIdentifier.stringValue.getter();
    v84 = v82;
    v83 = v85;
    (*(v79 + 8))(v84, v78);
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v86 = v343;
  if (!v343[2] || (v87 = sub_10003EEC0(v332, v83), (v88 & 1) == 0))
  {

    SFAirDropReceive.Transfer.askRequest.getter();
    SFAirDropReceive.AskRequest.contactIdentifier.getter();
    v313 = v3;
    if (v91)
    {
    }

    else if ((SFAirDropReceive.AskRequest.senderIsMe.getter() & 1) == 0)
    {
      v261 = SFAirDropReceive.Transfer.isPreviewSensitive.getter();
LABEL_11:

      v288 = SFAirDropReceive.AskRequest.senderIsMe.getter();
      v287 = SFAirDropReceive.AskRequest.senderCompositeName.getter();
      v286 = v92;
      SFAirDropReceive.Transfer.state.getter();
      v282 = *(v324 + 56);
      v93 = v325;
      v282(v339, 1, 1, v325);
      SFAirDropReceive.Transfer.state.getter();
      v315 = COERCE_DOUBLE(SFAirDropReceive.Transfer.State.currentProgressCount.getter());
      v94 = v337 + 1;
      v95 = v337[1];
      v96 = v345;
      v95(v72);
      v330 = v95;
      v331 = v94;
      SFAirDropReceive.Transfer.state.getter();
      v314 = COERCE_DOUBLE(SFAirDropReceive.Transfer.State.totalProgressCount.getter());
      (v95)(v69, v96);
      v97 = *&v340[OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_lockStateMonitor];
      dispatch thunk of SFLockStateMonitor.lockState.getter();
      SFAirDropReceive.Transfer.displayPriority.getter();
      v289 = SFAirDropReceive.Transfer.isPreviewSensitive.getter();
      v98 = type metadata accessor for AirDropTransferSession();
      v99 = *(v98 + 48);
      v100 = *(v98 + 52);
      v101 = v83;
      v102 = swift_allocObject();
      Date.init()();
      v316 = v101;
      v103 = (v102 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_senderName);
      v284 = v103;
      *v103 = 0;
      v103[1] = 0;
      v104 = (v102 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_receiverName);
      v285 = (v102 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_receiverName);
      *v104 = 0;
      v104[1] = 0;
      v105 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_cancelAction;
      v106 = type metadata accessor for SFAirDrop.DeclineAction();
      (*(*(v106 - 8) + 56))(v102 + v105, 1, 1, v106);
      v107 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__transferAccepted;
      LOBYTE(v343) = 0;
      v108 = v298;
      Published.init(initialValue:)();
      v109 = *(v334 + 4);
      v334 += 32;
      v283 = v109;
      v109(v102 + v107, v108, v317);
      v110 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__localizedTransferDescription;
      v343 = 0;
      v344 = 0;
      sub_1000077C8(&qword_100172AA0, &unk_1001187F0);
      v111 = v290;
      Published.init(initialValue:)();
      (*(v291 + 32))(v102 + v110, v111, v292);
      v112 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__sendTransferState;
      v292 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__sendTransferState;
      v113 = v318;
      v282(v318, 1, 1, v93);
      v114 = v113;
      sub_100007BA4(v113, v319, &qword_100172FD0, &qword_10011A210);
      v115 = v293;
      Published.init(initialValue:)();
      sub_1000159AC(v114, &qword_100172FD0, &qword_10011A210);
      (*(v322 + 32))(v102 + v112, v115, v323);
      v116 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__permissionRequest;
      v117 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
      v118 = v294;
      (*(*(v117 - 8) + 56))(v294, 1, 1, v117);
      sub_100007BA4(v118, v295, &qword_100173D50, &unk_10011D120);
      v119 = v300;
      Published.init(initialValue:)();
      sub_1000159AC(v118, &qword_100173D50, &unk_10011D120);
      (*(v301 + 32))(v102 + v116, v119, v302);
      v120 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__previewImage;
      v343 = 0;
      v121 = sub_1000077C8(&qword_100173D68, &qword_10011A550);
      v122 = v303;
      v302 = v121;
      Published.init(initialValue:)();
      v123 = v304[4];
      v124 = v321;
      (v123)(v102 + v120, v122, v321);
      v304 = v123;
      v125 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__fallbackPreviewImage;
      v343 = 0;
      Published.init(initialValue:)();
      (v123)(v102 + v125, v122, v124);
      v126 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__shouldShowSensitiveImage;
      LOBYTE(v343) = 0;
      Published.init(initialValue:)();
      v127 = v317;
      v128 = v283;
      v283(v102 + v126, v108, v317);
      v129 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__shouldDisplayPreviewImage;
      LOBYTE(v343) = 1;
      Published.init(initialValue:)();
      v128(v102 + v129, v108, v127);
      v90 = v102;
      v130 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__contactImage;
      v343 = 0;
      Published.init(initialValue:)();
      v131 = v321;
      v132 = v304;
      (v304)(v102 + v130, v122, v321);
      v133 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__airdropIconImage;
      v343 = 0;
      Published.init(initialValue:)();
      v132(v102 + v133, v122, v131);
      *(v102 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_actions) = &_swiftEmptyArrayStorage;
      *(v102 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_completedURLs) = &_swiftEmptyArrayStorage;
      v317 = v102 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_delegate;
      *(v102 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_delegate + 8) = 0;
      swift_unknownObjectWeakInit();
      *(v102 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_sessionUpdateDelegate + 8) = 0;
      swift_unknownObjectWeakInit();
      *(v102 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_activity) = 0;
      v134 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferringStateStartTime;
      v135 = type metadata accessor for Date();
      v136 = *(*(v135 - 8) + 56);
      v136(v102 + v134, 1, 1, v135);
      v136(v102 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime, 1, 1, v135);
      v137 = (v102 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
      v138 = v316;
      *v137 = v332;
      v137[1] = v138;
      *(v102 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_isFromMe) = v288 & 1;
      v139 = v284;
      v140 = v284[1];
      v141 = v286;
      *v284 = v287;
      v139[1] = v141;

      v142 = v285;
      v143 = v285[1];
      *v285 = 0;
      v142[1] = 0;

      v144 = v337 + 2;
      v145 = v337[2];
      v146 = v296;
      v147 = v345;
      (v145)(v296, v338, v345);
      swift_beginAccess();
      v337 = v144;
      v321 = v145;
      (v145)(v297, v146, v147);
      Published.init(initialValue:)();
      v330(v146, v147);
      swift_endAccess();
      v148 = v318;
      sub_100007BA4(v339, v318, &qword_100172FD0, &qword_10011A210);
      v149 = v292;
      swift_beginAccess();
      (*(v322 + 8))(v102 + v149, v323);
      sub_100007BA4(v148, v319, &qword_100172FD0, &qword_10011A210);
      Published.init(initialValue:)();
      sub_1000159AC(v148, &qword_100172FD0, &qword_10011A210);
      swift_endAccess();
      swift_beginAccess();
      v341 = v315;
      Published.init(initialValue:)();
      swift_endAccess();
      swift_beginAccess();
      v341 = v314;
      Published.init(initialValue:)();
      swift_endAccess();
      swift_beginAccess();
      LOBYTE(v341) = v289 & 1;
      Published.init(initialValue:)();
      swift_endAccess();
      v150 = v326;
      v151 = *(v326 + 16);
      v152 = v305;
      v153 = v327;
      v151(v305, v335, v327);
      swift_beginAccess();
      v151(v306, v152, v153);
      Published.init(initialValue:)();
      v155 = *(v150 + 8);
      v154 = v150 + 8;
      v334 = v155;
      (v155)(v152, v153);
      swift_endAccess();
      v156 = [objc_opt_self() mainScreen];
      [v156 bounds];
      v158 = v157;
      v160 = v159;
      v162 = v161;
      v164 = v163;

      v346.origin.x = v158;
      v346.origin.y = v160;
      v346.size.width = v162;
      v346.size.height = v164;
      v165 = CGRectGetWidth(v346) + -24.0;
      swift_beginAccess();
      v341 = v165;
      Published.init(initialValue:)();
      swift_endAccess();
      v166 = v328;
      v167 = *(v328 + 16);
      v168 = v307;
      v169 = v329;
      v167(v307, v336, v329);
      swift_beginAccess();
      v167(v308, v168, v169);
      Published.init(initialValue:)();
      v171 = *(v166 + 8);
      v170 = v166 + 8;
      v323 = v171;
      (v171)(v168, v169);
      swift_endAccess();
      *(v317 + 8) = &off_10015DCA8;
      swift_unknownObjectWeakAssign();
      *(v90 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_systemApertureIsEnabled) = SBUIIsSystemApertureEnabled();
      v172 = COERCE_DOUBLE([objc_opt_self() progressWithTotalUnitCount:*&v314]);
      swift_beginAccess();
      v341 = v172;
      sub_1000165C4(0, &qword_100173D70, NSProgress_ptr);
      Published.init(initialValue:)();
      swift_endAccess();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v173 = v324;

      v174 = v343;
      [v343 setCompletedUnitCount:*&v315];

      v175 = v325;
      v176 = v309;
      sub_100007BA4(v339, v309, &qword_100172FD0, &qword_10011A210);
      if ((*(v173 + 48))(v176, 1, v175) == 1)
      {
        sub_1000159AC(v176, &qword_100172FD0, &qword_10011A210);
        v177 = v338;
        sub_10007C0CC(v338);
      }

      else
      {
        v178 = v281;
        (*(v173 + 32))(v281, v176, v175);
        sub_10007DABC(v178);
        (*(v173 + 8))(v178, v175);
        v177 = v338;
      }

      v179 = v310;
      v180 = v345;
      if (qword_1001721E0 != -1)
      {
        swift_once();
      }

      v181 = type metadata accessor for Logger();
      sub_100007D20(v181, qword_100175480);
      (v321)(v179, v177, v180);

      v182 = Logger.logObject.getter();
      v183 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v182, v183))
      {
        v184 = swift_slowAlloc();
        v343 = swift_slowAlloc();
        *v184 = 136315650;
        v186 = *(v90 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
        v185 = *(v90 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);

        v187 = sub_10003E81C(v186, v185, &v343);
        v326 = v154;
        v328 = v170;
        v188 = v187;

        *(v184 + 4) = v188;
        *(v184 + 12) = 2048;
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v189 = v341;
        [*&v341 fractionCompleted];
        v191 = v190;

        *(v184 + 14) = v191;
        *(v184 + 22) = 2080;
        sub_100047F70(&qword_100173D78, &type metadata accessor for SFAirDropReceive.Transfer.State);
        v192 = v345;
        v193 = dispatch thunk of CustomStringConvertible.description.getter();
        v195 = v194;
        v330(v179, v192);
        v196 = sub_10003E81C(v193, v195, &v343);

        *(v184 + 24) = v196;
        _os_log_impl(&_mh_execute_header, v182, v183, "Transfer session created for transfer %s with completed: %f, transferState: %s", v184, 0x20u);
        swift_arrayDestroy();
      }

      else
      {

        v330(v179, v180);
      }

      v197 = v313;
      v198 = v333;
      v199 = sub_10007B6A8(0, 0);
      if (v197)
      {

        (v323)(v336, v329);
        (v334)(v335, v327);
        sub_1000159AC(v339, &qword_100172FD0, &qword_10011A210);
        v330(v338, v345);
        (*(v311 + 8))(v198, v312);
        return v90;
      }

      v200 = v199;
      v313 = 0;
      (v323)(v336, v329);
      (v334)(v335, v327);
      sub_1000159AC(v339, &qword_100172FD0, &qword_10011A210);
      v330(v338, v345);
      v201 = *(v90 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_activity);
      *(v90 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_activity) = v200;

      v202 = SFAirDropReceive.AskRequest.previewImage.getter();
      if (v202)
      {
        v203 = v202;
        v204 = [objc_allocWithZone(UIImage) initWithCGImage:v202];
        swift_getKeyPath();
        swift_getKeyPath();
        v343 = v204;

        v205 = v204;
        static Published.subscript.setter();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v343) = v261 & 1;

      static Published.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      v206 = v316;

      v207 = v340;
      v208 = static Published.subscript.modify();
      v210 = v209;
      v211 = *v209;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v341 = *v210;
      *v210 = 0x8000000000000000;
      v213 = v332;
      sub_1000413E4(v90, v332, v206, isUniquelyReferenced_nonNull_native);

      *v210 = v341;
      v208(&v343, 0);

      v214 = SFAirDropReceive.AskRequest.contactIdentifier.getter();
      v216 = v278;
      if (v215)
      {
        v217 = v214;
        v218 = v215;
        v219 = type metadata accessor for TaskPriority();
        (*(*(v219 - 8) + 56))(v216, 1, 1, v219);
        v220 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v221 = swift_allocObject();
        v221[2] = v220;
        v221[3] = v217;
        v221[4] = v218;
        v221[5] = v213;
        v221[6] = v206;

        static Task<>.noThrow(priority:operation:)();

        sub_1000159AC(v216, &qword_100172F50, &qword_10011E500);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v343)
      {

        v222 = v207;
        v223 = v332;
        v224 = v316;
      }

      else
      {
        v225 = type metadata accessor for TaskPriority();
        (*(*(v225 - 8) + 56))(v216, 1, 1, v225);
        v226 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v227 = v311;
        v228 = v265;
        v229 = v312;
        (*(v311 + 16))(v265, v333, v312);
        v230 = (*(v227 + 80) + 24) & ~*(v227 + 80);
        v231 = (v264 + v230 + 7) & 0xFFFFFFFFFFFFFFF8;
        v232 = swift_allocObject();
        *(v232 + 16) = v226;
        (*(v227 + 32))(v232 + v230, v228, v229);
        v233 = (v232 + v231);
        v223 = v332;
        v224 = v316;
        *v233 = v332;
        v233[1] = v224;

        static Task<>.noThrow(priority:operation:)();

        sub_1000159AC(v216, &qword_100172F50, &qword_10011E500);
        v222 = v340;
      }

      v234 = type metadata accessor for TaskPriority();
      v235 = *(v234 - 8);
      v345 = *(v235 + 56);
      v339 = (v235 + 56);
      (v345)(v216, 1, 1, v234);
      v236 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v237 = swift_allocObject();
      v237[2] = v236;
      v237[3] = v223;
      v237[4] = v224;
      static Task<>.noThrow(priority:operation:)();

      sub_1000159AC(v216, &qword_100172F50, &qword_10011E500);
      v238 = *&v222[OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_nearbySharingInteractionCoordinator];
      v239 = v277;
      sub_100097458(v277);
      v240 = v279;
      v241 = v280;
      if ((*(v279 + 48))(v239, 1, v280) == 1)
      {
        (*(v311 + 8))(v333, v312);
        sub_1000159AC(v239, &unk_100176550, &qword_10011E720);
        return v90;
      }

      v242 = v276;
      v338 = *(v240 + 32);
      (v338)(v276, v239, v241);
      v243 = v266;
      SFAirDrop.NearbySharingInteraction.state.getter();
      v244 = v267;
      v245 = v268;
      if ((*(v267 + 88))(v243, v268) != enum case for SFAirDrop.NearbySharingInteraction.State.connected(_:))
      {
        (*(v240 + 8))(v242, v241);
        (*(v311 + 8))(v333, v312);
        (*(v244 + 8))(v243, v245);
        return v90;
      }

      (*(v244 + 96))(v243, v245);
      (*(v274 + 32))(v273, v243, v275);
      SFAirDrop.NearbySharingInteraction.ConnectionContext.type.getter();
      (*(v271 + 104))(v269, enum case for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.airDrop(_:), v272);
      sub_100047F70(&unk_100173E70, &type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v343 == *&v341 && v344 == v342)
      {
        v246 = *(v271 + 8);
        v247 = v272;
        v246(v269, v272);
        v246(v270, v247);
      }

      else
      {
        v248 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v249 = *(v271 + 8);
        v250 = v272;
        v249(v269, v272);
        v249(v270, v250);

        if ((v248 & 1) == 0)
        {
          (*(v274 + 8))(v273, v275);
          (*(v279 + 8))(v276, v280);
          goto LABEL_39;
        }
      }

      v251 = v278;
      (v345)(v278, 1, 1, v234);
      v252 = v279;
      v253 = v263;
      v254 = v280;
      (*(v279 + 16))(v263, v276, v280);
      v255 = (*(v252 + 80) + 40) & ~*(v252 + 80);
      v256 = swift_allocObject();
      v256[2] = 0;
      v256[3] = 0;
      v257 = v340;
      v256[4] = v340;
      (v338)(v256 + v255, v253, v254);
      v258 = v257;
      sub_1000E1D28(0, 0, v251, &unk_10011A7F8, v256);

      (*(v274 + 8))(v273, v275);
      (*(v252 + 8))(v276, v254);
LABEL_39:
      (*(v311 + 8))(v333, v312);
      return v90;
    }

    v261 = 1;
    goto LABEL_11;
  }

  v89 = v87;

  v90 = *(v86[7] + 8 * v89);

  return v90;
}

void *sub_10002F48C(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v84 = &v81 - v8;
  v9 = type metadata accessor for SFAirDropSend.Request();
  v85 = *(v9 - 8);
  v86 = v9;
  v10 = *(v85 + 64);
  v11 = __chkstk_darwin(v9);
  v82 = v12;
  v83 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v90 = &v81 - v13;
  v14 = type metadata accessor for SFAirDrop.DisplayPriority();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v94 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DeviceLockState();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v93 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for SFAirDropSend.Transfer.State();
  v20 = *(v91 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v91);
  v24 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v27 = &v81 - v26;
  __chkstk_darwin(v25);
  v92 = &v81 - v28;
  v29 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = &v81 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v34 = a2;
    v35 = a1;
    v96 = v34;
    v36 = a3;
  }

  else
  {
    v35 = a1;
    SFAirDropSend.Transfer.id.getter();
    v96 = SFAirDrop.TransferIdentifier.stringValue.getter();
    v38 = v37;
    (*(v30 + 8))(v33, v29);
    v36 = v38;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v39 = v98;
  if (v98[2] && (v40 = sub_10003EEC0(v96, v36), (v41 & 1) != 0))
  {
    v42 = v40;

    v43 = *(v39[7] + 8 * v42);
  }

  else
  {

    v44 = SFAirDropSend.Transfer.receiverName.getter();
    v88 = v45;
    v89 = v44;
    v46 = v92;
    SFAirDropSend.Transfer.state.getter();
    SFAirDropSend.Transfer.state.getter();
    v87 = SFAirDropSend.Transfer.State.currentProgressCount.getter();
    v47 = v36;
    v48 = *(v20 + 8);
    v49 = v91;
    v48(v27, v91);
    SFAirDropSend.Transfer.state.getter();
    v43 = SFAirDropSend.Transfer.State.totalProgressCount.getter();
    v48(v24, v49);
    v50 = v97;
    v51 = *&v97[OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_lockStateMonitor];
    v52 = v93;
    dispatch thunk of SFLockStateMonitor.lockState.getter();
    v53 = v94;
    SFAirDropSend.Transfer.displayPriority.getter();
    v54 = v50;
    v55 = v95;
    v56 = v96;
    v57 = sub_100085BD4(v96, v47, v89, v88, v46, v87, v43, v52, v53, v54, &off_10015DCA8);
    if (v55)
    {
    }

    else
    {
      v43 = v57;
      v95 = 0;
      v58 = v90;
      SFAirDropSend.Transfer.sendRequest.getter();
      v59 = sub_1000449C8();
      v93 = *(v85 + 8);
      v94 = (v85 + 8);
      (v93)(v58, v86);
      swift_getKeyPath();
      swift_getKeyPath();
      v98 = v59;

      static Published.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v98) = 1;

      static Published.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();

      v60 = static Published.subscript.modify();
      v92 = v35;
      v61 = v60;
      v62 = v47;
      v64 = v63;
      v65 = *v63;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v99 = *v64;
      *v64 = 0x8000000000000000;
      v96 = v56;
      sub_1000413E4(v43, v56, v62, isUniquelyReferenced_nonNull_native);
      v97 = v62;

      *v64 = v99;
      v61(&v98, 0);

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v67 = v98;
      if (v98)
      {
      }

      else
      {
        v68 = v90;
        SFAirDropSend.Transfer.sendRequest.getter();
        v69 = type metadata accessor for TaskPriority();
        v70 = v84;
        (*(*(v69 - 8) + 56))(v84, 1, 1, v69);
        v71 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v72 = v85;
        v73 = v86;
        v74 = v83;
        (*(v85 + 16))(v83, v68, v86);
        v75 = (*(v72 + 80) + 24) & ~*(v72 + 80);
        v76 = (v82 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
        v77 = swift_allocObject();
        *(v77 + 16) = v71;
        (*(v72 + 32))(v77 + v75, v74, v73);
        v78 = (v77 + v76);
        v79 = v97;
        *v78 = v96;
        v78[1] = v79;
        static Task<>.noThrow(priority:operation:)();

        sub_1000159AC(v70, &qword_100172F50, &qword_10011E500);
        (v93)(v90, v73);
      }
    }
  }

  return v43;
}

void sub_10002FCDC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1000077C8(&unk_100173C70, &qword_10011A2E8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v40 - v8;
  v10 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  v12 = __chkstk_darwin(v10);
  v42 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v40 - v14;
  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100007D20(v16, qword_100173A40);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  v19 = os_log_type_enabled(v17, v18);
  v43 = v15;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v45[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_10003E81C(a1, a2, v45);
    _os_log_impl(&_mh_execute_header, v17, v18, "End session for transfer identifier: %s.", v20, 0xCu);
    sub_100007920(v21);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v22 = v45[0];
  if (*(v45[0] + 16) && (v23 = sub_10003EEC0(a1, a2), (v24 & 1) != 0))
  {
    v41 = v10;
    v25 = *(*(v22 + 56) + 8 * v23);

    v40 = v25;
    sub_100080300();
    swift_getKeyPath();
    swift_getKeyPath();
    v26 = static Published.subscript.modify();
    sub_10003F508(a1, a2);

    v26(v45, 0);

    SFAirDrop.TransferIdentifier.init(_:)();
    v31 = v44;
    v32 = v41;
    (*(v44 + 56))(v9, 0, 1, v41);
    v33 = v43;
    (*(v31 + 32))(v43, v9, v32);
    v34 = OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_interventionTasks;
    swift_beginAccess();
    v35 = *(v3 + v34);
    if (*(v35 + 16) && (v36 = sub_10003EF38(v33), (v37 & 1) != 0))
    {
      v38 = *(*(v35 + 56) + 8 * v36);
      swift_endAccess();

      Task.cancel()();
    }

    else
    {
      swift_endAccess();
    }

    v39 = v42;
    (*(v31 + 16))(v42, v33, v32);
    swift_beginAccess();
    sub_100027008(0, v39);
    swift_endAccess();

    (*(v31 + 8))(v33, v32);
  }

  else
  {

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v45[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_10003E81C(a1, a2, v45);
      _os_log_impl(&_mh_execute_header, v27, v28, "AirDrop transfer session not active for ID: %s, returning", v29, 0xCu);
      sub_100007920(v30);
    }
  }
}

uint64_t sub_10003036C()
{
  v0 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v131 = v126 - v2;
  v130 = sub_1000077C8(&unk_100173C98, &unk_10011A300);
  v145 = *(v130 - 8);
  v3 = *(v145 + 64);
  v4 = __chkstk_darwin(v130);
  v128 = v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = v5;
  __chkstk_darwin(v4);
  v142 = v126 - v6;
  v7 = sub_1000077C8(&unk_100172F90, &qword_100118CE0);
  v144 = *(v7 - 8);
  v8 = *(v144 + 64);
  v9 = __chkstk_darwin(v7);
  v141 = v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v140 = v126 - v12;
  __chkstk_darwin(v11);
  KeyPath = (v126 - v13);
  v147 = sub_1000077C8(&qword_100173CA8, &unk_10011A310);
  v136 = *(v147 - 8);
  v15 = *(v136 + 64);
  __chkstk_darwin(v147);
  v17 = v126 - v16;
  v18 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = v126 - v21;
  v23 = sub_1000077C8(&unk_100174FA0, &qword_10011A700);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v158 = v126 - v25;
  v163 = type metadata accessor for Date();
  v26 = *(v163 - 8);
  v27 = v26[8];
  v28 = __chkstk_darwin(v163);
  v151 = v126 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v150 = (v126 - v30);
  v162 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v31 = *(v162 - 8);
  v32 = *(v31 + 64);
  v33 = __chkstk_darwin(v162);
  v159 = v126 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v36 = v126 - v35;
  if (qword_100172148 != -1)
  {
LABEL_85:
    swift_once();
  }

  v156 = v22;
  v157 = v18;
  v146 = v17;
  v139 = KeyPath;
  v133 = v7;
  v37 = type metadata accessor for Logger();
  sub_100007D20(v37, qword_100173A40);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v38, v39, "We have too many live activities. Transitioning oldest transfers in .waitingForOpenResponse state to completed successfully", v40, 2u);
  }

  KeyPath = swift_getKeyPath();
  v17 = swift_getKeyPath();
  static Published.subscript.getter();

  v41 = 0;
  v42 = v165;
  v7 = v165 + 64;
  v43 = *(v165 + 64);
  v164 = &_swiftEmptyArrayStorage;
  v44 = 1 << *(v165 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v22 = v45 & v43;
  v18 = (v44 + 63) >> 6;
  v161 = (v31 + 88);
  v160 = enum case for SFAirDropReceive.Transfer.State.waitingForOpenResponse(_:);
  v154 = (v31 + 96);
  v155 = (v31 + 8);
  v135 = v19;
  v152 = (v26 + 6);
  v153 = (v19 + 8);
  v148 = (v26 + 4);
  v138 = (v26 + 1);
  v149 = v165;
  v137 = v36;
  while (v22)
  {
    v19 = v41;
LABEL_13:
    v46 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v31 = *(v42[7] + ((v19 << 9) | (8 * v46)));
    swift_getKeyPath();
    v17 = swift_getKeyPath();

    static Published.subscript.getter();

    KeyPath = v162;
    v47 = (*v161)(v36, v162);
    if (v47 == v160)
    {
      (*v154)(v36, KeyPath);
      v48 = sub_1000077C8(&qword_100173078, &unk_100118F60);
      v49 = *&v36[v48[12]];

      v50 = *&v36[v48[16]];

      (*v153)(&v36[v48[20]], v157);
      v51 = type metadata accessor for SFAirDropReceive.ItemDestination();
      (*(*(v51 - 8) + 8))(v36, v51);
      v52 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime;
      swift_beginAccess();
      v53 = v31 + v52;
      KeyPath = v158;
      v17 = &unk_100174FA0;
      v26 = &qword_10011A700;
      sub_100007BA4(v53, v158, &unk_100174FA0, &qword_10011A700);
      if ((*v152)(KeyPath, 1, v163) == 1)
      {

        sub_1000159AC(KeyPath, &unk_100174FA0, &qword_10011A700);
        v41 = v19;
      }

      else
      {
        v54 = v163;
        v26 = v150;
        (*v148)(v150, KeyPath, v163);
        v17 = v151;
        static Date.now.getter();
        Date.timeIntervalSince(_:)();
        v56 = v55;
        KeyPath = *v138;
        (*v138)(v17, v54);
        (KeyPath)(v26, v54);
        if (v56 <= 7.0)
        {
        }

        else
        {
          KeyPath = &v164;
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v17 = *(v164 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        v41 = v19;
        v42 = v149;
        v36 = v137;
      }
    }

    else
    {

      (*v155)(v36, KeyPath);
      v41 = v19;
    }
  }

  while (1)
  {
    v19 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      __break(1u);
      goto LABEL_85;
    }

    if (v19 >= v18)
    {
      break;
    }

    v22 = *(v7 + 8 * v19);
    ++v41;
    if (v22)
    {
      goto LABEL_13;
    }
  }

  v164 = sub_1000446CC(v57);
  sub_100042A20(&v164);

  v58 = v164;
  v59 = v164 < 0 || (v164 & 0x4000000000000000) != 0;
  if (v59)
  {
    v124 = _CocoaArrayWrapper.endIndex.getter();
    if (_CocoaArrayWrapper.endIndex.getter() < 0)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    if (v124 >= 5)
    {
      v125 = 5;
    }

    else
    {
      v125 = v124;
    }

    if (v124 >= 0)
    {
      i = v125;
    }

    else
    {
      i = 5;
    }

    if (_CocoaArrayWrapper.endIndex.getter() >= i)
    {
      goto LABEL_28;
    }

LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v60 = *(v164 + 16);
  if (v60 >= 5)
  {
    i = 5;
  }

  else
  {
    i = *(v164 + 16);
  }

  if (v60 < i)
  {
    goto LABEL_94;
  }

LABEL_28:
  if ((v58 & 0xC000000000000001) != 0 && i)
  {
    type metadata accessor for AirDropTransferSession();

    _ArrayBuffer._typeCheckSlowPath(_:)(0);
    if (i != 1)
    {
      _ArrayBuffer._typeCheckSlowPath(_:)(1);
      if (i != 2)
      {
        _ArrayBuffer._typeCheckSlowPath(_:)(2);
        if (i != 3)
        {
          _ArrayBuffer._typeCheckSlowPath(_:)(3);
          if (i != 4)
          {
            _ArrayBuffer._typeCheckSlowPath(_:)(4);
            if (i != 5)
            {
              _ArrayBuffer._typeCheckSlowPath(_:)(5);
              _ArrayBuffer._typeCheckSlowPath(_:)(6);
            }
          }
        }
      }
    }
  }

  else
  {
  }

  if (v59)
  {
    v62 = _CocoaArrayWrapper.subscript.getter();
    v31 = v63;
    v65 = v64;
    i = v66;

    v58 = v62;
    if ((i & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v65 = 0;
    v31 = v58 + 32;
    i = (2 * i) | 1;
    if ((i & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v68 = swift_dynamicCastClass();
  if (!v68)
  {
    swift_unknownObjectRelease();
    v68 = &_swiftEmptyArrayStorage;
  }

  v69 = v68[2];

  if (__OFSUB__(i >> 1, v65))
  {
    goto LABEL_98;
  }

  if (v69 != (i >> 1) - v65)
  {
    goto LABEL_99;
  }

  i = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (i)
  {
    goto LABEL_49;
  }

  for (i = &_swiftEmptyArrayStorage; ; i = v67)
  {
    swift_unknownObjectRelease();
LABEL_49:
    LODWORD(v26) = i < 0 || (i & 0x4000000000000000) != 0;
    if (v26 == 1)
    {
LABEL_95:
      v65 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v65 = *(i + 16);
    }

    v70 = &_swiftEmptyArrayStorage;
    v163 = i;
    if (v65)
    {
      v164 = &_swiftEmptyArrayStorage;
      v58 = &v164;
      sub_10000E474(0, v65 & ~(v65 >> 63), 0);
      if (v65 < 0)
      {
        __break(1u);
        goto LABEL_97;
      }

      v71 = 0;
      v70 = v164;
      v72 = i & 0xC000000000000001;
      do
      {
        if (v72)
        {
          v73 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v73 = *(i + 8 * v71 + 32);
        }

        v74 = *(v73 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
        v75 = *(v73 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);

        v164 = v70;
        v77 = v70[2];
        v76 = v70[3];
        if (v77 >= v76 >> 1)
        {
          sub_10000E474((v76 > 1), v77 + 1, 1);
          v70 = v164;
        }

        ++v71;
        v70[2] = v77 + 1;
        v78 = &v70[2 * v77];
        v78[4] = v74;
        v78[5] = v75;
        i = v163;
      }

      while (v65 != v71);
    }

    v79 = OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_transfersBeingEnded;
    v58 = v143;
    swift_beginAccess();
    v80 = *(v58 + v79);
    *(v58 + v79) = v70;

    if (v26)
    {
      v81 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v81 = *(i + 16);
    }

    v31 = v133;
    v82 = v147;
    v83 = v146;
    if (!v81)
    {
    }

    if (v81 >= 1)
    {
      break;
    }

LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    swift_unknownObjectRelease_n();
LABEL_41:
    sub_10004293C(v58, v31, v65, i);
  }

  v84 = 0;
  v158 = i & 0xC000000000000001;
  v152 = (v135 + 32);
  v151 = (v136 + 88);
  LODWORD(v150) = enum case for SFAirDrop.PermissionRequest.Style.inline<A>(_:);
  v149 = (v136 + 8);
  v148 = (v136 + 96);
  v138 = (v144 + 16);
  v137 = (v144 + 32);
  v136 = v144 + 88;
  LODWORD(v135) = enum case for SFAirDrop.AcceptAction.single<A>(_:);
  v134 = (v144 + 8);
  v127 = (v144 + 96);
  v126[2] = v145 + 32;
  v126[1] = v145 + 16;
  v126[0] = v145 + 8;
  do
  {
    if (v158)
    {
      v85 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v85 = *(i + 8 * v84 + 32);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v86 = v159;
    static Published.subscript.getter();

    v87 = v162;
    v88 = (*v161)(v86, v162);
    if (v88 == v160)
    {
      (*v154)(v86, v87);
      v89 = sub_1000077C8(&qword_100173078, &unk_100118F60);
      v90 = *&v86[v89[12]];

      v91 = *&v86[v89[16]];

      v92 = &v86[v89[20]];
      v93 = v156;
      v94 = v157;
      (*v152)(v156, v92, v157);
      v95 = type metadata accessor for SFAirDropReceive.ItemDestination();
      (*(*(v95 - 8) + 8))(v86, v95);
      SFAirDrop.PermissionRequest.style.getter();
      v96 = (*v151)(v83, v82);
      if (v96 == v150)
      {
        (*v148)(v83, v82);
        v97 = *(v83 + 1);

        v98 = *(v83 + 3);

        v99 = *(v83 + 4);
        v100 = *(sub_1000077C8(&qword_100173CC0, qword_10011D010) + 80);
        v101 = type metadata accessor for SFAirDrop.DeclineAction();
        (*(*(v101 - 8) + 8))(&v83[v100], v101);
        if (*(v99 + 16))
        {
          v102 = v144;
          v103 = *(v144 + 16);
          v104 = v140;
          v103(v140, v99 + ((*(v144 + 80) + 32) & ~*(v144 + 80)), v31);

          v105 = v139;
          (*(v102 + 32))(v139, v104, v31);
          v106 = v141;
          v103(v141, v105, v31);
          v107 = (*(v102 + 88))(v106, v31);
          if (v107 == v135)
          {
            (*v127)(v106, v31);
            v108 = *(sub_1000077C8(&qword_100173CC8, &qword_10011A330) + 48);
            v132 = *(v145 + 32);
            v109 = v145;
            v110 = v142;
            v111 = v130;
            v132(v142, v106, v130);
            v112 = type metadata accessor for UUID();
            (*(*(v112 - 8) + 8))(&v106[v108], v112);
            v113 = type metadata accessor for TaskPriority();
            v114 = v131;
            (*(*(v113 - 8) + 56))(v131, 1, 1, v113);
            v115 = v109;
            v116 = *(v109 + 16);
            v117 = v128;
            v116(v128, v110, v111);
            v118 = (*(v115 + 80) + 16) & ~*(v115 + 80);
            v119 = swift_allocObject();
            v132((v119 + v118), v117, v111);
            static Task<>.noThrow(priority:operation:)();

            sub_1000159AC(v114, &qword_100172F50, &qword_10011E500);
            v120 = *(v85 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
            v121 = *(v85 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);

            sub_10002FCDC(v120, v121);

            v31 = v133;
            (*(v145 + 8))(v142, v111);
            (*v134)(v105, v31);
            (*v153)(v156, v157);
          }

          else
          {

            v122 = *v134;
            (*v134)(v105, v31);
            (*v153)(v156, v157);
            v122(v106, v31);
          }

          v82 = v147;
          v83 = v146;
          i = v163;
        }

        else
        {
          (*v153)(v156, v157);

          i = v163;
        }
      }

      else
      {
        (*v153)(v93, v94);

        (*v149)(v83, v82);
      }
    }

    else
    {

      (*v155)(v86, v87);
    }

    ++v84;
  }

  while (v81 != v84);
}

id sub_100031838()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AirDropTransferSessionsController()
{
  result = qword_100173AE0;
  if (!qword_100173AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100031A48()
{
  sub_100031B98(319, &qword_100173AF0, &qword_100173AF8, &qword_10011A080);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100031B98(319, &qword_100173B00, &qword_100173B08, &unk_10011A088);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_100031B98(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100007CCC(a3, a4);
    v5 = type metadata accessor for Published();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_100031BEC@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void sub_100031C2C(void *a1, uint64_t a2)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() interfaceWithIdentifier:v4];

  v6 = objc_opt_self();
  v7 = [v6 protocolForProtocol:&OBJC_PROTOCOL___SFAirDropUIServer];
  [v5 setServer:v7];

  v8 = [v6 protocolForProtocol:&OBJC_PROTOCOL___SFAirDropUIClient];
  [v5 setClient:v8];

  [v5 setClientMessagingExpectation:0];
  sub_1000165C4(0, &qword_100173D90, OS_dispatch_queue_ptr);
  v9 = static OS_dispatch_queue.main.getter();
  [a1 setTargetQueue:v9];

  v10 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality:v10];

  [a1 setInterface:v5];
  [a1 setInterfaceTarget:a2];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = sub_100047590;
  v21 = v11;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_100059234;
  v19 = &unk_10015DF70;
  v12 = _Block_copy(&v16);

  [a1 setActivationHandler:v12];
  _Block_release(v12);
  v20 = sub_100032190;
  v21 = 0;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_100059234;
  v19 = &unk_10015DF98;
  v13 = _Block_copy(&v16);
  [a1 setInterruptionHandler:v13];
  _Block_release(v13);
  v14 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v20 = sub_1000475D0;
  v21 = v14;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_100059234;
  v19 = &unk_10015DFE8;
  v15 = _Block_copy(&v16);

  [a1 setInvalidationHandler:v15];
  _Block_release(v15);
}

void sub_100031FB0(void *a1)
{
  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100007D20(v2, qword_100173A40);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "AirDropTransferSessionsController: connection activated from client!", v5, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if ([a1 remoteTarget])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    v10[0] = v11;
    v10[1] = v12;
    if (*(&v12 + 1))
    {
      sub_1000077C8(&qword_100173D88, &qword_10011A648);
      if (swift_dynamicCast())
      {
        v8 = *&v7[OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_airDropClient];
        *&v7[OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_airDropClient] = v9;

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {

      sub_1000159AC(v10, &qword_1001746C0, &qword_10011A510);
    }
  }
}

id sub_100032190(void *a1)
{
  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100007D20(v2, qword_100173A40);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "AirDropTransferSessionsController: connection interrupted, reconnecting", v5, 2u);
  }

  return [a1 activate];
}

uint64_t sub_100032288()
{
  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100007D20(v0, qword_100173A40);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "AirDropTransferSessionsController: connection invalidated", v3, 2u);
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  v5 = *&Strong[OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_connection];
  *&Strong[OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_connection] = 0;

  v6 = swift_unknownObjectUnownedLoadStrong();
  v7 = *&v6[OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_airDropClient];
  *&v6[OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_airDropClient] = 0;

  return swift_unknownObjectRelease();
}

uint64_t sub_100032448()
{
  v1[2] = v0;
  v2 = sub_1000077C8(&qword_100173D80, &qword_100120890);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100032514, 0, 0);
}

uint64_t sub_100032514()
{
  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[6] = sub_100007D20(v1, qword_100173A40);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "waiting for userInteractionmodels START", v4, 2u);
  }

  v5 = v0[2];

  v6 = *(v5 + OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_transfersMonitorTask);
  v0[7] = v6;
  v7 = async function pointer to Task.value.getter[1];

  v8 = swift_task_alloc();
  v0[8] = v8;
  v9 = sub_1000077C8(&qword_100175E10, &unk_100118BB0);
  *v8 = v0;
  v8[1] = sub_1000326B4;
  v10 = v0[5];
  v11 = v0[3];

  return Task.value.getter(v10, v6, v11, v9, &protocol self-conformance witness table for Error);
}

uint64_t sub_1000326B4()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  v2[9] = v0;

  v5 = v2[7];
  if (v0)
  {

    v6 = sub_1000328EC;
  }

  else
  {
    (*(v2[4] + 8))(v2[5], v2[3]);

    v6 = sub_10003280C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10003280C()
{
  v1 = v0[6];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "waiting for userInteractionmodels END", v4, 2u);
  }

  v5 = v0[5];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000328EC()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_100032AC4(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100032B6C;

  return sub_100032448();
}

uint64_t sub_100032B6C()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 24);
  if (v2)
  {
    v9 = _convertErrorToNSError(_:)();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(v8, 0);
  }

  _Block_release(*(v4 + 24));
  v10 = *(v7 + 8);

  return v10();
}

id sub_100032CF0(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void (*a6)(char *, void *, uint64_t), uint64_t *a7, void *a8, uint64_t a9, uint64_t a10, unint64_t a11, void *a12)
{
  v13 = v12;
  v204 = a8;
  v233 = a7;
  v232 = a6;
  v242 = a3;
  v249 = type metadata accessor for SFAirDropSend.Transfer.State();
  v248 = *(v249 - 8);
  v18 = *(v248 + 64);
  __chkstk_darwin(v249);
  v206 = &v203 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = sub_1000077C8(&qword_100173D40, &qword_10011B1C0);
  v228 = *(v229 - 8);
  v20 = *(v228 + 8);
  __chkstk_darwin(v229);
  v218 = &v203 - v21;
  v227 = sub_1000077C8(&qword_100173D48, &unk_10011A530);
  v226 = *(v227 - 8);
  v22 = *(v226 + 64);
  __chkstk_darwin(v227);
  v225 = &v203 - v23;
  v221 = sub_1000077C8(&qword_100173D50, &unk_10011D120);
  v24 = *(*(v221 - 8) + 64);
  v25 = __chkstk_darwin(v221);
  v219 = &v203 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v217 = &v203 - v27;
  v247 = sub_1000077C8(&qword_100173D58, &unk_10011A540);
  v246 = *(v247 - 1);
  v28 = *(v246 + 64);
  __chkstk_darwin(v247);
  v216 = &v203 - v29;
  v215 = sub_1000077C8(&qword_100173D60, &qword_10011D3A0);
  v214 = *(v215 - 8);
  v30 = *(v214 + 64);
  __chkstk_darwin(v215);
  v213 = &v203 - v31;
  v224 = sub_1000077C8(&qword_100173728, qword_1001199F0);
  v251 = *(v224 - 8);
  v32 = *(v251 + 8);
  __chkstk_darwin(v224);
  v220 = &v203 - v33;
  v256 = type metadata accessor for SFAirDrop.DisplayPriority();
  v259 = *(v256 - 8);
  v34 = *(v259 + 64);
  v35 = __chkstk_darwin(v256);
  v235 = &v203 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v234 = &v203 - v38;
  __chkstk_darwin(v37);
  v254 = &v203 - v39;
  v250 = type metadata accessor for DeviceLockState();
  v255 = *(v250 - 8);
  v40 = *(v255 + 64);
  v41 = __chkstk_darwin(v250);
  v231 = &v203 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v230 = &v203 - v44;
  __chkstk_darwin(v43);
  v253 = &v203 - v45;
  v245 = sub_1000077C8(&qword_100172FD0, &qword_10011A210);
  v46 = *(*(v245 - 8) + 64);
  v47 = __chkstk_darwin(v245);
  v237 = &v203 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __chkstk_darwin(v47);
  v244 = &v203 - v50;
  v51 = __chkstk_darwin(v49);
  v243 = &v203 - v52;
  __chkstk_darwin(v51);
  v258 = &v203 - v53;
  v252 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v260 = *(v252 - 8);
  v54 = v260[8];
  v55 = __chkstk_darwin(v252);
  v238 = &v203 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __chkstk_darwin(v55);
  v223 = &v203 - v58;
  v59 = __chkstk_darwin(v57);
  v222 = &v203 - v60;
  __chkstk_darwin(v59);
  v257 = (&v203 - v61);
  if (qword_100172148 != -1)
  {
    swift_once();
  }

  v239 = a12;
  v236 = type metadata accessor for Logger();
  v62 = sub_100007D20(v236, qword_100173A40);

  v63 = a5;
  v205 = v62;
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = a4;
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v261 = v69;
    *v67 = 136315394;
    *(v67 + 4) = sub_10003E81C(a1, a2, &v261);
    *(v67 + 12) = 2112;
    *(v67 + 14) = v63;
    *v68 = v63;
    v70 = v63;
    _os_log_impl(&_mh_execute_header, v64, v65, "Start session with identifier: %s, itemCount: %@", v67, 0x16u);
    sub_1000159AC(v68, &qword_100172EB0, &qword_100119410);

    sub_100007920(v69);

    a4 = v66;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v261[2])
  {
    v71 = a1;
    sub_10003EEC0(a1, a2);
    v73 = v72;

    if (v73)
    {

      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = a4;
        v78 = swift_slowAlloc();
        v261 = v78;
        *v76 = 136315138;
        *(v76 + 4) = sub_10003E81C(v71, a2, &v261);
        _os_log_impl(&_mh_execute_header, v74, v75, "Tried to start a session with an existing transfer: %s. Ending existing session, and starting new one", v76, 0xCu);
        sub_100007920(v78);
        a4 = v77;
      }

      sub_10002FCDC(v71, a2);
    }
  }

  else
  {

    v71 = a1;
  }

  v241 = v71;
  v79 = [a4 unsignedIntegerValue];
  v210 = [v242 BOOLValue];
  *v257 = v79;
  (v260[13])();
  v242 = a2;
  v80 = *(v248 + 56);
  v81 = v249;
  v80(v258, 1, 1, v249);
  v212 = COERCE_DOUBLE([v63 integerValue]);
  v82 = *(v13 + OBJC_IVAR____TtC9AirDropUI33AirDropTransferSessionsController_lockStateMonitor);
  dispatch thunk of SFLockStateMonitor.lockState.getter();
  (*(v259 + 104))(v254, enum case for SFAirDrop.DisplayPriority.normal(_:), v256);
  v211 = [v239 BOOLValue];
  v83 = type metadata accessor for AirDropTransferSession();
  v84 = *(v83 + 48);
  v85 = *(v83 + 52);
  v86 = swift_allocObject();
  Date.init()();
  v87 = (v86 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_senderName);
  v208 = (v86 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_senderName);
  *v87 = 0;
  v87[1] = 0;
  v240 = v13;
  v88 = (v86 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_receiverName);
  v209 = v88;
  *v88 = 0;
  v88[1] = 0;
  v89 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_cancelAction;
  v90 = type metadata accessor for SFAirDrop.DeclineAction();
  (*(*(v90 - 8) + 56))(v86 + v89, 1, 1, v90);
  v91 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__transferAccepted;
  LOBYTE(v261) = 0;
  v92 = v220;
  Published.init(initialValue:)();
  v207 = *(v251 + 4);
  v251 += 32;
  v93 = v224;
  v207(v86 + v91, v92, v224);
  v94 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__localizedTransferDescription;
  v261 = 0;
  v262 = 0;
  sub_1000077C8(&qword_100172AA0, &unk_1001187F0);
  v95 = v213;
  Published.init(initialValue:)();
  (*(v214 + 32))(v86 + v94, v95, v215);
  v96 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__sendTransferState;
  v215 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__sendTransferState;
  v97 = v243;
  v80(v243, 1, 1, v81);
  sub_100007BA4(v97, v244, &qword_100172FD0, &qword_10011A210);
  v98 = v216;
  Published.init(initialValue:)();
  sub_1000159AC(v97, &qword_100172FD0, &qword_10011A210);
  (*(v246 + 32))(v86 + v96, v98, v247);
  v99 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__permissionRequest;
  v100 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
  v101 = v217;
  (*(*(v100 - 8) + 56))(v217, 1, 1, v100);
  sub_100007BA4(v101, v219, &qword_100173D50, &unk_10011D120);
  v102 = v225;
  Published.init(initialValue:)();
  sub_1000159AC(v101, &qword_100173D50, &unk_10011D120);
  (*(v226 + 32))(v86 + v99, v102, v227);
  v103 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__previewImage;
  v261 = 0;
  v104 = sub_1000077C8(&qword_100173D68, &qword_10011A550);
  v105 = v218;
  v227 = v104;
  Published.init(initialValue:)();
  v106 = *(v228 + 4);
  v107 = v229;
  v106(v86 + v103, v105, v229);
  v228 = v106;
  v108 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__fallbackPreviewImage;
  v261 = 0;
  Published.init(initialValue:)();
  v106(v86 + v108, v105, v107);
  v109 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__shouldShowSensitiveImage;
  LOBYTE(v261) = 0;
  Published.init(initialValue:)();
  v110 = v207;
  v207(v86 + v109, v92, v93);
  v111 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__shouldDisplayPreviewImage;
  LOBYTE(v261) = 1;
  Published.init(initialValue:)();
  v110(v86 + v111, v92, v93);
  v112 = v86;
  v113 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__contactImage;
  v261 = 0;
  Published.init(initialValue:)();
  v114 = v228;
  v228(v86 + v113, v105, v107);
  v115 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession__airdropIconImage;
  v261 = 0;
  Published.init(initialValue:)();
  v114(v86 + v115, v105, v107);
  *(v86 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_actions) = &_swiftEmptyArrayStorage;
  *(v86 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_completedURLs) = &_swiftEmptyArrayStorage;
  v116 = v86 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_delegate;
  *(v86 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v86 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_sessionUpdateDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v86 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_activity) = 0;
  v117 = OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferringStateStartTime;
  v118 = type metadata accessor for Date();
  v119 = *(*(v118 - 8) + 56);
  v119(v86 + v117, 1, 1, v118);
  v119(v86 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_waitingForOpenResponseStateStartTime, 1, 1, v118);
  v120 = (v86 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
  v121 = v242;
  *v120 = v241;
  v120[1] = v121;
  *(v86 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_isFromMe) = v210;
  v122 = v208;
  v123 = v208[1];
  v124 = v233;
  *v208 = v232;
  v122[1] = v124;

  v125 = v209;
  v126 = v209[1];
  *v209 = 0;
  v125[1] = 0;

  v127 = v260;
  v128 = v260 + 2;
  v129 = v260[2];
  v130 = v222;
  v131 = v252;
  v129(v222, v257, v252);
  swift_beginAccess();
  v233 = v128;
  v232 = v129;
  v129(v223, v130, v131);
  Published.init(initialValue:)();
  v132 = v127[1];
  v260 = v127 + 1;
  v251 = v132;
  (v132)(v130, v131);
  swift_endAccess();
  v133 = v243;
  sub_100007BA4(v258, v243, &qword_100172FD0, &qword_10011A210);
  v134 = v215;
  swift_beginAccess();
  (*(v246 + 8))(v112 + v134, v247);
  sub_100007BA4(v133, v244, &qword_100172FD0, &qword_10011A210);
  Published.init(initialValue:)();
  sub_1000159AC(v133, &qword_100172FD0, &qword_10011A210);
  swift_endAccess();
  swift_beginAccess();
  v263 = 0.0;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  v135 = v212;
  v263 = v212;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v263) = v211;
  Published.init(initialValue:)();
  swift_endAccess();
  v136 = v255;
  v137 = *(v255 + 16);
  v138 = v230;
  v139 = v250;
  v137(v230, v253, v250);
  swift_beginAccess();
  v137(v231, v138, v139);
  Published.init(initialValue:)();
  v140 = *(v136 + 8);
  v255 = v136 + 8;
  v247 = v140;
  v140(v138, v139);
  swift_endAccess();
  v141 = [objc_opt_self() mainScreen];
  [v141 bounds];
  v143 = v142;
  v145 = v144;
  v147 = v146;
  v149 = v148;

  v264.origin.x = v143;
  v264.origin.y = v145;
  v264.size.width = v147;
  v264.size.height = v149;
  v150 = CGRectGetWidth(v264) + -24.0;
  swift_beginAccess();
  v263 = v150;
  Published.init(initialValue:)();
  swift_endAccess();
  v151 = v259;
  v152 = *(v259 + 16);
  v153 = v234;
  v154 = v256;
  v152(v234, v254, v256);
  swift_beginAccess();
  v152(v235, v153, v154);
  Published.init(initialValue:)();
  v155 = *(v151 + 8);
  v259 = v151 + 8;
  v155(v153, v154);
  swift_endAccess();
  *(v116 + 8) = &off_10015DCA8;
  swift_unknownObjectWeakAssign();
  *(v112 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_systemApertureIsEnabled) = SBUIIsSystemApertureEnabled();
  v156 = COERCE_DOUBLE([objc_opt_self() progressWithTotalUnitCount:*&v135]);
  swift_beginAccess();
  v263 = v156;
  sub_1000165C4(0, &qword_100173D70, NSProgress_ptr);
  v157 = v248;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v158 = v249;

  v159 = v261;
  [v261 setCompletedUnitCount:0];

  v160 = v237;
  sub_100007BA4(v258, v237, &qword_100172FD0, &qword_10011A210);
  if ((*(v157 + 48))(v160, 1, v158) == 1)
  {
    sub_1000159AC(v160, &qword_100172FD0, &qword_10011A210);
    v161 = v257;
    sub_10007C0CC(v257);
  }

  else
  {
    v162 = v206;
    (*(v157 + 32))(v206, v160, v158);
    sub_10007DABC(v162);
    (*(v157 + 8))(v162, v158);
    v161 = v257;
  }

  v163 = v238;
  v164 = v252;
  if (qword_1001721E0 != -1)
  {
    swift_once();
  }

  sub_100007D20(v236, qword_100175480);
  v232(v163, v161, v164);

  v165 = Logger.logObject.getter();
  v166 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v165, v166))
  {
    v167 = swift_slowAlloc();
    v261 = swift_slowAlloc();
    *v167 = 136315650;
    v168 = *(v112 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier);
    v169 = *(v112 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_transferIdentifier + 8);

    v170 = sub_10003E81C(v168, v169, &v261);

    *(v167 + 4) = v170;
    *(v167 + 12) = 2048;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v171 = v263;
    [*&v263 fractionCompleted];
    v173 = v172;

    *(v167 + 14) = v173;
    *(v167 + 22) = 2080;
    sub_100047F70(&qword_100173D78, &type metadata accessor for SFAirDropReceive.Transfer.State);
    v174 = dispatch thunk of CustomStringConvertible.description.getter();
    v176 = v175;
    v177 = v163;
    v178 = v251;
    (v251)(v177, v164);
    v179 = sub_10003E81C(v174, v176, &v261);

    *(v167 + 24) = v179;
    _os_log_impl(&_mh_execute_header, v165, v166, "Transfer session created for transfer %s with completed: %f, transferState: %s", v167, 0x20u);
    swift_arrayDestroy();

    v161 = v257;
  }

  else
  {

    v180 = v163;
    v178 = v251;
    (v251)(v180, v164);
  }

  v181 = sub_10007B6A8(0, 0);
  v155(v254, v256);
  v247(v253, v250);
  sub_1000159AC(v258, &qword_100172FD0, &qword_10011A210);
  v178(v161, v164);
  v182 = *(v112 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_activity);
  *(v112 + OBJC_IVAR____TtC9AirDropUI22AirDropTransferSession_activity) = v181;

  swift_getKeyPath();
  swift_getKeyPath();
  v183 = v242;

  v184 = static Published.subscript.modify();
  v186 = v185;
  v187 = *v185;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v263 = *v186;
  *v186 = 0x8000000000000000;
  sub_1000413E4(v112, v241, v183, isUniquelyReferenced_nonNull_native);

  *v186 = v263;
  v184(&v261, 0);

  if (a9)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v261 = v204;
    v262 = a9;

    static Published.subscript.setter();
  }

  if (a11 >> 60 == 15)
  {
    goto LABEL_28;
  }

  sub_1000156D8(a10, a11);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v190 = sub_100003C74(isa);

  if (!v190)
  {
    sub_100015660(a10, a11);
    goto LABEL_28;
  }

  CGImageGetSizeAfterOrientation();
  v191 = Logger.logObject.getter();
  v192 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v191, v192))
  {
LABEL_26:

    v200 = [objc_allocWithZone(UIImage) initWithCGImage:v190];
    swift_getKeyPath();
    swift_getKeyPath();
    v261 = v200;

    v201 = v200;
    static Published.subscript.setter();
    sub_100015660(a10, a11);

LABEL_28:
    v202 = [v239 BOOLValue];
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v261) = v202;
    return static Published.subscript.setter();
  }

  v193 = swift_slowAlloc();
  v260 = swift_slowAlloc();
  v261 = v260;
  *v193 = 136315138;
  result = BSNSStringFromCGSize();
  if (result)
  {
    v195 = result;
    v196 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v198 = v197;

    v199 = sub_10003E81C(v196, v198, &v261);

    *(v193 + 4) = v199;
    _os_log_impl(&_mh_execute_header, v191, v192, "Transfer session contains preview image of size: %s", v193, 0xCu);
    sub_100007920(v260);

    goto LABEL_26;
  }

  __break(1u);
  return result;
}