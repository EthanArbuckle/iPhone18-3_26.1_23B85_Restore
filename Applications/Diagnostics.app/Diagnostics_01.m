uint64_t sub_10003DC58(uint64_t a1)
{
  v2 = type metadata accessor for ModalPresentationCoordinator.QueueEntry();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003DCB4()
{
  if (*(v0 + 48))
  {
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10003DD14(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&qword_1001FCE98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003DD84(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10003C49C(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003DDE4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003DE1C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003DEC8;

  return sub_100036DB0();
}

uint64_t sub_10003DEC8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_10003DFBC()
{
  result = qword_1001FD700;
  if (!qword_1001FD700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FD700);
  }

  return result;
}

uint64_t sub_10003E010(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10003E074()
{
  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10003E110(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10003E160()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003E1B8()
{

  return _swift_deallocObject(v0, 48, 7);
}

char *sub_10003E200(char a1)
{
  if (a1)
  {
    return sub_1000396DC();
  }

  else
  {
    return sub_100032AE0();
  }
}

uint64_t sub_10003E230(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003E278(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10003C4E4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_10003E4D4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

void sub_10003E560()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for DeviceInformationView();
  objc_msgSendSuper2(&v8, "tintColorDidChange");
  v1 = [v0 tintAdjustmentMode];
  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_ellipsisButton];
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  if (v1 == 2)
  {
    v3 = sub_1000FF2D0(v9, 3);
    [v2 setImage:v3 forState:0];

    v4 = *&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_addButton];
    v5 = 1;
  }

  else
  {
    v6 = sub_1000FF2D0(v9, 2);
    [v2 setImage:v6 forState:0];

    v4 = *&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_addButton];
    v5 = 0;
  }

  v7 = sub_1000FF2D0(v9, v5);
  [v4 setImage:v7 forState:0];
}

void sub_10003E6C8()
{
  v1 = *&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_state];
  if (!v1)
  {
    return;
  }

  v2 = v0;

  sub_100073380(v3, v2);

  v4 = [*(v1 + 40) serialNumber];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = &v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_serialNumber + 8];
  v83 = v8;
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_serialNumber] = v5;
  *v8 = v7;

  v9 = *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_infoLabel];

  v10 = String._bridgeToObjectiveC()();

  [v9 setText:v10];

  v11 = [*(v1 + 40) attributes];
  sub_10003C49C(&unk_1001FD010);
  v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v12 + 16))
  {
    sub_100064AFC(v13, v14);
    v16 = v15;

    if (v16)
    {
      swift_unknownObjectRetain();

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_11;
      }

      v17 = [*(v1 + 40) attributes];
      v18 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (!*(v18 + 16))
      {

        goto LABEL_46;
      }

      sub_100064AFC(v19, v20);
      v22 = v21;

      if ((v22 & 1) == 0)
      {
LABEL_46:

        goto LABEL_10;
      }

      swift_unknownObjectRetain();

      if (swift_dynamicCast())
      {
        v23 = sub_1000494C8(0, 0, _swiftEmptyArrayStorage, aBlock, v85);
        v25 = v24;

        v26 = sub_1000494C8(0, 0, _swiftEmptyArrayStorage, aBlock, v85);
        v28 = v27;

        sub_100043700(v23, v25, v26, v28);
        goto LABEL_46;
      }
    }
  }

  else
  {
  }

LABEL_10:

LABEL_11:
  v29 = [*(v1 + 40) attributes];
  v30 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v30 + 16))
  {

    goto LABEL_16;
  }

  sub_100064AFC(v31, v32);
  v34 = v33;

  if ((v34 & 1) == 0)
  {
LABEL_16:

    v36 = 0;
    v37 = 0;
    goto LABEL_17;
  }

  swift_unknownObjectRetain();

  v35 = swift_dynamicCast();
  v36 = aBlock;
  v37 = v85;
  if (!v35)
  {
    v36 = 0;
    v37 = 0;
  }

LABEL_17:
  v38 = &v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imei + 8];
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imei] = v36;
  *v38 = v37;

  v39 = [*(v1 + 40) attributes];
  v40 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v40 + 16))
  {

    goto LABEL_26;
  }

  sub_100064AFC(v41, v42);
  v44 = v43;

  if ((v44 & 1) == 0)
  {
LABEL_26:

    v47 = 0;
    v48 = 0;
    goto LABEL_27;
  }

  swift_unknownObjectRetain();

  v45 = swift_dynamicCast();
  v46 = v45 == 0;
  if (v45)
  {
    v47 = aBlock;
  }

  else
  {
    v47 = 0;
  }

  if (v46)
  {
    v48 = 0;
  }

  else
  {
    v48 = v85;
  }

LABEL_27:
  sub_10003F6B4(v47, v48);
  v49 = [*(v1 + 40) sessionSettings];
  v50 = [v49 deviceIdentifier];

  v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = v52;

  sub_10003F294(v51, v53);
  v54 = [*(v1 + 40) sessionSettings];
  LODWORD(v50) = [v54 displayDeviceIdentifier];

  v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_deviceIdentifierVisible] = v50;
  v55 = *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_deviceIdentifierLabel];
  [v55 alpha];
  if (!v50)
  {
    if (v56 == 1.0)
    {
      v67 = swift_allocObject();
      *(v67 + 16) = v55;
      v82 = objc_opt_self();
      v88 = sub_100044298;
      v89 = v67;
      aBlock = _NSConcreteStackBlock;
      v85 = 1107296256;
      v86 = sub_100031FA8;
      v87 = &unk_1001BF8A8;
      v68 = _Block_copy(&aBlock);
      v69 = v55;

      [v82 animateWithDuration:0x20000 delay:v68 options:0 animations:0.125 completion:0.0];
      _Block_release(v68);
    }

    v61 = *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imageView];
    [v61 alpha];
    if (v70 == 0.0)
    {
      v71 = swift_allocObject();
      *(v71 + 16) = v61;
      v72 = objc_opt_self();
      v88 = sub_10003D8B8;
      v89 = v71;
      aBlock = _NSConcreteStackBlock;
      v85 = 1107296256;
      v86 = sub_100031FA8;
      v87 = &unk_1001BF858;
      v65 = _Block_copy(&aBlock);
      v66 = v61;

      [v72 animateWithDuration:0x10000 delay:v65 options:0 animations:0.375 completion:0.0];
      goto LABEL_36;
    }

LABEL_37:

    goto LABEL_38;
  }

  if (v56 == 0.0)
  {
    v57 = swift_allocObject();
    *(v57 + 16) = v55;
    v58 = objc_opt_self();
    v88 = sub_10003E440;
    v89 = v57;
    aBlock = _NSConcreteStackBlock;
    v85 = 1107296256;
    v86 = sub_100031FA8;
    v87 = &unk_1001BF948;
    v59 = _Block_copy(&aBlock);
    v60 = v55;

    [v58 animateWithDuration:0x10000 delay:v59 options:0 animations:0.375 completion:0.0];
    _Block_release(v59);
  }

  v61 = *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imageView];
  [v61 alpha];
  if (v62 != 1.0)
  {
    goto LABEL_37;
  }

  v63 = swift_allocObject();
  *(v63 + 16) = v61;
  v64 = objc_opt_self();
  v88 = sub_10004487C;
  v89 = v63;
  aBlock = _NSConcreteStackBlock;
  v85 = 1107296256;
  v86 = sub_100031FA8;
  v87 = &unk_1001BF8F8;
  v65 = _Block_copy(&aBlock);
  v66 = v61;

  [v64 animateWithDuration:0x20000 delay:v65 options:0 animations:0.125 completion:0.0];
LABEL_36:
  _Block_release(v65);

LABEL_38:
  sub_100041FA8();
  v73 = *(v1 + 24);
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_infoLabelType] = v73;
  v74 = v83;
  if (v73)
  {
    v74 = v38;
  }

  if (*v74)
  {

    v75 = String._bridgeToObjectiveC()();
  }

  else
  {
    v75 = 0;
  }

  [v9 setText:v75];

  v76 = objc_opt_self();
  v77 = swift_allocObject();
  *(v77 + 16) = v2;
  v78 = swift_allocObject();
  *(v78 + 16) = sub_100044268;
  *(v78 + 24) = v77;
  v88 = sub_10003DAA4;
  v89 = v78;
  aBlock = _NSConcreteStackBlock;
  v85 = 1107296256;
  v86 = sub_100060C48;
  v87 = &unk_1001BF808;
  v79 = _Block_copy(&aBlock);
  v80 = v2;

  [v76 performWithoutAnimation:v79];

  _Block_release(v79);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void sub_10003F1F0(void *a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_deviceImageView);
  *(a2 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_deviceImageView) = a1;
  v3 = a1;

  sub_10003F77C();
}

uint64_t sub_10003F22C(uint64_t result)
{
  v1 = *(result + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_containerLayoutUpdateHandler);
  if (v1)
  {

    v1(v2);

    return sub_10003C52C(v1);
  }

  return result;
}

uint64_t sub_10003F294(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = &v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_deviceIdentifier];
  *v13 = a1;
  *(v13 + 1) = a2;

  if (a2)
  {
    sub_10003E110(0, &qword_1001FD040);
    v15 = static OS_dispatch_queue.main.getter();
    v21 = v9;
    v16 = v15;
    v17 = swift_allocObject();
    v17[2] = v2;
    v17[3] = a1;
    v17[4] = a2;
    aBlock[4] = sub_1000445F0;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031FA8;
    aBlock[3] = &unk_1001BFDA8;
    v18 = _Block_copy(aBlock);
    v19 = v2;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100044658(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
    sub_10003C49C(&unk_1001FD050);
    sub_1000446A0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v18);

    (*(v6 + 8))(v8, v5);
    return (*(v10 + 8))(v12, v21);
  }

  return result;
}

void sub_10003F5F4(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_infoLabelType) = a1;
  v2 = *(v1 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_infoLabel);
  v3 = &OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_serialNumber;
  if (a1)
  {
    v3 = &OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imei;
  }

  if (*(v1 + *v3 + 8))
  {

    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  [v2 setText:v4];
}

id sub_10003F6B4(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_marketingName);
  *v4 = a1;
  v4[1] = a2;

  v5 = *(v2 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_marketingNameLabel);
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  [v5 setText:v6];

  [v5 frame];

  return [v5 setPreferredMaxLayoutWidth:v7];
}

void sub_10003F77C()
{
  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_deviceImageView);
  if (v1)
  {
    v2 = v1;
    [v2 setContentMode:2];
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v23 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imageView;
    v3 = [*(v0 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imageView) subviews];
    sub_10003E110(0, &qword_1001FF090);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v4 >> 62)
    {
      goto LABEL_15;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_14;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        [v7 removeFromSuperview];

        ++v6;
        if (v9 == i)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      ;
    }

LABEL_16:

    [*&v23[v0] addSubview:v2];
    v10 = objc_opt_self();
    sub_10003C49C(&unk_1001FD020);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_10017ED60;
    v12 = [v2 centerYAnchor];
    v13 = [*&v23[v0] centerYAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];

    *(v11 + 32) = v14;
    v15 = [v2 leadingAnchor];
    v16 = [*&v23[v0] leadingAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];

    *(v11 + 40) = v17;
    v18 = [v2 trailingAnchor];
    v19 = [*&v23[v0] trailingAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];

    *(v11 + 48) = v20;
    v21 = [v2 heightAnchor];
    v22 = [v21 constraintEqualToConstant:70.0];

    *(v11 + 56) = v22;
    sub_10003E110(0, &qword_1001FD550);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v10 activateConstraints:isa];
  }
}

id sub_10003FB28(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v64 = type metadata accessor for UIShape();
  v10 = *(v64 - 8);
  __chkstk_darwin(v64);
  v62 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10003C49C(&qword_1001FD068);
  __chkstk_darwin(v12 - 8);
  v63 = &v61 - v13;
  v14 = sub_10003C49C(&qword_1001FD070);
  __chkstk_darwin(v14 - 8);
  v16 = &v61 - v15;
  v17 = type metadata accessor for UIButton.Configuration();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v61 - v22;
  *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_fontSizeMarketingName] = 0x4034000000000000;
  *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_fontSizeDescription] = 0x4028000000000000;
  *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_fontSizeSerialNumber] = 0x402E000000000000;
  *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_fontSizeIDLabel] = 0x4049000000000000;
  *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imageMinimumWidth] = 0x4049000000000000;
  *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imageHeight] = 0x4051800000000000;
  *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_addButtonAndImageGap] = 0x4008000000000000;
  *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_labelsVerticalPadding] = 0x4000000000000000;
  *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_labelsHorizontalPadding] = 0x4024000000000000;
  *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_buttonWidthHeight] = 0x4046000000000000;
  *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_addButtonImageBorder] = 0x401C000000000000;
  *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_ellipsisButtonMargin] = 0x4024000000000000;
  *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_ellipsisButtonImageWidthHeight] = 0x403C000000000000;
  *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_addButtonHoverInset] = 0x4020000000000000;
  v24 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imageView;
  *&v5[v24] = [objc_allocWithZone(UIView) init];
  v25 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_marketingNameLabel;
  *&v5[v25] = [objc_allocWithZone(UILabel) init];
  v26 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_descriptionLabel;
  *&v5[v26] = [objc_allocWithZone(UILabel) init];
  v27 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_infoLabel;
  *&v5[v27] = [objc_allocWithZone(UILabel) init];
  v28 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_deviceIdentifierLabel;
  *&v5[v28] = [objc_allocWithZone(UILabel) init];
  v29 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_activityIndicator;
  *&v5[v29] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:101];
  *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_state] = 0;
  v30 = &v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_deviceIdentifier];
  *v30 = 0;
  v30[1] = 0;
  v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_deviceIdentifierVisible] = 0;
  *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_infoLabelType] = 0;
  v31 = &v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_serialNumber];
  *v31 = 0;
  v31[1] = 0;
  v32 = &v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imei];
  *v32 = 0;
  v32[1] = 0;
  v33 = &v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_marketingName];
  *v33 = 0;
  v33[1] = 0;
  *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_deviceImageView] = 0;
  v34 = &v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_delegate];
  *v34 = 0u;
  *(v34 + 1) = 0u;
  *(v34 + 4) = 0;
  v35 = &v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_containerLayoutUpdateHandler];
  *v35 = 0;
  v35[1] = 0;
  v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_hasExplicitHeight] = 0;
  *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_marketingNameLabelBottomConstraint] = 0;
  *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_infoLabelTopConstraint] = 0;
  *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_addButtonWidthConstraint] = 0;
  *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_ellipsisButtonImageWidthConstraint] = 0;
  *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_contentDependentConstraints] = _swiftEmptyArrayStorage;
  v36 = [objc_opt_self() defaultMetrics];
  v37 = objc_opt_self();
  [v37 defaultFontSize];
  v38 = [v37 systemFontOfSize:?];
  v39 = [v36 scaledFontForFont:v38];

  static UIButton.Configuration.plain()();
  *(swift_allocObject() + 16) = v39;
  v40 = v39;
  UIConfigurationTextAttributesTransformer.init(_:)();
  v41 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v41 - 8) + 56))(v16, 0, 1, v41);
  UIButton.Configuration.titleTextAttributesTransformer.setter();

  UIButton.Configuration.contentInsets.setter();
  sub_10003E110(0, &qword_1001FD078);
  v66 = v18;
  v42 = *(v18 + 16);
  v42(v21, v23, v17);
  v43 = UIButton.init(configuration:primaryAction:)();
  v44 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_addButton;
  *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_addButton] = v43;
  v65 = v23;
  v42(v21, v23, v17);
  v45 = UIButton.init(configuration:primaryAction:)();
  v46 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_ellipsisButton;
  *&v5[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_ellipsisButton] = v45;
  v47 = [objc_opt_self() currentDevice];
  v48 = [v47 userInterfaceIdiom];

  if (v48 == 6)
  {
    v49 = *&v5[v44];
    sub_10003E110(0, &unk_1001FD080);
    v50 = v49;
    v51 = v62;
    static UIShape.circle.getter();
    v52 = v63;
    UIShape.inset(by:)();
    v53 = v64;
    (*(v10 + 8))(v51, v64);
    v54 = *(v10 + 56);
    v54(v52, 0, 1, v53);
    v55 = UIHoverStyle.init(shape:)();
    [v50 setHoverStyle:v55];

    v56 = *&v5[v46];
    static UIShape.circle.getter();
    v54(v52, 0, 1, v53);
    v57 = UIHoverStyle.init(shape:)();
    [v56 setHoverStyle:v57];
  }

  v58 = type metadata accessor for DeviceInformationView();
  v67.receiver = v5;
  v67.super_class = v58;
  v59 = objc_msgSendSuper2(&v67, "initWithFrame:", a1, a2, a3, a4);
  (*(v66 + 8))(v65, v17);
  return v59;
}

id sub_100040338(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UIShape();
  v59 = *(v4 - 8);
  v60 = v4;
  __chkstk_darwin(v4);
  v57 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10003C49C(&qword_1001FD068);
  __chkstk_darwin(v6 - 8);
  v58 = &v56 - v7;
  v8 = sub_10003C49C(&qword_1001FD070);
  __chkstk_darwin(v8 - 8);
  v10 = &v56 - v9;
  v11 = type metadata accessor for UIButton.Configuration();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v56 - v16;
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_fontSizeMarketingName] = 0x4034000000000000;
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_fontSizeDescription] = 0x4028000000000000;
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_fontSizeSerialNumber] = 0x402E000000000000;
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_fontSizeIDLabel] = 0x4049000000000000;
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imageMinimumWidth] = 0x4049000000000000;
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imageHeight] = 0x4051800000000000;
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_addButtonAndImageGap] = 0x4008000000000000;
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_labelsVerticalPadding] = 0x4000000000000000;
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_labelsHorizontalPadding] = 0x4024000000000000;
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_buttonWidthHeight] = 0x4046000000000000;
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_addButtonImageBorder] = 0x401C000000000000;
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_ellipsisButtonMargin] = 0x4024000000000000;
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_ellipsisButtonImageWidthHeight] = 0x403C000000000000;
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_addButtonHoverInset] = 0x4020000000000000;
  v18 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imageView;
  *&v2[v18] = [objc_allocWithZone(UIView) init];
  v19 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_marketingNameLabel;
  *&v2[v19] = [objc_allocWithZone(UILabel) init];
  v20 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_descriptionLabel;
  *&v2[v20] = [objc_allocWithZone(UILabel) init];
  v21 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_infoLabel;
  *&v2[v21] = [objc_allocWithZone(UILabel) init];
  v22 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_deviceIdentifierLabel;
  *&v2[v22] = [objc_allocWithZone(UILabel) init];
  v23 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_activityIndicator;
  *&v2[v23] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:101];
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_state] = 0;
  v24 = &v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_deviceIdentifier];
  *v24 = 0;
  v24[1] = 0;
  v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_deviceIdentifierVisible] = 0;
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_infoLabelType] = 0;
  v25 = &v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_serialNumber];
  *v25 = 0;
  v25[1] = 0;
  v26 = &v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imei];
  *v26 = 0;
  v26[1] = 0;
  v27 = &v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_marketingName];
  *v27 = 0;
  v27[1] = 0;
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_deviceImageView] = 0;
  v28 = &v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_delegate];
  *v28 = 0u;
  *(v28 + 1) = 0u;
  *(v28 + 4) = 0;
  v29 = &v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_containerLayoutUpdateHandler];
  *v29 = 0;
  v29[1] = 0;
  v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_hasExplicitHeight] = 0;
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_marketingNameLabelBottomConstraint] = 0;
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_infoLabelTopConstraint] = 0;
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_addButtonWidthConstraint] = 0;
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_ellipsisButtonImageWidthConstraint] = 0;
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_contentDependentConstraints] = _swiftEmptyArrayStorage;
  v30 = [objc_opt_self() defaultMetrics];
  v31 = objc_opt_self();
  [v31 defaultFontSize];
  v32 = [v31 systemFontOfSize:?];
  v33 = [v30 scaledFontForFont:v32];

  static UIButton.Configuration.plain()();
  *(swift_allocObject() + 16) = v33;
  v34 = v33;
  UIConfigurationTextAttributesTransformer.init(_:)();
  v35 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v35 - 8) + 56))(v10, 0, 1, v35);
  UIButton.Configuration.titleTextAttributesTransformer.setter();

  UIButton.Configuration.contentInsets.setter();
  sub_10003E110(0, &qword_1001FD078);
  v62 = v12;
  v36 = *(v12 + 16);
  v36(v15, v17, v11);
  v37 = UIButton.init(configuration:primaryAction:)();
  v38 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_addButton;
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_addButton] = v37;
  v61 = v17;
  v63 = v11;
  v36(v15, v17, v11);
  v39 = UIButton.init(configuration:primaryAction:)();
  v40 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_ellipsisButton;
  *&v2[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_ellipsisButton] = v39;
  v41 = [objc_opt_self() currentDevice];
  v42 = [v41 userInterfaceIdiom];

  if (v42 == 6)
  {
    v43 = *&v2[v38];
    sub_10003E110(0, &unk_1001FD080);
    v44 = v43;
    v45 = v57;
    static UIShape.circle.getter();
    v46 = v58;
    UIShape.inset(by:)();
    v47 = v59;
    v48 = v60;
    (*(v59 + 8))(v45, v60);
    v49 = *(v47 + 56);
    v49(v46, 0, 1, v48);
    v50 = UIHoverStyle.init(shape:)();
    [v44 setHoverStyle:v50];

    v51 = *&v2[v40];
    static UIShape.circle.getter();
    v49(v46, 0, 1, v48);
    v52 = UIHoverStyle.init(shape:)();
    [v51 setHoverStyle:v52];
  }

  v53 = type metadata accessor for DeviceInformationView();
  v64.receiver = v2;
  v64.super_class = v53;
  v54 = objc_msgSendSuper2(&v64, "initWithCoder:", a1);

  (*(v62 + 8))(v61, v63);
  return v54;
}

id sub_100040B28()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_marketingNameLabel);
  v3 = objc_opt_self();
  v4 = [v3 defaultMetrics];
  v5 = objc_opt_self();
  v6 = [v5 boldSystemFontOfSize:20.0];
  v7 = [v4 scaledFontForFont:v6];

  v8 = v2;
  [v2 setFont:v7];

  v47 = v2;
  [v2 setNumberOfLines:0];
  v9 = objc_opt_self();
  v10 = [v9 labelColor];
  [v8 setTextColor:v10];

  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = *(v1 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_descriptionLabel);
  v12 = v3;
  v48 = v3;
  v13 = [v3 defaultMetrics];
  v14 = [v5 systemFontOfSize:12.0];
  v15 = [v13 scaledFontForFont:v14];

  [v11 setFont:v15];
  [v11 setNumberOfLines:2];
  v16 = [v9 labelColor];
  [v11 setTextColor:v16];

  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = *(v1 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_infoLabel);
  v18 = [v12 defaultMetrics];
  v19 = v5;
  v20 = [v5 systemFontOfSize:15.0];
  v21 = [v18 scaledFontForFont:v20];

  [v17 setFont:v21];
  [v17 setLineBreakMode:2];
  [v17 setAdjustsFontSizeToFitWidth:1];
  [v17 setUserInteractionEnabled:1];
  v22 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v1 action:"infoLabelTapped"];
  [v17 addGestureRecognizer:v22];

  v23 = _UISolariumEnabled();
  v24 = &selRef_secondaryLabelColor;
  if (!v23)
  {
    v24 = &selRef_labelColor;
  }

  v25 = [v9 *v24];
  [v17 setTextColor:v25];

  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  v26 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imageView;
  [*(v1 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imageView) setContentMode:2];
  [*(v1 + v26) setTranslatesAutoresizingMaskIntoConstraints:0];
  v27 = *(v1 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_deviceIdentifierLabel);
  [v27 setTextAlignment:1];
  v28 = [v48 defaultMetrics];
  v29 = [v19 boldSystemFontOfSize:50.0];
  v30 = [v28 scaledFontForFont:v29];

  [v27 setFont:v30];
  [v27 setAdjustsFontSizeToFitWidth:1];
  [v27 setBaselineAdjustment:1];
  v31 = 0.0;
  [v27 setAlpha:0.0];
  v49 = v9;
  v32 = [v9 labelColor];
  [v27 setTextColor:v32];

  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
  type metadata accessor for UILayoutPriority(0);
  sub_100044658(&qword_1001FD038, type metadata accessor for UILayoutPriority);
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  LODWORD(v33) = v50[0];
  [v47 setContentHuggingPriority:0 forAxis:v33];
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  LODWORD(v34) = v50[0];
  [v11 setContentHuggingPriority:0 forAxis:v34];
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  LODWORD(v35) = v50[0];
  [v17 setContentHuggingPriority:0 forAxis:v35];
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  LODWORD(v36) = v50[0];
  [v27 setContentHuggingPriority:0 forAxis:v36];
  v37 = *(v1 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_addButton);
  [v37 addTarget:v1 action:"addButtonPressedWithSender:" forControlEvents:64];
  v51 = 0;
  memset(v50, 0, sizeof(v50));
  v38 = sub_1000FF2D0(v50, 0);
  [v37 setImage:v38 forState:0];

  [v37 setTranslatesAutoresizingMaskIntoConstraints:0];
  v39 = [objc_opt_self() standardUserDefaults];
  v40 = String._bridgeToObjectiveC()();
  LOBYTE(v29) = [v39 BOOLForKey:v40];

  if ((v29 & 1) == 0)
  {
    v41 = [objc_msgSend(objc_opt_self() "currentPlatform")];
    swift_unknownObjectRelease();
    if (v41)
    {
      v31 = 0.0;
    }

    else
    {
      v31 = 1.0;
    }
  }

  [v37 setAlpha:v31];
  v42 = *(v1 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_ellipsisButton);
  [v42 addTarget:v1 action:"ellipsisButtonPressedWithSender:" forControlEvents:64];
  v43 = sub_1000FF2D0(v50, 2);
  [v42 setImage:v43 forState:0];

  [v42 setAlpha:0.0];
  [v42 setContentVerticalAlignment:0];
  [v42 setContentHorizontalAlignment:0];
  [v42 setTranslatesAutoresizingMaskIntoConstraints:0];
  v44 = *(v1 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_activityIndicator);
  v45 = [v49 labelColor];
  [v44 setColor:v45];

  [v44 setAlpha:0.0];
  [v44 setTranslatesAutoresizingMaskIntoConstraints:0];
  return [v44 startAnimating];
}

id sub_100041390()
{
  [v0 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_marketingNameLabel]];
  [v0 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_descriptionLabel]];
  [v0 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_infoLabel]];
  [v0 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imageView]];
  [v0 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_deviceIdentifierLabel]];
  [v0 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_addButton]];
  [v0 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_ellipsisButton]];
  v1 = *&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_activityIndicator];

  return [v0 addSubview:v1];
}

void sub_10004147C()
{
  v1 = [*&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_marketingNameLabel] bottomAnchor];
  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_descriptionLabel];
  v3 = [v2 topAnchor];
  v4 = [v1 constraintEqualToAnchor:v3 constant:-1.0];

  v5 = *&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_marketingNameLabelBottomConstraint];
  *&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_marketingNameLabelBottomConstraint] = v4;
  v6 = v4;

  v7 = *&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_infoLabel];
  v8 = [v7 topAnchor];
  v9 = [v2 bottomAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:1.0];

  v11 = *&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_infoLabelTopConstraint];
  *&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_infoLabelTopConstraint] = v10;
  v97 = v10;

  v99 = *&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_addButton];
  v12 = [v99 widthAnchor];
  v13 = [v12 constraintEqualToConstant:44.0];

  v14 = *&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_addButtonWidthConstraint];
  *&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_addButtonWidthConstraint] = v13;
  v91 = v13;

  v93 = *&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_ellipsisButton];
  v15 = [v93 widthAnchor];
  v16 = [v15 constraintEqualToConstant:44.0];

  v17 = *&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_ellipsisButtonImageWidthConstraint];
  *&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_ellipsisButtonImageWidthConstraint] = v16;
  v94 = v16;

  v18 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imageView;
  v19 = [*&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imageView] widthAnchor];
  v20 = [v19 constraintEqualToConstant:50.0];

  sub_10003C49C(&unk_1001FD020);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_10017ED70;
  *(v21 + 32) = v6;
  v98 = v6;
  v22 = [v7 bottomAnchor];
  v23 = [v0 bottomAnchor];
  v24 = [v22 constraintLessThanOrEqualToAnchor:v23 constant:-15.0];

  *(v21 + 40) = v24;
  v25 = [v7 trailingAnchor];
  v26 = [v0 trailingAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:-15.0];

  *(v21 + 48) = v27;
  v28 = [v2 trailingAnchor];
  v29 = [v0 trailingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:-15.0];

  *(v21 + 56) = v30;
  v31 = [*&v0[v18] leadingAnchor];
  v32 = [v99 trailingAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];

  *(v21 + 64) = v33;
  *(v21 + 72) = v20;
  v34 = *&v0[v18];
  v96 = v20;
  v35 = [v34 heightAnchor];
  v36 = [v35 constraintEqualToConstant:70.0];

  *(v21 + 80) = v36;
  v37 = *&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_deviceIdentifierLabel];
  v38 = [v37 topAnchor];
  v39 = [*&v0[v18] topAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];

  *(v21 + 88) = v40;
  v41 = [v37 bottomAnchor];
  v42 = [*&v0[v18] bottomAnchor];
  v43 = [v41 constraintEqualToAnchor:v42];

  *(v21 + 96) = v43;
  v44 = [v37 leadingAnchor];
  v45 = [*&v0[v18] leadingAnchor];
  v46 = [v44 constraintEqualToAnchor:v45];

  *(v21 + 104) = v46;
  v47 = [v37 trailingAnchor];
  v48 = [*&v0[v18] trailingAnchor];
  v49 = [v47 constraintEqualToAnchor:v48];

  *(v21 + 112) = v49;
  v50 = [v99 centerYAnchor];
  v51 = [*&v0[v18] centerYAnchor];
  v52 = [v50 constraintEqualToAnchor:v51];

  *(v21 + 120) = v52;
  *(v21 + 128) = v91;
  v92 = v91;
  v53 = [v99 heightAnchor];
  v54 = [v99 widthAnchor];
  v55 = [v53 constraintEqualToAnchor:v54];

  *(v21 + 136) = v55;
  v56 = [v93 topAnchor];
  v57 = [v0 topAnchor];
  v58 = [v56 constraintEqualToAnchor:v57 constant:10.0];

  *(v21 + 144) = v58;
  v59 = [v93 trailingAnchor];
  v60 = [v0 trailingAnchor];
  v61 = [v59 constraintEqualToAnchor:v60 constant:-10.0];

  *(v21 + 152) = v61;
  *(v21 + 160) = v94;
  v95 = v94;
  v62 = [v93 heightAnchor];
  v63 = [v93 widthAnchor];
  v64 = [v62 constraintEqualToAnchor:v63];

  *(v21 + 168) = v64;
  v65 = *&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_activityIndicator];
  v66 = [v65 centerXAnchor];
  v67 = [v99 centerXAnchor];
  v68 = [v66 constraintEqualToAnchor:v67 constant:1.0];

  *(v21 + 176) = v68;
  v69 = [v65 centerYAnchor];
  v70 = [v99 centerYAnchor];
  v71 = [v69 constraintEqualToAnchor:v70 constant:1.0];

  *(v21 + 184) = v71;
  v72 = [v65 widthAnchor];
  v73 = [v99 widthAnchor];
  v74 = [v72 constraintEqualToAnchor:v73];

  *(v21 + 192) = v74;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10017ED80;
  *(inited + 32) = v97;
  v76 = *&v0[v18];
  v77 = v97;
  v78 = [v76 bottomAnchor];
  v79 = [v0 bottomAnchor];
  v80 = [v78 constraintLessThanOrEqualToAnchor:v79 constant:-15.0];

  *(inited + 40) = v80;
  v81 = [v99 leadingAnchor];
  v82 = [v0 leadingAnchor];
  v83 = [v81 constraintEqualToAnchor:v82 constant:8.0];

  *(inited + 48) = v83;
  v84 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v84)
  {
    v85 = 0;
    do
    {
      if ((inited & 0xC000000000000001) != 0)
      {
        v86 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v86 = *(inited + 8 * v85 + 32);
      }

      v88 = v86;
      ++v85;
      LODWORD(v87) = 1148829696;
      [v86 setPriority:v87];
    }

    while (v84 != v85);
  }

  v89 = objc_opt_self();
  sub_100074470(inited);
  sub_10003E110(0, &qword_1001FD550);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v89 activateConstraints:isa];
}

void sub_100041FA8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_contentDependentConstraints;
  swift_beginAccess();
  sub_10003E110(0, &qword_1001FD550);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v0 removeConstraints:isa];

  *&v0[v2] = _swiftEmptyArrayStorage;

  v4 = [objc_opt_self() sharedApplication];
  v5 = [v4 preferredContentSizeCategory];

  LOBYTE(v4) = UIContentSizeCategory.isAccessibilityCategory.getter();
  if (v4)
  {
    sub_10003C49C(&unk_1001FD020);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10017EDB0;
    v7 = *&v1[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_marketingNameLabel];
    v8 = [v7 topAnchor];
    v9 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imageView;
    v10 = [*&v1[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imageView] bottomAnchor];
    v11 = [v8 constraintEqualToAnchor:v10 constant:2.0];

    *(inited + 32) = v11;
    v12 = [v7 leadingAnchor];
    v13 = [v1 leadingAnchor];
    v14 = [v12 constraintEqualToAnchor:v13 constant:15.0];

    *(inited + 40) = v14;
    v15 = [v7 trailingAnchor];
    v16 = [v1 trailingAnchor];
    v17 = [v15 constraintEqualToAnchor:v16 constant:-15.0];

    *(inited + 48) = v17;
    v18 = [*&v1[v9] topAnchor];
    v19 = [v1 topAnchor];
    v20 = [v18 constraintEqualToAnchor:v19 constant:15.0];

    *(inited + 56) = v20;
    v21 = [*&v1[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_descriptionLabel] leadingAnchor];
    v22 = [v1 leadingAnchor];
    v23 = [v21 constraintEqualToAnchor:v22 constant:15.0];

    *(inited + 64) = v23;
    v24 = [*&v1[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_infoLabel] leadingAnchor];
    v25 = [v1 leadingAnchor];
    v26 = [v24 constraintEqualToAnchor:v25 constant:15.0];

    *(inited + 72) = v26;
    swift_beginAccess();
    v27 = inited;
  }

  else
  {
    v28 = *&v1[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_marketingNameLabel];
    [v28 intrinsicContentSize];
    v30 = v29;
    v63 = *&v1[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_descriptionLabel];
    [v63 intrinsicContentSize];
    v32 = v30 + v31;
    v64 = *&v1[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_infoLabel];
    [v64 intrinsicContentSize];
    v34 = v32 + v33 + 2.0;
    sub_10003C49C(&unk_1001FD020);
    v35 = swift_initStackObject();
    *(v35 + 16) = xmmword_10017ED90;
    v36 = [v28 topAnchor];
    v37 = [v1 topAnchor];
    if (v34 <= 70.0)
    {
      v42 = [v36 constraintGreaterThanOrEqualToAnchor:v37 constant:15.0];

      *(v35 + 32) = v42;
      v39 = [*&v1[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imageView] topAnchor];
      v40 = [v1 topAnchor];
      v41 = [v39 constraintEqualToAnchor:v40 constant:15.0];
    }

    else
    {
      v38 = [v36 constraintEqualToAnchor:v37 constant:15.0];

      *(v35 + 32) = v38;
      v39 = [*&v1[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imageView] topAnchor];
      v40 = [v1 topAnchor];
      v41 = [v39 constraintGreaterThanOrEqualToAnchor:v40 constant:15.0];
    }

    v43 = v41;

    *(v35 + 40) = v43;
    swift_beginAccess();
    sub_100074470(v35);
    swift_endAccess();
    sub_10003C49C(&unk_1001FD020);
    v44 = swift_initStackObject();
    *(v44 + 16) = xmmword_10017EDA0;
    v45 = [v28 leadingAnchor];
    v46 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imageView;
    v47 = [*&v1[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imageView] trailingAnchor];
    v48 = [v45 constraintEqualToAnchor:v47 constant:10.0];

    *(v44 + 32) = v48;
    v49 = [v28 trailingAnchor];
    v50 = [*&v1[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_ellipsisButton] leadingAnchor];
    v51 = [v49 constraintEqualToAnchor:v50];

    *(v44 + 40) = v51;
    v52 = [v63 centerYAnchor];
    v53 = [*&v1[v46] centerYAnchor];
    v54 = [v52 constraintEqualToAnchor:v53];

    *(v44 + 48) = v54;
    v55 = [v63 leadingAnchor];
    v56 = [*&v1[v46] trailingAnchor];
    v57 = [v55 constraintEqualToAnchor:v56 constant:10.0];

    *(v44 + 56) = v57;
    v58 = [v64 leadingAnchor];
    v59 = [*&v1[v46] trailingAnchor];
    v60 = [v58 constraintEqualToAnchor:v59 constant:10.0];

    *(v44 + 64) = v60;
    swift_beginAccess();
    v27 = v44;
  }

  sub_100074470(v27);
  swift_endAccess();
  v61 = objc_opt_self();

  v62 = Array._bridgeToObjectiveC()().super.isa;

  [v61 activateConstraints:v62];
}

id sub_10004287C(id result, uint64_t a2)
{
  v3 = result;
  if (a2)
  {
    v4 = a2;
    if (a2)
    {
      v5 = *(v2 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_addButton);
      result = [v5 alpha];
      if (v6 == 1.0)
      {
        v7 = swift_allocObject();
        *(v7 + 16) = v5;
        v8 = objc_opt_self();
        v31 = sub_10004487C;
        v32 = v7;
        v27 = _NSConcreteStackBlock;
        v28 = 1107296256;
        v29 = sub_100031FA8;
        v30 = &unk_1001BFD58;
        v9 = _Block_copy(&v27);
        v10 = v5;

        [v8 animateWithDuration:0x20000 delay:v9 options:0 animations:0.125 completion:0.0];
        _Block_release(v9);
      }
    }

    if ((v4 & 2) != 0)
    {
      v11 = *(v2 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_ellipsisButton);
      result = [v11 alpha];
      if (v12 == 1.0)
      {
        v13 = swift_allocObject();
        *(v13 + 16) = v11;
        v14 = objc_opt_self();
        v31 = sub_10004487C;
        v32 = v13;
        v27 = _NSConcreteStackBlock;
        v28 = 1107296256;
        v29 = sub_100031FA8;
        v30 = &unk_1001BFD08;
        v15 = _Block_copy(&v27);
        v16 = v11;

        [v14 animateWithDuration:0x20000 delay:v15 options:0 animations:0.125 completion:0.0];
        _Block_release(v15);
      }
    }

    if ((v4 & 4) != 0)
    {
      v17 = *(v2 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_activityIndicator);
      result = [v17 alpha];
      if (v18 == 1.0)
      {
        v19 = swift_allocObject();
        *(v19 + 16) = v17;
        v20 = objc_opt_self();
        v31 = sub_10004487C;
        v32 = v19;
        v27 = _NSConcreteStackBlock;
        v28 = 1107296256;
        v29 = sub_100031FA8;
        v30 = &unk_1001BFCB8;
        v21 = _Block_copy(&v27);
        v22 = v17;

        [v20 animateWithDuration:0x20000 delay:v21 options:0 animations:0.125 completion:0.0];
        _Block_release(v21);
      }
    }

    if ((v4 & 5) != 0)
    {
      result = sub_100043418();
    }

    if ((v4 & 2) != 0)
    {
      result = sub_100043598();
    }
  }

  if (v3)
  {
    v23 = [objc_opt_self() standardUserDefaults];
    v24 = String._bridgeToObjectiveC()();
    v25 = [v23 BOOLForKey:v24];

    if ((v25 & 1) != 0 || (v26 = [objc_msgSend(objc_opt_self() "currentPlatform")], swift_unknownObjectRelease(), v26))
    {
      v3 &= 0xFFFFFFFFFFFFFFFCLL;
    }

    result = sub_100042CC8(v3, 1);
    if ((v3 & 5) != 0)
    {
      result = sub_1000432C0();
    }

    if ((v3 & 2) != 0)
    {
      return sub_100043448();
    }
  }

  return result;
}

uint64_t sub_100042CC8(uint64_t result, char a2)
{
  v4 = result;
  if (result)
  {
    v5 = *(v2 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_addButton);
    result = [v5 alpha];
    if (a2)
    {
      if (v6 != 0.0)
      {
        goto LABEL_8;
      }

      v7 = swift_allocObject();
      *(v7 + 16) = v5;
      v8 = objc_opt_self();
      v37 = sub_10003E440;
      v38 = v7;
      v33 = _NSConcreteStackBlock;
      v34 = 1107296256;
      v35 = sub_100031FA8;
      v36 = &unk_1001BFC68;
      v9 = _Block_copy(&v33);
      v10 = v5;

      [v8 animateWithDuration:0x10000 delay:v9 options:0 animations:0.375 completion:0.0];
    }

    else
    {
      if (v6 != 1.0)
      {
        goto LABEL_8;
      }

      v11 = swift_allocObject();
      *(v11 + 16) = v5;
      v12 = objc_opt_self();
      v37 = sub_10004487C;
      v38 = v11;
      v33 = _NSConcreteStackBlock;
      v34 = 1107296256;
      v35 = sub_100031FA8;
      v36 = &unk_1001BFC18;
      v9 = _Block_copy(&v33);
      v13 = v5;

      [v12 animateWithDuration:0x20000 delay:v9 options:0 animations:0.125 completion:0.0];
    }

    _Block_release(v9);
  }

LABEL_8:
  if ((v4 & 2) == 0)
  {
    goto LABEL_15;
  }

  v14 = *(v2 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_ellipsisButton);
  result = [v14 alpha];
  if (a2)
  {
    if (v15 != 0.0)
    {
      goto LABEL_15;
    }

    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    v17 = objc_opt_self();
    v37 = sub_10003E440;
    v38 = v16;
    v33 = _NSConcreteStackBlock;
    v34 = 1107296256;
    v35 = sub_100031FA8;
    v36 = &unk_1001BFBC8;
    v18 = _Block_copy(&v33);
    v19 = v14;

    [v17 animateWithDuration:0x10000 delay:v18 options:0 animations:0.375 completion:0.0];
  }

  else
  {
    if (v15 != 1.0)
    {
      goto LABEL_15;
    }

    v20 = swift_allocObject();
    *(v20 + 16) = v14;
    v21 = objc_opt_self();
    v37 = sub_10004487C;
    v38 = v20;
    v33 = _NSConcreteStackBlock;
    v34 = 1107296256;
    v35 = sub_100031FA8;
    v36 = &unk_1001BFB78;
    v18 = _Block_copy(&v33);
    v22 = v14;

    [v21 animateWithDuration:0x20000 delay:v18 options:0 animations:0.125 completion:0.0];
  }

  _Block_release(v18);

LABEL_15:
  if ((v4 & 4) != 0)
  {
    v23 = *(v2 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_activityIndicator);
    result = [v23 alpha];
    if (a2)
    {
      if (v24 == 0.0)
      {
        v25 = swift_allocObject();
        *(v25 + 16) = v23;
        v26 = objc_opt_self();
        v37 = sub_10003E440;
        v38 = v25;
        v33 = _NSConcreteStackBlock;
        v34 = 1107296256;
        v35 = sub_100031FA8;
        v36 = &unk_1001BFB28;
        v27 = _Block_copy(&v33);
        v28 = v23;

        [v26 animateWithDuration:0x10000 delay:v27 options:0 animations:0.375 completion:0.0];
        _Block_release(v27);
      }

      return [v23 startAnimating];
    }

    else if (v24 == 1.0)
    {
      v29 = swift_allocObject();
      *(v29 + 16) = v23;
      v30 = objc_opt_self();
      v37 = sub_10004487C;
      v38 = v29;
      v33 = _NSConcreteStackBlock;
      v34 = 1107296256;
      v35 = sub_100031FA8;
      v36 = &unk_1001BFAD8;
      v31 = _Block_copy(&v33);
      v32 = v23;

      [v30 animateWithDuration:0x20000 delay:v31 options:0 animations:0.125 completion:0.0];
      _Block_release(v31);
    }
  }

  return result;
}

id sub_1000432C0()
{
  v1 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_addButtonWidthConstraint;
  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_addButtonWidthConstraint];
  if (v2)
  {
    result = [v2 constant];
    if (v4 == 44.0)
    {
      return result;
    }

    v5 = *&v0[v1];
    if (v5)
    {
      [v5 setConstant:44.0];
    }
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  v7 = objc_opt_self();
  v10[4] = sub_1000445A0;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100031FA8;
  v10[3] = &unk_1001BFA88;
  v8 = _Block_copy(v10);
  v9 = v0;

  [v7 animateWithDuration:1 delay:v8 options:0 animations:0.25 completion:0.0];
  _Block_release(v8);
}

id sub_100043448()
{
  v1 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_ellipsisButtonImageWidthConstraint;
  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_ellipsisButtonImageWidthConstraint];
  if (v2)
  {
    result = [v2 constant];
    if (v4 == 28.0)
    {
      return result;
    }

    v5 = *&v0[v1];
    if (v5)
    {
      [v5 setConstant:28.0];
    }
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  v7 = objc_opt_self();
  v10[4] = sub_100044870;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100031FA8;
  v10[3] = &unk_1001BF9E8;
  v8 = _Block_copy(v10);
  v9 = v0;

  [v7 animateWithDuration:1 delay:v8 options:0 animations:0.25 completion:0.0];
  _Block_release(v8);
}

id sub_1000435C8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = *&v4[*a1];
  if (v8)
  {
    result = [v8 constant];
    if (v10 == 0.0)
    {
      return result;
    }

    v11 = *&v4[v7];
    if (v11)
    {
      [v11 setConstant:0.0];
    }
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v4;
  v13 = objc_opt_self();
  v16[4] = a3;
  v16[5] = v12;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_100031FA8;
  v16[3] = a4;
  v14 = _Block_copy(v16);
  v15 = v4;

  [v13 animateWithDuration:1 delay:v14 options:0 animations:0.25 completion:0.0];
  _Block_release(v14);
}

void sub_100043700(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{

  v7._countAndFlagsBits = 0x20A280E220;
  v7._object = 0xA500000000000000;
  String.append(_:)(v7);

  v8._countAndFlagsBits = a3;
  v33 = a4;
  v8._object = a4;
  String.append(_:)(v8);

  if (!a1 && a2 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v9 = *&v4[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_infoLabelTopConstraint];
    if (v9)
    {
      [v9 setConstant:1.0];
    }

    v10 = *&v4[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_marketingNameLabelBottomConstraint];
    if (v10)
    {
      v11 = -1.0;
LABEL_12:
      [v10 setConstant:{v11, a4}];
    }
  }

  else
  {
    v12 = *&v4[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_infoLabelTopConstraint];
    if (v12)
    {
      [v12 setConstant:2.0];
    }

    v10 = *&v4[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_marketingNameLabelBottomConstraint];
    if (v10)
    {
      v11 = -2.0;
      goto LABEL_12;
    }
  }

  v13 = *&v4[OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_descriptionLabel];
  [v13 frame];
  v35 = [objc_allocWithZone(UILabel) initWithFrame:{v14, v15, v16, v17}];
  [v35 setNumberOfLines:2];
  v18 = [objc_opt_self() systemFontOfSize:12.0];
  [v35 setFont:v18];

  v19 = String._bridgeToObjectiveC()();
  [v35 setText:v19];

  [v35 frame];
  [v35 sizeThatFits:{v20, 1.79769313e308}];
  v22 = v21;
  v23 = lroundf(v22);
  v24 = [v35 font];
  if (!v24)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v25 = v24;
  [v24 lineHeight];
  v27 = v26;

  v28 = v27;
  v29 = lroundf(v28);
  if (!v29)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 == 0x8000000000000000 && v29 == -1)
  {
    goto LABEL_23;
  }

  if (v23 / v29 >= 2)
  {

    v30._countAndFlagsBits = 10;
    v30._object = 0xE100000000000000;
    String.append(_:)(v30);

    v31._countAndFlagsBits = a3;
    v31._object = v34;
    String.append(_:)(v31);
  }

  v32 = String._bridgeToObjectiveC()();

  [v13 setText:v32];

  [v4 layoutIfNeeded];
}

uint64_t sub_100043AD0(void *a1)
{
  v3 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_delegate;
  swift_beginAccess();
  sub_100044704(v1 + v3, v6, &qword_1001FD030);
  if (!v7)
  {
    return sub_10003DD84(v6, &qword_1001FD030);
  }

  sub_10004476C(v6, v5);
  sub_10003DD84(v6, &qword_1001FD030);
  sub_1000442A0(v5, v5[3]);
  sub_100119A08(a1, 1);
  return sub_100044554(v5);
}

void sub_100043C0C()
{
  if (*(v0 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_imei + 8))
  {
    v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_infoLabelType);
    if (v1)
    {
      if (v1 != 1)
      {
        _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
        __break(1u);
        return;
      }

      *(v0 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_infoLabelType) = 0;
      v3 = *(v0 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_infoLabel);
      v4 = *(v0 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_serialNumber + 8);

      v2 = 0;
      if (!v4)
      {
        v5 = 0;
LABEL_7:
        [v3 setText:v5];

        v6 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_delegate;
        swift_beginAccess();
        sub_100044704(v0 + v6, v8, &qword_1001FD030);
        if (v8[3])
        {
          sub_10004476C(v8, v7);
          sub_10003DD84(v8, &qword_1001FD030);
          sub_1000442A0(v7, v7[3]);
          sub_100119DA0(v2);
          sub_100044554(v7);
        }

        else
        {
          sub_10003DD84(v8, &qword_1001FD030);
        }

        return;
      }
    }

    else
    {
      v2 = 1;
      *(v0 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_infoLabelType) = 1;
      v3 = *(v0 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_infoLabel);
    }

    v5 = String._bridgeToObjectiveC()();

    goto LABEL_7;
  }
}

uint64_t sub_100043E04()
{

  sub_10003DD84(v0 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_delegate, &qword_1001FD030);
  sub_10003C52C(*(v0 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_containerLayoutUpdateHandler));
}

id sub_100043F98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceInformationView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000441A4()
{
  result = qword_1001FD008;
  if (!qword_1001FD008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FD008);
  }

  return result;
}

uint64_t sub_10004420C(uint64_t a1, uint64_t a2)
{
  v3 = (*v2 + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_containerLayoutUpdateHandler);
  v4 = *v3;
  *v3 = a1;
  v3[1] = a2;
  return sub_10003C52C(v4);
}

uint64_t sub_100044230()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100044280(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_1000442A0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000442E4()
{
  v1 = OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_delegate;
  swift_beginAccess();
  sub_100044704(v0 + v1, v14, &qword_1001FD030);
  if (!v15)
  {
    return sub_10003DD84(v14, &qword_1001FD030);
  }

  sub_10004476C(v14, v13);
  sub_10003DD84(v14, &qword_1001FD030);
  v2 = *sub_1000442A0(v13, v13[3]);
  if (qword_1001FC6A0 != -1)
  {
    swift_once();
  }

  if (*(qword_10020A358 + OBJC_IVAR____TtC11Diagnostics19SetupViewController_termsAndConditionsAccepted) == 1)
  {
    v3 = *(v2 + OBJC_IVAR____TtC11Diagnostics12CardViewCell_cardState);
    if (v3)
    {
      v4 = [*(v3 + 40) serialNumber];
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      v8 = OBJC_IVAR____TtC11Diagnostics12CardViewCell_controller;
      swift_beginAccess();
      sub_100044704(v2 + v8, v11, &qword_1001FD060);
      if (v12)
      {
        sub_10004476C(v11, v10);
        sub_10003DD84(v11, &qword_1001FD060);
        sub_1000442A0(v10, v10[3]);
        sub_100102FA4(v5, v7, 0);

        sub_100044554(v10);
      }

      else
      {

        sub_10003DD84(v11, &qword_1001FD060);
      }
    }
  }

  else
  {
    sub_10004287C(4, 3);
    if (qword_1001FC6C8 != -1)
    {
      swift_once();
    }

    sub_100066800(2, 1);
  }

  return sub_100044554(v13);
}

uint64_t sub_100044554(uint64_t a1)
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

uint64_t sub_1000445B0()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_1000445F0()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC11Diagnostics21DeviceInformationView_deviceIdentifierLabel);
  v2 = String._bridgeToObjectiveC()();
  [v1 setText:v2];
}

uint64_t sub_100044658(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000446A0()
{
  result = qword_1001FDE70;
  if (!qword_1001FDE70)
  {
    sub_10003C4E4(&unk_1001FD050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FDE70);
  }

  return result;
}

uint64_t sub_100044704(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10003C49C(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004476C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_1000448C0()
{
  type metadata accessor for CoreMotionManager();
  v0 = swift_allocObject();
  result = [objc_allocWithZone(CMMotionManager) init];
  *(v0 + 16) = result;
  qword_10020A360 = v0;
  return result;
}

uint64_t sub_100044914()
{

  return swift_deallocClassInstance();
}

void *sub_100044970(double a1)
{
  v1[5] = 0;
  v1[6] = 0;
  if (qword_1001FC6A8 != -1)
  {
    swift_once();
  }

  v3 = *(qword_10020A360 + 16);
  v1[2] = v3;
  [v3 setDeviceMotionUpdateInterval:a1];
  v4 = [objc_allocWithZone(NSOperationQueue) init];
  v1[3] = v4;
  [v4 setMaxConcurrentOperationCount:1];
  type metadata accessor for UserAccelerationBuffer();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 32) = 10;
  *(v5 + 40) = 0x3F847AE147AE147BLL;
  v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v6 + 16) = 10;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *(v6 + 96) = 0u;
  *(v6 + 112) = 0u;
  *(v6 + 128) = 0u;
  *(v6 + 144) = 0u;
  *(v6 + 160) = 0u;
  *(v6 + 176) = 0u;
  *(v6 + 192) = 0u;
  *(v6 + 208) = 0u;
  *(v6 + 224) = 0u;
  *(v6 + 240) = 0u;
  *(v6 + 256) = 0u;
  *(v5 + 16) = v6;
  v1[4] = v5;
  return v1;
}

void sub_100044A9C()
{
  v1 = *(v0 + 16);
  if (![v1 isDeviceMotionAvailable])
  {
    if (qword_1001FC7C8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10003DAAC(v6, qword_10020A510);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(oslog, v3))
    {
      goto LABEL_12;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "[DeviceMotionProvider] Failed to start motion updates. Device Motion is not available.";
    goto LABEL_11;
  }

  if (([v1 isDeviceMotionActive] & 1) == 0)
  {
    v7 = *(v0 + 24);
    v8 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1000451EC;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000450B4;
    aBlock[3] = &unk_1001BFE48;
    v9 = _Block_copy(aBlock);

    [v1 startDeviceMotionUpdatesUsingReferenceFrame:4 toQueue:v7 withHandler:v9];
    _Block_release(v9);
    return;
  }

  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10003DAAC(v2, qword_10020A510);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "[DeviceMotionProvider] Failed to start motion updates. Device Motion is already active.";
LABEL_11:
    _os_log_impl(&_mh_execute_header, oslog, v3, v5, v4, 2u);
  }

LABEL_12:
}

void sub_100044D14(void *a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (a1)
    {
      v3 = Strong;

      v4 = a1;
      [v4 userAcceleration];
      v8 = sub_1000E9760(v5, v6, v7);

      if (v8 == 2 || (v8 & 1) == 0)
      {
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
        v11 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          _os_log_impl(&_mh_execute_header, v10, v11, "[DeviceMotionProvider] Sending motion update", v12, 2u);
        }

        sub_10003C49C(&qword_1001FD1E8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10017EF10;
        *(inited + 32) = 7823737;
        *(inited + 40) = 0xE300000000000000;
        v14 = [v4 attitude];
        [v14 yaw];
        v16 = v15;

        *(inited + 48) = v16;
        *(inited + 56) = 0x6863746970;
        *(inited + 64) = 0xE500000000000000;
        v17 = [v4 attitude];
        [v17 pitch];
        v19 = v18;

        *(inited + 72) = v19;
        *(inited + 80) = 1819045746;
        *(inited + 88) = 0xE400000000000000;
        v20 = [v4 attitude];
        [v20 roll];
        v22 = v21;

        *(inited + 96) = v22;
        v23 = sub_1000D58E8(inited);
        swift_setDeallocating();
        sub_10003C49C(&qword_1001FD1F0);
        swift_arrayDestroy();
        v24 = *(v3 + 40);
        if (v24)
        {

          v24(v23);
          sub_10003C52C(v24);
        }
      }

      goto LABEL_18;
    }
  }

  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_10003DAAC(v25, qword_10020A510);
  v4 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v4, v26, "[DeviceMotionProvider] Failed to get device motion data.", v27, 2u);
  }

LABEL_18:
}

void sub_1000450B4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_100045140()
{

  sub_10003C52C(*(v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_1000451B4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000451F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10004520C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = &v2[OBJC_IVAR____TtC11Diagnostics35DetailedConsentNavigationController_consentHandle];
  *v4 = a1;
  *(v4 + 1) = a2;
  v5 = String.uppercased()();
  v12 = 0xD000000000000013;
  v13 = 0x8000000100189AF0;

  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x454C5449545FLL;
  v6._object = 0xE600000000000000;
  String.append(_:)(v6);

  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000013, 0x8000000100189AF0);

  sub_100045B38();

  v7 = String._bridgeToObjectiveC()();

  v8 = String._bridgeToObjectiveC()();

  v11.receiver = v3;
  v11.super_class = type metadata accessor for DetailedConsentNavigationController();
  v9 = objc_msgSendSuper2(&v11, "initWithTitle:detailText:symbolName:contentLayout:", v7, v8, 0, 2);

  return v9;
}

void sub_100045444()
{
  v1 = [objc_opt_self() boldButton];
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0x4545524741, 0xE500000000000000);
  v2 = String._bridgeToObjectiveC()();

  [v1 setTitle:v2 forState:0];

  [v1 addTarget:v0 action:"agreeButtonClicked" forControlEvents:64];
  v3 = [v0 buttonTray];
  [v3 addButton:v1];

  v4 = [objc_opt_self() linkButton];
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0x4545524741534944, 0xE800000000000000);
  v5 = String._bridgeToObjectiveC()();

  [v4 setTitle:v5 forState:0];

  [v4 addTarget:v0 action:"disagreeButtonClicked" forControlEvents:64];
  v6 = [v0 buttonTray];
  [v6 addButton:v4];
}

void sub_100045624()
{
  v1 = v0;
  v25 = [v0 parentViewController];
  if (!v25)
  {
    return;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    goto LABEL_26;
  }

  v3 = [v2 viewControllers];

  sub_100045CC4();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_5:
      if ((v4 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_37;
        }

        v5 = *(v4 + 32);
      }

      v25 = v5;

      type metadata accessor for EnhancedLoggingConsentViewController();
      v6 = swift_dynamicCastClass();
      if (!v6)
      {
LABEL_26:
        v22 = v25;
LABEL_27:

        return;
      }

      v7 = *&v1[OBJC_IVAR____TtC11Diagnostics35DetailedConsentNavigationController_consentHandle + 8];
      if (!v7)
      {
        goto LABEL_39;
      }

      v8 = v6;
      v9 = *(v6 + OBJC_IVAR____TtC11Diagnostics36EnhancedLoggingConsentViewController_consentHandles);
      v10 = *(v9 + 16);
      v11 = v25;
      if (!v10)
      {
LABEL_18:

        goto _objc_release_x2;
      }

      v12 = 0;
      v13 = *&v1[OBJC_IVAR____TtC11Diagnostics35DetailedConsentNavigationController_consentHandle];
      v14 = (v9 + 40);
      while (*(v14 - 1) != v13 || v7 != *v14)
      {
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v11 = v25;
        if (v16)
        {
          break;
        }

        ++v12;
        v14 += 2;
        if (v10 == v12)
        {
          goto LABEL_18;
        }
      }

      v17 = v12 + 1;
      if (!__OFADD__(v12, 1))
      {
        if (v17 >= *(v9 + 16))
        {
          v26 = v11;
          v23 = objc_allocWithZone(type metadata accessor for ConsentSignatureController());
          v24 = sub_10014BA14();
          [v8 showViewController:v24 sender:v1];

          v22 = v24;
          goto LABEL_27;
        }

        if ((v17 & 0x8000000000000000) == 0)
        {
          v18 = (v9 + 32 + 16 * v17);
          v19 = *v18;
          v20 = v18[1];
          objc_allocWithZone(type metadata accessor for DetailedConsentNavigationController());

          v21 = sub_10004520C(v19, v20);
          [v8 showViewController:v21 sender:v1];

          goto LABEL_26;
        }

        goto LABEL_38;
      }

LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
_objc_release_x2:
      _objc_release_x2();
      return;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }
}

id sub_100045ACC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DetailedConsentNavigationController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100045B38()
{
  v0 = String.uppercased()();
  _StringGuts.grow(_:)(29);

  String.append(_:)(v0);
  v1._countAndFlagsBits = 0x544E45544E4F435FLL;
  v1._object = 0xE800000000000000;
  String.append(_:)(v1);
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v3 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    if (wapiCapability)
    {
      if (v0._countAndFlagsBits == 0x52545F454C435943 && v0._object == 0xEE00474E494B4341)
      {

LABEL_8:
        v6._countAndFlagsBits = 0x495041575FLL;
        v6._object = 0xE500000000000000;
        String.append(_:)(v6);
        goto LABEL_9;
      }

      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v5)
      {
        goto LABEL_8;
      }
    }

    else
    {
    }

LABEL_9:
    v7 = sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000013, 0x8000000100189AF0);

    return v7;
  }

  __break(1u);
  return result;
}

unint64_t sub_100045CC4()
{
  result = qword_1001FDE30;
  if (!qword_1001FDE30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001FDE30);
  }

  return result;
}

id sub_100045DB4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseVisualEffectView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

NSString sub_100045E0C()
{
  result = String._bridgeToObjectiveC()();
  qword_1001FD250 = result;
  return result;
}

uint64_t sub_100045E44(uint64_t (*a1)(void))
{
  v2 = [objc_opt_self() defaultCenter];
  if (qword_1001FC6B0 != -1)
  {
    swift_once();
  }

  [v2 postNotificationName:qword_1001FD250 object:0];

  return a1();
}

uint64_t sub_100045FC8(void *a1, int a2, void *a3, void *a4, void *aBlock, uint64_t a6, uint64_t a7, void (*a8)(id, uint64_t, uint64_t))
{
  v13 = _Block_copy(aBlock);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = a3;
  v16 = a4;
  v17 = a1;
  a8(v16, a7, v14);
}

uint64_t sub_1000460A0(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = objc_opt_self();
  v5 = [objc_msgSend(v4 "currentPlatform")];
  result = swift_unknownObjectRelease();
  if (v5)
  {
    [objc_msgSend(v4 "currentPlatform")];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_10004628C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DKViewControllerDelegateResponder();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000462E8(uint64_t a1, char a2)
{
  v4 = [objc_opt_self() sharedApplication];
  v5 = [v4 userInterfaceLayoutDirection];

  if (v5 == 1)
  {
    v6 = 15;
    v7 = 16;
    if (a1 != 15)
    {
      v7 = a1;
    }

    if (a1 != 16)
    {
      v6 = v7;
    }

    if ((a2 & 1) == 0)
    {
      return v6;
    }
  }

  return a1;
}

uint64_t sub_10004638C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000463CC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for ModalPresentationCoordinator.QueueEntry();
  v8 = __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = (&v30 - v11);
  v13 = *(v3 + OBJC_IVAR____TtC11Diagnostics33DKViewControllerDelegateResponder__presentationTransitionStyle);
  v14 = *(v3 + OBJC_IVAR____TtC11Diagnostics33DKViewControllerDelegateResponder__presentationTransitionStyle + 8);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  v16 = qword_1001FC838;

  if (v16 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = &v10[v7[9]];
  *v10 = a1;
  v10[8] = 0;
  *(v10 + 2) = 0;
  v18 = a1;
  Date.init()();
  v10[v7[8]] = 1;
  *v17 = v13;
  v17[8] = v14;
  v19 = [v18 popoverPresentationController];
  v20 = v19;
  if (v19)
  {
    [v19 sourceRect];
    v31 = v21;
    v32 = v22;
    v30 = v23;
    v33 = v24;

    *&v26 = v30;
    *&v25 = v31;
    *(&v25 + 1) = v32;
    *(&v26 + 1) = v33;
  }

  else
  {
    v25 = 0uLL;
    v26 = 0uLL;
  }

  v27 = &v10[v7[10]];
  v28 = &v10[v7[11]];
  *v28 = v25;
  *(v28 + 1) = v26;
  v28[32] = v20 == 0;
  *v27 = sub_100046898;
  v27[1] = v15;
  sub_10003DBF4(v10, v12);

  sub_100127134(v12);
  sub_10003DC58(v12);
  swift_endAccess();
}

uint64_t sub_10004660C(void *a1, void (*a2)(void), uint64_t a3)
{
  v7 = [a1 presentedViewController];
  if (v7)
  {

    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = v3;
    v8[4] = a2;
    v8[5] = a3;
    v15[4] = sub_10004683C;
    v15[5] = v8;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1107296256;
    v15[2] = sub_100031FA8;
    v15[3] = &unk_1001BFEC0;
    v9 = _Block_copy(v15);
    v10 = a1;
    v11 = v3;

    [v10 dismissViewControllerAnimated:1 completion:v9];
    _Block_release(v9);
  }

  else
  {
    sub_100125854(1, *&v3[OBJC_IVAR____TtC11Diagnostics33DKViewControllerDelegateResponder__dismissalTransitionStyle], v3[OBJC_IVAR____TtC11Diagnostics33DKViewControllerDelegateResponder__dismissalTransitionStyle + 8], a2, a3);
  }

  v12 = objc_opt_self();
  v13 = [objc_msgSend(v12 "currentPlatform")];
  result = swift_unknownObjectRelease();
  if (v13)
  {
    [objc_msgSend(v12 "currentPlatform")];
    swift_unknownObjectRelease();
    [objc_msgSend(v12 "currentPlatform")];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000467F4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100046848(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100046860()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_1000468A8(uint64_t a1, char a2)
{
  v3 = v2;
  *&v3[OBJC_IVAR____TtC11Diagnostics34AssessmentIssueFoundViewController_barButton] = 0;
  sub_10003DD14(a1, &v3[OBJC_IVAR____TtC11Diagnostics34AssessmentIssueFoundViewController_error]);
  v3[OBJC_IVAR____TtC11Diagnostics34AssessmentIssueFoundViewController_isSource] = a2;
  v6 = 0x454352554F535FLL;
  if (a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v31 = v6;
  v32 = v7;
  v29 = String.init<A>(_:)();
  v30 = v8;
  String.append<A>(contentsOf:)();

  v10 = v29;
  v9 = v30;
  if (_UISolariumEnabled())
  {
    sub_10003C49C(&unk_1001FD020);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_10017ED90;
    v12 = objc_opt_self();
    *(v11 + 32) = [v12 systemRedColor];
    *(v11 + 40) = [v12 labelColor];
    sub_10003E110(0, &qword_100202970);
    v13.super.isa = Array._bridgeToObjectiveC()().super.isa;

    v14 = &selRef_configurationWithPaletteColors_;
  }

  else
  {
    v13.super.isa = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.478431373 blue:1.0 alpha:1.0];
    v14 = &selRef_configurationWithHierarchicalColor_;
  }

  v15 = [objc_opt_self() *v14];

  _StringGuts.grow(_:)(24);
  DeviceClass = GestaltGetDeviceClass();
  v17 = sub_100100580(DeviceClass);
  v19 = v18;

  v31 = v17;
  v32 = v19;
  v20._object = 0x8000000100189E10;
  v20._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v20);
  v21 = String._bridgeToObjectiveC()();

  v22 = [objc_opt_self() _systemImageNamed:v21];

  if (v22)
  {
    v23 = [v22 imageWithConfiguration:v15];
  }

  else
  {
    v23 = 0;
  }

  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD00000000000001FLL, 0x8000000100189DC0);
  v24 = String._bridgeToObjectiveC()();

  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, v10, v9);

  v25 = String._bridgeToObjectiveC()();

  v28.receiver = v3;
  v28.super_class = type metadata accessor for AssessmentIssueFoundViewController();
  v26 = objc_msgSendSuper2(&v28, "initWithTitle:detailText:icon:contentLayout:", v24, v25, v23, 2);

  sub_10003DD84(a1, &qword_1001FCE98);
  return v26;
}

uint64_t sub_100046C70()
{
  v1 = sub_10003C49C(&qword_1001FD3A8);
  __chkstk_darwin(v1 - 8);
  v92 = &v84 - v2;
  v3 = type metadata accessor for UIButton.Configuration.TitleAlignment();
  v90 = *(v3 - 8);
  v91 = v3;
  __chkstk_darwin(v3);
  v89 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10003C49C(&qword_1001FD070);
  __chkstk_darwin(v5 - 8);
  v88 = &v84 - v6;
  v87 = type metadata accessor for UIButton.Configuration.Size();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v85 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UIButton.Configuration();
  v94 = *(v8 - 8);
  v95 = v8;
  __chkstk_darwin(v8);
  v93 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AssessmentError();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v97 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10003C49C(&qword_1001FD3B0);
  v14 = __chkstk_darwin(v13);
  v16 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v84 - v17;
  v19 = sub_10003C49C(&qword_1001FCE98);
  v20 = __chkstk_darwin(v19 - 8);
  v96 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v104 = &v84 - v23;
  v24 = __chkstk_darwin(v22);
  v26 = &v84 - v25;
  __chkstk_darwin(v24);
  v28 = &v84 - v27;
  found = type metadata accessor for AssessmentIssueFoundViewController();
  v107.receiver = v0;
  v107.super_class = found;
  objc_msgSendSuper2(&v107, "viewDidLoad");
  v30 = OBJC_IVAR____TtC11Diagnostics34AssessmentIssueFoundViewController_error;
  static AssessmentError.retryExceeded.getter();
  v99 = *(v11 + 56);
  v100 = v11 + 56;
  v99(v28, 0, 1, v10);
  v103 = v13;
  v31 = *(v13 + 48);
  v106 = v0;
  v101 = v30;
  sub_10003DD14(&v0[v30], v18);
  sub_10003DD14(v28, &v18[v31]);
  v32 = *(v11 + 48);
  v33 = v32(v18, 1, v10);
  v98 = v11;
  v105 = v16;
  v102 = v32;
  if (v33 == 1)
  {
    sub_10003DD84(v28, &qword_1001FCE98);
    if (v32(&v18[v31], 1, v10) == 1)
    {
      sub_10003DD84(v18, &qword_1001FCE98);
      v34 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_10003DD14(v18, v26);
  if (v32(&v18[v31], 1, v10) == 1)
  {
    sub_10003DD84(v28, &qword_1001FCE98);
    (*(v11 + 8))(v26, v10);
LABEL_6:
    sub_10003DD84(v18, &qword_1001FD3B0);
    v34 = 0;
    goto LABEL_8;
  }

  v35 = &v18[v31];
  v36 = v97;
  (*(v11 + 32))(v97, v35, v10);
  sub_1000490A4();
  v34 = dispatch thunk of static Equatable.== infix(_:_:)();
  v37 = *(v11 + 8);
  v37(v36, v10);
  sub_10003DD84(v28, &qword_1001FCE98);
  v37(v26, v10);
  sub_10003DD84(v18, &qword_1001FCE98);
LABEL_8:
  v38 = v106;
  v39 = [v106 navigationItem];
  [v39 setHidesBackButton:1];

  v40 = v34 & 1;
  if (v34)
  {
    v41 = UIBarButtonSystemItemClose;
  }

  else
  {
    v41 = UIBarButtonSystemItemCancel;
  }

  sub_10003E110(0, &qword_1001FD3B8);
  sub_10003E110(0, &qword_1002023B0);
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = swift_allocObject();
  *(v43 + 16) = v42;
  *(v43 + 24) = v40;
  v108.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v108.is_nil = 0;
  v44.super.super.isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(v41, v108, v109).super.super.isa;
  v45 = OBJC_IVAR____TtC11Diagnostics34AssessmentIssueFoundViewController_barButton;
  v46 = *&v38[OBJC_IVAR____TtC11Diagnostics34AssessmentIssueFoundViewController_barButton];
  *&v38[OBJC_IVAR____TtC11Diagnostics34AssessmentIssueFoundViewController_barButton] = v44;

  LODWORD(v42) = _UISolariumEnabled();
  v47 = [v38 navigationItem];
  v48 = *&v38[v45];
  v49 = &selRef_setLeftBarButtonItem_;
  if (!v42)
  {
    v49 = &selRef_setRightBarButtonItem_;
  }

  [v47 *v49];

  v50 = v104;
  static AssessmentError.possibleIssueDetected.getter();
  v99(v50, 0, 1, v10);
  v51 = *(v103 + 48);
  v52 = v105;
  sub_10003DD14(&v38[v101], v105);
  sub_10003DD14(v50, v52 + v51);
  v53 = v102;
  if (v102(v52, 1, v10) != 1)
  {
    v55 = v96;
    sub_10003DD14(v52, v96);
    if (v53(v52 + v51, 1, v10) != 1)
    {
      v56 = v97;
      v57 = v98;
      (*(v98 + 32))(v97, v52 + v51, v10);
      sub_1000490A4();
      v58 = dispatch thunk of static Equatable.== infix(_:_:)();
      v59 = *(v57 + 8);
      v59(v56, v10);
      sub_10003DD84(v50, &qword_1001FCE98);
      v59(v55, v10);
      result = sub_10003DD84(v52, &qword_1001FCE98);
      if ((v58 & 1) == 0)
      {
        return result;
      }

      goto LABEL_20;
    }

    sub_10003DD84(v50, &qword_1001FCE98);
    (*(v98 + 8))(v55, v10);
    return sub_10003DD84(v52, &qword_1001FD3B0);
  }

  sub_10003DD84(v50, &qword_1001FCE98);
  if (v53(v52 + v51, 1, v10) != 1)
  {
    return sub_10003DD84(v52, &qword_1001FD3B0);
  }

  result = sub_10003DD84(v52, &qword_1001FCE98);
LABEL_20:
  if (v106[OBJC_IVAR____TtC11Diagnostics34AssessmentIssueFoundViewController_isSource] == 1)
  {
    v60 = [objc_opt_self() boldButton];
    sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD00000000000001DLL, 0x8000000100189D70);
    v61 = String._bridgeToObjectiveC()();

    [v60 setTitle:v61 forState:0];

    v62 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    [v60 addAction:v62 forControlEvents:64];

    v63 = v93;
    static UIButton.Configuration.glass()();
    (*(v86 + 104))(v85, enum case for UIButton.Configuration.Size.large(_:), v87);
    UIButton.Configuration.buttonSize.setter();
    v64 = v88;
    UIConfigurationTextAttributesTransformer.init(_:)();
    v65 = type metadata accessor for UIConfigurationTextAttributesTransformer();
    (*(*(v65 - 8) + 56))(v64, 0, 1, v65);
    UIButton.Configuration.titleTextAttributesTransformer.setter();
    UIButton.Configuration.imagePadding.setter();
    (*(v90 + 104))(v89, enum case for UIButton.Configuration.TitleAlignment.center(_:), v91);
    UIButton.Configuration.titleAlignment.setter();
    v66 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption1];
    v67 = objc_opt_self();
    v68 = [v67 configurationWithFont:v66];

    v69 = [v67 configurationWithWeight:7];
    v70 = [v68 configurationByApplyingConfiguration:v69];

    UIButton.Configuration.imagePlacement.setter();
    v71 = v70;
    v72 = String._bridgeToObjectiveC()();
    v73 = [objc_opt_self() systemImageNamed:v72 withConfiguration:v71];

    UIButton.Configuration.image.setter();
    v74 = [objc_opt_self() linkButton];
    v75 = v94;
    v76 = v95;
    v77 = v92;
    (*(v94 + 16))(v92, v63, v95);
    (*(v75 + 56))(v77, 0, 1, v76);
    v78 = v74;
    UIButton.configuration.setter();

    sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD00000000000002CLL, 0x8000000100189D90);
    v79 = String._bridgeToObjectiveC()();

    [v78 setTitle:v79 forState:0];

    v80 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    [v78 addAction:v80 forControlEvents:64];

    v81 = v106;
    v82 = [v106 buttonTray];
    [v82 addButton:v60];

    v83 = [v81 buttonTray];
    [v83 addButton:v78];

    return (*(v75 + 8))(v63, v76);
  }

  return result;
}

void sub_100047AFC(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (a3)
    {
      sub_1000EC128(3);
      if (qword_1001FC840 != -1)
      {
        swift_once();
      }

      v6 = *(qword_10020A5F8 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_action);
      if (v6)
      {
        [v6 setResultCode:-1];
      }

      sub_1000F6FF8(17);
    }

    else
    {
      sub_1000EC128(4);
      *(swift_allocObject() + 16) = v5;
      v7 = [v5 navigationItem];
      v8 = [v7 rightBarButtonItem];

      sub_100088E48(0, v8);
    }

    v9 = *&v5[OBJC_IVAR____TtC11Diagnostics34AssessmentIssueFoundViewController_barButton];
    if (v9)
    {
      v10 = v9;
      [v10 setEnabled:0];
    }
  }
}

uint64_t sub_100047CA4()
{
  v0 = sub_10003C49C(&unk_1001FFE20);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  sub_1000EC128(5);
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  type metadata accessor for MainActor();
  v4 = static MainActor.shared.getter();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = &protocol witness table for MainActor;
  sub_1000EC574(0, 0, v2, &unk_10017F198, v5);
}

uint64_t sub_100047DB8()
{
  type metadata accessor for MainActor();
  v0[2] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[3] = v2;
  v0[4] = v1;

  return _swift_task_switch(sub_100047E4C, v2, v1);
}

uint64_t sub_100047E4C()
{
  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_100047F10;

  return sub_100137348();
}

uint64_t sub_100047F10()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  v3 = *(v2 + 32);
  v4 = *(v2 + 24);
  if (v0)
  {
    v5 = sub_1000494C0;
  }

  else
  {
    v5 = sub_1000494C4;
  }

  return _swift_task_switch(v5, v4, v3);
}

void sub_10004804C()
{
  v0 = sub_10003C49C(&unk_1001FFE20);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  v3 = *(qword_10020A5F8 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_action);
  if (v3)
  {
    [v3 setResultCode:-3];
  }

  if (qword_1001FC6D0 != -1)
  {
    swift_once();
  }

  v4 = qword_10020A388;
  type metadata accessor for LoadingViewController();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v4 pushViewController:v5 animated:1];

  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  type metadata accessor for MainActor();
  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for MainActor;
  sub_1000EC574(0, 0, v2, &unk_10017F188, v8);

  sub_1000EC128(9);
}

uint64_t sub_100048238()
{
  type metadata accessor for MainActor();
  v0[2] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[3] = v2;
  v0[4] = v1;

  return _swift_task_switch(sub_1000482CC, v2, v1);
}

uint64_t sub_1000482CC()
{
  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = qword_10020A5F8;

  return _swift_task_switch(sub_100048368, 0, 0);
}

uint64_t sub_100048368()
{
  v1 = *(v0[5] + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_assessorDeviceConnection);
  v0[6] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_10004844C;

    return sub_1000D9F78();
  }

  else
  {
    v4 = v0[3];
    v5 = v0[4];

    return _swift_task_switch(sub_100048570, v4, v5);
  }
}

uint64_t sub_10004844C()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_1000485D4;
    v4 = 0;
    v5 = 0;
  }

  else
  {

    v4 = *(v2 + 24);
    v5 = *(v2 + 32);
    v3 = sub_100048570;
  }

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100048570()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000485D4()
{

  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return _swift_task_switch(sub_100048638, v1, v2);
}

uint64_t sub_100048638()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10004869C()
{
  v0 = sub_10003C49C(&qword_1001FD3C8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v5 - v2;
  v5[0] = swift_getKeyPath();
  swift_getKeyPath();
  sub_1000491C8();
  AttributeContainer.subscript.getter();

  v5[1] = 2;
  AttributeContainer.Builder.callAsFunction(_:)();
  return (*(v1 + 8))(v3, v0);
}

void sub_100048830()
{
  v0 = sub_10003C49C(&unk_1001FFE20);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_10003C49C(&qword_1001FCE98);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  static AssessmentError.viewSupportOptions.getter();
  v6 = type metadata accessor for AssessmentError();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  sub_10013752C(v5);
  sub_10003DD84(v5, &qword_1001FCE98);
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  type metadata accessor for MainActor();
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = &protocol witness table for MainActor;
  sub_1000EC574(0, 0, v2, &unk_10017F0F8, v9);

  sub_1000EC128(8);
}

uint64_t sub_100048A38()
{
  type metadata accessor for MainActor();
  v0[2] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[3] = v2;
  v0[4] = v1;

  return _swift_task_switch(sub_100048ACC, v2, v1);
}

uint64_t sub_100048ACC()
{
  if (qword_1001FC840 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_100048B90;

  return sub_100137348();
}

uint64_t sub_100048B90()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  v3 = *(v2 + 32);
  v4 = *(v2 + 24);
  if (v0)
  {
    v5 = sub_100048CCC;
  }

  else
  {
    v5 = sub_1000494C4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100048CCC()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_100048E44()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssessmentIssueFoundViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AssessmentIssueFoundViewController()
{
  result = qword_1001FD390;
  if (!qword_1001FD390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100048F2C()
{
  sub_100048FD0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100048FD0()
{
  if (!qword_1001FD3A0)
  {
    type metadata accessor for AssessmentError();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1001FD3A0);
    }
  }
}

uint64_t sub_100049028()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100049060()
{

  return _swift_deallocObject(v0, 25, 7);
}

unint64_t sub_1000490A4()
{
  result = qword_1001FD3C0;
  if (!qword_1001FD3C0)
  {
    type metadata accessor for AssessmentError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FD3C0);
  }

  return result;
}

uint64_t sub_1000490FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000494BC;

  return sub_100048A38();
}

unint64_t sub_1000491C8()
{
  result = qword_1001FD3D0;
  if (!qword_1001FD3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FD3D0);
  }

  return result;
}

void sub_10004921C()
{
  sub_1000491C8();
  AttributeDynamicLookup.subscript.getter();
  __break(1u);
}

uint64_t sub_1000492C4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000492FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003DEC8;

  return sub_100048238();
}

uint64_t sub_1000493A8()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1000493E0()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC11Diagnostics34AssessmentIssueFoundViewController_barButton);
  if (result)
  {
    return [result setEnabled:1];
  }

  return result;
}

uint64_t sub_100049408()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000494BC;

  return sub_100047DB8();
}

uint64_t sub_1000494C8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = objc_opt_self();
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 localizedStringForKey:v10];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = objc_opt_self();
  v16 = [v15 mainBundle];
  v59._object = 0xE000000000000000;
  v17._countAndFlagsBits = v12;
  v17._object = v14;
  v18.value._countAndFlagsBits = a1;
  v18.value._object = a2;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v59._countAndFlagsBits = 0;
  v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v18, v16, v19, v59);

  v21 = v20._countAndFlagsBits == a4 && v20._object == a5;
  if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v22 = [v15 mainBundle];
    v60._object = 0xE000000000000000;
    v23._countAndFlagsBits = a4;
    v23._object = a5;
    v24.value._countAndFlagsBits = a1;
    v24.value._object = a2;
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    v60._countAndFlagsBits = 0;
    v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v24, v22, v25, v60);
    countAndFlagsBits = v26._countAndFlagsBits;
    object = v26._object;

    if (v26._countAndFlagsBits == a4 && v26._object == a5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v29 = [v15 mainBundle];
      v61._object = 0xE000000000000000;
      v30._countAndFlagsBits = a4;
      v30._object = a5;
      v31._countAndFlagsBits = 0;
      v31._object = 0xE000000000000000;
      v61._countAndFlagsBits = 0;
      v32 = NSLocalizedString(_:tableName:bundle:value:comment:)(v30, 0, v29, v31, v61);
      countAndFlagsBits = v32._countAndFlagsBits;
      object = v32._object;
    }

    if (countAndFlagsBits == a4 && object == a5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v33 = [v15 mainBundle];
      v62._object = 0xE000000000000000;
      v34.value._countAndFlagsBits = 0xD000000000000016;
      v34.value._object = 0x8000000100189EC0;
      v35._countAndFlagsBits = a4;
      v35._object = a5;
      v36._countAndFlagsBits = 0;
      v36._object = 0xE000000000000000;
      v62._countAndFlagsBits = 0;
      v37 = NSLocalizedString(_:tableName:bundle:value:comment:)(v35, v34, v33, v36, v62);
      countAndFlagsBits = v37._countAndFlagsBits;
      object = v37._object;
    }

    if (countAndFlagsBits == a4 && object == a5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v38 = [v15 mainBundle];
      v63._object = 0xE000000000000000;
      v39.value._countAndFlagsBits = 0xD000000000000015;
      v39.value._object = 0x8000000100189EA0;
      v40._countAndFlagsBits = a4;
      v40._object = a5;
      v41._countAndFlagsBits = 0;
      v41._object = 0xE000000000000000;
      v63._countAndFlagsBits = 0;
      v42 = NSLocalizedString(_:tableName:bundle:value:comment:)(v40, v39, v38, v41, v63);
      countAndFlagsBits = v42._countAndFlagsBits;
      object = v42._object;
    }

    if (countAndFlagsBits == a4 && object == a5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v43 = [v15 mainBundle];
      v64._object = 0xE000000000000000;
      v44.value._countAndFlagsBits = 0xD000000000000012;
      v44.value._object = 0x8000000100189E80;
      v45._countAndFlagsBits = a4;
      v45._object = a5;
      v46._countAndFlagsBits = 0;
      v46._object = 0xE000000000000000;
      v64._countAndFlagsBits = 0;
      v47 = NSLocalizedString(_:tableName:bundle:value:comment:)(v45, v44, v43, v46, v64);
      countAndFlagsBits = v47._countAndFlagsBits;
      object = v47._object;
    }

    if (countAndFlagsBits == a4 && object == a5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v48 = [v15 mainBundle];
      v65._object = 0xE000000000000000;
      v49.value._countAndFlagsBits = 0xD000000000000013;
      v49.value._object = 0x8000000100189E60;
      v50._countAndFlagsBits = a4;
      v50._object = a5;
      v51._countAndFlagsBits = 0;
      v51._object = 0xE000000000000000;
      v65._countAndFlagsBits = 0;
      v52 = NSLocalizedString(_:tableName:bundle:value:comment:)(v50, v49, v48, v51, v65);
      countAndFlagsBits = v52._countAndFlagsBits;
      object = v52._object;
    }

    if (countAndFlagsBits == a4 && object == a5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v53 = [v15 mainBundle];
      v66._object = 0xE000000000000000;
      v54.value._object = 0x8000000100189E40;
      v55._countAndFlagsBits = a4;
      v55._object = a5;
      v54.value._countAndFlagsBits = 0xD000000000000010;
      v56._countAndFlagsBits = 0;
      v56._object = 0xE000000000000000;
      v66._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v55, v54, v53, v56, v66);
    }
  }

  v57 = String.init(format:arguments:)();

  return v57;
}

NSString sub_1000499F0(void *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 16);
    if (v3)
    {
      v4 = a2 + 32;
      v5 = _swiftEmptyArrayStorage;
      while (1)
      {
        sub_10003E010(v4, v18);
        sub_100049EFC(v18, v17);
        sub_10003C49C(&qword_1001FD3E0);
        if (swift_dynamicCast())
        {
          if (*(&v15 + 1))
          {
            sub_100049F74(&v14, v17);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v5 = sub_1000D4E80(0, v5[2] + 1, 1, v5);
            }

            v7 = v5[2];
            v6 = v5[3];
            if (v7 >= v6 >> 1)
            {
              v5 = sub_1000D4E80((v6 > 1), v7 + 1, 1, v5);
            }

            v5[2] = v7 + 1;
            sub_100049F74(v17, &v5[5 * v7 + 4]);
            goto LABEL_6;
          }
        }

        else
        {
          v16 = 0;
          v14 = 0u;
          v15 = 0u;
        }

        sub_100049F0C(&v14);
LABEL_6:
        v4 += 32;
        if (!--v3)
        {
          goto LABEL_16;
        }
      }
    }

    v5 = _swiftEmptyArrayStorage;
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

LABEL_16:
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (a1)
  {
    v17[0] = 0uLL;
    static String._conditionallyBridgeFromObjectiveC(_:result:)();
    a1 = *(&v17[0] + 1);
    if (*(&v17[0] + 1))
    {
      v11 = *&v17[0];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1000494C8(v11, a1, v5, v8, v10);

  v12 = String._bridgeToObjectiveC()();

  return v12;
}

id sub_100049C98(uint64_t a1)
{

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v2 = result;
    v3 = MobileGestalt_copy_deviceClass_obj();

    if (v3)
    {
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;

      if (v4 == 0x656E6F685069 && v6 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v7 = 0x454E4F4850495FLL;
LABEL_7:
        v8 = 0xE700000000000000;
LABEL_27:
        String.append(_:)(*&v7);
        return a1;
      }

      if (v4 == 1684099177 && v6 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v9 = 1095780703;
LABEL_12:
        v7 = v9 & 0xFFFF0000FFFFFFFFLL | 0x4400000000;
        v8 = 0xE500000000000000;
        goto LABEL_27;
      }

      if (v4 == 1685016681 && v6 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v9 = 1330661727;
        goto LABEL_12;
      }

      if (v4 == 0x5654656C707041 && v6 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v7 = 5657695;
        v8 = 0xE300000000000000;
        goto LABEL_27;
      }

      if (v4 == 0x447974696C616552 && v6 == 0xED00006563697665)
      {

LABEL_25:
        v7 = 0x4E4F495349565FLL;
        goto LABEL_7;
      }

      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v10)
      {
        goto LABEL_25;
      }
    }

    v7 = 0x434952454E45475FLL;
    v8 = 0xE800000000000000;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

_OWORD *sub_100049EFC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100049F0C(uint64_t a1)
{
  v2 = sub_10003C49C(&qword_1001FD3E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100049F74(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_100049F8C()
{
  v1 = [v0 connectedScenes];
  v2 = sub_10003E110(0, &qword_1001FD3F0);
  v3 = sub_10004A2B8();
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v4 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v4 = v22;
    v5 = v23;
    v6 = v24;
    v7 = v25;
    v8 = v26;
  }

  else
  {
    v7 = 0;
    v9 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v4 + 56);
  }

  v12 = (v6 + 64) >> 6;
  if (v4 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v7;
  v14 = v8;
  v15 = v7;
  if (!v8)
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= v12)
      {
        goto LABEL_19;
      }

      v14 = *(v5 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

LABEL_12:
  v16 = (v14 - 1) & v14;
  v3 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
  if (!v3)
  {
    goto LABEL_19;
  }

  while (1)
  {
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      break;
    }

    v7 = v15;
    v8 = v16;
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_14:
    if (__CocoaSet.Iterator.next()())
    {
      swift_dynamicCast();
      v3 = v21;
      v15 = v7;
      v16 = v8;
      if (v21)
      {
        continue;
      }
    }

    goto LABEL_19;
  }

  v18 = [v17 windows];
  sub_10003E110(0, &qword_1001FD400);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
LABEL_27:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_28;
    }

    goto LABEL_22;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_28:

LABEL_19:
    sub_10004A320();
    return;
  }

LABEL_22:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_25;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(v2 + 32);
LABEL_25:
    v20 = v19;

    sub_10004A320();
    [v20 bounds];

    return;
  }

  __break(1u);
}

unint64_t sub_10004A2B8()
{
  result = qword_1001FD3F8;
  if (!qword_1001FD3F8)
  {
    sub_10003E110(255, &qword_1001FD3F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FD3F8);
  }

  return result;
}

id sub_10004A338(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10003C49C(&qword_1001FD070);
  __chkstk_darwin(v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for UIButton.Configuration();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v36 - v18;
  *&v5[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_fontSizeTestRunner] = 0x4034000000000000;
  *&v5[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_fontSizeButton] = 0x4030000000000000;
  *&v5[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_verticalPadding] = 0x4024000000000000;
  *&v5[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_horizontalPadding] = 0x4020000000000000;
  *&v5[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_bottomMarginWithoutButtons] = 0x4030000000000000;
  *&v5[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_iconViewWidthHeight] = 0x4034000000000000;
  *&v5[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_buttonMinimumSize] = vdupq_n_s64(0x4046000000000000uLL);
  v20 = OBJC_IVAR____TtC11Diagnostics14TestRunnerView_stackView;
  *&v5[v20] = [objc_allocWithZone(UIStackView) init];
  v21 = OBJC_IVAR____TtC11Diagnostics14TestRunnerView_runnerContainerView;
  *&v5[v21] = [objc_allocWithZone(UIView) init];
  v22 = OBJC_IVAR____TtC11Diagnostics14TestRunnerView_buttonContainerView;
  *&v5[v22] = [objc_allocWithZone(UIView) init];
  v23 = OBJC_IVAR____TtC11Diagnostics14TestRunnerView_titleLabel;
  *&v5[v23] = [objc_allocWithZone(UILabel) init];
  v24 = OBJC_IVAR____TtC11Diagnostics14TestRunnerView_iconView;
  type metadata accessor for TestRunnerIconView();
  *&v5[v24] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v25 = OBJC_IVAR____TtC11Diagnostics14TestRunnerView_progressIndicatorView;
  *&v5[v25] = [objc_allocWithZone(UIProgressView) init];
  v26 = &v5[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_delegate];
  *v26 = 0u;
  *(v26 + 1) = 0u;
  *(v26 + 4) = 0;
  v27 = &v5[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_containerLayoutUpdateHandler];
  *v27 = 0;
  v27[1] = 0;
  v5[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_hasExplicitHeight] = 0;
  *&v5[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_idleTimeoutTimer] = 0;
  *&v5[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_buttonContainerShowingHeightConstraint] = 0;
  *&v5[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_buttonContainerHidingHeightConstraint] = 0;
  v28 = [objc_opt_self() defaultMetrics];
  v29 = [objc_opt_self() systemFontOfSize:16.0];
  v30 = [v28 scaledFontForFont:v29];

  static UIButton.Configuration.plain()();
  *(swift_allocObject() + 16) = v30;
  v31 = v30;
  UIConfigurationTextAttributesTransformer.init(_:)();
  v32 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v32 - 8) + 56))(v12, 0, 1, v32);
  UIButton.Configuration.titleTextAttributesTransformer.setter();

  sub_10003E110(0, &qword_1001FD078);
  (*(v14 + 16))(v17, v19, v13);
  *&v5[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_skipButton] = UIButton.init(configuration:primaryAction:)();
  v33 = type metadata accessor for TestRunnerView();
  v36.receiver = v5;
  v36.super_class = v33;
  v34 = objc_msgSendSuper2(&v36, "initWithFrame:", a1, a2, a3, a4);
  (*(v14 + 8))(v19, v13);
  return v34;
}

id sub_10004A7DC(void *a1)
{
  v2 = v1;
  v4 = sub_10003C49C(&qword_1001FD070);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - v5;
  v7 = type metadata accessor for UIButton.Configuration();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v30 - v12;
  *&v2[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_fontSizeTestRunner] = 0x4034000000000000;
  *&v2[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_fontSizeButton] = 0x4030000000000000;
  *&v2[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_verticalPadding] = 0x4024000000000000;
  *&v2[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_horizontalPadding] = 0x4020000000000000;
  *&v2[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_bottomMarginWithoutButtons] = 0x4030000000000000;
  *&v2[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_iconViewWidthHeight] = 0x4034000000000000;
  *&v2[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_buttonMinimumSize] = vdupq_n_s64(0x4046000000000000uLL);
  v14 = OBJC_IVAR____TtC11Diagnostics14TestRunnerView_stackView;
  *&v2[v14] = [objc_allocWithZone(UIStackView) init];
  v15 = OBJC_IVAR____TtC11Diagnostics14TestRunnerView_runnerContainerView;
  *&v2[v15] = [objc_allocWithZone(UIView) init];
  v16 = OBJC_IVAR____TtC11Diagnostics14TestRunnerView_buttonContainerView;
  *&v2[v16] = [objc_allocWithZone(UIView) init];
  v17 = OBJC_IVAR____TtC11Diagnostics14TestRunnerView_titleLabel;
  *&v2[v17] = [objc_allocWithZone(UILabel) init];
  v18 = OBJC_IVAR____TtC11Diagnostics14TestRunnerView_iconView;
  type metadata accessor for TestRunnerIconView();
  *&v2[v18] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19 = OBJC_IVAR____TtC11Diagnostics14TestRunnerView_progressIndicatorView;
  *&v2[v19] = [objc_allocWithZone(UIProgressView) init];
  v20 = &v2[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_delegate];
  *v20 = 0u;
  *(v20 + 1) = 0u;
  *(v20 + 4) = 0;
  v21 = &v2[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_containerLayoutUpdateHandler];
  *v21 = 0;
  v21[1] = 0;
  v2[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_hasExplicitHeight] = 0;
  *&v2[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_idleTimeoutTimer] = 0;
  *&v2[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_buttonContainerShowingHeightConstraint] = 0;
  *&v2[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_buttonContainerHidingHeightConstraint] = 0;
  v22 = [objc_opt_self() defaultMetrics];
  v23 = [objc_opt_self() systemFontOfSize:16.0];
  v24 = [v22 scaledFontForFont:v23];

  static UIButton.Configuration.plain()();
  *(swift_allocObject() + 16) = v24;
  v25 = v24;
  UIConfigurationTextAttributesTransformer.init(_:)();
  v26 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v26 - 8) + 56))(v6, 0, 1, v26);
  UIButton.Configuration.titleTextAttributesTransformer.setter();

  sub_10003E110(0, &qword_1001FD078);
  (*(v8 + 16))(v11, v13, v7);
  *&v2[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_skipButton] = UIButton.init(configuration:primaryAction:)();
  v27 = type metadata accessor for TestRunnerView();
  v30.receiver = v2;
  v30.super_class = v27;
  v28 = objc_msgSendSuper2(&v30, "initWithCoder:", a1);

  (*(v8 + 8))(v13, v7);
  return v28;
}

void sub_10004AC60()
{
  v1 = sub_10003C49C(&qword_1001FD068);
  __chkstk_darwin(v1 - 8);
  v3 = &v20 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_stackView);
  [v4 setAxis:1];
  [v4 setAlignment:0];
  [v4 setDistribution:0];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = *(v0 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_titleLabel);
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000013, 0x800000010018A0F0);
  v6 = String._bridgeToObjectiveC()();

  [v5 setText:v6];

  [v5 setNumberOfLines:0];
  v7 = [objc_opt_self() defaultMetrics];
  v8 = [objc_opt_self() boldSystemFontOfSize:20.0];
  v9 = [v7 scaledFontForFont:v8];

  [v5 setFont:v9];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [*(v0 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_iconView) setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = *(v0 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_progressIndicatorView);
  v11 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.478431373 blue:1.0 alpha:1.0];
  [v10 setTintColor:v11];

  v12 = [objc_opt_self() opaqueSeparatorColor];
  [v10 setTrackTintColor:v12];

  [v10 setAlpha:0.0];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = *(v0 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_skipButton);
  [v13 addTarget:v0 action:"skipPressed" forControlEvents:64];
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 1346980691, 0xE400000000000000);
  v14 = String._bridgeToObjectiveC()();

  [v13 setTitle:v14 forState:0];

  v15 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.478431373 blue:1.0 alpha:1.0];
  [v13 setTitleColor:v15 forState:0];

  [v13 setContentHorizontalAlignment:0];
  [v13 setAlpha:0.0];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = [objc_opt_self() currentDevice];
  v17 = [v16 userInterfaceIdiom];

  if (v17 == 6)
  {
    sub_10003E110(0, &unk_1001FD080);
    static UIShape.capsule.getter();
    v18 = type metadata accessor for UIShape();
    (*(*(v18 - 8) + 56))(v3, 0, 1, v18);
    v19 = UIHoverStyle.init(shape:)();
    [v13 setHoverStyle:v19];
  }
}

id sub_10004B0E0()
{
  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_progressIndicatorView);
  v2 = UIAccessibilityTraitUpdatesFrequently;
  v3 = [v1 accessibilityTraits];
  if ((v2 & ~v3) != 0)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  return [v1 setAccessibilityTraits:v4 | v3];
}

void sub_10004B14C()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for TestRunnerView();
  objc_msgSendSuper2(&v5, "tintColorDidChange");
  v1 = [v0 tintAdjustmentMode];
  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_skipButton];
  if (v1 == 2)
  {
    v3 = [objc_opt_self() grayColor];
  }

  else
  {
    v3 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.478431373 blue:1.0 alpha:1.0];
  }

  v4 = v3;
  [v2 setTitleColor:v3 forState:0];
}

id sub_10004B260()
{
  v1 = *&v0[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_runnerContainerView];
  [v1 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_iconView]];
  [v1 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_titleLabel]];
  [v1 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_progressIndicatorView]];
  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_buttonContainerView];
  [v2 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_skipButton]];
  v3 = *&v0[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_stackView];
  [v3 addArrangedSubview:v1];
  [v3 addArrangedSubview:v2];

  return [v0 addSubview:v3];
}

void sub_10004B354()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_buttonContainerView];
  v88 = v2;
  v3 = [v2 heightAnchor];
  v4 = [v3 constraintGreaterThanOrEqualToConstant:44.0];

  v5 = *&v0[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_buttonContainerShowingHeightConstraint];
  *&v0[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_buttonContainerShowingHeightConstraint] = v4;

  v6 = [v2 heightAnchor];
  v7 = [v6 constraintEqualToConstant:16.0];

  v8 = *&v0[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_buttonContainerHidingHeightConstraint];
  *&v0[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_buttonContainerHidingHeightConstraint] = v7;

  sub_10003C49C(&unk_1001FD020);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10017F1C0;
  v10 = *&v0[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_stackView];
  v11 = [v10 topAnchor];
  v12 = [v1 topAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  *(v9 + 32) = v13;
  v14 = [v10 bottomAnchor];
  v15 = [v1 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v9 + 40) = v16;
  v17 = [v10 leadingAnchor];
  v18 = [v1 leadingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:15.0];

  *(v9 + 48) = v19;
  v20 = *&v1[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_titleLabel];
  v21 = [v20 bottomAnchor];
  v89 = *&v1[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_progressIndicatorView];
  v22 = [v89 topAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:-10.0];

  *(v9 + 56) = v23;
  v24 = [v20 leadingAnchor];
  v25 = [v10 leadingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:28.0];

  *(v9 + 64) = v26;
  v87 = v20;
  v27 = [v20 trailingAnchor];
  v28 = [v10 trailingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:-28.0];

  *(v9 + 72) = v29;
  v30 = *&v1[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_iconView];
  v31 = [v30 centerYAnchor];
  v32 = [v20 centerYAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];

  *(v9 + 80) = v33;
  v34 = [v30 leadingAnchor];
  v35 = *&v1[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_runnerContainerView];
  v36 = [v35 leadingAnchor];
  v37 = [v34 constraintEqualToAnchor:v36];

  *(v9 + 88) = v37;
  v38 = [v30 widthAnchor];
  v39 = [v38 constraintEqualToConstant:20.0];

  *(v9 + 96) = v39;
  v40 = [v30 heightAnchor];
  v41 = [v40 constraintEqualToConstant:20.0];

  *(v9 + 104) = v41;
  v42 = [v89 leadingAnchor];
  v86 = v10;
  v43 = [v10 leadingAnchor];
  v44 = [v42 constraintEqualToAnchor:v43 constant:28.0];

  *(v9 + 112) = v44;
  v45 = [v89 trailingAnchor];
  v46 = [v10 trailingAnchor];
  v47 = [v45 constraintEqualToAnchor:v46 constant:-28.0];

  *(v9 + 120) = v47;
  v48 = [v88 leadingAnchor];
  v49 = [v35 leadingAnchor];
  v50 = [v48 constraintEqualToAnchor:v49];

  *(v9 + 128) = v50;
  v51 = [v88 trailingAnchor];
  v52 = [v35 trailingAnchor];
  v53 = [v51 constraintEqualToAnchor:v52];

  *(v9 + 136) = v53;
  v54 = [v88 heightAnchor];
  v55 = [v54 constraintEqualToConstant:44.0];

  *(v9 + 144) = v55;
  v56 = *&v1[OBJC_IVAR____TtC11Diagnostics14TestRunnerView_skipButton];
  v57 = [v56 topAnchor];
  v58 = [v88 topAnchor];
  v59 = [v57 constraintEqualToAnchor:v58 constant:10.0];

  *(v9 + 152) = v59;
  v60 = [v56 bottomAnchor];
  v61 = [v88 bottomAnchor];
  v62 = [v60 constraintEqualToAnchor:v61 constant:-10.0];

  *(v9 + 160) = v62;
  v63 = [v56 centerXAnchor];
  v64 = [v88 centerXAnchor];
  v65 = [v63 constraintEqualToAnchor:v64];

  *(v9 + 168) = v65;
  v66 = [v56 widthAnchor];
  [v56 sizeThatFits:{0.0, 0.0}];
  v67 = [v66 constraintEqualToConstant:?];

  *(v9 + 176) = v67;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10017EBF0;
  v69 = [v87 topAnchor];
  v70 = [v35 topAnchor];
  v71 = [v69 constraintEqualToAnchor:v70];

  *(inited + 32) = v71;
  sub_100074470(inited);
  v72 = swift_initStackObject();
  *(v72 + 16) = xmmword_10017ED90;
  v73 = [v86 trailingAnchor];
  v74 = [v1 trailingAnchor];
  v75 = [v73 constraintEqualToAnchor:v74 constant:-15.0];

  *(v72 + 32) = v75;
  v76 = [v89 bottomAnchor];
  v77 = [v35 bottomAnchor];
  v78 = [v76 constraintEqualToAnchor:v77];

  *(v72 + 40) = v78;
  v79 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v79)
  {
    v80 = 0;
    do
    {
      if ((v72 & 0xC000000000000001) != 0)
      {
        v81 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v81 = *(v72 + 8 * v80 + 32);
      }

      v83 = v81;
      ++v80;
      LODWORD(v82) = 1148829696;
      [v81 setPriority:v82];
    }

    while (v79 != v80);
  }

  v84 = objc_opt_self();
  sub_100074470(v72);
  sub_10003E110(0, &qword_1001FD550);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v84 activateConstraints:isa];
}

void sub_10004BDE0(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 BOOLForKey:v7];

  if ((v8 & 1) != 0 || (v9 = [objc_msgSend(objc_opt_self() "currentPlatform")], swift_unknownObjectRelease(), v9))
  {
    v10 = OBJC_IVAR____TtC11Diagnostics14TestRunnerView_idleTimeoutTimer;
    [*(v3 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_idleTimeoutTimer) invalidate];
    v11 = *(v3 + v10);
    *(v3 + v10) = 0;

    v12 = a1;
    if (a1 <= 2u)
    {
      if (!a1)
      {
        v13 = objc_opt_self();
        v43[4] = sub_10004C358;
        v43[5] = 0;
        v43[0] = _NSConcreteStackBlock;
        v43[1] = 1107296256;
        v43[2] = sub_100072168;
        v43[3] = &unk_1001C0120;
        v14 = _Block_copy(v43);
        v15 = [v13 scheduledTimerWithTimeInterval:0 repeats:v14 block:60.0];
        _Block_release(v14);
        v16 = *(v3 + v10);
        *(v3 + v10) = v15;

LABEL_23:
        sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000013, 0x800000010018A0F0);
        v31 = *(v3 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_titleLabel);
        v32 = String._bridgeToObjectiveC()();
        [v31 setText:v32];

        v33 = *(v3 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_containerLayoutUpdateHandler);
        if (v33)
        {

          v33(v34);
          sub_10003C52C(v33);
        }

        v35 = UIAccessibilityAnnouncementNotification;
        v36 = String._bridgeToObjectiveC()();
        UIAccessibilityPostNotification(v35, v36);

        sub_10004C770();
        return;
      }

LABEL_8:
      if (v12 == 1)
      {
        if (a3)
        {
          v17 = *(v3 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_titleLabel);
          v18 = String._bridgeToObjectiveC()();
          [v17 setText:v18];

          v19 = *(v3 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_containerLayoutUpdateHandler);
          if (v19)
          {

            v19(v20);
            sub_10003C52C(v19);
          }

          v21 = UIAccessibilityAnnouncementNotification;
          v22 = String._bridgeToObjectiveC()();
          UIAccessibilityPostNotification(v21, v22);
        }

        sub_10004C524();
        return;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v12 = a1;
    if (a1 <= 2u)
    {
      if (!a1)
      {
        goto LABEL_23;
      }

      goto LABEL_8;
    }
  }

  if (v12 == 3)
  {
    v23 = 0xD000000000000012;
    v24 = 0x800000010018A110;
    goto LABEL_27;
  }

  if (v12 == 4)
  {
    v23 = 0x454E4E4F43534944;
    v24 = 0xED0000474E495443;
LABEL_27:
    sub_1000494C8(0, 0, _swiftEmptyArrayStorage, v23, v24);
    v37 = *(v3 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_titleLabel);
    v38 = String._bridgeToObjectiveC()();
    [v37 setText:v38];

    v39 = *(v3 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_containerLayoutUpdateHandler);
    if (v39)
    {

      v39(v40);
      sub_10003C52C(v39);
    }

    v41 = UIAccessibilityAnnouncementNotification;
    v42 = String._bridgeToObjectiveC()();
    UIAccessibilityPostNotification(v41, v42);

    goto LABEL_30;
  }

LABEL_19:
  if (a3)
  {
    v25 = *(v3 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_titleLabel);
    v26 = String._bridgeToObjectiveC()();
    [v25 setText:v26];

    v27 = *(v3 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_containerLayoutUpdateHandler);
    if (v27)
    {

      v27(v28);
      sub_10003C52C(v27);
    }

    v29 = UIAccessibilityAnnouncementNotification;
    v30 = String._bridgeToObjectiveC()();
    UIAccessibilityPostNotification(v29, v30);
  }

LABEL_30:

  sub_10004C770();
}

void sub_10004C358()
{
  static os_log_type_t.info.getter();
  sub_10003E110(0, &qword_1001FD6F0);
  v0 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  sub_1000F6FF8(23);
}

uint64_t sub_10004C3E4()
{
  v1 = OBJC_IVAR____TtC11Diagnostics14TestRunnerView_delegate;
  swift_beginAccess();
  sub_10004CC34(v0 + v1, v10);
  if (!v11)
  {
    return sub_10004CB7C(v10);
  }

  sub_10004476C(v10, v9);
  sub_10004CB7C(v10);
  v2 = *(*sub_1000442A0(v9, v9[3]) + OBJC_IVAR____TtC11Diagnostics12CardViewCell_cardState);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_7;
  }

  v3 = [*(v2 + 40) suiteName];
  if (!v3)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v3 = v5;
LABEL_8:
  sub_100118538(v3, v7);

  return sub_100044554(v9);
}

void sub_10004C524()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 BOOLForKey:v2];

  if ((v3 & 1) == 0)
  {
    v4 = [objc_msgSend(objc_opt_self() "currentPlatform")];
    swift_unknownObjectRelease();
    if ((v4 & 1) == 0)
    {
      v5 = *(v0 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_skipButton);
      [v5 alpha];
      if (v6 == 0.0)
      {
        v7 = swift_allocObject();
        *(v7 + 16) = v5;
        v8 = objc_opt_self();
        v15[4] = sub_10003D8B8;
        v15[5] = v7;
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 1107296256;
        v15[2] = sub_100031FA8;
        v15[3] = &unk_1001C00F8;
        v9 = _Block_copy(v15);
        v10 = v5;

        [v8 animateWithDuration:0x10000 delay:v9 options:0 animations:0.375 completion:0.0];
        _Block_release(v9);
      }

      v11 = *(v0 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_buttonContainerShowingHeightConstraint);
      if (v11)
      {
        [v11 setActive:1];
      }

      v12 = *(v0 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_buttonContainerHidingHeightConstraint);
      if (v12)
      {
        [v12 setActive:0];
      }

      v13 = *(v0 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_containerLayoutUpdateHandler);
      if (v13)
      {

        v13(v14);
        sub_10003C52C(v13);
      }
    }
  }
}

id sub_10004C770()
{
  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_skipButton);
  [v1 alpha];
  if (v2 == 1.0)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    v4 = objc_opt_self();
    v11[4] = sub_100044298;
    v11[5] = v3;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_100031FA8;
    v11[3] = &unk_1001C00A8;
    v5 = _Block_copy(v11);
    v6 = v1;

    [v4 animateWithDuration:0x20000 delay:v5 options:0 animations:0.125 completion:0.0];
    _Block_release(v5);
  }

  v7 = *(v0 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_buttonContainerShowingHeightConstraint);
  if (v7)
  {
    [v7 setActive:0];
  }

  result = *(v0 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_buttonContainerHidingHeightConstraint);
  if (result)
  {
    result = [result setActive:1];
  }

  v9 = *(v0 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_containerLayoutUpdateHandler);
  if (v9)
  {

    v9(v10);
    return sub_10003C52C(v9);
  }

  return result;
}

void sub_10004C918()
{
  sub_10004CB7C(v0 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_delegate);
  sub_10003C52C(*(v0 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_containerLayoutUpdateHandler));

  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_buttonContainerHidingHeightConstraint);
}

id sub_10004C9FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TestRunnerView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10004CB58(uint64_t a1, uint64_t a2)
{
  v3 = (*v2 + OBJC_IVAR____TtC11Diagnostics14TestRunnerView_containerLayoutUpdateHandler);
  v4 = *v3;
  *v3 = a1;
  v3[1] = a2;
  return sub_10003C52C(v4);
}

uint64_t sub_10004CB7C(uint64_t a1)
{
  v2 = sub_10003C49C(&unk_1001FD4D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004CBE4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004CC1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10004CC34(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&unk_1001FD4D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_10004CCC0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11Diagnostics39SelfServiceSessionHistoryViewController_tableView;
  *&v2[v4] = [objc_allocWithZone(type metadata accessor for IntrinsicSizeAdjustingTableView()) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v5 = OBJC_IVAR____TtC11Diagnostics39SelfServiceSessionHistoryViewController_doneButton;
  *&v2[v5] = [objc_opt_self() boldButton];
  v6 = _UISolariumEnabled();
  v7 = 15.0;
  if (v6)
  {
    v7 = 16.0;
  }

  *&v2[OBJC_IVAR____TtC11Diagnostics39SelfServiceSessionHistoryViewController_horizontalSpacing] = v7;
  *&v2[OBJC_IVAR____TtC11Diagnostics39SelfServiceSessionHistoryViewController_suiteManager] = a1;
  v8 = a1;
  _StringGuts.grow(_:)(31);
  DeviceClass = GestaltGetDeviceClass();
  v10 = sub_100100580(DeviceClass);
  v12 = v11;

  v29 = v10;
  v30 = v12;
  v13._object = 0x800000010018A1E0;
  v13._countAndFlagsBits = 0xD00000000000001DLL;
  String.append(_:)(v13);
  v14 = String._bridgeToObjectiveC()();
  v15 = objc_opt_self();
  v16 = [v15 _systemImageNamed:v14];

  if (v16)
  {
  }

  else
  {
    v17 = String._bridgeToObjectiveC()();

    v16 = [v15 imageNamed:v17];
  }

  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0x5F4E4F4953534553, 0xEF59524F54534948);
  v18 = String._bridgeToObjectiveC()();
  v19 = v18;
  if (qword_1001FC738 != -1)
  {
    v18 = swift_once();
  }

  if (qword_1001FEED8)
  {
    __chkstk_darwin(v18);
    sub_10003C49C(&qword_1001FDEC0);
    OS_dispatch_queue.sync<A>(execute:)();
    v20 = v29;
    if (!(v29 >> 62))
    {
LABEL_10:
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_11;
    }
  }

  else
  {
    v20 = _swiftEmptyArrayStorage;
    if (!(_swiftEmptyArrayStorage >> 62))
    {
      goto LABEL_10;
    }
  }

  v21 = _CocoaArrayWrapper.endIndex.getter();
LABEL_11:

  if (v21 <= 0)
  {
    sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0x415441445F4F4ELL, 0xE700000000000000);
    v22 = String._bridgeToObjectiveC()();
  }

  else
  {
    v22 = 0;
  }

  v28.receiver = v2;
  v28.super_class = type metadata accessor for SelfServiceSessionHistoryViewController();
  v23 = objc_msgSendSuper2(&v28, "initWithTitle:detailText:icon:contentLayout:", v19, v22, v16, 2);

  v24 = v23;
  v25 = [v24 navigationItem];
  v26 = String._bridgeToObjectiveC()();

  [v25 setBackButtonTitle:v26];

  return v24;
}

void sub_10004D11C()
{
  v1 = v0;
  v2 = [v0 navigationItem];
  [v2 setHidesBackButton:1];

  v3 = *&v1[OBJC_IVAR____TtC11Diagnostics39SelfServiceSessionHistoryViewController_tableView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setDataSource:v1];
  [v3 setDelegate:v1];
  [v3 setShowsVerticalScrollIndicator:0];
  [v3 setScrollEnabled:0];
  v4 = [objc_opt_self() clearColor];
  [v3 setBackgroundColor:v4];

  [v3 setRowHeight:UITableViewAutomaticDimension];
  [v3 setEstimatedRowHeight:100.0];
  if (_UISolariumEnabled())
  {
    [v3 setDirectionalLayoutMargins:{0.0, *&v1[OBJC_IVAR____TtC11Diagnostics39SelfServiceSessionHistoryViewController_horizontalSpacing], 0.0, *&v1[OBJC_IVAR____TtC11Diagnostics39SelfServiceSessionHistoryViewController_horizontalSpacing]}];
    [v3 setPreservesSuperviewLayoutMargins:1];
  }

  type metadata accessor for SelfServiceSessionHistoryCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = String._bridgeToObjectiveC()();
  [v3 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v6];

  v7 = *&v1[OBJC_IVAR____TtC11Diagnostics39SelfServiceSessionHistoryViewController_doneButton];
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 1162760004, 0xE400000000000000);
  v8 = String._bridgeToObjectiveC()();

  [v7 setTitle:v8 forState:0];

  sub_10003E110(0, &qword_1002023B0);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v7 addAction:v10 forControlEvents:{64, 0, 0, 0, sub_10004E740, v9}];

  v11 = [v1 scrollView];
  [v11 setShowsVerticalScrollIndicator:0];
}

void sub_10004D42C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v1 = Strong, v2 = [Strong navigationController], v1, v2))
  {
    v3 = [v2 popViewControllerAnimated:1];
  }

  else
  {
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (!v4)
    {
      return;
    }

    v3 = v4;
    [v4 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_10004D504(uint64_t a1)
{
  v2 = v1;
  if (qword_1001FC738 != -1)
  {
    a1 = swift_once();
  }

  if (qword_1001FEED8)
  {
    __chkstk_darwin(a1);
    sub_10003C49C(&qword_1001FDEC0);
    OS_dispatch_queue.sync<A>(execute:)();
    v3 = v7;
    if (!(v7 >> 62))
    {
LABEL_5:
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_6;
    }
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
    if (!(_swiftEmptyArrayStorage >> 62))
    {
      goto LABEL_5;
    }
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:

  if (v4 >= 1)
  {
    v5 = [v2 contentView];
    [v5 addSubview:*&v2[OBJC_IVAR____TtC11Diagnostics39SelfServiceSessionHistoryViewController_tableView]];
  }

  v6 = [v2 buttonTray];
  [v6 addButton:*&v2[OBJC_IVAR____TtC11Diagnostics39SelfServiceSessionHistoryViewController_doneButton]];
}

void sub_10004D6C8()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics39SelfServiceSessionHistoryViewController_tableView];
  v3 = [v0 contentView];
  v4 = [v2 isDescendantOfView:v3];

  if (v4)
  {
    sub_10003C49C(&unk_1001FD020);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_10017ED60;
    v6 = [v2 leadingAnchor];
    v7 = [v1 contentView];
    v8 = [v7 leadingAnchor];

    v9 = _UISolariumEnabled();
    v10 = *&v1[OBJC_IVAR____TtC11Diagnostics39SelfServiceSessionHistoryViewController_horizontalSpacing];
    if (v9)
    {
      v11 = -v10;
    }

    else
    {
      v11 = *&v1[OBJC_IVAR____TtC11Diagnostics39SelfServiceSessionHistoryViewController_horizontalSpacing];
    }

    v12 = [v6 constraintEqualToAnchor:v8 constant:v11];

    *(v5 + 32) = v12;
    v13 = [v2 trailingAnchor];
    v14 = [v1 contentView];
    v15 = [v14 trailingAnchor];

    if (!_UISolariumEnabled())
    {
      v10 = -v10;
    }

    v16 = objc_opt_self();
    v17 = [v13 constraintEqualToAnchor:v15 constant:v10];

    *(v5 + 40) = v17;
    v18 = [v2 topAnchor];
    v19 = [v1 contentView];
    v20 = [v19 topAnchor];

    v21 = [v18 constraintEqualToAnchor:v20];
    *(v5 + 48) = v21;
    v22 = [v2 bottomAnchor];
    v23 = [v1 contentView];
    v24 = [v23 bottomAnchor];

    v25 = [v22 constraintEqualToAnchor:v24];
    *(v5 + 56) = v25;
    sub_10003E110(0, &qword_1001FD550);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v16 activateConstraints:isa];

    [v2 invalidateIntrinsicContentSize];
  }
}

id sub_10004DA80()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SelfServiceSessionHistoryViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_10004DC84(void *a1, char *a2)
{
  v5 = sub_10003C49C(&unk_1001FD540);
  __chkstk_darwin(v5 - 8);
  v7 = v39 - v6;
  v8 = String._bridgeToObjectiveC()();
  v9 = [a1 dequeueReusableCellWithIdentifier:v8];

  if (v9)
  {
    type metadata accessor for SelfServiceSessionHistoryCell();
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      goto LABEL_5;
    }
  }

  type metadata accessor for SelfServiceSessionHistoryCell();
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
LABEL_5:
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 secondarySystemBackgroundColor];
  [v12 setBackgroundColor:v13];

  v15 = *(v2 + OBJC_IVAR____TtC11Diagnostics39SelfServiceSessionHistoryViewController_suiteManager);
  if (qword_1001FC738 != -1)
  {
    v14 = swift_once();
  }

  if (qword_1001FEED8)
  {
    __chkstk_darwin(v14);
    v39[-4] = v15;
    v39[-3] = v16;
    v39[-2] = v17;
    sub_10003C49C(&qword_1001FDEC0);
    v13 = 0;
    OS_dispatch_queue.sync<A>(execute:)();
    v18 = v39[1];
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
  }

  v19 = a2;
  v20 = IndexPath.row.getter();
  if ((v18 & 0xC000000000000001) == 0)
  {
    if ((v20 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v20 < *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v21 = *(v18 + 8 * v20 + 32);
      goto LABEL_14;
    }

    __break(1u);
LABEL_24:
    v36 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_17;
  }

  v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_14:
  v13 = v21;

  v22 = [v13 testSuiteName];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = &v12[OBJC_IVAR____TtC11Diagnostics29SelfServiceSessionHistoryCell_suiteName];
  *v26 = v23;
  v26[1] = v25;

  v27 = *&v12[OBJC_IVAR____TtC11Diagnostics29SelfServiceSessionHistoryCell_suiteNameLabel];

  v28 = v27;
  v29 = String._bridgeToObjectiveC()();

  [v28 setText:v29];

  v30 = [v13 date];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v31 = type metadata accessor for Date();
  (*(*(v31 - 8) + 56))(v7, 0, 1, v31);
  v32 = OBJC_IVAR____TtC11Diagnostics29SelfServiceSessionHistoryCell_date;
  swift_beginAccess();
  sub_10004E630(v7, &v12[v32]);
  swift_endAccess();
  sub_10007D7F4();
  sub_10004E6A0(v7);
  v33 = [v13 results];
  if (!v33)
  {
    goto LABEL_20;
  }

  v19 = v33;
  v34 = [v33 components];
  sub_10003E110(0, &qword_1001FD530);
  v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v35 >> 62)
  {
    goto LABEL_24;
  }

  v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_17:

  if (v36)
  {
    v37 = v12;
    [v37 setAccessoryType:1];

    v19 = v37;
  }

LABEL_20:
  return v12;
}

void sub_10004E348(uint64_t a1)
{
  v3 = v1;
  v4 = a1;
  if (qword_1001FC738 != -1)
  {
    a1 = swift_once();
  }

  if (qword_1001FEED8)
  {
    __chkstk_darwin(a1);
    sub_10003C49C(&qword_1001FDEC0);
    v2 = 0;
    OS_dispatch_queue.sync<A>(execute:)();
    v5 = v18;
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  v6 = v4;
  v7 = IndexPath.row.getter();
  if ((v5 & 0xC000000000000001) == 0)
  {
    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v7 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v8 = *(v5 + 8 * v7 + 32);
      goto LABEL_10;
    }

    __break(1u);
LABEL_22:
    v12 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_13;
  }

  v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_10:
  v2 = v8;

  v9 = [v2 results];
  if (!v9)
  {
    goto LABEL_18;
  }

  v6 = v9;
  v10 = [v9 components];
  sub_10003E110(0, &qword_1001FD530);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v11 >> 62)
  {
    goto LABEL_22;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_13:

  if (v12)
  {
    [v3 navigationController];
    v13 = [v2 testSuiteName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    objc_allocWithZone(sub_10003C49C(&qword_1001FD538));
    v14 = v6;
    v15 = UIHostingController.init(rootView:)();
    v16 = [v3 navigationController];
    if (v16)
    {
      v17 = v16;
      [v16 pushViewController:v15 animated:1];
    }

    v6 = v2;
    v2 = v14;
  }

LABEL_18:
}

uint64_t sub_10004E630(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&unk_1001FD540);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004E6A0(uint64_t a1)
{
  v2 = sub_10003C49C(&unk_1001FD540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004E708()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10004E760()
{
  result = [objc_allocWithZone(type metadata accessor for Assertions()) init];
  qword_10020A368 = result;
  return result;
}

void sub_10004E790(uint64_t a1)
{
  v1 = OBJC_IVAR____TtC11Diagnostics10Assertions_statusBarStyleAssertion;
  if (!*(a1 + OBJC_IVAR____TtC11Diagnostics10Assertions_statusBarStyleAssertion) && !sub_1000660CC())
  {
    sub_10003C49C(&unk_1001FEAD0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_10017EC00;
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    v4 = qword_10020A4F8;
    *(v3 + 56) = sub_10003E110(0, &qword_1001FD6F0);
    *(v3 + 64) = sub_1000516BC();
    *(v3 + 32) = v4;
    v5 = v4;
    v6 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v7 = [objc_allocWithZone(SBSStatusBarStyleOverridesAssertion) initWithStatusBarStyleOverrides:0x8000 forPID:getpid() exclusive:0 showsWhenForeground:0];
    v8 = *(a1 + v1);
    *(a1 + v1) = v7;
    v9 = v7;

    if (v9)
    {
      sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000019, 0x800000010018A8B0);
      v10 = String._bridgeToObjectiveC()();

      [v9 setStatusString:v10];
    }

    v11 = *(a1 + v1);
    if (v11)
    {
      v19 = sub_10004EA54;
      v20 = 0;
      v15 = _NSConcreteStackBlock;
      v16 = 1107296256;
      v17 = sub_100084F94;
      v18 = &unk_1001C01C0;
      v12 = _Block_copy(&v15);
      v19 = sub_10004EB50;
      v20 = 0;
      v15 = _NSConcreteStackBlock;
      v16 = 1107296256;
      v17 = sub_100031FA8;
      v18 = &unk_1001C01E8;
      v13 = _Block_copy(&v15);
      v14 = v11;
      [v14 acquireWithHandler:v12 invalidationHandler:v13];
      _Block_release(v13);
      _Block_release(v12);
    }
  }
}

uint64_t sub_10004EA54(char a1)
{
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  sub_10003C49C(&unk_1001FEAD0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10017EC00;
  v3 = sub_10003DFBC();
  v4 = 28277;
  if (a1)
  {
    v4 = 0;
  }

  v5 = 0xE200000000000000;
  *(v2 + 56) = &type metadata for String;
  *(v2 + 64) = v3;
  if (a1)
  {
    v5 = 0xE000000000000000;
  }

  *(v2 + 32) = v4;
  *(v2 + 40) = v5;
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
}

void sub_10004EB50()
{
  sub_10003C49C(&unk_1001FEAD0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10017EC00;
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  v1 = qword_10020A4F8;
  *(v0 + 56) = sub_10003E110(0, &qword_1001FD6F0);
  *(v0 + 64) = sub_1000516BC();
  *(v0 + 32) = v1;
  v2 = v1;
  v3 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
}

void sub_10004EC64(uint64_t a1)
{
  sub_10003C49C(&unk_1001FEAD0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10017EC00;
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  v3 = qword_10020A4F8;
  *(v2 + 56) = sub_10003E110(0, &qword_1001FD6F0);
  *(v2 + 64) = sub_1000516BC();
  *(v2 + 32) = v3;
  v4 = v3;
  v5 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v6 = OBJC_IVAR____TtC11Diagnostics10Assertions_statusBarStyleAssertion;
  v7 = *(a1 + OBJC_IVAR____TtC11Diagnostics10Assertions_statusBarStyleAssertion);
  if (v7)
  {
    [v7 invalidate];
    v7 = *(a1 + v6);
  }

  *(a1 + v6) = 0;
}

void sub_10004ED98(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11Diagnostics10Assertions_preventTaskSuspendAssertions;
  swift_beginAccess();
  if (!*(*(a1 + v4) + 16) || (sub_100064BB8(a2), (v5 & 1) == 0))
  {
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    sub_10003C49C(&unk_1001FEAD0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_10017EC00;
    *(v6 + 56) = &type metadata for Int32;
    *(v6 + 64) = &protocol witness table for Int32;
    *(v6 + 32) = a2;
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v7 = [objc_opt_self() targetWithPid:a2];
    v8 = String._bridgeToObjectiveC()();
    v9 = String._bridgeToObjectiveC()();
    v10 = [objc_opt_self() attributeWithDomain:v8 name:v9];

    sub_10003C49C(&unk_1001FD020);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_10017EBF0;
    *(v11 + 32) = v10;
    v12 = objc_allocWithZone(RBSAssertion);
    v13 = v7;
    v14 = v10;
    v15 = v13;
    v16 = String._bridgeToObjectiveC()();
    sub_10003E110(0, &unk_1001FD710);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v18 = [v12 initWithExplanation:v16 target:v15 attributes:isa];

    v33[0] = 0;
    v19 = [v18 acquireWithError:v33];
    v20 = v33[0];
    if (v19)
    {
      swift_beginAccess();
      v21 = v20;
      v22 = v18;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = *(a1 + v4);
      *(a1 + v4) = 0x8000000000000000;
      sub_1001422C4(v22, a2, isUniquelyReferenced_nonNull_native);
      *(a1 + v4) = v32;
      swift_endAccess();
    }

    else
    {
      v24 = v33[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_10003E110(0, &qword_1001FD6F0);
      swift_errorRetain();
      v25 = static OS_os_log.default.getter();
      v26 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v33[0] = v28;
        *v27 = 136315138;
        swift_errorRetain();
        sub_10003C49C(&qword_100201C30);
        v29 = String.init<A>(describing:)();
        v31 = sub_100056B7C(v29, v30, v33);

        *(v27 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v25, v26, "Unable to acquire Task Suspend Assertion, error: %s", v27, 0xCu);
        sub_100044554(v28);
      }

      else
      {
      }
    }
  }
}

void sub_10004F25C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11Diagnostics10Assertions_preventTaskSuspendAssertions;
  swift_beginAccess();
  v19 = v2;
  v20 = a1;
  v3 = *(a1 + v2);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v21 = v3;

  v9 = 0;
  if (v7)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      *(v20 + v19) = _swiftEmptyDictionarySingleton;

      return;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      do
      {
LABEL_8:
        v11 = qword_1001FC7B0;
        v12 = *(*(v21 + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v7)))));
        if (v11 != -1)
        {
          swift_once();
        }

        v7 &= v7 - 1;
        sub_10003C49C(&unk_1001FEAD0);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_10017EC00;
        v14 = [v12 target];
        v15 = [v14 description];

        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        *(v13 + 56) = &type metadata for String;
        *(v13 + 64) = sub_10003DFBC();
        *(v13 + 32) = v16;
        *(v13 + 40) = v18;
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        [v12 invalidate];
      }

      while (v7);
    }
  }

  __break(1u);
}

void sub_10004F49C(uint64_t a1)
{
  v1 = OBJC_IVAR____TtC11Diagnostics10Assertions_sharingClient;
  if (!*(a1 + OBJC_IVAR____TtC11Diagnostics10Assertions_sharingClient))
  {
    sub_10003C49C(&unk_1001FEAD0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_10017EC00;
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    v4 = qword_10020A4F8;
    *(v3 + 56) = sub_10003E110(0, &qword_1001FD6F0);
    *(v3 + 64) = sub_1000516BC();
    *(v3 + 32) = v4;
    v5 = v4;
    v6 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v7 = [objc_allocWithZone(SFClient) init];
    v8 = *(a1 + v1);
    *(a1 + v1) = v7;
    v9 = v7;

    if (v9)
    {
      v10 = String._bridgeToObjectiveC()();
      [v9 activateAssertionWithIdentifier:v10];
    }
  }
}

void sub_10004F650(uint64_t a1)
{
  sub_10003C49C(&unk_1001FEAD0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10017EC00;
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  v3 = qword_10020A4F8;
  *(v2 + 56) = sub_10003E110(0, &qword_1001FD6F0);
  *(v2 + 64) = sub_1000516BC();
  *(v2 + 32) = v3;
  v4 = v3;
  v5 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v6 = OBJC_IVAR____TtC11Diagnostics10Assertions_sharingClient;
  [*(a1 + OBJC_IVAR____TtC11Diagnostics10Assertions_sharingClient) invalidate];
  v7 = *(a1 + v6);
  *(a1 + v6) = 0;
}

void sub_10004F780(uint64_t a1)
{
  v1 = OBJC_IVAR____TtC11Diagnostics10Assertions_systemGesturesAssertion;
  if (!*(a1 + OBJC_IVAR____TtC11Diagnostics10Assertions_systemGesturesAssertion))
  {
    sub_10003C49C(&unk_1001FEAD0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_10017EC00;
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    v4 = qword_10020A4F8;
    *(v3 + 56) = sub_10003E110(0, &qword_1001FD6F0);
    *(v3 + 64) = sub_1000516BC();
    *(v3 + 32) = v4;
    v5 = v4;
    v6 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = [objc_opt_self() mainBundle];
    v8 = [v7 bundleIdentifier];

    if (v8)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = String._bridgeToObjectiveC()();

    if (v10)
    {
      v12 = String._bridgeToObjectiveC()();
    }

    else
    {
      v12 = 0;
    }

    v13 = [objc_allocWithZone(AXAssertion) initWithType:v11 identifier:v12];

    v14 = *(a1 + v1);
    *(a1 + v1) = v13;
  }
}

void sub_10004F9B4(uint64_t a1)
{
  sub_10003C49C(&unk_1001FEAD0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10017EC00;
  if (qword_1001FC7B0 != -1)
  {
    swift_once();
  }

  v3 = qword_10020A4F8;
  *(v2 + 56) = sub_10003E110(0, &qword_1001FD6F0);
  *(v2 + 64) = sub_1000516BC();
  *(v2 + 32) = v3;
  v4 = v3;
  v5 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v6 = *(a1 + OBJC_IVAR____TtC11Diagnostics10Assertions_systemGesturesAssertion);
  *(a1 + OBJC_IVAR____TtC11Diagnostics10Assertions_systemGesturesAssertion) = 0;
}

void sub_10004FAD4()
{
  if (GestaltGetDeviceClass() == 3)
  {
    v1 = OBJC_IVAR____TtC11Diagnostics10Assertions_isChamoisWindowingUIEnabledUserSetting;
    if (*(v0 + OBJC_IVAR____TtC11Diagnostics10Assertions_isChamoisWindowingUIEnabledUserSetting) == 2)
    {
      v2 = OBJC_IVAR____TtC11Diagnostics10Assertions_isWindowedAppsEnabledUserSetting;
      if (*(v0 + OBJC_IVAR____TtC11Diagnostics10Assertions_isWindowedAppsEnabledUserSetting) == 2)
      {
        v3 = [objc_msgSend(objc_opt_self() "currentPlatform")];
        swift_unknownObjectRelease();
        if ((v3 & 1) == 0)
        {
          v4 = [objc_allocWithZone(SBSTestAutomationService) init];
          v5 = [v4 isChamoisWindowingUIEnabled];

          *(v0 + v1) = v5;
          static os_log_type_t.default.getter();
          if (qword_1001FC7B0 != -1)
          {
            swift_once();
          }

          sub_10003C49C(&unk_1001FEAD0);
          v6 = swift_allocObject();
          *(v6 + 16) = xmmword_10017EC00;
          *(v6 + 56) = &type metadata for Bool;
          *(v6 + 64) = &protocol witness table for Bool;
          *(v6 + 32) = v5;
          os_log(_:dso:log:_:_:)();

          if (v5)
          {
            static os_log_type_t.default.getter();
            os_log(_:dso:log:_:_:)();
            v7 = [objc_allocWithZone(SBSTestAutomationService) init];
            [v7 setChamoisWindowingUIEnabled:0];
          }

          v8 = objc_allocWithZone(NSUserDefaults);
          v9 = String._bridgeToObjectiveC()();
          v10 = [v8 initWithSuiteName:v9];

          if (v10)
          {
            v11 = v10;
            v12 = String._bridgeToObjectiveC()();
            v13 = [v11 BOOLForKey:v12];

            *(v0 + v2) = v13;
            static os_log_type_t.default.getter();
            v14 = swift_allocObject();
            *(v14 + 16) = xmmword_10017EC00;
            *(v14 + 56) = &type metadata for Bool;
            *(v14 + 64) = &protocol witness table for Bool;
            *(v14 + 32) = v13;
            os_log(_:dso:log:_:_:)();

            static os_log_type_t.default.getter();
            os_log(_:dso:log:_:_:)();
            v16 = v11;
            v15 = String._bridgeToObjectiveC()();
            [v16 setInteger:0 forKey:v15];
          }

          else
          {
            *(v0 + v2) = 2;
          }
        }
      }
    }
  }
}

void sub_10004FE88()
{
  if (GestaltGetDeviceClass() == 3)
  {
    v1 = [objc_msgSend(objc_opt_self() "currentPlatform")];
    swift_unknownObjectRelease();
    if ((v1 & 1) == 0)
    {
      v2 = OBJC_IVAR____TtC11Diagnostics10Assertions_isWindowedAppsEnabledUserSetting;
      v3 = *(v0 + OBJC_IVAR____TtC11Diagnostics10Assertions_isWindowedAppsEnabledUserSetting);
      if (v3 != 2)
      {
        static os_log_type_t.default.getter();
        if (qword_1001FC7B0 != -1)
        {
          swift_once();
        }

        sub_10003C49C(&unk_1001FEAD0);
        v4 = swift_allocObject();
        *(v4 + 16) = xmmword_10017EC00;
        *(v4 + 56) = &type metadata for Bool;
        *(v4 + 64) = &protocol witness table for Bool;
        *(v4 + 32) = v3 & 1;
        os_log(_:dso:log:_:_:)();

        v5 = objc_allocWithZone(NSUserDefaults);
        v6 = String._bridgeToObjectiveC()();
        v7 = [v5 initWithSuiteName:v6];

        if (v7)
        {
          if (*(v0 + v2) == 2)
          {
            v8 = v7;
            isa = 0;
          }

          else
          {
            v10 = v7;
            isa = Bool._bridgeToObjectiveC()().super.super.isa;
          }

          v11 = String._bridgeToObjectiveC()();
          [v7 setObject:isa forKey:v11];
          swift_unknownObjectRelease();
        }

        *(v0 + v2) = 2;
      }

      v12 = OBJC_IVAR____TtC11Diagnostics10Assertions_isChamoisWindowingUIEnabledUserSetting;
      v13 = *(v0 + OBJC_IVAR____TtC11Diagnostics10Assertions_isChamoisWindowingUIEnabledUserSetting);
      if (v13 != 2)
      {
        static os_log_type_t.default.getter();
        if (qword_1001FC7B0 != -1)
        {
          swift_once();
        }

        sub_10003C49C(&unk_1001FEAD0);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_10017EC00;
        *(v14 + 56) = &type metadata for Bool;
        *(v14 + 64) = &protocol witness table for Bool;
        v15 = v13 & 1;
        *(v14 + 32) = v15;
        os_log(_:dso:log:_:_:)();

        v16 = [objc_allocWithZone(SBSTestAutomationService) init];
        [v16 setChamoisWindowingUIEnabled:v15];

        *(v0 + v12) = 2;
      }
    }
  }
}

void sub_100050198()
{
  if (GestaltGetDeviceClass() == 3)
  {
    v1 = v0 + OBJC_IVAR____TtC11Diagnostics10Assertions_leftCornerGestureTouchTypes;
    if (*(v0 + OBJC_IVAR____TtC11Diagnostics10Assertions_leftCornerGestureTouchTypes + 8) == 1)
    {
      v2 = v0 + OBJC_IVAR____TtC11Diagnostics10Assertions_rightCornerGestureTouchTypes;
      if (*(v0 + OBJC_IVAR____TtC11Diagnostics10Assertions_rightCornerGestureTouchTypes + 8) == 1)
      {
        v3 = [objc_msgSend(objc_opt_self() "currentPlatform")];
        swift_unknownObjectRelease();
        if ((v3 & 1) == 0)
        {
          v4 = objc_allocWithZone(NSUserDefaults);
          v5 = String._bridgeToObjectiveC()();
          v6 = [v4 initWithSuiteName:v5];

          if (v6)
          {
            v7 = String._bridgeToObjectiveC()();
            v8 = [v6 integerForKey:v7];

            *v1 = v8;
            *(v1 + 8) = 0;
            v9 = String._bridgeToObjectiveC()();
            v10 = [v6 integerForKey:v9];

            *v2 = v10;
            *(v2 + 8) = 0;
            static os_log_type_t.default.getter();
            if (qword_1001FC7B0 != -1)
            {
              swift_once();
            }

            sub_10003C49C(&unk_1001FEAD0);
            v11 = swift_allocObject();
            *(v11 + 16) = xmmword_10017EC10;
            if (*(v1 + 8))
            {
              v12 = 0;
              v13 = 0;
            }

            else
            {
              sub_1000517EC();
              v12 = BinaryInteger.description.getter();
              v13 = v14;
            }

            *(v11 + 56) = &type metadata for String;
            v15 = sub_10003DFBC();
            v16 = v15;
            *(v11 + 64) = v15;
            if (v13)
            {
              v17 = v12;
            }

            else
            {
              v17 = 7104878;
            }

            v18 = 0xE300000000000000;
            if (v13)
            {
              v18 = v13;
            }

            *(v11 + 32) = v17;
            *(v11 + 40) = v18;
            if (*(v2 + 8) == 1)
            {
              v19 = (v11 + 72);
              *(v11 + 96) = &type metadata for String;
              *(v11 + 104) = v15;
            }

            else
            {
              sub_1000517EC();
              v20 = BinaryInteger.description.getter();
              v19 = (v11 + 72);
              *(v11 + 96) = &type metadata for String;
              *(v11 + 104) = v16;
              if (v21)
              {
                *v19 = v20;
LABEL_21:
                *(v11 + 80) = v21;
                os_log(_:dso:log:_:_:)();

                v22 = String._bridgeToObjectiveC()();
                [v6 setInteger:0 forKey:v22];

                v23 = String._bridgeToObjectiveC()();
                [v6 setInteger:0 forKey:v23];

                static os_log_type_t.default.getter();
                os_log(_:dso:log:_:_:)();

                return;
              }
            }

            *v19 = 7104878;
            v21 = 0xE300000000000000;
            goto LABEL_21;
          }
        }
      }
    }
  }
}

void sub_100050510()
{
  if (GestaltGetDeviceClass() == 3)
  {
    v1 = [objc_msgSend(objc_opt_self() "currentPlatform")];
    swift_unknownObjectRelease();
    if ((v1 & 1) == 0)
    {
      v2 = objc_allocWithZone(NSUserDefaults);
      v3 = String._bridgeToObjectiveC()();
      v10 = [v2 initWithSuiteName:v3];

      if (v10)
      {
        if ((*(v0 + OBJC_IVAR____TtC11Diagnostics10Assertions_leftCornerGestureTouchTypes + 8) & 1) == 0)
        {
          v4 = *(v0 + OBJC_IVAR____TtC11Diagnostics10Assertions_leftCornerGestureTouchTypes);
          static os_log_type_t.default.getter();
          if (qword_1001FC7B0 != -1)
          {
            swift_once();
          }

          sub_10003C49C(&unk_1001FEAD0);
          v5 = swift_allocObject();
          *(v5 + 16) = xmmword_10017EC00;
          *(v5 + 56) = &type metadata for Int;
          *(v5 + 64) = &protocol witness table for Int;
          *(v5 + 32) = v4;
          os_log(_:dso:log:_:_:)();

          v6 = String._bridgeToObjectiveC()();
          [v10 setInteger:v4 forKey:v6];
        }

        if ((*(v0 + OBJC_IVAR____TtC11Diagnostics10Assertions_rightCornerGestureTouchTypes + 8) & 1) == 0)
        {
          v7 = *(v0 + OBJC_IVAR____TtC11Diagnostics10Assertions_rightCornerGestureTouchTypes);
          static os_log_type_t.default.getter();
          if (qword_1001FC7B0 != -1)
          {
            swift_once();
          }

          sub_10003C49C(&unk_1001FEAD0);
          v8 = swift_allocObject();
          *(v8 + 16) = xmmword_10017EC00;
          *(v8 + 56) = &type metadata for Int;
          *(v8 + 64) = &protocol witness table for Int;
          *(v8 + 32) = v7;
          os_log(_:dso:log:_:_:)();

          v9 = String._bridgeToObjectiveC()();
          [v10 setInteger:v7 forKey:v9];
        }
      }
    }
  }
}

id sub_100050814()
{
  v1 = OBJC_IVAR____TtC11Diagnostics10Assertions____lazy_storage___airDropDiscoveryController;
  v2 = *(v0 + OBJC_IVAR____TtC11Diagnostics10Assertions____lazy_storage___airDropDiscoveryController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11Diagnostics10Assertions____lazy_storage___airDropDiscoveryController);
  }

  else
  {
    v4 = [objc_allocWithZone(SFAirDropDiscoveryController) init];
    v5 = [v4 isNearbySharingEnabled];
    *(v0 + OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingPreferencesState) = v5;
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_1000508A4()
{
  v1 = v0;
  v2 = kSFOperationDiscoverableModeKey;
  if (!kSFOperationDiscoverableModeKey)
  {
    __break(1u);
    goto LABEL_17;
  }

  v3 = String._bridgeToObjectiveC()();
  v4 = CFPreferencesCopyAppValue(v2, v3);

  if (v4 && (swift_dynamicCast() & 1) != 0)
  {
    goto LABEL_6;
  }

  if (!kSFOperationDiscoverableModeOff)
  {
LABEL_17:
    __break(1u);
    return;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_6:
  v5 = String._bridgeToObjectiveC()();

  v6 = kSFOperationDiscoverableModeContactsOnly;
  if (kSFOperationDiscoverableModeContactsOnly)
  {
    type metadata accessor for CFString(0);
    sub_1000517A4(&unk_1001FDFB0, type metadata accessor for CFString);
    v7 = v5;
    v8 = v6;
    v9 = static _CFObject.== infix(_:_:)();

    if (v9)
    {

      v10 = 1;
LABEL_13:
      *(v1 + OBJC_IVAR____TtC11Diagnostics10Assertions_airDropUserSetting) = v10;
      v15 = sub_100050814();
      [v15 setDiscoverableMode:0];

      return;
    }
  }

  else
  {
    v11 = v5;
  }

  v12 = kSFOperationDiscoverableModeEveryone;
  v13 = kSFOperationDiscoverableModeEveryone;

  if (v12)
  {
    type metadata accessor for CFString(0);
    sub_1000517A4(&unk_1001FDFB0, type metadata accessor for CFString);
    v14 = static _CFObject.== infix(_:_:)();

    if (v14)
    {
      v10 = 2;
      goto LABEL_13;
    }
  }

  else
  {
  }

  *(v1 + OBJC_IVAR____TtC11Diagnostics10Assertions_airDropUserSetting) = 0;
}

void sub_100050ADC()
{
  v1 = OBJC_IVAR____TtC11Diagnostics10Assertions_trueToneUserSetting;
  if (*(v0 + OBJC_IVAR____TtC11Diagnostics10Assertions_trueToneUserSetting) == 2)
  {
    v2 = *(v0 + OBJC_IVAR____TtC11Diagnostics10Assertions_brightnessClient);
    v3 = String._bridgeToObjectiveC()();
    v4 = [v2 copyPropertyForKey:v3];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    v13[0] = v11;
    v13[1] = v12;
    if (*(&v12 + 1))
    {
      v5 = swift_dynamicCast();
      v6 = v10;
      if (!v5)
      {
        v6 = 2;
      }
    }

    else
    {
      sub_10005173C(v13);
      v6 = 2;
    }

    *(v0 + v1) = v6;
  }

  v7 = *(v0 + OBJC_IVAR____TtC11Diagnostics10Assertions_brightnessClient);
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v9 = String._bridgeToObjectiveC()();
  [v7 setProperty:isa forKey:v9];
}

void sub_100050C28()
{
  v1 = [objc_msgSend(objc_opt_self() "currentPlatform")];
  swift_unknownObjectRelease();
  if ((v1 & 1) != 0 || (v2 = OBJC_IVAR____TtC11Diagnostics10Assertions_captureButtonAssertion, *(v0 + OBJC_IVAR____TtC11Diagnostics10Assertions_captureButtonAssertion)))
  {
    sub_10003E110(0, &qword_1001FD6F0);
    v6 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
  }

  else
  {
    v6 = [objc_opt_self() sharedInstance];
    v3 = String._bridgeToObjectiveC()();
    v4 = [v6 acquireCaptureButtonSuppressionAssertionWithOptions:0 reason:v3];

    *(v0 + v2) = v4;
    swift_unknownObjectRelease();
    if (!*(v0 + v2))
    {
      sub_10003E110(0, &qword_1001FD6F0);
      v5 = static OS_os_log.default.getter();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();
    }
  }
}

id sub_100050E34()
{
  v1 = v0;
  v39 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v39 - 8);
  __chkstk_darwin(v39);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = OBJC_IVAR____TtC11Diagnostics10Assertions_statusBarStyleQueue;
  v38 = sub_10003E110(0, &qword_1001FD040);
  v30 = "Disabling Chamois";
  static DispatchQoS.unspecified.getter();
  v41 = _swiftEmptyArrayStorage;
  v37 = sub_1000517A4(&unk_1001FD740, &type metadata accessor for OS_dispatch_queue.Attributes);
  v36 = sub_10003C49C(&unk_1001FCEA0);
  v9 = sub_100051840();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v33 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v34 = *(v2 + 104);
  v35 = v2 + 104;
  v32 = v4;
  v10 = v4;
  v11 = v39;
  v34(v10);
  v29[0] = v8;
  *&v0[v31] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v30 = ".statusBarStyleQueue";
  v31 = OBJC_IVAR____TtC11Diagnostics10Assertions_preventTaskSuspendQueue;
  static DispatchQoS.unspecified.getter();
  v41 = _swiftEmptyArrayStorage;
  v29[1] = v5;
  v29[2] = v9;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v12 = v33;
  v13 = v34;
  (v34)(v32, v33, v11);
  *&v0[v31] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v30 = ".preventTaskSuspendQueue";
  v31 = OBJC_IVAR____TtC11Diagnostics10Assertions_preventProxCardsQueue;
  static DispatchQoS.unspecified.getter();
  v41 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v14 = v32;
  v15 = v39;
  v13(v32, v12, v39);
  *&v1[v31] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v16 = OBJC_IVAR____TtC11Diagnostics10Assertions_disableSystemGesturesQueue;
  static DispatchQoS.unspecified.getter();
  v41 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (v34)(v14, v33, v15);
  *&v1[v16] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v17 = &v1[OBJC_IVAR____TtC11Diagnostics10Assertions_springBoardDefaultsDomain];
  *v17 = 0xD000000000000015;
  v17[1] = 0x800000010018ADC0;
  v18 = &v1[OBJC_IVAR____TtC11Diagnostics10Assertions_springBoardMultiWindowDefault];
  *v18 = 0xD00000000000001BLL;
  v18[1] = 0x800000010018ADE0;
  v19 = &v1[OBJC_IVAR____TtC11Diagnostics10Assertions_springBoardLeftGestureTouchTypesDefault];
  *v19 = 0xD000000000000023;
  v19[1] = 0x800000010018AE00;
  v20 = &v1[OBJC_IVAR____TtC11Diagnostics10Assertions_springBoardRightGestureTouchTypesDefault];
  *v20 = 0xD000000000000024;
  v20[1] = 0x800000010018AE30;
  *&v1[OBJC_IVAR____TtC11Diagnostics10Assertions_springBoardGestureTouchTypesDisabled] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics10Assertions_statusBarStyleAssertion] = 0;
  v21 = &v1[OBJC_IVAR____TtC11Diagnostics10Assertions_trueToneSettingsKey];
  *v21 = 0xD000000000000016;
  v21[1] = 0x800000010018AE60;
  v22 = OBJC_IVAR____TtC11Diagnostics10Assertions_brightnessClient;
  *&v1[v22] = [objc_allocWithZone(BrightnessSystemClient) init];
  *&v1[OBJC_IVAR____TtC11Diagnostics10Assertions_captureButtonAssertion] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics10Assertions_preventTaskSuspendAssertions] = _swiftEmptyDictionarySingleton;
  v1[OBJC_IVAR____TtC11Diagnostics10Assertions_isVoiceControlEnabled] = 1;
  *&v1[OBJC_IVAR____TtC11Diagnostics10Assertions_sharingClient] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics10Assertions_systemGesturesAssertion] = 0;
  v1[OBJC_IVAR____TtC11Diagnostics10Assertions_isChamoisWindowingUIEnabledUserSetting] = 2;
  v1[OBJC_IVAR____TtC11Diagnostics10Assertions_isWindowedAppsEnabledUserSetting] = 2;
  v1[OBJC_IVAR____TtC11Diagnostics10Assertions_reachabilityState] = 2;
  v23 = &v1[OBJC_IVAR____TtC11Diagnostics10Assertions_leftCornerGestureTouchTypes];
  *v23 = 0;
  v23[8] = 1;
  v24 = &v1[OBJC_IVAR____TtC11Diagnostics10Assertions_rightCornerGestureTouchTypes];
  *v24 = 0;
  v24[8] = 1;
  v1[OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingPreferencesState] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics10Assertions____lazy_storage___airDropDiscoveryController] = 0;
  v1[OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics10Assertions_airDropUserSetting] = 0;
  v25 = &v1[OBJC_IVAR____TtC11Diagnostics10Assertions_sharingdDomain];
  *v25 = 0xD000000000000032;
  v25[1] = 0x800000010018AE80;
  v1[OBJC_IVAR____TtC11Diagnostics10Assertions_invertClassicColorsUserSetting] = 2;
  v1[OBJC_IVAR____TtC11Diagnostics10Assertions_voiceOverCaptionsUserSetting] = 2;
  v26 = &v1[OBJC_IVAR____TtC11Diagnostics10Assertions_motionCuesUserSetting];
  *v26 = 0;
  v26[4] = 1;
  v1[OBJC_IVAR____TtC11Diagnostics10Assertions_assistiveTouchUserSetting] = 2;
  v1[OBJC_IVAR____TtC11Diagnostics10Assertions_trueToneUserSetting] = 2;
  v27 = type metadata accessor for Assertions();
  v40.receiver = v1;
  v40.super_class = v27;
  return objc_msgSendSuper2(&v40, "init");
}

id sub_100051510()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Assertions();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000516BC()
{
  result = qword_100201280;
  if (!qword_100201280)
  {
    sub_10003E110(255, &qword_1001FD6F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100201280);
  }

  return result;
}

uint64_t sub_100051724(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10005173C(uint64_t a1)
{
  v2 = sub_10003C49C(&unk_1001FD720);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000517A4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000517EC()
{
  result = qword_1001FD730;
  if (!qword_1001FD730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FD730);
  }

  return result;
}

unint64_t sub_100051840()
{
  result = qword_1001FD750;
  if (!qword_1001FD750)
  {
    sub_10003C4E4(&unk_1001FCEA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FD750);
  }

  return result;
}

id sub_100051968()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceObserverTimberLorryDevelopment();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1000519C0(uint64_t a1)
{
  v1 = qword_10020A508;
  if (qword_10020A508)
  {
    v3 = qword_10020A500;

    if (sub_1000E6AB8())
    {
      sub_10003C49C(&qword_100202520);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10017EC00;
      v5 = objc_allocWithZone(type metadata accessor for DeviceTimberLorryDevelopment());
      sub_10011B4F0(v3, v1);
      sub_100051B18();
      AnyHashable.init<A>(_:)();
      sub_1000F798C(inited);
      swift_setDeallocating();
      sub_10003DB48(inited + 32);
      isa = Set._bridgeToObjectiveC()().super.isa;
      (*(a1 + 16))(a1, isa);
    }

    else
    {
    }
  }

  return [objc_allocWithZone(NSUUID) init];
}

unint64_t sub_100051B18()
{
  result = qword_1001FD790;
  if (!qword_1001FD790)
  {
    type metadata accessor for DeviceTimberLorryDevelopment();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FD790);
  }

  return result;
}

void sub_100051B70(void *a1)
{
  v2 = v1;
  v67 = type metadata accessor for UUID();
  v64 = *(v67 - 8);
  __chkstk_darwin(v67);
  v63 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10003DAAC(v5, qword_10020A510);
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v62 = v2;
    aBlock[0] = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_100056B7C(0x6C66287055746573, 0xEC000000293A776FLL, aBlock);
    *(v9 + 12) = 2080;
    v11 = [v6 debugDescription];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_100056B7C(v12, v14, aBlock);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "[Assessor] %s flow: %s", v9, 0x16u);
    swift_arrayDestroy();
    v2 = v62;
  }

  if ([v6 destination] != 4 && objc_msgSend(v6, "destination") != 5)
  {
    v31 = 0;
LABEL_23:
    sub_10005A074();
    swift_allocError();
    *v60 = v31;
    swift_willThrow();
    return;
  }

  v16 = [v6 serialNumber];
  if (!v16)
  {
LABEL_22:
    v31 = 1;
    goto LABEL_23;
  }

  v17 = v16;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = [v6 sessionID];
  if (!v21)
  {

    goto LABEL_22;
  }

  v22 = v21;
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  *(v2 + 16) = v18;
  *(v2 + 24) = v20;

  *(v2 + 32) = v23;
  *(v2 + 40) = v25;

  v26 = [v6 destination];
  *(v2 + 64) = v26 == 5;
  if (v26 != 5)
  {
    v32 = [v6 passcode];
    if (v32)
    {
      v33 = v32;
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      *(v2 + 48) = v34;
      *(v2 + 56) = v36;
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  v27 = v63;
  UUID.init()();
  v28 = UUID.uuidString.getter();
  v30 = v29;
  (*(v64 + 8))(v27, v67);
  *(v2 + 48) = v28;
  *(v2 + 56) = v30;
LABEL_16:

  v37 = v2;
  if (qword_1001FC6B8 != -1)
  {
    swift_once();
  }

  v38 = qword_10020A368;
  v39 = *(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_disableSystemGesturesQueue);
  v40 = swift_allocObject();
  *(v40 + 16) = v38;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_10003DA8C;
  *(v41 + 24) = v40;
  aBlock[4] = sub_10003DAA4;
  aBlock[5] = v41;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100060C48;
  aBlock[3] = &unk_1001C03F0;
  v42 = _Block_copy(aBlock);
  v43 = v38;

  dispatch_sync(v39, v42);
  _Block_release(v42);
  LOBYTE(v42) = swift_isEscapingClosureAtFileLocation();

  if (v42)
  {
    __break(1u);
  }

  else
  {
    v44 = OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled;
    v43[OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled] = 1;
    v45 = sub_100050814();
    [v45 setNearbySharingEnabled:(v43[v44] & 1) == 0];

    sub_1000508A4();
    sub_100050C28();
    v46 = [objc_opt_self() sharedApplication];
    v47 = [v46 delegate];

    if (v47)
    {
      type metadata accessor for AppDelegate();
      v48 = swift_dynamicCastClass();
      if (v48)
      {
        v49 = OBJC_IVAR____TtC11Diagnostics11AppDelegate_buttonEventMonitor;
        v50 = v48;
        [*(v48 + OBJC_IVAR____TtC11Diagnostics11AppDelegate_buttonEventMonitor) startWithPriority:200 completion:0];
        v51 = *(v50 + v49);
        swift_unknownObjectRelease();
        v52 = type metadata accessor for ButtonEventsConsumer();
        v53 = objc_allocWithZone(v52);
        v54 = &v53[OBJC_IVAR____TtC11Diagnostics20ButtonEventsConsumer_handler];
        *v54 = 0;
        *(v54 + 1) = 0;
        v65.receiver = v53;
        v65.super_class = v52;
        v55 = v51;

        v56 = objc_msgSendSuper2(&v65, "init");
        v57 = &v56[OBJC_IVAR____TtC11Diagnostics20ButtonEventsConsumer_handler];
        v58 = *&v56[OBJC_IVAR____TtC11Diagnostics20ButtonEventsConsumer_handler];
        *v57 = sub_10005A1B4;
        v57[1] = v37;
        v59 = v56;
        sub_10003C52C(v58);

        [v55 addTarget:v59 action:"consume:" forButtonEvents:48 propagate:0];
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }
}

void *sub_100052250()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v19 - v7;
  if (v0[3] && (v9 = v0[5]) != 0 && v0[7])
  {
    v10 = v0[4];
    if (*(v0 + 64) == 1)
    {
      v11 = v0[6];
      v20 = v0[2];
      v21 = v11;
      v23 = v6;
      v22 = objc_allocWithZone(DADiagnosticFlow);

      v12 = String._bridgeToObjectiveC()();
      v20 = v12;
      v13 = String._bridgeToObjectiveC()();
      v21 = String._bridgeToObjectiveC()();
      v14 = [v22 initWithDestination:3 serialNumber:v12 sessionID:v13 passcode:v21];

      sub_1000B1294(v8);

      v15 = v23;
      (*(v2 + 16))(v5, v8, v23);
      v16 = objc_allocWithZone(type metadata accessor for AssessmentQRCodeViewController());
      v0 = sub_1000B5B34(v5, 1);
      (*(v2 + 8))(v8, v15);
    }

    else
    {

      v0 = sub_100052EBC(v10, v9, 0);
    }
  }

  else
  {
    sub_10005A074();
    swift_allocError();
    *v17 = 2;
    swift_willThrow();
  }

  return v0;
}

uint64_t sub_1000524E4()
{
  type metadata accessor for CosmeticAssessmentAssessorManager();
  swift_allocObject();
  result = sub_100052530();
  qword_10020A370 = result;
  return result;
}

uint64_t sub_100052530()
{
  type metadata accessor for DeviceAssessmentPeerDeviceSession();
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0;
  swift_allocObject();
  *(v0 + 72) = DeviceAssessmentPeerDeviceSession.init()();
  sub_10005A124(&qword_1001FD898, v1, type metadata accessor for CosmeticAssessmentAssessorManager);
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;

  DeviceAssessmentPeerDeviceSession.delegate.setter();

  return v0;
}

uint64_t sub_1000525EC(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100057B68();
  v10 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_10005A1BC;
  aBlock[5] = a1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001C0418;
  v11 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10005A124(&qword_1001FDE60, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_10003C49C(&unk_1001FD050);
  sub_1000446A0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100052890()
{

  sub_100088E48(1, 0);
}

uint64_t sub_100052904(uint64_t a1)
{
  v2 = sub_10003C49C(&unk_1001FFE20);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MainActor();

  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = a1;
  sub_1000EC810(0, 0, v4, &unk_10017F558, v7);
}

uint64_t sub_100052A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_10003C49C(&qword_1001FCE98);
  v4[4] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[6] = v6;
  v4[7] = v5;

  return _swift_task_switch(sub_100052AF8, v6, v5);
}

uint64_t sub_100052AF8()
{
  v1 = *(*(v0 + 24) + 88);
  *(v0 + 64) = v1;
  if (v1)
  {
    v2 = *(v0 + 32);

    static AssessmentError.userCanceledSession.getter();
    v3 = type metadata accessor for AssessmentError();
    (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
    v4 = swift_task_alloc();
    *(v0 + 72) = v4;
    *v4 = v0;
    v4[1] = sub_100052C44;
    v5 = *(v0 + 32);

    return sub_1000DC0DC(v5);
  }

  else
  {

    **(v0 + 16) = *(v0 + 64) == 0;

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_100052C44()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  *(*v1 + 80) = v0;

  sub_10003DD84(v3, &qword_1001FCE98);

  v4 = *(v2 + 56);
  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_100052E50;
  }

  else
  {
    v6 = sub_100052DD0;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100052DD0()
{

  **(v0 + 16) = *(v0 + 64) == 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100052E50()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_100052EBC(uint64_t a1, uint64_t a2, char a3)
{
  v31 = type metadata accessor for DeviceAssessmentViewController.Configuration();
  v4 = *(v31 - 8);
  v5 = __chkstk_darwin(v31);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v30 - v8;
  v10 = type metadata accessor for DeviceAssessmentViewController.Configuration.AssessmentContext();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v30 - v15;
  v17 = &enum case for DeviceAssessmentViewController.Configuration.AssessmentContext.target(_:);
  if ((a3 & 1) == 0)
  {
    v17 = &enum case for DeviceAssessmentViewController.Configuration.AssessmentContext.helper(_:);
  }

  (*(v11 + 104))(&v30 - v15, *v17, v10);
  (*(v11 + 16))(v14, v16, v10);

  DeviceAssessmentViewController.Configuration.init(sessionID:context:)();
  if (qword_1001FC6C0 != -1)
  {
    swift_once();
  }

  v18 = v4;
  v19 = v31;
  (*(v4 + 16))(v7, v9, v31);
  v20 = objc_allocWithZone(type metadata accessor for DeviceAssessmentViewController());
  swift_retain_n();
  v21 = DeviceAssessmentViewController.init(configuration:peerDeviceSession:)();
  sub_10005A124(&qword_1001FD8A0, v22, type metadata accessor for CosmeticAssessmentAssessorManager);
  swift_unknownObjectRetain();
  DeviceAssessmentViewController.delegate.setter();
  v23 = v21;
  v24 = [v23 navigationItem];
  [v24 setHidesBackButton:1];

  v25 = [objc_opt_self() sharedApplication];
  v26 = [v25 userInterfaceLayoutDirection];

  if (v26 == 1)
  {
    v27 = 15;
  }

  else
  {
    v27 = 16;
  }

  [v23 setModalPresentationStyle:0];
  [v23 setModalTransitionStyle:v27];
  v32 = 1;
  v28 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  swift_beginAccess();
  objc_setAssociatedObject(v23, &unk_1001FEDE0, v28, 1);
  swift_endAccess();

  swift_unknownObjectRelease();
  (*(v18 + 8))(v9, v19);
  (*(v11 + 8))(v16, v10);
  return v23;
}

void sub_1000532CC()
{
  v1 = v0;
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10003DAAC(v2, qword_10020A510);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100056B7C(0xD000000000000012, 0x800000010018B320, &v21);
    _os_log_impl(&_mh_execute_header, v3, v4, "[Assessor] %s", v5, 0xCu);
    sub_100044554(v6);
  }

  if (v0[11])
  {
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v21 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_100056B7C(0xD000000000000012, 0x800000010018B320, &v21);
      _os_log_impl(&_mh_execute_header, v7, v8, "[Assessor] %s called with an active connection; ignoring", v9, 0xCu);
      sub_100044554(v10);
    }
  }

  else
  {
    v11 = v0[5];
    if (v11 && (v12 = v0[7]) != 0)
    {
      v13 = v0[4];
      v14 = v1[6];
      type metadata accessor for CosmeticAssessmentP2PConnectionManager();
      swift_allocObject();

      v15 = sub_1000705B8(v13, v11, v14, v12, 1);

      v1[10] = v15;

      if (v1[10])
      {

        sub_10006D8F8();
      }
    }

    else
    {
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v21 = v19;
        *v18 = 136315138;
        *(v18 + 4) = sub_100056B7C(0xD000000000000012, 0x800000010018B320, &v21);
        _os_log_impl(&_mh_execute_header, v16, v17, "[Assessor] %s called before setting up; ignoring", v18, 0xCu);
        sub_100044554(v19);
      }

      sub_10005A074();
      swift_allocError();
      *v20 = 2;
      swift_willThrow();
    }
  }
}

uint64_t sub_100053678(uint64_t a1)
{
  v3 = sub_10003C49C(&unk_1001FFE20);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v1[11] = a1;

  v6 = v1[5];
  if (v6)
  {
    v7 = v1[4];
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    type metadata accessor for MainActor();

    v9 = v1;
    v10 = static MainActor.shared.getter();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = &protocol witness table for MainActor;
    v11[4] = v9;
    v11[5] = v7;
    v11[6] = v6;
    sub_1000539D8(0, 0, v5, &unk_10017F568, v11);
  }

  else
  {
  }
}

uint64_t sub_100053804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for MainActor();
  v6[5] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000538A0, v8, v7);
}

uint64_t sub_1000538A0()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v4 = sub_100052EBC(v2, v1, *(v3 + 64));
  v5 = sub_1000882F0();
  if (v5 == 2 || (v5 & 1) == 0)
  {
    if (qword_1001FC6D0 != -1)
    {
      swift_once();
    }

    [qword_10020A388 pushViewController:v4 animated:1];
  }

  else
  {
    if (qword_1001FC6D0 != -1)
    {
      swift_once();
    }

    [qword_10020A388 presentViewController:v4 animated:1 completion:0];
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000539D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10003C49C(&unk_1001FFE20);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100044704(a3, v25 - v10, &unk_1001FFE20);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10003DD84(v11, &unk_1001FFE20);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_10003DD84(a3, &unk_1001FFE20);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10003DD84(a3, &unk_1001FFE20);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100053CD8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100053D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v7 = type metadata accessor for DispatchQoS();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  v8 = type metadata accessor for AssessmentError();
  v5[17] = v8;
  v5[18] = *(v8 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[21] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100053F14, v10, v9);
}

uint64_t sub_100053F14()
{
  v1 = v0[20];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  v5 = v0[9];

  (*(v3 + 16))(v1, v5, v4);
  static AssessmentError.canceledInitialLoad.getter();
  sub_10005A124(&qword_1001FD3C0, 255, &type metadata accessor for AssessmentError);
  LOBYTE(v1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v6 = *(v3 + 8);
  v6(v2, v4);
  if (v1 & 1) != 0 || (v7 = v0[19], v8 = v0[17], static AssessmentError.userCanceledSession.getter(), v9 = dispatch thunk of static Equatable.== infix(_:_:)(), v6(v7, v8), (v9))
  {
    v6(v0[20], v0[17]);
    if (qword_1001FC840 != -1)
    {
      swift_once();
    }

    v10 = *(qword_10020A5F8 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_action);
    if (v10)
    {
      [v10 setResultCode:-4];
    }

    v11 = 14;
LABEL_8:
    sub_1000F6FF8(v11);
    goto LABEL_9;
  }

  v14 = v0[19];
  v15 = v0[17];
  static AssessmentError.clientTerminatedSession.getter();
  v16 = dispatch thunk of static Equatable.== infix(_:_:)();
  v6(v14, v15);
  if (v16)
  {
    v17 = v0[16];
    v33 = v0[15];
    v34 = v0[14];
    v18 = v0[12];
    v19 = v0[13];
    v21 = v0[10];
    v20 = v0[11];
    v6(v0[20], v0[17]);
    sub_100057B68();
    v22 = static OS_dispatch_queue.main.getter();
    v0[6] = sub_100057BB4;
    v0[7] = v21;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100031FA8;
    v0[5] = &unk_1001C0288;
    v23 = _Block_copy(v0 + 2);

    static DispatchQoS.unspecified.getter();
    v0[8] = _swiftEmptyArrayStorage;
    sub_10005A124(&qword_1001FDE60, 255, &type metadata accessor for DispatchWorkItemFlags);
    sub_10003C49C(&unk_1001FD050);
    sub_1000446A0();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v23);

    (*(v18 + 8))(v19, v20);
    (*(v33 + 8))(v17, v34);
  }

  else
  {
    v24 = v0[19];
    v25 = v0[17];
    static AssessmentError.viewSupportOptions.getter();
    v26 = dispatch thunk of static Equatable.== infix(_:_:)();
    v6(v24, v25);
    v27 = v0[20];
    if (v26)
    {
      v6(v0[20], v0[17]);
      if (qword_1001FC840 != -1)
      {
        swift_once();
      }

      v28 = *(qword_10020A5F8 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_action);
      if (v28)
      {
        [v28 setResultCode:-2];
      }

      v11 = 18;
      goto LABEL_8;
    }

    v29 = v0[19];
    v30 = v0[17];
    static AssessmentError.retryExceeded.getter();
    v31 = dispatch thunk of static Equatable.== infix(_:_:)();
    v6(v29, v30);
    v6(v27, v30);
    if (v31)
    {
      if (qword_1001FC840 != -1)
      {
        swift_once();
      }

      v32 = *(qword_10020A5F8 + OBJC_IVAR____TtC11Diagnostics31CosmeticAssessmentTargetManager_action);
      if (v32)
      {
        [v32 setResultCode:-1];
      }

      v11 = 17;
      goto LABEL_8;
    }

    sub_1000F74E8(0x10u);
  }

LABEL_9:

  v12 = v0[1];

  return v12();
}

void sub_100054480()
{
  if (qword_1001FC6D0 != -1)
  {
    swift_once();
  }

  v0 = qword_10020A388;
  [qword_10020A388 dismissViewControllerAnimated:1 completion:0];
  v1 = objc_allocWithZone(type metadata accessor for AssessmentCompleteViewController());
  v2 = sub_10009A744(2);
  [v0 pushViewController:v2 animated:1];
}

uint64_t sub_100054558(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&qword_1001FD880);
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v11 - v7;
  if (*(a2 + 80))
  {
    (*(v5 + 16))(v8, a1, v4);
    v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    (*(v5 + 32))(v10 + v9, v8, v4);

    sub_100054714(sub_100059F9C, v10);
  }

  return result;
}

uint64_t sub_1000546C4(uint64_t a1, uint64_t a2)
{
  *(a2 + 88) = a1;

  sub_10003C49C(&qword_1001FD880);
  return CheckedContinuation.resume(returning:)();
}

void sub_100054714(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for NWBrowser.Descriptor();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(v2 + 48);
  *(v3 + 48) = sub_10005A01C;
  *(v3 + 56) = v10;

  sub_10003C52C(v11);
  type metadata accessor for NWParameters();
  swift_allocObject();
  NWParameters.init()();
  NWParameters.includePeerToPeer.setter();
  *v9 = 0xD000000000000019;
  v9[1] = 0x800000010018B2E0;
  v9[2] = 0;
  v9[3] = 0;
  (*(v7 + 104))(v9, enum case for NWBrowser.Descriptor.bonjour(_:), v6);
  type metadata accessor for NWBrowser();
  swift_allocObject();

  v12 = NWBrowser.init(for:using:)();
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = v12;
  v14[4] = a1;
  v14[5] = a2;

  sub_10003C48C(sub_10005A060);
  NWBrowser.stateUpdateHandler.setter();

  swift_allocObject();
  swift_weakInit();

  sub_10003C48C(sub_10005A06C);
  NWBrowser.browseResultsChangedHandler.setter();

  sub_100057B68();
  v15 = static OS_dispatch_queue.main.getter();
  NWBrowser.start(queue:)();
}

void sub_1000549F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for NWBrowser.Descriptor();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(v2 + 48);
  *(v3 + 48) = sub_10005A0C8;
  *(v3 + 56) = v10;

  sub_10003C52C(v11);
  type metadata accessor for NWParameters();
  swift_allocObject();
  NWParameters.init()();
  NWParameters.includePeerToPeer.setter();
  *v9 = 0xD000000000000019;
  v9[1] = 0x800000010018B2E0;
  v9[2] = 0;
  v9[3] = 0;
  (*(v7 + 104))(v9, enum case for NWBrowser.Descriptor.bonjour(_:), v6);
  type metadata accessor for NWBrowser();
  swift_allocObject();

  v12 = NWBrowser.init(for:using:)();
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = v12;
  v14[4] = a1;
  v14[5] = a2;

  sub_10003C48C(sub_10005A118);
  NWBrowser.stateUpdateHandler.setter();

  swift_allocObject();
  swift_weakInit();

  sub_10003C48C(sub_10005A5A4);
  NWBrowser.browseResultsChangedHandler.setter();

  sub_100057B68();
  v15 = static OS_dispatch_queue.main.getter();
  NWBrowser.start(queue:)();
}

uint64_t sub_100054CCC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000494BC;

  return sub_100057BD4();
}

uint64_t sub_100054D6C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10003DEC8;

  return sub_100058064();
}

uint64_t sub_100054E0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000494BC;

  return sub_1000581F8();
}

uint64_t sub_100054EAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000494BC;

  return sub_100058550();
}

uint64_t sub_100054F4C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000494BC;

  return sub_100058D44();
}

uint64_t sub_100054FEC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000494BC;

  return sub_100058F60();
}

uint64_t sub_10005508C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000494BC;

  return (sub_10005917C)(a2);
}

uint64_t sub_100055138(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000494BC;

  return (sub_10005975C)(a2);
}

uint64_t sub_1000551E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000494BC;

  return sub_10005876C();
}

uint64_t sub_100055284()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000494BC;

  return sub_100058B28();
}

uint64_t sub_100055324()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000494BC;

  return sub_100059540();
}

void sub_1000553C4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  type metadata accessor for TargetDevicePeerConnection();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    swift_unknownObjectRetain();
    a3(v5);

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1001FC7C8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10003DAAC(v6, qword_10020A510);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_100056B7C(0xD00000000000001ALL, 0x800000010018B300, &v11);
      _os_log_impl(&_mh_execute_header, oslog, v7, "Failed to cast actor to type %s", v8, 0xCu);
      sub_100044554(v9);
    }
  }
}

void sub_100055570(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  type metadata accessor for AssessorDevicePeerConnection();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    swift_unknownObjectRetain();
    a3(v5);

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1001FC7C8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10003DAAC(v6, qword_10020A510);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_100056B7C(0xD00000000000001CLL, 0x800000010018B340, &v11);
      _os_log_impl(&_mh_execute_header, oslog, v7, "Failed to cast actor to type %s", v8, 0xCu);
      sub_100044554(v9);
    }
  }
}

uint64_t sub_10005571C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v53 = a4;
  v54 = a5;
  v55 = a3;
  v6 = type metadata accessor for NWError();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v50 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v50 - v15;
  __chkstk_darwin(v14);
  v56 = &v50 - v17;
  v18 = type metadata accessor for NWBrowser.State();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  (*(v19 + 16))(v21, a1, v18);
  v23 = (*(v19 + 88))(v21, v18);
  if (v23 != enum case for NWBrowser.State.failed(_:))
  {
    if (v23 == enum case for NWBrowser.State.ready(_:))
    {
      if (qword_1001FC7C8 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      sub_10003DAAC(v36, qword_10020A510);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v37, v38))
      {
        goto LABEL_23;
      }

      v39 = swift_slowAlloc();
      *v39 = 0;
      v40 = "Browser ready";
    }

    else
    {
      if (v23 != enum case for NWBrowser.State.cancelled(_:))
      {

        return (*(v19 + 8))(v21, v18);
      }

      if (qword_1001FC7C8 != -1)
      {
        swift_once();
      }

      v49 = type metadata accessor for Logger();
      sub_10003DAAC(v49, qword_10020A510);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v37, v38))
      {
LABEL_23:
      }

      v39 = swift_slowAlloc();
      *v39 = 0;
      v40 = "Browser cancelled";
    }

    _os_log_impl(&_mh_execute_header, v37, v38, v40, v39, 2u);

    goto LABEL_23;
  }

  (*(v19 + 96))(v21, v18);
  v24 = v56;
  (*(v7 + 32))(v56, v21, v6);
  *v16 = -65569;
  (*(v7 + 104))(v16, enum case for NWError.dns(_:), v6);
  v25 = static NWError.== infix(_:_:)();
  v26 = *(v7 + 8);
  v26(v16, v6);
  v52 = v26;
  if (v25)
  {
    if (qword_1001FC7C8 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_10003DAAC(v27, qword_10020A510);
    v28 = *(v7 + 16);
    v28(v13, v24, v6);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v31 = 138412290;
      sub_10005A124(&qword_1001FD888, 255, &type metadata accessor for NWError);
      swift_allocError();
      v28(v32, v13, v6);
      v33 = _swift_stdlib_bridgeErrorToNSError();
      v34 = v52;
      v52(v13, v6);
      *(v31 + 4) = v33;
      v35 = v51;
      *v51 = v33;
      v24 = v56;
      _os_log_impl(&_mh_execute_header, v29, v30, "Browser failed with %@, restarting", v31, 0xCu);
      sub_10003DD84(v35, &qword_1001FF0C0);
    }

    else
    {

      v34 = v52;
      v52(v13, v6);
    }

    NWBrowser.cancel()();
    sub_100054714(v53, v54);
  }

  else
  {
    if (qword_1001FC7C8 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_10003DAAC(v41, qword_10020A510);
    v42 = *(v7 + 16);
    v42(v10, v24, v6);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v45 = 138412290;
      sub_10005A124(&qword_1001FD888, 255, &type metadata accessor for NWError);
      swift_allocError();
      v42(v46, v10, v6);
      v47 = _swift_stdlib_bridgeErrorToNSError();
      v34 = v52;
      v52(v10, v6);
      *(v45 + 4) = v47;
      v48 = v54;
      *v54 = v47;
      _os_log_impl(&_mh_execute_header, v43, v44, "Browser failed with %@, stopping", v45, 0xCu);
      sub_10003DD84(v48, &qword_1001FF0C0);
    }

    else
    {

      v34 = v52;
      v52(v10, v6);
    }

    NWBrowser.cancel()();
    v24 = v56;
  }

  return v34(v24, v6);
}

uint64_t sub_100055F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v53 = a4;
  v54 = a5;
  v55 = a3;
  v6 = type metadata accessor for NWError();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v50 - v11;
  __chkstk_darwin(v13);
  v15 = &v50 - v14;
  __chkstk_darwin(v16);
  v56 = &v50 - v17;
  v18 = type metadata accessor for NWBrowser.State();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  (*(v19 + 16))(v21, a1, v18);
  v23 = (*(v19 + 88))(v21, v18);
  if (v23 != enum case for NWBrowser.State.failed(_:))
  {
    if (v23 == enum case for NWBrowser.State.ready(_:))
    {
      if (qword_1001FC7C8 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      sub_10003DAAC(v36, qword_10020A510);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v37, v38))
      {
        goto LABEL_23;
      }

      v39 = swift_slowAlloc();
      *v39 = 0;
      v40 = "Browser ready";
    }

    else
    {
      if (v23 != enum case for NWBrowser.State.cancelled(_:))
      {

        return (*(v19 + 8))(v21, v18);
      }

      if (qword_1001FC7C8 != -1)
      {
        swift_once();
      }

      v49 = type metadata accessor for Logger();
      sub_10003DAAC(v49, qword_10020A510);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v37, v38))
      {
LABEL_23:
      }

      v39 = swift_slowAlloc();
      *v39 = 0;
      v40 = "Browser cancelled";
    }

    _os_log_impl(&_mh_execute_header, v37, v38, v40, v39, 2u);

    goto LABEL_23;
  }

  (*(v19 + 96))(v21, v18);
  v24 = v56;
  (*(v7 + 32))(v56, v21, v6);
  *v15 = -65569;
  (*(v7 + 104))(v15, enum case for NWError.dns(_:), v6);
  v25 = static NWError.== infix(_:_:)();
  v26 = *(v7 + 8);
  v26(v15, v6);
  v52 = v26;
  if (v25)
  {
    if (qword_1001FC7C8 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_10003DAAC(v27, qword_10020A510);
    v28 = *(v7 + 16);
    v28(v12, v24, v6);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v31 = 138412290;
      sub_10005A124(&qword_1001FD888, 255, &type metadata accessor for NWError);
      swift_allocError();
      v28(v32, v12, v6);
      v33 = _swift_stdlib_bridgeErrorToNSError();
      v34 = v52;
      v52(v12, v6);
      *(v31 + 4) = v33;
      v35 = v51;
      *v51 = v33;
      v24 = v56;
      _os_log_impl(&_mh_execute_header, v29, v30, "Browser failed with %@, restarting", v31, 0xCu);
      sub_10003DD84(v35, &qword_1001FF0C0);
    }

    else
    {

      v34 = v52;
      v52(v12, v6);
    }

    NWBrowser.cancel()();
    sub_1000549F0(v53, v54);
  }

  else
  {
    if (qword_1001FC7C8 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_10003DAAC(v41, qword_10020A510);
    v42 = *(v7 + 16);
    v42(v9, v24, v6);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v45 = 138412290;
      sub_10005A124(&qword_1001FD888, 255, &type metadata accessor for NWError);
      swift_allocError();
      v42(v46, v9, v6);
      v47 = _swift_stdlib_bridgeErrorToNSError();
      v34 = v52;
      v52(v9, v6);
      *(v45 + 4) = v47;
      v48 = v54;
      *v54 = v47;
      _os_log_impl(&_mh_execute_header, v43, v44, "Browser failed with %@, stopping", v45, 0xCu);
      sub_10003DD84(v48, &qword_1001FF0C0);
    }

    else
    {

      v34 = v52;
      v52(v9, v6);
    }

    NWBrowser.cancel()();
    v24 = v56;
  }

  return v34(v24, v6);
}

uint64_t sub_100056764(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1000567B0(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_100056810(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10005A594;

  return v6(a1);
}

uint64_t sub_100056908(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100056A00;

  return v6(a1);
}

uint64_t sub_100056A00()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100056B20(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_100056B7C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_100056B7C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100056C48(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10003E010(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100044554(v11);
  return v7;
}

unint64_t sub_100056C48(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100056D54(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_100056D54(uint64_t a1, unint64_t a2)
{
  v3 = sub_100056DA0(a1, a2);
  sub_100056ED0(&off_1001BD830);
  return v3;
}

void *sub_100056DA0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_100056FBC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100056FBC(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100056ED0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100057030(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100056FBC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10003C49C(&qword_1001FD878);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100057030(char *result, int64_t a2, char a3, char *a4)
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
    sub_10003C49C(&qword_1001FD878);
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

_BYTE **sub_100057124(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_100057134(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_1000571A8(void (*a1)(void))
{
  a1();

  return _typeName(_:qualified:)();
}

void sub_1000571E4(uint64_t a1, unint64_t a2)
{
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10003DAAC(v4, qword_10020A510);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_100056B7C(0xD000000000000036, 0x800000010018B030, &v8);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_100056B7C(a1, a2, &v8);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s sessionID: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  sub_1000F6FF8(15);
}

uint64_t sub_10005737C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v38 = a2;
  v7 = sub_10003C49C(&unk_1001FFE20);
  __chkstk_darwin(v7 - 8);
  v41 = &v34 - v8;
  v9 = type metadata accessor for AssessmentError();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v39 = v12;
  v40 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v34 - v13;
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10003DAAC(v15, qword_10020A510);
  v42 = *(v10 + 16);
  v42(v14, a1, v9);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v37 = v4;
    v19 = v18;
    v20 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v43 = v35;
    *v19 = 136315650;
    *(v19 + 4) = sub_100056B7C(0xD00000000000003ELL, 0x800000010018AFF0, &v43);
    *(v19 + 12) = 2112;
    sub_10005A124(&qword_1001FD870, 255, &type metadata accessor for AssessmentError);
    swift_allocError();
    v36 = a1;
    v42(v21, v14, v9);
    v22 = _swift_stdlib_bridgeErrorToNSError();
    (*(v10 + 8))(v14, v9);
    *(v19 + 14) = v22;
    *v20 = v22;
    *(v19 + 22) = 2080;
    if (a3)
    {
      v23 = v38;
    }

    else
    {
      v23 = 0;
    }

    if (a3)
    {
      v24 = a3;
    }

    else
    {
      v24 = 0xE000000000000000;
    }

    v25 = sub_100056B7C(v23, v24, &v43);

    *(v19 + 24) = v25;
    a1 = v36;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s error: %@, sessionID: %s", v19, 0x20u);
    sub_10003DD84(v20, &qword_1001FF0C0);

    swift_arrayDestroy();

    v4 = v37;
  }

  else
  {

    (*(v10 + 8))(v14, v9);
  }

  byte_10020A378 = 1;
  v26 = type metadata accessor for TaskPriority();
  v27 = v41;
  (*(*(v26 - 8) + 56))(v41, 1, 1, v26);
  v28 = v40;
  v42(v40, a1, v9);
  type metadata accessor for MainActor();

  v29 = static MainActor.shared.getter();
  v30 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v31 = (v39 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  *(v32 + 16) = v29;
  *(v32 + 24) = &protocol witness table for MainActor;
  (*(v10 + 32))(v32 + v30, v28, v9);
  *(v32 + v31) = v4;
  sub_1000539D8(0, 0, v27, &unk_10017F4A8, v32);
}

uint64_t sub_10005787C()
{
  v1 = type metadata accessor for AssessmentError();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100057954(uint64_t a1)
{
  v4 = *(type metadata accessor for AssessmentError() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10003DEC8;

  return sub_100053D5C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_100057A78()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100057AB0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000494BC;

  return sub_100056810(a1, v4);
}

unint64_t sub_100057B68()
{
  result = qword_1001FD040;
  if (!qword_1001FD040)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001FD040);
  }

  return result;
}

uint64_t sub_100057BBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100057BF4()
{
  v19 = v0;
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
    v18 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100056B7C(0xD000000000000035, 0x800000010018B2A0, &v18);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_100044554(v5);
  }

  v6 = v0[2];
  if ((*(v6 + 64) & 1) == 0)
  {
    v7 = *(v6 + 40);
    if (v7)
    {
      v8 = *(v6 + 56);
      if (v8)
      {
        v9 = *(v6 + 32);
        v10 = *(v6 + 48);
        type metadata accessor for CosmeticAssessmentP2PConnectionManager();
        swift_allocObject();

        v11 = sub_1000705B8(v9, v7, v10, v8, 1);

        *(v6 + 80) = v11;

        v12 = swift_task_alloc();
        v0[3] = v12;
        *v12 = v0;
        v12[1] = sub_100057F20;

        return withCheckedThrowingContinuation<A>(isolation:function:_:)();
      }
    }

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Missing service name or passcode required for starting P2P connection", v15, 2u);
    }
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_100057F20()
{
  *(*v1 + 32) = v0;

  if (v0)
  {
    v2 = sub_10005804C;
  }

  else
  {
    v2 = sub_100058034;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100058080()
{
  v9 = v0;
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
    v8 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100056B7C(0xD00000000000002ALL, 0x800000010018B270, &v8);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_100044554(v5);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100058218()
{
  v11 = v0;
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
    v10 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100056B7C(0xD00000000000003ALL, 0x800000010018B230, &v10);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_100044554(v5);
  }

  v6 = *(v0[2] + 88);
  v0[3] = v6;
  if (v6)
  {

    v7 = swift_task_alloc();
    v0[4] = v7;
    *v7 = v0;
    v7[1] = sub_100058414;

    return sub_1000DCAE4();
  }

  else
  {
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_100058414()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10005A58C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100058570()
{
  v11 = v0;
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
    v10 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100056B7C(0xD00000000000003BLL, 0x800000010018B1F0, &v10);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_100044554(v5);
  }

  v6 = *(v0[2] + 88);
  v0[3] = v6;
  if (v6)
  {

    v7 = swift_task_alloc();
    v0[4] = v7;
    *v7 = v0;
    v7[1] = sub_100058414;

    return sub_1000DCE34();
  }

  else
  {
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_10005878C()
{
  v11 = v0;
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
    v10 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100056B7C(0xD000000000000033, 0x800000010018B0E0, &v10);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_100044554(v5);
  }

  v6 = *(v0[2] + 88);
  v0[3] = v6;
  if (v6)
  {

    v7 = swift_task_alloc();
    v0[4] = v7;
    *v7 = v0;
    v7[1] = sub_100058988;

    return sub_1000DD184();
  }

  else
  {
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_100058988()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100058AC4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100058AC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100058B48()
{
  v11 = v0;
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
    v10 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100056B7C(0xD00000000000003BLL, 0x800000010018B0A0, &v10);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_100044554(v5);
  }

  v6 = *(v0[2] + 88);
  v0[3] = v6;
  if (v6)
  {

    v7 = swift_task_alloc();
    v0[4] = v7;
    *v7 = v0;
    v7[1] = sub_100058414;

    return sub_1000DD4D4();
  }

  else
  {
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_100058D64()
{
  v11 = v0;
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
    v10 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100056B7C(0xD000000000000045, 0x800000010018B1A0, &v10);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_100044554(v5);
  }

  v6 = *(v0[2] + 88);
  v0[3] = v6;
  if (v6)
  {

    v7 = swift_task_alloc();
    v0[4] = v7;
    *v7 = v0;
    v7[1] = sub_100058414;

    return sub_1000DD954();
  }

  else
  {
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_100058F80()
{
  v11 = v0;
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
    v10 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100056B7C(0xD00000000000003DLL, 0x800000010018B160, &v10);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_100044554(v5);
  }

  v6 = *(v0[2] + 88);
  v0[3] = v6;
  if (v6)
  {

    v7 = swift_task_alloc();
    v0[4] = v7;
    *v7 = v0;
    v7[1] = sub_100058414;

    return sub_1000DDCA4();
  }

  else
  {
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_10005917C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10005919C, 0, 0);
}

uint64_t sub_10005919C()
{
  v12 = v0;
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10003DAAC(v1, qword_10020A510);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100056B7C(0xD00000000000003FLL, 0x800000010018B120, &v11);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_100044554(v5);
  }

  v6 = *(v0[3] + 88);
  v0[4] = v6;
  if (v6)
  {

    v7 = swift_task_alloc();
    v0[5] = v7;
    *v7 = v0;
    v7[1] = sub_1000593A0;
    v8 = v0[2];

    return sub_1000DDFF4(v8);
  }

  else
  {
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1000593A0()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000594DC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1000594DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100059560()
{
  v11 = v0;
  if (qword_1001FC7C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10003DAAC(v1, qword_10020A510);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100056B7C(0xD00000000000002ELL, 0x800000010018B070, &v10);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_100044554(v5);
  }

  v6 = *(v0[2] + 88);
  v0[3] = v6;
  if (v6)
  {

    v7 = swift_task_alloc();
    v0[4] = v7;
    *v7 = v0;
    v7[1] = sub_100058414;

    return sub_1000DE880();
  }

  else
  {
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_10005975C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_10003C49C(&qword_1001FCE98);
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for AssessmentError();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_100059860, 0, 0);
}

uint64_t sub_100059860()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  byte_10020A378 = 1;
  sub_100044704(v4, v3, &qword_1001FCE98);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10003DD84(v0[4], &qword_1001FCE98);
    if (qword_1001FC7C8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10003DAAC(v5, qword_10020A510);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Cosmetic assessment finished successfully", v8, 2u);
    }
  }

  else
  {
    (*(v0[6] + 32))(v0[8], v0[4], v0[5]);
    if (qword_1001FC7C8 != -1)
    {
      swift_once();
    }

    v9 = v0[7];
    v10 = v0[8];
    v11 = v0[5];
    v12 = v0[6];
    v13 = type metadata accessor for Logger();
    sub_10003DAAC(v13, qword_10020A510);
    v14 = *(v12 + 16);
    v14(v9, v10, v11);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    v17 = os_log_type_enabled(v15, v16);
    v19 = v0[7];
    v18 = v0[8];
    v20 = v0[5];
    v21 = v0[6];
    if (v17)
    {
      v33 = v14;
      v22 = swift_slowAlloc();
      v34 = v18;
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      sub_10005A124(&qword_1001FD870, 255, &type metadata accessor for AssessmentError);
      swift_allocError();
      v33(v24, v19, v20);
      v25 = _swift_stdlib_bridgeErrorToNSError();
      v26 = *(v21 + 8);
      v26(v19, v20);
      *(v22 + 4) = v25;
      *v23 = v25;
      _os_log_impl(&_mh_execute_header, v15, v16, "Cosmetic assessment finished with error: %@", v22, 0xCu);
      sub_10003DD84(v23, &qword_1001FF0C0);

      v26(v34, v20);
    }

    else
    {

      v27 = *(v21 + 8);
      v27(v19, v20);
      v27(v18, v20);
    }
  }

  v28 = *(v0[3] + 88);
  v0[9] = v28;
  if (v28)
  {

    v29 = swift_task_alloc();
    v0[10] = v29;
    *v29 = v0;
    v29[1] = sub_100059CDC;
    v30 = v0[2];

    return sub_1000DC0DC(v30);
  }

  else
  {

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_100059CDC()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100059E38, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100059E38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100059ECC()
{
  v1 = sub_10003C49C(&qword_1001FD880);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100059F9C(uint64_t a1)
{
  sub_10003C49C(&qword_1001FD880);
  v3 = *(v1 + 16);

  return sub_1000546C4(a1, v3);
}

uint64_t sub_10005A024()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}