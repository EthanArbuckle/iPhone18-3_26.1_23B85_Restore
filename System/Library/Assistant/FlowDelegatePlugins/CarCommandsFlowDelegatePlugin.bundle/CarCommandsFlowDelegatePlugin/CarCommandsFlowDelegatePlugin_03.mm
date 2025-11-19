uint64_t sub_5A144()
{

  return swift_allocError();
}

uint64_t type metadata accessor for CarCommandsCATs()
{
  result = qword_1E7A38;
  if (!qword_1E7A38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5A1F0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_5A244(a1, a2);
}

uint64_t sub_5A244(uint64_t a1, uint64_t a2)
{
  v4 = sub_16A164();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_57A0(a1, &v14 - v11);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_16A084();
  (*(v5 + 8))(a2, v4);
  sub_5810(a1);
  return v12;
}

uint64_t sub_5A3CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_168454();

  return sub_9E2C(a1, a2, v4);
}

uint64_t sub_5A428(uint64_t a1, uint64_t a2)
{
  v4 = sub_168454();

  return sub_5370(a1, a2, a2, v4);
}

uint64_t type metadata accessor for LocalizedMeasurementUnitProvider()
{
  result = qword_1E7AE0;
  if (!qword_1E7AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5A4C0()
{
  result = sub_168454();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_5A52C(uint64_t result, unsigned __int8 a2)
{
  if (a2 >= 4u)
  {
    return qword_16F6D0[result];
  }

  return result;
}

uint64_t type metadata accessor for CarCommandsActivateSignalCATs()
{
  result = qword_1E7B18;
  if (!qword_1E7B18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5A5E4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_5A638(a1, a2);
}

uint64_t sub_5A638(uint64_t a1, uint64_t a2)
{
  v4 = sub_16A164();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_57A0(a1, &v14 - v11);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_16A084();
  (*(v5 + 8))(a2, v4);
  sub_5810(a1);
  return v12;
}

void sub_5A7AC()
{
  v1 = [v0 remainingRange];
  v2 = [v1 distanceMiles];

  sub_549EC();
  sub_1682E4();
}

id sub_5A838()
{
  v1 = [v0 remainingRange];
  v2 = [v1 hidden];

  return v2;
}

id sub_5A888()
{
  result = [v0 car];
  if (result)
  {
    v2 = result;
    v3 = [result fuel];

    if (v3)
    {
      v4 = [v3 fuelLevel];

      v5 = [v4 fuelLevelState];
      return (v5 - 1 < 2);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_5A9A4(char *a1, char a2)
{
  v3 = v2;
  if ((a2 & 0xF0) != 0x40)
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v8 = sub_16A584();
    sub_9DA0(v8, qword_1E65C0);
    sub_16A9A4();
    sub_5B31C();
    sub_5B2E8();
    v16 = 18;
    goto LABEL_17;
  }

  sub_86E4(a1, &_swiftEmptySetSingleton, v24);
  if (!v24[3])
  {
    sub_109A0(v24, &qword_1E5F80, &unk_16E7E0);
    sub_5B330();
    v27 = 0;
    goto LABEL_14;
  }

  sub_5758(&qword_1E5F90, &qword_170270);
  sub_5758(&qword_1E7B70, &qword_16F800);
  if ((sub_5B2F8() & 1) == 0)
  {
    v27 = 0;
    sub_5B330();
    goto LABEL_14;
  }

  if (!v26)
  {
LABEL_14:
    sub_109A0(&v25, &qword_1E7B68, &qword_16F7F8);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v17 = sub_16A584();
    sub_9DA0(v17, qword_1E65C0);
    sub_16A9A4();
    sub_5B31C();
    sub_5B2E8();
    v16 = 23;
LABEL_17:
    sub_386D8(v9, v10, v11, v12, v13, v14, v16, v15, v23);
    v18 = v3;
    return v3;
  }

  sub_D124(&v25, v28);
  v5 = v29;
  v6 = v30;
  sub_D084(v28, v29);
  if (a2)
  {
    v7 = (*(v6 + 16))(v5, v6);
    if (!v7)
    {
      v7 = [v3 isGetCarActivationStatusRequest];
    }

    [v3 setIsGetCarActivationStatusRequest:v7];
  }

  else
  {
    (*(*(v6 + 8) + 8))(v5);
    if (v20)
    {
      sub_16484(0, &qword_1E6378, INSpeakableString_ptr);
      v21 = sub_99BFC();
    }

    else
    {
      v21 = [v3 carName];
    }

    v7 = v21;
    [v3 setCarName:v21];
  }

  v22 = v3;
  sub_D13C(v28);
  return v3;
}

id sub_5AC9C(uint64_t a1, char a2)
{
  v4 = type metadata accessor for CarCommandsError();
  v5 = sub_10AFC(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((a2 & 0xF0) == 0x40)
  {
    if (a2)
    {
      sub_16138(a1, v31);
      sub_16484(0, &qword_1E6310, NSNumber_ptr);
      if (sub_5B33C())
      {
        v10 = v29;
        v11 = v30;
      }

      else
      {
        v24 = [v29 isGetCarActivationStatusRequest];
        v10 = v29;
        v11 = v24;
      }

      [v10 setIsGetCarActivationStatusRequest:v11];
    }

    else
    {
      sub_16138(a1, v31);
      sub_16484(0, &qword_1E6378, INSpeakableString_ptr);
      if (sub_5B33C())
      {
        v23 = v29;
        v11 = v30;
      }

      else
      {
        v25 = [v29 carName];
        v23 = v29;
        v11 = v25;
      }

      [v23 setCarName:v11];
    }
  }

  else
  {
    v31[0] = a2;
    *v9 = sub_16A694();
    v9[1] = v12;
    swift_storeEnumTagMultiPayload();
    sub_11D28();
    swift_allocError();
    sub_548D0(v9, v13);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v14 = sub_16A584();
    sub_9DA0(v14, qword_1E65C0);
    sub_16A9A4();
    swift_getErrorValue();
    sub_16AEB4();
    v28 = v15;
    sub_5B2E8();
    sub_386D8(v16, v17, v18, v19, v20, v21, 40, v22, v28);

    sub_5A09C(v9);
  }

  v26 = v29;

  return v26;
}

double sub_5AF3C@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if ((a1 & 0xF0) == 0x40)
  {
    if (a1)
    {
      v4 = [v2 isGetCarActivationStatusRequest];
      if (v4)
      {
        v5 = v4;
        v6 = &qword_1E6310;
        v7 = NSNumber_ptr;
LABEL_7:
        *(a2 + 24) = sub_16484(0, v6, v7);
        *a2 = v5;
        return result;
      }
    }

    else
    {
      v8 = [v2 carName];
      if (v8)
      {
        v5 = v8;
        v6 = &qword_1E6378;
        v7 = INSpeakableString_ptr;
        goto LABEL_7;
      }
    }
  }

  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

id sub_5AFEC(char *a1)
{
  sub_86E4(a1, &_swiftEmptySetSingleton, v21);
  if (v21[3])
  {
    sub_5758(&qword_1E5F90, &qword_170270);
    sub_5758(&qword_1E7B70, &qword_16F800);
    if (sub_5B2F8())
    {
      if (v23)
      {
        sub_D124(&v22, v25);
        v3 = [objc_allocWithZone(v1) init];
        v5 = v26;
        v4 = v27;
        sub_D084(v25, v26);
        v6 = *(v4 + 8);
        v7 = *(v6 + 8);
        v8 = v3;
        v7(v5, v6);
        if (v9)
        {
          sub_16484(0, &qword_1E6378, INSpeakableString_ptr);
          v10 = sub_99BFC();
        }

        else
        {
          v10 = 0;
        }

        [v8 setCarName:v10];

        v16 = v26;
        v17 = v27;
        sub_D084(v25, v26);
        v18 = (*(v17 + 16))(v16, v17);
        [v8 setIsGetCarActivationStatusRequest:v18];

        v19 = sub_1693E4();
        sub_10AFC(v19);
        (*(v20 + 8))(a1);
        sub_D13C(v25);
        return v8;
      }
    }

    else
    {
      v24 = 0;
      sub_5B330();
    }
  }

  else
  {
    sub_109A0(v21, &qword_1E5F80, &unk_16E7E0);
    sub_5B330();
    v24 = 0;
  }

  sub_109A0(&v22, &qword_1E7B68, &qword_16F7F8);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v11 = sub_16A584();
  sub_9DA0(v11, qword_1E65C0);
  v12 = sub_16A9A4();
  sub_386D8(v12, 0x2000uLL, 0xD0000000000000A0, 0x8000000000183340, 0x293A5F2874696E69, 0xE800000000000000, 67, 0xD000000000000016, 0x8000000000182F10);
  v13 = sub_1693E4();
  sub_10AFC(v13);
  (*(v14 + 8))(a1);
  return 0;
}

uint64_t sub_5B2F8()
{

  return swift_dynamicCast();
}

uint64_t sub_5B33C()
{

  return swift_dynamicCast();
}

uint64_t sub_5B35C()
{
  v2 = v0;
  sub_5BAFC(v0, &selRef_name);
  if (v3 || (sub_5BAFC(v0, &selRef_callsign), v4))
  {
LABEL_3:
    sub_16A6E4();
  }

  v6 = [v0 frequency];
  if (v6)
  {
    v7 = v6;
    sub_D9524();
    v9 = v8;

    if (v9)
    {
      v10 = sub_5B5D4([v2 band]);
      v12 = v11;
      v13 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v13 = v10 & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        v14 = v10;
        v22._countAndFlagsBits = 32;
        v22._object = 0xE100000000000000;
        sub_16A744(v22);
        v23._countAndFlagsBits = v14;
        v23._object = v12;
        sub_16A744(v23);
      }

      goto LABEL_3;
    }
  }

  sub_5BB5C();
  sub_16ACF4(49);

  v15 = [v2 description];
  v16 = sub_16A664();
  v18 = v17;

  v24._countAndFlagsBits = v16;
  v24._object = v18;
  sub_16A744(v24);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v19 = sub_16A584();
  sub_9DA0(v19, qword_1E65C0);
  v20 = sub_16A9A4();
  sub_386D8(v20, 2uLL, 0xD000000000000088, 0x80000000001833F0, 0xD000000000000019, (v1 | 0x8000000000000000), 33, 0xD00000000000002FLL, 0x8000000000183500);

  return sub_16A6E4();
}

uint64_t sub_5B5D4(uint64_t a1)
{
  v1 = a1 - 1;
  result = 19782;
  switch(v1)
  {
    case 0:
      result = 19777;
      break;
    case 1:
      return result;
    case 2:
      result = 19800;
      break;
    case 3:
      result = 4342084;
      break;
    case 4:
      result = 0x4241444D46;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t sub_5B65C()
{
  v3 = v0;
  v4 = [v0 frequency];
  v5 = v4;
  if (!v4)
  {
    return 0;
  }

  [v4 floatValue];
  v7 = v6;

  v8 = &off_1E2000;
  v9 = sub_5B994([v0 band]);
  v10 = sub_BE77C(v9);
  v12 = v11;
  if (v10 == 28006 && v11 == 0xE200000000000000)
  {
    goto LABEL_16;
  }

  v1 = sub_16AE54();

  if (v1)
  {
    goto LABEL_17;
  }

  v1 = 6447460;
  v14 = sub_5B994([v3 band]);
  v15 = sub_BE77C(v14);
  v12 = v16;
  if (v15 == 6447460 && v16 == 0xE300000000000000)
  {
LABEL_16:

LABEL_17:
    v19 = v7 * 1000.0;
    if (COERCE_INT(fabs(v7 * 1000.0)) > 2139095039)
    {
      __break(1u);
    }

    else if (v19 > -9.2234e18)
    {
      if (v19 < 9.2234e18)
      {
        v8 = 0xD000000000000013;
        v1 = v19;
        sub_5BB5C();
        sub_16ACF4(45);

        v20 = [v3 frequency];
        sub_5758(&qword_1E7B78, &qword_16F808);
        v23._countAndFlagsBits = sub_16A694();
        sub_16A744(v23);

        v24._object = 0x8000000000183550;
        v24._countAndFlagsBits = 0xD000000000000013;
        sub_16A744(v24);
        v25._countAndFlagsBits = sub_16AE24();
        sub_16A744(v25);

        v12 = 0xD000000000000016;
        v3 = 0x8000000000183530;
        if (qword_1E58E8 == -1)
        {
LABEL_21:
          v21 = sub_16A584();
          sub_9DA0(v21, qword_1E65C0);
          v22 = sub_16A9A4();
          sub_386D8(v22, 1uLL, v8 + 117, v2 | 0x8000000000000000, 0x636E657571657266, 0xEE005A484B6E4979, 44, v12, v3);

          return v1;
        }

LABEL_27:
        sub_9ED4();
        goto LABEL_21;
      }

LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    __break(1u);
    goto LABEL_26;
  }

  v1 = sub_16AE54();

  if (v1)
  {
    goto LABEL_17;
  }

  if ((LODWORD(v7) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v7 <= -9.2234e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v7 < 9.2234e18)
  {
    return v7;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_5B994(uint64_t a1)
{
  result = 1;
  switch(a1)
  {
    case 0:
      if (qword_1E58E8 != -1)
      {
        sub_9ED4();
      }

      v3 = sub_16A584();
      sub_9DA0(v3, qword_1E65C0);
      v4 = sub_16A9A4();
      sub_386D8(v4, 0x800uLL, 0xD000000000000088, 0x80000000001833F0, 0xD000000000000015, 0x8000000000183480, 79, 0xD000000000000034, 0x80000000001834A0);
      result = 5;
      break;
    case 1:
      return result;
    case 2:
      result = 0;
      break;
    case 3:
      result = 2;
      break;
    case 4:
      result = 3;
      break;
    case 5:
      result = 4;
      break;
    default:
      sub_16AE84();
      __break(1u);
      JUMPOUT(0x5BACCLL);
  }

  return result;
}

uint64_t sub_5BAFC(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_16A664();

  return v4;
}

uint64_t sub_5BB70(uint64_t a1, char a2)
{
  *(v3 + 912) = v2;
  *(v3 + 1016) = a2;
  *(v3 + 904) = a1;
  return _swift_task_switch(sub_5BB98, 0, 0);
}

uint64_t sub_5C2A4()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 936);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 944) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_5C39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_375FC();
  sub_10B8C();
  sub_61420((v12 + 768));
  sub_615A0();
  sub_31144(v14, v15, &qword_1E6368, &qword_16DAA0);
  if (*(v12 + 552))
  {
    sub_612DC();
    v41 = v16 + *v16;
    v18 = *(v17 + 4);
    v19 = swift_task_alloc();
    v20 = sub_614A0(v19);
    *v20 = v21;
    sub_6139C(v20);
    sub_375E4();

    return v24(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, v41);
  }

  else
  {
    sub_D188(v12 + 528, &qword_1E6368, &qword_16DAA0);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    sub_30B94();
    v31 = sub_61400();
    v32 = sub_48154(v31, qword_1E65C0);
    sub_61360(v32);

    sub_D188(v12 + 368, &qword_1E6368, &qword_16DAA0);
    sub_D188(v12 + 328, &qword_1E6358, &unk_16DA90);
    sub_613B4();
    sub_375E4();

    return v36(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
  }
}

uint64_t sub_5C580()
{
  sub_1696C();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 952);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 960) = v0;

  if (!v0)
  {
    sub_615E4();
  }

  sub_3021C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_5C68C()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 968);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 976) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_5C784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_375FC();
  sub_10B8C();
  sub_61420((v12 + 688));
  sub_615D8();
  sub_31144(v14, v15, &qword_1E6368, &qword_16DAA0);
  if (*(v12 + 552))
  {
    sub_612DC();
    v41 = v16 + *v16;
    v18 = *(v17 + 4);
    v19 = swift_task_alloc();
    v20 = sub_614A0(v19);
    *v20 = v21;
    sub_6139C(v20);
    sub_375E4();

    return v24(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, v41);
  }

  else
  {
    sub_D188(v12 + 528, &qword_1E6368, &qword_16DAA0);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    sub_30B94();
    v31 = sub_61400();
    v32 = sub_48154(v31, qword_1E65C0);
    sub_61360(v32);

    sub_D188(v12 + 368, &qword_1E6368, &qword_16DAA0);
    sub_D188(v12 + 328, &qword_1E6358, &unk_16DA90);
    sub_613B4();
    sub_375E4();

    return v36(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
  }
}

uint64_t sub_5C968()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 984);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 992) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_5CA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_375FC();
  sub_10B8C();
  sub_61420((v12 + 608));
  sub_615CC();
  sub_31144(v14, v15, &qword_1E6368, &qword_16DAA0);
  if (*(v12 + 552))
  {
    sub_612DC();
    v41 = v16 + *v16;
    v18 = *(v17 + 4);
    v19 = swift_task_alloc();
    v20 = sub_614A0(v19);
    *v20 = v21;
    sub_6139C(v20);
    sub_375E4();

    return v24(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, v41);
  }

  else
  {
    sub_D188(v12 + 528, &qword_1E6368, &qword_16DAA0);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    sub_30B94();
    v31 = sub_61400();
    v32 = sub_48154(v31, qword_1E65C0);
    sub_61360(v32);

    sub_D188(v12 + 368, &qword_1E6368, &qword_16DAA0);
    sub_D188(v12 + 328, &qword_1E6358, &unk_16DA90);
    sub_613B4();
    sub_375E4();

    return v36(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
  }
}

uint64_t sub_5CC44()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 1000);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 1008) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_5CD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_375FC();
  sub_10B8C();
  sub_61420((v12 + 448));
  sub_615C0();
  sub_31144(v14, v15, &qword_1E6368, &qword_16DAA0);
  if (*(v12 + 552))
  {
    sub_612DC();
    v41 = v16 + *v16;
    v18 = *(v17 + 4);
    v19 = swift_task_alloc();
    v20 = sub_614A0(v19);
    *v20 = v21;
    sub_6139C(v20);
    sub_375E4();

    return v24(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, v41);
  }

  else
  {
    sub_D188(v12 + 528, &qword_1E6368, &qword_16DAA0);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    sub_30B94();
    v31 = sub_61400();
    v32 = sub_48154(v31, qword_1E65C0);
    sub_61360(v32);

    sub_D188(v12 + 368, &qword_1E6368, &qword_16DAA0);
    sub_D188(v12 + 328, &qword_1E6358, &unk_16DA90);
    sub_613B4();
    sub_375E4();

    return v36(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
  }
}

uint64_t sub_5CF20(uint64_t a1, char a2)
{
  *(v3 + 912) = v2;
  *(v3 + 1016) = a2;
  *(v3 + 904) = a1;
  return sub_D2B0();
}

uint64_t sub_5D64C()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 936);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 944) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_5D744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_375FC();
  sub_10B8C();
  sub_61420((v12 + 768));
  sub_615A0();
  sub_31144(v14, v15, &qword_1E6368, &qword_16DAA0);
  if (*(v12 + 552))
  {
    sub_612DC();
    v41 = v16 + *v16;
    v18 = *(v17 + 4);
    v19 = swift_task_alloc();
    v20 = sub_614A0(v19);
    *v20 = v21;
    sub_6139C(v20);
    sub_375E4();

    return v24(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, v41);
  }

  else
  {
    sub_D188(v12 + 528, &qword_1E6368, &qword_16DAA0);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    sub_30B94();
    v31 = sub_61400();
    v32 = sub_48154(v31, qword_1E65C0);
    sub_61360(v32);

    sub_D188(v12 + 368, &qword_1E6368, &qword_16DAA0);
    sub_D188(v12 + 328, &qword_1E6358, &unk_16DA90);
    sub_613B4();
    sub_375E4();

    return v36(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
  }
}

uint64_t sub_5DC2C()
{
  sub_1696C();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 952);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 960) = v0;

  if (!v0)
  {
    sub_615E4();
  }

  sub_3021C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_5DD38()
{
  sub_D2DC();
  v1 = *(v0 + 928);

  sub_D188(v0 + 368, &qword_1E6368, &qword_16DAA0);
  sub_D188(v0 + 328, &qword_1E6358, &unk_16DA90);
  sub_D13C((v0 + 488));
  v2 = *(v0 + 8);
  v3 = *(v0 + 1017) | 0x300u;

  return v2(v3, v1);
}

uint64_t sub_5E0F8()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 968);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 976) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_5E1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_375FC();
  sub_10B8C();
  sub_61420((v12 + 688));
  sub_615D8();
  sub_31144(v14, v15, &qword_1E6368, &qword_16DAA0);
  if (*(v12 + 552))
  {
    sub_612DC();
    v41 = v16 + *v16;
    v18 = *(v17 + 4);
    v19 = swift_task_alloc();
    v20 = sub_614A0(v19);
    *v20 = v21;
    sub_6139C(v20);
    sub_375E4();

    return v24(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, v41);
  }

  else
  {
    sub_D188(v12 + 528, &qword_1E6368, &qword_16DAA0);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    sub_30B94();
    v31 = sub_61400();
    v32 = sub_48154(v31, qword_1E65C0);
    sub_61360(v32);

    sub_D188(v12 + 368, &qword_1E6368, &qword_16DAA0);
    sub_D188(v12 + 328, &qword_1E6358, &unk_16DA90);
    sub_613B4();
    sub_375E4();

    return v36(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
  }
}

uint64_t sub_5E6D8()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 984);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 992) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_5E7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_375FC();
  sub_10B8C();
  sub_61420((v12 + 608));
  sub_615CC();
  sub_31144(v14, v15, &qword_1E6368, &qword_16DAA0);
  if (*(v12 + 552))
  {
    sub_612DC();
    v41 = v16 + *v16;
    v18 = *(v17 + 4);
    v19 = swift_task_alloc();
    v20 = sub_614A0(v19);
    *v20 = v21;
    sub_6139C(v20);
    sub_375E4();

    return v24(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, v41);
  }

  else
  {
    sub_D188(v12 + 528, &qword_1E6368, &qword_16DAA0);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    sub_30B94();
    v31 = sub_61400();
    v32 = sub_48154(v31, qword_1E65C0);
    sub_61360(v32);

    sub_D188(v12 + 368, &qword_1E6368, &qword_16DAA0);
    sub_D188(v12 + 328, &qword_1E6358, &unk_16DA90);
    sub_613B4();
    sub_375E4();

    return v36(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
  }
}

uint64_t sub_5ECB8()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 1000);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 1008) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_5EDB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_375FC();
  sub_10B8C();
  sub_61420((v12 + 448));
  sub_615C0();
  sub_31144(v14, v15, &qword_1E6368, &qword_16DAA0);
  if (*(v12 + 552))
  {
    sub_612DC();
    v41 = v16 + *v16;
    v18 = *(v17 + 4);
    v19 = swift_task_alloc();
    v20 = sub_614A0(v19);
    *v20 = v21;
    sub_6139C(v20);
    sub_375E4();

    return v24(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, v41);
  }

  else
  {
    sub_D188(v12 + 528, &qword_1E6368, &qword_16DAA0);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    sub_30B94();
    v31 = sub_61400();
    v32 = sub_48154(v31, qword_1E65C0);
    sub_61360(v32);

    sub_D188(v12 + 368, &qword_1E6368, &qword_16DAA0);
    sub_D188(v12 + 328, &qword_1E6358, &unk_16DA90);
    sub_613B4();
    sub_375E4();

    return v36(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12);
  }
}

uint64_t sub_5F298(uint64_t a1, char a2)
{
  *(v3 + 912) = v2;
  *(v3 + 1016) = a2;
  *(v3 + 904) = a1;
  return sub_D2B0();
}

uint64_t sub_5F9C4(uint64_t a1, char a2)
{
  *(v3 + 912) = v2;
  *(v3 + 1016) = a2;
  *(v3 + 904) = a1;
  return sub_D2B0();
}

uint64_t SEGetSignalActivationStatusIntentHandler.resolveCarName(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_60104()
{
  sub_1696C();
  *(v0 + 32) = [*(v0 + 16) carName];
  v1 = sub_37484(dword_16DBB0);
  *(v0 + 40) = v1;
  *v1 = v0;
  v2 = sub_615AC(v1);

  return v4(v2, 6);
}

uint64_t sub_601B4()
{
  sub_D2DC();
  v2 = v1;
  sub_D358();
  v4 = *(v3 + 40);
  v5 = *(v3 + 32);
  v6 = *v0;
  sub_D254();
  *v7 = v6;

  sub_30AEC();

  return v8(v2);
}

uint64_t sub_602D4(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_60398;

  return SEGetSignalActivationStatusIntentHandler.resolveCarName(for:)(v6);
}

uint64_t sub_60398()
{
  sub_1696C();
  v2 = v1;
  sub_D358();
  v4 = v3[5];
  v5 = v3[4];
  v6 = v3[3];
  v7 = v3[2];
  v8 = *v0;
  sub_D254();
  *v9 = v8;

  (v5)[2](v5, v2);
  _Block_release(v5);

  v10 = *(v8 + 8);

  return v10();
}

uint64_t sub_60500()
{
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v1 = *(v0 + 16);
  v2 = sub_16A584();
  v3 = sub_48154(v2, qword_1E65C0);
  sub_386D8(v3, 0x28000uLL, 0xD0000000000000C2, 0x8000000000183570, 0xD000000000000016, 0x8000000000183640, 23, 0xD000000000000015, 0x8000000000183660);
  v4 = [v1 carSignal];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 integerValue];
  }

  else
  {
    v6 = &dword_0 + 1;
  }

  sub_16A374();
  v7 = [swift_getObjCClassFromMetadata() successWithResolvedValue:v6];
  sub_30AEC();

  return v8();
}

uint64_t sub_60678(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_612B8;

  return SEGetSignalActivationStatusIntentHandler.resolveCarSignal(for:)(v6);
}

uint64_t SEGetSignalActivationStatusIntentHandler.confirm(intent:)(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return sub_D2B0();
}

uint64_t sub_6074C()
{
  sub_1696C();
  v1 = [*(v0 + 40) carName];
  *(v0 + 56) = v1;
  v2 = sub_37484(&unk_16DBA8);
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_6080C;
  v3 = *(v0 + 48);

  return v5(v1, 0, 1);
}

uint64_t sub_6080C()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  *(v1 + 32) = v3;
  *(v1 + 24) = v4;
  *(v1 + 16) = v0;
  v6 = *(v5 + 64);
  v7 = *(v5 + 56);
  v8 = *v0;
  sub_D254();
  *v9 = v8;
  *(v11 + 72) = v10;

  sub_10B4C();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_60918()
{
  sub_D2DC();
  v1 = *(v0 + 72);
  sub_16A564();
  if (v1 <= 5)
  {
    v2 = qword_16F900[v1];
  }

  v3 = *(v0 + 32);
  sub_16A554();
  sub_30AEC();

  return v4();
}

uint64_t sub_609BC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_612B8;

  return SEGetSignalActivationStatusIntentHandler.confirm(intent:)(v6);
}

uint64_t SEGetSignalActivationStatusIntentHandler.handle(intent:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_60A94()
{
  sub_1696C();
  *(v0 + 32) = [*(v0 + 16) carName];
  v1 = sub_37484(&unk_16F830);
  *(v0 + 40) = v1;
  *v1 = v0;
  v2 = sub_615AC(v1);

  return v4(v2, 0);
}

uint64_t sub_60B44()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  v4 = *(v3 + 40);
  v5 = *(v3 + 32);
  v6 = *v0;
  sub_D254();
  *v7 = v6;
  *(v9 + 56) = v8;
  *(v9 + 48) = v10;

  sub_10B4C();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_60C48()
{
  v1 = *(v0 + 56);
  switch(v1 >> 8)
  {
    case 3u:
      v2 = *(v0 + 48);
      v3 = *(v0 + 16);
      sub_16A564();
      v4 = v2;
      v5 = sub_16A554();
      v6 = [objc_allocWithZone(NSNumber) initWithBool:v1 & 1];
      [v5 setSignalActivated:v6];

      v7 = [v3 carSignal];
      [v5 setCarSignal:v7];

      break;
    default:
      v8 = *(v0 + 48);
      sub_16A564();
      v5 = sub_16A554();
      break;
  }

  sub_30AEC();

  return v9(v5);
}

uint64_t sub_60E10(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_612B8;

  return SEGetSignalActivationStatusIntentHandler.handle(intent:)(v6);
}

id SEGetSignalActivationStatusIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SEGetSignalActivationStatusIntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_60F80()
{
  sub_1696C();
  sub_314E8();
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v1[1] = sub_12078;
  v3 = sub_301AC();

  return v4(v3);
}

uint64_t sub_61020()
{
  sub_1696C();
  sub_314E8();
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v1[1] = sub_12078;
  v3 = sub_301AC();

  return v4(v3);
}

uint64_t sub_610C0()
{
  sub_1696C();
  sub_314E8();
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v1[1] = sub_12078;
  v3 = sub_301AC();

  return v4(v3);
}

uint64_t sub_61160()
{
  sub_1696C();
  sub_314E8();
  v0 = swift_task_alloc();
  v1 = sub_31500(v0);
  *v1 = v2;
  v1[1] = sub_11F8C;
  v3 = sub_301AC();

  return v4(v3);
}

unint64_t sub_61200()
{
  result = qword_1E6348;
  if (!qword_1E6348)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1E6348);
  }

  return result;
}

id sub_61244()
{
  sub_614D8();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_16A644();

  v2 = [v0 initWithActivityType:v1];

  return v2;
}

uint64_t sub_612DC()
{
  sub_D250((v0 + 528), v0 + 488);
  v1 = *(v0 + 520);
  sub_D084((v0 + 488), *(v0 + 512));
  result = v1 + 24;
  v3 = *(v1 + 24);
  return result;
}

uint64_t sub_61324()
{
  sub_D250((v0 + 528), v0 + 488);
  v1 = *(v0 + 520);
  sub_D084((v0 + 488), *(v0 + 512));
  result = v1 + 24;
  v3 = *(v1 + 24);
  return result;
}

void sub_61360(os_log_type_t a1)
{

  sub_386D8(a1, 0x20000uLL, 0xD0000000000000B9, v3 | 0x8000000000000000, 0xD00000000000002ALL, (v2 | 0x8000000000000000), 111, 0xD000000000000035, v1);
}

uint64_t sub_613EC@<X0>(int a1@<W8>)
{
  result = (a1 << 8);
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_61400()
{
  v2 = *(v0 + 928);
  v3 = *(v0 + 904);

  return sub_16A584();
}

__n128 sub_61420(uint64_t *a1)
{
  sub_D13C(a1);
  result = *v1;
  v4 = *(v1 + 16);
  *(v2 + 368) = *v1;
  *(v2 + 384) = v4;
  return result;
}

void sub_6143C()
{
  v2 = *(v0 + 928);
  v3 = *(v0 + 904);
}

void sub_61464(uint64_t a1@<X8>)
{
  v1[12] = v2;
  v1[9] = v3 - 7;
  v1[10] = (a1 - 32) | 0x8000000000000000;
}

void sub_6147C(uint64_t a1@<X8>)
{
  v1[12] = v2;
  v1[9] = v3 - 7;
  v1[10] = (a1 - 32) | 0x8000000000000000;
}

uint64_t sub_614B8()
{

  return swift_dynamicCast();
}

unint64_t sub_614E4()
{
  v2 = *(v0 + 904);

  return sub_61200();
}

void sub_61504(os_log_type_t a1, Swift::UInt64 a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, unint64_t a9)
{

  sub_386D8(a1, a2, a3, a4, a5, a6, 126, v9, a9);
}

uint64_t sub_61520()
{
  v3 = *(v1 + 1016);

  return sub_93A6C(v0);
}

id sub_6153C()
{

  return sub_61244();
}

id sub_61558(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

id sub_61588()
{

  return sub_61244();
}

uint64_t sub_615AC(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 24);
  return v2;
}

id sub_615F0()
{
  v1 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin46SetCarPlaySeatSettingsHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler;
  v2 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin46SetCarPlaySeatSettingsHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin46SetCarPlaySeatSettingsHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
  }

  else
  {
    v4 = v0;
    if (qword_1E5968 != -1)
    {
      swift_once();
    }

    v5 = qword_1F0E10;
    v6 = *sub_D084((v0 + 56), *(v0 + 80));
    v7 = v5;
    v8 = sub_DB860();
    v9 = sub_1538C8(v7, 14, v8 & 1);

    v10 = *(v4 + v1);
    *(v4 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

uint64_t sub_616C0()
{
  sub_D2DC();
  v1[42] = v2;
  v1[43] = v0;
  v1[41] = v3;
  v4 = sub_16A164();
  sub_D414(v4);
  v6 = *(v5 + 64);
  v1[44] = sub_D3C8();
  v7 = sub_5758(&qword_1E6300, &qword_16ECE0);
  sub_D414(v7);
  v9 = *(v8 + 64);
  v1[45] = sub_D3C8();
  v10 = type metadata accessor for SetCarPlaySeatSettingsParameters(0);
  v1[46] = v10;
  sub_D414(v10);
  v12 = *(v11 + 64);
  v1[47] = sub_D3C8();
  v13 = sub_168B74();
  sub_D414(v13);
  v15 = *(v14 + 64);
  v1[48] = sub_D3C8();
  v16 = sub_1691E4();
  v1[49] = v16;
  v17 = *(v16 - 8);
  v1[50] = v17;
  v18 = *(v17 + 64) + 15;
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v19, v20, v21);
}

uint64_t sub_61818()
{
  v58 = v0;
  v1 = *(v0 + 336);
  sub_10824(*(v0 + 344) + 16, v0 + 16);
  v2 = sub_D084((v0 + 16), *(v0 + 40));
  sub_5758(&qword_1E7DD8, &qword_16FA98);
  sub_169094();
  v3 = *v2;
  sub_D2604();

  sub_D13C((v0 + 16));
  v4 = 0x8000000000182560;
  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v5 = 0xD000000000000025;
  v6 = sub_16A584();
  sub_9DA0(v6, qword_1E65C0);
  v7 = sub_16A9A4();
  *(v0 + 288) = 0xD0000000000000A4;
  *(v0 + 296) = 0x8000000000183950;
  *(v0 + 304) = 47;
  *(v0 + 312) = 0xE100000000000000;
  sub_D030();
  v8 = sub_16AB34();
  v9 = sub_15AE4(v8);
  v11 = v10;

  if (v11)
  {
    v59._countAndFlagsBits = 32;
    v59._object = 0xE100000000000000;
    sub_16A744(v59);
    v60._countAndFlagsBits = 0xD000000000000025;
    v60._object = 0x8000000000182560;
    sub_16A744(v60);
    v5 = v9;
    v4 = v11;
  }

  v57._countAndFlagsBits = 58;
  v57._object = 0xE100000000000000;
  *(v0 + 320) = 25;
  v61._countAndFlagsBits = sub_16AE24();
  sub_16A744(v61);

  sub_16A744(v57);

  v12._countAndFlagsBits = sub_378D0(0x200002uLL);
  if (v12._object)
  {
    v57._countAndFlagsBits = 32;
    v57._object = 0xE100000000000000;
    sub_16A744(v12);

    v62._countAndFlagsBits = 32;
    v62._object = 0xE100000000000000;
    sub_16A744(v62);
  }

  v13 = sub_16A574();
  if (os_log_type_enabled(v13, v7))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v57._countAndFlagsBits = v15;
    *v14 = 136315138;
    v16 = sub_15BC8(v5, v4, &v57._countAndFlagsBits);

    *(v14 + 4) = v16;
    _os_log_impl(&dword_0, v13, v7, "%s", v14, 0xCu);
    sub_D13C(v15);
  }

  else
  {
  }

  v17 = *(v0 + 336);
  v18 = sub_169084();
  v19 = (*(&stru_20.maxprot + (swift_isaMask & *v18)))();

  if (v19 == 100)
  {
    v20 = *(v0 + 416);
    v21 = *(v0 + 384);
    v22 = *(v0 + 344);
    sub_168B34();
    sub_634F4();
    swift_beginAccess();
    sub_10824(v22 + 184, v0 + 176);
    v23 = *(v0 + 200);
    *(v0 + 424) = v23;
    *(v0 + 440) = sub_D084((v0 + 176), v23);
    sub_5758(&qword_1EA2B0, &qword_16DFB0);
    v24 = swift_allocObject();
    *(v0 + 448) = v24;
    *(v24 + 16) = xmmword_16D440;
    v25 = sub_6355C(&unk_179C00);
    *(v0 + 456) = v25;
    *v25 = v0;
    v25[1] = sub_61F2C;
    v26 = *(v0 + 344);
    sub_D2C0();

    __asm { BR              X1 }
  }

  v29 = *(v0 + 336);
  v30 = sub_169084();
  v31 = (*(&stru_20.maxprot + (swift_isaMask & *v30)))();

  if (v31 == 101)
  {
    v32 = *(v0 + 408);
    v33 = *(v0 + 384);
    v34 = *(v0 + 344);
    sub_168B34();
    sub_634F4();
    swift_beginAccess();
    sub_10824(v34 + 184, v0 + 136);
    v35 = *(v0 + 160);
    *(v0 + 488) = v35;
    *(v0 + 504) = sub_D084((v0 + 136), v35);
    sub_5758(&qword_1EA2B0, &qword_16DFB0);
    v36 = swift_allocObject();
    *(v0 + 512) = v36;
    *(v36 + 16) = xmmword_16D440;
    v37 = sub_6355C(&unk_179C08);
    *(v0 + 520) = v37;
    *v37 = v0;
    v37[1] = sub_622A0;
    v38 = *(v0 + 344);
    sub_D2C0();

    __asm { BR              X0 }
  }

  v41 = *(v0 + 336);
  v42 = sub_1690A4();
  *(v0 + 552) = v42;
  v43 = [v42 enableSeatTemperature];
  if (v43)
  {
    v44 = v43;
    v45 = [v43 BOOLValue];
  }

  else
  {
    v45 = 2;
  }

  v47 = *(v0 + 368);
  v46 = *(v0 + 376);
  v48 = *(v0 + 352);
  v49 = *(v0 + 360);
  [v42 seat];
  sub_AFE80();
  sub_16A6E4();

  v50 = sub_16A0C4();
  sub_5370(v49, 0, 1, v50);
  v51 = *(v47 + 24);
  sub_153A20([v42 temperatureChange]);
  sub_16A6E4();

  sub_5370(&v46[v51], 0, 1, v50);
  *v46 = v45;
  sub_16304(v49, &v46[*(v47 + 20)]);
  type metadata accessor for CarCommandsCATPatternsExecutor(0);
  sub_16A154();
  *(v0 + 560) = sub_16A094();
  v52 = swift_task_alloc();
  *(v0 + 568) = v52;
  *v52 = v0;
  v52[1] = sub_62614;
  v53 = *(v0 + 376);
  sub_D2C0();

  return sub_1576D0(v54);
}

uint64_t sub_61F2C(uint64_t a1)
{
  sub_D358();
  v5 = v4;
  sub_D2A4();
  *v6 = v5;
  v8 = *(v7 + 456);
  v9 = *v2;
  sub_D254();
  *v10 = v9;
  *(v5 + 464) = v1;

  if (!v1)
  {
    *(v5 + 472) = a1;
  }

  sub_10B4C();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_62040()
{
  sub_D2DC();
  *(v0[56] + 32) = v0[59];
  v1 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v2 = swift_task_alloc();
  v0[60] = v2;
  *v2 = v0;
  v2[1] = sub_620EC;
  v4 = v0[55];
  v3 = v0[56];
  v5 = v0[53];
  v6 = v0[54];
  v7 = v0[52];
  v8 = v0[41];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v8, v3, v7, v5, v6);
}

uint64_t sub_620EC()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 480);
  v3 = *(v1 + 448);
  v4 = *v0;
  sub_D254();
  *v5 = v4;

  sub_10B4C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_621F0()
{
  sub_D3A4();
  (*(v0[50] + 8))(v0[52], v0[49]);
  sub_D13C(v0 + 22);
  sub_63540();

  sub_D37C();

  return v1();
}

uint64_t sub_622A0(uint64_t a1)
{
  sub_D358();
  v5 = v4;
  sub_D2A4();
  *v6 = v5;
  v8 = *(v7 + 520);
  v9 = *v2;
  sub_D254();
  *v10 = v9;
  *(v5 + 528) = v1;

  if (!v1)
  {
    *(v5 + 536) = a1;
  }

  sub_10B4C();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_623B4()
{
  sub_D2DC();
  *(v0[64] + 32) = v0[67];
  v1 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)[1];
  v2 = swift_task_alloc();
  v0[68] = v2;
  *v2 = v0;
  v2[1] = sub_62460;
  v4 = v0[63];
  v3 = v0[64];
  v5 = v0[61];
  v6 = v0[62];
  v7 = v0[51];
  v8 = v0[41];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v8, v3, v7, v5, v6);
}

uint64_t sub_62460()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 544);
  v3 = *(v1 + 512);
  v4 = *v0;
  sub_D254();
  *v5 = v4;

  sub_10B4C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_62564()
{
  sub_D3A4();
  (*(v0[50] + 8))(v0[51], v0[49]);
  sub_D13C(v0 + 17);
  sub_63540();

  sub_D37C();

  return v1();
}

uint64_t sub_62614()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v5 = *(v4 + 568);
  v6 = *(v4 + 560);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v10 + 576) = v9;
  *(v10 + 584) = v0;

  sub_10B4C();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_62734()
{
  sub_D2DC();
  v1 = v0[43];
  swift_beginAccess();
  sub_10824(v1 + 184, (v0 + 12));
  v2 = swift_task_alloc();
  v0[74] = v2;
  *v2 = v0;
  v2[1] = sub_627F0;
  v3 = v0[72];

  return sub_11A570();
}

uint64_t sub_627F0()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 592);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v3 + 600) = v0;

  sub_D13C((v3 + 96));
  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_628F4()
{
  sub_D3A4();
  v1 = *(v0 + 552);
  v2 = *(v0 + 376);
  v3 = *(v0 + 328);

  sub_63498(v2);
  sub_D250((v0 + 56), v3);
  sub_63540();

  sub_D37C();

  return v4();
}

uint64_t sub_629B0()
{
  sub_D3A4();
  v1 = v0[56];
  (*(v0[50] + 8))(v0[52], v0[49]);
  *(v1 + 16) = 0;

  sub_D13C(v0 + 22);
  v2 = v0[58];
  sub_63524();

  sub_D37C();

  return v3();
}

uint64_t sub_62A70()
{
  sub_D3A4();
  v1 = v0[64];
  (*(v0[50] + 8))(v0[51], v0[49]);
  *(v1 + 16) = 0;

  sub_D13C(v0 + 17);
  v2 = v0[66];
  sub_63524();

  sub_D37C();

  return v3();
}

uint64_t sub_62B30()
{
  sub_D3A4();
  v1 = *(v0 + 376);

  sub_63498(v1);
  v2 = *(v0 + 584);
  sub_63524();

  sub_D37C();

  return v3();
}

uint64_t sub_62BD4()
{
  sub_D3A4();
  v1 = *(v0 + 552);
  v2 = *(v0 + 376);

  sub_63498(v2);
  v3 = *(v0 + 600);
  sub_63524();

  sub_D37C();

  return v4();
}

uint64_t sub_62C90()
{
  v0 = sub_3D044();

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for SetCarPlaySeatSettingsHandleIntentFlowStrategy()
{
  result = qword_1E7BE0;
  if (!qword_1E7BE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_62D9C(uint64_t a1)
{
  result = sub_62DC4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_62DC4()
{
  result = qword_1E7DD0;
  if (!qword_1E7DD0)
  {
    type metadata accessor for SetCarPlaySeatSettingsHandleIntentFlowStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E7DD0);
  }

  return result;
}

uint64_t sub_62E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SetCarPlaySeatSettingsHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, v10, a4);
}

uint64_t sub_62EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SetCarPlaySeatSettingsHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t sub_62FAC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10A9C;

  return sub_4B544();
}

uint64_t sub_6306C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10A9C;

  return sub_616C0();
}

uint64_t sub_63118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SetCarPlaySeatSettingsHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t sub_631E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SetCarPlaySeatSettingsHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t sub_632A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for SetCarPlaySeatSettingsHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_1039C;

  return HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t sub_63370()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_36648;

  return sub_447F8();
}

uint64_t sub_63430()
{
  sub_10824(v0 + 96, v3);
  sub_D084(v3, v3[3]);
  v1 = sub_168B24();
  sub_D13C(v3);
  return v1 & 1;
}

uint64_t sub_63498(uint64_t a1)
{
  v2 = type metadata accessor for SetCarPlaySeatSettingsParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_634F4()
{

  return sub_169164();
}

uint64_t sub_63524()
{
  v3 = v0[51];
  v2 = v0[52];
  v5 = v0[47];
  v4 = v0[48];
  v7 = v0[44];
  v6 = v0[45];
}

uint64_t sub_63540()
{
  v3 = v0[51];
  v2 = v0[52];
  v5 = v0[47];
  v4 = v0[48];
  v7 = v0[44];
  v6 = v0[45];
}

uint64_t sub_6355C@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

void *sub_6357C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5758(&qword_1E7DE0, &unk_16FB30);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v43[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v43[-v11];
  v13 = (*(a3 + 16))(a2, a3);
  v14 = a1 - 2;
  if (a1 >= 2)
  {
    v16 = 0;
    v55 = *(v13 + 16);
    v17 = v13 + 32;
    v50 = enum case for CAUVehicleLayoutKey.seat_3rdRow_right(_:);
    v49 = enum case for CAUVehicleLayoutKey.seat_3rdRow_left(_:);
    v48 = enum case for CAUVehicleLayoutKey.seat_3rdRow(_:);
    v47 = enum case for CAUVehicleLayoutKey.seat_2ndRow_right(_:);
    v46 = enum case for CAUVehicleLayoutKey.seat_2ndRow_left(_:);
    v45 = enum case for CAUVehicleLayoutKey.seat_2ndRow(_:);
    v51 = enum case for CAUVehicleLayoutKey.seat_front_right(_:);
    v52 = enum case for CAUVehicleLayoutKey.seat_front_left(_:);
    v44 = enum case for CAUVehicleLayoutKey.seat_front(_:);
    v15 = _swiftEmptyArrayStorage;
    v53 = v14;
    v54 = v13;
    while (1)
    {
      if (v55 == v16)
      {

        return v15;
      }

      if (v16 >= *(v13 + 16))
      {
        __break(1u);
        JUMPOUT(0x63A54);
      }

      sub_10824(v17, &v59);
      v18 = sub_169E84();
      v19 = v18;
      v20 = v52;
      switch(v14)
      {
        case 0uLL:
        case 2uLL:
          goto LABEL_15;
        case 1uLL:
        case 3uLL:
          v20 = v51;
          goto LABEL_15;
        case 4uLL:
          v20 = v44;
          goto LABEL_15;
        case 5uLL:
          v20 = v46;
          goto LABEL_15;
        case 6uLL:
          v20 = v47;
          goto LABEL_15;
        case 7uLL:
          v20 = v45;
          goto LABEL_15;
        case 8uLL:
          v20 = v49;
          goto LABEL_15;
        case 9uLL:
          v20 = v50;
          goto LABEL_15;
        case 0xAuLL:
          v20 = v48;
LABEL_15:
          (*(*(v18 - 8) + 104))(v12, v20, v18);
          v21 = 0;
          break;
        default:
          v21 = 1;
          break;
      }

      sub_5370(v12, v21, 1, v19);
      v22 = v60;
      v23 = v61;
      sub_D084(&v59, v60);
      v24 = (*(v23 + 16))(v22, v23);
      v26 = v25;
      sub_63A84(v12, v10);
      if (sub_9E2C(v10, 1, v19) == 1)
      {
        sub_63AF4(v10);
        v27 = 0;
        v28 = 0xE000000000000000;
      }

      else
      {
        v27 = sub_169E74();
        v28 = v29;
        (*(*(v19 - 8) + 8))(v10, v19);
      }

      if (v24 == v27 && v26 == v28)
      {

        sub_63AF4(v12);
      }

      else
      {
        v31 = sub_16AE54();

        sub_63AF4(v12);
        if ((v31 & 1) == 0)
        {
          sub_D13C(&v59);
          goto LABEL_31;
        }
      }

      sub_D124(&v59, v56);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v62 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1469F0(0, v15[2] + 1, 1);
        v15 = v62;
      }

      v34 = v15[2];
      v33 = v15[3];
      if (v34 >= v33 >> 1)
      {
        sub_1469F0((v33 > 1), v34 + 1, 1);
      }

      v35 = v57;
      v36 = v58;
      v37 = sub_2F8D0(v56, v57);
      v38 = *(*(v35 - 8) + 64);
      __chkstk_darwin(v37);
      v40 = &v43[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v41 + 16))(v40);
      sub_63B5C(v34, v40, &v62, v35, v36);
      sub_D13C(v56);
      v15 = v62;
LABEL_31:
      v14 = v53;
      v13 = v54;
      v17 += 40;
      ++v16;
    }
  }

  return v13;
}

uint64_t sub_63A84(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1E7DE0, &unk_16FB30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_63AF4(uint64_t a1)
{
  v2 = sub_5758(&qword_1E7DE0, &unk_16FB30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_63B5C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_10888(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_D124(&v12, v10 + 40 * a1 + 32);
}

uint64_t type metadata accessor for CarCommandsCannedDialogCATsSimple()
{
  result = qword_1E7DE8;
  if (!qword_1E7DE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_63C80(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_63CD4(a1, a2);
}

uint64_t sub_63CD4(uint64_t a1, uint64_t a2)
{
  v5 = sub_16A164();
  v6 = sub_5B1C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_57A0(a1, &v18 - v15);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_16A0D4();
  (*(v8 + 8))(a2, v2);
  sub_5810(a1);
  return v16;
}

uint64_t sub_63E30(uint64_t a1, uint64_t a2)
{
  v5 = sub_16A164();
  v6 = sub_5B1C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_16A0E4();
  (*(v8 + 8))(a2, v3);
  return v15;
}

uint64_t sub_63F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_5758(&qword_1E66C0, &qword_16FE00);
  v11 = sub_D414(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_67CD8(v14, v24);
  v15 = sub_16A884();
  v16 = sub_9E2C(v5, 1, v15);

  if (v16 == 1)
  {
    sub_4EAF4(v5, &qword_1E66C0, &qword_16FE00);
  }

  else
  {
    sub_16A874();
    sub_4EB50(v15);
    (*(v17 + 8))(v5, v15);
  }

  v19 = *(a5 + 16);
  v18 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (!v19)
  {
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_4EAF4(a3, &qword_1E66C0, &qword_16FE00);
    sub_67CA8();
    v21 = swift_allocObject();
    *(v21 + 16) = a4;
    *(v21 + 24) = a5;
    return swift_task_create();
  }

  swift_getObjectType();
  sub_16A844();
  swift_unknownObjectRelease();
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_16A6C4();
  sub_67CA8();
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;

  v22 = swift_task_create();

  sub_4EAF4(a3, &qword_1E66C0, &qword_16FE00);

  return v22;
}

uint64_t sub_64240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_5758(&qword_1E66C0, &qword_16FE00);
  v11 = sub_D414(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_67CD8(v14, v24);
  v15 = sub_16A884();
  v16 = sub_9E2C(v5, 1, v15);

  if (v16 == 1)
  {
    sub_4EAF4(v5, &qword_1E66C0, &qword_16FE00);
  }

  else
  {
    sub_16A874();
    sub_4EB50(v15);
    (*(v17 + 8))(v5, v15);
  }

  v19 = *(a5 + 16);
  v18 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (!v19)
  {
    if (a2)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_4EAF4(a3, &qword_1E66C0, &qword_16FE00);
    sub_67CA8();
    v22 = swift_allocObject();
    *(v22 + 16) = a4;
    *(v22 + 24) = a5;
    sub_5758(&qword_1E77D0, &unk_179A60);
    return swift_task_create();
  }

  swift_getObjectType();
  sub_16A844();
  swift_unknownObjectRelease();
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_16A6C4();
  sub_67CA8();
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;

  sub_5758(&qword_1E77D0, &unk_179A60);
  v21 = swift_task_create();

  sub_4EAF4(a3, &qword_1E66C0, &qword_16FE00);

  return v21;
}

uint64_t sub_64504()
{
  v1 = sub_5758(&qword_1E66C0, &qword_16FE00);
  v2 = sub_D414(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - v5;
  v7 = qword_1E7E38;
  if (*(v0 + qword_1E7E38))
  {
    v8 = *(v0 + qword_1E7E38);
  }

  else
  {
    v9 = sub_16A884();
    sub_5370(v6, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v0;

    v8 = sub_64240(0, 0, v6, &unk_16FE10, v10);
    v11 = *(v0 + v7);
    *(v0 + v7) = v8;
  }

  return v8;
}

uint64_t sub_64618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *(v4 + 16) = a1;
  v5 = *a4;
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  v7 = *(v5 + 416);
  v8 = type metadata accessor for CarCommandsWalletAppResolutionFlowStrategy();
  WitnessTable = swift_getWitnessTable();
  *v6 = v4;
  v6[1] = sub_64700;

  return sub_BE1C(v8, WitnessTable);
}

uint64_t sub_64700()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v2 = v1;
  v4 = *(v3 + 24);
  *v2 = *v0;
  *(v1 + 32) = v5;

  v6 = sub_D388();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_647EC()
{
  sub_D2DC();
  v1[11] = v2;
  v1[12] = v0;
  v1[10] = v3;
  v4 = sub_168B74();
  sub_D414(v4);
  v6 = *(v5 + 64);
  v1[13] = sub_D3C8();
  v7 = sub_1691E4();
  v1[14] = v7;
  v8 = *(v7 - 8);
  v1[15] = v8;
  v9 = *(v8 + 64);
  v1[16] = sub_D3C8();
  v10 = sub_16A164();
  sub_D414(v10);
  v12 = *(v11 + 64);
  v1[17] = sub_D3C8();
  v13 = sub_D388();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_648DC()
{
  sub_1696C();
  v1 = v0[11];
  sub_168FB4();
  sub_168F74();
  v2 = sub_168F94();

  if (v2)
  {
    v3 = v0[17];
    type metadata accessor for CarCommandsCATPatternsExecutor(0);
    sub_16A154();
    v0[18] = sub_16A094();
    v4 = swift_task_alloc();
    v0[19] = v4;
    *v4 = v0;
    v4[1] = sub_64A50;

    return sub_156570(19, _swiftEmptyArrayStorage);
  }

  else
  {
    v6 = swift_task_alloc();
    v0[24] = v6;
    *v6 = v0;
    v6[1] = sub_55C50;
    v7 = v0[11];
    v8 = v0[12];
    v9 = v0[10];

    return sub_647EC(v9, v7);
  }
}

uint64_t sub_64A50()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 152);
  *v4 = *v1;
  v3[20] = v7;
  v3[21] = v0;

  if (v0)
  {
    v8 = sub_55B50;
  }

  else
  {
    v9 = v3[18];

    v8 = sub_64B60;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_64B60()
{
  v1 = v0[16];
  v3 = v0[12];
  v2 = v0[13];
  swift_beginAccess();
  sub_6765C(v3 + 184, (v0 + 2));
  v4 = v0[6];
  sub_D084(v0 + 2, v0[5]);
  sub_168B34();
  sub_169164();
  v5 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)[1];
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_64C84;
  v7 = v0[20];
  v8 = v0[16];
  v9 = v0[10];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v9);
}

uint64_t sub_64C84()
{
  sub_1696C();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v5 = v4[22];
  v6 = v4[16];
  v7 = v4[15];
  v8 = v4[14];
  v9 = *v1;
  sub_D254();
  *v10 = v9;
  *(v11 + 184) = v0;

  (*(v7 + 8))(v6, v8);
  if (v0)
  {
    v12 = sub_55D94;
  }

  else
  {
    v12 = sub_55BD0;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_64DE0()
{
  sub_D2DC();
  v1[41] = v2;
  v1[42] = v0;
  v1[43] = *v0;
  v3 = sub_1693E4();
  v1[44] = v3;
  v4 = *(v3 - 8);
  v1[45] = v4;
  v5 = *(v4 + 64);
  v1[46] = sub_D3C8();
  v6 = sub_D388();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_64EB4()
{
  v1 = v0[42];
  v2 = *(v1 + 176);
  sub_16ACF4(71);
  v37._countAndFlagsBits = 0xD000000000000044;
  v37._object = 0x8000000000183F20;
  sub_16A744(v37);
  v35 = v1;
  v3 = v1 + qword_1F0B30;
  v38._countAndFlagsBits = *(v1 + qword_1F0B30);
  v0[47] = v38._countAndFlagsBits;
  v38._object = *(v3 + 8);
  v0[48] = v38._object;
  sub_16A744(v38);
  sub_57C30();
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v5 = v0[45];
  v4 = v0[46];
  v6 = v0[44];
  v7 = v0[41];
  v8 = v0[42];
  v9 = sub_16A584();
  v0[49] = sub_9DA0(v9, qword_1E65C0);
  sub_16A9A4();
  sub_57C04();
  sub_386D8(v10, v11, v12, v13, v14, v15, 43, 0, 0xE000000000000000);

  sub_6765C(v8 + 16, (v0 + 10));
  v16 = sub_D084(v0 + 10, v0[13]);
  sub_6765C(v8 + 56, (v0 + 15));
  v17 = sub_D084(v0 + 15, v0[18]);
  sub_6765C(v8 + 96, (v0 + 20));
  v18 = *v17;
  v19 = sub_DBB34(v0 + 20);
  sub_D13C(v0 + 20);
  v20 = *v16;
  sub_D2338(v19);
  sub_D13C(v0 + 15);
  sub_D13C(v0 + 10);
  sub_169384();
  sub_86E4(v4, &_swiftEmptySetSingleton, v0 + 30);
  (*(v5 + 8))(v4, v6);
  if (v0[33])
  {
    sub_D124(v0 + 15, (v0 + 25));
    v21 = swift_task_alloc();
    v0[50] = v21;
    *v21 = v0;
    v21[1] = sub_65210;
    v22 = v0[42];

    return sub_66024((v0 + 25));
  }

  else
  {
    sub_4EAF4((v0 + 30), &qword_1E5F80, &unk_16E7E0);
    v24 = *(v35 + 176);
    sub_16A9A4();
    sub_57C04();
    sub_386D8(v25, v26, v27, v28, v29, v30, 47, v31, 0x8000000000182F10);
    sub_168FB4();
    sub_168F74();
    v32 = v0[46];

    v33 = sub_120EC();

    return v34(v33);
  }
}

uint64_t sub_65210()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v2 = v1;
  v4 = *(v3 + 400);
  *v2 = *v0;
  *(v1 + 408) = v5;

  v6 = sub_D388();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_6551C()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 424);
  v3 = *(v1 + 416);
  v4 = *v0;
  sub_D254();
  *v5 = v4;

  v6 = sub_D388();

  return _swift_task_switch(v6, v7, v8);
}

void sub_6561C()
{
  v43 = v0 + 35;
  v1 = v0[49];
  v2 = v0[39];
  v3 = *(v0[42] + 176);
  sub_16ACF4(18);

  sub_16A1C4();
  v47._countAndFlagsBits = sub_16A7E4();
  sub_16A744(v47);

  sub_57C30();
  sub_16A9A4();
  sub_57C04();
  sub_386D8(v4, v5, v6, v7, v8, v9, 58, 0x6574726F70707553, 0xEF3A737070612064);

  v10 = sub_11B48C(v2);
  v11 = 0;
  sub_D434();
  v42 = v12;
LABEL_2:
  for (i = v11; v10 != i; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      sub_16AD04();
    }

    else
    {
      if (i >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_18;
      }

      v14 = *(v2 + 8 * i + 32);
    }

    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      return;
    }

    v15 = sub_16A1B4();
    if (v16)
    {
      v17 = v15;
      v18 = v16;
      sub_5758(&qword_1E5F70, &unk_16F3F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_16D3A0;
      *(inited + 32) = 0xD000000000000012;
      *(inited + 40) = v42;
      *(inited + 48) = 0x6C7070612E6D6F63;
      *(inited + 56) = 0xEF64737361702E65;
      v44[35] = v17;
      v44[36] = v18;
      v40 = swift_task_alloc();
      *(v40 + 16) = v43;
      v41 = sub_100D74(sub_D010, v40, inited);
      swift_setDeallocating();
      sub_EFFB0();

      if (v41)
      {
      }

      else
      {
        sub_16AD34();
        v20 = _swiftEmptyArrayStorage[2];
        sub_16AD64();
        sub_16AD74();
        sub_16AD44();
      }

      goto LABEL_2;
    }
  }

  v21 = v44[49];
  v22 = v44[42];

  v44[54] = _swiftEmptyArrayStorage;
  v23 = *(v22 + 176);
  sub_16ACF4(20);

  sub_D434();
  v45 = v24;
  v48._countAndFlagsBits = sub_16A7E4();
  sub_16A744(v48);

  sub_57C30();
  sub_16A9A4();
  sub_57C04();
  sub_386D8(v25, v26, v27, v28, v29, v30, 68, 0xD000000000000011, v45);

  v31 = qword_1F0B28;
  v44[55] = qword_1F0B28;
  v32 = sub_D084((v22 + v31), *(v22 + v31 + 24));
  v33 = v44[29];
  sub_D084(v44 + 25, v44[28]);
  v34 = *(v33 + 24);
  v35 = sub_67CB4();
  v37 = v36(v35, v33);
  v38 = *v32;
  v39 = swift_task_alloc();
  v44[56] = v39;
  *v39 = v44;
  v39[1] = sub_65A94;

  sub_CC4E4(v37);
}

uint64_t sub_65A94()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v6 = *(v5 + 448);
  *v4 = *v1;
  v3[57] = v7;
  v3[58] = v0;

  if (v0)
  {
    v8 = v3[54];

    v9 = sub_65E84;
  }

  else
  {
    v9 = sub_65BA4;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_65BA4()
{
  v1 = *(v0[57] + 16);
  v2 = sub_11B48C(v0[54]);
  v3 = v2;
  if (v1)
  {
    if (!v2)
    {
      v19 = v0[57];
      v20 = v0[54];
      v21 = v0[49];
      v22 = v0[42];
      v23 = v0[43];

      v24 = *(v22 + 176);
      sub_31350();
      sub_67C8C();
      sub_57C04();
      v32 = 77;
LABEL_12:
      sub_386D8(v25, v26, v27, v28, v29, v30, v32, v31, v54);
      v39 = *(v23 + 416);
      v40 = type metadata accessor for CarCommandsWalletAppResolutionFlowStrategy();
      sub_67C1C();
      WitnessTable = swift_getWitnessTable();
      sub_BB0C(v40, WitnessTable);
      goto LABEL_14;
    }

    v4 = sub_11B48C(v0[54]);
    v5 = v0[57];
    v6 = v0[54];
    if (v4)
    {
      v7 = v0[42];
      sub_66C04(v0[57], v0[54]);
      sub_67CB4();

LABEL_7:

      goto LABEL_14;
    }

    v33 = v0[57];
  }

  else
  {
    v8 = v0[57];

    v9 = v0[54];
    if (v3)
    {
      v10 = v0[49];
      v11 = *(v0[42] + 176);
      sub_31350();
      sub_67C8C();
      sub_57C04();
      sub_386D8(v12, v13, v14, v15, v16, v17, 74, v18, v54);
      sub_667F8(v9);
      goto LABEL_7;
    }
  }

  v34 = (v0[42] + v0[55]);
  v35 = *sub_D084(v34, v34[3]);
  v36 = sub_CCFA8()[2];

  v37 = v0[49];
  if (v36)
  {
    v23 = v0[43];
    v38 = *(v0[42] + 176);
    sub_16A9A4();
    v54 = 0x8000000000183FC0;
    sub_57C04();
    v32 = 85;
    goto LABEL_12;
  }

  v42 = *(v0[42] + 176);
  sub_16A9A4();
  sub_57C04();
  sub_386D8(v43, v44, v45, v46, v47, v48, 92, v49, 0x8000000000183F90);
  sub_168FB4();
  sub_168F74();
LABEL_14:
  sub_D13C(v0 + 25);
  v50 = v0[46];

  v51 = sub_120EC();

  return v52(v51);
}

uint64_t sub_66024(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = *v1;
  return _swift_task_switch(sub_6606C, 0, 0);
}

uint64_t sub_663E4()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *(v4 + 104);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v10 + 120) = v9;
  *(v10 + 128) = v0;

  if (v0)
  {
    v11 = sub_666F4;
  }

  else
  {
    v11 = sub_66504;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_66504()
{
  v1 = v0[15];
  if (*(v1 + 16) != 1)
  {
    v8 = v0[15];

    goto LABEL_5;
  }

  v3 = v0[10];
  v2 = v0[11];
  sub_6765C(v1 + 32, (v0 + 2));

  v4 = sub_D084(v0 + 2, v0[5]);
  sub_16A1C4();
  sub_67C60();

  sub_16A1A4();
  v5 = *v4;
  LOBYTE(v3) = sub_110748();
  v6 = sub_1109B4();

  if ((v3 & 1) == 0)
  {
    sub_D13C(v0 + 2);
    if (v6)
    {
      v12 = v0[11];

      goto LABEL_8;
    }

LABEL_5:
    v10 = v0[10];
    v9 = v0[11];
    v11 = v0[8];
    sub_67D08(v0[9]);
    sub_67C1C();
    swift_getWitnessTable();
    sub_67C6C();
    sub_67C60();

    goto LABEL_9;
  }

  v7 = v0[11];

  sub_D13C(v0 + 2);
LABEL_8:
  v13 = v0[12];
  v14 = v0[8];
  v15 = v0[9];
  v16 = *(v14 + 176);
  sub_31350();
  sub_67CC0();
  sub_67C54();
  sub_386D8(v17, v18, v19, v20, v21, v22, 108, v23, v38);
  v24 = *(v14 + 176);
  sub_31350();
  sub_67CC0();
  sub_67C54();
  sub_386D8(v25, v26, v27, v28, v29, v30, 109, v31, v39);
  v32 = *(v15 + 416);
  v33 = type metadata accessor for CarCommandsWalletAppResolutionFlowStrategy();
  sub_67C1C();
  WitnessTable = swift_getWitnessTable();
  sub_BB0C(v33, WitnessTable);
LABEL_9:
  v35 = sub_120EC();

  return v36(v35);
}

uint64_t sub_666F4()
{
  v1 = v0[16];
  v2 = v0[12];
  v3 = *(v0[8] + 176);
  sub_16A9A4();
  sub_67C54();
  sub_386D8(v4, v5, v6, v7, v8, v9, 113, v10, 0x8000000000183E00);

  v12 = v0[10];
  v11 = v0[11];
  v13 = v0[8];
  sub_67D08(v0[9]);
  sub_67C1C();
  swift_getWitnessTable();
  sub_67C6C();
  sub_67C60();

  v14 = sub_120EC();

  return v15(v14);
}

uint64_t sub_667F8(uint64_t a1)
{
  v2 = v1;
  if (sub_11B48C(a1) != 1)
  {
    v12 = *(v1 + 176);
    sub_16ACF4(44);

    sub_D434();
    v45 = v13;
    sub_16A1C4();
    v46._countAndFlagsBits = sub_16A7E4();
    sub_16A744(v46);

    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v14 = sub_16A584();
    sub_9DA0(v14, qword_1E65C0);
    sub_16A9A4();
    sub_67C54();
    sub_386D8(v15, v16, v17, v18, v19, v20, 121, 0xD00000000000002ALL, v45);

    v21 = sub_168FB4();
    sub_5758(&qword_1EA2B0, &qword_16DFB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_16D440;
    *(inited + 32) = sub_F3020();

    sub_13F914(inited);
    v23 = v21;
    sub_168F84();
    sub_67C60();

    return v23;
  }

  v4 = a1 & 0xC000000000000001;
  sub_1487EC(0, (a1 & 0xC000000000000001) == 0, a1);
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_67D20();
  }

  else
  {
    v5 = *(a1 + 32);
  }

  v6 = sub_16A1B4();
  v8 = v7;

  if (v8)
  {

    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      v10 = *(v2 + 176);
      sub_16ACF4(24);

      sub_D434();
      v44 = v11;
      if (v4)
      {
        sub_67D20();
      }

      else
      {
        v34 = *(a1 + 32);
      }

      sub_16A1C4();
      sub_67604();
      v47._countAndFlagsBits = sub_16AE24();
      sub_16A744(v47);

      if (qword_1E58E8 != -1)
      {
        sub_9ED4();
      }

      v35 = sub_16A584();
      v36 = sub_9DA0(v35, qword_1E65C0);
      sub_16A9A4();
      sub_67C54();
      v23 = v36;
      sub_386D8(v37, v38, v39, v40, v41, v42, 130, 0xD000000000000016, v44);

      if (v4)
      {
        sub_67D20();
      }

      else
      {
        v43 = *(a1 + 32);
      }

      sub_168FB4();
      sub_67C60();
      sub_168FA4();
      sub_67C60();

      return v23;
    }
  }

  v24 = *(v2 + 176);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v25 = sub_16A584();
  sub_9DA0(v25, qword_1E65C0);
  sub_16A9A4();
  sub_67C54();
  sub_386D8(v26, v27, v28, v29, v30, v31, 126, v32, 0x8000000000183CD0);
  sub_168FB4();
  return sub_168F74();
}

uint64_t sub_66C04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v26 = *v2;
  p_weak_ivar_lyt = (&SetCarPlayClimateRCHFlowStrategy + 56);
  if (*(a1 + 16) != 1)
  {
    goto LABEL_9;
  }

  v7 = sub_11B48C(a2);
  p_weak_ivar_lyt = &SetCarPlayClimateRCHFlowStrategy.weak_ivar_lyt;
  if (v7 != 1)
  {
    goto LABEL_9;
  }

  v8 = v2[22];
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v9 = sub_16A584();
  sub_9DA0(v9, qword_1E65C0);
  v10 = sub_16A9A4();
  sub_386D8(v10, v8 | 0x80000, 0xD00000000000009BLL, 0x8000000000183A60, 0xD000000000000046, 0x8000000000183B00, 136, 0xD00000000000006CLL, 0x8000000000183B80);
  sub_6765C(a1 + 32, v27);
  v11 = sub_D084(v27, v27[3]);
  sub_1487EC(0, (a2 & 0xC000000000000001) == 0, a2);
  if ((a2 & 0xC000000000000001) != 0)
  {
    sub_67D20();
  }

  else
  {
    v12 = *(a2 + 32);
  }

  v13 = *v11;
  v14 = sub_110748();
  v15 = sub_1109B4();

  sub_D13C(v27);
  p_weak_ivar_lyt = &SetCarPlayClimateRCHFlowStrategy.weak_ivar_lyt;
  if ((v14 & 1) != 0 || v15)
  {
    v22 = v3[22];
    v23 = sub_16A9A4();
    sub_386D8(v23, v22 | 0x80000, 0xD00000000000009BLL, 0x8000000000183A60, 0xD000000000000046, 0x8000000000183B00, 138, 0xD000000000000077, 0x8000000000183BF0);
    v24 = sub_67D08(v26);
    sub_67C1C();
    WitnessTable = swift_getWitnessTable();
    return sub_BB0C(v24, WitnessTable);
  }

  else
  {
LABEL_9:
    v16 = v3[22];
    if (p_weak_ivar_lyt[285] != -1)
    {
      sub_9ED4();
    }

    v17 = sub_16A584();
    sub_9DA0(v17, qword_1E65C0);
    v18 = sub_16A9A4();
    sub_386D8(v18, v16 | 0x80000, 0xD00000000000009BLL, 0x8000000000183A60, 0xD000000000000046, 0x8000000000183B00, 143, 0xD00000000000002FLL, 0x8000000000183B50);
    sub_5758(&qword_1EA2B0, &qword_16DFB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_16D440;
    *(inited + 32) = sub_F3020();
    v27[0] = a2;

    sub_13F914(inited);
    sub_168FB4();
    sub_67CB4();
    v20 = sub_168F84();
  }

  return v20;
}

uint64_t sub_66F28()
{
  sub_D13C((v0 + qword_1F0B28));
  v1 = *(v0 + qword_1E7E38);

  v2 = *(v0 + qword_1F0B30 + 8);
}

uint64_t *sub_66F7C()
{
  v0 = sub_3D044();
  sub_D13C((v0 + qword_1F0B28));
  v1 = *(v0 + qword_1E7E38);

  v2 = *(v0 + qword_1F0B30 + 8);

  return v0;
}

uint64_t sub_66FD8()
{
  v0 = sub_66F7C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_67044()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_43F64;

  return sub_64DE0();
}

uint64_t sub_670DC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10A9C;

  return sub_647EC();
}

uint64_t sub_67188()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_B838();
}

uint64_t sub_671E0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  swift_getWitnessTable();
  *v3 = v1;
  v3[1] = sub_10A9C;

  return sub_B93C();
}

uint64_t sub_672BC()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_B1B4();
}

uint64_t sub_67314()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  swift_getWitnessTable();
  *v3 = v1;
  v3[1] = sub_10A9C;

  return sub_A2A8();
}

uint64_t sub_67428(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_67520;

  return v7(a1);
}

uint64_t sub_67520()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_D254();
  *v4 = v3;

  sub_D37C();

  return v5();
}

unint64_t sub_67604()
{
  result = qword_1E5FA8[0];
  if (!qword_1E5FA8[0])
  {
    sub_16A1C4();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1E5FA8);
  }

  return result;
}

uint64_t sub_6765C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  sub_4EB50(v3);
  (*v4)(a2);
  return a2;
}

uint64_t sub_676BC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_676FC()
{
  sub_1696C();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = sub_16998(v6);
  *v7 = v8;
  v7[1] = sub_1039C;

  return sub_64618(v2, v3, v4, v5);
}

uint64_t sub_677A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1E66C0, &qword_16FE00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_67814(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_67908;

  return v6(v2 + 16);
}

uint64_t sub_67908()
{
  sub_1696C();
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *v0;
  sub_D254();
  *v5 = v4;

  *v3 = *(v1 + 16);
  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_67A2C()
{
  v1 = *(v0 + 24);

  sub_67CA8();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_67A60()
{
  sub_1696C();
  sub_67CFC();
  v0 = swift_task_alloc();
  v1 = sub_16998(v0);
  *v1 = v2;
  v3 = sub_67C34(v1);

  return v4(v3);
}

uint64_t sub_67AF0()
{
  sub_1696C();
  sub_67CFC();
  v0 = swift_task_alloc();
  v1 = sub_16998(v0);
  *v1 = v2;
  v3 = sub_67C34(v1);

  return v4(v3);
}

uint64_t sub_67B80()
{
  sub_1696C();
  sub_67CFC();
  v0 = swift_task_alloc();
  v1 = sub_16998(v0);
  *v1 = v2;
  v3 = sub_67C34(v1);

  return v4(v3);
}

uint64_t sub_67C34(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_67C6C()
{

  return sub_BB40(v1, v0);
}

uint64_t sub_67CD8@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_677A4(v2, &a2 - a1);
}

uint64_t sub_67D08@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 416);

  return type metadata accessor for CarCommandsWalletAppResolutionFlowStrategy();
}

uint64_t sub_67D20()
{

  return sub_16AD04();
}

uint64_t sub_67D38()
{
  v0 = sub_168B74();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  sub_168B34();
  return sub_169164();
}

uint64_t sub_67DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_5758(&qword_1E5F78, &unk_16D400);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v10 - v7;

  sub_169194();

  sub_169184();
  sub_1691D4();
  sub_67EF4(a4, v8);
  return sub_1691B4();
}

uint64_t sub_67EF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1E5F78, &unk_16D400);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_67F64(uint64_t a1, uint64_t *a2)
{
  result = sub_11B48C(a1);
  v5 = result;
  v6 = 0;
  v19 = a1 & 0xC000000000000001;
  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = a1 + 32;
  v9 = &off_1E2000;
  while (1)
  {
LABEL_2:
    if (v6 == v5)
    {

      return _swiftEmptyArrayStorage;
    }

    if (v19)
    {
      result = sub_16AD04();
    }

    else
    {
      if (v6 >= *(v7 + 16))
      {
        goto LABEL_15;
      }

      result = *(v8 + 8 * v6);
    }

    v10 = result;
    if (__OFADD__(v6++, 1))
    {
      break;
    }

    v12 = *a2;

    v13 = [v10 v9[211]];
    v14 = *(v12 + 16);
    v15 = (v12 + 32);
    while (v14)
    {
      v16 = *v15++;
      --v14;
      if (v16 == v13)
      {

        sub_16AD34();
        v17 = v9;
        v18 = _swiftEmptyArrayStorage[2];
        sub_16AD64();
        v9 = v17;
        sub_16AD74();
        result = sub_16AD44();
        goto LABEL_2;
      }
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_680C0(unint64_t a1, uint64_t a2, void *a3)
{
  v40 = a3;
  v6 = sub_16A9B4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_6B7F4(v3);
  if (v11)
  {
    v12 = v11;
    v37 = v10;
    v38 = v7;
    v39 = v6;
    HIDWORD(v36) = a1;
    v13 = sub_11B48C(v11);
    v14 = 0;
    v15 = v12 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v13 == v14)
      {

        goto LABEL_16;
      }

      if ((v12 & 0xC000000000000001) != 0)
      {
        v16 = sub_16AD04();
      }

      else
      {
        if (v14 >= *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_28;
        }

        v16 = *(v12 + 8 * v14 + 32);
      }

      a1 = v16;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v17 = [v16 identifier];
      v18 = sub_16A664();
      v20 = v19;

      v21 = v40;
      if (v18 == a2 && v20 == v40)
      {

        goto LABEL_22;
      }

      v6 = sub_16AE54();

      if (v6)
      {
        break;
      }

      ++v14;
    }

    v21 = v40;
LABEL_22:
    v42 = 0;
    v43 = 0xE000000000000000;
    sub_16ACF4(59);
    v46._countAndFlagsBits = 0xD000000000000021;
    v46._object = 0x8000000000184270;
    sub_16A744(v46);
    v27 = BYTE4(v36) & 1;
    v41 = BYTE4(v36) & 1;
    sub_16AD84();
    v47._countAndFlagsBits = 0xD000000000000016;
    v47._object = 0x80000000001842A0;
    sub_16A744(v47);
    v48._countAndFlagsBits = a2;
    v48._object = v21;
    sub_16A744(v48);
    v28 = v42;
    v29 = v43;
    v30 = v39;
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v31 = sub_16A584();
    sub_9DA0(v31, qword_1E65C0);
    v32 = sub_16A9A4();
    sub_386D8(v32, 0x200000000uLL, 0xD00000000000008DLL, 0x8000000000184180, 0xD000000000000020, 0x8000000000184210, 20, v28, v29);

    v34 = v37;
    v33 = v38;
    v35 = &enum case for CAFMediaSource.SeekDirection.previous(_:);
    if (v27)
    {
      v35 = &enum case for CAFMediaSource.SeekDirection.next(_:);
    }

    (*(v38 + 104))(v37, *v35, v30);
    *(swift_allocObject() + 16) = v27;
    sub_16A9C4();

    return (*(v33 + 8))(v34, v30);
  }

  else
  {
LABEL_16:
    v15 = 0xD000000000000020;
    a1 = "gin18SnippetFactoryBase";
    v13 = "Radio/CAFMedia+CarRadio.swift";
    v42 = 0;
    v43 = 0xE000000000000000;
    sub_16ACF4(39);

    sub_D434();
    v42 = 0xD000000000000025;
    v43 = v23;
    v45._countAndFlagsBits = a2;
    v45._object = v40;
    sub_16A744(v45);
    v12 = v42;
    v6 = v43;
    if (qword_1E58E8 != -1)
    {
LABEL_29:
      sub_9ED4();
    }

    v24 = sub_16A584();
    sub_9DA0(v24, qword_1E65C0);
    v25 = sub_16A9A4();
    sub_386D8(v25, 0x200000000uLL, v15 + 109, a1 | 0x8000000000000000, 0xD000000000000020, (v13 | 0x8000000000000000), 16, v12, v6);
  }
}

uint64_t sub_68564(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    sub_16ACF4(48);
    v6._countAndFlagsBits = 0xD00000000000002ALL;
    v6._object = 0x80000000001842F0;
    sub_16A744(v6);
    sub_16AD84();
    v7._countAndFlagsBits = 8250;
    v7._object = 0xE200000000000000;
    sub_16A744(v7);
    sub_5758(&qword_1E6360, &qword_16E3B0);
    sub_16AD84();
    if (qword_1E58E8 != -1)
    {
      swift_once();
    }

    v1 = sub_16A584();
    sub_9DA0(v1, qword_1E65C0);
    v2 = sub_16A9A4();
    sub_386D8(v2, 0x200000000uLL, 0xD00000000000008DLL, 0x8000000000184180, 0xD000000000000020, 0x8000000000184210, 23, 0, 0xE000000000000000);
  }

  else
  {
    sub_16ACF4(45);
    v8._countAndFlagsBits = 0xD00000000000002BLL;
    v8._object = 0x80000000001842C0;
    sub_16A744(v8);
    sub_16AD84();
    if (qword_1E58E8 != -1)
    {
      swift_once();
    }

    v4 = sub_16A584();
    sub_9DA0(v4, qword_1E65C0);
    v5 = sub_16A9A4();
    sub_386D8(v5, 0x200000000uLL, 0xD00000000000008DLL, 0x8000000000184180, 0xD000000000000020, 0x8000000000184210, 25, 0, 0xE000000000000000);
  }
}

uint64_t sub_6880C(uint64_t a1)
{
  *(v2 + 224) = a1;
  *(v2 + 232) = v1;
  return sub_D2B0();
}

uint64_t sub_68820()
{
  v1 = v0[28];
  sub_37474();
  sub_16ACF4(35);

  sub_D434();
  v28 = v2;
  sub_10824(v1, (v0 + 18));
  v0[30] = sub_5758(&qword_1E8000, &qword_16FF20);
  v30._countAndFlagsBits = sub_16A694();
  sub_16A744(v30);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v3 = v0[28];
  v4 = sub_16A584();
  v0[31] = sub_9DA0(v4, qword_1E65C0);
  v5 = sub_16A9A4();
  sub_386D8(v5, 0x800uLL, 0xD00000000000008DLL, 0x8000000000184180, 0xD000000000000013, 0x8000000000184440, 31, 0xD000000000000021, v28);

  v6 = *sub_D084(v3, v3[3]);
  v0[32] = sub_5B65C();
  if (v7)
  {
    v8 = sub_D084(v0[28], *(v0[28] + 24));
    v0[38] = sub_11D80(*v8);
    v0[39] = v9;
    if (v9)
    {
      v10 = v0[29];
      v11 = [*sub_D084(v0[28] *(v0[28] + 24))];
      v12 = sub_5B994(v11);
      v13 = sub_6A210(v12);
      v0[40] = v13;
      if (v13)
      {
        v14 = swift_task_alloc();
        v0[41] = v14;
        *v14 = v0;
        v15 = sub_6B954(v14);

        return sub_95F70(v15);
      }

      v24 = v0[30];
      v25 = v0[28];

      type metadata accessor for CarCommandsError();
      sub_11D28();
      sub_16924();
      sub_6B99C();
      sub_37474();
      sub_16ACF4(70);
      v0[25] = 0xD000000000000021;
      v0[26] = v28;
      v32._countAndFlagsBits = 0xD000000000000024;
      v32._object = 0x80000000001844E0;
      sub_16A744(v32);
      sub_16AD84();
      sub_6B9DC(" and no media sources on the car");
      v22 = v0[25];
      v26 = v0[26];
    }

    else
    {
      v20 = v0[30];
      v21 = v0[28];
      type metadata accessor for CarCommandsError();
      sub_11D28();
      sub_16924();
      sub_6B99C();
      sub_37474();
      sub_16ACF4(69);
      v0[23] = 0xD000000000000021;
      v0[24] = v28;
      v31._countAndFlagsBits = 0xD000000000000017;
      v31._object = 0x8000000000184490;
      sub_16A744(v31);
      sub_16AD84();
      sub_6B9FC(". Siri cannot tune to a station without one.");
      v22 = v0[23];
      v23 = v0[24];
    }

    sub_6B9BC(v22);
    swift_willThrow();
    sub_D37C();

    return v27();
  }

  else
  {
    v17 = swift_task_alloc();
    v0[33] = v17;
    *v17 = v0;
    v17[1] = sub_68BEC;
    v18 = v0[28];
    v19 = v0[29];

    return sub_69D3C(v18);
  }
}

uint64_t sub_68BEC()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 264);
  *v3 = *v1;
  *(v2 + 272) = v6;
  *(v2 + 280) = v7;

  if (v0)
  {
    sub_D37C();

    return v8();
  }

  else
  {

    return _swift_task_switch(sub_68D0C, 0, 0);
  }
}

uint64_t sub_68D0C()
{
  v1 = *(v0 + 280);
  if (v1)
  {
    v2 = *(v0 + 272);
    v3 = *(v0 + 248);
    v4 = *(v0 + 256);
    sub_3060C();
    sub_16ACF4(45);

    sub_D434();
    v35 = v5;
    *(v0 + 216) = v4;
    v36._countAndFlagsBits = sub_16AE24();
    sub_16A744(v36);

    v37._countAndFlagsBits = 0x72756F73206E6F20;
    v37._object = 0xEF203A6469206563;
    sub_16A744(v37);
    v38._countAndFlagsBits = v2;
    v38._object = v1;
    sub_16A744(v38);
    v6 = sub_16A9A4();
    sub_386D8(v6, 0x800uLL, 0xD00000000000008DLL, 0x8000000000184180, 0xD000000000000013, 0x8000000000184440, 36, 0x100000000000001ALL, v35);

    if (v4 < 0)
    {
      __break(1u);
    }

    else
    {
      v8 = *(v0 + 256);
      if (!HIDWORD(v8))
      {
        v9 = *(v0 + 272);
        v10 = *(v0 + 232);
        v11 = sub_16A644();
        *(v0 + 288) = v11;

        *(v0 + 16) = v0;
        *(v0 + 24) = sub_69154;
        v12 = swift_continuation_init();
        *(v0 + 136) = sub_5758(&qword_1E7FF8, &qword_16FF08);
        *(v0 + 80) = _NSConcreteStackBlock;
        *(v0 + 88) = 1107296256;
        sub_6B940();
        *(v0 + 104) = v13;
        *(v0 + 112) = v12;
        [v10 tuneToFrequency:v8 inSourceWithIdentifier:v11 completion:v0 + 80];
        sub_375B0();

        return _swift_continuation_await(v7);
      }
    }

    __break(1u);
    return _swift_continuation_await(v7);
  }

  v15 = sub_D084(*(v0 + 224), *(*(v0 + 224) + 24));
  *(v0 + 304) = sub_11D80(*v15);
  *(v0 + 312) = v16;
  if (!v16)
  {
    v25 = *(v0 + 240);
    type metadata accessor for CarCommandsError();
    sub_11D28();
    sub_16924();
    sub_6B99C();
    sub_3060C();
    sub_16ACF4(69);
    *(v0 + 184) = v33;
    *(v0 + 192) = v34;
    v39._countAndFlagsBits = 0xD000000000000017;
    v39._object = 0x8000000000184490;
    sub_16A744(v39);
    sub_16AD84();
    sub_6B9FC(". Siri cannot tune to a station without one.");
    v26 = *(v0 + 184);
    v27 = *(v0 + 192);
    goto LABEL_14;
  }

  v17 = *(v0 + 232);
  v18 = [*sub_D084(*(v0 + 224) *(*(v0 + 224) + 24))];
  v19 = sub_5B994(v18);
  v20 = sub_6A210(v19);
  *(v0 + 320) = v20;
  if (!v20)
  {
    v28 = *(v0 + 240);
    v29 = *(v0 + 224);

    type metadata accessor for CarCommandsError();
    sub_11D28();
    sub_16924();
    sub_6B99C();
    sub_3060C();
    sub_16ACF4(70);
    *(v0 + 200) = v33;
    *(v0 + 208) = v34;
    v40._countAndFlagsBits = 0xD000000000000024;
    v40._object = 0x80000000001844E0;
    sub_16A744(v40);
    sub_16AD84();
    sub_6B9DC(" and no media sources on the car");
    v26 = *(v0 + 200);
    v30 = *(v0 + 208);
LABEL_14:
    sub_6B9BC(v26);
    swift_willThrow();
    sub_D37C();
    sub_375B0();

    __asm { BRAA            X1, X16 }
  }

  v21 = swift_task_alloc();
  *(v0 + 328) = v21;
  *v21 = v0;
  sub_6B954(v21);
  sub_375B0();

  return sub_95F70(v22);
}

uint64_t sub_69154()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 296) = v4;
  if (v4)
  {
    v5 = sub_69B14;
  }

  else
  {
    v5 = sub_69254;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_69254()
{
  sub_D2DC();

  sub_D37C();

  return v1();
}

uint64_t sub_692B0()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 328);
  *v3 = *v1;
  *(v2 + 336) = v6;
  *(v2 + 344) = v0;

  if (v0)
  {
    v7 = sub_69B7C;
  }

  else
  {
    v7 = sub_693B4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_693B4()
{
  sub_10B8C();
  v2 = v0[39];
  v1 = v0[40];
  if (*(v0[42] + 16))
  {
    v3 = v0[40];

    v4 = swift_task_alloc();
    v0[44] = v4;
    *v4 = v0;
    v4[1] = sub_69570;
    v5 = v0[42];
    v6 = v0[38];

    return sub_9677C(v6, v2, v5);
  }

  else
  {

    type metadata accessor for CarCommandsError();
    sub_11D28();
    sub_16924();
    v9 = v8;
    sub_16ACF4(36);

    sub_D434();
    v15 = v10;
    sub_6B86C();
    v11 = sub_16A7E4();
    v13 = v12;

    v17._countAndFlagsBits = v11;
    v17._object = v13;
    sub_16A744(v17);

    *v9 = 0xD000000000000022;
    v9[1] = v15;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_D37C();

    return v14();
  }
}

uint64_t sub_69570()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 352);
  *v4 = *v1;
  v3[45] = v7;
  v3[46] = v8;
  v3[47] = v0;

  if (v0)
  {
    v9 = sub_69BE0;
  }

  else
  {
    v10 = v3[42];

    v9 = sub_69680;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_69680()
{
  sub_10B8C();
  v2 = *(v0 + 360);
  if (!v2)
  {
    v10 = *(v0 + 304);
    v9 = *(v0 + 312);
    type metadata accessor for CarCommandsError();
    sub_11D28();
    swift_allocError();
    v12 = v11;
    sub_3060C();
    sub_16ACF4(49);

    sub_D434();
    v24 = v13;
    v25._countAndFlagsBits = v10;
    v25._object = v9;
    sub_16A744(v25);

    *v12 = 0xD00000000000002FLL;
    v12[1] = v24;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_D37C();
    sub_375E4();

    __asm { BRAA            X1, X16 }
  }

  v3 = *(v0 + 368);
  v4 = [*(v0 + 360) identifier];
  sub_16A664();
  sub_6B99C();

  *(v0 + 384) = v1;
  sub_9694C(v3, v2);
  *(v0 + 392) = v5;
  v6 = *(v0 + 312);
  if (v5)
  {
    v7 = *(v0 + 312);

    v8 = swift_task_alloc();
    *(v0 + 400) = v8;
    *v8 = v0;
    v8[1] = sub_69898;
  }

  else
  {
    v16 = swift_task_alloc();
    *(v0 + 416) = v16;
    *v16 = v0;
    v16[1] = sub_69A04;
    v17 = *(v0 + 304);
  }

  sub_6B9A8();
  sub_375E4();

  return sub_6A518(v18, v19, v20, v21);
}

uint64_t sub_69898()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 400);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  v3[51] = v0;

  if (v0)
  {
    v9 = sub_69C48;
  }

  else
  {
    v10 = v3[48];
    v11 = v3[49];

    v9 = sub_699A4;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_699A4()
{
  sub_D2DC();
  v1 = *(v0 + 360);

  sub_D37C();

  return v2();
}

uint64_t sub_69A04()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_10AA4();
  *v4 = v3;
  v6 = *(v5 + 416);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  v3[53] = v0;

  if (v0)
  {
    v9 = sub_69CC0;
  }

  else
  {
    v10 = v3[48];
    v11 = v3[39];

    v9 = sub_6B93C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_69B14()
{
  sub_1696C();
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);
  swift_willThrow();

  v3 = *(v0 + 296);
  sub_D37C();

  return v4();
}

uint64_t sub_69B7C()
{
  sub_D2DC();
  v2 = v0[39];
  v1 = v0[40];

  v3 = v0[43];
  sub_D37C();

  return v4();
}

uint64_t sub_69BE0()
{
  sub_D2DC();
  v1 = v0[42];
  v2 = v0[39];

  v3 = v0[47];
  sub_D37C();

  return v4();
}

uint64_t sub_69C48()
{
  sub_1696C();
  v1 = v0[48];
  v2 = v0[49];
  v4 = v0[45];
  v3 = v0[46];

  v5 = v0[51];
  sub_D37C();

  return v6();
}

uint64_t sub_69CC0()
{
  sub_1696C();
  v1 = v0[48];
  v3 = v0[45];
  v2 = v0[46];
  v4 = v0[39];

  v5 = v0[53];
  sub_D37C();

  return v6();
}

uint64_t sub_69D3C(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return sub_D2B0();
}

uint64_t sub_69D50()
{
  sub_10B8C();
  v2 = *(v0 + 32);
  v3 = sub_D084(v2, v2[3]);
  sub_11D80(*v3);
  if (v4)
  {

    v5 = "gin18SnippetFactoryBase";
    v6 = "✅ Tuning via frequency: ";
    v1 = 0x80000000001846A0;
    if (qword_1E58E8 != -1)
    {
LABEL_35:
      sub_9ED4();
    }

    v7 = sub_16A584();
    sub_9DA0(v7, qword_1E65C0);
    v8 = sub_16A9A4();
    sub_386D8(v8, 0x800uLL, 0xD00000000000008DLL, v5 | 0x8000000000000000, 0xD00000000000002BLL, (v6 | 0x8000000000000000), 99, 0xD00000000000003BLL, v1);
    goto LABEL_10;
  }

  v9 = [*sub_D084(*(v0 + 32) v2[3])];
  v10 = sub_5B994(v9);
  if (v10 == 6 || (v11 = v10, v12 = *sub_D084(*(v0 + 32), v2[3]), sub_5B65C(), (v13 & 1) != 0))
  {
    v14 = *(v0 + 32);
    sub_3060C();
    sub_16ACF4(81);
    *(v0 + 16) = v42;
    *(v0 + 24) = v43;
    v45._countAndFlagsBits = 0x3A6E6F6974617453;
    v45._object = 0xE900000000000020;
    sub_16A744(v45);
    sub_5758(&qword_1E8000, &qword_16FF20);
    sub_16AD84();
    v46._countAndFlagsBits = 0xD000000000000046;
    v46._object = 0x80000000001845F0;
    sub_16A744(v46);
    v16 = *(v0 + 16);
    v15 = *(v0 + 24);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v17 = sub_16A584();
    sub_9DA0(v17, qword_1E65C0);
    sub_16A9A4();
    sub_6B97C();
    v24 = 105;
LABEL_9:
    sub_386D8(v18, v19, v20, v21, v22, v23, v24, v16, v41);

LABEL_10:
    v25 = 0;
    v5 = 0;
    goto LABEL_11;
  }

  v28 = *(v0 + 40);
  v29 = sub_6AE30(v11);
  if (!v29)
  {
    sub_3060C();
    sub_16ACF4(75);
    *(v0 + 16) = v42;
    *(v0 + 24) = v43;
    v47._countAndFlagsBits = 0xD000000000000024;
    v47._object = 0x8000000000184640;
    sub_16A744(v47);
    *(v0 + 48) = v11;
    sub_16AD84();
    v48._countAndFlagsBits = 0xD000000000000025;
    v48._object = 0x8000000000184670;
    sub_16A744(v48);
    v16 = *(v0 + 16);
    v33 = *(v0 + 24);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v34 = sub_16A584();
    sub_9DA0(v34, qword_1E65C0);
    sub_16A9A4();
    sub_6B97C();
    v24 = 110;
    goto LABEL_9;
  }

  v30 = v29;
  v5 = sub_11B48C(v29);
  v6 = 0;
  v31 = v30 & 0xC000000000000001;
  while (v5 != v6)
  {
    if (v31)
    {
      v32 = sub_16AD04();
    }

    else
    {
      if (v6 >= *(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_34;
      }

      v32 = *(v30 + 8 * v6 + 32);
    }

    v1 = v32;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if ([v32 mediaSourceSemanticType] == 8)
    {

      v39 = [v1 identifier];
      v25 = sub_16A664();
      v5 = v40;

      goto LABEL_11;
    }

    ++v6;
  }

  if (v5)
  {
    sub_1487EC(0, v31 == 0, v30);
    if (v31)
    {
      v35 = sub_16AD04();
    }

    else
    {
      v35 = *(v30 + 32);
    }

    v36 = v35;

    v37 = [v36 identifier];

    v25 = sub_16A664();
    v5 = v38;
  }

  else
  {

    v25 = 0;
  }

LABEL_11:
  v26 = *(v0 + 8);

  return v26(v25, v5);
}

uint64_t sub_6A210(char a1)
{
  if (a1 != 6)
  {
    v2 = sub_6AE30(a1);
    if (v2)
    {
      v3 = v2;

      sub_16ACF4(52);
      v15._object = 0x80000000001847B0;
      v15._countAndFlagsBits = 0xD000000000000012;
      sub_16A744(v15);
      sub_6B86C();
      v4 = sub_16A7E4();
      v6 = v5;

      v16._countAndFlagsBits = v4;
      v16._object = v6;
      sub_16A744(v16);

      v17._countAndFlagsBits = 0x6162206D6F726620;
      v17._object = 0xEC000000203A646ELL;
      sub_16A744(v17);
      sub_16AD84();
      v18._object = 0x80000000001847D0;
      v18._countAndFlagsBits = 0xD000000000000012;
      sub_16A744(v18);
      if (qword_1E58E8 != -1)
      {
        swift_once();
      }

      v7 = sub_16A584();
      sub_9DA0(v7, qword_1E65C0);
      v8 = sub_16A9A4();
      sub_386D8(v8, 0x800uLL, 0xD00000000000008DLL, 0x8000000000184180, 0xD000000000000017, 0x8000000000184730, 134, 0, 0xE000000000000000);
LABEL_10:

      return v3;
    }
  }

  v3 = sub_6B7F4(v1);
  if (v3)
  {

    sub_16ACF4(88);
    v19._object = 0x8000000000184750;
    v19._countAndFlagsBits = 0x1000000000000056;
    sub_16A744(v19);
    sub_6B86C();
    v9 = sub_16A7E4();
    v11 = v10;

    v20._countAndFlagsBits = v9;
    v20._object = v11;
    sub_16A744(v20);

    if (qword_1E58E8 != -1)
    {
      swift_once();
    }

    v12 = sub_16A584();
    sub_9DA0(v12, qword_1E65C0);
    v13 = sub_16A9A4();
    sub_386D8(v13, 0x800uLL, 0xD00000000000008DLL, 0x8000000000184180, 0xD000000000000017, 0x8000000000184730, 137, 0, 0xE000000000000000);
    goto LABEL_10;
  }

  return v3;
}

uint64_t sub_6A518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[21] = a4;
  v5[22] = v4;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  return _swift_task_switch(sub_6A540, 0, 0);
}

uint64_t sub_6A540()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  sub_16ACF4(66);
  v19._object = 0x8000000000184380;
  v19._countAndFlagsBits = 0x100000000000002BLL;
  sub_16A744(v19);
  v20._countAndFlagsBits = v2;
  v20._object = v1;
  sub_16A744(v20);
  v21._object = 0x80000000001843B0;
  v21._countAndFlagsBits = 0xD000000000000013;
  sub_16A744(v21);
  v22._countAndFlagsBits = v4;
  v22._object = v3;
  sub_16A744(v22);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v5 = v0[21];
  v17 = v0[22];
  v7 = v0[19];
  v6 = v0[20];
  v8 = v0[18];
  v9 = sub_16A584();
  sub_9DA0(v9, qword_1E65C0);
  v10 = sub_16A9A4();
  sub_386D8(v10, 0x800uLL, 0xD00000000000008DLL, 0x8000000000184180, 0xD000000000000034, 0x8000000000184340, 162, 0, 0xE000000000000000);

  v11 = sub_16A644();
  v0[23] = v11;
  v12 = sub_16A644();
  v0[24] = v12;
  v0[2] = v0;
  v0[3] = sub_6A7A8;
  v13 = swift_continuation_init();
  v0[17] = sub_5758(&qword_1E7FF8, &qword_16FF08);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  sub_6B940();
  v0[13] = v14;
  v0[14] = v13;
  [v15 tuneToMediaItemIdentifier:v11 inSourceWithIdentifier:v12 completion:?];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_6A7A8()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 200) = v4;
  if (v4)
  {
    v5 = sub_6A908;
  }

  else
  {
    v5 = sub_6A8A8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_6A8A8()
{
  sub_D2DC();
  v1 = *(v0 + 184);

  sub_D37C();

  return v2();
}

uint64_t sub_6A908()
{
  sub_1696C();
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  swift_willThrow();

  sub_D37C();
  v5 = v0[25];

  return v4();
}

uint64_t sub_6A978(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return sub_D2B0();
}

uint64_t sub_6A98C()
{
  sub_10B8C();
  v1 = *(v0 + 80);
  if (!*(v1 + 5))
  {
    type metadata accessor for CarCommandsError();
    sub_11D28();
    sub_16924();
    v14 = v13;
    sub_3060C();
    sub_16ACF4(30);
    *(v0 + 64) = v20;
    *(v0 + 72) = v21;
    v22._object = 0x8000000000184320;
    v22._countAndFlagsBits = 0xD00000000000001CLL;
    sub_16A744(v22);
    v15 = *v1;
    v16 = v1[2];
    *(v0 + 32) = v1[1];
    *(v0 + 48) = v16;
    *(v0 + 16) = v15;
    sub_16AD84();
    v17 = *(v0 + 72);
    *v14 = *(v0 + 64);
    v14[1] = v17;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_D37C();
    sub_375E4();

    __asm { BRAA            X1, X16 }
  }

  v2 = *(v1 + 4);
  v3 = *v1;
  v4 = *(v1 + 1);
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = sub_6AB2C;
  v6 = *(v0 + 88);
  sub_375E4();

  return sub_6A518(v7, v8, v9, v10);
}

uint64_t sub_6AB2C()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 96);
  v3 = *v0;
  sub_D254();
  *v4 = v3;

  sub_D37C();

  return v5();
}

void sub_6AC20()
{
  v1 = sub_6B7F4(*(v0 + 16));
  if (v1)
  {
    v2 = v1;
    v3 = sub_11B48C(v1);
    v4 = 0;
    v27 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v3 == v4)
      {

        v1 = v27;
        goto LABEL_17;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_16AD04();
      }

      else
      {
        if (v4 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_21;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = sub_CB984();
      if (v8 == 6)
      {

        ++v4;
      }

      else
      {
        v9 = v8;
        v10 = [v6 identifier];
        v11 = sub_16A664();
        v26 = v12;

        v25 = [v6 currentFrequency];
        v13 = sub_6B8B0(v6);
        v23 = v14;
        v24 = v13;

        v15 = v27;
        v16 = v11;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = v27[2];
          sub_108A18();
          v15 = v20;
        }

        v17 = v15[2];
        v27 = v15;
        if (v17 >= v15[3] >> 1)
        {
          sub_108A18();
          v27 = v21;
        }

        v27[2] = v17 + 1;
        v18 = &v27[6 * v17];
        v18[4] = v16;
        v18[5] = v26;
        *(v18 + 48) = v9;
        *(v18 + 13) = v25;
        *(v18 + 56) = 0;
        v18[8] = v24;
        v18[9] = v23;
        v4 = v7;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_17:
    v22 = *(v0 + 8);

    v22(v1);
  }
}

void *sub_6AE30(char a1)
{
  if (sub_BE77C(a1) == 0x6261646D66 && v3 == 0xE500000000000000)
  {
    goto LABEL_12;
  }

  v5 = sub_16AE54();

  if (v5)
  {
    goto LABEL_13;
  }

  if (sub_BE77C(a1) == 6447460 && v6 == 0xE300000000000000)
  {
LABEL_12:

    goto LABEL_13;
  }

  v8 = sub_16AE54();

  if ((v8 & 1) == 0)
  {
    sub_5758(&qword_1E8008, &qword_16FF30);
    v9 = swift_allocObject();
    *(v9 + 1) = xmmword_16D9A0;
    sub_6B86C();
    *(v9 + 32) = sub_CB9D4(a1);
    goto LABEL_14;
  }

LABEL_13:
  v9 = &off_1D1890;
LABEL_14:
  v15 = v9;
  v10 = sub_6B7F4(v1);
  if (v10)
  {
    v11 = sub_67F64(v10, &v15);
  }

  else
  {
    v11 = 0;
  }

  sub_16ACF4(45);
  v16._object = 0x8000000000184710;
  v16._countAndFlagsBits = 0xD00000000000001ELL;
  sub_16A744(v16);

  sub_5758(&qword_1E8010, &qword_16FF38);
  v17._countAndFlagsBits = sub_16A694();
  sub_16A744(v17);

  v18._countAndFlagsBits = 0x6E616220726F6620;
  v18._object = 0xEB00000000203A64;
  sub_16A744(v18);
  sub_16AD84();
  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v12 = sub_16A584();
  sub_9DA0(v12, qword_1E65C0);
  v13 = sub_16A9A4();
  sub_386D8(v13, 0x800uLL, 0xD00000000000008DLL, 0x8000000000184180, 0xD000000000000020, 0x80000000001846E0, 156, 0, 0xE000000000000000);

  return v11;
}

uint64_t sub_6B100(uint64_t a1, uint64_t a2, int a3)
{
  *(v4 + 152) = a2;
  *(v4 + 160) = v3;
  *(v4 + 184) = a3;
  *(v4 + 144) = a1;
  return sub_D2B0();
}

uint64_t sub_6B11C()
{
  v1 = *(v0 + 184);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  sub_16ACF4(36);

  sub_D434();
  v15 = v4;
  v17._countAndFlagsBits = v3;
  v17._object = v2;
  sub_16A744(v17);
  v18._countAndFlagsBits = 0x7165726620746120;
  v18._object = 0xEF203A79636E6575;
  sub_16A744(v18);
  *(v0 + 80) = v1;
  v19._countAndFlagsBits = sub_16AE24();
  sub_16A744(v19);

  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v5 = *(v0 + 152);
  v13 = *(v0 + 160);
  v14 = *(v0 + 184);
  v6 = *(v0 + 144);
  v7 = sub_16A584();
  sub_9DA0(v7, qword_1E65C0);
  v8 = sub_16A9A4();
  sub_386D8(v8, 0x800uLL, 0xD00000000000008DLL, 0x8000000000184180, 0xD000000000000025, 0x80000000001843F0, 126, 0xD000000000000011, v15);

  v9 = sub_16A644();
  *(v0 + 168) = v9;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_6B398;
  v10 = swift_continuation_init();
  *(v0 + 136) = sub_5758(&qword_1E7FF8, &qword_16FF08);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  sub_6B940();
  *(v0 + 104) = v11;
  *(v0 + 112) = v10;
  [v13 tuneToFrequency:v14 inSourceWithIdentifier:v9 completion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_6B398()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 176) = v4;
  if (v4)
  {
    v5 = sub_6B4F4;
  }

  else
  {
    v5 = sub_6B498;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_6B498()
{
  sub_D2DC();

  sub_D37C();

  return v1();
}

uint64_t sub_6B4F4()
{
  sub_1696C();
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  swift_willThrow();

  sub_D37C();
  v4 = *(v0 + 176);

  return v3();
}

uint64_t sub_6B55C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1039C;

  return sub_6880C(a1);
}

uint64_t sub_6B5F4(uint64_t a1, uint64_t a2, int a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10A9C;

  return sub_6B100(a1, a2, a3);
}

uint64_t sub_6B6A4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10A9C;

  return sub_6A978(a1);
}

uint64_t sub_6B73C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_3E08C;

  return sub_6AC0C();
}

uint64_t sub_6B7F4(void *a1)
{
  v1 = [a1 mediaSources];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_6B86C();
  v3 = sub_16A7D4();

  return v3;
}

unint64_t sub_6B86C()
{
  result = qword_1E7FF0;
  if (!qword_1E7FF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1E7FF0);
  }

  return result;
}

uint64_t sub_6B8B0(void *a1)
{
  v1 = [a1 currentMediaItemIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_16A664();

  return v3;
}

uint64_t sub_6B9BC@<X0>(uint64_t a1@<X8>)
{
  *v2 = a1;
  v2[1] = v1;

  return swift_storeEnumTagMultiPayload();
}

void sub_6B9DC(uint64_t a1@<X8>)
{

  v3._countAndFlagsBits = v1 + 13;
  v3._object = ((a1 - 32) | 0x8000000000000000);
  sub_16A744(v3);
}

void sub_6B9FC(uint64_t a1@<X8>)
{

  v3._countAndFlagsBits = v1 + 25;
  v3._object = ((a1 - 32) | 0x8000000000000000);
  sub_16A744(v3);
}

uint64_t sub_6BA1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin15TappableCommand_title;
  v8 = sub_16A0C4();
  sub_3CFE4();
  sub_5370(v9, v10, v11, v8);
  v12 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin15TappableCommand_command;
  sub_3CFE4();
  sub_5370(v13, v14, v15, v8);
  v16 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin15TappableCommand_appID;
  sub_3CFE4();
  sub_5370(v17, v18, v19, v8);
  *(v3 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin15TappableCommand_mockGlobals) = 0;
  sub_6CEB0();
  swift_beginAccess();
  sub_6CAE4(a1, v3 + v7);
  swift_endAccess();
  sub_6CEB0();
  swift_beginAccess();
  sub_6CAE4(a2, v3 + v12);
  swift_endAccess();
  sub_6CEB0();
  swift_beginAccess();
  sub_6CAE4(a3, v3 + v16);
  swift_endAccess();
  return v3;
}

uint64_t sub_6BB34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_5758(&qword_1E6300, &qword_16ECE0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  sub_A128();
  v11 = v9 - v10;
  v13 = __chkstk_darwin(v12);
  v15 = &v28 - v14;
  __chkstk_darwin(v13);
  v17 = &v28 - v16;
  v18 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v18 || (sub_6CEE8() & 1) != 0)
  {
    v19 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin15TappableCommand_title;
    sub_6CEBC();
    swift_beginAccess();
    sub_16198(v3 + v19, v17);
    v20 = sub_16A0C4();
    sub_6CF10(v17);
    if (!v18)
    {
      goto LABEL_25;
    }

    v21 = v17;
    goto LABEL_9;
  }

  v23 = a1 == 0x646E616D6D6F63 && a2 == 0xE700000000000000;
  if (v23 || (sub_6CEE8() & 1) != 0)
  {
    v24 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin15TappableCommand_command;
    sub_6CEBC();
    swift_beginAccess();
    sub_16198(v3 + v24, v15);
    v20 = sub_16A0C4();
    sub_6CF10(v15);
    if (!v18)
    {
      goto LABEL_25;
    }

    v21 = v15;
    goto LABEL_9;
  }

  if (a1 != 0x4449707061 || a2 != 0xE500000000000000)
  {
    result = sub_6CEE8();
    if ((result & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v26 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin15TappableCommand_appID;
  sub_6CEBC();
  swift_beginAccess();
  sub_16198(v3 + v26, v11);
  v20 = sub_16A0C4();
  sub_6CF10(v11);
  if (v18)
  {
    v21 = v11;
LABEL_9:
    result = sub_4FAB4(v21);
LABEL_10:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

LABEL_25:
  *(a3 + 24) = v20;
  sub_10888(a3);
  sub_6CED8();
  return (*(v27 + 32))();
}

uint64_t sub_6BDE0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1D1E80;
  v6._object = a2;
  v4 = sub_16ADE4(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_6BE2C(char a1)
{
  if (!a1)
  {
    return 0x656C746974;
  }

  if (a1 == 1)
  {
    return 0x646E616D6D6F63;
  }

  return 0x4449707061;
}

uint64_t sub_6BEA0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_6BDE0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_6BED0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_6BE2C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_6BF04@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_6BDE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_6BF38(uint64_t a1)
{
  v2 = sub_6CB54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_6BF74(uint64_t a1)
{
  v2 = sub_6CB54();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_6BFB0()
{
  sub_4FAB4(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin15TappableCommand_title);
  sub_4FAB4(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin15TappableCommand_command);
  sub_4FAB4(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin15TappableCommand_appID);

  return v0;
}

uint64_t sub_6C008()
{
  sub_6BFB0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for TappableCommand()
{
  result = qword_1E8050;
  if (!qword_1E8050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_6C0B4()
{
  sub_6C464();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_6C150(void *a1)
{
  v2 = v1;
  v4 = sub_5758(&qword_1E6300, &qword_16ECE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  sub_A128();
  v32 = v6 - v7;
  sub_6CF04();
  __chkstk_darwin(v8);
  v33 = &v32 - v9;
  sub_6CF04();
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  v13 = sub_5758(&qword_1E81A0, &qword_170068);
  v14 = sub_9F48(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  v20 = &v32 - v19;
  v21 = a1[4];
  sub_D084(a1, a1[3]);
  sub_6CB54();
  sub_16AF74();
  v22 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin15TappableCommand_title;
  sub_6CEBC();
  swift_beginAccess();
  sub_16198(v1 + v22, v12);
  v36 = 0;
  sub_16A0C4();
  sub_6CE84();
  sub_6CBA8(v23, v24);
  sub_6CE9C();
  v25 = v34;
  sub_16AE04();
  sub_4FAB4(v12);
  if (!v25)
  {
    v26 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin15TappableCommand_command;
    sub_6CEBC();
    swift_beginAccess();
    v27 = v33;
    sub_16198(v2 + v26, v33);
    v35 = 1;
    sub_6CE9C();
    sub_16AE04();
    sub_4FAB4(v27);
    v28 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin15TappableCommand_appID;
    sub_6CEBC();
    swift_beginAccess();
    v29 = v2 + v28;
    v30 = v32;
    sub_16198(v29, v32);
    v37 = 2;
    sub_6CE9C();
    sub_16AE04();
    sub_4FAB4(v30);
  }

  return (*(v16 + 8))(v20, v13);
}

uint64_t sub_6C414(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_6C4BC(a1);
  return v5;
}

void sub_6C464()
{
  if (!qword_1E8060)
  {
    sub_16A0C4();
    v0 = sub_16AB24();
    if (!v1)
    {
      atomic_store(v0, &qword_1E8060);
    }
  }
}

uint64_t sub_6C4BC(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_5758(&qword_1E6300, &qword_16ECE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  sub_A128();
  v47 = v6 - v7;
  sub_6CF04();
  __chkstk_darwin(v8);
  v49 = &v45 - v9;
  sub_6CF04();
  __chkstk_darwin(v10);
  v52 = &v45 - v11;
  v51 = sub_5758(&qword_1E8188, &qword_170060);
  v12 = sub_9F48(v51);
  v48 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  v17 = &v45 - v16;
  v18 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin15TappableCommand_title;
  v19 = sub_16A0C4();
  sub_3CFE4();
  sub_5370(v20, v21, v22, v19);
  v23 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin15TappableCommand_command;
  sub_3CFE4();
  sub_5370(v24, v25, v26, v19);
  v27 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin15TappableCommand_appID;
  sub_3CFE4();
  sub_5370(v28, v29, v30, v19);
  *(v2 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin15TappableCommand_mockGlobals) = 0;
  v32 = a1[3];
  v31 = a1[4];
  v55 = a1;
  sub_D084(a1, v32);
  sub_6CB54();
  v50 = v17;
  v33 = v53;
  sub_16AF64();
  if (v33)
  {
  }

  else
  {
    v53 = v23;
    v46 = v27;
    v35 = v48;
    v34 = v49;
    v54 = 0;
    sub_6CE84();
    sub_6CBA8(v36, v37);
    v38 = v51;
    sub_6CEC8();
    v39 = v50;
    sub_16ADF4();
    sub_6CEB0();
    swift_beginAccess();
    sub_6CAE4(v52, v2 + v18);
    swift_endAccess();
    v54 = 1;
    v40 = v34;
    sub_6CEC8();
    sub_16ADF4();
    v41 = v53;
    sub_6CEB0();
    swift_beginAccess();
    sub_6CAE4(v40, v2 + v41);
    swift_endAccess();
    v54 = 2;
    v42 = v47;
    sub_6CEC8();
    sub_16ADF4();
    (*(v35 + 8))(v39, v38);
    v44 = v46;
    sub_6CEB0();
    swift_beginAccess();
    sub_6CAE4(v42, v2 + v44);
    swift_endAccess();
  }

  sub_D13C(v55);
  return v2;
}

uint64_t sub_6C83C()
{
  v0 = qword_1E8018;

  return v0;
}

void *sub_6C874()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin15TappableCommand_mockGlobals;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_6C8C4(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin15TappableCommand_mockGlobals;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = a1;
}

uint64_t (*sub_6C920())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_6C9AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_6C414(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_6CA8C(uint64_t a1)
{
  result = sub_6CBA8(&qword_1E8180, type metadata accessor for TappableCommand);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_6CAE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1E6300, &qword_16ECE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_6CB54()
{
  result = qword_1E8190;
  if (!qword_1E8190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E8190);
  }

  return result;
}

uint64_t sub_6CBA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for TappableCommand.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TappableCommand.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x6CD44);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_6CD80()
{
  result = qword_1E81B0;
  if (!qword_1E81B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E81B0);
  }

  return result;
}

unint64_t sub_6CDD8()
{
  result = qword_1E81B8;
  if (!qword_1E81B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E81B8);
  }

  return result;
}

unint64_t sub_6CE30()
{
  result = qword_1E81C0;
  if (!qword_1E81C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E81C0);
  }

  return result;
}

uint64_t sub_6CEE8()
{

  return sub_16AE54();
}

uint64_t type metadata accessor for CarCommandsSetCarPlayFanIntensityCATsSimple()
{
  result = qword_1E81C8;
  if (!qword_1E81C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_6CFBC(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return _swift_task_switch(sub_6CFE0, 0, 0);
}

uint64_t sub_6CFE0()
{
  v1 = *(v0 + 56);
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v2 = swift_allocObject();
  v3 = v2;
  *(v0 + 32) = v2;
  *(v2 + 16) = xmmword_16D9A0;
  strcpy((v2 + 32), "fanIntensity");
  *(v2 + 45) = 0;
  *(v2 + 46) = -5120;
  if (v1)
  {
    v4 = 0;
    v5 = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  else
  {
    v4 = *(v0 + 16);
    v5 = &type metadata for Double;
  }

  *(v2 + 48) = v4;
  *(v2 + 72) = v5;
  v6 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  v10 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  *v7 = v0;
  v7[1] = sub_6D128;
  v8 = *(v0 + 24);

  return v10(0xD000000000000037, 0x80000000001848D0, v3);
}

uint64_t sub_6D128(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_6D280, 0, 0);
  }

  else
  {
    v7 = *(v4 + 32);

    v8 = *(v6 + 8);

    return v8(a1);
  }
}

uint64_t sub_6D280()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_6D2E4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_6D338(a1, a2);
}

uint64_t sub_6D338(uint64_t a1, uint64_t a2)
{
  v5 = sub_16A164();
  v6 = sub_5B1C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_57A0(a1, &v18 - v15);
  (*(v8 + 16))(v12, a2, v2);
  v16 = sub_16A0D4();
  (*(v8 + 8))(a2, v2);
  sub_5810(a1);
  return v16;
}

uint64_t sub_6D494(uint64_t a1, uint64_t a2)
{
  v5 = sub_16A164();
  v6 = sub_5B1C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_16A0E4();
  (*(v8 + 8))(a2, v3);
  return v15;
}

uint64_t sub_6D59C()
{
  sub_D2DC();
  v1[23] = v2;
  v1[24] = v0;
  v1[22] = v3;
  v4 = type metadata accessor for CarCommandsError();
  v1[25] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v1[26] = swift_task_alloc();
  v6 = *(*(sub_16A164() - 8) + 64) + 15;
  v1[27] = swift_task_alloc();
  v7 = sub_1693E4();
  v1[28] = v7;
  v8 = *(v7 - 8);
  v1[29] = v8;
  v9 = *(v8 + 64) + 15;
  v1[30] = swift_task_alloc();

  return _swift_task_switch(sub_6D6B8, 0, 0);
}

uint64_t sub_6D6B8()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  v4 = v0[23];
  sub_169384();
  sub_8F624();
  sub_86E4(v1, &_swiftEmptySetSingleton, v0 + 2);

  (*(v2 + 8))(v1, v3);
  if (v0[5])
  {
    sub_5758(&qword_1E5F90, &qword_170270);
    type metadata accessor for CarCommandsNLv4Intent();
    if (swift_dynamicCast())
    {
      v5 = v0[27];
      v6 = v0[24];
      v7 = v0[21];

      sub_10824(v6 + 16, (v0 + 7));
      v8 = v0[11];
      sub_D084(v0 + 7, v0[10]);
      v9 = sub_168B24();
      sub_D13C(v0 + 7);
      type metadata accessor for CarCommandsCATPatternsExecutor(0);
      sub_16A154();
      v0[31] = sub_16A094();
      v10 = swift_task_alloc();
      v0[32] = v10;
      *v10 = v0;
      v10[1] = sub_6DA4C;

      return sub_15632C(v9 & 1 | 0x100u);
    }
  }

  else
  {
    sub_57A80((v0 + 2));
  }

  v13 = v0[25];
  v12 = v0[26];
  v14 = v0[23];
  sub_169384();
  swift_storeEnumTagMultiPayload();
  sub_11D28();
  swift_allocError();
  sub_169384();
  swift_storeEnumTagMultiPayload();
  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v16 = v0[25];
  v15 = v0[26];
  v17 = sub_16A584();
  sub_9DA0(v17, qword_1E65C0);
  v18 = sub_16A9A4();
  swift_getErrorValue();
  v20 = v0[17];
  v19 = v0[18];
  v21 = v0[19];
  v22 = sub_16AEB4();
  sub_386D8(v18, 0x100000uLL, 0xD000000000000076, 0x8000000000184950, 0xD000000000000014, 0x80000000001849D0, 19, v22, v23);

  swift_allocError();
  sub_548D0(v15, v24);
  swift_willThrow();
  sub_5A09C(v15);
  v25 = v0[30];
  v27 = v0[26];
  v26 = v0[27];

  sub_D37C();

  return v28();
}

uint64_t sub_6DA4C()
{
  sub_D2DC();
  v2 = *v1;
  sub_D2A4();
  *v3 = v2;
  v5 = *(v4 + 256);
  *v3 = *v1;
  v2[33] = v6;
  v2[34] = v0;

  if (v0)
  {
    v7 = sub_6DDA8;
  }

  else
  {
    v8 = v2[31];

    v7 = sub_6DB60;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_6DB60()
{
  sub_D2DC();
  sub_10824(v0[24] + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin15OpenCarPlayFlow_responseGenerator, (v0 + 12));
  v1 = swift_task_alloc();
  v0[35] = v1;
  *v1 = v0;
  v1[1] = sub_6DC10;
  v2 = v0[33];
  v3 = v0[22];

  return sub_11A570();
}

uint64_t sub_6DC10()
{
  sub_D2DC();
  v2 = *v1;
  sub_D2A4();
  *v3 = v2;
  v5 = *(v4 + 280);
  v6 = *v1;
  sub_D2A4();
  *v7 = v6;
  *(v2 + 288) = v0;

  sub_D13C((v2 + 96));
  if (v0)
  {
    v8 = sub_6DE2C;
  }

  else
  {
    v8 = sub_6DD20;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_6DD20()
{
  v1 = *(v0 + 240);
  v3 = *(v0 + 208);
  v2 = *(v0 + 216);

  sub_D37C();

  return v4();
}

uint64_t sub_6DDA8()
{
  v1 = v0[31];

  v2 = v0[34];
  v3 = v0[30];
  v5 = v0[26];
  v4 = v0[27];

  sub_D37C();

  return v6();
}

uint64_t sub_6DE2C()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 240);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);

  sub_D37C();

  return v5();
}

uint64_t sub_6DEB0(__int128 *a1, __int128 *a2)
{
  v3 = v2;
  v6 = (v2 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin15OpenCarPlayFlow_featureFlagHelper);
  v7 = type metadata accessor for FeatureFlagHelper();
  v8 = swift_allocObject();
  v6[3] = v7;
  v6[4] = &off_1D9AF0;
  *v6 = v8;
  v9 = (v3 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin15OpenCarPlayFlow_responseGenerator);
  v10 = sub_168E34();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_168E24();
  v9[3] = v10;
  v9[4] = &protocol witness table for ResponseFactory;
  *v9 = v13;

  return sub_74260(a1, a2);
}

uint64_t sub_6DF70()
{
  sub_D13C((v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin15OpenCarPlayFlow_featureFlagHelper));
  v1 = (v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin15OpenCarPlayFlow_responseGenerator);

  return sub_D13C(v1);
}

uint64_t sub_6DFB0()
{
  v0 = sub_735DC();
  v1 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin15OpenCarPlayFlow_featureFlagHelper;

  sub_D13C((v2 + v1));
  sub_D13C((v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin15OpenCarPlayFlow_responseGenerator));

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for OpenCarPlayFlow()
{
  result = qword_1E8240;
  if (!qword_1E8240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_6E0D8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_503C8;

  return sub_6D59C();
}

uint64_t sub_6E184()
{
  sub_D2DC();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_169E44();
  sub_4BEE0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64) + 15;
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_6E234, 0, 0);
}

uint64_t sub_6E234()
{
  v1 = [*(v0 + 24) positionManager];
  if (v1)
  {
    v2 = v1;
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    v5 = *(v0 + 32);
    v6 = sub_6F898();
    v7(v6);
    v8 = swift_task_alloc();
    *(v8 + 16) = v3;
    sub_15A218(sub_6F854, v8);
    v10 = v9;

    (*(v4 + 8))(v3, v5);
    if (sub_11B48C(v10))
    {
      sub_6F8AC();
      v11 = sub_16AD04();
      v12 = *(v0 + 16);

      v12[3] = sub_16484(0, &qword_1E83B8, CAFDefrost_ptr);
      v12[4] = &off_1D9C90;
      *v12 = v11;
      goto LABEL_6;
    }
  }

  sub_6F884();
LABEL_6:
  v13 = *(v0 + 48);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_6E3B8()
{
  sub_D2DC();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_169E44();
  sub_4BEE0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64) + 15;
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_6E468, 0, 0);
}

uint64_t sub_6E468()
{
  v1 = [*(v0 + 24) positionManager];
  if (v1)
  {
    v2 = v1;
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    v5 = *(v0 + 32);
    v6 = sub_6F898();
    v7(v6);
    v8 = swift_task_alloc();
    *(v8 + 16) = v3;
    sub_15A218(sub_6F848, v8);
    v10 = v9;

    (*(v4 + 8))(v3, v5);
    if (sub_11B48C(v10))
    {
      sub_6F8AC();
      v11 = sub_16AD04();
      v12 = *(v0 + 16);

      v12[3] = sub_16484(0, &qword_1E83B8, CAFDefrost_ptr);
      v12[4] = &off_1D9C90;
      *v12 = v11;
      goto LABEL_6;
    }
  }

  sub_6F884();
LABEL_6:
  v13 = *(v0 + 48);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_6E5EC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_6E600()
{
  sub_D2DC();
  if ([*(v0 + 24) tire])
  {
    v1 = sub_16484(0, &qword_1E83B0, CAFTire_ptr);
    v2 = &off_1DA980;
  }

  else
  {
    sub_6F874();
  }

  sub_6F858(v1, v2);

  return v3();
}

uint64_t sub_6E698(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_6E6AC()
{
  sub_D2DC();
  if ([*(v0 + 24) closure])
  {
    v1 = sub_16484(0, &qword_1E83A8, CAFClosure_ptr);
    v2 = &off_1DA350;
  }

  else
  {
    sub_6F874();
  }

  sub_6F858(v1, v2);

  return v3();
}

uint64_t sub_6E758()
{
  sub_D2DC();
  v1 = [*(v0 + 16) climate];
  if (v1 && sub_6F7D0(v1))
  {
    sub_1334F4();
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  sub_30AEC();

  return v4(v3);
}

uint64_t sub_6E7F0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_6E804()
{
  sub_D2DC();
  if ([*(v0 + 24) tripComputer])
  {
    v1 = sub_16484(0, &qword_1E83A0, CAFTripComputer_ptr);
    v2 = &off_1D48C8;
  }

  else
  {
    sub_6F874();
  }

  sub_6F858(v1, v2);

  return v3();
}

uint64_t sub_6E89C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_6E8B0()
{
  sub_D2DC();
  if ([*(v0 + 24) media])
  {
    v1 = sub_16484(0, &qword_1E8398, CAFMedia_ptr);
    v2 = &off_1D4C18;
  }

  else
  {
    sub_6F874();
  }

  sub_6F858(v1, v2);

  return v3();
}

uint64_t sub_6E948(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_6E95C()
{
  sub_D2DC();
  v1 = [*(v0 + 24) nowPlayingInformation];
  if (v1)
  {
    v2 = v1;
    [v1 nowPlaying];

    v3 = sub_16484(0, &qword_1E8380, CAFNowPlaying_ptr);
    v4 = &off_1D6708;
  }

  else
  {
    sub_6F874();
  }

  sub_6F858(v3, v4);

  return v5();
}

uint64_t sub_6EA14(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_6EA28()
{
  sub_D2DC();
  if ([*(v0 + 24) climate])
  {
    v1 = sub_16484(0, &qword_1E8390, CAFClimate_ptr);
    v2 = &off_1DA8F0;
  }

  else
  {
    sub_6F874();
  }

  sub_6F858(v1, v2);

  return v3();
}

uint64_t sub_6EAD4()
{
  sub_D2DC();
  v1 = [*(v0 + 16) internalCombustionEngine];
  if (v1 || (v1 = [*(v0 + 16) fuel]) != 0)
  {
  }

  sub_30AEC();

  return v2();
}

uint64_t sub_6EB70(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_6EB84()
{
  sub_D2DC();
  if ([*(v0 + 24) audioSettings])
  {
    v1 = sub_16484(0, &qword_1E8388, CAFAudioSettings_ptr);
    v2 = &off_1D5150;
  }

  else
  {
    sub_6F874();
  }

  sub_6F858(v1, v2);

  return v3();
}

uint64_t sub_6EC1C(char a1)
{
  v1 = sub_6EDA0(a1);
  if (v1)
  {
    v2 = v1;
    v3 = [v1 receivedAllValues];
  }

  else
  {
    sub_16ACF4(93);
    v7._countAndFlagsBits = 0xD000000000000038;
    v7._object = 0x8000000000184AA0;
    sub_16A744(v7);
    sub_16AD84();
    v8._countAndFlagsBits = 0xD000000000000023;
    v8._object = 0x8000000000184AE0;
    sub_16A744(v8);
    if (qword_1E58E8 != -1)
    {
      swift_once();
    }

    v4 = sub_16A584();
    sub_9DA0(v4, qword_1E65C0);
    v5 = sub_16A9A4();
    sub_386D8(v5, 0x400000uLL, 0xD000000000000084, 0x80000000001849F0, 0xD000000000000014, 0x8000000000184A80, 65, 0, 0xE000000000000000);

    return 1;
  }

  return v3;
}

id sub_6EDA0(char a1)
{
  v2 = &selRef_media;
  result = 0;
  switch(a1)
  {
    case 1:
    case 2:
      v2 = &selRef_climate;
      return [v1 *v2];
    case 3:
      v2 = &selRef_tire;
      return [v1 *v2];
    case 4:
      v2 = &selRef_tripComputer;
      return [v1 *v2];
    case 5:
      v2 = &selRef_closure;
      return [v1 *v2];
    case 6:
      v2 = &selRef_audioSettings;
      return [v1 *v2];
    case 7:
      v2 = &selRef_nowPlayingInformation;
      return [v1 *v2];
    case 8:
      return result;
    default:
      return [v1 *v2];
  }
}

uint64_t sub_6EE64()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_6F850;

  return sub_6E184();
}

uint64_t sub_6EF00()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_6F850;

  return sub_6E3B8();
}

uint64_t sub_6EF9C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_6F02C;

  return sub_6E744();
}

uint64_t sub_6F02C()
{
  sub_D2DC();
  v3 = v2;
  v4 = *(*v1 + 16);
  v5 = *v1;
  sub_D254();
  *v6 = v5;

  sub_30AEC();
  if (!v0)
  {
    v7 = v3;
  }

  return v8(v7);
}

uint64_t sub_6F11C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_6F850;

  return sub_6E5EC(a1);
}

uint64_t sub_6F1B8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_6F850;

  return sub_6E698(a1);
}

uint64_t sub_6F254(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_6F850;

  return sub_6E7F0(a1);
}

uint64_t sub_6F2F0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_6F850;

  return sub_6E89C(a1);
}

uint64_t sub_6F38C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_6F428;

  return sub_6EA14(a1);
}

uint64_t sub_6F428()
{
  sub_D2DC();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_D254();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_6F510()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_6F5A0;

  return sub_6EAC0();
}

uint64_t sub_6F5A0()
{
  sub_D2DC();
  v3 = v2;
  v4 = *(*v1 + 16);
  v5 = *v1;
  sub_D254();
  *v6 = v5;

  sub_30AEC();
  if (v0)
  {
    v8 = 0;
  }

  else
  {
    v8 = v3 & 1;
  }

  return v7(v8);
}

uint64_t sub_6F698(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_6F850;

  return sub_6EB70(a1);
}

uint64_t sub_6F734(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_6F850;

  return sub_6E948(a1);
}

uint64_t sub_6F7D0(void *a1)
{
  v2 = [a1 defrosts];

  if (!v2)
  {
    return 0;
  }

  sub_16484(0, &qword_1E83B8, CAFDefrost_ptr);
  v3 = sub_16A7D4();

  return v3;
}

uint64_t sub_6F858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v3 + 16);
  *v4 = v2;
  v4[3] = a1;
  v4[4] = a2;
  result = v3 + 8;
  v6 = *(v3 + 8);
  return result;
}

void sub_6F874()
{
  v1 = *(v0 + 16);
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
}

double sub_6F884()
{
  v1 = *(v0 + 16);
  *(v1 + 32) = 0;
  result = 0.0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  return result;
}

uint64_t sub_6F8AC()
{

  return sub_1487EC(0, (v0 & 0xC000000000000001) == 0, v0);
}

uint64_t sub_6F8D4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_6F914(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_6F978()
{
  sub_D2DC();
  v1[45] = v2;
  v1[46] = v0;
  v3 = type metadata accessor for CarCommandsError();
  v1[47] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v1[48] = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_6FA04()
{
  sub_10824(*(v0 + 360), v0 + 56);
  sub_5758(&qword_1E5F90, &qword_170270);
  sub_5758(&qword_1E83C0, &qword_1703E8);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 368);
    sub_D124((v0 + 96), v0 + 16);
    v2 = *sub_D084((v1 + 8), *(v1 + 32));
    v3 = swift_task_alloc();
    *(v0 + 392) = v3;
    *v3 = v0;
    v3[1] = sub_6FD54;

    return sub_13AB58(v0 + 136, 1);
  }

  else
  {
    v5 = *(v0 + 360);
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0;
    sub_D188(v0 + 96, &qword_1E83C8, &unk_1703F0);
    sub_16ACF4(35);
    *(v0 + 328) = 0;
    *(v0 + 336) = 0xE000000000000000;
    v23._countAndFlagsBits = 0xD000000000000021;
    v23._object = 0x8000000000184BD0;
    sub_16A744(v23);
    sub_16AD84();
    v6 = *(v0 + 328);
    v7 = *(v0 + 336);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    v8 = *(v0 + 376);
    v9 = *(v0 + 384);
    v21 = *(v0 + 360);
    v10 = sub_16A584();
    sub_9DA0(v10, qword_1E65C0);
    sub_16A9A4();
    sub_71930();
    sub_386D8(v11, v12, v13, v14, v15, v16, 19, v6, v7);

    sub_16ACF4(64);
    *(v0 + 344) = 0;
    *(v0 + 352) = 0xE000000000000000;
    v24._countAndFlagsBits = 0xD000000000000016;
    v24._object = 0x8000000000184C00;
    sub_16A744(v24);
    sub_16AD84();
    v25._countAndFlagsBits = 0xD000000000000028;
    v25._object = 0x8000000000184C20;
    sub_16A744(v25);
    v17 = *(v0 + 352);
    *v9 = *(v0 + 344);
    v9[1] = v17;
    swift_storeEnumTagMultiPayload();
    sub_11D28();
    swift_allocError();
    sub_548D0(v9, v18);
    swift_willThrow();
    sub_5A09C(v9);
    v19 = *(v0 + 384);

    sub_D37C();

    return v20();
  }
}

uint64_t sub_6FD54()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 392);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 400) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_6FE4C()
{
  v1 = v0[20];
  v2 = v0[21];
  sub_D084(v0 + 17, v1);
  v3 = *(v2 + 64);
  sub_61494();
  v9 = (v4 + *v4);
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v0[51] = v7;
  *v7 = v0;
  v7[1] = sub_6FF74;

  return (v9)(v0 + 27, v1, v2);
}

uint64_t sub_6FF74()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 408);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 416) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_7006C()
{
  sub_D2DC();
  sub_D13C(v0 + 2);
  v1 = v0[50];
  v2 = v0[48];

  sub_D37C();

  return v3();
}

uint64_t sub_700D0()
{
  if (!*(v0 + 240))
  {
    sub_D188(v0 + 216, &qword_1E83D0, &qword_174EE0);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    sub_7194C();
    v19 = *(v0 + 368);
    v20 = sub_16A584();
    sub_9DA0(v20, qword_1E65C0);
    sub_16A9A4();
    sub_71904();
    sub_71930();
    sub_386D8(v21, v22, v23, v24, v25, v26, 27, v27, v34);
    sub_3024C(&unk_179C48);
    v35 = v28;
    v16 = *v19;
    v17 = swift_task_alloc();
    *(v0 + 456) = v17;
    *v17 = v0;
    v18 = sub_7065C;
    goto LABEL_9;
  }

  sub_D124((v0 + 216), v0 + 176);
  v1 = *(v0 + 48);
  sub_D084((v0 + 16), *(v0 + 40));
  v2 = *(v1 + 16);
  v3 = sub_37740();
  v5 = v4(v3);
  if (v5 == 2)
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    sub_7194C();
    v6 = *(v0 + 368);
    v7 = sub_16A584();
    sub_9DA0(v7, qword_1E65C0);
    sub_16A9A4();
    sub_71904();
    sub_71930();
    sub_386D8(v8, v9, v10, v11, v12, v13, 35, v14, v34);
    sub_3024C(&unk_174EF0);
    v35 = v15;
    v16 = *v6;
    v17 = swift_task_alloc();
    *(v0 + 440) = v17;
    *v17 = v0;
    v18 = sub_70500;
LABEL_9:
    v17[1] = v18;
    v29 = *(v0 + 368);

    return v35(v16);
  }

  v31 = v5;
  v32 = swift_task_alloc();
  *(v0 + 424) = v32;
  *v32 = v0;
  v32[1] = sub_703A4;
  v33 = *(v0 + 368);

  return sub_70940(v31 & 1, v0 + 176);
}

uint64_t sub_703A4()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[32] = v1;
  v2[33] = v4;
  v2[34] = v0;
  sub_71940();
  v6 = *(v5 + 424);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 432) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_704A0()
{
  sub_D2DC();
  sub_D13C((v0 + 176));
  v1 = *(v0 + 264);
  sub_718A0();
  v2 = sub_302B8();

  return v3(v2);
}

uint64_t sub_70500()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[35] = v1;
  v2[36] = v4;
  v2[37] = v0;
  sub_71940();
  v6 = *(v5 + 440);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 448) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_705FC()
{
  sub_D2DC();
  sub_D13C((v0 + 176));
  v1 = *(v0 + 288);
  sub_718A0();
  v2 = sub_302B8();

  return v3(v2);
}

uint64_t sub_7065C()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[38] = v1;
  v2[39] = v4;
  v2[40] = v0;
  sub_71940();
  v6 = *(v5 + 456);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 464) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_70758()
{
  sub_D2DC();
  v1 = *(v0 + 312);
  sub_718A0();
  v2 = sub_302B8();

  return v3(v2);
}

uint64_t sub_707B0()
{
  sub_D2DC();
  sub_718D8();
  v1 = *(v0 + 464);
  v2 = *(v0 + 384);

  sub_D37C();

  return v3();
}

uint64_t sub_70810()
{
  sub_D2DC();
  sub_718D8();
  v1 = *(v0 + 416);
  v2 = *(v0 + 384);

  sub_D37C();

  return v3();
}

uint64_t sub_70870()
{
  sub_D2DC();
  sub_D13C(v0 + 22);
  sub_718D8();
  v1 = v0[54];
  v2 = v0[48];

  sub_D37C();

  return v3();
}

uint64_t sub_708D8()
{
  sub_D2DC();
  sub_D13C(v0 + 22);
  sub_718D8();
  v1 = v0[56];
  v2 = v0[48];

  sub_D37C();

  return v3();
}

uint64_t sub_70940(char a1, uint64_t a2)
{
  *(v3 + 216) = a2;
  *(v3 + 224) = v2;
  *(v3 + 312) = a1;
  v4 = *(*(sub_16A164() - 8) + 64) + 15;
  *(v3 + 232) = swift_task_alloc();

  return _swift_task_switch(sub_709D4, 0, 0);
}

uint64_t sub_709D4()
{
  v1 = *(v0 + 216);
  v2 = v1[4];
  sub_D084(v1, v1[3]);
  v3 = *(v2 + 56);
  v4 = sub_37740();
  v5(v4);
  if (*(v0 + 152))
  {
    sub_D124((v0 + 128), v0 + 88);
    v6 = *(v0 + 120);
    sub_D084((v0 + 88), *(v0 + 112));
    v7 = *(sub_71920() + 32);
    sub_61494();
    v20 = (v8 + *v8);
    v10 = *(v9 + 4);
    v11 = swift_task_alloc();
    *(v0 + 240) = v11;
    *v11 = v0;
    v11[1] = sub_70C18;
    v12 = sub_37740();
  }

  else
  {
    sub_D188(v0 + 128, &qword_1E83D8, &qword_170408);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    sub_7194C();
    v14 = *(v0 + 224);
    v15 = sub_16A584();
    sub_9DA0(v15, qword_1E65C0);
    v16 = sub_16A9A4();
    sub_71864(v16);
    sub_3024C(&unk_179C48);
    v20 = v17;
    v18 = *v14;
    v19 = swift_task_alloc();
    *(v0 + 304) = v19;
    *v19 = v0;
    v12 = sub_71838(v19);
  }

  return v20(v12);
}

uint64_t sub_70C18()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  v4 = *(v3 + 240);
  *v2 = *v0;
  *(v1 + 313) = v5;

  sub_10B4C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_70D04()
{
  if (*(v0 + 313) != 1)
  {
    sub_D13C((v0 + 88));
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
    }

    sub_7194C();
    v20 = *(v0 + 224);
    v21 = sub_16A584();
    sub_9DA0(v21, qword_1E65C0);
    v22 = sub_16A9A4();
    sub_71864(v22);
    sub_3024C(&unk_179C48);
    v34 = v23;
    v24 = *v20;
    v25 = swift_task_alloc();
    *(v0 + 304) = v25;
    *v25 = v0;
    v26 = sub_71838(v25);

    return v34(v26);
  }

  v1 = *(v0 + 224);
  v2 = sub_D084((v1 + 48), *(v1 + 72));
  sub_5758(&qword_1E83E0, &unk_170410);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_16D9A0;
  v4 = *(v0 + 112);
  v5 = *(v0 + 120);
  v6 = sub_D084((v0 + 88), v4);
  *(inited + 56) = v4;
  *(inited + 64) = *(*(v5 + 8) + 8);
  v7 = sub_10888((inited + 32));
  v8.n128_f64[0] = (*(*(v4 - 8) + 16))(v7, v6, v4);
  v9 = sub_948E4(inited, *v2, v8);
  swift_setDeallocating();
  sub_EFFF4();
  v10 = v9[2];

  if (!v10)
  {
    v27 = *(*(v0 + 224) + 80);
    sub_D084((v1 + 48), *(v1 + 72));
    v28 = *(sub_71920() + 40);
    sub_61494();
    v34 = (v29 + *v29);
    v31 = *(v30 + 4);
    v32 = swift_task_alloc();
    *(v0 + 288) = v32;
    *v32 = v0;
    v32[1] = sub_713EC;
    v26 = sub_37740();

    return v34(v26);
  }

  v11 = *(v0 + 112);
  v12 = *(v0 + 120);
  sub_D084((v0 + 88), v11);
  v13 = *(sub_71920() + 16);
  sub_61494();
  v33 = (v14 + *v14);
  v16 = *(v15 + 4);
  v17 = swift_task_alloc();
  *(v0 + 248) = v17;
  *v17 = v0;
  v18 = sub_71958(v17);

  return v33(v18, v11, v12);
}

uint64_t sub_710D0()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v5 = *(v4 + 248);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v8 + 256) = v0;

  sub_10B4C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_711C8()
{
  sub_D2DC();
  v1 = v0[29];
  type metadata accessor for CarCommandsSetCarPlayFanSettingsCATsSimple();
  sub_16A154();
  v0[33] = sub_16A0F4();
  v2 = swift_task_alloc();
  v0[34] = v2;
  *v2 = v0;
  v3 = sub_71958(v2);

  return sub_126A4C(v3);
}

uint64_t sub_7127C()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  v2[21] = v1;
  v2[22] = v4;
  v2[23] = v0;
  sub_71940();
  v6 = *(v5 + 272);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  v3[35] = v0;

  if (!v0)
  {
    v9 = v3[33];
  }

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_71388()
{
  sub_D2DC();
  sub_D13C(v0 + 11);
  v1 = v0[22];
  v2 = v0[29];

  v3 = sub_302B8();

  return v4(v3);
}

uint64_t sub_713EC()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v2[24] = v1;
  v2[25] = v4;
  v2[26] = v0;
  sub_71940();
  v6 = *(v5 + 288);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 296) = v0;

  sub_10B4C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_714E8()
{
  sub_D2DC();
  sub_D13C(v0 + 11);
  v1 = v0[25];
  v2 = v0[29];

  v3 = sub_302B8();

  return v4(v3);
}

uint64_t sub_7154C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 304);
  v6 = *v2;
  sub_D254();
  *v7 = v6;

  v8 = *(v4 + 232);

  v10 = *(v6 + 8);
  if (!v1)
  {
    v9 = a1;
  }

  return v10(v9);
}

uint64_t sub_71670()
{
  sub_D2DC();
  sub_D13C(v0 + 11);
  v1 = v0[37];
  v2 = v0[29];

  sub_D37C();

  return v3();
}

uint64_t sub_716D4()
{
  sub_D2DC();
  sub_D13C(v0 + 11);
  v1 = v0[32];
  v2 = v0[29];

  sub_D37C();

  return v3();
}

uint64_t sub_71738()
{
  sub_D2DC();
  v1 = v0[33];

  sub_D13C(v0 + 11);
  v2 = v0[35];
  v3 = v0[29];

  sub_D37C();

  return v4();
}

uint64_t sub_717A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_3E08C;

  return sub_6F978();
}

uint64_t sub_71838(uint64_t a1)
{
  *(a1 + 8) = sub_7154C;
  v3 = *(v2 + 224);
  return v1;
}

void sub_71864(os_log_type_t a1)
{

  sub_386D8(a1, 0x4000000uLL, 0xD000000000000090, v3 | 0x8000000000000000, 0xD00000000000001FLL, (v2 | 0x8000000000000000), 44, 0xD000000000000027, v1);
}

uint64_t sub_718A0()
{
  v1 = v0[48];
  sub_D13C(v0 + 17);
  sub_D13C(v0 + 2);
}

uint64_t sub_718D8()
{
  sub_D13C((v0 + 136));

  return sub_D13C((v0 + 16));
}

uint64_t sub_71970()
{
  v0 = sub_169E44();
  v1 = sub_9F48(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_169E54();
  v8 = sub_169E34();
  (*(v3 + 8))(v7, v0);
  return v8 & 1;
}

uint64_t sub_71A58()
{
  v0 = sub_169E44();
  v1 = sub_9F48(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v14 - v9;
  sub_169E54();
  (*(v3 + 104))(v8, enum case for CAUVehicleLayoutKey.End.front(_:), v0);
  v11 = sub_169E34();
  v12 = *(v3 + 8);
  v12(v8, v0);
  v12(v10, v0);
  return v11 & 1;
}

void sub_71B88(uint64_t a1)
{
  v29 = sub_169E84();
  v2 = sub_9F48(v29);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v31 = _swiftEmptyArrayStorage;
    sub_146878(0, v9, 0);
    v10 = v31;
    v12 = *(v4 + 16);
    v11 = v4 + 16;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v27 = *(v11 + 56);
    v28 = v12;
    v26 = (v11 - 8);
    do
    {
      v14 = v29;
      v15 = v11;
      v28(v8, v13, v29);
      v16 = sub_169E74();
      v18 = v17;
      (*v26)(v8, v14);
      v31 = v10;
      v20 = v10[2];
      v19 = v10[3];
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        sub_146878(v19 > 1, v20 + 1, 1);
        v10 = v31;
      }

      v10[2] = v21;
      v22 = &v10[2 * v20];
      v22[4] = v16;
      v22[5] = v18;
      v13 += v27;
      --v9;
      v11 = v15;
    }

    while (v9);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
    v21 = _swiftEmptyArrayStorage[2];
  }

  v23 = 0;
  v31 = 0;
  v32 = 0xE000000000000000;
  for (i = (v10 + 5); ; i += 2)
  {
    if (v21 == v23)
    {

      return;
    }

    if (v23 >= v10[2])
    {
      break;
    }

    ++v23;
    v25 = *i;
    v30._countAndFlagsBits = *(i - 1);
    v30._object = v25;
    swift_bridgeObjectRetain_n();
    v33._countAndFlagsBits = 10;
    v33._object = 0xE100000000000000;
    sub_16A744(v33);
    sub_16A744(v30);
  }

  __break(1u);
}

id sub_71DC4()
{
  v1 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin37GetLockStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler;
  v2 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin37GetLockStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin37GetLockStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
  }

  else
  {
    if (qword_1E5908 != -1)
    {
      swift_once();
    }

    v5 = sub_DCF5C(v4);
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_71E60()
{
  sub_D2DC();
  v1[37] = v2;
  v1[38] = v0;
  v1[36] = v3;
  v4 = *(*(sub_5758(&qword_1E6300, &qword_16ECE0) - 8) + 64) + 15;
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v5 = type metadata accessor for LockStatusParameters(0);
  v1[41] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[42] = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_71F34()
{
  v60 = v0;
  v1 = v0[37];
  sub_10824(v0[38] + 16, (v0 + 2));
  v2 = sub_D084(v0 + 2, v0[5]);
  sub_5758(&qword_1E8630, &qword_170588);
  sub_169094();
  v3 = *v2;
  sub_D2604();

  sub_D13C(v0 + 2);
  v4 = 0x8000000000182560;
  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v5 = sub_16A584();
  sub_9DA0(v5, qword_1E65C0);
  v6 = sub_16A9A4();
  v0[31] = 0xD000000000000096;
  v0[32] = 0x8000000000184D60;
  v0[33] = 47;
  v0[34] = 0xE100000000000000;
  sub_D030();
  v7 = sub_16AB34();
  v8 = sub_15AE4(v7);
  v10 = v9;

  if (v10)
  {
    v61._countAndFlagsBits = 32;
    v61._object = 0xE100000000000000;
    sub_16A744(v61);
    v62._countAndFlagsBits = 0xD000000000000025;
    v62._object = 0x8000000000182560;
    sub_16A744(v62);
    v11 = v8;
    v4 = v10;
  }

  else
  {
    v11 = 0xD000000000000025;
  }

  v58 = v11;
  v59._countAndFlagsBits = 58;
  v59._object = 0xE100000000000000;
  v0[35] = 27;
  v63._countAndFlagsBits = sub_16AE24();
  sub_16A744(v63);

  sub_16A744(v59);

  v12._countAndFlagsBits = sub_378D0(0x82uLL);
  if (v12._object)
  {
    v59._countAndFlagsBits = 32;
    v59._object = 0xE100000000000000;
    sub_16A744(v12);

    v64._countAndFlagsBits = 32;
    v64._object = 0xE100000000000000;
    sub_16A744(v64);
  }

  v13 = sub_16A574();
  if (os_log_type_enabled(v13, v6))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v59._countAndFlagsBits = v15;
    *v14 = 136315138;
    v16 = sub_15BC8(v58, v4, &v59._countAndFlagsBits);

    *(v14 + 4) = v16;
    _os_log_impl(&dword_0, v13, v6, "%s", v14, 0xCu);
    sub_D13C(v15);
  }

  else
  {
  }

  v17 = v0[37];
  v18 = v0[38];
  v19 = sub_1690A4();
  v0[43] = v19;
  v20 = sub_169084();
  v0[44] = v20;
  [v20 code];
  swift_beginAccess();
  v21 = *sub_D084((v18 + 136), *(v18 + 160));
  if (sub_11B5C0())
  {
    v22 = v0[37];
    sub_169094();
    sub_16A1B4();
    v24 = v23;

    v0[45] = v24;
    if (!v24)
    {
      goto LABEL_15;
    }

    if (sub_16AA24() == 2)
    {

LABEL_15:
      type metadata accessor for CarCommandsError();
      sub_73594(&qword_1E92F0, type metadata accessor for CarCommandsError);
      swift_allocError();
      *v25 = 0xD00000000000002DLL;
      v25[1] = 0x8000000000182590;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v26 = v0[42];
      v28 = v0[39];
      v27 = v0[40];

      sub_D37C();
      sub_D2C0();

      __asm { BRAA            X1, X16 }
    }

    v54 = v0[38];
    type metadata accessor for LockStatusSnippetFactory();
    v0[46] = [v19 carName];
    swift_beginAccess();
    sub_10824(v54 + 184, (v0 + 17));
    v55 = swift_task_alloc();
    v0[47] = v55;
    *v55 = v0;
    v55[1] = sub_7261C;
    v56 = v0[36];
    sub_D2C0();

    return sub_7C7C4();
  }

  else
  {
    v31 = [v19 carName];
    if (v31)
    {
      v32 = v31;
      v33 = v0[40];
      sub_99C94();

      v34 = 0;
    }

    else
    {
      v34 = 1;
    }

    v35 = v0[40];
    v36 = v0[37];
    v37 = sub_16A0C4();
    v38 = 1;
    sub_5370(v35, v34, 1, v37);
    v39 = sub_16AA24();
    sub_169094();
    sub_16A1B4();
    v41 = v40;

    if (v41)
    {
      v42 = v0[39];
      sub_16A6E4();

      v38 = 0;
    }

    v44 = v0[41];
    v43 = v0[42];
    v46 = v0[39];
    v45 = v0[40];
    v47 = v0[38];
    sub_5370(v46, v38, 1, v37);
    sub_16304(v45, v43);
    *(v43 + *(v44 + 20)) = v39 & 1;
    sub_16304(v46, v43 + *(v44 + 24));
    v48 = *sub_D084((v47 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin37GetLockStatusHandleIntentFlowStrategy_commonPatterns), *(v47 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin37GetLockStatusHandleIntentFlowStrategy_commonPatterns + 24));
    v49 = swift_task_alloc();
    v0[49] = v49;
    *v49 = v0;
    v49[1] = sub_727EC;
    v50 = v0[42];
    sub_D2C0();

    return sub_156B98(v51);
  }
}

uint64_t sub_7261C()
{
  v2 = *v1;
  v3 = *v1;
  sub_D254();
  *v4 = v3;
  v5 = v2[47];
  *v4 = *v1;
  v3[48] = v0;

  v6 = v2[46];
  v7 = v2[45];
  sub_D13C(v3 + 17);

  sub_10B4C();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_72770()
{
  sub_D2DC();
  v1 = *(v0 + 344);

  v2 = *(v0 + 336);
  v3 = *(v0 + 312);
  v4 = *(v0 + 320);

  sub_D37C();

  return v5();
}

uint64_t sub_727EC()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  v4 = *(v2 + 392);
  v10 = *v1;
  *(v3 + 400) = v5;
  *(v3 + 408) = v0;

  sub_10B4C();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_728F4()
{
  sub_D2DC();
  v1 = v0[38];
  swift_beginAccess();
  sub_10824(v1 + 184, (v0 + 12));
  v2 = swift_task_alloc();
  v0[52] = v2;
  *v2 = v0;
  v2[1] = sub_729B0;
  v3 = v0[50];

  return sub_11A570();
}

uint64_t sub_729B0()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  v4 = *(v2 + 416);
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 424) = v0;

  sub_D13C((v3 + 96));
  sub_10B4C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_72AB8()
{
  sub_1696C();
  v1 = *(v0 + 344);
  v2 = *(v0 + 336);

  sub_73538(v2);
  v3 = *(v0 + 408);
  v4 = *(v0 + 336);
  v6 = *(v0 + 312);
  v5 = *(v0 + 320);

  sub_D37C();

  return v7();
}

uint64_t sub_72B48()
{
  sub_1696C();
  v1 = *(v0 + 400);
  v2 = *(v0 + 344);
  v3 = *(v0 + 336);
  v4 = *(v0 + 288);

  sub_73538(v3);
  sub_D250((v0 + 56), v4);
  v5 = *(v0 + 336);
  v6 = *(v0 + 312);
  v7 = *(v0 + 320);

  sub_D37C();

  return v8();
}

uint64_t sub_72BF0()
{
  sub_1696C();
  v1 = *(v0 + 344);

  v2 = *(v0 + 384);
  v3 = *(v0 + 336);
  v5 = *(v0 + 312);
  v4 = *(v0 + 320);

  sub_D37C();

  return v6();
}

uint64_t sub_72C74()
{
  sub_1696C();
  v1 = *(v0 + 400);
  v2 = *(v0 + 344);
  v3 = *(v0 + 336);

  sub_73538(v3);
  v4 = *(v0 + 424);
  v5 = *(v0 + 336);
  v7 = *(v0 + 312);
  v6 = *(v0 + 320);

  sub_D37C();

  return v8();
}

void sub_72D0C()
{
  sub_D13C((v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin37GetLockStatusHandleIntentFlowStrategy_commonPatterns));
  v1 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin37GetLockStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
}

uint64_t *sub_72D4C()
{
  v0 = sub_3D044();
  sub_D13C((v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin37GetLockStatusHandleIntentFlowStrategy_commonPatterns));

  return v0;
}

uint64_t sub_72D94()
{
  v0 = sub_72D4C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for GetLockStatusHandleIntentFlowStrategy()
{
  result = qword_1E8418;
  if (!qword_1E8418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_72E88(uint64_t a1)
{
  result = sub_73594(&qword_1E8628, type metadata accessor for GetLockStatusHandleIntentFlowStrategy);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_72EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  LockStatusHandleIntentFlowStrategy = type metadata accessor for GetLockStatusHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, LockStatusHandleIntentFlowStrategy, a4);
}

uint64_t sub_72FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  LockStatusHandleIntentFlowStrategy = type metadata accessor for GetLockStatusHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, LockStatusHandleIntentFlowStrategy, a4);
}

uint64_t sub_73070()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10A9C;

  return sub_4B5DC();
}

uint64_t sub_73130()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10A9C;

  return sub_71E60();
}

uint64_t sub_731DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  LockStatusHandleIntentFlowStrategy = type metadata accessor for GetLockStatusHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, LockStatusHandleIntentFlowStrategy, a4);
}

uint64_t sub_732A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  LockStatusHandleIntentFlowStrategy = type metadata accessor for GetLockStatusHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, LockStatusHandleIntentFlowStrategy, a4);
}

uint64_t sub_7336C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  LockStatusHandleIntentFlowStrategy = type metadata accessor for GetLockStatusHandleIntentFlowStrategy();
  *v9 = v4;
  v9[1] = sub_1039C;

  return HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:)(a1, a2, LockStatusHandleIntentFlowStrategy, a4);
}

uint64_t sub_73434()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_36648;

  return sub_449F4();
}

uint64_t sub_73538(uint64_t a1)
{
  v2 = type metadata accessor for LockStatusParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_73594(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_735DC()
{
  sub_D13C((v0 + 16));
  sub_D13C((v0 + 56));
  sub_D188(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin20BasicOutputFlowClass_input, &qword_1E6F70, &qword_16EE30);
  return v0;
}

uint64_t sub_73624(uint64_t a1)
{
  v3 = sub_5758(&qword_1E6F70, &qword_16EE30);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v10 - v5;
  v7 = sub_1693A4();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  sub_5370(v6, 0, 1, v7);
  v8 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin20BasicOutputFlowClass_input;
  swift_beginAccess();
  sub_4DBA0(v6, v1 + v8);
  swift_endAccess();
  return 1;
}

uint64_t sub_73728()
{
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v0 = sub_16A584();
  sub_9DA0(v0, qword_1E65C0);
  v1 = sub_16A9A4();
  sub_386D8(v1, 2uLL, 0xD000000000000075, 0x8000000000184E40, 0xD000000000000014, 0x8000000000182830, 37, 0xD000000000000049, 0x8000000000184F20);
  type metadata accessor for BasicOutputFlowClass();
  sub_74538();
  return sub_168934();
}

uint64_t sub_73834()
{
  sub_D2DC();
  v1[29] = v2;
  v1[30] = v0;
  v3 = *(*(sub_5758(&qword_1E6F70, &qword_16EE30) - 8) + 64) + 15;
  v1[31] = swift_task_alloc();
  v4 = sub_1693A4();
  v1[32] = v4;
  v5 = *(v4 - 8);
  v1[33] = v5;
  v6 = *(v5 + 64) + 15;
  v1[34] = swift_task_alloc();

  return _swift_task_switch(sub_73928, 0, 0);
}

uint64_t sub_73928()
{
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 240);
  v4 = sub_16A584();
  *(v0 + 280) = sub_9DA0(v4, qword_1E65C0);
  sub_16A9A4();
  sub_74590();
  sub_386D8(v5, v6, v7, v8, v9, v10, 42, v11, 0x8000000000184EC0);
  v12 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin20BasicOutputFlowClass_input;
  swift_beginAccess();
  sub_4DA70(v3 + v12, v2);
  if (sub_9E2C(v2, 1, v1) == 1)
  {
    v13 = *(v0 + 232);
    sub_D188(*(v0 + 248), &qword_1E6F70, &qword_16EE30);
    sub_16A9A4();
    sub_74590();
    sub_386D8(v14, v15, v16, v17, v18, v19, 45, v20, 0xEE00646E756F6620);
    sub_168D54();
LABEL_10:
    v40 = *(v0 + 272);
    v41 = *(v0 + 248);

    sub_D37C();

    return v42();
  }

  v21 = *(v0 + 240);
  (*(*(v0 + 264) + 32))(*(v0 + 272), *(v0 + 248), *(v0 + 256));
  *(v0 + 216) = v21;
  type metadata accessor for BasicOutputFlowClass();

  sub_5758(&qword_1E8758, &qword_170688);
  if (!swift_dynamicCast())
  {
    v30 = *(v0 + 264);
    v29 = *(v0 + 272);
    v31 = *(v0 + 256);
    v32 = *(v0 + 232);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    sub_D188(v0 + 56, &qword_1E8760, &unk_170690);
    sub_16A9A4();
    sub_74590();
    sub_386D8(v33, v34, v35, v36, v37, v38, 50, v39, 0x8000000000184EE0);
    sub_168D54();
    (*(v30 + 8))(v29, v31);
    goto LABEL_10;
  }

  sub_D124((v0 + 56), v0 + 16);
  v22 = *(v0 + 40);
  v23 = *(v0 + 48);
  sub_D084((v0 + 16), v22);
  v24 = *(v23 + 8);
  v43 = (v24 + *v24);
  v25 = v24[1];
  v26 = swift_task_alloc();
  *(v0 + 288) = v26;
  *v26 = v0;
  v26[1] = sub_73CD8;
  v27 = *(v0 + 272);

  return v43(v0 + 96, v27, v22, v23);
}

uint64_t sub_73CD8()
{
  sub_D2DC();
  sub_D358();
  v3 = *(v2 + 288);
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 296) = v0;

  if (v0)
  {
    v7 = sub_74038;
  }

  else
  {
    v7 = sub_73DDC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_73DDC()
{
  sub_10824(v0[30] + 56, (v0 + 17));
  v1 = v0[21];
  sub_D084(v0 + 17, v0[20]);
  v2 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  v3 = swift_task_alloc();
  v0[38] = v3;
  *v3 = v0;
  v3[1] = sub_73EA8;

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 12);
}

uint64_t sub_73EA8()
{
  sub_D2DC();
  sub_D358();
  v3 = *(v2 + 304);
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 312) = v0;

  if (v0)
  {
    v7 = sub_74144;
  }

  else
  {
    v7 = sub_73FAC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_73FAC()
{
  sub_D13C((v0 + 96));
  sub_D13C((v0 + 136));
  sub_7462C();
  v1 = sub_745F4();
  v2(v1);
  sub_7466C();

  sub_D37C();

  return v3();
}

uint64_t sub_74038()
{
  v2 = v1[37];
  v3 = v1[35];
  sub_74648();
  sub_7469C(v4, v5, v6, v7, v8, v9, v10, v11, v19, v20, v21, v22);
  sub_74604("Error making output: ");
  v1[28] = v2;
  sub_5758(&qword_1E6360, &qword_16E3B0);
  sub_16AD84();
  v12 = *v0;
  v13 = v1[26];
  v14 = sub_16A9A4();
  sub_745B0(v14);

  sub_7462C();
  v15 = sub_745F4();
  v16(v15);
  sub_7466C();

  sub_D37C();

  return v17();
}

uint64_t sub_74144()
{
  sub_D13C(v1 + 12);
  sub_D13C(v1 + 17);
  v2 = v1[39];
  v3 = v1[35];
  sub_74648();
  sub_7469C(v4, v5, v6, v7, v8, v9, v10, v11, v19, v20, v21, v22);
  sub_74604("Error making output: ");
  v1[28] = v2;
  sub_5758(&qword_1E6360, &qword_16E3B0);
  sub_16AD84();
  v12 = *v0;
  v13 = v1[26];
  v14 = sub_16A9A4();
  sub_745B0(v14);

  sub_7462C();
  v15 = sub_745F4();
  v16(v15);
  sub_7466C();

  sub_D37C();

  return v17();
}

uint64_t sub_74260(__int128 *a1, __int128 *a2)
{
  v5 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin20BasicOutputFlowClass_input;
  v6 = sub_1693A4();
  sub_5370(v2 + v5, 1, 1, v6);
  sub_D124(a2, v2 + 56);
  sub_D124(a1, v2 + 16);
  return v2;
}

uint64_t sub_742CC()
{
  sub_735DC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for BasicOutputFlowClass()
{
  result = qword_1E8660;
  if (!qword_1E8660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_74378()
{
  sub_4D5E4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_74414(uint64_t a1)
{
  v2 = *v1;
  sub_73624(a1);
  return 1;
}

uint64_t sub_74460()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1039C;

  return sub_73834();
}

uint64_t sub_744FC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for BasicOutputFlowClass();

  return Flow<>.exitValue.getter(v3, a2);
}

unint64_t sub_74538()
{
  result = qword_1E8768;
  if (!qword_1E8768)
  {
    type metadata accessor for BasicOutputFlowClass();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1E8768);
  }

  return result;
}

void sub_745B0(os_log_type_t a1)
{

  sub_386D8(a1, 2uLL, v4 | 0x60, v3 | 0x8000000000000000, 0x2865747563657865, 0xE900000000000029, 58, v1, v2);
}

void sub_74604(uint64_t a1@<X8>)
{
  v2._countAndFlagsBits = 0xD000000000000015;

  v2._object = ((a1 - 32) | 0x8000000000000000);
  sub_16A744(v2);
}

uint64_t sub_7462C()
{
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[32];
  v5 = v0[29];

  return sub_168D54();
}

void sub_74648()
{

  sub_16ACF4(23);
}

uint64_t sub_7466C()
{
  sub_D13C(v0 + 2);
  v1 = v0[34];
  v2 = v0[31];
}

uint64_t SESetCarLockStatusIntentHandler.resolveCarName(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_746C4()
{
  sub_1696C();
  v1 = [*(v0 + 16) carName];
  *(v0 + 32) = v1;
  sub_3024C(dword_16DB90);
  v6 = v2;
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_601B4;
  v4 = *(v0 + 24);

  return v6(v1, 1);
}

uint64_t sub_747A8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_60398;

  return SESetCarLockStatusIntentHandler.resolveCarName(for:)(v6);
}

uint64_t SESetCarLockStatusIntentHandler.confirm(intent:)(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return sub_D2B0();
}

uint64_t sub_74880()
{
  sub_1696C();
  v1 = [*(v0 + 40) carName];
  *(v0 + 56) = v1;
  sub_3024C(&unk_16DB88);
  v6 = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_74948;
  v4 = *(v0 + 48);

  return v6(v1, 2, 0);
}

uint64_t sub_74948()
{
  sub_D2DC();
  sub_D358();
  *(v2 + 32) = v1;
  *(v2 + 24) = v3;
  *(v2 + 16) = v0;
  v4 = *(v2 + 64);
  v5 = *(v2 + 56);
  v6 = *v0;
  sub_D254();
  *v7 = v6;
  *(v9 + 72) = v8;

  return _swift_task_switch(sub_74A60, 0, 0);
}

uint64_t sub_74B1C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_612B8;

  return SESetCarLockStatusIntentHandler.confirm(intent:)(v6);
}

uint64_t SESetCarLockStatusIntentHandler.handle(intent:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_D2B0();
}

uint64_t sub_74BF4()
{
  v1 = *(v0 + 16);
  v2 = sub_16AA14();
  if (v2 == 2)
  {
    if (qword_1E58E8 != -1)
    {
      swift_once();
    }

    v3 = sub_16A584();
    sub_9DA0(v3, qword_1E65C0);
    v4 = sub_16A9A4();
    sub_386D8(v4, 0x20040uLL, 0xD0000000000000B9, 0x8000000000184F70, 0x6928656C646E6168, 0xEF293A746E65746ELL, 40, 0xD000000000000016, 0x8000000000185030);
    [objc_allocWithZone(INSetCarLockStatusIntentResponse) initWithCode:4 userActivity:0];
    sub_30AEC();

    return v5();
  }

  else
  {
    v7 = v2;
    v8 = [*(v0 + 16) carName];
    *(v0 + 32) = v8;
    sub_3024C(&unk_16DB80);
    v12 = v9;
    v10 = swift_task_alloc();
    *(v0 + 40) = v10;
    *v10 = v0;
    v10[1] = sub_74DE4;
    v11 = *(v0 + 24);

    return v12(v7 & 1, v8, 2);
  }
}

uint64_t sub_74DE4()
{
  sub_D2DC();
  sub_D358();
  v2 = *(v1 + 40);
  v3 = *(v1 + 32);
  v4 = *v0;
  sub_D254();
  *v5 = v4;
  *(v7 + 56) = v6;
  *(v7 + 48) = v8;

  return _swift_task_switch(sub_74EF4, 0, 0);
}

uint64_t sub_74FB0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_612B8;

  return SESetCarLockStatusIntentHandler.handle(intent:)(v6);
}

id SESetCarLockStatusIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SESetCarLockStatusIntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_75120()
{
  sub_1696C();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = sub_120FC(v5);

  return v7(v6);
}

uint64_t sub_751B8()
{
  sub_1696C();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = sub_120FC(v5);

  return v7(v6);
}

uint64_t sub_75250()
{
  sub_1696C();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = sub_120FC(v5);

  return v7(v6);
}

uint64_t sub_752F0(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return sub_D2B0();
}

uint64_t sub_75308()
{
  v1 = *(v0 + 80);
  v2 = v1[5];
  v3 = v1[6];
  sub_D084(v1 + 2, v2);
  p_weak_ivar_lyt = &SetCarPlayClimateRCHFlowStrategy.weak_ivar_lyt;
  v11 = (*(v3 + 40))(v2, v3);
  v12 = "retrieveVehicleReport(carKeyPass:)";
  v13 = *(v0 + 72);
  v14 = v13[3];
  v15 = v13[4];
  sub_D084(v13, v14);
  v16 = (*(v15 + 40))(v14, v15);
  v5 = v16;
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = 0;
    v19 = (v16 + 40);
    while (v18 < *(v5 + 16))
    {
      if (*(v11 + 16))
      {
        v20 = *(v19 - 1);
        v15 = *v19;

        v21 = sub_146404(v20, v15);
        v23 = v22;

        if (v23)
        {
          v24 = *(v0 + 64);

          sub_10824(*(v11 + 56) + 40 * v21, v0 + 16);

          sub_D124((v0 + 16), v24);
          goto LABEL_4;
        }
      }

      ++v18;
      v19 += 2;
      if (v17 == v18)
      {

        p_weak_ivar_lyt = (&SetCarPlayClimateRCHFlowStrategy + 56);
        goto LABEL_2;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_2:
    v5 = "onServiceHelper";
    v11 = "l that request is completed";
    v15 = 0x8000000000185840;
    v12 = 0xD000000000000022;
    if (p_weak_ivar_lyt[285] == -1)
    {
      goto LABEL_3;
    }
  }

  sub_9ED4();
LABEL_3:
  v6 = *(v0 + 64);
  v7 = sub_16A584();
  v8 = sub_48154(v7, qword_1E65C0);
  sub_386D8(v8, 0x20000uLL, (v12 + 113), v5 | 0x8000000000000000, 0xD000000000000022, (v11 | 0x8000000000000000), 30, (v12 + 30), v15);
  *(v6 + 32) = 0;
  *v6 = 0u;
  *(v6 + 16) = 0u;
LABEL_4:
  sub_D37C();

  return v9();
}

uint64_t sub_7565C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  return sub_D2B0();
}

uint64_t sub_75678()
{
  v1 = *(v0 + 10);
  sub_16ACF4(65);
  *(v0 + 2) = 0;
  *(v0 + 3) = 0xE000000000000000;
  v44._countAndFlagsBits = 0xD00000000000003FLL;
  v44._object = 0x8000000000185730;
  sub_16A744(v44);
  v2 = v1[3];
  v3 = v1[4];
  sub_D084(v1, v2);
  v41 = *(v3 + 104);
  *(v0 + 7) = v41(v2, v3);
  *(v0 + 8) = v4;
  sub_5758(&qword_1E5FA0, &qword_172DD0);
  sub_16AD84();

  v5 = *(v0 + 2);
  v6 = *(v0 + 3);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4();
  }

  v7 = sub_16A584();
  sub_48154(v7, qword_1E65C0);
  sub_76FE4();
  sub_386D8(v8, v9, v10, v11, v12, v13, 36, v5, v6);

  v14 = v41(v2, v3);
  if (v15)
  {
    v16 = v14;
    v17 = v15;
    v18 = *(v0 + 13);
    v42 = *(v0 + 12);
    v19 = *(v0 + 11);
    sub_16A9A4();
    sub_76FF4();
    sub_76FE4();
    sub_386D8(v20, v21, v22, v23, v24, v25, 41, v26, v40);
    v28 = v18[5];
    v27 = v18[6];
    sub_D084(v18 + 2, v28);
    (*(v27 + 48))(v19, v42, v16, v17, v28, v27);
    v29 = *(v0 + 9);

    sub_D124(v0 + 1, v29);
  }

  else
  {
    v30 = *(v0 + 9);
    sub_16A9A4();
    sub_76FF4();
    sub_76FE4();
    sub_386D8(v31, v32, v33, v34, v35, v36, 45, v37, v40);
    *(v30 + 32) = 0;
    *v30 = 0u;
    *(v30 + 16) = 0u;
  }

  sub_D37C();

  return v38();
}

uint64_t sub_75A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  return sub_D2B0();
}

uint64_t sub_75A34()
{
  v1 = v0[11];
  v2 = v1[5];
  v3 = v1[6];
  sub_D084(v1 + 2, v2);
  v4 = *(v3 + 32);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_75B64;
  v7 = v0[8];

  return v9(v7, v2, v3);
}

uint64_t sub_75B64(uint64_t a1)
{
  v2 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = a1;

  return _swift_task_switch(sub_75C64, 0, 0);
}

uint64_t sub_75C64()
{
  if (v0[13])
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4();
      v15 = v0[13];
    }

    v1 = sub_16A584();
    v2 = sub_48154(v1, qword_1E65C0);
    sub_386D8(v2, 0x20000uLL, 0xD000000000000093, 0x80000000001851F0, 0xD00000000000002FLL, 0x8000000000185600, 58, 0xD000000000000062, 0x8000000000185690);
LABEL_5:
    sub_3CC14();
    sub_77030();
    *v3 = xmmword_16E2A0;
    swift_willThrow();

    sub_76DD4(v0[8]);
    sub_D37C();
    goto LABEL_13;
  }

  sub_76D64(v0[8], (v0 + 2));
  v5 = v0[5];
  if (v5)
  {
    v7 = v0[9];
    v6 = v0[10];
    v8 = v0[6];
    sub_D084(v0 + 2, v0[5]);
    v9 = (*(v8 + 40))(v7, v6, v5, v8);
    sub_D13C(v0 + 2);
    if (v9)
    {
      sub_37474();
      sub_16ACF4(91);
      sub_77048();
      v10._countAndFlagsBits = 0xD000000000000059;
      sub_77054(v10, "eySessionAndActivateKey(keyID:)");
      v0[7] = v9;
      swift_errorRetain();
      sub_5758(qword_1EA220, &qword_1708D8);
      v18._countAndFlagsBits = sub_16A694();
      sub_16A744(v18);

      if (qword_1E58E8 != -1)
      {
        sub_9ED4();
      }

      v11 = sub_16A584();
      sub_9DA0(v11, qword_1E65C0);
      v12 = sub_16A9A4();
      sub_31008(v12, 0x20000uLL, 0xD000000000000093, 0x80000000001851F0, 0xD00000000000002FLL, 0x8000000000185600, 64, v13, v16);

      goto LABEL_5;
    }
  }

  else
  {
    sub_76DD4((v0 + 2));
  }

  sub_D37C();
LABEL_13:

  return v4();
}

uint64_t sub_75F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[6] = a6;
  v7[7] = v6;
  v7[4] = a3;
  v7[5] = a4;
  v7[2] = a1;
  v7[3] = a2;
  return sub_D2B0();
}

uint64_t sub_75F2C()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v8 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = *(v0 + 16);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  *(v3 + 40) = v8;
  *(v3 + 56) = v1;
  v5 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_76044;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, 0, 0, 0xD00000000000004CLL, 0x80000000001854F0, sub_76D54, v3, &type metadata for () + 8);
}

uint64_t sub_76044()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_76184;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_76160;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_76184()
{
  v1 = *(v0 + 64);

  sub_D37C();
  v3 = *(v0 + 80);

  return v2();
}

uint64_t sub_761E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a3;
  v26 = a4;
  v10 = sub_5758(&qword_1E88D0, &qword_1708D0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v23 - v13;
  sub_76D64(a2, v27);
  v15 = v28;
  if (!v28)
  {
    return sub_76DD4(v27);
  }

  v24 = a5;
  v16 = v29;
  v23[1] = sub_D084(v27, v28);
  v17 = a6;
  v18 = swift_allocObject();
  swift_weakInit();
  (*(v11 + 16))(v14, a1, v10);
  v19 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  (*(v11 + 32))(v20 + v19, v14, v10);
  v21 = *(v16 + 32);

  v21(v25, v26, v24, v17, sub_76F44, v20, v15, v16);

  return sub_D13C(v27);
}

void sub_763E8(void *a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong() && (v4 = sub_766AC(a2), , !v4))
  {
    swift_beginAccess();
    if (swift_weakLoadStrong() && (v7 = sub_7687C(a1), , (v7 & 1) == 0))
    {
      if (qword_1E58E8 != -1)
      {
        swift_once();
      }

      v10 = sub_16A584();
      sub_9DA0(v10, qword_1E65C0);
      v11 = sub_16A9A4();
      sub_386D8(v11, 0x20000uLL, 0xD000000000000093, 0x80000000001851F0, 0xD00000000000004CLL, 0x80000000001854F0, 85, 0xD000000000000056, 0x8000000000185540);
      sub_5758(&qword_1E88D0, &qword_1708D0);
      sub_16A864();
    }

    else
    {
      if (qword_1E58E8 != -1)
      {
        swift_once();
      }

      v8 = sub_16A584();
      sub_9DA0(v8, qword_1E65C0);
      v9 = sub_16A9A4();
      sub_386D8(v9, 0x20000uLL, 0xD000000000000093, 0x80000000001851F0, 0xD00000000000004CLL, 0x80000000001854F0, 80, 0xD00000000000002DLL, 0x80000000001855A0);
    }
  }

  else
  {
    if (qword_1E58E8 != -1)
    {
      swift_once();
    }

    v5 = sub_16A584();
    sub_9DA0(v5, qword_1E65C0);
    v6 = sub_16A9A4();
    sub_386D8(v6, 0x20000uLL, 0xD000000000000093, 0x80000000001851F0, 0xD00000000000004CLL, 0x80000000001854F0, 75, 0xD00000000000002BLL, 0x80000000001855D0);
  }
}