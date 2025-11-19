uint64_t sub_10012EC6C()
{
  type metadata accessor for GeometryProxy();

  return sub_10012E8D8();
}

double sub_10012ECD0@<D0>(_OWORD *a1@<X8>)
{
  sub_10006D4A4();
  EnvironmentValues.subscript.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

unint64_t sub_10012ED7C()
{
  result = qword_100202088;
  if (!qword_100202088)
  {
    sub_10003C4E4(&qword_100202080);
    sub_10012EE08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100202088);
  }

  return result;
}

unint64_t sub_10012EE08()
{
  result = qword_100202090;
  if (!qword_100202090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100202090);
  }

  return result;
}

double sub_10012EE5C(_OWORD *a1)
{
  result = 0.0;
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

uint64_t sub_10012EE7C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10012EED4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10012EF24(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

unint64_t sub_10012EFEC()
{
  result = qword_1002020D0;
  if (!qword_1002020D0)
  {
    sub_10003C4E4(&qword_1002020C8);
    sub_10012F0A4();
    sub_10005C71C(&qword_1002014A0, &qword_1002014A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002020D0);
  }

  return result;
}

unint64_t sub_10012F0A4()
{
  result = qword_1002020D8;
  if (!qword_1002020D8)
  {
    sub_10003C4E4(&qword_1002020E0);
    sub_10012F15C();
    sub_10005C71C(&qword_1002000A0, &qword_1002000A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002020D8);
  }

  return result;
}

unint64_t sub_10012F15C()
{
  result = qword_1002020E8;
  if (!qword_1002020E8)
  {
    sub_10003C4E4(&qword_1002020F0);
    sub_10012F1E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002020E8);
  }

  return result;
}

unint64_t sub_10012F1E8()
{
  result = qword_1002020F8;
  if (!qword_1002020F8)
  {
    sub_10003C4E4(&qword_100202100);
    sub_10012F2A0();
    sub_10005C71C(&qword_1001FF210, &qword_1001FF218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002020F8);
  }

  return result;
}

unint64_t sub_10012F2A0()
{
  result = qword_100202108;
  if (!qword_100202108)
  {
    sub_10003C4E4(&qword_100202110);
    sub_1000B79F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100202108);
  }

  return result;
}

uint64_t sub_10012F32C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

unint64_t sub_10012F388()
{
  result = qword_100202120;
  if (!qword_100202120)
  {
    sub_10003C4E4(&qword_100202018);
    sub_10003C4E4(&qword_100202008);
    sub_10003C4E4(&qword_100202040);
    sub_10003C4E4(&qword_100202000);
    sub_10003C4E4(&qword_100201FF8);
    sub_10005C71C(&qword_100202030, &qword_100201FF8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10012E9DC();
    sub_10012EA30();
    swift_getOpaqueTypeConformance2();
    sub_10005C71C(&qword_100202128, &qword_100202130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100202120);
  }

  return result;
}

uint64_t sub_10012F57C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10012F5C4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_10012F630@<X0>(uint64_t a1@<X8>)
{
  sub_100079A64();

  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;
  sub_10007C874(v2, v4, v6 & 1);

  static Font.Weight.bold.getter();
  v12 = Text.fontWeight(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_10007C874(v7, v9, v11 & 1);

  KeyPath = swift_getKeyPath();
  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  sub_10007C884(v12, v14, v16 & 1);

  sub_10007C874(v12, v14, v16 & 1);
}

__n128 sub_10012F7B8@<Q0>(uint64_t a1@<X8>)
{
  v2 = static VerticalAlignment.center.getter();
  sub_10012F630(v5);
  *&v4[48] = *&v6[9];
  *&v4[39] = *v6;
  *&v4[23] = v5[1];
  *&v4[7] = v5[0];
  *(a1 + 17) = *v4;
  *(a1 + 33) = *&v4[16];
  result = *&v4[32];
  *(a1 + 49) = *&v4[32];
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 65) = *&v4[48];
  return result;
}

unint64_t sub_10012F870()
{
  result = qword_100202140;
  if (!qword_100202140)
  {
    sub_10003C4E4(&qword_100202148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100202140);
  }

  return result;
}

uint64_t sub_10012F8D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a2 + 48))
  {
    byte_10020A5F0 = 0;
  }

  v3 = *(a3 + 40);
  if (v3)
  {

    v3(v4);
    sub_10003C52C(v3);
  }

  if (qword_1001FC838 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1001262B0();
  return swift_endAccess();
}

void sub_10012F990()
{
  if (*(v0 + 72))
  {
LABEL_2:
    v1 = *(v0 + 16);
    v2 = 2 * ([v1 preferredStyle] == 1);

    [v1 scheduleModalPresentationWithPriority:v2 animated:1 presentationCompletion:0];
    return;
  }

  if (byte_10020A5F0)
  {
    return;
  }

  if (qword_1001FC838 != -1)
  {
    swift_once();
  }

  v3 = sub_100066608();
  v4 = [v3 presentedViewController];

  if (!v4)
  {
    byte_10020A5F0 = 1;
    goto LABEL_2;
  }
}

uint64_t sub_10012FAB8()
{
  sub_10007D4DC(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t sub_10012FB28(uint64_t result, uint64_t a2)
{
  if (!*(a2 + 72) && (result & 1) == 0)
  {
    byte_10020A5F0 = 0;
  }

  return result;
}

void sub_10012FB48(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = xmmword_100185760;
  v4 = *(a1 + 16);
  *(v2 + 24) = *a1;
  *(v2 + 40) = v4;
  *(v2 + 56) = *(a1 + 32);
  v5 = *(a1 + 48);
  *(v2 + 72) = v5;
  if (v5 == 1)
  {
    v91 = *(a1 + 8);

    v6 = 0;
    v90 = 1;
  }

  else
  {
    if (v5 || !a2)
    {
      v90 = 0;
      v88 = 0;
      v91 = 0;
      v6 = 1;
      goto LABEL_8;
    }

    v90 = 0;
    v6 = 0;
    v91 = 0;
  }

  v88 = 1;
LABEL_8:
  sub_10007D588(a1, &aBlock);
  v8 = sub_100089588(0);
  if (v7)
  {
    sub_1000494C8(0, 0, _swiftEmptyArrayStorage, v8, v7);
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v12 = sub_100089588(1);
  if (v11)
  {
    sub_1000494C8(0, 0, _swiftEmptyArrayStorage, v12, v11);
    v14 = v13;

    if (v10)
    {
      goto LABEL_13;
    }

LABEL_16:
    v15 = 0;
    if (v14)
    {
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  v14 = 0;
  if (!v10)
  {
    goto LABEL_16;
  }

LABEL_13:
  v15 = String._bridgeToObjectiveC()();

  if (v14)
  {
LABEL_14:
    v16 = String._bridgeToObjectiveC()();

    goto LABEL_18;
  }

LABEL_17:
  v16 = 0;
LABEL_18:
  v17 = [objc_opt_self() alertControllerWithTitle:v15 message:v16 preferredStyle:v6];

  *(v94 + 16) = v17;
  v18 = sub_1000D724C(a1);
  v19 = v18;
  if (v18 >> 62)
  {
    v20 = _CocoaArrayWrapper.endIndex.getter();
    if (!v20)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      goto LABEL_27;
    }
  }

  v93 = objc_opt_self();
  if (v20 < 1)
  {
    __break(1u);
    goto LABEL_49;
  }

  v21 = 0;
  v92 = v19 & 0xC000000000000001;
  v22 = v19;
  do
  {
    if (v92)
    {
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v23 = *(v19 + 8 * v21 + 32);
    }

    ++v21;
    v24 = v23[2];
    v25 = v23[3];
    v26 = *(v94 + 16);

    sub_1000494C8(0, 0, _swiftEmptyArrayStorage, v24, v25);

    v27 = v23[4];
    v28 = swift_allocObject();
    v29 = *(a1 + 16);
    *(v28 + 16) = *a1;
    *(v28 + 32) = v29;
    *(v28 + 48) = *(a1 + 32);
    *(v28 + 64) = *(a1 + 48);
    *(v28 + 72) = v23;
    sub_10007D588(a1, &aBlock);

    v30 = String._bridgeToObjectiveC()();

    v99 = sub_100130774;
    v100 = v28;
    aBlock = _NSConcreteStackBlock;
    v96 = 1107296256;
    v97 = sub_100072168;
    v98 = &unk_1001C82D8;
    v31 = _Block_copy(&aBlock);

    v32 = [v93 actionWithTitle:v30 style:v27 handler:v31];
    _Block_release(v31);

    [v26 addAction:v32];

    v19 = v22;
  }

  while (v20 != v21);
LABEL_27:

  if (v90)
  {
    v33 = [objc_opt_self() currentDevice];
    v34 = [v33 userInterfaceIdiom];

    if (v34 != 1)
    {
      type metadata accessor for DeviceInformationView();
      v35 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      *&v35[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_state] = v91;
      swift_retain_n();

      sub_10003E6C8();

      v36 = *&v35[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_addButton];
      [v36 alpha];
      if (v37 == 1.0)
      {
        v38 = swift_allocObject();
        *(v38 + 16) = v36;
        v39 = objc_opt_self();
        v99 = sub_10004487C;
        v100 = v38;
        aBlock = _NSConcreteStackBlock;
        v96 = 1107296256;
        v97 = sub_100031FA8;
        v98 = &unk_1001C83C8;
        v40 = _Block_copy(&aBlock);
        v41 = v36;

        [v39 animateWithDuration:0x20000 delay:v40 options:0 animations:0.125 completion:0.0];
        _Block_release(v40);
      }

      v42 = *&v35[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_ellipsisButton];
      [v42 alpha];
      if (v43 == 1.0)
      {
        v44 = swift_allocObject();
        *(v44 + 16) = v42;
        v45 = objc_opt_self();
        v99 = sub_10004487C;
        v100 = v44;
        aBlock = _NSConcreteStackBlock;
        v96 = 1107296256;
        v97 = sub_100031FA8;
        v98 = &unk_1001C8378;
        v46 = _Block_copy(&aBlock);
        v47 = v42;

        [v45 animateWithDuration:0x20000 delay:v46 options:0 animations:0.125 completion:0.0];
        _Block_release(v46);
      }

      v48 = *&v35[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_activityIndicator];
      [v48 alpha];
      if (v49 == 1.0)
      {
        v50 = swift_allocObject();
        *(v50 + 16) = v48;
        v51 = objc_opt_self();
        v99 = sub_100044298;
        v100 = v50;
        aBlock = _NSConcreteStackBlock;
        v96 = 1107296256;
        v97 = sub_100031FA8;
        v98 = &unk_1001C8328;
        v52 = _Block_copy(&aBlock);
        v53 = v48;

        [v51 animateWithDuration:0x20000 delay:v52 options:0 animations:0.125 completion:0.0];
        _Block_release(v52);
      }

      sub_100043418();
      sub_100043598();
      v54 = v35;
      [v54 setTranslatesAutoresizingMaskIntoConstraints:0];
      type metadata accessor for AlertContentViewController();
      v55 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v56 = objc_allocWithZone(UIView);
      v57 = v55;
      v58 = [v56 init];
      [v57 setView:v58];

      v59 = [v57 view];
      if (v59)
      {
        v60 = v59;
        [v59 addSubview:v54];

        [*(v94 + 16) setContentViewController:v57];
        sub_10003C49C(&unk_1001FD020);
        v61 = swift_allocObject();
        *(v61 + 16) = xmmword_10017EDA0;
        v62 = [v54 heightAnchor];
        v63 = [v62 constraintEqualToConstant:90.0];

        *(v61 + 32) = v63;
        v64 = [v54 widthAnchor];
        v65 = [v57 view];
        if (v65)
        {
          v66 = v65;
          v67 = [v65 widthAnchor];

          v68 = [v64 constraintLessThanOrEqualToAnchor:v67];
          *(v61 + 40) = v68;
          v69 = [v54 topAnchor];
          v70 = [v57 view];
          if (v70)
          {
            v71 = v70;
            v72 = [v70 topAnchor];

            v73 = [v69 constraintEqualToAnchor:v72];
            *(v61 + 48) = v73;
            v74 = [v54 bottomAnchor];
            v75 = [v57 view];
            if (v75)
            {
              v76 = v75;
              v77 = [v75 bottomAnchor];

              v78 = [v74 constraintEqualToAnchor:v77];
              *(v61 + 56) = v78;
              v79 = [v54 centerXAnchor];

              v80 = [v57 view];
              if (v80)
              {
                v81 = objc_opt_self();
                v82 = [v80 centerXAnchor];

                v83 = [v79 constraintEqualToAnchor:v82];
                *(v61 + 64) = v83;
                sub_10007E540();
                isa = Array._bridgeToObjectiveC()().super.isa;

                [v81 activateConstraints:isa];

                goto LABEL_41;
              }

LABEL_53:
              __break(1u);
              return;
            }

LABEL_52:
            __break(1u);
            goto LABEL_53;
          }

LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

LABEL_49:
      __break(1u);
      goto LABEL_50;
    }
  }

LABEL_41:
  if (v88)
  {
    if (a2)
    {
      v85 = *(v94 + 16);
      swift_unknownObjectRetain();
      v86 = [v85 popoverPresentationController];
      if (v86)
      {
        v87 = v86;
        swift_unknownObjectRetain();
        [v87 setSourceItem:a2];
      }

      swift_unknownObjectRelease_n();
    }
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

uint64_t sub_100130728()
{
  sub_10007D4DC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100130780(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100130798()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1001307F0()
{
  v1 = v0;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for NoSessionNavigationController();
  objc_msgSendSuper2(&v10, "viewDidLoad");
  [v0 setModalPresentationStyle:2];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v2 = [v0 navigationBar];
    v3 = [objc_allocWithZone(UIImage) init];
    [v2 setBackgroundImage:v3 forBarMetrics:0];

    v4 = [v1 navigationBar];
    v5 = [objc_allocWithZone(UIImage) init];
    [v4 setShadowImage:v5];

    v6 = [v1 navigationBar];
    [v6 setAlpha:0.0];
  }

  sub_10003C49C(&unk_1001FD020);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10017EBF0;
  v8 = objc_allocWithZone(type metadata accessor for NoSessionViewController());
  *(v7 + 32) = sub_1000E59C0();
  sub_100045CC4();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 setViewControllers:isa];
}

id sub_100130BA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NoSessionNavigationController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100130D7C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseControl();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100130DD4()
{
  v1 = v0;
  v2 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.478431373 blue:1.0 alpha:1.0];
  v3 = [objc_opt_self() configurationWithHierarchicalColor:v2];

  _StringGuts.grow(_:)(24);
  DeviceClass = GestaltGetDeviceClass();
  v5 = sub_100100580(DeviceClass);
  v7 = v6;

  v23 = v5;
  v24 = v7;
  v8._object = 0x8000000100189E10;
  v8._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v8);
  v9 = String._bridgeToObjectiveC()();

  v10 = [objc_opt_self() _systemImageNamed:v9];

  if (v10)
  {
    v11 = [v10 imageWithConfiguration:v3];
  }

  else
  {
    v11 = 0;
  }

  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD00000000000001ELL, 0x80000001001932B0);
  v12 = String._bridgeToObjectiveC()();

  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000021, 0x80000001001932D0);
  v13 = String._bridgeToObjectiveC()();

  v22.receiver = v1;
  v22.super_class = type metadata accessor for AssessmentVerifyDeviceViewController();
  v14 = objc_msgSendSuper2(&v22, "initWithTitle:detailText:icon:contentLayout:", v12, v13, v11, 2);

  v15 = v14;
  v16 = [v15 navigationItem];
  [v16 setHidesBackButton:1];

  v17 = [objc_opt_self() boldButton];
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0x45534F4C43, 0xE500000000000000);
  v18 = String._bridgeToObjectiveC()();

  [v17 setTitle:v18 forState:0];

  sub_10006D004();
  v19 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v17 addAction:v19 forControlEvents:{64, 0, 0, 0, sub_100070534, 0}];

  v20 = [v15 buttonTray];
  [v20 addButton:v17];

  return v15;
}

id sub_1001311A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssessmentVerifyDeviceViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100131200()
{
  v1 = v0;
  v2 = 0x8000000100193370;
  v14 = 0xD00000000000001ALL;
  v15 = 0x8000000100193370;
  v3 = [objc_msgSend(objc_opt_self() "currentPlatform")];
  swift_unknownObjectRelease();
  if (v3)
  {
    v4._countAndFlagsBits = 4342623;
    v4._object = 0xE300000000000000;
    String.append(_:)(v4);
    v5 = v14;
    v2 = v15;
  }

  else
  {
    v5 = 0xD00000000000001ALL;
  }

  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, v5, v2);

  v6 = String._bridgeToObjectiveC()();

  v7 = sub_100049C98(0xD00000000000001DLL);
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, v7, v8);

  v9 = String._bridgeToObjectiveC()();

  v10 = String._bridgeToObjectiveC()();
  v13.receiver = v1;
  v13.super_class = type metadata accessor for DiagnosticsCompletedViewController();
  v11 = objc_msgSendSuper2(&v13, "initWithTitle:detailText:symbolName:contentLayout:", v6, v9, v10, 2);

  return v11;
}

void sub_1001313B0()
{
  v1 = v0;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for DiagnosticsCompletedViewController();
  objc_msgSendSuper2(&v7, "viewDidLoad");
  [v0 setModalPresentationStyle:2];
  v2 = [v0 headerView];
  [v2 setTitleHyphenationFactor:0.0];

  v3 = [objc_opt_self() boldButton];
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000017, 0x800000010018C890);
  v4 = String._bridgeToObjectiveC()();

  [v3 setTitle:v4 forState:0];

  sub_10003E110(0, &qword_1002023B0);
  v5 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v3 addAction:v5 forControlEvents:{64, 0, 0, 0, sub_10013156C, 0}];

  v6 = [v1 buttonTray];
  [v6 addButton:v3];
}

uint64_t sub_1001315BC(char a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v32 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for DispatchTime();
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v28 - v13;
  v15 = type metadata accessor for DiagnosticsCompletedViewController();
  v35.receiver = v1;
  v35.super_class = v15;
  objc_msgSendSuper2(&v35, "viewDidAppear:", a1 & 1);
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v16 = [v1 navigationController];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 navigationBar];

      [v18 _setBackgroundOpacity:0.0];
    }
  }

  v19 = [objc_opt_self() standardUserDefaults];
  v20 = String._bridgeToObjectiveC()();
  v21 = [v19 BOOLForKey:v20];

  if ((v21 & 1) != 0 || (v22 = [objc_msgSend(objc_opt_self() "currentPlatform")], result = swift_unknownObjectRelease(), v22))
  {
    sub_10003E110(0, &qword_1001FD040);
    v29 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    v24 = v14;
    + infix(_:_:)();
    v30 = v7;
    v31 = *(v31 + 8);
    (v31)(v11, v33);
    aBlock[4] = sub_100131A44;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031FA8;
    aBlock[3] = &unk_1001C8418;
    v25 = _Block_copy(aBlock);
    v26 = v32;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10005BD2C();
    sub_10003C49C(&unk_1001FD050);
    sub_1000446A0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v27 = v29;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v25);

    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v26, v30);
    return (v31)(v24, v33);
  }

  return result;
}

id sub_100131B00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DiagnosticsCompletedViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100131B58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100131B70()
{
  v0 = [objc_opt_self() secondaryLabelColor];
  v1 = objc_opt_self();
  v2 = [v1 configurationWithHierarchicalColor:v0];

  v3 = [v1 configurationWithScale:3];
  v4 = [v2 configurationByApplyingConfiguration:v3];

  v5 = v4;
  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() systemImageNamed:v6 withConfiguration:v5];

  v8 = [objc_allocWithZone(UIImageView) initWithImage:v7];
  [v8 setContentMode:1];
  LODWORD(v9) = 1148846080;
  [v8 setContentHuggingPriority:0 forAxis:v9];

  return v8;
}

void sub_100131CE8(void *a1)
{
  v2 = OBJC_IVAR____TtC11Diagnostics17ExpandableSection_contentHeaderView;
  v3 = *(v1 + OBJC_IVAR____TtC11Diagnostics17ExpandableSection_contentHeaderView);
  *(v1 + OBJC_IVAR____TtC11Diagnostics17ExpandableSection_contentHeaderView) = a1;
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC11Diagnostics17ExpandableSection_headerContentView);
    v5 = a1;
    [v4 removeArrangedSubview:v3];
    v6 = *(v1 + v2);
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = a1;
  v6 = a1;
  if (a1)
  {
LABEL_3:
    v7 = *(v1 + OBJC_IVAR____TtC11Diagnostics17ExpandableSection_headerContentView);
    v8 = v6;
    [v7 insertArrangedSubview:v8 atIndex:0];
  }

LABEL_4:
}

void sub_100131DB8(void *a1)
{
  if (a1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC11Diagnostics17ExpandableSection_bottomViewHeightConstraint);
    if (v2)
    {
      v3 = a1;
      v4 = v2;
      [v3 removeConstraint:v4];
      v5 = *(v1 + OBJC_IVAR____TtC11Diagnostics17ExpandableSection_mainLayout);
      [v5 removeArrangedSubview:v3];
      [v5 removeArrangedSubview:*(v1 + OBJC_IVAR____TtC11Diagnostics17ExpandableSection_fillerView)];
    }
  }

  v6 = *(v1 + OBJC_IVAR____TtC11Diagnostics17ExpandableSection_detailsView);
  if (v6)
  {
    v7 = v6;
    v8 = [v7 heightAnchor];
    v9 = [v8 constraintEqualToConstant:0.0];

    v10 = OBJC_IVAR____TtC11Diagnostics17ExpandableSection_bottomViewHeightConstraint;
    v11 = *(v1 + OBJC_IVAR____TtC11Diagnostics17ExpandableSection_bottomViewHeightConstraint);
    *(v1 + OBJC_IVAR____TtC11Diagnostics17ExpandableSection_bottomViewHeightConstraint) = v9;
    v12 = v9;

    if (v12)
    {
      LODWORD(v13) = 1148846080;
      [v12 setPriority:v13];
    }

    v14 = *(v1 + v10);
    if (v14)
    {
      [v14 setActive:(*(v1 + OBJC_IVAR____TtC11Diagnostics17ExpandableSection_isExpanded) & 1) == 0];
    }

    v15 = *(v1 + OBJC_IVAR____TtC11Diagnostics17ExpandableSection_mainLayout);
    [v15 addArrangedSubview:v7];
    [v15 addArrangedSubview:*(v1 + OBJC_IVAR____TtC11Diagnostics17ExpandableSection_fillerView)];
    v16 = *(v1 + OBJC_IVAR____TtC11Diagnostics17ExpandableSection_separatorView);
    [v7 addSubview:v16];
    v17 = objc_opt_self();
    sub_10003C49C(&unk_1001FD020);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_10017ED60;
    v19 = [v16 leadingAnchor];
    v20 = [v15 layoutMarginsGuide];
    v21 = [v20 leadingAnchor];

    v22 = [v19 constraintEqualToAnchor:v21];
    *(v18 + 32) = v22;
    v23 = [v16 trailingAnchor];
    v24 = [v15 layoutMarginsGuide];
    v25 = [v24 trailingAnchor];

    v26 = [v23 constraintEqualToAnchor:v25];
    *(v18 + 40) = v26;
    v27 = [v16 heightAnchor];
    v28 = [v27 constraintEqualToConstant:1.0];

    *(v18 + 48) = v28;
    v29 = [v16 topAnchor];
    v30 = [v7 topAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];

    *(v18 + 56) = v31;
    sub_10007E540();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v17 activateConstraints:isa];
  }
}

uint64_t sub_1001321AC()
{
  v1 = OBJC_IVAR____TtC11Diagnostics17ExpandableSection_expansionDelegate;
  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_expansionDelegate];
  if (v2)
  {
    [*(v2 + OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_tableView) beginUpdates];
  }

  v3 = *&v0[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_bottomViewHeightConstraint];
  if (v0[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_isExpanded] == 1)
  {
    if (v3)
    {
      [v3 setActive:0];
    }

    [*&v0[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_separatorView] setHidden:0];
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v5 = objc_opt_self();
    v18 = sub_100132E88;
    v19 = v4;
    v14 = _NSConcreteStackBlock;
    v15 = 1107296256;
    v6 = &unk_1001C84B8;
  }

  else
  {
    if (v3)
    {
      [v3 setActive:1];
    }

    [*&v0[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_separatorView] setHidden:1];
    v7 = swift_allocObject();
    *(v7 + 16) = v0;
    v5 = objc_opt_self();
    v18 = sub_100132E24;
    v19 = v7;
    v14 = _NSConcreteStackBlock;
    v15 = 1107296256;
    v6 = &unk_1001C8468;
  }

  v16 = sub_100031FA8;
  v17 = v6;
  v8 = _Block_copy(&v14);
  v9 = v0;

  [v5 animateWithDuration:1 delay:v8 options:0 animations:0.25 completion:{0.0, v14, v15}];
  _Block_release(v8);

  v11 = *&v0[v1];
  if (v11)
  {
    v12 = OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_tableView;
    v13 = *(v11 + OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_tableView);
    swift_unknownObjectRetain();
    [v13 invalidateIntrinsicContentSize];
    [*(v11 + v12) endUpdates];
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_100132434(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC11Diagnostics17ExpandableSection_chevronView);
  CGAffineTransformMakeRotation(&v3, 1.57079633);
  return [v1 setTransform:&v3];
}

id sub_100132498()
{
  *&v0[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_layoutHorizontalMarginSize] = 0x4034000000000000;
  *&v0[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_layoutVerticalMarginSize] = 0;
  v1 = OBJC_IVAR____TtC11Diagnostics17ExpandableSection_mainLayout;
  *&v0[v1] = [objc_allocWithZone(UIStackView) init];
  v2 = OBJC_IVAR____TtC11Diagnostics17ExpandableSection_headerContentView;
  *&v0[v2] = [objc_allocWithZone(UIStackView) init];
  v3 = OBJC_IVAR____TtC11Diagnostics17ExpandableSection_separatorView;
  *&v0[v3] = [objc_allocWithZone(UIView) init];
  v4 = OBJC_IVAR____TtC11Diagnostics17ExpandableSection_chevronView;
  *&v0[v4] = sub_100131B70();
  v5 = OBJC_IVAR____TtC11Diagnostics17ExpandableSection_fillerView;
  *&v0[v5] = [objc_allocWithZone(UIView) init];
  *&v0[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_bottomViewHeightConstraint] = 0;
  *&v0[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_contentHeaderView] = 0;
  *&v0[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_detailsView] = 0;
  v0[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_isExpanded] = 0;
  v6 = &v0[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_expansionDelegate];
  v7 = type metadata accessor for ExpandableSection();
  *v6 = 0;
  v6[1] = 0;
  v10.receiver = v0;
  v10.super_class = v7;
  v8 = objc_msgSendSuper2(&v10, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1001327D8();
  sub_1001329F0();

  return v8;
}

id sub_100132614(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_layoutHorizontalMarginSize] = 0x4034000000000000;
  *&v4[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_layoutVerticalMarginSize] = 0;
  v9 = OBJC_IVAR____TtC11Diagnostics17ExpandableSection_mainLayout;
  *&v4[v9] = [objc_allocWithZone(UIStackView) init];
  v10 = OBJC_IVAR____TtC11Diagnostics17ExpandableSection_headerContentView;
  *&v4[v10] = [objc_allocWithZone(UIStackView) init];
  v11 = OBJC_IVAR____TtC11Diagnostics17ExpandableSection_separatorView;
  *&v4[v11] = [objc_allocWithZone(UIView) init];
  v12 = OBJC_IVAR____TtC11Diagnostics17ExpandableSection_chevronView;
  *&v4[v12] = sub_100131B70();
  v13 = OBJC_IVAR____TtC11Diagnostics17ExpandableSection_fillerView;
  *&v4[v13] = [objc_allocWithZone(UIView) init];
  *&v4[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_bottomViewHeightConstraint] = 0;
  *&v4[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_contentHeaderView] = 0;
  *&v4[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_detailsView] = 0;
  v4[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_isExpanded] = 0;
  v14 = &v4[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_expansionDelegate];
  v15 = type metadata accessor for ExpandableSection();
  *v14 = 0;
  v14[1] = 0;
  v18.receiver = v4;
  v18.super_class = v15;
  v16 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  sub_1001327D8();
  sub_1001329F0();

  return v16;
}

id sub_1001327D8()
{
  [v0 setClipsToBounds:0];
  v1 = *&v0[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_headerContentView];
  [v1 setAxis:0];
  [v1 setAlignment:3];
  [v1 addArrangedSubview:*&v0[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_chevronView]];
  [v1 setUserInteractionEnabled:1];
  v2 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"handleTap"];
  [v1 addGestureRecognizer:v2];

  v3 = *&v0[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_separatorView];
  v4 = [objc_opt_self() opaqueSeparatorColor];
  v5 = [v4 colorWithAlphaComponent:0.35];

  [v3 setBackgroundColor:v5];
  [v3 setHidden:1];
  v6 = *&v0[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_mainLayout];
  [v6 setAxis:1];
  [v6 setAlignment:0];
  [v6 setDistribution:0];
  [v6 setLayoutMargins:{0.0, 20.0, 0.0, 20.0}];
  [v6 setLayoutMarginsRelativeArrangement:1];
  [v6 addArrangedSubview:v1];

  return [v0 addSubview:v6];
}

void sub_1001329F0()
{
  [*&v0[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_chevronView] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v0[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_separatorView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = *&v0[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_mainLayout];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = objc_opt_self();
  sub_10003C49C(&unk_1001FD020);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10017ED60;
  v4 = [v1 topAnchor];
  v5 = [v0 topAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];

  *(v3 + 32) = v6;
  v7 = [v1 bottomAnchor];
  v8 = [v0 bottomAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v3 + 40) = v9;
  v10 = [v1 leadingAnchor];
  v11 = [v0 leadingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v3 + 48) = v12;
  v13 = [v1 trailingAnchor];
  v14 = [v0 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v3 + 56) = v15;
  sub_10007E540();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 activateConstraints:isa];
}

id sub_100132CD8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExpandableSection();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100132DEC()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_100132E24()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC11Diagnostics17ExpandableSection_chevronView);
  v3[0] = 0x3FF0000000000000;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0x3FF0000000000000;
  v3[4] = 0;
  v3[5] = 0;
  return [v1 setTransform:v3];
}

uint64_t sub_100132E70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100132E90()
{
  *(v0 + OBJC_IVAR____TtC11Diagnostics17ExpandableSection_layoutHorizontalMarginSize) = 0x4034000000000000;
  *(v0 + OBJC_IVAR____TtC11Diagnostics17ExpandableSection_layoutVerticalMarginSize) = 0;
  v1 = OBJC_IVAR____TtC11Diagnostics17ExpandableSection_mainLayout;
  *(v0 + v1) = [objc_allocWithZone(UIStackView) init];
  v2 = OBJC_IVAR____TtC11Diagnostics17ExpandableSection_headerContentView;
  *(v0 + v2) = [objc_allocWithZone(UIStackView) init];
  v3 = OBJC_IVAR____TtC11Diagnostics17ExpandableSection_separatorView;
  *(v0 + v3) = [objc_allocWithZone(UIView) init];
  v4 = OBJC_IVAR____TtC11Diagnostics17ExpandableSection_chevronView;
  *(v0 + v4) = sub_100131B70();
  v5 = OBJC_IVAR____TtC11Diagnostics17ExpandableSection_fillerView;
  *(v0 + v5) = [objc_allocWithZone(UIView) init];
  *(v0 + OBJC_IVAR____TtC11Diagnostics17ExpandableSection_bottomViewHeightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC11Diagnostics17ExpandableSection_contentHeaderView) = 0;
  *(v0 + OBJC_IVAR____TtC11Diagnostics17ExpandableSection_detailsView) = 0;
  *(v0 + OBJC_IVAR____TtC11Diagnostics17ExpandableSection_isExpanded) = 0;
  v6 = (v0 + OBJC_IVAR____TtC11Diagnostics17ExpandableSection_expansionDelegate);
  *v6 = 0;
  v6[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100132FE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_tableView;
  *&v5[v10] = [objc_allocWithZone(type metadata accessor for IntrinsicSizeAdjustingTableView()) initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  v11 = OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_cancelButton;
  *&v5[v11] = [objc_opt_self() linkButton];
  *&v5[OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_tableViewHorizontalPadding] = 0x4034000000000000;
  v5[OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_serverSessionStarted] = 0;
  *&v5[OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_sessionTimeoutTimer] = 0;
  *&v5[OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_sessionTimeout] = 0x40ABA80000000000;
  v12 = &v5[OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_destinationConfirmationHandler];
  *v12 = 0;
  v12[1] = 0;
  *&v5[OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_suiteManager] = a1;
  *&v5[OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_destinations] = a2;
  *v12 = a3;
  v12[1] = a4;
  v13 = a1;
  sub_10003C48C(a3);
  _StringGuts.grow(_:)(29);
  DeviceClass = GestaltGetDeviceClass();
  v15 = sub_100100580(DeviceClass);
  v17 = v16;

  v29 = v15;
  v30 = v17;
  v18._object = 0x80000001001935E0;
  v18._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v18);
  v19 = String._bridgeToObjectiveC()();
  v20 = objc_opt_self();
  v21 = [v20 _systemImageNamed:v19];

  if (v21)
  {
  }

  else
  {
    v22 = String._bridgeToObjectiveC()();

    v21 = [v20 imageNamed:v22];
  }

  if (_UISolariumEnabled())
  {
    v23 = 2;
  }

  else
  {
    v23 = 3;
  }

  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000012, 0x8000000100193600);
  v24 = String._bridgeToObjectiveC()();

  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD00000000000001BLL, 0x8000000100193620);
  v25 = String._bridgeToObjectiveC()();

  v28.receiver = v5;
  v28.super_class = type metadata accessor for SelfServiceDestinationPickerViewController();
  v26 = objc_msgSendSuper2(&v28, "initWithTitle:detailText:icon:contentLayout:", v24, v25, v21, v23);

  sub_10003C52C(a3);
  return v26;
}

void sub_1001333B4(char a1)
{
  v23.receiver = v1;
  v23.super_class = type metadata accessor for SelfServiceDestinationPickerViewController();
  objc_msgSendSuper2(&v23, "viewDidAppear:", a1 & 1);
  *(*&v1[OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_suiteManager] + OBJC_IVAR____TtC11Diagnostics12SuiteManager_delegate + 8) = &off_1001C84E0;
  swift_unknownObjectWeakAssign();
  [*&v1[OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_tableView] invalidateIntrinsicContentSize];
  v3 = OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_sessionTimeoutTimer;
  [*&v1[OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_sessionTimeoutTimer] invalidate];
  v4 = objc_opt_self();
  v21 = sub_1001336F0;
  v22 = 0;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_100072168;
  v20 = &unk_1001C8700;
  v5 = _Block_copy(&v17);
  v6 = [v4 scheduledTimerWithTimeInterval:0 repeats:v5 block:3540.0];
  _Block_release(v5);
  v7 = *&v1[v3];
  *&v1[v3] = v6;

  v8 = *&v1[OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_destinationConfirmationHandler];
  if (v8)
  {

    v8(0);
    sub_10003C52C(v8);
  }

  if (qword_1001FC6B8 != -1)
  {
    swift_once();
  }

  v9 = qword_10020A368;
  v10 = *(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_disableSystemGesturesQueue);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_10003DA8C;
  *(v12 + 24) = v11;
  v21 = sub_10003E41C;
  v22 = v12;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_100060C48;
  v20 = &unk_1001C8778;
  v13 = _Block_copy(&v17);
  v14 = v9;

  dispatch_sync(v10, v13);
  _Block_release(v13);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else
  {
    v15 = OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled;
    v14[OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled] = 1;
    v16 = sub_100050814();
    [v16 setNearbySharingEnabled:(v14[v15] & 1) == 0];

    sub_1000508A4();
    sub_100050C28();
  }
}

void sub_1001336F0()
{
  static os_log_type_t.error.getter();
  sub_10003E110(0, &qword_1001FD6F0);
  v0 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  if (qword_1001FC6C8 != -1)
  {
    swift_once();
  }

  sub_100066800(6, 1);
}

void sub_100133804(char a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SelfServiceDestinationPickerViewController();
  objc_msgSendSuper2(&v5, "viewWillDisappear:", a1 & 1);
  *(*&v1[OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_suiteManager] + OBJC_IVAR____TtC11Diagnostics12SuiteManager_delegate + 8) = 0;
  swift_unknownObjectWeakAssign();
  v3 = OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_sessionTimeoutTimer;
  [*&v1[OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_sessionTimeoutTimer] invalidate];
  v4 = *&v1[v3];
  *&v1[v3] = 0;
}

void sub_1001338E8()
{
  v1 = [v0 navigationItem];
  [v1 setHidesBackButton:1];

  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_tableView];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 setDataSource:v0];
  [v2 setDelegate:v0];
  [v2 setSeparatorStyle:0];
  [v2 setScrollEnabled:0];
  [v2 setShowsVerticalScrollIndicator:0];
  v3 = [objc_opt_self() clearColor];
  [v2 setBackgroundColor:v3];

  [v2 setRowHeight:UITableViewAutomaticDimension];
  [v2 setEstimatedRowHeight:300.0];
  type metadata accessor for SelfServiceViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = String._bridgeToObjectiveC()();
  [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v5];

  v6 = *&v0[OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_cancelButton];
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD00000000000001FLL, 0x800000010018DC20);
  v7 = String._bridgeToObjectiveC()();

  [v6 setTitle:v7 forState:0];

  sub_10003E110(0, &qword_1002023B0);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v6 addAction:v9 forControlEvents:{64, 0, 0, 0, sub_100135D30, v8}];
}

void sub_100133BB0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_msgSend(objc_opt_self() "currentPlatform")];
    swift_unknownObjectRelease();
    if (v2)
    {
      v3 = sub_100133CB4;
    }

    else
    {
      v3 = sub_100133E80;
    }

    sub_100088E48(0, *&v1[OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_cancelButton]);
    sub_10003C52C(v3);
  }
}

void sub_100133CB4()
{
  if (qword_1001FC730 != -1)
  {
    swift_once();
  }

  v0 = qword_10020A3C8;
  if (qword_1001FC738 != -1)
  {
    swift_once();
  }

  v1 = qword_1001FEED8;
  if (qword_1001FEED8)
  {
    v2 = qword_1001FEED0;
    v3 = *(v0 + OBJC_IVAR____TtC11Diagnostics12SuiteManager_deviceManager);
    v4 = OBJC_IVAR____TtC11Diagnostics13DeviceManager_devicesBySerialNumber;
    swift_beginAccess();
    if (*(*(v3 + v4) + 16))
    {

      sub_100064AFC(v2, v1);
      if (v5)
      {
        swift_unknownObjectRetain();

        objc_opt_self();
        v6 = swift_dynamicCastObjCClass();
        if (v6)
        {
          [v6 archiveConnection];
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  else
  {
    static os_log_type_t.error.getter();
    sub_10003E110(0, &qword_1001FD6F0);
    v7 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }
}

uint64_t sub_100133E80()
{
  if (qword_1001FC6B8 != -1)
  {
    swift_once();
  }

  v0 = qword_10020A368;
  v1 = *(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_disableSystemGesturesQueue);
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100099D24;
  *(v3 + 24) = v2;
  v12[4] = sub_10003DAA4;
  v12[5] = v3;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100060C48;
  v12[3] = &unk_1001C86D8;
  v4 = _Block_copy(v12);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    v7 = OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled;
    v5[OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled] = (v5[OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingPreferencesState] & 1) == 0;
    v8 = sub_100050814();
    [v8 setNearbySharingEnabled:(v5[v7] & 1) == 0];

    v9 = sub_100050814();
    [v9 setDiscoverableMode:*&v5[OBJC_IVAR____TtC11Diagnostics10Assertions_airDropUserSetting]];

    v10 = OBJC_IVAR____TtC11Diagnostics10Assertions_captureButtonAssertion;
    v11 = *&v5[OBJC_IVAR____TtC11Diagnostics10Assertions_captureButtonAssertion];
    if (v11)
    {
      [v11 invalidate];
    }

    *&v5[v10] = 0;
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1001340A0()
{
  if (_UISolariumEnabled())
  {
    v1 = 0.0;
  }

  else
  {
    v1 = 20.0;
  }

  v2 = objc_opt_self();
  sub_10003C49C(&unk_1001FD020);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10017ED60;
  v4 = *&v0[OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_tableView];
  v5 = [v4 leadingAnchor];
  v6 = [v0 contentView];
  v7 = [v6 leadingAnchor];

  v8 = [v5 constraintEqualToAnchor:v7 constant:v1];
  *(v3 + 32) = v8;
  v9 = [v4 trailingAnchor];
  v10 = [v0 contentView];
  v11 = [v10 trailingAnchor];

  v12 = [v9 constraintEqualToAnchor:v11 constant:-v1];
  *(v3 + 40) = v12;
  v13 = [v4 topAnchor];
  v14 = [v0 contentView];
  v15 = [v14 topAnchor];

  v16 = [v13 constraintEqualToAnchor:v15];
  *(v3 + 48) = v16;
  v17 = [v4 bottomAnchor];
  v18 = [v0 contentView];
  v19 = [v18 bottomAnchor];

  v20 = [v17 constraintEqualToAnchor:v19];
  *(v3 + 56) = v20;
  sub_10003E110(0, &qword_1001FD550);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 activateConstraints:isa];

  return [v4 invalidateIntrinsicContentSize];
}

id sub_1001343F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SelfServiceDestinationPickerViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1001344E0(void *a1)
{
  v3 = String._bridgeToObjectiveC()();
  v4 = [a1 dequeueReusableCellWithIdentifier:v3];

  if (v4)
  {
    type metadata accessor for SelfServiceViewCell();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      goto LABEL_5;
    }
  }

  type metadata accessor for SelfServiceViewCell();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
LABEL_5:
  v5[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_subtitleTruncated] = 0;
  v6 = OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_subtitleLabel;
  [*&v5[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_subtitleLabel] setNumberOfLines:0];
  v7 = IndexPath.section.getter();
  v8 = OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_destinations;
  v9 = *(v1 + OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_destinations);
  if (v9 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = IndexPath.section.getter();
  v12 = *(v1 + v8);
  if (v7 >= v10)
  {
    if (v12 >> 62)
    {
      if (result != _CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_22;
      }
    }

    else if (result != *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  if ((v12 & 0xC000000000000001) != 0)
  {

    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_12:
    v14 = [v13 endpoint];

    if (v14 == 2)
    {
      v15 = [objc_opt_self() configurationWithScale:3];
      v16 = String._bridgeToObjectiveC()();
      v17 = [objc_opt_self() systemImageNamed:v16 withConfiguration:v15];

      if (v17)
      {
        v18 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.478431373 blue:1.0 alpha:1.0];
        v19 = [v17 imageWithTintColor:v18];
      }

      else
      {
        v19 = 0;
      }

      sub_1000BB560(v19);

      v20 = sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0x5F4E55525F525353, 0xEE00524941504552);
      v21 = &v5[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_titleText];
      *v21 = v20;
      v21[1] = v22;

      v23 = *&v5[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_titleLabel];

      v24 = v23;
      v25 = String._bridgeToObjectiveC()();

      [v24 setText:v25];

      v26 = sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000016, 0x8000000100193660);
      v27 = &v5[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_subtitleText];
      *v27 = v26;
      v27[1] = v28;

      v29 = *&v5[v6];

      v30 = v29;
      v31 = String._bridgeToObjectiveC()();

      [v30 setText:v31];

      goto LABEL_22;
    }

    if (v14 != 1)
    {
LABEL_22:
      [v5 setAccessoryType:1];
      return v5;
    }

LABEL_17:
    sub_10013493C(v5);
    goto LABEL_22;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v12 + 8 * result + 32);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_10013493C(uint64_t a1)
{
  v2 = [objc_opt_self() configurationWithScale:3];
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() _systemImageNamed:v3 withConfiguration:v2];

  if (v4)
  {
    v5 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.478431373 blue:1.0 alpha:1.0];
    v6 = [v4 imageWithTintColor:v5];
  }

  else
  {
    v6 = 0;
  }

  sub_1000BB560(v6);

  v7 = sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000013, 0x8000000100193680);
  v8 = (a1 + OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_titleText);
  *v8 = v7;
  v8[1] = v9;

  v10 = *(a1 + OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_titleLabel);

  v11 = v10;
  v12 = String._bridgeToObjectiveC()();

  [v11 setText:v12];

  v13 = sub_100049C98(0xD00000000000001BLL);
  v15 = sub_1000494C8(0, 0, _swiftEmptyArrayStorage, v13, v14);
  v17 = v16;

  v18 = (a1 + OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_subtitleText);
  *v18 = v15;
  v18[1] = v17;

  v19 = *(a1 + OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_subtitleLabel);

  v20 = v19;
  v21 = String._bridgeToObjectiveC()();

  [v20 setText:v21];
}

void sub_100134D3C(char a1, void *a2, void *a3, int a4, uint64_t a5, uint64_t a6, void *a7)
{
  v27 = a6;
  v28 = a7;
  v26 = a4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for DispatchQoS();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v25[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2 && (a1 & 1) != 0)
  {
    v18 = qword_1001FC738;
    v19 = a2;
    v28 = v19;
    if (v18 != -1)
    {
      swift_once();
      v19 = v28;
    }

    sub_100094488(qword_1001FEED0, qword_1001FEED8, v19, v26 & 1);
    v20 = v28;
  }

  else
  {
    sub_10003E110(0, &qword_1001FD040);
    v21 = static OS_dispatch_queue.main.getter();
    v22 = swift_allocObject();
    *(v22 + 16) = a3;
    aBlock[4] = v27;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031FA8;
    aBlock[3] = v28;
    v23 = _Block_copy(aBlock);
    v24 = a3;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10005BD2C();
    sub_10003C49C(&unk_1001FD050);
    sub_1000446A0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v23);

    (*(v11 + 8))(v13, v10);
    (*(v15 + 8))(v17, v14);
  }
}

void sub_100135070(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_suiteManager];
  v3 = objc_allocWithZone(type metadata accessor for SelfServiceSuitePickerViewController());
  v6 = sub_1000B2720(v2);
  v4 = [a1 navigationController];
  if (v4)
  {
    v5 = v4;
    [v4 pushViewController:v6 animated:1];
  }
}

void sub_10013520C(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *&a1[OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_suiteManager];
  objc_allocWithZone(type metadata accessor for SuiteInProgressViewController());
  v9 = v8;
  v10 = a2;
  v15 = sub_1000ECABC(v9, a2);
  v11 = &v15[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_onAppear];
  v12 = *&v15[OBJC_IVAR____TtC11Diagnostics29SuiteInProgressViewController_onAppear];
  *v11 = a3;
  v11[1] = a4;
  sub_10003C48C(a3);
  sub_10003C52C(v12);
  v13 = [a1 navigationController];
  if (v13)
  {
    v14 = v13;
    [v13 pushViewController:v15 animated:1];
  }
}

uint64_t sub_100135318(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v10 = *(v21 - 8);
  __chkstk_darwin(v21);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003E110(0, &qword_1001FD040);
  v20 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  v13[2] = v3;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = a3;
  aBlock[4] = sub_100135624;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001C8548;
  v14 = _Block_copy(aBlock);
  v15 = v3;
  v16 = a1;
  sub_10003C48C(a2);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10005BD2C();
  sub_10003C49C(&unk_1001FD050);
  sub_1000446A0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v17 = v20;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v22 + 8))(v9, v7);
  return (*(v10 + 8))(v12, v21);
}

uint64_t sub_1001355D4()
{
  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100135630(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100135648()
{
  v1 = OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_destinations;
  v2 = *(v0 + OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_destinations);
  if (v2 >> 62)
  {
LABEL_20:
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (v3 != v4)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v7 = [v5 endpoint];

    ++v4;
    if (v7 == 1)
    {
      goto LABEL_16;
    }
  }

  v8 = *(v0 + v1);
  if (v8 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
    v10 = __OFADD__(v13, 1);
    result = v13 + 1;
    if (!v10)
    {
      return result;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = __OFADD__(v9, 1);
    result = v9 + 1;
    if (!v10)
    {
      return result;
    }
  }

  __break(1u);
LABEL_16:

  v12 = *(v0 + v1);
  if (!(v12 >> 62))
  {
    return *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return _CocoaArrayWrapper.endIndex.getter();
}

void sub_1001357CC()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_destinationConfirmationHandler];
  v3 = *&v0[OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_destinationConfirmationHandler];
  if (!v3)
  {
    return;
  }

  v4 = IndexPath.section.getter();
  v5 = OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_destinations;
  v6 = *&v0[OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_destinations];
  if (v6 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = IndexPath.section.getter();
  v9 = *&v0[v5];
  if (v4 < v7)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {

      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_9:
      v4 = [v10 endpoint];

      v3(v4);
      *(swift_allocObject() + 16) = v1;
      v11 = qword_1001FC738;
      v12 = v1;
      if (v11 == -1)
      {
LABEL_10:
        sub_1000959E0(v4, qword_1001FEED0, qword_1001FEED8, sub_100135C98);
        sub_10003C52C(v3);
LABEL_16:

        return;
      }

LABEL_34:
      swift_once();
      goto LABEL_10;
    }

    if ((v8 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v8 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v10 = *(v9 + 8 * v8 + 32);
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_36;
  }

  if (v9 >> 62)
  {
    if (v8 == _CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_13;
    }

LABEL_30:

    sub_10003C52C(v3);
    return;
  }

  if (v8 != *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_30;
  }

LABEL_13:
  v13 = [objc_opt_self() sharedInstance];
  [v13 overrideSessionModeWithMode:0];

  v14 = OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_serverSessionStarted;
  if (*(v1 + OBJC_IVAR____TtC11Diagnostics42SelfServiceDestinationPickerViewController_serverSessionStarted))
  {
    *(swift_allocObject() + 16) = v1;
    v15 = qword_1001FC738;
    v16 = v1;
    if (v15 == -1)
    {
LABEL_15:
      sub_1000959E0(1uLL, qword_1001FEED0, qword_1001FEED8, sub_100135C54);
      sub_10003C52C(v3);
      goto LABEL_16;
    }

LABEL_36:
    swift_once();
    goto LABEL_15;
  }

  v17 = [objc_allocWithZone(type metadata accessor for SetupViewController()) init];
  v17[OBJC_IVAR____TtC11Diagnostics19SetupViewController_entryReason] = 5;
  v18 = [v1 navigationController];
  if (v18)
  {
    v19 = v18;
    [v18 pushViewController:v17 animated:1];
  }

  v20 = *v2;
  if (*v2)
  {

    v20(1);
    sub_10003C52C(v20);
  }

  if (qword_1001FC738 != -1)
  {
    swift_once();
  }

  v21 = qword_1001FEED0;
  v22 = qword_1001FEED8;
  sub_100093FD8(qword_1001FEED0, qword_1001FEED8);
  sub_1000925B4(v21, v22, 0);
  sub_10003C52C(v3);

  *(v1 + v14) = 1;
}

uint64_t sub_100135C1C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100135CF8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t *sub_100135DA4@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_100135DC0()
{
  result = qword_1002023B8;
  if (!qword_1002023B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002023B8);
  }

  return result;
}

void sub_100135EA4(void *a1)
{
  if (!a1)
  {
    return;
  }

  v2 = *&v1[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_topContainerConstraint];
  *&v1[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_topContainerConstraint] = 0;
  v23 = a1;

  v3 = *&v1[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_bottomContainerConstraint];
  *&v1[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_bottomContainerConstraint] = 0;

  v4 = *&v1[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_leadingContainerConstraint];
  *&v1[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_leadingContainerConstraint] = 0;

  v5 = *&v1[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_trailingContainerConstraint];
  *&v1[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_trailingContainerConstraint] = 0;

  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v23;
  if (v1[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_animated] == 1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v23;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_100136B4C;
    *(v8 + 24) = v6;
    v9 = objc_opt_self();
    v28 = sub_10006D89C;
    v29 = v7;
    aBlock = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = sub_100031FA8;
    v27 = &unk_1001C88F8;
    v10 = _Block_copy(&aBlock);
    v11 = v23;
    v12 = v1;

    v28 = sub_10003D960;
    v29 = v8;
    aBlock = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = sub_100084F94;
    v27 = &unk_1001C8920;
    v13 = _Block_copy(&aBlock);

    [v9 animateWithDuration:0x20000 delay:v10 options:v13 animations:0.125 completion:0.0];
    _Block_release(v13);
    _Block_release(v10);

    return;
  }

  v14 = *&v1[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedView];
  if (v14)
  {
    sub_10003E110(0, &qword_1001FF090);
    v15 = v23;
    v16 = v1;
    v17 = v14;
    v18 = static NSObject.== infix(_:_:)();

    if (v18)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v19 = v23;
    v20 = v1;
  }

  [v23 removeFromSuperview];
LABEL_10:
  v21 = *&v1[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedViewRemovedCompletion];
  if (v21)
  {

    v21(v22);
    sub_10003C52C(v21);
  }
}

void sub_10013621C(uint64_t a1, id a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedView);
  if (!v4 || (sub_10003E110(0, &qword_1001FF090), v5 = v4, v6 = a2, v7 = static NSObject.== infix(_:_:)(), v5, v6, (v7 & 1) == 0))
  {
    [a2 removeFromSuperview];
  }

  v8 = *(a1 + OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedViewRemovedCompletion);
  if (v8)
  {

    v8(v9);

    sub_10003C52C(v8);
  }
}

void sub_10013630C()
{
  v1 = *&v0[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedView];
  if (v1)
  {
    v41 = v1;
    [v0 addSubview:v41];
    v2 = [v0 topAnchor];
    v3 = [v41 topAnchor];
    v4 = [v2 constraintEqualToAnchor:v3];

    v5 = OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_topContainerConstraint;
    v6 = *&v0[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_topContainerConstraint];
    *&v0[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_topContainerConstraint] = v4;

    v7 = [v0 bottomAnchor];
    v8 = [v41 bottomAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];

    v10 = OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_bottomContainerConstraint;
    v11 = *&v0[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_bottomContainerConstraint];
    *&v0[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_bottomContainerConstraint] = v9;

    v12 = [v0 leadingAnchor];
    v13 = [v41 leadingAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];

    v15 = OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_leadingContainerConstraint;
    v16 = *&v0[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_leadingContainerConstraint];
    *&v0[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_leadingContainerConstraint] = v14;

    v17 = [v0 trailingAnchor];
    v18 = [v41 trailingAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];

    v20 = OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_trailingContainerConstraint;
    v21 = *&v0[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_trailingContainerConstraint];
    *&v0[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_trailingContainerConstraint] = v19;

    v22 = *&v0[v5];
    if (v22)
    {
      v23 = *&v0[v10];
      if (v23)
      {
        v24 = *&v0[v15];
        if (v24)
        {
          v25 = *&v0[v20];
          if (v25)
          {
            v26 = objc_opt_self();
            sub_10003C49C(&unk_1001FD020);
            v27 = swift_allocObject();
            *(v27 + 16) = xmmword_10017ED60;
            *(v27 + 32) = v22;
            *(v27 + 40) = v23;
            *(v27 + 48) = v24;
            *(v27 + 56) = v25;
            sub_10003E110(0, &qword_1001FD550);
            v28 = v22;
            v29 = v23;
            v30 = v24;
            v31 = v25;
            v32 = v28;
            v33 = v29;
            v34 = v30;
            v35 = v31;
            isa = Array._bridgeToObjectiveC()().super.isa;

            [v26 activateConstraints:isa];
          }
        }
      }
    }

    if (v0[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_animated] == 1)
    {
      [v41 setAlpha:0.0];
      v37 = swift_allocObject();
      *(v37 + 16) = v41;
      v38 = objc_opt_self();
      aBlock[4] = sub_10006D8C8;
      aBlock[5] = v37;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100031FA8;
      aBlock[3] = &unk_1001C8858;
      v39 = _Block_copy(aBlock);
      v40 = v41;

      [v38 animateWithDuration:0x10000 delay:v39 options:0 animations:0.375 completion:0.0];
      _Block_release(v39);

      [v0 layoutIfNeeded];
    }

    else
    {
    }
  }
}

id sub_100136780(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_animated] = 1;
  v9 = &v4[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedViewRemovedCompletion];
  *v9 = 0;
  v9[1] = 0;
  *&v4[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_topContainerConstraint] = 0;
  *&v4[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_bottomContainerConstraint] = 0;
  *&v4[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_leadingContainerConstraint] = 0;
  *&v4[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_trailingContainerConstraint] = 0;
  *&v4[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedView] = 0;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for CardStackSubviewContainer();
  return objc_msgSendSuper2(&v11, "initWithFrame:", a1, a2, a3, a4);
}

id sub_100136864(void *a1)
{
  v1[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_animated] = 1;
  v3 = &v1[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedViewRemovedCompletion];
  *v3 = 0;
  v3[1] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_topContainerConstraint] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_bottomContainerConstraint] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_leadingContainerConstraint] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_trailingContainerConstraint] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedView] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for CardStackSubviewContainer();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

void sub_100136950()
{
  sub_10003C52C(*(v0 + OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedViewRemovedCompletion));

  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics25CardStackSubviewContainer_containedView);
}

id sub_1001369D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CardStackSubviewContainer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100136ABC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100136AF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100136B0C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100136B54()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100136BA0(void *a1)
{
  v2 = v1;
  v4 = sub_10003C49C(&unk_1001FFE20);
  __chkstk_darwin(v4 - 8);
  v52 = &v51 - v5;
  v6 = type metadata accessor for UUID();
  v53 = *(v6 - 8);
  v54 = v6;
  __chkstk_darwin(v6);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10003DAAC(v9, qword_10020A510);
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  v13 = os_log_type_enabled(v11, v12);
  v55 = v2;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = sub_100056B7C(0x6C66287055746573, 0xEC000000293A776FLL, &v56);
    *(v14 + 12) = 2080;
    v15 = [v10 debugDescription];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = sub_100056B7C(v16, v18, &v56);

    *(v14 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "[Target] %s flow: %s", v14, 0x16u);
    swift_arrayDestroy();
  }

  if ([v10 destination] != 2 && objc_msgSend(v10, "destination") != 3)
  {
    v30 = 0;
LABEL_20:
    sub_10013BBF0();
    swift_allocError();
    *v50 = v30;
    return swift_willThrow();
  }

  v20 = [v10 sessionID];
  if (!v20)
  {
    goto LABEL_19;
  }

  v21 = v20;
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25 = [v10 serialNumber];
  if (v25)
  {
    v26 = v25;
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0;
  }

  v31 = v55;
  v32 = (v55 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_targetSerialNumber);
  *v32 = v27;
  v32[1] = v29;

  v33 = (v31 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_sessionID);
  *v33 = v22;
  v33[1] = v24;

  v34 = [v10 destination];
  v35 = OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_isSourceDevice;
  *(v31 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_isSourceDevice) = v34 == 2;
  if (v34 == 2)
  {
    UUID.init()();
    v36 = UUID.uuidString.getter();
    v38 = v37;
    (*(v53 + 8))(v8, v54);
    v39 = (v31 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_passcode);
    *v39 = v36;
    v39[1] = v38;
    goto LABEL_17;
  }

  v40 = [v10 passcode];
  if (!v40)
  {
LABEL_19:
    v30 = 1;
    goto LABEL_20;
  }

  v41 = v40;
  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;

  v45 = (v31 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_passcode);
  *v45 = v42;
  v45[1] = v44;
LABEL_17:

  if ((*(v31 + v35) & 1) == 0)
  {
    v47 = type metadata accessor for TaskPriority();
    v48 = v52;
    (*(*(v47 - 8) + 56))(v52, 1, 1, v47);
    v49 = swift_allocObject();
    *(v49 + 16) = 0;
    *(v49 + 24) = 0;
    sub_1000EC574(0, 0, v48, &unk_100185C58, v49);
  }

  return result;
}

char *sub_100137090()
{
  v1 = type metadata accessor for URL();
  v2 = __chkstk_darwin(v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v8 = &v20 - v7;
  if (*&v0[OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_targetSerialNumber + 8] && *&v0[OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_sessionID + 8] && *&v0[OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_passcode + 8])
  {
    if (v0[OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_isSourceDevice] == 1)
    {
      v9 = *&v0[OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_passcode];
      v21 = v6;
      v22 = v9;
      v24 = v5;
      v23 = objc_allocWithZone(DADiagnosticFlow);

      v10 = String._bridgeToObjectiveC()();
      v11 = String._bridgeToObjectiveC()();
      v22 = String._bridgeToObjectiveC()();
      v12 = v10;
      v13 = [v23 initWithDestination:4 serialNumber:v10 sessionID:v11 passcode:v22];

      sub_1000B1294(v8);

      v14 = v21;
      v15 = v24;
      (*(v21 + 16))(v4, v8, v24);
      v16 = objc_allocWithZone(type metadata accessor for AssessmentQRCodeViewController());
      v0 = sub_1000B5B34(v4, 0);
      (*(v14 + 8))(v8, v15);
    }

    else
    {
      v19 = objc_allocWithZone(type metadata accessor for AssessmentDamageCheckGuideViewController());
      return sub_100069804();
    }
  }

  else
  {
    sub_10013BBF0();
    swift_allocError();
    *v17 = 2;
    swift_willThrow();
  }

  return v0;
}

uint64_t sub_100137368()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_action);
  if (v1)
  {
    [v1 setResultCode:-4];
  }

  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10003DAAC(v2, qword_10020A510);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "[Target] Canceling session", v5, 2u);
  }

  v6 = v0[2];

  v7 = *(v6 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_assessorDeviceConnection);
  v0[3] = v7;
  if (v7)
  {

    v8 = swift_task_alloc();
    v0[4] = v8;
    *v8 = v0;
    v8[1] = sub_100058414;

    return sub_1000D9380();
  }

  else
  {
    v10 = v0[1];

    return v10();
  }
}

char *sub_10013752C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AssessmentError();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10003C49C(&qword_1001FCE98);
  v9 = __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v35 - v13;
  byte_10020A618 = 1;
  if (qword_1001FC848 != -1)
  {
    v34 = v12;
    swift_once();
    v12 = v34;
  }

  v15 = sub_10003DAAC(v12, qword_10020A600);
  swift_beginAccess();
  sub_1000E3324(a1, v15);
  swift_endAccess();
  sub_10003DD14(a1, v14);
  v16 = (*(v5 + 48))(v14, 1, v4);
  if (v16 == 1)
  {
    *(swift_allocObject() + 16) = v2;
    v17 = v2;
    v18 = sub_10013BDF0;
  }

  else
  {
    sub_10003DD14(v14, v11);
    static AssessmentError.possibleIssueDetected.getter();
    sub_10013BD70(&qword_1001FD3C0, &type metadata accessor for AssessmentError);
    v19 = dispatch thunk of static Equatable.== infix(_:_:)();
    v20 = *(v5 + 8);
    v20(v7, v4);
    if ((v19 & 1) == 0)
    {
      static AssessmentError.canceledInitialLoad.getter();
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      v20(v7, v4);
      if (v22 & 1) != 0 || (static AssessmentError.userCanceledSession.getter(), v23 = dispatch thunk of static Equatable.== infix(_:_:)(), v20(v7, v4), (v23) || (static AssessmentError.clientTerminatedSession.getter(), v24 = dispatch thunk of static Equatable.== infix(_:_:)(), v20(v7, v4), (v24))
      {
        v20(v11, v4);
        sub_10003DD84(v14, &qword_1001FCE98);
        *(swift_allocObject() + 16) = v2;
        result = v2;
        v25 = sub_10013BDB8;
      }

      else
      {
        static AssessmentError.viewSupportOptions.getter();
        v26 = dispatch thunk of static Equatable.== infix(_:_:)();
        v20(v7, v4);
        if (v26)
        {
          v20(v11, v4);
          result = sub_10003DD84(v14, &qword_1001FCE98);
          v25 = sub_10013ACF0;
        }

        else
        {
          static AssessmentError.retryExceeded.getter();
          v27 = dispatch thunk of static Equatable.== infix(_:_:)();
          v20(v7, v4);
          if (v27)
          {
            v28 = v2[OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_isSourceDevice];
            v20(v11, v4);
            result = sub_10003DD84(v14, &qword_1001FCE98);
            if ((v28 & 1) == 0)
            {
              return result;
            }

            v18 = sub_10013ACFC;
            (sub_10013ACFC)(result);
            return sub_10003C52C(v18);
          }

          static AssessmentError.sessionArchived.getter();
          v29 = dispatch thunk of static Equatable.== infix(_:_:)();
          v20(v7, v4);
          if ((v29 & 1) == 0)
          {
            static AssessmentError.sessionExpired.getter();
            v30 = dispatch thunk of static Equatable.== infix(_:_:)();
            v20(v7, v4);
            if ((v30 & 1) == 0)
            {
              static AssessmentError.sessionMissing.getter();
              v31 = dispatch thunk of static Equatable.== infix(_:_:)();
              v20(v7, v4);
              if ((v31 & 1) == 0)
              {
                static AssessmentError.invalidImageUploadTokens.getter();
                v32 = dispatch thunk of static Equatable.== infix(_:_:)();
                v20(v7, v4);
                if ((v32 & 1) == 0)
                {
                  static AssessmentError.cosmeticAssessmentFailed.getter();
                  v33 = dispatch thunk of static Equatable.== infix(_:_:)();
                  v20(v7, v4);
                  if ((v33 & 1) == 0)
                  {
                    static AssessmentError.accessibilityEscape.getter();
                    dispatch thunk of static Equatable.== infix(_:_:)();
                    v20(v7, v4);
                  }
                }
              }
            }
          }

          v20(v11, v4);
          result = sub_10003DD84(v14, &qword_1001FCE98);
          v25 = sub_10013B020;
        }
      }

      v18 = v25;
LABEL_16:
      v18(result);
      return sub_10003C52C(v18);
    }

    byte_10020A618 = 0;
    v20(v11, v4);
    v18 = 0;
  }

  sub_10003DD84(v14, &qword_1001FCE98);
  result = *&v2[OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_action];
  if (result)
  {
    result = [result setResultCode:0];
  }

  if (v16 == 1)
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_100137C10()
{
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10003DAAC(v1, qword_10020A510);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[Target] Sending retry message", v4, 2u);
  }

  v5 = v0[2];

  v6 = *(v5 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_assessorDeviceConnection);
  v0[3] = v6;
  if (v6)
  {

    v7 = swift_task_alloc();
    v0[4] = v7;
    *v7 = v0;
    v7[1] = sub_100058988;

    return sub_1000D8F84();
  }

  else
  {
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_100137DD0()
{
  v22 = v0;
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10003DAAC(v1, qword_10020A510);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v21 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100056B7C(0xD000000000000011, 0x8000000100193980, &v21);
    _os_log_impl(&_mh_execute_header, v2, v3, "[Target] %s", v4, 0xCu);
    sub_100044554(v5);
  }

  if (qword_1001FC6B8 != -1)
  {
    swift_once();
  }

  v6 = qword_10020A368;
  v7 = *(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_disableSystemGesturesQueue);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_10003DA8C;
  *(v9 + 24) = v8;
  v0[6] = sub_10003DAA4;
  v0[7] = v9;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100060C48;
  v0[5] = &unk_1001C8AA0;
  v10 = _Block_copy(v0 + 2);
  v11 = v6;

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else
  {
    v15 = OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled;
    v11[OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled] = 1;
    v16 = sub_100050814();
    [v16 setNearbySharingEnabled:(v11[v15] & 1) == 0];

    sub_1000508A4();
    sub_100050C28();
    v0[11] = type metadata accessor for MainActor();
    v0[12] = static MainActor.shared.getter();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    v12 = sub_100138124;
    v13 = v17;
    v14 = v19;
  }

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_100138124()
{

  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 delegate];
  *(v0 + 104) = v2;

  if (v2)
  {
    type metadata accessor for AppDelegate();
    v3 = swift_dynamicCastClass();
    *(v0 + 112) = v3;
    if (v3)
    {
      v4 = sub_1001382FC;
    }

    else
    {
      swift_unknownObjectRelease();
      v4 = sub_100138218;
    }
  }

  else
  {
    v4 = sub_10013C274;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100138218()
{
  v0[17] = 0;
  v1 = *(v0[10] + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_assessorDeviceConnection);
  v0[18] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[19] = v2;
    *v2 = v0;
    v2[1] = sub_1001385E8;

    return sub_1000D89E0();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1001382FC()
{
  *(v0 + 120) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100138388, v2, v1);
}

uint64_t sub_100138388()
{
  v1 = *(v0 + 112);

  v2 = OBJC_IVAR____TtC11Diagnostics11AppDelegate_buttonEventMonitor;
  [*(v1 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_buttonEventMonitor) startWithPriority:200 completion:0];
  v3 = *(v1 + v2);
  *(v0 + 128) = v3;
  v4 = v3;
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_100138430, 0, 0);
}

uint64_t sub_100138430()
{
  receiver = v0[8].receiver;
  v2 = type metadata accessor for ButtonEventsConsumer();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR____TtC11Diagnostics20ButtonEventsConsumer_handler];
  *v4 = 0;
  *(v4 + 1) = 0;
  v0[4].receiver = v3;
  v0[4].super_class = v2;
  v5 = receiver;
  v6 = objc_msgSendSuper2(v0 + 4, "init");
  v7 = &v6[OBJC_IVAR____TtC11Diagnostics20ButtonEventsConsumer_handler];
  v8 = *&v6[OBJC_IVAR____TtC11Diagnostics20ButtonEventsConsumer_handler];
  *v7 = sub_10013A5D0;
  v7[1] = 0;
  v9 = v6;
  sub_10003C52C(v8);

  [v5 addTarget:v9 action:"consume:" forButtonEvents:48 propagate:0];
  v10 = v0[8].receiver;
  v0[8].super_class = v10;
  v11 = *(v0[5].receiver + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_assessorDeviceConnection);
  v0[9].receiver = v11;
  if (v11)
  {

    v12 = swift_task_alloc();
    v0[9].super_class = v12;
    *v12 = v0;
    *(v12 + 1) = sub_1001385E8;

    return sub_1000D89E0();
  }

  else
  {

    super_class = v0->super_class;

    return super_class();
  }
}

uint64_t sub_1001385E8()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_100138768;
  }

  else
  {

    v2 = sub_100138704;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100138704()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100138768()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001387D4(void *a1)
{
  v2 = v1;
  v4 = sub_10003C49C(&unk_1001FFE20);
  __chkstk_darwin(v4 - 8);
  v6 = &v29 - v5;
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10003DAAC(v7, qword_10020A510);
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_100056B7C(0xD000000000000031, 0x8000000100193940, &v30);
    *(v11 + 12) = 2080;
    v12 = [v8 identifier];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_100056B7C(v13, v15, &v30);

    *(v11 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "[Target] %s action ID: %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  if (!qword_10020A548)
  {
    sub_1000F6DA8();
  }

  v30 = v8;
  swift_getKeyPath();
  v17 = swift_allocObject();
  *(v17 + 16) = v8;
  *(v17 + 24) = v2;
  v18 = v8;
  v19 = v2;
  v20 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v21 = *&v19[OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_actionObservation];
  *&v19[OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_actionObservation] = v20;

  v22 = *&v19[OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_action];
  *&v19[OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_action] = v18;

  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v6, 1, 1, v23);
  type metadata accessor for MainActor();
  v24 = v18;
  v25 = v19;
  v26 = static MainActor.shared.getter();
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = &protocol witness table for MainActor;
  v27[4] = v25;
  sub_1000539D8(0, 0, v6, &unk_100185BE8, v27);
}

uint64_t sub_100138B58(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100138B78, 0, 0);
}

uint64_t sub_100138B78()
{
  v15 = v0;
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10003DAAC(v1, qword_10020A510);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    v6 = Dictionary.description.getter();
    v8 = sub_100056B7C(v6, v7, &v14);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "[Target] Sending device attitude: %s", v4, 0xCu);
    sub_100044554(v5);
  }

  v9 = *(v0[3] + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_assessorDeviceConnection);
  v0[4] = v9;
  if (v9)
  {

    v10 = swift_task_alloc();
    v0[5] = v10;
    *v10 = v0;
    v10[1] = sub_1000593A0;
    v11 = v0[2];

    return sub_1000D977C(v11);
  }

  else
  {
    v13 = v0[1];

    return v13();
  }
}

void sub_100138DC0()
{
  if (*(v0 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_assessorDeviceConnection))
  {
    if (qword_1001FC7C8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_10003DAAC(v1, qword_10020A510);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v20 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_100056B7C(0xD000000000000012, 0x800000010018B320, &v20);
      _os_log_impl(&_mh_execute_header, v2, v3, "[Target] %s called with an active connection; ignoring", v4, 0xCu);
      sub_100044554(v5);
    }
  }

  else
  {
    v6 = *(v0 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_sessionID + 8);
    if (v6 && (v7 = *(v0 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_passcode + 8)) != 0)
    {
      v8 = *(v0 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_sessionID);
      v9 = *(v0 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_passcode);
      type metadata accessor for CosmeticAssessmentP2PConnectionManager();
      swift_allocObject();

      v10 = v8;
      v11 = v0;
      v12 = sub_1000705B8(v10, v6, v9, v7, 0);

      v13 = OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_connectionManager;
      *(v11 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_connectionManager) = v12;

      if (*(v11 + v13))
      {

        sub_10006D8F8();
      }
    }

    else
    {
      if (qword_1001FC7C8 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_10003DAAC(v14, qword_10020A510);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v20 = v18;
        *v17 = 136315138;
        *(v17 + 4) = sub_100056B7C(0xD000000000000012, 0x800000010018B320, &v20);
        _os_log_impl(&_mh_execute_header, v15, v16, "[Target] %s called before setting up; ignoring", v17, 0xCu);
        sub_100044554(v18);
      }

      sub_10013BBF0();
      swift_allocError();
      *v19 = 2;
      swift_willThrow();
    }
  }
}

void sub_100139128(char a1)
{
  v2 = *&v1[OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_sessionID + 8];
  if (!v2)
  {
    return;
  }

  v4 = *&v1[OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_sessionID];
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v1;

  static Published.subscript.setter();
  byte_10020A540 = 1;
  sub_1000F7B4C();
  if (qword_1001FC6B8 != -1)
  {
    swift_once();
  }

  v6 = qword_10020A368;
  v7 = OBJC_IVAR____TtC11Diagnostics10Assertions_invertClassicColorsUserSetting;
  v8 = *(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_invertClassicColorsUserSetting);
  if (v8 != 2)
  {
    if ((v8 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v9 = _AXSClassicInvertColorsEnabled();
  *(v6 + v7) = v9 != 0;
  if (v9)
  {
LABEL_6:
    _AXSClassicInvertColorsSetEnabled();
  }

LABEL_7:
  v10 = OBJC_IVAR____TtC11Diagnostics10Assertions_voiceOverCaptionsUserSetting;
  if (*(v6 + OBJC_IVAR____TtC11Diagnostics10Assertions_voiceOverCaptionsUserSetting) == 2)
  {
    v11 = [objc_opt_self() sharedInstance];
    v12 = [v11 enableVoiceOverCaptions];

    *(v6 + v10) = v12;
  }

  v13 = [objc_opt_self() sharedInstance];
  [v13 setEnableVoiceOverCaptions:0];

  v14 = objc_allocWithZone(type metadata accessor for CosmeticAssessmentWatermarkScanViewController());
  sub_1000E35AC(v4, v2, a1);
  v16 = v15;
  if (qword_1001FC6D0 != -1)
  {
    swift_once();
  }

  [qword_10020A388 pushViewController:v16 animated:1];
}

uint64_t sub_100139344()
{
  v1[13] = v0;
  v1[14] = type metadata accessor for MainActor();
  v1[15] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[16] = v3;
  v1[17] = v2;

  return _swift_task_switch(sub_1001393E0, v3, v2);
}

uint64_t sub_1001393E0()
{
  if (qword_1001FC6D0 != -1)
  {
    swift_once();
  }

  v1 = [qword_10020A388 topViewController];
  if (v1)
  {
    *(v0 + 96) = v1;
    sub_10003E110(0, &qword_1001FDE30);
    sub_10003C49C(&qword_1002024C0);
    if (swift_dynamicCast())
    {
      if (*(v0 + 80))
      {
        sub_100049F74((v0 + 56), v0 + 16);
        *(v0 + 144) = *sub_1000442A0((v0 + 16), *(v0 + 40));
        *(v0 + 152) = static MainActor.shared.getter();
        v3 = dispatch thunk of Actor.unownedExecutor.getter();

        return _swift_task_switch(sub_1001395B0, v3, v2);
      }
    }

    else
    {
      *(v0 + 88) = 0;
      *(v0 + 72) = 0u;
      *(v0 + 56) = 0u;
    }
  }

  else
  {

    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
  }

  sub_10003DD84(v0 + 56, &qword_1002024B8);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1001395B0()
{

  sub_1000E4774();
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return _swift_task_switch(sub_100139618, v1, v2);
}

uint64_t sub_100139618()
{
  v1 = *(v0 + 104);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 56) = 1;
  v2 = v1;
  static Published.subscript.setter();
  sub_100044554(v0 + 16);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1001396D0()
{
  if (qword_1001FC6D0 != -1)
  {
    swift_once();
  }

  v1 = [qword_10020A388 topViewController];
  if (v1 && (v7[0] = v1, sub_10003E110(0, &qword_1001FDE30), sub_10003C49C(&qword_1002024C0), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v5 + 1))
    {
      sub_100049F74(&v4, v7);
      sub_1000442A0(v7, v7[3]);
      sub_1000E4560();
      sub_1000E46A8();
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v4) = 0;
      v2 = v0;
      static Published.subscript.setter();
      return sub_100044554(v7);
    }
  }

  else
  {
    v6 = 0;
    v4 = 0u;
    v5 = 0u;
  }

  return sub_10003DD84(&v4, &qword_1002024B8);
}

id sub_10013983C()
{
  result = [objc_allocWithZone(type metadata accessor for CosmeticAssessmentTargetManager()) init];
  qword_10020A5F8 = result;
  return result;
}

uint64_t sub_1001398CC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100139940()
{
  v0 = sub_10003C49C(&qword_1001FCE98);
  sub_1000EBC88(v0, qword_10020A600);
  v1 = sub_10003DAAC(v0, qword_10020A600);
  v2 = type metadata accessor for AssessmentError();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_1001399FC()
{
  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003DEC8;

  return sub_100139AC0();
}

uint64_t sub_100139AE0()
{
  v18 = v0;
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_sessionID + 8);
  if (v2 && (v3 = *(v1 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_passcode + 8)) != 0)
  {
    v4 = *(v1 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_sessionID);
    v5 = *(v1 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_passcode);
    type metadata accessor for CosmeticAssessmentP2PConnectionManager();
    swift_allocObject();

    v6 = sub_1000705B8(v4, v2, v5, v3, 0);

    *(v1 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_connectionManager) = v6;

    v7 = swift_task_alloc();
    v0[3] = v7;
    *(v7 + 16) = v1;
    v8 = swift_task_alloc();
    v0[4] = v8;
    *v8 = v0;
    v8[1] = sub_100139DF8;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)();
  }

  else
  {
    if (qword_1001FC7C8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10003DAAC(v9, qword_10020A510);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_100056B7C(0xD000000000000019, 0x80000001001939A0, &v17);
      _os_log_impl(&_mh_execute_header, v10, v11, "[Target] %s called before setting up; ignoring", v12, 0xCu);
      sub_100044554(v13);
    }

    sub_10013BBF0();
    swift_allocError();
    *v14 = 2;
    swift_willThrow();
    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_100139DF8()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_100139F14;
  }

  else
  {

    v2 = sub_100058034;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100139F14()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_100139F78(uint64_t a1, char *a2)
{
  v4 = sub_10003C49C(&qword_1001FD880);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v12 - v7;
  if (*&a2[OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_connectionManager])
  {
    (*(v5 + 16))(v8, a1, v4, v6);
    v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    (*(v5 + 32))(v10 + v9, v8, v4);

    v11 = a2;
    sub_1000549F0(sub_10013C164, v10);
  }
}

uint64_t sub_10013A0EC(uint64_t a1, uint64_t a2)
{
  *(a2 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_assessorDeviceConnection) = a1;

  sub_10003C49C(&qword_1001FD880);
  return CheckedContinuation.resume(returning:)();
}

void sub_10013A144(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_10003C49C(&qword_1002024A8);
  NSKeyValueObservedChange.newValue.getter();
  if (v15 != 1)
  {
    v6.super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
    v7 = [(objc_class *)v6.super.super.isa integerValue];
    if (qword_1001FC7C8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10003DAAC(v8, qword_10020A510);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = v7;
      _os_log_impl(&_mh_execute_header, v9, v10, "[Target] Action result code has been updated to: %ld", v11, 0xCu);
    }

    v18 = sub_10013A33C;
    v19 = 0;
    v14 = _NSConcreteStackBlock;
    v15 = 1107296256;
    v16 = sub_100031FA8;
    v17 = &unk_1001C8A28;
    v12 = _Block_copy(&v14);
    [a3 setCompletion:v12];
    _Block_release(v12);
    [a3 setFinished:1];

    v13 = *(a4 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_action);
    *(a4 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_action) = 0;
  }
}

void sub_10013A33C()
{
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10003DAAC(v0, qword_10020A510);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "[Target] Action completion called", v3, 2u);
  }

  if (qword_10020A548)
  {
    v4 = qword_10020A548;
    OS_dispatch_semaphore.signal()();
  }

  sub_1000F7F54();
}

uint64_t sub_10013A440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10013A4D8, v6, v5);
}

uint64_t sub_10013A4D8()
{

  *(v0 + 32) = 1;

  CurrentValueSubject.send(_:)();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10013A5D0()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003E110(0, &qword_1001FD040);
  v8 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_10013A868;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001C8AC8;
  v9 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v11[1] = _swiftEmptyArrayStorage;
  sub_10013BD70(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
  sub_10003C49C(&unk_1001FD050);
  sub_1000446A0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10013A8C4()
{
  v0 = sub_10003C49C(&unk_1001FFE20);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  type metadata accessor for MainActor();
  v4 = static MainActor.shared.getter();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = &protocol witness table for MainActor;
  sub_1000EC574(0, 0, v2, &unk_100185C20, v5);
}

uint64_t sub_10013A9D0()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10013AA64, v2, v1);
}

uint64_t sub_10013AA64()
{

  if (qword_1001FC6D0 != -1)
  {
    swift_once();
  }

  v1 = qword_10020A388;
  v2 = objc_allocWithZone(type metadata accessor for AssessmentDamageCheckGuideViewController());
  v3 = sub_100069804();
  [v1 pushViewController:v3 animated:1];

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10013AB30()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10013ABC4, v2, v1);
}

uint64_t sub_10013ABC4()
{

  if (qword_1001FC6D0 != -1)
  {
    swift_once();
  }

  v1 = qword_10020A388;
  [qword_10020A388 dismissViewControllerAnimated:1 completion:0];
  if (qword_1001FC730 != -1)
  {
    swift_once();
  }

  v2 = qword_10020A3C8;
  v3 = objc_allocWithZone(type metadata accessor for SuiteInProgressViewController());
  v4 = sub_1000ECABC(v2, 0);
  [v1 pushViewController:v4 animated:1];

  v5 = *(v0 + 8);

  return v5();
}

void sub_10013AD08(uint64_t a1, char a2)
{
  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  v4 = *(qword_10020A5F8 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_action);
  if (v4)
  {
    [v4 setResultCode:a1];
  }

  sub_1000F6FF8(a2);
}

uint64_t sub_10013AD98(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10003C49C(&unk_1001FFE20);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for MainActor();
  v9 = a1;
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v9;
  sub_1000539D8(0, 0, v7, a3, v11);
}

uint64_t sub_10013AEBC()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10013AF50, v2, v1);
}

uint64_t sub_10013AF50()
{

  if (qword_1001FC6D0 != -1)
  {
    swift_once();
  }

  v1 = qword_10020A388;
  v2 = objc_allocWithZone(type metadata accessor for AssessmentCompleteViewController());
  v3 = sub_10009A744(2);
  [v1 pushViewController:v3 animated:1];

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10013B020()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  v8 = *(qword_10020A5F8 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_action);
  if (v8)
  {
    [v8 setResultCode:-1];
  }

  sub_10003E110(0, &qword_1001FD040);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = 16;
  aBlock[4] = sub_1000F797C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001C8BE0;
  v11 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10013BD70(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
  sub_10003C49C(&unk_1001FD050);
  sub_1000446A0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

id sub_10013B334()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10003C49C(&qword_100202498);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - v5;
  v7 = sub_10003C49C(&qword_1002024A0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v11 = OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager__isAssessorDeviceConnected;
  v20 = 0;
  Published.init(initialValue:)();
  (*(v8 + 32))(&v1[v11], v10, v7);
  v12 = OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_isReadyToScan;
  v20 = 0;
  sub_10003C49C(&qword_1001FE140);
  swift_allocObject();
  *&v1[v12] = CurrentValueSubject.init(_:)();
  v13 = OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager__deviceAuthenticationState;
  v20 = 0;
  Published.init(initialValue:)();
  (*(v4 + 32))(&v1[v13], v6, v3);
  v14 = &v1[OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_targetSerialNumber];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v1[OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_sessionID];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v1[OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_passcode];
  *v16 = 0;
  v16[1] = 0;
  v1[OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_isSourceDevice] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_action] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_connectionManager] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_assessorDeviceConnection] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_actionObservation] = 0;
  v19.receiver = v1;
  v19.super_class = ObjectType;
  return objc_msgSendSuper2(&v19, "init");
}

uint64_t type metadata accessor for CosmeticAssessmentTargetManager()
{
  result = qword_100202470;
  if (!qword_100202470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10013B784()
{
  sub_10013B8A0(319, &qword_100202480);
  if (v0 <= 0x3F)
  {
    sub_10013B8A0(319, &qword_100202488);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10013B8A0(uint64_t a1, unint64_t *a2)
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

unint64_t sub_10013B900()
{
  result = qword_100202490;
  if (!qword_100202490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100202490);
  }

  return result;
}

uint64_t sub_10013B954@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10013B994@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_10013BA14(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

id sub_10013BA90@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 resultCode];
  *a2 = result;
  return result;
}

uint64_t sub_10013BAD8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10013BB24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10003DEC8;

  return sub_10013A440(a1, v4, v5, v6);
}

uint64_t sub_10013BBD8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10013BBF0()
{
  result = qword_1002024B0;
  if (!qword_1002024B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002024B0);
  }

  return result;
}

uint64_t sub_10013BC44()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10013BC8C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10013BCC4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003DEC8;

  return sub_10006A96C();
}

uint64_t sub_10013BD70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10013BE28()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000494BC;

  return sub_10013AB30();
}

uint64_t sub_10013BEDC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10013BF1C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000494BC;

  return sub_10013AEBC();
}

uint64_t sub_10013BFE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000494BC;

  return sub_1001399E0();
}

uint64_t sub_10013C094()
{
  v1 = sub_10003C49C(&qword_1001FD880);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10013C164(uint64_t a1)
{
  sub_10003C49C(&qword_1001FD880);
  v3 = *(v1 + 16);

  return sub_10013A0EC(a1, v3);
}

unint64_t sub_10013C200()
{
  result = qword_1002024C8;
  if (!qword_1002024C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002024C8);
  }

  return result;
}

uint64_t sub_10013C284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_10014240C(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_100064AFC(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_1001434F8();
        v16 = v18;
      }

      result = sub_10015624C(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_10013C38C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_100142594(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_100064AFC(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_100143670();
        v14 = v16;
      }

      result = sub_1001563FC(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_10013C484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_100142710(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_100064AFC(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1001437E0();
        v14 = v16;
      }

      swift_unknownObjectRelease();
      result = sub_1001563FC(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

void sub_10013C57C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_10014288C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v14;
  }

  else
  {
    v8 = sub_100064F5C(a3);
    if (v9)
    {
      v10 = v8;
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v3;
      v15 = *v4;
      if (!v11)
      {
        sub_100143950();
        v12 = v15;
      }

      sub_1001565AC(v10, v12);

      *v4 = v12;
    }

    else
    {
    }
  }
}

void sub_10013C68C(uint64_t a1, uint64_t a2)
{
  isa = Set._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

uint64_t sub_10013C6F4(uint64_t a1, uint64_t a2)
{
  v5 = [objc_allocWithZone(NSUUID) init];
  v6 = *&v2[OBJC_IVAR____TtC11Diagnostics29DeviceObserverEnhancedLogging_observationQueue];
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = v5;
  v7[4] = a1;
  v7[5] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_10013E5E4;
  *(v8 + 24) = v7;
  v13[4] = sub_10003E41C;
  v13[5] = v8;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100060C48;
  v13[3] = &unk_1001C8E50;
  v9 = _Block_copy(v13);
  v10 = v2;
  v11 = v5;

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  else
  {

    return v11;
  }

  return result;
}

void sub_10013C88C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v9 = OBJC_IVAR____TtC11Diagnostics29DeviceObserverEnhancedLogging_handlers;
  swift_beginAccess();
  v10 = a2;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a1 + v9);
  *(a1 + v9) = 0x8000000000000000;
  sub_10014288C(sub_10013E628, v8, v10, isUniquelyReferenced_nonNull_native);

  *(a1 + v9) = v12;
  swift_endAccess();
  sub_10013D1E4();
}

uint64_t sub_10013CA0C()
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v2 = result;
    v3 = *&v0[OBJC_IVAR____TtC11Diagnostics29DeviceObserverEnhancedLogging_observationQueue];
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    *(v4 + 24) = v2;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_10013E584;
    *(v5 + 24) = v4;
    v9[4] = sub_10003DAA4;
    v9[5] = v5;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_100060C48;
    v9[3] = &unk_1001C8DD8;
    v6 = _Block_copy(v9);
    swift_unknownObjectRetain_n();
    v7 = v0;

    dispatch_sync(v3, v6);
    swift_unknownObjectRelease();
    _Block_release(v6);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10013CBA0(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = OBJC_IVAR____TtC11Diagnostics29DeviceObserverEnhancedLogging_handlers;
  swift_beginAccess();
  sub_10013C57C(0, 0, a2);
  result = swift_endAccess();
  if (!*(*(a1 + v8) + 16))
  {
    v10 = *(a1 + OBJC_IVAR____TtC11Diagnostics29DeviceObserverEnhancedLogging_observationQueue);
    *v7 = v10;
    (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
    v11 = v10;
    LOBYTE(v10) = _dispatchPreconditionTest(_:)();
    result = (*(v5 + 8))(v7, v4);
    if (v10)
    {
      if (*(a1 + OBJC_IVAR____TtC11Diagnostics29DeviceObserverEnhancedLogging_isObserving) != 1)
      {
        return result;
      }

      *(a1 + OBJC_IVAR____TtC11Diagnostics29DeviceObserverEnhancedLogging_isObserving) = 0;
      if (qword_1001FC7E8 == -1)
      {
        return SessionManager.delegate.setter();
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    return SessionManager.delegate.setter();
  }

  return result;
}

void sub_10013CDC8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC11Diagnostics29DeviceObserverEnhancedLogging_device);
  if (v3)
  {
    sub_10003C49C(&qword_100202520);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10017EC00;
    type metadata accessor for DeviceEnhancedLogging();
    sub_10013E654(&qword_100202528, 255, type metadata accessor for DeviceEnhancedLogging);
    v5 = v3;
    AnyHashable.init<A>(_:)();
    v6 = sub_100150644(inited);
    swift_setDeallocating();
    sub_10003DB48(inited + 32);
  }

  else
  {
    v6 = &_swiftEmptySetSingleton;
  }

  *a2 = v6;
}

uint64_t sub_10013D054(const void *a1, void *a2)
{
  *(v2 + 24) = a2;
  *(v2 + 32) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_10013D0CC, 0, 0);
}

uint64_t sub_10013D0CC()
{
  v2 = v0[3];
  v1 = v0[4];
  *(swift_task_alloc() + 16) = v2;
  sub_10003C49C(&unk_100202540);
  OS_dispatch_queue.sync<A>(execute:)();

  isa = Set._bridgeToObjectiveC()().super.isa;

  (v1)[2](v1, isa);

  _Block_release(v1);
  v4 = v0[1];

  return v4();
}

void sub_10013D1E4()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC11Diagnostics29DeviceObserverEnhancedLogging_observationQueue);
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2, v4);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  if (*(v1 + OBJC_IVAR____TtC11Diagnostics29DeviceObserverEnhancedLogging_isObserving))
  {
    return;
  }

  *(v1 + OBJC_IVAR____TtC11Diagnostics29DeviceObserverEnhancedLogging_isObserving) = 1;
  if (qword_1001FC7E8 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  sub_10013E654(&unk_100202530, v9, type metadata accessor for DeviceObserverEnhancedLogging);
  swift_unknownObjectRetain();
  SessionManager.delegate.setter();
  v10 = OBJC_IVAR____TtC11Diagnostics29DeviceObserverEnhancedLogging_device;
  if (!*(v1 + OBJC_IVAR____TtC11Diagnostics29DeviceObserverEnhancedLogging_device))
  {
    if (SessionManager.currentSession.getter())
    {

      v11 = [objc_allocWithZone(type metadata accessor for DeviceEnhancedLogging()) init];
      v12 = *(v1 + v10);
      *(v1 + v10) = v11;
      v13 = v11;

      sub_10013D3EC(v11);
    }
  }
}

uint64_t sub_10013D3EC(void *a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC11Diagnostics29DeviceObserverEnhancedLogging_observationQueue);
  *v7 = v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3, v5);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v7, v3);
  if (v8)
  {
    v27 = a1;
    v11 = OBJC_IVAR____TtC11Diagnostics29DeviceObserverEnhancedLogging_handlers;
    swift_beginAccess();
    v12 = *(v1 + v11);
    v13 = 1 << *(v12 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v12 + 64);
    v16 = (v13 + 63) >> 6;

    v17 = 0;
    v25 = xmmword_10017EC00;
    while (v15)
    {
      v18 = v17;
      v19 = v27;
LABEL_13:
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v21 = *(*(v12 + 56) + ((v18 << 10) | (16 * v20)));
      if (v19)
      {
        sub_10003C49C(&qword_100202520);
        inited = swift_initStackObject();
        *(inited + 16) = v25;
        v28 = v19;
        type metadata accessor for DeviceEnhancedLogging();
        v26 = v21;
        sub_10013E654(&qword_100202528, 255, type metadata accessor for DeviceEnhancedLogging);

        v23 = v19;
        AnyHashable.init<A>(_:)();
        v24 = sub_100150644(inited);
        swift_setDeallocating();
        sub_10003DB48(inited + 32);
        v28 = v24;
        v26(&v28);
      }

      else
      {
        v28 = &_swiftEmptySetSingleton;

        v21(&v28);
      }

      v17 = v18;
    }

    v19 = v27;
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
      }

      v15 = *(v12 + 64 + 8 * v18);
      ++v17;
      if (v15)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_10013D6F0()
{
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v11 - 8);
  __chkstk_darwin(v11);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  v0[OBJC_IVAR____TtC11Diagnostics29DeviceObserverEnhancedLogging_isObserving] = 0;
  *&v0[OBJC_IVAR____TtC11Diagnostics29DeviceObserverEnhancedLogging_device] = 0;
  *&v0[OBJC_IVAR____TtC11Diagnostics29DeviceObserverEnhancedLogging_handlers] = _swiftEmptyDictionarySingleton;
  v10 = OBJC_IVAR____TtC11Diagnostics29DeviceObserverEnhancedLogging_observationQueue;
  v6 = sub_100057B68();
  v9[1] = "observationQueue";
  v9[2] = v6;
  static DispatchQoS.unspecified.getter();
  v13 = _swiftEmptyArrayStorage;
  sub_10013E654(&unk_1001FD740, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10003C49C(&unk_1001FCEA0);
  sub_10003E278(&qword_1001FD750, &unk_1001FCEA0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v11);
  *&v0[v10] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v7 = type metadata accessor for DeviceObserverEnhancedLogging();
  v12.receiver = v0;
  v12.super_class = v7;
  return objc_msgSendSuper2(&v12, "init");
}

id sub_10013D9BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceObserverEnhancedLogging();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10013DA70(uint64_t a1)
{
  v1 = OBJC_IVAR____TtC11Diagnostics29DeviceObserverEnhancedLogging_device;
  if (!*(a1 + OBJC_IVAR____TtC11Diagnostics29DeviceObserverEnhancedLogging_device))
  {
    v3 = [objc_allocWithZone(type metadata accessor for DeviceEnhancedLogging()) init];
    v4 = *(a1 + v1);
    *(a1 + v1) = v3;
    v5 = v3;

    sub_10013D3EC(v3);
  }
}

void sub_10013DB10(uint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(a1 + OBJC_IVAR____TtC11Diagnostics29DeviceObserverEnhancedLogging_device);
  if (v6)
  {
    *(a1 + OBJC_IVAR____TtC11Diagnostics29DeviceObserverEnhancedLogging_device) = 0;

    v7 = *(a1 + OBJC_IVAR____TtC11Diagnostics29DeviceObserverEnhancedLogging_observationQueue);
    *v5 = v7;
    (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
    v8 = v7;
    LOBYTE(v7) = _dispatchPreconditionTest(_:)();
    (*(v3 + 8))(v5, v2);
    if (v7)
    {
      v9 = OBJC_IVAR____TtC11Diagnostics29DeviceObserverEnhancedLogging_handlers;
      swift_beginAccess();
      v10 = *(a1 + v9);
      v11 = 1 << *(v10 + 32);
      v12 = -1;
      if (v11 < 64)
      {
        v12 = ~(-1 << v11);
      }

      v13 = v12 & *(v10 + 64);
      v14 = (v11 + 63) >> 6;

      v15 = 0;
      while (v13)
      {
        v16 = v15;
LABEL_11:
        v17 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        v18 = *(*(v10 + 56) + ((v16 << 10) | (16 * v17)));
        v19 = &_swiftEmptySetSingleton;

        v18(&v19);
      }

      while (1)
      {
        v16 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v16 >= v14)
        {

          return;
        }

        v13 = *(v10 + 64 + 8 * v16);
        ++v15;
        if (v13)
        {
          v15 = v16;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_10013DDA8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1000494BC;

  return v6();
}

uint64_t sub_10013DE90(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_10003DEC8;

  return v7();
}

uint64_t sub_10013DF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10003C49C(&unk_1001FFE20);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_1000F00F0(a3, v23 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10011064C(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = String.utf8CString.getter() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_10011064C(a3);

    return v21;
  }

LABEL_8:
  sub_10011064C(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_10013E234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v10 = *(v18 - 8);
  __chkstk_darwin(v18);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *&v3[OBJC_IVAR____TtC11Diagnostics29DeviceObserverEnhancedLogging_observationQueue];
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = a3;
  v14 = _Block_copy(aBlock);
  v15 = v3;
  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_10013E654(&qword_1001FDE60, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_10003C49C(&unk_1001FD050);
  sub_10003E278(&qword_1001FDE70, &unk_1001FD050);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v18);
}

uint64_t sub_10013E4E4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10013E524(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10013E544()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10013E59C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10013E5F0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10013E654(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10013E69C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10013E6DC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10003DEC8;

  return sub_10013D054(v2, v3);
}

uint64_t sub_10013E78C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000494BC;

  return sub_10013DDA8(v2, v3, v4);
}

uint64_t sub_10013E84C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10013E88C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000494BC;

  return sub_10013DE90(a1, v4, v5, v6);
}

uint64_t sub_10013E958(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000494BC;

  return sub_100056908(a1, v4);
}

uint64_t sub_10013EA10(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10003DEC8;

  return sub_100056908(a1, v4);
}

uint64_t sub_10013EAE4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10013EB1C()
{
  v1 = *(v0 + 16);
  isa = Set._bridgeToObjectiveC()().super.isa;
  (*(v1 + 16))(v1, isa);
}

Class sub_10013EBB0()
{
  v1 = [objc_opt_self() systemFontOfSize:22.0];
  v2 = objc_opt_self();
  v3 = [v2 configurationWithFont:v1];

  _UISolariumEnabled();
  if (_UISolariumEnabled())
  {
    isa = [objc_opt_self() systemBlueColor];
    v5 = &selRef_configurationWithHierarchicalColor_;
  }

  else
  {
    sub_10003C49C(&unk_1001FD020);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_10017ED90;
    v7 = objc_opt_self();
    *(v6 + 32) = [v7 systemBlueColor];
    *(v6 + 40) = [v7 systemGray6Color];
    sub_10003E110(0, &qword_100202970);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v5 = &selRef_configurationWithPaletteColors_;
  }

  v8 = [v2 *v5];

  v9 = v8;
  v10 = String._bridgeToObjectiveC()();

  v11 = objc_opt_self();
  image_8 = v9;
  v12 = [v11 systemImageNamed:v10 withConfiguration:v9];

  image = [v12 imageByApplyingSymbolConfiguration:v3];
  sub_10003C49C(&unk_1001FD020);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_10017ED90;
  sub_10003E110(0, &qword_1002023B0);
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0x5F4E4F4953534553, 0xEF59524F54534948);
  v14 = String._bridgeToObjectiveC()();
  v15 = [v11 systemImageNamed:v14];

  v16 = swift_allocObject();
  *(v16 + 16) = v0;
  v17 = v0;
  v23 = v16;
  *(preferredElementSize + 32) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD00000000000001FLL, 0x800000010018DC20);
  v18 = String._bridgeToObjectiveC()();
  v19 = [v11 systemImageNamed:{v18, 0, 0, 0, sub_10013F8AC, v23}];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  *(preferredElementSize + 40) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_10003E110(0, &qword_1001FD3B8);
  sub_10003E110(0, &qword_100202578);
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v27.value.super.isa = 0;
  v27.is_nil = 0;
  v28.value.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v20, 0, v27, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, 2).super.super.isa;
  v26.value.super.isa = image;
  v26.is_nil = 0;
  v21 = UIBarButtonItem.init(title:image:primaryAction:menu:)(0, v26, v28, v29).super.super.isa;

  return v21;
}

void sub_10013F0C4(int a1, id a2)
{
  v2 = [a2 navigationController];
  if (v2)
  {
    v3 = v2;
    if (qword_1001FC730 != -1)
    {
      swift_once();
    }

    v4 = qword_10020A3C8;
    v5 = objc_allocWithZone(type metadata accessor for SelfServiceSessionHistoryViewController());
    v6 = sub_10004CCC0(v4);
    [v3 pushViewController:v6 animated:1];
  }
}

uint64_t sub_10013F1A8()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [objc_msgSend(objc_opt_self() "currentPlatform")];
    swift_unknownObjectRelease();
    v3 = [v1 navigationItem];
    v4 = [v3 rightBarButtonItem];

    if (v2)
    {
      v5 = sub_100133CB4;
    }

    else
    {
      v5 = sub_10013F2E0;
    }

    sub_100088E48(0, v4);

    return sub_10003C52C(v5);
  }

  return result;
}

uint64_t sub_10013F2E0()
{
  if (qword_1001FC6B8 != -1)
  {
    swift_once();
  }

  v0 = qword_10020A368;
  v1 = *(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_disableSystemGesturesQueue);
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100099D24;
  *(v3 + 24) = v2;
  v12[4] = sub_10003DAA4;
  v12[5] = v3;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100060C48;
  v12[3] = &unk_1001C9030;
  v4 = _Block_copy(v12);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    v7 = OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled;
    v5[OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled] = (v5[OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingPreferencesState] & 1) == 0;
    v8 = sub_100050814();
    [v8 setNearbySharingEnabled:(v5[v7] & 1) == 0];

    v9 = sub_100050814();
    [v9 setDiscoverableMode:*&v5[OBJC_IVAR____TtC11Diagnostics10Assertions_airDropUserSetting]];

    v10 = OBJC_IVAR____TtC11Diagnostics10Assertions_captureButtonAssertion;
    v11 = *&v5[OBJC_IVAR____TtC11Diagnostics10Assertions_captureButtonAssertion];
    if (v11)
    {
      [v11 invalidate];
    }

    *&v5[v10] = 0;
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_10013F5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    v12 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v12 = String._bridgeToObjectiveC()();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = String._bridgeToObjectiveC()();

LABEL_6:
  v16.receiver = v7;
  v16.super_class = type metadata accessor for SelfServiceBaseNavigationController();
  v14 = objc_msgSendSuper2(&v16, "initWithTitle:detailText:symbolName:contentLayout:", v11, v12, v13, a7);

  return v14;
}

id sub_10013F81C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SelfServiceBaseNavigationController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10013F874()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10013F8B4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10013F904(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_10013F920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = String._bridgeToObjectiveC()();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100142A00(v14, 0x414E5F544E455645, 0xEA0000000000454DLL, isUniquelyReferenced_nonNull_native);
  v16 = String._bridgeToObjectiveC()();
  v17 = swift_isUniquelyReferenced_nonNull_native();
  sub_100142A00(v16, 0x59545F544E455645, 0xEE005458545F4550, v17);
  v18 = String._bridgeToObjectiveC()();
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_100142A00(v18, 0x4D414E5F45474150, 0xE900000000000045, v19);
  if (a6)
  {
    v20 = String._bridgeToObjectiveC()();
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_100142A00(v20, 0x7365735F32747361, 0xEF64695F6E6F6973, v21);
  }

  if (a8)
  {
    v22 = String._bridgeToObjectiveC()();
    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_100142A00(v22, 0xD000000000000018, 0x8000000100193B20, v23);
  }

  if (a10)
  {
    v24 = String._bridgeToObjectiveC()();
    v25 = swift_isUniquelyReferenced_nonNull_native();
    sub_100142A00(v24, 0xD000000000000013, 0x8000000100193B00, v25);
  }

  if (a12)
  {
    v26 = String._bridgeToObjectiveC()();
    v27 = swift_isUniquelyReferenced_nonNull_native();
    sub_100142A00(v26, 0xD000000000000018, 0x8000000100193AE0, v27);
  }

  return _swiftEmptyDictionarySingleton;
}

uint64_t sub_10013FBB0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10003C49C(&qword_1002025A8);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10013FE50(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10003C49C(&qword_1002025E8);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v41 = *(*(v5 + 48) + v20);
      v21 = (*(v5 + 56) + 40 * v20);
      v22 = v21[1];
      v40 = *v21;
      v23 = v21[2];
      v24 = v21[3];
      v25 = v21[4];
      if ((v38 & 1) == 0)
      {
        v26 = v25;

        v27 = v23;
        v28 = v24;
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v41);
      result = Hasher._finalize()();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v41;
      v16 = (*(v7 + 56) + 40 * v15);
      v12 = v39;
      *v16 = v40;
      v16[1] = v22;
      v16[2] = v23;
      v16[3] = v24;
      v16[4] = v25;
      ++*(v7 + 16);
      v5 = v37;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v39 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100140128(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10003C49C(&qword_1002025B8);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 4 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v21;
      }

      result = static Hasher._hash(seed:bytes:count:)();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_100140394(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for TargetDevice();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10003C49C(&unk_1002025D8);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1001441BC(&unk_1001FDED0, &type metadata accessor for TargetDevice);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_100140770(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10003C49C(&qword_1002025A0);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100140A30(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10003C49C(&qword_1002025D0);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100140CD8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10003C49C(&qword_100202580);
  v35 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100140F7C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for TargetDevice.DeviceType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10003C49C(&unk_1002025C0);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1001441BC(&unk_1001FFDD0, &type metadata accessor for TargetDevice.DeviceType);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_100141358(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10003C49C(&qword_1002025B0);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100141600(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10003C49C(&qword_100202598);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v31 = *(*(v5 + 56) + 16 * v19);
      if ((a2 & 1) == 0)
      {
        v21 = v20;
      }

      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v31;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_100141874(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = type metadata accessor for IndexPath();
  v5 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_10003C49C(&qword_100202590);
  v42 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_100141BF4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10003C49C(&qword_100202588);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((v36 & 1) == 0)
      {

        v24 = v23;
      }

      v37 = v23;
      Hasher.init(_seed:)();
      v25 = [*(v22 + 40) serialNumber];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      String.hash(into:)();

      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v16 = v37;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v16 = v37;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v22;
      *(*(v7 + 56) + 8 * v15) = v16;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100141ED0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10003C49C(&qword_100200708);
  v30 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_100142160(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_100064AFC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10013FBB0(v16, a4 & 1);
      result = sub_100064AFC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_100142E20();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + result) = a1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + result) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

void sub_1001422C4(uint64_t a1, int a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_100064BB8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_100140128(v14, a3 & 1);
      v9 = sub_100064BB8(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_10014311C();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + 4 * v9) = a2;
    *(v19[7] + 8 * v9) = a1;
    v22 = v19[2];
    v13 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (!v13)
    {
      v19[2] = v23;
      return;
    }

    goto LABEL_15;
  }

  v20 = v19[7];
  v21 = *(v20 + 8 * v9);
  *(v20 + 8 * v9) = a1;
}

uint64_t sub_10014240C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100064AFC(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_100140770(v18, a5 & 1);
      v13 = sub_100064AFC(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1001434F8();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

uint64_t sub_100142594(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100064AFC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100140A30(v16, a4 & 1);
      v11 = sub_100064AFC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_100143670();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_100142710(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100064AFC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100141358(v16, a4 & 1);
      v11 = sub_100064AFC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1001437E0();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

id sub_10014288C(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_100064F5C(a3);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v9 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 < v15 || (a4 & 1) != 0)
    {
      sub_100141600(v15, a4 & 1);
      v10 = sub_100064F5C(a3);
      if ((v16 & 1) != (v19 & 1))
      {
LABEL_18:
        sub_100144170();
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v18 = v10;
      sub_100143950();
      v10 = v18;
    }
  }

  v20 = *v5;
  if (v16)
  {
    v21 = (v20[7] + 16 * v10);
    *v21 = a1;
    v21[1] = a2;
  }

  v20[(v10 >> 6) + 8] |= 1 << v10;
  *(v20[6] + 8 * v10) = a3;
  v23 = (v20[7] + 16 * v10);
  *v23 = a1;
  v23[1] = a2;
  v24 = v20[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20[2] = v25;

  return a3;
}

void sub_100142A00(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100064AFC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100140CD8(v16, a4 & 1);
      v11 = sub_100064AFC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_100143AC8();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

void sub_100142B78(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_100064FA0(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_100141BF4(v14, a3 & 1);
      v9 = sub_100064FA0(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_18:
        type metadata accessor for CardState();
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_100143EB4();
      v9 = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v9);
    *(v20 + 8 * v9) = a1;

    return;
  }

  v19[(v9 >> 6) + 8] |= 1 << v9;
  *(v19[6] + 8 * v9) = a2;
  *(v19[7] + 8 * v9) = a1;
  v22 = v19[2];
  v13 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;
}

unint64_t sub_100142CD4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_100068EB8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_100141ED0(v14, a3 & 1);
      result = sub_100068EB8(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_100144014();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

void *sub_100142E20()
{
  v1 = v0;
  sub_10003C49C(&qword_1002025A8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_100142F88()
{
  v1 = v0;
  sub_10003C49C(&qword_1002025E8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 56) + 40 * v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = v18[2];
        v22 = v18[3];
        v23 = v18[4];
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v24 = (*(v4 + 56) + 40 * v17);
        *v24 = v19;
        v24[1] = v20;
        v24[2] = v21;
        v24[3] = v22;
        v24[4] = v23;
        v25 = v23;

        v26 = v21;
        result = v22;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_10014311C()
{
  v1 = v0;
  sub_10003C49C(&qword_1002025B8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

char *sub_100143278()
{
  v1 = v0;
  v33 = type metadata accessor for TargetDevice();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003C49C(&unk_1002025D8);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_1001434F8()
{
  v1 = v0;
  sub_10003C49C(&qword_1002025A0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_100143670()
{
  v1 = v0;
  sub_10003C49C(&qword_1002025D0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1001437E0()
{
  v1 = v0;
  sub_10003C49C(&qword_1002025B0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = swift_unknownObjectRetain();
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_100143950()
{
  v1 = v0;
  sub_10003C49C(&qword_100202598);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 16 * v17) = v19;
        v20 = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_100143AC8()
{
  v1 = v0;
  sub_10003C49C(&qword_100202580);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

char *sub_100143C34()
{
  v1 = v0;
  v35 = type metadata accessor for IndexPath();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003C49C(&qword_100202590);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

id sub_100143EB4()
{
  v1 = v0;
  sub_10003C49C(&qword_100202588);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;

        result = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_100144014()
{
  v1 = v0;
  sub_10003C49C(&qword_100200708);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

unint64_t sub_100144170()
{
  result = qword_1001FDE80;
  if (!qword_1001FDE80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001FDE80);
  }

  return result;
}

uint64_t sub_1001441BC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100144204()
{
  v1 = v0;
  v135.receiver = v0;
  v135.super_class = type metadata accessor for SelfServiceInstructionsViewController();
  objc_msgSendSuper2(&v135, "viewDidLoad");
  v2 = [v0 navigationItem];
  [v2 setHidesBackButton:1];

  v3 = *&v1[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_images];
  v4 = *&v1[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_instructions];
  v5 = *&v1[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_style];

  if (_UISolariumEnabled())
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 38.0;
  }

  sub_10003C49C(&qword_100202670);
  State.init(wrappedValue:)();
  v7 = v122;
  v8 = v123;
  type metadata accessor for CGSize(0);
  v132 = 0;
  v133 = 0;
  State.init(wrappedValue:)();
  v9 = v123;
  v10 = v122;
  v134 = BYTE8(v122);
  *&v122 = 0x4044000000000000;
  *(&v122 + 1) = v6;
  v123 = v7;
  v124 = v134;
  memset(v125, 0, sizeof(v125));
  v126 = v8;
  v127 = v10;
  v128 = v9;
  v129 = v3;
  v130 = v4;
  v131 = v5;
  v11 = objc_allocWithZone(sub_10003C49C(&qword_100202678));
  v12 = UIHostingController.init(rootView:)();
  v13 = [v12 view];
  if (!v13)
  {

    return;
  }

  v117 = v12;
  v14 = v13;
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = [v1 contentView];
  [v15 addSubview:v14];

  v16 = [v1 scrollView];
  [v16 setShowsVerticalScrollIndicator:0];

  v17 = objc_opt_self();
  sub_10003C49C(&unk_1001FD020);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10017ED60;
  v19 = [v14 leadingAnchor];
  v20 = [v1 contentView];
  v21 = [v20 leadingAnchor];

  v22 = *&v1[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_instructionsViewHorizontalSpacing];
  v23 = [v19 constraintEqualToAnchor:v21 constant:v22];

  *(v18 + 32) = v23;
  v24 = [v14 trailingAnchor];
  v25 = [v1 contentView];
  v26 = [v25 trailingAnchor];

  v27 = [v24 constraintEqualToAnchor:v26 constant:-v22];
  *(v18 + 40) = v27;
  v28 = [v14 topAnchor];
  v29 = [v1 contentView];
  v30 = [v29 topAnchor];

  v31 = [v28 constraintEqualToAnchor:v30];
  *(v18 + 48) = v31;
  v116 = v14;
  v32 = [v14 bottomAnchor];
  v33 = [v1 contentView];
  v34 = [v33 bottomAnchor];

  v35 = [v32 constraintEqualToAnchor:v34];
  *(v18 + 56) = v35;
  sub_10003E110(0, &qword_1001FD550);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v17 activateConstraints:isa];

  v119 = v1;
  v37 = *&v1[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_options];
  v38 = *(v37 + 16);

  if (v38)
  {
    v39 = 0;
    v120 = v38;
    while (v39 < *(v37 + 16))
    {
      v40 = *(v37 + 32 + 8 * v39);
      if (v39)
      {
        v41 = &selRef_linkButton;
      }

      else
      {
        v41 = &selRef_boldButton;
      }

      v42 = objc_opt_self();

      v43 = [v42 *v41];
      if (*(v40 + 16) == 1)
      {
        v44 = 0;
        v45 = 1 << *(v40 + 32);
        v46 = (v45 + 63) >> 6;
        v47 = 64;
        while (1)
        {
          v48 = *(v40 + v47);
          if (v48)
          {
            break;
          }

          v44 -= 64;
          v47 += 8;
          if (!--v46)
          {
            goto LABEL_22;
          }
        }

        v57 = __clz(__rbit64(v48));
        if (v57 - v45 != v44)
        {
          v66 = sub_1001455F8(&v122, v57 - v44, *(v40 + 36), 0, v40);
          v68 = v67;

          v69 = v122;

          v70 = String._bridgeToObjectiveC()();

          [v43 setTitle:v70 forState:0];

          sub_10003E110(0, &qword_1002023B0);
          v71 = swift_allocObject();
          *(v71 + 16) = v119;
          *(v71 + 24) = v66;
          *(v71 + 32) = v68;
          *(v71 + 40) = v69;
          v72 = v119;
          v73 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
          [v43 addAction:v73 forControlEvents:{64, 0, 0, 0, sub_100145734, v71}];

          v59 = [v72 buttonTray];
          [v59 addButton:v43];
          goto LABEL_8;
        }

LABEL_22:
        v58 = static os_log_type_t.error.getter();
        sub_10003E110(0, &qword_1001FD6F0);
        v59 = static OS_os_log.default.getter();
        if (os_log_type_enabled(v59, v58))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          *&v122 = v61;
          *v60 = 136315138;
          v62 = Dictionary.description.getter();
          v64 = v63;

          v65 = sub_100056B7C(v62, v64, &v122);

          *(v60 + 4) = v65;
          _os_log_impl(&_mh_execute_header, v59, v58, "Unable to obtain the key-value pair from the option %s, skipping", v60, 0xCu);
          sub_100044554(v61);

          v38 = v120;
        }

        else
        {
        }

LABEL_8:
      }

      else
      {
        v49 = static os_log_type_t.error.getter();
        sub_10003E110(0, &qword_1001FD6F0);
        v50 = static OS_os_log.default.getter();
        if (os_log_type_enabled(v50, v49))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          *&v122 = v52;
          *v51 = 136315138;
          v53 = Dictionary.description.getter();
          v55 = v54;

          v56 = sub_100056B7C(v53, v55, &v122);

          *(v51 + 4) = v56;
          _os_log_impl(&_mh_execute_header, v50, v49, "Bad options were provided to instructional prompt: %s, skipping", v51, 0xCu);
          sub_100044554(v52);

          v38 = v120;
        }

        else
        {
        }
      }

      if (++v39 == v38)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

LABEL_27:

  v74 = *&v119[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_navigationBarActions];
  v75 = *(v74 + 16);
  if (!v75)
  {

    return;
  }

  v121 = 0;
  v76 = 0;
  v118 = v75;
  while (1)
  {
LABEL_31:
    if (v76 >= *(v74 + 16))
    {
      goto LABEL_70;
    }

    v77 = 0;
    v78 = 0;
    v79 = *(v74 + 32 + 8 * v76++);
    v80 = 1 << *(v79 + 32);
    while (1)
    {
      v81 = *(v79 + 8 * v78 + 64);
      if (v81)
      {
        break;
      }

      ++v78;
      v77 -= 64;
      if ((v80 + 63) >> 6 == v78)
      {
        goto LABEL_37;
      }
    }

    v82 = __clz(__rbit64(v81));
    if (v82 - v80 != v77)
    {
      break;
    }

LABEL_37:

    v83 = static os_log_type_t.error.getter();
    sub_10003E110(0, &qword_1001FD6F0);
    v84 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v84, v83))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      *&v122 = v86;
      *v85 = 136315138;
      v87 = Dictionary.description.getter();
      v89 = v88;

      v90 = sub_100056B7C(v87, v89, &v122);

      *(v85 + 4) = v90;
      _os_log_impl(&_mh_execute_header, v84, v83, "Unable to obtain the key-value pair from action %s, skipping", v85, 0xCu);
      sub_100044554(v86);
    }

    else
    {
    }

    if (v76 == v75)
    {
      goto LABEL_66;
    }
  }

  if ((-v77 & 0x8000000000000000) == 0)
  {
    v91 = v82 - v77;
    if (v91 < v80)
    {
      if (((*(v79 + 64 + 8 * (v78 & 0x3FFFFFFFFFFFFFFLL)) >> v82) & 1) == 0)
      {
        goto LABEL_72;
      }

      v92 = (*(v79 + 48) + 16 * v91);
      v94 = *v92;
      v93 = v92[1];
      v95 = (*(v79 + 56) + 16 * v91);
      v97 = *v95;
      v96 = v95[1];
      v98 = String.lowercased()();
      v99 = v98._countAndFlagsBits == 0x6C65636E6163 && v98._object == 0xE600000000000000;
      if (v99 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v100 = UIBarButtonSystemItemCancel;
      }

      else
      {
        if (v98._countAndFlagsBits == 1701736292 && v98._object == 0xE400000000000000)
        {
        }

        else
        {
          v107 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v107 & 1) == 0)
          {

            v108 = static os_log_type_t.error.getter();
            sub_10003E110(0, &qword_1001FD6F0);
            v109 = static OS_os_log.default.getter();
            if (os_log_type_enabled(v109, v108))
            {
              v110 = swift_slowAlloc();
              v111 = swift_slowAlloc();
              *&v122 = v111;
              *v110 = 136315138;
              v112 = Dictionary.description.getter();
              v114 = v113;

              v115 = sub_100056B7C(v112, v114, &v122);

              *(v110 + 4) = v115;
              _os_log_impl(&_mh_execute_header, v109, v108, "Unable to obtain a valid UIBarButtonItemType from action %s, skipping", v110, 0xCu);
              sub_100044554(v111);
            }

            else
            {
            }

LABEL_52:
            v75 = v118;
            if (v76 != v118)
            {
              goto LABEL_31;
            }

LABEL_66:

            return;
          }
        }

        v100 = UIBarButtonSystemItemDone;
      }

      sub_10003E110(0, &qword_1001FD3B8);
      sub_10003E110(0, &qword_1002023B0);
      v101 = swift_allocObject();
      v101[2] = v119;
      v101[3] = v94;
      v101[4] = v93;
      v101[5] = v97;
      v101[6] = v96;
      v102 = v119;
      v136.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v136.is_nil = 0;
      v103.super.super.isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(v100, v136, v137).super.super.isa;
      v104 = [v102 navigationItem];
      v105 = v104;
      if (v121)
      {
        [v104 setLeftBarButtonItem:v103.super.super.isa];
      }

      else
      {
        [v104 setRightBarButtonItem:v103.super.super.isa];
      }

      v121 = 1;
      goto LABEL_52;
    }
  }

LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
}

void sub_100145110()
{
  v1 = v0;
  v2 = [v0 navigationController];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v4 = [objc_allocWithZone(CATransition) init];
  [v4 setDuration:0.2];
  v5 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionLinear];
  [v4 setTimingFunction:v5];

  [v4 setType:kCATransitionPush];
  v6 = [v1 view];
  if (!v6)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = objc_opt_self();
  v9 = [v7 semanticContentAttribute];

  v10 = [v8 userInterfaceLayoutDirectionForSemanticContentAttribute:v9];
  v11 = &kCATransitionFromLeft;
  if (!v10)
  {
    v11 = &kCATransitionFromRight;
  }

  [v4 setSubtype:*v11];
  v12 = [v3 view];
  if (!v12)
  {
    goto LABEL_11;
  }

  v13 = v12;
  v14 = [v12 layer];

  [v14 addAnimation:v4 forKey:kCATransition];
  v15 = [v3 popViewControllerAnimated:0];
}

uint64_t sub_10014534C(char a1)
{
  v2 = v1;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for SelfServiceInstructionsViewController();
  result = objc_msgSendSuper2(&v10, "viewDidDisappear:", a1 & 1);
  v5 = *&v2[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_answer + 8];
  if (v5)
  {
    v6 = *&v2[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_onButtonPress];
    if (v6)
    {
      v7 = *&v2[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_answer];

      sub_10003C48C(v6);
      v6(v7, v5);
      sub_10003C52C(v6);
    }
  }

  v8 = *&v2[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_onDismiss];
  if (v8)
  {

    v8(v9);
    return sub_10003C52C(v8);
  }

  return result;
}

id sub_1001454F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SelfServiceInstructionsViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_1001455F8(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    v6 = (*(a5 + 56) + 16 * a2);
    v7 = v6[1];
    *result = *v6;
    result[1] = v7;

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_100145698()
{

  return _swift_deallocObject(v0, 56, 7);
}

void sub_1001456E4()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_answer);
  *v2 = v0[3];
  v2[1] = v1;

  sub_100145110();
}

id sub_100145760()
{
  v1 = *&v0[OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_historyEntries];
  if (!(v1 >> 62))
  {
    v2 = &off_1001EE000;
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v2 = &off_1001EE000;
  if (_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_3:
    sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0x59524F54534948, 0xE700000000000000);
    v3 = String._bridgeToObjectiveC()();

    [v0 v2[489]];
  }

LABEL_4:
  v4 = _UISolariumEnabled();
  v5 = [v0 navigationItem];
  if (v4)
  {
    v6 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:v0 action:"donePressed"];
    [v5 setRightBarButtonItem:v6];
  }

  else
  {
    sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 1162760004, 0xE400000000000000);
    v7 = type metadata accessor for HistoryTableViewController();
    v48 = v7;
    aBlock[0] = v0;
    v8 = v0;
    v9 = String._bridgeToObjectiveC()();

    if (v7)
    {
      v10 = sub_1000442A0(aBlock, v7);
      v11 = *(v7 - 8);
      v12 = __chkstk_darwin(v10);
      v14 = aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v11 + 16))(v14, v12);
      v15 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v11 + 8))(v14, v7);
      sub_100044554(aBlock);
    }

    else
    {
      v15 = 0;
    }

    v16 = objc_allocWithZone(UIBarButtonItem);
    v17 = [v16 initWithTitle:v9 style:2 target:v15 action:{"donePressed", aBlock[0]}];

    swift_unknownObjectRelease();
    [v5 setRightBarButtonItem:v17];
  }

  v18 = [v0 navigationController];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 navigationBar];

    [v20 setPrefersLargeTitles:1];
  }

  result = [v0 view];
  if (result)
  {
    v22 = result;
    v23 = objc_opt_self();
    v24 = [v22 semanticContentAttribute];

    v25 = [v23 userInterfaceLayoutDirectionForSemanticContentAttribute:v24];
    v26 = [v0 navigationController];
    if (v26)
    {
      if (v25)
      {
        v27 = 0.0;
      }

      else
      {
        v27 = 14.0;
      }

      if (v25)
      {
        v28 = 14.0;
      }

      else
      {
        v28 = 0.0;
      }

      v29 = v26;
      v30 = [v26 navigationBar];

      [v30 setLayoutMargins:{0.0, v27, 0.0, v28}];
    }

    v31 = *&v0[OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_tableView];
    [v31 setDelegate:v0];
    [v31 setDataSource:v0];
    [v31 setAllowsSelection:0];
    [v31 setEstimatedRowHeight:60.0];
    [v31 setSeparatorInset:{0.0, 15.0, 0.0, 0.0}];
    [v31 setRowHeight:UITableViewAutomaticDimension];
    type metadata accessor for HistoryTableViewCell();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v33 = String._bridgeToObjectiveC()();
    [v31 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v33];

    [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
    v34 = *&v0[OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_noHistoryView];
    [v31 bounds];
    [v34 setFrame:?];
    v35 = [v31 backgroundColor];
    [v34 setBackgroundColor:v35];

    sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0x4F545349485F4F4ELL, 0xEA00000000005952);
    v36 = String._bridgeToObjectiveC()();

    [v34 v2[489]];

    if (*&v0[OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_historyEntriesRendered] >= 1)
    {
      [v34 setAlpha:0.0];
    }

    [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
    v37 = [objc_opt_self() defaultCenter];
    v38 = *(*&v0[OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_state] + 40);
    v39 = objc_opt_self();
    v40 = @"com.apple.Diagnostics.deviceStateChangedNotification";
    v41 = v38;
    v42 = [v39 mainQueue];
    v43 = swift_allocObject();
    *(v43 + 16) = v0;
    v49 = sub_100147518;
    v50 = v43;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100060B2C;
    v48 = &unk_1001C90D0;
    v44 = _Block_copy(aBlock);
    v45 = v0;

    v46 = [v37 addObserverForName:v40 object:v41 queue:v42 usingBlock:v44];
    _Block_release(v44);

    *&v45[OBJC_IVAR____TtC11Diagnostics26HistoryTableViewController_deviceStateChangedObserver] = v46;
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}