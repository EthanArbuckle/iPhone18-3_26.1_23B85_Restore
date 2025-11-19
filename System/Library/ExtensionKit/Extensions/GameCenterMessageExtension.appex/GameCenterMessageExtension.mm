__n128 sub_100001D10(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100001D34(uint64_t a1, int a2)
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

uint64_t sub_100001D54(uint64_t result, int a2, int a3)
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

uint64_t sub_100001DA4@<X0>(uint64_t a1@<X8>)
{
  v2 = GKGameCenterUIFrameworkBundle();
  v22._countAndFlagsBits = 0xE000000000000000;
  v23._object = 0x8000000100043350;
  v23._countAndFlagsBits = 0xD000000000000027;
  v24.value._countAndFlagsBits = 0;
  v24.value._object = 0;
  v3.super.isa = v2;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  sub_100041180(v23, v24, v3, v25, v22);

  sub_1000024FC();
  v4 = sub_100041860();
  v6 = v5;
  v8 = v7;
  sub_100041790();
  v9 = sub_100041840();
  v11 = v10;
  v13 = v12;

  sub_100002550(v4, v6, v8 & 1);

  sub_100041720();
  v14 = sub_100041830();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_100002550(v9, v11, v13 & 1);

  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v18 & 1;
  *(a1 + 24) = v20;
  *(a1 + 32) = 256;
  return result;
}

_DWORD *sub_100001F54@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

void *sub_100001F7C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100001F94(uint64_t a1, id *a2)
{
  result = sub_100041B00();
  *a2 = 0;
  return result;
}

uint64_t sub_10000200C(uint64_t a1, id *a2)
{
  v3 = sub_100041B10();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10000208C@<X0>(void *a1@<X8>)
{
  sub_100041B20();
  v2 = sub_100041AF0();

  *a1 = v2;
  return result;
}

uint64_t sub_1000020D0()
{
  v1 = *v0;
  sub_100041B20();
  v2 = sub_100041BE0();

  return v2;
}

uint64_t sub_10000210C()
{
  v1 = *v0;
  sub_100041B20();
  sub_100041B70();
}

Swift::Int sub_100002160()
{
  v1 = *v0;
  sub_100041B20();
  sub_100042000();
  sub_100041B70();
  v2 = sub_100042020();

  return v2;
}

uint64_t sub_1000021E8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_100041B20();
  v6 = v5;
  if (v4 == sub_100041B20() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100041FC0();
  }

  return v9 & 1;
}

void sub_100002298(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1000022E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_100041AF0();

  *a2 = v5;
  return result;
}

uint64_t sub_10000232C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_100041B20();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100002358(uint64_t a1)
{
  v2 = sub_100002458(&qword_10005C570);
  v3 = sub_100002458(&qword_10005C578);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100002458(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000024FC()
{
  result = qword_10005C580;
  if (!qword_10005C580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C580);
  }

  return result;
}

uint64_t sub_100002550(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_100002564()
{
  result = qword_10005C588;
  if (!qword_10005C588)
  {
    sub_1000025E8(&unk_10005C590, &unk_100045930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C588);
  }

  return result;
}

uint64_t sub_1000025E8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FriendInviteActionStatusText(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FriendInviteActionStatusText(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1000027C8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = sub_100041310();
  v75 = *(v3 - 8);
  v4 = *(v75 + 64);
  __chkstk_darwin();
  v6 = &v66[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_100002D08(&qword_10005C720, &qword_1000459F0);
  v8 = *(v7 - 8);
  v73 = v7 - 8;
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v66[-v10];
  v12 = GKGameCenterUIFrameworkBundle();
  v13 = "ARD_FRIEND_CODE_EXPIRED";
  if (a1)
  {
    v13 = "ELL_IGNORED_ACTION";
    v14._countAndFlagsBits = 0xD00000000000001ELL;
  }

  else
  {
    v14._countAndFlagsBits = 0xD000000000000022;
  }

  v65._countAndFlagsBits = 0xE000000000000000;
  v14._object = (v13 | 0x8000000000000000);
  v87.value._countAndFlagsBits = 0;
  v87.value._object = 0;
  v15.super.isa = v12;
  v88._countAndFlagsBits = 0;
  v88._object = 0xE000000000000000;
  v16 = sub_100041180(v14, v87, v15, v88, v65);
  v18 = v17;

  *&v80 = v16;
  *(&v80 + 1) = v18;
  sub_1000024FC();
  v19 = sub_100041860();
  v21 = v20;
  v23 = v22;
  sub_100041790();
  sub_1000417B0();

  v24 = sub_100041840();
  v71 = v25;
  v72 = v24;
  v68 = v26;
  v70 = v27;

  sub_100002550(v19, v21, v23 & 1);

  v69 = sub_100041780();
  v28 = enum case for GKFeatureFlags.NewFriendInviteMessageCard(_:);
  v29 = v75;
  v30 = *(v75 + 104);
  v30(v6, enum case for GKFeatureFlags.NewFriendInviteMessageCard(_:), v3);
  sub_100041300();
  v31 = *(v29 + 8);
  v75 = v29 + 8;
  v31(v6, v3);
  sub_1000414B0();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v67 = v68 & 1;
  v77 = v68 & 1;
  v76 = 0;
  v68 = sub_100041740();
  v30(v6, v28, v3);
  sub_100041300();
  v31(v6, v3);
  sub_1000414B0();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v78 = 0;
  v30(v6, v28, v3);
  sub_100041300();
  v31(v6, v3);
  sub_1000419D0();
  sub_100041550();
  *&v79[55] = v83;
  *&v79[71] = v84;
  *&v79[87] = v85;
  *&v79[103] = v86;
  *&v79[7] = v80;
  *&v79[23] = v81;
  *&v79[39] = v82;
  v48 = sub_100041750();
  v49 = sub_100041700();
  v50 = &v11[*(v73 + 44)];
  v51 = *(sub_100041540() + 20);
  v52 = enum case for RoundedCornerStyle.continuous(_:);
  v53 = sub_100041640();
  (*(*(v53 - 8) + 104))(&v50[v51], v52, v53);
  __asm { FMOV            V0.2D, #9.0 }

  *v50 = _Q0;
  *&v50[*(sub_100002D08(&qword_10005C728, &qword_1000459F8) + 36)] = 256;
  v59 = v71;
  *v11 = v72;
  *(v11 + 1) = v59;
  v11[16] = v67;
  *(v11 + 3) = v70;
  LOBYTE(v59) = v68;
  v11[32] = v69;
  *(v11 + 5) = v33;
  *(v11 + 6) = v35;
  *(v11 + 7) = v37;
  *(v11 + 8) = v39;
  v11[72] = 0;
  v11[80] = v59;
  *(v11 + 11) = v41;
  *(v11 + 12) = v43;
  *(v11 + 13) = v45;
  *(v11 + 14) = v47;
  v11[120] = 0;
  v60 = *&v79[80];
  *(v11 + 185) = *&v79[64];
  *(v11 + 201) = v60;
  *(v11 + 217) = *&v79[96];
  *(v11 + 29) = *&v79[111];
  v61 = *&v79[16];
  *(v11 + 121) = *v79;
  *(v11 + 137) = v61;
  v62 = *&v79[48];
  *(v11 + 153) = *&v79[32];
  *(v11 + 169) = v62;
  v11[240] = v48;
  *(v11 + 61) = v49;
  v63 = v74;
  sub_100002D50(v11, v74);
  result = sub_100002D08(&qword_10005C730, &qword_100045A00);
  *(v63 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_100002D08(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002D50(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D08(&qword_10005C720, &qword_1000459F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100002DC4()
{
  result = qword_10005C738;
  if (!qword_10005C738)
  {
    sub_1000025E8(&qword_10005C730, &qword_100045A00);
    sub_100002E50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C738);
  }

  return result;
}

unint64_t sub_100002E50()
{
  result = qword_10005C740;
  if (!qword_10005C740)
  {
    sub_1000025E8(&qword_10005C720, &qword_1000459F0);
    sub_100002F08();
    sub_100003214(&qword_10005C7B8, &qword_10005C728, &qword_1000459F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C740);
  }

  return result;
}

unint64_t sub_100002F08()
{
  result = qword_10005C748;
  if (!qword_10005C748)
  {
    sub_1000025E8(&qword_10005C750, &qword_100045A08);
    sub_100002FC0();
    sub_100003214(&qword_10005C7A8, &qword_10005C7B0, qword_100045A38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C748);
  }

  return result;
}

unint64_t sub_100002FC0()
{
  result = qword_10005C758;
  if (!qword_10005C758)
  {
    sub_1000025E8(&qword_10005C760, &qword_100045A10);
    sub_100003078();
    sub_100003214(&qword_10005C798, &qword_10005C7A0, &qword_100045A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C758);
  }

  return result;
}

unint64_t sub_100003078()
{
  result = qword_10005C768;
  if (!qword_10005C768)
  {
    sub_1000025E8(&qword_10005C770, &qword_100045A18);
    sub_100003104();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C768);
  }

  return result;
}

unint64_t sub_100003104()
{
  result = qword_10005C778;
  if (!qword_10005C778)
  {
    sub_1000025E8(&qword_10005C780, &qword_100045A20);
    sub_100003190();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C778);
  }

  return result;
}

unint64_t sub_100003190()
{
  result = qword_10005C788;
  if (!qword_10005C788)
  {
    sub_1000025E8(&qword_10005C790, &qword_100045A28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C788);
  }

  return result;
}

uint64_t sub_100003214(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000025E8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10000325C(void *a1, uint64_t a2, char *a3)
{
  v4 = *&a3[OBJC_IVAR____TtC26GameCenterMessageExtension28MessageActionsViewController_localPlayer];
  *&a3[OBJC_IVAR____TtC26GameCenterMessageExtension28MessageActionsViewController_localPlayer] = a1;
  v5 = a1;

  v6 = [a3 collectionView];
  [v6 reloadData];
}

uint64_t sub_1000033BC(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void))
{
  v8 = sub_100041AF0();
  a4(0);
  sub_100002D08(&qword_10005C7F8, "Z1");
  sub_100041B40();
  v9 = sub_100041AF0();

  isa = sub_1000412C0().super.isa;
  v11 = [v4 dequeueReusableSupplementaryViewOfKind:v8 withReuseIdentifier:v9 forIndexPath:isa];

  result = swift_dynamicCastClass();
  if (!result)
  {

    sub_100041EB0(68);
    v13._countAndFlagsBits = 0xD00000000000002ELL;
    v13._object = 0x8000000100043550;
    sub_100041B80(v13);
    v14._countAndFlagsBits = a1;
    v14._object = a2;
    sub_100041B80(v14);
    v15._object = 0x8000000100043580;
    v15._countAndFlagsBits = 0xD000000000000012;
    sub_100041B80(v15);
    v16._countAndFlagsBits = sub_100041B40();
    sub_100041B80(v16);

    result = sub_100041F40();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000036C4()
{
  type metadata accessor for SenderCell();
  sub_100002D08(&qword_10005C7F8, "Z1");
  sub_100041B40();
  v1 = sub_100041AF0();

  isa = sub_1000412C0().super.isa;
  v3 = [v0 dequeueReusableCellWithReuseIdentifier:v1 forIndexPath:isa];

  result = swift_dynamicCastClass();
  if (!result)
  {

    sub_100041EB0(42);

    v5._countAndFlagsBits = sub_100041B40();
    sub_100041B80(v5);

    result = sub_100041F40();
    __break(1u);
  }

  return result;
}

uint64_t sub_10000393C()
{
  v0 = sub_1000412F0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000412D0();
  (*(v1 + 8))(v4, v0);
  return 1;
}

id sub_100003CE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MessageActionsViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100003D8C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (sub_100041B20() == a2 && v7 == a3)
  {
    goto LABEL_12;
  }

  v9 = sub_100041FC0();

  if (v9)
  {
    return sub_1000033BC(a2, a3, a4, type metadata accessor for HeaderView);
  }

  if (sub_100041B20() == a2 && v10 == a3)
  {
  }

  else
  {
    v12 = sub_100041FC0();

    if ((v12 & 1) == 0)
    {
      sub_100041EB0(22);

      v19[0] = 0xD000000000000014;
      v19[1] = 0x8000000100043530;
      a4 = v19;
      v20._countAndFlagsBits = a2;
      v20._object = a3;
      sub_100041B80(v20);
      sub_100041F40();
      __break(1u);
LABEL_12:

      return sub_1000033BC(a2, a3, a4, type metadata accessor for HeaderView);
    }
  }

  v14 = sub_1000033BC(a2, a3, a4, type metadata accessor for LoadingStatusView);
  v15 = byte_10005C528;
  v16 = v14;
  if (v15 == 2)
  {
    v17 = v16;
    [v16 setAlpha:0.0];
    [v17 setHidden:1];

    Strong = swift_unknownObjectWeakLoadStrong();
    [Strong stopAnimating];
  }

  else
  {
    v17 = v16;
    [v16 setAlpha:1.0];
    [v17 setHidden:0];

    Strong = swift_unknownObjectWeakLoadStrong();
    [Strong startAnimating];
  }

  return v17;
}

id sub_100003FE8()
{
  v0 = sub_1000036C4();
  [v0 setClipsToBounds:1];
  v1 = [v0 layer];

  [v1 setCornerRadius:15.0];
  v2 = [objc_opt_self() local];
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  v5 = v2;
  v6 = [v5 displayNameWithOptions:0];
  [v4 setText:v6];

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v7 = result;
  result = [objc_opt_self() sharedTheme];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = result;
  v9 = [result eventIconImage];

  [v7 setImage:v9];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    [result setPlayer:v5];

    return v0;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1000041BC()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100004AC8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0x7265646E6573;
    v5 = 0xD000000000000019;
    if (a1 != 2)
    {
      v5 = 0x6465766965636572;
    }

    if (a1)
    {
      v4 = 0xD000000000000014;
    }

    if (a1 <= 1u)
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
    v1 = 0x726F727265;
    if (a1 != 7)
    {
      v1 = 0xD000000000000018;
    }

    if (a1 == 6)
    {
      v1 = 0xD000000000000010;
    }

    v2 = 0xD00000000000001FLL;
    if (a1 != 4)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

unint64_t sub_100004BFC(unsigned __int8 a1)
{
  sub_100041EB0(20);

  if (a1 <= 3u)
  {
    v9 = 0xE600000000000000;
    v10 = 0x7265646E6573;
    v11 = 0x80000001000432A0;
    v12 = 0xD000000000000019;
    if (a1 != 2)
    {
      v12 = 0x6465766965636572;
      v11 = 0xEE00657469766E49;
    }

    if (a1)
    {
      v10 = 0xD000000000000014;
      v9 = 0x8000000100043280;
    }

    if (a1 <= 1u)
    {
      v7._countAndFlagsBits = v10;
    }

    else
    {
      v7._countAndFlagsBits = v12;
    }

    if (a1 <= 1u)
    {
      v8 = v9;
    }

    else
    {
      v8 = v11;
    }
  }

  else
  {
    v2 = 0x8000000100043310;
    v3 = 0xE500000000000000;
    v4 = 0x726F727265;
    if (a1 != 7)
    {
      v4 = 0xD000000000000018;
      v3 = 0x8000000100043330;
    }

    if (a1 == 6)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v2 = v3;
    }

    v5 = 0x80000001000432D0;
    v6 = 0xD00000000000001FLL;
    if (a1 != 4)
    {
      v6 = 0xD000000000000010;
      v5 = 0x80000001000432F0;
    }

    if (a1 <= 5u)
    {
      v7._countAndFlagsBits = v6;
    }

    else
    {
      v7._countAndFlagsBits = v4;
    }

    if (a1 <= 5u)
    {
      v8 = v5;
    }

    else
    {
      v8 = v2;
    }
  }

  v7._object = v8;
  sub_100041B80(v7);

  return 0xD000000000000012;
}

uint64_t sub_100004DA0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000010;
  v3 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE600000000000000;
    v12 = 0x80000001000432A0;
    v13 = 0xD000000000000019;
    if (a1 != 2)
    {
      v13 = 0x6465766965636572;
      v12 = 0xEE00657469766E49;
    }

    v14 = 0xD000000000000014;
    if (a1)
    {
      v11 = 0x8000000100043280;
    }

    else
    {
      v14 = 0x7265646E6573;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }

    if (v3 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v4 = 0x8000000100043310;
    v5 = 0xE500000000000000;
    v6 = 0x726F727265;
    if (a1 != 7)
    {
      v6 = 0xD000000000000018;
      v5 = 0x8000000100043330;
    }

    if (a1 == 6)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v4 = v5;
    }

    v7 = 0x80000001000432D0;
    v8 = 0xD00000000000001FLL;
    if (a1 != 4)
    {
      v8 = 0xD000000000000010;
      v7 = 0x80000001000432F0;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    if (v3 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 > 3u)
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v15 = 0x80000001000432D0;
        v2 = 0xD00000000000001FLL;
        goto LABEL_44;
      }

      v16 = "receiverAccepted";
    }

    else
    {
      if (a2 != 6)
      {
        if (a2 == 7)
        {
          v15 = 0xE500000000000000;
          v2 = 0x726F727265;
        }

        else
        {
          v15 = 0x8000000100043330;
          v2 = 0xD000000000000018;
        }

        goto LABEL_44;
      }

      v16 = "receiverRejected";
    }

    v15 = (v16 - 32) | 0x8000000000000000;
    goto LABEL_44;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v15 = 0x80000001000432A0;
      v2 = 0xD000000000000019;
    }

    else
    {
      v2 = 0x6465766965636572;
      v15 = 0xEE00657469766E49;
    }
  }

  else if (a2)
  {
    v15 = 0x8000000100043280;
    v2 = 0xD000000000000014;
  }

  else
  {
    v15 = 0xE600000000000000;
    v2 = 0x7265646E6573;
  }

LABEL_44:
  if (v9 == v2 && v10 == v15)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_100041FC0();
  }

  return v17 & 1;
}

Swift::Int sub_100005020()
{
  v1 = *v0;
  sub_100042000();
  sub_100005070();
  return sub_100042020();
}

uint64_t sub_100005070()
{
  sub_100041B70();
}

Swift::Int sub_1000051D8()
{
  v1 = *v0;
  sub_100042000();
  sub_100005070();
  return sub_100042020();
}

uint64_t sub_10000521C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10000E67C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_10000524C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100004AC8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int sub_1000052B4()
{
  v1 = *v0;
  sub_100042000();
  sub_100042010(v1);
  return sub_100042020();
}

Swift::Int sub_100005328()
{
  v1 = *v0;
  sub_100042000();
  sub_100042010(v1);
  return sub_100042020();
}

id sub_10000536C()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for FriendRequestCardViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1000056A8()
{
  v1 = sub_100041410();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v88 = &v88 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v88 - v10;
  v12 = __chkstk_darwin(v9);
  v91 = &v88 - v13;
  __chkstk_darwin(v12);
  v15 = &v88 - v14;
  sub_1000413E0();
  v16 = v0;
  v17 = sub_100041400();
  v18 = sub_100041CC0();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = v6;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v16;
    *v21 = v16;
    v22 = v16;
    _os_log_impl(&_mh_execute_header, v17, v18, "%@ updatePlayerUI", v20, 0xCu);
    sub_10000E9F0(v21, &unk_10005CA00, &unk_100045CF0);

    v6 = v19;
  }

  v92 = *(v2 + 8);
  v92(v15, v1);
  v23 = [objc_opt_self() local];
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
    goto LABEL_42;
  }

  v25 = result;
  result = [objc_opt_self() sharedTheme];
  if (!result)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v26 = result;
  v27 = [result eventIconImage];

  [v25 setImage:v27];
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v28 = result;
  [result setHidden:1];

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v29 = result;
  [result setHidden:1];

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v30 = result;
  [result setHidden:1];

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v31 = result;
  [result setHidden:1];

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v32 = result;
  v90 = v1;
  [result setHidden:1];

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v33 = result;
  [result setTextAlignment:4];

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v34 = result;
  [result setTextAlignment:4];

  v35 = [v16 traitCollection];
  v36 = [v35 preferredContentSizeCategory];

  IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();
  result = swift_unknownObjectWeakLoadStrong();
  v38 = result;
  if (IsAccessibilityContentSizeCategory)
  {
    if (!result)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    [result setAxis:1];

    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v39 = result;
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v40 = result;
    [v39 insertArrangedSubview:result atIndex:1];
  }

  else
  {
    if (!result)
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    [result setAxis:0];

    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v39 = result;
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v40 = result;
    [v39 insertArrangedSubview:result atIndex:0];
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    goto LABEL_50;
  }

  v41 = result;
  [result setNeedsLayout];

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v42 = result;
  [result layoutIfNeeded];

  v43 = [v16 traitCollection];
  v44 = [v43 userInterfaceStyle];

  result = swift_unknownObjectWeakLoadStrong();
  v45 = result;
  if (v44 != 2)
  {
    if (result)
    {
      v46 = &selRef_systemGray6Color;
      goto LABEL_28;
    }

LABEL_59:
    __break(1u);
    return result;
  }

  if (!result)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v46 = &selRef_tertiarySystemGroupedBackgroundColor;
LABEL_28:
  v89 = v23;
  v47 = [objc_opt_self() *v46];
  [v45 setBackgroundColor:v47];

  v48 = *&v16[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_playerModel];
  if (v48)
  {
    v49 = v6;
    v50 = v48;
    sub_1000413E0();
    v51 = v16;
    v52 = v50;
    v53 = sub_100041400();
    v54 = sub_100041CC0();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v55 = 138412546;
      *(v55 + 4) = v51;
      *(v55 + 12) = 2112;
      *(v55 + 14) = v52;
      *v56 = v51;
      v56[1] = v48;
      v57 = v51;
      v58 = v52;
      _os_log_impl(&_mh_execute_header, v53, v54, "%@ Updating friend card UI , player model is non nil: %@", v55, 0x16u);
      sub_100002D08(&unk_10005CA00, &unk_100045CF0);
      swift_arrayDestroy();
    }

    v59 = v90;
    v92(v91, v90);
    v60 = swift_allocObject();
    *(v60 + 16) = v51;
    *(v60 + 24) = v52;
    v61 = v51;
    v62 = v52;
    sub_1000123C8(sub_10000EA60, v60);

    v6 = v49;
  }

  else
  {
    sub_1000413D0();
    v63 = v16;
    v64 = sub_100041400();
    v65 = sub_100041CE0();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *v66 = 138412290;
      *(v66 + 4) = v63;
      *v67 = v63;
      v68 = v63;
      _os_log_impl(&_mh_execute_header, v64, v65, "%@ expected a playerModel", v66, 0xCu);
      sub_10000E9F0(v67, &unk_10005CA00, &unk_100045CF0);
    }

    v59 = v90;
    v92(v11, v90);
    v63[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_inviteCardState] = 7;
    sub_10000AC8C();
    v69 = sub_100039914();
    if (v69)
    {
      v70 = v69;
      sub_1000413E0();
      v71 = v70;
      v72 = sub_100041400();
      v73 = sub_100041CC0();

      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        *v74 = 138412290;
        *(v74 + 4) = v71;
        *v75 = v70;
        v76 = v71;
        _os_log_impl(&_mh_execute_header, v72, v73, "%@ user interface is ready for display", v74, 0xCu);
        sub_10000E9F0(v75, &unk_10005CA00, &unk_100045CF0);
      }

      v92(v88, v59);
      [v71 setReadyForDisplay];
    }
  }

  sub_1000413E0();
  v77 = v16;
  v78 = sub_100041400();
  v79 = sub_100041CC0();

  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v93 = v82;
    *v80 = 138412546;
    *(v80 + 4) = v77;
    *v81 = v77;
    *(v80 + 12) = 2080;
    v83 = v77[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_inviteCardState];
    v84 = v77;
    v85 = sub_100004BFC(v83);
    v87 = sub_10003FBD0(v85, v86, &v93);

    *(v80 + 14) = v87;
    _os_log_impl(&_mh_execute_header, v78, v79, "%@ inviteCardState is set to : %s", v80, 0x16u);
    sub_10000E9F0(v81, &unk_10005CA00, &unk_100045CF0);

    sub_10000E8A8(v82);
  }

  return (v92)(v6, v59);
}

void sub_1000061DC(void *a1, uint64_t a2, char *a3, unsigned __int8 *a4)
{
  v7 = sub_100041410();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v101 - v13;
  if (!a1)
  {
    goto LABEL_4;
  }

  v15 = v7;
  v16 = objc_opt_self();
  v17 = a1;
  v104 = v16;
  v18 = [v16 unknownPlayer];
  sub_10000EA78(0, &qword_10005CA38, GKPlayer_ptr);
  v19 = sub_100041DB0();

  if (v19)
  {

    v7 = v15;
LABEL_4:
    sub_1000413E0();
    v20 = a4;
    v21 = a3;
    v22 = sub_100041400();
    v23 = sub_100041CC0();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412546;
      *(v24 + 4) = v21;
      *(v24 + 12) = 2112;
      *(v24 + 14) = v20;
      *v25 = v21;
      v25[1] = v20;
      v26 = v20;
      v27 = v21;
      _os_log_impl(&_mh_execute_header, v22, v23, "%@ Could not find a valid player using playerModel: %@", v24, 0x16u);
      sub_100002D08(&unk_10005CA00, &unk_100045CF0);
      swift_arrayDestroy();
    }

    v28 = *(v8 + 8);
    v28(v14, v7);
    v21[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_inviteCardState] = 7;
    sub_10000AC8C();
    v29 = sub_100039914();
    if (v29)
    {
      v30 = v29;
      sub_1000413E0();
      v31 = v30;
      v32 = sub_100041400();
      v33 = sub_100041CC0();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = 138412290;
        *(v34 + 4) = v31;
        *v35 = v30;
        v36 = v31;
        _os_log_impl(&_mh_execute_header, v32, v33, "%@ user interface is ready for display", v34, 0xCu);
        sub_10000E9F0(v35, &unk_10005CA00, &unk_100045CF0);
      }

      v28(v12, v7);
      [v31 setReadyForDisplay];
    }

    return;
  }

  v37 = [v17 internal];
  v38 = [v37 friendsVisibility];

  *&a3[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_profileVisibility] = v38;
  v39 = *&a3[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_sender];
  *&a3[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_sender] = a1;
  v105 = v17;

  sub_10000AAC0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v41 = Strong;
  [Strong setDelegate:a3];

  v42 = swift_unknownObjectWeakLoadStrong();
  if (!v42)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v43 = v42;
  [v42 setPlayer:v105];

  v44 = [v105 internal];
  v45 = [v44 friendsVisibility];

  a3[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_isSenderProfilePublic] = v45 == 0;
  v46 = [v105 internal];
  v47 = [v46 friendsVisibility];

  if (!v47)
  {
    sub_10000D5B0(v105);
  }

  v48 = a4[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCodeState];
  if (v48 > 2)
  {
    if (v48 - 4 < 2)
    {
      v49 = OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_inviteCardState;
      v50 = 8;
      goto LABEL_22;
    }

    v52 = OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendPlayerIDs;
    swift_beginAccess();
    v53 = *&a4[v52];
    if (!v53)
    {
      goto LABEL_57;
    }

    v54 = *(v53 + 16);

    if (v54)
    {
      v55 = 0;
      v102 = v54 - 1;
      v103 = v53 + 40;
      v104 = _swiftEmptyArrayStorage;
      do
      {
        v56 = (v103 + 16 * v55);
        v57 = v55;
        while (1)
        {
          if (v57 >= *(v53 + 16))
          {
            __break(1u);
            goto LABEL_66;
          }

          v59 = *(v56 - 1);
          v58 = *v56;
          v60 = objc_opt_self();

          v61 = [v60 local];
          v62 = [v61 internal];

          v63 = [v62 playerID];
          v64 = sub_100041B20();
          v66 = v65;

          if (v59 == v64 && v58 == v66)
          {
            break;
          }

          v68 = sub_100041FC0();

          if (v68)
          {
            goto LABEL_39;
          }

          ++v57;

          v56 += 2;
          if (v54 == v57)
          {
            goto LABEL_55;
          }
        }

LABEL_39:
        v69 = v104;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock = v69;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100040178(0, v104[2] + 1, 1);
          v104 = aBlock;
        }

        v72 = v104[2];
        v71 = v104[3];
        if (v72 >= v71 >> 1)
        {
          sub_100040178((v71 > 1), v72 + 1, 1);
          v104 = aBlock;
        }

        v55 = v57 + 1;
        v73 = v104;
        v104[2] = (v72 + 1);
        v74 = &v73[2 * v72];
        v74[4] = v59;
        v74[5] = v58;
      }

      while (v102 != v57);
    }

    else
    {
      v104 = _swiftEmptyArrayStorage;
    }

LABEL_55:

    v90 = v104[2];

    if (!v90)
    {
LABEL_57:
      v91 = [objc_opt_self() local];
      v92 = swift_allocObject();
      *(v92 + 16) = v105;
      *(v92 + 24) = a3;
      v110 = sub_10000EA68;
      v111 = v92;
      aBlock = _NSConcreteStackBlock;
      v107 = 1107296256;
      v108 = sub_10003A434;
      v109 = &unk_100055DF0;
      v93 = _Block_copy(&aBlock);
      v94 = v105;
      v95 = a3;

      [v91 loadFriendsAsPlayersWithCompletionHandler:v93];

      _Block_release(v93);
      return;
    }

    a3[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_inviteCardState] = 5;
    sub_10000AC8C();
LABEL_64:

    return;
  }

  if (!a4[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCodeState])
  {
    v49 = OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_inviteCardState;
    v50 = 5;
    goto LABEL_22;
  }

  if (v48 != 1)
  {
    if ((a4[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCodeUsageCount + 8] & 1) != 0 || *&a4[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCodeUsageCount] < 1)
    {
      a3[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_inviteCardState] = 0;
      goto LABEL_23;
    }

    v75 = sub_100039914();
    if (v75)
    {
      v76 = v75;
      v77 = [v75 activeConversation];

      if (v77)
      {
        v78 = [v77 recipientAddresses];
        v79 = sub_100041C20();

        v80 = *(v79 + 16);

        if (v80 == 1)
        {
          v81 = swift_unknownObjectWeakLoadStrong();
          if (v81)
          {
            v82 = v81;
            [v81 setDelegate:a3];

            v83 = swift_unknownObjectWeakLoadStrong();
            if (v83)
            {
              v84 = v83;
              [v83 setHidden:0];

              v85 = [objc_opt_self() local];
              v86 = swift_allocObject();
              *(v86 + 16) = a4;
              *(v86 + 24) = a3;
              v110 = sub_10000EA70;
              v111 = v86;
              aBlock = _NSConcreteStackBlock;
              v107 = 1107296256;
              v108 = sub_10003A434;
              v109 = &unk_100055E40;
              v87 = _Block_copy(&aBlock);
              v88 = a4;
              v89 = a3;

              [v85 loadFriendsAsPlayersWithCompletionHandler:v87];
              _Block_release(v87);
LABEL_63:

              sub_10000C1B0(a4);
              goto LABEL_64;
            }

LABEL_72:
            __break(1u);
            return;
          }

LABEL_71:
          __break(1u);
          goto LABEL_72;
        }
      }
    }

    v96 = swift_unknownObjectWeakLoadStrong();
    if (v96)
    {
      v97 = v96;
      [v96 setDelegate:a3];

      v98 = swift_unknownObjectWeakLoadStrong();
      if (v98)
      {
        v99 = v98;
        [v98 setHidden:0];

        v100 = swift_unknownObjectWeakLoadStrong();
        if (v100)
        {
          v77 = v100;
          v85 = [v104 unknownPlayer];
          [v77 setPlayer:v85];
          goto LABEL_63;
        }

        goto LABEL_70;
      }

LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v49 = OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_inviteCardState;
  v50 = 6;
LABEL_22:
  a3[v49] = v50;
LABEL_23:
  sub_10000AC8C();
  v51 = v105;
}

void sub_100006CD8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v34 = a3;
  if (v5)
  {
    do
    {
      v33 = a4;
      v6 = 0;
      v7 = (a3 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendNickname);
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v8 = sub_100041EC0();
        }

        else
        {
          if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v8 = *(a1 + 8 * v6 + 32);
        }

        v9 = v8;
        v10 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v11 = v7;
        sub_10000EA78(0, &unk_10005CA40, NSNumber_ptr);
        v12 = [v9 friendBiDirectional];
        isa = sub_100041DA0(1).super.super.isa;
        v14 = sub_100041DB0();

        if (v14)
        {
          v15 = [v9 alias];
          v16 = sub_100041B20();
          v18 = v17;

          v7 = v11;
          v19 = v11[1];
          if (!v19)
          {

            goto LABEL_6;
          }

          if (v16 == *v11 && v19 == v18)
          {

LABEL_18:
            sub_100041EF0();
            v21 = _swiftEmptyArrayStorage[2];
            sub_100041F10();
            sub_100041F20();
            sub_100041F00();
            goto LABEL_5;
          }

          v20 = sub_100041FC0();

          if (v20)
          {
            goto LABEL_18;
          }
        }

LABEL_5:
        v7 = v11;
LABEL_6:
        ++v6;
        if (v10 == v5)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      v22 = a4;
      v23 = a3;
      v24 = sub_100041F50();
      a3 = v23;
      a4 = v22;
      v5 = v24;
      v34 = v23;
    }

    while (v24);
  }

LABEL_24:
  v25 = _swiftEmptyArrayStorage < 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0;
  if (v25)
  {
    v26 = sub_100041F50();
  }

  else
  {
    v26 = _swiftEmptyArrayStorage[2];
  }

  if (v26 <= 0)
  {
    v29 = *(v34 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendPlayer);
    Strong = swift_unknownObjectWeakLoadStrong();
    v35 = Strong;
    if (!v29)
    {
      if (Strong)
      {

        v32 = [objc_opt_self() playerFromPlayerID:GKUnknownPlayerID];
        [v35 setPlayer:v32];
        v31 = v35;
        v35 = v32;
        goto LABEL_43;
      }

LABEL_53:
      __break(1u);
      return;
    }

    if (Strong)
    {
      v28 = v29;
      goto LABEL_39;
    }

LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v27 = swift_unknownObjectWeakLoadStrong();
  if (!v27)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v35 = v27;
  if (v25)
  {
    if (sub_100041F50())
    {
      goto LABEL_33;
    }

LABEL_41:

    v31 = 0;
    goto LABEL_42;
  }

  if (!_swiftEmptyArrayStorage[2])
  {
    goto LABEL_41;
  }

LABEL_33:
  if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
  {
    v28 = sub_100041EC0();
    goto LABEL_39;
  }

  if (!_swiftEmptyArrayStorage[2])
  {
    __break(1u);
    goto LABEL_51;
  }

  v28 = _swiftEmptyArrayStorage[4];
LABEL_39:
  v31 = v28;

LABEL_42:
  [v35 setPlayer:{v31, v33}];
LABEL_43:
}

void sub_1000070A4(unint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  v5 = a1;
  if (a1 >> 62)
  {
LABEL_23:
    v6 = sub_100041F50();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v29 = a4;
      v30 = v6;
      v7 = 0;
      a4 = v5 & 0xC000000000000001;
      v33 = v5 & 0xFFFFFFFFFFFFFF8;
      v31 = v5;
      while (1)
      {
        if (a4)
        {
          v8 = sub_100041EC0();
        }

        else
        {
          if (v7 >= *(v33 + 16))
          {
            goto LABEL_22;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        sub_10000EA78(0, &unk_10005CA40, NSNumber_ptr);
        v11 = [v9 friendBiDirectional];
        isa = sub_100041DA0(1).super.super.isa;
        v13 = sub_100041DB0();

        if (v13)
        {
          break;
        }

LABEL_5:
        ++v7;
        if (v10 == v6)
        {
          a4 = v29;
          if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
          {
            goto LABEL_25;
          }

          goto LABEL_31;
        }
      }

      v14 = a4;
      v15 = [v9 internal];
      v16 = [v15 playerID];

      v17 = sub_100041B20();
      v19 = v18;

      v20 = [a3 internal];
      v21 = [v20 playerID];

      v22 = sub_100041B20();
      v24 = v23;

      if (v17 == v22 && v19 == v24)
      {

        a4 = v14;
      }

      else
      {
        v25 = sub_100041FC0();

        a4 = v14;
        if ((v25 & 1) == 0)
        {

          goto LABEL_17;
        }
      }

      sub_100041EF0();
      v26 = _swiftEmptyArrayStorage[2];
      sub_100041F10();
      sub_100041F20();
      sub_100041F00();
LABEL_17:
      v6 = v30;
      v5 = v31;
      goto LABEL_5;
    }
  }

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
  {
    goto LABEL_31;
  }

LABEL_25:
  if ((_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
LABEL_31:
    v27 = sub_100041F50();
  }

  else
  {
    v27 = _swiftEmptyArrayStorage[2];
  }

  if (v27 <= 0)
  {
    v28 = 3;
  }

  else
  {
    v28 = 4;
  }

  *(a4 + OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_inviteCardState) = v28;
  sub_10000AC8C();
}

uint64_t sub_1000073F0()
{
  v1 = 0xEA00000000006C61;
  v2 = 0x7564697669646E69;
  v3 = *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_inviteCardViewer);
  v4 = sub_100039914();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 activeConversation];

    if (v6)
    {
      v7 = [v6 recipientAddresses];
      v8 = sub_100041C20();

      v9 = *(v8 + 16);

      if (v9 > 1)
      {
        v2 = 0x70756F7267;
        v1 = 0xE500000000000000;
      }
    }
  }

  v10 = 0x7265646E6573;
  if (v3)
  {
    v10 = 0x6E65697069636572;
  }

  v12 = v10;
  v13._countAndFlagsBits = 95;
  v13._object = 0xE100000000000000;
  sub_100041B80(v13);
  v14._countAndFlagsBits = v2;
  v14._object = v1;
  sub_100041B80(v14);

  return v12;
}

void sub_100007534()
{
  v1 = sub_100041410();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FriendRequestCardViewController();
  v79.receiver = v0;
  v79.super_class = v6;
  objc_msgSendSuper2(&v79, "viewDidLoad");
  sub_1000413E0();
  v7 = v0;
  v8 = sub_100041400();
  v9 = sub_100041CC0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "%@ viewDidLoad", v10, 0xCu);
    sub_10000E9F0(v11, &unk_10005CA00, &unk_100045CF0);
  }

  (*(v2 + 8))(v5, v1);
  v13 = [objc_opt_self() defaultCenter];
  v14 = sub_100041AF0();
  [v13 addObserver:v7 selector:"updateCard:" name:v14 object:0];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_41;
  }

  v16 = Strong;
  v17 = [Strong layer];

  [v17 setCornerRadius:9.0];
  v18 = swift_unknownObjectWeakLoadStrong();
  if (!v18)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v19 = v18;
  v20 = [v18 layer];

  [v20 setMasksToBounds:1];
  v21 = swift_unknownObjectWeakLoadStrong();
  if (!v21)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v22 = v21;
  v23 = [v21 titleLabel];

  if (v23)
  {
    v24 = [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleSubheadline variant:1024];
    [v23 setFont:v24];
  }

  v25 = swift_unknownObjectWeakLoadStrong();
  if (!v25)
  {
    goto LABEL_43;
  }

  v26 = v25;
  v27 = [v25 titleLabel];

  [v27 setAdjustsFontSizeToFitWidth:1];
  v28 = swift_unknownObjectWeakLoadStrong();
  if (!v28)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v29 = v28;
  v30 = [v28 titleLabel];

  if (v30)
  {
    [v30 setMinimumScaleFactor:0.5];
  }

  v31 = swift_unknownObjectWeakLoadStrong();
  if (!v31)
  {
    goto LABEL_45;
  }

  v32 = v31;
  v33 = [v31 layer];

  [v33 setCornerRadius:9.0];
  v34 = swift_unknownObjectWeakLoadStrong();
  if (!v34)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v35 = v34;
  v36 = [v34 layer];

  [v36 setMasksToBounds:1];
  v37 = swift_unknownObjectWeakLoadStrong();
  if (!v37)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v38 = v37;
  v39 = [v37 titleLabel];

  if (v39)
  {
    v40 = [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleSubheadline variant:1024];
    [v39 setFont:v40];
  }

  v41 = swift_unknownObjectWeakLoadStrong();
  if (!v41)
  {
    goto LABEL_48;
  }

  v42 = v41;
  v43 = [v41 titleLabel];

  if (v43)
  {
    v44 = [objc_opt_self() whiteColor];
    [v43 setTextColor:v44];
  }

  v45 = swift_unknownObjectWeakLoadStrong();
  if (!v45)
  {
    goto LABEL_49;
  }

  v46 = v45;
  v47 = [v45 layer];

  [v47 setCornerRadius:9.0];
  v48 = swift_unknownObjectWeakLoadStrong();
  if (!v48)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v49 = v48;
  v50 = [v48 layer];

  [v50 setMasksToBounds:1];
  v51 = swift_unknownObjectWeakLoadStrong();
  if (!v51)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v52 = v51;
  v53 = [v51 titleLabel];

  if (v53)
  {
    v54 = [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleSubheadline variant:1024];
    [v53 setFont:v54];
  }

  v55 = swift_unknownObjectWeakLoadStrong();
  if (!v55)
  {
    goto LABEL_52;
  }

  v56 = v55;
  v57 = [v55 titleLabel];

  [v57 setAdjustsFontSizeToFitWidth:1];
  v58 = swift_unknownObjectWeakLoadStrong();
  if (!v58)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v59 = v58;
  v60 = [v58 titleLabel];

  if (v60)
  {
    [v60 setMinimumScaleFactor:0.5];
  }

  v61 = swift_unknownObjectWeakLoadStrong();
  if (!v61)
  {
    goto LABEL_54;
  }

  v62 = v61;
  [v61 setUserInteractionEnabled:1];

  v63 = objc_allocWithZone(UITapGestureRecognizer);
  v64 = v7;
  v65 = [v63 initWithTarget:v64 action:"avatarPressed:"];
  v66 = swift_unknownObjectWeakLoadStrong();
  if (!v66)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v67 = v66;
  [v66 addGestureRecognizer:v65];

  v68 = swift_unknownObjectWeakLoadStrong();
  if (!v68)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v69 = v68;
  [v68 setUserInteractionEnabled:1];

  v70 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v64 action:"friendAvatarPressed:"];
  v71 = swift_unknownObjectWeakLoadStrong();
  if (!v71)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v72 = v71;
  [v71 addGestureRecognizer:v70];

  v73 = *&v64[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_playerModel];
  if (!v73)
  {
LABEL_58:
    __break(1u);
    return;
  }

  if (*(v73 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCode + 8))
  {
    sub_1000056A8();
  }

  else
  {
    sub_100007EF8();
  }

  if (v64[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_inviteCardViewer] == 1)
  {
    v74 = [objc_allocWithZone(GKReporter) init];
    [v74 reportEvent:GKReporterDomainImprovedFriendingUIInteractions type:GKFriendInviteViewedByReceiver];
  }

  v75 = [objc_allocWithZone(GKAPIReporter) init];
  sub_1000073F0();
  v76 = sub_100041AF0();

  v77 = sub_100041AF0();
  v78 = sub_100041AF0();
  [v75 recordPageWithID:v76 pageContext:v77 pageType:v78];
}

void sub_100007EF8()
{
  v1 = sub_100041410();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v0[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_playerModel];
  if (v6)
  {
    v7 = v6;
    sub_1000413E0();
    v8 = v0;
    v9 = sub_100041400();
    v10 = sub_100041CC0();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v8;
      *v12 = v8;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v9, v10, "%@ creating friend request", v11, 0xCu);
      sub_10000E9F0(v12, &unk_10005CA00, &unk_100045CF0);
    }

    (*(v2 + 8))(v5, v1);
    v14 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
    v15 = [v8 traitCollection];
    v16 = [v15 userInterfaceStyle];

    v17 = objc_opt_self();
    v18 = &selRef_tertiarySystemGroupedBackgroundColor;
    if (v16 != 2)
    {
      v18 = &selRef_systemGray6Color;
    }

    v19 = [v17 *v18];
    [v14 setBackgroundColor:v19];

    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v14 startAnimating];
    v20 = [v8 view];
    if (v20)
    {
      v21 = v20;
      [v20 addSubview:v14];

      v22 = objc_opt_self();
      v23 = [v8 view];
      [v22 _gkInstallEdgeConstraintsForView:v14 containedWithinParentView:v23];

      v24 = v7;
      v25 = v8;
      sub_10001903C(v24, v14, v24, v25);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100008230(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = sub_100041410();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  v9 = __chkstk_darwin(v7);
  v55 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v54 - v12;
  __chkstk_darwin(v11);
  v15 = &v54 - v14;
  v16 = sub_100002D08(&qword_10005CA30, &unk_100046380);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v54 - v18;
  v20 = sub_100041200();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v24 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a2 removeFromSuperview];
  if (a1)
  {
    goto LABEL_4;
  }

  sub_10001287C(1, v19);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_10000E9F0(v19, &qword_10005CA30, &unk_100046380);
LABEL_4:
    sub_1000413E0();
    v25 = a4;
    swift_errorRetain();
    v26 = sub_100041400();
    v27 = sub_100041CC0();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v58 = a1;
      v59 = v30;
      *v28 = 138412546;
      *(v28 + 4) = v25;
      *v29 = v25;
      *(v28 + 12) = 2080;
      v31 = v25;
      sub_100002D08(&unk_10005CF10, &qword_100047670);
      v32 = sub_100041E10();
      v34 = sub_10003FBD0(v32, v33, &v59);

      *(v28 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v26, v27, "%@ failed to create friend request with %s", v28, 0x16u);
      sub_10000E9F0(v29, &unk_10005CA00, &unk_100045CF0);

      sub_10000E8A8(v30);
    }

    v35 = v57;
    v36 = *(v56 + 8);
    v36(v13, v57);
    v37 = v55;
    *(v25 + OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_inviteCardState) = 7;
    sub_10000AC8C();
    v38 = sub_100039914();
    if (v38)
    {
      v39 = v38;
      sub_1000413E0();
      v40 = v39;
      v41 = sub_100041400();
      v42 = sub_100041CC0();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *v43 = 138412290;
        *(v43 + 4) = v40;
        *v44 = v39;
        v45 = v40;
        _os_log_impl(&_mh_execute_header, v41, v42, "%@ user interface is ready for display", v43, 0xCu);
        sub_10000E9F0(v44, &unk_10005CA00, &unk_100045CF0);
      }

      v36(v37, v35);
      [v40 setReadyForDisplay];
    }

    return;
  }

  (*(v21 + 32))(v24, v19, v20);
  sub_1000413E0();
  v46 = a4;
  v47 = sub_100041400();
  v48 = sub_100041CC0();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v49 = 138412290;
    *(v49 + 4) = v46;
    *v50 = v46;
    v51 = v46;
    _os_log_impl(&_mh_execute_header, v47, v48, "%@ friend request created", v49, 0xCu);
    sub_10000E9F0(v50, &unk_10005CA00, &unk_100045CF0);
  }

  (*(v56 + 8))(v15, v57);
  v52 = *&v46[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_onFetchedUrl];
  if (v52)
  {
    v53 = *&v46[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_onFetchedUrl + 8];

    v52(v24);
    sub_10000EA50(v52);
  }

  sub_1000056A8();
  (*(v21 + 8))(v24, v20);
}

void sub_100008854()
{
  v1 = sub_100041410();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100039914();
  if (v6)
  {
    v72 = v6;
    if (([objc_opt_self() _gkIsOnline] & 1) == 0)
    {
      v31 = GKGameCenterUIFrameworkBundle();
      v67._countAndFlagsBits = 0xE000000000000000;
      v77._countAndFlagsBits = 0xD000000000000016;
      v77._object = 0x8000000100044140;
      v82.value._countAndFlagsBits = 0;
      v82.value._object = 0;
      v32.super.isa = v31;
      v87._countAndFlagsBits = 0;
      v87._object = 0xE000000000000000;
      sub_100041180(v77, v82, v32, v87, v67);

      v33 = sub_100041AF0();

      v34 = GKGameCenterUIFrameworkBundle();
      v69._countAndFlagsBits = 0xE000000000000000;
      v78._countAndFlagsBits = 0xD000000000000018;
      v78._object = 0x8000000100043F40;
      v83.value._countAndFlagsBits = 0;
      v83.value._object = 0;
      v35.super.isa = v34;
      v88._countAndFlagsBits = 0;
      v88._object = 0xE000000000000000;
      sub_100041180(v78, v83, v35, v88, v69);

      v36 = sub_100041AF0();

      v37 = GKGameCenterUIFrameworkBundle();
      v70._countAndFlagsBits = 0xE000000000000000;
      v79._countAndFlagsBits = 0x4F545455425F4B4FLL;
      v79._object = 0xE90000000000004ELL;
      v84.value._countAndFlagsBits = 0;
      v84.value._object = 0;
      v38.super.isa = v37;
      v89._countAndFlagsBits = 0;
      v89._object = 0xE000000000000000;
      sub_100041180(v79, v84, v38, v89, v70);

      v39 = sub_100041AF0();

      aBlock[4] = nullsub_1;
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100012BD4;
      aBlock[3] = &unk_100055CB0;
      v40 = _Block_copy(aBlock);
      [v72 _presentAlertWithTitle:v33 message:v36 buttonTitle:v39 completion:v40];
      _Block_release(v40);

      v41 = [objc_allocWithZone(GKAPIReporter) init];
      v42 = sub_100041AF0();
      v43 = sub_100041AF0();
      v44 = sub_100041AF0();
      sub_1000073F0();
      v45 = sub_100041AF0();

      v46 = sub_100041AF0();
      [v41 recordClickWithAction:v42 targetId:v43 targetType:v44 pageId:v45 pageType:v46];

      return;
    }

    v7 = [objc_opt_self() shared];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 isAddingFriendsRestricted];

      if (v9)
      {
        v10 = [objc_allocWithZone(GKReporter) init];
        [v10 reportEvent:GKReporterDomainManualFriending type:GKFriendRequestRestrictedError];

        v11 = [objc_allocWithZone(GKAPIReporter) init];
        v12 = sub_100041AF0();
        v13 = sub_100041AF0();
        v14 = sub_100041AF0();
        sub_1000073F0();
        v15 = sub_100041AF0();

        v16 = sub_100041AF0();
        [v11 recordClickWithAction:v12 targetId:v13 targetType:v14 pageId:v15 pageType:v16];

        v17 = GKGameCenterUIFrameworkBundle();
        v67._countAndFlagsBits = 0xE000000000000000;
        v75._countAndFlagsBits = 0x525F444E45495246;
        v75._object = 0xEE00545345555145;
        v80.value._countAndFlagsBits = 0;
        v80.value._object = 0;
        v18.super.isa = v17;
        v85._countAndFlagsBits = 0;
        v85._object = 0xE000000000000000;
        v19 = sub_100041180(v75, v80, v18, v85, v67);
        v21 = v20;

        v22 = GKGameCenterUIFrameworkBundle();
        v68._countAndFlagsBits = 0xE000000000000000;
        v76._countAndFlagsBits = 0xD000000000000027;
        v76._object = 0x8000000100044180;
        v81.value._countAndFlagsBits = 0;
        v81.value._object = 0;
        v23.super.isa = v22;
        v86._countAndFlagsBits = 0;
        v86._object = 0xE000000000000000;
        v24 = sub_100041180(v76, v81, v23, v86, v68);
        v26 = v25;

        sub_10003074C(v19, v21, v24, v26);

        v27 = v72;

        return;
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_27;
      }

      v48 = Strong;
      [Strong setEnabled:0];

      v49 = swift_unknownObjectWeakLoadStrong();
      if (!v49)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v50 = v49;
      v51 = [objc_opt_self() systemGray2Color];
      [v50 setBackgroundColor:v51];

      v52 = [v72 activeConversation];
      v53 = v52;
      if (v52)
      {
        v54 = [v52 recipientAddresses];
        v55 = sub_100041C20();

        v56 = *(v55 + 16);

        if (v56)
        {
          v57 = [v53 recipientAddresses];
          v58 = sub_100041C20();

          if (v58[2])
          {
            v59 = v58[4];
            v56 = v58[5];

            v60 = [v53 recipientAddresses];
            v61 = sub_100041C20();

            v53 = *(v61 + 16);

            LODWORD(v53) = v53 > 1;
            goto LABEL_21;
          }

          __break(1u);
          goto LABEL_26;
        }

        LODWORD(v53) = 0;
        v59 = 0;
      }

      else
      {
        v59 = 0;
        v56 = 0;
      }

LABEL_21:
      v62 = *&v0[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_playerModel];
      if (v62)
      {
        v63 = swift_allocObject();
        *(v63 + 16) = v0;
        *(v63 + 24) = v72;
        v64 = v62;
        v65 = v0;
        v66 = v72;
        sub_100012C18(v59, v56, v53, sub_10000E934, v63);

        return;
      }

LABEL_29:
      __break(1u);
      return;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  sub_1000413D0();
  v28 = sub_100041400();
  v29 = sub_100041CE0();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "acceptButtonPressed - expected a messagesViewController", v30, 2u);
  }

  (*(v2 + 8))(v5, v1);
}

void sub_10000915C(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_100041410();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v65 - v12;
  if (a1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      [Strong setEnabled:1];

      v16 = swift_unknownObjectWeakLoadStrong();
      if (v16)
      {
        v17 = v16;
        v18 = swift_unknownObjectWeakLoadStrong();
        if (v18)
        {
          v19 = v18;
          v20 = [v18 tintColor];

          [v17 setBackgroundColor:v20];
          v21 = [objc_allocWithZone(GKReporter) init];
          [v21 reportEvent:GKReporterDomainManualFriending type:GKFriendRequestExpiredError];

          v22 = [objc_allocWithZone(GKAPIReporter) init];
          v23 = sub_100041AF0();
          v24 = sub_100041AF0();
          v25 = sub_100041AF0();
          sub_1000073F0();
          v26 = sub_100041AF0();

          v27 = sub_100041AF0();
          [v22 recordClickWithAction:v23 targetId:v24 targetType:v25 pageId:v26 pageType:v27];

          sub_1000413D0();
          swift_errorRetain();
          v28 = sub_100041400();
          v29 = sub_100041CE0();

          if (os_log_type_enabled(v28, v29))
          {
            v30 = swift_slowAlloc();
            v31 = swift_slowAlloc();
            v65[1] = a1;
            aBlock[0] = v31;
            *v30 = 136315138;
            swift_errorRetain();
            sub_100002D08(&unk_10005CF10, &qword_100047670);
            v32 = sub_100041B40();
            v34 = sub_10003FBD0(v32, v33, aBlock);

            *(v30 + 4) = v34;
            _os_log_impl(&_mh_execute_header, v28, v29, "acceptButtonPressed - acceptFriendRequest error: %s", v30, 0xCu);
            sub_10000E8A8(v31);
          }

          (*(v7 + 8))(v11, v6);
          v35 = GKGameCenterUIFrameworkBundle();
          v63._countAndFlagsBits = 0xE000000000000000;
          v67._countAndFlagsBits = 0x525F444E45495246;
          v67._object = 0xEE00545345555145;
          v69.value._countAndFlagsBits = 0;
          v69.value._object = 0;
          v36.super.isa = v35;
          v71._countAndFlagsBits = 0;
          v71._object = 0xE000000000000000;
          v37 = sub_100041180(v67, v69, v36, v71, v63);
          v39 = v38;

          v40 = GKGameCenterUIFrameworkBundle();
          v64._countAndFlagsBits = 0xE000000000000000;
          v68._countAndFlagsBits = 0xD000000000000024;
          v68._object = 0x8000000100043F90;
          v70.value._countAndFlagsBits = 0;
          v70.value._object = 0;
          v41.super.isa = v40;
          v72._countAndFlagsBits = 0;
          v72._object = 0xE000000000000000;
          v42 = sub_100041180(v68, v70, v41, v72, v64);
          v44 = v43;

          sub_10003074C(v37, v39, v42, v44);

          return;
        }

LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_14;
  }

  v65[0] = v6;
  v45 = [objc_allocWithZone(GKReporter) init];
  [v45 reportEvent:GKReporterDomainManualFriending type:GKFriendRequestAccepted];

  v46 = [objc_allocWithZone(GKAPIReporter) init];
  v47 = sub_100041AF0();
  v48 = sub_100041AF0();
  v49 = sub_100041AF0();
  sub_1000073F0();
  v50 = sub_100041AF0();

  v51 = sub_100041AF0();
  [v46 recordClickWithAction:v47 targetId:v48 targetType:v49 pageId:v50 pageType:v51];

  sub_1000413E0();
  v52 = a2;
  v53 = sub_100041400();
  v54 = sub_100041CC0();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v55 = 138412290;
    *(v55 + 4) = v52;
    *v56 = v52;
    v57 = v52;
    _os_log_impl(&_mh_execute_header, v53, v54, "%@ acceptButtonPressed - acceptFriendRequest succeed", v55, 0xCu);
    sub_10000E9F0(v56, &unk_10005CA00, &unk_100045CF0);
  }

  (*(v7 + 8))(v13, v65[0]);
  v58 = [objc_opt_self() local];
  v59 = swift_allocObject();
  *(v59 + 16) = a3;
  *(v59 + 24) = v52;
  aBlock[4] = sub_10000E93C;
  aBlock[5] = v59;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003A434;
  aBlock[3] = &unk_100055D28;
  v60 = _Block_copy(aBlock);
  v61 = v52;
  v62 = a3;

  [v58 loadFriendsAsPlayersWithCompletionHandler:v60];
  _Block_release(v60);
}

void sub_1000098D0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = sub_100041A10();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100041A30();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a3 activeConversation];
  if (!v16)
  {
    goto LABEL_7;
  }

  v26 = v16;
  v17 = [v16 recipientAddresses];
  v18 = sub_100041C20();

  v19 = *(v18 + 16);

  if (v19 != 1)
  {

LABEL_7:
    sub_10000EA78(0, &qword_10005CA10, OS_dispatch_queue_ptr);
    v21 = sub_100041D50();
    v22 = swift_allocObject();
    *(v22 + 16) = a4;
    aBlock[4] = sub_10000F3D8;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100012BD4;
    aBlock[3] = &unk_100055D78;
    v23 = _Block_copy(aBlock);
    v24 = a4;

    sub_100041A20();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10000E944(&qword_10005CA18, &type metadata accessor for DispatchWorkItemFlags);
    sub_100002D08(&qword_10005CA20, qword_100045D00);
    sub_10000E98C();
    sub_100041E60();
    sub_100041D60();
    _Block_release(v23);

    (*(v7 + 8))(v10, v6);
    (*(v12 + 8))(v15, v11);
    return;
  }

  sub_100029094();
  v20 = v26;
}

void sub_100009C80()
{
  if ([objc_opt_self() _gkIsOnline])
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      [Strong setEnabled:0];

      v3 = swift_unknownObjectWeakLoadStrong();
      if (!v3)
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v4 = v3;
      v5 = [objc_opt_self() systemGray2Color];
      [v4 setBackgroundColor:v5];

      v6 = sub_100039914();
      if (v6 && (v7 = v6, v8 = [v6 activeConversation], v7, v8))
      {
        v9 = [v8 recipientAddresses];
        v10 = sub_100041C20();

        v11 = *(v10 + 16);

        if (v11)
        {
          v12 = [v8 recipientAddresses];
          v13 = sub_100041C20();

          if (v13[2])
          {
            v14 = v13[4];
            v11 = v13[5];

            goto LABEL_13;
          }

          __break(1u);
          goto LABEL_19;
        }

        v14 = 0;
      }

      else
      {
        v14 = 0;
        v11 = 0;
      }

LABEL_13:
      v33 = *&v0[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_playerModel];
      if (v33)
      {
        v34 = swift_allocObject();
        *(v34 + 16) = v0;
        v35 = v33;
        v36 = v0;
        sub_1000131E8(v14, v11, sub_10000E8A0, v34);

        return;
      }

LABEL_21:
      __break(1u);
      return;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = sub_100039914();
  if (v15)
  {
    v16 = v15;
    v17 = GKGameCenterUIFrameworkBundle();
    v37._countAndFlagsBits = 0xE000000000000000;
    v42._countAndFlagsBits = 0xD000000000000016;
    v42._object = 0x8000000100044140;
    v45.value._countAndFlagsBits = 0;
    v45.value._object = 0;
    v18.super.isa = v17;
    v48._countAndFlagsBits = 0;
    v48._object = 0xE000000000000000;
    sub_100041180(v42, v45, v18, v48, v37);

    v19 = sub_100041AF0();

    v20 = GKGameCenterUIFrameworkBundle();
    v38._countAndFlagsBits = 0xE000000000000000;
    v43._countAndFlagsBits = 0xD000000000000018;
    v43._object = 0x8000000100043F40;
    v46.value._countAndFlagsBits = 0;
    v46.value._object = 0;
    v21.super.isa = v20;
    v49._countAndFlagsBits = 0;
    v49._object = 0xE000000000000000;
    sub_100041180(v43, v46, v21, v49, v38);

    v22 = sub_100041AF0();

    v23 = GKGameCenterUIFrameworkBundle();
    v39._countAndFlagsBits = 0xE000000000000000;
    v44._countAndFlagsBits = 0x4F545455425F4B4FLL;
    v44._object = 0xE90000000000004ELL;
    v47.value._countAndFlagsBits = 0;
    v47.value._object = 0;
    v24.super.isa = v23;
    v50._countAndFlagsBits = 0;
    v50._object = 0xE000000000000000;
    sub_100041180(v44, v47, v24, v50, v39);

    v25 = sub_100041AF0();

    aBlock[4] = nullsub_1;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100012BD4;
    aBlock[3] = &unk_100055C60;
    v26 = _Block_copy(aBlock);
    [v16 _presentAlertWithTitle:v19 message:v22 buttonTitle:v25 completion:v26];
    _Block_release(v26);

    v27 = [objc_allocWithZone(GKAPIReporter) init];
    v28 = sub_100041AF0();
    v29 = sub_100041AF0();
    v30 = sub_100041AF0();
    sub_1000073F0();
    v31 = sub_100041AF0();

    v32 = sub_100041AF0();
    [v27 recordClickWithAction:v28 targetId:v29 targetType:v30 pageId:v31 pageType:v32];
  }
}

void *sub_10000A1A0(uint64_t a1, void *a2)
{
  v4 = sub_100041410();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v59 - v10;
  if (a1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v13 = result;
      [result setEnabled:1];

      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v14 = result;
        v60 = v4;
        result = swift_unknownObjectWeakLoadStrong();
        if (result)
        {
          v15 = result;
          v16 = [result tintColor];

          [v14 setBackgroundColor:v16];
          v17 = [objc_allocWithZone(GKReporter) init];
          [v17 reportEvent:GKReporterDomainManualFriending type:GKFriendRequestExpiredError];

          v18 = [objc_allocWithZone(GKAPIReporter) init];
          v19 = sub_100041AF0();
          v20 = sub_100041AF0();
          v21 = sub_100041AF0();
          sub_1000073F0();
          v22 = sub_100041AF0();

          v23 = sub_100041AF0();
          [v18 recordClickWithAction:v19 targetId:v20 targetType:v21 pageId:v22 pageType:v23];

          sub_1000413D0();
          v24 = a2;
          swift_errorRetain();
          v25 = sub_100041400();
          v26 = sub_100041CE0();

          if (os_log_type_enabled(v25, v26))
          {
            v27 = swift_slowAlloc();
            v28 = swift_slowAlloc();
            v29 = swift_slowAlloc();
            v61 = a1;
            v62 = v29;
            *v27 = 138412546;
            *(v27 + 4) = v24;
            *v28 = v24;
            *(v27 + 12) = 2080;
            v30 = v24;
            swift_errorRetain();
            sub_100002D08(&unk_10005CF10, &qword_100047670);
            v31 = sub_100041B40();
            v33 = sub_10003FBD0(v31, v32, &v62);

            *(v27 + 14) = v33;
            _os_log_impl(&_mh_execute_header, v25, v26, "%@ ignoreButtonPressed - ignoreFriendRequest error: %s", v27, 0x16u);
            sub_10000E9F0(v28, &unk_10005CA00, &unk_100045CF0);

            sub_10000E8A8(v29);
          }

          (*(v5 + 8))(v9, v60);
          v34 = GKGameCenterUIFrameworkBundle();
          v57._countAndFlagsBits = 0xE000000000000000;
          v63._countAndFlagsBits = 0x525F444E45495246;
          v63._object = 0xEE00545345555145;
          v65.value._countAndFlagsBits = 0;
          v65.value._object = 0;
          v35.super.isa = v34;
          v67._countAndFlagsBits = 0;
          v67._object = 0xE000000000000000;
          v36 = sub_100041180(v63, v65, v35, v67, v57);
          v38 = v37;

          v39 = GKGameCenterUIFrameworkBundle();
          v58._countAndFlagsBits = 0xE000000000000000;
          v64._countAndFlagsBits = 0xD000000000000024;
          v64._object = 0x8000000100043F90;
          v66.value._countAndFlagsBits = 0;
          v66.value._object = 0;
          v40.super.isa = v39;
          v68._countAndFlagsBits = 0;
          v68._object = 0xE000000000000000;
          v41 = sub_100041180(v64, v66, v40, v68, v58);
          v43 = v42;

          sub_10003074C(v36, v38, v41, v43);
        }

LABEL_14:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_14;
  }

  v44 = [objc_allocWithZone(GKReporter) init];
  [v44 reportEvent:GKReporterDomainManualFriending type:GKFriendRequestAccepted];

  v45 = [objc_allocWithZone(GKAPIReporter) init];
  v46 = sub_100041AF0();
  v47 = sub_100041AF0();
  v48 = sub_100041AF0();
  sub_1000073F0();
  v49 = sub_100041AF0();

  v50 = sub_100041AF0();
  [v45 recordClickWithAction:v46 targetId:v47 targetType:v48 pageId:v49 pageType:v50];

  sub_1000413E0();
  v51 = a2;
  v52 = sub_100041400();
  v53 = sub_100041CC0();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v54 = 138412290;
    *(v54 + 4) = v51;
    *v55 = v51;
    v56 = v51;
    _os_log_impl(&_mh_execute_header, v52, v53, "%@ ignoreButtonPressed - ignoreFriendRequest succeed", v54, 0xCu);
    sub_10000E9F0(v55, &unk_10005CA00, &unk_100045CF0);
  }

  return (*(v5 + 8))(v11, v4);
}

void sub_10000AAC0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  v1 = Strong;
  v2 = objc_opt_self();
  if (qword_10005C4F0 != -1)
  {
    swift_once();
  }

  v3 = [v2 _gkPreferredFontForTextStyle:qword_10005FF40 symbolicTraits:2];
  [v1 setFont:v3];

  v4 = swift_unknownObjectWeakLoadStrong();
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = v4;
  if (qword_10005C4F8 != -1)
  {
    swift_once();
  }

  v6 = qword_10005FF48;
  v7 = [v2 _gkPreferredFontForTextStyle:qword_10005FF48 symbolicTraits:2];
  [v5 setFont:v7];

  v8 = swift_unknownObjectWeakLoadStrong();
  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = v8;
  v10 = [v2 _gkPreferredFontForTextStyle:v6 symbolicTraits:2];
  [v9 setFont:v10];
}

void sub_10000AC8C()
{
  sub_10000BC98();
  sub_10000B4DC();
  v1 = *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_sender);
  if (v1 && (v1 = [v1 displayNameWithOptions:0]) != 0)
  {
    v2 = v1;
    v3 = sub_100041B20();
    v5 = v4;

    v1 = v3;
  }

  else
  {
    v5 = 0;
  }

  sub_10000CB8C(v1, v5);

  sub_10000BFE0();
  v6 = *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_inviteCardState);
  v7 = 1;
  if (((1 << v6) & 0x78) == 0)
  {
    if (((1 << v6) & 7) == 0)
    {
      goto LABEL_9;
    }

    v7 = 0;
  }

  *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_inviteCardViewer) = v7;
LABEL_9:

  sub_10000AD60();
}

void sub_10000AD60()
{
  v1 = v0;
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_58;
  }

  v3 = v2;
  [v2 setNeedsLayout];

  v4 = [v1 view];
  if (!v4)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v5 = v4;
  [v4 layoutIfNeeded];

  v6 = OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_topMostConstriant;
  v7 = *&v1[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_topMostConstriant];
  if (!v7)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  [v7 constant];
  v9 = v8;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v11 = Strong;
  [Strong frame];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v115.origin.x = v13;
  v115.origin.y = v15;
  v115.size.width = v17;
  v115.size.height = v19;
  Height = CGRectGetHeight(v115);
  v21 = OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_centerStackView;
  v22 = *&v1[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_centerStackView];
  if (!v22)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v23 = Height;
  [v22 spacing];
  v25 = v24;
  v26 = swift_unknownObjectWeakLoadStrong();
  if (!v26)
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v27 = v26;
  v28 = v9 + 0.0 + v23 + v25;
  v29 = [v26 isHidden];

  if ((v29 & 1) == 0)
  {
    v30 = swift_unknownObjectWeakLoadStrong();
    if (!v30)
    {
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    v31 = v30;
    v32 = UILabel.requiredHeight.getter();

    v28 = v28 + v32;
  }

  v33 = swift_unknownObjectWeakLoadStrong();
  if (!v33)
  {
    goto LABEL_63;
  }

  v34 = v33;
  v35 = [v33 isHidden];

  if ((v35 & 1) == 0)
  {
    v36 = swift_unknownObjectWeakLoadStrong();
    if (!v36)
    {
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v37 = v36;
    v38 = UILabel.requiredHeight.getter();

    v28 = v28 + v38;
  }

  v39 = *&v1[v21];
  if (!v39)
  {
    goto LABEL_64;
  }

  [v39 spacing];
  v41 = v40;
  v42 = swift_unknownObjectWeakLoadStrong();
  if (!v42)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v43 = v42;
  v44 = v28 + v41;
  v45 = [v42 isHidden];

  if ((v45 & 1) == 0)
  {
    v46 = swift_unknownObjectWeakLoadStrong();
    if (!v46)
    {
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v47 = v46;
    v48 = UILabel.requiredHeight.getter();

    v44 = v44 + v48;
  }

  v49 = swift_unknownObjectWeakLoadStrong();
  if (!v49)
  {
    goto LABEL_66;
  }

  v50 = v49;
  v51 = [v49 isHidden];

  if ((v51 & 1) == 0)
  {
    v52 = swift_unknownObjectWeakLoadStrong();
    if (!v52)
    {
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v53 = v52;
    [v52 frame];
    v55 = v54;

    v44 = v44 + v55;
  }

  v56 = swift_unknownObjectWeakLoadStrong();
  if (!v56)
  {
    goto LABEL_67;
  }

  v57 = v56;
  v58 = [v56 isHidden];

  if ((v58 & 1) == 0)
  {
    v59 = swift_unknownObjectWeakLoadStrong();
    if (!v59)
    {
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v60 = v59;
    [v59 frame];
    v62 = v61;

    v44 = v44 + v62;
  }

  v63 = swift_unknownObjectWeakLoadStrong();
  if (!v63)
  {
    goto LABEL_68;
  }

  v64 = v63;
  v65 = [v63 isHidden];

  if ((v65 & 1) == 0)
  {
    v66 = swift_unknownObjectWeakLoadStrong();
    if (!v66)
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v67 = v66;
    [v66 frame];
    v69 = v68;

    v44 = v44 + v69;
  }

  v70 = *&v1[v21];
  if (!v70)
  {
    goto LABEL_69;
  }

  [v70 spacing];
  v72 = v71;
  v73 = swift_unknownObjectWeakLoadStrong();
  if (!v73)
  {
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v74 = v73;
  v75 = v44 + v72;
  v76 = [v73 isHidden];

  if ((v76 & 1) == 0)
  {
    v77 = swift_unknownObjectWeakLoadStrong();
    if (!v77)
    {
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    v78 = v77;
    [v77 frame];
    v80 = v79;

    v75 = v75 + v80;
  }

  v81 = *&v1[v21];
  if (!v81)
  {
    goto LABEL_71;
  }

  [v81 spacing];
  v83 = v82;
  v84 = swift_unknownObjectWeakLoadStrong();
  if (!v84)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v85 = v84;
  v86 = v75 + v83;
  v87 = [v84 isHidden];

  if ((v87 & 1) == 0)
  {
    v88 = swift_unknownObjectWeakLoadStrong();
    if (!v88)
    {
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v89 = v88;
    [v88 frame];
    v91 = v90;

    v86 = v86 + v91;
  }

  v92 = *&v1[v6];
  if (!v92)
  {
    goto LABEL_73;
  }

  [v92 constant];
  v94 = v93;
  v95 = swift_unknownObjectWeakLoadStrong();
  if (!v95)
  {
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v96 = v95;
  v97 = v86 + v94;
  v98 = [v95 isHidden];

  if ((v98 & 1) == 0)
  {
    v99 = swift_unknownObjectWeakLoadStrong();
    if (!v99)
    {
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    v100 = v99;
    v101 = UILabel.requiredHeight.getter();

    v97 = v97 + v101;
  }

  v102 = swift_unknownObjectWeakLoadStrong();
  if (!v102)
  {
    goto LABEL_75;
  }

  v103 = v102;
  v104 = [v102 isHidden];

  if (v104)
  {
    goto LABEL_50;
  }

  v105 = swift_unknownObjectWeakLoadStrong();
  if (!v105)
  {
LABEL_85:
    __break(1u);
    return;
  }

  v106 = v105;
  v107 = UILabel.requiredHeight.getter();

  v97 = v97 + v107;
LABEL_50:
  v108 = sub_100039914();
  if (v108)
  {
    v109 = fmax(v97, 220.0);
    v113 = v108;
    sub_100029704();
    v110 = v113;
    v111 = &v113[OBJC_IVAR____TtC26GameCenterMessageExtension22MessagesViewController____lazy_storage___inviteCardHeight];
    *v111 = v109;
    *(v111 + 8) = 0;
    if (v112 != v109)
    {
      [v113 requestResize];
      v110 = v113;
    }
  }
}

double UILabel.requiredHeight.getter()
{
  [v0 frame];
  v1 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, CGRectGetWidth(v16), 1.79769313e308}];
  [v1 setNumberOfLines:{objc_msgSend(v0, "numberOfLines")}];
  [v1 setLineBreakMode:0];
  v2 = [v0 font];
  [v1 setFont:v2];

  v3 = [v0 text];
  [v1 setText:v3];

  v4 = [v0 attributedText];
  [v1 setAttributedText:v4];

  v5 = v1;
  [v5 sizeToFit];
  [v5 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v17.origin.x = v7;
  v17.origin.y = v9;
  v17.size.width = v11;
  v17.size.height = v13;
  Height = CGRectGetHeight(v17);

  return Height;
}

void sub_10000B4DC()
{
  v1 = v0[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_isSenderProfilePublic];
  if (v1 == 2 || (v1 & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {

      v3 = swift_unknownObjectWeakLoadStrong();
      if (!v3)
      {
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      v4 = v3;
      [v3 setHidden:1];
    }
  }

  v5 = swift_unknownObjectWeakLoadStrong();
  if (!v5)
  {
    __break(1u);
    goto LABEL_67;
  }

  v6 = v5;
  [v5 setHidden:0];

  v7 = v0[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_inviteCardState];
  if (v7 > 3)
  {
    if (v0[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_inviteCardState] <= 5u)
    {
      goto LABEL_26;
    }

    if (v7 == 6)
    {
      goto LABEL_30;
    }

    if (v7 != 7)
    {
      v51 = swift_unknownObjectWeakLoadStrong();
      if (!v51)
      {
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      v52 = v51;
      [v51 setHidden:1];

      v14 = swift_unknownObjectWeakLoadStrong();
      if (!v14)
      {
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      goto LABEL_49;
    }

    v8 = swift_unknownObjectWeakLoadStrong();
    if (!v8)
    {
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v9 = v8;
    [v8 setHidden:1];

    v10 = swift_unknownObjectWeakLoadStrong();
    if (!v10)
    {
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v11 = v10;
    [v10 setHidden:1];

    v12 = swift_unknownObjectWeakLoadStrong();
    if (!v12)
    {
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    v13 = v12;
    [v12 setHidden:1];

    v14 = swift_unknownObjectWeakLoadStrong();
    if (v14)
    {
      goto LABEL_49;
    }

    __break(1u);
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      v36 = swift_unknownObjectWeakLoadStrong();
      if (!v36)
      {
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      v37 = v36;
      [v36 setHidden:0];

      v38 = swift_unknownObjectWeakLoadStrong();
      if (!v38)
      {
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      v39 = v38;
      [v38 setHidden:1];

      v14 = swift_unknownObjectWeakLoadStrong();
      if (v14)
      {
        goto LABEL_49;
      }

      __break(1u);
      goto LABEL_40;
    }

    v15 = swift_unknownObjectWeakLoadStrong();
    if (!v15)
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v16 = v15;
    [v15 setHidden:1];

    v14 = swift_unknownObjectWeakLoadStrong();
    if (v14)
    {
      goto LABEL_49;
    }

    __break(1u);
  }

  if (v7 == 2)
  {
    v17 = swift_unknownObjectWeakLoadStrong();
    if (!v17)
    {
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v18 = v17;
    [v17 setHidden:0];

    v19 = swift_unknownObjectWeakLoadStrong();
    if (!v19)
    {
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v20 = v19;
    [v19 setHidden:1];

    v14 = swift_unknownObjectWeakLoadStrong();
    if (!v14)
    {
      __break(1u);
LABEL_26:
      if (v7 != 4)
      {
        v53 = [v0 traitCollection];
        v54 = [v53 preferredContentSizeCategory];

        LOBYTE(v53) = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();
        if ((v53 & 1) == 0)
        {
          v55 = swift_unknownObjectWeakLoadStrong();
          if (!v55)
          {
LABEL_97:
            __break(1u);
            return;
          }

          v56 = v55;
          [v55 setHidden:0];
        }

        v57 = swift_unknownObjectWeakLoadStrong();
        if (v57)
        {
          v58 = v57;
          [v57 setHidden:0];

          v59 = swift_unknownObjectWeakLoadStrong();
          if (v59)
          {
            v60 = v59;
            [v59 setHidden:1];

            v61 = swift_unknownObjectWeakLoadStrong();
            if (v61)
            {
              v62 = v61;
              [v61 setHidden:1];

              v63 = swift_unknownObjectWeakLoadStrong();
              if (v63)
              {
                v64 = v63;
                [v63 setHidden:0];

                v65 = swift_unknownObjectWeakLoadStrong();
                if (v65)
                {
                  v66 = v65;
                  [v65 setEnabled:0];

                  v67 = swift_unknownObjectWeakLoadStrong();
                  if (v67)
                  {
                    v68 = v67;
                    v69 = [objc_opt_self() quaternaryLabelColor];
                    [v68 setBackgroundColor:v69];

                    v70 = swift_unknownObjectWeakLoadStrong();
                    if (v70)
                    {
                      v33 = v70;
                      v34 = GKGameCenterUIFrameworkBundle();
                      v72._countAndFlagsBits = 0xE000000000000000;
                      v35._object = 0x80000001000433B0;
                      v35._countAndFlagsBits = 0xD00000000000001ELL;
                      goto LABEL_62;
                    }

                    goto LABEL_96;
                  }

LABEL_95:
                  __break(1u);
LABEL_96:
                  __break(1u);
                  goto LABEL_97;
                }

                goto LABEL_93;
              }

              goto LABEL_90;
            }

            goto LABEL_87;
          }

          goto LABEL_83;
        }

        goto LABEL_76;
      }

      v21 = swift_unknownObjectWeakLoadStrong();
      if (!v21)
      {
        goto LABEL_74;
      }

      v22 = v21;
      [v21 setHidden:1];

      v14 = swift_unknownObjectWeakLoadStrong();
      if (!v14)
      {
        __break(1u);
LABEL_30:
        v23 = swift_unknownObjectWeakLoadStrong();
        if (v23)
        {
          v24 = v23;
          [v23 setHidden:1];

          v25 = swift_unknownObjectWeakLoadStrong();
          if (v25)
          {
            v26 = v25;
            [v25 setHidden:0];

            v27 = swift_unknownObjectWeakLoadStrong();
            if (v27)
            {
              v28 = v27;
              [v27 setEnabled:0];

              v29 = swift_unknownObjectWeakLoadStrong();
              if (v29)
              {
                v30 = v29;
                v31 = [objc_opt_self() quaternaryLabelColor];
                [v30 setBackgroundColor:v31];

                v32 = swift_unknownObjectWeakLoadStrong();
                if (v32)
                {
                  v33 = v32;
                  v34 = GKGameCenterUIFrameworkBundle();
                  v72._countAndFlagsBits = 0xE000000000000000;
                  v35._countAndFlagsBits = 0xD000000000000022;
                  v35._object = 0x8000000100043380;
LABEL_62:
                  v75.value._countAndFlagsBits = 0;
                  v75.value._object = 0;
                  v71.super.isa = v34;
                  v76._countAndFlagsBits = 0;
                  v76._object = 0xE000000000000000;
                  sub_100041180(v35, v75, v71, v76, v72);

                  v73 = sub_100041AF0();

                  [v33 setTitle:v73 forState:2];

                  goto LABEL_63;
                }

                goto LABEL_91;
              }

              goto LABEL_88;
            }

            goto LABEL_84;
          }

          goto LABEL_77;
        }

        goto LABEL_68;
      }
    }

LABEL_49:
    v50 = "setHidden:";
    goto LABEL_50;
  }

LABEL_40:
  v40 = swift_unknownObjectWeakLoadStrong();
  if (!v40)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v41 = v40;
  [v40 setHidden:0];

  v42 = swift_unknownObjectWeakLoadStrong();
  if (!v42)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v43 = v42;
  [v42 setHidden:1];

  v44 = swift_unknownObjectWeakLoadStrong();
  if (!v44)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v45 = v44;
  [v44 setHidden:0];

  v46 = swift_unknownObjectWeakLoadStrong();
  if (!v46)
  {
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v47 = v46;
  [v46 setHidden:0];

  v48 = swift_unknownObjectWeakLoadStrong();
  if (!v48)
  {
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v49 = v48;
  [v48 setEnabled:1];

  v14 = swift_unknownObjectWeakLoadStrong();
  if (!v14)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v50 = "setEnabled:";
LABEL_50:
  v73 = v14;
  [v14 v50];
LABEL_63:
}

void sub_10000BC98()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_30;
  }

  v2 = Strong;
  [Strong setHidden:1];

  v3 = swift_unknownObjectWeakLoadStrong();
  if (!v3)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v4 = v3;
  [v3 setHidden:1];

  v5 = swift_unknownObjectWeakLoadStrong();
  if (!v5)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v6 = v5;
  [v5 setHidden:1];

  v7 = swift_unknownObjectWeakLoadStrong();
  if (!v7)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v8 = v7;
  [v7 setHidden:1];

  v9 = *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_inviteCardState);
  if (v9 <= 2)
  {
    goto LABEL_9;
  }

  if (v9 - 3 < 4)
  {
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      goto LABEL_22;
    }

    __break(1u);
LABEL_9:
    if (v9 - 1 < 2)
    {
      v11 = swift_unknownObjectWeakLoadStrong();
      if (v11)
      {
        v12 = v11;
        [v11 setHidden:0];

        v13 = swift_unknownObjectWeakLoadStrong();
        if (v13)
        {
          v14 = v13;
          [v13 setHidden:1];

          v15 = swift_unknownObjectWeakLoadStrong();
          if (v15)
          {
            v29 = v15;
            [v15 setHidden:0];
LABEL_23:

            return;
          }

          goto LABEL_35;
        }

LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v10 = swift_unknownObjectWeakLoadStrong();
    if (!v10)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

LABEL_22:
    v29 = v10;
    [v10 setHidden:1];
    goto LABEL_23;
  }

  if (v9 != 7)
  {
    v22 = swift_unknownObjectWeakLoadStrong();
    if (v22)
    {
      v23 = v22;
      [v22 setHidden:0];

      v24 = swift_unknownObjectWeakLoadStrong();
      if (v24)
      {
        v25 = v24;
        v26 = GKGameCenterUIFrameworkBundle();
        v28._countAndFlagsBits = 0xE000000000000000;
        v31._object = 0x8000000100043350;
        v31._countAndFlagsBits = 0xD000000000000027;
        v32.value._countAndFlagsBits = 0;
        v32.value._object = 0;
        v27.super.isa = v26;
        v33._countAndFlagsBits = 0;
        v33._object = 0xE000000000000000;
        sub_100041180(v31, v32, v27, v33, v28);

        v29 = sub_100041AF0();

        [v25 setText:v29];

        goto LABEL_23;
      }

      goto LABEL_40;
    }

    goto LABEL_38;
  }

  v16 = swift_unknownObjectWeakLoadStrong();
  if (!v16)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v17 = v16;
  [v16 setHidden:1];

  v18 = swift_unknownObjectWeakLoadStrong();
  if (!v18)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v19 = v18;
  [v18 setHidden:1];

  v20 = swift_unknownObjectWeakLoadStrong();
  if (!v20)
  {
LABEL_41:
    __break(1u);
    return;
  }

  v21 = v20;
  [v20 setHidden:0];

  sub_10000D2A8();
}

void sub_10000BFE0()
{
  v1 = *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_inviteCardState);
  if (v1 > 4)
  {
    if (v1 - 7 < 2)
    {
      return;
    }

    if (v1 == 5)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        return;
      }

      v3 = Strong;
      v5 = 0xD000000000000031;
      v7 = "FRIEND_REQUEST_CARD_SUBTITLE_WHEN_INVITE_ACCEPTED";
LABEL_15:
      v4 = (v7 - 32);
      goto LABEL_16;
    }

LABEL_11:
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v3 = v8;
      v4 = "N_ALREADY_FRIENDS";
      v5 = 0xD00000000000001CLL;
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  if (v1 >= 3)
  {
    if (v1 != 3)
    {
      v9 = swift_unknownObjectWeakLoadStrong();
      if (!v9)
      {
        goto LABEL_22;
      }

      v3 = v9;
      v5 = 0xD000000000000031;
      v7 = "FRIEND_REQUEST_CARD_SUBTITLE_WHEN_ALREADY_FRIENDS";
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  v2 = swift_unknownObjectWeakLoadStrong();
  if (!v2)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v3 = v2;
  v4 = "FRIEND_REQUEST_CARD_SUBTITLE";
  v5 = 0xD000000000000023;
LABEL_16:
  v10 = GKGameCenterUIFrameworkBundle();
  v12._countAndFlagsBits = 0xE000000000000000;
  v15._object = (v4 | 0x8000000000000000);
  v15._countAndFlagsBits = v5;
  v16.value._countAndFlagsBits = 0;
  v16.value._object = 0;
  v11.super.isa = v10;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  sub_100041180(v15, v16, v11, v17, v12);

  v13 = sub_100041AF0();

  [v3 setText:v13];
}

void sub_10000C1B0(uint64_t a1)
{
  v3 = sub_100039914();
  if (!v3 || (v4 = v3, v5 = [v3 activeConversation], v4, !v5))
  {
LABEL_16:
    v33 = *(a1 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendPlayer);
    if (v33 && (v34 = [v33 displayNameWithOptions:0]) != 0)
    {
      v80 = v1;
      v35 = v34;
      sub_100041B20();
    }

    else
    {
      if (!*(a1 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendNickname + 8))
      {
LABEL_28:
        *(v1 + OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_inviteCardState) = 1;
        sub_10000AC8C();
        return;
      }

      v80 = v1;
      v36 = *(a1 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendNickname);
    }

    v37 = objc_allocWithZone(NSMutableAttributedString);
    v38 = sub_100041AF0();
    v39 = [v37 initWithString:v38];

    sub_100002D08(&qword_10005C9C8, &qword_100045CD8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100045AE0;
    *(inited + 32) = NSFontAttributeName;
    v41 = objc_opt_self();
    v78 = NSFontAttributeName;
    v42 = v39;
    v43 = [v41 _gkPreferredFontForTextStyle:UIFontTextStyleFootnote symbolicTraits:2];
    v44 = sub_10000EA78(0, &qword_10005C9D0, UIFont_ptr);
    *(inited + 64) = v44;
    *(inited + 40) = v43;
    v45 = sub_10000E6C8(inited);
    swift_setDeallocating();
    sub_10000E9F0(inited + 32, &unk_10005C9D8, &qword_100045CE0);
    type metadata accessor for Key(0);
    sub_10000E944(&qword_10005C570, type metadata accessor for Key);
    v46 = v42;
    v76._object = v45;
    isa = sub_100041A70().super.isa;
    [v46 addAttributes:isa range:{0, objc_msgSend(v46, "length")}];

    v48 = GKGameCenterUIFrameworkBundle();
    v76._countAndFlagsBits = 0xE000000000000000;
    v84._countAndFlagsBits = 0xD000000000000020;
    v84._object = 0x8000000100043FE0;
    v88.value._countAndFlagsBits = 0;
    v88.value._object = 0;
    v49.super.isa = v48;
    v92._countAndFlagsBits = 0;
    v92._object = 0xE000000000000000;
    sub_100041180(v84, v88, v49, v92, v76);

    v50 = objc_allocWithZone(NSMutableAttributedString);
    v51 = sub_100041AF0();

    v52 = [v50 initWithString:v51];

    v53 = swift_initStackObject();
    *(v53 + 16) = xmmword_100045AE0;
    *(v53 + 32) = v78;
    v54 = [v41 preferredFontForTextStyle:UIFontTextStyleFootnote];
    *(v53 + 64) = v44;
    *(v53 + 40) = v54;
    sub_10000E6C8(v53);
    swift_setDeallocating();
    sub_10000E9F0(v53 + 32, &unk_10005C9D8, &qword_100045CE0);
    v55 = sub_100041A70().super.isa;
    [v52 addAttributes:v55 range:{0, objc_msgSend(v52, "length")}];

    [v46 appendAttributedString:v52];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v57 = Strong;
      [Strong setAttributedText:v46];

      v58 = swift_unknownObjectWeakLoadStrong();
      if (v58)
      {
        v59 = v58;
        v60 = GKGameCenterUIFrameworkBundle();
        v77._countAndFlagsBits = 0xE000000000000000;
        v85._countAndFlagsBits = 0xD00000000000001DLL;
        v85._object = 0x8000000100044010;
        v89.value._countAndFlagsBits = 0;
        v89.value._object = 0;
        v61.super.isa = v60;
        v93._countAndFlagsBits = 0;
        v93._object = 0xE000000000000000;
        sub_100041180(v85, v89, v61, v93, v77);

        v62 = sub_100041AF0();

        [v59 setText:v62];

        v63 = swift_unknownObjectWeakLoadStrong();
        if (v63)
        {
          v64 = v63;
          [v63 setUserInteractionEnabled:1];

          v65 = objc_allocWithZone(UITapGestureRecognizer);
          v66 = v80;
          v67 = [v65 initWithTarget:v66 action:"friendAvatarPressed:"];
          v68 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v66 action:"friendAvatarPressed:"];

          v69 = swift_unknownObjectWeakLoadStrong();
          if (v69)
          {
            v70 = v69;
            [v69 addGestureRecognizer:v67];

            v71 = swift_unknownObjectWeakLoadStrong();
            if (v71)
            {
              v72 = v71;
              [v71 setUserInteractionEnabled:1];

              v73 = swift_unknownObjectWeakLoadStrong();

              if (v73)
              {

                [v73 addGestureRecognizer:v68];

                v1 = v80;
                goto LABEL_28;
              }

LABEL_34:
              __break(1u);
              goto LABEL_35;
            }

LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

LABEL_31:
        __break(1u);
        goto LABEL_32;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_31;
  }

  v6 = [v5 recipientAddresses];
  v7 = sub_100041C20();

  v8 = *(v7 + 16);

  if (v8 < 2 || (v9 = (a1 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCodeUsageCount), (*(a1 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCodeUsageCount + 8) & 1) != 0) || (v10 = *v9, *v9 < 1))
  {

    goto LABEL_16;
  }

  *(v1 + OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_inviteCardState) = 2;
  sub_10000AC8C();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (!v11)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v12 = v11;
  v13 = GKGameCenterUIFrameworkBundle();
  v74._countAndFlagsBits = 0xE000000000000000;
  v82._object = 0x8000000100044030;
  v82._countAndFlagsBits = 0xD00000000000001ALL;
  v86.value._countAndFlagsBits = 0;
  v86.value._object = 0;
  v14.super.isa = v13;
  v90._countAndFlagsBits = 0;
  v90._object = 0xE000000000000000;
  sub_100041180(v82, v86, v14, v90, v74);

  sub_100002D08(&qword_10005C9C0, &qword_100045CD0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100045AE0;
  *(v15 + 56) = &type metadata for Int;
  *(v15 + 64) = &protocol witness table for Int;
  *(v15 + 32) = v10;
  sub_100041B30();

  v16 = sub_100041AF0();

  [v12 setText:v16];

  v17 = swift_unknownObjectWeakLoadStrong();
  if (!v17)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v18 = v17;
  v19 = GKGameCenterUIFrameworkBundle();
  v75._countAndFlagsBits = 0xE000000000000000;
  v83._countAndFlagsBits = 0xD00000000000001CLL;
  v83._object = 0x8000000100044050;
  v87.value._countAndFlagsBits = 0;
  v87.value._object = 0;
  v20.super.isa = v19;
  v91._countAndFlagsBits = 0;
  v91._object = 0xE000000000000000;
  sub_100041180(v83, v87, v20, v91, v75);

  v21 = sub_100041AF0();

  [v18 setText:v21];

  v22 = swift_unknownObjectWeakLoadStrong();
  if (!v22)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v23 = v22;
  [v22 setUserInteractionEnabled:1];

  v24 = objc_allocWithZone(UITapGestureRecognizer);
  v25 = v1;
  v26 = [v24 initWithTarget:v25 action:"viewGameCenterFriendsTapped:"];
  v27 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v25 action:"viewGameCenterFriendsTapped:"];

  v28 = swift_unknownObjectWeakLoadStrong();
  if (!v28)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v29 = v28;
  [v28 addGestureRecognizer:v26];

  v30 = swift_unknownObjectWeakLoadStrong();
  if (!v30)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v31 = v30;
  [v30 setUserInteractionEnabled:1];

  v32 = swift_unknownObjectWeakLoadStrong();
  if (!v32)
  {
LABEL_40:
    __break(1u);
    return;
  }

  v79 = v32;
  [v32 addGestureRecognizer:v27];
}

void sub_10000CB8C(uint64_t a1, uint64_t a2)
{
  if (!a2 || (v3 = sub_100041AF0(), v4 = [objc_opt_self() systemImageNamed:v3], v3, !v4) || (v5 = objc_msgSend(objc_opt_self(), "configurationWithScale:", 1), v6 = objc_msgSend(v4, "imageWithConfiguration:", v5), v4, v5, !v6))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v39 = Strong;
      [Strong setHidden:1];

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_20;
  }

  v39 = v6;
  v7 = objc_allocWithZone(NSMutableAttributedString);
  v8 = sub_100041AF0();
  v9 = [v7 initWithString:v8];

  sub_100002D08(&qword_10005C9C8, &qword_100045CD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100045AE0;
  *(inited + 32) = NSFontAttributeName;
  v11 = objc_opt_self();
  v12 = qword_10005C4F0;
  v13 = NSFontAttributeName;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = [v11 _gkPreferredFontForTextStyle:qword_10005FF40 symbolicTraits:2];
  *(inited + 64) = sub_10000EA78(0, &qword_10005C9D0, UIFont_ptr);
  *(inited + 40) = v14;
  sub_10000E6C8(inited);
  swift_setDeallocating();
  sub_10000E9F0(inited + 32, &unk_10005C9D8, &qword_100045CE0);
  v15 = 1 << *(v2 + OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_inviteCardState);
  if ((v15 & 0x178) != 0)
  {

    v41._countAndFlagsBits = 32;
    v41._object = 0xE100000000000000;
    sub_100041B80(v41);
    v16 = objc_allocWithZone(NSMutableAttributedString);
    v17 = sub_100041AF0();

    v18 = [v16 initWithString:v17];

    type metadata accessor for Key(0);
    sub_10000E944(&qword_10005C570, type metadata accessor for Key);
    v19 = v18;
    isa = sub_100041A70().super.isa;
    [v19 addAttributes:isa range:{0, objc_msgSend(v19, "length")}];

    v21 = [objc_opt_self() textAttachmentWithImage:v39];
    sub_10000EA78(0, &qword_10005C9E8, NSMutableAttributedString_ptr);
    v22 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment:v21];
    v23 = swift_initStackObject();
    *(v23 + 16) = xmmword_100045AE0;
    *(v23 + 32) = NSForegroundColorAttributeName;
    v24 = objc_opt_self();
    v25 = NSForegroundColorAttributeName;
    v26 = [v24 tertiaryLabelColor];
    *(v23 + 64) = sub_10000EA78(0, &qword_10005C9F0, UIColor_ptr);
    *(v23 + 40) = v26;
    sub_10000E6C8(v23);
    swift_setDeallocating();
    sub_10000E9F0(v23 + 32, &unk_10005C9D8, &qword_100045CE0);
    v27 = sub_100041A70().super.isa;
    [v22 addAttributes:v27 range:{0, objc_msgSend(v22, "length")}];

    [v19 appendAttributedString:v22];
    v28 = swift_unknownObjectWeakLoadStrong();
    if (v28)
    {
      v29 = v28;
      [v28 setAttributedText:v19];

      v30 = swift_unknownObjectWeakLoadStrong();
      if (v30)
      {
        v31 = v30;
        [v30 setUserInteractionEnabled:1];

        v32 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"friendAvatarPressed:"];
        v33 = swift_unknownObjectWeakLoadStrong();
        if (v33)
        {
          v34 = v33;

          [v34 addGestureRecognizer:v32];

LABEL_14:
          return;
        }

        goto LABEL_22;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if ((v15 & 7) == 0)
  {

    goto LABEL_14;
  }

  type metadata accessor for Key(0);
  sub_10000E944(&qword_10005C570, type metadata accessor for Key);
  v36 = sub_100041A70().super.isa;
  [v9 addAttributes:v36 range:{0, objc_msgSend(v9, "length")}];

  v37 = swift_unknownObjectWeakLoadStrong();
  if (v37)
  {
    v38 = v37;

    [v38 setAttributedText:v9];

    return;
  }

LABEL_23:
  __break(1u);
}

void sub_10000D2A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_playerModel);
  if (!v1)
  {
    sub_10000D4C4();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      goto LABEL_11;
    }

    __break(1u);
LABEL_9:
    if (v2)
    {
      v13 = swift_unknownObjectWeakLoadStrong();
      if (v13)
      {
        v4 = v13;
        v8 = "LERT_MESSAGE_EXPIRED";
        v5 = 0xD000000000000019;
        goto LABEL_13;
      }

LABEL_26:
      __break(1u);
      return;
    }

    sub_10000D4C4();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_24;
    }

LABEL_11:
    v4 = Strong;
    v5 = 0xD00000000000002ELL;
    v6 = "FRIEND_REQUEST_CARD_SERVER_COMMUNICATION_ERROR";
    goto LABEL_12;
  }

  v2 = *(v1 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestErrorType);
  if (v2 <= 1)
  {
    goto LABEL_9;
  }

  if (v2 == 2)
  {
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v4 = v11;
      v5 = 0xD000000000000024;
      v6 = "FRIEND_REQUEST_ALERT_MESSAGE_EXPIRED";
      goto LABEL_12;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v2 != 3)
  {
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v4 = v12;
      v8 = "ARD_SERVER_COMMUNICATION_ERROR";
      v5 = 0xD000000000000018;
      goto LABEL_13;
    }

    goto LABEL_25;
  }

  v3 = swift_unknownObjectWeakLoadStrong();
  if (!v3)
  {
    goto LABEL_23;
  }

  v4 = v3;
  v5 = 0xD000000000000024;
  v6 = "FRIEND_REQUEST_ALERT_MESSAGE_INVALID";
LABEL_12:
  v8 = (v6 - 32);
LABEL_13:
  v9 = GKGameCenterUIFrameworkBundle();
  v14._countAndFlagsBits = 0xE000000000000000;
  v17._object = (v8 | 0x8000000000000000);
  v17._countAndFlagsBits = v5;
  v18.value._countAndFlagsBits = 0;
  v18.value._object = 0;
  v10.super.isa = v9;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  sub_100041180(v17, v18, v10, v19, v14);

  v15 = sub_100041AF0();

  [v4 setText:v15];
}

void sub_10000D4C4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = Strong;
  [Strong setHidden:0];

  v3 = swift_unknownObjectWeakLoadStrong();
  if (!v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3;
  [v3 setUserInteractionEnabled:1];

  v5 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"tryAgainPressed:"];
  v6 = swift_unknownObjectWeakLoadStrong();
  if (!v6)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v7 = v6;
  [v6 addGestureRecognizer:v5];
}

void sub_10000D5B0(void *a1)
{
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  LODWORD(v3) = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();
  if (!v3)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = objc_opt_self();
      v9 = [v8 _preferredFontForTextStyle:UIFontTextStyleHeadline design:UIFontDescriptorSystemDesignRounded weight:UIFontWeightRegular];
      [v7 setFont:v9];

      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v11 = v10;
        [a1 stats];
        sub_100041FB0();
        v12 = sub_100041AF0();

        [v11 setText:v12];

        v13 = swift_unknownObjectWeakLoadStrong();
        if (v13)
        {
          v14 = v13;
          v15 = [v8 _preferredFontForTextStyle:UIFontTextStyleHeadline design:UIFontDescriptorSystemDesignRounded weight:UIFontWeightRegular];
          [v14 setFont:v15];

          v16 = swift_unknownObjectWeakLoadStrong();
          if (v16)
          {
            v17 = v16;
            [a1 stats];
            sub_100041FB0();
            v18 = sub_100041AF0();

            [v17 setText:v18];

            v19 = swift_unknownObjectWeakLoadStrong();
            if (v19)
            {
              v20 = v19;
              v21 = [v8 _preferredFontForTextStyle:UIFontTextStyleHeadline design:UIFontDescriptorSystemDesignRounded weight:UIFontWeightRegular];
              [v20 setFont:v21];

              v22 = swift_unknownObjectWeakLoadStrong();
              if (v22)
              {
                v23 = v22;
                [a1 stats];
                sub_100041FB0();
                v24 = sub_100041AF0();

                [v23 setText:v24];

                v25 = swift_unknownObjectWeakLoadStrong();
                if (v25)
                {
                  v26 = v25;
                  v27 = GKGameCenterUIFrameworkBundle();
                  v45._countAndFlagsBits = 0xE000000000000000;
                  v52._countAndFlagsBits = 0xD00000000000001CLL;
                  v52._object = 0x8000000100043EB0;
                  v55.value._countAndFlagsBits = 0;
                  v55.value._object = 0;
                  v28.super.isa = v27;
                  v58._countAndFlagsBits = 0;
                  v58._object = 0xE000000000000000;
                  sub_100041180(v52, v55, v28, v58, v45);

                  sub_100002D08(&qword_10005C9C0, &qword_100045CD0);
                  v29 = swift_allocObject();
                  *(v29 + 16) = xmmword_100045AE0;
                  [a1 stats];
                  *(v29 + 56) = &type metadata for Int;
                  *(v29 + 64) = &protocol witness table for Int;
                  *(v29 + 32) = v49;
                  sub_100041B30();

                  v30 = sub_100041AF0();

                  [v26 setText:v30];

                  v31 = swift_unknownObjectWeakLoadStrong();
                  if (v31)
                  {
                    v32 = v31;
                    v33 = GKGameCenterUIFrameworkBundle();
                    v46._countAndFlagsBits = 0xE000000000000000;
                    v53._countAndFlagsBits = 0xD000000000000018;
                    v53._object = 0x8000000100043ED0;
                    v56.value._countAndFlagsBits = 0;
                    v56.value._object = 0;
                    v34.super.isa = v33;
                    v59._countAndFlagsBits = 0;
                    v59._object = 0xE000000000000000;
                    sub_100041180(v53, v56, v34, v59, v46);

                    v35 = swift_allocObject();
                    *(v35 + 16) = xmmword_100045AE0;
                    [a1 stats];
                    *(v35 + 56) = &type metadata for Int;
                    *(v35 + 64) = &protocol witness table for Int;
                    *(v35 + 32) = v50;
                    sub_100041B30();

                    v36 = sub_100041AF0();

                    [v32 setText:v36];

                    v37 = swift_unknownObjectWeakLoadStrong();
                    if (v37)
                    {
                      v38 = v37;
                      v39 = GKGameCenterUIFrameworkBundle();
                      v47._countAndFlagsBits = 0xE000000000000000;
                      v54._object = 0x8000000100043EF0;
                      v54._countAndFlagsBits = 0xD000000000000011;
                      v57.value._countAndFlagsBits = 0;
                      v57.value._object = 0;
                      v40.super.isa = v39;
                      v60._countAndFlagsBits = 0;
                      v60._object = 0xE000000000000000;
                      sub_100041180(v54, v57, v40, v60, v47);

                      v41 = swift_allocObject();
                      *(v41 + 16) = xmmword_100045AE0;
                      [a1 stats];
                      *(v41 + 56) = &type metadata for Int;
                      *(v41 + 64) = &protocol witness table for Int;
                      *(v41 + 32) = v49;
                      sub_100041B30();

                      v42 = sub_100041AF0();

                      [v38 setText:v42];

                      v43 = swift_unknownObjectWeakLoadStrong();
                      if (v43)
                      {
                        v44 = v43;
                        [v43 setHidden:0];

                        return;
                      }

                      goto LABEL_27;
                    }

LABEL_26:
                    __break(1u);
LABEL_27:
                    __break(1u);
                    return;
                  }

LABEL_25:
                  __break(1u);
                  goto LABEL_26;
                }

LABEL_24:
                __break(1u);
                goto LABEL_25;
              }

LABEL_23:
              __break(1u);
              goto LABEL_24;
            }

LABEL_22:
            __break(1u);
            goto LABEL_23;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v5 = swift_unknownObjectWeakLoadStrong();
  if (!v5)
  {
    __break(1u);
    goto LABEL_18;
  }

  v48 = v5;
  [v5 setHidden:1];
}

id sub_10000DCD8(uint64_t a1, uint64_t a2, void *a3)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_topMostConstriant] = 0;
  *&v3[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_centerStackView] = 0;
  *&v3[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_playerModel] = 0;
  *&v3[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_profileVisibility] = 2;
  v3[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_inviteCardState] = 0;
  *&v3[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_sender] = 0;
  v3[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_isSenderProfilePublic] = 2;
  v3[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_inviteCardViewer] = 0;
  v6 = &v3[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_onFetchedUrl];
  *v6 = 0;
  v6[1] = 0;
  if (a2)
  {
    v7 = sub_100041AF0();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for FriendRequestCardViewController();
  v8 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", v7, a3);

  return v8;
}

id sub_10000E068(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_topMostConstriant] = 0;
  *&v1[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_centerStackView] = 0;
  *&v1[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_playerModel] = 0;
  *&v1[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_profileVisibility] = 2;
  v1[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_inviteCardState] = 0;
  *&v1[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_sender] = 0;
  v1[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_isSenderProfilePublic] = 2;
  v1[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_inviteCardViewer] = 0;
  v3 = &v1[OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_onFetchedUrl];
  v4 = type metadata accessor for FriendRequestCardViewController();
  *v3 = 0;
  v3[1] = 0;
  v7.receiver = v1;
  v7.super_class = v4;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

uint64_t getEnumTagSinglePayload for FriendRequestCardViewController.InviteCardViewer(unsigned __int8 *a1, unsigned int a2)
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

uint64_t getEnumTagSinglePayload for FriendRequestCardViewController.InviteCardUIType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FriendRequestCardViewController.InviteCardUIType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000E5D0()
{
  result = qword_10005C9B0;
  if (!qword_10005C9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C9B0);
  }

  return result;
}

unint64_t sub_10000E628()
{
  result = qword_10005C9B8;
  if (!qword_10005C9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005C9B8);
  }

  return result;
}

uint64_t sub_10000E67C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100055818;
  v6._object = a2;
  v4 = sub_100041FA0(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10000E6C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002D08(&qword_10005C9F8, &qword_100045CE8);
    v3 = sub_100041F80();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000E7D0(v4, &v11);
      v5 = v11;
      result = sub_10002FEFC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10000E840(&v12, (v3[7] + 32 * result));
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

uint64_t sub_10000E7D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D08(&unk_10005C9D8, &qword_100045CE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_10000E840(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000E850(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000E868()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000E8A8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000E8F4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000E944(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10000E98C()
{
  result = qword_10005CA28;
  if (!qword_10005CA28)
  {
    sub_1000025E8(&qword_10005CA20, qword_100045D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005CA28);
  }

  return result;
}

uint64_t sub_10000E9F0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002D08(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000EA50(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000EA78(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_10000EAC0()
{
  v1 = sub_100041A10();
  v25 = *(v1 - 8);
  v2 = *(v25 + 64);
  __chkstk_darwin(v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100041A30();
  v23 = *(v5 - 8);
  v24 = v5;
  v6 = *(v23 + 64);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100041A50();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v22 - v15;
  sub_10000EA78(0, &qword_10005CA10, OS_dispatch_queue_ptr);
  v17 = sub_100041D50();
  sub_100041A40();
  sub_100041A60();
  v22 = *(v10 + 8);
  v22(v14, v9);
  v18 = swift_allocObject();
  *(v18 + 16) = v0;
  aBlock[4] = sub_10000F37C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100012BD4;
  aBlock[3] = &unk_100055E90;
  v19 = _Block_copy(aBlock);
  v20 = v0;

  sub_100041A20();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000E944(&qword_10005CA18, &type metadata accessor for DispatchWorkItemFlags);
  sub_100002D08(&qword_10005CA20, qword_100045D00);
  sub_10000E98C();
  sub_100041E60();
  sub_100041D20();
  _Block_release(v19);

  (*(v25 + 8))(v4, v1);
  (*(v23 + 8))(v8, v24);
  return (v22)(v16, v9);
}

void sub_10000EE6C()
{
  v1 = sub_100039914();
  if (v1)
  {
    v13 = v1;
    v2 = *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_inviteCardViewer);
    v3 = [objc_allocWithZone(GKReporter) init];
    v4 = v3;
    v5 = &GKSenderTappedViewPlayerProfileButton;
    if (v2)
    {
      v5 = &GKReceiverTappedViewPlayerProfileButton;
    }

    [v3 reportEvent:GKReporterDomainImprovedFriendingUIInteractions type:*v5];

    v6 = *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_playerModel);
    if (v6)
    {
      v7 = *(v6 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_player);
      if (v7)
      {
        v8 = [v7 internal];
        v9 = [v8 playerID];

        v10 = sub_100041B20();
        v12 = v11;
      }

      else
      {
        v10 = 0;
        v12 = 0;
      }

      sub_1000313A4(v10, v12);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10000EFBC()
{
  v1 = sub_100039914();
  if (v1)
  {
    v2 = v1;
    v3 = [objc_allocWithZone(GKReporter) init];
    [v3 reportEvent:GKReporterDomainImprovedFriendingUIInteractions type:GKViewFriendProfileButtonTapped];

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v5 = Strong, v6 = [Strong player], v5, v6))
    {
      v7 = [v6 internal];

      v8 = [v7 playerID];
      v9 = sub_100041B20();
      v11 = v10;
    }

    else
    {
      v9 = sub_100041B20();
      v11 = v12;
    }

    if (v9 == sub_100041B20() && v11 == v13)
    {
    }

    else
    {
      v15 = sub_100041FC0();

      if ((v15 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v16 = *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension31FriendRequestCardViewController_playerModel);
    if (v16)
    {
      v17 = OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendPlayerIDs;
      swift_beginAccess();
      v18 = *(v16 + v17);
      if (!v18 || !v18[2])
      {
        v19 = *(v16 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_player);
        if (v19)
        {
          v20 = v19;

          v21 = [v20 internal];

          v22 = [v21 playerID];
          v9 = sub_100041B20();
          v11 = v23;
        }

        goto LABEL_20;
      }

      if (v18[2])
      {
        v9 = v18[4];
        v11 = v18[5];

LABEL_20:
        sub_1000313A4(v9, v11);

        return;
      }

      __break(1u);
    }

    __break(1u);
  }
}

id sub_10000F264()
{
  v0 = [objc_allocWithZone(GKAPIReporter) init];
  v1 = sub_100041AF0();
  v2 = sub_100041AF0();
  v3 = sub_100041AF0();
  sub_1000073F0();
  v4 = sub_100041AF0();

  v5 = sub_100041AF0();
  [v0 recordClickWithAction:v1 targetId:v2 targetType:v3 pageId:v4 pageType:v5];

  return sub_1000056A8();
}

id sub_10000F544()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10000F5C8(uint64_t a1, uint64_t a2)
{
  v3 = *&v2[qword_10005D758];
  if (v3)
  {
    if (*(*&v2[qword_10005D760] + 16))
    {
      v6 = objc_opt_self();
      v7 = v3;

      v8.super.isa = sub_100041C10().super.isa;

      v9 = swift_allocObject();
      v9[2] = v2;
      v9[3] = a1;
      v9[4] = a2;
      v19 = sub_100010348;
      v20 = v9;
      aBlock = _NSConcreteStackBlock;
      v16 = 1107296256;
      v17 = sub_10000F9E4;
      v18 = &unk_100055F50;
      v10 = _Block_copy(&aBlock);
      v11 = v2;

      [v6 loadGameRecordsForPlayer:v7 bundleIDs:v8.super.isa withCompletionHandler:v10];
      _Block_release(v10);
    }

    else
    {
      v12 = swift_allocObject();
      v12[2] = v2;
      v12[3] = a1;
      v12[4] = a2;
      v19 = sub_1000102E4;
      v20 = v12;
      aBlock = _NSConcreteStackBlock;
      v16 = 1107296256;
      v17 = sub_10000FC5C;
      v18 = &unk_100055F00;
      v13 = _Block_copy(&aBlock);
      v8.super.isa = v3;
      v14 = v2;

      [(objc_class *)v8.super.isa loadGamesPlayedDetailsWithCompletionHandler:v13];
      _Block_release(v13);
    }
  }

  else
  {
    sub_100041F40();
    __break(1u);
  }
}

uint64_t sub_10000F840(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7)
  {
    do
    {
      v19 = a3;
      v20 = a2;
      v21 = a4;
      v8 = 0;
      a4 = (a1 & 0xC000000000000001);
      a2 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (a4)
        {
          v9 = sub_100041EC0();
        }

        else
        {
          if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v9 = *(a1 + 8 * v8 + 32);
        }

        v10 = v9;
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        v12 = [v9 internal];
        v13 = [v12 canBeIndexed];

        if (v13)
        {
          sub_100041EF0();
          v14 = _swiftEmptyArrayStorage[2];
          sub_100041F10();
          sub_100041F20();
          sub_100041F00();
        }

        else
        {
        }

        ++v8;
        if (v11 == v7)
        {
          a4 = v21;
          a2 = v20;
          a3 = v19;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      v15 = a3;
      v16 = sub_100041F50();
      a3 = v15;
      v7 = v16;
    }

    while (v16);
  }

LABEL_17:
  v17 = *(a3 + qword_10005D768);
  *(a3 + qword_10005D768) = _swiftEmptyArrayStorage;

  return a4(a2);
}

void sub_10000F9E4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_100010190();
  v6 = sub_100041C20();

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_10000FA84(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char *a5, uint64_t (*a6)(void))
{
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100041F50())
  {
    v23 = a5;
    v24 = a4;
    v25 = a6;
    v11 = 0;
    a6 = (a1 & 0xFFFFFFFFFFFFFF8);
    a5 = &unk_10005A000;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = sub_100041EC0();
      }

      else
      {
        if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v12 = *(a1 + 8 * v11 + 32);
      }

      v13 = v12;
      a4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v14 = [v12 internal];
      v15 = [v14 canBeIndexed];

      if (v15)
      {
        sub_100041EF0();
        v16 = _swiftEmptyArrayStorage[2];
        sub_100041F10();
        sub_100041F20();
        sub_100041F00();
      }

      else
      {
      }

      ++v11;
      if (a4 == i)
      {
        a6 = v25;
        a4 = v24;
        a5 = v23;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:
  v17 = qword_10005D768;
  v18 = *&a5[qword_10005D768];
  *&a5[qword_10005D768] = _swiftEmptyArrayStorage;

  v19 = *&a5[v17];
  if (v19 >> 62)
  {
    if (v19 < 0)
    {
      v22 = *&a5[v17];
    }

    v20 = sub_100041F50();
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *&a5[qword_10005D770] = v20;
  return a6(a4);
}

void sub_10000FC5C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_100010190();
  v7 = sub_100041C20();
  v8 = sub_100041B20();
  v10 = v9;

  v11 = a4;
  v6(v7, v8, v10, a4);
}

id sub_10000FD20(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for GamesModel();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_10000FD64()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GamesModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t _sSo12GKGameRecordC26GameCenterMessageExtensionE1loiySbAB_ABtFZ_0(void *a1, void *a2)
{
  v4 = sub_100002D08(&qword_10005CC90, qword_100045DE8);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v37 - v9;
  v11 = sub_100041280();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v37 - v18;
  __chkstk_darwin(v17);
  v21 = &v37 - v20;
  v22 = &unk_10005A000;
  v23 = [a1 lastPlayedDate];
  v38 = v21;
  if (v23)
  {
    v24 = v23;
    sub_100041270();

    v25 = v16;
    v26 = v8;
    v27 = a2;
    v28 = *(v12 + 32);
    v28(v10, v19, v11);
    v37 = *(v12 + 56);
    v37(v10, 0, 1, v11);
    v28(v21, v10, v11);
    v22 = &unk_10005A000;
    a2 = v27;
    v8 = v26;
    v16 = v25;
  }

  else
  {
    v37 = *(v12 + 56);
    v37(v10, 1, 1, v11);
    sub_100041250();
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      sub_100010354(v10);
    }
  }

  v29 = [a2 v22[259]];
  if (v29)
  {
    v30 = v29;
    sub_100041270();

    v31 = *(v12 + 32);
    v31(v8, v19, v11);
    v37(v8, 0, 1, v11);
    v31(v16, v8, v11);
    v32 = v38;
  }

  else
  {
    v37(v8, 1, 1, v11);
    sub_100041250();
    v33 = (*(v12 + 48))(v8, 1, v11);
    v32 = v38;
    if (v33 != 1)
    {
      sub_100010354(v8);
    }
  }

  v34 = sub_100041260();
  v35 = *(v12 + 8);
  v35(v16, v11);
  v35(v32, v11);
  return v34 & 1;
}

uint64_t sub_10001014C(uint64_t a1)
{
  result = sub_100010210(&qword_10005CA80);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100010190()
{
  result = qword_10005CA88;
  if (!qword_10005CA88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10005CA88);
  }

  return result;
}

uint64_t sub_100010210(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100010190();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for GamesModel()
{
  result = qword_10005CAC0;
  if (!qword_10005CAC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000102F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100010308()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100010354(uint64_t a1)
{
  v2 = sub_100002D08(&qword_10005CC90, qword_100045DE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10001054C(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ActionCell();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1000108E8(void *a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SenderCell();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1000109E8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t UICollectionView.dequeueSupplementaryView<A>(ofKind:for:)(uint64_t a1, void *a2)
{
  v5 = sub_100041AF0();
  sub_100002D08(&qword_10005C7F8, "Z1");
  sub_100041B40();
  v6 = sub_100041AF0();

  isa = sub_1000412C0().super.isa;
  v8 = [v2 dequeueReusableSupplementaryViewOfKind:v5 withReuseIdentifier:v6 forIndexPath:isa];

  result = swift_dynamicCastUnknownClass();
  if (!result)
  {

    sub_100041EB0(68);
    v10._countAndFlagsBits = 0xD00000000000002ELL;
    v10._object = 0x8000000100043550;
    sub_100041B80(v10);
    v11._countAndFlagsBits = a1;
    v11._object = a2;
    sub_100041B80(v11);
    v12._object = 0x8000000100043580;
    v12._countAndFlagsBits = 0xD000000000000012;
    sub_100041B80(v12);
    v13._countAndFlagsBits = sub_100041B40();
    sub_100041B80(v13);

    result = sub_100041F40();
    __break(1u);
  }

  return result;
}

uint64_t UICollectionView.dequeueCell<A>(for:)()
{
  sub_100002D08(&qword_10005C7F8, "Z1");
  sub_100041B40();
  v1 = sub_100041AF0();

  isa = sub_1000412C0().super.isa;
  v3 = [v0 dequeueReusableCellWithReuseIdentifier:v1 forIndexPath:isa];

  result = swift_dynamicCastUnknownClass();
  if (!result)
  {

    sub_100041EB0(42);

    v5._countAndFlagsBits = sub_100041B40();
    sub_100041B80(v5);

    result = sub_100041F40();
    __break(1u);
  }

  return result;
}

uint64_t static NIBLoadableView<>.nibName.getter()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = NSStringFromClass(ObjCClassFromMetadata);
  sub_100041B20();

  sub_1000024FC();
  v2 = sub_100041E30();

  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 16 + 16 * v3);
    v5 = *v4;
    v6 = v4[1];

    return v5;
  }

  else
  {

    __break(1u);
  }

  return result;
}

void UICollectionView.register<A>(_:)()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_100002D08(&qword_10005C7F8, "Z1");
  sub_100041B40();
  v2 = sub_100041AF0();

  [v0 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v2];
}

void UICollectionView.register<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(a3 + 8))(a2, a3);
  v9 = v8;
  v10 = sub_100041AF0();

  v11 = [objc_opt_self() nibWithNibName:v10 bundle:v9];

  v12 = v11;
  sub_100002D08(&qword_10005C7F8, "Z1");
  sub_100041B40();
  v13 = sub_100041AF0();

  [v4 registerNib:v12 forCellWithReuseIdentifier:v13];
}

uint64_t sub_1000110F0(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v3 = sub_100041100();
  v38 = *(v3 - 8);
  v4 = *(v38 + 64);
  v5 = __chkstk_darwin(v3);
  v41 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v42 = &v32 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v32 - v10;
  __chkstk_darwin(v9);
  v13 = &v32 - v12;
  result = sub_100041110();
  if (result)
  {
    v15 = result;
    v32 = v11;
    v33 = v13;
    v37 = *(result + 16);
    if (v37)
    {
      v16 = 0;
      v36 = v38 + 16;
      v34 = (v38 + 8);
      v40 = (v38 + 32);
      v17 = _swiftEmptyArrayStorage;
      v35 = v3;
      while (1)
      {
        if (v16 >= *(v15 + 16))
        {
          __break(1u);
          return result;
        }

        v18 = (*(v38 + 80) + 32) & ~*(v38 + 80);
        v19 = *(v38 + 72);
        (*(v38 + 16))(v42, v15 + v18 + v19 * v16, v3);
        if (sub_1000410E0() == a1 && v20 == v39)
        {
          break;
        }

        v21 = sub_100041FC0();

        if (v21)
        {
          goto LABEL_11;
        }

        result = (*v34)(v42, v3);
LABEL_5:
        if (v37 == ++v16)
        {
          goto LABEL_17;
        }
      }

LABEL_11:
      v22 = a1;
      v23 = *v40;
      (*v40)(v41, v42, v3);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100040198(0, v17[2] + 1, 1);
        v17 = v43;
      }

      v26 = v17[2];
      v25 = v17[3];
      if (v26 >= v25 >> 1)
      {
        sub_100040198(v25 > 1, v26 + 1, 1);
        v17 = v43;
      }

      v17[2] = v26 + 1;
      v27 = v17 + v18 + v26 * v19;
      v3 = v35;
      result = (v23)(v27, v41, v35);
      a1 = v22;
      goto LABEL_5;
    }

    v17 = _swiftEmptyArrayStorage;
LABEL_17:

    if (v17[2])
    {
      v28 = v38;
      v29 = v32;
      (*(v38 + 16))(v32, v17 + ((*(v28 + 80) + 32) & ~*(v28 + 80)), v3);

      v30 = v33;
      (*(v28 + 32))(v33, v29, v3);
      v31 = sub_1000410F0();
      (*(v28 + 8))(v30, v3);
      return v31;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id + infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:a2];
  [v3 appendAttributedString:a2];
  return v3;
}

id + infix(_:_:)(uint64_t a1)
{
  v1 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:a1];
  v2 = objc_allocWithZone(NSAttributedString);
  v3 = sub_100041AF0();
  v4 = [v2 initWithString:v3];

  [v1 appendAttributedString:v4];
  return v1;
}

__n128 sub_10001159C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000115B0(uint64_t a1, int a2)
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

uint64_t sub_1000115F8(uint64_t result, int a2, int a3)
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

uint64_t sub_10001166C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v65 = a2;
  v3 = sub_1000416F0();
  v59 = *(v3 - 8);
  v60 = v3;
  v4 = *(v59 + 64);
  __chkstk_darwin(v3);
  v58 = &v52[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_100002D08(&qword_10005CD30, &qword_100045FC8);
  v56 = *(v6 - 8);
  v57 = v6;
  v7 = *(v56 + 64);
  __chkstk_darwin(v6);
  v55 = &v52[-v8];
  v9 = sub_100002D08(&qword_10005CD38, &qword_100045FD0);
  v62 = *(v9 - 8);
  v63 = v9;
  v10 = *(v62 + 64);
  __chkstk_darwin(v9);
  v54 = &v52[-v11];
  v12 = sub_100002D08(&qword_10005CD40, &qword_100045FD8);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v64 = &v52[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v17 = &v52[-v16];
  v61 = a1;
  v18 = a1[1];
  v66 = *a1;
  v67 = v18;
  sub_1000024FC();

  v19 = sub_100041860();
  v32 = v20;
  v22 = v21;
  sub_100041790();
  v23 = sub_100041840();
  v25 = v24;
  v27 = v26;

  sub_100002550(v19, v32, v22 & 1);

  LODWORD(v66) = sub_100041720();
  v28 = sub_100041830();
  v30 = v29;
  LODWORD(v32) = v31;
  v34 = v33;
  sub_100002550(v23, v25, v27 & 1);

  if (v61[2])
  {
    v35 = v61[3];
    v36 = v61[4];

    v53 = v32;
    v32 = v55;
    sub_100041960();
    v37 = v58;
    sub_1000416E0();
    sub_100003214(&qword_10005CD50, &qword_10005CD30, &qword_100045FC8);
    sub_100011DBC();
    v61 = v34;
    v38 = v54;
    v39 = v57;
    v40 = v60;
    sub_100041890();
    (*(v59 + 8))(v37, v40);
    v41 = v32;
    LOBYTE(v32) = v53;
    (*(v56 + 8))(v41, v39);
    v43 = v62;
    v42 = v63;
    v44 = v38;
    v34 = v61;
    (*(v62 + 32))(v17, v44, v63);
    v45 = 0;
    v46 = v42;
    v47 = v43;
  }

  else
  {
    v45 = 1;
    v47 = v62;
    v46 = v63;
  }

  (*(v47 + 56))(v17, v45, 1, v46);
  v48 = v64;
  sub_100011CD4(v17, v64);
  v49 = v65;
  *v65 = v28;
  v49[1] = v30;
  *(v49 + 16) = v32 & 1;
  v49[3] = v34;
  v50 = sub_100002D08(&qword_10005CD48, &qword_100045FE0);
  sub_100011CD4(v48, v49 + *(v50 + 48));
  sub_100011D44(v28, v30, v32 & 1);

  sub_100011D54(v17);
  sub_100011D54(v48);
  sub_100002550(v28, v30, v32 & 1);
}

uint64_t sub_100011B70@<X0>(uint64_t a1@<X8>)
{
  sub_1000413B0();
  sub_1000413A0();
  sub_1000024FC();
  v2 = sub_100041860();
  v4 = v3;
  v6 = v5;
  sub_100041900();
  v7 = sub_100041830();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_100002550(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_100011C68@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  v7 = *(v1 + 32);
  *a1 = sub_100041690();
  *(a1 + 8) = 0x4020000000000000;
  *(a1 + 16) = 0;
  v4 = sub_100002D08(&qword_10005CD28, &qword_100045FC0);
  return sub_10001166C(v6, (a1 + *(v4 + 44)));
}

uint64_t sub_100011CD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002D08(&qword_10005CD40, &qword_100045FD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100011D44(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100011D54(uint64_t a1)
{
  v2 = sub_100002D08(&qword_10005CD40, &qword_100045FD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100011DBC()
{
  result = qword_10005CD58;
  if (!qword_10005CD58)
  {
    sub_1000416F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005CD58);
  }

  return result;
}

Swift::Int sub_100011E6C()
{
  v1 = *v0;
  sub_100042000();
  sub_100042010(v1 + 1);
  return sub_100042020();
}

Swift::Int sub_100011EE4()
{
  v1 = *v0;
  sub_100042000();
  sub_100042010(v1 + 1);
  return sub_100042020();
}

uint64_t sub_100011F28@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000122FC(*a1);
  *a2 = result;
  return result;
}

void sub_100011F64(void (*a1)(id, void))
{
  v3 = objc_opt_self();
  v4 = [v3 currentLocalPlayer];
  if (v4)
  {
    v11 = v4;
    if ([v4 isAuthenticated])
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    *(v1 + 16) = v5;
    if (a1)
    {
      v10 = v11;
      a1(v11, 0);

      v6 = v10;
    }

    else
    {
      v6 = v11;
    }
  }

  else
  {
    v7 = [v3 authenticatedLocalPlayers];
    v8 = sub_100041C20();

    if (*(v8 + 16))
    {
      sub_100012320(v8 + 32, v13);

      sub_10001237C();
      if (swift_dynamicCast())
      {
        *(v1 + 16) = 3;
        if (a1)
        {
          v9 = v12;
          a1(v12, 0);
        }

        else
        {
        }

        return;
      }
    }

    else
    {
    }

    *(v1 + 16) = 0;
    if (a1)
    {
      a1(0, 0);
    }
  }
}

uint64_t getEnumTagSinglePayload for LoadableModel.LoadingState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LoadableModel.LoadingState(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000122A8()
{
  result = qword_10005CE40;
  if (!qword_10005CE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005CE40);
  }

  return result;
}

uint64_t sub_1000122FC(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 4;
  }

  else
  {
    return (0x302010004uLL >> (8 * a1));
  }
}

uint64_t sub_100012320(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_10001237C()
{
  result = qword_10005CE48;
  if (!qword_10005CE48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10005CE48);
  }

  return result;
}

void sub_1000123C8(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v40 = sub_100041410();
  v4 = *(v40 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v40);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v37 - v9;
  sub_1000413E0();
  v11 = v2;
  v12 = sub_100041400();
  v13 = sub_100041CC0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412546;
    *(v14 + 4) = v11;
    *(v14 + 12) = 2112;
    *(v14 + 14) = v11;
    *v15 = v11;
    v15[1] = v11;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "%@ fetching player information using the playerModel: %@", v14, 0x16u);
    sub_100002D08(&unk_10005CA00, &unk_100045CF0);
    swift_arrayDestroy();
  }

  v17 = *(v4 + 8);
  v17(v10, v40);
  type metadata accessor for LocalPlayerAuthenticator();
  inited = swift_initStaticObject();
  v19 = &off_10005C000;
  v20 = "GameCenterMessageExtension.MessagesViewController" + 48;
  if (*(inited + 16) != 2 || !*&v11[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_player])
  {
    v38 = a1;
    sub_1000413E0();
    v21 = v11;
    v22 = sub_100041400();
    v23 = sub_100041CC0();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      *(v24 + 4) = v21;
      *v25 = v21;
      v26 = v21;
      _os_log_impl(&_mh_execute_header, v22, v23, "%@ Player was not authenticated or player was nil", v24, 0xCu);
      sub_10000E9F0(v25, &unk_10005CA00, &unk_100045CF0);

      v20 = "r";
    }

    v17(v8, v40);
    v19 = &off_10005C000;
    v27 = *&v21[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_playerGroup];
    [v27 setError:0];
    v28 = swift_allocObject();
    v28[2] = inited;
    v28[3] = v21;
    v28[4] = v27;
    v45 = sub_100019C4C;
    v46 = v28;
    aBlock = _NSConcreteStackBlock;
    v42 = *(v20 + 345);
    v43 = sub_100016ECC;
    v44 = &unk_1000562F8;
    v29 = _Block_copy(&aBlock);
    v30 = v21;
    v31 = v27;

    [v31 perform:v29];
    _Block_release(v29);

    a1 = v38;
  }

  v32 = *(v19[470] + v11);
  v33 = swift_allocObject();
  v33[2] = v11;
  v33[3] = a1;
  v33[4] = v39;
  v45 = sub_100019C58;
  v46 = v33;
  aBlock = _NSConcreteStackBlock;
  v42 = *(v20 + 345);
  v43 = sub_100012BD4;
  v44 = &unk_100056348;
  v34 = _Block_copy(&aBlock);
  v35 = v11;
  v36 = v32;

  [v36 notifyOnMainQueueWithBlock:v34];
  _Block_release(v34);
}

uint64_t sub_10001287C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (*(*(sub_100002D08(&qword_10005CA30, &unk_100046380) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v26 - v6;
  v8 = *(v2 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCode + 8);
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *(v2 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCode) & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v10 = objc_allocWithZone(GKFriendRequestURLModel);

    v11 = [v10 init];
    if (*(v2 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendSupportPageURL + 8))
    {
      v12 = *(v2 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendSupportPageURL);
      v13 = *(v2 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendSupportPageURL + 8);
    }

    v17 = sub_100041AF0();

    [v11 setFriendSupportPageURL:v17];

    v18 = sub_100041AF0();

    [v11 setFriendCode:v18];

    v27 = *(v2 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestState);
    sub_100041FB0();
    v19 = sub_100041AF0();

    [v11 setFriendRequestState:v19];

    v20 = [objc_opt_self() local];
    [v11 setInitiator:v20];

    v27 = a1;
    sub_100041FB0();
    v21 = sub_100041AF0();

    [v11 setFriendRequestVersion:v21];

    v22 = [objc_opt_self() _gkGenerateFriendRequestURL:v11];
    if (v22)
    {
      v23 = v22;
      sub_1000411E0();

      v24 = 0;
      v11 = v23;
    }

    else
    {
      v24 = 1;
    }

    v25 = sub_100041200();
    (*(*(v25 - 8) + 56))(v7, v24, 1, v25);
    return sub_100019B94(v7, a2);
  }

  else
  {
LABEL_7:
    v14 = sub_100041200();
    v15 = *(*(v14 - 8) + 56);

    return v15(a2, 1, 1, v14);
  }
}

uint64_t sub_100012BD4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_100012C18(uint64_t a1, uint64_t a2, int a3, void (*a4)(void), uint64_t a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v13 = sub_100041410();
  v63 = *(v13 - 8);
  v14 = *(v63 + 64);
  __chkstk_darwin(v13);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *&v6[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_player];
  if (!v17)
  {
    goto LABEL_17;
  }

  v64 = ObjectType;
  v65 = a3;
  v66 = a1;
  v67 = a2;
  v68 = a4;
  v18 = objc_opt_self();
  v19 = v17;
  v69 = [v18 local];
  if (![v69 isAuthenticated])
  {
LABEL_17:
    sub_100041F40();
    __break(1u);
    return;
  }

  v20 = [v69 internal];
  v21 = [v20 playerID];

  v22 = sub_100041B20();
  v24 = v23;

  v25 = [v19 internal];
  v26 = [v25 playerID];

  v27 = sub_100041B20();
  v29 = v28;

  if (v22 == v27 && v24 == v29)
  {
  }

  else
  {
    v31 = sub_100041FC0();

    if ((v31 & 1) == 0 && *&v6[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCode + 8])
    {
      v62 = *&v6[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCode];

      sub_1000413E0();
      v32 = v6;
      v33 = sub_100041400();
      v34 = sub_100041CC0();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v59 = v36;
        v60 = swift_slowAlloc();
        aBlock[0] = v60;
        *v35 = 138412546;
        *(v35 + 4) = v32;
        *v36 = v32;
        *(v35 + 12) = 2080;
        v37 = v32;
        v58 = v34;
        v38 = v37;
        v39 = [v37 description];
        v57 = v33;
        v40 = v39;
        v41 = sub_100041B20();
        v61 = v32;
        v43 = v42;

        v44 = sub_10003FBD0(v41, v43, aBlock);
        v32 = v61;

        *(v35 + 14) = v44;
        v45 = v57;
        _os_log_impl(&_mh_execute_header, v57, v58, "%@ ACCEPT friend request for playerModel: %s", v35, 0x16u);
        sub_10000E9F0(v59, &unk_10005CA00, &unk_100045CF0);

        sub_10000E8A8(v60);
      }

      else
      {
      }

      (*(v63 + 8))(v16, v13);
      v47 = v65;
      v48 = v64;
      v49 = sub_100041AF0();

      v50 = swift_allocObject();
      v51 = v47 & 1;
      *(v50 + 16) = v51;
      v52 = v66;
      v53 = v67;
      *(v50 + 24) = v32;
      *(v50 + 32) = v52;
      v54 = v68;
      *(v50 + 40) = v53;
      *(v50 + 48) = v54;
      *(v50 + 56) = a5;
      *(v50 + 64) = v48;
      aBlock[4] = sub_10001C1C8;
      aBlock[5] = v50;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000151F0;
      aBlock[3] = &unk_100056640;
      v55 = _Block_copy(aBlock);

      v56 = v32;

      [v69 acceptFriendRequestWithIdentifier:v49 sendPush:v51 handler:v55];

      _Block_release(v55);
      return;
    }
  }

  v68(0);

  v46 = v69;
}

void sub_1000131E8(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_100041410();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *&v5[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_player];
  if (!v16 || (v64 = v13, v65 = ObjectType, v66 = a1, v17 = objc_opt_self(), v18 = v16, v67 = [v17 local], !objc_msgSend(v67, "isAuthenticated")))
  {
    sub_100041F40();
    __break(1u);
    return;
  }

  if (v5[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestState] > 3u)
  {
    goto LABEL_11;
  }

  v62 = a2;
  v63 = a4;
  v19 = [v67 internal];
  v20 = [v19 playerID];

  v21 = sub_100041B20();
  v23 = v22;

  v24 = [v18 internal];
  v25 = [v24 playerID];

  v26 = sub_100041B20();
  v28 = v27;

  if (v21 == v26 && v23 == v28)
  {

    goto LABEL_11;
  }

  v29 = sub_100041FC0();

  v31 = v62;
  v30 = v63;
  if ((v29 & 1) != 0 || !*&v5[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCode + 8])
  {
LABEL_11:
    a3(0);

    v47 = v67;

    return;
  }

  v61 = *&v5[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCode];

  sub_1000413E0();
  v32 = v5;
  v33 = sub_100041400();
  v34 = sub_100041CC0();

  v60 = v34;
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v57 = v36;
    v58 = swift_slowAlloc();
    aBlock[0] = v58;
    v56 = v35;
    *v35 = 138412546;
    *(v35 + 4) = v32;
    *v36 = v32;
    *(v35 + 12) = 2080;
    v37 = v32;
    v59 = v32;
    v38 = v37;
    v39 = [v37 description];
    v55 = v33;
    v40 = v39;
    v41 = sub_100041B20();
    v43 = v42;

    v44 = v41;
    v30 = v63;
    v45 = sub_10003FBD0(v44, v43, aBlock);
    v31 = v62;

    v46 = v56;
    *(v56 + 14) = v45;
    v32 = v59;
    _os_log_impl(&_mh_execute_header, v33, v60, "%@ Reject friend request for playerModel: %s", v46, 0x16u);
    sub_10000E9F0(v57, &unk_10005CA00, &unk_100045CF0);

    sub_10000E8A8(v58);
  }

  else
  {
  }

  (*(v64 + 8))(v15, v11);
  v48 = sub_100041AF0();

  v49 = swift_allocObject();
  v50 = v65;
  v51 = v66;
  v49[2] = v32;
  v49[3] = v51;
  v49[4] = v31;
  v49[5] = a3;
  v49[6] = v30;
  v49[7] = v50;
  aBlock[4] = sub_10001C11C;
  aBlock[5] = v49;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000151F0;
  aBlock[3] = &unk_1000565C8;
  v52 = v32;
  v53 = _Block_copy(aBlock);

  v54 = v52;

  [v67 rejectFriendRequestWithIdentifier:v48 handler:v53];

  _Block_release(v53);
}

uint64_t sub_1000137CC(void *a1)
{
  v2 = OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_player;
  v3 = *(v1 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_player);
  *(v1 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_player) = a1;
  v4 = a1;

  v5 = *(v1 + v2);
  if (v5)
  {
    v6 = [v5 internal];
    v7 = [v6 playerID];

    v8 = sub_100041B20();
    v10 = v9;
  }

  else
  {

    v8 = 0;
    v10 = 0;
  }

  v11 = (v1 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_playerID);
  v12 = *(v1 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_playerID + 8);
  *v11 = v8;
  v11[1] = v10;
}

unint64_t sub_10001389C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100019B08(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1000138D0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100019B18(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100013908(unsigned __int8 a1)
{
  v2 = GKGameCenterUIFrameworkBundle();
  v3 = "PLAYER_CARD_GAMES";
  v4 = "LERT_MESSAGE_INVALID";
  v5 = "NO_NETWORK_ALERT_MESSAGE";
  if (a1 == 3)
  {
    v6 = 0xD000000000000024;
  }

  else
  {
    v5 = "ARD_SERVER_COMMUNICATION_ERROR";
    v6 = 0xD000000000000018;
  }

  if (a1 == 2)
  {
    v7 = 0xD000000000000024;
  }

  else
  {
    v4 = v5;
    v7 = v6;
  }

  if (a1)
  {
    v3 = "LERT_MESSAGE_EXPIRED";
    v8 = 0xD000000000000019;
  }

  else
  {
    v8 = 0xD00000000000002ELL;
  }

  if (a1 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (a1 <= 1u)
  {
    v10._countAndFlagsBits = v8;
  }

  else
  {
    v10._countAndFlagsBits = v7;
  }

  v14._countAndFlagsBits = 0xE000000000000000;
  v10._object = (v9 | 0x8000000000000000);
  v15.value._countAndFlagsBits = 0;
  v15.value._object = 0;
  v11.super.isa = v2;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v12 = sub_100041180(v10, v15, v11, v16, v14);

  return v12;
}

uint64_t sub_100013A74()
{
  v1 = v0;
  sub_100041EB0(148);
  v10._countAndFlagsBits = 0x6F43646E65697266;
  v10._object = 0xEC000000203A6564;
  sub_100041B80(v10);
  v7 = *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCode);
  sub_100002D08(&qword_10005CF28, &qword_1000463A8);
  sub_100041F30();
  v11._countAndFlagsBits = 0xD00000000000001ALL;
  v11._object = 0x80000001000448A0;
  sub_100041B80(v11);
  v8 = *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendSupportPageURL);
  sub_100041F30();
  v12._countAndFlagsBits = 0xD000000000000014;
  v12._object = 0x80000001000448C0;
  sub_100041B80(v12);
  v9 = *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendNickname);
  sub_100041F30();
  v13._countAndFlagsBits = 0xD000000000000019;
  v13._object = 0x80000001000448E0;
  sub_100041B80(v13);
  *&v9 = *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCodeUsageCount);
  BYTE8(v9) = *(v0 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCodeUsageCount + 8);
  sub_100002D08(&qword_10005D010, &qword_100046410);
  sub_100041F30();
  v14._countAndFlagsBits = 0xD000000000000015;
  v14._object = 0x8000000100044900;
  sub_100041B80(v14);
  v2 = OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendPlayerIDs;
  swift_beginAccess();
  v4 = *(v1 + v2);
  sub_100002D08(&qword_10005D018, &qword_100046418);
  sub_100041F30();
  v15._countAndFlagsBits = 0x79616C70200A202CLL;
  v15._object = 0xEC000000203A7265;
  sub_100041B80(v15);
  v5 = *(v1 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_player);
  sub_100002D08(&qword_10005D020, &unk_100046420);
  sub_100041F30();
  v16._object = 0x8000000100044920;
  v16._countAndFlagsBits = 0xD000000000000012;
  sub_100041B80(v16);
  v6 = *(v1 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendPlayer);
  sub_100041F30();
  return 0;
}

uint64_t *sub_100013D50@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

id sub_100013D68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_1000412B0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &v3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_senderFriendRequestIdentifier];
  sub_1000412A0();
  v13 = sub_100041290();
  v15 = v14;
  (*(v8 + 8))(v11, v7);
  *v12 = v13;
  v12[1] = v15;
  v16 = &v3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_playerID];
  *v16 = 0;
  v16[1] = 0;
  *&v3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_player] = 0;
  v17 = &v3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCode];
  *v17 = 0;
  v17[1] = 0;
  v18 = &v3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendSupportPageURL];
  *v18 = 0;
  v18[1] = 0;
  v19 = &v3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendNickname];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCodeUsageCount];
  *v20 = 0;
  v20[8] = 1;
  *&v3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendPlayerIDs] = 0;
  *&v3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendPlayer] = 0;
  v3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCodeState] = 2;
  v3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestState] = 0;
  v3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestErrorType] = 0;
  v21 = OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_playerGroup;
  v22 = objc_allocWithZone(GKDispatchGroup);
  v23 = sub_100041AF0();
  v24 = [v22 initWithName:v23];

  *&v3[v21] = v24;
  v25 = v17[1];
  *v17 = a1;
  v17[1] = a2;

  v27.receiver = v3;
  v27.super_class = ObjectType;
  return objc_msgSendSuper2(&v27, "init");
}

id sub_100013F98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_1000412B0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &v3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_senderFriendRequestIdentifier];
  sub_1000412A0();
  v13 = sub_100041290();
  v15 = v14;
  (*(v8 + 8))(v11, v7);
  *v12 = v13;
  v12[1] = v15;
  v16 = &v3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_playerID];
  *v16 = 0;
  v16[1] = 0;
  *&v3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_player] = 0;
  v17 = &v3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCode];
  *v17 = 0;
  v17[1] = 0;
  v18 = &v3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendSupportPageURL];
  *v18 = 0;
  v18[1] = 0;
  v19 = &v3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendNickname];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCodeUsageCount];
  *v20 = 0;
  v20[8] = 1;
  *&v3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendPlayerIDs] = 0;
  *&v3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendPlayer] = 0;
  v3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCodeState] = 2;
  v3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestState] = 0;
  v3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestErrorType] = 0;
  v21 = OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_playerGroup;
  v22 = objc_allocWithZone(GKDispatchGroup);
  v23 = sub_100041AF0();
  v24 = [v22 initWithName:v23];

  *&v3[v21] = v24;
  v25 = v16[1];
  *v16 = a1;
  v16[1] = a2;

  v27.receiver = v3;
  v27.super_class = ObjectType;
  return objc_msgSendSuper2(&v27, "init");
}

uint64_t sub_1000141C8(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_100041EE0();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_100017C78(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_1000144C8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t))
{
  if (!a6)
  {
    v14 = (a7 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_playerID);
    v15 = *(a7 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_playerID + 8);
    *v14 = a1;
    v14[1] = a2;

    v16 = OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendPlayerIDs;
    swift_beginAccess();
    v17 = *(a7 + v16);
    *(a7 + v16) = a3;

    if (a4)
    {
      v18 = [a4 integerValue];
      v19 = a7 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCodeUsageCount;
      *v19 = v18;
      *(v19 + 8) = 0;
    }

    v20 = sub_100019B18([a5 integerValue]);
    if (v20 == 6)
    {
      v21 = 5;
    }

    else
    {
      v21 = v20;
    }

    *(a7 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCodeState) = v21;
  }

  return a8(a6);
}

uint64_t sub_1000145E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v9 = a3;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  if (a2)
  {
    v12 = sub_100041B20();
    v14 = v13;
    if (!v9)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v12 = 0;
  v14 = 0;
  if (a3)
  {
LABEL_3:
    v9 = sub_100041C20();
  }

LABEL_4:

  v15 = a4;
  v16 = a5;
  v17 = a6;
  v11(v12, v14, v9, a4, v16, a6);
}

uint64_t sub_1000146E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  if (a5)
  {
    v8 = 3;
    v9 = &OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestErrorType;
LABEL_5:
    *(a6 + *v9) = v8;
    return a7(a5);
  }

  if (a2)
  {
    v10 = (a6 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCode);
    v11 = *(a6 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCode + 8);
    *v10 = a1;
    v10[1] = a2;
    v12 = a7;
    v13 = a6;

    v16 = (v13 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendSupportPageURL);
    v17 = *(v13 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendSupportPageURL + 8);
    *v16 = a3;
    v16[1] = a4;

    a6 = v13;
    a7 = v12;
    v8 = 1;
    v9 = &OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestState;
    goto LABEL_5;
  }

  return a7(a5);
}

uint64_t sub_1000147B8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a2)
  {
    v8 = sub_100041B20();
    v10 = v9;
    if (v5)
    {
LABEL_3:
      v11 = sub_100041B20();
      v5 = v12;
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    v10 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v11 = 0;
LABEL_6:

  v13 = a4;
  v7(v8, v10, v11, v5, a4);
}

uint64_t sub_100014888(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  if (!a1)
  {
    if (a2)
    {
      v25 = a5;
      v26 = a4;
      v8 = [objc_opt_self() local];
      v9 = [v8 internal];

      v10 = [v9 playerID];
      v11 = sub_100041B20();
      v13 = v12;

      v14 = OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendPlayerIDs;
      swift_beginAccess();
      v15 = *(a3 + v14);
      if (v15)
      {
        v16 = *(a3 + v14);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(a3 + v14) = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v15 = sub_100017AF8(0, *(v15 + 2) + 1, 1, v15);
          *(a3 + v14) = v15;
        }

        v19 = *(v15 + 2);
        v18 = *(v15 + 3);
        v20 = v19 + 1;
        if (v19 >= v18 >> 1)
        {
          v24 = sub_100017AF8((v18 > 1), v19 + 1, 1, v15);
          v20 = v19 + 1;
          v15 = v24;
        }

        *(v15 + 2) = v20;
        v21 = &v15[16 * v19];
        *(v21 + 4) = v11;
        *(v21 + 5) = v13;
        *(a3 + v14) = v15;
        swift_endAccess();
      }

      else
      {
        swift_endAccess();
        sub_100002D08(&qword_10005CF00, &unk_100046F40);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_100045AE0;
        *(v22 + 32) = v11;
        *(v22 + 40) = v13;
        *(a3 + v14) = v22;
      }

      a5 = v25;
      a4 = v26;
    }

    else
    {
      *(a3 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestState) = 2;
      *(a3 + OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCodeState) = 0;
    }

    sub_100014A88(a4, a5);
    a1 = 0;
  }

  return a6(a1);
}

void sub_100014A88(uint64_t a1, uint64_t a2)
{
  v3 = sub_100041410();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v49 - v9;
  if (!a2)
  {
    return;
  }

  v11 = objc_opt_self();
  v12 = sub_100041AF0();
  v13 = [v11 predicateWithPhoneNumberOrEmail:v12];

  if (!v13)
  {
    return;
  }

  v14 = [objc_allocWithZone(CNContactStore) init];
  if (qword_10005C500 != -1)
  {
    swift_once();
  }

  sub_100002D08(&qword_10005CFA0, &qword_1000463C0);
  isa = sub_100041C10().super.isa;
  aBlock[0] = 0;
  v16 = [v14 unifiedContactsMatchingPredicate:v13 keysToFetch:isa error:aBlock];

  v17 = aBlock[0];
  if (!v16)
  {
    v35 = aBlock[0];
    sub_1000411C0();

    swift_willThrow();
    sub_1000413E0();
    swift_errorRetain();
    v36 = sub_100041400();
    v37 = sub_100041CC0();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v51 = v4;
      v40 = v39;
      v52 = swift_slowAlloc();
      aBlock[0] = v52;
      *v38 = 136315650;
      v41 = sub_100042030();
      v43 = sub_10003FBD0(v41, v42, aBlock);

      *(v38 + 4) = v43;
      *(v38 + 12) = 2080;
      *(v38 + 14) = sub_10003FBD0(0xD000000000000019, 0x80000001000447B0, aBlock);
      *(v38 + 22) = 2112;
      swift_errorRetain();
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 24) = v44;
      *v40 = v44;
      _os_log_impl(&_mh_execute_header, v36, v37, "%s %s - Error fetching contacts: %@", v38, 0x20u);
      sub_10000E9F0(v40, &unk_10005CA00, &unk_100045CF0);

      swift_arrayDestroy();

      (*(v51 + 8))(v8, v3);
    }

    else
    {

      (*(v4 + 8))(v8, v3);
    }

    return;
  }

  sub_10000EA78(0, &qword_10005CFA8, CNContact_ptr);
  v18 = sub_100041C20();
  v19 = v17;

  if (v18 >> 62)
  {
    if (sub_100041F50() >= 1)
    {
      goto LABEL_8;
    }

LABEL_21:

    return;
  }

  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_21;
  }

LABEL_8:
  if ((v18 & 0xC000000000000001) != 0)
  {
    v20 = sub_100041EC0();
  }

  else
  {
    if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v20 = *(v18 + 32);
  }

  v21 = v20;

  sub_1000413C0();
  v22 = v21;
  v23 = sub_100041400();
  v24 = sub_100041CC0();
  v52 = v22;

  v25 = &unk_10005A000;
  if (os_log_type_enabled(v23, v24))
  {
    v26 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    aBlock[0] = v50;
    *v26 = 136315394;
    *(v26 + 4) = sub_10003FBD0(0xD000000000000019, 0x80000001000447B0, aBlock);
    *(v26 + 12) = 2080;
    v27 = [v52 identifier];
    v51 = v4;
    v28 = v27;
    v29 = sub_100041B20();
    v30 = v13;
    v31 = v14;
    v33 = v32;

    v34 = sub_10003FBD0(v29, v33, aBlock);
    v14 = v31;
    v13 = v30;
    v25 = &unk_10005A000;

    *(v26 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v23, v24, "%s - Adding %s to the deny list.", v26, 0x16u);
    swift_arrayDestroy();

    (*(v51 + 8))(v10, v3);
  }

  else
  {

    (*(v4 + 8))(v10, v3);
  }

  v45 = [objc_opt_self() proxyForLocalPlayer];
  v46 = [v45 utilityServicePrivate];

  v47 = [v52 v25[293]];
  if (!v47)
  {
    sub_100041B20();
    v47 = sub_100041AF0();
  }

  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000151F0;
  aBlock[3] = &unk_1000565F0;
  v48 = _Block_copy(aBlock);
  [v46 denyContact:v47 handler:v48];

  _Block_release(v48);
  swift_unknownObjectRelease();
}

void sub_1000151F0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_10001525C()
{
  sub_100002D08(&qword_10005CFB0, &qword_1000463C8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100046100;
  *(v0 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle:0];
  v1 = objc_allocWithZone(NSString);
  v2 = CNContactImageDataKey;
  v3 = [v1 initWithString:v2];

  *(v0 + 40) = v3;
  v4 = objc_allocWithZone(NSString);
  v5 = CNContactPhoneNumbersKey;
  v6 = [v4 initWithString:v5];

  *(v0 + 48) = v6;
  v7 = objc_allocWithZone(NSString);
  v8 = CNContactEmailAddressesKey;
  v9 = [v7 initWithString:v8];

  *(v0 + 56) = v9;
  v10 = objc_allocWithZone(NSString);
  v11 = CNContactThumbnailImageDataKey;
  v12 = [v10 initWithString:v11];

  *(v0 + 64) = v12;
  v13 = objc_allocWithZone(NSString);
  v14 = CNContactImageDataAvailableKey;
  v15 = [v13 initWithString:v14];

  *(v0 + 72) = v15;
  qword_10005FF50 = v0;
}

uint64_t sub_10001541C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = a5;
  v9[4] = a1;
  v9[5] = a2;
  v10 = a4;
  v11 = a5;

  sub_100011F64(sub_100019CB0);
}

void sub_1000154C0(void *a1, void *a2, void *a3, void *a4, void (*a5)(void), uint64_t a6)
{
  v102 = a4;
  v11 = sub_100041410();
  v12 = *(v11 - 8);
  v103 = v11;
  v104 = v12;
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v96 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v97 = &v94 - v17;
  v18 = __chkstk_darwin(v16);
  v95 = &v94 - v19;
  __chkstk_darwin(v18);
  v21 = &v94 - v20;
  sub_1000413E0();
  v22 = a3;
  v23 = a1;
  swift_errorRetain();
  v24 = sub_100041400();
  v25 = sub_100041CC0();
  v98 = v23;

  v26 = os_log_type_enabled(v24, v25);
  v100 = a1;
  v101 = v22;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v99 = a5;
    v28 = v27;
    v29 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v105 = a1;
    aBlock[0] = v94;
    *v28 = 138412802;
    *(v28 + 4) = v22;
    *v29 = v22;
    *(v28 + 12) = 2080;
    v30 = v22;
    sub_100002D08(&qword_10005CF08, &unk_100046390);
    v31 = sub_100041E10();
    v33 = sub_10003FBD0(v31, v32, aBlock);

    *(v28 + 14) = v33;
    *(v28 + 22) = 2080;
    v105 = a2;
    sub_100002D08(&unk_10005CF10, &qword_100047670);
    v34 = sub_100041E10();
    v36 = sub_10003FBD0(v34, v35, aBlock);

    *(v28 + 24) = v36;
    v37 = v102;
    _os_log_impl(&_mh_execute_header, v24, v25, "%@ authCompleted: %s error: %s)", v28, 0x20u);
    sub_10000E9F0(v29, &unk_10005CA00, &unk_100045CF0);

    swift_arrayDestroy();

    a5 = v99;

    v38 = v103;
    v39 = *(v104 + 8);
    v39(v21, v103);
    if (a2)
    {
LABEL_3:
      v40 = sub_1000411B0();
      [v37 setError:v40];

LABEL_6:
      a5();
      return;
    }
  }

  else
  {

    v38 = v103;
    v39 = *(v104 + 8);
    v39(v21, v103);
    v37 = v102;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  [v37 setError:0];
  v41 = v101;
  if (*&v101[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_player])
  {
    goto LABEL_6;
  }

  v42 = &v101[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_playerID];
  v43 = *&v101[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_playerID + 8];
  v44 = v100;
  if (!v100)
  {
    v51 = *&v101[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_playerID + 8];

    if (!v43)
    {
      goto LABEL_32;
    }

    goto LABEL_18;
  }

  v99 = a5;
  v45 = *v42;

  v46 = [v98 internal];
  v47 = [v46 playerID];

  v48 = sub_100041B20();
  v50 = v49;

  if (!v43)
  {
    a5 = v99;
    v44 = v100;
    v38 = v103;
    if (!v50)
    {
      goto LABEL_32;
    }

    goto LABEL_18;
  }

  if (!v50)
  {
    a5 = v99;
    v38 = v103;
LABEL_18:

    goto LABEL_19;
  }

  if (v45 == v48 && v43 == v50)
  {

    a5 = v99;
    v44 = v100;
LABEL_32:
    v75 = v98;
    sub_1000137CC(v44);
    goto LABEL_6;
  }

  v74 = sub_100041FC0();

  a5 = v99;
  v44 = v100;
  v38 = v103;
  if (v74)
  {
    goto LABEL_32;
  }

LABEL_19:
  v52 = v42[1];
  if (!v52 || (v53 = *v42, *v42 == 0x496E776F6E6B6E55) && v52 == 0xE900000000000044 || (v54 = *v42, v55 = v42[1], (sub_100041FC0() & 1) != 0))
  {
    if (*&v41[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendCode + 8])
    {
      v56 = v97;
      sub_1000413E0();
      v57 = v41;
      v58 = sub_100041400();
      v59 = sub_100041CC0();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = a5;
        v62 = swift_slowAlloc();
        *v60 = 138412290;
        *(v60 + 4) = v57;
        *v62 = v57;
        v63 = v57;
        _os_log_impl(&_mh_execute_header, v58, v59, "%@ We have a non nil friend code, fetching sender playerID", v60, 0xCu);
        sub_10000E9F0(v62, &unk_10005CA00, &unk_100045CF0);
        a5 = v61;
      }

      v39(v56, v38);
      v64 = v57;
      v65 = v102;

      sub_10001B970(v64, v65, v64, a5, a6);
    }

    else
    {
      v66 = v96;
      sub_1000413E0();
      v67 = v41;
      v68 = sub_100041400();
      v69 = sub_100041CC0();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = a5;
        v72 = swift_slowAlloc();
        *v70 = 138412290;
        *(v70 + 4) = v67;
        *v72 = v67;
        v73 = v67;
        _os_log_impl(&_mh_execute_header, v68, v69, "%@ Creating a new friend request", v70, 0xCu);
        sub_10000E9F0(v72, &unk_10005CA00, &unk_100045CF0);
        a5 = v71;
      }

      v39(v66, v38);
      v64 = v67;

      sub_100019620(v64, v64, a5, a6);
    }
  }

  else
  {
    v99 = a5;

    v76 = v95;
    sub_1000413E0();
    v77 = v41;

    v78 = sub_100041400();
    v79 = sub_100041CC0();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      aBlock[0] = v82;
      *v80 = 138412546;
      *(v80 + 4) = v77;
      *v81 = v77;
      *(v80 + 12) = 2080;
      v83 = v77;
      *(v80 + 14) = sub_10003FBD0(v53, v52, aBlock);
      _os_log_impl(&_mh_execute_header, v78, v79, "%@ loading playerID: %s", v80, 0x16u);
      sub_10000E9F0(v81, &unk_10005CA00, &unk_100045CF0);

      sub_10000E8A8(v82);

      v84 = v103;
      v85 = v95;
    }

    else
    {

      v85 = v76;
      v84 = v38;
    }

    v39(v85, v84);
    v86 = objc_opt_self();
    sub_100002D08(&qword_10005CF00, &unk_100046F40);
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_100045AE0;
    *(v87 + 32) = v53;
    *(v87 + 40) = v52;
    isa = sub_100041C10().super.isa;

    v89 = swift_allocObject();
    v90 = v102;
    v89[2] = v77;
    v89[3] = v90;
    v89[4] = v99;
    v89[5] = a6;
    aBlock[4] = sub_10001BF84;
    aBlock[5] = v89;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100016238;
    aBlock[3] = &unk_1000563E8;
    v91 = _Block_copy(aBlock);
    v92 = v77;
    v93 = v90;

    [v86 loadPlayersForIdentifiers:isa withCompletionHandler:v91];
    _Block_release(v91);
  }
}

void sub_100015EE0(uint64_t a1, uint64_t a2, void *a3, void *a4, void (*a5)(void))
{
  v35 = a4;
  v9 = sub_100041410();
  v33 = *(v9 - 8);
  v34 = v9;
  v10 = *(v33 + 64);
  __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000413E0();
  v13 = a3;

  swift_errorRetain();
  v14 = sub_100041400();
  v15 = sub_100041CC0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v30 = v17;
    v31 = swift_slowAlloc();
    v36 = a1;
    v37 = v31;
    *v16 = 138412802;
    *(v16 + 4) = v13;
    *v17 = v13;
    *(v16 + 12) = 2080;
    v18 = v13;
    sub_100002D08(&qword_10005CF20, &qword_1000463A0);
    v19 = sub_100041E10();
    v21 = sub_10003FBD0(v19, v20, &v37);
    v32 = v13;
    v22 = a5;
    v23 = v21;

    *(v16 + 14) = v23;
    *(v16 + 22) = 2080;
    v36 = a2;
    sub_100002D08(&unk_10005CF10, &qword_100047670);
    v24 = sub_100041E10();
    v26 = sub_10003FBD0(v24, v25, &v37);

    *(v16 + 24) = v26;
    a5 = v22;
    _os_log_impl(&_mh_execute_header, v14, v15, "%@ players: %s error:%s", v16, 0x20u);
    sub_10000E9F0(v30, &unk_10005CA00, &unk_100045CF0);

    swift_arrayDestroy();
  }

  (*(v33 + 8))(v12, v34);
  if (a2)
  {
    v27 = sub_1000411B0();
  }

  else
  {
    v27 = 0;
  }

  [v35 setError:v27];

  if (!a1)
  {
    v28 = [objc_opt_self() unknownPlayer];
    goto LABEL_11;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v28 = sub_100041EC0();
    goto LABEL_11;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v28 = *(a1 + 32);
LABEL_11:
    v29 = sub_1000137CC(v28);
    a5(v29);
    return;
  }

  __break(1u);
}

uint64_t sub_100016238(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_10000EA78(0, &qword_10005CA38, GKPlayer_ptr);
    v4 = sub_100041C20();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_1000162DC(void *a1, void *a2, char *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v59[1] = a5;
  v60 = a4;
  v8 = sub_100041410();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = v59 - v15;
  __chkstk_darwin(v14);
  v18 = v59 - v17;
  if (a1)
  {
    v19 = sub_1000411B0();
  }

  else
  {
    v19 = 0;
  }

  [a2 setError:v19];

  v20 = *&a3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_playerID + 8];
  if (v20)
  {
    v21 = *&a3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_playerID];
    if (v21 == sub_100041B20() && v20 == v22)
    {
    }

    else
    {
      v24 = v8;
      v25 = sub_100041FC0();

      if ((v25 & 1) == 0)
      {
        v54 = swift_allocObject();
        v54[2] = v21;
        v54[3] = v20;
        v54[4] = a3;
        v54[5] = a2;
        aBlock[4] = sub_10001C058;
        aBlock[5] = v54;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100016ECC;
        aBlock[3] = &unk_1000564B0;
        v55 = _Block_copy(aBlock);
        v56 = a3;
        v57 = a2;

        [v57 perform:v55];
        _Block_release(v55);
        return v60(v49);
      }

      v8 = v24;
    }

    sub_1000413E0();
    v34 = a3;
    v35 = sub_100041400();
    v36 = sub_100041CC0();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = v8;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      *(v38 + 4) = v34;
      *v39 = v34;
      v40 = v34;
      _os_log_impl(&_mh_execute_header, v35, v36, "%@ We have a non nil friend code, but playerID was unknown.", v38, 0xCu);
      sub_10000E9F0(v39, &unk_10005CA00, &unk_100045CF0);

      v8 = v37;
    }

    v41 = *(v9 + 8);
    v41(v18, v8);
    v42 = OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestErrorType;
    v34[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestErrorType] = 0;
    sub_1000413E0();
    v43 = v34;
    v44 = sub_100041400();
    v45 = sub_100041CC0();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v59[0] = v8;
      v47 = v46;
      v48 = swift_slowAlloc();
      *v47 = 138412546;
      *(v47 + 4) = v43;
      *v48 = v43;
      *(v47 + 12) = 2048;
      *(v47 + 14) = v34[v42];
      _os_log_impl(&_mh_execute_header, v44, v45, "%@ PlayerID was unknown, friendRequestErrorType set to %ld.", v47, 0x16u);
      sub_10000E9F0(v48, &unk_10005CA00, &unk_100045CF0);

      v8 = v59[0];
    }

    else
    {

      v44 = v43;
    }

    v49 = (v41)(v16, v8);
  }

  else
  {
    sub_1000413D0();
    swift_errorRetain();
    v26 = sub_100041400();
    v27 = sub_100041CE0();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v59[0] = v8;
      v30 = v29;
      aBlock[0] = v29;
      *v28 = 136315138;
      v62 = a1;
      sub_100002D08(&unk_10005CF10, &qword_100047670);
      v31 = sub_100041E10();
      v33 = sub_10003FBD0(v31, v32, aBlock);

      *(v28 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v26, v27, "getPlayerIDFromFriendCode error:%s", v28, 0xCu);
      sub_10000E8A8(v30);

      (*(v9 + 8))(v13, v59[0]);
    }

    else
    {

      (*(v9 + 8))(v13, v8);
    }

    v50 = [objc_opt_self() unknownPlayer];
    v49 = sub_1000137CC(v50);
    v51 = OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestErrorType;
    a3[OBJC_IVAR____TtC26GameCenterMessageExtension11PlayerModel_friendRequestErrorType] = 2;
    if (a1)
    {
      aBlock[0] = a1;
      swift_errorRetain();
      sub_100002D08(&qword_10005CF30, &unk_1000463B0);
      sub_10000EA78(0, &qword_10005CF38, NSError_ptr);
      v49 = swift_dynamicCast();
      if (v49)
      {
        v52 = v62;
        v53 = sub_10001953C(v62);

        if (v53)
        {
          a3[v51] = 4;
        }
      }
    }
  }

  return v60(v49);
}