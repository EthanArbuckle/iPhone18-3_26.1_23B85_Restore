uint64_t sub_100035AE4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001616C;

  return sub_1000281C0(v0);
}

uint64_t sub_100035B74()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001616C;

  return sub_100025B28(v0);
}

uint64_t sub_100035C04()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001616C;

  return sub_100027A0C(v0);
}

uint64_t sub_100035C94(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000F540;

  return sub_10001FFC0(a1, v1);
}

uint64_t sub_100035D2C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100035D6C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10001616C;

  return sub_10002012C(v2, v3);
}

uint64_t sub_100035E04(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001616C;

  return sub_100033410(a1, v1);
}

uint64_t sub_100035EA0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003958(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100035F08(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000177D4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100035F5C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001616C;

  return sub_100026058(v0);
}

uint64_t sub_100035FEC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003602C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001616C;

  return sub_1000318BC(a1, v4, v5, v6);
}

uint64_t sub_1000360E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001616C;

  return sub_100019EBC();
}

uint64_t sub_10003617C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001616C;

  return sub_10001AB40();
}

uint64_t sub_100036218()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001616C;

  return sub_10001B180();
}

uint64_t sub_1000362B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001616C;

  return sub_10001B8B0();
}

uint64_t sub_100036380(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 16));
  a2(*(v3 + 32));

  return _swift_deallocObject(v3, a3, 7);
}

uint64_t sub_1000363E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001616C;

  return sub_10002D308(a1, v4, v5, v6);
}

uint64_t sub_100036498(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001616C;

  return sub_10002D9C4(a1, v1);
}

uint64_t sub_100036588(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001616C;

  return sub_10002D7F0(a1, v1);
}

uint64_t sub_10003662C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100036654()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003669C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001616C;

  return sub_10002F100(v2, v3, v4);
}

uint64_t sub_100036754()
{
  v1 = sub_100003958(&qword_100087E78, &qword_100063A20);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100036824(double a1, double a2, double a3)
{
  v7 = *(*(sub_100003958(&qword_100087E78, &qword_100063A20) - 8) + 80);
  v8 = *(v3 + 16);

  return sub_100030700(v8, a1, a2, a3);
}

uint64_t sub_1000368BC()
{
  v1 = sub_100003958(&qword_100087E78, &qword_100063A20);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10003695C(uint64_t a1)
{
  v3 = *(sub_100003958(&qword_100087E78, &qword_100063A20) - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100030968(a1);
}

uint64_t sub_100036A04()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100036AA0()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001616C;

  return sub_10002E9F4(v0 + v3, v4);
}

uint64_t sub_100036BD0(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return _swift_deallocObject(v2, 32, 7);
}

uint64_t sub_100036C28()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10001616C;

  return sub_10002DE8C(v2, v3);
}

uint64_t sub_100036CC0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t getEnumTagSinglePayload for PairingContentViewModel.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PairingContentViewModel.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_100036E80(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100036E94(uint64_t a1, int a2)
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

uint64_t sub_100036EDC(uint64_t result, int a2, int a3)
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

__n128 sub_100036F38(uint64_t a1, uint64_t a2)
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

uint64_t sub_100036F4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_100036F94(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_100036FF8()
{
  result = qword_100087E88;
  if (!qword_100087E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087E88);
  }

  return result;
}

void sub_100037438()
{
  v1 = v0;
  [v0 setDismissalType:3];
  v2 = *&v0[OBJC_IVAR____TtC21FindMyRemoteUIService22SoftwareUpdateProxCard_titleValue];
  v3 = *&v0[OBJC_IVAR____TtC21FindMyRemoteUIService22SoftwareUpdateProxCard_titleValue + 8];
  v4 = String._bridgeToObjectiveC()();
  [v0 setTitle:v4];

  v5 = *&v0[OBJC_IVAR____TtC21FindMyRemoteUIService22SoftwareUpdateProxCard_subtitleValue];
  v6 = *&v0[OBJC_IVAR____TtC21FindMyRemoteUIService22SoftwareUpdateProxCard_subtitleValue + 8];
  v7 = String._bridgeToObjectiveC()();
  [v0 setSubtitle:v7];

  v8 = *&v0[OBJC_IVAR____TtC21FindMyRemoteUIService22SoftwareUpdateProxCard_iconView];
  v9 = sub_100037FE4();
  if (!v9)
  {
    v10 = String._bridgeToObjectiveC()();
    v9 = [objc_opt_self() imageNamed:v10];
  }

  [v8 setImage:v9];

  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [v1 contentView];
  [v11 addSubview:v8];

  v12 = [objc_allocWithZone(UIView) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = objc_opt_self();
  v14 = [v13 systemRedColor];
  [v12 setBackgroundColor:v14];

  v15 = [v12 layer];
  [v15 setCornerRadius:19.0];

  v16 = [v1 contentView];
  [v16 addSubview:v12];

  v17 = [objc_allocWithZone(UILabel) init];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  v18 = [v13 whiteColor];
  [v17 setTextColor:v18];

  [v17 setTextAlignment:1];
  v19 = objc_opt_self();
  v20 = [objc_allocWithZone(NSNumber) initWithInteger:1];
  v21 = [v19 localizedStringFromNumber:v20 numberStyle:0];

  if (!v21)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = String._bridgeToObjectiveC()();
  }

  [v17 setText:v21];

  v66 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleCaption1];
  v22 = [objc_opt_self() fontWithDescriptor:v66 size:25.0];
  [v17 setFont:v22];

  [v12 addSubview:v17];
  v23 = [v1 contentView];
  v24 = [v23 mainContentGuide];

  v65 = objc_opt_self();
  sub_100003958(&unk_1000873B0, &unk_100062B10);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100063BC0;
  v26 = [v8 centerXAnchor];
  v27 = [v24 centerXAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];

  *(v25 + 32) = v28;
  v29 = [v8 centerYAnchor];
  v30 = [v24 centerYAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];

  *(v25 + 40) = v31;
  v32 = [v8 widthAnchor];
  v33 = [v32 constraintEqualToConstant:104.0];

  *(v25 + 48) = v33;
  v34 = [v8 heightAnchor];
  v35 = [v8 widthAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];

  *(v25 + 56) = v36;
  v37 = [v8 topAnchor];
  v38 = [v24 topAnchor];
  v39 = [v37 constraintGreaterThanOrEqualToAnchor:v38];

  *(v25 + 64) = v39;
  v40 = [v8 bottomAnchor];
  v41 = [v24 bottomAnchor];
  v42 = [v40 constraintLessThanOrEqualToAnchor:v41];

  *(v25 + 72) = v42;
  v43 = [v12 topAnchor];
  v44 = [v8 topAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:-11.0];

  *(v25 + 80) = v45;
  v46 = [v12 trailingAnchor];
  v47 = [v8 trailingAnchor];
  v48 = [v46 constraintEqualToAnchor:v47 constant:11.0];

  *(v25 + 88) = v48;
  v49 = [v12 widthAnchor];
  v50 = [v49 constraintEqualToConstant:38.0];

  *(v25 + 96) = v50;
  v51 = [v12 widthAnchor];
  v52 = [v12 heightAnchor];
  v53 = [v51 constraintEqualToAnchor:v52];

  *(v25 + 104) = v53;
  v54 = [v12 centerXAnchor];
  v55 = [v17 centerXAnchor];
  v56 = [v54 constraintEqualToAnchor:v55];

  *(v25 + 112) = v56;
  v57 = [v12 centerYAnchor];
  v58 = [v17 centerYAnchor];
  v59 = [v57 constraintEqualToAnchor:v58];

  *(v25 + 120) = v59;
  v60 = [v17 widthAnchor];
  v61 = [v60 constraintEqualToConstant:38.0];

  *(v25 + 128) = v61;
  v62 = [v17 widthAnchor];
  v63 = [v17 heightAnchor];

  v64 = [v62 constraintEqualToAnchor:v63];
  *(v25 + 136) = v64;
  sub_1000062C4();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v65 activateConstraints:isa];
}

void sub_100037DB0()
{
  v1 = *&v0[OBJC_IVAR____TtC21FindMyRemoteUIService22SoftwareUpdateProxCard_actionTitleValue];
  v2 = *&v0[OBJC_IVAR____TtC21FindMyRemoteUIService22SoftwareUpdateProxCard_actionTitleValue + 8];
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v4 = String._bridgeToObjectiveC()();
  v8[4] = sub_100037FC4;
  v8[5] = v3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100047684;
  v8[3] = &unk_10007A9D0;
  v5 = _Block_copy(v8);
  v6 = [objc_opt_self() actionWithTitle:v4 style:0 handler:v5];

  _Block_release(v5);

  v7 = [v0 addAction:v6];
}

uint64_t sub_100037F0C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC21FindMyRemoteUIService22SoftwareUpdateProxCard_defaultAction);
    v2 = *(result + OBJC_IVAR____TtC21FindMyRemoteUIService22SoftwareUpdateProxCard_defaultAction + 8);
    v3 = result;

    v1();
  }

  return result;
}

uint64_t sub_100037F8C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100037FCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100037FE4()
{
  v0 = objc_allocWithZone(ISIcon);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithBundleIdentifier:v1];

  v3 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorHomeScreen];
  v4 = [v2 prepareImageForDescriptor:v3];
  if (!v4)
  {

    return 0;
  }

  v5 = v4;
  result = [v4 CGImage];
  if (result)
  {
    v7 = result;
    [v5 scale];
    v9 = [objc_allocWithZone(UIImage) initWithCGImage:v7 scale:0 orientation:v8];

    return v9;
  }

  __break(1u);
  return result;
}

id sub_10003813C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC21FindMyRemoteUIService31AirTagLinkingUserViewController_imageView;
  v5 = objc_allocWithZone(UIImageView);
  v6 = v2;
  *&v3[v4] = [v5 init];
  v7 = OBJC_IVAR____TtC21FindMyRemoteUIService31AirTagLinkingUserViewController_idLabel;
  v8 = [objc_allocWithZone(UILabel) init];
  v9 = objc_opt_self();
  v10 = [v9 preferredFontForTextStyle:UIFontTextStyleBody];
  [v8 setFont:v10];

  [v8 setTextAlignment:1];
  [v8 setNumberOfLines:0];
  *&v6[v7] = v8;
  v11 = OBJC_IVAR____TtC21FindMyRemoteUIService31AirTagLinkingUserViewController_infoLabel;
  v12 = [objc_allocWithZone(UILabel) init];
  v13 = [v9 preferredFontForTextStyle:UIFontTextStyleBody];
  [v12 setFont:v13];

  [v12 setTextAlignment:1];
  [v12 setNumberOfLines:0];
  *&v6[v11] = v12;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000054DC(v14, qword_10008C038);
  v15 = v6;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v18 = 136315394;
    *(v18 + 4) = sub_10005B0A0(0xD000000000000010, 0x800000010005EF40, &v28);
    *(v18 + 12) = 2080;
    swift_getObjectType();

    sub_100003958(&qword_100087F28, "hA");
    v19 = String.init<A>(describing:)();
    v21 = sub_10005B0A0(v19, v20, &v28);

    *(v18 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s %s", v18, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v22 = &v15[OBJC_IVAR____TtC21FindMyRemoteUIService31AirTagLinkingUserViewController_viewModel];
  *v22 = a1;
  *(v22 + 1) = a2;
  v29.receiver = v15;
  v29.super_class = ObjectType;
  swift_unknownObjectRetain();
  v23 = objc_msgSendSuper2(&v29, "initWithContentView:", 0);
  sub_100038780();
  sub_100038F14();

  swift_unknownObjectRelease();
  return v23;
}

id sub_1000384C8()
{
  ObjectType = swift_getObjectType();
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000054DC(v2, qword_10008C038);
  v3 = v0;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_10005B0A0(0x74696E696564, 0xE600000000000000, &v11);
    *(v6 + 12) = 2080;
    swift_getObjectType();
    sub_100003958(&qword_100087F28, "hA");
    v7 = String.init<A>(describing:)();
    v9 = sub_10005B0A0(v7, v8, &v11);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v12.receiver = v3;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, "dealloc");
}

void sub_100038780()
{
  v1 = v0;
  [v0 setDismissalType:1];
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v60._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0x474E494B4E494CLL;
  v4._object = 0xE700000000000000;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v60._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v60);

  v6 = String._bridgeToObjectiveC()();

  [v1 setTitle:v6];

  v7 = *&v1[OBJC_IVAR____TtC21FindMyRemoteUIService31AirTagLinkingUserViewController_infoLabel];
  v8 = [v2 mainBundle];
  v61._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0x5F474E494B4E494CLL;
  v9._object = 0xEF474E494E524157;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v61._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v61);

  v11 = String._bridgeToObjectiveC()();

  [v7 setText:v11];

  v12 = *&v1[OBJC_IVAR____TtC21FindMyRemoteUIService31AirTagLinkingUserViewController_imageView];
  v13 = *&v1[OBJC_IVAR____TtC21FindMyRemoteUIService31AirTagLinkingUserViewController_viewModel];
  v14 = sub_1000391C8();
  v15 = *(v14 + 40);
  v16 = type metadata accessor for AirTagLinkingUserViewModel();
  v17 = v15(v16, v14);
  [v12 setImage:v17];

  v18 = *&v1[OBJC_IVAR____TtC21FindMyRemoteUIService31AirTagLinkingUserViewController_idLabel];
  v19 = (*(v14 + 48))(v16, v14);
  [v18 setAttributedText:v19];

  v20 = [v1 contentView];
  [v20 addSubview:v12];

  v21 = [v1 contentView];
  [v21 addSubview:v18];

  v22 = [v1 contentView];
  [v22 addSubview:v7];

  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v23 = [v1 contentView];
  v24 = [v23 mainContentGuide];

  v57 = objc_opt_self();
  sub_100003958(&unk_1000873B0, &unk_100062B10);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100063C10;
  v26 = [v12 widthAnchor];
  v27 = [v26 constraintEqualToConstant:80.0];

  *(v25 + 32) = v27;
  v28 = [v12 heightAnchor];
  v29 = [v28 constraintEqualToConstant:80.0];

  *(v25 + 40) = v29;
  v30 = [v12 topAnchor];
  v31 = [v24 topAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];

  *(v25 + 48) = v32;
  v33 = [v12 centerXAnchor];
  v34 = [v24 centerXAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];

  *(v25 + 56) = v35;
  v36 = [v18 topAnchor];
  v37 = [v12 bottomAnchor];
  v38 = [v36 constraintEqualToAnchor:v37 constant:10.0];

  *(v25 + 64) = v38;
  v39 = [v18 leadingAnchor];
  v40 = [v24 leadingAnchor];
  v41 = [v39 constraintEqualToAnchor:v40];

  *(v25 + 72) = v41;
  v42 = [v18 trailingAnchor];
  v43 = [v24 trailingAnchor];
  v44 = [v42 constraintEqualToAnchor:v43];

  *(v25 + 80) = v44;
  v45 = [v7 topAnchor];
  v46 = [v18 bottomAnchor];
  v47 = [v45 constraintEqualToAnchor:v46 constant:20.0];

  *(v25 + 88) = v47;
  v48 = [v7 leadingAnchor];
  v49 = [v24 leadingAnchor];
  v50 = [v48 constraintEqualToAnchor:v49];

  *(v25 + 96) = v50;
  v51 = [v7 trailingAnchor];
  v52 = [v24 trailingAnchor];
  v53 = [v51 constraintEqualToAnchor:v52];

  *(v25 + 104) = v53;
  v54 = [v7 bottomAnchor];
  v55 = [v24 bottomAnchor];
  v56 = [v54 constraintEqualToAnchor:v55 constant:-10.0];

  *(v25 + 112) = v56;
  sub_1000062C4();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v57 activateConstraints:isa];
}

void sub_100038F14()
{
  v1 = [objc_opt_self() mainBundle];
  v10._object = 0xE000000000000000;
  v2._object = 0x80000001000603C0;
  v2._countAndFlagsBits = 0xD000000000000014;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v10);

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v5 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_1000391A8;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100047684;
  aBlock[3] = &unk_10007AA20;
  v6 = _Block_copy(aBlock);
  v7 = [objc_opt_self() actionWithTitle:v5 style:0 handler:v6];

  _Block_release(v6);

  v8 = [v0 addAction:v7];
}

uint64_t sub_1000390D4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC21FindMyRemoteUIService31AirTagLinkingUserViewController_viewModel);
    v2 = result;
    swift_unknownObjectRetain();

    v3 = sub_1000391C8();
    v4 = *(v3 + 56);
    v5 = type metadata accessor for AirTagLinkingUserViewModel();
    v4(v5, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100039170()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000391B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000391C8()
{
  result = qword_100087E08;
  if (!qword_100087E08)
  {
    type metadata accessor for AirTagLinkingUserViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087E08);
  }

  return result;
}

uint64_t sub_100039220(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100039240, 0, 0);
}

uint64_t sub_100039240()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 128);
  *v2 = *(v1 + 120);
  v2[1] = v3;
  v5 = v0[1];

  return v5();
}

uint64_t sub_1000392B0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1000392D0, 0, 0);
}

uint64_t sub_1000392D0()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 144);
  *v2 = *(v1 + 136);
  v2[1] = v3;
  v5 = v0[1];

  return v5();
}

uint64_t sub_100039340(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100039360, 0, 0);
}

uint64_t sub_100039360()
{
  v1 = *(*(v0 + 24) + 112);
  **(v0 + 16) = v1;
  v4 = *(v0 + 8);
  v2 = v1;

  return v4();
}

uint64_t sub_1000393D0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1000393EC, a2, 0);
}

uint64_t sub_1000393EC()
{
  v1 = *(v0 + 24);
  sub_100039478();
  *(v0 + 32) = v2;

  return _swift_task_switch(sub_100039458, 0, 0);
}

double sub_100039478()
{
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v52._object = 0xE000000000000000;
  v3._countAndFlagsBits = 0x5F45534943455250;
  v3._object = 0xEF474E49444E4946;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v52._countAndFlagsBits = 0;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v52);

  v6 = [v1 mainBundle];
  v53._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0xD000000000000018;
  v7._object = 0x80000001000604A0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v53._countAndFlagsBits = 0;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v53);

  v10 = objc_opt_self();
  v51 = [v10 systemBlueColor];
  v11.super.isa = [v1 mainBundle];
  v54._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0x49415F4552414853;
  v12._object = 0xEC00000047415452;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v54._countAndFlagsBits = 0;
  v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v54);

  v15 = [v1 mainBundle];
  v16 = 0xD000000000000015;
  v55._object = 0xE000000000000000;
  v17._object = 0x80000001000604E0;
  v17._countAndFlagsBits = 0xD000000000000015;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v55._countAndFlagsBits = 0;
  v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v15, v18, v55);

  v49 = v10;
  v50 = [v10 systemBlueColor];
  LOBYTE(v11.super.isa) = *(v0 + 168);
  v20 = [v1 mainBundle];
  if (v11.super.isa)
  {
    v56._object = 0xE000000000000000;
    v21._countAndFlagsBits = 0x49505F4843544157;
    v21._object = 0xEA0000000000474ELL;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    v56._countAndFlagsBits = 0;
    v23 = NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v20, v22, v56);
    countAndFlagsBits = v23._countAndFlagsBits;
    object = v23._object;

    v26 = [v1 mainBundle];
    v57._object = 0xE000000000000000;
    v27._object = 0x8000000100060520;
    v27._countAndFlagsBits = 0xD000000000000013;
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    v57._countAndFlagsBits = 0;
    v29 = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, 0, v26, v28, v57);
    v30 = v29._countAndFlagsBits;
    v31 = v29._object;
    v32 = "WATCH_PING_SUBTITLE";
  }

  else
  {
    v58._object = 0xE000000000000000;
    v33._countAndFlagsBits = 0x554F535F59414C50;
    v33._object = 0xEA0000000000444ELL;
    v34._countAndFlagsBits = 0;
    v34._object = 0xE000000000000000;
    v58._countAndFlagsBits = 0;
    v35 = NSLocalizedString(_:tableName:bundle:value:comment:)(v33, 0, v20, v34, v58);
    object = v35._object;

    v36 = 0x8000000100060560;
    v37 = objc_opt_self();
    v38 = String._bridgeToObjectiveC()();
    v39 = [v37 modelSpecificLocalizedStringKeyForKey:v38];

    countAndFlagsBits = v35._countAndFlagsBits;
    if (v39)
    {
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v41;
    }

    else
    {
      v40 = 0xD000000000000013;
    }

    v26 = [v1 mainBundle];
    v59._object = 0xE000000000000000;
    v42._countAndFlagsBits = v40;
    v42._object = v36;
    v43._countAndFlagsBits = 0;
    v43._object = 0xE000000000000000;
    v59._countAndFlagsBits = 0;
    v44 = NSLocalizedString(_:tableName:bundle:value:comment:)(v42, 0, v26, v43, v59);
    v30 = v44._countAndFlagsBits;
    v31 = v44._object;

    v32 = "PLAY_SOUND_SUBTITLE";
    v16 = 0xD000000000000010;
  }

  v45 = v32 | 0x8000000000000000;
  v46 = [v49 systemBlueColor];
  sub_100003958(&qword_100087FF8, &qword_100063DC8);
  v47 = swift_allocObject();
  *&result = 3;
  *(v47 + 16) = xmmword_100063C70;
  *(v47 + 32) = v5;
  *(v47 + 48) = v9;
  *(v47 + 64) = 0xD000000000000014;
  *(v47 + 72) = 0x80000001000604C0;
  *(v47 + 80) = v51;
  *(v47 + 88) = countAndFlagsBits;
  *(v47 + 96) = object;
  *(v47 + 104) = v30;
  *(v47 + 112) = v31;
  *(v47 + 120) = v16;
  *(v47 + 128) = v45;
  *(v47 + 136) = v46;
  *(v47 + 144) = v14;
  *(v47 + 160) = v19;
  *(v47 + 176) = 0xD000000000000014;
  *(v47 + 184) = 0x8000000100060500;
  *(v47 + 192) = v50;
  return result;
}

uint64_t sub_100039960()
{
  v1 = v0[2];
  v0[3] = *(v1 + 176);
  v0[4] = *(v1 + 184);
  return _swift_task_switch(sub_10000F310, 0, 0);
}

uint64_t sub_1000399AC()
{
  v1 = v0[2];
  v0[3] = *(v1 + 192);
  v0[4] = *(v1 + 200);
  return _swift_task_switch(sub_10003A1DC, 0, 0);
}

uint64_t sub_1000399DC()
{
  v1 = v0[14];
  v2 = v0[16];
  v3 = v0[18];
  v4 = v0[20];

  v5 = v0[23];

  v6 = v0[25];

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100039A78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_100039AC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100039B50()
{

  unsafeFromAsyncTask<A>(_:)();

  return v1;
}

uint64_t sub_100039BA4()
{

  sub_100003958(&qword_100088000, &qword_100063DE0);
  unsafeFromAsyncTask<A>(_:)();

  return v1;
}

uint64_t sub_100039C0C()
{

  sub_100003958(&qword_100087FF0, &qword_100063DC0);
  unsafeFromAsyncTask<A>(_:)();

  return v1;
}

uint64_t sub_100039CA4()
{

  unsafeFromAsyncTask<A>(_:)();
}

unint64_t sub_100039CF8(uint64_t a1)
{
  result = sub_100039D20();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100039D20()
{
  result = qword_100087FE8;
  if (!qword_100087FE8)
  {
    type metadata accessor for AirTagPairingSuccessViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087FE8);
  }

  return result;
}

uint64_t sub_100039D74(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001616C;

  return sub_100039990(a1, v1);
}

uint64_t sub_100039E10(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000F540;

  return sub_100039944(a1, v1);
}

uint64_t sub_100039EAC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001616C;

  return sub_1000393D0(a1, v1);
}

uint64_t sub_100039F48(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001616C;

  return sub_100039340(a1, v1);
}

uint64_t sub_100039FE4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001616C;

  return sub_1000392B0(a1, v1);
}

uint64_t sub_10003A080(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001616C;

  return sub_100039220(a1, v1);
}

__n128 sub_10003A11C(uint64_t a1, uint64_t a2)
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

uint64_t sub_10003A138(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10003A180(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

Swift::Int sub_10003A1E0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 99;
  }

  else
  {
    v2 = 0;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_10003A230()
{
  if (*v0)
  {
    v1 = 99;
  }

  else
  {
    v1 = 0;
  }

  Hasher._combine(_:)(v1);
}

Swift::Int sub_10003A268()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 99;
  }

  else
  {
    v2 = 0;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void *sub_10003A2B4@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 99)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

void sub_10003A2D4(uint64_t *a1@<X8>)
{
  v2 = 99;
  if (!*v1)
  {
    v2 = 0;
  }

  *a1 = v2;
}

uint64_t sub_10003A2EC()
{
  v1[3] = v0;
  v2 = type metadata accessor for AirTagPairing2.AssetRequest();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = *(*(sub_100003958(&qword_1000880B8, &qword_100063FD0) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v6 = type metadata accessor for AirTagHardwareModel();
  v1[8] = v6;
  v7 = *(v6 - 8);
  v1[9] = v7;
  v8 = *(v7 + 64) + 15;
  v1[10] = swift_task_alloc();
  v9 = type metadata accessor for AirTagPairing2.Configuration();
  v1[11] = v9;
  v10 = *(v9 - 8);
  v1[12] = v10;
  v11 = *(v10 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v12 = type metadata accessor for AirTagPairing2.Configuration.Color();
  v1[15] = v12;
  v13 = *(v12 - 8);
  v1[16] = v13;
  v14 = *(v13 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return _swift_task_switch(sub_10003A510, v0, 0);
}

uint64_t sub_10003A510()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[14];
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[8];
  v9 = v0[3];
  v10 = &enum case for AirTagPairing2.Configuration.Color.hermes(_:);
  if (!*(v9 + 112))
  {
    v10 = &enum case for AirTagPairing2.Configuration.Color.white(_:);
  }

  (*(v0[16] + 104))(v0[18], *v10, v0[15]);
  (*(v7 + 104))(v6, enum case for AirTagHardwareModel.original(_:), v8);
  (*(v4 + 16))(v1, v2, v3);
  AirTagPairing2.Configuration.init(hardwareModel:color:timeout:)();
  v11 = *(v9 + 128);
  if (v11 >> 60 != 15)
  {
    v12 = v0[14];
    v13 = v0[7];
    v14 = *(v0[3] + 120);
    sub_100014C90(v14, *(v9 + 128));
    sub_100014CA4(v14, v11);
    PersonalizationAssetManager.PrePairingAssetInfo.init(scannedBluetoothData:)();
    v15 = enum case for PersonalizationAssetManager.AssetInfo.prePairing(_:);
    v16 = type metadata accessor for PersonalizationAssetManager.AssetInfo();
    v17 = *(v16 - 8);
    (*(v17 + 104))(v13, v15, v16);
    (*(v17 + 56))(v13, 0, 1, v16);
    AirTagPairing2.Configuration.personalizationAssetInfo.setter();
    sub_100014CF8(v14, v11);
  }

  v18 = v0[6];
  (*(v0[12] + 16))(v0[13], v0[14], v0[11]);
  AirTagPairing2.AssetRequest.init(configuration:)();
  v19 = async function pointer to AirTagPairing2.AssetRequest.assets()[1];
  v20 = swift_task_alloc();
  v0[19] = v20;
  *v20 = v0;
  v20[1] = sub_10003A774;
  v21 = v0[6];

  return AirTagPairing2.AssetRequest.assets()();
}

uint64_t sub_10003A774(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *v2;
  *(v4 + 160) = a1;
  *(v4 + 168) = v1;

  v7 = *(v3 + 24);
  if (v1)
  {
    v8 = sub_10003AB78;
  }

  else
  {
    v8 = sub_10003A8A8;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_10003A8A8()
{
  v40 = v0;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = type metadata accessor for Logger();
  sub_1000054DC(v2, qword_10008C038);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[20];
    v6 = v0[16];
    v36 = v0[15];
    v37 = v0[18];
    v7 = v0[12];
    v34 = v0[11];
    v35 = v0[14];
    v8 = v0[5];
    v32 = v0[4];
    v33 = v0[6];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v39 = v10;
    *v9 = 136315138;
    v0[2] = v5;
    type metadata accessor for AirTagPairing2.Assets();

    v11 = String.init<A>(describing:)();
    v13 = sub_10005B0A0(v11, v12, &v39);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "Got assets %s.", v9, 0xCu);
    sub_10000A5C4(v10);

    (*(v8 + 8))(v33, v32);
    (*(v7 + 8))(v35, v34);
    (*(v6 + 8))(v37, v36);
  }

  else
  {
    v38 = v0[18];
    v14 = v0[15];
    v15 = v0[16];
    v16 = v0[14];
    v17 = v0[11];
    v18 = v0[12];
    v19 = v0[5];
    v20 = v0[6];
    v21 = v0[4];

    (*(v19 + 8))(v20, v21);
    (*(v18 + 8))(v16, v17);
    (*(v15 + 8))(v38, v14);
  }

  v23 = v0[17];
  v22 = v0[18];
  v25 = v0[13];
  v24 = v0[14];
  v26 = v0[10];
  v28 = v0[6];
  v27 = v0[7];

  v29 = v0[1];
  v30 = v0[20];

  return v29(v30);
}

uint64_t sub_10003AB78()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[11];
  v8 = v0[12];
  v12 = v0[10];
  v13 = v0[7];
  (*(v0[5] + 8))(v0[6], v0[4]);
  (*(v8 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);

  v9 = v0[1];
  v10 = v0[21];

  return v9();
}

uint64_t sub_10003AC90()
{
  sub_100014CF8(*(v0 + 120), *(v0 + 128));
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10003ACEC(uint64_t a1)
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

uint64_t sub_10003AD08(uint64_t a1)
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

__n128 sub_10003AD30(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10003AD44(unsigned __int8 *a1, unsigned int a2)
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
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10003AD88(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10003AE00()
{
  result = qword_1000880C0;
  if (!qword_1000880C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000880C0);
  }

  return result;
}

id sub_10003AFA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AirTagAnnotationView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10003B020(void *a1, uint64_t a2, SEL *a3)
{
  v5 = objc_opt_self();
  v6 = a1;
  v7 = [v5 *a3];
  v8 = [v6 traitCollection];
  v9 = [v7 resolvedColorWithTraitCollection:v8];

  return v9;
}

unint64_t sub_10003B1B0()
{
  result = qword_100088158;
  if (!qword_100088158)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100088158);
  }

  return result;
}

id sub_10003B1FC()
{
  v0 = [objc_allocWithZone(UIImageView) init];
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() imageNamed:v1];

  if (v2)
  {
    v3 = [objc_opt_self() mainScreen];
    [v3 scale];
    v5 = v4;

    v6 = [v2 _applicationIconImageForFormat:2 precomposed:1 scale:v5];
  }

  else
  {
    v6 = 0;
  }

  [v0 setImage:v6];

  return v0;
}

id sub_10003B31C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC21FindMyRemoteUIService24AirTagHSA2ViewController_lockImageView;
  v8 = v2;
  *&v3[v7] = sub_10003B1FC();
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000054DC(v9, qword_10008C038);
  v10 = v8;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = sub_10005B0A0(0xD000000000000010, 0x800000010005EF40, &v20);
    *(v13 + 12) = 2080;
    swift_getObjectType();

    sub_100003958(&qword_100088198, &unk_100064100);
    v14 = String.init<A>(describing:)();
    v16 = sub_10005B0A0(v14, v15, &v20);

    *(v13 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v17 = &v10[OBJC_IVAR____TtC21FindMyRemoteUIService24AirTagHSA2ViewController_viewModel];
  *v17 = a1;
  *(v17 + 1) = a2;
  v21.receiver = v10;
  v21.super_class = ObjectType;
  swift_unknownObjectRetain();
  v18 = objc_msgSendSuper2(&v21, "initWithContentView:", 0);
  sub_10003B810();
  sub_10003BCAC();

  swift_unknownObjectRelease();
  return v18;
}

id sub_10003B578()
{
  ObjectType = swift_getObjectType();
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000054DC(v2, qword_10008C038);
  v3 = v0;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_10005B0A0(0x74696E696564, 0xE600000000000000, &v11);
    *(v6 + 12) = 2080;
    swift_getObjectType();
    sub_100003958(&qword_100088198, &unk_100064100);
    v7 = String.init<A>(describing:)();
    v9 = sub_10005B0A0(v7, v8, &v11);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v12.receiver = v3;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, "dealloc");
}

void sub_10003B810()
{
  v1 = v0;
  [v0 setDismissalType:1];
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v35._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0x5449545F32415348;
  v4._object = 0xEA0000000000454CLL;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v35._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v35);

  v6 = String._bridgeToObjectiveC()();

  [v1 setTitle:v6];

  v7 = [v2 mainBundle];
  v36._object = 0xE000000000000000;
  v8._countAndFlagsBits = 0x53454D5F32415348;
  v8._object = 0xEC00000045474153;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v36._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v36);

  v10 = String._bridgeToObjectiveC()();

  [v1 setSubtitle:v10];

  v11 = *&v1[OBJC_IVAR____TtC21FindMyRemoteUIService24AirTagHSA2ViewController_lockImageView];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [v1 contentView];
  [v12 addSubview:v11];

  v13 = [v1 contentView];
  v14 = [v13 mainContentGuide];

  v15 = objc_opt_self();
  sub_100003958(&unk_1000873B0, &unk_100062B10);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100062420;
  v17 = [v11 centerXAnchor];
  v18 = [v14 centerXAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v16 + 32) = v19;
  v20 = [v11 centerYAnchor];
  v21 = [v14 centerYAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(v16 + 40) = v22;
  v23 = [v11 widthAnchor];
  v24 = [v23 constraintEqualToConstant:76.0];

  *(v16 + 48) = v24;
  v25 = [v11 heightAnchor];
  v26 = [v25 constraintEqualToConstant:76.0];

  *(v16 + 56) = v26;
  v27 = [v11 topAnchor];
  v28 = [v14 topAnchor];
  v29 = [v27 constraintGreaterThanOrEqualToAnchor:v28];

  *(v16 + 64) = v29;
  v30 = [v11 bottomAnchor];
  v31 = [v14 bottomAnchor];
  v32 = [v30 constraintLessThanOrEqualToAnchor:v31];

  *(v16 + 72) = v32;
  sub_1000062C4();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v15 activateConstraints:isa];
}

void sub_10003BCAC()
{
  v1 = [objc_opt_self() mainBundle];
  v10._object = 0xE000000000000000;
  v2._object = 0x8000000100060700;
  v2._countAndFlagsBits = 0xD000000000000015;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v10._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v10);

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v5 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_10003BF40;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100047684;
  aBlock[3] = &unk_10007AD18;
  v6 = _Block_copy(aBlock);
  v7 = [objc_opt_self() actionWithTitle:v5 style:0 handler:v6];

  _Block_release(v6);

  v8 = [v0 addAction:v7];
}

uint64_t sub_10003BE6C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC21FindMyRemoteUIService24AirTagHSA2ViewController_viewModel);
    v2 = result;
    swift_unknownObjectRetain();

    v3 = sub_10003BF60();
    v4 = *(v3 + 40);
    v5 = type metadata accessor for AirTagHSA2ViewModel();
    v4(v5, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10003BF08()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003BF48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10003BF60()
{
  result = qword_1000881A0;
  if (!qword_1000881A0)
  {
    type metadata accessor for AirTagHSA2ViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000881A0);
  }

  return result;
}

void sub_10003C1A4()
{
  v1 = *&v0[OBJC_IVAR____TtC21FindMyRemoteUIService30FMSymbolBulletedListHeaderView_titleLabel];
  [v0 addSubview:v1];
  v2 = *&v0[OBJC_IVAR____TtC21FindMyRemoteUIService30FMSymbolBulletedListHeaderView_separatorView];
  [v0 addSubview:v2];
  v3 = objc_opt_self();
  v4 = [v3 separatorColor];
  [v2 setBackgroundColor:v4];

  [v1 setAdjustsFontForContentSizeCategory:1];
  [v1 setNumberOfLines:0];
  v5 = [v3 secondaryLabelColor];
  [v1 setTextColor:v5];

  v6 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption1];
  [v1 setFont:v6];
}

void sub_10003C300()
{
  sub_100003958(&unk_1000873B0, &unk_100062B10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100064110;
  v2 = *&v0[OBJC_IVAR____TtC21FindMyRemoteUIService30FMSymbolBulletedListHeaderView_titleLabel];
  *(inited + 32) = v2;
  v3 = *&v0[OBJC_IVAR____TtC21FindMyRemoteUIService30FMSymbolBulletedListHeaderView_separatorView];
  *(inited + 40) = v3;
  v4 = v2;
  v5 = v3;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_9;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

  for (i = v4; ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v7 = i;
    [i setTranslatesAutoresizingMaskIntoConstraints:0];

    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v8 = *(inited + 40);
      goto LABEL_7;
    }

LABEL_8:
    __break(1u);
LABEL_9:
    ;
  }

  v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_7:
  v9 = v8;
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  swift_setDeallocating();
  v10 = *(inited + 16);
  swift_arrayDestroy();
  v41 = objc_opt_self();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100062A50;
  v12 = [v4 leadingAnchor];
  v13 = [v0 leadingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  *(v11 + 32) = v14;
  v15 = [v4 trailingAnchor];
  v16 = [v0 trailingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  *(v11 + 40) = v17;
  v18 = [v4 topAnchor];
  v19 = [v0 topAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  *(v11 + 48) = v20;
  sub_1000062C4();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v41 activateConstraints:isa];

  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100064120;
  v23 = [v5 leadingAnchor];
  v24 = [v0 leadingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  *(v22 + 32) = v25;
  v26 = [v5 trailingAnchor];
  v27 = [v0 trailingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];

  *(v22 + 40) = v28;
  v29 = [v5 heightAnchor];
  v30 = [objc_opt_self() mainScreen];
  [v30 scale];
  v32 = v31;

  v33 = [v29 constraintEqualToConstant:1.0 / v32];
  *(v22 + 48) = v33;
  v34 = [v5 topAnchor];
  v35 = [v4 lastBaselineAnchor];
  v36 = [v34 constraintEqualToAnchor:v35 constant:6.0];

  *(v22 + 56) = v36;
  v37 = [v5 bottomAnchor];
  v38 = [v0 bottomAnchor];
  v39 = [v37 constraintEqualToAnchor:v38];

  *(v22 + 64) = v39;
  v40 = Array._bridgeToObjectiveC()().super.isa;

  [v41 activateConstraints:v40];
}

id sub_10003C864()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMSymbolBulletedListHeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10003C908(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10003C928, 0, 0);
}

uint64_t sub_10003C928()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 120);
  *v2 = *(v1 + 112);
  v2[1] = v3;
  v5 = v0[1];

  return v5();
}

uint64_t sub_10003C998()
{
  v1 = v0[15];
  v3 = v0[17];
  v2 = v0[18];

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

__n128 sub_10003CA18(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10003CA2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_10003CA74(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_10003CACC()
{

  unsafeFromAsyncTask<A>(_:)();

  return v1;
}

uint64_t sub_10003CB2C(uint64_t a1)
{
  result = sub_10003CBB4(&qword_100088288);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10003CB70(uint64_t a1)
{
  result = sub_10003CBB4(&qword_100088290);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10003CBB4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AirTagLoadingViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10003CBF4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000F540;

  return sub_10003C908(a1, v1);
}

id sub_10003CC90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC21FindMyRemoteUIService27AirTagAppleIDViewController_lockImageView;
  v8 = objc_allocWithZone(UIImageView);
  v9 = v2;
  *&v3[v7] = [v8 init];
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000054DC(v10, qword_10008C038);
  v11 = v9;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = sub_10005B0A0(0xD000000000000010, 0x800000010005EF40, &v21);
    *(v14 + 12) = 2080;
    swift_getObjectType();

    sub_100003958(&qword_1000882D0, "2<");
    v15 = String.init<A>(describing:)();
    v17 = sub_10005B0A0(v15, v16, &v21);

    *(v14 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s %s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v18 = &v11[OBJC_IVAR____TtC21FindMyRemoteUIService27AirTagAppleIDViewController_viewModel];
  *v18 = a1;
  *(v18 + 1) = a2;
  v22.receiver = v11;
  v22.super_class = ObjectType;
  swift_unknownObjectRetain();
  v19 = objc_msgSendSuper2(&v22, "initWithContentView:", 0);
  sub_10003D1A0();
  sub_10003D614();

  swift_unknownObjectRelease();
  return v19;
}

id sub_10003CF08()
{
  ObjectType = swift_getObjectType();
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000054DC(v2, qword_10008C038);
  v3 = v0;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_10005B0A0(0x74696E696564, 0xE600000000000000, &v11);
    *(v6 + 12) = 2080;
    swift_getObjectType();
    sub_100003958(&qword_1000882D0, "2<");
    v7 = String.init<A>(describing:)();
    v9 = sub_10005B0A0(v7, v8, &v11);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v12.receiver = v3;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, "dealloc");
}

void sub_10003D1A0()
{
  v1 = v0;
  [v0 setDismissalType:1];
  v2 = &v0[OBJC_IVAR____TtC21FindMyRemoteUIService27AirTagAppleIDViewController_viewModel];
  v3 = *&v0[OBJC_IVAR____TtC21FindMyRemoteUIService27AirTagAppleIDViewController_viewModel];
  v4 = *(v2 + 1);
  ObjectType = swift_getObjectType();
  v4[2](ObjectType, v4);
  v6 = String._bridgeToObjectiveC()();

  [v1 setTitle:v6];

  v4[3](ObjectType, v4);
  v7 = String._bridgeToObjectiveC()();

  [v1 setSubtitle:v7];

  v8 = *&v1[OBJC_IVAR____TtC21FindMyRemoteUIService27AirTagAppleIDViewController_lockImageView];
  v4[4](ObjectType, v4);
  v9 = String._bridgeToObjectiveC()();

  v10 = [objc_opt_self() imageNamed:v9];

  if (v10)
  {
    v11 = [objc_opt_self() mainScreen];
    [v11 scale];
    v13 = v12;

    v14 = [v10 _applicationIconImageForFormat:2 precomposed:0 scale:v13];
  }

  else
  {
    v14 = 0;
  }

  [v8 setImage:v14];

  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = [v1 contentView];
  [v15 addSubview:v8];

  v16 = [v1 contentView];
  v17 = [v16 mainContentGuide];

  v18 = objc_opt_self();
  sub_100003958(&unk_1000873B0, &unk_100062B10);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100062AB0;
  v20 = [v8 centerXAnchor];
  v21 = [v17 centerXAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(v19 + 32) = v22;
  v23 = [v8 centerYAnchor];
  v24 = [v17 centerYAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  *(v19 + 40) = v25;
  v26 = [v8 topAnchor];
  v27 = [v17 topAnchor];
  v28 = [v26 constraintGreaterThanOrEqualToAnchor:v27];

  *(v19 + 48) = v28;
  v29 = [v8 bottomAnchor];
  v30 = [v17 bottomAnchor];
  v31 = [v29 constraintLessThanOrEqualToAnchor:v30];

  *(v19 + 56) = v31;
  sub_1000062C4();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v18 activateConstraints:isa];
}

void sub_10003D614()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC21FindMyRemoteUIService27AirTagAppleIDViewController_viewModel + 8];
  v3 = *&v0[OBJC_IVAR____TtC21FindMyRemoteUIService27AirTagAppleIDViewController_viewModel];
  ObjectType = swift_getObjectType();
  (*(v2 + 40))(ObjectType, v2);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v6 = String._bridgeToObjectiveC()();

  v10[4] = sub_10003D874;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100047684;
  v10[3] = &unk_10007AE28;
  v7 = _Block_copy(v10);
  v8 = [objc_opt_self() actionWithTitle:v6 style:0 handler:v7];

  _Block_release(v7);

  v9 = [v1 addAction:v8];
}

uint64_t sub_10003D7A4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(result + OBJC_IVAR____TtC21FindMyRemoteUIService27AirTagAppleIDViewController_viewModel);
    v1 = *(result + OBJC_IVAR____TtC21FindMyRemoteUIService27AirTagAppleIDViewController_viewModel + 8);
    v3 = result;
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    (*(v1 + 48))(ObjectType, v1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10003D83C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003D87C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10003D894(double a1, double a2, double a3, double a4)
{
  v8 = String._bridgeToObjectiveC()();
  type metadata accessor for Key(0);
  sub_100004E0C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [v8 drawInRect:isa withAttributes:{a1, a2, a3, a4}];
}

void sub_10003D960(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

int64_t sub_10003D9AC()
{
  v1 = v0;
  result = [v0 CGImage];
  if (result)
  {
    v3 = result;
    v4 = [v0 CGImage];
    if (!v4)
    {
      goto LABEL_36;
    }

    v5 = v4;
    Height = CGImageGetHeight(v4);
    Width = CGImageGetWidth(v5);
    result = CGImageGetBytesPerRow(v5);
    if ((result * Height) >> 64 != (result * Height) >> 63)
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v8 = result;
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v10 = swift_slowAlloc();
    BitsPerComponent = CGImageGetBitsPerComponent(v5);
    v12 = sub_10003E2F8(v10, Width, Height, BitsPerComponent, v8, DeviceRGB);

    if (!v12)
    {
      goto LABEL_36;
    }

    v13 = CGImageGetHeight(v3);
    v14 = CGImageGetWidth(v3);
    v15 = v14;
    CGContextRef.draw(_:in:byTiling:)();
    v16 = CGImageGetDataProvider(v3);
    if (v16)
    {
      v17 = v16;
      v18 = CGDataProviderCopyData(v16);
      if (v18)
      {
        v19 = v18;
        result = CFDataGetBytePtr(v18);
        if (!result)
        {
LABEL_53:
          __break(1u);
          return result;
        }

        if ((v13 & 0x8000000000000000) != 0)
        {
          goto LABEL_49;
        }

        if (v13)
        {
          if (v14 < 0)
          {
LABEL_52:
            __break(1u);
            goto LABEL_53;
          }

          v20 = 0;
          v21 = 0;
          v22 = 0;
          v23 = v13;
          v24 = v14;
          while (!v14)
          {
LABEL_12:
            if (++v22 == v13)
            {
              v15 = v24;
              v14 = v24;
              goto LABEL_40;
            }
          }

          v25 = v14 * v22;
          if ((v14 * v22) >> 64 == (v14 * v22) >> 63)
          {
            v26 = 0;
            while (1)
            {
              v27 = v25 + v26;
              if (__OFADD__(v25, v26))
              {
                break;
              }

              if ((v27 - 0x2000000000000000) >> 62 != 3)
              {
                goto LABEL_46;
              }

              v28 = *(result + 4 * v27);
              if (v26 >= v24)
              {
                v29 = v24;
              }

              else
              {
                v29 = v26;
              }

              if (v21 <= v26)
              {
                v30 = v26;
              }

              else
              {
                v30 = v21;
              }

              v31 = v26 + 1;
              if (v22 >= v23)
              {
                v32 = v23;
              }

              else
              {
                v32 = v22;
              }

              if (v20 <= v22)
              {
                v33 = v22;
              }

              else
              {
                v33 = v20;
              }

              if (v28)
              {
                v20 = v33;
                v21 = v30;
                v23 = v32;
                v24 = v29;
              }

              v26 = v31;
              if (v14 == v31)
              {
                goto LABEL_12;
              }
            }

            __break(1u);
LABEL_46:
            __break(1u);
          }

          __break(1u);
          goto LABEL_48;
        }

        v20 = 0;
        v21 = 0;
        v23 = 0;
LABEL_40:
        v34 = __OFSUB__(v21, v14);
        v35 = v21 - v14;
        if (v34)
        {
          goto LABEL_50;
        }

        v34 = __OFSUB__(v20, v23);
        v36 = v20 - v23;
        if (v34)
        {
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        v41.origin.y = v23;
        v41.size.width = v35;
        v41.size.height = v36;
        v41.origin.x = v15;
        v37 = CGImageCreateWithImageInRect(v3, v41);
        if (v37)
        {
          v38 = v37;
          [v1 scale];
          v40 = [objc_allocWithZone(UIImage) initWithCGImage:v38 scale:objc_msgSend(v1 orientation:{"imageOrientation"), v39}];

          return v40;
        }

        goto LABEL_36;
      }
    }

LABEL_36:
    return 0;
  }

  return result;
}

uint64_t sub_10003DCB4(uint64_t a1, uint64_t a2, double a3)
{
  v6 = a3 * 0.6;
  v7 = [objc_opt_self() systemFontOfSize:a3 * 0.6];
  v8 = a3 - v6;
  v9 = (a3 - v6) * 0.5;
  v10 = [objc_opt_self() sharedApplication];
  v11 = [v10 userInterfaceLayoutDirection];

  if (v11 == 1)
  {
    v12 = -(v8 * 0.5);
  }

  else
  {
    v12 = v9;
  }

  sub_100003958(&qword_100086FC0, &unk_100064E50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000623F0;
  *(inited + 32) = NSFontAttributeName;
  *(inited + 64) = sub_10003E0F4();
  *(inited + 40) = v7;
  v14 = NSFontAttributeName;
  v15 = v7;
  v16 = sub_10004F0A8(inited);
  swift_setDeallocating();
  sub_10003E140(inited + 32);
  v17 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{a3, a3}];
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = v12;
  *(v18 + 40) = v9;
  *(v18 + 48) = a3;
  *(v18 + 56) = a3;
  *(v18 + 64) = v16;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_10003E1E8;
  *(v19 + 24) = v18;
  v34 = sub_10003E20C;
  v35 = v19;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_10003D960;
  v33 = &unk_10007AEA0;
  v20 = _Block_copy(&aBlock);

  v21 = [v17 imageWithActions:v20];
  _Block_release(v20);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if ((v20 & 1) == 0)
  {
    v23 = sub_10003D9AC();
    if (v23)
    {
      v29 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{a3, a3}];
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      *(v24 + 24) = a3;
      *(v24 + 32) = a3;
      v25 = swift_allocObject();
      *(v25 + 16) = sub_10003E284;
      *(v25 + 24) = v24;
      v34 = sub_10003E30C;
      v35 = v25;
      aBlock = _NSConcreteStackBlock;
      v31 = 1107296256;
      v32 = sub_10003D960;
      v33 = &unk_10007AF18;
      v26 = _Block_copy(&aBlock);
      v27 = v15;
      v28 = v23;

      v15 = v29;
      v23 = [v29 imageWithActions:v26];

      _Block_release(v26);
      LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

      if ((v28 & 1) == 0)
      {
        return v23;
      }

      __break(1u);
    }

    return v23;
  }

  __break(1u);
  return result;
}

unint64_t sub_10003E0F4()
{
  result = qword_1000882D8;
  if (!qword_1000882D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000882D8);
  }

  return result;
}

uint64_t sub_10003E140(uint64_t a1)
{
  v2 = sub_100003958(&qword_100086FD0, &unk_100062510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003E1A8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

void sub_10003E1E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 64);
  sub_10003D894(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
}

uint64_t sub_10003E20C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10003E234(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003E24C()
{

  return _swift_deallocObject(v0, 40, 7);
}

id sub_10003E284()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  [v1 size];
  v5 = v4;
  v6 = (v2 - v4) * 0.5;
  v8 = (v3 - v7) * 0.5;

  return [v1 drawInRect:{v6, v8, v5}];
}

uint64_t sub_10003E310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  return _swift_task_switch(sub_10003E330, a2, 0);
}

uint64_t sub_10003E330()
{
  v1 = v0[2];
  v2 = *(v1 + 120);
  v8 = (*(v1 + 112) + **(v1 + 112));
  v3 = *(*(v1 + 112) + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_10003E424;
  v6 = v0[3];
  v5 = v0[4];

  return v8(v6, v5);
}

uint64_t sub_10003E424()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10003E534()
{
  v1 = v0[2];
  v0[3] = *(v1 + 128);
  v0[4] = *(v1 + 136);
  return _swift_task_switch(sub_10000F310, 0, 0);
}

uint64_t sub_10003E564()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 136);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10003E5C8(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;

  unsafeFromAsyncTask<A>(_:)();
}

uint64_t sub_10003E660()
{

  unsafeFromAsyncTask<A>(_:)();
}

unint64_t sub_10003E6B8(uint64_t a1)
{
  result = sub_10003E6E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10003E6E0()
{
  result = qword_100088390;
  if (!qword_100088390)
  {
    type metadata accessor for AirTagCustomEmojiViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100088390);
  }

  return result;
}

uint64_t sub_10003E734(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001616C;

  return sub_10003E518(a1, v1);
}

uint64_t sub_10003E7D0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003E810(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000F540;

  return sub_10003E310(a1, v4, v5, v6);
}

uint64_t sub_10003E8E8()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1._object = 0x8000000100060B00;
  v1._countAndFlagsBits = 0xD00000000000001ALL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_10003E9A4()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1._countAndFlagsBits = 0x4F545455425F4B4FLL;
  v1._object = 0xEF454C5449545F4ELL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_10003EA4C()
{

  unsafeFromAsyncTask<A>(_:)();
}

unint64_t sub_10003EAA4(uint64_t a1)
{
  result = sub_10003EACC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10003EACC()
{
  result = qword_100088440;
  if (!qword_100088440)
  {
    type metadata accessor for AirTagPairingRestrictedViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100088440);
  }

  return result;
}

uint64_t sub_10003EB20(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000F540;

  return sub_10000F2C4(a1, v1);
}

char *sub_10003EC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = OBJC_IVAR____TtC21FindMyRemoteUIService28FMSymbolBulletedListItemView_imageView;
  *&v5[v7] = [objc_allocWithZone(UIImageView) init];
  v8 = OBJC_IVAR____TtC21FindMyRemoteUIService28FMSymbolBulletedListItemView_titleLabel;
  *&v5[v8] = [objc_allocWithZone(UILabel) init];
  v9 = OBJC_IVAR____TtC21FindMyRemoteUIService28FMSymbolBulletedListItemView_subtitleLabel;
  *&v5[v9] = [objc_allocWithZone(UILabel) init];
  v10 = OBJC_IVAR____TtC21FindMyRemoteUIService28FMSymbolBulletedListItemView_imageViewContainer;
  *&v5[v10] = [objc_allocWithZone(UIView) init];
  v11 = OBJC_IVAR____TtC21FindMyRemoteUIService28FMSymbolBulletedListItemView_verticalStackView;
  *&v5[v11] = [objc_allocWithZone(UIStackView) init];
  v19.receiver = v5;
  v19.super_class = type metadata accessor for FMSymbolBulletedListItemView();
  v12 = objc_msgSendSuper2(&v19, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v13 = *&v12[OBJC_IVAR____TtC21FindMyRemoteUIService28FMSymbolBulletedListItemView_titleLabel];
  v14 = v12;
  v15 = String._bridgeToObjectiveC()();

  [v13 setText:v15];

  v16 = *&v14[OBJC_IVAR____TtC21FindMyRemoteUIService28FMSymbolBulletedListItemView_subtitleLabel];
  v17 = String._bridgeToObjectiveC()();

  [v16 setText:v17];

  [*&v14[OBJC_IVAR____TtC21FindMyRemoteUIService28FMSymbolBulletedListItemView_imageView] setImage:a5];
  sub_10003EE60();

  return v14;
}

void sub_10003EE60()
{
  sub_100003958(&unk_1000873B0, &unk_100062B10);
  inited = swift_initStackObject();
  v57 = xmmword_100064120;
  *(inited + 16) = xmmword_100064120;
  v2 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService28FMSymbolBulletedListItemView_verticalStackView);
  *(inited + 32) = v2;
  v3 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService28FMSymbolBulletedListItemView_titleLabel);
  *(inited + 40) = v3;
  v4 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService28FMSymbolBulletedListItemView_subtitleLabel);
  *(inited + 48) = v4;
  v5 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService28FMSymbolBulletedListItemView_imageViewContainer);
  *(inited + 56) = v5;
  v6 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService28FMSymbolBulletedListItemView_imageView);
  *(inited + 64) = v6;
  v7 = (inited & 0xC000000000000001);
  v8 = (inited & 0xFFFFFFFFFFFFFF8);
  v9 = v3;
  v10 = v4;
  v11 = v9;
  v58 = v10;
  v12 = v2;
  v59 = v5;
  v13 = v6;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_29;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_27;
  }

  v14 = v11;
  v15 = v12;
  while (1)
  {
    v11 = &off_100084000;
    [v15 setTranslatesAutoresizingMaskIntoConstraints:{0, v57}];

    if (v7)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8[2] < 2)
      {
        goto LABEL_27;
      }

      v16 = *(inited + 40);
    }

    v17 = v16;
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v7)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8[2] < 3)
      {
        goto LABEL_27;
      }

      v18 = *(inited + 48);
    }

    v19 = v18;
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v7)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8[2] < 4)
      {
        goto LABEL_27;
      }

      v20 = *(inited + 56);
    }

    v21 = v20;
    [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v7)
    {
      v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8[2] < 5)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v22 = *(inited + 64);
    }

    v23 = v22;
    [v22 setTranslatesAutoresizingMaskIntoConstraints:0];

    swift_setDeallocating();
    v24 = *(inited + 16);
    swift_arrayDestroy();
    [v0 setAxis:0];
    [v0 setAlignment:3];
    [v0 setDistribution:0];
    [v0 setSpacing:20.0];
    [v59 addSubview:v13];
    [v0 addArrangedSubview:v59];
    [v0 addArrangedSubview:v12];
    [v13 setContentMode:4];
    LODWORD(v25) = 1148846080;
    [v13 setContentHuggingPriority:0 forAxis:v25];
    LODWORD(v26) = 1148846080;
    [v13 setContentCompressionResistancePriority:0 forAxis:v26];
    v27 = objc_opt_self();
    if (qword_100086D98 != -1)
    {
      swift_once();
    }

    v28 = [v27 preferredFontForTextStyle:qword_10008C028];
    v29 = sub_10003F634(2);

    v8 = &off_100084000;
    [v14 setFont:v29];

    v30 = objc_opt_self();
    v31 = [v30 labelColor];
    v7 = &off_100084000;
    [v14 setTextColor:v31];

    if (qword_100086DA0 != -1)
    {
      swift_once();
    }

    v32 = [v27 preferredFontForTextStyle:qword_10008C030];
    [v58 setFont:v32];

    v33 = [v30 secondaryLabelColor];
    [v58 setTextColor:v33];

    v34 = swift_initStackObject();
    v0 = v34;
    *(v34 + 16) = xmmword_100064110;
    *(v34 + 32) = v14;
    inited = v34 + 32;
    *(v34 + 40) = v58;
    v11 = (v34 & 0xFFFFFFFFFFFFFF8);
    v35 = v34 & 0xC000000000000001;
    if ((v34 & 0xC000000000000001) != 0)
    {
      v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v36 = v14;
    }

    v37 = v36;
    v8 = &off_100084000;
    [v36 setNumberOfLines:0];
    v7 = &off_100084000;
    [v37 setAdjustsFontForContentSizeCategory:1];

    if (v35)
    {
      break;
    }

    if (v11[2] >= 2)
    {
      v38 = *(v0 + 40);
      goto LABEL_26;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v14 = v11;
  }

  v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_26:
  v39 = v38;
  [v38 setNumberOfLines:0];
  [v39 setAdjustsFontForContentSizeCategory:1];

  swift_setDeallocating();
  v40 = *(v0 + 16);
  swift_arrayDestroy();
  [v12 setAxis:1];
  [v12 addArrangedSubview:v14];
  [v12 addArrangedSubview:v58];
  v41 = objc_opt_self();
  v42 = swift_allocObject();
  *(v42 + 16) = v57;
  v43 = [v13 centerXAnchor];
  v44 = [v59 centerXAnchor];
  v45 = [v43 constraintEqualToAnchor:v44];

  *(v42 + 32) = v45;
  v46 = [v13 centerYAnchor];
  v47 = [v14 firstBaselineAnchor];
  v48 = [v46 constraintEqualToAnchor:v47];

  *(v42 + 40) = v48;
  v49 = [v13 widthAnchor];
  v50 = [v49 constraintEqualToConstant:30.0];

  *(v42 + 48) = v50;
  v51 = [v59 widthAnchor];
  v52 = [v51 constraintEqualToConstant:30.0];

  *(v42 + 56) = v52;
  v53 = [v13 heightAnchor];
  v54 = [v59 widthAnchor];
  v55 = [v53 constraintEqualToAnchor:v54 multiplier:1.0];

  *(v42 + 64) = v55;
  sub_1000062C4();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v41 activateConstraints:isa];
}

uint64_t sub_10003F634(uint64_t a1)
{
  v3 = [v1 fontDescriptor];
  v4 = [v3 fontDescriptorWithSymbolicTraits:a1];

  if (v4)
  {
    v5 = [objc_opt_self() fontWithDescriptor:v4 size:0.0];

    return v5;
  }

  else
  {
    _StringGuts.grow(_:)(61);
    v7._object = 0x8000000100060C00;
    v7._countAndFlagsBits = 0xD00000000000003BLL;
    String.append(_:)(v7);
    type metadata accessor for SymbolicTraits(0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_10003F7A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMSymbolBulletedListItemView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10003F87C()
{
  v1 = OBJC_IVAR____TtC21FindMyRemoteUIService28FMSymbolBulletedListItemView_imageView;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) init];
  v2 = OBJC_IVAR____TtC21FindMyRemoteUIService28FMSymbolBulletedListItemView_titleLabel;
  *(v0 + v2) = [objc_allocWithZone(UILabel) init];
  v3 = OBJC_IVAR____TtC21FindMyRemoteUIService28FMSymbolBulletedListItemView_subtitleLabel;
  *(v0 + v3) = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC21FindMyRemoteUIService28FMSymbolBulletedListItemView_imageViewContainer;
  *(v0 + v4) = [objc_allocWithZone(UIView) init];
  v5 = OBJC_IVAR____TtC21FindMyRemoteUIService28FMSymbolBulletedListItemView_verticalStackView;
  *(v0 + v5) = [objc_allocWithZone(UIStackView) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10003F980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return _swift_task_switch(sub_10003F9A4, v3, 0);
}

uint64_t sub_10003F9A4()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = swift_allocObject();
  v0[8] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + 1);
  v9 = &async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:);

  v5 = swift_task_alloc();
  v0[9] = v5;
  v6 = sub_100003958(&qword_100088560, &qword_1000646C8);
  *v5 = v0;
  v5[1] = sub_10003FAB8;
  v7 = v0[4];

  return (v9)(v0 + 2, &unk_1000646E8, v3, v6);
}

uint64_t sub_10003FAB8()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v9 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = *(v2 + 56);
    v5 = sub_10004B5FC;
  }

  else
  {
    v7 = *(v2 + 56);
    v6 = *(v2 + 64);

    v5 = sub_10004B630;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10003FBDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return _swift_task_switch(sub_10003FC00, v3, 0);
}

uint64_t sub_10003FC00()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = swift_allocObject();
  v0[8] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + 1);
  v9 = &async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:);

  v5 = swift_task_alloc();
  v0[9] = v5;
  v6 = sub_100003958(&qword_100088510, &qword_1000645B8);
  *v5 = v0;
  v5[1] = sub_10003FD14;
  v7 = v0[4];

  return (v9)(v0 + 2, &unk_1000647B0, v3, v6);
}

uint64_t sub_10003FD14()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v9 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = *(v2 + 56);
    v5 = sub_10003FF10;
  }

  else
  {
    v7 = *(v2 + 56);
    v6 = *(v2 + 64);

    v5 = sub_10003FE38;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10003FE38()
{
  if (v0[2])
  {
    v1 = v0[3];
    v2 = v0[1];

    return v2();
  }

  else
  {
    sub_10003477C();
    swift_allocError();
    *v4 = 7;
    swift_willThrow();
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_10003FF10()
{
  v1 = v0[8];

  v2 = v0[10];
  v3 = v0[1];

  return v3();
}

uint64_t sub_10003FF74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return _swift_task_switch(sub_10003FF98, v3, 0);
}

uint64_t sub_10003FF98()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = swift_allocObject();
  v0[8] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + 1);
  v9 = &async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:);

  v5 = swift_task_alloc();
  v0[9] = v5;
  v6 = sub_100003958(&qword_100088538, &qword_100064630);
  *v5 = v0;
  v5[1] = sub_10003FAB8;
  v7 = v0[4];

  return (v9)(v0 + 2, &unk_100064770, v3, v6);
}

uint64_t sub_1000400AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return _swift_task_switch(sub_1000400D0, v3, 0);
}

uint64_t sub_1000400D0()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = swift_allocObject();
  v0[8] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + 1);
  v9 = &async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:);

  v5 = swift_task_alloc();
  v0[9] = v5;
  v6 = sub_100003958(&qword_100088530, &qword_100064618);
  *v5 = v0;
  v5[1] = sub_10003FAB8;
  v7 = v0[4];

  return (v9)(v0 + 2, &unk_100064790, v3, v6);
}

uint64_t sub_1000401E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return _swift_task_switch(sub_100040208, v3, 0);
}

uint64_t sub_100040208()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = swift_allocObject();
  v0[8] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + 1);
  v9 = &async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:);

  v5 = swift_task_alloc();
  v0[9] = v5;
  v6 = sub_100003958(&qword_100088518, &qword_1000645D0);
  *v5 = v0;
  v5[1] = sub_10003FAB8;
  v7 = v0[4];

  return (v9)(v0 + 2, &unk_100064750, v3, v6);
}

uint64_t sub_10004031C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return _swift_task_switch(sub_100040340, v3, 0);
}

uint64_t sub_100040340()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = swift_allocObject();
  v0[8] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + 1);
  v9 = &async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult<A>(_:);

  v5 = swift_task_alloc();
  v0[9] = v5;
  v6 = sub_100003958(&qword_100088548, &qword_100064670);
  *v5 = v0;
  v5[1] = sub_10003FAB8;
  v7 = v0[4];

  return (v9)(v0 + 2, &unk_100064730, v3, v6);
}

uint64_t sub_100040454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_100003958(&qword_100087DB0, &qword_1000636B0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_100049430(a3, v26 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100004F1C(v11, &qword_100087DB0, &qword_1000636B0);
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
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      return v24;
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

  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100040704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003958(&qword_100087DB0, &qword_1000636B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100049430(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100004F1C(v12, &qword_100087DB0, &qword_1000636B0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      sub_100003958(&qword_1000884D0, &qword_100064510);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  sub_100003958(&qword_1000884D0, &qword_100064510);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1000409C8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1000409E4, a2, 0);
}

uint64_t sub_1000409E4()
{
  v1 = v0[2];
  v2 = *(v0[3] + 128);
  AsyncStreamProvider.stream(initialEvents:)();
  v3 = v0[1];

  return v3();
}

uint64_t sub_100040A50(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return _swift_task_switch(sub_100040A70, 0, 0);
}

uint64_t sub_100040A70()
{
  v1 = *(v0 + 72);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 72);
    v4 = *(Strong + OBJC_IVAR____TtC21FindMyRemoteUIService28PairingContentViewController_viewModel);
    *(v0 + 88) = v4;
    v5 = Strong;

    *(v0 + 96) = swift_allocObject();
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    return _swift_task_switch(sub_100040BBC, v4, 0);
  }

  else
  {
    **(v0 + 64) = 1;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_100040BBC()
{
  v1 = *(v0 + 96);
  v2 = *(*(v0 + 88) + 176);
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = sub_100049BF8;
  v4[4] = v1;

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  return _swift_task_switch(sub_100040CE4, 0, 0);
}

uint64_t sub_100040D0C(char a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v7 = *(v18 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v18);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100049630();
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = a1;
  aBlock[4] = sub_100049D20;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041D88;
  aBlock[3] = &unk_10007B2D0;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v19 = &_swiftEmptyArrayStorage;
  sub_10004B13C(&qword_1000884E8, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003958(&qword_1000884F0, &qword_100064568);
  sub_100049854();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v3 + 8))(v6, v2);
  (*(v7 + 8))(v10, v18);
}

void sub_10004101C(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100041078(a2);
  }
}

void sub_100041078(char a1)
{
  v2 = v1;
  v71 = type metadata accessor for UITraitOverrides();
  v4 = *(*(v71 - 8) + 64);
  __chkstk_darwin(v71);
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000054DC(v5, qword_10008C038);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v72 = v9;
    *v8 = 136446210;
    v10 = sub_100007FE0(a1);
    v12 = sub_10005B0A0(v10, v11, &v72);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Show %{public}s.", v8, 0xCu);
    sub_10000A5C4(v9);

    v2 = v1;
  }

  switch(a1)
  {
    case 2:
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100003958(&qword_100088510, &qword_1000645B8);
      unsafeFromAsyncTask<A>(_:)();

      v36 = v72;
      if (!v72)
      {
        goto LABEL_42;
      }

      v37 = v73;
      v38 = objc_allocWithZone(type metadata accessor for AirTagRolePickerViewController());
      v16 = sub_100006310(v36, v37);
      goto LABEL_39;
    case 3:
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100003958(&qword_100088550, &qword_100064688);
      unsafeFromAsyncTask<A>(_:)();

      v39 = v72;
      if (!v72)
      {
        goto LABEL_42;
      }

      v40 = v73;
      v41 = objc_allocWithZone(type metadata accessor for AirTagCustomNameViewController());
      v16 = sub_10000B6DC(v39, v40);
      goto LABEL_39;
    case 4:
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100003958(&qword_100088558, &qword_1000646A0);
      unsafeFromAsyncTask<A>(_:)();

      v23 = v72;
      if (!v72)
      {
        goto LABEL_42;
      }

      v24 = v73;
      v25 = objc_allocWithZone(type metadata accessor for AirTagCustomEmojiViewController());
      v16 = sub_10000CB00(v23, v24);
      goto LABEL_39;
    case 5:
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100003958(&qword_100088538, &qword_100064630);
      unsafeFromAsyncTask<A>(_:)();

      v42 = v72;
      if (!v72)
      {
        goto LABEL_42;
      }

      v43 = v73;
      v44 = objc_allocWithZone(type metadata accessor for AirTagLinkingUserViewController());
      v16 = sub_10003813C(v42, v43);
      goto LABEL_39;
    case 6:
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100003958(&qword_100088530, &qword_100064618);
      unsafeFromAsyncTask<A>(_:)();

      v54 = v72;
      if (!v72)
      {
        goto LABEL_42;
      }

      v55 = v73;
      v56 = objc_allocWithZone(type metadata accessor for AirTagLoadingViewController());
      v16 = sub_1000058B4(v54, v55);
      goto LABEL_39;
    case 7:
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100003958(&qword_100088520, &qword_1000645E8);
      unsafeFromAsyncTask<A>(_:)();

      v20 = v72;
      if (v72)
      {
        goto LABEL_11;
      }

      goto LABEL_42;
    case 8:
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100003958(&qword_100088500, &qword_100064590);
      unsafeFromAsyncTask<A>(_:)();

      v51 = v72;
      if (!v72)
      {
        goto LABEL_42;
      }

      v52 = v73;
      v53 = objc_allocWithZone(type metadata accessor for AirTagInstallFindMyViewController());
      v16 = sub_10000E51C(v51, v52);
      goto LABEL_39;
    case 9:
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100003958(&qword_100088518, &qword_1000645D0);
      unsafeFromAsyncTask<A>(_:)();

      if (!v72)
      {
        goto LABEL_42;
      }

      v29 = v73;
      v30 = objc_allocWithZone(type metadata accessor for AirTagFailureViewController());
      v31 = swift_unknownObjectRetain();
      v32 = sub_100007258(v31, v29);
      v33 = [v32 view];
      if (!v33)
      {
        __break(1u);
        JUMPOUT(0x100041D48);
      }

      v34 = v33;
      v35 = UIContentSizeCategoryLarge;
      UIView.traitOverrides.getter();
      UIMutableTraits.preferredContentSizeCategory.setter();
      UIView.traitOverrides.setter();

      swift_unknownObjectRelease();
      goto LABEL_40;
    case 10:
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100003958(&qword_100088528, &qword_100064600);
      unsafeFromAsyncTask<A>(_:)();

      v48 = v72;
      if (!v72)
      {
        goto LABEL_42;
      }

      v49 = v73;
      v50 = objc_allocWithZone(type metadata accessor for AirTagPairingLockFailureViewController());
      v16 = sub_100051E58(v48, v49);
      goto LABEL_39;
    case 11:
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100003958(&qword_100088520, &qword_1000645E8);
      unsafeFromAsyncTask<A>(_:)();

      v20 = v72;
      if (!v72)
      {
        goto LABEL_42;
      }

LABEL_11:
      v21 = v73;
      v22 = objc_allocWithZone(type metadata accessor for AirTagAppleIDViewController());
      v16 = sub_10003CC90(v20, v21);
      goto LABEL_39;
    case 12:
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100003958(&qword_100088540, &qword_100064648);
      unsafeFromAsyncTask<A>(_:)();

      v26 = v72;
      if (!v72)
      {
        goto LABEL_42;
      }

      v27 = v73;
      v28 = objc_allocWithZone(type metadata accessor for AirTagHSA2ViewController());
      v16 = sub_10003B31C(v26, v27);
      goto LABEL_39;
    case 13:
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100003958(&qword_100088518, &qword_1000645D0);
      unsafeFromAsyncTask<A>(_:)();

      v45 = v72;
      if (!v72)
      {
        goto LABEL_42;
      }

      v46 = v73;
      v47 = objc_allocWithZone(type metadata accessor for AirTagFailureViewController());
      v16 = sub_100007258(v45, v46);
      goto LABEL_39;
    case 14:
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100003958(&qword_100088548, &qword_100064670);
      unsafeFromAsyncTask<A>(_:)();

      v17 = v72;
      if (!v72)
      {
        goto LABEL_42;
      }

      v18 = v73;
      v19 = objc_allocWithZone(type metadata accessor for AirTagPairingSuccessViewController());
      v16 = sub_10004F334(v17, v18);
      goto LABEL_39;
    case 15:

      sub_100059F7C();
      return;
    default:
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100003958(&qword_100088560, &qword_1000646C8);
      unsafeFromAsyncTask<A>(_:)();

      v13 = v72;
      if (v72)
      {
        v14 = v73;
        v15 = objc_allocWithZone(type metadata accessor for AirTagDetectionViewController());
        v16 = sub_10004B930(v13, v14);
LABEL_39:
        v32 = v16;
LABEL_40:
        v57 = OBJC_IVAR____TtC21FindMyRemoteUIService38FMRemoteUIPRXFlowContentViewController_proxCardNavigationController;
        v58 = *&v2[OBJC_IVAR____TtC21FindMyRemoteUIService38FMRemoteUIPRXFlowContentViewController_proxCardNavigationController];
        if (v58)
        {
          [v58 pushViewController:v32 animated:1];
        }

        else
        {
          v68 = v32;
          v69 = [v2 presentProxCardFlowWithDelegate:v2 initialViewController:v68];
          v70 = *&v2[v57];
          *&v2[v57] = v69;
        }
      }

      else
      {
LABEL_42:
        sub_100049DC8();
        v59 = swift_allocError();
        *v60 = 1;
        swift_willThrow();
        swift_errorRetain();
        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          *v63 = 138543362;
          swift_errorRetain();
          v65 = _swift_stdlib_bridgeErrorToNSError();
          *(v63 + 4) = v65;
          *v64 = v65;
          _os_log_impl(&_mh_execute_header, v61, v62, "Can't show new state, error: %{public}@. ", v63, 0xCu);
          sub_100004F1C(v64, &qword_100087AA8, &unk_100062F80);
        }

        v66 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v67 = swift_allocObject();
        *(v67 + 16) = v66;
        *(v67 + 24) = v59;
        swift_errorRetain();
        unsafeFromAsyncTask<A>(_:)();
      }

      return;
  }
}

uint64_t sub_100041D88(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_100041DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return _swift_task_switch(sub_100041DF0, 0, 0);
}

uint64_t sub_100041DF0()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    *v3 = v0;
    v3[1] = sub_100041EEC;
    v4 = *(v0 + 56);

    return sub_100042028(v4);
  }

  else
  {
    **(v0 + 40) = 1;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_100041EEC()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return _swift_task_switch(sub_100042000, 0, 0);
}

uint64_t sub_100042028(uint64_t a1)
{
  v2[36] = a1;
  v2[37] = v1;
  v3 = sub_100003958(&qword_1000884E0, &qword_100064550);
  v2[38] = v3;
  v4 = *(v3 - 8);
  v2[39] = v4;
  v5 = *(v4 + 64) + 15;
  v2[40] = swift_task_alloc();
  v2[41] = type metadata accessor for MainActor();
  v2[42] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[43] = v7;
  v2[44] = v6;

  return _swift_task_switch(sub_10004212C, v7, v6);
}

uint64_t sub_10004212C()
{
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[45] = sub_1000054DC(v1, qword_10008C038);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Start listening to view model UI events stream.", v4, 2u);
  }

  v5 = v0[40];
  v6 = v0[36];

  sub_100003958(&qword_1000884C8, &qword_1000644E8);
  AsyncStream.makeAsyncIterator()();
  v0[46] = OBJC_IVAR____TtC21FindMyRemoteUIService28PairingContentViewController_viewModel;
  v7 = v0[41];
  v8 = static MainActor.shared.getter();
  v0[47] = v8;
  v9 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v10 = swift_task_alloc();
  v0[48] = v10;
  *v10 = v0;
  v10[1] = sub_1000422D8;
  v11 = v0[40];
  v12 = v0[38];

  return AsyncStream.Iterator.next(isolation:)(v0 + 12, v8, &protocol witness table for MainActor, v12);
}

uint64_t sub_1000422D8()
{
  v1 = *v0;
  v2 = *(*v0 + 384);
  v3 = *(*v0 + 376);
  v7 = *v0;

  v4 = *(v1 + 352);
  v5 = *(v1 + 344);

  return _swift_task_switch(sub_10004241C, v5, v4);
}

uint64_t sub_10004241C()
{
  v36 = v0;
  v1 = *(v0 + 112);
  *(v0 + 16) = *(v0 + 96);
  *(v0 + 32) = v1;
  v2 = *(v0 + 144);
  *(v0 + 48) = *(v0 + 128);
  *(v0 + 64) = v2;
  *(v0 + 73) = *(v0 + 153);
  if (!*(v0 + 16))
  {
    v13 = *(v0 + 360);
    v14 = *(v0 + 336);
    (*(*(v0 + 312) + 8))(*(v0 + 320), *(v0 + 304));

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Stop listening to view model UI events stream.", v17, 2u);
    }

    goto LABEL_9;
  }

  if (static Task<>.isCancelled.getter())
  {
    v3 = *(v0 + 360);
    v4 = *(v0 + 336);

    sub_100034A24(v0 + 24);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    v7 = os_log_type_enabled(v5, v6);
    v9 = *(v0 + 312);
    v8 = *(v0 + 320);
    v10 = *(v0 + 304);
    if (v7)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v35 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_10005B0A0(0xD00000000000001CLL, 0x8000000100060CC0, &v35);
      _os_log_impl(&_mh_execute_header, v5, v6, "%s Task has been cancelled.", v11, 0xCu);
      sub_10000A5C4(v12);
    }

    (*(v9 + 8))(v8, v10);
LABEL_9:
    v18 = *(v0 + 320);

    v19 = *(v0 + 8);

    return v19();
  }

  v22 = *(v0 + 24);
  v21 = *(v0 + 32);
  v24 = *(v0 + 40);
  v23 = *(v0 + 48);
  v26 = *(v0 + 56);
  v25 = *(v0 + 64);
  v27 = *(v0 + 328);
  v28 = *(v0 + 296);
  if (*(v0 + 88))
  {
    *(v0 + 240) = v22;
    *(v0 + 248) = v21;
    *(v0 + 256) = v24;
    *(v0 + 264) = v23;
    *(v0 + 272) = v26;
    *(v0 + 280) = v25;
    v29 = static MainActor.shared.getter();
    *(v0 + 424) = v29;
    v30 = swift_task_alloc();
    *(v0 + 432) = v30;
    *(v30 + 16) = v28;
    *(v30 + 24) = v0 + 240;
    v31 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v32 = swift_task_alloc();
    *(v0 + 440) = v32;
    *v32 = v0;
    v32[1] = sub_100042B28;
    v33 = sub_100049558;
  }

  else
  {
    *(v0 + 176) = v22;
    *(v0 + 184) = v21;
    *(v0 + 192) = v24;
    *(v0 + 200) = v23;
    *(v0 + 208) = v26;
    *(v0 + 216) = v25;
    *(v0 + 224) = *(v0 + 72);
    v29 = static MainActor.shared.getter();
    *(v0 + 392) = v29;
    v30 = swift_task_alloc();
    *(v0 + 400) = v30;
    *(v30 + 16) = v28;
    *(v30 + 24) = v0 + 176;
    v34 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v32 = swift_task_alloc();
    *(v0 + 408) = v32;
    *v32 = v0;
    v32[1] = sub_100042810;
    v33 = sub_100049560;
  }

  return withCheckedContinuation<A>(isolation:function:_:)(v32, v29, &protocol witness table for MainActor, 0xD00000000000001CLL, 0x8000000100060CC0, v33, v30, &type metadata for () + 8);
}

uint64_t sub_100042810()
{
  v1 = *v0;
  v2 = *(*v0 + 408);
  v3 = *(*v0 + 400);
  v4 = *(*v0 + 392);
  v8 = *v0;

  v5 = *(v1 + 352);
  v6 = *(v1 + 344);

  return _swift_task_switch(sub_100042970, v6, v5);
}

uint64_t sub_100042970()
{
  v1 = *(v0[37] + v0[46]);
  v0[52] = v1;
  return _swift_task_switch(sub_100042998, v1, 0);
}

uint64_t sub_100042998()
{
  v1 = *(v0[52] + 176);
  swift_allocObject();
  swift_weakInit();

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v2 = v0[43];
  v3 = v0[44];

  return _swift_task_switch(sub_100042A64, v2, v3);
}

uint64_t sub_100042A64()
{
  sub_100034A24((v0 + 3));
  v1 = v0[41];
  v2 = static MainActor.shared.getter();
  v0[47] = v2;
  v3 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v4 = swift_task_alloc();
  v0[48] = v4;
  *v4 = v0;
  v4[1] = sub_1000422D8;
  v5 = v0[40];
  v6 = v0[38];

  return AsyncStream.Iterator.next(isolation:)(v0 + 12, v2, &protocol witness table for MainActor, v6);
}

uint64_t sub_100042B28()
{
  v1 = *v0;
  v2 = *(*v0 + 440);
  v3 = *(*v0 + 432);
  v4 = *(*v0 + 424);
  v8 = *v0;

  v5 = *(v1 + 352);
  v6 = *(v1 + 344);

  return _swift_task_switch(sub_10004B5CC, v6, v5);
}

id sub_100042C98()
{
  ObjectType = swift_getObjectType();
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000054DC(v2, qword_10008C038);
  v3 = v0;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_10005B0A0(0x74696E696564, 0xE600000000000000, &v11);
    *(v6 + 12) = 2080;
    swift_getObjectType();
    sub_100003958(&qword_1000884D8, &qword_100064528);
    v7 = String.init<A>(describing:)();
    v9 = sub_10005B0A0(v7, v8, &v11);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v12.receiver = v3;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, "dealloc");
}

uint64_t sub_100042EA0()
{
  sub_100059D9C();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100003958(&qword_1000884D0, &qword_100064510);
  unsafeFromAsyncTask<A>(_:)();
}

uint64_t sub_100042F2C(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_100042F4C, 0, 0);
}

uint64_t sub_100042F4C()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    *(v0 + 64) = *(Strong + OBJC_IVAR____TtC21FindMyRemoteUIService28PairingContentViewController_viewModel);
    v3 = Strong;

    v4 = swift_task_alloc();
    *(v0 + 72) = v4;
    *v4 = v0;
    v4[1] = sub_10004305C;

    return sub_10001D504();
  }

  else
  {
    **(v0 + 40) = 1;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_10004305C()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return _swift_task_switch(sub_100043174, 0, 0);
}

uint64_t sub_1000431F8(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v26[1] = a2;
  v28 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v28 - 8);
  v5 = *(v31 + 64);
  __chkstk_darwin(v28);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v29 = *(v8 - 8);
  v30 = v8;
  v9 = *(v29 + 64);
  __chkstk_darwin(v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003958(&qword_100086F28, &qword_100064560);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v26 - v15;
  sub_100049630();
  v27 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v13 + 16))(v16, a1, v12);
  v18 = (*(v13 + 80) + 88) & ~*(v13 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  v20 = a3[1];
  *(v19 + 24) = *a3;
  *(v19 + 40) = v20;
  v21 = a3[3];
  *(v19 + 56) = a3[2];
  *(v19 + 72) = v21;
  (*(v13 + 32))(v19 + v18, v16, v12);
  aBlock[4] = sub_10004976C;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041D88;
  aBlock[3] = &unk_10007B0C8;
  v22 = _Block_copy(aBlock);

  sub_1000497F8(a3, &v32);
  static DispatchQoS.unspecified.getter();
  v32 = &_swiftEmptyArrayStorage;
  sub_10004B13C(&qword_1000884E8, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003958(&qword_1000884F0, &qword_100064568);
  sub_100049854();
  v23 = v28;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = v27;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  (*(v31 + 8))(v7, v23);
  (*(v29 + 8))(v11, v30);
}

void sub_1000435DC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_100003958(&qword_100086F28, &qword_100064560);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    (*(v6 + 16))(v9, a3, v5);
    v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v13 = swift_allocObject();
    (*(v6 + 32))(v13 + v12, v9, v5);
    sub_10004375C(a2, sub_1000498BC, v13);
  }
}

void sub_10004375C(uint64_t *a1, void (*a2)(void), uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC21FindMyRemoteUIService38FMRemoteUIPRXFlowContentViewController_proxCardNavigationController);
  if (v7 && (v8 = [v7 topViewController]) != 0)
  {
    v9 = v8;
    v10 = *a1;
    v11 = a1[1];
    v12 = a1[2];
    v13 = a1[3];
    v14 = String._bridgeToObjectiveC()();
    v15 = String._bridgeToObjectiveC()();
    v16 = [objc_opt_self() alertControllerWithTitle:v14 message:v15 preferredStyle:1];

    v17 = a1[6];
    v18 = a1[7];
    v19 = swift_allocObject();
    *(v19 + 16) = a2;
    *(v19 + 24) = a3;

    v20 = String._bridgeToObjectiveC()();
    v38 = sub_1000498C8;
    v39 = v19;
    v34 = _NSConcreteStackBlock;
    v35 = 1107296256;
    v36 = sub_100047684;
    v37 = &unk_10007B140;
    v21 = _Block_copy(&v34);

    v22 = objc_opt_self();
    v23 = [v22 actionWithTitle:v20 style:1 handler:v21];
    _Block_release(v21);

    v25 = a1[4];
    v24 = a1[5];
    v26 = swift_allocObject();
    *(v26 + 16) = a2;
    *(v26 + 24) = a3;

    v27 = String._bridgeToObjectiveC()();
    v38 = sub_1000498D0;
    v39 = v26;
    v34 = _NSConcreteStackBlock;
    v35 = 1107296256;
    v36 = sub_100047684;
    v37 = &unk_10007B190;
    v28 = _Block_copy(&v34);

    v29 = [v22 actionWithTitle:v27 style:0 handler:v28];
    _Block_release(v28);

    [v16 addAction:v23];
    [v16 addAction:v29];
    [v16 setPreferredAction:v29];
    [v9 presentViewController:v16 animated:1 completion:0];
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1000054DC(v30, qword_10008C038);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "No current presenting view controller!", v33, 2u);
    }

    a2();
  }
}

uint64_t sub_100043B10(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v26 = a2;
  v28 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v28 - 8);
  v5 = *(v31 + 64);
  __chkstk_darwin(v28);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v29 = *(v8 - 8);
  v30 = v8;
  v9 = *(v29 + 64);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003958(&qword_100086F28, &qword_100064560);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v26 - v15;
  sub_100049630();
  v27 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = *a3;
  v35 = a3[1];
  v36 = v18;
  v34 = a3[2];
  (*(v13 + 16))(v16, a1, v12);
  v19 = (*(v13 + 80) + 72) & ~*(v13 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  v21 = a3[1];
  *(v20 + 24) = *a3;
  *(v20 + 40) = v21;
  *(v20 + 56) = a3[2];
  (*(v13 + 32))(v20 + v19, v16, v12);
  aBlock[4] = sub_100049A08;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041D88;
  aBlock[3] = &unk_10007B1E0;
  v22 = _Block_copy(aBlock);

  sub_100049A7C(&v36, v32);
  sub_100049A7C(&v35, v32);
  sub_100049A7C(&v34, v32);
  static DispatchQoS.unspecified.getter();
  v32[0] = &_swiftEmptyArrayStorage;
  sub_10004B13C(&qword_1000884E8, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003958(&qword_1000884F0, &qword_100064568);
  sub_100049854();
  v23 = v28;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = v27;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  (*(v31 + 8))(v7, v23);
  (*(v29 + 8))(v11, v30);
}

void sub_100043F18(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_100003958(&qword_100086F28, &qword_100064560);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    (*(v6 + 16))(v9, a3, v5);
    v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v13 = swift_allocObject();
    (*(v6 + 32))(v13 + v12, v9, v5);
    sub_10004419C(a2, sub_100049B6C, v13);
  }
}

uint64_t sub_100044098(uint64_t a1, const char *a2)
{
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000054DC(v3, qword_10008C038);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, a2, v6, 2u);
  }

  sub_100003958(&qword_100086F28, &qword_100064560);
  return CheckedContinuation.resume(returning:)();
}

void sub_10004419C(uint64_t *a1, void (*a2)(void), uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC21FindMyRemoteUIService38FMRemoteUIPRXFlowContentViewController_proxCardNavigationController);
  if (v7 && (v8 = [v7 topViewController]) != 0)
  {
    v9 = v8;
    v10 = *a1;
    v11 = a1[1];
    v12 = a1[2];
    v13 = a1[3];
    v14 = String._bridgeToObjectiveC()();
    v15 = String._bridgeToObjectiveC()();
    v16 = [objc_opt_self() alertControllerWithTitle:v14 message:v15 preferredStyle:1];

    v17 = a1[4];
    v18 = a1[5];
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = a2;
    v20[4] = a3;

    v21 = String._bridgeToObjectiveC()();
    v28[4] = sub_100049BEC;
    v28[5] = v20;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 1107296256;
    v28[2] = sub_100047684;
    v28[3] = &unk_10007B258;
    v22 = _Block_copy(v28);

    v23 = [objc_opt_self() actionWithTitle:v21 style:0 handler:v22];
    _Block_release(v22);

    [v16 addAction:v23];
    [v16 setPreferredAction:v23];
    [v9 presentViewController:v16 animated:1 completion:0];
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000054DC(v24, qword_10008C038);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "No current presenting view controller!", v27, 2u);
    }

    a2();
  }
}

void sub_100044494(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService38FMRemoteUIPRXFlowContentViewController_context);
  *(v2 + OBJC_IVAR____TtC21FindMyRemoteUIService38FMRemoteUIPRXFlowContentViewController_context) = a1;

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = a1;

  sub_100003958(&qword_1000884D0, &qword_100064510);
  unsafeFromAsyncTask<A>(_:)();

  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000054DC(v7, qword_10008C038);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Successful flow configuration.", v10, 2u);
  }
}

uint64_t sub_100044768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return _swift_task_switch(sub_10004478C, 0, 0);
}

uint64_t sub_10004478C()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC21FindMyRemoteUIService28PairingContentViewController_viewModel);
    *(v0 + 72) = v3;
    v4 = Strong;

    return _swift_task_switch(sub_100044874, v3, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_100044874()
{
  v1 = v0[7];
  v2 = *(v0[9] + 176);
  v3 = swift_allocObject();
  v0[10] = v3;
  swift_weakInit();
  v4 = swift_allocObject();
  v0[11] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v5 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + 1);
  v8 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));

  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1000449A4;

  return v8(&unk_100064800, v4);
}

uint64_t sub_1000449A4()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v10 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = v2[9];
    v5 = sub_100044B08;
  }

  else
  {
    v7 = v2[10];
    v6 = v2[11];
    v8 = v2[9];

    v5 = sub_100044ADC;
    v4 = 0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100044B08()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  v4 = v0[1];
  v5 = v0[13];

  return v4();
}

uint64_t sub_100044B80()
{
  v1 = sub_100003958(&qword_100087DB0, &qword_1000636B0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MainActor();
  v6 = v0;
  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v6;
  sub_100053D04(0, 0, v4, &unk_1000647C8, v8);
}

uint64_t sub_100044CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  type metadata accessor for MainActor();
  v4[8] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[9] = v6;
  v4[10] = v5;

  return _swift_task_switch(sub_100044D3C, v6, v5);
}

uint64_t sub_100044D3C()
{
  v1 = [*(v0 + 56) parentViewController];
  if (!v1)
  {
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
LABEL_10:
    sub_100004F1C(v0 + 16, &qword_100088590, &qword_1000647D0);
    v5 = 0;
    goto LABEL_11;
  }

  v2 = v1;
  v3 = [v1 _remoteViewControllerProxy];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  *(v0 + 16) = v8;
  *(v0 + 32) = v9;
  if (!*(v0 + 40))
  {
    goto LABEL_10;
  }

  sub_100003958(&qword_100088598, &qword_100065790);
  v4 = swift_dynamicCast();
  v5 = *(v0 + 48);
  if (!v4)
  {
    v5 = 0;
  }

LABEL_11:
  *(v0 + 88) = v5;
  v6 = *(*(v0 + 56) + OBJC_IVAR____TtC21FindMyRemoteUIService28PairingContentViewController_viewModel);
  *(v0 + 96) = v6;

  return _swift_task_switch(sub_100044E94, v6, 0);
}

uint64_t sub_100044E94()
{
  v1 = v0[11];
  v2 = v0[12];
  swift_unknownObjectWeakAssign();
  v3 = *(v2 + 176);
  swift_allocObject();
  swift_weakInit();

  dispatch thunk of WorkItemQueue.enqueue(_:)();

  v4 = v0[9];
  v5 = v0[10];

  return _swift_task_switch(sub_100044F68, v4, v5);
}

uint64_t sub_100044F68()
{
  v1 = v0[11];
  v2 = v0[8];
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

uint64_t sub_100045038(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_100045058, 0, 0);
}

uint64_t sub_100045058()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC21FindMyRemoteUIService28PairingContentViewController_viewModel);
    v0[7] = v3;
    v4 = Strong;

    return _swift_task_switch(sub_100045134, v3, 0);
  }

  else
  {
    v5 = v0[5];
    *v5 = 0;
    v5[1] = 0;
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100045134()
{
  v1 = v0[7];
  v2 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for AirTagAppleIDViewModel();
  v3 = swift_allocObject();
  v0[8] = v3;

  swift_defaultActor_initialize();

  *(v3 + 112) = sub_10004A8F8;
  *(v3 + 120) = v2;

  v0[9] = sub_10004B13C(&qword_100088568, type metadata accessor for AirTagAppleIDViewModel);

  return _swift_task_switch(sub_10004B634, 0, 0);
}

uint64_t sub_10004524C(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_10004526C, 0, 0);
}

uint64_t sub_10004526C()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC21FindMyRemoteUIService28PairingContentViewController_viewModel);
    v0[7] = v3;
    v4 = Strong;

    return _swift_task_switch(sub_100045348, v3, 0);
  }

  else
  {
    v5 = v0[5];
    *v5 = 0;
    v5[1] = 0;
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100045348()
{
  v1 = v0[7];
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for AirTagCustomEmojiViewModel();
  v4 = swift_allocObject();
  v0[8] = v4;

  swift_defaultActor_initialize();
  v4[14] = &unk_100064708;
  v4[15] = v2;
  v4[16] = sub_10004A9A8;
  v4[17] = v3;

  v0[9] = sub_10004B13C(&qword_1000873A0, type metadata accessor for AirTagCustomEmojiViewModel);

  return _swift_task_switch(sub_10004B634, 0, 0);
}

uint64_t sub_1000454A8(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_1000454C8, 0, 0);
}

uint64_t sub_1000454C8()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC21FindMyRemoteUIService28PairingContentViewController_viewModel);
    v0[7] = v3;
    v4 = Strong;

    return _swift_task_switch(sub_1000455A4, v3, 0);
  }

  else
  {
    v5 = v0[5];
    *v5 = 0;
    v5[1] = 0;
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1000455A4()
{
  v1 = v0[7];
  v2 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for AirTagCustomNameViewModel();
  v3 = swift_allocObject();
  v0[8] = v3;

  swift_defaultActor_initialize();

  *(v3 + 112) = &unk_100064710;
  *(v3 + 120) = v2;

  v0[9] = sub_10004B13C(&qword_1000872D0, type metadata accessor for AirTagCustomNameViewModel);

  return _swift_task_switch(sub_1000456BC, 0, 0);
}

uint64_t sub_1000456DC(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_1000456FC, 0, 0);
}

uint64_t sub_1000456FC()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC21FindMyRemoteUIService28PairingContentViewController_viewModel);
    v0[7] = v3;
    v4 = Strong;

    return _swift_task_switch(sub_1000457DC, v3, 0);
  }

  else
  {
    v5 = v0[5];
    *v5 = 0;
    v5[1] = 0;
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1000457DC()
{
  v1 = *(v0[7] + 176);
  v2 = swift_allocObject();
  v0[8] = v2;
  swift_weakInit();
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_1000458C0;
  v4 = v0[7];

  return sub_10004031C(v1, &unk_100064718, v2);
}

uint64_t sub_1000458C0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 72);
  v8 = *v3;
  *(*v3 + 80) = v2;

  if (v2)
  {
    v9 = v6[7];
    v10 = sub_10004B62C;
  }

  else
  {
    v12 = v6[7];
    v11 = v6[8];

    v6[11] = a2;
    v6[12] = a1;
    v10 = sub_100045A08;
    v9 = v12;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_100045A08()
{
  v1 = *(v0 + 56);

  return _swift_task_switch(sub_10004B610, 0, 0);
}

uint64_t sub_100045A70(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_100045A90, 0, 0);
}

uint64_t sub_100045A90()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC21FindMyRemoteUIService28PairingContentViewController_viewModel);
    v0[7] = v3;
    v4 = Strong;

    return _swift_task_switch(sub_100045B70, v3, 0);
  }

  else
  {
    v5 = v0[5];
    *v5 = 0;
    v5[1] = 0;
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100045B70()
{
  v1 = *(v0[7] + 176);
  v2 = swift_allocObject();
  v0[8] = v2;
  swift_weakInit();
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_1000458C0;
  v4 = v0[7];

  return sub_1000401E4(v1, &unk_100064738, v2);
}

uint64_t sub_100045C54(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_100045C74, 0, 0);
}

uint64_t sub_100045C74()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC21FindMyRemoteUIService28PairingContentViewController_viewModel);
    v0[7] = v3;
    v4 = Strong;

    return _swift_task_switch(sub_100045D50, v3, 0);
  }

  else
  {
    v5 = v0[5];
    *v5 = 0;
    v5[1] = 0;
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100045D50()
{
  v1 = v0[7];
  v2 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for AirTagHSA2ViewModel();
  v3 = swift_allocObject();
  v0[8] = v3;

  swift_defaultActor_initialize();

  *(v3 + 112) = sub_10004AD00;
  *(v3 + 120) = v2;

  v0[9] = sub_10004B13C(&qword_1000881A0, type metadata accessor for AirTagHSA2ViewModel);

  return _swift_task_switch(sub_10004B634, 0, 0);
}

uint64_t sub_100045E68(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_100045E88, 0, 0);
}

uint64_t sub_100045E88()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC21FindMyRemoteUIService28PairingContentViewController_viewModel);
    v0[7] = v3;
    v4 = Strong;

    return _swift_task_switch(sub_100045F68, v3, 0);
  }

  else
  {
    v5 = v0[5];
    *v5 = 0;
    v5[1] = 0;
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100045F68()
{
  v1 = *(v0[7] + 176);
  v2 = swift_allocObject();
  v0[8] = v2;
  swift_weakInit();
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_1000458C0;
  v4 = v0[7];

  return sub_10003FF74(v1, &unk_100064758, v2);
}

uint64_t sub_10004604C(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_10004606C, 0, 0);
}

uint64_t sub_10004606C()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC21FindMyRemoteUIService28PairingContentViewController_viewModel);
    v0[7] = v3;
    v4 = Strong;

    return _swift_task_switch(sub_10004614C, v3, 0);
  }

  else
  {
    v5 = v0[5];
    *v5 = 0;
    v5[1] = 0;
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_10004614C()
{
  v1 = *(v0[7] + 176);
  v2 = swift_allocObject();
  v0[8] = v2;
  swift_weakInit();
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_1000458C0;
  v4 = v0[7];

  return sub_1000400AC(v1, &unk_100064778, v2);
}

uint64_t sub_100046230(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_100046250, 0, 0);
}

uint64_t sub_100046250()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC21FindMyRemoteUIService28PairingContentViewController_viewModel);
    v0[7] = v3;
    v4 = Strong;

    return _swift_task_switch(sub_10004632C, v3, 0);
  }

  else
  {
    v5 = v0[5];
    *v5 = 0;
    v5[1] = 0;
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_10004632C()
{
  v1 = v0[7];
  v2 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for AirTagPairingLockFailureViewModel();
  v3 = swift_allocObject();
  v0[8] = v3;

  swift_defaultActor_initialize();

  *(v3 + 112) = sub_10004AFB0;
  *(v3 + 120) = v2;

  v0[9] = sub_10004B13C(&qword_100088570, type metadata accessor for AirTagPairingLockFailureViewModel);

  return _swift_task_switch(sub_10004B634, 0, 0);
}

uint64_t sub_100046444(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_100046464, 0, 0);
}

uint64_t sub_100046464()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC21FindMyRemoteUIService28PairingContentViewController_viewModel);
    v0[7] = v3;
    v4 = Strong;

    return _swift_task_switch(sub_100046540, v3, 0);
  }

  else
  {
    v5 = v0[5];
    *v5 = 0;
    v5[1] = 0;
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100046540()
{
  v1 = v0[7];
  v2 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for AirTagManateeNotAvailableViewModel();
  v3 = swift_allocObject();
  v0[8] = v3;

  swift_defaultActor_initialize();

  *(v3 + 112) = sub_10004AFB8;
  *(v3 + 120) = v2;

  v0[9] = sub_10004B13C(&qword_100088578, type metadata accessor for AirTagManateeNotAvailableViewModel);

  return _swift_task_switch(sub_10004B634, 0, 0);
}

uint64_t sub_100046658(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_100046678, 0, 0);
}

uint64_t sub_100046678()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC21FindMyRemoteUIService28PairingContentViewController_viewModel);
    v0[7] = v3;
    v4 = Strong;

    return _swift_task_switch(sub_100046754, v3, 0);
  }

  else
  {
    v5 = v0[5];
    *v5 = 0;
    v5[1] = 0;
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100046754()
{
  v1 = v0[7];
  v2 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for AirTagPairingRestrictedViewModel();
  v3 = swift_allocObject();
  v0[8] = v3;

  swift_defaultActor_initialize();

  *(v3 + 112) = sub_10004AFC0;
  *(v3 + 120) = v2;

  v0[9] = sub_10004B13C(&qword_100088580, type metadata accessor for AirTagPairingRestrictedViewModel);

  return _swift_task_switch(sub_10004B634, 0, 0);
}

uint64_t sub_10004686C(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_10004688C, 0, 0);
}

uint64_t sub_10004688C()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC21FindMyRemoteUIService28PairingContentViewController_viewModel);
    v0[7] = v3;
    v4 = Strong;

    return _swift_task_switch(sub_10004696C, v3, 0);
  }

  else
  {
    v5 = v0[5];
    *v5 = 0;
    v5[1] = 0;
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_10004696C()
{
  v1 = *(v0[7] + 176);
  v2 = swift_allocObject();
  v0[8] = v2;
  swift_weakInit();
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_100046A50;
  v4 = v0[7];

  return sub_10003FBDC(v1, &unk_100064798, v2);
}

uint64_t sub_100046A50(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 72);
  v8 = *v3;
  *(*v3 + 80) = v2;

  if (v2)
  {
    v9 = v6[7];
    v10 = sub_100046C28;
  }

  else
  {
    v12 = v6[7];
    v11 = v6[8];

    v6[11] = a2;
    v6[12] = a1;
    v10 = sub_100046B98;
    v9 = v12;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_100046B98()
{
  v1 = *(v0 + 56);

  return _swift_task_switch(sub_100046C00, 0, 0);
}

uint64_t sub_100046C28()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

uint64_t sub_100046C94(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_100046CB4, 0, 0);
}

uint64_t sub_100046CB4()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC21FindMyRemoteUIService28PairingContentViewController_viewModel);
    v0[7] = v3;
    v4 = Strong;

    return _swift_task_switch(sub_100046D90, v3, 0);
  }

  else
  {
    v5 = v0[5];
    *v5 = 0;
    v5[1] = 0;
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100046D90()
{
  v1 = v0[7];
  v2 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for AirTagInstallFindMyViewModel();
  v3 = swift_allocObject();
  v0[8] = v3;

  swift_defaultActor_initialize();

  *(v3 + 112) = sub_10004B134;
  *(v3 + 120) = v2;

  v0[9] = sub_10004B13C(&qword_100088588, type metadata accessor for AirTagInstallFindMyViewModel);

  return _swift_task_switch(sub_10004B634, 0, 0);
}

uint64_t sub_100046EA8(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_100046EC8, 0, 0);
}

uint64_t sub_100046EC8()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC21FindMyRemoteUIService28PairingContentViewController_viewModel);
    v0[7] = v3;
    v4 = Strong;

    return _swift_task_switch(sub_100046FA8, v3, 0);
  }

  else
  {
    v5 = v0[5];
    *v5 = 0;
    v5[1] = 0;
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100046FA8()
{
  v1 = *(v0[7] + 176);
  v2 = swift_allocObject();
  v0[8] = v2;
  swift_weakInit();
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_1000458C0;
  v4 = v0[7];

  return sub_10003F980(v1, &unk_1000646D0, v2);
}

uint64_t sub_10004708C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return _swift_task_switch(sub_1000470AC, 0, 0);
}

uint64_t sub_1000470AC()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC21FindMyRemoteUIService28PairingContentViewController_viewModel);
    v0[7] = v3;
    v4 = Strong;

    return _swift_task_switch(sub_100047180, v3, 0);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_100047180()
{
  v1 = v0[6];
  v2 = *(v0[7] + 176);
  v3 = swift_allocObject();
  v0[8] = v3;
  swift_weakInit();
  v4 = swift_allocObject();
  v0[9] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;

  swift_errorRetain();
  v5 = *(&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + 1);
  v8 = (&async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:) + async function pointer to dispatch thunk of WorkItemQueue.enqueueAndAwaitResult(_:));
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_1000472A4;

  return v8(&unk_100063688, v4);
}

uint64_t sub_1000472A4()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {
    v4 = v3[7];

    return _swift_task_switch(sub_1000473F4, v4, 0);
  }

  else
  {
    v6 = v3[8];
    v5 = v3[9];
    v7 = v3[7];

    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_1000473F4()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  return _swift_task_switch(sub_100047470, 0, 0);
}

uint64_t sub_100047470()
{
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = type metadata accessor for Logger();
  sub_1000054DC(v2, qword_10008C038);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 88);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failure in UI error handling, error: %{public}@. ", v7, 0xCu);
    sub_100004F1C(v8, &qword_100087AA8, &unk_100062F80);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100047614(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_100059F7C();
  }

  return a3();
}

void sub_100047684(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1000476EC(uint64_t a1, uint64_t (*a2)(void))
{
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000054DC(v3, qword_10008C038);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Exit me device change tapped", v6, 2u);
  }

  return a2();
}

uint64_t sub_1000477E0()
{
  v1 = type metadata accessor for DeviceWithCompanion();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = *(*(sub_100003958(&qword_100087AA0, &qword_100062F78) - 8) + 64) + 15;
  v0[5] = swift_task_alloc();
  v5 = type metadata accessor for ClientOrigin();
  v0[6] = v5;
  v6 = *(v5 - 8);
  v0[7] = v6;
  v7 = *(v6 + 64) + 15;
  v0[8] = swift_task_alloc();

  return _swift_task_switch(sub_100047930, 0, 0);
}

uint64_t sub_100047930()
{
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[9] = sub_1000054DC(v1, qword_10008C038);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Switching me device.", v4, 2u);
  }

  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];

  type metadata accessor for Session();
  (*(v6 + 104))(v5, enum case for ClientOrigin.findMyApp(_:), v7);
  v0[10] = static Session.sharedSession(origin:)();
  (*(v6 + 8))(v5, v7);
  v8 = async function pointer to Session.thisDeviceWithCompanion()[1];
  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = sub_100047AEC;
  v10 = v0[4];

  return Session.thisDeviceWithCompanion()(v10);
}

uint64_t sub_100047AEC()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_100047FE0;
  }

  else
  {
    v3 = sub_100047C00;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100047C00()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  DeviceWithCompanion.thisDevice.getter();
  (*(v4 + 8))(v1, v3);
  v5 = type metadata accessor for Device();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v2, 1, v5) == 1)
  {
    v7 = v0[9];
    sub_100004F1C(v0[5], &qword_100087AA0, &qword_100062F78);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[10];
    if (v10)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Me device switch failed, no thisDevice identifier!", v12, 2u);
    }

    v13 = v0[8];
    v14 = v0[4];
    v15 = v0[5];

    v16 = v0[1];

    return v16();
  }

  else
  {
    v18 = v0[5];
    v19 = Device.identifier.getter();
    v21 = v20;
    v0[13] = v20;
    (*(v6 + 8))(v18, v5);
    v22 = async function pointer to Session.setActiveLocationSharingDevice(_:)[1];
    v23 = swift_task_alloc();
    v0[14] = v23;
    *v23 = v0;
    v23[1] = sub_100047E44;
    v24 = v0[10];

    return Session.setActiveLocationSharingDevice(_:)(v19, v21);
  }
}

uint64_t sub_100047E44()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_100048160;
  }

  else
  {
    v3 = sub_100047F58;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100047F58()
{
  v1 = v0[13];
  v2 = v0[10];

  v3 = v0[8];
  v4 = v0[4];
  v5 = v0[5];

  v6 = v0[1];

  return v6();
}

uint64_t sub_100047FE0()
{
  v1 = v0[10];

  v2 = v0[12];
  v3 = v0[9];
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failure on me device switch: %{public}@", v6, 0xCu);
    sub_100004F1C(v7, &qword_100087AA8, &unk_100062F80);
  }

  else
  {
  }

  v9 = v0[8];
  v10 = v0[4];
  v11 = v0[5];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100048160()
{
  v1 = v0[13];
  v2 = v0[10];

  v3 = v0[15];
  v4 = v0[9];
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failure on me device switch: %{public}@", v7, 0xCu);
    sub_100004F1C(v8, &qword_100087AA8, &unk_100062F80);
  }

  else
  {
  }

  v10 = v0[8];
  v11 = v0[4];
  v12 = v0[5];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1000482EC()
{
  v0 = type metadata accessor for Logger();
  sub_100005570(v0, qword_10008C038);
  sub_1000054DC(v0, qword_10008C038);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10004836C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100048464;

  return v7(a1);
}

uint64_t sub_100048464()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10004855C(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 40) = v4;
  *v4 = v2;
  v4[1] = sub_100048650;

  return v6(v2 + 16);
}

uint64_t sub_100048650()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_10004B614;
  }

  else
  {
    v3 = sub_10004B638;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100048764(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 40) = v4;
  *v4 = v2;
  v4[1] = sub_100048858;

  return v6(v2 + 16);
}

uint64_t sub_100048858()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_100048990;
  }

  else
  {
    v3 = sub_10004896C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000489A8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_100048A9C;

  return v6(v2 + 32);
}

uint64_t sub_100048A9C()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

id sub_100048BB0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_100003958(&qword_100087DB0, &qword_1000636B0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v33 - v5;
  v7 = sub_100003958(&qword_1000884C8, &qword_1000644E8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v37 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v38 = &v33 - v11;
  v12 = qword_100086DA8;
  v13 = v1;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000054DC(v14, qword_10008C038);
  v15 = v13;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v35 = v6;
    v19 = v18;
    v34 = swift_slowAlloc();
    v40 = v34;
    *v19 = 136315394;
    *(v19 + 4) = sub_10005B0A0(0xD000000000000010, 0x800000010005EF40, &v40);
    *(v19 + 12) = 2080;
    v20 = swift_getObjectType();

    v39 = v20;
    sub_100003958(&qword_1000884D8, &qword_100064528);
    v21 = String.init<A>(describing:)();
    v23 = sub_10005B0A0(v21, v22, &v40);

    *(v19 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s %s", v19, 0x16u);
    swift_arrayDestroy();

    v6 = v35;
  }

  else
  {
  }

  *&v15[OBJC_IVAR____TtC21FindMyRemoteUIService28PairingContentViewController_viewModel] = a1;
  v41.receiver = v15;
  v41.super_class = ObjectType;

  v24 = objc_msgSendSuper2(&v41, "initWithNibName:bundle:", 0, 0);

  v25 = v24;
  v26 = v38;
  unsafeFromAsyncTask<A>(_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100003958(&qword_1000884D0, &qword_100064510);
  unsafeFromAsyncTask<A>(_:)();

  v27 = type metadata accessor for TaskPriority();
  (*(*(v27 - 8) + 56))(v6, 1, 1, v27);
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v29 = v37;
  (*(v8 + 16))(v37, v26, v7);
  v30 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v31 = swift_allocObject();
  *(v31 + 2) = 0;
  *(v31 + 3) = 0;
  *(v31 + 4) = v28;
  (*(v8 + 32))(&v31[v30], v29, v7);
  sub_100040704(0, 0, v6, &unk_100064520, v31);

  sub_100004F1C(v6, &qword_100087DB0, &qword_1000636B0);
  (*(v8 + 8))(v26, v7);
  return v25;
}

uint64_t sub_1000490E4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001616C;

  return sub_1000409C8(a1, v1);
}

uint64_t sub_100049180()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000491B8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001616C;

  return sub_100040A50(a1, v1);
}

uint64_t sub_100049254()
{
  v1 = sub_100003958(&qword_1000884C8, &qword_1000644E8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004932C(uint64_t a1)
{
  v4 = *(sub_100003958(&qword_1000884C8, &qword_1000644E8) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001616C;

  return sub_100041DCC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100049430(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003958(&qword_100087DB0, &qword_1000636B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000494A0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001616C;

  return sub_1000489A8(a1, v5);
}

uint64_t sub_100049568()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000495A0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001616C;

  return sub_10001D14C(v0);
}

unint64_t sub_100049630()
{
  result = qword_100087E80;
  if (!qword_100087E80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100087E80);
  }

  return result;
}

uint64_t sub_10004967C()
{
  v1 = sub_100003958(&qword_100086F28, &qword_100064560);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);

  v7 = *(v0 + 4);

  v8 = *(v0 + 6);

  v9 = *(v0 + 8);

  v10 = *(v0 + 10);

  (*(v2 + 8))(&v0[v4], v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_10004976C()
{
  v1 = *(sub_100003958(&qword_100086F28, &qword_100064560) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 88) & ~*(v1 + 80));

  sub_1000435DC(v2, (v0 + 24), v3);
}

uint64_t sub_1000497E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100049854()
{
  result = qword_1000884F8;
  if (!qword_1000884F8)
  {
    sub_1000177D4(&qword_1000884F0, &qword_100064568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000884F8);
  }

  return result;
}

uint64_t sub_1000498D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = unsafeFromAsyncTask<A>(_:)();
  return v1(v3);
}

uint64_t sub_100049920()
{
  v1 = sub_100003958(&qword_100086F28, &qword_100064560);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);

  v7 = *(v0 + 4);

  v8 = *(v0 + 6);

  v9 = *(v0 + 8);

  (*(v2 + 8))(&v0[v4], v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_100049A08()
{
  v1 = *(sub_100003958(&qword_100086F28, &qword_100064560) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 72) & ~*(v1 + 80));

  sub_100043F18(v2, (v0 + 24), v3);
}

uint64_t sub_100049AD8()
{
  v1 = sub_100003958(&qword_100086F28, &qword_100064560);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100049C00()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100049C40()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001616C;

  return sub_100017874(v2, v3, v4);
}

uint64_t sub_100049CE8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100049D2C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001616C;

  return sub_100046C94(a1, v1);
}

unint64_t sub_100049DC8()
{
  result = qword_100088508;
  if (!qword_100088508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100088508);
  }

  return result;
}

uint64_t sub_100049E1C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001616C;

  return sub_10004708C(a1, v5, v4);
}

uint64_t sub_100049EC8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001616C;

  return sub_10004686C(a1, v1);
}

uint64_t sub_100049F64(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001616C;

  return sub_100046658(a1, v1);
}

uint64_t sub_10004A000(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001616C;

  return sub_100046444(a1, v1);
}

uint64_t sub_10004A09C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001616C;

  return sub_100046230(a1, v1);
}

uint64_t sub_10004A138(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001616C;

  return sub_10004604C(a1, v1);
}

uint64_t sub_10004A1D4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001616C;

  return sub_100045E68(a1, v1);
}

uint64_t sub_10004A270(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001616C;

  return sub_100045C54(a1, v1);
}

uint64_t sub_10004A30C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001616C;

  return sub_100045A70(a1, v1);
}

uint64_t sub_10004A3A8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001616C;

  return sub_1000456DC(a1, v1);
}

uint64_t sub_10004A444(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001616C;

  return sub_1000454A8(a1, v1);
}

uint64_t sub_10004A4E0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001616C;

  return sub_10004524C(a1, v1);
}

uint64_t sub_10004A57C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001616C;

  return sub_100045038(a1, v1);
}

uint64_t sub_10004A618(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001616C;

  return sub_100046EA8(a1, v1);
}

uint64_t sub_10004A6B4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001616C;

  return sub_10001D89C(a1, v1);
}

uint64_t sub_10004A750()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004A788(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001616C;

  return sub_10004855C(a1, v5);
}

uint64_t sub_10004A840(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001616C;

  return sub_10004836C(a1, v5);
}

uint64_t sub_10004A900(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10001616C;

  return sub_100021AB8(a1, a2, v2);
}

uint64_t sub_10004A9B0(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10000F540;

  return sub_10002100C(a1, a2, v2);
}

uint64_t sub_10004AA58(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001616C;

  return sub_10002A4D4(a1, v1);
}

uint64_t sub_10004AAF4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001616C;

  return sub_10004855C(a1, v5);
}

uint64_t sub_10004ABAC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001616C;

  return sub_100029CF0(a1, v1);
}

uint64_t sub_10004AC48(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001616C;

  return sub_10004855C(a1, v5);
}

uint64_t sub_10004AD08(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001616C;

  return sub_100022420(a1, v1);
}

uint64_t sub_10004ADA4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001616C;

  return sub_10004855C(a1, v5);
}

uint64_t sub_10004AE5C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001616C;

  return sub_1000241A4(a1, v1);
}

uint64_t sub_10004AEF8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001616C;

  return sub_10004855C(a1, v5);
}

uint64_t sub_10004AFC8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000F540;

  return sub_10001FD00(a1, v1);
}

uint64_t sub_10004B064(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001616C;

  return sub_100048764(a1, v5);
}

uint64_t sub_10004B13C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10004B184()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10004B1C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001616C;

  return sub_100044CA4(a1, v4, v5, v6);
}

uint64_t sub_10004B278()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10001616C;

  return sub_10001BB50(v0);
}

uint64_t sub_10004B320(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001616C;

  return sub_100044768(a1, v5, v4);
}

uint64_t sub_10004B3CC(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 24));

  return _swift_deallocObject(v1, 32, 7);
}

uint64_t sub_10004B41C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10001616C;

  return sub_100017A5C(v2, v3);
}

uint64_t sub_10004B4B4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001616C;

  return sub_100042F2C(a1, v1);
}

unint64_t sub_10004B564()
{
  result = qword_1000885A0;
  if (!qword_1000885A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000885A0);
  }

  return result;
}

uint64_t sub_10004B6CC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService38FMRemoteUIPRXFlowContentViewController_context);
  *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService38FMRemoteUIPRXFlowContentViewController_context) = a1;
}

void sub_10004B714()
{
  v1 = v0;
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = objc_allocWithZone(type metadata accessor for SoftwareUpdateProxCard());
  v4 = sub_1000370CC(sub_10004B928, v2);
  v5 = OBJC_IVAR____TtC21FindMyRemoteUIService38FMRemoteUIPRXFlowContentViewController_proxCardNavigationController;
  v6 = *&v1[OBJC_IVAR____TtC21FindMyRemoteUIService38FMRemoteUIPRXFlowContentViewController_proxCardNavigationController];
  v10 = v4;
  if (v6)
  {
    [v6 pushViewController:v4 animated:1];
    v7 = v10;
  }

  else
  {
    v8 = [v1 presentProxCardFlowWithDelegate:v1 initialViewController:?];
    v9 = *&v1[v5];
    *&v1[v5] = v8;

    v7 = v9;
  }
}

uint64_t sub_10004B80C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC21FindMyRemoteUIService28SoftwareUpdateViewController_viewModel);
    v2 = result;

    sub_10005159C();
  }

  return result;
}

uint64_t sub_10004B8F0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

char *sub_10004B930(uint64_t a1, uint64_t a2)
{
  v2[OBJC_IVAR____TtC21FindMyRemoteUIService29AirTagDetectionViewController_viewAppeared] = 0;
  v2[OBJC_IVAR____TtC21FindMyRemoteUIService29AirTagDetectionViewController_videoViewReady] = 0;
  v5 = qword_100086DA8;
  v6 = v2;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000054DC(v7, qword_10008C038);
  v8 = v6;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_10005B0A0(0xD000000000000010, 0x800000010005EF40, &v26);
    *(v11 + 12) = 2080;
    swift_getObjectType();

    sub_100003958(&qword_1000886B0, &unk_1000649A0);
    v12 = String.init<A>(describing:)();
    v14 = sub_10005B0A0(v12, v13, &v26);

    *(v11 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v15 = &v8[OBJC_IVAR____TtC21FindMyRemoteUIService29AirTagDetectionViewController_viewModel];
  *v15 = a1;
  *(v15 + 1) = a2;
  v16 = swift_unknownObjectRetain_n();
  v17 = sub_10004CFB4(v16, v8, &qword_1000886C0, type metadata accessor for AirTagDetectionViewModel);
  [v17 setDismissalType:1];
  v18 = [objc_opt_self() mainBundle];
  v27._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0x4741545F524941;
  v19._object = 0xE700000000000000;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v27._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v18, v20, v27);

  v21 = String._bridgeToObjectiveC()();

  [v17 setTitle:v21];

  v22 = *&v17[OBJC_IVAR____TtC21FindMyRemoteUIService29AirTagDetectionViewController_viewModel];
  sub_100053090();
  if (v23)
  {
    v24 = String._bridgeToObjectiveC()();
  }

  else
  {
    v24 = 0;
  }

  [v17 setSubtitle:v24];

  sub_10004C8EC();
  sub_10000AEA0();

  swift_unknownObjectRelease();
  return v17;
}

id sub_10004BCA4()
{
  ObjectType = swift_getObjectType();
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000054DC(v2, qword_10008C038);
  v3 = v0;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_10005B0A0(0x74696E696564, 0xE600000000000000, &v11);
    *(v6 + 12) = 2080;
    swift_getObjectType();
    sub_100003958(&qword_1000886B0, &unk_1000649A0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10005B0A0(v7, v8, &v11);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v12.receiver = v3;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, "dealloc");
}

void sub_10004BEAC(char a1)
{
  v2 = v1;
  v41.receiver = v2;
  v41.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v41, "viewWillAppear:", a1 & 1);
  v4 = [objc_opt_self() sharedInstance];
  v35 = 0;
  v5 = [v4 setCategory:AVAudioSessionCategoryAmbient withOptions:1 error:&v35];

  if (v5)
  {
    v6 = v35;
  }

  else
  {
    v7 = v35;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000054DC(v8, qword_10008C038);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138543362;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&_mh_execute_header, v9, v10, "AVAudioSession setCategory failed: %{public}@", v11, 0xCu);
      sub_10004D270(v12);
    }

    else
    {
    }
  }

  v14 = [v2 contentView];
  v15 = [v14 subviews];

  sub_10004D21C();
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v16 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v18 = 0;
    while (1)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v19 = *(v16 + 8 * v18 + 32);
      }

      v20 = v19;
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      [v19 setAlpha:0.0];

      ++v18;
      if (v21 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_21:

  v22 = [v2 contentView];
  v23 = [v22 titleView];

  if (v23)
  {
    [v23 setAlpha:0.0];
  }

  v24 = [v2 contentView];
  v25 = [v24 subtitleLabel];

  if (v25)
  {
    [v25 setAlpha:0.0];
  }

  v26 = objc_opt_self();
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v39 = sub_10004D268;
  v40 = v27;
  v35 = _NSConcreteStackBlock;
  v36 = 1107296256;
  v37 = sub_100041D88;
  v38 = &unk_10007B680;
  v28 = _Block_copy(&v35);

  [v26 animateWithDuration:65538 delay:v28 options:0 animations:1.5 completion:0.8];
  _Block_release(v28);
  if (v2[OBJC_IVAR____TtC21FindMyRemoteUIService29AirTagDetectionViewController_videoViewReady] == 1)
  {
    v29 = *&v2[OBJC_IVAR____TtC21FindMyRemoteUIService19MovieViewController_videoView];
    if (v29)
    {
      v30 = *&v2[OBJC_IVAR____TtC21FindMyRemoteUIService19MovieViewController_videoView + 8];
      v31 = *&v2[OBJC_IVAR____TtC21FindMyRemoteUIService19MovieViewController_videoView];
      swift_getObjectType();
      v32 = v29;
      [v32 setAlpha:0.0];
      v35 = v32;
      dispatch thunk of VideoPlaybackControllable.play()();
      v33 = swift_allocObject();
      *(v33 + 24) = v30;
      swift_unknownObjectWeakInit();
      v39 = sub_10004D350;
      v40 = v33;
      v35 = _NSConcreteStackBlock;
      v36 = 1107296256;
      v37 = sub_100041D88;
      v38 = &unk_10007B6A8;
      v34 = _Block_copy(&v35);

      [v26 animateWithDuration:65538 delay:v34 options:0 animations:1.5 completion:0.8];

      _Block_release(v34);
    }
  }

  v2[OBJC_IVAR____TtC21FindMyRemoteUIService29AirTagDetectionViewController_viewAppeared] = 1;
}

void sub_10004C490()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong contentView];

    v3 = [v2 subviews];
    sub_10004D21C();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v4 >> 62)
    {
      goto LABEL_14;
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
            goto LABEL_13;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        [v7 setAlpha:1.0];

        ++v6;
        if (v9 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    v12 = [v10 contentView];

    v13 = [v12 titleView];
    if (v13)
    {
      [v13 setAlpha:1.0];
    }
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    v16 = [v14 contentView];

    v17 = [v16 subtitleLabel];
    if (v17)
    {
      [v17 setAlpha:1.0];
    }
  }
}

void sub_10004C764()
{
  *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService29AirTagDetectionViewController_videoViewReady) = 1;
  if (*(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService29AirTagDetectionViewController_viewAppeared) == 1)
  {
    v1 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19MovieViewController_videoView);
    if (v1)
    {
      v2 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19MovieViewController_videoView + 8);
      v3 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService19MovieViewController_videoView);
      swift_getObjectType();
      v4 = v1;
      [v4 setAlpha:0.0];
      dispatch thunk of VideoPlaybackControllable.play()();
      v5 = objc_opt_self();
      v6 = swift_allocObject();
      *(v6 + 24) = v2;
      swift_unknownObjectWeakInit();
      v8[4] = sub_10004D214;
      v8[5] = v6;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 1107296256;
      v8[2] = sub_100041D88;
      v8[3] = &unk_10007B658;
      v7 = _Block_copy(v8);

      [v5 animateWithDuration:65538 delay:v7 options:0 animations:1.5 completion:0.8];

      _Block_release(v7);
    }
  }
}

void sub_10004C8EC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC21FindMyRemoteUIService29AirTagDetectionViewController_viewModel];
  v3 = sub_10004D194(&qword_100087DA8, type metadata accessor for AirTagDetectionViewModel);
  v4 = *(v3 + 32);
  v5 = type metadata accessor for AirTagDetectionViewModel();
  v4(v5, v3);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v7 = String._bridgeToObjectiveC()();

  v11[4] = sub_10004D118;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100047684;
  v11[3] = &unk_10007B5E0;
  v8 = _Block_copy(v11);
  v9 = [objc_opt_self() actionWithTitle:v7 style:0 handler:v8];

  _Block_release(v8);

  v10 = [v1 addAction:v9];
}

void sub_10004CAB0(uint64_t a1, uint64_t a2)
{
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000054DC(v3, qword_10008C038);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Connect button tapped. Unlock the screen...", v6, 2u);
  }

  v8[4] = sub_10004D138;
  v8[5] = a2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100003570;
  v8[3] = &unk_10007B608;
  v7 = _Block_copy(v8);

  SBSRequestPasscodeUnlockUI();
  _Block_release(v7);
}

uint64_t sub_10004CC1C(char a1)
{
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000054DC(v2, qword_10008C038);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v3, v4, "Screen unlocked: %{BOOL,public}d", v5, 8u);
  }

  if (a1)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v7 = *(result + OBJC_IVAR____TtC21FindMyRemoteUIService29AirTagDetectionViewController_viewModel);
      v8 = result;
      swift_unknownObjectRetain();

      v9 = sub_10004D194(&qword_100087DA8, type metadata accessor for AirTagDetectionViewModel);
      v10 = *(v9 + 40);
      v11 = type metadata accessor for AirTagDetectionViewModel();
      v10(v11, v9);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v12 = *(result + OBJC_IVAR____TtC21FindMyRemoteUIService29AirTagDetectionViewController_viewModel);
      v13 = result;
      swift_unknownObjectRetain();

      sub_10004D140();
      v14 = swift_allocError();
      v15 = sub_10004D194(&qword_100087DA8, type metadata accessor for AirTagDetectionViewModel);
      v16 = *(v15 + 48);
      v17 = type metadata accessor for AirTagDetectionViewModel();
      v16(v14, v17, v15);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_10004CE7C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setAlpha:1.0];
  }
}

void *sub_10004CEDC(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_10004CF50@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

id sub_10004CFB4(uint64_t a1, char *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  v6 = sub_10004D194(a3, a4);
  v7 = OBJC_IVAR____TtC21FindMyRemoteUIService19MovieViewController_stackView;
  v8 = [objc_allocWithZone(UIStackView) init];
  [v8 setAxis:1];
  [v8 setSpacing:10.0];
  [v8 setAlignment:3];
  [v8 setDistribution:0];
  *&a2[v7] = v8;
  v9 = OBJC_IVAR____TtC21FindMyRemoteUIService19MovieViewController_footerView;
  *&a2[v9] = [objc_allocWithZone(UIView) init];
  v10 = &a2[OBJC_IVAR____TtC21FindMyRemoteUIService19MovieViewController_videoView];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &a2[OBJC_IVAR____TtC21FindMyRemoteUIService19MovieViewController_viewModel];
  *v11 = a1;
  *(v11 + 1) = v6;
  v13.receiver = a2;
  v13.super_class = type metadata accessor for MovieViewController();
  return objc_msgSendSuper2(&v13, "initWithContentView:", 0);
}

uint64_t sub_10004D0E0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10004D120(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10004D140()
{
  result = qword_1000886B8;
  if (!qword_1000886B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000886B8);
  }

  return result;
}

uint64_t sub_10004D194(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10004D1DC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10004D21C()
{
  result = qword_100087278;
  if (!qword_100087278)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100087278);
  }

  return result;
}

uint64_t sub_10004D270(uint64_t a1)
{
  v2 = sub_100003958(&qword_100087AA8, &unk_100062F80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10004D2EC()
{
  result = qword_1000886C8;
  if (!qword_1000886C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000886C8);
  }

  return result;
}

char *sub_10004D364()
{
  v1 = OBJC_IVAR____TtC21FindMyRemoteUIService24FMSymbolBulletedListView_headerView;
  *&v0[v1] = [objc_allocWithZone(type metadata accessor for FMSymbolBulletedListHeaderView()) init];
  *&v0[OBJC_IVAR____TtC21FindMyRemoteUIService24FMSymbolBulletedListView_bulletViews] = _swiftEmptyArrayStorage;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for FMSymbolBulletedListView();
  v2 = objc_msgSendSuper2(&v4, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v2 setAxis:1];
  [v2 setAlignment:0];
  [v2 setBaselineRelativeArrangement:1];
  [v2 addArrangedSubview:*&v2[OBJC_IVAR____TtC21FindMyRemoteUIService24FMSymbolBulletedListView_headerView]];

  return v2;
}

id sub_10004D63C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMSymbolBulletedListView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10004D6E0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10004D700, 0, 0);
}

uint64_t sub_10004D700()
{
  v1 = v0[3];
  countAndFlagsBits = *(v1 + 112);
  if (*(v1 + 120))
  {
    object = *(v1 + 120);
  }

  else
  {
    v4 = [objc_opt_self() mainBundle];
    v12._object = 0xE000000000000000;
    v5._object = 0x8000000100061020;
    v5._countAndFlagsBits = 0xD00000000000001FLL;
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    v12._countAndFlagsBits = 0;
    v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, countAndFlagsBits, v4, v6, v12);
    countAndFlagsBits = v7._countAndFlagsBits;
    object = v7._object;
  }

  v8 = v0[2];
  *v8 = countAndFlagsBits;
  v8[1] = object;
  v10 = v0[1];

  return v10();
}

uint64_t sub_10004D7F8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10004D818, 0, 0);
}

uint64_t sub_10004D818()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 136);
  if (v2)
  {
    v3 = *(v1 + 128);
    v13 = v3;
    v14 = *(v1 + 136);

    if (IsAppleInternalBuild() && *(*(v0 + 24) + 144))
    {
      swift_errorRetain();
      _StringGuts.grow(_:)(26);

      v4 = _convertErrorToNSError(_:)();
      v5 = NSErrorToOSStatus();

      *(v0 + 32) = v5;
      v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v6);

      v7._countAndFlagsBits = 41;
      v7._object = 0xE100000000000000;
      String.append(_:)(v7);
      v8._countAndFlagsBits = 0xD000000000000017;
      v8._object = 0x8000000100061000;
      String.append(_:)(v8);

      v3 = v13;
      v2 = v14;
    }

    v9 = *(v0 + 16);
    *v9 = v3;
    v9[1] = v2;
  }

  else
  {
    v10 = *(v0 + 16);
    *v10 = 0;
    v10[1] = 0xE000000000000000;
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10004D998()
{
  v1 = v0[2];
  v0[3] = *(v1 + 152);
  v0[4] = *(v1 + 160);
  return _swift_task_switch(sub_10000F310, 0, 0);
}

uint64_t sub_10004D9C8()
{
  v1 = v0[15];
  v2 = v0[17];
  v3 = v0[18];

  v4 = v0[20];

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10004DA50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_10004DAAC(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10004DB48()
{

  unsafeFromAsyncTask<A>(_:)();
}

unint64_t sub_10004DBA0(uint64_t a1)
{
  result = sub_10004DBC8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10004DBC8()
{
  result = qword_1000887B8;
  if (!qword_1000887B8)
  {
    type metadata accessor for AirTagFailureViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000887B8);
  }

  return result;
}

uint64_t sub_10004DC1C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000F540;

  return sub_10004D97C(a1, v1);
}

uint64_t sub_10004DCB8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001616C;

  return sub_10004D7F8(a1, v1);
}

uint64_t sub_10004DD54(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001616C;

  return sub_10004D6E0(a1, v1);
}

uint64_t sub_10004DE3C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [objc_opt_self() mainBundle];
  v9._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0x5F4449454C505041;
  v5._object = a3;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v9)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_10004DF00()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1._object = 0x80000001000610A0;
  v1._countAndFlagsBits = 0xD000000000000014;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_10004DFA0()
{

  unsafeFromAsyncTask<A>(_:)();
}

unint64_t sub_10004DFF8(uint64_t a1)
{
  result = sub_10004E020();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10004E020()
{
  result = qword_100088868;
  if (!qword_100088868)
  {
    type metadata accessor for AirTagAppleIDViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100088868);
  }

  return result;
}

uint64_t sub_10004E074(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000F540;

  return sub_10000F2C4(a1, v1);
}

uint64_t sub_10004E110(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10004E130, 0, 0);
}

uint64_t sub_10004E130()
{
  v1 = *(*(v0 + 24) + 128);
  v2 = v1;
  if (!v1)
  {
    v3 = String._bridgeToObjectiveC()();
    v2 = [objc_opt_self() systemImageNamed:v3];
  }

  **(v0 + 16) = v2;
  v6 = *(v0 + 8);
  v4 = v1;

  return v6();
}

uint64_t sub_10004E200(uint64_t a1, uint64_t a2)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return _swift_task_switch(sub_10004E220, 0, 0);
}

uint64_t sub_10004E220()
{
  v1 = *(v0 + 168);
  v2 = *(v1 + 136);
  v3 = *(v1 + 144);
  v4 = *(v1 + 160);
  v5 = *(v1 + 168);
  v29 = *(v1 + 152);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v32 = *(v1 + 160);
    }

    else
    {
      v7 = *(v1 + 120);
      v31 = *(v1 + 112);

      v32 = 0;
    }
  }

  else
  {
    v6 = *(v1 + 120);
    v30 = *(v1 + 112);

    v32 = v3;
  }

  sub_100003958(&qword_100086FC0, &unk_100064E50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000623F0;
  *(inited + 32) = NSForegroundColorAttributeName;
  v9 = objc_opt_self();
  v28 = NSForegroundColorAttributeName;
  sub_10004EB44(v2, v3, v29, v4, v5);
  v10 = [v9 labelColor];
  v11 = sub_10004EB58();
  *(inited + 64) = v11;
  *(inited + 40) = v10;
  sub_10004F0A8(inited);
  swift_setDeallocating();
  sub_10003E140(inited + 32);
  v12 = objc_allocWithZone(NSMutableAttributedString);
  v13 = String._bridgeToObjectiveC()();

  type metadata accessor for Key(0);
  sub_10004F1D0(&qword_100086F08, 255, type metadata accessor for Key);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v15 = [v12 initWithString:v13 attributes:isa];

  if (v32)
  {
    v16 = objc_allocWithZone(NSAttributedString);
    v17 = String._bridgeToObjectiveC()();
    v18 = [v16 initWithString:v17];

    [v15 appendAttributedString:v18];
    v19 = swift_initStackObject();
    *(v19 + 16) = xmmword_1000623F0;
    *(v19 + 32) = v28;
    v20 = v28;
    v21 = [v9 secondaryLabelColor];
    *(v19 + 64) = v11;
    *(v19 + 40) = v21;
    sub_10004F0A8(v19);
    swift_setDeallocating();
    sub_10003E140(v19 + 32);
    v22 = objc_allocWithZone(NSAttributedString);
    v23 = String._bridgeToObjectiveC()();

    v24 = Dictionary._bridgeToObjectiveC()().super.isa;

    v25 = [v22 initWithString:v23 attributes:v24];

    [v15 appendAttributedString:v25];
  }

  **(v0 + 160) = v15;
  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_10004E5F0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 184);
  v6 = (*(v1 + 176) + **(v1 + 176));
  v3 = *(*(v1 + 176) + 4);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_10004E6DC;

  return v6();
}

uint64_t sub_10004E6DC()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10004E7D0()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v4 = *(v0 + 144);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);
  v7 = *(v0 + 168);

  sub_10004F320(v3, v4, v5, v6, v7);
  v8 = *(v0 + 184);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10004E87C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10004E8F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  sub_100003958(a3, a4);
  unsafeFromAsyncTask<A>(_:)();

  return v7;
}

uint64_t sub_10004E95C()
{

  unsafeFromAsyncTask<A>(_:)();
}

uint64_t sub_10004E9B4(uint64_t a1, uint64_t a2)
{
  result = sub_10004F1D0(&qword_100088920, a2, type metadata accessor for AirTagLinkingUserViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10004EA0C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000F540;

  return sub_10004E5D4(a1, v1);
}

uint64_t sub_10004EAA8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001616C;

  return sub_10004E200(a1, v1);
}

uint64_t sub_10004EB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    return sub_100035720(a1, a2, a3, a4, a5);
  }

  return a1;
}

unint64_t sub_10004EB58()
{
  result = qword_100086FC8;
  if (!qword_100086FC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100086FC8);
  }

  return result;
}

unint64_t sub_10004EBA4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_10004ECF4(a1, a2, v6);
}

unint64_t sub_10004EC1C(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10004EDAC(a1, v4);
}

unint64_t sub_10004ECB0(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10004EEB0(a1, v4);
}

unint64_t sub_10004ECF4(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_10004EDAC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10004EEB0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10004F2C4(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100005488(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10004EF78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003958(&qword_100088938, &qword_100064E80);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100014D60(v4, &v13, &qword_100086F38, &qword_100063790);
      v5 = v13;
      v6 = v14;
      result = sub_10004EBA4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10004F218(&v15, (v3[7] + 32 * result));
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

unint64_t sub_10004F0A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003958(&qword_100088930, &qword_100064E60);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100014D60(v4, &v11, &qword_100086FD0, &unk_100062510);
      v5 = v11;
      result = sub_10004EC1C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10004F218(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

uint64_t sub_10004F1D0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

_OWORD *sub_10004F218(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10004F228(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10001616C;

  return sub_10004E110(a1, v1);
}

uint64_t sub_10004F320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    return sub_100014EB4(a1, a2, a3, a4, a5);
  }

  return a1;
}

id sub_10004F334(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC21FindMyRemoteUIService34AirTagPairingSuccessViewController_featuresView;
  v8 = objc_allocWithZone(type metadata accessor for FMSymbolBulletedListView());
  v9 = v2;
  *&v3[v7] = [v8 init];
  v10 = OBJC_IVAR____TtC21FindMyRemoteUIService34AirTagPairingSuccessViewController_verticalStackView;
  v11 = [objc_allocWithZone(UIStackView) init];
  [v11 setAxis:1];
  [v11 setBaselineRelativeArrangement:1];
  [v11 setSpacing:36.0];
  *&v9[v10] = v11;
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000054DC(v12, qword_10008C038);
  v13 = v9;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v16 = 136315394;
    *(v16 + 4) = sub_10005B0A0(0xD000000000000010, 0x800000010005EF40, &v23);
    *(v16 + 12) = 2080;
    swift_getObjectType();

    sub_100003958(&qword_100088980, &qword_100064ED8);
    v17 = String.init<A>(describing:)();
    v19 = sub_10005B0A0(v17, v18, &v23);

    *(v16 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s %s", v16, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v20 = &v13[OBJC_IVAR____TtC21FindMyRemoteUIService34AirTagPairingSuccessViewController_viewModel];
  *v20 = a1;
  *(v20 + 1) = a2;
  v24.receiver = v13;
  v24.super_class = ObjectType;
  swift_unknownObjectRetain();
  v21 = objc_msgSendSuper2(&v24, "initWithContentView:", 0);
  sub_10004F9B4();
  sub_10005015C();

  swift_unknownObjectRelease();
  return v21;
}

id sub_10004F60C()
{
  ObjectType = swift_getObjectType();
  if (qword_100086DA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000054DC(v2, qword_10008C038);
  v3 = v0;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_10005B0A0(0x74696E696564, 0xE600000000000000, &v11);
    *(v6 + 12) = 2080;
    swift_getObjectType();
    sub_100003958(&qword_100088980, &qword_100064ED8);
    v7 = String.init<A>(describing:)();
    v9 = sub_10005B0A0(v7, v8, &v11);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v12.receiver = v3;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, "dealloc");
}

void sub_10004F860()
{
  v1 = OBJC_IVAR____TtC21FindMyRemoteUIService34AirTagPairingSuccessViewController_featuresView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for FMSymbolBulletedListView()) init];
  v2 = OBJC_IVAR____TtC21FindMyRemoteUIService34AirTagPairingSuccessViewController_verticalStackView;
  v3 = [objc_allocWithZone(UIStackView) init];
  [v3 setAxis:1];
  [v3 setBaselineRelativeArrangement:1];
  [v3 setSpacing:36.0];
  *(v0 + v2) = v3;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10004F9B4()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC21FindMyRemoteUIService34AirTagPairingSuccessViewController_viewModel];
  v3 = sub_100050BCC();
  v4 = *(v3 + 16);
  v5 = type metadata accessor for AirTagPairingSuccessViewModel();
  v4(v5, v3);
  v6 = String._bridgeToObjectiveC()();

  [v0 setTitle:v6];

  sub_100050518();
  v7 = *&v0[OBJC_IVAR____TtC21FindMyRemoteUIService34AirTagPairingSuccessViewController_featuresView];
  [*(v7 + OBJC_IVAR____TtC21FindMyRemoteUIService24FMSymbolBulletedListView_headerView) setHidden:1];
  v8 = [v0 contentView];
  v9 = *&v1[OBJC_IVAR____TtC21FindMyRemoteUIService34AirTagPairingSuccessViewController_verticalStackView];
  [v8 addSubview:v9];

  v10 = (*(v3 + 56))(v5, v3);
  if (v10)
  {
    v11 = v10;
    [v10 coordinate];
    v67 = MKCoordinateRegionMakeWithDistance(v66, 600.0, 400.0);
    latitude = v67.center.latitude;
    longitude = v67.center.longitude;
    latitudeDelta = v67.span.latitudeDelta;
    longitudeDelta = v67.span.longitudeDelta;
    v16 = (*(v3 + 48))(v5, v3);
    v18 = v17;
    v19 = type metadata accessor for AirTagMapAnnotation();
    v20 = objc_allocWithZone(v19);
    v21 = &v20[OBJC_IVAR____TtC21FindMyRemoteUIService19AirTagMapAnnotation_roleEmoji];
    *v21 = v16;
    v21[1] = v18;
    v22 = &v20[OBJC_IVAR____TtC21FindMyRemoteUIService19AirTagMapAnnotation_region];
    *v22 = latitude;
    v22[1] = longitude;
    v22[2] = latitudeDelta;
    v22[3] = longitudeDelta;
    *&v20[OBJC_IVAR____TtC21FindMyRemoteUIService19AirTagMapAnnotation_pairingLocation] = v11;
    v64.receiver = v20;
    v64.super_class = v19;
    v23 = objc_msgSendSuper2(&v64, "init");
  }

  else
  {
    v23 = 0;
  }

  v24 = type metadata accessor for AirTagMapViewController();
  v25 = objc_allocWithZone(v24);
  v26 = OBJC_IVAR____TtC21FindMyRemoteUIService23AirTagMapViewController_mapView;
  v27 = objc_allocWithZone(MKMapView);
  v63 = v23;
  *&v25[v26] = [v27 init];
  *&v25[OBJC_IVAR____TtC21FindMyRemoteUIService23AirTagMapViewController_mapAnnotation] = v23;
  v65.receiver = v25;
  v65.super_class = v24;
  v28 = objc_msgSendSuper2(&v65, "initWithNibName:bundle:", 0, 0);
  v29 = [v28 view];
  if (v29)
  {
    v30 = v29;
    [v29 _setContinuousCornerRadius:13.0];
    [v1 addChildViewController:v28];
    v61 = v28;
    v31 = [objc_allocWithZone(UIView) init];
    v32 = [objc_opt_self() clearColor];
    v62 = v31;
    [v31 setBackgroundColor:v32];

    [v9 addArrangedSubview:v30];
    [v9 addArrangedSubview:v7];
    [v9 addArrangedSubview:v31];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    v33 = [v1 contentView];
    v34 = [v33 mainContentGuide];

    v60 = [v34 topAnchor];
    v59 = objc_opt_self();
    sub_100003958(&unk_1000873B0, &unk_100062B10);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_100062AB0;
    v36 = [v9 topAnchor];
    v37 = [v36 constraintEqualToAnchor:v60];

    *(v35 + 32) = v37;
    v38 = [v9 leadingAnchor];
    v39 = [v34 leadingAnchor];
    v40 = [v38 constraintEqualToAnchor:v39];

    *(v35 + 40) = v40;
    v41 = [v9 trailingAnchor];
    v42 = [v34 trailingAnchor];
    v43 = [v41 constraintEqualToAnchor:v42];

    *(v35 + 48) = v43;
    v44 = [v9 bottomAnchor];
    v45 = [v34 bottomAnchor];
    v46 = [v44 constraintEqualToAnchor:v45];

    *(v35 + 56) = v46;
    sub_100004E64(0, &qword_100086FD8, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v59 activateConstraints:isa];

    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_100064110;
    v49 = [v30 widthAnchor];
    v50 = [v9 widthAnchor];
    v51 = [v49 constraintEqualToAnchor:v50];

    *(v48 + 32) = v51;
    v52 = [v30 heightAnchor];
    v53 = [v30 widthAnchor];
    v54 = [v52 constraintEqualToAnchor:v53 multiplier:0.583333333];

    *(v48 + 40) = v54;
    v55 = Array._bridgeToObjectiveC()().super.isa;

    [v59 activateConstraints:v55];

    sub_100050798();
    v28 = v62;
  }

  else
  {
    if (qword_100086DA8 != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    sub_1000054DC(v56, qword_10008C038);
    v34 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&_mh_execute_header, v34, v57, "No valid map view!", v58, 2u);
    }
  }
}

void sub_10005015C()
{
  v1 = *&v0[OBJC_IVAR____TtC21FindMyRemoteUIService34AirTagPairingSuccessViewController_viewModel];
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v28._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0x4E495F57454956;
  v4._object = 0xE700000000000000;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v28);

  sub_100003958(&qword_100086FB0, &unk_100062500);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000623F0;
  v8 = *(v1 + 152);
  v7 = *(v1 + 160);
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_100004DB8();
  *(v6 + 32) = v8;
  *(v6 + 40) = v7;

  static String.localizedStringWithFormat(_:_:)();

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v10 = String._bridgeToObjectiveC()();

  v26 = sub_100050BA4;
  v27 = v9;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_100047684;
  v25 = &unk_10007B940;
  v11 = _Block_copy(&aBlock);
  v12 = objc_opt_self();
  v13 = [v12 actionWithTitle:v10 style:0 handler:v11];

  _Block_release(v11);

  v14 = [v2 mainBundle];
  v29._object = 0xE000000000000000;
  v15._countAndFlagsBits = 1162760004;
  v15._object = 0xE400000000000000;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v29._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v29);

  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v18 = String._bridgeToObjectiveC()();

  v26 = sub_100050BC4;
  v27 = v17;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_100047684;
  v25 = &unk_10007B968;
  v19 = _Block_copy(&aBlock);
  v20 = [v12 actionWithTitle:v18 style:1 handler:v19];

  _Block_release(v19);

  v21 = [v0 addAction:v20];
}

void sub_100050518()
{
  v1 = v0;
  v2 = [objc_opt_self() systemBlueColor];
  v3 = [objc_opt_self() configurationWithHierarchicalColor:v2];

  v16 = v3;
  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() systemImageNamed:v4 withConfiguration:v16];

  if (v5)
  {
    v6 = [objc_opt_self() textAttachmentWithImage:v5];
    sub_100004E64(0, &qword_100088988, NSMutableAttributedString_ptr);
    v7 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment:v6];
    v8 = [objc_opt_self() mainBundle];
    v18._object = 0xE000000000000000;
    v9._countAndFlagsBits = 0x554F595F48544957;
    v9._object = 0xE800000000000000;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    v18._countAndFlagsBits = 0;
    v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v18);

    String.append(_:)(v11);

    v12 = objc_allocWithZone(NSAttributedString);
    v13 = String._bridgeToObjectiveC()();

    v14 = [v12 initWithString:v13];

    [v7 appendAttributedString:v14];
    v15 = v7;
    [v1 setAttributedSubtitle:v15];
  }
}

uint64_t sub_100050798()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC21FindMyRemoteUIService34AirTagPairingSuccessViewController_viewModel);
  v3 = sub_100050BCC();
  v4 = *(v3 + 64);
  v5 = type metadata accessor for AirTagPairingSuccessViewModel();
  v25 = v4(v5, v3);
  v6 = *(v25 + 16);
  if (v6)
  {
    v29 = objc_opt_self();
    v28 = objc_opt_self();
    v27 = objc_opt_self();
    v7 = (v25 + 80);
    v26 = *(v1 + OBJC_IVAR____TtC21FindMyRemoteUIService34AirTagPairingSuccessViewController_featuresView);
    do
    {
      v10 = *(v7 - 6);
      v11 = *(v7 - 5);
      v12 = *(v7 - 3);
      v30 = *(v7 - 4);
      v14 = *(v7 - 2);
      v13 = *(v7 - 1);
      v15 = *v7;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v16 = v15;

      v17 = v16;
      v18 = [v29 preferredFontForTextStyle:UIFontTextStyleTitle1];
      v19 = [v28 configurationWithFont:v18];

      v20 = v19;
      v21 = String._bridgeToObjectiveC()();
      v22 = [v27 _systemImageNamed:v21 withConfiguration:v20];

      if (v22)
      {
        v23 = v22;
        v22 = [v23 imageWithTintColor:v17 renderingMode:1];
      }

      else
      {
      }

      v7 += 7;
      objc_allocWithZone(type metadata accessor for FMSymbolBulletedListItemView());
      v8 = v22;

      v9 = sub_10003EC74(v10, v11, v30, v12, v22);
      [v26 addArrangedSubview:v9];

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      --v6;
    }

    while (v6);
  }
}

uint64_t sub_100050A34()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC21FindMyRemoteUIService34AirTagPairingSuccessViewController_viewModel);
    v2 = result;
    swift_unknownObjectRetain();

    v3 = sub_100050BCC();
    v4 = *(v3 + 72);
    v5 = type metadata accessor for AirTagPairingSuccessViewModel();
    v4(v5, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100050AD0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC21FindMyRemoteUIService34AirTagPairingSuccessViewController_viewModel);
    v2 = result;
    swift_unknownObjectRetain();

    v3 = sub_100050BCC();
    v4 = *(v3 + 80);
    v5 = type metadata accessor for AirTagPairingSuccessViewModel();
    v4(v5, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100050B6C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100050BAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100050BCC()
{
  result = qword_100087DE8;
  if (!qword_100087DE8)
  {
    type metadata accessor for AirTagPairingSuccessViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100087DE8);
  }

  return result;
}

uint64_t sub_100050C50()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1._countAndFlagsBits = 0x5449545F32415348;
  v1._object = 0xEA0000000000454CLL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_100050CF0()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1._object = 0x80000001000612B0;
  v1._countAndFlagsBits = 0xD00000000000001DLL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_100050DAC()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1._object = 0x8000000100060700;
  v1._countAndFlagsBits = 0xD000000000000015;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_100050E4C()
{

  unsafeFromAsyncTask<A>(_:)();
}

unint64_t sub_100050EA4(uint64_t a1)
{
  result = sub_100050ECC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100050ECC()
{
  result = qword_100088A38;
  if (!qword_100088A38)
  {
    type metadata accessor for AirTagManateeNotAvailableViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100088A38);
  }

  return result;
}

uint64_t sub_100050F20(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000F540;

  return sub_10000F2C4(a1, v1);
}

uint64_t sub_100050FE0()
{

  unsafeFromAsyncTask<A>(_:)();
}

unint64_t sub_100051038(uint64_t a1)
{
  result = sub_100051060();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100051060()
{
  result = qword_100088AE8;
  if (!qword_100088AE8)
  {
    type metadata accessor for AirTagPairingLockFailureViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100088AE8);
  }

  return result;
}

uint64_t sub_1000510B4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000F540;

  return sub_10000F2C4(a1, v1);
}