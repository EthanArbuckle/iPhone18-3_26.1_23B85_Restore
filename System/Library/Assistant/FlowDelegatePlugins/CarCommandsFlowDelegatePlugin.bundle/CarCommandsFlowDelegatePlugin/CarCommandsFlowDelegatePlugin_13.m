uint64_t sub_13A3F0(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_39524(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_13A51C((*a3 + *v9), (*a3 + *v11), (*a3 + v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_13A51C(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a3 - a2;
  if (a2 - __src < a3 - a2)
  {
    sub_109198(__src, a2 - __src, __dst);
    v10 = &v4[v8];
    while (1)
    {
      v11 = v4 >= v10 || v6 >= v5;
      if (v11)
      {
        v6 = v7;
        goto LABEL_42;
      }

      v12 = *v6;
      v13 = *v4;
      if (v12 >= v13)
      {
        v11 = v7 >= v4++;
        v15 = !v11 || v7 >= v4;
        LOBYTE(v12) = v13;
        if (v15)
        {
LABEL_18:
          *v7 = v12;
        }
      }

      else
      {
        v11 = v7 >= v6++;
        if (!v11 || v7 >= v6)
        {
          goto LABEL_18;
        }
      }

      ++v7;
    }
  }

  sub_109198(a2, a3 - a2, __dst);
  v10 = &v4[v9];
LABEL_21:
  v16 = (v6 - 1);
  --v5;
  while (v10 > v4 && v6 > v7)
  {
    v18 = *(v10 - 1);
    v19 = *v16;
    if (v18 < v19)
    {
      v21 = v5 + 1 < v6 || v5 >= v6;
      --v6;
      if (v21)
      {
        *v5 = v19;
        v6 = v16;
      }

      goto LABEL_21;
    }

    if ((v5 + 1) < v10 || v5 >= v10)
    {
      *v5 = v18;
    }

    --v5;
    --v10;
  }

LABEL_42:
  if (v6 != v4 || v6 >= v10)
  {
    memmove(v6, v4, v10 - v4);
  }

  return 1;
}

uint64_t sub_13A67C()
{

  return sub_16AE54();
}

void sub_13A6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  v23._countAndFlagsBits = a21;
  v23._object = a22;

  sub_16A744(v23);
}

BOOL sub_13A6E0(uint64_t a1, char a2, uint64_t a3, char a4)
{
  switch(a2)
  {
    case 1:
      if (a4 != 1)
      {
        return 0;
      }

      return a1 == a3;
    case 2:
      if (a4 != 2)
      {
        return 0;
      }

      return a1 == a3;
    case 3:
      if (a4 != 3)
      {
        return 0;
      }

      return a1 == a3;
    case 4:
      switch(a1)
      {
        case 1:
          if (a4 != 4 || a3 != 1)
          {
            return 0;
          }

          break;
        case 2:
          if (a4 != 4 || a3 != 2)
          {
            return 0;
          }

          break;
        case 3:
          if (a4 != 4 || a3 != 3)
          {
            return 0;
          }

          break;
        case 4:
          if (a4 != 4 || a3 != 4)
          {
            return 0;
          }

          break;
        case 5:
          if (a4 != 4 || a3 != 5)
          {
            return 0;
          }

          break;
        case 6:
          if (a4 != 4 || a3 != 6)
          {
            return 0;
          }

          break;
        case 7:
          if (a4 != 4 || a3 != 7)
          {
            return 0;
          }

          break;
        case 8:
          if (a4 != 4 || a3 != 8)
          {
            return 0;
          }

          break;
        case 9:
          if (a4 != 4 || a3 != 9)
          {
            return 0;
          }

          break;
        case 10:
          if (a4 != 4 || a3 != 10)
          {
            return 0;
          }

          break;
        case 11:
          if (a4 != 4 || a3 != 11)
          {
            return 0;
          }

          break;
        case 12:
          if (a4 != 4 || a3 != 12)
          {
            return 0;
          }

          break;
        default:
          if (a4 != 4 || a3 != 0)
          {
            return 0;
          }

          break;
      }

      return 1;
    default:
      return !a4 && a1 == a3;
  }
}

uint64_t getEnumTagSinglePayload for NLSettingsChange(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 9))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for NLSettingsChange(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_13A95C(uint64_t a1)
{
  if (*(a1 + 8) <= 3u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_13A974(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

id sub_13A99C()
{
  result = [objc_allocWithZone(type metadata accessor for CarPlayService()) init];
  qword_1F0E10 = result;
  return result;
}

char *sub_13A9D0()
{
  v1 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin14CarPlayService_continuation;
  v2 = sub_5758(&qword_1EE7E8, &qword_17A168);
  sub_5370(&v0[v1], 1, 1, v2);
  v0[OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin14CarPlayService_desiredAccessory] = 8;
  v3 = [objc_allocWithZone(CAFCarManager) init];
  *&v0[OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin14CarPlayService_carManager] = v3;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for CarPlayService();
  v4 = objc_msgSendSuper2(&v10, "init");
  v5 = *&v4[OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin14CarPlayService_carManager];
  v6 = v4;
  [v5 registerObserver:v6];
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v7 = sub_16A584();
  sub_9DA0(v7, qword_1E65C0);
  v8 = sub_16A9A4();
  sub_386D8(v8, 0x400uLL, 0xD000000000000088, 0x8000000000190B60, 0x292874696E69, 0xE600000000000000, 28, 0xD00000000000001ALL, 0x8000000000190F70);

  return v6;
}

uint64_t sub_13AB58(uint64_t a1, char a2)
{
  *(v3 + 168) = a2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v2;
  v4 = sub_5758(&qword_1EE7E8, &qword_17A168);
  *(v3 + 88) = v4;
  v5 = *(v4 - 8);
  *(v3 + 96) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 104) = swift_task_alloc();
  v7 = *(*(sub_5758(&qword_1EE980, &qword_17A198) - 8) + 64) + 15;
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = swift_task_alloc();

  return _swift_task_switch(sub_13AC78, 0, 0);
}

uint64_t sub_13AC78()
{
  v1 = *(v0 + 128);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin14CarPlayService_continuation;
  swift_beginAccess();
  sub_13CA78(v3 + v4, v1);
  v5 = sub_9E2C(v1, 1, v2);
  sub_13CAE8(v1);
  if (v5 == 1)
  {
    sub_9FB8();
  }

  else
  {
    v5 = 0x8000000000190F90;
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v6 = *(v0 + 120);
    v7 = *(v0 + 88);
    v8 = sub_16A584();
    sub_9DA0(v8, qword_1E65C0);
    v9 = sub_16A9A4();
    sub_386D8(v9, 0x400uLL, 0xD000000000000088, 0x8000000000190B60, 0xD000000000000021, 0x8000000000190F90, 33, 0xD00000000000005BLL, 0x8000000000190FC0);
    sub_13CA78(v3 + v4, v6);
    v10 = sub_9E2C(v6, 1, v7);
    v11 = *(v0 + 120);
    if (v10)
    {
      sub_13CAE8(*(v0 + 120));
    }

    else
    {
      v13 = *(v0 + 96);
      v12 = *(v0 + 104);
      v14 = *(v0 + 88);
      (*(v13 + 16))(v12, *(v0 + 120), v14);
      sub_13CAE8(v11);
      type metadata accessor for CarCommandsError();
      sub_13CE0C(&qword_1E92F0, type metadata accessor for CarCommandsError);
      v15 = swift_allocError();
      *v16 = 0x79616C50726143;
      v16[1] = 0xE700000000000000;
      swift_storeEnumTagMultiPayload();
      *(v0 + 64) = v15;
      sub_16A854();
      (*(v13 + 8))(v12, v14);
    }

    v17 = *(v0 + 112);
    v18 = *(v0 + 80);
    sub_5370(v17, 1, 1, *(v0 + 88));
    swift_beginAccess();
    sub_13CD08(v17, v3 + v4);
    swift_endAccess();
    *(v18 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin14CarPlayService_desiredAccessory) = 8;
  }

  v19 = *(v0 + 168);
  v21 = *(v0 + 72);
  v20 = *(v0 + 80);
  v22 = swift_allocObject();
  *(v0 + 136) = v22;
  swift_unknownObjectWeakInit();
  v23 = swift_task_alloc();
  *(v0 + 144) = v23;
  *(v23 + 16) = v22;
  *(v23 + 24) = v19;
  v24 = sub_16484(0, &unk_1EE970, CAFCar_ptr);
  *(v21 + 24) = v24;
  *(v21 + 32) = &off_1D4DC8;
  v25 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v26 = swift_task_alloc();
  *(v0 + 152) = v26;
  *v26 = v0;
  v26[1] = sub_13B02C;
  v27 = *(v0 + 72);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v27, 0, 0, 0xD000000000000021, v5, sub_13CDB0, v23, v24);
}

uint64_t sub_13B02C()
{
  v2 = *(*v1 + 152);
  v3 = *v1;
  v3[20] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_13B1B4, 0, 0);
  }

  else
  {
    v4 = v3[17];
    v5 = v3[18];
    v7 = v3[15];
    v6 = v3[16];
    v8 = v3[13];
    v9 = v3[14];

    v10 = v3[1];

    return v10();
  }
}

uint64_t sub_13B1B4()
{
  v1 = v0[17];
  v2 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[9];

  sub_13CDBC(v7);

  v8 = v0[1];
  v9 = v0[20];

  return v8();
}

void sub_13B264(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v5 = sub_5758(&qword_1EE980, &qword_17A198);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15[-v7];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = sub_5758(&qword_1EE7E8, &qword_17A168);
    (*(*(v11 - 8) + 16))(v8, a1, v11);
    sub_5370(v8, 0, 1, v11);
    v12 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin14CarPlayService_continuation;
    swift_beginAccess();
    sub_13CD08(v8, v10 + v12);
    swift_endAccess();
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    sub_13B3D8(a3);
  }
}

void sub_13B3D8(unsigned __int8 a1)
{
  v2 = v1;
  v4 = sub_5758(&qword_1EE7E8, &qword_17A168);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v98 - v7;
  v9 = sub_5758(&qword_1EE980, &qword_17A198);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v106 = &v98 - v15;
  __chkstk_darwin(v14);
  v17 = &v98 - v16;
  v18 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin14CarPlayService_desiredAccessory;
  *(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin14CarPlayService_desiredAccessory) = a1;
  v19 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin14CarPlayService_continuation;
  swift_beginAccess();
  sub_13CA78(v1 + v19, v17);
  v20 = sub_9E2C(v17, 1, v4);
  sub_13CAE8(v17);
  if (v20 == 1)
  {
    return;
  }

  v99 = v8;
  v100 = v5;
  v101 = v18;
  v102 = v13;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v21 = sub_16A584();
  v22 = sub_9DA0(v21, qword_1E65C0);
  sub_16A9A4();
  sub_13CED0();
  sub_13CE54();
  sub_386D8(v23, v24, v25, v26, v27, v28, 52, v29, v98);
  v30 = [*(v2 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin14CarPlayService_carManager) currentCar];
  if (!v30)
  {
    sub_9FB8();
    sub_16A9A4();
    sub_13CED0();
    sub_13CE54();
    sub_386D8(v48, v49, v50, v51, v52, v53, 55, v54, v100);
    return;
  }

  v31 = v30;
  v103 = "eived all values: ";
  v104 = " updated accessories.";
  v105 = v22;
  [v30 registerObserver:v2];
  v32 = [v31 accessories];
  sub_168414();
  sub_16484(0, &qword_1EE988, CAFAccessory_ptr);
  sub_13CE0C(&unk_1EE990, &type metadata accessor for UUID);
  v33 = sub_16A5B4();

  v34 = *(v33 + 16);

  if (!v34)
  {
    sub_9FB8();
    sub_16A9A4();
    v98 = v33;
    sub_13CE54();
    v62 = 62;
    goto LABEL_15;
  }

  if (![v31 isConfigured])
  {
    sub_9FB8();
    sub_16A9A4();
    v98 = v33;
    sub_13CE64();
    sub_13CE54();
    v62 = 67;
    goto LABEL_15;
  }

  if (a1 > 8u || ((1 << a1) & 0x1D1) == 0)
  {
    v83 = [v31 positionManager];
    if (v83)
    {
      v84 = v83;
      [v83 registerObserver:v2];
      if ([v84 state] != &dword_0 + 3)
      {
        [v84 state];
        v85 = NSStringFromCharacteristicState();
        v86 = sub_16A664();
        v88 = v87;

        if (v86 == 0x746E6572727543 && v88 == 0xE700000000000000)
        {

          goto LABEL_9;
        }

        v90 = sub_16AE54();

        if ((v90 & 1) == 0)
        {
          sub_9FB8();
          sub_16A9A4();
          v98 = v90;
          sub_13CE64();
          sub_13CE54();
          sub_386D8(v91, v92, v93, v94, v95, v96, 80, v97, v98);

          return;
        }
      }

      goto LABEL_9;
    }

    sub_9FB8();
    sub_16A9A4();
    v98 = v33;
    sub_13CE64();
    sub_13CE54();
    v62 = 73;
LABEL_15:
    sub_386D8(v55, v56, v57, v58, v59, v60, v62, v61, v98);

    return;
  }

LABEL_9:
  sub_13CB50(v2, a1);
  if (sub_6EC1C(a1))
  {
    v107 = 0;
    v108 = 0xE000000000000000;
    sub_16ACF4(34);

    v107 = 0xD00000000000001FLL;
    v108 = 0x8000000000190E30;
    v35 = [v31 description];
    v36 = sub_16A664();
    v38 = v37;

    v110._countAndFlagsBits = v36;
    v110._object = v38;
    sub_16A744(v110);

    v111._countAndFlagsBits = 46;
    v111._object = 0xE100000000000000;
    sub_16A744(v111);
    v39 = v107;
    v40 = v108;
    sub_16A9A4();
    v98 = v40;
    sub_13CE64();
    sub_13CE54();
    sub_386D8(v41, v42, v43, v44, v45, v46, 94, v39, v98);

    v47 = v106;
    sub_13CA78(v2 + v19, v106);
    if (sub_9E2C(v47, 1, v4))
    {

      sub_13CAE8(v47);
    }

    else
    {
      v80 = v99;
      v79 = v100;
      (*(v100 + 16))(v99, v47, v4);
      sub_13CAE8(v47);
      v107 = v31;
      sub_16A864();
      (*(v79 + 8))(v80, v4);
    }

    v82 = v101;
    v81 = v102;
    sub_5370(v102, 1, 1, v4);
    swift_beginAccess();
    sub_13CD08(v81, v2 + v19);
    swift_endAccess();
    *(v2 + v82) = 8;
  }

  else
  {
    v107 = 0;
    v108 = 0xE000000000000000;
    sub_16ACF4(49);

    v107 = 0xD000000000000016;
    v108 = 0x8000000000190DC0;
    v112._countAndFlagsBits = sub_BE304(a1);
    sub_16A744(v112);

    v113._countAndFlagsBits = 0xD000000000000019;
    v113._object = 0x8000000000190DE0;
    sub_16A744(v113);
    v63 = v107;
    v64 = v108;
    sub_16A9A4();
    v98 = v64;
    sub_13CE54();
    sub_386D8(v65, v66, v67, v68, v69, v70, 89, v63, v98);

    v107 = 0;
    v108 = 0xE000000000000000;
    sub_16ACF4(39);
    v114._countAndFlagsBits = 0xD000000000000025;
    v114._object = 0x8000000000190E00;
    sub_16A744(v114);
    v109 = a1;
    sub_16AD84();
    v71 = v107;
    v72 = v108;
    sub_16A9A4();
    v98 = v72;
    sub_13CE54();
    sub_386D8(v73, v74, v75, v76, v77, v78, 90, v71, v98);
  }
}

void sub_13BC04(void *a1)
{
  v2 = v1;
  sub_13CE90();
  sub_16ACF4(28);

  sub_13CE78();
  v4 = [a1 description];
  sub_16A664();

  sub_13CEB4();

  sub_13CEA4();
  v11._countAndFlagsBits = 0xD000000000000015;
  sub_16A744(v11);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v5 = sub_16A584();
  sub_9DA0(v5, qword_1E65C0);
  v6 = sub_16A9A4();
  sub_386D8(v6, 0x400uLL, 136, 0x8000000000190B60, 29, 0x8000000000190CD0, 102, v8, v9);

  v7 = *(v2 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin14CarPlayService_desiredAccessory);

  sub_13B3D8(v7);
}

void sub_13BD58(void *a1)
{
  v2 = v1;
  sub_13CE90();
  sub_16ACF4(31);

  sub_13CE78();
  v4 = [a1 description];
  sub_16A664();

  sub_13CEB4();

  sub_13CEA4();
  v11._countAndFlagsBits = 0xD000000000000018;
  sub_16A744(v11);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v5 = sub_16A584();
  sub_9DA0(v5, qword_1E65C0);
  v6 = sub_16A9A4();
  sub_386D8(v6, 0x400uLL, 136, 0x8000000000190B60, 25, 0x8000000000190C90, 107, v8, v9);

  v7 = *(v2 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin14CarPlayService_desiredAccessory);

  sub_13B3D8(v7);
}

void sub_13BEAC(void *a1)
{
  v2 = v1;
  sub_13CE90();
  sub_16ACF4(25);

  sub_13CE78();
  v4 = [a1 description];
  sub_16A664();

  sub_13CEB4();

  sub_13CEA4();
  v11._countAndFlagsBits = 0xD000000000000012;
  sub_16A744(v11);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v5 = sub_16A584();
  sub_9DA0(v5, qword_1E65C0);
  v6 = sub_16A9A4();
  sub_386D8(v6, 0x400uLL, 136, 0x8000000000190B60, 47, 0x8000000000190C40, 112, v8, v9);

  v7 = *(v2 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin14CarPlayService_desiredAccessory);

  sub_13B3D8(v7);
}

id sub_13C000()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarPlayService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CarPlayService()
{
  result = qword_1EE7D0;
  if (!qword_1EE7D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_13C0D8()
{
  sub_13C180();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_13C180()
{
  if (!qword_1EE7E0)
  {
    sub_37130(&qword_1EE7E8, &qword_17A168);
    v0 = sub_16AB24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE7E0);
    }
  }
}

void sub_13C2BC(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    sub_13BD58(v2);
  }
}

void sub_13C3D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = 0x8000000000190B60;
  v6 = 0x8000000000190C20;
  if (qword_1E58E8 != -1)
  {
LABEL_20:
    sub_9ED4();
  }

  v7 = 0xD000000000000018;
  v8 = sub_16A584();
  sub_9DA0(v8, qword_1E65C0);
  v9 = sub_16A9A4();
  v25 = 0xD000000000000088;
  v26 = v5;
  v24._countAndFlagsBits = 47;
  v24._object = 0xE100000000000000;
  sub_D030();
  v10 = sub_16AB34();
  v11 = sub_15AE4(v10);
  v13 = v12;

  if (v13)
  {
    v25 = v11;
    v26 = v13;
    v27._countAndFlagsBits = 32;
    v27._object = 0xE100000000000000;
    sub_16A744(v27);
    v28._countAndFlagsBits = 0xD000000000000018;
    v28._object = v6;
    sub_16A744(v28);
    v7 = v25;
    v6 = v26;
  }

  v25 = v7;
  v26 = v6;
  v24._countAndFlagsBits = 58;
  v24._object = 0xE100000000000000;
  v29._countAndFlagsBits = sub_16AE24();
  sub_16A744(v29);

  sub_16A744(v24);

  v14._countAndFlagsBits = sub_378D0(0x400uLL);
  if (v14._object)
  {
    v24._countAndFlagsBits = 32;
    v24._object = 0xE100000000000000;
    sub_16A744(v14);

    sub_16A744(v24);
  }

  v16 = v25;
  v15 = v26;
  v17 = sub_16A574();
  if (os_log_type_enabled(v17, v9))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v24._countAndFlagsBits = v19;
    *v18 = 136315138;
    v20 = sub_15BC8(v16, v15, &v24._countAndFlagsBits);

    *(v18 + 4) = v20;
    _os_log_impl(&dword_0, v17, v9, "%s", v18, 0xCu);
    sub_D13C(v19);
  }

  else
  {
  }

  v5 = sub_11B48C(a2);
  v21 = 0;
  v6 = (a2 & 0xC000000000000001);
  while (v5 != v21)
  {
    if (v6)
    {
      v22 = sub_16AD04();
    }

    else
    {
      if (v21 >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_19;
      }

      v22 = *(a2 + 8 * v21 + 32);
    }

    v23 = v22;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    [v22 unregisterObserver:v3];

    ++v21;
  }
}

id sub_13C7E0(void *a1, char a2)
{
  v3 = v2;
  sub_16ACF4(49);

  v6 = a1;
  v7 = [v6 description];
  v8 = sub_16A664();
  v10 = v9;

  v17._countAndFlagsBits = v8;
  v17._object = v10;
  sub_16A744(v17);

  sub_13CEA4();
  v18._countAndFlagsBits = 0xD000000000000022;
  sub_16A744(v18);
  if (a2)
  {
    v11._countAndFlagsBits = 1702195828;
  }

  else
  {
    v11._countAndFlagsBits = 0x65736C6166;
  }

  if (a2)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  v11._object = v12;
  sub_16A744(v11);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v13 = sub_16A584();
  sub_9DA0(v13, qword_1E65C0);
  v14 = sub_16A9A4();
  sub_386D8(v14, 0x400000uLL, 0xD000000000000088, 0x8000000000190B60, 0xD000000000000028, 0x8000000000190BF0, 165, 0x726F737365636341, 0xEB00000000203A79);

  result = [v6 car];
  if (result)
  {
    if (a2)
    {
      [v3 carDidUpdateAccessories:?];
    }

    return _objc_release_x2();
  }

  return result;
}

uint64_t sub_13CA78(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1EE980, &qword_17A198);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_13CAE8(uint64_t a1)
{
  v2 = sub_5758(&qword_1EE980, &qword_17A198);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_13CB50(uint64_t a1, char a2)
{
  v3 = sub_6EDA0(a2);
  if (v3)
  {
    v6 = v3;
    [v3 registerObserver:a1];
  }

  else
  {
    sub_16ACF4(51);
    v8._object = 0x8000000000190F40;
    v8._countAndFlagsBits = 0xD000000000000024;
    sub_16A744(v8);
    sub_16AD84();
    v9._countAndFlagsBits = 0x6F20646E756F6620;
    v9._object = 0xED0000726143206ELL;
    sub_16A744(v9);
    if (qword_1E58E8 != -1)
    {
      swift_once();
    }

    v4 = sub_16A584();
    sub_9DA0(v4, qword_1E65C0);
    v5 = sub_16A9A4();
    sub_386D8(v5, 0x400000uLL, 0xD000000000000084, 0x80000000001849F0, 0xD000000000000026, 0x8000000000190F10, 95, 0, 0xE000000000000000);
  }
}

uint64_t sub_13CD08(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1EE980, &qword_17A198);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_13CD78()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t *sub_13CDBC(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64);
  }

  return result;
}

uint64_t sub_13CE0C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_13CEB4()
{
  v3._countAndFlagsBits = v0;
  v3._object = v1;

  sub_16A744(v3);
}

void sub_13CEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(id, uint64_t))
{
  *(v5 + 48) = 1;
  v7 = *(v5 + 40);
  v9 = *(v5 + 32);
  v8 = v9;
  if (v7)
  {
    swift_errorRetain();
    a5(v9, v7);
  }

  else
  {
    a5(v9, 0);
  }
}

uint64_t sub_13CF98(uint64_t a1, uint64_t a2)
{
  v3 = v2[7];
  if (!v3)
  {
    v4 = v2[9];
    v2[8] = a1;
    v2[9] = a2;
  }

  swift_errorRetain();
  return v3;
}

uint64_t sub_13CFE8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 80);

  v6 = *(v0 + 88);

  return v0;
}

uint64_t sub_13D038()
{
  sub_13CFE8();

  return _swift_deallocClassInstance(v0, 96, 7);
}

uint64_t sub_13D090(uint64_t a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 16) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_13D110(char a1, uint64_t a2)
{
  *(v2 + 128) = a2;
  *(v2 + 160) = a1;
  return sub_D2B0();
}

uint64_t sub_13D128()
{
  sub_D2DC();
  sub_2F868(*(v0 + 128), v0 + 56, &qword_1E6030, &unk_173620);
  if (*(v0 + 80))
  {
    v1 = *(v0 + 160);
    sub_D250((v0 + 56), v0 + 16);
    if (v1 == 1)
    {
      v2 = swift_task_alloc();
      *(v0 + 136) = v2;
      *v2 = v0;
      v2[1] = sub_13D294;

      return sub_13D7F8(0xD000000000000010, 0x8000000000191150, v0 + 16);
    }

    sub_D13C((v0 + 16));
  }

  else
  {
    sub_D188(v0 + 56, &qword_1E6030, &unk_173620);
  }

  v4 = async function pointer to static LabelTemplates.yes()[1];
  v5 = swift_task_alloc();
  *(v0 + 152) = v5;
  *v5 = v0;
  v5[1] = sub_13DE84;

  return static LabelTemplates.yes()();
}

uint64_t sub_13D294()
{
  sub_D2DC();
  v11 = *v1;
  sub_13DE88(v2, v3);
  v5 = *(v4 + 136);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 144) = v0;

  if (v0)
  {
    v9 = sub_13DE80;
  }

  else
  {
    v9 = sub_13DE7C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_13D398(char a1, uint64_t a2)
{
  *(v2 + 128) = a2;
  *(v2 + 160) = a1;
  return sub_D2B0();
}

uint64_t sub_13D3B0()
{
  sub_D2DC();
  sub_2F868(*(v0 + 128), v0 + 56, &qword_1E6030, &unk_173620);
  if (*(v0 + 80))
  {
    v1 = *(v0 + 160);
    sub_D250((v0 + 56), v0 + 16);
    if (v1 == 1)
    {
      v2 = swift_task_alloc();
      *(v0 + 136) = v2;
      *v2 = v0;
      v2[1] = sub_13D528;

      return sub_13D7F8(0x614C6E6F6D6D6F43, 0xEF6F4E23736C6562, v0 + 16);
    }

    sub_D13C((v0 + 16));
  }

  else
  {
    sub_D188(v0 + 56, &qword_1E6030, &unk_173620);
  }

  v4 = async function pointer to static LabelTemplates.no()[1];
  v5 = swift_task_alloc();
  *(v0 + 152) = v5;
  *v5 = v0;
  v5[1] = sub_13D690;

  return static LabelTemplates.no()();
}

uint64_t sub_13D528()
{
  sub_D2DC();
  v11 = *v1;
  sub_13DE88(v2, v3);
  v5 = *(v4 + 136);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 144) = v0;

  if (v0)
  {
    v9 = sub_13D798;
  }

  else
  {
    v9 = sub_13D62C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_13D62C()
{
  sub_D2DC();
  sub_D13C(v0 + 2);
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_13D690(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 152);
  v7 = *v3;
  sub_D254();
  *v8 = v7;

  v11 = *(v7 + 8);
  if (!v2)
  {
    v9 = a1;
    v10 = a2;
  }

  return v11(v9, v10);
}

uint64_t sub_13D798()
{
  sub_D2DC();
  sub_D13C(v0 + 2);
  v1 = v0[18];
  v2 = v0[1];

  return v2();
}

uint64_t sub_13D7F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = sub_168CF4();
  v3[15] = v4;
  v5 = *(v4 - 8);
  v3[16] = v5;
  v6 = *(v5 + 64) + 15;
  v3[17] = swift_task_alloc();
  v7 = *(*(sub_5758(&qword_1EEB78, &qword_17A258) - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v8 = sub_168E64();
  v3[19] = v8;
  v9 = *(v8 - 8);
  v3[20] = v9;
  v10 = *(v9 + 64) + 15;
  v3[21] = swift_task_alloc();
  v11 = sub_16A164();
  v3[22] = v11;
  v12 = *(v11 - 8);
  v3[23] = v12;
  v13 = *(v12 + 64) + 15;
  v3[24] = swift_task_alloc();
  v14 = sub_5758(&qword_1EEB80, &qword_17A260);
  v3[25] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();

  return _swift_task_switch(sub_13D9F4, 0, 0);
}

uint64_t sub_13D9F4()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 184);
  v40 = *(v0 + 176);
  v42 = *(v0 + 200);
  v5 = *(v0 + 112);
  v44 = *(v0 + 104);
  v38 = *(v0 + 96);
  sub_16A184();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_16A074();
  sub_10824(v5, v0 + 16);
  v8 = sub_16A064();
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  sub_16A5C4();
  sub_16A154();
  v45 = v8;
  v46 = v7;
  sub_16A174();

  (*(v4 + 8))(v3, v40);
  sub_D188(v0 + 56, &qword_1EEB88, &qword_17A268);
  sub_2F868(v2, v1, &qword_1EEB80, &qword_17A260);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *(v0 + 208);
  if (EnumCaseMultiPayload == 1)
  {
    v11 = &qword_1EEB80;
    v12 = &qword_17A260;
    v13 = *(v0 + 208);
LABEL_5:
    sub_D188(v13, v11, v12);
    v18 = *(v0 + 208);
    v19 = *(v0 + 216);
    v20 = *(v0 + 192);
    v21 = *(v0 + 168);
    v23 = *(v0 + 136);
    v22 = *(v0 + 144);
    type metadata accessor for CarCommandsError();
    sub_11D28();
    swift_allocError();
    *v24 = 0xD000000000000025;
    v24[1] = 0x8000000000191120;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_D188(v19, &qword_1EEB80, &qword_17A260);

    v25 = *(v0 + 8);

    return v25();
  }

  v14 = *(v0 + 144);
  (*(*(v0 + 160) + 32))(*(v0 + 168), *(v0 + 208), *(v0 + 152));
  v15 = sub_168E54();
  sub_8A1A8(v15, v14);

  v16 = sub_168EA4();
  if (sub_9E2C(v14, 1, v16) == 1)
  {
    v17 = *(v0 + 144);
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
    v11 = &unk_1EEB78;
    v12 = &unk_17A258;
    v13 = v17;
    goto LABEL_5;
  }

  v27 = *(v0 + 216);
  v41 = *(v0 + 208);
  v43 = *(v0 + 192);
  v29 = *(v0 + 160);
  v28 = *(v0 + 168);
  v30 = *(v0 + 144);
  v39 = *(v0 + 152);
  v32 = *(v0 + 128);
  v31 = *(v0 + 136);
  v33 = *(v0 + 120);
  sub_168E94();
  (*(*(v16 - 8) + 8))(v30, v16);
  v34 = sub_168CE4();
  v36 = v35;

  (*(v32 + 8))(v31, v33);
  (*(v29 + 8))(v28, v39);
  sub_D188(v27, &qword_1EEB80, &qword_17A260);

  v37 = *(v0 + 8);

  return v37(v34, v36);
}

uint64_t sub_13DE88(uint64_t result, uint64_t a2)
{
  v2[12] = v4;
  v2[13] = result;
  v2[14] = a2;
  v2[15] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for WalletActivableAccessoryType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x13DF68);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_13DFA4()
{
  result = qword_1EEB90;
  if (!qword_1EEB90)
  {
    sub_37130(&qword_1EEB98, qword_17A2A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EEB90);
  }

  return result;
}

uint64_t sub_13E008(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1D3AA0;
  v6._object = a2;
  v4 = sub_16ADE4(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_13E054(char a1)
{
  result = 0x6D72616C41726163;
  switch(a1)
  {
    case 1:
      result = 0x616D696C43726163;
      break;
    case 2:
      result = 0x6B636F4C726163;
      break;
    case 3:
      result = 0x6B6E757254726163;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_13E10C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_13E008(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_13E13C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_13E054(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_13E17C()
{
  result = qword_1EEBA0;
  if (!qword_1EEBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EEBA0);
  }

  return result;
}

uint64_t sub_13E1D0(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_5758(&qword_1E7DE0, &unk_16FB30);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v48 - v8;
  v10 = sub_169E84();
  v50 = *(v10 - 8);
  v11 = *(v50 + 64);
  __chkstk_darwin(v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v3 hasOn])
  {
    [v3 setOn:a2 & 1];
  }

  v14 = [v3 heatingCoolingLevelRange];
  v15 = [v14 maximumValue];

  v16 = [v3 heatingCoolingLevelRange];
  v51 = [v16 minimumValue];

  if (!a1)
  {
    v17 = 0;
    goto LABEL_22;
  }

  v17 = v15;
  if (a1 != 1)
  {
    if (a1 != 2)
    {
      v53 = a1;
      result = sub_16AE84();
      __break(1u);
      return result;
    }

    v18 = [v3 vehicleLayoutKey];
    sub_16A664();

    sub_169E64();
    if (sub_9E2C(v9, 1, v10) == 1)
    {
      sub_63AF4(v9);
LABEL_8:
      v17 = v51;
      goto LABEL_22;
    }

    v19 = v50;
    (*(v50 + 32))(v13, v9, v10);
    v20 = [v3 car];
    if (v20)
    {
      v21 = v20;
      v22 = [v20 positionManager];

      if (v22)
      {
        __chkstk_darwin(v23);
        v47 = v13;
        sub_15A240(sub_13E928, (&v48 - 4));
        v25 = v24;

        if (sub_11B48C(v25))
        {
          sub_1487EC(0, (v25 & 0xC000000000000001) == 0, v25);
          if ((v25 & 0xC000000000000001) != 0)
          {
            v26 = sub_16AD04();
          }

          else
          {
            v26 = *(v25 + 32);
          }

          v27 = v26;

          v28 = [v27 fanLevelRange];
          v29 = v28;
          v30 = &selRef_maximumValue;
          if ((a2 & 1) == 0)
          {
            v30 = &selRef_minimumValue;
          }

          v31 = [v28 *v30];

          [v27 setFanLevel:v31];
          v48 = "CommonLabels#Yes";
          v49 = "ngCooling+CarClimateSeat.swift";
          v53 = 0;
          v54 = 0xE000000000000000;
          sub_16ACF4(48);
          v55._countAndFlagsBits = 0xD00000000000001BLL;
          v55._object = 0x8000000000191250;
          sub_16A744(v55);
          LOBYTE(v52) = v31;
          v56._countAndFlagsBits = sub_16AE24();
          sub_16A744(v56);

          sub_13E94C(" for layout key: ");
          sub_16AD84();
          v32 = v53;
          v33 = v54;
          if (qword_1E58E8 != -1)
          {
            sub_9ED4();
          }

          v34 = sub_16A584();
          sub_9DA0(v34, qword_1E65C0);
          v35 = sub_16A9A4();
          sub_386D8(v35, 0x400uLL, 0xD00000000000009ELL, v48 | 0x8000000000000000, 0xD00000000000001ELL, (v49 | 0x8000000000000000), 38, v32, v33);

          (*(v50 + 8))(v13, v10);
          goto LABEL_8;
        }

        v19 = v50;
      }
    }

    (*(v19 + 8))(v13, v10);
    v17 = v51;
  }

LABEL_22:
  if (a2)
  {
    v36 = v17;
  }

  else
  {
    v36 = 0;
  }

  [v3 setHeatingCoolingLevel:v36];
  v53 = 0;
  v54 = 0xE000000000000000;
  sub_16ACF4(57);
  v57._countAndFlagsBits = 0x20676E6974746553;
  v57._object = 0xE800000000000000;
  sub_16A744(v57);
  v37 = [v3 vehicleLayoutKey];
  v38 = sub_16A664();
  v40 = v39;

  v58._countAndFlagsBits = v38;
  v58._object = v40;
  sub_16A744(v58);

  v59._countAndFlagsBits = 0x2074616573207327;
  v59._object = 0xE800000000000000;
  sub_16A744(v59);
  if (a1 == 2)
  {
    v41._countAndFlagsBits = 0x676E6974616568;
  }

  else
  {
    v41._countAndFlagsBits = 0x676E696C6F6F63;
  }

  v41._object = 0xE700000000000000;
  sub_16A744(v41);

  v60._countAndFlagsBits = 0x6576656C206F7420;
  v60._object = 0xEB00000000203A6CLL;
  sub_16A744(v60);
  v52 = v17;
  v61._countAndFlagsBits = sub_13E930();
  sub_16A744(v61);

  sub_13E94C(" in level range: ");
  v52 = v51;
  v62._countAndFlagsBits = sub_13E930();
  sub_16A744(v62);

  v63._countAndFlagsBits = 2108704;
  v63._object = 0xE300000000000000;
  sub_16A744(v63);
  v52 = v15;
  v64._countAndFlagsBits = sub_13E930();
  sub_16A744(v64);

  v43 = v53;
  v42 = v54;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v44 = sub_16A584();
  sub_9DA0(v44, qword_1E65C0);
  v45 = sub_16A9A4();
  sub_386D8(v45, 0x400uLL, 0xD00000000000009ELL, 0x8000000000191170, 0xD00000000000001ELL, 0x8000000000191210, 51, v43, v42);
}

uint64_t sub_13E930()
{

  return sub_16AE24();
}

void sub_13E94C(uint64_t a1@<X8>)
{
  v2._countAndFlagsBits = 0xD000000000000011;

  v2._object = ((a1 - 32) | 0x8000000000000000);
  sub_16A744(v2);
}

unint64_t sub_13E96C(float a1, float a2, float a3, float a4)
{
  v8 = sub_5758(&qword_1EEBA8, &qword_17A3E8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v104 - v10;
  v12 = sub_169A04();
  v13 = sub_9F48(v12);
  v106 = v14;
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v13);
  v105 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v104 - v19;
  v21 = sub_5758(&qword_1EEBB0, &unk_17A3F0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v104 - v23;
  v25 = sub_1699D4();
  v26 = sub_9F48(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v26);
  v33 = &v104 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v35 = &v104 - v34;
  sub_1699E4();
  sub_13F4A0();
  if (v107)
  {
    sub_1699B4();
    if (sub_9E2C(v24, 1, v25) == 1)
    {

      sub_D188(v24, &qword_1EEBB0, &unk_17A3F0);
      goto LABEL_4;
    }

    (*(v28 + 32))(v35, v24, v25);
    (*(v28 + 16))(v33, v35, v25);
    v42 = (*(v28 + 88))(v33, v25);
    if (v42 == enum case for UsoEntity_common_Number.DefinedValues.common_Number_Billion(_:))
    {
      v43 = sub_13F490();
      v44(v43);

      LOBYTE(v39) = 0;
      LODWORD(v41) = 1315859240;
      goto LABEL_56;
    }

    v45 = v42;
    if (v42 == enum case for UsoEntity_common_Number.DefinedValues.common_Number_Twelve(_:))
    {
      v46 = sub_13F490();
      v47(v46);

      LOBYTE(v39) = 0;
      LODWORD(v41) = 1094713344;
      goto LABEL_56;
    }

    if (v42 == enum case for UsoEntity_common_Number.DefinedValues.common_Number_Thousand(_:))
    {
      v56 = sub_13F490();
      v57(v56);

      LOBYTE(v39) = 0;
      LODWORD(v41) = 1148846080;
      goto LABEL_56;
    }

    if (v42 == enum case for UsoEntity_common_Number.DefinedValues.common_Number_Trillion(_:))
    {
      v58 = sub_13F490();
      v59(v58);

      LOBYTE(v39) = 0;
      LODWORD(v41) = 1399379109;
      goto LABEL_56;
    }

    v76 = enum case for UsoEntity_common_Number.DefinedValues.common_Number_MiddleValue(_:);
    if (v42 == enum case for UsoEntity_common_Number.DefinedValues.common_Number_MiddleValue(_:))
    {
      v77 = a2 * 0.5;
      v78 = a1 * 0.5;
    }

    else
    {
      if (v42 == enum case for UsoEntity_common_Number.DefinedValues.common_Number_Million(_:))
      {
        v88 = sub_13F490();
        v89(v88);

        LOBYTE(v39) = 0;
        LODWORD(v41) = 1232348160;
        goto LABEL_56;
      }

      if (v42 == enum case for UsoEntity_common_Number.DefinedValues.common_Number_HundredThousand(_:))
      {
        v90 = sub_13F490();
        v91(v90);

        LOBYTE(v39) = 0;
        LODWORD(v41) = 1203982336;
        goto LABEL_56;
      }

      v76 = enum case for UsoEntity_common_Number.DefinedValues.common_Number_SmallUnspecifiedAmount(_:);
      if (v42 == enum case for UsoEntity_common_Number.DefinedValues.common_Number_SmallUnspecifiedAmount(_:))
      {
        v78 = a2 * a3;
        v93 = 1.0 - a3;
      }

      else
      {
        if (v42 == enum case for UsoEntity_common_Number.DefinedValues.common_Number_MaximumValue(_:))
        {
          v94 = sub_13F490();
          v95(v94);

          LOBYTE(v39) = 0;
          *&v41 = a2;
          goto LABEL_56;
        }

        if (v42 == enum case for UsoEntity_common_Number.DefinedValues.common_Number_TenThousand(_:))
        {
          v96 = sub_13F490();
          v97(v96);

          LOBYTE(v39) = 0;
          LODWORD(v41) = 1176256512;
          goto LABEL_56;
        }

        v76 = enum case for UsoEntity_common_Number.DefinedValues.common_Number_LargeUnspecifiedAmount(_:);
        if (v42 != enum case for UsoEntity_common_Number.DefinedValues.common_Number_LargeUnspecifiedAmount(_:))
        {
          if (v42 == enum case for UsoEntity_common_Number.DefinedValues.common_Number_Hundred(_:))
          {
            v98 = sub_13F490();
            v99(v98);

            LOBYTE(v39) = 0;
            LODWORD(v41) = 1120403456;
            goto LABEL_56;
          }

          if (v42 == enum case for UsoEntity_common_Number.DefinedValues.common_Number_TenMillion(_:))
          {
            v100 = sub_13F490();
            v101(v100);

            LOBYTE(v39) = 0;
            LODWORD(v41) = 1259902592;
            goto LABEL_56;
          }

          v102 = enum case for UsoEntity_common_Number.DefinedValues.common_Number_MinimumValue(_:);
          v103 = *(v28 + 8);
          v103(v35, v25);

          if (v45 != v102)
          {
            v103(v33, v25);
            goto LABEL_54;
          }

LABEL_44:
          LOBYTE(v39) = 0;
          *&v41 = a1;
          goto LABEL_56;
        }

        v78 = a2 * a4;
        v93 = 1.0 - a4;
      }

      v77 = v93 * a1;
    }

    v79 = v78 + v77;
    sub_16AAF4(v76, 10.0);
    sub_1683B4(v82, v80, v81);
    sub_16AB04(v83);
    v85 = v84;
    sub_16A8E4();
    v87 = v86;

    a1 = roundf(v79 * v87) / v87;
    (*(v28 + 8))(v35, v25);
    goto LABEL_44;
  }

LABEL_4:
  sub_169A44();
  sub_13F4A0();
  if (v107)
  {
    v36 = sub_169A34();
    v38 = v37;

    if ((v38 & 1) == 0)
    {
      LOBYTE(v39) = 0;
      v40 = v36;
LABEL_7:
      *&v41 = v40;
      goto LABEL_56;
    }

    goto LABEL_54;
  }

  sub_169A24();
  sub_13F4A0();
  if (v107)
  {
    sub_1699F4();
    if (sub_9E2C(v11, 1, v12) == 1)
    {
      sub_D188(v11, &qword_1EEBA8, &qword_17A3E8);
    }

    else
    {
      v50 = v106;
      (*(v106 + 32))(v20, v11, v12);
      v51 = v105;
      (*(v50 + 104))(v105, enum case for UsoEntity_common_Decimal.DefinedValues.common_Decimal_Percent(_:), v12);
      v52 = sub_E5EC8(v20, v51);
      v53 = *(v50 + 8);
      v53(v51, v12);
      v53(v20, v12);
      if (v52)
      {

        LOBYTE(v39) = 0;
        LODWORD(v41) = 1008981770;
        goto LABEL_56;
      }
    }

    v54 = sub_169A14();
    if (v55)
    {
      v41 = sub_13F2A4(v54, v55);

      v39 = HIDWORD(v41) & 1;
      goto LABEL_56;
    }

LABEL_53:

LABEL_54:
    LODWORD(v41) = 0;
    goto LABEL_55;
  }

  sub_169BA4();
  sub_13F4A0();
  if (!v107)
  {
    sub_169C14();
    sub_13F4A0();
    LODWORD(v41) = v107;
    if (v107)
    {
      if (sub_169C04())
      {
        if (sub_169BF4())
        {
          sub_1696F4();
          v64 = sub_13F4C0(v60, v61, v62, v63);

          if ((v64 & 0x100000000) == 0)
          {

            sub_1696F4();

            v69 = sub_13F4C0(v65, v66, v67, v68);

            if ((v69 & 0x100000000) == 0)
            {
              LOBYTE(v39) = 0;
              v40 = *&v64 * *&v69;
              goto LABEL_7;
            }

            goto LABEL_54;
          }
        }

        else
        {
        }
      }

      goto LABEL_53;
    }

    goto LABEL_55;
  }

  v48 = sub_169B94();
  LOBYTE(v39) = v49;
  if ((v49 & 1) == 0)
  {
    v41 = v48;
    if (v48)
    {
      v70 = sub_169B84();
      if (v71)
      {
        v70 = 1.0;
      }

      *&v41 = v70 / v41;
      goto LABEL_37;
    }

LABEL_55:
    LOBYTE(v39) = 1;
    goto LABEL_56;
  }

  LODWORD(v41) = 0;
LABEL_37:
  v72 = sub_169B74();
  v74 = v73;

  if ((v74 & 1) == 0)
  {
    v75 = *&v41;
    if (v39)
    {
      v75 = 0.0;
    }

    *&v41 = v75 + v72;
    LOBYTE(v39) = 0;
  }

LABEL_56:
  LOBYTE(v107) = v39 & 1;
  return v41 | ((v39 & 1) << 32);
}

unint64_t sub_13F2A4(uint64_t a1, uint64_t a2)
{
  v2 = sub_13F37C(a1, a2);

  return !v2 << 32;
}

_BYTE *sub_13F310@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtof_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

BOOL sub_13F37C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *(&stru_20.cmd + (a2 & 0xFFFFFFFFFFFFFFFLL));
      if (v3 < 0x21 && ((0x100003E01uLL >> v3) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_16ACE4();
    if (!v2)
    {
      return v7;
    }

    return v5;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v4 = _swift_stdlib_strtof_clocale();
  if (!v4)
  {
    return 0;
  }

  return *v4 == 0;
}

uint64_t sub_13F4A0()
{

  return sub_169A94();
}

uint64_t sub_13F4C0(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  a1.n128_u32[0] = v5;
  a2.n128_u32[0] = v6;
  a3.n128_u32[0] = v7;
  a4.n128_u32[0] = v8;

  return sub_13E96C(a1, a2, a3, a4);
}

uint64_t sub_13F4E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_146404(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

double sub_13F530@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_146404(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_16138(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

void *sub_13F594(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_16ADA4();

    if (v4)
    {
      sub_16484(0, &qword_1E6310, NSNumber_ptr);
      swift_dynamicCast();
      return v9;
    }
  }

  else if (*(a2 + 16) && (v5 = sub_1464E8(a1), (v6 & 1) != 0))
  {
    v4 = *(*(a2 + 56) + 8 * v5);
    v7 = v4;
  }

  else
  {
    return 0;
  }

  return v4;
}

double sub_13F658@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_14652C(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_16138(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_13F6BC(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_147BB0(result, 1, sub_108204);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_1697C4();
  v8 = *(result - 8);
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, v3);
  v13 = v11 + v3;
  if (!v12)
  {
    *(v6 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_13F7FC(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, void, uint64_t))
{
  v7 = a2();
  v8 = (a2)(*v3);
  v9 = __OFADD__(v8, v7);
  result = v8 + v7;
  if (v9)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_147B10(result);
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(&dword_10 + v12) + 32, (*(&dword_18 + v12) >> 1) - *(&dword_10 + v12), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v14 < 1)
  {
LABEL_6:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_13F96C(uint64_t a1)
{
  v3 = a1;
  v4 = *(a1 + 16);
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v4))
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_147BB0(v5 + v4, 1, sub_108D88);
  v1 = *v2;
  v6 = *(*v2 + 16);
  v7 = (*(*v2 + 24) >> 1) - v6;
  result = sub_1486C0(v33, (*v2 + v6 + 32), v7, v3);
  if (result < v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (result)
  {
    v12 = *(v1 + 16);
    v13 = __OFADD__(v12, result);
    v14 = v12 + result;
    if (v13)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(v1 + 16) = v14;
  }

  if (result == v7)
  {
LABEL_11:
    v3 = *(v1 + 16);
    result = v33[0];
    v9 = v33[1];
    v10 = v34;
    v11 = v35;
    if (v36)
    {
      v15 = (v36 - 1) & v36;
      v16 = __clz(__rbit64(v36)) | (v35 << 6);
      v17 = (v34 + 64) >> 6;
LABEL_19:
      v21 = *(*(result + 48) + v16);
      while (1)
      {
        v22 = *(v1 + 24) >> 1;
        if (v22 < v3 + 1)
        {
          v31 = v15;
          v32 = result;
          v29 = v10;
          v30 = v9;
          v26 = v11;
          v27 = v21;
          sub_108D88();
          v21 = v27;
          v9 = v30;
          v15 = v31;
          v11 = v26;
          v10 = v29;
          v1 = v28;
          result = v32;
          v22 = *(v1 + 24) >> 1;
        }

        if (v3 < v22)
        {
          break;
        }

        v23 = v11;
LABEL_33:
        *(v1 + 16) = v3;
        v11 = v23;
      }

      while (1)
      {
        *(v1 + 32 + v3++) = v21;
        if (!v15)
        {
          break;
        }

        v23 = v11;
LABEL_30:
        v25 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
        v21 = *(*(result + 48) + (v25 | (v23 << 6)));
        if (v3 >= v22)
        {
          goto LABEL_33;
        }
      }

      v24 = v11;
      while (1)
      {
        v23 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v23 >= v17)
        {
          result = sub_4A004();
          *(v1 + 16) = v3;
          goto LABEL_8;
        }

        v15 = *(v9 + 8 * v23);
        ++v24;
        if (v15)
        {
          v11 = v23;
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
      return result;
    }

LABEL_14:
    v17 = (v10 + 64) >> 6;
    v18 = v11;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_37;
      }

      if (v19 >= v17)
      {
        break;
      }

      v20 = *(v9 + 8 * v19);
      ++v18;
      if (v20)
      {
        v15 = (v20 - 1) & v20;
        v16 = __clz(__rbit64(v20)) | (v19 << 6);
        v11 = v19;
        goto LABEL_19;
      }
    }
  }

  result = sub_4A004();
LABEL_8:
  *v2 = v1;
  return result;
}

void sub_13FBBC()
{
  sub_CA350();
  v198 = sub_169724();
  v1 = sub_9F48(v198);
  v191 = v2;
  v4 = *(v3 + 64);
  __chkstk_darwin(v1);
  sub_A138();
  sub_148938(v6 - v5);
  v164 = sub_5758(&qword_1ED160, &unk_178250);
  sub_10AFC(v164);
  v8 = *(v7 + 64);
  sub_CA380();
  __chkstk_darwin(v9);
  sub_148944();
  sub_148938(v10);
  v175 = sub_169DB4();
  v11 = sub_9F48(v175);
  v176 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  sub_A138();
  sub_148938(v16 - v15);
  v17 = sub_5758(&qword_1E9B28, &unk_173710);
  sub_D414(v17);
  v19 = *(v18 + 64);
  sub_CA380();
  __chkstk_darwin(v20);
  sub_148944();
  sub_148938(v21);
  v197 = sub_169DD4();
  v22 = sub_9F48(v197);
  v193 = v23;
  v25 = *(v24 + 64);
  __chkstk_darwin(v22);
  sub_A138();
  sub_148938(v27 - v26);
  v28 = sub_5758(&qword_1ED168, &qword_178260);
  sub_D414(v28);
  v30 = *(v29 + 64);
  sub_CA380();
  __chkstk_darwin(v31);
  sub_148944();
  v196 = v32;
  v33 = sub_169754();
  v34 = sub_9F48(v33);
  v185 = v35;
  v37 = *(v36 + 64);
  __chkstk_darwin(v34);
  sub_A138();
  v40 = v39 - v38;
  v41 = sub_1697C4();
  v42 = sub_9F48(v41);
  v44 = v43;
  v46 = *(v45 + 64);
  __chkstk_darwin(v42);
  sub_A138();
  v49 = v48 - v47;
  v50 = sub_1697F4();
  v51 = sub_9F48(v50);
  v186 = v52;
  v54 = *(v53 + 64);
  __chkstk_darwin(v51);
  sub_10B64();
  v56 = v55;
  sub_6CF04();
  __chkstk_darwin(v57);
  v59 = &v160 - v58;
  v60 = sub_5758(&qword_1ED158, &qword_178248);
  v61 = sub_D414(v60);
  v63 = *(v62 + 64);
  __chkstk_darwin(v61);
  sub_10B64();
  sub_148864();
  __chkstk_darwin(v64);
  sub_148AB8();
  sub_148864();
  __chkstk_darwin(v65);
  sub_148AB8();
  v195 = v66;
  sub_6CF04();
  __chkstk_darwin(v67);
  sub_1489CC();
  sub_1416D0();
  if (!v68)
  {
    sub_148B10();
LABEL_52:
    sub_CA57C();
    sub_CA368();
    return;
  }

  v200[0] = v40;
  v192 = v56;
  v203 = v68;
  v187 = sub_16A664();
  v189 = v69;
  v70 = v186;
  (*(v186 + 104))(v59, enum case for UsoIdentifier.NluComponent.spanMatchSiriVocab(_:), v50);
  sub_1697E4();
  v71 = *(v70 + 8);
  v199 = v50;
  v183 = v70 + 8;
  v182 = v71;
  v71(v59, v50);
  v172 = v0;
  sub_1697D4();
  v202 = *(v203 + 16);
  v72 = v196;
  if (!v202)
  {
LABEL_49:

    sub_148B10();
LABEL_50:
    sub_109A0(v172, &qword_1ED158, &qword_178248);
    goto LABEL_52;
  }

  v73 = 0;
  v74 = *(v44 + 80);
  sub_10BDEC();
  v201 = v75 + v76;
  v200[1] = v44 + 16;
  v194 = (v185 + 4);
  v178 = (v70 + 32);
  v168 = v193 + 4;
  v167 = v176 + 8;
  v165 = v193 + 1;
  v193 = v185 + 1;
  v77 = (v44 + 8);
  v160 = v70 + 16;
  v185 = (v191 + 8);
  v186 = v191 + 16;
  v166 = xmmword_16D9A0;
  v171 = v33;
  v190 = v41;
  v188 = v44;
  v161 = v59;
  v170 = (v44 + 8);
  while (v73 < *(v75 + 16))
  {
    (*(v44 + 16))(v49, v201 + *(v44 + 72) * v73, v41);
    sub_169784();
    sub_148874(v72, 1, v33);
    if (!v82)
    {
      (*v194)(v200[0], v72, v33);
      sub_169744();
      v80 = v195;
      sub_1697D4();
      v81 = v199;
      sub_148874(v80, 1, v199);
      if (v82)
      {
        v83 = sub_148AE4();
        v84(v83, v33);
        v85 = sub_1489BC();
        v86(v85);
        v87 = v80;
        v88 = &qword_1ED158;
        v89 = &qword_178248;
      }

      else
      {
        v90 = *v178;
        (*v178)(v192, v80, v81);
        v91 = v184;
        sub_1697B4();
        v92 = sub_148A24();
        v93 = v197;
        sub_148874(v92, v94, v197);
        if (!v95)
        {
          sub_14890C(v200);
          v100 = v177;
          v101(v177, v91, v93);
          sub_5758(&qword_1EEC20, &qword_17A470);
          v102 = v93;
          v103 = v176;
          v104 = *(v176 + 72);
          v105 = (*(v176 + 80) + 32) & ~*(v176 + 80);
          v106 = swift_allocObject();
          *(v106 + 16) = v166;
          sub_169D84();
          v204 = v106;
          sub_1487A4(&qword_1EEC28, &type metadata accessor for MatchInfo.MatchSignals);
          sub_5758(&qword_1EEC30, &qword_17A478);
          sub_37284(&qword_1EEC38, &qword_1EEC30, &qword_17A478);
          v107 = v174;
          v108 = v175;
          sub_16AB84();
          v109 = sub_169D64();
          (*(v103 + 8))(v107, v108);
          if (v109)
          {
            sub_14890C(&v191);
            v110 = v173;
            v111 = v199;
            v112(v173, v192, v199);
            sub_148950();
            sub_5370(v113, v114, v115, v111);
            v116 = *(v164 + 48);
            v117 = v163;
            sub_D4DC4(v110, v163, &qword_1ED158, &qword_178248);
            sub_D4DC4(v172, v117 + v116, &qword_1ED158, &qword_178248);
            v118 = sub_148A24();
            sub_148874(v118, v119, v111);
            v120 = v161;
            v72 = v196;
            if (v82)
            {
              sub_109A0(v110, &qword_1ED158, &qword_178248);
              sub_148874(v117 + v116, 1, v111);
              v33 = v171;
              v77 = v170;
              if (v82)
              {
                sub_109A0(v117, &qword_1ED158, &qword_178248);
                v41 = v190;
                v44 = v188;
                goto LABEL_30;
              }
            }

            else
            {
              sub_D4DC4(v117, v169, &qword_1ED158, &qword_178248);
              sub_148874(v117 + v116, 1, v111);
              v33 = v171;
              v77 = v170;
              if (!v127)
              {
                v90(v120, v117 + v116, v111);
                sub_14888C();
                sub_1487A4(&qword_1ED170, v130);
                LODWORD(v181) = sub_16A634();
                v131 = v182;
                v182(v120, v111);
                sub_109A0(v173, &qword_1ED158, &qword_178248);
                v131(v169, v111);
                sub_109A0(v117, &qword_1ED158, &qword_178248);
                v41 = v190;
                v44 = v188;
                if (v181)
                {
LABEL_30:
                  v181 = *(sub_169764() + 16);
                  if (v181)
                  {
                    v132 = 0;
                    v133 = *(v191 + 80);
                    sub_10BDEC();
                    v179 = v134 + v135;
                    v136 = v162;
                    v180 = v134;
                    while (1)
                    {
                      if (v132 >= *(v134 + 16))
                      {
                        goto LABEL_55;
                      }

                      (*(v191 + 16))(v136, v179 + *(v191 + 72) * v132, v198);
                      if (sub_169714() == v187 && v137 == v189)
                      {
                      }

                      else
                      {
                        v139 = sub_16AE54();

                        if ((v139 & 1) == 0)
                        {
                          v140 = sub_148AE4();
                          v141(v140, v198);
                          goto LABEL_45;
                        }
                      }

                      sub_169704();
                      if (v142)
                      {
                        sub_169774();
                        v144 = v143;
                        (*v185)(v136, v198);
                        if (v144)
                        {

                          sub_14890C(&v196);
                          v154(v177, v197);
                          sub_14882C();
                          v156(v155);
                          v157 = sub_1488F0();
                          v158(v157, v171);
                          sub_14890C(&v201);
                          v159(v49, v190);
                          goto LABEL_50;
                        }

                        v41 = v190;
                      }

                      else
                      {
                        v145 = sub_148AE4();
                        v146(v145, v198);
                      }

                      v44 = v188;
LABEL_45:
                      ++v132;
                      v134 = v180;
                      if (v181 == v132)
                      {

                        v33 = v171;
                        v77 = v170;
                        goto LABEL_48;
                      }
                    }
                  }
                }

LABEL_48:
                sub_14890C(&v196);
                v147(v177, v197);
                sub_14882C();
                v149(v148);
                v150 = sub_1488F0();
                v151(v150, v33);
                v152 = sub_1489BC();
                v153(v152);
                goto LABEL_16;
              }

              sub_109A0(v173, &qword_1ED158, &qword_178248);
              sub_14882C();
              v129(v128);
            }

            sub_109A0(v117, &qword_1ED160, &unk_178250);
            v41 = v190;
            v44 = v188;
            goto LABEL_48;
          }

          sub_14890C(&v196);
          v121(v100, v102);
          sub_14882C();
          v123(v122);
          v124 = sub_1488F0();
          v33 = v171;
          v125(v124, v171);
          v126 = v170;
          v41 = v190;
          (*v170)(v49, v190);
          v77 = v126;
          v44 = v188;
          goto LABEL_15;
        }

        sub_14882C();
        v97(v96);
        v98 = sub_1488F0();
        v99(v98, v33);
        v41 = v190;
        (*v77)(v49, v190);
        v87 = v91;
        v88 = &qword_1E9B28;
        v89 = &unk_173710;
      }

      sub_109A0(v87, v88, v89);
LABEL_15:
      v72 = v196;
      goto LABEL_16;
    }

    v78 = sub_1489BC();
    v79(v78);
    sub_109A0(v72, &qword_1ED168, &qword_178260);
LABEL_16:
    ++v73;
    v75 = v203;
    if (v73 == v202)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
}

void sub_140A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_CA350();
  a19 = v20;
  a20 = v21;
  v183 = sub_169724();
  v22 = sub_9F48(v183);
  v180 = v23;
  v25 = *(v24 + 64);
  __chkstk_darwin(v22);
  sub_A138();
  v28 = v27 - v26;
  v160 = sub_5758(&qword_1ED160, &unk_178250);
  sub_10AFC(v160);
  v30 = *(v29 + 64);
  sub_CA380();
  __chkstk_darwin(v31);
  sub_148944();
  sub_148938(v32);
  v33 = sub_5758(&qword_1ED158, &qword_178248);
  v34 = sub_D414(v33);
  v36 = *(v35 + 64);
  __chkstk_darwin(v34);
  sub_10B64();
  sub_148864();
  __chkstk_darwin(v37);
  sub_148AB8();
  v167 = v38;
  sub_6CF04();
  __chkstk_darwin(v39);
  sub_148AB8();
  v166 = v40;
  sub_6CF04();
  __chkstk_darwin(v41);
  sub_F5784();
  v171 = v42;
  v173 = sub_1697F4();
  v43 = sub_9F48(v173);
  v45 = v44;
  v47 = *(v46 + 64);
  __chkstk_darwin(v43);
  sub_10B64();
  sub_148864();
  __chkstk_darwin(v48);
  sub_F5784();
  v169 = v49;
  v50 = &qword_1ED168;
  v51 = sub_5758(&qword_1ED168, &qword_178260);
  sub_D414(v51);
  v53 = *(v52 + 64);
  sub_CA380();
  __chkstk_darwin(v54);
  v56 = &v143 - v55;
  v57 = sub_169754();
  v58 = sub_9F48(v57);
  v60 = v59;
  v62 = *(v61 + 64);
  __chkstk_darwin(v58);
  sub_A138();
  v65 = v64 - v63;
  v162 = sub_1697C4();
  v66 = sub_10AEC(v162);
  v68 = v67;
  v70 = *(v69 + 64);
  __chkstk_darwin(v66);
  sub_A138();
  v178 = v72 - v71;
  sub_145070();
  v73 = v65;
  v75 = v74;
  v184 = &_swiftEmptyArrayStorage;
  v147 = sub_11A904(v74);
  v76 = 0;
  v146 = v75 & 0xC000000000000001;
  v145 = v75 & 0xFFFFFFFFFFFFFF8;
  v143 = v75;
  v144 = v75 + 32;
  v175 = v68 + 16;
  v170 = (v60 + 32);
  v163 = (v45 + 32);
  v158 = v45 + 16;
  v157 = enum case for UsoIdentifier.NluComponent.spanMatchVocFile(_:);
  v156 = v45 + 104;
  v172 = (v45 + 8);
  v179 = v180 + 16;
  v155 = v180 + 8;
  v77 = v57;
  v168 = (v60 + 8);
  v174 = (v68 + 8);
  v153 = v57;
  v182 = v73;
  v152 = v68;
  v181 = v56;
  v154 = v28;
  while (v76 != v147)
  {
    if (v146)
    {
      v150 = sub_16AD04();
    }

    else
    {
      if (v76 >= *(v145 + 16))
      {
        goto LABEL_67;
      }

      v150 = *(v144 + 8 * v76);
    }

    v78 = __OFADD__(v76, 1);
    v79 = v76 + 1;
    if (v78)
    {
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      return;
    }

    v148 = v79;
    v80 = sub_169DF4();
    v177 = *(v80 + 16);
    if (!v177)
    {
LABEL_46:

      goto LABEL_47;
    }

    v81 = 0;
    v82 = *(v68 + 80);
    sub_10BDEC();
    v176 = v80 + v83;
    v84 = v162;
    v161 = v80;
    while (1)
    {
      if (v81 >= *(v80 + 16))
      {
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      v85 = v178;
      (*(v68 + 16))(v178, v176 + *(v68 + 72) * v81, v84);
      sub_169784();
      sub_148874(v56, 1, v77);
      if (!v90)
      {
        break;
      }

      (*v174)(v85, v84);
      sub_109A0(v56, v50, &qword_178260);
LABEL_45:
      if (++v81 == v177)
      {
        goto LABEL_46;
      }
    }

    v86 = v68;
    v87 = v84;
    v88 = v50;
    (*v170)(v182, v56, v77);
    sub_169744();
    v89 = v171;
    sub_1697D4();
    v84 = v173;
    sub_148874(v89, 1, v173);
    if (v90)
    {
      v91 = sub_1489AC();
      v92(v91, v77);
      v84 = v87;
      (*v174)(v178, v87);
      sub_109A0(v89, &qword_1ED158, &qword_178248);
      v50 = v88;
      v68 = v86;
      goto LABEL_45;
    }

    v93 = *v163;
    v94 = v169;
    (*v163)(v169, v89, v84);
    sub_14890C(&a12);
    v68 = v166;
    v95(v166, v94, v84);
    sub_148950();
    sub_5370(v96, v97, v98, v84);
    sub_14890C(&a10);
    v99 = v164;
    v100(v164, v157, v84);
    sub_1697E4();
    v101 = *v172;
    (*v172)(v99, v84);
    v102 = v167;
    sub_1697D4();
    v103 = *(v160 + 48);
    v104 = v159;
    sub_D4DC4(v68, v159, &qword_1ED158, &qword_178248);
    sub_D4DC4(v102, v104 + v103, &qword_1ED158, &qword_178248);
    sub_1487F0(v104);
    if (v105)
    {
      sub_1489DC(v102);
      sub_1489DC(v68);
      sub_1487F0(v104 + v103);
      v106 = v154;
      if (v90)
      {
        sub_1489DC(v104);
        v165 = 1;
        goto LABEL_25;
      }
    }

    else
    {
      v151 = v101;
      v107 = v93;
      v108 = v149;
      sub_D4DC4(v104, v149, &qword_1ED158, &qword_178248);
      sub_1487F0(v104 + v103);
      v106 = v154;
      if (!v109)
      {
        v68 = v164;
        v107(v164, v104 + v103, v84);
        sub_14888C();
        sub_1487A4(&qword_1ED170, v110);
        v165 = sub_148B44();
        v111 = sub_148A18();
        v101 = v151;
        (v151)(v111);
        sub_1489DC(v167);
        sub_1489DC(v166);
        v101(v108, v84);
        sub_1489DC(v104);
        goto LABEL_25;
      }

      sub_1489DC(v167);
      sub_1489DC(v166);
      v101 = v151;
      v151(v108, v84);
    }

    sub_109A0(v104, &qword_1ED160, &unk_178250);
    v165 = 0;
LABEL_25:
    v56 = v181;
    v80 = sub_169764();
    v112 = *(v80 + 16);
    if (!v112)
    {
LABEL_42:

      v101(v169, v173);
      v126 = sub_1489AC();
      v77 = v153;
      v127(v126, v153);
      v128 = sub_148968();
      v129(v128);
      v50 = &qword_1ED168;
      sub_148AF0();
      goto LABEL_45;
    }

    v84 = 0;
    v113 = *(v180 + 80);
    sub_10BDEC();
    v68 = v80 + v114;
    while (1)
    {
      if (v84 >= *(v80 + 16))
      {
        __break(1u);
        goto LABEL_65;
      }

      (*(v180 + 16))(v106, v68 + *(v180 + 72) * v84, v183);
      v115 = sub_169704();
      if (!v116)
      {
LABEL_34:
        v119 = sub_14899C();
        v120(v119);
        goto LABEL_41;
      }

      if (v115 == 0x646E617242726163 && v116 == 0xE800000000000000)
      {
      }

      else
      {
        v118 = sub_16AE54();

        if ((v118 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      if (sub_169714() == 0x656D614E726163 && v121 == 0xE700000000000000)
      {
        break;
      }

      v123 = sub_16AE54();

      v124 = sub_14899C();
      v125(v124);
      if (v123)
      {
        goto LABEL_44;
      }

LABEL_41:
      ++v84;
      v56 = v181;
      if (v112 == v84)
      {
        goto LABEL_42;
      }
    }

    v130 = sub_14899C();
    v131(v130);
LABEL_44:

    v101(v169, v173);
    v77 = v153;
    (*v168)(v182, v153);
    v132 = sub_148968();
    v133(v132);
    v50 = &qword_1ED168;
    v56 = v181;
    sub_148AF0();
    if ((v165 & 1) == 0)
    {
      goto LABEL_45;
    }

    sub_16AD34();
    v134 = v184[2];
    sub_16AD64();
    sub_16AD74();
    sub_16AD44();
LABEL_47:
    v76 = v148;
  }

  v135 = v184;
  v136 = sub_11A904(v184);
  v137 = 0;
  v183 = 0;
  v138 = 0;
  while (v136 != v138)
  {
    if ((v135 & 0xC000000000000001) != 0)
    {
      sub_16AD04();
    }

    else
    {
      if (v138 >= *(v135 + 16))
      {
        goto LABEL_69;
      }

      v139 = *(v135 + 8 * v138 + 32);
    }

    if (__OFADD__(v138, 1))
    {
      goto LABEL_68;
    }

    sub_169E14();
    v140 = sub_169D34();
    v142 = v141;

    if (v142)
    {
      if (v137)
      {
        v184 = v183;
        v185 = v137;

        v186._countAndFlagsBits = 32;
        v186._object = 0xE100000000000000;
        sub_16A744(v186);

        v187._countAndFlagsBits = v140;
        v187._object = v142;
        sub_16A744(v187);

        v137 = v185;
        v183 = v184;
      }

      else
      {

        v137 = v142;
        v183 = v140;
      }

      ++v138;
    }

    else
    {

      ++v138;
    }
  }

  sub_CA368();
}

void sub_1416D0()
{
  sub_CA350();
  LODWORD(v97) = v0;
  v87 = sub_169984();
  v1 = sub_9F48(v87);
  v93 = v2;
  v4 = *(v3 + 64);
  __chkstk_darwin(v1);
  sub_A138();
  v89 = v6 - v5;
  v100 = sub_5758(&qword_1EEBC8, &qword_17A430);
  sub_10AFC(v100);
  v8 = *(v7 + 64);
  sub_CA380();
  __chkstk_darwin(v9);
  sub_148944();
  v99 = v10;
  v11 = sub_5758(&qword_1EEBD0, &qword_17A438);
  sub_D414(v11);
  v13 = *(v12 + 64);
  sub_CA380();
  __chkstk_darwin(v14);
  sub_148944();
  v101 = v15;
  v16 = sub_5758(&qword_1EEBD8, &qword_17A440);
  v17 = sub_D414(v16);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  sub_10B64();
  v98 = v20;
  sub_6CF04();
  v22 = __chkstk_darwin(v21);
  v24 = v84 - v23;
  __chkstk_darwin(v22);
  sub_F5784();
  v102 = v25;
  v106 = sub_1697C4();
  v26 = sub_9F48(v106);
  v104 = v27;
  v29 = *(v28 + 64);
  __chkstk_darwin(v26);
  sub_10B64();
  sub_148864();
  __chkstk_darwin(v30);
  sub_F5784();
  v103 = v31;
  sub_145070();
  v33 = v32;
  v34 = sub_11A904(v32);
  v35 = 0;
  v36 = &_swiftEmptyArrayStorage;
  v105 = v24;
  while (1)
  {
    if (v34 == v35)
    {

      if ((v97 & 1) == 0)
      {
LABEL_45:
        sub_CA368();
        return;
      }

      v47 = 0;
      v48 = *(v36 + 2);
      v96 = v104 + 16;
      v97 = v48;
      v95 = enum case for PayloadAttachmentInfo.AttachmentType.full(_:);
      v94 = v93 + 104;
      v88 = (v93 + 32);
      v90 = (v93 + 8);
      v91 = (v104 + 8);
      v84[1] = v104 + 32;
      v85 = &_swiftEmptyArrayStorage;
      while (2)
      {
        v49 = v87;
        v50 = v101;
        while (1)
        {
          if (v97 == v47)
          {

            goto LABEL_45;
          }

          if (v47 >= *(v36 + 2))
          {
            goto LABEL_51;
          }

          v51 = (*(v104 + 80) + 32) & ~*(v104 + 80);
          v52 = *(v104 + 72);
          (*(v104 + 16))(v103, &v36[v51 + v52 * v47], v106);
          sub_169794();
          v53 = sub_1699A4();
          sub_148874(v50, 1, v53);
          v92 = v52;
          v93 = v51;
          if (v68)
          {
            sub_109A0(v50, &qword_1EEBD0, &qword_17A438);
            v57 = v102;
            sub_3CFE4();
            sub_5370(v54, v55, v56, v49);
          }

          else
          {
            v57 = v102;
            sub_169994();
            (*(*(v53 - 8) + 8))(v50, v53);
          }

          v58 = v98;
          v59 = sub_148AE4();
          v60(v59, v95, v49);
          sub_148950();
          sub_5370(v61, v62, v63, v49);
          v64 = v99;
          v65 = *(v100 + 48);
          sub_D4DC4(v57, v99, &qword_1EEBD8, &qword_17A440);
          sub_D4DC4(v24, v64 + v65, &qword_1EEBD8, &qword_17A440);
          sub_148874(v64, 1, v49);
          if (v68)
          {
            break;
          }

          v66 = sub_14895C();
          sub_D4DC4(v66, v67, &qword_1EEBD8, &qword_17A440);
          sub_148874(v64 + v65, 1, v49);
          if (v68)
          {
            sub_148A64(v24);
            sub_148A64(v102);
            v69 = sub_1489AC();
            v70(v69, v49);
LABEL_35:
            sub_109A0(v64, &qword_1EEBC8, &qword_17A430);
            v50 = v101;
            goto LABEL_37;
          }

          v71 = v89;
          (*v88)(v89, v64 + v65, v49);
          sub_1488A4();
          sub_1487A4(&qword_1EEBE0, v72);
          v73 = v58;
          v74 = sub_16A634();
          v75 = *v90;
          (*v90)(v71, v49);
          sub_109A0(v105, &qword_1EEBD8, &qword_17A440);
          sub_109A0(v102, &qword_1EEBD8, &qword_17A440);
          v76 = v73;
          v24 = v105;
          v75(v76, v49);
          sub_109A0(v64, &qword_1EEBD8, &qword_17A440);
          v50 = v101;
          if (v74)
          {
            goto LABEL_38;
          }

LABEL_37:
          (*v91)(v103, v106);
          ++v47;
        }

        sub_148A64(v24);
        sub_148A64(v57);
        sub_148874(v64 + v65, 1, v49);
        if (v68)
        {
          sub_148A64(v64);
LABEL_38:
          sub_148AAC();
          v78 = *v77;
          (*v77)(v86, v103, v106);
          v79 = v85;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v107 = v79;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v81 = v79[2];
            sub_146820();
            v79 = v107;
          }

          v83 = v79[2];
          v82 = v79[3];
          if (v83 >= v82 >> 1)
          {
            sub_148A30(v82);
            sub_146820();
            v79 = v107;
          }

          ++v47;
          v79[2] = v83 + 1;
          v85 = v79;
          sub_148AAC();
          v78();
          continue;
        }

        goto LABEL_35;
      }
    }

    if ((v33 & 0xC000000000000001) != 0)
    {
      sub_16AD04();
    }

    else
    {
      if (v35 >= *(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_47;
      }

      v37 = *(v33 + 8 * v35 + 32);
    }

    if (__OFADD__(v35, 1))
    {
      break;
    }

    v38 = sub_169DF4();

    v39 = *(v38 + 16);
    v40 = *(v36 + 2);
    if (__OFADD__(v40, v39))
    {
      goto LABEL_48;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v40 + v39 > *(v36 + 3) >> 1)
    {
      sub_108204();
      v36 = v41;
    }

    v24 = v105;
    if (*(v38 + 16))
    {
      if ((*(v36 + 3) >> 1) - *(v36 + 2) < v39)
      {
        goto LABEL_50;
      }

      v42 = (*(v104 + 80) + 32) & ~*(v104 + 80);
      v43 = *(v104 + 72);
      swift_arrayInitWithCopy();

      if (v39)
      {
        v44 = *(v36 + 2);
        v45 = __OFADD__(v44, v39);
        v46 = v44 + v39;
        if (v45)
        {
          goto LABEL_52;
        }

        *(v36 + 2) = v46;
      }
    }

    else
    {

      if (v39)
      {
        goto LABEL_49;
      }
    }

    ++v35;
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
}

void sub_141EAC()
{
  sub_CA350();
  v52 = sub_1697C4();
  v1 = sub_9F48(v52);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_A138();
  v8 = v7 - v6;
  v9 = sub_5758(&unk_1EC980, &qword_178180);
  v10 = sub_D414(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_A128();
  v15 = v13 - v14;
  __chkstk_darwin(v16);
  v18 = v47 - v17;
  sub_1422D8();
  v20 = v19;
  if (!sub_11A904(v19))
  {

    goto LABEL_35;
  }

  if ((v20 & 0xC000000000000001) != 0)
  {
    goto LABEL_37;
  }

  sub_1488BC();
  if (!v21)
  {
    __break(1u);
    return;
  }

  sub_148B5C();
LABEL_5:

  sub_169934();
  sub_148B04();

  sub_1489F4();

  v22 = v53;
  if (!v53)
  {

    goto LABEL_35;
  }

  sub_148854();
  v23 = sub_1698D4();
  if (v23)
  {
    v24 = v23;
    v47[0] = v22;
    v47[1] = v0;
    v48 = v18;
    v49 = v15;
    v25 = 0;
    v18 = 0x656D614E707061;
    v26 = *(v23 + 16);
    v50 = v3 + 16;
    v51 = v26;
    v27 = v52;
    while (1)
    {
      if (v51 == v25)
      {

        v18 = v48;
        v36 = sub_148A24();
        goto LABEL_31;
      }

      if (v25 >= *(v24 + 16))
      {
        __break(1u);
LABEL_37:
        v0 = sub_148984();
        goto LABEL_5;
      }

      v28 = *(v3 + 80);
      sub_10BDEC();
      (*(v3 + 16))(v8, v24 + v29 + *(v3 + 72) * v25, v27);
      v30 = sub_169774();
      if (v31)
      {
        v32 = v30 == 0x746163696C707041 && v31 == 0xEC000000736E6F69;
        if (v32)
        {
        }

        else
        {
          v15 = sub_16AE54();

          if ((v15 & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        v33 = sub_1697A4();
        if (v34)
        {
          if (v33 == 0x656D614E707061 && v34 == 0xE700000000000000)
          {

LABEL_30:

            v18 = v48;
            v27 = v52;
            (*(v3 + 32))(v48, v8, v52);
            v36 = v18;
            v37 = 0;
LABEL_31:
            sub_5370(v36, v37, 1, v27);
            v15 = v49;
            goto LABEL_32;
          }

          v15 = sub_16AE54();

          if (v15)
          {
            goto LABEL_30;
          }
        }
      }

LABEL_24:
      v27 = v52;
      (*(v3 + 8))(v8, v52);
      ++v25;
    }
  }

  v38 = sub_148A24();
  v27 = v52;
  sub_5370(v38, v39, 1, v52);
LABEL_32:
  sub_D4DC4(v18, v15, &unk_1EC980, &qword_178180);
  sub_148874(v15, 1, v27);
  if (v32)
  {
    v40 = sub_148AD8();
    sub_109A0(v40, v41, &qword_178180);

    v42 = sub_CA57C();
    sub_109A0(v42, v43, &qword_178180);
  }

  else
  {
    sub_169734();

    sub_109A0(v18, &unk_1EC980, &qword_178180);
    v44 = *(v3 + 8);
    v45 = sub_CA57C();
    v46(v45);
  }

LABEL_35:
  sub_CA368();
}

void sub_1422D8()
{
  sub_5758(&qword_1E5F70, &unk_16F3F0);
  inited = swift_initStackObject();
  v1 = 0;
  v2 = sub_1488C8(inited, xmmword_16D3A0);
  v2[2].n128_u64[1] = v3;
  v4 = &v2[2].n128_i8[8];
  sub_148918(v2);
LABEL_2:
  v5 = &v4[16 * v1++];
  while (v1 != 3)
  {
    v7 = *(v5 - 1);
    v6 = *v5;

    v8 = sub_169D04();
    if (!*(v8 + 16) || (v9 = sub_146404(v7, v6), (v10 & 1) == 0))
    {
LABEL_13:

      goto LABEL_14;
    }

    v11 = *(*(v8 + 56) + 8 * v9);

    if (v11 >> 62)
    {
      if (!sub_148A48())
      {
        goto LABEL_13;
      }
    }

    else if (!*(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_13;
    }

    if ((v11 & 0xC000000000000001) != 0)
    {
      sub_148984();
    }

    else
    {
      sub_1488BC();
      if (!v12)
      {
        goto LABEL_47;
      }

      v13 = *(v11 + 32);
    }

    v14 = sub_169D54();

    if (v14)
    {
      sub_16A7B4();
      v15 = *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= v15 >> 1)
      {
        sub_148A30(v15);
        sub_16A7F4();
      }

      sub_16A814();
      goto LABEL_2;
    }

LABEL_14:
    ++v1;
    v5 += 2;
  }

  swift_setDeallocating();
  sub_EFFB0();
  v16 = sub_11A904(_swiftEmptyArrayStorage);
  v17 = 0;
  while (1)
  {
    if (v16 == v17)
    {

      return;
    }

    if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
    {
      sub_16AD04();
    }

    else
    {
      if (v17 >= *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_46;
      }

      v18 = _swiftEmptyArrayStorage[v17 + 4];
    }

    if (__OFADD__(v17, 1))
    {
      break;
    }

    v19 = sub_169DE4();
    if (!*(v19 + 16) || (v20 = sub_146404(0xD000000000000010, 0x80000000001912B0), (v21 & 1) == 0))
    {

      goto LABEL_39;
    }

    v22 = *(*(v19 + 56) + 8 * v20);

    if (v22 >> 62)
    {
      if (!sub_148A48())
      {
LABEL_42:

        goto LABEL_39;
      }
    }

    else if (!*(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_42;
    }

    if ((v22 & 0xC000000000000001) != 0)
    {
      sub_148984();
    }

    else
    {
      sub_1488BC();
      if (!v23)
      {
        goto LABEL_48;
      }

      v24 = *(v22 + 32);
    }

    v25 = sub_169D54();

    if (v25)
    {
      sub_16A7B4();
      v26 = *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= v26 >> 1)
      {
        sub_148A30(v26);
        sub_16A7F4();
      }

      sub_16A814();
      ++v17;
    }

    else
    {
LABEL_39:
      ++v17;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

void sub_142688()
{
  sub_CA350();
  LOBYTE(v2) = v1;
  v3 = sub_169984();
  v4 = sub_9F48(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_A138();
  v84 = v10 - v9;
  v93 = sub_5758(&qword_1EEBC8, &qword_17A430);
  sub_10AFC(v93);
  v12 = *(v11 + 64);
  sub_CA380();
  __chkstk_darwin(v13);
  v15 = v75 - v14;
  v16 = sub_5758(&qword_1EEBD0, &qword_17A438);
  sub_D414(v16);
  v18 = *(v17 + 64);
  sub_CA380();
  __chkstk_darwin(v19);
  v21 = v75 - v20;
  v22 = sub_5758(&qword_1EEBD8, &qword_17A440);
  v23 = sub_D414(v22);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  sub_A128();
  v28 = v26 - v27;
  v30 = __chkstk_darwin(v29);
  v32 = v75 - v31;
  __chkstk_darwin(v30);
  v34 = v75 - v33;
  v96 = sub_1697C4();
  v35 = sub_9F48(v96);
  v94 = v36;
  v38 = *(v37 + 64);
  __chkstk_darwin(v35);
  sub_10B64();
  v83 = v39;
  sub_6CF04();
  __chkstk_darwin(v40);
  sub_F5784();
  v95 = v41;
  v42 = sub_169D04();
  v43 = sub_148810();
  sub_13F4E0(v43, v44, v42);
  sub_148B04();

  if (!v0)
  {
    goto LABEL_39;
  }

  if (!sub_11A904(v0))
  {

LABEL_39:
    sub_CA368();
    return;
  }

  if ((v0 & 0xC000000000000001) != 0)
  {
    goto LABEL_43;
  }

  sub_1488BC();
  if (v45)
  {
    sub_148B5C();
    while (1)
    {

      sub_169D54();
      sub_148B04();

      if (!v42)
      {
        goto LABEL_39;
      }

      sub_169A64();
      sub_148B04();

      sub_1489F4();

      v46 = v98;
      if (!v98)
      {
        goto LABEL_38;
      }

      v78 = v42;
      sub_148854();
      v47 = sub_1698D4();
      if (!v47)
      {

LABEL_38:

        goto LABEL_39;
      }

      v98 = v47;
      v77 = v46;
      if (sub_169A54())
      {
        sub_148854();
        v48 = sub_1698D4();
        if (v48)
        {
          sub_13F6BC(v48);
        }
      }

      if ((v2 & 1) == 0)
      {

        goto LABEL_39;
      }

      v2 = 0;
      v91 = v94 + 16;
      v49 = v98;
      v92 = *(v98 + 16);
      v89 = (v6 + 104);
      v79 = (v6 + 32);
      v82 = (v6 + 8);
      v85 = (v94 + 8);
      v75[1] = v94 + 32;
      v76 = &_swiftEmptyArrayStorage;
      v88 = enum case for PayloadAttachmentInfo.AttachmentType.full(_:);
      v80 = v32;
      v90 = v98;
      while (1)
      {
        if (v92 == v2)
        {

          goto LABEL_39;
        }

        if (v2 >= *(v49 + 16))
        {
          break;
        }

        v50 = (*(v94 + 80) + 32) & ~*(v94 + 80);
        v86 = *(v94 + 72);
        (*(v94 + 16))(v95, v49 + v50 + v86 * v2, v96);
        sub_169794();
        v51 = sub_1699A4();
        sub_148874(v21, 1, v51);
        v87 = v50;
        if (v59)
        {
          sub_109A0(v21, &qword_1EEBD0, &qword_17A438);
          sub_3CFE4();
          sub_5370(v52, v53, v54, v3);
        }

        else
        {
          sub_169994();
          (*(*(v51 - 8) + 8))(v21, v51);
        }

        (*v89)(v32, v88, v3);
        sub_148950();
        sub_5370(v55, v56, v57, v3);
        v58 = *(v93 + 48);
        v6 = &qword_17A440;
        sub_D4DC4(v34, v15, &qword_1EEBD8, &qword_17A440);
        sub_D4DC4(v32, &v15[v58], &qword_1EEBD8, &qword_17A440);
        sub_1487F0(v15);
        if (v59)
        {
          sub_148A94(v32);
          sub_148A94(v34);
          sub_1487F0(&v15[v58]);
          if (!v59)
          {
            goto LABEL_28;
          }

          sub_148A94(v15);
          goto LABEL_31;
        }

        sub_D4DC4(v15, v28, &qword_1EEBD8, &qword_17A440);
        sub_1487F0(&v15[v58]);
        if (v59)
        {
          sub_148A94(v32);
          sub_148A94(v34);
          (*v82)(v28, v3);
LABEL_28:
          sub_109A0(v15, &qword_1EEBC8, &qword_17A430);
          goto LABEL_30;
        }

        v60 = v21;
        v61 = v34;
        v62 = v84;
        (*v79)(v84, &v15[v58], v3);
        sub_1488A4();
        sub_1487A4(&qword_1EEBE0, v63);
        LODWORD(v81) = sub_148B44();
        v64 = *v82;
        v65 = v62;
        v34 = v61;
        v21 = v60;
        v32 = v80;
        (*v82)(v65, v3);
        sub_109A0(v32, &qword_1EEBD8, &qword_17A440);
        sub_109A0(v34, &qword_1EEBD8, &qword_17A440);
        v64(v28, v3);
        sub_109A0(v15, &qword_1EEBD8, &qword_17A440);
        if (v81)
        {
LABEL_31:
          sub_148AAC();
          v67 = *v66;
          (*v66)(v83, v95, v96);
          v68 = v76;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v97 = v68;
          v81 = v67;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v70 = v68[2];
            sub_146820();
            v68 = v97;
          }

          v6 = v87;
          v72 = v68[2];
          v71 = v68[3];
          v73 = (v72 + 1);
          if (v72 >= v71 >> 1)
          {
            sub_148A30(v71);
            v76 = v74;
            sub_146820();
            v73 = v76;
            v68 = v97;
          }

          ++v2;
          v68[2] = v73;
          v76 = v68;
          sub_148AAC();
          v81();
          v49 = v90;
        }

        else
        {
LABEL_30:
          (*v85)(v95, v96);
          ++v2;
          v49 = v90;
        }
      }

      __break(1u);
LABEL_43:
      v42 = sub_148984();
    }
  }

  __break(1u);
}

void sub_142E48()
{
  sub_CA350();
  v2 = sub_169B24();
  v3 = sub_9F48(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_A138();
  v48 = v9 - v8;
  v10 = sub_5758(&qword_1EEC08, &qword_17A460);
  sub_10AFC(v10);
  v12 = *(v11 + 64);
  sub_CA380();
  __chkstk_darwin(v13);
  v15 = &v47 - v14;
  v16 = sub_5758(&qword_1EEC10, &qword_17A468);
  v17 = sub_D414(v16);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  sub_A128();
  v22 = v20 - v21;
  __chkstk_darwin(v23);
  sub_148AC4();
  __chkstk_darwin(v24);
  sub_1489CC();
  if (sub_146274() && sub_1698C4())
  {
    sub_169B14();
  }

  else
  {
    sub_3CFE4();
    sub_5370(v25, v26, v27, v2);
  }

  (*(v5 + 104))(v1, enum case for UsoEntity_common_Quantifier.DefinedValues.common_Quantifier_All(_:), v2);
  sub_148950();
  sub_5370(v28, v29, v30, v2);
  v31 = *(v10 + 48);
  sub_D4DC4(v0, v15, &qword_1EEC10, &qword_17A468);
  sub_D4DC4(v1, &v15[v31], &qword_1EEC10, &qword_17A468);
  sub_1487F0(v15);
  if (!v36)
  {
    sub_D4DC4(v15, v22, &qword_1EEC10, &qword_17A468);
    sub_1487F0(&v15[v31]);
    if (!v36)
    {
      v44 = v48;
      (*(v5 + 32))(v48, &v15[v31], v2);
      sub_1487A4(&qword_1EEC18, &type metadata accessor for UsoEntity_common_Quantifier.DefinedValues);
      sub_148B44();

      v45 = *(v5 + 8);
      v45(v44, v2);
      sub_109A0(v1, &qword_1EEC10, &qword_17A468);
      sub_109A0(v0, &qword_1EEC10, &qword_17A468);
      v46 = sub_148AD8();
      (v45)(v46);
      sub_109A0(v15, &qword_1EEC10, &qword_17A468);
      goto LABEL_14;
    }

    v37 = sub_148A0C();
    sub_109A0(v37, v38, &qword_17A468);
    v39 = sub_14895C();
    sub_109A0(v39, v40, &qword_17A468);
    v41 = *(v5 + 8);
    v42 = sub_148AD8();
    v43(v42);
LABEL_13:
    sub_109A0(v15, &qword_1EEC08, &qword_17A460);
    goto LABEL_14;
  }

  v32 = sub_148A0C();
  sub_109A0(v32, v33, &qword_17A468);
  v34 = sub_14895C();
  sub_109A0(v34, v35, &qword_17A468);
  sub_1487F0(&v15[v31]);
  if (!v36)
  {
    goto LABEL_13;
  }

  sub_109A0(v15, &qword_1EEC10, &qword_17A468);
LABEL_14:
  sub_CA368();
}

void sub_143214()
{
  v1 = sub_169D04();
  v2 = sub_148810();
  sub_13F4E0(v2, v3, v1);
  sub_148900();

  if (v0)
  {
    if (!sub_11A904(v0))
    {

      return;
    }

    if ((v0 & 0xC000000000000001) != 0)
    {
      sub_67D20();
    }

    else
    {
      sub_148A3C();
      if (!v4)
      {
        __break(1u);
        return;
      }

      sub_148A7C();
    }

    sub_169D54();
    sub_148900();

    sub_169934();
    sub_67C60();

    sub_1489F4();

    if (v5)
    {
      sub_148854();
      sub_1698D4();
      sub_67C60();
    }

    else
    {
    }
  }
}

void sub_14330C()
{
  v1 = sub_169D04();
  v2 = sub_148810();
  sub_13F4E0(v2, v3, v1);
  sub_148900();

  if (v0)
  {
    if (!sub_11A904(v0))
    {

      return;
    }

    if ((v0 & 0xC000000000000001) != 0)
    {
      sub_67D20();
    }

    else
    {
      sub_148A3C();
      if (!v4)
      {
        __break(1u);
        return;
      }

      sub_148A7C();
    }

    sub_169D54();
    sub_148900();

    sub_169B64();
    sub_67C60();

    sub_1489F4();

    if (v5)
    {
      sub_169B54();
      sub_67C60();
    }

    else
    {
    }
  }
}

void sub_143400()
{
  v1 = sub_169D04();
  v2 = sub_148810();
  sub_13F4E0(v2, v3, v1);
  sub_148900();

  if (v0)
  {
    if (sub_11A904(v0))
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        goto LABEL_59;
      }

      sub_148A3C();
      if (v4)
      {
        sub_148A7C();
        while (1)
        {

          v5 = sub_169D54();

          if (!v5)
          {
            break;
          }

          sub_169B64();

          sub_169A94();

          if (!v53)
          {

            return;
          }

          sub_1696F4();

          v6 = sub_169DE4();

          v7 = *(v6 + 16);
          if (!v7)
          {

            v8 = &_swiftEmptyArrayStorage;
LABEL_34:
            v31 = v8[2];
            if (v31)
            {
              v32 = v8 + 5;
              v33 = &_swiftEmptyArrayStorage;
              do
              {
                v34 = *(v32 - 1);
                v35 = *v32;

                v36 = sub_1698D4();

                if (v36)
                {
                  v37 = *(v36 + 16);
                  v38 = v33[2];
                  if (__OFADD__(v38, v37))
                  {
                    goto LABEL_55;
                  }

                  if (!swift_isUniquelyReferenced_nonNull_native() || v38 + v37 > v33[3] >> 1)
                  {
                    sub_108204();
                    v33 = v39;
                  }

                  if (*(v36 + 16))
                  {
                    v40 = (v33[3] >> 1) - v33[2];
                    v41 = *(sub_1697C4() - 8);
                    if (v40 < v37)
                    {
                      goto LABEL_57;
                    }

                    v42 = (*(v41 + 80) + 32) & ~*(v41 + 80);
                    v43 = *(v41 + 72);
                    swift_arrayInitWithCopy();

                    if (v37)
                    {
                      v44 = v33[2];
                      v45 = __OFADD__(v44, v37);
                      v46 = v44 + v37;
                      if (v45)
                      {
                        goto LABEL_58;
                      }

                      v33[2] = v46;
                    }
                  }

                  else
                  {

                    if (v37)
                    {
                      goto LABEL_56;
                    }
                  }
                }

                v32 += 2;
                --v31;
              }

              while (v31);
            }

            return;
          }

          v53 = &_swiftEmptyArrayStorage;
          sub_146878(0, v7, 0);
          v8 = &_swiftEmptyArrayStorage;
          v11 = sub_148598(v6);
          v12 = 0;
          v13 = v6 + 64;
          v47 = v6 + 72;
          v48 = v7;
          v49 = v6 + 64;
          if ((v11 & 0x8000000000000000) == 0)
          {
            while (v11 < 1 << *(v6 + 32))
            {
              v14 = v11 >> 6;
              if ((*(v13 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
              {
                goto LABEL_50;
              }

              if (*(v6 + 36) != v9)
              {
                goto LABEL_51;
              }

              v50 = v10;
              v51 = v12;
              v52 = v9;
              v15 = (*(v6 + 48) + 16 * v11);
              v16 = *v15;
              v17 = v15[1];
              v53 = v8;
              v18 = v6;
              v20 = v8[2];
              v19 = v8[3];

              if (v20 >= v19 >> 1)
              {
                sub_146878(v19 > 1, v20 + 1, 1);
              }

              v8[2] = v20 + 1;
              v21 = &v8[2 * v20];
              *(v21 + 4) = v16;
              *(v21 + 5) = v17;
              v22 = 1 << *(v18 + 32);
              if (v11 >= v22)
              {
                goto LABEL_52;
              }

              v6 = v18;
              v13 = v49;
              v23 = *(v49 + 8 * v14);
              if ((v23 & (1 << v11)) == 0)
              {
                goto LABEL_53;
              }

              if (*(v6 + 36) != v52)
              {
                goto LABEL_54;
              }

              v24 = v23 & (-2 << (v11 & 0x3F));
              if (v24)
              {
                v22 = __clz(__rbit64(v24)) | v11 & 0x7FFFFFFFFFFFFFC0;
              }

              else
              {
                v25 = v8;
                v26 = v14 << 6;
                v27 = v14 + 1;
                v28 = (v47 + 8 * v14);
                while (v27 < (v22 + 63) >> 6)
                {
                  v30 = *v28++;
                  v29 = v30;
                  v26 += 64;
                  ++v27;
                  if (v30)
                  {
                    sub_93A60(v11, v52, v50 & 1);
                    v22 = __clz(__rbit64(v29)) + v26;
                    goto LABEL_25;
                  }
                }

                sub_93A60(v11, v52, v50 & 1);
LABEL_25:
                v8 = v25;
              }

              v12 = v51 + 1;
              if (v51 + 1 == v48)
              {

                goto LABEL_34;
              }

              v10 = 0;
              v9 = *(v6 + 36);
              v11 = v22;
              if (v22 < 0)
              {
                break;
              }
            }
          }

          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          sub_67D20();
        }
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

void sub_1438A4()
{
  v1 = sub_169D04();
  v2 = sub_148840();
  sub_13F4E0(v2, v3, v1);
  sub_148900();

  if (v0)
  {
    if (!sub_11A904(v0))
    {

      return;
    }

    if ((v0 & 0xC000000000000001) != 0)
    {
      sub_67D20();
    }

    else
    {
      sub_148A3C();
      if (!v4)
      {
        __break(1u);
        return;
      }

      sub_148A7C();
    }

    sub_169D54();
    sub_148900();

    sub_169A44();
    sub_67C60();

    sub_1489F4();
    if (v10)
    {
      sub_169A34();
      v6 = v5;

      if ((v6 & 1) == 0)
      {

        sub_16AF04();
        goto LABEL_16;
      }
    }

    sub_169A24();
    sub_148B24();
    if (v10)
    {
      v7 = sub_169A14();
      v9 = v8;

      if (v9)
      {

        objc_allocWithZone(NSDecimalNumber);
        sub_146378(v7, v9);
LABEL_16:
        sub_67C60();

        return;
      }
    }

    sub_169C14();
    sub_148B24();

    if (v10)
    {

      if ((sub_13E96C(-3.4028e38, 3.4028e38, 0.1, 0.3) & 0x100000000) == 0)
      {
        sub_16A8F4();
        goto LABEL_16;
      }
    }
  }
}

void sub_143A60()
{
  v0 = sub_5758(&qword_1EEBB0, &unk_17A3F0);
  sub_D414(v0);
  v2 = *(v1 + 64);
  sub_CA380();
  __chkstk_darwin(v3);
  v5 = v29 - v4;
  v6 = sub_1699D4();
  v7 = sub_9F48(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  sub_A138();
  v14 = v13 - v12;
  v15 = sub_169D04();
  v16 = sub_148840();
  v18 = sub_13F4E0(v16, v17, v15);

  if (v18)
  {
    if (!sub_11A904(v18))
    {

      return;
    }

    if ((v18 & 0xC000000000000001) != 0)
    {
      sub_148984();
    }

    else
    {
      sub_1488BC();
      if (!v19)
      {
        __break(1u);
        return;
      }

      v20 = *(v18 + 32);
    }

    v21 = sub_169D54();

    if (v21)
    {
      sub_1699E4();

      sub_1489F4();

      if (v29[1])
      {
        sub_1699B4();

        sub_148874(v5, 1, v6);
        if (!v22)
        {
          v26 = *(v9 + 32);
          v27 = sub_148A18();
          v28(v27);
          sub_1699C4();

          (*(v9 + 8))(v14, v6);
          return;
        }
      }

      else
      {

        sub_3CFE4();
        sub_5370(v23, v24, v25, v6);
      }

      sub_109A0(v5, &qword_1EEBB0, &unk_17A3F0);
    }
  }
}

void sub_143CC0()
{
  v1 = sub_169D04();
  v2 = sub_148840();
  sub_13F4E0(v2, v3, v1);
  sub_148900();

  if (!v0)
  {
    return;
  }

  if (!sub_11A904(v0))
  {
LABEL_15:

    return;
  }

  if ((v0 & 0xC000000000000001) != 0)
  {
    sub_67D20();
  }

  else
  {
    sub_148A3C();
    if (!v4)
    {
      __break(1u);
      goto LABEL_34;
    }

    sub_148A7C();
  }

  sub_169D54();
  sub_148900();

  sub_169C14();

  sub_169A94();
  if (!v17)
  {
    goto LABEL_14;
  }

  v5 = sub_169BF4();

  if (!v5)
  {
    goto LABEL_14;
  }

  sub_1696F4();

  v6 = sub_169E04();
  v8 = v7;

  if (v6 == 0x445F6E6F6D6D6F63 && v8 == 0xEE006C616D696365)
  {
  }

  else
  {
    sub_148A0C();
    v10 = sub_16AE54();

    if ((v10 & 1) == 0)
    {

LABEL_14:

      return;
    }
  }

  sub_169A94();

  v11 = sub_169C04();

  if (!v11)
  {

LABEL_29:

    return;
  }

  sub_1696F4();

  v12 = sub_169DE4();

  v13 = sub_13F4E0(0x5672656765746E69, 0xEC00000065756C61, v12);

  if (!v13)
  {

    goto LABEL_29;
  }

  if (!sub_11A904(v13))
  {

    goto LABEL_15;
  }

  if ((v13 & 0xC000000000000001) != 0)
  {
LABEL_34:
    sub_148984();
    goto LABEL_25;
  }

  sub_1488BC();
  if (v14)
  {
    v15 = *(v13 + 32);

LABEL_25:

    sub_169D44();
    if ((v16 & 1) == 0)
    {
      sub_16AF04();
      sub_67C60();
    }

    goto LABEL_29;
  }

  __break(1u);
}

void sub_143FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_CA350();
  a19 = v20;
  a20 = v21;
  v22 = sub_169724();
  v23 = sub_9F48(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  __chkstk_darwin(v23);
  sub_A138();
  v30 = v29 - v28;
  v31 = sub_1697C4();
  v32 = sub_9F48(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  __chkstk_darwin(v32);
  sub_A138();
  v39 = v38 - v37;
  sub_142688();
  if (!v40)
  {
    goto LABEL_101;
  }

  v41 = v40;
  v42 = *(v40 + 16);
  if (!v42)
  {
LABEL_98:

    goto LABEL_101;
  }

  v43 = 0;
  v44 = *(v34 + 80);
  sub_10BDEC();
  v100 = v41 + v45;
  sub_D434();
  v102 = v46;
  sub_D434();
  sub_D434();
  sub_D434();
  sub_D434();
  sub_D434();
  v101 = v22;
  v103 = (v25 + 8);
  v99 = (v34 + 8);
  v97 = v31;
  v98 = v25;
  v96 = v41;
  v95 = v39;
  v93 = v34;
  v92 = v42;
  while (1)
  {
    if (v43 >= *(v41 + 16))
    {
      goto LABEL_103;
    }

    (*(v34 + 16))(v39, v100 + *(v34 + 72) * v43, v31);
    v104 = *(sub_169764() + 16);
    if (v104)
    {
      break;
    }

LABEL_97:
    ++v43;
    (*v99)(v39, v31);
    if (v43 == v42)
    {
      goto LABEL_98;
    }
  }

  v94 = v43;
  v47 = 0;
  v48 = *(v25 + 80);
  sub_10BDEC();
  v105 = v49 + v50;
  v106 = v49;
  v51 = 0xD000000000000011;
  v52 = v102;
  v53 = v103;
  while (1)
  {
    if (v47 >= *(v49 + 16))
    {
      __break(1u);
LABEL_103:
      __break(1u);
      JUMPOUT(0x144A64);
    }

    (*(v25 + 16))(v30, v105 + *(v25 + 72) * v47, v22);
    if (sub_169714() == v51 + 6 && v52 == v54)
    {
    }

    else
    {
      v56 = sub_16AE54();

      if ((v56 & 1) == 0)
      {
        goto LABEL_94;
      }
    }

    sub_169704();
    if (v57)
    {
      break;
    }

LABEL_94:
    ++v47;
    v89 = *v53;
    v90 = sub_CA57C();
    v91(v90);
    v49 = v106;
    if (v47 == v104)
    {

      v31 = v97;
      v41 = v96;
      v39 = v95;
      v34 = v93;
      v42 = v92;
      v43 = v94;
      goto LABEL_97;
    }
  }

  v58 = sub_82120();
  v59 = v58;
  v60 = v58;
  v61 = sub_10934C(&off_1D1120);
  v53 = v61;
  if (!v61[2])
  {
LABEL_93:

    v22 = v101;
    v25 = v98;
    v51 = 0xD000000000000011;
    v52 = v102;
    v53 = v103;
    goto LABEL_94;
  }

  v62 = v61[5];
  sub_16AF14();
  sub_82168(v60);
  sub_16A6F4();

  v63 = sub_16AF54();
  v22 = (v53 + 7);
  v64 = ~(-1 << *(v53 + 32));
  while (2)
  {
    v25 = v63 & v64;
    if (((*(v22 + (((v63 & v64) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v63 & v64)) & 1) == 0)
    {
      goto LABEL_93;
    }

    v65 = 0xE400000000000000;
    v66 = 1935762529;
    switch(*(v53[6] + v25))
    {
      case 1:
        v66 = 0x7563726943726961;
        v65 = 0xEE006E6F6974616CLL;
        break;
      case 2:
        v66 = 0xD000000000000011;
        v72 = &a12;
        goto LABEL_40;
      case 3:
        v65 = 0xE700000000000000;
        v66 = 0x79726574746162;
        break;
      case 4:
        v66 = 0x6F43657369757263;
        v69 = 0x6C6F72746ELL;
        goto LABEL_48;
      case 5:
        v66 = 0x6574736F72666564;
        v65 = 0xE900000000000072;
        break;
      case 6:
        sub_10C0D0();
        v66 = v74 + 2;
        v72 = &a13;
        goto LABEL_40;
      case 7:
        v65 = 0xE800000000000000;
        v66 = 0x64656570536E6166;
        break;
      case 8:
        v66 = 1818588518;
        break;
      case 9:
        sub_10C0D0();
        v66 = v71 + 2;
        v72 = &a14;
        goto LABEL_40;
      case 0xA:
        v65 = 0xE800000000000000;
        v70 = 1633906540;
        goto LABEL_43;
      case 0xB:
        v66 = 0x616E65746E69616DLL;
        v65 = 0xEB0000000065636ELL;
        break;
      case 0xC:
        v65 = 0xE800000000000000;
        v70 = 1769172848;
LABEL_43:
        v66 = v70 | 0x6E6F697400000000;
        break;
      case 0xD:
        v66 = 0xD000000000000011;
        v72 = &a15;
        goto LABEL_40;
      case 0xE:
        sub_10BE84();
        v65 = v68 + 1011;
        v66 = 0x7373614D74616573;
        break;
      case 0xF:
        v66 = 0x6E6F7268636E7973;
        v65 = 0xEF6E6F6974617A69;
        break;
      case 0x10:
        v66 = 0x6572705F65726974;
        v67 = 1920299891;
        goto LABEL_47;
      case 0x11:
        v65 = 0xE700000000000000;
        v66 = 0x6E776F6E6B6E75;
        break;
      case 0x12:
        v66 = 0x656C6553746E6576;
        v75 = 1919906915;
        goto LABEL_50;
      case 0x13:
        v66 = 0x566C6172656E6567;
        v67 = 1836412015;
LABEL_47:
        v69 = v67 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
LABEL_48:
        v65 = v69 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
        break;
      case 0x14:
        v66 = 0x756C6F566E69616DLL;
        v65 = 0xEA0000000000656DLL;
        break;
      case 0x15:
        sub_10C0D0();
        v66 = v73 - 1;
        v72 = &a16;
LABEL_40:
        v65 = *(v72 - 32);
        break;
      case 0x16:
        sub_10BE84();
        v65 = v76 + 2567;
        v66 = 0x6C6F56656E6F6870;
        break;
      case 0x17:
        v66 = 0x6F567265676E6972;
        v75 = 1701672300;
LABEL_50:
        v65 = v75 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        break;
      case 0x18:
        v65 = 0xE500000000000000;
        v66 = 0x6563696F76;
        break;
      case 0x19:
        v65 = 0xEA00000000006E6FLL;
        v66 = 0x697461676976616ELL;
        break;
      case 0x1A:
        v66 = 1819042147;
        break;
      case 0x1B:
        v65 = 0xE600000000000000;
        v66 = 0x7265676E6972;
        break;
      case 0x1C:
        v66 = 1769105779;
        break;
      default:
        break;
    }

    v52 = 0xE400000000000000;
    v77 = 1935762529;
    switch(v59)
    {
      case 0:
        goto LABEL_87;
      case 1:
        v77 = 0x7563726943726961;
        v52 = 0xEE006E6F6974616CLL;
        goto LABEL_87;
      case 2:
        v77 = 0xD000000000000011;
        v83 = &a12;
        goto LABEL_74;
      case 3:
        v52 = 0xE700000000000000;
        v77 = 0x79726574746162;
        goto LABEL_87;
      case 4:
        v77 = 0x6F43657369757263;
        v80 = 0x6C6F72746ELL;
        goto LABEL_82;
      case 5:
        v77 = 0x6574736F72666564;
        v52 = 0xE900000000000072;
        goto LABEL_87;
      case 6:
        sub_10C0D0();
        v77 = v85 + 2;
        v83 = &a13;
        goto LABEL_74;
      case 7:
        v52 = 0xE800000000000000;
        v77 = 0x64656570536E6166;
        goto LABEL_87;
      case 8:
        v77 = 1818588518;
        goto LABEL_87;
      case 9:
        sub_10C0D0();
        v77 = v82 + 2;
        v83 = &a14;
        goto LABEL_74;
      case 10:
        v52 = 0xE800000000000000;
        v81 = 1633906540;
        goto LABEL_77;
      case 11:
        v77 = 0x616E65746E69616DLL;
        v52 = 0xEB0000000065636ELL;
        goto LABEL_87;
      case 12:
        v52 = 0xE800000000000000;
        v81 = 1769172848;
LABEL_77:
        v77 = v81 | 0x6E6F697400000000;
        goto LABEL_87;
      case 13:
        v77 = 0xD000000000000011;
        v83 = &a15;
        goto LABEL_74;
      case 14:
        sub_10BE84();
        v52 = v79 + 1011;
        v77 = 0x7373614D74616573;
        goto LABEL_87;
      case 15:
        v77 = 0x6E6F7268636E7973;
        v52 = 0xEF6E6F6974617A69;
        goto LABEL_87;
      case 16:
        v77 = 0x6572705F65726974;
        v78 = 1920299891;
        goto LABEL_81;
      case 17:
        v52 = 0xE700000000000000;
        v77 = 0x6E776F6E6B6E75;
        goto LABEL_87;
      case 18:
        v77 = 0x656C6553746E6576;
        v86 = 1919906915;
        goto LABEL_84;
      case 19:
        v77 = 0x566C6172656E6567;
        v78 = 1836412015;
LABEL_81:
        v80 = v78 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
LABEL_82:
        v52 = v80 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
        goto LABEL_87;
      case 20:
        v77 = 0x756C6F566E69616DLL;
        v52 = 0xEA0000000000656DLL;
        goto LABEL_87;
      case 21:
        sub_10C0D0();
        v77 = v84 - 1;
        v83 = &a16;
LABEL_74:
        v52 = *(v83 - 32);
        goto LABEL_87;
      case 22:
        sub_10BE84();
        v52 = v87 + 2567;
        v77 = 0x6C6F56656E6F6870;
        goto LABEL_87;
      case 23:
        v77 = 0x6F567265676E6972;
        v86 = 1701672300;
LABEL_84:
        v52 = v86 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        goto LABEL_87;
      case 24:
        v52 = 0xE500000000000000;
        v77 = 0x6563696F76;
        goto LABEL_87;
      case 25:
        v52 = 0xEA00000000006E6FLL;
        v77 = 0x697461676976616ELL;
        goto LABEL_87;
      case 26:
        v77 = 1819042147;
        goto LABEL_87;
      case 27:
        v52 = 0xE600000000000000;
        v77 = 0x7265676E6972;
        goto LABEL_87;
      case 28:
        v77 = 1769105779;
LABEL_87:
        if (v66 != v77 || v65 != v52)
        {
          v51 = sub_16AE54();

          v63 = v25 + 1;
          if (v51)
          {
            goto LABEL_100;
          }

          continue;
        }

LABEL_100:

        (*v103)(v30, v101);
        (*v99)(v95, v97);

LABEL_101:
        sub_CA368();
        return;
      default:
        goto LABEL_94;
    }
  }
}

void sub_144BF8()
{
  sub_CA350();
  v56 = v2;
  v3 = sub_1699D4();
  v4 = sub_9F48(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_A138();
  v11 = v10 - v9;
  v12 = sub_5758(&qword_1EEBB8, &qword_17A428);
  sub_10AFC(v12);
  v14 = *(v13 + 64);
  sub_CA380();
  __chkstk_darwin(v15);
  v17 = &v54 - v16;
  v18 = sub_5758(&qword_1EEBB0, &unk_17A3F0);
  v19 = sub_D414(v18);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  sub_A128();
  v24 = v22 - v23;
  __chkstk_darwin(v25);
  sub_148AC4();
  __chkstk_darwin(v26);
  sub_1489CC();
  v27 = sub_169D04();
  v28 = sub_148840();
  v30 = sub_13F4E0(v28, v29, v27);

  if (!v30)
  {
    goto LABEL_19;
  }

  if (!sub_11A904(v30))
  {

    goto LABEL_19;
  }

  v55 = v6;
  if ((v30 & 0xC000000000000001) != 0)
  {
    sub_148984();
LABEL_6:

    v33 = sub_169D54();

    if (v33)
    {
      sub_1699E4();

      sub_1489F4();

      if (v57)
      {
        v54 = v57;
        sub_1699B4();
        (*(v55 + 104))(v1, *v56, v3);
        sub_148950();
        sub_5370(v34, v35, v36, v3);
        v37 = *(v12 + 48);
        sub_D4DC4(v0, v17, &qword_1EEBB0, &unk_17A3F0);
        sub_D4DC4(v1, &v17[v37], &qword_1EEBB0, &unk_17A3F0);
        sub_1487F0(v17);
        if (!v42)
        {
          sub_D4DC4(v17, v24, &qword_1EEBB0, &unk_17A3F0);
          sub_1487F0(&v17[v37]);
          if (!v42)
          {
            v50 = v55;
            (*(v55 + 32))(v11, &v17[v37], v3);
            sub_1487A4(&qword_1EEBC0, &type metadata accessor for UsoEntity_common_Number.DefinedValues);
            sub_148B44();

            v51 = *(v50 + 8);
            v52 = sub_148AD8();
            v51(v52);
            sub_109A0(v1, &qword_1EEBB0, &unk_17A3F0);
            sub_109A0(v0, &qword_1EEBB0, &unk_17A3F0);
            v53 = sub_148A18();
            v51(v53);
            sub_109A0(v17, &qword_1EEBB0, &unk_17A3F0);
            goto LABEL_19;
          }

          v43 = sub_148A0C();
          sub_109A0(v43, v44, &unk_17A3F0);
          v45 = sub_14895C();
          sub_109A0(v45, v46, &unk_17A3F0);
          v47 = *(v55 + 8);
          v48 = sub_148A18();
          v49(v48);
LABEL_18:
          sub_109A0(v17, &qword_1EEBB8, &qword_17A428);
          goto LABEL_19;
        }

        v38 = sub_148A0C();
        sub_109A0(v38, v39, &unk_17A3F0);
        v40 = sub_14895C();
        sub_109A0(v40, v41, &unk_17A3F0);
        sub_1487F0(&v17[v37]);
        if (!v42)
        {
          goto LABEL_18;
        }

        sub_109A0(v17, &qword_1EEBB0, &unk_17A3F0);
      }

      else
      {
      }
    }

LABEL_19:
    sub_CA368();
    return;
  }

  sub_1488BC();
  if (v31)
  {
    v32 = *(v30 + 32);

    goto LABEL_6;
  }

  __break(1u);
}

void sub_145070()
{
  sub_5758(&qword_1E5F70, &unk_16F3F0);
  inited = swift_initStackObject();
  v1 = 0;
  v2 = sub_1488C8(inited, xmmword_16D3A0);
  v2[2].n128_u64[1] = v3;
  v4 = &v2[2].n128_i8[8];
  sub_148918(v2);
  v5 = &_swiftEmptyArrayStorage;
  v58[0] = &_swiftEmptyArrayStorage;
LABEL_2:
  v6 = &v4[16 * v1++];
  while (v1 != 3)
  {
    v8 = *(v6 - 1);
    v7 = *v6;

    v9 = sub_169D04();
    if (!*(v9 + 16) || (v10 = sub_146404(v8, v7), (v11 & 1) == 0))
    {
LABEL_13:

      goto LABEL_14;
    }

    v12 = *(*(v9 + 56) + 8 * v10);

    if (v12 >> 62)
    {
      if (!sub_148A48())
      {
        goto LABEL_13;
      }
    }

    else if (!*(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_13;
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
      sub_148984();
    }

    else
    {
      sub_1488BC();
      if (!v13)
      {
        goto LABEL_87;
      }

      sub_148B5C();
    }

    v14 = sub_169D54();

    if (v14)
    {
      sub_16A7B4();
      v15 = *(&dword_18 + (v58[0] & 0xFFFFFFFFFFFFFF8));
      if (*(&dword_10 + (v58[0] & 0xFFFFFFFFFFFFFF8)) >= v15 >> 1)
      {
        sub_148A30(v15);
        sub_16A7F4();
      }

      sub_16A814();
      v5 = v58[0];
      goto LABEL_2;
    }

LABEL_14:
    ++v1;
    v6 += 2;
  }

  swift_setDeallocating();
  sub_EFFB0();
  v58[0] = &_swiftEmptyArrayStorage;
  v16 = sub_11A904(v5);
  for (i = 0; ; ++i)
  {
    if (v16 == i)
    {

      v23 = v58[0];
      v24 = sub_11A904(v58[0]);
      v25 = 0;
      v55 = v58[0] & 0xC000000000000001;
      v26 = &_swiftEmptyArrayStorage;
      v54 = v58[0] + 32;
      v51 = v24;
      v52 = v58[0];
      while (1)
      {
        if (v25 == v24)
        {

          return;
        }

        if (v55)
        {
          v27 = sub_16AD04();
        }

        else
        {
          if (v25 >= *(v23 + 16))
          {
            goto LABEL_80;
          }

          v27 = *(v54 + 8 * v25);
        }

        v28 = __OFADD__(v25++, 1);
        if (v28)
        {
          goto LABEL_79;
        }

        sub_145660(v27);
        v30 = v29;

        if (v30 >> 62)
        {
          v31 = sub_16ADC4();
        }

        else
        {
          v31 = *(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8));
        }

        v32 = v26 >> 62;
        if (v26 >> 62)
        {
          v33 = sub_16ADC4();
        }

        else
        {
          v33 = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8));
        }

        v34 = v33 + v31;
        if (__OFADD__(v33, v31))
        {
          goto LABEL_81;
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          break;
        }

        if (v32)
        {
          goto LABEL_55;
        }

        v35 = v26 & 0xFFFFFFFFFFFFFF8;
        if (v34 > *(&dword_18 + (v26 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          goto LABEL_54;
        }

LABEL_57:
        v56 = v35;
        v57 = v26;
        v37 = *(v35 + 16);
        v38 = (*(v35 + 24) >> 1) - v37;
        v39 = v35 + 8 * v37;
        if (v30 >> 62)
        {
          v42 = sub_16ADC4();
          if (!v42)
          {
            goto LABEL_71;
          }

          v43 = v42;
          v44 = sub_16ADC4();
          if (v38 < v44)
          {
            goto LABEL_85;
          }

          if (v43 < 1)
          {
            goto LABEL_86;
          }

          v53 = v44;
          sub_37284(&qword_1EEC00, &qword_1EEBF8, &qword_17A458);
          for (j = 0; j != v43; ++j)
          {
            sub_5758(&qword_1EEBF8, &qword_17A458);
            v46 = sub_D1904(v58, j, v30);
            v48 = *v47;

            v46(v58, 0);
            *(v39 + 32 + 8 * j) = v48;
          }

          v24 = v51;
          v23 = v52;
          v41 = v53;
LABEL_67:

          v26 = v57;
          if (v41 < v31)
          {
            goto LABEL_82;
          }

          if (v41 > 0)
          {
            v49 = *(v56 + 16);
            v28 = __OFADD__(v49, v41);
            v50 = v49 + v41;
            if (v28)
            {
              goto LABEL_83;
            }

            *(v56 + 16) = v50;
          }
        }

        else
        {
          v40 = *(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8));
          if (v40)
          {
            if (v38 < v40)
            {
              goto LABEL_84;
            }

            v41 = *(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8));
            sub_169E24();
            swift_arrayInitWithCopy();
            goto LABEL_67;
          }

LABEL_71:

          if (v31 > 0)
          {
            goto LABEL_82;
          }
        }
      }

      if (v32)
      {
LABEL_55:
        sub_16ADC4();
      }

      else
      {
        v35 = v26 & 0xFFFFFFFFFFFFFF8;
LABEL_54:
        v36 = *(v35 + 16);
      }

      v26 = sub_16AD14();
      v35 = v26 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_57;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      sub_148A18();
      sub_16AD04();
    }

    else
    {
      if (i >= *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_78;
      }

      v18 = *(v5 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    if (sub_169E04() == 0xD000000000000011 && 0x800000000017E320 == v19)
    {
    }

    else
    {
      v21 = sub_16AE54();

      if ((v21 & 1) == 0)
      {

        continue;
      }
    }

    sub_16AD34();
    v22 = *(v58[0] + 16);
    sub_16AD64();
    sub_16AD74();
    sub_16AD44();
  }

  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
}

void sub_145660(uint64_t a1)
{
  v2 = sub_169DE4();
  v3 = sub_13F4E0(0xD000000000000016, 0x8000000000191290, v2);

  if (!v3)
  {
    goto LABEL_8;
  }

  if (!sub_11A904(v3))
  {

LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    sub_148984();
    goto LABEL_6;
  }

  sub_1488BC();
  if (v4)
  {
    v5 = *(v3 + 32);

LABEL_6:

    v6 = sub_169D54();

LABEL_9:
    sub_145784(a1);
    v7 = sub_145784(v6);
    sub_13F7FC(v7, sub_11B48C, sub_147C28);

    return;
  }

  __break(1u);
}

void *sub_145784(uint64_t a1)
{
  if (!a1)
  {
    return &_swiftEmptyArrayStorage;
  }

  v1 = sub_169DE4();
  v2 = sub_13F4E0(0x73656D616ELL, 0xE500000000000000, v1);

  if (!v2)
  {

    return &_swiftEmptyArrayStorage;
  }

  result = sub_11A904(v2);
  v4 = result;
  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {

      return &_swiftEmptyArrayStorage;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      result = sub_16AD04();
    }

    else
    {
      if (v5 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_18;
      }

      v6 = *(v2 + 8 * v5 + 32);
    }

    v7 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    v8 = sub_169D54();

    ++v5;
    if (v8)
    {
      sub_16A7B4();
      if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_16A7F4();
      }

      result = sub_16A814();
      v5 = v7;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

void sub_145904(void (*a1)(void))
{
  v2 = sub_5758(&qword_1ED140, &qword_178228);
  sub_D414(v2);
  v4 = *(v3 + 64);
  sub_CA380();
  __chkstk_darwin(v5);
  v7 = &v21 - v6;
  v8 = sub_169D04();
  v9 = sub_13F4E0(0x6D6572757361656DLL, 0xEB00000000746E65, v8);

  if (!v9)
  {
    goto LABEL_22;
  }

  if (!sub_11A904(v9))
  {
    goto LABEL_21;
  }

  if ((v9 & 0xC000000000000001) != 0)
  {
    sub_148984();
  }

  else
  {
    sub_1488BC();
    if (!v10)
    {
      __break(1u);
      goto LABEL_37;
    }

    v11 = *(v9 + 32);
  }

  v12 = sub_169D54();

  if (!v12)
  {
    goto LABEL_22;
  }

  sub_169B44();

  sub_1489F4();

  if (!v22)
  {
    goto LABEL_34;
  }

  v13 = sub_169B34();
  v14 = v13;
  if (!v13)
  {

    goto LABEL_18;
  }

  if (!sub_11A904(v13))
  {

LABEL_21:

    goto LABEL_22;
  }

  if ((v14 & 0xC000000000000001) != 0)
  {
LABEL_37:
    sub_148984();
LABEL_13:

    sub_1698B4();

    if (v22)
    {
      if (sub_169C74())
      {
        sub_1696F4();
      }

      a1(0);
      sub_169A94();

      if (!v22)
      {

        goto LABEL_22;
      }

      if (sub_169C64())
      {
        sub_148854();
        v16 = sub_1698D4();

        if (v16)
        {
          sub_10152C(0x6D6572757361656DLL, 0xEF74696E55746E65, v16, v7);

          v17 = sub_169724();
          sub_148874(v7, 1, v17);
          if (!v18)
          {
            sub_169704();
            v20 = v19;

            (*(*(v17 - 8) + 8))(v7, v17);
            if (v20)
            {
              goto LABEL_22;
            }

            goto LABEL_34;
          }

          sub_109A0(v7, &qword_1ED140, &qword_178228);
LABEL_22:
          sub_14895C();
          return;
        }

LABEL_18:

        goto LABEL_22;
      }
    }

    else
    {
    }

LABEL_34:

    goto LABEL_22;
  }

  sub_1488BC();
  if (v15)
  {
    sub_148B5C();
    goto LABEL_13;
  }

  __break(1u);
}

uint64_t sub_145CE8()
{
  v0 = sub_169D04();
  v1 = sub_13F4E0(0x7265626D756ELL, 0xE600000000000000, v0);

  if (v1)
  {
    result = sub_11A904(v1);
    if (result)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        sub_16AD04();
      }

      else
      {
        if (!*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          return result;
        }

        v3 = *(v1 + 32);
      }

      v4 = sub_169D54();

      if (v4)
      {
        sub_169A44();

        sub_169A94();

        return v5;
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_145DE0()
{
  v0 = sub_5758(&qword_1ED140, &qword_178228);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v17 - v2;
  v4 = sub_169D04();
  v5 = sub_13F4E0(0x6D6572757361656DLL, 0xEB00000000746E65, v4);

  if (!v5)
  {
    return 0;
  }

  if (!sub_11A904(v5))
  {
    goto LABEL_21;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
    sub_16AD04();
  }

  else
  {
    if (!*(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_39;
    }

    v6 = *(v5 + 32);
  }

  v7 = sub_169D54();

  if (!v7)
  {
    return 0;
  }

  sub_169B44();

  sub_169A94();

  if (!v18)
  {
LABEL_16:

    return 0;
  }

  v8 = sub_169B34();
  v9 = v8;
  if (!v8)
  {

LABEL_18:

    return 0;
  }

  result = sub_11A904(v8);
  if (!result)
  {

LABEL_21:

    return 0;
  }

  if ((v9 & 0xC000000000000001) != 0)
  {
LABEL_39:
    sub_16AD04();
LABEL_13:

    sub_1698B4();

    if (v18)
    {
      if (sub_169C74())
      {
        sub_1696F4();
      }

      sub_169A44();
      sub_169A94();

      v12 = v18;
      if (!v18)
      {

        return v12;
      }

      if (sub_169C64())
      {
        sub_1696F4();
      }

      sub_169BE4();
      sub_169A94();

      if (v18)
      {
        v13 = sub_1698D4();
        if (v13)
        {
          sub_10152C(0x74617265706D6574, 0xEF74696E55657275, v13, v3);

          v14 = sub_169724();
          if (sub_9E2C(v3, 1, v14) != 1)
          {
            sub_169704();
            v16 = v15;

            (*(*(v14 - 8) + 8))(v3, v14);
            if (!v16)
            {

              return 0;
            }

            return v12;
          }

          sub_109A0(v3, &qword_1ED140, &qword_178228);
          return 0;
        }

        goto LABEL_18;
      }
    }

    else
    {
    }

    goto LABEL_16;
  }

  if (*(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)))
  {
    v11 = *(v9 + 32);

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_146274()
{
  v0 = sub_169D04();
  v1 = sub_13F4E0(0x69746E4572657375, 0xEC00000073656974, v0);

  if (v1)
  {
    result = sub_11A904(v1);
    if (result)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        sub_16AD04();
      }

      else
      {
        if (!*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          return result;
        }

        v3 = *(v1 + 32);
      }

      v4 = sub_169D54();

      if (v4)
      {
        sub_169664();

        sub_169A94();

        return v5;
      }
    }

    else
    {
    }
  }

  return 0;
}

id sub_146378(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_16A644();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithString:v3];

  return v4;
}

unint64_t sub_1463E0(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_146404(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_16AF14();
  sub_16A6F4();
  v6 = sub_16AF54();

  return sub_146570(a1, a2, v6);
}

unint64_t sub_14647C(Swift::UInt64 a1)
{
  v3 = *(v1 + 40);
  sub_16AF14();
  sub_16AF44(a1);
  v4 = sub_16AF54();

  return sub_146624(a1, v4);
}

unint64_t sub_1464E8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_16AAC4(*(v2 + 40));

  return sub_146684(a1, v4);
}

unint64_t sub_14652C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_16AC64(*(v2 + 40));

  return sub_14675C(a1, v4);
}

unint64_t sub_146570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_16AE54() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_146624(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_146684(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_16484(0, &qword_1E6310, NSNumber_ptr);
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_16AAD4();

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_14675C(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_F7038(*(v2 + 48) + 40 * i, v7);
    v5 = sub_16AC74();
    sub_472B0(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

void sub_146820()
{
  v1 = *v0;
  sub_147860();
  *v0 = v2;
}

void *sub_146898(void *a1, int64_t a2, char a3)
{
  result = sub_146C24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1468B8(char *a1, int64_t a2, char a3)
{
  result = sub_146D3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1468D8(void *a1, int64_t a2, char a3)
{
  result = sub_146E34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1468F8(void *a1, int64_t a2, char a3)
{
  result = sub_146F4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_146918()
{
  v1 = *v0;
  sub_147860();
  *v0 = v2;
}

void *sub_146970(void *a1, int64_t a2, char a3)
{
  result = sub_14713C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_146990(void *a1, int64_t a2, char a3)
{
  result = sub_147254(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1469B0(void *a1, int64_t a2, char a3)
{
  result = sub_14736C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1469D0(void *a1, int64_t a2, char a3)
{
  result = sub_147484(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1469F0(void *a1, int64_t a2, char a3)
{
  result = sub_147748(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_146A10()
{
  v1 = *v0;
  sub_147860();
  *v0 = v2;
}

void sub_146A68()
{
  v1 = *v0;
  sub_147860();
  *v0 = v2;
}

void sub_146AC0()
{
  v1 = *v0;
  sub_147860();
  *v0 = v2;
}

void *sub_146B18(void *a1, int64_t a2, char a3)
{
  result = sub_1479F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_146B38(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v6 = a2;
    goto LABEL_7;
  }

  sub_10BC1C();
  if (v7 == v8)
  {
LABEL_7:
    v9 = *(a4 + 16);
    if (v6 <= v9)
    {
      v10 = *(a4 + 16);
    }

    else
    {
      v10 = v6;
    }

    if (v10)
    {
      sub_5758(&qword_1E5F70, &unk_16F3F0);
      v11 = swift_allocObject();
      v12 = j__malloc_size(v11);
      *(v11 + 2) = v9;
      *(v11 + 3) = 2 * ((v12 - 32) / 16);
      if (a1)
      {
LABEL_12:
        sub_1090E8((a4 + 32), v9, v11 + 32);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v11 = &_swiftEmptyArrayStorage;
      if (a1)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  sub_10C048();
  if (!v7)
  {
    sub_10BBE8();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_146C24(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_5758(&qword_1EEBE8, &qword_17A448);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_10BBBC(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_5758(&qword_1EEBF0, &qword_17A450);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_146D3C(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_5758(&qword_1ED368, &qword_178648);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_109178((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy(v10 + 32, (a4 + 32), 8 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_146E34(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_5758(&qword_1EAFA8, &unk_178270);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_10BBBC(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_5758(&qword_1E6380, &qword_16DAC0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_146F4C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_5758(&qword_1E83E0, &unk_170410);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_10BBBC(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_5758(&qword_1E91C0, &qword_172C40);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_147064(char a1, int64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v6 = a2;
    goto LABEL_7;
  }

  sub_10BC1C();
  if (v7 == v8)
  {
LABEL_7:
    v9 = *(a4 + 16);
    if (v6 <= v9)
    {
      v10 = *(a4 + 16);
    }

    else
    {
      v10 = v6;
    }

    if (v10)
    {
      sub_5758(&qword_1ED198, &qword_178298);
      v11 = swift_allocObject();
      v12 = j__malloc_size(v11);
      *(v11 + 2) = v9;
      *(v11 + 3) = 2 * v12 - 64;
      if (a1)
      {
LABEL_12:
        sub_109198((a4 + 32), v9, v11 + 32);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v11 = _swiftEmptyArrayStorage;
      if (a1)
      {
        goto LABEL_12;
      }
    }

    memcpy(v11 + 32, (a4 + 32), v9);
    goto LABEL_15;
  }

  sub_10C048();
  if (!v7)
  {
    sub_10BBE8();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_14713C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_5758(&qword_1EEC80, &qword_17A4B0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_10BBBC(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_5758(&qword_1EE5E8, &qword_179D98);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_147254(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_5758(&qword_1EEC98, &qword_17A4C0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_10BBBC(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_5758(&qword_1EE5E0, &qword_179D90);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_14736C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_5758(&qword_1EEC60, &qword_17A498);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_10BBBC(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_5758(qword_1EE5F0, &qword_179DA0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_147484(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_5758(&qword_1EECB8, &qword_17A4D0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_10BBBC(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_5758(&qword_1EE5D8, &qword_179D88);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_14759C(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    sub_10BC1C();
    if (v7 != v8)
    {
      sub_10C048();
      if (v7)
      {
LABEL_23:
        __break(1u);
        return;
      }

      sub_10BBE8();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 16);
  if (v6 <= v9)
  {
    v10 = *(a4 + 16);
  }

  else
  {
    v10 = v6;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  sub_5758(&qword_1ED1B0, &qword_1782B8);
  v11 = sub_5758(&qword_1EA370, &qword_1782B0);
  sub_10AEC(v11);
  v13 = *(v12 + 72);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  v17 = j__malloc_size(v16);
  if (!v13)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v17 - v15 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_22;
  }

  v16[2] = v9;
  v16[3] = 2 * ((v17 - v15) / v13);
LABEL_17:
  v19 = *(*(sub_5758(&qword_1EA370, &qword_1782B0) - 8) + 80);
  sub_10BDEC();
  if (a1)
  {
    sub_10928C();
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_147748(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_5758(&qword_1EEC48, &qword_17A480);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_10BBBC(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_5758(&qword_1EEC50, &qword_17A488);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_147860()
{
  sub_CA350();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (v11)
  {
    sub_10BC1C();
    if (v13 != v14)
    {
      sub_10C048();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_10BBE8();
    }
  }

  else
  {
    v12 = v0;
  }

  v15 = *(v8 + 16);
  if (v12 <= v15)
  {
    v16 = *(v8 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v22 = &_swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  sub_5758(v1, v2);
  v17 = v6(0);
  sub_10AEC(v17);
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v23 = j__malloc_size(v22);
  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 - v21 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_23;
  }

  v22[2] = v15;
  v22[3] = 2 * ((v23 - v21) / v19);
LABEL_18:
  v25 = *(*(v6(0) - 8) + 80);
  sub_10BDEC();
  if (v10)
  {
    v4(v8 + v26, v15, v22 + v26);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  sub_CA368();
}

void *sub_1479F8(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_5758(&qword_1EEC58, &qword_17A490);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      v10[2] = v8;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_10BBBC(a4 + 32, v8, v10 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_5758(&qword_1EE5D0, &unk_179D78);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_147B10(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_16ADC4();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_16AD14();
  *v1 = result;
  return result;
}

uint64_t sub_147BB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_147C28(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_16ADC4();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_11B48C(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_169E24();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_37284(&qword_1EEC00, &qword_1EEBF8, &qword_17A458);
        for (i = 0; i != v7; ++i)
        {
          sub_5758(&qword_1EEBF8, &qword_17A458);
          v9 = sub_D1904(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_147DB0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_16ADC4();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_11B48C(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_16484(0, &qword_1EE5B8, CAFVent_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_37284(&qword_1EEC90, &qword_1EEC88, &qword_17A4B8);
        for (i = 0; i != v7; ++i)
        {
          sub_5758(&qword_1EEC88, &qword_17A4B8);
          v9 = sub_D19D8(v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_147F48(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_16ADC4();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_11B48C(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_16484(0, &qword_1EE5B0, CAFFan_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_37284(&qword_1EEC70, &qword_1EEC68, &qword_17A4A0);
        for (i = 0; i != v7; ++i)
        {
          sub_5758(&qword_1EEC68, &qword_17A4A0);
          v9 = sub_D19D8(v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1480E0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_16ADC4();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_11B48C(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_16484(0, &qword_1E83B8, CAFDefrost_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_37284(&qword_1EECC8, &qword_1EECC0, &qword_17A4D8);
        for (i = 0; i != v7; ++i)
        {
          sub_5758(&qword_1EECC0, &qword_17A4D8);
          v9 = sub_D1A30(v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_148278(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_16ADC4();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_11B48C(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_16A1C4();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_37284(&qword_1EEC40, &qword_1E77D0, &unk_179A60);
        for (i = 0; i != v7; ++i)
        {
          sub_5758(&qword_1E77D0, &unk_179A60);
          v9 = sub_D196C(v12, i, a3);
          v11 = *v10;

          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_148400(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_16ADC4();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_11B48C(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_16484(0, &qword_1EECA0, CAFSeatFan_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_37284(&qword_1EECB0, &qword_1EECA8, &qword_17A4C8);
        for (i = 0; i != v7; ++i)
        {
          sub_5758(&qword_1EECA8, &qword_17A4C8);
          v9 = sub_D19D8(v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_148598(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_16AB94();
  v4 = *(a1 + 36);
  return result;
}

void *sub_1485D8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2++ = *(*(a4 + 48) + ((v9 << 9) | (8 * v12)));
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1486C0(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2++ = *(*(a4 + 48) + (v12 | (v9 << 6)));
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1487A4(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 *sub_1488C8(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x69746E4572657375;
  return result;
}

uint64_t sub_148918(uint64_t result)
{
  *(result + 48) = 0x636E657265666572;
  *(result + 56) = 0xE900000000000065;
  return result;
}

uint64_t sub_148968()
{
  v1 = **(v0 - 184);
  result = *(v0 - 152);
  v3 = *(v0 - 280);
  return result;
}

uint64_t sub_148984()
{

  return sub_16AD04();
}

uint64_t sub_14899C()
{
  v3 = *v0;
  result = v1;
  v5 = *(v2 - 112);
  return result;
}

uint64_t sub_1489DC(uint64_t a1)
{

  return sub_109A0(a1, v1, v2);
}

uint64_t sub_1489F4()
{

  return sub_169A94();
}

uint64_t sub_148A48()
{

  return sub_16ADC4();
}

uint64_t sub_148A64(uint64_t a1)
{

  return sub_109A0(a1, v1, v2);
}

uint64_t sub_148A7C()
{
  v2 = *(v0 + 32);
}

uint64_t sub_148A94(uint64_t a1)
{

  return sub_109A0(a1, v2, v1);
}

uint64_t sub_148B24()
{

  return sub_169A94();
}

uint64_t sub_148B44()
{

  return sub_16A634();
}

uint64_t sub_148B5C()
{
  v2 = *(v0 + 32);
}

uint64_t sub_148B74@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_54A30(v1 + 136, &v4);
  if (v5)
  {
    return sub_D124(&v4, a1);
  }

  sub_D188(&v4, &qword_1E6030, &unk_173620);
  sub_1693F4();
  sub_10824(a1, &v4);
  swift_beginAccess();
  sub_14A780(&v4, v1 + 136);
  return swift_endAccess();
}

uint64_t sub_148C28()
{
  v1 = v0;
  v2 = *(v0 + 216);
  if (v2 == 2)
  {
    sub_169EB4();
    sub_169EA4();
    sub_169E94();

    LOBYTE(v2) = sub_169EE4();

    *(v1 + 216) = v2 & 1;
  }

  return v2 & 1;
}

uint64_t sub_148CA0()
{
  v0 = type metadata accessor for FeatureFlagHelper();
  v1 = swift_allocObject();
  v2 = [objc_opt_self() sharedStream];
  v3 = [objc_opt_self() sharedManager];
  sub_1689F4();
  type metadata accessor for CarCommandsLoggingProducer();
  swift_allocObject();
  v4 = sub_D230C(v2, v3, v13);
  sub_E2BF8();
  sub_E28B0(v13);
  v15 = v0;
  v16 = &off_1D9AF0;
  v14 = v1;
  type metadata accessor for CarPlaySessionObserver();
  v5 = swift_allocObject();
  v6 = objc_allocWithZone(CARSessionStatus);
  swift_retain_n();

  *(v5 + 16) = [v6 init];
  sub_14A288(v13, &v12);

  sub_14A90C();
  v10 = sub_14A2E4(v7, v8, v9, v4);

  sub_14A6EC(v13);
  return v10;
}

uint64_t sub_148E28(char *a1)
{
  v2 = v1;
  v123 = sub_5758(&qword_1EEE00, &qword_17A5B8);
  sub_9F48(v123);
  v5 = *(v4 + 64);
  sub_CA380();
  __chkstk_darwin(v6);
  sub_148944();
  v7 = sub_5758(&qword_1EEE08, &qword_17A5C0);
  sub_9F48(v7);
  v9 = *(v8 + 64);
  sub_CA380();
  __chkstk_darwin(v10);
  sub_148944();
  v11 = sub_5758(&qword_1EEE10, &qword_17A5C8);
  sub_9F48(v11);
  v13 = *(v12 + 64);
  sub_CA380();
  __chkstk_darwin(v14);
  sub_148944();
  v125 = sub_5758(&qword_1EEE18, &qword_17A5D0);
  sub_9F48(v125);
  v16 = *(v15 + 64);
  sub_CA380();
  __chkstk_darwin(v17);
  sub_148944();
  v124 = sub_5758(&qword_1EEE20, &unk_17A5D8);
  sub_9F48(v124);
  v19 = *(v18 + 64);
  sub_CA380();
  __chkstk_darwin(v20);
  sub_148944();
  v129 = 0;
  v130 = 0xE000000000000000;
  sub_16ACF4(18);
  v133._countAndFlagsBits = 0xD000000000000010;
  v133._object = 0x8000000000191430;
  sub_16A744(v133);
  sub_1693E4();
  sub_16AD84();
  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v21 = sub_16A584();
  sub_9DA0(v21, qword_1E65C0);
  sub_16A9A4();
  sub_14A844();
  sub_386D8(v22, v23, v24, v25, v26, v27, 44, 0, 0xE000000000000000);

  sub_86E4(a1, &_swiftEmptySetSingleton, &v127);
  if (v128)
  {
    sub_D124(&v127, &v129);
    v28 = sub_D084((v1 + 176), *(v1 + 200));
    sub_148B74(&v127);
    v29 = *v28;
    v30 = sub_DB8D8(&v127);
    sub_D13C(&v127);
    v32 = v131;
    v31 = v132;
    sub_D084(&v129, v131);
    if ((*(v31 + 32))(v30 & 1, v32, v31))
    {
      v122 = v2;
      v33 = v132;
      sub_D084(&v129, v131);
      v34 = *(v33 + 24);
      v35 = sub_67C60();
      v37 = v36(v35, v33);
      sub_14A8E4();
      sub_16ACF4(21);
      v134._countAndFlagsBits = 0xD000000000000013;
      v134._object = 0x80000000001914C0;
      sub_16A744(v134);
      LOBYTE(v126[0]) = v37;
      sub_16AD84();
      v39 = *(&v127 + 1);
      v38 = v127;
      sub_16A9A4();
      sub_14A844();
      sub_386D8(v40, v41, v42, v43, v44, v45, 61, v38, v39);

      if (v37 > 0x18u || ((1 << v37) & 0x127C980) == 0 || (v30 & 1) != 0)
      {
        sub_149E70(a1);
        switch(v37)
        {
          case 0u:
            sub_14A8A0();
            sub_14A874(&v132);
            sub_14A7F0();
            if (v30)
            {
              sub_C6018();
            }

            else
            {
              v46 = sub_C62A8();
            }

            goto LABEL_69;
          case 1u:
            type metadata accessor for SnippetManager();
            v78 = sub_7A710();
            sub_14A830(v78);
            type metadata accessor for SetLockStatusRCHFlowStrategy();
            swift_allocObject();
            v79 = sub_67C60();
            *&v127 = sub_CA6CC(v79);

            sub_CAC9C();
            sub_14A240(&qword_1EAE80, 255, type metadata accessor for SetLockStatusRCHFlowStrategy);
            sub_168CD4();
            v80 = sub_168CC4();
            v81 = sub_14A890();
            v82(v81);
            *&v127 = v80;
            sub_14A934();
            sub_14A90C();
            sub_C98CC(v83, v84, v85);
            v86 = sub_168924();

            goto LABEL_46;
          case 2u:
            type metadata accessor for SnippetManager();
            v87 = sub_7A710();
            sub_14A830(v87);
            type metadata accessor for ActivateSignalRCHFlowStrategy();
            sub_14A918();
            v88 = sub_67C60();
            *&v127 = sub_3D440(v88);

            sub_3D9E8();
            sub_14A240(&qword_1E69F8, 255, type metadata accessor for ActivateSignalRCHFlowStrategy);
            sub_14A8C8();
            v89 = sub_168CC4();
            v90 = sub_14A890();
            v91(v90);
            *&v127 = v89;
            sub_14A934();
            goto LABEL_45;
          case 3u:
            sub_14A8A0();
            sub_14A874(&v132);
            sub_14A7F0();
            if (v30)
            {
              sub_C6548();
            }

            else
            {
              v46 = sub_C687C();
            }

            goto LABEL_69;
          case 4u:
            type metadata accessor for SnippetManager();
            v74 = sub_7A710();
            sub_14A830(v74);
            type metadata accessor for DeactivateSignalRCHFlowStrategy();
            sub_14A918();
            sub_67C60();
            *&v127 = sub_165988();

            sub_165E78();
            sub_14A240(&qword_1EEE40, 255, type metadata accessor for DeactivateSignalRCHFlowStrategy);
            sub_14A8C8();
            v75 = sub_168CC4();
            v76 = sub_14A890();
            v77(v76);
            *&v127 = v75;
            sub_14A934();
LABEL_45:
            sub_14A90C();
            sub_C98CC(v92, v93, v94);
            v86 = sub_168924();

LABEL_46:

            sub_14A8A0();
            v39 = v122;
            goto LABEL_71;
          case 5u:
            sub_10824(v122 + 56, &v127);
            v95 = sub_D084(&v127, v128);
            sub_10824(v95, v126);
            type metadata accessor for SnippetManager();
            v96 = sub_7A710();
            sub_14A830(v96);
            type metadata accessor for SetTrunkStatusRCHFlowStrategy();
            sub_14A918();
            *&v126[0] = sub_AAEDC(v126, v37);

            sub_ABA30();
            sub_14A240(&qword_1EEE58, 255, type metadata accessor for SetTrunkStatusRCHFlowStrategy);
            sub_14A8C8();
            v97 = sub_168CC4();
            v98 = sub_14A890();
            v99(v98);
            *&v126[0] = v97;
            sub_14A934();
            sub_14A90C();
            sub_C98CC(v100, v101, v102);
            v86 = sub_168924();

            v39 = v122;

            goto LABEL_59;
          case 6u:
            sub_14A810();
            sub_14A7F0();
            v73 = sub_C5EC8();
            goto LABEL_58;
          case 7u:
            if ((v30 & 1) == 0)
            {
              goto LABEL_60;
            }

            sub_14A854();
            sub_14A7F0();
            sub_C7794();
            goto LABEL_66;
          case 8u:
            if ((v30 & 1) == 0)
            {
              goto LABEL_60;
            }

            sub_14A854();
            sub_14A7F0();
            sub_C6B18();
            goto LABEL_66;
          case 9u:
            sub_14A8A0();
            if (v30)
            {
              goto LABEL_39;
            }

            sub_10824(v122 + 56, &v127);
            v112 = sub_D084(&v127, v128);
            sub_10824(v112, v126);
            type metadata accessor for SnippetManager();
            v113 = sub_7A710();
            sub_14A830(v113);
            type metadata accessor for SetClimateRCHFlowStrategy();
            swift_allocObject();
            *&v126[0] = sub_118330(v126, v37);

            sub_118D94();
            sub_14A240(&qword_1EEE28, 255, type metadata accessor for SetClimateRCHFlowStrategy);
            sub_14A8C8();
            v114 = sub_168CC4();
            v115 = sub_14A890();
            v116(v115);
            *&v126[0] = v114;
            sub_14A934();
            sub_14A90C();
            sub_C98CC(v117, v118, v119);
            v86 = sub_168924();

            v39 = v122;

            goto LABEL_70;
          case 0xAu:
            sub_14A810();
            sub_14A7F0();
            v73 = sub_C63F8();
            goto LABEL_58;
          case 0xBu:
            sub_14A8A0();
            if (v30)
            {
LABEL_39:
              sub_14A810();
              sub_14A7F0();
              sub_C7A68();
            }

            else
            {
              sub_14A810();
              sub_14A7F0();
              v46 = sub_C9480();
            }

LABEL_69:
            v86 = v46;
LABEL_70:

            sub_D13C(&v127);
            goto LABEL_71;
          case 0xCu:
            if ((v30 & 1) == 0)
            {
              goto LABEL_60;
            }

            sub_14A854();
            sub_14A7F0();
            sub_C74C0();
            goto LABEL_66;
          case 0xDu:
            sub_14A810();
            sub_14A7F0();
            v73 = sub_C69C8();
            goto LABEL_58;
          case 0xEu:
            if ((v30 & 1) == 0)
            {
              goto LABEL_60;
            }

            sub_14A810();
            sub_14A7F0();
            sub_C7D38();
            goto LABEL_58;
          case 0xFu:
            if ((v30 & 1) == 0)
            {
              goto LABEL_60;
            }

            sub_14A810();
            sub_14A7F0();
            sub_C80E4();
            goto LABEL_58;
          case 0x10u:
            if ((v30 & 1) == 0)
            {
              goto LABEL_60;
            }

            sub_14A854();
            sub_14A7F0();
            sub_C6E0C();
            goto LABEL_66;
          case 0x11u:
            if ((v30 & 1) == 0)
            {
              goto LABEL_60;
            }

            sub_14A810();
            sub_14A7F0();
            sub_C83B8();
            goto LABEL_58;
          case 0x12u:
            sub_14A810();
            sub_14A7F0();
            sub_C8610();
            goto LABEL_58;
          case 0x13u:
            if ((v30 & 1) == 0)
            {
              goto LABEL_60;
            }

            sub_14A810();
            sub_14A7F0();
            sub_C8914();
            goto LABEL_58;
          case 0x14u:
            if ((v30 & 1) == 0)
            {
              goto LABEL_60;
            }

            sub_14A810();
            sub_14A7F0();
            sub_C8DC4();
            goto LABEL_58;
          case 0x15u:
            if ((v30 & 1) == 0)
            {
              goto LABEL_60;
            }

            sub_14A810();
            sub_14A7F0();
            sub_C8B6C();
            goto LABEL_58;
          case 0x16u:
            if ((v30 & 1) == 0)
            {
              goto LABEL_60;
            }

            sub_14A810();
            sub_14A7F0();
            sub_C71EC();
            goto LABEL_58;
          case 0x17u:
            if ((v30 & 1) == 0)
            {
              goto LABEL_60;
            }

            sub_14A854();
            sub_14A7F0();
            sub_C6DE8();
LABEL_66:
            sub_168984();

            goto LABEL_72;
          case 0x18u:
            if ((v30 & 1) == 0 || (sub_148C28() & 1) == 0)
            {
              goto LABEL_60;
            }

            sub_14A810();
            sub_14A7F0();
            sub_C901C();
LABEL_58:
            v86 = v73;
LABEL_59:

            sub_D13C(&v127);
            sub_14A8A0();
LABEL_71:
            sub_10824(v39 + 56, &v127);
            sub_14A7F0();
            sub_C94C8(v86);
            sub_168984();

LABEL_72:
            sub_D13C(&v127);
            return sub_D13C(&v129);
          case 0x19u:
            sub_14A810();
            sub_14A7F0();
            v73 = sub_C5E80();
            goto LABEL_58;
          case 0x1Bu:
            sub_14A854();
            sub_14A7F0();
            sub_C9480();
            goto LABEL_66;
          case 0x1Du:
            sub_16A9A4();
            sub_14A8AC();
            sub_14A844();
            sub_386D8(v105, v106, v107, v108, v109, v110, 148, v111, v122);
            sub_14A854();
            sub_14A7F0();
            sub_C9384();
            goto LABEL_66;
          default:
LABEL_60:
            sub_14A8E4();
            sub_16ACF4(36);
            sub_14A8F4();
            v139._countAndFlagsBits = "gin.swift";
            v139._object = (v103 | 0x8000000000000000);
            sub_16A744(v139);
            LOBYTE(v126[0]) = v37;
            sub_16AD84();
            v104 = *(&v127 + 1);
            v64 = v127;
            sub_16A9A4();
            v120 = v104;
            sub_14A844();
            v72 = 151;
            goto LABEL_61;
        }
      }

      sub_14A8E4();
      sub_16ACF4(92);
      sub_14A8F4();
      v137._countAndFlagsBits = "n.swift";
      v137._object = (v63 | 0x8000000000000000);
      sub_16A744(v137);
      LOBYTE(v126[0]) = v37;
      sub_16AD84();
      v138._countAndFlagsBits = "ndFlowForX(parse:)";
      v138._object = 0x8000000000191580;
      sub_16A744(v138);
      v65 = *(&v127 + 1);
      v64 = v127;
      sub_16A9A4();
      v120 = v65;
      sub_14A844();
      v72 = 65;
LABEL_61:
      sub_386D8(v66, v67, v68, v69, v70, v71, v72, v64, v120);
    }

    else
    {
      sub_16A9A4();
      sub_14A8AC();
      sub_14A844();
      sub_386D8(v56, v57, v58, v59, v60, v61, 56, v62, v121);
    }

    sub_168974();
    return sub_D13C(&v129);
  }

  else
  {
    sub_D188(&v127, &qword_1E5F80, &unk_16E7E0);
    v129 = 0;
    v130 = 0xE000000000000000;
    sub_16ACF4(33);
    v135._countAndFlagsBits = 0xD00000000000001ELL;
    v135._object = 0x8000000000191450;
    sub_16A744(v135);
    sub_16AD84();
    v136._countAndFlagsBits = 46;
    v136._object = 0xE100000000000000;
    sub_16A744(v136);
    v47 = v129;
    v48 = v130;
    sub_16A9A4();
    sub_14A844();
    sub_386D8(v49, v50, v51, v52, v53, v54, 47, v47, v48);

    return sub_168974();
  }
}

uint64_t sub_149E70(uint64_t a1)
{
  v2 = sub_1693D4();
  v3 = sub_9F48(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1693E4();
  v11 = sub_9F48(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  v17 = &v20[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v13 + 16))(v17, a1, v10);
  if ((*(v13 + 88))(v17, v10) != enum case for Parse.directInvocation(_:))
  {
    (*(v13 + 8))(v17, v10);
    return 0;
  }

  (*(v13 + 96))(v17, v10);
  (*(v5 + 32))(v9, v17, v2);
  v18 = sub_1693C4();
  if (!v18)
  {
    (*(v5 + 8))(v9, v2);
    v21 = 0u;
    v22 = 0u;
    goto LABEL_8;
  }

  sub_13F530(0xD00000000000001BLL, 0x8000000000182A20, v18, &v21);

  (*(v5 + 8))(v9, v2);
  if (!*(&v22 + 1))
  {
LABEL_8:
    sub_D188(&v21, &qword_1E6A10, &unk_1744D0);
    return 0;
  }

  result = swift_dynamicCast();
  if (result)
  {
    return v20[15];
  }

  return result;
}

uint64_t *sub_14A0F0()
{
  sub_D13C(v0 + 2);
  sub_D13C(v0 + 7);
  sub_D13C(v0 + 12);
  sub_D188((v0 + 17), &qword_1E6030, &unk_173620);
  sub_D13C(v0 + 22);
  return v0;
}

uint64_t sub_14A140()
{
  sub_14A0F0();

  return _swift_deallocClassInstance(v0, 217, 7);
}

uint64_t sub_14A1BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_148CA0();
  *a1 = result;
  return result;
}

uint64_t sub_14A240(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_14A2E4(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46[3] = &type metadata for FlowFactoryImpl;
  v46[4] = &off_1D7A88;
  v46[0] = swift_allocObject();
  memcpy((v46[0] + 16), a1, 0x50uLL);
  v8 = type metadata accessor for FeatureFlagHelper();
  v45[3] = v8;
  v45[4] = &off_1D9AF0;
  v45[0] = a2;
  v9 = type metadata accessor for CarPlaySessionObserver();
  v43 = v9;
  v44 = &off_1D8738;
  v42[0] = a3;
  v10 = type metadata accessor for CarCommandsLoggingProducer();
  v40 = v10;
  v41 = &off_1D7DF0;
  v39[0] = a4;
  type metadata accessor for CarCommandsFlowDelegatePlugin();
  v11 = swift_allocObject();
  v12 = sub_2F8D0(v46, &type metadata for FlowFactoryImpl);
  __chkstk_darwin(v12);
  v14 = &v39[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14);
  v16 = sub_2F8D0(v45, v8);
  v17 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = (&v39[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = v43;
  v22 = sub_2F8D0(v42, v43);
  v23 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = (&v39[-1] - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v27 = v40;
  v28 = sub_2F8D0(v39, v40);
  v29 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v28);
  v31 = (&v39[-1] - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v32 + 16))(v31);
  v33 = *v19;
  v34 = *v25;
  v35 = *v31;
  *(v11 + 80) = &type metadata for FlowFactoryImpl;
  *(v11 + 88) = &off_1D7A88;
  v36 = swift_allocObject();
  *(v11 + 56) = v36;
  memcpy((v36 + 16), v14, 0x50uLL);
  *(v11 + 40) = v8;
  *(v11 + 48) = &off_1D9AF0;
  *(v11 + 16) = v33;
  *(v11 + 200) = v9;
  *(v11 + 208) = &off_1D8738;
  *(v11 + 120) = v10;
  *(v11 + 128) = &off_1D7DF0;
  *(v11 + 96) = v35;
  *(v11 + 136) = 0u;
  *(v11 + 152) = 0u;
  *(v11 + 168) = 0;
  *(v11 + 176) = v34;
  *(v11 + 216) = 2;
  sub_D13C(v39);
  sub_D13C(v42);
  sub_D13C(v45);
  sub_D13C(v46);
  return v11;
}

uint64_t sub_14A740()
{
  sub_D13C((v0 + 16));
  sub_D13C((v0 + 56));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_14A780(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1E6030, &unk_173620);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_14A810()
{
  v2 = *(v0 - 352) + 56;

  return sub_10824(v2, v0 - 168);
}

uint64_t sub_14A854()
{
  v2 = *(v0 - 352) + 56;

  return sub_10824(v2, v0 - 168);
}

uint64_t sub_14A874@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 - 256) + 56;

  return sub_10824(v3, v1 - 168);
}

uint64_t sub_14A8C8()
{

  return sub_168CD4();
}

uint64_t sub_14A918()
{

  return swift_allocObject();
}

uint64_t sub_14A934()
{

  return sub_5758(v0, v1);
}

uint64_t sub_14A94C()
{
  sub_D2DC();
  v1[14] = v2;
  v1[15] = v0;
  v1[12] = v3;
  v1[13] = v4;
  v1[10] = v5;
  v1[11] = v6;
  v1[8] = v7;
  v1[9] = v8;
  v1[7] = v9;
  v10 = sub_1691E4();
  v1[16] = v10;
  v11 = *(v10 - 8);
  v1[17] = v11;
  v12 = *(v11 + 64) + 15;
  v1[18] = swift_task_alloc();
  v13 = sub_16A2C4();
  v1[19] = v13;
  v14 = *(v13 - 8);
  v1[20] = v14;
  v15 = *(v14 + 64) + 15;
  v1[21] = swift_task_alloc();
  v16 = sub_D388();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_14AA6C()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  v4 = v0[14];
  v23 = v0[18];
  v24 = v0[15];
  v5 = v0[12];
  v7 = v0[10];
  v6 = v0[11];
  v22 = v0[13];
  v9 = v0[8];
  v8 = v0[9];

  sub_16A2B4();
  v10 = v4[3];
  v11 = v4[4];
  sub_D084(v4, v10);
  v12 = sub_16A284();
  v0[5] = v12;
  v0[6] = sub_4FB1C();
  v13 = sub_10888(v0 + 2);
  (*(v1 + 16))(v13, v2, v3);
  (*(*(v12 - 8) + 104))(v13, enum case for CarCommandsSnippetsPluginModel.confirmation(_:), v12);
  sub_5758(&qword_1EA2B0, &qword_16DFB0);
  v14 = swift_allocObject();
  v0[22] = v14;
  *(v14 + 16) = xmmword_16D440;
  *(v14 + 32) = v9;
  v15 = v9;
  sub_14B9E0();
  v16 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)[1];
  swift_task_alloc();
  sub_D3E0();
  v0[23] = v17;
  *v17 = v18;
  v17[1] = sub_14AC6C;
  v19 = v0[18];
  v20 = v0[7];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v20, v0 + 2, v14, v19, v10, v11);
}

uint64_t sub_14AC6C()
{
  sub_D358();
  v2 = v1;
  sub_D2A4();
  *v3 = v2;
  v5 = v4[23];
  v6 = v4[22];
  v7 = v4[18];
  v8 = v4[17];
  v9 = v4[16];
  v10 = *v0;
  sub_D254();
  *v11 = v10;

  (*(v8 + 8))(v7, v9);
  sub_D13C((v2 + 16));
  v12 = sub_D388();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_14ADD8()
{
  sub_D2DC();
  v1 = v0[18];
  (*(v0[20] + 8))(v0[21], v0[19]);

  sub_D37C();

  return v2();
}

uint64_t sub_14AE58()
{
  sub_D2DC();
  v1[195] = v0;
  v1[189] = v2;
  v1[183] = v3;
  v1[177] = v4;
  v1[171] = v5;
  v6 = *(*(sub_16A164() - 8) + 64) + 15;
  v1[201] = swift_task_alloc();
  v7 = sub_D388();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_14AEEC()
{
  sub_D2DC();
  v1 = *(v0 + 1608);
  type metadata accessor for CarCommandsCATsSimple();
  sub_16A154();
  *(v0 + 1656) = sub_16A0F4();

  swift_asyncLet_begin();

  swift_asyncLet_begin();

  return _swift_asyncLet_get_throwing(v0 + 16);
}

uint64_t sub_14AFE8()
{
  sub_D2DC();
  v1[213] = v0;
  if (v0)
  {

    return _swift_asyncLet_finish(v1 + 82);
  }

  else
  {
    v1[219] = v1[167];
    v1[225] = v1[168];

    v2 = sub_14BCFC();

    return _swift_asyncLet_get_throwing(v2);
  }
}

uint64_t sub_14B098()
{
  sub_1696C();
  v1[226] = v0;
  if (v0)
  {

    return _swift_task_switch(sub_14B444, 0, 0);
  }

  else
  {
    v2 = v1[169];
    v1[227] = v1[170];

    swift_task_alloc();
    sub_D3E0();
    v1[228] = v3;
    *v3 = v4;
    v3[1] = sub_14B1A8;
    v5 = v1[225];
    v6 = v1[219];
    v7 = v1[195];
    v8 = v1[189];
    v9 = v1[183];
    v10 = v1[177];
    v11 = v1[171];

    return sub_14A94C();
  }
}

uint64_t sub_14B1A8()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 1824);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  v3[229] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_14B54C, 0, 0);
  }

  else
  {
    v9 = v3[227];
    v10 = v3[225];

    return _swift_asyncLet_finish(v3 + 82);
  }
}

uint64_t sub_14B330()
{
  sub_D2DC();
  v1 = *(v0 + 1656);
  v2 = *(v0 + 1608);

  sub_D37C();

  return v3();
}

uint64_t sub_14B3E4()
{
  sub_D2DC();
  v1 = *(v0 + 1704);
  sub_14BD0C();

  sub_D37C();

  return v2();
}