uint64_t sub_18A10(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_18AA8()
{
  result = qword_3BE50;
  if (!qword_3BE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE50);
  }

  return result;
}

uint64_t sub_18B08()
{
  type metadata accessor for MediaAutoLaunchModel();
  sub_D018();

  return sub_262E4();
}

uint64_t sub_18B64()
{
  sub_133CC(0xD00000000000001FLL, 0x800000000002CBB0);
  sub_41F0();
  sub_26584();
  sub_133CC(0xD000000000000020, 0x800000000002CBD0);
  sub_26584();
  sub_4060(&qword_3B4C0, &unk_29120);
  sub_18D64();
  return sub_26764();
}

uint64_t sub_18C8C()
{
  type metadata accessor for MediaAutoLaunchModel();
  sub_D018();
  v0 = sub_262E4();
  swift_getKeyPath();
  sub_262F4();

  return sub_266D4();
}

uint64_t sub_18D5C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_18C8C();
}

unint64_t sub_18D64()
{
  result = qword_3B4D0;
  if (!qword_3B4D0)
  {
    sub_40A8(&qword_3B4C0, &unk_29120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3B4D0);
  }

  return result;
}

uint64_t sub_18DC8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(&stru_20.maxprot + (swift_isaMask & **a1)))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_18E80@<X0>(uint64_t a1@<X8>)
{
  sub_133CC(0xD000000000000017, 0x800000000002CC00);
  sub_41F0();
  result = sub_26584();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_18EF0()
{
  type metadata accessor for MediaAutoLaunchModel();
  sub_D018();

  return sub_262D4();
}

uint64_t sub_18F58()
{
  v2 = *v0;
  v3 = v0[1];
  sub_133CC(0xD00000000000001FLL, 0x800000000002CBB0);
  sub_41F0();
  sub_26584();
  sub_133CC(0xD000000000000020, 0x800000000002CBD0);
  sub_26584();
  sub_4060(&qword_3B4C0, &unk_29120);
  sub_18D64();
  return sub_26764();
}

unint64_t sub_19098()
{
  result = qword_3BE58;
  if (!qword_3BE58)
  {
    sub_40A8(&qword_3BE60, &qword_29A58);
    sub_18D64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BE58);
  }

  return result;
}

void *sub_191B8(void *a1, void *a2, void *a3)
{
  v6 = a1;
  v7 = a2;
  v8 = a3;
  return a1;
}

void sub_19200(void *a1, void *a2, void *a3)
{
  *v3 = a1;
  v3[1] = a2;
  v3[2] = a3;
}

uint64_t sub_19250()
{
  sub_4060(&qword_3BE68, "BY");
  sub_4B1C(&qword_3BE70, &qword_3BE68, "BY");
  return sub_26514();
}

void sub_192F8(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  if ([objc_opt_self() activePairedWatchSupportsLiveActivities])
  {
    if (a3)
    {
      *(swift_allocObject() + 16) = a3;
      v8 = a3;
      sub_18B00();
      a3 = v9;
      v11 = v10;
      v13 = v12 & 1;
      sub_198A4(v9, v10, v12 & 1);
    }

    else
    {
      v11 = 0;
      v13 = -1;
    }

    sub_4060(&qword_3BE88, &qword_29BD8);
    sub_4060(&qword_3BE90, qword_29BE0);
    sub_197B0(&qword_3BE98, &qword_3BE88, &qword_29BD8, sub_1975C);
    sub_197B0(&qword_3BEA8, &qword_3BE90, qword_29BE0, sub_1982C);
    sub_264B4();
    sub_198C0(a3, v11, v13);
    v17 = v26;
    v18 = v27;
    v19 = v28;
    v20 = v29;
  }

  else
  {
    if (a1)
    {
      sub_19128(a1);
      v15 = v14;
      v16 = v14;
    }

    else
    {
      v15 = 0;
    }

    sub_4060(&qword_3BE88, &qword_29BD8);
    sub_4060(&qword_3BE90, qword_29BE0);
    sub_197B0(&qword_3BE98, &qword_3BE88, &qword_29BD8, sub_1975C);
    sub_197B0(&qword_3BEA8, &qword_3BE90, qword_29BE0, sub_1982C);
    sub_264B4();

    v17 = v26;
    v18 = v27;
    v19 = v28;
    v20 = v29;
  }

  sub_19880(v17, v18, v19, v20);
  if (a2)
  {
    v21 = sub_1D50C(a2);
    v23 = v22;
    v24 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  sub_19880(v17, v18, v19, v20);
  v25 = v23;
  sub_198B4(v17, v18, v19, v20);

  *a4 = v17;
  *(a4 + 8) = v18;
  *(a4 + 16) = v19;
  *(a4 + 17) = v20;
  *(a4 + 24) = v21;
  *(a4 + 32) = v23;

  sub_198B4(v17, v18, v19, v20);
}

uint64_t sub_19658()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  sub_4060(&qword_3BE68, "BY");
  sub_4B1C(&qword_3BE70, &qword_3BE68, "BY");
  return sub_26514();
}

unint64_t sub_1975C()
{
  result = qword_3BEA0;
  if (!qword_3BEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BEA0);
  }

  return result;
}

uint64_t sub_197B0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_40A8(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1982C()
{
  result = qword_3BEB0;
  if (!qword_3BEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BEB0);
  }

  return result;
}

id sub_19880(void *a1, void *a2, char a3, char a4)
{
  if (a4)
  {
    return a2;
  }

  else
  {
    return sub_1988C(a1, a2, a3);
  }
}

id sub_1988C(id result, void *a2, char a3)
{
  if (a3 != -1)
  {
    return sub_198A4(result, a2, a3 & 1);
  }

  return result;
}

id sub_198A4(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return a2;
  }

  else
  {
  }
}

void sub_198B4(uint64_t a1, void *a2, char a3, char a4)
{
  if (a4)
  {
  }

  else
  {
    sub_198C0(a1, a2, a3);
  }
}

void sub_198C0(uint64_t a1, void *a2, char a3)
{
  if (a3 != -1)
  {
    sub_198D8(a1, a2, a3 & 1);
  }
}

void sub_198D8(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_198E8()
{

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_1993C()
{
  v1 = v0 + OBJC_IVAR____TtC27CompanionAutoLaunchSettings41CompanionAutoLaunchSettingsViewController_model;
  v2 = *(v0 + OBJC_IVAR____TtC27CompanionAutoLaunchSettings41CompanionAutoLaunchSettingsViewController_model);
  v3 = *(v0 + OBJC_IVAR____TtC27CompanionAutoLaunchSettings41CompanionAutoLaunchSettingsViewController_model + 8);
  v4 = *(v1 + 16);
  v5 = v2;
  v6 = v3;
  v7 = v4;
  return v2;
}

id sub_1998C(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____TtC27CompanionAutoLaunchSettings41CompanionAutoLaunchSettingsViewController_iconFetcher;
  *&v3[v4] = [objc_allocWithZone(CSLPRFIconFetcher) init];
  v5 = a1;
  v6 = sub_1A984(v5);
  v8 = v7;
  v10 = v9;

  v11 = &v3[OBJC_IVAR____TtC27CompanionAutoLaunchSettings41CompanionAutoLaunchSettingsViewController_model];
  *v11 = v6;
  v11[1] = v8;
  v11[2] = v10;
  v14.receiver = v3;
  v14.super_class = v1;
  v12 = objc_msgSendSuper2(&v14, "initWithNibName:bundle:", 0, 0);

  return v12;
}

id sub_19A4C(void *a1)
{
  v3 = OBJC_IVAR____TtC27CompanionAutoLaunchSettings41CompanionAutoLaunchSettingsViewController_iconFetcher;
  *&v1[v3] = [objc_allocWithZone(CSLPRFIconFetcher) init];
  v4 = a1;
  v5 = sub_1A984(v4);
  v7 = v6;
  v9 = v8;

  v10 = &v1[OBJC_IVAR____TtC27CompanionAutoLaunchSettings41CompanionAutoLaunchSettingsViewController_model];
  *v10 = v5;
  v10[1] = v7;
  v10[2] = v9;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for CompanionAutoLaunchSettingsViewController();
  v11 = objc_msgSendSuper2(&v13, "initWithNibName:bundle:", 0, 0);

  return v11;
}

uint64_t sub_19B04(void *a1)
{
  v2 = sub_1A984(a1);

  return v2;
}

id sub_19C18(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

void sub_19C5C()
{
  v1 = OBJC_IVAR____TtC27CompanionAutoLaunchSettings41CompanionAutoLaunchSettingsViewController_iconFetcher;
  *(v0 + v1) = [objc_allocWithZone(CSLPRFIconFetcher) init];
  sub_26AE4();
  __break(1u);
}

void sub_19D68()
{
  v19 = sub_1A0C0();
  [v0 addChildViewController:?];
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1;
  v3 = [v19 view];
  if (!v3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = v3;
  [v2 addSubview:v3];

  v5 = [v19 view];
  if (!v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = v5;
  v7 = [v0 view];
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = v7;
  [v7 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [v6 setFrame:{v10, v12, v14, v16}];
  v17 = [v19 view];
  if (!v17)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v18 = v17;
  [v17 setAutoresizingMask:18];

  [v19 didMoveToParentViewController:v0];
}

void sub_19F48(void *a1)
{
  v2 = v1;
  v3 = sub_202C8(a1);
  v5 = v4;
  v6 = *&v1[OBJC_IVAR____TtC27CompanionAutoLaunchSettings41CompanionAutoLaunchSettingsViewController_iconFetcher];
  sub_DB00();
  sub_13620();
  v15 = v3;
  v16 = sub_26184();
  v17 = v6;
  v7 = objc_allocWithZone(sub_4060(&qword_3BF38, "TX"));
  v8 = v6;
  v9 = v5;

  v10 = sub_264A4();
  v11 = [v10 navigationItem];
  sub_133CC(0x50415F4854504544, 0xE900000000000050);
  v12 = sub_26834();

  [v11 setTitle:v12];

  v13 = [v2 navigationController];
  if (v13)
  {
    v14 = v13;
    [v13 pushViewController:v10 animated:1];
  }
}

uint64_t sub_1A0C0()
{
  v1 = *(v0 + OBJC_IVAR____TtC27CompanionAutoLaunchSettings41CompanionAutoLaunchSettingsViewController_model);
  v2 = *(v0 + OBJC_IVAR____TtC27CompanionAutoLaunchSettings41CompanionAutoLaunchSettingsViewController_model + 8);
  v3 = *(v0 + OBJC_IVAR____TtC27CompanionAutoLaunchSettings41CompanionAutoLaunchSettingsViewController_model + 16);
  v4 = v1;
  v5 = v2;
  CSLPRFDepthAutoLaunchBehavior.id.getter(v1);
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  CSLPRFDepthAutoLaunchBehavior.id.getter(sub_1ABA4);
  v6 = *(v0 + OBJC_IVAR____TtC27CompanionAutoLaunchSettings41CompanionAutoLaunchSettingsViewController_iconFetcher);
  sub_DB00();
  sub_13620();
  sub_26184();
  v7 = objc_allocWithZone(sub_4060(&qword_3BF40, qword_29D00));
  v8 = v6;
  return sub_264A4();
}

uint64_t sub_1A1F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C880();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A21C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1C8BC();
}

id sub_1A25C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_26834();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

uint64_t sub_1A400()
{
  v1 = OBJC_IVAR____TtC27CompanionAutoLaunchSettings40CompanionAutoLaunchSettingsConfiguration_isTinker;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A498(char a1)
{
  v3 = OBJC_IVAR____TtC27CompanionAutoLaunchSettings40CompanionAutoLaunchSettingsConfiguration_isTinker;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A590()
{
  v1 = OBJC_IVAR____TtC27CompanionAutoLaunchSettings40CompanionAutoLaunchSettingsConfiguration_supportsDepth;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A628(char a1)
{
  v3 = OBJC_IVAR____TtC27CompanionAutoLaunchSettings40CompanionAutoLaunchSettingsConfiguration_supportsDepth;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A728()
{
  v1 = OBJC_IVAR____TtC27CompanionAutoLaunchSettings40CompanionAutoLaunchSettingsConfiguration_depthAutoLaunchVersion;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A7C0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC27CompanionAutoLaunchSettings40CompanionAutoLaunchSettingsConfiguration_depthAutoLaunchVersion;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1A870()
{
  v0[OBJC_IVAR____TtC27CompanionAutoLaunchSettings40CompanionAutoLaunchSettingsConfiguration_isTinker] = 0;
  v0[OBJC_IVAR____TtC27CompanionAutoLaunchSettings40CompanionAutoLaunchSettingsConfiguration_supportsDepth] = 0;
  *&v0[OBJC_IVAR____TtC27CompanionAutoLaunchSettings40CompanionAutoLaunchSettingsConfiguration_depthAutoLaunchVersion] = 1;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CompanionAutoLaunchSettingsConfiguration();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1A94C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1A984(void *a1)
{
  type metadata accessor for MediaAutoLaunchModel();
  v2 = RemoteInstalledDepthAppsDataSource.__allocating_init()();
  type metadata accessor for LiveActivitiesAutoLaunchModel();
  v3 = RemoteInstalledDepthAppsDataSource.__allocating_init()();
  v4 = 0;
  if ((*&stru_68.segname[(swift_isaMask & *a1) + 8])())
  {
    type metadata accessor for DepthAutoLaunchModel();
    v5 = [objc_allocWithZone(CSLPRFDepthAutoLaunchAppSetting) initWithVersion:(*(&stru_68.offset + (swift_isaMask & *a1)))()];
    v4 = sub_1E5CC(2, v5);
    v6 = v4;
  }

  v7 = v2;
  v8 = v3;
  v9 = CSLPRFDepthAutoLaunchBehavior.id.getter(v2);

  return v9;
}

void type metadata accessor for CSLPRFDepthAutoLaunchVersion()
{
  if (!qword_3BF30)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_3BF30);
    }
  }
}

uint64_t sub_1AB6C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1ABA4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC27CompanionAutoLaunchSettings41CompanionAutoLaunchSettingsViewController_model + 8);
    v2 = Strong;
    v3 = v1;

    if (v1)
    {
      swift_beginAccess();
      v4 = swift_unknownObjectWeakLoadStrong();
      if (v4)
      {
        v5 = v4;
        sub_19F48(v3);
      }
    }
  }
}

uint64_t sub_1AC4C()
{
  type metadata accessor for DepthAutoLaunchModel();
  sub_1D250(&qword_3C080, type metadata accessor for DepthAutoLaunchModel);

  return sub_262E4();
}

double sub_1ACD8@<D0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  sub_1AD34(a1, v6);
  v3 = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6[4];
  *(a2 + 80) = v7;
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  return result;
}

void sub_1AD34(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for DepthAutoLaunchModel();
  sub_1D250(&qword_3C080, type metadata accessor for DepthAutoLaunchModel);
  v4 = a1;
  v21 = sub_262D4();
  v6 = v5;
  v7 = sub_26664();
  v8 = *(&stru_68.flags + (swift_isaMask & *v4));
  if ((v8)(v7) == 1)
  {
    KeyPath = swift_getKeyPath();
    v10 = sub_262D4();
    v12 = v11;
    v13 = v11;

    if (!(v8)(v14))
    {
      goto LABEL_7;
    }
  }

  else
  {

    v10 = 0;
    v12 = 0;
    KeyPath = 0;
    if (!v8())
    {
LABEL_7:

      v15 = 0;
      v17 = 0;
      goto LABEL_8;
    }
  }

  if ((*(&stru_68.offset + (swift_isaMask & *v4)))() != 1)
  {
    goto LABEL_7;
  }

  v15 = sub_23610(v4);
  v17 = v16;
  v18 = v16;
LABEL_8:
  swift_retain_n();
  v19 = v6;
  sub_1D370(v10, v12);
  v20 = v17;
  sub_1D3D4(v10, v12);

  *a2 = v21;
  *(a2 + 8) = v19;
  *(a2 + 16) = v22;
  *(a2 + 24) = v23;
  *(a2 + 32) = v10;
  *(a2 + 40) = v12;
  *(a2 + 48) = KeyPath;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = v15;
  *(a2 + 80) = v17;

  sub_1D3D4(v10, v12);
}

uint64_t sub_1AFB4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v52 = a4;
  v63 = a5;
  v8 = sub_4060(&qword_3BFF8, &qword_2A0B0);
  v60 = *(v8 - 8);
  v61 = v8;
  v9 = *(v60 + 64);
  __chkstk_darwin(v8);
  v50 = &v50 - v10;
  v11 = sub_4060(&qword_3C000, &qword_2A0B8);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v62 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v59 = &v50 - v15;
  v54 = sub_26414();
  v55 = *(v54 - 8);
  v16 = *(v55 + 64);
  __chkstk_darwin(v54);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_4060(&qword_3C008, &qword_2A0C0);
  v53 = *(v19 - 8);
  v20 = *(v53 + 64);
  __chkstk_darwin(v19);
  v22 = &v50 - v21;
  v57 = sub_4060(&qword_3C010, &qword_2A0C8);
  v56 = *(v57 - 8);
  v23 = *(v56 + 64);
  v24 = __chkstk_darwin(v57);
  v58 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v50 - v26;
  v72 = sub_133CC(0xD00000000000001ELL, 0x800000000002CF90);
  v73 = v28;
  type metadata accessor for DepthAutoLaunchModel();
  sub_1D250(&qword_3C080, type metadata accessor for DepthAutoLaunchModel);
  v51 = a2;
  v29 = sub_262E4();
  swift_getKeyPath();
  sub_262F4();

  v68 = v70;
  v69 = v71;
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = v52;
  type metadata accessor for CSLPRFDepthAutoLaunchBehavior();
  sub_4060(&qword_3C018, &qword_2A0F8);
  sub_1D250(&qword_3C0C0, type metadata accessor for CSLPRFDepthAutoLaunchBehavior);
  sub_4B1C(&qword_3C020, &qword_3C018, &qword_2A0F8);
  sub_41F0();
  sub_266C4();
  sub_26404();
  sub_4B1C(&qword_3C028, &qword_3C008, &qword_2A0C0);
  v30 = v27;
  v31 = v54;
  sub_265B4();
  (*(v55 + 8))(v18, v31);
  v32 = (*(v53 + 8))(v22, v19);
  if ((*(&stru_68.flags + (swift_isaMask & *v51)))(v32) == 2)
  {
    v33 = v50;
    sub_26774();
    v35 = v59;
    v34 = v60;
    v36 = v33;
    v37 = v61;
    (*(v60 + 32))(v59, v36, v61);
    v38 = 0;
    v39 = v37;
    v40 = v34;
  }

  else
  {
    v38 = 1;
    v40 = v60;
    v39 = v61;
    v35 = v59;
  }

  (*(v40 + 56))(v35, v38, 1, v39);
  v41 = v56;
  v42 = *(v56 + 16);
  v43 = v58;
  v44 = v57;
  v42(v58, v27, v57);
  v45 = v62;
  sub_CBD4(v35, v62, &qword_3C000, &qword_2A0B8);
  v46 = v63;
  v42(v63, v43, v44);
  v47 = sub_4060(&qword_3C030, &qword_2A100);
  sub_CBD4(v45, &v46[*(v47 + 48)], &qword_3C000, &qword_2A0B8);
  sub_126EC(v35, &qword_3C000, &qword_2A0B8);
  v48 = *(v41 + 8);
  v48(v30, v44);
  sub_126EC(v45, &qword_3C000, &qword_2A0B8);
  return (v48)(v43, v44);
}

uint64_t sub_1B6E0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(&stru_68.flags + (swift_isaMask & **a1)))();
  *a2 = result;
  return result;
}

uint64_t sub_1B794@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v48 = a2;
  v3 = sub_4060(&qword_3C038, &qword_2A108);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v49 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v44 - v7;
  v9 = sub_4060(&qword_3C040, &qword_2A110);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v47 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v44 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v44 - v18;
  __chkstk_darwin(v17);
  v21 = &v44 - v20;
  v50 = sub_133CC(0xD00000000000001ALL, 0x800000000002CFB0);
  v51 = v22;
  sub_41F0();
  *v21 = sub_26584();
  *(v21 + 1) = v23;
  v21[16] = v24 & 1;
  *(v21 + 3) = v25;
  *(v21 + 4) = 0;
  v26 = 1;
  v21[40] = 1;
  v50 = sub_133CC(0xD00000000000001ALL, 0x800000000002CFD0);
  v51 = v27;
  *v19 = sub_26584();
  *(v19 + 1) = v28;
  v19[16] = v29 & 1;
  *(v19 + 3) = v30;
  *(v19 + 4) = 1;
  v19[40] = 1;
  v31 = (*(&stru_68.offset + (swift_isaMask & *a1)))();
  if (!v31)
  {
    goto LABEL_4;
  }

  if (v31 == 1)
  {
    v50 = sub_133CC(0xD00000000000001CLL, 0x800000000002D060);
    v51 = v32;
    *v16 = sub_26584();
    *(v16 + 1) = v33;
    v16[16] = v34 & 1;
    *(v16 + 3) = v35;
    *(v16 + 4) = 2;
    v16[40] = 1;
    (*(v10 + 32))(v8, v16, v9);
    v26 = 0;
LABEL_4:
    (*(v10 + 56))(v8, v26, 1, v9);
    v36 = *(v10 + 16);
    v36(v16, v21, v9);
    v37 = v47;
    v36(v47, v19, v9);
    v38 = v49;
    sub_1D298(v8, v49);
    v45 = v8;
    v39 = v48;
    v36(v48, v16, v9);
    v40 = sub_4060(&qword_3C048, &qword_2A118);
    v46 = v16;
    v41 = v40;
    v36(&v39[*(v40 + 48)], v37, v9);
    sub_1D298(v38, &v39[*(v41 + 64)]);
    sub_1D308(v45);
    v42 = *(v10 + 8);
    v42(v19, v9);
    v42(v21, v9);
    sub_1D308(v38);
    v42(v37, v9);
    return (v42)(v46, v9);
  }

  result = sub_26AE4();
  __break(1u);
  return result;
}

uint64_t sub_1BC24(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (sub_25A4C(2, 26, 0, 0))
  {
    sub_264D4();

    return sub_26304();
  }

  else
  {
    sub_26314();
    swift_getWitnessTable();
    sub_264C4();
    sub_26304();
    sub_269E4();
    swift_getWitnessTable();
    sub_26314();
    swift_getWitnessTable();
    sub_264C4();
    return sub_26304();
  }
}

uint64_t sub_1BD88(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (sub_25A4C(2, 26, 0, 0))
  {
    sub_264D4();
    sub_26304();
  }

  else
  {
    sub_26314();
    swift_getWitnessTable();
    sub_264C4();
    sub_26304();
    sub_269E4();
    swift_getWitnessTable();
    sub_26314();
    swift_getWitnessTable();
    sub_264C4();
    sub_26304();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1BF88()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 16);
  v5 = v0[3];
  sub_4060(&qword_3BFE8, &qword_2A0A8);
  sub_4B1C(&qword_3BFF0, &qword_3BFE8, &qword_2A0A8);
  return sub_26524();
}

uint64_t sub_1C040(uint64_t a1)
{
  v2 = sub_263D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 32);
  v12 = *(a1 + 16);
  v7 = v12;
  if (v13 == 1)
  {
  }

  else
  {

    sub_26954();
    v9 = sub_26504();
    sub_26124();

    sub_263C4();
    swift_getAtKeyPath();
    sub_126EC(&v12, &qword_3BFD8, &qword_2A070);
    v8 = (*(v3 + 8))(v6, v2);
    v7 = v11;
  }

  v7(v8);
}

uint64_t sub_1C1EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_4060(&qword_3BFC8, &qword_2A030);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = v25 - v6;
  v8 = sub_4060(&qword_3BFB0, &qword_2A020);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = v25 - v11;
  v13 = *((*(&stru_68.reloff + (swift_isaMask & **(a1 + 8))))(v10) + 16);

  if (v13)
  {
    swift_storeEnumTagMultiPayload();
    sub_1D00C();
    return sub_264B4();
  }

  else
  {
    sub_26474();
    v25[0] = a2;
    sub_13488();
    sub_134A4();
    v15 = sub_26564();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    KeyPath = swift_getKeyPath();
    v23 = &v12[*(v8 + 36)];
    v24 = *(sub_4060(&qword_3BFC0, &qword_2A028) + 28);
    sub_26294();
    *v23 = KeyPath;
    *v12 = v15;
    *(v12 + 1) = v17;
    v12[16] = v19 & 1;
    *(v12 + 3) = v21;
    sub_CBD4(v12, v7, &qword_3BFB0, &qword_2A020);
    swift_storeEnumTagMultiPayload();
    sub_1D00C();
    sub_264B4();
    return sub_126EC(v12, &qword_3BFB0, &qword_2A020);
  }
}

uint64_t sub_1C4DC(uint64_t a1)
{
  v2 = sub_262A4();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_26354();
}

uint64_t sub_1C5A4()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (v0)
  {
    v1 = v0;
    v2 = sub_26834();
    [v1 openApplicationWithBundleIdentifier:v2 configuration:0 completionHandler:0];
  }

  else
  {
    __break(1u);
  }

  return static OpenURLAction.Result.handled.getter();
}

uint64_t sub_1C650()
{
  v1 = sub_4060(&qword_3BF68, &qword_2A000);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v3 = *(v0 + 16);
  v8[0] = *v0;
  v8[1] = v3;
  v9 = *(v0 + 32);
  v7 = v8;
  sub_1C1EC(v0, &v6[-v4]);
  sub_4060(&qword_3BF70, &qword_2A008);
  sub_1CE9C();
  sub_1CF80();
  return sub_26784();
}

uint64_t sub_1C758()
{
  type metadata accessor for DepthAutoLaunchModel();
  sub_1D250(&qword_3C080, type metadata accessor for DepthAutoLaunchModel);

  return sub_262D4();
}

double sub_1C7D4@<D0>(uint64_t a1@<X8>)
{
  sub_1AD34(*(v1 + 8), v6);
  v3 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v3;
  *(a1 + 64) = v6[4];
  *(a1 + 80) = v7;
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  return result;
}

uint64_t sub_1C880()
{
  sub_1CA24();
  sub_263E4();
  return v1;
}

void (*sub_1C8F8(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_1CA24();
  sub_263E4();
  *v4 = v4[1];
  return sub_1C990;
}

void sub_1C990(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v2[2] = v4;
  v5 = v2[4];
  v6 = v2[5];
  v2[3] = v3;
  if (a2)
  {

    sub_263F4();
    v7 = v2[1];
  }

  else
  {
    sub_263F4();
  }

  free(v2);
}

unint64_t sub_1CA24()
{
  result = qword_3D330[0];
  if (!qword_3D330[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_3D330);
  }

  return result;
}

uint64_t sub_1CAA4(uint64_t *a1, int a2)
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

uint64_t sub_1CAEC(uint64_t result, int a2, int a3)
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

unint64_t sub_1CB3C()
{
  result = qword_3BF48;
  if (!qword_3BF48)
  {
    sub_40A8(&qword_3BF50, &qword_29E10);
    sub_4B1C(&qword_3BF58, &qword_3BF60, &qword_29E18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BF48);
  }

  return result;
}

__n128 sub_1CBF8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1CC0C(uint64_t a1, int a2)
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

uint64_t sub_1CC54(uint64_t result, int a2, int a3)
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

uint64_t sub_1CD00@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = v3[1];
  v18 = *v3;
  v5 = *(&v18 + 1);
  v17 = *(v3 + 32);
  v16 = v4;
  v6 = swift_allocObject();
  v7 = *v3;
  v8 = v3[1];
  *(v6 + 48) = *(v3 + 32);
  *(v6 + 16) = v7;
  *(v6 + 32) = v8;
  sub_CBD4(&v18, v15, &qword_3BFD0, &qword_2A068);
  sub_CBD4(&v16, v15, &qword_3BFD8, &qword_2A070);
  sub_1D184();
  v9 = sub_266A4();
  v10 = *((*(&stru_68.reloff + (swift_isaMask & *v5)))(v9) + 16);

  LOBYTE(v3) = v10 == 0;
  KeyPath = swift_getKeyPath();
  v12 = swift_allocObject();
  *(v12 + 16) = v3;
  result = sub_4060(&qword_3BF70, &qword_2A008);
  v14 = (a1 + *(result + 36));
  *v14 = KeyPath;
  v14[1] = sub_1333C;
  v14[2] = v12;
  return result;
}

unint64_t sub_1CE9C()
{
  result = qword_3BF78;
  if (!qword_3BF78)
  {
    sub_40A8(&qword_3BF70, &qword_2A008);
    sub_4B1C(&qword_3BF80, &qword_3BF88, &qword_2A010);
    sub_4B1C(&qword_3BF90, &qword_3BF98, &qword_2A018);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BF78);
  }

  return result;
}

unint64_t sub_1CF80()
{
  result = qword_3BFA0;
  if (!qword_3BFA0)
  {
    sub_40A8(&qword_3BF68, &qword_2A000);
    sub_1D00C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BFA0);
  }

  return result;
}

unint64_t sub_1D00C()
{
  result = qword_3BFA8;
  if (!qword_3BFA8)
  {
    sub_40A8(&qword_3BFB0, &qword_2A020);
    sub_4B1C(&qword_3BFB8, &qword_3BFC0, &qword_2A028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BFA8);
  }

  return result;
}

uint64_t sub_1D0C4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  sub_1D108();

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_1D11C@<X0>(uint64_t *a1@<X8>)
{
  v3 = (*&stru_B8.segname[(swift_isaMask & **(*(v1 + 16) + 8)) - 8])();
  result = CSLPRFDepthAutoLaunchBehavior.id.getter(v3);
  *a1 = result;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  return result;
}

unint64_t sub_1D184()
{
  result = qword_3BFE0;
  if (!qword_3BFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3BFE0);
  }

  return result;
}

void type metadata accessor for CSLPRFDepthAutoLaunchBehavior()
{
  if (!qword_3C160)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_3C160);
    }
  }
}

uint64_t sub_1D250(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D298(uint64_t a1, uint64_t a2)
{
  v4 = sub_4060(&qword_3C038, &qword_2A108);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D308(uint64_t a1)
{
  v2 = sub_4060(&qword_3C038, &qword_2A108);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D370(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;

    return sub_1D3C8();
  }

  return result;
}

uint64_t sub_1D3D4(uint64_t a1, void *a2)
{
  if (a2)
  {

    return sub_1D108();
  }

  return result;
}

unint64_t sub_1D430()
{
  result = qword_3C050;
  if (!qword_3C050)
  {
    sub_40A8(&qword_3C058, "tU");
    sub_1CE9C();
    sub_1CF80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C050);
  }

  return result;
}

uint64_t static DepthApp.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == a5 && a2 == a6 || (v12 = sub_26B34(), result = 0, (v12 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return sub_26B34();
    }
  }

  return result;
}

uint64_t DepthApp.hash(into:)()
{
  sub_26854();

  return sub_26854();
}

Swift::Int DepthApp.hashValue.getter()
{
  sub_26B84();
  sub_26854();
  sub_26854();
  return sub_26BA4();
}

uint64_t sub_1D6E0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_26B34(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_26B34();
    }
  }

  return result;
}

uint64_t sub_1D784@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

Swift::Int sub_1D790()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_26B84();
  sub_26854();
  sub_26854();
  return sub_26BA4();
}

uint64_t sub_1D7F8()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_26854();

  return sub_26854();
}

Swift::Int sub_1D848()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_26B84();
  sub_26854();
  sub_26854();
  return sub_26BA4();
}

id sub_1D8B8()
{
  type metadata accessor for DepthUnitPreferenceStore();
  v0 = sub_23E4C();
  return DepthUnitPreferenceStore.__allocating_init(userDefaults:)(v0);
}

uint64_t sub_1D900()
{
  v1 = *(v0 + OBJC_IVAR____TtC27CompanionAutoLaunchSettings20DepthAutoLaunchModel_installedAppsDataSource + 24);
  v2 = *(v0 + OBJC_IVAR____TtC27CompanionAutoLaunchSettings20DepthAutoLaunchModel_installedAppsDataSource + 32);
  sub_D5F0((v0 + OBJC_IVAR____TtC27CompanionAutoLaunchSettings20DepthAutoLaunchModel_installedAppsDataSource), v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_1D968(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for DepthAutoLaunchModel();
  sub_1EAD0(&qword_3C080, v4, type metadata accessor for DepthAutoLaunchModel);
  sub_26194();
  sub_261A4();

  v5 = *&v1[OBJC_IVAR____TtC27CompanionAutoLaunchSettings20DepthAutoLaunchModel_autoLaunchSettings];
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = v2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1DB84;
  *(v7 + 24) = v6;
  v11[4] = sub_1DB90;
  v11[5] = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1DBB8;
  v11[3] = &unk_369A8;
  v8 = _Block_copy(v11);
  v9 = v2;

  [v5 updateSettingsWithBlock:v8];
  _Block_release(v8);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DB4C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1DB90()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_1DBB8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

uint64_t sub_1DC04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t (*sub_1DC1C(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = [*(v1 + OBJC_IVAR____TtC27CompanionAutoLaunchSettings20DepthAutoLaunchModel_autoLaunchSettings) settings];
  v4 = [v3 autoLaunchBehavior];

  *a1 = v4;
  return sub_1DCA0;
}

uint64_t sub_1DCC4()
{
  v1 = [*(v0 + OBJC_IVAR____TtC27CompanionAutoLaunchSettings20DepthAutoLaunchModel_autoLaunchSettings) settings];
  v2 = [v1 bundleID];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_26844();
  v5 = v4;

  v6 = (*(&stru_68.reloff + (swift_isaMask & *v0)))();
  v7 = (v6 + 56);
  v8 = *(v6 + 16) + 1;
  while (1)
  {
    if (!--v8)
    {

      return 0;
    }

    v9 = *(v7 - 3);
    v10 = *(v7 - 1);
    v11 = *v7;
    if (v9 == v3 && *(v7 - 2) == v5)
    {
      break;
    }

    v7 += 4;
    if (sub_26B34())
    {
      goto LABEL_13;
    }
  }

  v9 = v3;
LABEL_13:

  return v9;
}

uint64_t sub_1DE34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for DepthAutoLaunchModel();
  sub_1EAD0(&qword_3C080, v10, type metadata accessor for DepthAutoLaunchModel);
  sub_26194();
  sub_261A4();

  v11 = *&v4[OBJC_IVAR____TtC27CompanionAutoLaunchSettings20DepthAutoLaunchModel_autoLaunchSettings];
  v12 = swift_allocObject();
  v12[2] = v5;
  v12[3] = a1;
  v12[4] = a2;
  v12[5] = a3;
  v12[6] = a4;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1E05C;
  *(v13 + 24) = v12;
  v17[4] = sub_1EFBC;
  v17[5] = v13;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_1DBB8;
  v17[3] = &unk_36A20;
  v14 = _Block_copy(v17);
  v15 = v5;

  [v11 updateSettingsWithBlock:v14];
  _Block_release(v14);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E010()
{
  if (*(v0 + 32))
  {

    v1 = *(v0 + 48);
  }

  return _swift_deallocObject(v0, 56, 7);
}

void sub_1E05C(void *a1)
{
  v3 = v1[3];
  v4 = v1[4];
  [a1 setChangeSource:*(v1[2] + OBJC_IVAR____TtC27CompanionAutoLaunchSettings20DepthAutoLaunchModel_changeSource)];
  if (v4)
  {
    v5 = sub_26834();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [a1 setBundleID:?];
}

void (*sub_1E0F0(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  *v3 = sub_1DCC4();
  v4[1] = v5;
  v4[2] = v6;
  v4[3] = v7;
  return sub_1E16C;
}

void sub_1E16C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = (*a1)[4];
  if (a2)
  {
    sub_E2D0(**a1, v4);
    sub_1DE34(v3, v4, v5, v6);
    v8 = v2[2];
    v9 = v2[3];
    sub_E364(*v2, v2[1]);
  }

  else
  {
    sub_1DE34(**a1, v4, v5, v6);
  }

  free(v2);
}

id sub_1E218(SEL *a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC27CompanionAutoLaunchSettings20DepthAutoLaunchModel_autoLaunchSettings) settings];
  v4 = [v3 *a1];

  return v4;
}

uint64_t sub_1E270(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for DepthAutoLaunchModel();
  sub_1EAD0(&qword_3C080, v4, type metadata accessor for DepthAutoLaunchModel);
  sub_26194();
  sub_261A4();

  v5 = *&v1[OBJC_IVAR____TtC27CompanionAutoLaunchSettings20DepthAutoLaunchModel_autoLaunchSettings];
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = v2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1E430;
  *(v7 + 24) = v6;
  v11[4] = sub_1EFBC;
  v11[5] = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1DBB8;
  v11[3] = &unk_36A98;
  v8 = _Block_copy(v11);
  v9 = v2;

  [v5 updateSettingsWithBlock:v8];
  _Block_release(v8);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

id sub_1E43C(void *a1, SEL *a2)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  [a1 *a2];
  v6 = *(v5 + OBJC_IVAR____TtC27CompanionAutoLaunchSettings20DepthAutoLaunchModel_changeSource);

  return [a1 setChangeSource:v6];
}

uint64_t (*sub_1E4A0(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = [*(v1 + OBJC_IVAR____TtC27CompanionAutoLaunchSettings20DepthAutoLaunchModel_autoLaunchSettings) settings];
  v4 = [v3 threshold];

  *a1 = v4;
  return sub_1E524;
}

id sub_1E594()
{
  v0 = objc_allocWithZone(CSLPRFDepthAutoLaunchAppSetting);

  return [v0 init];
}

char *sub_1E610(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC27CompanionAutoLaunchSettings20DepthAutoLaunchModel_stingSettingsModel;
  *&v3[v6] = [objc_allocWithZone(CSLPRFStingSettingsModel) init];
  *&v3[OBJC_IVAR____TtC27CompanionAutoLaunchSettings20DepthAutoLaunchModel_subscriptions] = &_swiftEmptySetSingleton;
  v7 = OBJC_IVAR____TtC27CompanionAutoLaunchSettings20DepthAutoLaunchModel_depthUnitPreferenceStore;
  type metadata accessor for DepthUnitPreferenceStore();
  v8 = sub_23E4C();
  *&v3[v7] = DepthUnitPreferenceStore.__allocating_init(userDefaults:)(v8);
  v9 = type metadata accessor for RemoteInstalledDepthAppsDataSource();
  v10 = RemoteInstalledDepthAppsDataSource.__allocating_init()();
  v11 = &v3[OBJC_IVAR____TtC27CompanionAutoLaunchSettings20DepthAutoLaunchModel_installedAppsDataSource];
  *(v11 + 3) = v9;
  *(v11 + 4) = &off_36438;
  *v11 = v10;
  *&v3[OBJC_IVAR____TtC27CompanionAutoLaunchSettings20DepthAutoLaunchModel_changeSource] = a1;
  *&v3[OBJC_IVAR____TtC27CompanionAutoLaunchSettings20DepthAutoLaunchModel_autoLaunchSettings] = a2;
  v28.receiver = v3;
  v28.super_class = type metadata accessor for DepthAutoLaunchModel();
  v23 = a2;
  v12 = objc_msgSendSuper2(&v28, "init");
  sub_1E98C(v12 + OBJC_IVAR____TtC27CompanionAutoLaunchSettings20DepthAutoLaunchModel_installedAppsDataSource, v25);
  v13 = v26;
  v14 = v27;
  sub_D5F0(v25, v26);
  v15 = *(v14 + 16);
  v16 = v12;
  v15(v24, v13, v14);
  sub_D5F0(v24, v24[3]);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_26244();

  swift_beginAccess();
  sub_26174();
  swift_endAccess();

  sub_D634(v24);
  sub_D634(v25);
  v17 = *&v16[OBJC_IVAR____TtC27CompanionAutoLaunchSettings20DepthAutoLaunchModel_depthUnitPreferenceStore];
  sub_1EAD0(&qword_3C0A8, 255, type metadata accessor for DepthUnitPreferenceStore);

  v18 = sub_26194();

  v25[0] = v18;
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1EA28;
  *(v20 + 24) = v19;
  sub_261B4();
  sub_26244();

  swift_beginAccess();
  sub_26174();
  swift_endAccess();

  v21 = *&v16[OBJC_IVAR____TtC27CompanionAutoLaunchSettings20DepthAutoLaunchModel_autoLaunchSettings];
  [v21 setDelegate:v16];

  return v16;
}

uint64_t sub_1E98C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1E9F0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1EA28()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    type metadata accessor for DepthAutoLaunchModel();
    sub_1EAD0(&qword_3C080, v2, type metadata accessor for DepthAutoLaunchModel);
    sub_26194();

    sub_261A4();
  }

  return result;
}

uint64_t sub_1EAD0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1EB18()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1EB50()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

id sub_1EBD8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DepthAutoLaunchModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1EC88@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DepthAutoLaunchModel();
  result = sub_26194();
  *a1 = result;
  return result;
}

uint64_t sub_1ECC4()
{
  type metadata accessor for DepthAutoLaunchModel();
  sub_1EAD0(&qword_3C080, v0, type metadata accessor for DepthAutoLaunchModel);
  sub_26194();
  sub_261A4();
}

unint64_t sub_1EE2C()
{
  result = qword_3C0B0;
  if (!qword_3C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C0B0);
  }

  return result;
}

void sub_1EF50(uint64_t a1, unint64_t *a2)
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

unint64_t sub_1EFC4()
{
  result = qword_3C080;
  if (!qword_3C080)
  {
    type metadata accessor for DepthAutoLaunchModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C080);
  }

  return result;
}

uint64_t sub_1F01C()
{
  type metadata accessor for DepthAutoLaunchModel();
  sub_1EFC4();

  return sub_262E4();
}

uint64_t sub_1F078()
{
  sub_4060(&qword_3C170, &qword_2A4A0);
  sub_40A8(&qword_3C178, &unk_2A4A8);
  sub_26414();
  sub_4B1C(&qword_3C180, &qword_3C178, &unk_2A4A8);
  swift_getOpaqueTypeConformance2();
  return sub_26514();
}

uint64_t sub_1F178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16 = a2;
  v15 = a1;
  v21 = a3;
  v19 = sub_26414();
  v20 = *(v19 - 8);
  v3 = *(v20 + 64);
  __chkstk_darwin(v19);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_4060(&qword_3C178, &unk_2A4A8);
  v18 = *(v17 - 8);
  v6 = *(v18 + 64);
  __chkstk_darwin(v17);
  v8 = &v14 - v7;
  type metadata accessor for DepthAutoLaunchModel();
  sub_1EFC4();
  v9 = sub_262E4();
  swift_getKeyPath();
  sub_262F4();

  v10 = v30;
  v24 = v28;
  v25 = v29;
  v26 = v30;
  v27 = v31;
  sub_267A4();
  sub_4060(&qword_3C1A8, &qword_2A620);
  sub_26724();

  sub_E364(v10, *(&v10 + 1));
  v22 = v15;
  v23 = v16;
  v28 = v32;
  v29 = v33;
  v30 = v34;
  v31 = v35;
  sub_4060(&qword_3C1B0, &qword_2A628);
  sub_4060(&qword_3C1B8, &qword_2A630);
  sub_20008();
  sub_200E0();
  sub_266B4();
  sub_26404();
  sub_4B1C(&qword_3C180, &qword_3C178, &unk_2A4A8);
  v11 = v17;
  v12 = v19;
  sub_265B4();
  (*(v20 + 8))(v5, v12);
  return (*(v18 + 8))(v8, v11);
}

uint64_t sub_1F514@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*&stru_B8.segname[(swift_isaMask & **a1) - 8])();
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}

uint64_t sub_1F574(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *&stru_B8.segname[swift_isaMask & **a2];
  sub_E2D0(*a1, v3);
  return v6(v2, v3, v4, v5);
}

uint64_t sub_1F60C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
}

uint64_t sub_1F654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{

  v10 = sub_5E48();
  sub_14B50(a1, a2, v10 & 1, &v21);
  *&v27[0] = a3;
  *(&v27[0] + 1) = a4;
  sub_41F0();

  v11 = sub_26584();
  v13 = v12;
  v14 = v24;
  v15 = v25;
  v26[3] = v24;
  v26[4] = v25;
  v17 = v21;
  v16 = v22;
  v26[1] = v22;
  v26[2] = v23;
  v26[0] = v21;
  LOBYTE(a1) = v18 & 1;
  *(a5 + 32) = v23;
  *(a5 + 48) = v14;
  *(a5 + 64) = v15;
  *a5 = v17;
  *(a5 + 16) = v16;
  *(a5 + 80) = v11;
  *(a5 + 88) = v12;
  *(a5 + 96) = v18 & 1;
  *(a5 + 104) = v19;
  sub_EB84(v26, v27);
  sub_4B64(v11, v13, a1);

  sub_4B74(v11, v13, a1);

  v27[2] = v23;
  v27[3] = v24;
  v27[4] = v25;
  v27[0] = v21;
  v27[1] = v22;
  return sub_EBE0(v27);
}

uint64_t sub_1F790(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (sub_25A4C(2, 26, 0, 0))
  {
    sub_264D4();

    return sub_26304();
  }

  else
  {
    sub_26314();
    swift_getWitnessTable();
    sub_264C4();
    sub_26304();
    sub_269E4();
    swift_getWitnessTable();
    sub_26314();
    swift_getWitnessTable();
    sub_264C4();
    return sub_26304();
  }
}

uint64_t sub_1F8F4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (sub_25A4C(2, 26, 0, 0))
  {
    sub_264D4();
    sub_26304();
  }

  else
  {
    sub_26314();
    swift_getWitnessTable();
    sub_264C4();
    sub_26304();
    sub_269E4();
    swift_getWitnessTable();
    sub_26314();
    swift_getWitnessTable();
    sub_264C4();
    sub_26304();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1FAF4@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = sub_26424();
  v23 = 1;
  sub_1F654(v4, v3, v6, v5, &v15);
  v28 = v19;
  v29 = v20;
  v30 = v21;
  v24 = v15;
  v25 = v16;
  v26 = v17;
  v27 = v18;
  v31[0] = v15;
  v31[1] = v16;
  v31[2] = v17;
  v31[3] = v18;
  v31[4] = v19;
  v31[5] = v20;
  v31[6] = v21;
  sub_1FE28(&v24, &v14);
  sub_1FE98(v31);
  *&v22[71] = v28;
  *&v22[55] = v27;
  *&v22[23] = v25;
  *&v22[7] = v24;
  *&v22[87] = v29;
  *&v22[103] = v30;
  *&v22[39] = v26;
  v8 = *&v22[80];
  *(a1 + 81) = *&v22[64];
  *(a1 + 97) = v8;
  *(a1 + 113) = *&v22[96];
  v9 = *&v22[16];
  *(a1 + 17) = *v22;
  *(a1 + 33) = v9;
  v10 = *&v22[48];
  *(a1 + 49) = *&v22[32];
  v11 = v23;
  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = v11;
  v12 = *&v22[111];
  *(a1 + 65) = v10;
  *(a1 + 128) = v12;
  *(a1 + 136) = v4;
  *(a1 + 144) = v3;
  *(a1 + 152) = v6;
  *(a1 + 160) = v5;
  *(a1 + 168) = 1;
}

uint64_t sub_1FC3C()
{
  type metadata accessor for DepthAutoLaunchModel();
  sub_1EFC4();

  return sub_262D4();
}

uint64_t sub_1FC88()
{
  v2 = *v0;
  v3 = v0[1];
  sub_4060(&qword_3C170, &qword_2A4A0);
  sub_40A8(&qword_3C178, &unk_2A4A8);
  sub_26414();
  sub_4B1C(&qword_3C180, &qword_3C178, &unk_2A4A8);
  swift_getOpaqueTypeConformance2();
  return sub_26514();
}

uint64_t sub_1FE28(uint64_t a1, uint64_t a2)
{
  v4 = sub_4060(&qword_3C1A0, &qword_2A5F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1FE98(uint64_t a1)
{
  v2 = sub_4060(&qword_3C1A0, &qword_2A5F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1FF00()
{
  (*(&stru_68.reloff + (swift_isaMask & **(v0 + 24))))();
  sub_4060(&qword_3BD50, &qword_297B0);
  sub_4B1C(&qword_3C1D8, &qword_3BD50, &qword_297B0);
  sub_20164();
  sub_201B8();
  return sub_26744();
}

unint64_t sub_20008()
{
  result = qword_3C1C0;
  if (!qword_3C1C0)
  {
    sub_40A8(&qword_3C1B0, &qword_2A628);
    sub_2008C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1C0);
  }

  return result;
}

unint64_t sub_2008C()
{
  result = qword_3C1C8;
  if (!qword_3C1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1C8);
  }

  return result;
}

unint64_t sub_200E0()
{
  result = qword_3C1D0;
  if (!qword_3C1D0)
  {
    sub_40A8(&qword_3C1B8, &qword_2A630);
    sub_20164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1D0);
  }

  return result;
}

unint64_t sub_20164()
{
  result = qword_3DB68[0];
  if (!qword_3DB68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_3DB68);
  }

  return result;
}

unint64_t sub_201B8()
{
  result = qword_3C1E0;
  if (!qword_3C1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C1E0);
  }

  return result;
}

uint64_t sub_2020C()
{
  sub_40A8(&qword_3C188, qword_2A4B8);
  sub_40A8(&qword_3C1B0, &qword_2A628);
  sub_4B1C(&qword_3C1E8, &qword_3C188, qword_2A4B8);
  sub_20008();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_202E8()
{
  result = qword_3B928;
  if (!qword_3B928)
  {
    type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3B928);
  }

  return result;
}

uint64_t sub_20358(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, unint64_t))
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp();
  v6 = sub_202E8();

  return a1(v2, v3, v4, v5, v6);
}

uint64_t sub_203CC()
{
  v3 = *(v0 + 24);
  sub_4060(&qword_3BB08, &qword_28E50);
  sub_26674();
  return v2;
}

uint64_t sub_2041C()
{
  v2 = *(v0 + 24);
  sub_4060(&qword_3BB08, &qword_28E50);
  return sub_26684();
}

void (*sub_20470(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 24);
  *v3 = v4;
  *(v3 + 48) = *(v3 + 8);
  v5 = v3 + 48;
  *(v3 + 16) = v4;
  sub_CBD4(v3 + 48, v3 + 32, &qword_3BB10, &qword_28E58);
  *(v5 + 8) = sub_4060(&qword_3BB08, &qword_28E50);
  sub_26674();
  return sub_20530;
}

void sub_20530(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  v3 = *(*a1 + 56);
  *(v1 + 32) = **a1;
  *(v1 + 65) = v2;
  sub_26684();
  sub_126EC(v1, &qword_3BB08, &qword_28E50);

  free(v1);
}

uint64_t sub_2059C()
{
  v3 = *(v0 + 24);
  sub_4060(&qword_3BB08, &qword_28E50);
  sub_26694();
  return v2;
}

uint64_t sub_205F0()
{
  v3 = *(v0 + 40);
  v4 = *(v0 + 56);
  sub_4060(&qword_3BB18, &qword_28E60);
  sub_266F4();
  return v2;
}

uint64_t sub_20648()
{
  v2 = *(v0 + 40);
  v3 = *(v0 + 56);
  sub_4060(&qword_3BB18, &qword_28E60);
  return sub_26704();
}

void (*sub_206A4(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  *(v3 + 56) = v5;
  *(v3 + 64) = v6;
  v7 = *(v1 + 56);
  *(v3 + 19) = v7;
  *(v3 + 48) = v5;
  *v3 = v5;
  *(v3 + 8) = v6;
  *(v3 + 16) = v7;
  sub_F360(v3 + 48, v3 + 24);

  *(v4 + 72) = sub_4060(&qword_3BB18, &qword_28E60);
  sub_266F4();
  return sub_F2E8;
}

uint64_t sub_20760()
{
  v3 = *(v0 + 40);
  v4 = *(v0 + 56);
  sub_4060(&qword_3BB18, &qword_28E60);
  sub_26714();
  return v2;
}

uint64_t sub_207BC()
{
  v1 = 0xD000000000000026;
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 16);
  type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp();
  sub_202E8();
  v5 = sub_26264();
  v6 = (*(*v5 + 200))(v5);

  if (v6 == 1)
  {
    v7 = "AUTOLAUNCH_SETTING_APP";
    v1 = 0xD00000000000002DLL;
  }

  else
  {
    v8 = sub_26264();
    v9 = (*(*v8 + 200))(v8);

    v7 = "AUTO_LAUNCH_TITLE";
    if (v9 == 2)
    {
      v7 = "AUTOLAUNCH_SETTING_OFF";
    }
  }

  return sub_133CC(v1, (v7 | 0x8000000000000000));
}

uint64_t sub_20900()
{
  v1 = v0;
  v2 = *v0;
  v3 = v1[1];
  v4 = *(v1 + 16);
  type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp();
  sub_202E8();
  sub_26264();
  v6 = *(v1 + 3);
  sub_4060(&qword_3BB08, &qword_28E50);
  sub_26674();
  v6 = *(v1 + 5);
  v7 = *(v1 + 56);
  sub_4060(&qword_3BB18, &qword_28E60);
  sub_26714();
  sub_F480(v8, v9, v10, &v6);
  sub_4060(&qword_3C1F0, &qword_2A638);
  sub_4B1C(&qword_3C1F8, &qword_3C1F0, &qword_2A638);
  sub_21170();
  return sub_262C4();
}

uint64_t sub_20A74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = sub_4060(&qword_3C220, &qword_2A768);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v50 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v48 = (v43 - v7);
  v8 = sub_26644();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = a1[1];
  v47 = a1;
  v15 = *(a1 + 16);
  v16 = type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp();
  sub_202E8();
  v45 = v14;
  v46 = v13;
  v44 = v15;
  v43[1] = v16;
  v17 = sub_26264();
  v19 = *(v17 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID);
  v18 = *(v17 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_bundleID + 8);

  sub_4C6C(v71);
  v78 = v71[1];
  *v79 = v71[0];
  v20 = v71[0];
  sub_12650(&v78);
  v77 = v71[2];
  sub_12650(&v77);
  if (v19 == v20 && v18 == *(&v20 + 1))
  {
    sub_12650(v79);

    goto LABEL_8;
  }

  v22 = sub_26B34();
  sub_12650(v79);

  if (v22)
  {
LABEL_8:
    sub_26634();
    (*(v9 + 104))(v12, enum case for Image.ResizingMode.stretch(_:), v8);
    v29 = sub_26654();

    (*(v9 + 8))(v12, v8);
    sub_26794();
    sub_26274();
    v54 = v73;
    v53 = v75;
    v51 = 0;
    *&v67 = v29;
    *(&v67 + 1) = v72;
    LOBYTE(v68) = v73;
    *(&v68 + 1) = v55;
    DWORD1(v68) = *(&v55 + 3);
    *(&v68 + 1) = v74;
    LOBYTE(v69[0]) = v75;
    *(v69 + 1) = *v52;
    DWORD1(v69[0]) = *&v52[3];
    *(v69 + 8) = v76;
    *(&v69[2] + 1) = v62;
    *(&v69[1] + 8) = v61;
    v28 = 0;
    goto LABEL_9;
  }

  v23 = sub_26264();
  v24 = (*(*v23 + 168))(v23);
  v26 = v25;

  v27 = *(sub_26264() + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_isPhoneApp);

  sub_14B50(v24, v26, v27, &v67);
  v28 = 1;
  LOBYTE(v61) = 1;
LABEL_9:
  v70 = v28;
  sub_4060(&qword_3C228, &qword_2A770);
  sub_212F4();
  sub_21378();
  sub_264B4();
  v30 = sub_26494();
  v31 = v48;
  *v48 = v30;
  *(v31 + 8) = 0;
  *(v31 + 16) = 1;
  v32 = sub_4060(&qword_3C240, &qword_2A778);
  v33 = *(v32 + 44);
  __chkstk_darwin(v32);
  v43[-2] = v47;
  sub_26254();
  v57 = *&v79[7];
  v58 = *&v79[9];
  v59 = *&v79[11];
  v60 = v80;
  v55 = *&v79[3];
  v56 = *&v79[5];
  v34 = v50;
  sub_CBD4(v31, v50, &qword_3C220, &qword_2A768);
  v35 = v58;
  v36 = v59;
  v64 = v58;
  v65 = v59;
  v37 = v60;
  v66 = v60;
  v38 = v55;
  v39 = v56;
  v61 = v55;
  v62 = v56;
  v63 = v57;
  v40 = v49;
  *(v49 + 32) = v57;
  *(v40 + 48) = v35;
  *(v40 + 64) = v36;
  *(v40 + 80) = v37;
  *v40 = v38;
  *(v40 + 16) = v39;
  v41 = sub_4060(&qword_3C248, &qword_2A780);
  sub_CBD4(v34, v40 + *(v41 + 48), &qword_3C220, &qword_2A768);
  sub_CBD4(&v61, &v67, &qword_3C250, qword_2A788);
  sub_126EC(v31, &qword_3C220, &qword_2A768);
  sub_126EC(v34, &qword_3C220, &qword_2A768);
  v69[0] = v57;
  v69[1] = v58;
  v69[2] = v59;
  v70 = v60;
  v67 = v55;
  v68 = v56;
  return sub_126EC(&v67, &qword_3C250, qword_2A788);
}

uint64_t sub_2104C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, char a5@<W5>, uint64_t a6@<X8>)
{
  result = sub_26664();
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = 0;
  *(a6 + 24) = v13;
  *(a6 + 32) = v14;
  *(a6 + 40) = a3;
  *(a6 + 48) = a4;
  *(a6 + 56) = a5;
  return result;
}

uint64_t sub_210D4()
{
  v2 = *v0;
  v3 = v0[1];
  *v4 = v0[2];
  *&v4[9] = *(v0 + 41);
  return sub_20900();
}

uint64_t sub_21118@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  *a1 = sub_26424();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = sub_4060(&qword_3C218, &qword_2A760);
  return sub_20A74(v3, a1 + *(v4 + 44));
}

unint64_t sub_21170()
{
  result = qword_3C200;
  if (!qword_3C200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C200);
  }

  return result;
}

__n128 sub_211EC(uint64_t a1, uint64_t a2)
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

uint64_t sub_21208(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_21250(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

unint64_t sub_212F4()
{
  result = qword_3C230;
  if (!qword_3C230)
  {
    sub_40A8(&qword_3C228, &qword_2A770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C230);
  }

  return result;
}

unint64_t sub_21378()
{
  result = qword_3C238;
  if (!qword_3C238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C238);
  }

  return result;
}

uint64_t sub_213CC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  type metadata accessor for LiveActivitiesAutoLaunchModel.LiveActivitiesApp();
  sub_202E8();
  v7 = sub_26264();
  v9 = *(v7 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName);
  v8 = *(v7 + OBJC_IVAR____TtCC27CompanionAutoLaunchSettings29LiveActivitiesAutoLaunchModel17LiveActivitiesApp_localizedName + 8);

  sub_41F0();
  result = sub_26584();
  *a1 = result;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_214C8()
{
  type metadata accessor for DepthAutoLaunchModel();
  sub_23210(&qword_3C080, type metadata accessor for DepthAutoLaunchModel);

  return sub_262E4();
}

uint64_t sub_21554()
{
  sub_4060(&qword_3C258, &qword_2A820);
  sub_40A8(&qword_3C260, qword_2A828);
  sub_26414();
  sub_4B1C(&qword_3C268, &qword_3C260, qword_2A828);
  swift_getOpaqueTypeConformance2();
  return sub_26524();
}

uint64_t sub_21654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17[1] = a3;
  v5 = sub_26414();
  v17[0] = *(v5 - 8);
  v6 = *(v17[0] + 64);
  __chkstk_darwin(v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_4060(&qword_3C260, qword_2A828);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v17 - v12;
  v22 = sub_133CC(0xD00000000000001DLL, 0x800000000002D1D0);
  v23 = v14;
  type metadata accessor for DepthAutoLaunchModel();
  sub_23210(&qword_3C080, type metadata accessor for DepthAutoLaunchModel);
  v15 = sub_262E4();
  swift_getKeyPath();
  sub_262F4();

  v18 = v20;
  v19 = v21;
  v17[4] = a1;
  v17[5] = a2;
  type metadata accessor for CSLPRFDepthAutoLaunchThreshold(0);
  sub_4060(&qword_3C288, &qword_2AA10);
  sub_23210(&qword_3C290, type metadata accessor for CSLPRFDepthAutoLaunchThreshold);
  sub_4B1C(&qword_3C298, &qword_3C288, &qword_2AA10);
  sub_41F0();
  sub_266C4();
  sub_26404();
  sub_4B1C(&qword_3C268, &qword_3C260, qword_2A828);
  sub_265B4();
  (*(v17[0] + 8))(v8, v5);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_219CC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*&stru_B8.segname[(swift_isaMask & **a1) + 16])();
  *a2 = result;
  return result;
}

uint64_t sub_21A80@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v40 = a2;
  v3 = sub_26114();
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  __chkstk_darwin(v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25FE4();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_4060(&qword_3C2A0, &qword_2AA18);
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = __chkstk_darwin(v11);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v37 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v37 - v21;
  __chkstk_darwin(v20);
  v24 = &v37 - v23;
  v41 = sub_133CC(0xD000000000000023, 0x800000000002D1F0);
  v42 = v25;
  sub_41F0();
  *v24 = sub_26584();
  *(v24 + 1) = v26;
  v24[16] = v27 & 1;
  *(v24 + 3) = v28;
  *(v24 + 4) = 0;
  v24[40] = 1;
  (*(&stru_B8.reloff + (swift_isaMask & *a1)))();
  sub_2216C(v6, v10);
  (*(v38 + 8))(v6, v39);
  *v22 = sub_26574();
  *(v22 + 1) = v29;
  v22[16] = v30 & 1;
  *(v22 + 3) = v31;
  *(v22 + 4) = 1;
  v22[40] = 1;
  v32 = v12[2];
  v32(v19, v24, v11);
  v32(v16, v22, v11);
  v33 = v40;
  v32(v40, v19, v11);
  v34 = sub_4060(&qword_3C2A8, &qword_2AA20);
  v32(&v33[*(v34 + 48)], v16, v11);
  v35 = v12[1];
  v35(v22, v11);
  v35(v24, v11);
  v35(v16, v11);
  return (v35)(v19, v11);
}

uint64_t sub_21E08(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (sub_25A4C(2, 26, 0, 0))
  {
    sub_264D4();

    return sub_26304();
  }

  else
  {
    sub_26314();
    swift_getWitnessTable();
    sub_264C4();
    sub_26304();
    sub_269E4();
    swift_getWitnessTable();
    sub_26314();
    swift_getWitnessTable();
    sub_264C4();
    return sub_26304();
  }
}

uint64_t sub_21F6C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (sub_25A4C(2, 26, 0, 0))
  {
    sub_264D4();
    sub_26304();
  }

  else
  {
    sub_26314();
    swift_getWitnessTable();
    sub_264C4();
    sub_26304();
    sub_269E4();
    swift_getWitnessTable();
    sub_26314();
    swift_getWitnessTable();
    sub_264C4();
    sub_26304();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_2216C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a1;
  v43 = a2;
  v44 = sub_25FE4();
  v42 = *(v44 - 8);
  v2 = *(v42 + 64);
  __chkstk_darwin(v44);
  v41 = (&v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_26104();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v39 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_26054();
  v7 = *(v36 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v36);
  v10 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = sub_26064();
  v37 = *(v40 - 8);
  v11 = *(v37 + 64);
  v12 = __chkstk_darwin(v40);
  v38 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v34 - v14;
  v16 = sub_26114();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_26824();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v26 = &v34 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v34 - v27;
  (*(v17 + 16))(v20, v35, v16);
  v29 = (*(v17 + 88))(v20, v16);
  if (v29 == enum case for DepthUnit.feet(_:) || v29 == enum case for DepthUnit.meters(_:))
  {
    sub_26814();
    (*(v22 + 16))(v26, v28, v21);
    sub_13488();
    *v10 = type metadata accessor for DepthAutoLaunchModel();
    (*(v7 + 104))(v10, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v36);
    sub_260F4();
    sub_26074();
    v30 = v37;
    v31 = v40;
    (*(v37 + 16))(v38, v15, v40);
    swift_getKeyPath();
    _s25DepthAutoLaunchAttributesVMa();
    sub_23578(&qword_3DE80);
    v32 = v41;
    sub_25FD4();
    sub_22728(v32, v43);
    (*(v42 + 8))(v32, v44);
    (*(v30 + 8))(v15, v31);
    return (*(v22 + 8))(v28, v21);
  }

  else
  {
    result = sub_26AE4();
    __break(1u);
  }

  return result;
}

uint64_t sub_226FC@<X0>(uint64_t *a1@<X8>)
{
  result = _s25DepthAutoLaunchAttributesVMa();
  *a1 = result;
  return result;
}

uint64_t sub_22728@<X0>(void (**a1)(char *)@<X0>, uint64_t a2@<X8>)
{
  v56 = a1;
  v3 = sub_4060(&qword_3C2B0, &qword_2AA50);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v52 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v51 = v46 - v7;
  v50 = sub_4060(&qword_3C2B8, &qword_2AA58);
  v8 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50);
  v49 = v46 - v9;
  v10 = sub_25FA4();
  v57 = *(v10 - 8);
  v58 = v10;
  v11 = *(v57 + 64);
  __chkstk_darwin(v10);
  v13 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25F84();
  v54 = *(v14 - 8);
  v15 = *(v54 + 64);
  v16 = __chkstk_darwin(v14);
  v18 = v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = v46 - v19;
  v21 = sub_25FB4();
  v55 = *(v21 - 8);
  v22 = v55;
  v23 = *(v55 + 64);
  __chkstk_darwin(v21);
  v25 = v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_4060(&qword_3C2C0, &unk_2AA60);
  v27 = v26 - 8;
  v28 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v30 = v46 - v29;
  v31 = sub_25FE4();
  (*(*(v31 - 8) + 16))(a2, v56, v31);
  v53 = a2;
  sub_25FC4();
  (*(v22 + 16))(v30, v25, v21);
  v32 = *(v27 + 44);
  sub_23210(&qword_3C2C8, &type metadata accessor for AttributedString.Runs);
  sub_268F4();
  (*(v55 + 8))(v25, v21);
  v33 = v54;
  v56 = (v54 + 16);
  v57 += 8;
  v54 += 8;
  v55 = v33 + 32;
  v47 = v20;
  v48 = v14;
  v46[0] = v21;
  v46[1] = v32;
  while (1)
  {
    sub_26904();
    sub_23210(&qword_3C2D0, &type metadata accessor for AttributedString.Runs.Index);
    v34 = v58;
    v35 = sub_26804();
    (*v57)(v13, v34);
    if (v35)
    {
      break;
    }

    v36 = sub_26924();
    (*v56)(v20);
    v36(v59, 0);
    sub_26914();
    (*v55)(v18, v20, v14);
    sub_23258();
    sub_25F94();
    if (v59[0] != 2)
    {
      v37 = v49;
      sub_25F74();
      v38 = v51;
      sub_26544();
      v39 = sub_26554();
      (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
      v40 = v18;
      sub_4B1C(&qword_3C2D8, &qword_3C2B8, &qword_2AA58);
      v41 = v13;
      v42 = sub_25FF4();
      sub_232AC(v38, v52);
      sub_2331C();
      sub_26044();
      v43 = v38;
      v14 = v48;
      sub_126EC(v43, &qword_3C2B0, &qword_2AA50);
      v42(v59, 0);
      v13 = v41;
      v18 = v40;
      v44 = v37;
      v20 = v47;
      sub_126EC(v44, &qword_3C2B8, &qword_2AA58);
    }

    (*v54)(v18, v14);
  }

  return sub_126EC(v30, &qword_3C2C0, &unk_2AA60);
}

uint64_t sub_22DC4()
{
  type metadata accessor for DepthAutoLaunchModel();
  sub_23210(&qword_3C080, type metadata accessor for DepthAutoLaunchModel);

  return sub_262D4();
}

uint64_t sub_22E40()
{
  v2 = *v0;
  v3 = v0[1];
  sub_4060(&qword_3C258, &qword_2A820);
  sub_40A8(&qword_3C260, qword_2A828);
  sub_26414();
  sub_4B1C(&qword_3C268, &qword_3C260, qword_2A828);
  swift_getOpaqueTypeConformance2();
  return sub_26524();
}

uint64_t sub_23034()
{
  sub_23578(&qword_3DE80);

  return sub_25F44();
}

uint64_t sub_2309C()
{
  sub_23578(&qword_3DE80);

  return sub_25F54();
}

uint64_t _s25DepthAutoLaunchAttributesVMa()
{
  result = qword_3DE90;
  if (!qword_3DE90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23210(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23258()
{
  result = qword_3DE88;
  if (!qword_3DE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3DE88);
  }

  return result;
}

uint64_t sub_232AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_4060(&qword_3C2B0, &qword_2AA50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2331C()
{
  result = qword_3C2E0;
  if (!qword_3C2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3C2E0);
  }

  return result;
}

uint64_t sub_23394(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F64();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23414(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F64();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23484()
{
  result = sub_25F64();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23578(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _s25DepthAutoLaunchAttributesVMa();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_235BC()
{
  result = qword_3E230;
  if (!qword_3E230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3E230);
  }

  return result;
}

HKQuantityType sub_2361C()
{
  sub_257BC(0, &qword_3C4A0, HKQuantityType_ptr);
  result.super.super.super.isa = sub_26964(HKQuantityTypeIdentifierUnderwaterDepth).super.super.super.isa;
  qword_3E248 = result.super.super.super.isa;
  return result;
}

uint64_t property wrapper backing initializer of DepthUnitPreferenceStore.preferredUnit(char *a1)
{
  v2 = sub_26114();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  v10 = v3[2];
  v10(&v13 - v8, a1, v2);
  v10(v7, v9, v2);
  sub_261C4();
  v11 = v3[1];
  v11(a1, v2);
  return v11(v9, v2);
}

uint64_t DepthUnitPreferenceStore.preferredUnit.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26204();
}

uint64_t sub_23878(uint64_t a1, uint64_t a2)
{
  v4 = sub_26114();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  return (*(**a2 + 144))(v7);
}

uint64_t DepthUnitPreferenceStore.preferredUnit.setter(uint64_t a1)
{
  v2 = sub_26114();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v3 + 16))(v6, a1, v2);

  sub_26214();
  return (*(v3 + 8))(a1, v2);
}

void (*DepthUnitPreferenceStore.preferredUnit.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_261F4();
  return sub_70B4;
}

uint64_t DepthUnitPreferenceStore.$preferredUnit.getter()
{
  swift_beginAccess();
  sub_4060(&qword_3C368, &qword_2AC98);
  sub_261D4();
  return swift_endAccess();
}

uint64_t DepthUnitPreferenceStore.$preferredUnit.setter(uint64_t a1)
{
  v2 = sub_4060(&qword_3C370, &qword_2ACA0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  sub_4060(&qword_3C368, &qword_2AC98);
  sub_261E4();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*DepthUnitPreferenceStore.$preferredUnit.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_4060(&qword_3C370, &qword_2ACA0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC27CompanionAutoLaunchSettings24DepthUnitPreferenceStore__preferredUnit;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_4060(&qword_3C368, &qword_2AC98);
  sub_261D4();
  swift_endAccess();
  return sub_7438;
}

id sub_23E4C()
{
  v0 = [objc_opt_self() standardUserDefaults];

  return v0;
}

id DepthUnitPreferenceStore.__allocating_init(userDefaults:)(void *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  v5 = sub_25030(a1);

  return v5;
}

id DepthUnitPreferenceStore.init(userDefaults:)(void *a1)
{
  v2 = sub_25030(a1);

  return v2;
}

uint64_t sub_23F04@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26154();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_opt_self();
  v10 = [v9 footUnit];
  sub_257BC(0, &qword_3C490, HKUnit_ptr);
  v11 = sub_269D4();

  if (v11)
  {
    v12 = &enum case for DepthUnit.feet(_:);
LABEL_5:
    v15 = *v12;
    v16 = sub_26114();
    v17 = *(*(v16 - 8) + 104);

    return v17(a1, v15, v16);
  }

  v13 = [v9 meterUnit];
  v14 = sub_269D4();

  if (v14)
  {
    v12 = &enum case for DepthUnit.meters(_:);
    goto LABEL_5;
  }

  sub_26144();
  v19 = v2;
  v20 = sub_26134();
  v21 = sub_26944();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138543362;
    *(v22 + 4) = v19;
    *v23 = v19;
    v24 = v19;
    _os_log_impl(&dword_0, v20, v21, "Unknown depth unit %{public}@, defaulting to .meters", v22, 0xCu);
    sub_126EC(v23, &qword_3C498, &unk_2AD58);
  }

  (*(v5 + 8))(v8, v4);
  v25 = enum case for DepthUnit.meters(_:);
  v26 = sub_26114();
  return (*(*(v26 - 8) + 104))(a1, v25, v26);
}

void sub_24230()
{
  v1 = *v0;
  v2 = v0[3];
  sub_4060(&qword_3B960, qword_288B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2AC40;
  if (qword_3E240 != -1)
  {
    swift_once();
  }

  v4 = qword_3E248;
  *(inited + 32) = qword_3E248;
  v5 = v4;
  sub_24D40(inited);
  swift_setDeallocating();
  v6 = *(inited + 16);
  swift_arrayDestroy();
  sub_257BC(0, &qword_3C4A0, HKQuantityType_ptr);
  sub_258B4(&qword_3C4A8, &qword_3C4A0, HKQuantityType_ptr);
  isa = sub_268E4().super.isa;

  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  *(v8 + 24) = v1;
  aBlock[4] = sub_2579C;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24868;
  aBlock[3] = &unk_36E40;
  v9 = _Block_copy(aBlock);

  [v2 preferredUnitsForQuantityTypes:isa completion:v9];
  _Block_release(v9);
}

void *sub_24450(uint64_t a1, uint64_t a2)
{
  v4 = sub_267B4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_267D4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_3E240 != -1)
  {
    swift_once();
  }

  result = sub_247A4(qword_3E248, a1);
  if (result)
  {
    v15 = result;
    sub_257BC(0, &qword_3C4B0, OS_dispatch_queue_ptr);
    v22 = sub_26984();
    v16 = swift_allocObject();
    *(v16 + 16) = a2;
    *(v16 + 24) = v15;
    aBlock[4] = sub_25844;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_4D10;
    aBlock[3] = &unk_36E90;
    v17 = _Block_copy(aBlock);

    v21 = v15;

    sub_267C4();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_2586C(&qword_3C4B8, &type metadata accessor for DispatchWorkItemFlags);
    sub_4060(&qword_3C4C0, &qword_2AD68);
    v20 = v9;
    sub_4B1C(&qword_3C4C8, &qword_3C4C0, &qword_2AD68);
    sub_26A14();
    v18 = v22;
    sub_26994();
    _Block_release(v17);

    (*(v5 + 8))(v8, v4);
    return (*(v10 + 8))(v13, v20);
  }

  return result;
}

void *sub_247A4(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_26AD4();

    if (v4)
    {
      sub_257BC(0, &qword_3C490, HKUnit_ptr);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_24C28(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

void sub_24868(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_257BC(0, &qword_3C4A0, HKQuantityType_ptr);
  sub_257BC(0, &qword_3C490, HKUnit_ptr);
  sub_258B4(&qword_3C4A8, &qword_3C4A0, HKQuantityType_ptr);
  v6 = sub_267E4();

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_24978(void *a1)
{
  v2 = v1;
  v4 = sub_26114();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v2[2];
  v9 = [a1 unitString];
  if (!v9)
  {
    sub_26844();
    v9 = sub_26834();
  }

  v10 = sub_26834();
  [v8 setObject:v9 forKey:v10];

  sub_23F04(v7);
  return (*(*v2 + 144))(v7);
}

uint64_t DepthUnitPreferenceStore.deinit()
{
  v1 = *(v0 + 32);

  v2 = OBJC_IVAR____TtC27CompanionAutoLaunchSettings24DepthUnitPreferenceStore__preferredUnit;
  v3 = sub_4060(&qword_3C368, &qword_2AC98);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t DepthUnitPreferenceStore.__deallocating_deinit()
{
  v1 = *(v0 + 32);

  v2 = OBJC_IVAR____TtC27CompanionAutoLaunchSettings24DepthUnitPreferenceStore__preferredUnit;
  v3 = sub_4060(&qword_3C368, &qword_2AC98);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t sub_24BE8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DepthUnitPreferenceStore();
  result = sub_26194();
  *a1 = result;
  return result;
}

unint64_t sub_24C28(uint64_t a1)
{
  v2 = v1;
  v4 = sub_269C4(*(v2 + 40));

  return sub_24C6C(a1, v4);
}

unint64_t sub_24C6C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_257BC(0, &qword_3C4A0, HKQuantityType_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_269D4();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void sub_24D40(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_26AF4())
    {
LABEL_3:
      sub_4060(&qword_3C4D0, &qword_2AD70);
      v3 = sub_26A24();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_26AF4();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = sub_26A54();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_269C4(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_257BC(0, &qword_3C4A0, HKQuantityType_ptr);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = sub_269D4();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = sub_269C4(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_257BC(0, &qword_3C4A0, HKQuantityType_ptr);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = sub_269D4();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

id sub_25030(void *a1)
{
  v2 = v1;
  v4 = sub_4060(&qword_3C4D8, &qword_2AD78);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v39 - v6;
  v8 = sub_269A4();
  v40 = *(v8 - 8);
  v41 = v8;
  v9 = *(v40 + 64);
  __chkstk_darwin(v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_4060(&qword_3C4E0, &qword_2AD80);
  v42 = *(v12 - 8);
  v43 = v12;
  v13 = *(v42 + 64);
  __chkstk_darwin(v12);
  v15 = &v39 - v14;
  v16 = sub_26114();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v39 - v22;
  *(v2 + 32) = 0;
  v24 = [objc_allocWithZone(HKHealthStore) init];
  *(v2 + 16) = a1;
  *(v2 + 24) = v24;
  v25 = a1;
  v26 = sub_26834();
  v27 = [v25 stringForKey:v26];

  if (v27)
  {
    v28 = [objc_opt_self() unitFromString:v27];

LABEL_6:
    v30 = v28;
    sub_23F04(v23);

    swift_beginAccess();
    (*(v17 + 16))(v21, v23, v16);
    sub_261C4();
    (*(v17 + 8))(v23, v16);
    swift_endAccess();
    v31 = [objc_opt_self() defaultCenter];
    v32 = *(v2 + 24);
    sub_269B4();

    sub_257BC(0, &qword_3C4B0, OS_dispatch_queue_ptr);
    v33 = sub_26984();
    v44 = v33;
    v34 = sub_26974();
    (*(*(v34 - 8) + 56))(v7, 1, 1, v34);
    sub_2586C(&qword_3C4E8, &type metadata accessor for NSNotificationCenter.Publisher);
    sub_258B4(&qword_3C4F0, &qword_3C4B0, OS_dispatch_queue_ptr);
    v35 = v41;
    sub_26234();
    sub_126EC(v7, &qword_3C4D8, &qword_2AD78);

    (*(v40 + 8))(v11, v35);
    swift_allocObject();
    swift_weakInit();
    sub_4B1C(&qword_3C4F8, &qword_3C4E0, &qword_2AD80);
    v36 = v43;
    v37 = sub_26244();

    (*(v42 + 8))(v15, v36);
    v38 = *(v2 + 32);
    *(v2 + 32) = v37;

    sub_24230();

    return v2;
  }

  if (qword_3E240 != -1)
  {
    swift_once();
  }

  result = _HKGenerateDefaultUnitForQuantityType();
  v28 = result;
  if (result)
  {
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for DepthUnitPreferenceStore()
{
  result = qword_3E2F0;
  if (!qword_3E2F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25660()
{
  sub_2570C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_2570C()
{
  if (!qword_3C3A0)
  {
    sub_26114();
    v0 = sub_26224();
    if (!v1)
    {
      atomic_store(v0, &qword_3C3A0);
    }
  }
}

uint64_t sub_25764()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_257A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_257BC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_25804()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_25844()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_24978(v1);
}

uint64_t sub_2586C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_258B4(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_257BC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_258F8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_25930()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24230();
  }

  return result;
}

BOOL sub_2598C(int a1, int a2, int a3)
{
  if (qword_3E310 == -1)
  {
    v3 = dword_3E300 < a1;
    if (dword_3E300 > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    sub_25F14();
    a2 = v6;
    a3 = v5;
    v3 = dword_3E300 < a1;
    if (dword_3E300 > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_3E304 > a2)
  {
    return 1;
  }

  if (dword_3E304 < a2)
  {
    return 0;
  }

  return dword_3E308 >= a3;
}

uint64_t sub_25A4C(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_3E318 == -1)
  {
    if (qword_3E320)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_25F2C();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_3E320)
    {
      return _availability_version_check();
    }
  }

  if (qword_3E310 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_25F14();
    a3 = v10;
    a4 = v9;
    v8 = dword_3E300 < v11;
    if (dword_3E300 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_3E304 > a3)
      {
        return 1;
      }

      if (dword_3E304 >= a3)
      {
        return dword_3E308 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_3E300 < a2;
  if (dword_3E300 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_25BE0(uint64_t result)
{
  v1 = qword_3E320;
  if (qword_3E320)
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
      qword_3E320 = &__availability_version_check;
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
                                          sscanf(v28, "%d.%d.%d", &dword_3E300, &dword_3E304, &dword_3E308);
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