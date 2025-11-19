void *sub_9FFE8(uint64_t a1, int a2)
{
  v33 = a2;
  v41 = a1;
  v42 = sub_1419BC();
  v2 = *(v42 - 8);
  v3 = __chkstk_darwin(v42);
  v5 = &v32[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v32[-v6];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C25C0);
  v8 = *(v40 - 8);
  __chkstk_darwin(v40);
  v10 = &v32[-v9];
  v11 = sub_14192C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1418DC();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5A90);
  v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v34 = *(v12 + 72);
  v36 = v15;
  v17 = swift_allocObject();
  v39 = xmmword_14A710;
  *(v17 + 16) = xmmword_14A710;
  v18 = *(v12 + 32);
  v43 = v17;
  v35 = v16;
  v37 = v14;
  v38 = v11;
  v19 = v14;
  v20 = v18;
  v18((v17 + v16), v19, v11);
  sub_142DCC();
  sub_14123C();
  (*(v8 + 8))(v10, v40);
  sub_14198C();
  LOBYTE(v16) = sub_14199C();
  v21 = *(v2 + 8);
  v22 = v42;
  v21(v5, v42);
  v21(v7, v22);
  if (v16)
  {
    if (v33)
    {
      v23 = v37;
      v24 = v38;
      v25 = v35;
      if (qword_1BFFF8 != -1)
      {
        swift_once();
      }

      v26 = sub_14142C();
      __swift_project_value_buffer(v26, qword_1C5898);
      sub_14191C();
      v27 = swift_allocObject();
      *(v27 + 1) = v39;
      v20(v27 + v25, v23, v24);
    }

    else
    {
      v27 = _swiftEmptyArrayStorage;
      v23 = v37;
      v24 = v38;
      v25 = v35;
    }

    if (qword_1BFFF0 != -1)
    {
      swift_once();
    }

    v29 = sub_14142C();
    __swift_project_value_buffer(v29, qword_1C5880);
    sub_14191C();
    v30 = swift_allocObject();
    *(v30 + 16) = v39;
    v20((v30 + v25), v23, v24);
    v44 = v27;
    sub_A7324(v30);
    v28 = v44;
  }

  else
  {
    v28 = _swiftEmptyArrayStorage;
  }

  v44 = v43;
  sub_A7324(v28);
  return v44;
}

uint64_t sub_A042C()
{
  v1 = *v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = swift_allocObject();
  v3[2] = *(v1 + 80);
  v3[3] = *(v1 + 88);
  v3[4] = Strong;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5AA8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C1C30);
  sub_14309C();
  sub_A203C();
  sub_A20A0(&qword_1C2B90, &type metadata accessor for IconOnlyLabelStyle);
  swift_getOpaqueTypeConformance2();
  sub_143CFC();
  return swift_unknownObjectRelease();
}

uint64_t sub_A05B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28 = a1;
  v3 = *v1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2708);
  v4 = *(v27 - 8);
  __chkstk_darwin(v27);
  v6 = &v25 - v5;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2728);
  __chkstk_darwin(v26);
  v8 = &v25 - v7;
  Strong = swift_unknownObjectWeakLoadStrong();
  v10 = swift_allocObject();
  v10[2] = *(v3 + 80);
  v10[3] = *(v3 + 88);
  v10[4] = Strong;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5AA8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C1C30);
  v12 = sub_14309C();
  v13 = sub_A203C();
  v14 = sub_A20A0(&qword_1C2B90, &type metadata accessor for IconOnlyLabelStyle);
  v29 = v11;
  v30 = v12;
  v31 = v13;
  v32 = v14;
  swift_getOpaqueTypeConformance2();
  sub_143CFC();
  swift_unknownObjectRelease();
  v15 = v2[8];
  swift_getKeyPath();
  v29 = v15;
  sub_A20A0(&qword_1C5A88, type metadata accessor for TranscriptButtonViewModel);

  sub_141A4C();

  LODWORD(Strong) = *(v15 + 16);

  if (Strong != 1)
  {
    LODWORD(v29) = sub_14339C();
  }

  v16 = sub_142AAC();
  (*(v4 + 32))(v8, v6, v27);
  *&v8[*(v26 + 36)] = v16;
  v17 = v2[8];
  swift_getKeyPath();
  v29 = v17;

  sub_141A4C();

  v18 = *(v17 + 16);

  KeyPath = swift_getKeyPath();
  v20 = swift_allocObject();
  *(v20 + 16) = (v18 & 1) == 0;
  v21 = v8;
  v22 = v28;
  sub_A2100(v21, v28);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2718);
  v24 = (v22 + *(result + 36));
  *v24 = KeyPath;
  v24[1] = sub_691B4;
  v24[2] = v20;
  return result;
}

uint64_t sub_A09D0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_140D5C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NowPlayingPlaybackControlsWrapper(0);
  __chkstk_darwin(v7);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + 32);
  (*(v4 + 104))(v6, enum case for NowPlayingPlayerStyle.mini(_:), v3);
  if (qword_1BFFD8 != -1)
  {
    swift_once();
  }

  v11 = sub_14138C();
  v12 = __swift_project_value_buffer(v11, qword_1D1800);
  (*(*(v11 - 8) + 16))(v9, v12, v11);
  v9[*(v7 + 24)] = 1;
  v13 = &v9[*(v7 + 20)];
  v14 = type metadata accessor for NowPlayingPlaybackControlsWrapper.ContentView(0);
  (*(v4 + 16))(&v13[v14[6]], v6, v3);
  sub_1421BC();
  sub_1446DC();
  (*(v4 + 8))(v6, v3);
  v15 = v27[1];
  *v13 = v10;
  *(v13 + 1) = *(v10 + 16);
  v13[v14[7]] = 1;
  *&v13[v14[8]] = v15;
  sub_A1F34(v13, a1);

  sub_A1F98(v9, type metadata accessor for NowPlayingPlaybackControlsWrapper);
  v16 = sub_14363C();
  sub_14290C();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2758);
  v26 = a1 + *(result + 36);
  *v26 = v16;
  *(v26 + 8) = v18;
  *(v26 + 16) = v20;
  *(v26 + 24) = v22;
  *(v26 + 32) = v24;
  *(v26 + 40) = 0;
  return result;
}

uint64_t sub_A0CAC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for NowPlayingSleepTimer(0);
  v4 = __chkstk_darwin(v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 24);
  v8 = *(v4 + 20);
  if (qword_1BFF28 != -1)
  {
    swift_once();
  }

  v9 = sub_14138C();
  v10 = __swift_project_value_buffer(v9, qword_1D17A0);
  (*(*(v9 - 8) + 16))(&v6[v8], v10, v9);
  v6[*(v3 + 24)] = 1;
  sub_1421BC();
  sub_1446DC();
  v11 = v16[1];
  type metadata accessor for NowPlayingSleepTimer.ViewModel(0);
  sub_A20A0(&qword_1C5AA0, type metadata accessor for NowPlayingSleepTimer.ViewModel);

  v12 = sub_142B9C();
  v14 = v13;
  *v6 = v11;
  *(v6 + 1) = v7;
  *(v6 + 2) = v12;
  *(v6 + 3) = v13;
  *(v6 + 16) = 257;

  result = sub_A1F98(v6, type metadata accessor for NowPlayingSleepTimer);
  *a1 = v11;
  *(a1 + 8) = v7;
  *(a1 + 16) = v12;
  *(a1 + 24) = v14;
  *(a1 + 32) = 257;
  return result;
}

uint64_t sub_A0EA0(uint64_t a1)
{
  v2 = sub_14148C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C1DA0);
  result = __chkstk_darwin(v6 - 8);
  v9 = &v11 - v8;
  if (a1)
  {
    sub_1416DC();
    sub_1417BC();
    v10 = sub_1417CC();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
    sub_14160C();

    sub_A2170(v9);
    (*(v3 + 104))(v5, enum case for NowPlayingViewModel.PlayerStyle.fullScreen(_:), v2);
    sub_1416EC();
    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_A107C()
{
  v0 = sub_14309C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1C30);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - v6;
  v8 = [objc_opt_self() mainBundle];
  v14._countAndFlagsBits = 0xE000000000000000;
  v16._object = 0x80000000001613B0;
  v16._countAndFlagsBits = 0xD000000000000015;
  v17.value._countAndFlagsBits = 0;
  v17.value._object = 0;
  v9.super.isa = v8;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v10 = sub_1409DC(v16, v17, v9, v18, v14);
  v12 = v11;

  v15[0] = v10;
  v15[1] = v12;
  sub_9CCC();
  sub_143C9C();
  sub_14308C();
  sub_A203C();
  sub_A20A0(&qword_1C2B90, &type metadata accessor for IconOnlyLabelStyle);
  sub_14389C();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_A12FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_14148C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C1DA0);
  result = __chkstk_darwin(v9 - 8);
  v12 = &v16 - v11;
  if (a1)
  {
    sub_1416DC();
    v16 = a3;
    if (qword_1BFF08 != -1)
    {
      swift_once();
    }

    v13 = sub_1417CC();
    v14 = __swift_project_value_buffer(v13, static NowPlayingHostedContentID.transcript);
    swift_beginAccess();
    v15 = *(v13 - 8);
    (*(v15 + 16))(v12, v14, v13);
    (*(v15 + 56))(v12, 0, 1, v13);
    sub_14160C();

    sub_A2170(v12);
    (*(v6 + 104))(v8, enum case for NowPlayingViewModel.PlayerStyle.fullScreen(_:), v5);
    sub_1416EC();
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_A1564()
{
  v0 = sub_14309C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1C30);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - v6;
  v8 = [objc_opt_self() mainBundle];
  v14._countAndFlagsBits = 0xE000000000000000;
  v16._object = 0x8000000000161400;
  v16._countAndFlagsBits = 0xD00000000000001ALL;
  v17.value._countAndFlagsBits = 0;
  v17.value._object = 0;
  v9.super.isa = v8;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v10 = sub_1409DC(v16, v17, v9, v18, v14);
  v12 = v11;

  v15[0] = v10;
  v15[1] = v12;
  sub_9CCC();
  sub_143C9C();
  sub_14308C();
  sub_A203C();
  sub_A20A0(&qword_1C2B90, &type metadata accessor for IconOnlyLabelStyle);
  sub_14389C();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_A17E4()
{
  swift_unknownObjectWeakDestroy();

  sub_A1D3C(v0 + *(*v0 + 152));
  return v0;
}

uint64_t sub_A1848()
{
  sub_A17E4();

  return swift_deallocClassInstance();
}

void sub_A18B8()
{
  if (!qword_1C5960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1C2010);
    v0 = sub_1450CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1C5960);
    }
  }
}

uint64_t sub_A191C()
{
  swift_getKeyPath();
  sub_A20A0(&qword_1C5A88, type metadata accessor for TranscriptButtonViewModel);
  sub_141A4C();

  return *(v0 + 16);
}

uint64_t sub_A19BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_A20A0(&qword_1C5A88, type metadata accessor for TranscriptButtonViewModel);
  sub_141A4C();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_A1A64(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_A20A0(&qword_1C5A88, type metadata accessor for TranscriptButtonViewModel);
    sub_141A3C();
  }

  return result;
}

uint64_t sub_A1B74()
{
  v1 = OBJC_IVAR____TtC12NowPlayingUIP33_6B43E1D2A8F90C67EC00881A40CAAACF25TranscriptButtonViewModel___observationRegistrar;
  v2 = sub_141A8C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TranscriptButtonViewModel()
{
  result = qword_1C5998;
  if (!qword_1C5998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_A1C64()
{
  result = sub_141A8C();
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

uint64_t sub_A1D3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C26D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_A1DA4()
{
  v0 = sub_14142C();
  __swift_allocate_value_buffer(v0, qword_1C5880);
  __swift_project_value_buffer(v0, qword_1C5880);
  return sub_14143C();
}

uint64_t sub_A1E08()
{
  v0 = sub_14142C();
  __swift_allocate_value_buffer(v0, qword_1C5898);
  __swift_project_value_buffer(v0, qword_1C5898);
  return sub_14143C();
}

uint64_t sub_A1E6C()
{
  v0 = sub_14142C();
  __swift_allocate_value_buffer(v0, qword_1C58B0);
  __swift_project_value_buffer(v0, qword_1C58B0);
  return sub_14143C();
}

uint64_t sub_A1ED0()
{
  v0 = sub_14142C();
  __swift_allocate_value_buffer(v0, qword_1C58C8);
  __swift_project_value_buffer(v0, qword_1C58C8);
  return sub_14143C();
}

uint64_t sub_A1F34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlayingPlaybackControlsWrapper.ContentView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_A1F98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_A1FF8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_A203C()
{
  result = qword_1C1C38;
  if (!qword_1C1C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C1C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C1C38);
  }

  return result;
}

uint64_t sub_A20A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_A2100(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2728);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_A2170(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C1DA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_A21E8(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

id sub_A2218()
{
  ObjectType = swift_getObjectType();
  v0[OBJC_IVAR____TtC12NowPlayingUI30NowPlayingCollectionViewLayout_cellSwipeActionEnabled] = 1;
  *&v0[OBJC_IVAR____TtC12NowPlayingUI30NowPlayingCollectionViewLayout_orientationWhenLastInvalidatedTableLayout] = 0;
  v2 = &v0[OBJC_IVAR____TtC12NowPlayingUI30NowPlayingCollectionViewLayout__lastBackgroundDecorationRect];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  v2[32] = 1;
  v8.receiver = v0;
  v8.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v8, "init");
  type metadata accessor for NowPlayingCollectionViewSecondaryBackground();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = v3;
  v6 = sub_14489C();
  [v5 registerClass:ObjCClassFromMetadata forDecorationViewOfKind:v6];

  return v5;
}

void *sub_A23AC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_140C2C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25.receiver = v4;
  v25.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v25, "layoutAttributesForElementsInRect:", a1, a2, a3, a4);
  if (v14)
  {
    v15 = v14;
    sub_A3FC8();
    v16 = sub_1449DC();
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  v26 = v16;
  sub_A2EA8(v27);
  if ((v28 & 1) == 0)
  {
    v17 = *v27;
    v18 = *&v27[1];
    v19 = *&v27[2];
    v20 = *&v27[3];
    v21 = &v4[OBJC_IVAR____TtC12NowPlayingUI30NowPlayingCollectionViewLayout__lastBackgroundDecorationRect];
    if ((sub_144F1C() & 1) == 0)
    {
      *v21 = v17;
      v21[1] = v18;
      v21[2] = v19;
      v21[3] = v20;
      *(v21 + 32) = 0;
      [v4 invalidateLayout];
    }

    v29.origin.x = v17;
    v29.origin.y = v18;
    v29.size.width = v19;
    v29.size.height = v20;
    v30.origin.x = a1;
    v30.origin.y = a2;
    v30.size.width = a3;
    v30.size.height = a4;
    if (CGRectIntersectsRect(v29, v30))
    {
      sub_140BDC();
      v22 = sub_A2640(0xD00000000000001CLL, 0x80000000001644A0);
      (*(v11 + 8))(v13, v10);
      if (v22)
      {
        v23 = v22;
        sub_1449BC();
        if (*(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v26 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_1449FC();
        }

        sub_144A2C();

        return v26;
      }
    }
  }

  return v16;
}

char *sub_A2640(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_14489C();
  isa = sub_140B9C().super.isa;
  v25.receiver = v3;
  v25.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v25, "layoutAttributesForDecorationViewOfKind:atIndexPath:", v7, isa);

  v10 = [v3 collectionView];
  if (v10)
  {
    if (v9)
    {

      return v9;
    }

    if (a1 != 0xD00000000000001CLL || 0x80000000001644A0 != a2)
    {
      v11 = v10;
      v12 = sub_1453BC();
      v10 = v11;
      if ((v12 & 1) == 0)
      {

        return 0;
      }
    }

    v13 = v10;
    if (![v10 delegate])
    {
LABEL_11:

      return 0;
    }

    swift_getObjectType();
    if (!swift_conformsToProtocol2())
    {

      swift_unknownObjectRelease();
      return 0;
    }

    sub_A2EA8(v26);
    if (v27)
    {
      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    v15 = *v26;
    v16 = *&v26[1];
    v17 = *&v26[2];
    v18 = *&v26[3];
    v19 = &v3[OBJC_IVAR____TtC12NowPlayingUI30NowPlayingCollectionViewLayout__lastBackgroundDecorationRect];
    if ((sub_144F1C() & 1) == 0)
    {
      *v19 = v15;
      v19[1] = v16;
      v19[2] = v17;
      v19[3] = v18;
      *(v19 + 32) = 0;
      [v3 invalidateLayout];
    }

    type metadata accessor for NowPlayingSecondaryBackgroundAttributes();
    v20 = sub_14489C();
    v21 = sub_140B9C().super.isa;
    v22 = [swift_getObjCClassFromMetadata() layoutAttributesForDecorationViewOfKind:v20 withIndexPath:v21];

    v9 = v22;
    [v9 setFrame:{v15, v16, v17, v18}];
    sub_14114C();
    v23 = sub_14112C();
    v24 = *&v9[OBJC_IVAR____TtC12NowPlayingUI39NowPlayingSecondaryBackgroundAttributes_backgroundColor];
    *&v9[OBJC_IVAR____TtC12NowPlayingUI39NowPlayingSecondaryBackgroundAttributes_backgroundColor] = v23;

    [v9 setZIndex:-100];
    swift_unknownObjectRelease();
  }

  return v9;
}

id sub_A2B74(double a1, double a2)
{
  ObjectType = swift_getObjectType();
  isa = sub_140B9C().super.isa;
  v13.receiver = v2;
  v13.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v13, "layoutAttributesForInteractivelyMovingItemAtIndexPath:withTargetPosition:", isa, a1, a2);

  v8 = UICollectionElementKindSectionHeader;
  v9 = sub_140B9C().super.isa;
  v10 = [v2 layoutAttributesForSupplementaryViewOfKind:v8 atIndexPath:v9];

  if (v10)
  {
    [v7 frame];
    MinY = CGRectGetMinY(v14);
    [v10 frame];
    if (MinY < CGRectGetMaxY(v15) || (sub_141AFC() & 1) != 0)
    {
      [v10 frame];
      CGRectGetMaxY(v16);
      [v7 frame];
      [v7 setFrame:?];
    }
  }

  return v7;
}

void sub_A2EA8(uint64_t a1@<X8>)
{
  v3 = sub_140C2C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = &v52 - v9;
  v11 = [v1 collectionView];
  v12 = 0uLL;
  v13 = 0.0;
  if (v11)
  {
    v14 = v11;
    v15 = [v11 delegate];
    if (!v15)
    {
LABEL_26:

      goto LABEL_27;
    }

    v16 = v15;
    swift_getObjectType();
    if (!swift_conformsToProtocol2())
    {

      swift_unknownObjectRelease();
LABEL_27:
      v31 = 1;
      v12 = 0uLL;
      goto LABEL_28;
    }

    *&v57 = v1;
    v58 = v4;
    v17 = *&v16[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_availableSections];
    v18 = *(v17 + 16);
    if (v18)
    {
      v53 = v6;
      v54 = v10;
      v55 = v3;
      *&v56 = a1;
      v19 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_supportedSections;
      v20 = v17 + 32;
      v52 = v17;

      v21 = 0;
      v22 = _swiftEmptyArrayStorage;
      do
      {
        v25 = *(v20 + v21);
        v26 = *&v16[v19];
        if (v26)
        {
          v27 = *(v26 + 16);
          v28 = (v26 + 32);
          while (v27)
          {
            v29 = *v28++;
            --v27;
            if (v29 == v25)
            {
              goto LABEL_14;
            }
          }
        }

        else
        {
LABEL_14:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v59 = v22;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_92CEC(0, v22[2] + 1, 1);
            v22 = v59;
          }

          v24 = v22[2];
          v23 = v22[3];
          if (v24 >= v23 >> 1)
          {
            sub_92CEC((v23 > 1), v24 + 1, 1);
            v22 = v59;
          }

          v22[2] = v24 + 1;
          *(v22 + v24 + 32) = v25;
        }

        ++v21;
      }

      while (v21 != v18);

      v3 = v55;
      a1 = v56;
      v6 = v53;
      v10 = v54;
      v32 = v22[2];
      if (!v32)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v22 = _swiftEmptyArrayStorage;
      v32 = _swiftEmptyArrayStorage[2];
      if (!v32)
      {
LABEL_24:

LABEL_25:
        swift_unknownObjectRelease();
        goto LABEL_26;
      }
    }

    v33 = 0;
    while (*(v22 + v33 + 32))
    {
      if (v32 == ++v33)
      {
        goto LABEL_24;
      }
    }

    sub_140BDC();
    v34 = v58;
    (*(v58 + 32))(v10, v6, v3);
    isa = sub_140B9C().super.isa;
    v36 = [v57 layoutAttributesForItemAtIndexPath:isa];

    if (!v36)
    {
      (*(v34 + 8))(v10, v3);
      goto LABEL_25;
    }

    [v36 frame];
    *&v37 = CGRectGetMaxY(v60);
    v57 = v37;
    v38 = v14;
    [v38 bounds];
    *&v39 = CGRectGetWidth(v61);
    v56 = v39;
    [v38 contentSize];
    v41 = v40;
    [v36 frame];
    v42 = v41 - CGRectGetMaxY(v62);
    [v38 bounds];
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;

    v63.origin.x = v44;
    v63.origin.y = v46;
    v63.size.width = v48;
    v63.size.height = v50;
    Height = CGRectGetHeight(v63);

    swift_unknownObjectRelease();
    (*(v34 + 8))(v10, v3);
    v31 = 0;
    if (v42 + Height < 0.0)
    {
      v13 = 0.0;
    }

    else
    {
      v13 = v42 + Height;
    }

    *&v12 = v57;
    *(&v12 + 1) = v56;
  }

  else
  {
    v31 = 1;
  }

LABEL_28:
  *a1 = 0;
  *(a1 + 8) = v12;
  *(a1 + 24) = v13;
  *(a1 + 32) = v31;
}

id sub_A32E4(double a1, double a2, double a3, double a4)
{
  v21.receiver = v4;
  v21.super_class = swift_getObjectType();
  v9 = objc_msgSendSuper2(&v21, "invalidationContextForBoundsChange:", a1, a2, a3, a4);
  v10 = [v4 collectionView];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 window];
    if (v12 && (v13 = v12, v14 = [v12 windowScene], v13, v14) && (v15 = objc_msgSend(v14, "interfaceOrientation"), v14, v16 = OBJC_IVAR____TtC12NowPlayingUI30NowPlayingCollectionViewLayout_orientationWhenLastInvalidatedTableLayout, v15 != *&v4[OBJC_IVAR____TtC12NowPlayingUI30NowPlayingCollectionViewLayout_orientationWhenLastInvalidatedTableLayout]) && (objc_opt_self(), (v17 = swift_dynamicCastObjCClass()) != 0))
    {
      v18 = v17;
      v19 = v9;
      [v18 setInvalidateTableLayoutDelegateMetrics:1];

      *&v4[v16] = v15;
    }

    else
    {
    }
  }

  return v9;
}

void sub_A36B4()
{
  v1 = v0;
  v29.receiver = v0;
  v29.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v29, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC12NowPlayingUI20NowPlayingLyricsCell_lyricsView];
  if (v2)
  {
    v3 = v2;
    [v1 bounds];
    [v3 setFrame:?];

    if (v1[OBJC_IVAR____TtC12NowPlayingUI20NowPlayingLyricsCell_isBottomHairlineVisible] == 1)
    {
      [v1 bounds];
      v5 = v4;
      v7 = v6;
      v9 = v8;
      v11 = v10;
      [v1 music_inheritedLayoutInsets];
      v13 = v12;
      v15 = v14;
      v16 = [v1 traitCollection];
      sub_144DCC();
      v18 = v17;

      v19 = OBJC_IVAR____TtC12NowPlayingUI20NowPlayingLyricsCell_bottomHairlineView;
      v20 = *&v1[OBJC_IVAR____TtC12NowPlayingUI20NowPlayingLyricsCell_bottomHairlineView];
      if (v20)
      {
        v21 = *&v1[OBJC_IVAR____TtC12NowPlayingUI20NowPlayingLyricsCell_bottomHairlineView];
      }

      else
      {
        v23 = [objc_allocWithZone(UIView) init];
        sub_14114C();
        v24 = v23;
        v25 = sub_14105C();
        [v24 setBackgroundColor:v25];

        v21 = v24;
        [v1 addSubview:v21];
        v26 = *&v1[v19];
        *&v1[v19] = v21;

        v20 = 0;
      }

      v27 = v20;
      v30.origin.x = v5;
      v30.origin.y = v7;
      v30.size.width = v9;
      v30.size.height = v11;
      MaxY = CGRectGetMaxY(v30);
      v31.origin.x = v13;
      v31.origin.y = v7;
      v31.size.width = v9 - (v13 + v15);
      v31.size.height = 1.0 / v18;
      [v21 setFrame:{v13, MaxY - CGRectGetHeight(v31), v31.size.width, v31.size.height}];
    }

    else
    {
      v22 = *&v1[OBJC_IVAR____TtC12NowPlayingUI20NowPlayingLyricsCell_bottomHairlineView];
      if (v22)
      {
        [v22 removeFromSuperview];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_A39E4(void *a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtC12NowPlayingUI20NowPlayingLyricsCell_isBottomHairlineVisible] = 1;
  *&v1[OBJC_IVAR____TtC12NowPlayingUI20NowPlayingLyricsCell_bottomHairlineView] = 0;
  *&v1[OBJC_IVAR____TtC12NowPlayingUI20NowPlayingLyricsCell_lyricsView] = 0;
  *&v1[OBJC_IVAR____TtC12NowPlayingUI20NowPlayingLyricsCell_tableViewCell] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id sub_A3DA0()
{
  v1 = [objc_allocWithZone(type metadata accessor for NowPlayingCollectionViewLayout()) init];
  isa = sub_1449CC().super.isa;
  [v1 _setFloatingElementKinds:isa];

  [v1 setSeparatorStyle:0];
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI30NowPlayingCollectionViewLayout_cellSwipeActionEnabled) = 1;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for NowPlayingCollectionView();
  v3 = objc_msgSendSuper2(&v6, "initWithFrame:collectionViewLayout:", v1, 0.0, 0.0, 0.0, 0.0);

  v4 = [v3 layer];
  [v4 setAllowsGroupOpacity:0];

  return v3;
}

id sub_A3F70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NowPlayingCollectionView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_A3FC8()
{
  result = qword_1C5C48;
  if (!qword_1C5C48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1C5C48);
  }

  return result;
}

uint64_t sub_A4018()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_11EDE8(1, sub_A4738, v0);

  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_11EDE8(128, sub_A475C, v1);

  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_11EDE8(64, sub_A4780, v2);
}

void sub_A4140(uint64_t a1, uint64_t a2, SEL *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC12NowPlayingUI15RouteButton_iOS_controlsViewController);
    v6 = Strong;
    v7 = v5;

    if (v5)
    {
      [v7 *a3];
    }
  }
}

void sub_A41C4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC12NowPlayingUI15RouteButton_iOS_controlsViewController);
    v2 = Strong;
    v3 = v1;

    if (v1)
    {
      [v3 presentAnimated:1 completion:0];
    }
  }
}

uint64_t sub_A4250(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC12NowPlayingUI15RouteButton_iOS_pickerDelegate + 8) = a2;
  swift_unknownObjectWeakAssign();
  v3 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI15RouteButton_iOS_controlsViewController);
  if (v3)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v5 = v3;
    [v5 setStandaloneControlsDelegate:Strong];

    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

id sub_A42E0()
{
  v1 = sub_14100C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR____TtC12NowPlayingUI15RouteButton_iOS_controlsViewController] = 0;
  *&v0[OBJC_IVAR____TtC12NowPlayingUI15RouteButton_iOS_pickerDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5 = type metadata accessor for RouteButton_iOS();
  v13.receiver = v0;
  v13.super_class = v5;
  v6 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v6 setExclusiveTouch:1];
  sub_140F4C();
  v7 = sub_140FBC();
  (*(v2 + 8))(v4, v1);
  [v6 setAccessoryImage:v7];

  v8 = [objc_opt_self() sharedApplication];
  v9 = [v8 preferredContentSizeCategory];

  LODWORD(v8) = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();
  v10 = 13.0;
  if (v8)
  {
    v10 = sub_13EA2C(UIContentSizeCategoryAccessibilityLarge, UIFontTextStyleBody, 13.0);
  }

  v11 = [objc_opt_self() systemFontOfSize:v10 weight:UIFontWeightSemibold];
  [v6 setFont:v11];

  [v6 setHitRectInsets:{-10.0, -28.0, -20.0, -28.0}];
  return v6;
}

id sub_A465C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RouteButton_iOS();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_A4700()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_A479C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5C88);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_A486C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5C88);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ChaptersList()
{
  result = qword_1C5CE8;
  if (!qword_1C5CE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_A4968()
{
  type metadata accessor for NowPlayingQueueController(319);
  if (v0 <= 0x3F)
  {
    sub_560A4();
    if (v1 <= 0x3F)
    {
      sub_56010();
      if (v2 <= 0x3F)
      {
        sub_A4A1C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_A4A1C()
{
  if (!qword_1C5CF8)
  {
    sub_14120C();
    v0 = sub_142A0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1C5CF8);
    }
  }
}

uint64_t sub_A4A90(uint64_t a1)
{
  v2 = type metadata accessor for ChaptersList();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_A62F4(a1, &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_A635C(&v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v6 + v5);
  v9 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5D60);
  sub_A6C6C();
  return sub_143CFC();
}

uint64_t sub_A4BD8()
{
  sub_143F1C();
  sub_142B7C();
}

uint64_t sub_A4C44@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v1 = sub_1411CC();
  v63 = *(v1 - 8);
  __chkstk_darwin(v1);
  v61 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1C90);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v60 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C10C0);
  __chkstk_darwin(v7 - 8);
  v62 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v60 - v10;
  __chkstk_darwin(v12);
  v14 = &v60 - v13;
  v15 = sub_14120C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5D88);
  __chkstk_darwin(v19 - 8);
  v21 = &v60 - v20;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5D78);
  __chkstk_darwin(v65);
  v66 = &v60 - v22;
  *v21 = sub_14307C();
  *(v21 + 1) = 0;
  v21[16] = 1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5D90);
  sub_A5338(&v21[*(v23 + 44)]);
  v64 = sub_14363C();
  type metadata accessor for ChaptersList();
  sub_FAB44(v18);
  sub_1411DC();
  v24 = v15;
  v25 = v6;
  (*(v16 + 8))(v18, v24);
  v26 = v63;
  (*(v63 + 104))(v11, enum case for DeviceMetrics.Layout.regularExtended(_:), v1);
  (*(v26 + 56))(v11, 0, 1, v1);
  v27 = *(v4 + 56);
  sub_1D19C(v14, v6, &unk_1C10C0);
  sub_1D19C(v11, &v6[v27], &unk_1C10C0);
  v28 = *(v26 + 48);
  v29 = v6;
  v30 = v1;
  if (v28(v29, 1, v1) != 1)
  {
    v32 = v62;
    sub_1D19C(v25, v62, &unk_1C10C0);
    if (v28(v25 + v27, 1, v30) != 1)
    {
      v33 = *(v26 + 32);
      v34 = v25 + v27;
      v60 = v25;
      v35 = v61;
      v33(v61, v34, v30);
      sub_A6F44(&qword_1C1CA0, &type metadata accessor for DeviceMetrics.Layout);
      sub_14486C();
      v36 = *(v26 + 8);
      v36(v35, v30);
      sub_15340(v11, &unk_1C10C0);
      sub_15340(v14, &unk_1C10C0);
      v36(v32, v30);
      sub_15340(v60, &unk_1C10C0);
      goto LABEL_8;
    }

    sub_15340(v11, &unk_1C10C0);
    v31 = v25;
    sub_15340(v14, &unk_1C10C0);
    (*(v26 + 8))(v32, v30);
    goto LABEL_6;
  }

  sub_15340(v11, &unk_1C10C0);
  v31 = v25;
  sub_15340(v14, &unk_1C10C0);
  if (v28(v25 + v27, 1, v1) != 1)
  {
LABEL_6:
    sub_15340(v31, &qword_1C1C90);
    goto LABEL_8;
  }

  sub_15340(v25, &unk_1C10C0);
LABEL_8:
  sub_14290C();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = v66;
  sub_10358(v21, v66, &qword_1C5D88);
  v46 = v45 + *(v65 + 36);
  *v46 = v64;
  *(v46 + 8) = v38;
  *(v46 + 16) = v40;
  *(v46 + 24) = v42;
  *(v46 + 32) = v44;
  *(v46 + 40) = 0;
  v47 = sub_14364C();
  sub_14290C();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v56 = v45;
  v57 = v67;
  sub_10358(v56, v67, &qword_1C5D78);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5D60);
  v59 = v57 + *(result + 36);
  *v59 = v47;
  *(v59 + 8) = v49;
  *(v59 + 16) = v51;
  *(v59 + 24) = v53;
  *(v59 + 32) = v55;
  *(v59 + 40) = 0;
  return result;
}

uint64_t sub_A5338@<X0>(char *a1@<X8>)
{
  v60 = a1;
  v1 = sub_142C1C();
  v2 = *(v1 - 8);
  v58 = v1;
  v59 = v2;
  __chkstk_darwin(v1);
  v57 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_14315C();
  v53 = *(v4 - 8);
  v54 = v4;
  __chkstk_darwin(v4);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5D98);
  __chkstk_darwin(v51);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v49 - v10;
  __chkstk_darwin(v12);
  v50 = &v49 - v13;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5DA0);
  v67 = *(v56 - 8);
  __chkstk_darwin(v56);
  v55 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v65 = &v49 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5DA8);
  __chkstk_darwin(v17 - 8);
  v52 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v61 = &v49 - v20;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5DB0);
  v66 = *(v64 - 8);
  __chkstk_darwin(v64);
  v62 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v63 = &v49 - v23;
  sub_14427C();
  sub_A6F44(&qword_1C0E88, &type metadata accessor for QueueViewModel);

  v68 = sub_142B9C();
  v69 = v24;
  sub_A6DB0();
  sub_143B1C();

  v68 = 0;
  LOBYTE(v69) = 1;
  sub_143A3C();
  v25 = sub_143C2C();
  if (sub_14422C())
  {
    v26 = 3.14159265;
  }

  else
  {
    v26 = 0.0;
  }

  sub_143F7C();
  v68 = v25;
  v69 = v26;
  v70 = v27;
  v71 = v28;
  sub_1430EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5DC0);
  sub_A6E04();
  sub_1439DC();

  sub_14313C();
  sub_142C4C();
  v29 = v54;
  v30 = *(v53 + 8);
  v30(v6, v54);
  sub_15340(v8, &qword_1C5D98);
  sub_14312C();
  v31 = v50;
  sub_142C5C();
  v30(v6, v29);
  sub_15340(v11, &qword_1C5D98);
  v32 = v57;
  sub_142D8C();
  sub_A6E88();
  sub_A6F44(&qword_1C3F80, &type metadata accessor for LiftHoverEffect);
  v33 = v65;
  v34 = v58;
  sub_1438CC();
  (*(v59 + 8))(v32, v34);
  sub_15340(v31, &qword_1C5D98);
  v35 = *(v66 + 16);
  v36 = v62;
  v37 = v64;
  v35(v62, v63, v64);
  v38 = v52;
  sub_1D19C(v61, v52, &qword_1C5DA8);
  v39 = *(v67 + 16);
  v40 = v55;
  v41 = v33;
  v42 = v56;
  v39(v55, v41, v56);
  v43 = v60;
  v35(v60, v36, v37);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5DD8);
  sub_1D19C(v38, &v43[*(v44 + 48)], &qword_1C5DA8);
  v39(&v43[*(v44 + 64)], v40, v42);
  v45 = *(v67 + 8);
  v45(v65, v42);
  sub_15340(v61, &qword_1C5DA8);
  v46 = *(v66 + 8);
  v47 = v64;
  v46(v63, v64);
  v45(v40, v42);
  sub_15340(v38, &qword_1C5DA8);
  return (v46)(v62, v47);
}

uint64_t sub_A5B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19[1] = a4;
  v7 = sub_1440BC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ChaptersList();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_A62F4(a3, v14);
  (*(v8 + 16))(v10, a2, v7);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = (v13 + *(v8 + 80) + v15) & ~*(v8 + 80);
  v17 = swift_allocObject();
  sub_A635C(v14, v17 + v15);
  (*(v8 + 32))(v17 + v16, v10, v7);
  v19[4] = a3;
  v19[5] = a2;
  v19[6] = a1;
  type metadata accessor for ChapterCell(0);
  sub_A6F44(&qword_1C5D58, type metadata accessor for ChapterCell);
  return sub_143CFC();
}

uint64_t sub_A5D84(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2490);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = *a1;
  sub_1440AC();
  v7 = v6;
  v8 = sub_144ADC();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  sub_144ABC();

  v9 = sub_144AAC();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v5;
  v10[5] = v7;
  sub_43FCC(0, 0, v4, &unk_1510F0, v10);
}

uint64_t sub_A5EC4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for ChapterCell(0);
  v7 = *(v6 + 24);
  v8 = sub_1440BC();
  (*(*(v8 - 8) + 16))(a3 + v7, a1, v8);
  sub_14157C();
  sub_A6F44(&qword_1C0E90, &type metadata accessor for NowPlayingViewModel.PlaybackPosition);

  *a3 = sub_142B9C();
  a3[1] = v9;
  sub_14427C();
  sub_A6F44(&qword_1C0E88, &type metadata accessor for QueueViewModel);
  result = sub_142B9C();
  a3[2] = result;
  a3[3] = v11;
  *(a3 + *(v6 + 28)) = a2;
  return result;
}

uint64_t sub_A601C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(a1 - 8);
  v5 = sub_14416C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_14423C();
  v13 = sub_14415C();
  (*(v6 + 8))(v8, v5);
  v12[3] = sub_14422C();
  v15 = v2;
  sub_A62F4(v2, v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_A635C(v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  sub_1440BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5D30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5D38);
  sub_A6F44(&qword_1C5D40, &type metadata accessor for QueueModel.Chapter);
  sub_1D4A4(&qword_1C5D48, &qword_1C5D30);
  sub_1D4A4(&qword_1C5D50, &qword_1C5D38);
  return sub_14182C();
}

uint64_t sub_A62F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChaptersList();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_A635C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChaptersList();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_A63C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for ChaptersList() - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_A5B34(a1, a2, v8, a3);
}

uint64_t sub_A6448()
{
  v1 = (type metadata accessor for ChaptersList() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_1440BC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);

  v9 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0E98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_14120C();
    (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  }

  else
  {
  }

  v11 = v2 | v7;
  v12 = (v3 + v4 + v7) & ~v7;
  (*(v6 + 8))(v0 + v12, v5);

  return _swift_deallocObject(v0, v12 + v8, v11 | 7);
}

uint64_t sub_A6600()
{
  v1 = *(type metadata accessor for ChaptersList() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_1440BC();

  return sub_A5D84((v0 + v2));
}

uint64_t sub_A66D8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3248);
  __chkstk_darwin(v2 - 8);
  v4 = v25 - v3;
  v5 = sub_14416C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1440BC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_14423C();
  sub_14405C();
  (*(v6 + 8))(v8, v5);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
    sub_15340(v4, &qword_1C3248);
  }

  else
  {
    (*(v10 + 32))(v12, v4, v9);
    if ((sub_14422C() & 1) == 0)
    {
      v25[1] = sub_14408C();
      v25[2] = v17;
      sub_9CCC();
      v18 = sub_1437EC();
      v20 = v19;
      v22 = v21;
      v24 = v23;
      (*(v10 + 8))(v12, v9);
      v15 = v22;
      v16 = v24;
      v14 = v20;
      result = v18;
      goto LABEL_7;
    }

    (*(v10 + 8))(v12, v9);
  }

  sub_1430EC();
  result = sub_1437DC();
LABEL_7:
  *a1 = result;
  *(a1 + 8) = v14;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v16;
  return result;
}

uint64_t sub_A69D4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_A6A14(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D0A8;

  return sub_B20D4(a1, v7, v4, v5, v6);
}

uint64_t objectdestroyTm_7()
{
  v1 = (type metadata accessor for ChaptersList() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0E98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_14120C();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_A6C04()
{
  type metadata accessor for ChaptersList();

  return sub_A4BD8();
}

unint64_t sub_A6C6C()
{
  result = qword_1C5D68;
  if (!qword_1C5D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C5D60);
    sub_A6CF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5D68);
  }

  return result;
}

unint64_t sub_A6CF8()
{
  result = qword_1C5D70;
  if (!qword_1C5D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C5D78);
    sub_1D4A4(&qword_1C5D80, &qword_1C5D88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5D70);
  }

  return result;
}

unint64_t sub_A6DB0()
{
  result = qword_1C5DB8;
  if (!qword_1C5DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5DB8);
  }

  return result;
}

unint64_t sub_A6E04()
{
  result = qword_1C5DC8;
  if (!qword_1C5DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C5DC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5DC8);
  }

  return result;
}

unint64_t sub_A6E88()
{
  result = qword_1C5DD0;
  if (!qword_1C5DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C5D98);
    sub_A6E04();
    sub_A6F44(&qword_1C2B50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5DD0);
  }

  return result;
}

uint64_t sub_A6F44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_A6F8C()
{
  v0 = sub_14421C();
  *v1 = !*v1;
  return v0(&v3, 0);
}

void *sub_A70C0(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1347D8(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5108);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_A7208(uint64_t result, uint64_t (*a2)(void), uint64_t *a3)
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v5 = result;
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v5 + 24) >> 1) - *(v5 + 16) < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v10 = *(v5 + 16);
  v11 = __OFADD__(v10, v4);
  v12 = v10 + v4;
  if (!v11)
  {
    *(v5 + 16) = v12;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_A7350(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_134EBC(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_A7460(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_14531C();
  }

  else
  {
    v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (!(*v2 >> 62))
  {
    v6 = *(&dword_10 + (*v2 & 0xFFFFFFFFFFFFFF8));
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_14531C();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_A8290(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(&dword_10 + v10) + 32, (*(&dword_18 + v10) >> 1) - *(&dword_10 + v10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_A7584(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

UIMenu __swiftcall ContextActionsConfiguration.menu(extraContextMenuElements:)(Swift::OpaquePointer extraContextMenuElements)
{
  if (qword_1BFFE8 != -1)
  {
LABEL_16:
    swift_once();
  }

  swift_beginAccess();
  result.super.super.isa = sub_9BAE8(&static NowPlayingDataProvider.shared, v20);
  if (!v21)
  {
    __break(1u);
    goto LABEL_19;
  }

  sub_1DB40(v20, v22);
  sub_7D29C(v20);
  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  v2 = sub_14448C();
  result.super.super.isa = sub_9BAE8(&static NowPlayingDataProvider.shared, v20);
  if (!v21)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  sub_1DB40(v20, v19);
  sub_7D29C(v20);
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  v3 = sub_14447C();
  v4 = sub_90AAC(v3);

  v20[0] = v2;
  sub_A7208(v4, sub_134ACC, &qword_1C5198);
  v5 = v20[0];
  v6 = v20[0] + 40;
  __swift_destroy_boxed_opaque_existential_0(v19);
  __swift_destroy_boxed_opaque_existential_0(v22);
  v7 = 0;
  v20[0] = _swiftEmptyArrayStorage;
  v8 = *(v5 + 16);
LABEL_5:
  v9 = v6 + 16 * v7;
  while (v8 != v7)
  {
    if (v7 >= *(v5 + 16))
    {
      __break(1u);
      goto LABEL_16;
    }

    ++v7;
    v10 = v9 + 16;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v11 = sub_1441AC();
    swift_unknownObjectRelease();
    v9 = v10;
    if (v11)
    {
      sub_1449BC();
      if (*(&dword_10 + (v20[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v20[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_1449FC();
      }

      sub_144A2C();
      goto LABEL_5;
    }
  }

  v12 = sub_14431C();

  if (v12 >> 62)
  {
    sub_2B860(0, &qword_1C4870);
    v17 = UIMenuRoot;

    v14 = sub_14530C();
  }

  else
  {
    v13 = UIMenuRoot;

    sub_1453CC();
    sub_2B860(0, &qword_1C4870);
    v14 = v12;
  }

  sub_2B860(0, &qword_1C4878);
  v20[0] = v14;

  sub_A7460(v15, sub_A8660);
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v25.value._countAndFlagsBits = 0;
  v25.value._object = 0;
  v23.value.super.isa = 0;
  v23.is_nil = UIMenuRoot;
  v16.value = 0;
  return sub_144F7C(v24, v25, v23, v16, 0xFFFFFFFFFFFFFFFFLL, v20[0], v18);
}

UIViewController_optional __swiftcall ContextActionsConfiguration.previewViewController()()
{
  if (qword_1BFFE8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = sub_9BAE8(&static NowPlayingDataProvider.shared, v9);
  if (!v10)
  {
    goto LABEL_16;
  }

  sub_1DB40(v9, v11);
  sub_7D29C(v9);
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v2 = sub_14449C();

  v0 = __swift_destroy_boxed_opaque_existential_0(v11);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (v2 + 32);
    while (1)
    {
      __swift_project_boxed_opaque_existential_1(v5, v5[3]);
      v6 = sub_14454C();

      if (v6)
      {
        break;
      }

      ++v4;
      v5 += 5;
      if (v3 == v4)
      {
        goto LABEL_10;
      }
    }

    v3 = v4;
  }

LABEL_10:
  v7 = *(v2 + 16);
  if (v3 != v7)
  {
    if (v3 < v7)
    {
      __swift_project_boxed_opaque_existential_1((v2 + 32 + 40 * v3), *(v2 + 32 + 40 * v3 + 24));
      v8 = sub_14454C();

      if (v8)
      {
        goto LABEL_14;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = 0;
LABEL_14:

  v0 = v8;
LABEL_18:
  result.value.super.super.isa = v0;
  result.is_nil = v1;
  return result;
}

uint64_t ContextActions.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1BFFE8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = sub_9BAE8(&static NowPlayingDataProvider.shared, v3);
  if (v3[3])
  {
    sub_1DB40(v3, a1);
    return sub_7D29C(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ContextActionsConfiguration.swipeActions(leadingSwipe:)(char a1)
{
  if (a1)
  {
    if (qword_1BFFE8 != -1)
    {
      goto LABEL_19;
    }

    while (1)
    {
      swift_beginAccess();
      result = sub_9BAE8(&static NowPlayingDataProvider.shared, v10);
      if (!v11)
      {
        break;
      }

      sub_1DB40(v10, v12);
      sub_7D29C(v10);
      __swift_project_boxed_opaque_existential_1(v12, v13);
      v2 = sub_14445C();
LABEL_9:
      v3 = v2;
      __swift_destroy_boxed_opaque_existential_0(v12);
      v4 = 0;
      v5 = _swiftEmptyArrayStorage;
      v10[0] = _swiftEmptyArrayStorage;
      v6 = *(v3 + 16);
LABEL_10:
      v7 = v3 + 40 + 16 * v4;
      while (1)
      {
        if (v6 == v4)
        {

          return v5;
        }

        if (v4 >= *(v3 + 16))
        {
          break;
        }

        ++v4;
        v8 = v7 + 16;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v9 = sub_1441BC();
        swift_unknownObjectRelease();
        v7 = v8;
        if (v9)
        {
          sub_1449BC();
          if (*(&dword_10 + (v10[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v10[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_1449FC();
          }

          sub_144A2C();
          v5 = v10[0];
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_19:
      swift_once();
    }

    __break(1u);
  }

  else
  {
    if (qword_1BFFE8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    result = sub_9BAE8(&static NowPlayingDataProvider.shared, v10);
    if (v11)
    {
      sub_1DB40(v10, v12);
      sub_7D29C(v10);
      __swift_project_boxed_opaque_existential_1(v12, v13);
      v2 = sub_14446C();
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

Swift::Bool __swiftcall ContextActionsConfiguration.canCreateShareSheet()()
{
  if (qword_1BFFE8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = sub_9BAE8(&static NowPlayingDataProvider.shared, v7);
  if (v8)
  {
    sub_1DB40(v7, v9);
    sub_7D29C(v7);
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v1 = sub_14447C();

    __swift_destroy_boxed_opaque_existential_0(v9);
    v2 = *(v1 + 16);

    v3 = v1 + 40;
    v4 = v2 + 1;
    do
    {
      if (!--v4)
      {
        break;
      }

      v5 = v3 + 16;
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1441CC();
      v6 = sub_14419C();
      swift_unknownObjectRelease();
      v3 = v5;
    }

    while ((v6 & 1) == 0);
    swift_bridgeObjectRelease_n();

    return v4 != 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

UIViewController_optional __swiftcall ContextActionsConfiguration.shareSheet()()
{
  if (qword_1BFFE8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = sub_9BAE8(&static NowPlayingDataProvider.shared, v9);
  if (!v10)
  {
    goto LABEL_16;
  }

  sub_1DB40(v9, v11);
  sub_7D29C(v9);
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v2 = sub_14447C();

  v0 = __swift_destroy_boxed_opaque_existential_0(v11);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v2 + 40;
    while (1)
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1441CC();
      v6 = sub_14417C();
      swift_unknownObjectRelease();

      if (v6)
      {
        break;
      }

      ++v4;
      v5 += 16;
      if (v3 == v4)
      {
        goto LABEL_10;
      }
    }

    v3 = v4;
  }

LABEL_10:
  v7 = *(v2 + 16);
  if (v3 != v7)
  {
    if (v3 < v7)
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1441CC();
      v8 = sub_14417C();
      swift_unknownObjectRelease();

      if (v8)
      {
        goto LABEL_14;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = 0;
LABEL_14:

  v0 = v8;
LABEL_18:
  result.value.super.super.isa = v0;
  result.is_nil = v1;
  return result;
}

uint64_t sub_A8290(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_14531C();
LABEL_9:
  result = sub_14520C();
  *v1 = result;
  return result;
}

uint64_t sub_A8330(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_14531C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_14531C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_A8B30(&qword_1C5E18, &qword_1C5E10);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5E10);
            v9 = sub_A89A0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_2B860(0, &qword_1C8190);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_A84D0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_14531C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_14531C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_A8B30(&qword_1C5DF8, &qword_1C5DF0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5DF0);
            v9 = sub_A8A20(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        type metadata accessor for ControlEventHandler();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_A8660(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_14531C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_14531C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_A8B30(&qword_1C5E28, &qword_1C5E20);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5E20);
            v9 = sub_A8AA8(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_2B860(0, &qword_1C4870);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_A8800(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_14531C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_14531C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_A8B30(&qword_1C5E08, &qword_1C5E00);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5E00);
            v9 = sub_A89A0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_2B860(0, &qword_1C5C48);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_A89A0(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1451FC();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_A8B84;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_A8A20(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1451FC();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_A8AA0;
  }

  __break(1u);
  return result;
}

void (*sub_A8AA8(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1451FC();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_A8B28;
  }

  __break(1u);
  return result;
}

uint64_t sub_A8B30(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_A8C64()
{
  v2.receiver = v0;
  v2.super_class = _s7HandlerCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id UIBarButtonItem.init(barButtonSystemItem:handler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s7HandlerCMa();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtCE12NowPlayingUICSo15UIBarButtonItemP33_3C2750B9C1FB5BBBDC498E18BB98C28C7Handler__handler];
  *v8 = a2;
  *(v8 + 1) = a3;
  v14.receiver = v7;
  v14.super_class = v6;

  v9 = objc_msgSendSuper2(&v14, "init");
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithBarButtonSystemItem:a1 target:v9 action:"handleBarButtonAction:"];
  swift_beginAccess();
  v11 = v10;
  v12 = v9;
  objc_setAssociatedObject(v11, &unk_1C5E30, v12, &dword_0 + 1);
  swift_endAccess();

  return v11;
}

id UIBarButtonItem.init(image:style:handler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = _s7HandlerCMa();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtCE12NowPlayingUICSo15UIBarButtonItemP33_3C2750B9C1FB5BBBDC498E18BB98C28C7Handler__handler];
  *v10 = a3;
  *(v10 + 1) = a4;
  v16.receiver = v9;
  v16.super_class = v8;

  v11 = objc_msgSendSuper2(&v16, "init");
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithImage:a1 style:a2 target:v11 action:"handleBarButtonAction:"];
  swift_beginAccess();
  v13 = v12;
  v14 = v11;
  objc_setAssociatedObject(v13, &unk_1C5E30, v14, &dword_0 + 1);
  swift_endAccess();

  return v13;
}

id UIBarButtonItem.init(title:style:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = _s7HandlerCMa();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtCE12NowPlayingUICSo15UIBarButtonItemP33_3C2750B9C1FB5BBBDC498E18BB98C28C7Handler__handler];
  *v11 = a4;
  *(v11 + 1) = a5;
  v18.receiver = v10;
  v18.super_class = v9;

  v12 = objc_msgSendSuper2(&v18, "init");
  if (a2)
  {
    v13 = sub_14489C();
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTitle:v13 style:a3 target:v12 action:"handleBarButtonAction:"];

  swift_beginAccess();
  v15 = v14;
  v16 = v12;
  objc_setAssociatedObject(v15, &unk_1C5E30, v16, &dword_0 + 1);
  swift_endAccess();

  return v15;
}

uint64_t UIBarButtonItem.barButtonHandler.getter()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_1C5E30);
  swift_endAccess();
  if (v1)
  {
    sub_14514C();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    _s7HandlerCMa();
    if (swift_dynamicCast())
    {
      v2 = *&v4[OBJC_IVAR____TtCE12NowPlayingUICSo15UIBarButtonItemP33_3C2750B9C1FB5BBBDC498E18BB98C28C7Handler__handler];

      return v2;
    }
  }

  else
  {
    sub_15340(v7, &qword_1C2F30);
  }

  return 0;
}

id UIButton.setImageAndTitleSpacing(_:contentEdgeInsets:)(double a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v11 = [v5 effectiveUserInterfaceLayoutDirection];
  v12 = [v5 traitCollection];
  sub_144DCC();

  sub_141ABC();
  v14 = v13;
  v15 = -v13;
  v16 = v13 + a5;
  if (v11 == &dword_0 + 1)
  {
    [v6 setContentEdgeInsets:{a2, v16, a4, a3}];
    [v6 setImageEdgeInsets:{0.0, v14, 0.0, 0.0}];
    v17 = v15;
    v15 = v14;
  }

  else
  {
    if (v11)
    {
      type metadata accessor for UIUserInterfaceLayoutDirection(0);
      v19 = v18;
      v22 = v18;
      v21[0] = v11;
      sub_140EBC();
      __swift_destroy_boxed_opaque_existential_0(v21);
      [v6 setContentEdgeInsets:{a2, a3, a4, v16, v21[0]}];
      v22 = v19;
      v21[0] = v11;
      sub_140EBC();
      __swift_destroy_boxed_opaque_existential_0(v21);
      [v6 setImageEdgeInsets:{0.0, 0.0, 0.0, v14}];
      v22 = v19;
      v21[0] = v11;
      sub_140EBC();
      __swift_destroy_boxed_opaque_existential_0(v21);
    }

    else
    {
      [v6 setContentEdgeInsets:{a2, a3, a4, v16}];
      [v6 setImageEdgeInsets:{0.0, 0.0, 0.0, v14}];
    }

    v17 = v14;
  }

  return [v6 setTitleEdgeInsets:{0.0, v17, 0.0, v15}];
}

uint64_t UICollectionView.indexPath(forGlobalIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C4A80);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_140C2C();
  v10 = *(*(v9 - 8) + 56);
  v10(a2, 1, 1, v9);
  result = [v3 numberOfSections];
  if (result < 0)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  else
  {
    v12 = result;
    v18 = a2;
    v13 = 0;
    v14 = 0;
    while (v12 != v13)
    {
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_11:
        __break(1u);
        goto LABEL_12;
      }

      v15 = v14;
      result = [v3 numberOfItemsInSection:v13];
      v14 = v15 + result;
      if (__OFADD__(v15, result))
      {
        goto LABEL_11;
      }

      ++v13;
      if (v14 > a1)
      {
        result = a1 - v15;
        if (__OFSUB__(a1, v15))
        {
          goto LABEL_13;
        }

        sub_140BDC();
        v16 = v18;
        sub_15340(v18, &unk_1C4A80);
        v10(v8, 0, 1, v9);
        return sub_A9514(v8, v16);
      }
    }
  }

  return result;
}

uint64_t sub_A9514(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C4A80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t UICollectionView.totalItemCount.getter()
{
  result = [v0 numberOfSections];
  if ((result & 0x8000000000000000) == 0)
  {
    v2 = 0;
    v3 = result;
    if (!result)
    {
      return v2;
    }

    v4 = 0;
    while (1)
    {
      result = [v0 numberOfItemsInSection:v4];
      v5 = __OFADD__(v2, result);
      v2 += result;
      if (v5)
      {
        break;
      }

      if (v3 == ++v4)
      {
        return v2;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static UIEdgeInsets.==~ infix(_:_:)()
{
  if ((sub_141AFC() & 1) == 0 || (sub_141AFC() & 1) == 0 || (sub_141AFC() & 1) == 0)
  {
    return 0;
  }

  return sub_141AFC();
}

uint64_t static UIEdgeInsets.!=~ infix(_:_:)()
{
  if (sub_141AFC() & 1) != 0 && (sub_141AFC() & 1) != 0 && (sub_141AFC())
  {
    v0 = sub_141AFC() ^ 1;
  }

  else
  {
    v0 = 1;
  }

  return v0 & 1;
}

double _sSo12UIEdgeInsetsV12NowPlayingUIE23applyingLayoutDirectionyABSo015UIUserInterfacegH0VF_0(unint64_t a1, double result)
{
  if (a1 > 1)
  {
    v11[4] = v7;
    v11[5] = v6;
    v11[6] = v5;
    v11[7] = v4;
    v11[10] = v2;
    v11[11] = v3;
    v9 = result;
    type metadata accessor for UIUserInterfaceLayoutDirection(0);
    v11[3] = v10;
    v11[0] = a1;
    sub_140EBC();
    __swift_destroy_boxed_opaque_existential_0(v11);
    return v9;
  }

  return result;
}

uint64_t static UIScreen.Dimensions.== infix(_:_:)()
{
  if ((sub_144F5C() & 1) == 0)
  {
    return 0;
  }

  return sub_144F5C();
}

uint64_t sub_A9864()
{
  if ((sub_144F5C() & 1) == 0)
  {
    return 0;
  }

  return sub_144F5C();
}

double UIScreen.dimensions.getter()
{
  [v0 bounds];
  v2 = v1;
  [objc_msgSend(v0 "fixedCoordinateSpace")];
  swift_unknownObjectRelease();
  return v2;
}

void UITraitCollection.init(screenSizeClass:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C4880);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_14F0E0;
  v3 = objc_opt_self();
  v4 = [objc_allocWithZone(NSNumber) initWithInteger:a1];
  v5 = sub_14489C();
  v6 = [v3 _traitCollectionWithValue:v4 forTraitNamed:v5];

  if (v6)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    *(v2 + 32) = v6;
    sub_2B860(0, &qword_1C0D68);
    isa = sub_1449CC().super.isa;

    [ObjCClassFromMetadata traitCollectionWithTraitsFromCollections:isa];
  }

  else
  {
    __break(1u);
  }
}

id UITraitCollection.screenSizeClass.getter()
{
  v1 = sub_14489C();
  v2 = [v0 _valueForTraitNamed:v1];

  if (v2)
  {
    sub_14514C();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_2B860(0, &qword_1C8220);
    if (swift_dynamicCast())
    {
      v3 = [v5 integerValue];

      return v3;
    }
  }

  else
  {
    sub_15340(v8, &qword_1C2F30);
  }

  return 0;
}

uint64_t UITraitCollection.navigationBarBackdropGroupName.getter()
{
  v1 = sub_14489C();
  v2 = [v0 _valueForTraitNamed:v1];

  if (v2)
  {
    sub_14514C();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_15340(v7, &qword_1C2F30);
  }

  return 0;
}

void UIView.shadow.getter(uint64_t a1@<X8>)
{
  v3 = [objc_opt_self() clearColor];
  v4 = [v1 layer];
  v5 = [v4 shadowColor];

  if (v5)
  {
    v6 = [objc_allocWithZone(UIColor) initWithCGColor:v5];

    v3 = v6;
  }

  v7 = [v1 layer];
  [v7 shadowOpacity];
  v9 = v8;

  v10 = v9;
  v11 = [v1 layer];
  [v11 shadowRadius];
  v13 = v12;

  v14 = [v1 layer];
  [v14 shadowOffset];
  v16 = v15;
  v18 = v17;

  *a1 = v3;
  *(a1 + 8) = v10;
  *(a1 + 16) = v13;
  *(a1 + 24) = v16;
  *(a1 + 32) = v18;
}

uint64_t UIView.shadow.setter(uint64_t a1)
{
  sub_AA8FC(a1);

  return sub_AAA28(a1);
}

void (*UIView.shadow.modify(uint64_t *a1))(char **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xA8uLL);
  }

  *a1 = v3;
  *(v3 + 160) = v1;
  UIView.shadow.getter(v3 + 80);
  return sub_A9EDC;
}

void sub_A9EDC(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 6);
  if (a2)
  {
    *v2 = *(v2 + 5);
    *(v2 + 1) = v3;
    *(v2 + 4) = *(v2 + 14);
    sub_AAA58(v2, (v2 + 120));
    sub_AA8FC(v2);
    sub_AAA28(v2);
  }

  else
  {
    *(v2 + 40) = *(v2 + 5);
    *(v2 + 56) = v3;
    *(v2 + 9) = *(v2 + 14);
    sub_AA8FC((v2 + 40));
    sub_AAA28((v2 + 40));
  }

  free(v2);
}

double UIView.border.getter()
{
  v1 = [objc_opt_self() clearColor];
  v2 = [v0 layer];
  v3 = [v2 borderColor];

  if (v3)
  {
    [objc_allocWithZone(UIColor) initWithCGColor:v3];
  }

  v4 = [v0 layer];
  [v4 borderWidth];
  v6 = v5;

  return v6;
}

void UIView.border.setter(void *a1, double a2)
{
  v5 = [v2 layer];
  [v5 setBorderWidth:a2];

  v6 = [v2 layer];
  v7 = [a1 cgColor];
  if (v7)
  {
    v8 = v7;
    [v6 setBorderColor:v8];
  }

  else
  {
    __break(1u);
  }
}

void (*UIView.border.modify(void *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  v3 = [objc_opt_self() clearColor];
  v4 = [v1 layer];
  v5 = [v4 borderColor];

  if (v5)
  {
    v6 = [objc_allocWithZone(UIColor) initWithCGColor:v5];

    v3 = v6;
  }

  v7 = [v1 layer];
  [v7 borderWidth];
  v9 = v8;

  *a1 = v3;
  a1[1] = v9;
  return sub_AA25C;
}

void sub_AA25C(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v12 = *a1;
  if ((a2 & 1) == 0)
  {
    v9 = [v3 layer];
    [v9 setBorderWidth:v2];

    v4 = [v3 layer];
    v10 = v12;
    v11 = [v12 cgColor];
    if (v11)
    {
      v6 = v11;
      [v4 setBorderColor:v6];
      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    return;
  }

  v4 = *a1;
  v5 = [v3 layer];
  [v5 setBorderWidth:v2];

  v6 = [v3 layer];
  v7 = [v4 cgColor];
  if (!v7)
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = v7;
  [v6 setBorderColor:v8];

LABEL_6:
}

double UIView.cornerRadius.getter()
{
  v1 = [v0 layer];
  [v1 cornerRadius];
  v3 = v2;

  return v3;
}

void UIView.cornerRadius.setter(double a1)
{
  v3 = [v1 layer];
  [v3 setCornerRadius:a1];
}

void (*UIView.cornerRadius.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  v3 = [v1 layer];
  [v3 cornerRadius];
  v5 = v4;

  *a1 = v5;
  return sub_AA510;
}

void sub_AA510(uint64_t a1)
{
  v1 = *a1;
  v2 = [*(a1 + 8) layer];
  [v2 setCornerRadius:v1];
}

double UIView.untransformedFrame.getter()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [v0 center];
  v10 = v9;
  v13.origin.x = v2;
  v13.origin.y = v4;
  v13.size.width = v6;
  v13.size.height = v8;
  v11 = v10 - CGRectGetWidth(v13) * 0.5;
  v14.origin.x = v2;
  v14.origin.y = v4;
  v14.size.width = v6;
  v14.size.height = v8;
  CGRectGetHeight(v14);
  v15.origin.x = v2;
  v15.origin.y = v4;
  v15.size.width = v6;
  v15.size.height = v8;
  CGRectGetWidth(v15);
  v16.origin.x = v2;
  v16.origin.y = v4;
  v16.size.width = v6;
  v16.size.height = v8;
  CGRectGetHeight(v16);
  return v11;
}

id UIView.untransformedFrame.setter()
{
  [v0 setBounds:{0.0, 0.0}];
  sub_144F2C();

  return [v0 setCenter:?];
}

Swift::Bool __swiftcall UIViewController.isDescendant(of:)(UIViewController of)
{
  v3 = [v1 parentViewController];
  if (v3)
  {
    v4 = v3;
    while (v4 != of.super.super.isa)
    {
      v5 = [(objc_class *)v4 parentViewController];

      v4 = v5;
      if (!v5)
      {
        LOBYTE(v3) = 0;
        return v3;
      }
    }

    LOBYTE(v3) = 1;
  }

  return v3;
}

void sub_AA8FC(uint64_t a1)
{
  v3 = [v1 layer];
  v4 = [*a1 cgColor];
  if (v4)
  {
    v5 = v4;
    [v3 setShadowColor:v5];

    v6 = [v1 layer];
    [v6 setShadowOffset:{*(a1 + 24), *(a1 + 32)}];

    v7 = [v1 layer];
    [v7 setShadowRadius:*(a1 + 16)];

    v9 = [v1 layer];
    v8 = *(a1 + 8);
    *&v8 = v8;
    [v9 setShadowOpacity:v8];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_AAAA0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_AAAE8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_AAB64@<X0>(void *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for NowPlayingPodcastItem();
  v7 = *(v6 - 1);
  v8 = __chkstk_darwin(v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v8 + 32);
  v12 = enum case for NowPlayingViewModel.SubtitleStyle.menu(_:);
  v13 = sub_14149C();
  v14 = *(v13 - 8);
  (*(v14 + 104))(&v10[v11], v12, v13);
  v15 = v6[12];
  v16 = sub_1415DC();
  (*(*(v16 - 8) + 56))(&v10[v15], 1, 1, v16);
  v17 = [a1 title];
  if (v17)
  {
    v18 = v17;
    v19 = sub_1448DC();
    v21 = v20;

    *v10 = [a1 identifiers];
    *(v10 + 1) = v19;
    *(v10 + 2) = v21;
    v22 = [a1 subtitle];
    if (v22)
    {
      v23 = v22;
      v24 = sub_1448DC();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    *(v10 + 3) = v24;
    *(v10 + 4) = v26;
    v28 = [a1 author];
    if (v28 && (v29 = v28, v30 = [v28 name], v29, v30))
    {
      v31 = sub_1448DC();
      v33 = v32;
    }

    else
    {
      v31 = 0;
      v33 = 0;
    }

    *(v10 + 5) = v31;
    *(v10 + 6) = v33;
    *&v10[v6[9]] = MPModelPodcastEpisode.trailingBadges.getter();
    v34 = [a1 podcast];
    if (v34 && (v35 = v34, v36 = [v34 supportsSubscription], v35, v36))
    {
      v39 = sub_14145C();
      v40 = sub_AB908(&qword_1C5E80, &type metadata accessor for MetadataButtonStyle);
      __swift_allocate_boxed_opaque_existential_1(&v38);
      sub_1412BC();
    }

    else
    {
      v39 = sub_14174C();
      v40 = sub_AB908(&qword_1C5E78, &type metadata accessor for MetadataAutomaticStyle);
      __swift_allocate_boxed_opaque_existential_1(&v38);
      sub_1412CC();
    }

    sub_2B5CC(&v38, &v10[v6[10]]);
    sub_2B5CC(a2, &v10[v6[11]]);
    sub_AB138(v10, a3);
    (*(v7 + 56))(a3, 0, 1, v6);
    return sub_43104(v10);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(a2);
    (*(v14 + 8))(&v10[v11], v13);
    sub_AB0D0(&v10[v15]);
    return (*(v7 + 56))(a3, 1, 1, v6);
  }
}

void *MPModelPodcastEpisode.trailingBadges.getter()
{
  if (![v0 isExplicitEpisode])
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 explicitContentBadgeTreatment];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5E70);
  sub_1412FC();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_14A710;
  v4 = v3;
  if (v2 == &dword_0 + 1)
  {
    sub_1412DC();
  }

  else
  {
    sub_1412EC();
  }

  return v4;
}

uint64_t type metadata accessor for NowPlayingPodcastItem()
{
  result = qword_1C5EE0;
  if (!qword_1C5EE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_AB0D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C24A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_AB138(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlayingPodcastItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_AB1B0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_14149C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C24A8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_AB2F4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_14149C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C24A8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_AB424()
{
  sub_AB5A8();
  if (v0 <= 0x3F)
  {
    sub_AB5F4();
    if (v1 <= 0x3F)
    {
      sub_14149C();
      if (v2 <= 0x3F)
      {
        sub_AB6A0(319, &qword_1C5F00, &type metadata accessor for TrailingBadge, &type metadata accessor for Array);
        if (v3 <= 0x3F)
        {
          sub_AB644(319, &qword_1C5F08);
          if (v4 <= 0x3F)
          {
            sub_AB644(319, &unk_1C5F10);
            if (v5 <= 0x3F)
            {
              sub_AB6A0(319, &qword_1C44F0, &type metadata accessor for NowPlayingViewModel.MiniPlayerSubtitle, &type metadata accessor for Optional);
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

unint64_t sub_AB5A8()
{
  result = qword_1C5EF0;
  if (!qword_1C5EF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1C5EF0);
  }

  return result;
}

void sub_AB5F4()
{
  if (!qword_1C5EF8)
  {
    v0 = sub_1450CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1C5EF8);
    }
  }
}

uint64_t sub_AB644(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_AB6A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_AB74C()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_AB77C()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_AB7B8()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_AB7E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_14149C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

id sub_AB8B4@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

uint64_t sub_AB908(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_AB950(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C24A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_AB9C0()
{
  v1 = v0;
  v2 = sub_140C2C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = &v16 - v8;
  v10 = [v1 playingItemIndexPath];
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  sub_140BAC();

  (*(v3 + 32))(v9, v5, v2);
  v12 = [v1 items];
  isa = sub_140B9C().super.isa;
  v14 = [v12 itemAtIndexPath:isa];

  (*(v3 + 8))(v9, v2);
  return v14;
}

char *sub_ABB48(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC12NowPlayingUI27NowPlayingQueueControlsView_shareHandler];
  *v10 = 0;
  v10[1] = 0;
  v11 = OBJC_IVAR____TtC12NowPlayingUI27NowPlayingQueueControlsView_sleepButton;
  *&v4[v11] = [objc_opt_self() buttonWithType:0];
  v4[OBJC_IVAR____TtC12NowPlayingUI27NowPlayingQueueControlsView_isShowingSleepTimer] = 0;
  v12 = &v4[OBJC_IVAR____TtC12NowPlayingUI27NowPlayingQueueControlsView_layoutInvalidationHandler];
  *v12 = 0;
  v12[1] = 0;
  v16.receiver = v4;
  v16.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  sub_ABC70(0, 1);
  v14 = OBJC_IVAR____TtC12NowPlayingUI27NowPlayingQueueControlsView_sleepButton;
  [v13 addSubview:*&v13[OBJC_IVAR____TtC12NowPlayingUI27NowPlayingQueueControlsView_sleepButton]];
  sub_ABFB4();
  [*&v13[v14] setExclusiveTouch:1];

  return v13;
}

void sub_ABC70(uint64_t a1, char a2)
{
  v3 = v2;
  sub_AC71C();
  v30._object = 0x8000000000164720;
  v30._countAndFlagsBits = 0xD000000000000010;
  isa = sub_144FDC(v30).super.isa;
  sub_14114C();
  v7.super.isa = sub_14113C();
  v8 = v7.super.isa;
  v28._object = sub_144FCC(v7).super.isa;

  v9 = sub_14113C();
  v10 = [v9 colorWithAlphaComponent:0.35];

  v11.super.isa = v10;
  v12.super.isa = sub_144FCC(v11).super.isa;

  v13 = [objc_opt_self() systemMidGrayColor];
  v14 = [v13 colorWithAlphaComponent:0.7];

  v15.super.isa = v14;
  v16.super.isa = sub_144FCC(v15).super.isa;

  if ((a2 & 1) != 0 || *&a1 <= 0.0)
  {
    v21 = *(v3 + OBJC_IVAR____TtC12NowPlayingUI27NowPlayingQueueControlsView_sleepButton);
    v22 = objc_opt_self();
    v19 = v21;
    v23 = [v22 mainBundle];
    v28._countAndFlagsBits = 0xE000000000000000;
    v31._countAndFlagsBits = 0x6954207065656C53;
    v31._object = 0xEB0000000072656DLL;
    v32.value._countAndFlagsBits = 0;
    v32.value._object = 0;
    v24.super.isa = v23;
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    sub_1409DC(v31, v32, v24, v33, v28);

    v18 = sub_14489C();

    [v19 setTitle:v18 forState:0];
    v20 = 0;
  }

  else
  {
    v17 = [objc_allocWithZone(AVTimeFormatter) init];
    [v17 setStyle:1];
    v18 = [v17 stringFromSeconds:*&a1];
    if (!v18)
    {
      sub_1448DC();
      v18 = sub_14489C();
    }

    v19 = *(v3 + OBJC_IVAR____TtC12NowPlayingUI27NowPlayingQueueControlsView_sleepButton);
    [v19 setTitle:v18 forState:0];

    v20 = 1;
  }

  *(v3 + OBJC_IVAR____TtC12NowPlayingUI27NowPlayingQueueControlsView_isShowingSleepTimer) = v20;
  v25 = OBJC_IVAR____TtC12NowPlayingUI27NowPlayingQueueControlsView_sleepButton;
  [*(v3 + OBJC_IVAR____TtC12NowPlayingUI27NowPlayingQueueControlsView_sleepButton) setImage:v28._object forState:0];
  [*(v3 + v25) setImage:v12.super.isa forState:1];
  v26 = *(v3 + v25);
  v27 = v16.super.isa;
  [v26 setImage:v27 forState:2];
}

void sub_ABFB4()
{
  v1 = objc_opt_self();
  v8 = [v1 systemFontOfSize:sub_13EA2C(UIContentSizeCategoryLarge weight:{UIFontTextStyleBody, 17.0), UIFontWeightSemibold}];
  v2 = sub_13E818();
  v3 = OBJC_IVAR____TtC12NowPlayingUI27NowPlayingQueueControlsView_sleepButton;
  v4 = [*&v0[OBJC_IVAR____TtC12NowPlayingUI27NowPlayingQueueControlsView_sleepButton] titleLabel];
  if (v4)
  {
    v5 = v4;
    [v4 setFont:v8];
  }

  if (v2)
  {
    v6 = 0;
  }

  else
  {
    v6 = 5;
  }

  v7 = [*&v0[v3] titleLabel];
  [v7 setLineBreakMode:v6];

  [v0 setNeedsLayout];
}

void sub_AC1C4()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "layoutSubviews");
  v1 = OBJC_IVAR____TtC12NowPlayingUI27NowPlayingQueueControlsView_sleepButton;
  v2 = *&v0[OBJC_IVAR____TtC12NowPlayingUI27NowPlayingQueueControlsView_sleepButton];
  sub_AC454(v2);

  [v0 music_inheritedLayoutInsets];
  v4 = v3;
  v6 = v5;
  v7 = *&v0[v1];
  [v0 bounds];
  [v7 setFrame:{UIEdgeInsetsInsetRect_0(v8, v9, v10, v11, v4, v6)}];

  v12 = *&v0[v1];
  UIButton.setImageAndTitleSpacing(_:contentEdgeInsets:)(12.0, 0.0, 12.0, 0.0, 12.0);
}

void sub_AC454(void *a1)
{
  sub_14114C();
  v2 = sub_14113C();
  [a1 setTitleColor:v2 forState:0];

  v3 = sub_14113C();
  v4 = [v3 colorWithAlphaComponent:0.2];

  [a1 setTitleColor:v4 forState:1];
  v5 = objc_opt_self();
  v6 = [v5 systemMidGrayColor];
  [a1 setTitleColor:v6 forState:2];

  v7 = [v5 systemMidGrayColor];
  [a1 setTitleColor:v7 forState:6];

  v8 = [v5 whiteColor];
  [a1 setTitleColor:v8 forState:4];

  v9 = [v5 whiteColor];
  [a1 setTitleColor:v9 forState:5];

  sub_AC71C();
  v10 = sub_14112C();
  v11 = sub_144FBC();

  [a1 setBackgroundImage:v11 forState:0];
  v12 = sub_14112C();
  v13 = [v12 colorWithAlphaComponent:0.6];

  v14 = sub_144FBC();
  [a1 setBackgroundImage:v14 forState:1];

  v15 = sub_14113C();
  v16 = sub_144FBC();

  [a1 setBackgroundImage:v16 forState:4];
  v17 = [v5 systemDarkPinkColor];
  v18 = sub_144FBC();

  [a1 setBackgroundImage:v18 forState:5];
}

unint64_t sub_AC71C()
{
  result = qword_1C2F20;
  if (!qword_1C2F20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1C2F20);
  }

  return result;
}

char *sub_AC768(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC12NowPlayingUI15MultilineButton_backgroundCornerRadius] = 0x4020000000000000;
  *&v4[OBJC_IVAR____TtC12NowPlayingUI15MultilineButton_borderColor] = 0;
  v4[OBJC_IVAR____TtC12NowPlayingUI15MultilineButton_isActivityIndicatorActive] = 0;
  v9 = &v4[OBJC_IVAR____TtC12NowPlayingUI15MultilineButton_contentEdgeInsets];
  *v9 = xmmword_1513F0;
  v9[1] = xmmword_1513F0;
  *&v4[OBJC_IVAR____TtC12NowPlayingUI15MultilineButton_lineComponents] = _swiftEmptyArrayStorage;
  v10 = OBJC_IVAR____TtC12NowPlayingUI15MultilineButton_textStackView;
  _s9StackViewCMa();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC12NowPlayingUI15MultilineButton_backgroundImageView;
  *&v4[v11] = [objc_allocWithZone(UIImageView) init];
  v12 = OBJC_IVAR____TtC12NowPlayingUI15MultilineButton_backgroundImagesForStates;
  *&v4[v12] = sub_13AA44(_swiftEmptyArrayStorage);
  *&v4[OBJC_IVAR____TtC12NowPlayingUI15MultilineButton_activityIndicatorView] = 0;
  v21.receiver = v4;
  v21.super_class = type metadata accessor for MultilineButton();
  v13 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  v14 = OBJC_IVAR____TtC12NowPlayingUI15MultilineButton_textStackView;
  v15 = *&v13[OBJC_IVAR____TtC12NowPlayingUI15MultilineButton_textStackView];
  _s5CacheCMa();
  swift_allocObject();
  v16 = v13;
  v17 = v15;
  v18 = sub_78E0();
  v19 = *&v17[OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_textDrawingCache];
  *&v17[OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_textDrawingCache] = v18;

  sub_51280(v19);

  [v16 addSubview:*&v16[OBJC_IVAR____TtC12NowPlayingUI15MultilineButton_backgroundImageView]];
  [v16 addSubview:*&v13[v14]];
  sub_AD794();

  return v16;
}

uint64_t sub_AC9A0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12NowPlayingUI15MultilineButton_lineComponents;

  LOBYTE(a1) = sub_A09C(v4, a1);

  if ((a1 & 1) == 0)
  {
    result = sub_51860();
    v6 = *(v1 + v3);
    v7 = *(v6 + 16);
    v8 = _swiftEmptyArrayStorage;
    if (v7)
    {
      v56 = _swiftEmptyArrayStorage;

      sub_14524C();
      _s9StackViewC9ComponentCMa();
      v43 = v7 - 1;
      v9 = 32;
      v37 = v6;
      while (1)
      {
        v38 = v9;
        v11 = *(v6 + v9 + 48);
        v10 = *(v6 + v9 + 64);
        v12 = *(v6 + v9 + 80);
        v49 = *(v6 + v9 + 96);
        v14 = *(v6 + v9 + 16);
        v13 = *(v6 + v9 + 32);
        v47[0] = *(v6 + v9);
        v47[1] = v14;
        v48[0] = v13;
        v48[1] = v11;
        v48[2] = v10;
        v48[3] = v12;
        v15 = v49;
        v16 = v14;
        v17 = v47[0];
        v18 = *(&v13 + 1);
        v19 = *(&v11 + 1);
        v20 = v10;
        v21 = v12 & 0xFFFFFFFF00000003;
        v41 = v11;
        v42 = v13;
        v50 = v13;
        v51 = v11;
        v52 = v10;
        v39 = *(&v12 + 1);
        v40 = *(&v10 + 1);
        *&v53 = v12 & 0xFFFFFFFF00000003;
        *(&v53 + 1) = *(&v12 + 1);
        v54 = xmmword_14A340;
        v55 = v49;
        v22 = swift_allocObject();
        v23 = v51;
        v25 = v52;
        v24 = v53;
        *(v22 + 64) = v52;
        *(v22 + 80) = v24;
        v27 = v54;
        v26 = v55;
        v28 = v53;
        *(v22 + 96) = v54;
        *(v22 + 112) = v26;
        v29 = v51;
        v30 = v50;
        *(v22 + 32) = v50;
        *(v22 + 48) = v29;
        *(v22 + 144) = v30;
        *(v22 + 160) = v23;
        v31 = v55;
        *(v22 + 208) = v27;
        *(v22 + 224) = v31;
        *(v22 + 240) = 0;
        *(v22 + 248) = 0xE000000000000000;
        *(v22 + 264) = 0;
        *(v22 + 272) = 0;
        *(v22 + 256) = 0;
        *(v22 + 16) = v17;
        *(v22 + 176) = v25;
        *(v22 + 192) = v28;
        *(v22 + 128) = v16;
        if (v16 == __PAIR128__(0xE000000000000000, 0) || (sub_1453BC() & 1) != 0)
        {
          sub_9724(&v50, v44);
          sub_9724(&v50, v44);
          sub_9674(v48, v44);
        }

        else
        {
          *(v22 + 240) = v16;
          sub_9724(&v50, v44);

          sub_9724(&v50, v44);
          sub_102A8(v47, v44);
          sub_9674(v48, v44);
          v32 = *(v22 + 256);

          if (v32)
          {

            v32(v33);
            sub_2173C(v32);
          }

          sub_10304(v47);
        }

        v44[0] = v42;
        v44[1] = v18;
        v44[2] = v41;
        v44[3] = v19;
        v44[4] = v20;
        v44[5] = v40;
        v44[6] = v21;
        v44[7] = v39;
        v45 = xmmword_14A340;
        v46 = v15;
        sub_9780(v44);
        sub_14522C();
        sub_14525C();
        sub_14526C();
        sub_14523C();
        if (!v43)
        {
          break;
        }

        --v43;
        v6 = v37;
        v9 = v38 + 112;
      }

      v8 = v56;
    }

    if (v8 >> 62)
    {
      result = sub_14531C();
      v34 = result;
      if (result)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v34 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
      if (v34)
      {
LABEL_15:
        if (v34 < 1)
        {
          __break(1u);
          return result;
        }

        for (i = 0; i != v34; ++i)
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v36 = sub_1451FC();
          }

          else
          {
            v36 = *(v8 + 8 * i + 32);
          }

          sub_51528(v36);
        }
      }
    }
  }

  return result;
}

id sub_ACE24(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for MultilineButton();
  v19.receiver = v2;
  v19.super_class = v4;
  v5 = objc_msgSendSuper2(&v19, "isHighlighted");
  v18.receiver = v2;
  v18.super_class = v4;
  objc_msgSendSuper2(&v18, "setHighlighted:", a1 & 1);
  result = [v2 isHighlighted];
  if (v5 != result)
  {
    v7 = *&v2[OBJC_IVAR____TtC12NowPlayingUI15MultilineButton_backgroundImageView];
    v8 = [v2 state];
    v9 = OBJC_IVAR____TtC12NowPlayingUI15MultilineButton_backgroundImagesForStates;
    swift_beginAccess();
    v10 = *&v2[v9];
    if (*(v10 + 16) && ((v11 = sub_F7FAC(v8), (v12 & 1) != 0) || (v11 = sub_F7FAC(0), (v13 & 1) != 0)))
    {
      v14 = *(*(v10 + 56) + 8 * v11);
    }

    else
    {
      v14 = 0;
    }

    [v7 setImage:v14];

    v15 = *&v2[OBJC_IVAR____TtC12NowPlayingUI15MultilineButton_textStackView];
    v16 = [v2 isHighlighted];
    v17 = 1.0;
    if (v16)
    {
      v17 = 0.25;
    }

    return [v15 setAlpha:v17];
  }

  return result;
}

id sub_ACF80(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for MultilineButton();
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_AD05C()
{
  v25.receiver = v0;
  v25.super_class = type metadata accessor for MultilineButton();
  objc_msgSendSuper2(&v25, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = UIEdgeInsetsInsetRect_0(v1, v3, v5, v7, *&v0[OBJC_IVAR____TtC12NowPlayingUI15MultilineButton_contentEdgeInsets], *&v0[OBJC_IVAR____TtC12NowPlayingUI15MultilineButton_contentEdgeInsets + 8]);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [*&v0[OBJC_IVAR____TtC12NowPlayingUI15MultilineButton_backgroundImageView] setFrame:{v2, v4, v6, v8}];
  v16 = *&v0[OBJC_IVAR____TtC12NowPlayingUI15MultilineButton_textStackView];
  [v16 setFrame:{v9, v11, v13, v15}];
  v17 = OBJC_IVAR____TtC12NowPlayingUI15MultilineButton_isActivityIndicatorActive;
  [v16 setHidden:v0[OBJC_IVAR____TtC12NowPlayingUI15MultilineButton_isActivityIndicatorActive]];
  v18 = OBJC_IVAR____TtC12NowPlayingUI15MultilineButton_activityIndicatorView;
  v19 = *&v0[OBJC_IVAR____TtC12NowPlayingUI15MultilineButton_activityIndicatorView];
  if (v0[v17] == 1)
  {
    if (v19)
    {
      v20 = *&v0[OBJC_IVAR____TtC12NowPlayingUI15MultilineButton_activityIndicatorView];
    }

    else
    {
      v21 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
      v22 = *&v0[v18];
      *&v0[v18] = v21;
      v20 = v21;

      v19 = 0;
    }

    v23 = v19;
    v24 = [v20 isDescendantOfView:v0];

    if ((v24 & 1) == 0)
    {
      [v0 addSubview:v20];
    }

    [v20 startAnimating];
    [v20 setFrame:{v9, v11, v13, v15}];
    [v20 setHidesWhenStopped:1];
  }

  else
  {
    [v19 stopAnimating];
  }
}

double sub_AD2A8(double a1, double a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI15MultilineButton_contentEdgeInsets);
  v6 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI15MultilineButton_contentEdgeInsets + 8);
  v7 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI15MultilineButton_contentEdgeInsets + 16);
  v8 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI15MultilineButton_contentEdgeInsets + 24);
  v9 = sub_141AFC();
  v10 = v6 + v8;
  v11 = a1 - v10;
  if (a1 - v10 <= 0.0)
  {
    v11 = 0.0;
  }

  if ((v9 & 1) == 0)
  {
    a1 = v11;
  }

  v12 = sub_141AFC();
  v13 = a2 - (v5 + v7);
  if (v13 <= 0.0)
  {
    v13 = 0.0;
  }

  if (v12)
  {
    v14 = a2;
  }

  else
  {
    v14 = v13;
  }

  [*(v2 + OBJC_IVAR____TtC12NowPlayingUI15MultilineButton_textStackView) sizeThatFits:{a1, v14}];
  return v10 + v15;
}

uint64_t sub_AD580()
{
  v1 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI15MultilineButton_lineComponents);
  v2 = *(v1 + 16);

  v4 = 0;
  if (v2)
  {
    v5 = 0;
    v6 = (v1 + 32);
    v7 = 0xE000000000000000;
    while (v5 < *(v1 + 16))
    {
      v8 = *v6;
      v9 = v6[2];
      v18 = v6[1];
      v19 = v9;
      v17 = v8;
      v10 = v6[3];
      v11 = v6[4];
      v12 = v6[6];
      v22 = v6[5];
      v23 = v12;
      v20 = v10;
      v21 = v11;
      v15 = v4;
      v16 = v7;
      v13 = HIBYTE(v7) & 0xF;
      if ((v7 & 0x2000000000000000) == 0)
      {
        v13 = v4 & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        sub_102A8(&v17, v14);

        v24._countAndFlagsBits = 10;
        v24._object = 0xE100000000000000;
        sub_14494C(v24);
      }

      else
      {
        sub_102A8(&v17, v14);
      }

      ++v5;
      sub_14494C(v18);

      result = sub_10304(&v17);
      v4 = v15;
      v7 = v16;
      v6 += 7;
      if (v2 == v5)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    return v4;
  }

  return result;
}

void sub_AD794()
{
  v1 = v0;
  v2 = [v0 tintColor];
  if (!v2)
  {
    sub_14114C();
    v2 = sub_14113C();
  }

  sub_AC71C();
  v70 = sub_144FBC();
  v3 = [objc_opt_self() systemMidGrayColor];
  v69 = sub_144FBC();

  v4 = [v2 colorWithAlphaComponent:0.5];
  v71 = sub_144FBC();

  v5 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.25];
  v6 = kCAFilterPlusD;
  v7 = [v2 _colorBlendedWithColor:v5 compositingFilter:kCAFilterPlusD];

  if (!v7)
  {
    __break(1u);
    goto LABEL_60;
  }

  v8 = sub_144FBC();

  v9 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.25];
  v10 = [v2 _colorBlendedWithColor:v9 compositingFilter:v6];

  if (!v10)
  {
LABEL_60:
    __break(1u);
    return;
  }

  v11 = [v10 colorWithAlphaComponent:0.5];

  v12 = sub_144FBC();
  swift_beginAccess();
  if (v70)
  {
    v13 = v70;
    sub_12B708(v70, 0);
    swift_endAccess();
  }

  else
  {
    v14 = sub_AEB6C(0);
    swift_endAccess();
  }

  v15 = *&v1[OBJC_IVAR____TtC12NowPlayingUI15MultilineButton_backgroundImageView];
  v16 = [v1 state];
  v17 = OBJC_IVAR____TtC12NowPlayingUI15MultilineButton_backgroundImagesForStates;
  swift_beginAccess();
  v18 = *&v1[v17];
  if (*(v18 + 16) && ((v19 = sub_F7FAC(v16), (v20 & 1) != 0) || (v19 = sub_F7FAC(0), (v21 & 1) != 0)))
  {
    v22 = *(*(v18 + 56) + 8 * v19);
  }

  else
  {
    v22 = 0;
  }

  [v15 setImage:v22];

  swift_beginAccess();
  if (v69)
  {
    v23 = v69;
    sub_12B708(v69, 2);
    swift_endAccess();
  }

  else
  {
    v24 = sub_AEB6C(2);
    swift_endAccess();
  }

  v25 = [v1 state];
  v26 = *&v1[v17];
  if (*(v26 + 16) && ((v27 = sub_F7FAC(v25), (v28 & 1) != 0) || (v27 = sub_F7FAC(0), (v29 & 1) != 0)))
  {
    v30 = *(*(v26 + 56) + 8 * v27);
  }

  else
  {
    v30 = 0;
  }

  [v15 setImage:v30];

  swift_beginAccess();
  if (v69)
  {
    v31 = v69;
    sub_12B708(v69, 6);
    swift_endAccess();
  }

  else
  {
    v32 = sub_AEB6C(6);
    swift_endAccess();
  }

  v33 = [v1 state];
  v34 = *&v1[v17];
  if (*(v34 + 16) && ((v35 = sub_F7FAC(v33), (v36 & 1) != 0) || (v35 = sub_F7FAC(0), (v37 & 1) != 0)))
  {
    v38 = *(*(v34 + 56) + 8 * v35);
  }

  else
  {
    v38 = 0;
  }

  [v15 setImage:v38];

  swift_beginAccess();
  if (v71)
  {
    v39 = v71;
    sub_12B708(v71, 1);
    swift_endAccess();
  }

  else
  {
    v40 = sub_AEB6C(1);
    swift_endAccess();
  }

  v41 = [v1 state];
  v42 = *&v1[v17];
  if (*(v42 + 16) && ((v43 = sub_F7FAC(v41), (v44 & 1) != 0) || (v43 = sub_F7FAC(0), (v45 & 1) != 0)))
  {
    v46 = *(*(v42 + 56) + 8 * v43);
  }

  else
  {
    v46 = 0;
  }

  [v15 setImage:v46];

  swift_beginAccess();
  if (v8)
  {
    v47 = v8;
    sub_12B708(v8, 4);
    swift_endAccess();
  }

  else
  {
    v48 = sub_AEB6C(4);
    swift_endAccess();
  }

  v49 = [v1 state];
  v50 = *&v1[v17];
  if (*(v50 + 16) && ((v51 = sub_F7FAC(v49), (v52 & 1) != 0) || (v51 = sub_F7FAC(0), (v53 & 1) != 0)))
  {
    v54 = *(*(v50 + 56) + 8 * v51);
  }

  else
  {
    v54 = 0;
  }

  [v15 setImage:v54];

  swift_beginAccess();
  if (v12)
  {
    v55 = v12;
    sub_12B708(v12, 5);
    swift_endAccess();
  }

  else
  {
    v56 = sub_AEB6C(5);
    swift_endAccess();
  }

  v57 = [v1 state];
  v58 = *&v1[v17];
  if (*(v58 + 16) && ((v59 = sub_F7FAC(v57), (v60 & 1) != 0) || (v59 = sub_F7FAC(0), (v61 & 1) != 0)))
  {
    v62 = *(*(v58 + 56) + 8 * v59);
  }

  else
  {
    v62 = 0;
  }

  [v15 setImage:v62];

  v63 = [v1 state];
  v64 = *&v1[v17];
  if (*(v64 + 16) && ((v65 = sub_F7FAC(v63), (v66 & 1) != 0) || (v65 = sub_F7FAC(0), (v67 & 1) != 0)))
  {
    v68 = *(*(v64 + 56) + 8 * v65);
  }

  else
  {
    v68 = 0;
  }

  [v15 setImage:v68];
}

void sub_ADEC4()
{
  v1 = *&v0[OBJC_IVAR____TtC12NowPlayingUI15MultilineButton_backgroundImageView];
  v2 = [v0 state];
  v3 = OBJC_IVAR____TtC12NowPlayingUI15MultilineButton_backgroundImagesForStates;
  swift_beginAccess();
  v4 = *&v0[v3];
  if (*(v4 + 16) && ((v5 = sub_F7FAC(v2), (v6 & 1) != 0) || (v5 = sub_F7FAC(0), (v7 & 1) != 0)))
  {
    v8 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    v8 = 0;
  }

  [v1 setImage:v8];
}

uint64_t sub_ADF80(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *(a1 + 3);
  v22[0] = *(a1 + 2);
  v22[1] = v8;
  v9 = *(a1 + 5);
  v22[2] = *(a1 + 4);
  v22[3] = v9;
  v11 = *(a1 + 12);
  v10 = *(a1 + 13);
  v12 = *a2;
  v13 = a2[1];
  v14 = a2[2];
  v15 = a2[3];
  v16 = *(a2 + 5);
  v23[2] = *(a2 + 4);
  v23[3] = v16;
  v17 = *(a2 + 3);
  v23[0] = *(a2 + 2);
  v23[1] = v17;
  v19 = *(a2 + 12);
  v18 = *(a2 + 13);
  if ((v4 != v12 || v5 != v13) && (sub_1453BC() & 1) == 0 || (v6 != v14 || v7 != v15) && (sub_1453BC() & 1) == 0)
  {
    return 0;
  }

  v20 = sub_94FA8(v22, v23) & (v11 == v19);
  if (v10 == v18)
  {
    return v20;
  }

  else
  {
    return 0;
  }
}

id sub_AE070()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultilineButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_AE154()
{
  v2 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI15SubtitledButton_title);
  v1 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI15SubtitledButton_title + 8);

  sub_AE558(4, &v29);
  *&v27 = 0x656C746974;
  *(&v27 + 1) = 0xE500000000000000;
  *&v28 = v2;
  *(&v28 + 1) = v1;
  v33 = xmmword_151400;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6068);
  v3 = swift_allocObject();
  v4 = v31;
  v5 = v32;
  v35[4] = v31;
  v35[5] = v32;
  v6 = v33;
  v35[6] = v33;
  v7 = v27;
  v35[0] = v27;
  v35[1] = v28;
  v9 = v29;
  v8 = v30;
  v35[2] = v29;
  v35[3] = v30;
  *(v3 + 48) = v28;
  *(v3 + 64) = v9;
  *(v3 + 16) = xmmword_14A710;
  *(v3 + 32) = v7;
  *(v3 + 112) = v5;
  *(v3 + 128) = v6;
  *(v3 + 80) = v8;
  *(v3 + 96) = v4;
  v10 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI15SubtitledButton_subtitle + 8);
  if (!v10)
  {
    goto LABEL_8;
  }

  v11 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI15SubtitledButton_subtitle);
  v12 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v12 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    *&v33 = 0x4037000000000000;
    sub_102A8(v35, v26);

    sub_AE558(2, v34);
    sub_AE9C4(v34, &v29);
    sub_AE6B4(v25);
    v14 = *(v3 + 16);
    v13 = *(v3 + 24);
    if (v14 >= v13 >> 1)
    {
      v3 = sub_134C4C((v13 > 1), v14 + 1, 1, v3);
    }

    *(v3 + 16) = v14 + 1;
    v15 = v3 + 112 * v14;
    *(v15 + 32) = 0x656C746974627573;
    *(v15 + 40) = 0xE800000000000000;
    *(v15 + 48) = v11;
    *(v15 + 56) = v10;
    v16 = v25[1];
    *(v15 + 64) = v25[0];
    *(v15 + 80) = v16;
    v17 = v25[3];
    *(v15 + 96) = v25[2];
    *(v15 + 112) = v17;
    __asm { FMOV            V0.2D, #16.0 }

    *(v15 + 128) = _Q0;
  }

  else
  {
LABEL_8:
    sub_102A8(v35, v26);
  }

  v23 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI15MultilineButton_lineComponents);
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI15MultilineButton_lineComponents) = v3;
  sub_AC9A0(v23);

  v26[4] = v31;
  v26[5] = v32;
  v26[6] = v33;
  v26[0] = v27;
  v26[1] = v28;
  v26[2] = v29;
  v26[3] = v30;
  return sub_10304(v26);
}

double sub_AE558@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = [objc_opt_self() fontDescriptorWithSystemFontSize:a1 weight:17.0];
  v5 = objc_opt_self();
  v6 = [v5 blackColor];
  v7 = [v5 clearColor];
  v8 = [v4 typeSafeCopy];

  v9 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI15SubtitledButton_textColor);
  *&v14 = v8;
  *(&v14 + 1) = v9;
  *&v15 = v7;
  BYTE8(v15) = 3;
  v16 = 4uLL;
  LOBYTE(v17) = 0;
  *(&v17 + 4) = 0x3F00000000000000;
  HIDWORD(v17) = 1065353216;
  v18[0] = v8;
  v18[1] = v9;
  v18[2] = v7;
  v19 = 3;
  v20 = 4;
  v21 = 0;
  v22 = 0;
  v23 = 0x3F00000000000000;
  v24 = 1065353216;
  sub_9674(&v14, &v13);
  sub_96D0(v18);
  v10 = v15;
  *a2 = v14;
  a2[1] = v10;
  result = *&v16;
  v12 = v17;
  a2[2] = v16;
  a2[3] = v12;
  return result;
}

double sub_AE6B4@<D0>(_OWORD *a1@<X8>)
{
  v3 = [objc_opt_self() fontDescriptorWithTextStyle:4 weight:5];
  v4 = objc_opt_self();
  v5 = [v4 blackColor];
  v6 = [v4 clearColor];
  v7 = [v3 typeSafeCopy];

  v8 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI15SubtitledButton_textColor);
  *&v13 = v7;
  *(&v13 + 1) = v8;
  *&v14 = v6;
  BYTE8(v14) = 3;
  v15 = 4uLL;
  LOBYTE(v16) = 0;
  *(&v16 + 4) = 0x3F00000000000000;
  HIDWORD(v16) = 1065353216;
  v17[0] = v7;
  v17[1] = v8;
  v17[2] = v6;
  v18 = 3;
  v19 = 4;
  v20 = 0;
  v21 = 0;
  v22 = 0x3F00000000000000;
  v23 = 1065353216;
  sub_9674(&v13, &v12);
  sub_96D0(v17);
  v9 = v14;
  *a1 = v13;
  a1[1] = v9;
  result = *&v15;
  v11 = v16;
  a1[2] = v15;
  a1[3] = v11;
  return result;
}

void sub_AE80C()
{

  v1 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI15SubtitledButton_textColor);
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_AE910(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_AE958(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_AEA20(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_F7D28(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_137680(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_138CFC();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_1452DC();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_1452CC();
  v8 = sub_7550(v4, v7);

  v9 = sub_F7D28(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_137680(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_AEB6C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_F7FAC(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_139718();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  sub_13780C(v8, v7);
  *v2 = v7;
  return v9;
}

void sub_AEBF4()
{
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI15MultilineButton_backgroundCornerRadius) = 0x4020000000000000;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI15MultilineButton_borderColor) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI15MultilineButton_isActivityIndicatorActive) = 0;
  v1 = (v0 + OBJC_IVAR____TtC12NowPlayingUI15MultilineButton_contentEdgeInsets);
  *v1 = xmmword_1513F0;
  v1[1] = xmmword_1513F0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI15MultilineButton_lineComponents) = _swiftEmptyArrayStorage;
  v2 = OBJC_IVAR____TtC12NowPlayingUI15MultilineButton_textStackView;
  _s9StackViewCMa();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC12NowPlayingUI15MultilineButton_backgroundImageView;
  *(v0 + v3) = [objc_allocWithZone(UIImageView) init];
  v4 = OBJC_IVAR____TtC12NowPlayingUI15MultilineButton_backgroundImagesForStates;
  *(v0 + v4) = sub_13AA44(_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI15MultilineButton_activityIndicatorView) = 0;
  sub_1452FC();
  __break(1u);
}

void sub_AED14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = v3;
  v44 = a2;
  v5 = *v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2490);
  __chkstk_darwin(v6 - 8);
  v41 = &v40 - v7;
  v8 = sub_14243C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_140B0C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_140AFC();
  v16 = sub_140B8C();
  (*(v13 + 8))(v15, v12);
  sub_1423CC();
  v17 = sub_14242C();
  v18 = sub_144C5C();
  v19 = os_log_type_enabled(v17, v18);
  v42 = v5;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v40 = a3;
    v22 = v21;
    v45 = v21;
    *v20 = 136315650;
    v23 = sub_1454BC();
    v25 = sub_ED2A4(v23, v24, &v45);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2050;
    *(v20 + 14) = v16;
    *(v20 + 22) = 2050;
    v26 = v44;
    *(v20 + 24) = v44;
    _os_log_impl(&dword_0, v17, v18, "[%s]: List onMove request move from %{public}ld to %{public}ld", v20, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v22);
    a3 = v40;

    (*(v9 + 8))(v11, v8);
    if (v26)
    {
      goto LABEL_3;
    }

LABEL_9:
    v27 = 0;
    if ((v16 & 0x8000000000000000) == 0)
    {
LABEL_5:
      v28 = *(a3 + 16);
      if (v16 < v28)
      {
        sub_14413C();
        v29 = sub_1440EC();
        if (v27 < v28)
        {
          v30 = v29;
          v31 = sub_1440EC();
          v32 = sub_144ADC();
          v33 = v41;
          (*(*(v32 - 8) + 56))(v41, 1, 1, v32);
          sub_144ABC();
          v34 = v31;
          v35 = v30;
          v36 = v43;

          v37 = sub_144AAC();
          v38 = swift_allocObject();
          *(v38 + 16) = v37;
          *(v38 + 24) = &protocol witness table for MainActor;
          *(v38 + 32) = v26 == 0;
          *(v38 + 40) = v34;
          *(v38 + 48) = v35;
          v39 = v42;
          *(v38 + 56) = v36;
          *(v38 + 64) = v39;
          sub_43A50(0, 0, v33, &unk_151728, v38);

          return;
        }

        goto LABEL_12;
      }

LABEL_11:
      __break(1u);
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  (*(v9 + 8))(v11, v8);
  v26 = v44;
  if (!v44)
  {
    goto LABEL_9;
  }

LABEL_3:
  v27 = v26 - 1;
  if (!__OFSUB__(v26, 1))
  {
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_AF1B8()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 72);
  }

  else
  {
    sub_140E1C();
    v2 = v0;
    sub_1446DC();
    v1 = sub_140DFC();
    v4 = v3;

    *(v2 + 72) = v1;
    *(v2 + 80) = v4;
  }

  return v1;
}

uint64_t sub_AF258@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6238);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v13 - v7;
  v9 = OBJC_IVAR____TtC12NowPlayingUI25NowPlayingQueueController____lazy_storage___viewProvider;
  swift_beginAccess();
  sub_1D19C(v1 + v9, v8, &qword_1C6238);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C21B0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_15340(v8, &qword_1C6238);
  v13[1] = sub_14142C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C26B8);
  sub_B4778(&qword_1C1D80, &type metadata accessor for NowPlayingLookupID);
  sub_1D4A4(&qword_1C26C0, &qword_1C26B8);
  sub_14119C();
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_B47C0(v6, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_AF548(void *a1)
{
  v44 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2000);
  v30 = *(v1 - 8);
  v31 = v1;
  __chkstk_darwin(v1);
  v29 = &v28 - v2;
  v3 = sub_144D6C();
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v41 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C20E8);
  __chkstk_darwin(v37);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C9280);
  __chkstk_darwin(v35);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C20F0);
  __chkstk_darwin(v34);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6240);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - v7;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6248);
  v38 = *(v36 - 8);
  __chkstk_darwin(v36);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6250);
  v12 = *(v11 - 8);
  v39 = v11;
  v40 = v12;
  __chkstk_darwin(v11);
  v33 = &v28 - v13;
  sub_141BEC();
  sub_141B6C();
  sub_141C2C();
  sub_1D4A4(&qword_1C2100, &qword_1C20F0);
  sub_1D4A4(&qword_1C6258, &qword_1C9280);
  sub_1D4A4(&qword_1C2108, &qword_1C20E8);
  sub_14255C();
  sub_1D4A4(&qword_1C6260, &qword_1C6240);
  sub_14279C();
  v14 = v8;
  v15 = v32;
  (*(v6 + 8))(v14, v5);
  v16 = v41;
  sub_144D5C();
  sub_2B860(0, &qword_1C2160);
  v17 = sub_144D8C();
  v45 = v17;
  sub_1D4A4(&qword_1C6268, &qword_1C6248);
  sub_2ACD0();
  v18 = v33;
  v19 = v36;
  sub_14284C();

  (*(v42 + 8))(v16, v43);
  (*(v38 + 8))(v10, v19);
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_B3480;
  *(v21 + 24) = v20;
  sub_1D4A4(&qword_1C6270, &qword_1C6250);
  v22 = v39;
  v23 = sub_14289C();

  (*(v40 + 8))(v18, v22);
  *(v15 + 40) = v23;

  if (v44)
  {
    v45 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C9310);
    sub_1D4A4(&qword_1C2020, &unk_1C9310);
    v25 = v29;
    sub_14286C();
    v26 = sub_14420C();
    sub_1D4A4(&qword_1C2028, &qword_1C2000);
    v27 = v31;
    sub_1428BC();
    (*(v30 + 8))(v25, v27);
    return v26(&v45, 0);
  }

  return result;
}

uint64_t sub_AFD00@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for NowPlayingChapterMenuItems(0);
  v10 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ([objc_opt_self() isRunningOnInternalOS])
  {
    v6 = *(v1 + 32);
    *(v5 + *(v3 + 20)) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6230);
    swift_storeEnumTagMultiPayload();
    *v5 = v6;
    sub_B3314(v5, a1);
    (*(v10 + 56))(a1, 0, 1, v3);
  }

  else
  {
    v8 = *(v10 + 56);

    return v8(a1, 1, 1, v3);
  }
}

uint64_t sub_AFE8C()
{
  swift_getKeyPath();
  if (qword_1C0010 != -1)
  {
    swift_once();
  }

  v0 = sub_14142C();
  __swift_project_value_buffer(v0, qword_1C6070);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6280);
  sub_B4854();
  sub_14183C();
}

BOOL sub_AFF60(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 48);
  v6 = *(a1 + 56);
  v5 = *(a1 + 64);
  v7 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a1 + 16);
  v9 = *(a1 + 32);
  v12 = *(a2 + 16);
  v11 = *(a2 + 32);
  v13 = *(a2 + 48);
  v15 = *(a2 + 56);
  v14 = *(a2 + 64);
  if (*a1)
  {
    if (!v7)
    {
      return 0;
    }

    v27 = *(a1 + 16);
    v29 = *(a1 + 32);
    v23 = *(a2 + 16);
    v25 = *(a2 + 32);
    sub_2B860(0, &qword_1C24C8);
    v16 = v7;
    v17 = v2;
    v18 = sub_144FFC();

    v12 = v23;
    v11 = v25;
    v10 = v27;
    v9 = v29;
    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (!v3)
  {
    if (!v8)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (!v8)
  {
    return 0;
  }

  v28 = v10;
  v30 = v9;
  v24 = v12;
  v26 = v11;
  sub_2B860(0, &qword_1C6278);
  v19 = v8;
  v20 = v3;
  v21 = sub_144FFC();

  v12 = v24;
  v11 = v26;
  v10 = v28;
  v9 = v30;
  if ((v21 & 1) == 0)
  {
    return 0;
  }

LABEL_9:
  result = v14 == 2 && v5 == 2;
  if (v5 != 2 && v14 != 2)
  {
    result = 0;
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v10, v12), vceqq_f64(v9, v11))))) & 1) == 0 && v4 == v13 && *&v6 == *&v15 && *(&v6 + 1) == *(&v15 + 1))
    {
      if ((v14 ^ v5))
      {
        return 0;
      }

      else
      {
        return (v5 >> 8) & 1 ^ ((v14 & 0x100) == 0);
      }
    }
  }

  return result;
}

uint64_t sub_B013C(void *a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_B01B8(a1, a2, a3);
  }

  return result;
}

uint64_t sub_B01B8(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2490);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  if (v3[6])
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4228);
    sub_144AEC();
  }

  v12 = sub_144ADC();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_144ABC();
  v13 = a2;

  v14 = a1;
  v15 = sub_144AAC();
  v16 = swift_allocObject();
  v17 = *(a3 + 16);
  *(v16 + 56) = *a3;
  *(v16 + 16) = v15;
  *(v16 + 24) = &protocol witness table for MainActor;
  *(v16 + 32) = v4;
  *(v16 + 40) = a1;
  *(v16 + 48) = a2;
  *(v16 + 72) = v17;
  *(v16 + 88) = *(a3 + 32);
  *(v16 + 104) = *(a3 + 48);
  *(v16 + 112) = v8;
  v4[6] = sub_43A50(0, 0, v11, &unk_151660, v16);
}

uint64_t sub_B03A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a4;
  v9 = sub_14243C();
  v8[11] = v9;
  v8[12] = *(v9 - 8);
  v8[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3248);
  v8[14] = swift_task_alloc();
  v10 = sub_14416C();
  v8[15] = v10;
  v8[16] = *(v10 - 8);
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  v8[19] = sub_144ABC();
  v8[20] = sub_144AAC();
  v8[21] = sub_144AAC();
  v12 = sub_144A8C();
  v8[22] = v12;
  v8[23] = v11;

  return _swift_task_switch(sub_B054C, v12, v11);
}

uint64_t sub_B054C()
{
  v1 = v0[7];
  v2 = v0[8];
  if (v1)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {

    sub_14407C();
    v5 = sub_144A8C();

    return _swift_task_switch(sub_B0894, v5, v4);
  }

  else
  {
    v6 = *(v0[6] + 16);
    v7 = v1;
    v2;
    v8 = swift_task_alloc();
    v0[24] = v8;
    *v8 = v0;
    v8[1] = sub_B0678;

    return sub_B0B34(v6);
  }
}

uint64_t sub_B0678(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 200) = a1;
  *(v4 + 208) = a2;

  v5 = *(v3 + 184);
  v6 = *(v3 + 176);

  return _swift_task_switch(sub_B07A0, v6, v5);
}

uint64_t sub_B07A0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);

  sub_144E2C();
  sub_144E3C();
  [v2 areChaptersGenerated];
  sub_14414C();

  v4 = sub_144A8C();

  return _swift_task_switch(sub_B0894, v4, v3);
}

uint64_t sub_B0894()
{

  sub_144B0C();
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[15];
  (*(v2 + 16))(v0[17], v1, v3);
  sub_14424C();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_B0B34(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  sub_144ABC();
  v2[12] = sub_144AAC();
  v4 = sub_144A8C();

  return _swift_task_switch(sub_B0BCC, v4, v3);
}

uint64_t sub_B0BCC()
{
  v1 = v0[11];
  v2 = v0[10];

  v0[8] = _swiftEmptyArrayStorage;
  v0[9] = _swiftEmptyArrayStorage;
  v3 = [v1 displayItems];
  v4 = swift_allocObject();
  v4[2] = v1;
  v4[3] = v2;
  v4[4] = v0 + 8;
  v4[5] = v0 + 9;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_B4534;
  *(v5 + 24) = v4;
  v0[6] = sub_B4AB8;
  v0[7] = v5;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_B4AB0;
  v0[5] = &block_descriptor_11;
  v6 = _Block_copy(v0 + 2);
  v7 = v1;

  [v3 enumerateSectionsUsingBlock:v6];

  _Block_release(v6);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v9 = v0[8];
    v10 = v0[9];

    v11 = v0[1];

    return v11(v9, v10);
  }

  return result;
}

uint64_t sub_B0DB4()
{

  sub_15340(v0 + OBJC_IVAR____TtC12NowPlayingUI25NowPlayingQueueController____lazy_storage___viewProvider, &qword_1C6238);
  return v0;
}

uint64_t sub_B0E24()
{
  sub_B0DB4();

  return swift_deallocClassInstance();
}

void sub_B0EA4()
{
  sub_B1200(319, &unk_1C60C8, &qword_1C21B0, &unk_14C590, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_B0FB0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6188);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_B1080(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6188);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_B1150()
{
  sub_141D4C();
  if (v0 <= 0x3F)
  {
    sub_B1200(319, &qword_1C61F8, &unk_1C6200, &unk_1515C0, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_B1200(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_B1280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = sub_14413C();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = sub_14243C();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  sub_144ABC();
  v5[14] = sub_144AAC();
  v9 = sub_144A8C();
  v5[15] = v9;
  v5[16] = v8;

  return _swift_task_switch(sub_B13D0, v9, v8);
}

uint64_t sub_B13D0()
{
  v0[17] = sub_141B5C();
  v1 = sub_1440EC();
  v0[18] = v1;
  v4 = (&async function pointer to dispatch thunk of PlaybackController.QueueController.changeToItemAndPlay(_:) + async function pointer to dispatch thunk of PlaybackController.QueueController.changeToItemAndPlay(_:));
  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_B14A4;

  return v4(v1);
}

uint64_t sub_B14A4()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = *(v2 + 120);
    v4 = *(v2 + 128);
    v5 = sub_B163C;
  }

  else
  {

    v3 = *(v2 + 120);
    v4 = *(v2 + 128);
    v5 = sub_B15C8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_B15C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_B163C()
{
  v30 = v0;
  v1 = v0[18];
  v3 = v0[9];
  v2 = v0[10];
  v5 = v0[7];
  v4 = v0[8];

  sub_1423CC();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = sub_14242C();
  v7 = sub_144C5C();

  if (os_log_type_enabled(v6, v7))
  {
    v26 = v0[12];
    v8 = v0[10];
    v27 = v0[11];
    v28 = v0[13];
    v9 = v0[8];
    v10 = v0[9];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v29 = v13;
    *v11 = 138412546;
    v14 = sub_1440EC();
    (*(v10 + 8))(v8, v9);
    *(v11 + 4) = v14;
    *v12 = v14;
    *(v11 + 12) = 2080;
    swift_getErrorValue();
    v15 = sub_14542C();
    v17 = sub_ED2A4(v15, v16, &v29);

    *(v11 + 14) = v17;
    _os_log_impl(&dword_0, v6, v7, "Failed to play item from queue: %@, error: %s", v11, 0x16u);
    sub_15340(v12, &qword_1C2580);

    __swift_destroy_boxed_opaque_existential_0(v13);

    (*(v26 + 8))(v28, v27);
  }

  else
  {
    v19 = v0[12];
    v18 = v0[13];
    v21 = v0[10];
    v20 = v0[11];
    v22 = v0[8];
    v23 = v0[9];

    (*(v23 + 8))(v21, v22);
    (*(v19 + 8))(v18, v20);
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_B18F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = a7;
  *(v8 + 80) = a8;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 176) = a4;
  v9 = sub_14243C();
  *(v8 + 88) = v9;
  *(v8 + 96) = *(v9 - 8);
  *(v8 + 104) = swift_task_alloc();
  v10 = sub_141BAC();
  *(v8 + 112) = v10;
  *(v8 + 120) = *(v10 - 8);
  *(v8 + 128) = swift_task_alloc();
  sub_144ABC();
  *(v8 + 136) = sub_144AAC();
  v12 = sub_144A8C();
  *(v8 + 144) = v12;
  *(v8 + 152) = v11;

  return _swift_task_switch(sub_B1A48, v12, v11);
}

uint64_t sub_B1A48()
{
  v47 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  **(v0 + 128) = v2;
  (*(v1 + 104))();
  v4 = v2;
  sub_1423CC();
  v5 = v4;
  v6 = v3;
  v7 = sub_14242C();
  v8 = sub_144C5C();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 96);
  v11 = *(v0 + 104);
  v12 = *(v0 + 88);
  if (v9)
  {
    v13 = *(v0 + 64);
    v42 = *(v0 + 56);
    v44 = *(v0 + 104);
    v14 = *(v0 + 176);
    v43 = *(v0 + 88);
    v15 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v15 = 136315906;
    v16 = sub_1454BC();
    v18 = sub_ED2A4(v16, v17, &v46);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    v19 = [v13 description];
    v20 = sub_1448DC();
    v22 = v21;

    v23 = sub_ED2A4(v20, v22, &v46);

    *(v15 + 14) = v23;
    *(v15 + 22) = 2080;
    if (v14)
    {
      v24 = 0x65726F666562;
    }

    else
    {
      v24 = 0x7265746661;
    }

    if (v14)
    {
      v25 = 0xE600000000000000;
    }

    else
    {
      v25 = 0xE500000000000000;
    }

    v26 = sub_ED2A4(v24, v25, &v46);

    *(v15 + 24) = v26;
    *(v15 + 32) = 2082;
    v27 = [v42 description];
    v28 = sub_1448DC();
    v30 = v29;

    v31 = sub_ED2A4(v28, v30, &v46);

    *(v15 + 34) = v31;
    _os_log_impl(&dword_0, v7, v8, "[%s]: performing command to move %{public}s %s %{public}s", v15, 0x2Au);
    swift_arrayDestroy();

    (*(v10 + 8))(v44, v43);
  }

  else
  {

    (*(v10 + 8))(v11, v12);
  }

  v33 = *(v0 + 120);
  v32 = *(v0 + 128);
  v34 = *(v0 + 112);
  v35 = *(v0 + 64);
  v36 = sub_141BBC();
  *(v0 + 40) = v36;
  *(v0 + 48) = &protocol witness table for PlaybackController.QueueCommand;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4A78) + 48);
  *boxed_opaque_existential_1 = v35;
  (*(v33 + 16))(boxed_opaque_existential_1 + v38, v32, v34);
  (*(v33 + 56))(boxed_opaque_existential_1 + v38, 0, 1, v34);
  (*(*(v36 - 8) + 104))(boxed_opaque_existential_1, enum case for PlaybackController.QueueCommand.moveItem(_:), v36);
  v45 = &async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:) + async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:);
  v39 = v35;
  v40 = swift_task_alloc();
  *(v0 + 160) = v40;
  *v40 = v0;
  v40[1] = sub_B1E68;

  return (v45)(v0 + 16, 0);
}

uint64_t sub_B1E68(void *a1)
{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v5 = *(v4 + 144);
    v6 = *(v4 + 152);
    v7 = sub_B2030;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v4 + 16);
    v5 = *(v4 + 144);
    v6 = *(v4 + 152);
    v7 = sub_B1F94;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_B1F94()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[15];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_B2030()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[15];

  (*(v3 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t sub_B20D4(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a2;
  *(v5 + 16) = a1;
  *(v5 + 24) = a5;
  sub_144ABC();
  *(v5 + 40) = sub_144AAC();
  v7 = sub_144A8C();
  *(v5 + 48) = v7;
  *(v5 + 56) = v6;

  return _swift_task_switch(sub_B2170, v7, v6);
}

uint64_t sub_B2170()
{
  v1 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4A68);
  v2 = swift_allocObject();
  v0[8] = v2;
  *(v2 + 16) = xmmword_14E520;
  v3 = sub_141C0C();
  *(v2 + 56) = v3;
  *(v2 + 64) = &protocol witness table for PlaybackController.TransportCommand;
  *__swift_allocate_boxed_opaque_existential_1((v2 + 32)) = v1;
  v4 = *(*(v3 - 8) + 104);
  v4();
  *(v2 + 96) = v3;
  *(v2 + 104) = &protocol witness table for PlaybackController.TransportCommand;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v2 + 72));
  (v4)(boxed_opaque_existential_1, enum case for PlaybackController.TransportCommand.play(_:), v3);
  v8 = &async function pointer to dispatch thunk of PlaybackController.performCommands(_:options:) + async function pointer to dispatch thunk of PlaybackController.performCommands(_:options:);
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_B22F0;

  return (v8)(v2, 0);
}

uint64_t sub_B22F0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = v4[6];
    v6 = v4[7];
    v7 = sub_B2490;
  }

  else
  {

    v4[11] = a1;
    v5 = v4[6];
    v6 = v4[7];
    v7 = sub_B2420;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_B2420()
{
  v1 = v0[11];
  v2 = v0[2];

  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_B2490()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_B2500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a1;
  v4[8] = a4;
  sub_144ABC();
  v4[9] = sub_144AAC();
  v6 = sub_144A8C();
  v4[10] = v6;
  v4[11] = v5;

  return _swift_task_switch(sub_B2598, v6, v5);
}

uint64_t sub_B2598()
{
  v1 = sub_141BBC();
  v0[5] = v1;
  v0[6] = &protocol witness table for PlaybackController.QueueCommand;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, enum case for PlaybackController.QueueCommand.clearHardQueue(_:), v1);
  v5 = &async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:) + async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_B26A8;

  return (v5)(v0 + 2, 0);
}

uint64_t sub_B26A8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_B2844;
  }

  else
  {
    v4[14] = a1;
    __swift_destroy_boxed_opaque_existential_0((v4 + 2));
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_B27D4;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_B27D4()
{
  v1 = v0[14];
  v2 = v0[7];

  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_B2844()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_B28B0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_142FFC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6230);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for NowPlayingChapterMenuItems(0);
  sub_1D19C(v1 + *(v10 + 20), v9, &qword_1C6230);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_B33D8(v9, a1);
  }

  sub_144C4C();
  v12 = sub_1435DC();
  sub_1423BC();

  sub_142FEC();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_B2A88()
{
  v0 = sub_14461C();
  v58 = *(v0 - 8);
  v59 = v0;
  __chkstk_darwin(v0);
  v46 = (&v44 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C6200);
  __chkstk_darwin(v2 - 8);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v44 - v6;
  v8 = sub_14464C();
  v56 = *(v8 - 8);
  v57 = v8;
  __chkstk_darwin(v8);
  v55 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_141BDC();
  if (v10 && (v11 = v10, v12 = [v10 podcast], v11, v12) && (v13 = objc_msgSend(v12, "title"), v12, v13))
  {
    v14 = sub_1448DC();
    v53 = v15;
    v54 = v14;
  }

  else
  {
    v53 = 0;
    v54 = 0;
  }

  v16 = sub_141BDC();
  if (v16 && (v17 = v16, v18 = [v16 title], v17, v18))
  {
    v19 = sub_1448DC();
    v51 = v20;
    v52 = v19;
  }

  else
  {
    v51 = 0;
    v52 = 0;
  }

  v21 = sub_141BDC();
  if (v21 && (v22 = v21, v23 = [v21 podcast], v22, v23))
  {
    v50 = sub_144C0C();
    v49 = v24;
  }

  else
  {
    v50 = 0;
    v49 = 1;
  }

  v25 = sub_141BDC();
  if (v25)
  {
    v26 = v25;
    v48 = sub_144C0C();
    v47 = v27;
  }

  else
  {
    v48 = 0;
    v47 = 1;
  }

  v28 = sub_141BDC();
  if (v28)
  {
    v29 = v28;
    v30 = [v28 priceType];

    if (v30)
    {
      v31 = sub_1448DC();
      v33 = v32;

      if (v31 == 1363432531 && v33 == 0xE400000000000000)
      {

LABEL_23:
        v45 = 0xE300000000000000;
        goto LABEL_25;
      }

      v34 = sub_1453BC();

      if (v34)
      {
        goto LABEL_23;
      }
    }
  }

  v45 = 0xE600000000000000;
LABEL_25:
  sub_B28B0(v7);
  v35 = sub_1417AC();
  v36 = *(v35 - 8);
  v37 = *(v36 + 48);
  if (v37(v7, 1, v35) == 1)
  {
    sub_15340(v7, &unk_1C6200);
  }

  else
  {
    sub_14179C();
    (*(v36 + 8))(v7, v35);
  }

  sub_B28B0(v4);
  if (v37(v4, 1, v35) == 1)
  {
    sub_15340(v4, &unk_1C6200);
    v38 = 0;
    v39 = 0xE000000000000000;
  }

  else
  {
    v38 = sub_14178C();
    v39 = v40;
    (*(v36 + 8))(v4, v35);
  }

  v41 = v46;
  *v46 = v38;
  v41[1] = v39;
  (*(v58 + 104))(v41, enum case for KCURadar.ReportContent.chapter(_:), v59);
  v42 = v55;
  sub_14463C();
  sub_14462C();
  return (*(v56 + 8))(v42, v57);
}

uint64_t sub_B2FF8(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1 - 8);
  sub_1430EC();
  sub_B313C(v1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_B3314(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  return sub_143D1C();
}

uint64_t sub_B313C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlayingChapterMenuItems(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_B31A0()
{
  v1 = (type metadata accessor for NowPlayingChapterMenuItems(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;

  v6 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6230);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1417AC();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_B3314(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlayingChapterMenuItems(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_B3378()
{
  type metadata accessor for NowPlayingChapterMenuItems(0);

  return sub_B2A88();
}

uint64_t sub_B33D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C6200);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_B3448()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_B3488()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_B34C0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 2);
  v7[0] = *(a1 + 1);
  v7[1] = v5;
  v7[2] = *(a1 + 3);
  v8 = a1[8];
  return v2(v4, v3, v7);
}

uint64_t sub_B3514()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_B3564(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[14];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D0A8;

  return sub_B03A0(a1, v4, v5, v6, v7, v8, (v1 + 7), v9);
}

uint64_t sub_B3640(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = a6;
  v32 = a7;
  v33 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4A48);
  __chkstk_darwin(v9 - 8);
  v11 = &v28 - v10;
  v12 = sub_141D6C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v28 - v17;
  sub_1448DC();
  sub_14489C();

  sub_141D5C();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_15340(v11, &qword_1C4A48);
  }

  v20 = *(v13 + 32);
  v20(v18, v11, v12);
  v30 = [a4 displayItems];
  (*(v13 + 16))(v15, v18, v12);
  v21 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v28 = a2;
  v22 = (v14 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v29 = v18;
  *(v23 + 16) = v33;
  v20((v23 + v21), v15, v12);
  v24 = v32;
  *(v23 + v22) = v31;
  *(v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8)) = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_B4640;
  *(v25 + 24) = v23;
  aBlock[4] = sub_B4704;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_B4AB0;
  aBlock[3] = &block_descriptor_29;
  v26 = _Block_copy(aBlock);

  v27 = v30;
  [v30 enumerateItemsInSectionAtIndex:v28 usingBlock:v26];
  _Block_release(v26);

  (*(v13 + 8))(v29, v12);
  LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

  if (v26)
  {
    __break(1u);
  }

  return result;
}

void sub_B39D8(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, size_t *a6, size_t *a7)
{
  v90 = a6;
  v91 = a7;
  v92 = a4;
  v93 = a5;
  v8 = sub_141D6C();
  v95 = *(v8 - 8);
  v96 = v8;
  __chkstk_darwin(v8);
  v94 = v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_14413C();
  v99 = *(v10 - 8);
  __chkstk_darwin(v10);
  v89 = v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v97 = v82 - v13;
  __chkstk_darwin(v14);
  v98 = v82 - v15;
  v16 = sub_140CAC();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_140C8C();
  __chkstk_darwin(v20);
  v21 = sub_140CBC();
  __chkstk_darwin(v21 - 8);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C47D0);
  *&v23 = __chkstk_darwin(v22 - 8).n128_u64[0];
  v25 = v82 - v24;
  v26 = [a1 metadataObject];
  if (!v26)
  {
    return;
  }

  v27 = v26;
  v100 = [v26 podcastEpisode];

  if (!v100)
  {
    return;
  }

  v28 = [v100 title];
  if (v28)
  {
    v86 = v17;
    v29 = v28;
    v87 = sub_1448DC();
    v31 = v30;

    v32 = [v100 author];
    if (v32 && (v88 = v31, v83 = v10, v33 = v32, v34 = [v32 name], v33, v34))
    {
      v82[1] = sub_1448DC();

      v35 = v100;
      v84 = sub_144C1C();
      v85 = v36;
      LODWORD(v100) = v37;
      v38 = ~v37;

      if (v38)
      {
        v39 = sub_140D0C();
        (*(*(v39 - 8) + 56))(v25, 1, 1, v39);
        swift_storeEnumTagMultiPayload();
        (*(v86 + 104))(v19, enum case for InteractionContext.Origin.none(_:), v16);
        v40 = v35;
        sub_140C9C();
        sub_1445DC();
        swift_allocObject();
        v41 = a1;

        v42 = sub_1445CC();

        v92 = v40;
        v43 = [v40 subtitleShort];
        if (v43)
        {
          v44 = v43;
          sub_1448DC();
        }

        v46 = v98;
        v45 = v99;
        v47 = v100;
        v48 = v85;
        v50 = v92;
        [v92 duration];
        [v50 isExplicitEpisode];
        v102 = &type metadata for NowPlayingContextMenuProvider;
        v103 = sub_9C254();
        v101 = v42;
        v51 = v41;

        sub_B472C(v84, v48, v47);
        sub_1440DC();
        v53 = v94;
        v52 = v95;
        v54 = v96;
        (*(v95 + 16))(v94, v93, v96);
        v55 = (*(v52 + 88))(v53, v54);
        if (v55 == enum case for QueueModelSection.hardQueue(_:))
        {
          v56 = v83;
          (*(v45 + 16))(v97, v46, v83);
          v57 = v90;
          v58 = *v90;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v57 = v58;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v58 = sub_134D74(0, v58[2] + 1, 1, v58);
            *v57 = v58;
          }

          v60 = v100;
          v62 = v58[2];
          v61 = v58[3];
          if (v62 >= v61 >> 1)
          {
            v75 = v100;
            v76 = sub_134D74(v61 > 1, v62 + 1, 1, v58);
            v60 = v75;
            *v57 = v76;
          }

          sub_B4764(v84, v85, v60);

          (*(v45 + 8))(v46, v56);
          v63 = *v57;
          *(v63 + 16) = v62 + 1;
          (*(v45 + 32))(v63 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v62, v97, v56);
        }

        else
        {
          v64 = v83;
          if (v55 == enum case for QueueModelSection.softQueue(_:))
          {
            v65 = v89;
            v66 = v46;
            (*(v45 + 16))(v89, v46, v83);
            v67 = v91;
            v68 = *v91;
            v69 = swift_isUniquelyReferenced_nonNull_native();
            *v67 = v68;
            v70 = v100;
            if ((v69 & 1) == 0)
            {
              v77 = v100;
              v78 = sub_134D74(0, v68[2] + 1, 1, v68);
              v70 = v77;
              v68 = v78;
              *v91 = v78;
            }

            v71 = v85;
            v73 = v68[2];
            v72 = v68[3];
            if (v73 >= v72 >> 1)
            {
              v79 = v85;
              v80 = v70;
              v81 = sub_134D74(v72 > 1, v73 + 1, 1, v68);
              v71 = v79;
              v70 = v80;
              *v91 = v81;
            }

            sub_B4764(v84, v71, v70);

            (*(v45 + 8))(v66, v64);
            v74 = *v91;
            *(v74 + 16) = v73 + 1;
            (*(v45 + 32))(v74 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v73, v65, v64);
          }

          else
          {

            sub_B4764(v84, v85, v100);

            (*(v45 + 8))(v46, v64);
            (*(v52 + 8))(v53, v54);
          }
        }

        return;
      }
    }

    else
    {
    }
  }

  else
  {
    v49 = v100;
  }
}

void sub_B4384(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_B43E8()
{
  v0 = sub_14142C();
  __swift_allocate_value_buffer(v0, qword_1C6070);
  __swift_project_value_buffer(v0, qword_1C6070);
  return sub_14143C();
}

uint64_t sub_B444C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C6200);
  __chkstk_darwin(v2 - 8);
  sub_1D19C(a1, &v5 - v3, &unk_1C6200);
  return sub_14127C();
}

uint64_t sub_B44F4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_B4568()
{
  v1 = sub_141D6C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_B4640(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_141D6C() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v3 + 16);
  v11 = *(v3 + v9);
  v12 = *(v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_B39D8(a1, a2, a3, v10, v3 + v8, v11, v12);
}

id sub_B472C(id result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_B4740(result, a2, a3);
  }

  return result;
}

id sub_B4740(id result, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  if (a3 == 1)
  {
    return result;
  }

  return result;
}

void sub_B4764(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_1CB78(a1, a2, a3);
  }
}

uint64_t sub_B4778(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_B47C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6238);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_B4854()
{
  result = qword_1C6288;
  if (!qword_1C6288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C6290);
    sub_B4778(&qword_1C6298, type metadata accessor for NowPlayingChapterMenuItems);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6288);
  }

  return result;
}

uint64_t sub_B497C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_B49CC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 56);
  v9 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DD10;

  return sub_B18F0(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t sub_B4ABC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    v3 = *(a2 + 8) == 2 && *a2 == 0;
    return *(a1 + 8) != 1 && v3;
  }

  else if (*(a2 + 8))
  {
    return 0;
  }

  else
  {
    return sub_141AFC();
  }
}

unint64_t sub_B4AFC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_B65A4(*a1);
  *a2 = result;
  return result;
}

char *sub_B4B28(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = &v4[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkEdgeInsets];
  *v10 = xmmword_151750;
  v10[1] = xmmword_151760;
  *&v4[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkSize] = vdupq_n_s64(0x4044000000000000uLL);
  v11 = &v4[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkTreatment];
  *v11 = 0;
  v11[8] = 1;
  v12 = &v4[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkPlaceholder];
  *v12 = 0;
  *(v12 + 1) = 0;
  v12[16] = -2;
  *&v4[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkExplicitBackgroundColor] = 0;
  v13 = &v4[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkAccessoryStyle];
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  *v13 = 0;
  v13[24] = 0;
  *&v4[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_lockupArtworkCatalog] = 0;
  v4[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_isDisabled] = 0;
  v4[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_allowsCustomBottomSeparator] = 0;
  v4[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_allowsCustomTopSeparator] = 0;
  v4[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment] = 0;
  v14 = &v4[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_trailingSeparatorAlignment];
  *v14 = 0;
  v14[8] = 2;
  v15 = &v4[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_layoutInvalidationHandler];
  *v15 = 0;
  v15[1] = 0;
  v16 = OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkComponent;
  type metadata accessor for ArtworkComponentImageView();
  v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa();
  swift_allocObject();
  v18 = sub_CFCE0(v17);

  *&v5[v16] = v18;
  v5[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_wantsCustomHandlingOfSeparatorInset] = 0;
  v19 = &v5[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_proposedHorizontalLockupSeparatorInset];
  v20 = *&UIEdgeInsetsZero.bottom;
  *v19 = *&UIEdgeInsetsZero.top;
  v19[1] = v20;
  *&v5[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkCachingContext] = 0;
  v21 = OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_textStackView;
  _s9StackViewCMa();
  *&v5[v21] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v5[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_textDrawingCache] = 0;
  *&v5[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_customTopSeparatorView] = 0;
  *&v5[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_customBottomSeparatorView] = 0;
  v5[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_rowPosition] = 1;
  v34.receiver = v5;
  v34.super_class = type metadata accessor for HorizontalLockupCollectionViewCell();
  v22 = objc_msgSendSuper2(&v34, "initWithFrame:", a1, a2, a3, a4);
  v23 = OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkComponent;
  sub_14114C();
  v24 = v22;

  v25 = sub_14109C();
  sub_CD93C(v25, 0x3FF0000000000000);

  v26 = *&v22[v23];

  *(v26 + 24) = sub_1410BC();
  *(v26 + 32) = v27;

  *(*&v22[v23] + 88) = *&v24[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkSize];

  sub_CD754();

  v28 = *&v22[v23];
  v29 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v30 = *(v28 + 184);
  *(v28 + 184) = sub_B6830;
  *(v28 + 192) = v29;
  v31 = v24;

  sub_2173C(v30);

  v32 = [v31 contentView];

  [v32 addSubview:*(*&v22[v23] + 104)];
  [v32 addSubview:*&v31[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_textStackView]];

  return v31;
}

void sub_B4EF0()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  [Strong setNeedsLayout];
  v0 = *&Strong[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_layoutInvalidationHandler];
  if (v0)
  {

    v0(Strong);

    sub_2173C(v0);
  }

  else
  {
  }
}

void sub_B4FEC()
{
  v1 = v0;
  v2 = sub_144EDC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v109 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HorizontalLockupCollectionViewCell();
  v130.receiver = v0;
  v130.super_class = v6;
  objc_msgSendSuper2(&v130, "layoutSubviews");
  [v0 bounds];
  v119 = v7;
  v118 = v8;
  v117 = v9;
  v121 = v10;
  v11 = COERCE_DOUBLE([v0 contentView]);
  [*&v11 bounds];
  v126 = v13;
  v127 = v12;
  v15 = v14;
  v17 = v16;
  v18 = COERCE_DOUBLE([v0 traitCollection]);
  sub_144DCC();
  v120 = v19;
  [v0 music_inheritedLayoutInsets];
  v21 = v20;
  v23 = v22;
  [v0 effectiveUserInterfaceLayoutDirection];
  v24 = [v0 tableViewCell];
  if (v24)
  {
    v25 = v24;
    v26 = [v24 layoutManager];

    if (v26)
    {
      if ([v1 isEditing])
      {
        y = v18;
        v27 = [v1 tableViewCell];
        if (!v27)
        {
          __break(1u);
          return;
        }

        v28 = v27;
        v29 = [v27 showingDeleteConfirmation];

        if (v29)
        {
        }

        else
        {
          v30 = [v1 tableViewCell];
          [v26 contentEndingRectForCell:v30 forNewEditingState:1];
          height = v32;
          v124 = v31;
          v34 = v33;
          v36 = v35;

          v131.size.width = height;
          v131.origin.x = v124;
          v131.origin.y = v34;
          v131.size.height = v36;
          MinX = CGRectGetMinX(v131);

          if (v23 - MinX > 8.0)
          {
            v23 = v23 - MinX;
          }

          else
          {
            v23 = 8.0;
          }
        }

        v18 = y;
      }

      else
      {
      }
    }
  }

  v128 = v17;
  v129 = v15;
  v38 = UIEdgeInsetsInsetRect_0(v127, v15, v17, v126, v21, v23);
  width = v132.size.width;
  v40 = *&v1[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkEdgeInsets];
  v41 = *&v1[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkEdgeInsets + 8];
  v116 = *&v1[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkEdgeInsets + 24];
  v124 = v132.origin.y + v40;
  y = v132.origin.y;
  v132.origin.x = v38;
  height = v132.size.height;
  CGRectGetMinX(v132);
  v122 = v41;
  sub_CDA84(0, 0, 1);
  sub_144ECC();
  sub_144EEC();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  (*(v3 + 8))(v5, v2);
  sub_144EFC();
  if (sub_CDC60(v50, v51, v52, v53))
  {
    v133.origin.x = v43;
    v133.origin.y = v45;
    v133.size.width = v47;
    v133.size.height = v49;
    v54 = v116 + v122 + CGRectGetWidth(v133);
    v55 = v38 + v54;
    v56 = width - v54;
  }

  else
  {
    v56 = width;
    v55 = v38;
  }

  v57 = *&v1[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_textStackView];
  v59 = v127;
  v58 = v128;
  v60 = v129;
  v61 = v126;
  v115 = v55;
  v62 = y;
  v116 = v56;
  v63 = height;
  sub_144EFC();
  [v57 setFrame:?];

  [v1 separatorInset];
  v122 = v64;
  v112 = v65;
  v124 = v66;
  v109 = v67;
  v111 = v38;
  v134.origin.x = v38;
  v134.origin.y = v62;
  v110 = width;
  v134.size.width = width;
  v134.size.height = v63;
  v114 = CGRectGetMinX(v134);
  v135.origin.x = v59;
  v135.origin.y = v60;
  v135.size.width = v58;
  v135.size.height = v61;
  v113 = CGRectGetMinX(v135);
  [*&v11 frame];
  v68 = v119;
  v69 = v118;
  v70 = v117;
  v71 = v121;
  sub_144F0C();
  v72 = CGRectGetMinX(v136);
  v137.origin.x = v68;
  v137.origin.y = v69;
  v137.size.width = v70;
  v137.size.height = v71;
  v73 = CGRectGetMinX(v137);
  if (v1[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment] == 1)
  {
    v138.origin.x = v115;
    v138.origin.y = y;
    v138.size.width = v116;
    v138.size.height = v63;
    v74 = CGRectGetMinX(v138);
    v139.origin.x = v59;
    v139.size.width = v128;
    v139.origin.y = v129;
    v139.size.height = v61;
    v75 = v74 - CGRectGetMinX(v139);
    [*&v11 frame];
    sub_144F0C();
    v76 = CGRectGetMinX(v140);
    v141.origin.x = v68;
    v141.origin.y = v69;
    v141.size.width = v70;
    v141.size.height = v71;
    v77 = v75 + v76 - CGRectGetMinX(v141);
  }

  else
  {
    v77 = v114 - v113 + v72 - v73;
  }

  v78 = v122;
  if (v1[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_trailingSeparatorAlignment + 8])
  {
    v79 = 0.0;
    v81 = v128;
    v80 = v129;
    if (v1[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_trailingSeparatorAlignment + 8] == 1)
    {
      v79 = *&v1[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_trailingSeparatorAlignment];
    }
  }

  else
  {
    v82 = *&v1[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_trailingSeparatorAlignment];
    v142.origin.x = v127;
    v81 = v128;
    v80 = v129;
    v142.origin.y = v129;
    v142.size.width = v128;
    v142.size.height = v126;
    MaxX = CGRectGetMaxX(v142);
    v143.origin.x = v111;
    v143.origin.y = y;
    v143.size.width = v110;
    v143.size.height = height;
    v84 = MaxX - CGRectGetMaxX(v143);
    v78 = v122;
    v79 = v84 + v82;
  }

  v85 = &v1[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_proposedHorizontalLockupSeparatorInset];
  *v85 = v78;
  v85[1] = v77;
  v85[2] = v124;
  v85[3] = v79;
  if (v1[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_allowsCustomBottomSeparator] == 1 && (v86 = OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_rowPosition, v1[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_rowPosition] != 2))
  {
    v87 = COERCE_DOUBLE([objc_opt_self() tableSeparatorLightColor]);
    v88 = v81;
    v89 = v80;
    sub_144EFC();
    v91 = v90;
    v93 = v92;
    v95 = v94;
    v96 = OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_customBottomSeparatorView;
    v97 = *&v1[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_customBottomSeparatorView];
    if (v1[v86] == 3)
    {
      [v97 removeFromSuperview];
    }

    else
    {
      if (v97)
      {
        v98 = *&v1[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_customBottomSeparatorView];
      }

      else
      {
        v98 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
        [v98 setBackgroundColor:*&v87];
        v99 = *&v1[v96];
        *&v1[v96] = v98;

        v97 = 0;
      }

      v100 = v97;
      v101 = [v98 superview];

      if (v101)
      {
      }

      else
      {
        [*&v11 addSubview:v98];
      }

      v144.size.height = v126;
      v144.origin.x = v127;
      v144.origin.y = v89;
      v144.size.width = v88;
      [v98 setFrame:{v91, CGRectGetHeight(v144) - v95, v93, v95}];
    }

    if (v1[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_allowsCustomTopSeparator] == 1 && (v1[v86] == 3 || !v1[v86]))
    {
      v102 = OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_customTopSeparatorView;
      v103 = *&v1[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_customTopSeparatorView];
      if (v103)
      {
        v104 = *&v1[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_customTopSeparatorView];
      }

      else
      {
        v104 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
        [v104 setBackgroundColor:*&v87];
        v106 = *&v1[v102];
        *&v1[v102] = v104;

        v103 = 0;
      }

      v107 = v103;
      v108 = [v104 superview];

      if (v108)
      {
      }

      else
      {
        [*&v11 addSubview:v104];
      }

      [v104 setFrame:{v91, 0.0, v93, v95}];
    }

    else
    {
      v105 = *&v1[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_customTopSeparatorView];
      [v105 removeFromSuperview];
    }

    v11 = v18;
  }

  else
  {
    [*&v1[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_customBottomSeparatorView] removeFromSuperview];
    [*&v1[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_customTopSeparatorView] removeFromSuperview];
    if (((sub_141AFC() & 1) == 0 || (sub_141AFC() & 1) == 0 || (sub_141AFC() & 1) == 0 || (sub_141AFC() & 1) == 0) && (v1[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_wantsCustomHandlingOfSeparatorInset] & 1) == 0)
    {
      [v1 setSeparatorInset:{v78, v77, v124, v79}];
    }

    v87 = v18;
  }
}

double sub_B5A74()
{
  v1 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkComponent);
  [*(v1 + 104) clearArtworkCatalogs];
  result = 7.29112205e-304;
  *(v1 + 232) = 0x1000000;
  return result;
}

uint64_t sub_B5BA8(uint64_t a1)
{
  v2 = v1;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for HorizontalLockupCollectionViewCell();
  objc_msgSendSuper2(&v7, "traitCollectionDidChange:", a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3168);
  sub_14509C();
  v4 = [v2 traitCollection];
  sub_144DCC();

  result = sub_141AFC();
  if ((result & 1) == 0)
  {
    result = [v2 setNeedsLayout];
    v6 = *&v2[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_layoutInvalidationHandler];
    if (v6)
    {

      v6(v2);
      return sub_2173C(v6);
    }
  }

  return result;
}

void sub_B5DC8()
{
  sub_990A0(*(v0 + OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkPlaceholder), *(v0 + OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkPlaceholder + 8), *(v0 + OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkPlaceholder + 16));

  sub_B65B4(*(v0 + OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkAccessoryStyle));
  sub_2173C(*(v0 + OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_layoutInvalidationHandler));

  v1 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_customBottomSeparatorView);
}

id sub_B5EB0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HorizontalLockupCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for HorizontalLockupCollectionViewCell()
{
  result = qword_1C62E0;
  if (!qword_1C62E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HorizontalLockupCollectionViewCell.RowPosition(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HorizontalLockupCollectionViewCell.RowPosition(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for HorizontalLockupCollectionViewCell.TrailingSeparatorAlignment(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HorizontalLockupCollectionViewCell.TrailingSeparatorAlignment(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_B62EC(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_B6304(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_B6340()
{
  result = qword_1C62F0;
  if (!qword_1C62F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C62F0);
  }

  return result;
}

unint64_t sub_B6398()
{
  result = qword_1C62F8;
  if (!qword_1C62F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C62F8);
  }

  return result;
}

uint64_t sub_B6434(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkCachingContext;
  swift_beginAccess();
  *(v1 + v3) = a1;

  *(*(v1 + OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkComponent) + 16) = a1;
}

void (*sub_B64B0(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkCachingContext;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_B6538;
}

void sub_B6538(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    *(*(v3[3] + OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkComponent) + 16) = *(v3[3] + v3[4]);
  }

  free(v3);
}

unint64_t sub_B65A4(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

void sub_B65B4(id a1)
{
  if (a1 >= 3)
  {
  }
}

void sub_B65C4()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkEdgeInsets);
  *v2 = xmmword_151750;
  v2[1] = xmmword_151760;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkSize) = vdupq_n_s64(0x4044000000000000uLL);
  v3 = v0 + OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkTreatment;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = v0 + OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkPlaceholder;
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = -2;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkExplicitBackgroundColor) = 0;
  v5 = v0 + OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkAccessoryStyle;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *v5 = 0;
  *(v5 + 24) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_lockupArtworkCatalog) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_isDisabled) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_allowsCustomBottomSeparator) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_allowsCustomTopSeparator) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment) = 0;
  v6 = v0 + OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_trailingSeparatorAlignment;
  *v6 = 0;
  *(v6 + 8) = 2;
  v7 = (v0 + OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_layoutInvalidationHandler);
  *v7 = 0;
  v7[1] = 0;
  v8 = OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkComponent;
  type metadata accessor for ArtworkComponentImageView();
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _s9ComponentCMa();
  swift_allocObject();
  v10 = sub_CFCE0(v9);

  *(v1 + v8) = v10;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_wantsCustomHandlingOfSeparatorInset) = 0;
  v11 = (v1 + OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_proposedHorizontalLockupSeparatorInset);
  v12 = *&UIEdgeInsetsZero.bottom;
  *v11 = *&UIEdgeInsetsZero.top;
  v11[1] = v12;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkCachingContext) = 0;
  v13 = OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_textStackView;
  _s9StackViewCMa();
  *(v1 + v13) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_textDrawingCache) = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_customTopSeparatorView) = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_customBottomSeparatorView) = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_rowPosition) = 1;
  sub_1452FC();
  __break(1u);
}

uint64_t sub_B67F8()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void Artwork.Placeholder.image(forFittingSize:imageHandler:)(void (*a1)(void), double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if ((a7 & 0x80) == 0 || (a6 | a5 || a7 != 128) && a5 == 1 && !a6 && a7 == 128)
  {
    v8 = 0;
  }

  else
  {
    sub_2B860(0, &qword_1C5350);
    v11 = [swift_getObjCClassFromMetadata() defaultStore];
    v12 = [v11 imageForKey:kMTLibraryDefaultImageKey size:{a2, a3}];

    v8 = v12;
  }

  v13 = v8;
  a1();
}

uint64_t == infix(_:_:)(uint64_t a1, char a2, uint64_t a3, unsigned __int8 a4)
{
  if (a2)
  {
    if (a1)
    {
      return a4 & (a3 != 0);
    }

    else
    {
      return a4 & (a3 == 0);
    }
  }

  else if (a4)
  {
    return 0;
  }

  else
  {
    return sub_141AFC();
  }
}

void Artwork.CornerTreatment.hash(into:)(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    if (*&a2 == 0.0)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    goto LABEL_9;
  }

  sub_14546C(0xBuLL);
  if ((~a2 & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*&a2 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (*&a2 < 9.22337204e18)
  {
    v4 = *&a2;
LABEL_9:
    sub_14546C(v4);
    return;
  }

LABEL_12:
  __break(1u);
}

Swift::Int Artwork.CornerTreatment.hashValue.getter(uint64_t a1, char a2)
{
  sub_14545C();
  Artwork.CornerTreatment.hash(into:)(v5, a1, a2 & 1);
  return sub_1454AC();
}

Swift::Int sub_B6AE0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_14545C();
  Artwork.CornerTreatment.hash(into:)(v4, v1, v2);
  return sub_1454AC();
}

Swift::Int sub_B6B3C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_14545C();
  Artwork.CornerTreatment.hash(into:)(v4, v1, v2);
  return sub_1454AC();
}

uint64_t sub_B6B88(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (*(a1 + 8) == 1)
  {
    v4 = v2 == 0;
    if (v2)
    {
      v5 = 0;
    }

    else
    {
      v5 = *(a2 + 8);
    }

    if (v4)
    {
      v3 = 0;
    }

    if (*a1)
    {
      return v3;
    }

    else
    {
      return v5;
    }
  }

  else if (v3)
  {
    return 0;
  }

  else
  {
    return sub_141AFC();
  }
}

uint64_t static Artwork.BorderTreatment.== infix(_:_:)()
{
  sub_2B860(0, &qword_1C95B0);
  if ((sub_144FFC() & 1) == 0)
  {
    return 0;
  }

  return sub_141AFC();
}

uint64_t sub_B6C60()
{
  sub_2B860(0, &qword_1C95B0);
  if ((sub_144FFC() & 1) == 0)
  {
    return 0;
  }

  return sub_141AFC();
}

uint64_t _s12NowPlayingUI7ArtworkV11PlaceholderO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a3 >> 6)
  {
    if (a3 >> 6 == 1)
    {
      if ((a6 & 0xC0) == 0x40)
      {
        v7 = (a2 | a5) == 0;
        if (a2 && a5)
        {
          if (a1 != a4 || a2 != a5)
          {

            return sub_1453BC();
          }

          return 1;
        }

        return v7;
      }

      return 0;
    }

    if (a2 | a1 || a3 != 128)
    {
      if (a1 == 1 && !a2 && a3 == 128)
      {
        if ((a6 & 0xC0) != 0x80 || a4 != 1)
        {
          return 0;
        }
      }

      else if (a1 == 2 && !a2 && a3 == 128)
      {
        if ((a6 & 0xC0) != 0x80 || a4 != 2)
        {
          return 0;
        }
      }

      else if (a1 == 3 && !a2 && a3 == 128)
      {
        if ((a6 & 0xC0) != 0x80 || a4 != 3)
        {
          return 0;
        }
      }

      else if (a1 == 4 && !a2 && a3 == 128 || (a6 & 0xC0) != 0x80 || a4 != 5)
      {
        return 0;
      }

      if (a5)
      {
        return 0;
      }
    }

    else if ((a6 & 0xC0) != 0x80 || a5 | a4)
    {
      return 0;
    }

    return a6 == 128;
  }

  if (a6 >= 0x40u)
  {
    return 0;
  }

  sub_2B860(0, &qword_1C95B0);
  v13 = sub_144FFC();
  v14 = v13 & a6;
  v15 = (a2 == a5) & ~a6;
  if ((v13 & 1) == 0)
  {
    v15 = v13 & a6;
  }

  if ((a3 & 1) == 0)
  {
    v14 = v15;
  }

  return v14 & 1;
}

BOOL _s12NowPlayingUI7ArtworkV14AccessoryStyleO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char *a5, uint64_t a6, uint64_t a7, char a8)
{
  switch(a1)
  {
    case 0:
      return !a5;
    case 1:
      return a5 == &dword_0 + 1;
    case 2:
      return a5 == &dword_0 + 2;
  }

  if (a5 < 3 || (a4 & 1) != 0 || (a8 & 1) != 0)
  {
    return 0;
  }

  v13 = [a5 isArtworkVisuallyIdenticalToCatalog:a1];
  v14 = *&a3 == *&a7;
  if (*&a2 != *&a6)
  {
    v14 = 0;
  }

  return v13 && v14;
}

unint64_t sub_B6FD4()
{
  result = qword_1C6300;
  if (!qword_1C6300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C6300);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12NowPlayingUI7ArtworkV14AccessoryStyleO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_B7074(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 25))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_B70D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_B7128(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_12NowPlayingUI7ArtworkV11PlaceholderO(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_B717C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 17))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 16) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 16) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_B71D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 16) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_B7234(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 16) = *(result + 16) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    *(result + 16) = 0x80;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Artwork.CornerTreatment(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Artwork.CornerTreatment(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_B72C0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_B72DC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_B7340(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_B7388(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_B73F8()
{
  v1 = v0;
  if (*(v0 + 24))
  {
    sub_14500C();
  }

  else
  {
    sub_14492C();
    type metadata accessor for Key(0);
    sub_957E8();
    isa = sub_1447EC().super.isa;
    v3 = [(objc_class *)isa hash];

    sub_14546C(v3);
  }

  sub_14546C(*(v1 + 40));
  sub_97D4(*(v1 + 48), *(v1 + 56));
  v4 = *(v1 + 96);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  sub_14549C(*&v4);
  v5 = *(v1 + 104);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  sub_14549C(*&v5);
  sub_14546C(*(v1 + 112));
  v6 = *(v1 + 120);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  sub_14549C(*&v6);
}

Swift::Int sub_B7504()
{
  sub_14545C();
  sub_B73F8();
  return sub_1454AC();
}

Swift::Int sub_B7548()
{
  sub_14545C();
  sub_B73F8();
  return sub_1454AC();
}

uint64_t sub_B7584(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 112);
  v4 = *(a2 + 40);
  v5 = *(a2 + 112);
  if ((sub_95694(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24)) & 1) == 0 || v2 != v4 || (sub_144F5C() & 1) == 0 || (sub_141AFC() & 1) == 0 || (sub_141AFC() & 1) == 0 || v3 != v5)
  {
    return 0;
  }

  return sub_141AFC();
}

unint64_t sub_B76AC()
{
  result = qword_1C63A0;
  if (!qword_1C63A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C63A0);
  }

  return result;
}

void *sub_B7700(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v4[3] = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  v4[4] = sub_2C2D8;
  v4[5] = v9;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;

    [v11 addTarget:v4 action:"handleActionFromControl:" forControlEvents:a2];
  }

  return v4;
}

uint64_t sub_B77D4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong removeTarget:v0 action:"handleActionFromControl:" forControlEvents:*(v0 + 24)];
  }

  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_B78DC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_B793C()
{
  if (*(v0 + 64) != 1)
  {
    return *(v0 + 48);
  }

  v1 = *(*(v0 + 16) + 16);
  v56 = *(v1 + 16);
  if (v56)
  {
    v55 = v1 + 32;

    v3 = 0;
    v4 = 0.0;
    v54 = result;
    while (v3 < *(result + 16))
    {
      v6 = *(v55 + 8 * v3);
      v7 = *(v6 + 16);
      if (v7)
      {

        v8 = 0;
        v77 = 0.0;
        v78 = 0.0;
        v9 = (v6 + 56);
        v75 = 0.0;
        v76 = 0.0;
        v71 = 0.0;
        v73 = 0.0;
        v68 = 0.0;
        v69 = 0.0;
        v10 = 1;
        v79 = v4;
        do
        {
          v11 = *(v9 - 2);
          v12 = *(v9 - 1);
          v13 = *v9;
          v9 += 32;
          v14 = swift_unknownObjectRetain();
          sub_B7DBC(v14, v11, v12, v13, &v80);
          x = v80.origin.x;
          y = v80.origin.y;
          width = v80.size.width;
          height = v80.size.height;
          v19 = v85;
          if (v10)
          {
            v20 = v80.origin.x;
          }

          else
          {
            v20 = v78;
          }

          v21 = v77;
          if (v10)
          {
            v21 = v80.origin.y;
          }

          v77 = v21;
          v78 = v20;
          if (v10)
          {
            v22 = v80.size.width;
          }

          else
          {
            v22 = v76;
          }

          v23 = v75;
          if (v10)
          {
            v23 = v80.size.height;
          }

          v75 = v23;
          v76 = v22;
          if (v10)
          {
            v24 = v81;
          }

          else
          {
            v24 = v73;
          }

          v25 = v71;
          if (v10)
          {
            v25 = v82;
          }

          v71 = v25;
          v73 = v24;
          if (v10)
          {
            v26 = v83;
          }

          else
          {
            v26 = v69;
          }

          v27 = v68;
          if (v10)
          {
            v27 = v84;
          }

          v68 = v27;
          v69 = v26;
          if (v10)
          {
            v8 = v85;
          }

          v10 = 0;
          if (v85)
          {
            v28 = v80.origin.x;
          }

          else
          {
            v28 = v81;
          }

          v60 = v81;
          v58 = v83;
          v59 = v82;
          if (v85)
          {
            v29 = v80.origin.y;
          }

          else
          {
            v29 = v82;
          }

          rect_8 = v29;
          if (v85)
          {
            v30 = v80.size.width;
          }

          else
          {
            v30 = v83;
          }

          v57 = v84;
          if (v85)
          {
            v31 = v80.size.height;
          }

          else
          {
            v31 = v84;
          }

          rect_24 = CGRectGetMinX(v80);
          v86.origin.x = x;
          v86.origin.y = y;
          v86.size.width = width;
          v86.size.height = height;
          rect_16 = CGRectGetMinY(v86);
          v87.origin.x = x;
          v87.origin.y = y;
          v87.size.width = width;
          v87.size.height = height;
          v32 = CGRectGetWidth(v87);
          v88.origin.x = v28;
          v88.origin.y = rect_8;
          v88.size.width = v30;
          v88.size.height = v31;
          v33 = CGRectGetWidth(v88);
          if (v32 <= v33)
          {
            v32 = v33;
          }

          v89.origin.x = v28;
          v89.origin.y = rect_8;
          v89.size.width = v30;
          v89.size.height = v31;
          v34 = x;
          MaxY = CGRectGetMaxY(v89);
          v90.origin.x = v34;
          v90.origin.y = y;
          v90.size.width = width;
          v90.size.height = height;
          v91.size.height = MaxY - CGRectGetMinY(v90);
          v91.origin.y = rect_16;
          v91.origin.x = rect_24;
          v91.size.width = v32;
          v36 = CGRectGetMaxY(v91);
          swift_unknownObjectRelease();
          v37 = v79;
          if (v79 <= v36)
          {
            v37 = v36;
          }

          v79 = v37;
          --v7;
        }

        while (v7);

        if (v19)
        {
          v38 = v34;
        }

        else
        {
          v38 = v60;
        }

        if (v19)
        {
          v39 = y;
        }

        else
        {
          v39 = v59;
        }

        v40 = v57;
        if (v19)
        {
          v41 = width;
        }

        else
        {
          v41 = v58;
        }

        if (v19)
        {
          v40 = height;
        }

        rect_8a = v40;
        v92.origin.x = v34;
        v92.origin.y = y;
        v92.size.width = width;
        v92.size.height = height;
        rect_24a = CGRectGetMinX(v92);
        v93.origin.x = v34;
        v93.origin.y = y;
        v93.size.width = width;
        v93.size.height = height;
        rect_16a = CGRectGetMinY(v93);
        v94.origin.x = v34;
        v94.origin.y = y;
        v94.size.width = width;
        v94.size.height = height;
        v42 = CGRectGetWidth(v94);
        v95.origin.x = v38;
        v95.origin.y = v39;
        v95.size.width = v41;
        v95.size.height = rect_8a;
        v43 = CGRectGetWidth(v95);
        if (v42 <= v43)
        {
          v42 = v43;
        }

        v96.origin.x = v38;
        v96.origin.y = v39;
        v96.size.width = v41;
        v96.size.height = rect_8a;
        v44 = CGRectGetMaxY(v96);
        v97.origin.x = v34;
        v97.origin.y = y;
        v97.size.width = width;
        v97.size.height = height;
        v98.size.height = v44 - CGRectGetMinY(v97);
        v98.origin.y = rect_16a;
        v98.origin.x = rect_24a;
        v98.size.width = v42;
        rect_24b = CGRectGetMaxX(v98);
        if (v8)
        {
          v45 = v78;
        }

        else
        {
          v45 = v73;
        }

        if (v8)
        {
          v46 = v77;
        }

        else
        {
          v46 = v71;
        }

        v47 = v68;
        if (v8)
        {
          v48 = v76;
        }

        else
        {
          v48 = v69;
        }

        if (v8)
        {
          v47 = v75;
        }

        v70 = v47;
        v99.origin.x = v78;
        v99.origin.y = v77;
        v99.size.width = v76;
        v99.size.height = v75;
        MinX = CGRectGetMinX(v99);
        v100.origin.x = v78;
        v100.origin.y = v77;
        v100.size.width = v76;
        v100.size.height = v75;
        MinY = CGRectGetMinY(v100);
        v101.origin.x = v78;
        v101.origin.y = v77;
        v101.size.width = v76;
        v101.size.height = v75;
        v49 = CGRectGetWidth(v101);
        v102.origin.x = v45;
        v102.origin.y = v46;
        v102.size.width = v48;
        v102.size.height = v70;
        v50 = CGRectGetWidth(v102);
        if (v49 <= v50)
        {
          v49 = v50;
        }

        v103.origin.x = v45;
        v103.origin.y = v46;
        v103.size.width = v48;
        v103.size.height = v70;
        v51 = CGRectGetMaxY(v103);
        v104.origin.x = v78;
        v104.origin.y = v77;
        v104.size.width = v76;
        v104.size.height = v75;
        v105.size.height = v51 - CGRectGetMinY(v104);
        v105.origin.y = MinY;
        v105.origin.x = MinX;
        v105.size.width = v49;
        v5 = rect_24b - CGRectGetMinX(v105);
        result = v54;
        v4 = v79;
      }

      else
      {
        v5 = 0.0;
      }

      if (++v3 == v56)
      {
        v52 = *&v5;

        result = v52;
        v53 = v4;
        goto LABEL_78;
      }
    }

    __break(1u);
  }

  else
  {
    v53 = 0.0;
    result = 0;
LABEL_78:
    *(v0 + 48) = result;
    *(v0 + 56) = v53;
    *(v0 + 64) = 0;
  }

  return result;
}

void sub_B7DBC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v6 = v5;
  swift_beginAccess();
  v10 = *(v5 + 72);
  if (*(v10 + 16))
  {

    v11 = sub_F7DD8(a1, a2, a3, a4 & 1);
    if (v12)
    {
      v13 = *(v10 + 56) + 72 * v11;
      MaxX = *v13;
      v15 = *(v13 + 8);
      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      v104 = *(v13 + 32);
      v109 = *(v13 + 48);
      v18 = *(v13 + 64);

      v19 = v109;
      goto LABEL_68;
    }
  }

  v20 = *(*(v6 + 16) + 16);
  v21 = *(v20 + 16);
  if (!v21)
  {
    v16 = 0;
    v17 = 0;
    v15 = 0.0;
    MaxX = 0.0;
LABEL_67:
    v18 = 1;
    *v123 = MaxX;
    *&v123[1] = v15;
    v123[2] = v17;
    v123[3] = v16;
    v124 = 0u;
    v125 = 0u;
    v104 = 0u;
    v126 = 1;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v110 = *(v6 + 72);
    *(v6 + 72) = 0x8000000000000000;
    sub_138590(v123, a1, a2, a3, a4 & 1, isUniquelyReferenced_nonNull_native);
    *(v6 + 72) = v110;
    swift_endAccess();
    swift_unknownObjectRelease();
    v19 = 0uLL;
LABEL_68:
    *a5 = MaxX;
    *(a5 + 8) = v15;
    *(a5 + 16) = v17;
    *(a5 + 24) = v16;
    *(a5 + 32) = v104;
    *(a5 + 48) = v19;
    *(a5 + 64) = v18;
    return;
  }

  v82 = a3;
  v83 = a5;
  v22 = a3;
  v23 = v20 + 32;
  v87 = a2;

  v95 = 0;
  v102 = 0;
  v91 = 0;
  v92 = v6;
  v90 = 0;
  v24 = 0;
  v25 = 0;
  v16 = 0;
  v17 = 0;
  v15 = 0.0;
  MaxX = 0.0;
  v88 = v20;
  v89 = v21;
  v93 = v20 + 32;
  v84 = v22;
  do
  {
    v26 = *(v23 + 8 * v25);
    v27 = *(v26 + 16);
    if (!v27)
    {

      goto LABEL_31;
    }

    v28 = v21;
    v29 = v20;
    v94 = v25;
    ObjectType = swift_getObjectType();
    v30 = *(v26 + 32);
    v31 = *(v26 + 40);
    v32 = *(v26 + 48);
    v33 = *(v26 + 56);

    if (v30 == a1)
    {
      if ((a4 & 1) == 0)
      {

        swift_unknownObjectRetain();
        if (v33 & 1) == 0 && (sub_141AFC())
        {
          v20 = v29;
          v21 = v28;
          v23 = v93;
LABEL_37:

          goto LABEL_40;
        }

        goto LABEL_10;
      }

      if (v33)
      {
        v20 = v29;
        v21 = v28;
        goto LABEL_39;
      }
    }

    swift_unknownObjectRetain();
LABEL_10:
    swift_unknownObjectRelease();

    if (v27 == 1)
    {
      v95 = v30;
      v102 = v31;
      v20 = v29;
      v34 = v32;
      v21 = v28;
      v23 = v93;
LABEL_29:

      v91 = v34;
      v90 = v33;
      v6 = v92;
      goto LABEL_30;
    }

    if (*(v26 + 16) < 2uLL)
    {
LABEL_69:
      __break(1u);
      break;
    }

    v35 = v32;
    v36 = (v26 + 88);
    v105 = 2 - v27;
    v37 = 1;
    v38 = v31;
    v39 = v30;
    while (1)
    {
      v40 = *(v36 - 3);
      v41 = *(v36 - 2);
      v34 = *(v36 - 1);
      v42 = *v36;
      if (v40 != a1)
      {
        goto LABEL_18;
      }

      v43 = *(v36 - 3);
      if (a4)
      {
        break;
      }

      v44 = v35;
      v102 = v38;

      swift_unknownObjectRetain();
      if (v42 & 1) == 0 && (sub_141AFC())
      {
        v24 = v26;
        v90 = v33;
        v91 = v44;
        v95 = v39;
        v20 = v88;
        v21 = v89;
        v23 = v93;
        goto LABEL_37;
      }

LABEL_19:

      swift_unknownObjectRelease();
      if (v105 + v37 == 1)
      {
        v95 = v43;
        v102 = v41;
        v33 = v42;
        v20 = v88;
        v21 = v89;
        v23 = v93;
        goto LABEL_29;
      }

      ++v37;
      v36 += 32;
      v33 = v42;
      v35 = v34;
      v38 = v41;
      v39 = v43;
      if (v37 >= *(v26 + 16))
      {
        goto LABEL_69;
      }
    }

    if ((*v36 & 1) == 0)
    {
LABEL_18:

      v43 = v40;
      swift_unknownObjectRetain();
      goto LABEL_19;
    }

    v102 = v38;
    v24 = v26;
    v90 = v33;
    v91 = v35;
    v95 = v39;
    v20 = v88;
    v21 = v89;
LABEL_39:
    v23 = v93;
    swift_unknownObjectRetain();
LABEL_40:
    v6 = v92;
    v45 = (*(v87 + 8))(ObjectType);
    v46 = [v45 collectionViewLayout];
    v47 = v46;
    if ((*(v92 + 65) & 1) == 0)
    {
      [v46 prepareLayout];
    }

    [v47 collectionViewContentSize];
    v16 = v48;
    v17 = v22;
    if (a4)
    {
      v17 = *(v92 + 24);
    }

    if (!v24)
    {
      swift_unknownObjectRelease();

      v15 = 0.0;
      MaxX = 0.0;
LABEL_30:
      v25 = v94;
      goto LABEL_31;
    }

    if ((sub_9FF8(v24, v26) & 1) != 0 && v95)
    {
      v85 = v17;
      v86 = v16;
      swift_unknownObjectRetain();

      sub_B7DBC(&v111, v95, v102, v91, v90 & 1);
      x = v111.origin.x;
      y = v111.origin.y;
      width = v111.size.width;
      height = v111.size.height;
      v53 = v111.origin.x;
      v54 = v111.origin.y;
      v55 = v111.size.width;
      v56 = v111.size.height;
      if ((v116 & 1) == 0)
      {
        v55 = v114;
        v56 = v115;
        v53 = v112;
        v54 = v113;
      }

      v97 = v55;
      MinX = CGRectGetMinX(v111);
      v127.origin.x = x;
      v127.origin.y = y;
      v127.size.width = width;
      v127.size.height = height;
      MinY = CGRectGetMinY(v127);
      v128.origin.x = x;
      v128.origin.y = y;
      v128.size.width = width;
      v128.size.height = height;
      v57 = CGRectGetWidth(v128);
      v129.origin.x = v53;
      v129.origin.y = v54;
      v129.size.width = v97;
      v129.size.height = v56;
      v58 = CGRectGetWidth(v129);
      if (v57 <= v58)
      {
        v57 = v58;
      }

      v130.origin.x = v53;
      v130.origin.y = v54;
      v130.size.width = v97;
      v130.size.height = v56;
      MaxY = CGRectGetMaxY(v130);
      v131.origin.x = x;
      v131.origin.y = y;
      v131.size.width = width;
      v131.size.height = height;
      v60 = MaxY - CGRectGetMinY(v131);
      v132.origin.x = MinX;
      v132.origin.y = MinY;
      v132.size.width = v57;
      v132.size.height = v60;
      MaxX = CGRectGetMaxX(v132);
      v133.origin.x = MinX;
      v133.origin.y = MinY;
      v133.size.width = v57;
      v133.size.height = v60;
      v15 = CGRectGetMinY(v133);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      goto LABEL_63;
    }

    v61 = *(v24 + 16);
    if (!v61)
    {

      swift_unknownObjectRelease();

      v15 = 0.0;
      MaxX = 0.0;
      v23 = v93;
      goto LABEL_30;
    }

    v62 = v45;
    v81 = v47;
    v85 = v17;
    v86 = v16;
    v63 = (v24 + 56);
    v15 = 0.0;
    do
    {
      v107 = v15;
      v68 = *(v63 - 2);
      v69 = *(v63 - 1);
      v70 = *v63;
      v71 = swift_unknownObjectRetain();
      sub_B7DBC(&v117, v71, v68, v69, v70);
      v73 = v117.origin.x;
      v72 = v117.origin.y;
      v74 = v117.size.width;
      v75 = v117.size.height;
      v76 = v117.origin.x;
      v77 = v117.origin.y;
      v78 = v117.size.width;
      v79 = v117.size.height;
      if ((v122 & 1) == 0)
      {
        v78 = v120;
        v79 = v121;
        v76 = v118;
        v77 = v119;
      }

      rect = v117.origin.x;
      v101 = CGRectGetMinX(v117);
      v134.origin.x = v73;
      v134.origin.y = v72;
      v134.size.width = v74;
      v134.size.height = v75;
      v98 = CGRectGetMinY(v134);
      v135.origin.x = v73;
      v135.origin.y = v72;
      v135.size.width = v74;
      v135.size.height = v75;
      v64 = CGRectGetWidth(v135);
      v136.origin.x = v76;
      v136.origin.y = v77;
      v136.size.width = v78;
      v136.size.height = v79;
      v65 = CGRectGetWidth(v136);
      if (v64 <= v65)
      {
        v64 = v65;
      }

      v137.origin.x = v76;
      v137.origin.y = v77;
      v137.size.width = v78;
      v137.size.height = v79;
      v66 = CGRectGetMaxY(v137);
      v138.origin.x = rect;
      v138.origin.y = v72;
      v138.size.width = v74;
      v138.size.height = v75;
      v139.size.height = v66 - CGRectGetMinY(v138);
      v139.origin.y = v98;
      v139.origin.x = v101;
      v139.size.width = v64;
      v67 = CGRectGetMaxY(v139);
      swift_unknownObjectRelease();
      v15 = v107;
      if (v107 <= v67)
      {
        v15 = v67;
      }

      v63 += 32;
      --v61;
    }

    while (v61);

    swift_unknownObjectRelease();

    MaxX = 0.0;
    v21 = v89;
    v23 = v93;
LABEL_63:
    v22 = v84;
    v17 = v85;
    v25 = v94;
    v16 = v86;
LABEL_31:
    if (++v25 == v21)
    {

      a3 = v82;
      a5 = v83;
      a2 = v87;
      goto LABEL_67;
    }

    v24 = v26;
  }

  while (v25 < *(v20 + 16));
  __break(1u);
}