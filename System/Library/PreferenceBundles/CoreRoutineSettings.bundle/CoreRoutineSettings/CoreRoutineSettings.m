id sub_1AC8()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = [result isPasscodeSet];

    return (v2 ^ 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B28()
{
  v1 = (v0 + OBJC_IVAR____TtC19CoreRoutineSettings24RTSettingsViewController_canBeShownFromSuspendedState);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1B80(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC19CoreRoutineSettings24RTSettingsViewController_canBeShownFromSuspendedState);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id sub_1C44()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for RTSettingsViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for RTSettingsViewController()
{
  result = qword_21B18;
  if (!qword_21B18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DF4(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_1E3C()
{
  v1 = v0;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for RTSettingsViewController();
  objc_msgSendSuper2(&v7, "viewDidLoad");
  v2 = objc_opt_self();
  v3 = sub_12A30();
  v4 = [v2 _coreroutine_LocalizedStringForKey:v3];

  [v1 setTitle:v4];
  v5 = (*&stru_68.segname[swift_isaMask & *v1])();
  LOBYTE(v3) = v5();

  if ((v3 & 1) == 0)
  {
    v6 = [objc_opt_self() defaultCenter];
    [v6 addObserver:v1 selector:"viewWasBackgrounded" name:UIApplicationDidEnterBackgroundNotification object:0];
  }
}

uint64_t sub_1FE0(void *a1)
{
  sub_7548(&v5);
  v2 = objc_allocWithZone(sub_1DF4(&qword_21408));
  v3 = a1;
  return sub_126F0();
}

uint64_t sub_21B4()
{
  sub_1DF4(&qword_21400);
  __chkstk_darwin();
  v2 = &v6 - v1;
  sub_12510();
  v3 = sub_12520();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v4 = OBJC_IVAR____TtC19CoreRoutineSettings24RTSettingsViewController_sessionStartDate;
  swift_beginAccess();
  sub_22A4(v2, v0 + v4);
  return swift_endAccess();
}

uint64_t sub_22A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DF4(&qword_21400);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_2314()
{
  v1 = v0;
  v2 = sub_12520();
  v3 = *(v2 - 8);
  (__chkstk_darwin)();
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF4(&qword_21400);
  v6 = (__chkstk_darwin)();
  v24 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v24 - v9;
  __chkstk_darwin(v8);
  v12 = &v24 - v11;
  v13 = OBJC_IVAR____TtC19CoreRoutineSettings24RTSettingsViewController_sessionStartDate;
  swift_beginAccess();
  sub_2708(v1 + v13, v12);
  v14 = *(v3 + 48);
  v15 = v14(v12, 1, v2);
  sub_31C4(v12, &qword_21400);
  if (v15 != 1)
  {
    sub_12510();
    sub_2708(v1 + v13, v10);
    if (v14(v10, 1, v2) == 1)
    {
      __break(1u);
    }

    else
    {
      sub_124F0();
      v16 = *(v3 + 8);
      v16(v5, v2);
      v16(v10, v2);
      v17 = v24;
      (*(v3 + 56))(v24, 1, 1, v2);
      swift_beginAccess();
      sub_22A4(v17, v1 + v13);
      swift_endAccess();
      sub_1DF4(&qword_21410);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_14240;
      *(inited + 32) = 0x6E6F697461727564;
      *(inited + 40) = 0xE800000000000000;
      *(inited + 48) = sub_12A90();
      v19 = sub_30C0(inited);
      swift_setDeallocating();
      sub_31C4(inited + 32, &qword_21418);
      v20 = sub_12A30();
      sub_2778(v19);
      isa = sub_12A20().super.isa;

      sub_11048(v20, isa);

      v22 = sub_12A30();
      sub_2A48(v19);

      sub_3320(0, &qword_219F0);
      v23 = sub_12A20().super.isa;

      AnalyticsSendEvent();
    }
  }
}

uint64_t sub_2708(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DF4(&qword_21400);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2778(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1DF4(&qword_21A10);
    v2 = sub_12BF0();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v32[0] = *v14;
    *(&v32[0] + 1) = v15;

    v16;
    swift_dynamicCast();
    sub_3320(0, &qword_21458);
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_3368(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_3368(v31, v32);
    result = sub_12BC0(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_3368(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_2A48(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1DF4(&qword_21450);
    v2 = sub_12BF0();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);

        v19 = v18;
        v20 = sub_2F90(v17, v16);
        if (v21)
        {
          v8 = (v2[6] + 16 * v20);
          *v8 = v17;
          v8[1] = v16;
          v9 = v20;

          v10 = v2[7];
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v19;

          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v20;
          v22 = (v2[6] + 16 * v20);
          *v22 = v17;
          v22[1] = v16;
          *(v2[7] + 8 * v20) = v19;
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_2C28()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 popViewControllerAnimated:0];
  }
}

unint64_t sub_2F90(uint64_t a1, uint64_t a2)
{
  sub_12C10();
  sub_12A60();
  v4 = sub_12C20();

  return sub_3008(a1, a2, v4);
}

unint64_t sub_3008(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_12C00())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_30C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1DF4(&unk_21460);
    v3 = sub_12BF0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_2F90(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t sub_31C4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1DF4(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_322C()
{
  sub_32C8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_32C8()
{
  if (!qword_21448)
  {
    sub_12520();
    v0 = sub_12B30();
    if (!v1)
    {
      atomic_store(v0, &qword_21448);
    }
  }
}

uint64_t sub_3320(uint64_t a1, unint64_t *a2)
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

_OWORD *sub_3368(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_3378()
{
  result = qword_21470;
  if (!qword_21470)
  {
    type metadata accessor for RTSettingsController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_21470);
  }

  return result;
}

uint64_t sub_33D0()
{
  sub_1DF4(&qword_214A0);
  sub_12900();
  if (v3 >> 62)
  {
    v2 = sub_12BE0();

    if (!v2)
    {
      return result;
    }
  }

  else
  {
    v0 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));

    if (!v0)
    {
      return result;
    }
  }

  sub_12900();
  sub_1DF4(&qword_214A8);
  return sub_12910();
}

uint64_t sub_3548(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = objc_allocWithZone(UIColor);
  v11[4] = a2;
  v11[5] = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_88B0;
  v11[3] = a3;
  v8 = _Block_copy(v11);
  v9 = [v7 initWithDynamicProvider:v8];
  _Block_release(v8);

  *a4 = v9;
  return result;
}

id sub_361C(void *a1, SEL *a2, SEL *a3)
{
  v5 = [a1 userInterfaceStyle];
  v6 = objc_opt_self();
  if (v5 == &dword_0 + 2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a3;
  }

  v8 = [v6 *v7];

  return v8;
}

uint64_t sub_3688(uint64_t a1, uint64_t a2, char a3)
{
  result = sub_33D0();
  if (a3)
  {
    __break(1u);
  }

  else
  {
    sub_1DF4(&qword_21768);
    return sub_12910();
  }

  return result;
}

double sub_371C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 preferredName];
  if (!v4)
  {
    v6 = 0;
    v8 = 0xE000000000000000;
LABEL_5:
    if (v8 == 0xE000000000000000)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v5 = v4;
  v6 = sub_12A50();
  v8 = v7;

  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_6:
  if ((sub_12C00() & 1) == 0)
  {
    v9 = sub_126D0();
    LOBYTE(v26) = 1;
    v10 = sub_126B0();
    LOBYTE(v21) = 1;
    v11 = sub_126E0();
    sub_3A60(v6, v8, a1, v19);

    *&v18[7] = v19[0];
    *&v18[23] = v19[1];
    *&v18[39] = v19[2];
    *&v18[55] = v20;
    v12 = v21;
    v21 = v9;
    LOBYTE(v22) = v26;
    *(&v22 + 1) = v10;
    *&v23 = 0;
    BYTE8(v23) = v12;
    v24 = v11;
    v25[0] = 1;
    *&v25[1] = *v18;
    *&v25[64] = *(&v20 + 1);
    *&v25[49] = *&v18[48];
    *&v25[33] = *&v18[32];
    *&v25[17] = *&v18[16];
    nullsub_1(&v21);
    v31 = *&v25[16];
    v32 = *&v25[32];
    v33 = *&v25[48];
    v27 = v22;
    v28 = v23;
    v29 = v24;
    v30 = *v25;
    v34 = *&v25[64];
    v26 = v21;
    goto LABEL_9;
  }

LABEL_7:

  sub_A73C(&v26);
LABEL_9:
  v13 = v31;
  v14 = v33;
  *(a2 + 96) = v32;
  *(a2 + 112) = v14;
  *(a2 + 128) = v34;
  v15 = v27;
  v16 = v29;
  *(a2 + 32) = v28;
  *(a2 + 48) = v16;
  *(a2 + 64) = v30;
  *(a2 + 80) = v13;
  result = *&v26;
  *a2 = v26;
  *(a2 + 16) = v15;
  return result;
}

unint64_t sub_3968()
{
  result = qword_214B8;
  if (!qword_214B8)
  {
    sub_3A18(&qword_214B0);
    sub_A340(&qword_214C0, &qword_214C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_214B8);
  }

  return result;
}

uint64_t sub_3A18(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_3A60(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1DF4(&qword_21880);
  __chkstk_darwin(v8 - 8);
  v72 = v66 - v9;
  v10 = sub_12520();
  v11 = __chkstk_darwin(v10 - 8);
  v66[1] = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v67 = sub_124D0();
  v13 = *(v67 - 8);
  __chkstk_darwin(v67);
  v15 = v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = a1;
  v77 = a2;
  v16 = sub_748C();

  v68 = v16;
  v17 = sub_12840();
  v19 = v18;
  v21 = v20;
  if (qword_21B30 != -1)
  {
    swift_once();
  }

  v22 = qword_21AF8;
  sub_128E0();
  v23 = sub_12810();
  v70 = v24;
  v71 = v23;
  v69 = v25;
  v73 = v26;

  sub_98E0(v17, v19, v21 & 1);

  v27 = [a3 visits];
  sub_3320(0, &unk_21890);
  v28 = sub_12A80();
  v29 = v28;
  if (!(v28 >> 62))
  {
    if (*(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_5;
    }

LABEL_15:

    __break(1u);
    goto LABEL_16;
  }

  if (!sub_12BE0())
  {
    goto LABEL_15;
  }

LABEL_5:
  if ((v29 & 0xC000000000000001) != 0)
  {
LABEL_16:
    v30 = sub_12BD0();
    goto LABEL_8;
  }

  if (!*(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v30 = *(v29 + 32);
LABEL_8:
  v31 = v30;

  v32 = [v31 entryDate];

  sub_12500();
  v33 = [a3 visits];
  v34 = sub_12A80();
  v35 = v34;
  if (!(v34 >> 62))
  {
    if (*(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

  if (!sub_12BE0())
  {
LABEL_18:

    __break(1u);
    goto LABEL_19;
  }

LABEL_10:

  if ((v35 & 0xC000000000000001) != 0)
  {
LABEL_20:
    v36 = sub_12BD0();
    goto LABEL_13;
  }

  if (*(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8)))
  {
    v36 = *(v35 + 32);
LABEL_13:
    v37 = v36;

    v38 = objc_opt_self();
    v39 = [v37 exitDate];

    sub_12500();
    sub_124C0();
    isa = sub_124A0().super.isa;
    (*(v13 + 8))(v15, v67);
    v41 = [v38 configureDateRangeString:isa dateStyle:2 timeStyle:1];

    v42 = sub_12A50();
    v44 = v43;

    v76 = v42;
    v77 = v44;
    v45 = sub_12840();
    v47 = v46;
    v49 = v48;
    v50 = sub_127D0();
    v51 = v72;
    (*(*(v50 - 8) + 56))(v72, 1, 1, v50);
    sub_127E0();
    sub_31C4(v51, &qword_21880);
    v52 = sub_12830();
    v54 = v53;
    v56 = v55;

    sub_98E0(v45, v47, v49 & 1);

    sub_128C0();
    v57 = sub_12810();
    v59 = v58;
    LOBYTE(v47) = v60;
    v62 = v61;

    sub_98E0(v52, v54, v56 & 1);

    v63 = v69 & 1;
    v74 = v69 & 1;
    LOBYTE(v76) = v69 & 1;
    v75 = v47 & 1;
    v65 = v70;
    v64 = v71;
    *a4 = v71;
    *(a4 + 8) = v65;
    *(a4 + 16) = v63;
    *(a4 + 24) = v73;
    *(a4 + 32) = v57;
    *(a4 + 40) = v59;
    *(a4 + 48) = v47 & 1;
    *(a4 + 56) = v62;
    sub_A3F0(v64, v65, v63);

    sub_A3F0(v57, v59, v47 & 1);

    sub_98E0(v57, v59, v47 & 1);

    sub_98E0(v64, v65, v74);

    return;
  }

  __break(1u);
}

uint64_t sub_40A0(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_12B60();
    v5 = v4;
    v6 = sub_12BB0();
    v8 = v7;
    v9 = sub_12B70();
    sub_9A04(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_9A04(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_12B50();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_8A48(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_9A04(v3, v5, v2 != 0);
  return v12;
}

void *sub_41BC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v33 = a1;
  v3 = sub_126D0();
  v4 = sub_126D0();
  v5 = swift_allocObject();
  v6 = *(v2 + 208);
  v5[13] = *(v2 + 192);
  v5[14] = v6;
  v5[15] = *(v2 + 224);
  v7 = *(v2 + 144);
  v5[9] = *(v2 + 128);
  v5[10] = v7;
  v8 = *(v2 + 176);
  v5[11] = *(v2 + 160);
  v5[12] = v8;
  v9 = *(v2 + 80);
  v5[5] = *(v2 + 64);
  v5[6] = v9;
  v10 = *(v2 + 112);
  v5[7] = *(v2 + 96);
  v5[8] = v10;
  v11 = *(v2 + 16);
  v5[1] = *v2;
  v5[2] = v11;
  v12 = *(v2 + 48);
  v5[3] = *(v2 + 32);
  v5[4] = v12;
  v59 = 1;
  v58 = 1;
  v13 = swift_allocObject();
  v14 = *(v2 + 208);
  v13[13] = *(v2 + 192);
  v13[14] = v14;
  v13[15] = *(v2 + 224);
  v15 = *(v2 + 144);
  v13[9] = *(v2 + 128);
  v13[10] = v15;
  v16 = *(v2 + 176);
  v13[11] = *(v2 + 160);
  v13[12] = v16;
  v17 = *(v2 + 80);
  v13[5] = *(v2 + 64);
  v13[6] = v17;
  v18 = *(v2 + 112);
  v13[7] = *(v2 + 96);
  v13[8] = v18;
  v19 = *(v2 + 16);
  v13[1] = *v2;
  v13[2] = v19;
  v20 = *(v2 + 48);
  v13[3] = *(v2 + 32);
  v13[4] = v20;
  v51 = v3;
  LOBYTE(v52) = 1;
  *(&v52 + 1) = v4;
  *&v53 = 0;
  BYTE8(v53) = 1;
  *&v54 = sub_4624;
  *(&v54 + 1) = v5;
  *&v55 = sub_7108;
  *(&v55 + 1) = v13;
  v56 = 0uLL;
  v21 = *(&stru_B8.size + (swift_isaMask & **(v2 + 8)));
  sub_3930(v2, &v45);
  v22 = sub_3930(v2, &v45);
  result = v21(v57, v22);
  if (v57[5])
  {
    v24 = v57[9];
    v25 = v57[10];

    sub_31C4(v57, &qword_214D0);
    v26 = 0x206E776F6E6B6E55;
    if (v25)
    {
      v26 = v24;
    }

    v27 = 0xED0000726F727245;
    if (v25)
    {
      v27 = v25;
    }

    v32 = v27;
    v42 = v26;
    v43 = v27;
    type metadata accessor for RTSettingsController();
    sub_3378();
    v28 = sub_12620();
    swift_getKeyPath();
    sub_12630();

    v48 = v40[5];
    v49 = v40[6];
    v50[0] = v41[0];
    *(v50 + 9) = *(v41 + 9);
    v45 = v40[2];
    v46 = v40[3];
    v47 = v40[4];
    swift_getKeyPath();
    v39 = v49;
    v40[0] = v50[0];
    *(v40 + 9) = *(v50 + 9);
    v35 = v45;
    v36 = v46;
    v37 = v47;
    v38 = v48;
    sub_1DF4(&qword_214D8);
    sub_12980();

    v29 = sub_31C4(&v45, &qword_214D8);
    v31 = v30;
    v30[3] = v34;
    __chkstk_darwin(v29);
    sub_1DF4(&qword_214E0);
    sub_1DF4(&qword_214E8);
    sub_73D4();
    sub_748C();
    sub_A340(&qword_21510, &qword_214E8);
    sub_12890();

    v44[2] = v53;
    v44[3] = v54;
    v44[4] = v55;
    v44[5] = v56;
    v44[0] = v51;
    v44[1] = v52;
    return sub_74E0(v44);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_4624()
{
  sub_1DF4(&qword_21770);
  sub_A340(&qword_21778, &qword_21770);
  return sub_12800();
}

void sub_46CC(uint64_t a1@<X0>, void (*a2)(void, void, void)@<X1>, char *a3@<X8>)
{
  v60 = a2;
  v63 = a3;
  v64 = sub_1DF4(&qword_21780);
  v62 = *(v64 - 8);
  v4 = __chkstk_darwin(v64);
  v76 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v71 = &v56 - v6;
  v75 = sub_1DF4(&qword_21788);
  v61 = *(v75 - 8);
  v7 = __chkstk_darwin(v75);
  v74 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v66 = &v56 - v9;
  v73 = sub_1DF4(&qword_21790);
  v70 = *(v73 - 8);
  v10 = __chkstk_darwin(v73);
  v72 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v77 = &v56 - v12;
  v13 = sub_1DF4(&qword_21798);
  v68 = *(v13 - 8);
  v69 = v13;
  v14 = __chkstk_darwin(v13);
  v67 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v56 - v16;
  v79 = *(a1 + 104);
  v80 = *(a1 + 120);
  sub_1DF4(&qword_21760);
  sub_12900();
  v79 = v82;
  v78 = a1;
  sub_1DF4(&qword_217A0);
  v18 = sub_3A18(&qword_217A8);
  v19 = sub_9DB8();
  *&v82 = v18;
  *(&v82 + 1) = v19;
  swift_getOpaqueTypeConformance2();
  sub_9E9C();
  v65 = v17;
  sub_129D0();
  v20 = objc_opt_self();
  v21 = sub_12A30();
  v22 = [v20 _coreroutine_LocalizedStringForKey:v21];

  if (v22)
  {
    v23 = sub_12A50();
    v25 = v24;

    *&v79 = v23;
    *(&v79 + 1) = v25;
    sub_748C();
    *&v79 = sub_12840();
    *(&v79 + 1) = v26;
    LOBYTE(v80) = v27 & 1;
    v81 = v28;
    __chkstk_darwin(v79);
    *(&v56 - 2) = a1;
    sub_1DF4(&qword_217E0);
    sub_A340(&qword_217E8, &qword_217E0);
    sub_129B0();
    v29 = sub_12A30();
    v30 = [v20 _coreroutine_LocalizedStringForKey:v29];

    if (v30)
    {
      v31 = sub_12A50();
      v33 = v32;

      *&v79 = v31;
      *(&v79 + 1) = v33;
      __chkstk_darwin(v34);
      v35 = v60;
      *(&v56 - 2) = a1;
      *(&v56 - 1) = v35;
      sub_1DF4(&qword_217F0);
      sub_9F8C();
      v36 = v66;
      v37 = sub_129A0();
      __chkstk_darwin(v37);
      *(&v56 - 2) = a1;
      sub_1DF4(&qword_21810);
      v38 = sub_3A18(&qword_214E8);
      v39 = sub_A340(&qword_21510, &qword_214E8);
      *&v79 = v38;
      *(&v79 + 1) = v39;
      swift_getOpaqueTypeConformance2();
      v40 = v71;
      sub_129C0();
      v57 = *(v68 + 16);
      v41 = v67;
      v42 = v69;
      v57(v67, v65, v69);
      v60 = *(v70 + 16);
      v60(v72, v77, v73);
      v43 = v61;
      v59 = *(v61 + 16);
      v59(v74, v36, v75);
      v44 = v62;
      v58 = *(v62 + 16);
      v45 = v40;
      v46 = v64;
      v58(v76, v45, v64);
      v47 = v63;
      v57(v63, v41, v42);
      v48 = sub_1DF4(&qword_21818);
      v49 = v73;
      v60(&v47[v48[12]], v72, v73);
      v50 = v75;
      v59(&v47[v48[16]], v74, v75);
      v58(&v47[v48[20]], v76, v46);
      v51 = *(v44 + 8);
      v51(v71, v46);
      v52 = *(v43 + 8);
      v52(v66, v50);
      v53 = *(v70 + 8);
      v53(v77, v49);
      v54 = v69;
      v55 = *(v68 + 8);
      v55(v65, v69);
      v51(v76, v46);
      v52(v74, v75);
      v53(v72, v73);
      v55(v67, v54);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_5008(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v26[1] = a2;
  v26[0] = sub_1DF4(&qword_217C0);
  v3 = *(v26[0] - 8);
  __chkstk_darwin(v26[0]);
  v5 = v26 - v4;
  v6 = sub_1DF4(&qword_217A8);
  __chkstk_darwin(v6);
  v8 = v26 - v7;
  v9 = objc_opt_self();
  v10 = sub_12A30();
  v11 = [v9 _coreroutine_LocalizedStringForKey:v10];

  if (v11)
  {
    v12 = sub_12A50();
    v14 = v13;

    *&v28 = v12;
    *(&v28 + 1) = v14;
    v29 = a1[2];
    v27[15] = a1[2];
    sub_1DF4(&qword_21480);
    sub_12920();
    sub_748C();
    sub_12960();
    v27[0] = v29;
    sub_12900();
    v15 = v28;
    v16 = swift_allocObject();
    v17 = a1[13];
    v16[13] = a1[12];
    v16[14] = v17;
    v16[15] = a1[14];
    v18 = a1[9];
    v16[9] = a1[8];
    v16[10] = v18;
    v19 = a1[11];
    v16[11] = a1[10];
    v16[12] = v19;
    v20 = a1[5];
    v16[5] = a1[4];
    v16[6] = v20;
    v21 = a1[7];
    v16[7] = a1[6];
    v16[8] = v21;
    v22 = a1[1];
    v16[1] = *a1;
    v16[2] = v22;
    v23 = a1[3];
    v16[3] = a1[2];
    v16[4] = v23;
    (*(v3 + 32))(v8, v5, v26[0]);
    v24 = &v8[*(v6 + 36)];
    *v24 = v15;
    *(v24 + 1) = sub_A488;
    *(v24 + 2) = v16;
    v28 = a1[3];
    sub_3930(a1, v27);
    v25 = sub_12920();
    __chkstk_darwin(v25);
    v26[-2] = a1;
    sub_9DB8();
    sub_12870();

    sub_31C4(v8, &qword_217A8);
  }

  else
  {
    __break(1u);
  }
}

void sub_5370(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v3 = sub_128B0();
  v78 = *(v3 - 8);
  v79 = v3;
  v4 = __chkstk_darwin(v3);
  v80 = v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = v71 - v6;
  v8 = objc_opt_self();
  v9 = sub_12A30();
  v10 = [v8 _coreroutine_LocalizedStringForKey:v9];

  if (!v10)
  {
    __break(1u);
    goto LABEL_7;
  }

  v11 = sub_12A50();
  v13 = v12;

  v81 = v11;
  v82 = v13;
  sub_748C();
  v14 = sub_12840();
  v16 = v15;
  LOBYTE(v11) = v17;
  v18 = swift_allocObject();
  v19 = a1[13];
  v18[13] = a1[12];
  v18[14] = v19;
  v18[15] = a1[14];
  v20 = a1[9];
  v18[9] = a1[8];
  v18[10] = v20;
  v21 = a1[11];
  v18[11] = a1[10];
  v18[12] = v21;
  v22 = a1[5];
  v18[5] = a1[4];
  v18[6] = v22;
  v23 = a1[7];
  v18[7] = a1[6];
  v18[8] = v23;
  v24 = a1[1];
  v18[1] = *a1;
  v18[2] = v24;
  v25 = a1[3];
  v18[3] = a1[2];
  v18[4] = v25;
  sub_3930(a1, &v81);
  v76 = v7;
  sub_128A0();

  sub_98E0(v14, v16, v11 & 1);

  v26 = sub_12A30();
  v27 = [v8 _coreroutine_LocalizedStringForKey:v26];

  if (!v27)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v28 = sub_12A50();
  v30 = v29;

  v81 = v28;
  v82 = v30;
  v31 = sub_12840();
  v33 = v32;
  LOBYTE(v28) = v34;
  v35 = swift_allocObject();
  v36 = a1[13];
  v35[13] = a1[12];
  v35[14] = v36;
  v35[15] = a1[14];
  v37 = a1[9];
  v35[9] = a1[8];
  v35[10] = v37;
  v38 = a1[11];
  v35[11] = a1[10];
  v35[12] = v38;
  v39 = a1[5];
  v35[5] = a1[4];
  v35[6] = v39;
  v40 = a1[7];
  v35[7] = a1[6];
  v35[8] = v40;
  v41 = a1[1];
  v35[1] = *a1;
  v35[2] = v41;
  v42 = a1[3];
  v35[3] = a1[2];
  v35[4] = v42;
  sub_3930(a1, &v81);
  sub_128A0();

  sub_98E0(v31, v33, v28 & 1);

  v43 = sub_12A30();
  v44 = [v8 _coreroutine_LocalizedStringForKey:v43];

  if (!v44)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v45 = sub_12A50();
  v47 = v46;

  v81 = v45;
  v82 = v47;
  v48 = sub_12840();
  v74 = v49;
  v75 = v48;
  v72 = v50;
  v73 = v51;
  v52 = sub_12A30();
  v53 = [v8 _coreroutine_LocalizedStringForKey:v52];

  if (v53)
  {
    v54 = sub_12A50();
    v56 = v55;

    v81 = v54;
    v82 = v56;
    v57 = sub_12840();
    v71[1] = v58;
    v71[2] = v57;
    v71[0] = v59;
    sub_1DF4(&qword_21820);
    v60 = v78;
    v61 = *(v78 + 72);
    v62 = (*(v78 + 80) + 32) & ~*(v78 + 80);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_142E0;
    v64 = v63 + v62;
    v65 = *(v60 + 16);
    v66 = v76;
    v67 = v79;
    v65(v64, v76, v79);
    v68 = v64 + v61;
    v69 = v80;
    v65(v68, v80, v67);
    sub_125E0();
    v70 = *(v60 + 8);
    v70(v69, v67);
    v70(v66, v67);
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_58CC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DF4(&qword_21880);
  __chkstk_darwin(v4 - 8);
  v6 = v43 - v5;
  v7 = objc_opt_self();
  v8 = sub_12A30();
  v9 = [v7 _coreroutine_LocalizedStringForKey:v8];

  if (v9)
  {
    sub_12A50();

    sub_1DF4(&qword_21888);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_14240;
    v49 = *(a1 + 64);
    sub_1DF4(&qword_21768);
    sub_12900();
    v11 = v48;
    *(v10 + 56) = &type metadata for Int;
    *(v10 + 64) = &protocol witness table for Int;
    *(v10 + 32) = v11;
    v12 = sub_12A40();
    v14 = v13;

    *&v49 = v12;
    *(&v49 + 1) = v14;
    sub_748C();
    v46 = sub_12840();
    v47 = v15;
    v17 = v16;
    v45 = v18;
    v49 = *(a1 + 80);
    v50 = *(a1 + 96);
    sub_1DF4(&qword_21760);
    sub_12900();
    if (v48 == __PAIR128__(0xE000000000000000, 0))
    {

      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
    }

    else
    {
      v44 = v6;
      v23 = sub_12C00();

      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      if ((v23 & 1) == 0)
      {
        v49 = *(a1 + 80);
        v50 = *(a1 + 96);
        sub_12900();
        v49 = v48;
        v24 = sub_12840();
        v26 = v25;
        v28 = v27;
        v29 = sub_127D0();
        v30 = v44;
        (*(*(v29 - 8) + 56))(v44, 1, 1, v29);
        sub_127E0();
        sub_31C4(v30, &qword_21880);
        v31 = sub_12830();
        v43[1] = v33;
        v44 = v32;
        v35 = v34;

        sub_98E0(v24, v26, v28 & 1);

        sub_128C0();
        LOBYTE(v30) = v35;
        v36 = v44;
        v19 = sub_12810();
        v20 = v37;
        LOBYTE(v24) = v38;
        v22 = v39;

        sub_98E0(v31, v36, v30 & 1);

        v21 = v24 & 1;
        sub_A3F0(v19, v20, v24 & 1);
      }
    }

    v40 = v45 & 1;
    v41 = v46;
    sub_A3F0(v46, v17, v45 & 1);
    v42 = v47;

    sub_A400(v19, v20, v21, v22);
    sub_A444(v19, v20, v21, v22);
    LOBYTE(v49) = v40;
    *a2 = v41;
    *(a2 + 8) = v17;
    *(a2 + 16) = v40;
    *(a2 + 24) = v42;
    *(a2 + 32) = v19;
    *(a2 + 40) = v20;
    *(a2 + 48) = v21;
    *(a2 + 56) = v22;
    sub_A444(v19, v20, v21, v22);
    sub_98E0(v41, v17, v40);
  }

  else
  {
    __break(1u);
  }
}

void sub_5D54(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = sub_1DF4(&qword_21828);
  __chkstk_darwin(v61);
  v60 = (&v50 - v4);
  v5 = sub_1DF4(&qword_21808);
  __chkstk_darwin(v5);
  v7 = &v50 - v6;
  v8 = sub_1DF4(&qword_21830);
  v56 = *(v8 - 8);
  v57 = v8;
  v9 = __chkstk_darwin(v8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v50 - v12;
  v87 = *(a1 + 168);
  v62[0] = *(a1 + 168);
  sub_1DF4(&qword_214A0);
  sub_12900();
  if (v74 >> 62)
  {
    v55 = v5;
    v38 = sub_12BE0();
    v5 = v55;

    if (v38)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = *(&dword_10 + (v74 & 0xFFFFFFFFFFFFFF8));

    if (v14)
    {
LABEL_3:
      v15 = *(a1 + 144);
      v62[0] = *(a1 + 128);
      v62[1] = v15;
      v63 = *(a1 + 160);
      sub_1DF4(&qword_214A8);
      sub_12900();
      v52 = v75;
      v53 = v74;
      v58 = v77;
      v59 = v76;
      sub_12600();
      sub_129E0();
      sub_125F0();
      v62[0] = v87;
      sub_12900();
      v54 = a2;
      v55 = v5;
      v51 = v7;
      if (!(v74 >> 62))
      {
        v16 = *(&dword_10 + (v74 & 0xFFFFFFFFFFFFFF8));

LABEL_5:
        v64 = 0;
        v65 = v16;
        swift_getKeyPath();
        v17 = swift_allocObject();
        v18 = *(a1 + 208);
        v17[13] = *(a1 + 192);
        v17[14] = v18;
        v17[15] = *(a1 + 224);
        v19 = *(a1 + 144);
        v17[9] = *(a1 + 128);
        v17[10] = v19;
        v20 = *(a1 + 176);
        v17[11] = *(a1 + 160);
        v17[12] = v20;
        v21 = *(a1 + 80);
        v17[5] = *(a1 + 64);
        v17[6] = v21;
        v22 = *(a1 + 112);
        v17[7] = *(a1 + 96);
        v17[8] = v22;
        v23 = *(a1 + 16);
        v17[1] = *a1;
        v17[2] = v23;
        v24 = *(a1 + 48);
        v17[3] = *(a1 + 32);
        v17[4] = v24;
        sub_3930(a1, v62);
        sub_1DF4(&qword_21838);
        sub_1DF4(&qword_21840);
        sub_A17C();
        sub_A25C();
        v50 = v13;
        sub_12990();
        v26 = v56;
        v25 = v57;
        v27 = *(v56 + 16);
        v27(v11, v13, v57);
        v28 = v52;
        v29 = v53;
        *&v66 = v53;
        *(&v66 + 1) = v52;
        *&v67 = v59;
        *(&v67 + 1) = v58;
        v30 = v84;
        v31 = v85;
        v68 = v84;
        v69 = v85;
        v32 = v86;
        v71 = 0u;
        v72 = 0u;
        v70 = v86;
        v73 = 0;
        v33 = v51;
        v51[112] = 0;
        *(v33 + 2) = v30;
        *(v33 + 3) = v31;
        v34 = v67;
        *v33 = v66;
        *(v33 + 1) = v34;
        v35 = v72;
        *(v33 + 5) = v71;
        *(v33 + 6) = v35;
        *(v33 + 4) = v32;
        v36 = sub_1DF4(&qword_21870);
        v27(&v33[*(v36 + 48)], v11, v25);
        sub_A388(&v66, v62, &qword_21878);
        v37 = *(v26 + 8);
        v37(v11, v25);
        v74 = v29;
        v75 = v28;
        v76 = v59;
        v77 = v58;
        v78 = v84;
        v79 = v85;
        v80 = v86;
        v81 = 0u;
        v82 = 0u;
        v83 = 0;
        sub_31C4(&v74, &qword_21878);
        sub_A388(v33, v60, &qword_21808);
        swift_storeEnumTagMultiPayload();
        sub_A340(&qword_21800, &qword_21808);
        sub_127B0();
        sub_31C4(v33, &qword_21808);
        v37(v50, v25);
        return;
      }

      v16 = sub_12BE0();

      if ((v16 & 0x8000000000000000) == 0)
      {
        goto LABEL_5;
      }

      __break(1u);
      goto LABEL_12;
    }
  }

  v39 = objc_opt_self();
  v40 = sub_12A30();
  v41 = [v39 _coreroutine_LocalizedStringForKey:v40];

  if (!v41)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v42 = sub_12A50();
  v44 = v43;

  *&v62[0] = v42;
  *(&v62[0] + 1) = v44;
  sub_748C();
  v45 = sub_12840();
  v46 = v60;
  *v60 = v45;
  v46[1] = v47;
  *(v46 + 16) = v48 & 1;
  v46[3] = v49;
  swift_storeEnumTagMultiPayload();
  sub_A340(&qword_21800, &qword_21808);
  sub_127B0();
}

uint64_t sub_6414@<X0>(unint64_t *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1DF4(&qword_216A0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - v8;
  v10 = *a1;
  v27[0] = *(a2 + 168);
  sub_1DF4(&qword_214A0);
  sub_12900();
  v25 = v6;
  v26 = a3;
  if ((v28 & 0xC000000000000001) == 0)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v10 < *(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8)))
    {
      v11 = *(v28 + 8 * v10 + 32);
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_13;
  }

  v11 = sub_12BD0();
LABEL_5:
  v12 = v11;

  v13 = swift_allocObject();
  v14 = a2[13];
  *(v13 + 208) = a2[12];
  *(v13 + 224) = v14;
  *(v13 + 240) = a2[14];
  v15 = a2[9];
  *(v13 + 144) = a2[8];
  *(v13 + 160) = v15;
  v16 = a2[11];
  *(v13 + 176) = a2[10];
  *(v13 + 192) = v16;
  v17 = a2[5];
  *(v13 + 80) = a2[4];
  *(v13 + 96) = v17;
  v18 = a2[7];
  *(v13 + 112) = a2[6];
  *(v13 + 128) = v18;
  v19 = a2[1];
  *(v13 + 16) = *a2;
  *(v13 + 32) = v19;
  v20 = a2[3];
  *(v13 + 48) = a2[2];
  *(v13 + 64) = v20;
  *(v13 + 256) = v10;
  *(v13 + 264) = 0;
  __chkstk_darwin(v13);
  *(&v25 - 2) = v12;
  sub_3930(a2, v27);
  sub_1DF4(&qword_214B0);
  sub_3968();
  sub_12930();

  v27[0] = a2[14];
  sub_1DF4(&qword_21768);
  sub_12900();
  if (v28 != v10)
  {
    a2 = v25;
    a3 = v26;
    if (qword_21B38 == -1)
    {
LABEL_8:
      v22 = qword_21B00;
      goto LABEL_9;
    }

LABEL_13:
    swift_once();
    goto LABEL_8;
  }

  v21 = [objc_opt_self() systemGray4Color];
  a2 = v25;
  a3 = v26;
LABEL_9:
  *&v27[0] = sub_128E0();
  v23 = sub_12970();
  (*(v7 + 32))(a3, v9, a2);
  result = sub_1DF4(&qword_21840);
  *(a3 + *(result + 36)) = v23;
  return result;
}

void sub_6758(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v22[1] = a2;
  v3 = sub_1DF4(&qword_214E8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v22 - v5;
  v7 = objc_opt_self();
  v8 = sub_12A30();
  v9 = [v7 _coreroutine_LocalizedStringForKey:v8];

  if (v9)
  {
    v10 = sub_12A50();
    v12 = v11;

    *&v24 = v10;
    *(&v24 + 1) = v12;
    v13 = swift_allocObject();
    v14 = a1[13];
    v13[13] = a1[12];
    v13[14] = v14;
    v13[15] = a1[14];
    v15 = a1[9];
    v13[9] = a1[8];
    v13[10] = v15;
    v16 = a1[11];
    v13[11] = a1[10];
    v13[12] = v16;
    v17 = a1[5];
    v13[5] = a1[4];
    v13[6] = v17;
    v18 = a1[7];
    v13[7] = a1[6];
    v13[8] = v18;
    v19 = a1[1];
    v13[1] = *a1;
    v13[2] = v19;
    v20 = a1[3];
    v13[3] = a1[2];
    v13[4] = v20;
    sub_3930(a1, &v23);
    sub_748C();
    sub_12950();
    v24 = a1[13];
    sub_1DF4(&qword_21480);
    v21 = sub_12920();
    __chkstk_darwin(v21);
    v22[-2] = a1;
    sub_A340(&qword_21510, &qword_214E8);
    sub_12870();

    (*(v4 + 8))(v6, v3);
  }

  else
  {
    __break(1u);
  }
}

void sub_6A20(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = sub_128B0();
  v65 = *(v3 - 8);
  v66 = v3;
  v4 = __chkstk_darwin(v3);
  v67 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = v58 - v6;
  v8 = objc_opt_self();
  v9 = sub_12A30();
  v10 = [v8 _coreroutine_LocalizedStringForKey:v9];

  if (!v10)
  {
    __break(1u);
    goto LABEL_6;
  }

  v11 = sub_12A50();
  v13 = v12;

  *&v69 = v11;
  *(&v69 + 1) = v13;
  sub_748C();
  v14 = sub_12840();
  v16 = v15;
  LOBYTE(v11) = v17;
  v18 = swift_allocObject();
  v19 = *(a1 + 208);
  v18[13] = *(a1 + 192);
  v18[14] = v19;
  v18[15] = *(a1 + 224);
  v20 = *(a1 + 144);
  v18[9] = *(a1 + 128);
  v18[10] = v20;
  v21 = *(a1 + 176);
  v18[11] = *(a1 + 160);
  v18[12] = v21;
  v22 = *(a1 + 80);
  v18[5] = *(a1 + 64);
  v18[6] = v22;
  v23 = *(a1 + 112);
  v18[7] = *(a1 + 96);
  v18[8] = v23;
  v24 = *(a1 + 16);
  v18[1] = *a1;
  v18[2] = v24;
  v25 = *(a1 + 48);
  v18[3] = *(a1 + 32);
  v18[4] = v25;
  sub_3930(a1, &v69);
  v63 = v7;
  sub_128A0();

  sub_98E0(v14, v16, v11 & 1);

  v26 = sub_12A30();
  v27 = [v8 _coreroutine_LocalizedStringForKey:v26];

  if (!v27)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v28 = sub_12A50();
  v30 = v29;

  *&v69 = v28;
  *(&v69 + 1) = v30;
  v31 = sub_12840();
  v33 = v32;
  LOBYTE(v30) = v34;
  sub_128A0();
  sub_98E0(v31, v33, v30 & 1);

  v35 = sub_12A30();
  v36 = [v8 _coreroutine_LocalizedStringForKey:v35];

  if (v36)
  {
    v37 = sub_12A50();
    v39 = v38;

    *&v69 = v37;
    *(&v69 + 1) = v39;
    v40 = sub_12840();
    v61 = v41;
    v62 = v40;
    v59 = v42;
    v60 = v43;
    v69 = *(a1 + 184);
    v70 = *(a1 + 200);
    sub_1DF4(&qword_21760);
    sub_12900();
    v69 = v68;
    v44 = sub_12840();
    v58[2] = v45;
    v58[3] = v44;
    v58[1] = v46;
    sub_1DF4(&qword_21820);
    v47 = v65;
    v48 = *(v65 + 72);
    v49 = (*(v65 + 80) + 32) & ~*(v65 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_142E0;
    v51 = v50 + v49;
    v52 = *(v47 + 16);
    v53 = v63;
    v54 = v66;
    v52(v51, v63, v66);
    v55 = v51 + v48;
    v56 = v67;
    v52(v55, v67, v54);
    sub_125E0();
    v57 = *(v47 + 8);
    v57(v56, v54);
    v57(v53, v54);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_6EEC(uint64_t a1)
{
  v2 = sub_1DF4(&qword_21910);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v17 - v5;
  (*(&stru_B8.flags + (swift_isaMask & **(a1 + 8))))(v4);
  v7 = swift_allocObject();
  v8 = *(a1 + 208);
  v7[13] = *(a1 + 192);
  v7[14] = v8;
  v7[15] = *(a1 + 224);
  v9 = *(a1 + 144);
  v7[9] = *(a1 + 128);
  v7[10] = v9;
  v10 = *(a1 + 176);
  v7[11] = *(a1 + 160);
  v7[12] = v10;
  v11 = *(a1 + 80);
  v7[5] = *(a1 + 64);
  v7[6] = v11;
  v12 = *(a1 + 112);
  v7[7] = *(a1 + 96);
  v7[8] = v12;
  v13 = *(a1 + 16);
  v7[1] = *a1;
  v7[2] = v13;
  v14 = *(a1 + 48);
  v7[3] = *(a1 + 32);
  v7[4] = v14;
  sub_3930(a1, v18);
  sub_A340(&qword_21750, &qword_21910);
  v15 = sub_125B0();

  (*(v3 + 8))(v6, v2);
  v18[0] = *(a1 + 16);
  v17[1] = v15;
  sub_1DF4(&qword_21758);
  return sub_12910();
}

double sub_7110@<D0>(void **a1@<X0>, _OWORD *a2@<X8>)
{
  (*(&stru_B8.size + (swift_isaMask & **a1)))(v6);
  v3 = v6[3];
  a2[2] = v6[2];
  a2[3] = v3;
  a2[4] = v7[0];
  *(a2 + 73) = *(v7 + 9);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  a2[1] = v5;
  return result;
}

uint64_t sub_7194(_OWORD *a1, void **a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v7[3] = v2;
  v8[0] = a1[4];
  *(v8 + 9) = *(a1 + 73);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(&stru_B8.offset + (swift_isaMask & **a2));
  sub_A388(v7, &v6, &qword_214D0);
  return v4(v7);
}

uint64_t sub_7238(_OWORD *a1)
{
  v2 = sub_1DF4(&unk_21740);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  sub_126C0();
  sub_125C0();
  v5 = sub_125D0();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = swift_allocObject();
  v7 = a1[13];
  v6[13] = a1[12];
  v6[14] = v7;
  v6[15] = a1[14];
  v8 = a1[9];
  v6[9] = a1[8];
  v6[10] = v8;
  v9 = a1[11];
  v6[11] = a1[10];
  v6[12] = v9;
  v10 = a1[5];
  v6[5] = a1[4];
  v6[6] = v10;
  v11 = a1[7];
  v6[7] = a1[6];
  v6[8] = v11;
  v12 = a1[1];
  v6[1] = *a1;
  v6[2] = v12;
  v13 = a1[3];
  v6[3] = a1[2];
  v6[4] = v13;
  sub_3930(a1, v15);
  return sub_12940();
}

unint64_t sub_73D4()
{
  result = qword_214F0;
  if (!qword_214F0)
  {
    sub_3A18(&qword_214E0);
    sub_A340(&qword_214F8, &qword_21500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_214F0);
  }

  return result;
}

unint64_t sub_748C()
{
  result = qword_21508;
  if (!qword_21508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_21508);
  }

  return result;
}

uint64_t sub_74E0(uint64_t a1)
{
  v2 = sub_1DF4(&qword_214E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_7548@<Q0>(uint64_t a1@<X8>)
{
  sub_8C6C(v9);
  v2 = v9[13];
  *(a1 + 192) = v9[12];
  *(a1 + 208) = v2;
  *(a1 + 224) = v9[14];
  v3 = v9[9];
  *(a1 + 128) = v9[8];
  *(a1 + 144) = v3;
  v4 = v9[11];
  *(a1 + 160) = v9[10];
  *(a1 + 176) = v4;
  v5 = v9[5];
  *(a1 + 64) = v9[4];
  *(a1 + 80) = v5;
  v6 = v9[7];
  *(a1 + 96) = v9[6];
  *(a1 + 112) = v6;
  v7 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v7;
  result = v9[3];
  *(a1 + 32) = v9[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_7624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a3;
  v5 = sub_1DF4(&qword_216D0);
  v6 = __chkstk_darwin(v5 - 8);
  v52 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v50 = (&v45 - v8);
  v9 = sub_1DF4(&qword_216D8);
  v10 = __chkstk_darwin(v9 - 8);
  v49 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v45 - v12;
  result = sub_126E0();
  *v13 = result;
  *(v13 + 1) = 0;
  v13[16] = 1;
  if (a2)
  {
    v15 = &v13[*(sub_1DF4(&qword_216E0) + 44)];
    v53 = a1;
    v54 = a2;
    sub_748C();
    v47 = a2;

    v16 = sub_12840();
    v18 = v17;
    v20 = v19;
    sub_128D0();
    v21 = sub_12810();
    v48 = v13;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v46 = a1;

    sub_98E0(v16, v18, v20 & 1);

    sub_127F0();
    v27 = sub_12830();
    v29 = v28;
    LOBYTE(v16) = v30;
    v32 = v31;

    sub_98E0(v22, v24, v26 & 1);

    KeyPath = swift_getKeyPath();
    v34 = &v15[*(sub_1DF4(&qword_216E8) + 36)];
    v35 = *(sub_1DF4(&qword_216F0) + 28);
    v36 = sub_12820();
    (*(*(v36 - 8) + 56))(v34 + v35, 1, 1, v36);
    *v34 = swift_getKeyPath();
    *v15 = v27;
    *(v15 + 1) = v29;
    v15[16] = v16 & 1;
    *(v15 + 3) = v32;
    *(v15 + 4) = KeyPath;
    *(v15 + 5) = 0;
    v15[48] = 1;
    v37 = sub_126E0();
    v38 = v50;
    *v50 = v37;
    *(v38 + 8) = 0;
    *(v38 + 16) = 1;
    sub_1DF4(&qword_216F8);
    v39 = swift_allocObject();
    *(v39 + 16) = v46;
    *(v39 + 24) = v47;

    sub_1DF4(&qword_21700);
    sub_A340(&qword_21708, &qword_21700);
    sub_12930();
    v41 = v48;
    v40 = v49;
    sub_A388(v48, v49, &qword_216D8);
    v42 = v52;
    sub_A388(v38, v52, &qword_216D0);
    v43 = v51;
    sub_A388(v40, v51, &qword_216D8);
    v44 = sub_1DF4(&qword_21710);
    sub_A388(v42, v43 + *(v44 + 48), &qword_216D0);
    sub_31C4(v38, &qword_216D0);
    sub_31C4(v41, &qword_216D8);
    sub_31C4(v42, &qword_216D0);
    return sub_31C4(v40, &qword_216D8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_7AD4(uint64_t a1@<X8>)
{
  v36 = a1;
  v34 = sub_1DF4(&qword_216E8);
  v1 = __chkstk_darwin(v34);
  v35 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v1);
  v5 = &v32 - v4;
  __chkstk_darwin(v3);
  v7 = &v32 - v6;
  v8 = objc_opt_self();
  v9 = sub_12A30();
  v10 = [v8 _coreroutine_LocalizedStringForKey:v9];

  if (v10)
  {
    v11 = sub_12A50();
    v13 = v12;

    v37 = v11;
    v38 = v13;
    sub_748C();
    v14 = sub_12840();
    v16 = v15;
    v18 = v17;
    sub_127F0();
    v19 = sub_12830();
    v21 = v20;
    v23 = v22;
    v33 = v24;

    sub_98E0(v14, v16, v18 & 1);

    KeyPath = swift_getKeyPath();
    v26 = &v5[*(v34 + 36)];
    v27 = *(sub_1DF4(&qword_216F0) + 28);
    v28 = sub_12820();
    (*(*(v28 - 8) + 56))(v26 + v27, 1, 1, v28);
    *v26 = swift_getKeyPath();
    *v5 = v19;
    *(v5 + 1) = v21;
    v5[16] = v23 & 1;
    *(v5 + 3) = v33;
    *(v5 + 4) = KeyPath;
    *(v5 + 5) = 0;
    v5[48] = 1;
    sub_992C(v5, v7);
    v29 = v35;
    sub_A388(v7, v35, &qword_216E8);
    v30 = v36;
    sub_A388(v29, v36, &qword_216E8);
    v31 = v30 + *(sub_1DF4(&qword_21718) + 48);
    *v31 = 0;
    *(v31 + 8) = 1;
    sub_31C4(v7, &qword_216E8);
    sub_31C4(v29, &qword_216E8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_7DF8@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = sub_126E0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v5 = sub_1DF4(&qword_21518);
  return sub_7624(v4, v3, a1 + *(v5 + 44));
}

void sub_7E5C(void *a1, double a2, uint64_t a3, unint64_t a4, unint64_t a5, char a6)
{
  isa = [a1 annotations];
  if (!isa)
  {
    sub_1DF4(&qword_21580);
    sub_12A80();
    isa = sub_12A70().super.isa;
  }

  [a1 removeAnnotations:isa];

  if (a6)
  {
    goto LABEL_37;
  }

  v13 = a4 + 8 * a5;
  v51 = a4 & 0xC000000000000001;
  if ((a4 & 0xC000000000000001) == 0)
  {
    if ((a5 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(&dword_10 + (a4 & 0xFFFFFFFFFFFFFF8)) > a5)
    {
      v14 = *(v13 + 32);
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_32;
  }

  v14 = sub_12BD0();
LABEL_8:
  v15 = v14;
  v6 = &RTSettingsViewController;
  v16 = [v14 location];

  [v16 latitude];
  v18 = v17;

  if (v51)
  {
    v19 = sub_12BD0();
  }

  else
  {
    if ((a5 & 0x8000000000000000) != 0)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (*(&dword_10 + (a4 & 0xFFFFFFFFFFFFFF8)) <= a5)
    {
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      return;
    }

    v19 = *(v13 + 32);
  }

  v20 = v19;
  v21 = [v19 location];

  [v21 longitude];
  v23 = v22;

  if (v51)
  {
    v24 = sub_12BD0();
  }

  else
  {
    v24 = *(v13 + 32);
  }

  v25 = v24;
  v26 = [v24 location];

  [v26 horizontalUncertainty];
  v28 = v27;

  if (v51)
  {
    v29 = sub_12BD0();
  }

  else
  {
    v29 = *(v13 + 32);
  }

  v30 = v29;
  v31 = [v29 location];

  [v31 horizontalUncertainty];
  v33 = v32;

  v52.latitude = v18;
  v52.longitude = v23;
  v53 = MKCoordinateRegionMakeWithDistance(v52, v28 + a2, v33 + a2);
  [a1 regionThatFits:{v53.center.latitude, v53.center.longitude, v53.span.latitudeDelta, v53.span.longitudeDelta}];
  [a1 setRegion:?];
  v34 = [a1 overlays];
  if (!v34)
  {
    sub_1DF4(&qword_215E8);
    sub_12A80();
    v34 = sub_12A70().super.isa;
  }

  [a1 removeOverlays:v34];

  if (!(a4 >> 62))
  {
    v35 = *(&dword_10 + (a4 & 0xFFFFFFFFFFFFFF8));
    if (!v35)
    {
      return;
    }

    goto LABEL_23;
  }

LABEL_32:
  v35 = sub_12BE0();
  if (!v35)
  {
    return;
  }

LABEL_23:
  v36 = objc_opt_self();
  if (v35 < 1)
  {
    __break(1u);
    goto LABEL_35;
  }

  v37 = v36;
  v38 = 0;
  do
  {
    if (v51)
    {
      v39 = sub_12BD0();
    }

    else
    {
      v39 = *(a4 + 8 * v38 + 32);
    }

    v40 = v39;
    ++v38;
    v41 = [v39 v6[43].base_meths];
    [v41 latitude];
    v43 = v42;

    v44 = [v40 v6[43].base_meths];
    [v44 longitude];
    v46 = v45;

    v47 = [v40 v6[43].base_meths];
    [v47 horizontalUncertainty];
    v49 = v48;

    v50 = [v37 circleWithCenterCoordinate:v43 radius:{v46, v49}];
    [a1 addOverlay:v50];
  }

  while (v35 != v38);
}

id sub_82CC(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR____TtCV19CoreRoutineSettings17RTSettingsMapView11Coordinator_parent];
  *v10 = a1;
  *(v10 + 1) = a2;
  v10[16] = a3 & 1;
  *(v10 + 3) = a4;
  v12.receiver = v9;
  v12.super_class = v4;
  return objc_msgSendSuper2(&v12, "init");
}

void sub_8348(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v7 = [objc_allocWithZone(MKMapView) init];
  if (a4)
  {
    goto LABEL_17;
  }

  v8 = v7;
  v9 = a2 + 8 * a3;
  if ((a2 & 0xC000000000000001) == 0)
  {
    if ((a3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)) > a3)
    {
      v10 = *(v9 + 32);
      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_15;
  }

  v10 = sub_12BD0();
LABEL_6:
  v11 = v10;
  v12 = [v10 location];

  [v12 latitude];
  v14 = v13;

  if ((a2 & 0xC000000000000001) != 0)
  {
    v15 = sub_12BD0();
LABEL_11:
    v16 = v15;
    v17 = [v15 location];

    [v17 longitude];
    v19 = v18;

    sub_1DF4(&qword_215F8);
    sub_127C0();
    [v8 setDelegate:v20];

    v21.latitude = v14;
    v21.longitude = v19;
    v22 = MKCoordinateRegionMakeWithDistance(v21, 50.0, 50.0);
    [v8 regionThatFits:{v22.center.latitude, v22.center.longitude, v22.span.latitudeDelta, v22.span.longitudeDelta}];
    [v8 setRegion:1 animated:?];
    return;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (*(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)) > a3)
    {
      v15 = *(v9 + 32);
      goto LABEL_11;
    }

    goto LABEL_16;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
}

id sub_85D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RTSettingsMapView.Coordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_8648@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  v6 = v1[3];
  v7 = type metadata accessor for RTSettingsMapView.Coordinator();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtCV19CoreRoutineSettings17RTSettingsMapView11Coordinator_parent];
  *v9 = v3;
  *(v9 + 1) = v4;
  v9[16] = v5;
  *(v9 + 3) = v6;
  v11.receiver = v8;
  v11.super_class = v7;

  result = objc_msgSendSuper2(&v11, "init");
  *a1 = result;
  return result;
}

uint64_t sub_8724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_988C();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_8788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_988C();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_87EC()
{
  sub_988C();
  sub_12790();
  __break(1u);
}

uint64_t sub_8818(uint64_t a1)
{
  v2 = sub_9838();

  return static PreviewProvider._previews.getter(a1, v2);
}

uint64_t sub_8864(uint64_t a1)
{
  v2 = sub_9838();

  return static PreviewProvider._platform.getter(a1, v2);
}

id sub_88B0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t sub_8918@<X0>(uint64_t a1@<X8>)
{
  result = sub_12690();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_89A0(uint64_t a1)
{
  v2 = sub_1DF4(&qword_21720);
  __chkstk_darwin(v2 - 8);
  sub_A388(a1, &v5 - v3, &qword_21720);
  return sub_12680();
}

void sub_8A48(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_12BA0();
      sub_3320(0, &qword_21728);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_3320(0, &qword_21728);
    if (sub_12B80() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_12B90();
    swift_dynamicCast();
    v4 = v14;
    v7 = sub_12B10(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = sub_12B20();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

__n128 sub_8C6C@<Q0>(uint64_t a1@<X8>)
{
  type metadata accessor for RTSettingsController();
  sub_AE84();
  sub_3378();
  v2 = sub_12610();
  v5 = v3;
  v6 = v2;
  sub_1DF4(&qword_21478);
  sub_128F0();
  sub_128F0();
  sub_128F0();
  sub_128F0();
  sub_128F0();
  sub_128F0();
  sub_1DF4(&qword_21490);
  sub_128F0();
  sub_1DF4(&qword_21498);
  sub_128F0();
  sub_128F0();
  sub_128F0();
  sub_128F0();
  result = v7;
  *a1 = v6;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 32) = v7.n128_u8[0];
  *(a1 + 40) = v7.n128_u64[1];
  *(a1 + 48) = v7.n128_u8[0];
  *(a1 + 56) = v7.n128_u64[1];
  *(a1 + 64) = v7;
  *(a1 + 80) = v7;
  *(a1 + 96) = v8;
  *(a1 + 104) = v7;
  *(a1 + 120) = v8;
  *(a1 + 128) = v7;
  *(a1 + 144) = v8;
  *(a1 + 160) = v9;
  *(a1 + 168) = v7;
  *(a1 + 184) = v7;
  *(a1 + 200) = v8;
  *(a1 + 208) = v7.n128_u8[0];
  *(a1 + 212) = *(v7.n128_u32 + 3);
  *(a1 + 209) = v7.n128_u32[0];
  *(a1 + 216) = v7.n128_u64[1];
  *(a1 + 224) = v7;
  return result;
}

void sub_8F10()
{
  v0 = sub_12A30();
  v1 = [objc_opt_self() presenterForPrivacySplashWithIdentifier:v0];

  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 connectedScenes];

  sub_3320(0, &qword_21728);
  sub_999C();
  v4 = sub_12AA0();

  v5 = sub_40A0(v4);

  if (!v5)
  {
    v13 = 0;
    v7 = 0;
    if (!v1)
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  v7 = v6;
  if (!v6)
  {

    v13 = 0;
    if (!v1)
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v8 = [v6 windows];
  sub_3320(0, &qword_21738);
  v9 = sub_12A80();

  if (v9 >> 62)
  {
    if (sub_12BE0())
    {
      goto LABEL_5;
    }

LABEL_17:

    v13 = 0;
    if (!v1)
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  if (!*(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_17;
  }

LABEL_5:
  if ((v9 & 0xC000000000000001) != 0)
  {
    goto LABEL_19;
  }

  if (!*(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)))
  {
    __break(1u);
    return;
  }

  for (i = *(v9 + 32); ; i = sub_12BD0())
  {
    v13 = i;

    if (v1)
    {
      break;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_13:
  v11 = v1;
  v12 = [v13 rootViewController];
  [v11 setPresentingViewController:v12];

  [v11 present];
}

id sub_91AC()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    v1 = v0;
    v2 = objc_allocWithZone(MKCircleRenderer);
    swift_unknownObjectRetain();
    v3 = [v2 initWithCircle:v1];
    v4 = objc_opt_self();
    v5 = v3;
    v6 = [v4 blueColor];
    [v5 setStrokeColor:v6];

    [v5 setLineWidth:1.0];
    v7 = [v4 systemBlueColor];
    [v5 setFillColor:v7];

    v8 = v5;
    [v8 setAlpha:0.3];

    swift_unknownObjectRelease();
    return v8;
  }

  else
  {
    v10 = objc_allocWithZone(MKOverlayRenderer);

    return [v10 init];
  }
}

unint64_t sub_935C()
{
  result = qword_21600;
  if (!qword_21600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_21600);
  }

  return result;
}

unint64_t sub_93C0()
{
  result = qword_21608;
  if (!qword_21608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_21608);
  }

  return result;
}

__n128 sub_9430(uint64_t a1, __int128 *a2)
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

uint64_t sub_9474(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
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

uint64_t sub_94BC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 sub_9548(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_9554(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_95B0(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 sub_9610(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_961C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_9664(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_96C4()
{
  sub_3A18(&qword_214E0);
  sub_3A18(&qword_214E8);
  sub_73D4();
  sub_748C();
  sub_A340(&qword_21510, &qword_214E8);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_97E4()
{
  result = qword_216B8;
  if (!qword_216B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_216B8);
  }

  return result;
}

unint64_t sub_9838()
{
  result = qword_216C0;
  if (!qword_216C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_216C0);
  }

  return result;
}

unint64_t sub_988C()
{
  result = qword_216C8;
  if (!qword_216C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_216C8);
  }

  return result;
}

uint64_t sub_98E0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_98F0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_992C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DF4(&qword_216E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_999C()
{
  result = qword_21730;
  if (!qword_21730)
  {
    sub_3320(255, &qword_21728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_21730);
  }

  return result;
}

uint64_t sub_9A04(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void (*sub_9A10())(_BYTE *, void)
{
  v1 = *(&stru_B8.reloff + (swift_isaMask & **(v0 + 24)));
  result = v1(v6);
  if (*(v3 + 40))
  {
    *(v3 + 88) = 0;
    result(v6, 0);
    result = v1(v6);
    if (v4[5])
    {
      v5 = result;
      v4[9] = 0;
      v4[10] = 0;

      return v5(v6, 0);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_9AE8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (!v2)
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = v1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  LOBYTE(v14) = *a1 & 1;
  sub_1DF4(&qword_21480);
  sub_12910();
  if (!v4)
  {
    v7 = objc_opt_self();
    v8 = sub_12A30();
    v9 = [v7 _coreroutine_LocalizedStringForKey:{v8, v14}];

    if (v9)
    {
      sub_12A50();

      goto LABEL_5;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

LABEL_5:

  sub_1DF4(&qword_21760);
  sub_12910();
  sub_1DF4(&qword_21768);
  sub_12910();
  v17 = *(v3 + 112);

  sub_12910();
  v10 = &_swiftEmptyArrayStorage;
  if (v5)
  {
    v10 = v5;
  }

  v16 = *(v3 + 184);
  v15 = v10;

  sub_1DF4(&qword_214A0);
  sub_12910();
  sub_33D0();
  if (v6)
  {
    goto LABEL_10;
  }

  v11 = objc_opt_self();
  v12 = sub_12A30();
  v13 = [v11 _coreroutine_LocalizedStringForKey:{v12, v15, v2, v16, v17}];

  if (v13)
  {
    sub_12A50();

LABEL_10:

    sub_12910();
    return;
  }

LABEL_13:
  __break(1u);
}

unint64_t sub_9DB8()
{
  result = qword_217B0;
  if (!qword_217B0)
  {
    sub_3A18(&qword_217A8);
    sub_A340(&qword_217B8, &qword_217C0);
    sub_A340(&qword_217C8, &qword_217D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_217B0);
  }

  return result;
}

unint64_t sub_9E9C()
{
  result = qword_217D8;
  if (!qword_217D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_217D8);
  }

  return result;
}

__n128 sub_9EF0@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_126E0();
  sub_58CC(v3, v7);
  *&v6[55] = v7[3];
  *&v6[39] = v7[2];
  *&v6[23] = v7[1];
  *&v6[7] = v7[0];
  *(a1 + 33) = *&v6[16];
  result = *&v6[32];
  *(a1 + 49) = *&v6[32];
  *(a1 + 65) = *&v6[48];
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 80) = *&v6[63];
  *(a1 + 17) = *v6;
  return result;
}

unint64_t sub_9F8C()
{
  result = qword_217F8;
  if (!qword_217F8)
  {
    sub_3A18(&qword_217F0);
    sub_A340(&qword_21800, &qword_21808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_217F8);
  }

  return result;
}

uint64_t sub_A04C()
{
  v3 = *(v0 + 224);
  v2[1] = *(v0 + 224);
  v4 = *(&v3 + 1);
  sub_A388(&v4, v2, &qword_21488);
  sub_1DF4(&qword_21480);
  sub_12900();
  v2[0] = v3;
  sub_12910();
  return sub_31C4(&v3, &qword_21480);
}

unint64_t sub_A17C()
{
  result = qword_21848;
  if (!qword_21848)
  {
    sub_3A18(&qword_21838);
    sub_A208();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_21848);
  }

  return result;
}

unint64_t sub_A208()
{
  result = qword_21850;
  if (!qword_21850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_21850);
  }

  return result;
}

unint64_t sub_A25C()
{
  result = qword_21858;
  if (!qword_21858)
  {
    sub_3A18(&qword_21840);
    sub_A340(&qword_21698, &qword_216A0);
    sub_A340(&qword_21860, &qword_21868);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_21858);
  }

  return result;
}

uint64_t sub_A340(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_3A18(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_A388(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1DF4(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_A3F0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_A400(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_A3F0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_A444(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_98E0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_A488(_BYTE *a1)
{
  if (*a1)
  {
    (*(&stru_108.reserved2 + (swift_isaMask & **(v1 + 24))))(1);
  }

  sub_1DF4(&qword_21480);
  return sub_12910();
}

uint64_t sub_A5AC(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_A678()
{
  v3 = *(v0 + 48);
  v2[1] = *(v0 + 48);
  v4 = *(&v3 + 1);
  sub_A388(&v4, v2, &qword_21488);
  sub_1DF4(&qword_21480);
  sub_12900();
  v2[0] = v3;
  sub_12910();
  return sub_31C4(&v3, &qword_21480);
}

double sub_A73C(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_A758(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_A7B4@<Q0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_12580();

  result = v4;
  *&v8[1] = *&v7[9];
  *v8 = *&v7[8];
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = *v7;
  *(a1 + 73) = *&v8[1];
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_A86C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_12590();
}

void (*sub_A8F4(uint64_t *a1))(void *a1)
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
  *(v3 + 48) = sub_12570();
  return sub_A998;
}

void sub_A998(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_AA00()
{
  swift_beginAccess();
  sub_1DF4(&qword_21908);
  sub_12550();
  return swift_endAccess();
}

uint64_t sub_AA74(uint64_t a1)
{
  v2 = sub_1DF4(&qword_21910);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  sub_1DF4(&qword_21908);
  sub_12560();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_ABAC(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = sub_1DF4(&qword_21910);
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

  v9 = OBJC_IVAR____TtC19CoreRoutineSettings20RTSettingsController__settingsDetails;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_1DF4(&qword_21908);
  sub_12550();
  swift_endAccess();
  return sub_AD1C;
}

void sub_AD1C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_12560();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_12560();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

id sub_AE84()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *sub_AEB8()
{
  v1 = sub_12AD0();
  v17 = *(v1 - 8);
  v18 = v1;
  __chkstk_darwin(v1);
  v16 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_12AC0();
  __chkstk_darwin(v3);
  v4 = sub_12A10();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1DF4(&qword_21908);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  *&v0[OBJC_IVAR____TtC19CoreRoutineSettings20RTSettingsController_routineManager] = 0;
  *&v0[OBJC_IVAR____TtC19CoreRoutineSettings20RTSettingsController_dataSource] = 0;
  *&v0[OBJC_IVAR____TtC19CoreRoutineSettings20RTSettingsController_timer] = 0;
  *&v0[OBJC_IVAR____TtC19CoreRoutineSettings20RTSettingsController_sessionStartDate] = 0;
  v9 = OBJC_IVAR____TtC19CoreRoutineSettings20RTSettingsController__settingsDetails;
  v21 = 0u;
  memset(v22, 0, sizeof(v22));
  memset(v20, 0, sizeof(v20));
  sub_1DF4(&qword_214D0);
  sub_12540();
  (*(v6 + 32))(&v0[v9], v8, v5);
  v15 = OBJC_IVAR____TtC19CoreRoutineSettings20RTSettingsController_queue;
  sub_3320(0, &qword_21918);
  sub_12A00();
  *&v20[0] = &_swiftEmptyArrayStorage;
  sub_E690(&qword_21920, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1DF4(&qword_21928);
  sub_E6D8(&qword_21930, &qword_21928);
  sub_12B40();
  (*(v17 + 104))(v16, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v18);
  *&v0[v15] = sub_12B00();
  v10 = type metadata accessor for RTSettingsController();
  v19.receiver = v0;
  v19.super_class = v10;
  v11 = objc_msgSendSuper2(&v19, "init");
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v20[0]) = 0;
  memset(v20 + 8, 0, 32);
  *(&v20[2] + 1) = 0xE000000000000000;
  v21 = 0u;
  memset(v22, 0, sizeof(v22));
  v12 = v11;
  v13 = sub_12590();
  (*&stru_108.segname[(swift_isaMask & *v12) - 8])(v13);

  return v12;
}

uint64_t type metadata accessor for RTSettingsController()
{
  result = qword_21F10;
  if (!qword_21F10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_B37C()
{
  v1 = *&v0[OBJC_IVAR____TtC19CoreRoutineSettings20RTSettingsController_queue];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_B508;
  *(v3 + 24) = v2;
  v8[4] = sub_B60C;
  v8[5] = v3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_B634;
  v8[3] = &unk_1D238;
  v4 = _Block_copy(v8);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_B4D0()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_B508()
{
  v1 = *(v0 + 16);
  v2 = [objc_allocWithZone(RTRoutineManager) init];
  v3 = *(v1 + OBJC_IVAR____TtC19CoreRoutineSettings20RTSettingsController_routineManager);
  *(v1 + OBJC_IVAR____TtC19CoreRoutineSettings20RTSettingsController_routineManager) = v2;
  v4 = v2;

  if (v4)
  {
    v5 = [objc_allocWithZone(RTLocationShifter) init];
    v6 = [objc_allocWithZone(RTLocationOfInterestDataSource) initWithRoutineManager:v4 locationShifter:v5];

    v7 = *(v1 + OBJC_IVAR____TtC19CoreRoutineSettings20RTSettingsController_dataSource);
    *(v1 + OBJC_IVAR____TtC19CoreRoutineSettings20RTSettingsController_dataSource) = v6;

    (*&stru_108.segname[swift_isaMask & *v1])();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_B65C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_B674()
{
  v1 = (*&stru_158.sectname[swift_isaMask & *v0])();
  (*(&stru_108.reloff + (swift_isaMask & *v0)))(v1);
  v2 = *&stru_108.segname[(swift_isaMask & *v0) + 8];

  return v2();
}

void sub_B758()
{
  v1 = OBJC_IVAR____TtC19CoreRoutineSettings20RTSettingsController_dataSource;
  v2 = *&v0[OBJC_IVAR____TtC19CoreRoutineSettings20RTSettingsController_dataSource];
  if (v2)
  {
    [v2 reset];
    v3 = *&v0[v1];
    if (v3)
    {
      v4 = swift_allocObject();
      *(v4 + 16) = v0;
      v8[4] = sub_BB30;
      v8[5] = v4;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 1107296256;
      v8[2] = sub_BB7C;
      v8[3] = &unk_1D288;
      v5 = _Block_copy(v8);
      v6 = v3;
      v7 = v0;

      [v6 loadLocationsOfInterestWithHandler:v5];
      _Block_release(v5);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_B864(uint64_t a1, char *a2)
{
  v4 = sub_129F0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_12A10();
  v8 = *(v16 - 8);
  __chkstk_darwin(v16);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *&a2[OBJC_IVAR____TtC19CoreRoutineSettings20RTSettingsController_queue];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  aBlock[4] = sub_E7E0;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_BB38;
  aBlock[3] = &unk_1D868;
  v12 = _Block_copy(aBlock);
  swift_errorRetain();
  v13 = a2;
  sub_12A00();
  v17 = &_swiftEmptyArrayStorage;
  sub_E690(&qword_21A18, &type metadata accessor for DispatchWorkItemFlags);
  sub_1DF4(&qword_21A20);
  sub_E6D8(&qword_21A28, &qword_21A20);
  sub_12B40();
  sub_12AF0();
  _Block_release(v12);
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v16);
}

uint64_t sub_BB38(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_BB7C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_BBE8()
{
  v1 = v0;
  sub_3320(0, &qword_21918);
  v2 = sub_12AE0();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_C050;
  *(v4 + 24) = v3;
  v8[4] = sub_EC1C;
  v8[5] = v4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_B634;
  v8[3] = &unk_1D300;
  v5 = _Block_copy(v8);
  v6 = v1;

  dispatch_sync(v2, v5);

  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_BD5C(void *a1)
{
  v2 = sub_124D0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC19CoreRoutineSettings20RTSettingsController_dataSource;
  result = *(a1 + OBJC_IVAR____TtC19CoreRoutineSettings20RTSettingsController_dataSource);
  if (!result)
  {
    goto LABEL_14;
  }

  result = [result summaryRecordCount];
  if (result < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  v26 = v2;
  v9 = *(&stru_B8.reloff + (swift_isaMask & *a1));
  result = v9(v28);
  if (!*(v10 + 40))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *(v10 + 24) = v8;
  v11 = (result)(v28, 0);
  result = (*(&stru_B8.size + (swift_isaMask & *a1)))(v28, v11);
  if (!v28[5])
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v28[3];
  sub_E72C(v28);
  if (v12 >= 1)
  {
    result = *(a1 + v6);
    if (result)
    {
      result = [result summaryInterval];
      if (result)
      {
        v13 = result;
        v14 = objc_opt_self();
        sub_124B0();

        isa = sub_124A0().super.isa;
        (*(v3 + 8))(v5, v26);
        v16 = [v14 configureDateRangeString:isa dateStyle:2 timeStyle:0];

        v17 = sub_12A50();
        v19 = v18;
        result = v9(v27);
        if (*(v20 + 40))
        {
          v21 = result;
          v22 = v20;

          *(v22 + 32) = v17;
          *(v22 + 40) = v19;

          return v21(v27, 0);
        }

        goto LABEL_19;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24 = v9(v27);
  result = *(v23 + 40);
  if (!result)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  *(v23 + 32) = 0;
  *(v23 + 40) = 0xE000000000000000;

  return v24(v27, 0);
}

uint64_t sub_C058()
{
  v1 = v0;
  sub_3320(0, &qword_21918);
  v2 = sub_12AE0();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_C1CC;
  *(v4 + 24) = v3;
  v8[4] = sub_EC1C;
  v8[5] = v4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_B634;
  v8[3] = &unk_1D378;
  v5 = _Block_copy(v8);
  v6 = v1;

  dispatch_sync(v2, v5);

  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

void sub_C1CC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC19CoreRoutineSettings20RTSettingsController_dataSource);
  if (v2)
  {
    v3 = v2;
    v4 = [v3 recentRecords];
    if (v4)
    {
      v5 = v4;
      sub_3320(0, &qword_21A30);
      v6 = sub_12A80();
    }

    else
    {
      v6 = 0;
    }

    v7 = (*(&stru_B8.reloff + (swift_isaMask & *v1)))(v11);
    if (*(v8 + 40))
    {
      v9 = v7;
      v10 = v8;

      *(v10 + 48) = v6;

      v9(v11, 0);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_C2E4(uint64_t a1, char a2)
{
  v3 = v2;
  sub_3320(0, &qword_21918);
  v6 = sub_12AE0();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2 & 1;
  *(v7 + 32) = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_C4A4;
  *(v8 + 24) = v7;
  v12[4] = sub_EC1C;
  v12[5] = v8;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_B634;
  v12[3] = &unk_1D3F0;
  v9 = _Block_copy(v12);
  v10 = v3;

  dispatch_sync(v6, v9);

  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_C46C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_C4A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = objc_opt_self();
  if ((v2 & 1) != 0 || v1 != 2)
  {
    v10 = sub_12A30();
    v11 = &RTSettingsViewController;
    v12 = [v4 _coreroutine_LocalizedStringForKey:v10];

    if (v12)
    {
      v13 = sub_12A50();
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0;
    }

    v16 = *(&stru_B8.reloff + (swift_isaMask & *v3));
    result = v16(v32);
    if (v18[5])
    {
      v19 = result;
      v18[1] = v13;
      v18[2] = v15;

      v19(v32, 0);
      v20 = sub_12A30();
      v21 = [v4 _coreroutine_LocalizedStringForKey:v20];

      if (v21)
      {
        v22 = sub_12A50();
        v24 = v23;
      }

      else
      {
        v22 = 0;
        v24 = 0;
      }

      result = v16(v32);
      if (v30[5])
      {
        goto LABEL_20;
      }

      __break(1u);
      goto LABEL_18;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v5 = sub_12A30();
  v6 = [v4 _coreroutine_LocalizedStringForKey:v5];

  if (v6)
  {
    v7 = sub_12A50();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v11 = *(&stru_B8.reloff + (swift_isaMask & *v3));
  result = (v11)(v32);
  if (!v25[5])
  {
    goto LABEL_22;
  }

  v26 = result;
  v25[1] = v7;
  v25[2] = v9;

  v26(v32, 0);
  v27 = sub_12A30();
  v28 = [v4 _coreroutine_LocalizedStringForKey:v27];

  if (v28)
  {
    v22 = sub_12A50();
    v24 = v29;

    goto LABEL_19;
  }

LABEL_18:
  v22 = 0;
  v24 = 0;
LABEL_19:
  result = (v11)(v32);
  if (v30[5])
  {
LABEL_20:
    v31 = result;
    v30[7] = v22;
    v30[8] = v24;

    return v31(v32, 0);
  }

LABEL_23:
  __break(1u);
  return result;
}

void sub_C7E4()
{
  v1 = *&v0[OBJC_IVAR____TtC19CoreRoutineSettings20RTSettingsController_routineManager];
  if (v1)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v0;
    v6[4] = sub_CB9C;
    v6[5] = v2;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_CBA4;
    v6[3] = &unk_1D440;
    v3 = _Block_copy(v6);
    v4 = v1;
    v5 = v0;

    [v4 fetchCloudSyncAuthorizationState:v3];
    _Block_release(v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_C8D8(uint64_t a1, char *a2)
{
  v4 = sub_129F0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_12A10();
  v8 = *(v16 - 8);
  __chkstk_darwin(v16);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *&a2[OBJC_IVAR____TtC19CoreRoutineSettings20RTSettingsController_queue];
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a1;
  aBlock[4] = sub_E62C;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_BB38;
  aBlock[3] = &unk_1D818;
  v12 = _Block_copy(aBlock);
  v13 = a2;
  sub_12A00();
  v17 = &_swiftEmptyArrayStorage;
  sub_E690(&qword_21A18, &type metadata accessor for DispatchWorkItemFlags);
  sub_1DF4(&qword_21A20);
  sub_E6D8(&qword_21A28, &qword_21A20);
  sub_12B40();
  sub_12AF0();
  _Block_release(v12);
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v16);
}

void sub_CBAC()
{
  v1 = *&v0[OBJC_IVAR____TtC19CoreRoutineSettings20RTSettingsController_routineManager];
  if (v1)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v0;
    v6[4] = sub_CCA0;
    v6[5] = v2;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_BB7C;
    v6[3] = &unk_1D490;
    v3 = _Block_copy(v6);
    v4 = v1;
    v5 = v0;

    [v4 clearRoutineWithHandler:v3];
    _Block_release(v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_CCA0(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *&v3[OBJC_IVAR____TtC19CoreRoutineSettings20RTSettingsController_queue];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_DFAC;
  *(v6 + 24) = v5;
  v10[4] = sub_EC1C;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_B634;
  v10[3] = &unk_1D750;
  v7 = _Block_copy(v10);
  swift_errorRetain();
  v8 = v3;

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LODWORD(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_CE0C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1DF4(&qword_21A10);
    v2 = sub_12BF0();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v32[0] = *v14;
    *(&v32[0] + 1) = v15;

    v16;
    swift_dynamicCast();
    sub_3320(0, &qword_219F0);
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_3368(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_3368(v31, v32);
    result = sub_12BC0(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_3368(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_D0DC(char a1)
{
  v2 = *&v1[OBJC_IVAR____TtC19CoreRoutineSettings20RTSettingsController_routineManager];
  if (v2)
  {
    if (a1 != 2)
    {
      v4 = swift_allocObject();
      *(v4 + 16) = a1;
      *(v4 + 24) = v1;
      v8[4] = sub_D22C;
      v8[5] = v4;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 1107296256;
      v8[2] = sub_BB7C;
      v8[3] = &unk_1D4E0;
      v5 = _Block_copy(v8);
      v6 = v2;
      v7 = v1;

      [v6 setRoutineEnabled:a1 & 1 withHandler:v5];
      _Block_release(v5);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_D1F4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_D22C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_3320(0, &qword_21918);
  v5 = sub_12AE0();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = v3;
  *(v6 + 32) = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_DC84;
  *(v7 + 24) = v6;
  v11[4] = sub_EC1C;
  v11[5] = v7;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_B634;
  v11[3] = &unk_1D6D8;
  v8 = _Block_copy(v11);
  swift_errorRetain();
  v9 = v4;

  dispatch_sync(v5, v8);

  _Block_release(v8);
  LODWORD(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

void sub_D3C0()
{
  v1 = *&v0[OBJC_IVAR____TtC19CoreRoutineSettings20RTSettingsController_routineManager];
  if (v1)
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v0;
    v6[4] = sub_D4B4;
    v6[5] = v2;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_D644;
    v6[3] = &unk_1D530;
    v3 = _Block_copy(v6);
    v4 = v1;
    v5 = v0;

    [v4 fetchRoutineStateWithHandler:v3];
    _Block_release(v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_D4B4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  sub_3320(0, &qword_21918);
  v6 = sub_12AE0();
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = v5;
  v7[4] = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_DA50;
  *(v8 + 24) = v7;
  v12[4] = sub_EC1C;
  v12[5] = v8;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_B634;
  v12[3] = &unk_1D660;
  v9 = _Block_copy(v12);
  swift_errorRetain();
  v10 = v5;

  dispatch_sync(v6, v9);

  _Block_release(v9);
  LODWORD(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

void sub_D64C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

id sub_D6CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RTSettingsController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_D7D8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for RTSettingsController();
  result = sub_12530();
  *a1 = result;
  return result;
}

__n128 sub_D818(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_D83C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_D884(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_D8F4()
{
  sub_D9A0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_D9A0()
{
  if (!qword_21980)
  {
    sub_3A18(&qword_214D0);
    v0 = sub_125A0();
    if (!v1)
    {
      atomic_store(v0, &qword_21980);
    }
  }
}

void *sub_DA2C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void (*sub_DA50())(_BYTE *, void)
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  if (v2)
  {
    v4 = objc_opt_self();
    v5 = sub_12A30();
    v6 = [v4 _coreroutine_LocalizedStringForKey:v5];

    if (v6)
    {
      v7 = sub_12A50();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v14 = *(&stru_B8.reloff + (swift_isaMask & *v3));
    result = v14(v19);
    if (v15[5])
    {
      v16 = result;
      v15[9] = v7;
      v15[10] = v9;

      v16(v19, 0);
      result = v14(v19);
      if (*(v17 + 40))
      {
        *(v17 + 88) = 1;
        return (result)(v19, 0);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_16;
  }

  v10 = *(v1 + 32);
  v11 = *(&stru_B8.reloff + (swift_isaMask & *v3));
  if (v10 <= 1)
  {
    result = v11(v19);
    if (*(v13 + 40))
    {
      *v13 = 0;
      return (result)(v19, 0);
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = v11(v19);
  if (!*(v18 + 40))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  *v18 = 1;
  return (result)(v19, 0);
}

uint64_t sub_DC44()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_DC84()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  if (!v1)
  {
    if (v2 != 2)
    {
      v10 = (*(&stru_B8.reloff + (swift_isaMask & *v3)))(v22);
      if (*(v11 + 40))
      {
        *v11 = v2 & 1;
        v10(v22, 0);
        v12 = [objc_opt_self() defaultCenter];
        v13 = sub_12A30();
        [v12 postNotificationName:v13 object:v3];

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

  if (v2 == 2)
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = objc_opt_self();
  if (v2)
  {
    v5 = sub_12A30();
    v6 = [v4 _coreroutine_LocalizedStringForKey:v5];

    if (v6)
    {
      v7 = sub_12A50();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v17 = (*(&stru_B8.reloff + (swift_isaMask & *v3)))(v22);
    if (v18[5])
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  else
  {
    v14 = sub_12A30();
    v15 = [v4 _coreroutine_LocalizedStringForKey:v14];

    if (v15)
    {
      v7 = sub_12A50();
      v9 = v16;

      goto LABEL_15;
    }
  }

  v7 = 0;
  v9 = 0;
LABEL_15:
  v17 = (*(&stru_B8.reloff + (swift_isaMask & *v3)))(v22);
  if (!v18[5])
  {
LABEL_23:
    __break(1u);
    return;
  }

LABEL_16:
  v19 = v17;
  v18[9] = v7;
  v18[10] = v9;

  v19(v22, 0);
  v20 = (*(&stru_B8.reloff + (swift_isaMask & *v3)))(v22);
  if (!*(v21 + 40))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  *(v21 + 88) = 1;
  v20(v22, 0);
}

id sub_DFAC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (!v1)
  {
    (*&stru_108.segname[swift_isaMask & *v2])();
    v13 = &_swiftEmptyDictionarySingleton;
    goto LABEL_6;
  }

  sub_3320(0, &qword_21918);
  v3 = sub_12AE0();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_E38C;
  *(v5 + 24) = v4;
  v18[4] = sub_EC1C;
  v18[5] = v5;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_B634;
  v18[3] = &unk_1D7C8;
  v6 = _Block_copy(v18);
  v7 = v2;

  dispatch_sync(v3, v6);

  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    sub_1DF4(&qword_219F8);
    inited = swift_initStackObject();
    *(inited + 32) = 0xD000000000000013;
    *(inited + 16) = xmmword_142E0;
    *(inited + 40) = 0x8000000000014F90;
    v10 = sub_124E0();
    result = [v10 domain];
    if (result)
    {
      v11 = result;

      *(inited + 48) = v11;
      *(inited + 56) = 0xD000000000000011;
      *(inited + 64) = 0x8000000000014F70;
      v12 = sub_124E0();
      [v12 code];

      *(inited + 72) = sub_12AB0();
      v13 = sub_E4F0(inited);
      swift_setDeallocating();
      sub_1DF4(&unk_21A00);
      swift_arrayDestroy();
      v1 = sub_E38C;
LABEL_6:
      v14 = sub_12A30();
      sub_CE0C(v13);
      isa = sub_12A20().super.isa;

      sub_11048(v14, isa);

      v16 = sub_12A30();
      sub_3320(0, &qword_219F0);
      v17 = sub_12A20().super.isa;

      AnalyticsSendEvent();

      return sub_E37C(v1);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_E37C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void (*sub_E38C())(_BYTE *, void)
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();
  v3 = sub_12A30();
  v4 = [v2 _coreroutine_LocalizedStringForKey:v3];

  if (v4)
  {
    v5 = sub_12A50();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = *(&stru_B8.reloff + (swift_isaMask & *v1));
  result = v8(v13);
  if (v10[5])
  {
    v11 = result;
    v10[9] = v5;
    v10[10] = v7;

    v11(v13, 0);
    result = v8(v13);
    if (*(v12 + 40))
    {
      *(v12 + 88) = 1;
      return (result)(v13, 0);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_E4F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1DF4(&qword_21450);
    v3 = sub_12BF0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_2F90(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t sub_E5F4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_E690(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_E6D8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_3A18(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_E72C(uint64_t a1)
{
  v2 = sub_1DF4(&qword_214D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_E794(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_E7E0()
{
  isEscapingClosureAtFileLocation = *(v0 + 24);
  if (*(v0 + 16))
  {
    sub_3320(0, &qword_21918);
    v2 = sub_12AE0();
    v3 = swift_allocObject();
    *(v3 + 16) = isEscapingClosureAtFileLocation;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_E9D8;
    *(v4 + 24) = v3;
    v9[4] = sub_EC1C;
    v9[5] = v4;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_B634;
    v9[3] = &unk_1D8E0;
    v5 = _Block_copy(v9);
    v6 = isEscapingClosureAtFileLocation;

    dispatch_sync(v2, v5);

    _Block_release(v5);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  v8 = (*&stru_108.segname[(swift_isaMask & *isEscapingClosureAtFileLocation) + 16])();
  return (*(&stru_108.size + (swift_isaMask & *isEscapingClosureAtFileLocation)))(v8);
}

void (*sub_E9D8())(_BYTE *, void)
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();
  v3 = sub_12A30();
  v4 = [v2 _coreroutine_LocalizedStringForKey:v3];

  if (v4)
  {
    v5 = sub_12A50();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = *(&stru_B8.reloff + (swift_isaMask & *v1));
  result = v8(v13);
  if (v10[5])
  {
    v11 = result;
    v10[9] = v5;
    v10[10] = v7;

    v11(v13, 0);
    result = v8(v13);
    if (*(v12 + 40))
    {
      *(v12 + 88) = 1;
      return (result)(v13, 0);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_EB50(uint64_t a1, unint64_t *a2)
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

uint64_t sub_F03C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_F054(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 40) copy];

  return _objc_release_x1();
}

uint64_t sub_F190(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 48) copy];

  return _objc_release_x1();
}

void sub_F2D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  if (v2)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_F3A0;
    v4[3] = &unk_1D9D0;
    v4[4] = v1;
    v5 = *(a1 + 40);
    [v2 fetchAllLocationsOfInterestForSettingsWithHandler:v4];
  }

  else
  {
    v3 = *(*(a1 + 40) + 16);

    v3();
  }
}

void sub_F3A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    if ([v5 count])
    {
      v11 = *(a1 + 32);
      v12 = *(v11 + 24);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_F54C;
      block[3] = &unk_1D9A8;
      block[4] = v11;
      v15 = v5;
      v16 = *(a1 + 40);
      dispatch_async(v12, block);

      goto LABEL_13;
    }

    v13 = *(*(a1 + 40) + 16);
LABEL_12:
    v13();
    goto LABEL_13;
  }

  v8 = [v6 domain];
  if (![v8 isEqualToString:RTErrorDomain])
  {

    goto LABEL_10;
  }

  v9 = [v7 code];

  if (v9 != &dword_4 + 1)
  {
LABEL_10:
    v13 = *(*(a1 + 40) + 16);
    goto LABEL_12;
  }

  v10 = sub_10DB8(&qword_21AD0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "attempted to fetch locations of interest and the data store was unavailable, attempting again.", buf, 2u);
  }

  [*(a1 + 32) loadLocationsOfInterestWithHandler:*(a1 + 40)];
LABEL_13:
}

void sub_F54C(uint64_t a1)
{
  v2 = dispatch_group_create();
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = sub_F03C;
  v18[4] = sub_F04C;
  v19 = 0;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = sub_F03C;
  v16[4] = sub_F04C;
  v17 = 0;
  dispatch_group_enter(v2);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_F744;
  v12[3] = &unk_1D958;
  v14 = v18;
  v15 = v16;
  v5 = v2;
  v13 = v5;
  [v3 shiftLocationOfInterestCoordinates:v4 handler:v12];
  v6 = *(*(a1 + 32) + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_F7E0;
  block[3] = &unk_1D980;
  v10 = v16;
  v7 = *(a1 + 48);
  block[4] = *(a1 + 32);
  v9 = v7;
  v11 = v18;
  dispatch_group_notify(v5, v6, block);

  _Block_object_dispose(v16, 8);
  _Block_object_dispose(v18, 8);
}

void sub_F720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_F744(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

id sub_F7E0(uint64_t a1)
{
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    return [*(a1 + 32) processLocationsOfInterest:*(*(*(a1 + 56) + 8) + 40) handler:*(a1 + 40)];
  }

  v2 = sub_10DB8(&qword_21AD0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, "Failed to shift locations of interest for display in Settings.", v4, 2u);
  }

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return [*(a1 + 32) processLocationsOfInterest:*(*(*(a1 + 56) + 8) + 40) handler:*(a1 + 40)];
  }
}

void sub_FE2C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([*(a1 + 32) count] < 3)
  {
    v7 = *(a1 + 40);
    v8 = [v6 entryDate];
    v9 = [v7 earlierDate:v8];
    if ([v9 isEqualToDate:*(a1 + 40)])
    {
      v10 = [v6 entryDate];
      v11 = [v10 earlierDate:*(a1 + 48)];
      v12 = [v6 entryDate];
      v13 = [v11 isEqualToDate:v12];

      if (v13)
      {
        v14 = *(a1 + 56);
        v15 = [v6 identifier];
        v16 = [v14 objectForKeyedSubscript:v15];

        v46 = [RTLocationOfInterest alloc];
        v17 = [v16 location];
        [v16 confidence];
        v19 = v18;
        v20 = [v16 identifier];
        v21 = [v16 type];
        v22 = [v16 typeSource];
        v49 = v6;
        v23 = [NSArray arrayWithObjects:&v49 count:1];
        v24 = [v16 customLabel];
        v25 = [v16 mapItem];
        v26 = [v46 initWithLocation:v17 confidence:v20 identifier:v21 type:v22 typeSource:v23 visits:v24 customLabel:v19 mapItem:v25];

        [*(a1 + 32) addObject:v26];
        goto LABEL_10;
      }
    }

    else
    {
    }

    v27 = [v6 entryDate];
    v28 = [v27 earlierDate:*(a1 + 40)];
    v29 = [v6 entryDate];
    v30 = [v28 isEqualToDate:v29];

    if (!v30)
    {
      goto LABEL_10;
    }

    if (![*(a1 + 32) count])
    {
      v31 = *(a1 + 56);
      v32 = [v6 identifier];
      v33 = [v31 objectForKeyedSubscript:v32];

      v34 = [RTLocationOfInterest alloc];
      v35 = [v33 location];
      [v33 confidence];
      v37 = v36;
      v38 = [v33 identifier];
      v47 = [v33 type];
      v45 = [v33 typeSource];
      v48 = v6;
      v39 = [NSArray arrayWithObjects:&v48 count:1];
      v40 = [v33 customLabel];
      v41 = [v33 mapItem];
      v42 = v34;
      v43 = v35;
      v44 = [v42 initWithLocation:v35 confidence:v38 identifier:v47 type:v45 typeSource:v39 visits:v40 customLabel:v37 mapItem:v41];

      [*(a1 + 32) addObject:v44];
    }
  }

  *a4 = 1;
LABEL_10:
}

void sub_1087C(uint64_t a1, double a2, double a3)
{
  v4 = *(*(a1 + 32) + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1092C;
  block[3] = &unk_1DA48;
  v9 = a2;
  v10 = a3;
  v5 = *(a1 + 48);
  block[4] = *(a1 + 40);
  v7 = v5;
  v8 = *(a1 + 56);
  dispatch_async(v4, block);
}

void sub_1092C(uint64_t a1)
{
  v2 = [RTLocation alloc];
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = [*(a1 + 32) location];
  [v5 horizontalUncertainty];
  v7 = v6;
  v8 = [*(a1 + 32) location];
  v19 = [v2 initWithLatitude:0 longitude:objc_msgSend(v8 horizontalUncertainty:"referenceFrame") date:v3 referenceFrame:{v4, v7}];

  v9 = [RTLocationOfInterest alloc];
  [*(a1 + 32) confidence];
  v11 = v10;
  v12 = [*(a1 + 32) identifier];
  v13 = [*(a1 + 32) type];
  v14 = [*(a1 + 32) typeSource];
  v15 = [*(a1 + 32) visits];
  v16 = [*(a1 + 32) customLabel];
  v17 = [*(a1 + 32) mapItem];
  v18 = [v9 initWithLocation:v19 confidence:v12 identifier:v13 type:v14 typeSource:v15 visits:v16 customLabel:v11 mapItem:v17];

  if (v18)
  {
    [*(a1 + 40) addObject:v18];
  }

  dispatch_group_leave(*(a1 + 48));
}

uint64_t sub_10AC4(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) addObject:{*(*(&v8 + 1) + 8 * v6), v8}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return (*(*(a1 + 48) + 16))();
}

void sub_10C40(uint64_t a1)
{
  *(*(a1 + 32) + 32) = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  *(v4 + 48) = 0;
}

id sub_10DB8(dispatch_once_t *predicate)
{
  if (*predicate != -1)
  {
    dispatch_once_f(predicate, predicate, sub_10E18);
  }

  v2 = predicate[2];

  return v2;
}

os_log_t sub_10E18(uint64_t a1)
{
  result = os_log_create("com.apple.CoreRoutine", *(a1 + 8));
  *(a1 + 16) = result;
  return result;
}

void sub_11048(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_opt_new();
  [v5 appendFormat:@"\n=== BEGIN analytics submission for event %@ ===\n", v3];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v4 allKeys];
  v7 = [v6 sortedArrayUsingComparator:&stru_1DD00];

  v8 = [v7 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [v4 objectForKeyedSubscript:v12];
        [v5 appendFormat:@"%@ : %@\n", v12, v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v9);
  }

  [v5 appendFormat:@"=== END analytics submission for event %@ ===\n", v3];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v14 = sub_10DB8(&qword_21AB8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v20 = v5;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }
  }
}

void sub_11794(uint64_t a1, void *a2, double a3, double a4, double a5)
{
  v12 = a2;
  if (v12)
  {
    v9 = 0;
  }

  else
  {
    v10 = [RTLocation alloc];
    v11 = [*(a1 + 32) date];
    v9 = [v10 initWithLatitude:v11 longitude:2 horizontalUncertainty:a3 date:a4 referenceFrame:a5];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_11DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a21, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_11DF0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_11E08(uint64_t a1, void *a2, double a3, double a4, double a5)
{
  v7 = *(*(a1 + 40) + 8);
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(*(*(a1 + 48) + 8) + 24) = a5;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  v8 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t sub_120D0(uint64_t a1, CLLocationDegrees a2, CLLocationDegrees a3, double a4)
{
  v5 = *(a1 + 32);
  v8 = CLLocationCoordinate2DMake(a2, a3);
  v7.n128_f64[0] = v8.longitude;
  v6.n128_f64[0] = v8.latitude;
  v9 = *(v5 + 16);
  v10.n128_f64[0] = a4;

  return v9(v5, 0, v6, v7, v10);
}

void sub_12158(uint64_t a1, SEL aSelector)
{
  v3 = NSStringFromSelector(aSelector);
  v4 = [NSString stringWithFormat:@"%@ requires the use of the initializer: %@", a1, v3];

  v5 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v4 userInfo:0];
  objc_exception_throw(v5);
}

id RTExplanationStringWithCloudSyncAuthorizationState(uint64_t a1)
{
  if (a1 == 2)
  {
    v1 = @"CORE_ROUTINE_EXPLANATION_WITH_ICLOUD";
  }

  else
  {
    v1 = @"CORE_ROUTINE_EXPLANATION_WITHOUT_ICLOUD";
  }

  v2 = [NSBundle _coreroutine_LocalizedStringForKey:v1];
  v3 = objc_opt_new();
  v4 = [NSBundle _coreroutine_LocalizedStringForKey:v2];
  [v3 appendString:v4];

  v5 = [NSBundle _coreroutine_LocalizedStringForKey:@"ABOUT_SIGNIFICANT_LOCATIONS_AND_PRIVACY_TITLE_LINK"];
  [v3 appendFormat:@" %@", v5];

  v6 = [NSString stringWithString:v3];

  return v6;
}

id RTClearHistoryStringWithCloudSyncAuthorizationState(uint64_t a1)
{
  if (a1 == 2)
  {
    v1 = @"RESET_CORE_ROUTINE_WITH_ICLOUD_TITLE";
  }

  else
  {
    v1 = @"RESET_CORE_ROUTINE_WITHOUT_ICLOUD_TITLE";
  }

  return [NSBundle _coreroutine_LocalizedStringForKey:v1];
}

BOOL parentalControlsEnabled()
{
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"SBParentalControlsEnabled", @"com.apple.springboard", &keyExistsAndHasValidFormat))
  {
    v0 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v0 = 1;
  }

  return !v0;
}

uint64_t locationServicesRestricted()
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"SBParentalControlsEnabled", @"com.apple.springboard", &keyExistsAndHasValidFormat);
  v1 = 0;
  if (keyExistsAndHasValidFormat)
  {
    v2 = AppBooleanValue == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    v3 = CFPreferencesCopyAppValue(@"SBParentalControlsCapabilities", @"com.apple.springboard");
    if ([v3 count])
    {
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v4 = v3;
      v5 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v11;
        while (2)
        {
          v8 = 0;
          do
          {
            if (*v11 != v7)
            {
              objc_enumerationMutation(v4);
            }

            if ([*(*(&v10 + 1) + 8 * v8) isEqualToString:{@"location", v10}])
            {
              v1 = 1;
              goto LABEL_16;
            }

            v8 = v8 + 1;
          }

          while (v6 != v8);
          v6 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

      v1 = 0;
LABEL_16:
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  v4 = _CLLocationCoordinate2DMake(latitude, longitude);
  v3 = v4.longitude;
  v2 = v4.latitude;
  result.longitude = v3;
  result.latitude = v2;
  return result;
}